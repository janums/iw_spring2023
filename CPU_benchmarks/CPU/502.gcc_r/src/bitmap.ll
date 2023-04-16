; ModuleID = 'bitmap.bc'
source_filename = "bitmap.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@bitmap_default_obstack_depth = internal unnamed_addr global i32 0, align 4, !dbg !0
@bitmap_default_obstack = common dso_local global %struct.bitmap_obstack zeroinitializer, align 8, !dbg !109
@.str = private unnamed_addr constant [9 x i8] c"bitmap.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\0Afirst = %p current = %p indx = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\09%p next = %p prev = %p indx = %u\0A\09\09bits = {\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A\09\09\09\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@bitmap_ggc_free = internal global %struct.bitmap_element_def* null, align 8, !dbg !111
@gt_ggc_rd_gt_bitmap_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.bitmap_element_def** @bitmap_ggc_free to i8*), i64 1, i64 8, void (i8*)* null, void (i8*)* null }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !92
@bitmap_zero_bits = common dso_local global %struct.bitmap_element_def zeroinitializer, align 8, !dbg !107
@popcount_table = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16, !dbg !113

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !123 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !136, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !137, metadata !DIExpression()), !dbg !138
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !139
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !140
  ret i32 %call, !dbg !141
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !142 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !145
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !146
  ret i32 %call, !dbg !147
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !148 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !207, metadata !DIExpression()), !dbg !208
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !209
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !209
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !209
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !209
  %cmp = icmp uge i8* %0, %1, !dbg !209
  %conv1 = zext i1 %cmp to i64, !dbg !209
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !209
  %tobool = icmp eq i64 %expval, 0, !dbg !209
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !209

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !209
  br label %cond.end, !dbg !209

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !209
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !209
  %2 = load i8, i8* %0, align 1, !dbg !209
  %conv3 = zext i8 %2 to i32, !dbg !209
  br label %cond.end, !dbg !209

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !209
  ret i32 %cond, !dbg !210
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !211 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !213, metadata !DIExpression()), !dbg !214
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !215
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !215
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !215
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !215
  %cmp = icmp uge i8* %0, %1, !dbg !215
  %conv1 = zext i1 %cmp to i64, !dbg !215
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !215
  %tobool = icmp eq i64 %expval, 0, !dbg !215
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !215

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !215
  br label %cond.end, !dbg !215

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !215
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !215
  %2 = load i8, i8* %0, align 1, !dbg !215
  %conv3 = zext i8 %2 to i32, !dbg !215
  br label %cond.end, !dbg !215

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !215
  ret i32 %cond, !dbg !216
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !217 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !218
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !218
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !218
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !218
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !218
  %cmp = icmp uge i8* %1, %2, !dbg !218
  %conv1 = zext i1 %cmp to i64, !dbg !218
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !218
  %tobool = icmp eq i64 %expval, 0, !dbg !218
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !218

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !218
  br label %cond.end, !dbg !218

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !218
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !218
  %3 = load i8, i8* %1, align 1, !dbg !218
  %conv3 = zext i8 %3 to i32, !dbg !218
  br label %cond.end, !dbg !218

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !218
  ret i32 %cond, !dbg !219
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !220 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !224, metadata !DIExpression()), !dbg !225
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !226
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !227
  ret i32 %call, !dbg !228
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !229 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !233, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !234, metadata !DIExpression()), !dbg !235
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !236
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !236
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !236
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !236
  %cmp = icmp uge i8* %0, %1, !dbg !236
  %conv1 = zext i1 %cmp to i64, !dbg !236
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !236
  %tobool = icmp eq i64 %expval, 0, !dbg !236
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !236

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !236
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !236
  br label %cond.end, !dbg !236

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !236
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !236
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !236
  store i8 %conv2, i8* %0, align 1, !dbg !236
  %conv6 = and i32 %__c, 255, !dbg !236
  br label %cond.end, !dbg !236

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !236
  ret i32 %cond, !dbg !237
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !238 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !241, metadata !DIExpression()), !dbg !242
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !243
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !243
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !243
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !243
  %cmp = icmp uge i8* %0, %1, !dbg !243
  %conv1 = zext i1 %cmp to i64, !dbg !243
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !243
  %tobool = icmp eq i64 %expval, 0, !dbg !243
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !243

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !243
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !243
  br label %cond.end, !dbg !243

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !243
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !243
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !243
  store i8 %conv2, i8* %0, align 1, !dbg !243
  %conv6 = and i32 %__c, 255, !dbg !243
  br label %cond.end, !dbg !243

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !243
  ret i32 %cond, !dbg !244
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !245 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !247, metadata !DIExpression()), !dbg !248
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !249
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !249
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !249
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !249
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !249
  %cmp = icmp uge i8* %1, %2, !dbg !249
  %conv1 = zext i1 %cmp to i64, !dbg !249
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !249
  %tobool = icmp eq i64 %expval, 0, !dbg !249
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !249

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !249
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !249
  br label %cond.end, !dbg !249

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !249
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !249
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !249
  store i8 %conv4, i8* %1, align 1, !dbg !249
  %conv6 = and i32 %__c, 255, !dbg !249
  br label %cond.end, !dbg !249

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !249
  ret i32 %cond, !dbg !250
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !251 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !257, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata i64* %__n, metadata !258, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !259, metadata !DIExpression()), !dbg !260
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !261
  ret i64 %call, !dbg !262
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !263 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !265, metadata !DIExpression()), !dbg !266
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !267
  %0 = load i32, i32* %_flags, align 8, !dbg !267
  %and = lshr i32 %0, 4, !dbg !267
  %and.lobit = and i32 %and, 1, !dbg !267
  ret i32 %and.lobit, !dbg !268
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !269 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !271, metadata !DIExpression()), !dbg !272
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !273
  %0 = load i32, i32* %_flags, align 8, !dbg !273
  %and = lshr i32 %0, 5, !dbg !273
  %and.lobit = and i32 %and, 1, !dbg !273
  ret i32 %and.lobit, !dbg !274
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !275 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !278, metadata !DIExpression()), !dbg !279
  %__c.off = add i32 %__c, 128, !dbg !280
  %0 = icmp ult i32 %__c.off, 384, !dbg !280
  br i1 %0, label %cond.true, label %cond.end, !dbg !280

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !281
  %1 = load i32*, i32** %call, align 8, !dbg !282
  %idxprom = sext i32 %__c to i64, !dbg !283
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !283
  %2 = load i32, i32* %arrayidx, align 4, !dbg !283
  br label %cond.end, !dbg !284

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !284
  ret i32 %cond, !dbg !285
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !286 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !288, metadata !DIExpression()), !dbg !289
  %__c.off = add i32 %__c, 128, !dbg !290
  %0 = icmp ult i32 %__c.off, 384, !dbg !290
  br i1 %0, label %cond.true, label %cond.end, !dbg !290

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !291
  %1 = load i32*, i32** %call, align 8, !dbg !292
  %idxprom = sext i32 %__c to i64, !dbg !293
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !293
  %2 = load i32, i32* %arrayidx, align 4, !dbg !293
  br label %cond.end, !dbg !294

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !294
  ret i32 %cond, !dbg !295
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !296 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !301, metadata !DIExpression()), !dbg !302
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !303
  %conv = trunc i64 %call to i32, !dbg !304
  ret i32 %conv, !dbg !305
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !306 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !310, metadata !DIExpression()), !dbg !311
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !312
  ret i64 %call, !dbg !313
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !314 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !319, metadata !DIExpression()), !dbg !320
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !321
  ret i64 %call, !dbg !322
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !323 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !332, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i8* %__base, metadata !333, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !334, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i64 %__size, metadata !335, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !336, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i64 0, metadata !337, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !338, metadata !DIExpression()), !dbg !342
  br label %while.cond, !dbg !343

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !344
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !342
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !338, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !337, metadata !DIExpression()), !dbg !342
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !345
  br i1 %cmp, label %while.body, label %cleanup, !dbg !343

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !346
  %div = lshr i64 %add, 1, !dbg !348
  call void @llvm.dbg.value(metadata i64 %div, metadata !339, metadata !DIExpression()), !dbg !342
  %mul = mul i64 %div, %__size, !dbg !349
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !350
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !340, metadata !DIExpression()), !dbg !342
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !351
  call void @llvm.dbg.value(metadata i32 %call, metadata !341, metadata !DIExpression()), !dbg !342
  %cmp1 = icmp slt i32 %call, 0, !dbg !352
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !354

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !355
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !357

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !358
  call void @llvm.dbg.value(metadata i64 %add4, metadata !337, metadata !DIExpression()), !dbg !342
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !342
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !342
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !338, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !337, metadata !DIExpression()), !dbg !342
  br label %while.cond, !dbg !343, !llvm.loop !359

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !342
  ret i8* %retval.0, !dbg !361
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !362 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !368, metadata !DIExpression()), !dbg !369
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !370
  ret double %call, !dbg !371
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !372 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !381, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !382, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i32 %base, metadata !383, metadata !DIExpression()), !dbg !384
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !385
  ret i64 %call, !dbg !386
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !387 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !393, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !394, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 %base, metadata !395, metadata !DIExpression()), !dbg !396
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !397
  ret i64 %call, !dbg !398
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !399 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !410, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !411, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i32 %base, metadata !412, metadata !DIExpression()), !dbg !413
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !414
  ret i64 %call, !dbg !415
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !416 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !420, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !421, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 %base, metadata !422, metadata !DIExpression()), !dbg !423
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !424
  ret i64 %call, !dbg !425
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !426 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !468, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !469, metadata !DIExpression()), !dbg !470
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !471
  ret i32 %call, !dbg !472
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !473 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !475, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !476, metadata !DIExpression()), !dbg !477
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !478
  ret i32 %call, !dbg !479
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !480 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !484, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !485, metadata !DIExpression()), !dbg !486
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !487
  ret i32 %call, !dbg !488
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !489 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !493, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !494, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !495, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !496, metadata !DIExpression()), !dbg !497
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !498
  ret i32 %call, !dbg !499
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !500 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !504, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !505, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !506, metadata !DIExpression()), !dbg !507
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !506, metadata !DIExpression(DW_OP_deref)), !dbg !507
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !508
  ret i32 %call, !dbg !509
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !510 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !514, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i8* %__path, metadata !515, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !516, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !517, metadata !DIExpression()), !dbg !518
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !517, metadata !DIExpression(DW_OP_deref)), !dbg !518
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !519
  ret i32 %call, !dbg !520
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !521 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !545, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !546, metadata !DIExpression()), !dbg !547
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !548
  ret i32 %call, !dbg !549
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !550 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !552, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !553, metadata !DIExpression()), !dbg !554
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !555
  ret i32 %call, !dbg !556
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !557 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !561, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !562, metadata !DIExpression()), !dbg !563
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !564
  ret i32 %call, !dbg !565
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !566 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !570, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !571, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !572, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !573, metadata !DIExpression()), !dbg !574
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !575
  ret i32 %call, !dbg !576
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_clear(%struct.bitmap_head_def* %head) local_unnamed_addr #4 !dbg !577 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !583, metadata !DIExpression()), !dbg !584
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 0, !dbg !585
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !585
  %tobool = icmp eq %struct.bitmap_element_def* %0, null, !dbg !587
  br i1 %tobool, label %if.end, label %if.then, !dbg !588

if.then:                                          ; preds = %entry
  tail call fastcc void @bitmap_elt_clear_from(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* nonnull %0) #7, !dbg !589
  br label %if.end, !dbg !589

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !590
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bitmap_elt_clear_from(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* %elt) unnamed_addr #4 !dbg !591 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !595, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt, metadata !596, metadata !DIExpression()), !dbg !599
  %obstack = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 3, !dbg !600
  %0 = load %struct.bitmap_obstack*, %struct.bitmap_obstack** %obstack, align 8, !dbg !600
  call void @llvm.dbg.value(metadata %struct.bitmap_obstack* %0, metadata !598, metadata !DIExpression()), !dbg !599
  %tobool = icmp eq %struct.bitmap_element_def* %elt, null, !dbg !601
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !603

if.end:                                           ; preds = %entry
  %prev1 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt, i64 0, i32 1, !dbg !604
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev1, align 8, !dbg !604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !597, metadata !DIExpression()), !dbg !599
  %tobool2 = icmp eq %struct.bitmap_element_def* %1, null, !dbg !605
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !607

if.then3:                                         ; preds = %if.end
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %1, i64 0, i32 0, !dbg !608
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %next, align 8, !dbg !610
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 1, !dbg !611
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !611
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %2, i64 0, i32 2, !dbg !613
  %3 = load i32, i32* %indx, align 8, !dbg !613
  %indx4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %1, i64 0, i32 2, !dbg !614
  %4 = load i32, i32* %indx4, align 8, !dbg !614
  %cmp = icmp ugt i32 %3, %4, !dbg !615
  br i1 %cmp, label %if.then5, label %if.end12, !dbg !616

if.then5:                                         ; preds = %if.then3
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %current, align 8, !dbg !617
  %5 = load i32, i32* %indx4, align 8, !dbg !619
  %indx8 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 2, !dbg !620
  store i32 %5, i32* %indx8, align 8, !dbg !621
  br label %if.end12, !dbg !622

if.else:                                          ; preds = %if.end
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 0, !dbg !623
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %first, align 8, !dbg !625
  %current10 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 1, !dbg !626
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %current10, align 8, !dbg !627
  %indx11 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 2, !dbg !628
  store i32 0, i32* %indx11, align 8, !dbg !629
  br label %if.end12

if.end12:                                         ; preds = %if.then3, %if.then5, %if.else
  %tobool13 = icmp eq %struct.bitmap_obstack* %0, null, !dbg !630
  br i1 %tobool13, label %if.else17, label %if.then14, !dbg !632

if.then14:                                        ; preds = %if.end12
  %6 = bitcast %struct.bitmap_obstack* %0 to i64*, !dbg !633
  %7 = load i64, i64* %6, align 8, !dbg !633
  %8 = bitcast %struct.bitmap_element_def** %prev1 to i64*, !dbg !635
  store i64 %7, i64* %8, align 8, !dbg !635
  %elements16 = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %0, i64 0, i32 0, !dbg !636
  store %struct.bitmap_element_def* %elt, %struct.bitmap_element_def** %elements16, align 8, !dbg !637
  br label %cleanup.cont, !dbg !638

if.else17:                                        ; preds = %if.end12
  %9 = load i64, i64* bitcast (%struct.bitmap_element_def** @bitmap_ggc_free to i64*), align 8, !dbg !639
  %10 = bitcast %struct.bitmap_element_def** %prev1 to i64*, !dbg !641
  store i64 %9, i64* %10, align 8, !dbg !641
  store %struct.bitmap_element_def* %elt, %struct.bitmap_element_def** @bitmap_ggc_free, align 8, !dbg !642
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %entry, %if.else17, %if.then14
  ret void, !dbg !643
}

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_obstack_initialize(%struct.bitmap_obstack* %bit_obstack) local_unnamed_addr #4 !dbg !644 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_obstack* %bit_obstack, metadata !648, metadata !DIExpression()), !dbg !649
  %tobool = icmp eq %struct.bitmap_obstack* %bit_obstack, null, !dbg !650
  br i1 %tobool, label %if.then, label %if.end3, !dbg !652

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @bitmap_default_obstack_depth, align 4, !dbg !653
  %inc = add nsw i32 %0, 1, !dbg !653
  store i32 %inc, i32* @bitmap_default_obstack_depth, align 4, !dbg !653
  %tobool1 = icmp eq i32 %0, 0, !dbg !653
  br i1 %tobool1, label %if.end3, label %return, !dbg !656

if.end3:                                          ; preds = %if.then, %entry
  %bit_obstack.addr.0 = phi %struct.bitmap_obstack* [ %bit_obstack, %entry ], [ @bitmap_default_obstack, %if.then ]
  call void @llvm.dbg.value(metadata %struct.bitmap_obstack* %bit_obstack.addr.0, metadata !648, metadata !DIExpression()), !dbg !649
  %elements = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %bit_obstack.addr.0, i64 0, i32 0, !dbg !657
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elements, align 8, !dbg !658
  %heads = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %bit_obstack.addr.0, i64 0, i32 1, !dbg !659
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %heads, align 8, !dbg !660
  %obstack = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %bit_obstack.addr.0, i64 0, i32 2, !dbg !661
  %call = tail call i32 @_obstack_begin(%struct.obstack* nonnull %obstack, i32 0, i32 8, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #6, !dbg !661
  br label %return, !dbg !662

return:                                           ; preds = %if.then, %if.end3
  ret void, !dbg !662
}

declare dso_local i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local void @free(i8*) #1

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_obstack_release(%struct.bitmap_obstack* %bit_obstack) local_unnamed_addr #4 !dbg !663 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_obstack* %bit_obstack, metadata !665, metadata !DIExpression()), !dbg !666
  %tobool = icmp eq %struct.bitmap_obstack* %bit_obstack, null, !dbg !667
  br i1 %tobool, label %if.then, label %if.end3, !dbg !669

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @bitmap_default_obstack_depth, align 4, !dbg !670
  %dec = add nsw i32 %0, -1, !dbg !670
  store i32 %dec, i32* @bitmap_default_obstack_depth, align 4, !dbg !670
  %tobool1 = icmp eq i32 %dec, 0, !dbg !670
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !673

if.then2:                                         ; preds = %if.then
  %cmp = icmp sgt i32 %dec, 0, !dbg !674
  br i1 %cmp, label %return, label %cond.true, !dbg !674

cond.true:                                        ; preds = %if.then2
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 336, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !674
  br label %return, !dbg !674

if.end3:                                          ; preds = %if.then, %entry
  %bit_obstack.addr.0 = phi %struct.bitmap_obstack* [ %bit_obstack, %entry ], [ @bitmap_default_obstack, %if.then ]
  call void @llvm.dbg.value(metadata %struct.bitmap_obstack* %bit_obstack.addr.0, metadata !665, metadata !DIExpression()), !dbg !666
  %elements = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %bit_obstack.addr.0, i64 0, i32 0, !dbg !676
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elements, align 8, !dbg !677
  %heads = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %bit_obstack.addr.0, i64 0, i32 1, !dbg !678
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %heads, align 8, !dbg !679
  %chunk = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %bit_obstack.addr.0, i64 0, i32 2, i32 1, !dbg !680
  %1 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !680
  %2 = load i64, i64* %1, align 8, !dbg !680
  %sub.ptr.sub = sub i64 0, %2, !dbg !680
  %temp = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %bit_obstack.addr.0, i64 0, i32 2, i32 5, !dbg !680
  store i64 %sub.ptr.sub, i64* %temp, align 8, !dbg !680
  %cmp7 = icmp sgt i64 %sub.ptr.sub, 0, !dbg !680
  %3 = inttoptr i64 %2 to i8*, !dbg !680
  br i1 %cmp7, label %land.lhs.true, label %cond.false23, !dbg !680

land.lhs.true:                                    ; preds = %if.end3
  %chunk_limit = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %bit_obstack.addr.0, i64 0, i32 2, i32 4, !dbg !680
  %4 = bitcast i8** %chunk_limit to i64*, !dbg !680
  %5 = load i64, i64* %4, align 8, !dbg !680
  %sub.ptr.sub14 = sub i64 %5, %2, !dbg !680
  %cmp15 = icmp sgt i64 %sub.ptr.sub14, %sub.ptr.sub, !dbg !680
  br i1 %cmp15, label %cond.true16, label %cond.false23, !dbg !680

cond.true16:                                      ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %sub.ptr.sub, !dbg !680
  %object_base = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %bit_obstack.addr.0, i64 0, i32 2, i32 2, !dbg !680
  store i8* %add.ptr, i8** %object_base, align 8, !dbg !680
  %next_free = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %bit_obstack.addr.0, i64 0, i32 2, i32 3, !dbg !680
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !680
  br label %return, !dbg !680

cond.false23:                                     ; preds = %land.lhs.true, %if.end3
  %obstack24 = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %bit_obstack.addr.0, i64 0, i32 2, !dbg !680
  %add.ptr29 = getelementptr inbounds i8, i8* %3, i64 %sub.ptr.sub, !dbg !680
  tail call void @obstack_free(%struct.obstack* nonnull %obstack24, i8* %add.ptr29) #6, !dbg !680
  br label %return, !dbg !680

return:                                           ; preds = %cond.true16, %cond.false23, %cond.true, %if.then2
  ret void, !dbg !681
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

declare dso_local void @obstack_free(%struct.obstack*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* %bit_obstack) local_unnamed_addr #4 !dbg !682 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_obstack* %bit_obstack, metadata !686, metadata !DIExpression()), !dbg !688
  %tobool = icmp eq %struct.bitmap_obstack* %bit_obstack, null, !dbg !689
  %spec.select = select i1 %tobool, %struct.bitmap_obstack* @bitmap_default_obstack, %struct.bitmap_obstack* %bit_obstack, !dbg !691
  call void @llvm.dbg.value(metadata %struct.bitmap_obstack* %spec.select, metadata !686, metadata !DIExpression()), !dbg !688
  %heads = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %spec.select, i64 0, i32 1, !dbg !692
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %heads, align 8, !dbg !692
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %0, metadata !687, metadata !DIExpression()), !dbg !688
  %tobool1 = icmp eq %struct.bitmap_head_def* %0, null, !dbg !693
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !695

if.then2:                                         ; preds = %entry
  %1 = bitcast %struct.bitmap_head_def* %0 to i64*, !dbg !696
  %2 = load i64, i64* %1, align 8, !dbg !696
  %3 = bitcast %struct.bitmap_head_def** %heads to i64*, !dbg !697
  store i64 %2, i64* %3, align 8, !dbg !697
  br label %if.end71, !dbg !698

if.else:                                          ; preds = %entry
  %temp = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %spec.select, i64 0, i32 2, i32 5, !dbg !699
  store i64 32, i64* %temp, align 8, !dbg !699
  %chunk_limit = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %spec.select, i64 0, i32 2, i32 4, !dbg !699
  %4 = bitcast i8** %chunk_limit to i64*, !dbg !699
  %5 = load i64, i64* %4, align 8, !dbg !699
  %next_free = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %spec.select, i64 0, i32 2, i32 3, !dbg !699
  %6 = bitcast i8** %next_free to i64*, !dbg !699
  %7 = load i64, i64* %6, align 8, !dbg !699
  %sub.ptr.sub = sub i64 %5, %7, !dbg !699
  %cmp = icmp slt i64 %sub.ptr.sub, 32, !dbg !699
  %8 = inttoptr i64 %7 to i8*, !dbg !699
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !699

cond.true:                                        ; preds = %if.else
  %obstack8 = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %spec.select, i64 0, i32 2, !dbg !699
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %obstack8, i32 32) #6, !dbg !699
  %.pre = load i64, i64* %temp, align 8, !dbg !699
  %.pre1 = load i8*, i8** %next_free, align 8, !dbg !699
  br label %cond.end, !dbg !699

cond.end:                                         ; preds = %if.else, %cond.true
  %9 = phi i8* [ %8, %if.else ], [ %.pre1, %cond.true ], !dbg !699
  %10 = phi i64 [ 32, %if.else ], [ %.pre, %cond.true ], !dbg !699
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !699
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !699
  %object_base = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %spec.select, i64 0, i32 2, i32 2, !dbg !699
  %11 = load i8*, i8** %object_base, align 8, !dbg !699
  %cmp18 = icmp eq i8* %add.ptr, %11, !dbg !699
  %12 = ptrtoint i8* %11 to i64, !dbg !699
  %13 = ptrtoint i8* %add.ptr to i64, !dbg !699
  br i1 %cmp18, label %cond.true20, label %cond.end23, !dbg !699

cond.true20:                                      ; preds = %cond.end
  %maybe_empty_object = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %spec.select, i64 0, i32 2, i32 10, !dbg !699
  %bf.load = load i8, i8* %maybe_empty_object, align 8, !dbg !699
  %bf.set = or i8 %bf.load, 2, !dbg !699
  store i8 %bf.set, i8* %maybe_empty_object, align 8, !dbg !699
  br label %cond.end23, !dbg !699

cond.end23:                                       ; preds = %cond.end, %cond.true20
  %14 = bitcast i8** %object_base to i64*, !dbg !699
  store i64 %12, i64* %temp, align 8, !dbg !699
  %alignment_mask = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %spec.select, i64 0, i32 2, i32 6, !dbg !699
  %15 = load i32, i32* %alignment_mask, align 8, !dbg !699
  %conv36 = sext i32 %15 to i64, !dbg !699
  %add = add nsw i64 %13, %conv36, !dbg !699
  %neg = xor i32 %15, -1, !dbg !699
  %conv39 = sext i32 %neg to i64, !dbg !699
  %and = and i64 %add, %conv39, !dbg !699
  %16 = inttoptr i64 %and to i8*, !dbg !699
  store i8* %16, i8** %next_free, align 8, !dbg !699
  %chunk = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %spec.select, i64 0, i32 2, i32 1, !dbg !699
  %17 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !699
  %18 = load i64, i64* %17, align 8, !dbg !699
  %sub.ptr.sub47 = sub i64 %and, %18, !dbg !699
  %19 = load i64, i64* %4, align 8, !dbg !699
  %sub.ptr.sub54 = sub i64 %19, %18, !dbg !699
  %cmp55 = icmp sgt i64 %sub.ptr.sub47, %sub.ptr.sub54, !dbg !699
  %20 = bitcast i8* %11 to %struct.bitmap_head_def*, !dbg !699
  br i1 %cmp55, label %cond.true57, label %cond.end63, !dbg !699

cond.true57:                                      ; preds = %cond.end23
  store i64 %19, i64* %6, align 8, !dbg !699
  br label %cond.end63, !dbg !699

cond.end63:                                       ; preds = %cond.end23, %cond.true57
  %21 = phi i64 [ %and, %cond.end23 ], [ %19, %cond.true57 ], !dbg !699
  store i64 %21, i64* %14, align 8, !dbg !699
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %20, metadata !687, metadata !DIExpression()), !dbg !688
  br label %if.end71

if.end71:                                         ; preds = %cond.end63, %if.then2
  %map.0 = phi %struct.bitmap_head_def* [ %0, %if.then2 ], [ %20, %cond.end63 ], !dbg !688
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map.0, metadata !687, metadata !DIExpression()), !dbg !688
  tail call fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* %map.0, %struct.bitmap_obstack* %spec.select) #7, !dbg !700
  ret %struct.bitmap_head_def* %map.0, !dbg !701
}

declare dso_local void @_obstack_newchunk(%struct.obstack*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* %head, %struct.bitmap_obstack* %obstack) unnamed_addr #0 !dbg !702 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !706, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata %struct.bitmap_obstack* %obstack, metadata !707, metadata !DIExpression()), !dbg !708
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 1, !dbg !709
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %current, align 8, !dbg !710
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 0, !dbg !711
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %first, align 8, !dbg !712
  %obstack1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 3, !dbg !713
  store %struct.bitmap_obstack* %obstack, %struct.bitmap_obstack** %obstack1, align 8, !dbg !714
  ret void, !dbg !715
}

; Function Attrs: nounwind uwtable
define dso_local %struct.bitmap_head_def* @bitmap_gc_alloc_stat() local_unnamed_addr #4 !dbg !716 {
entry:
  %call = tail call i8* @ggc_alloc_stat(i64 32) #6, !dbg !721
  %0 = bitcast i8* %call to %struct.bitmap_head_def*, !dbg !721
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %0, metadata !720, metadata !DIExpression()), !dbg !722
  tail call fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* %0, %struct.bitmap_obstack* null) #7, !dbg !723
  ret %struct.bitmap_head_def* %0, !dbg !724
}

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_obstack_free(%struct.bitmap_head_def* %map) local_unnamed_addr #4 !dbg !725 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !727, metadata !DIExpression()), !dbg !728
  %tobool = icmp eq %struct.bitmap_head_def* %map, null, !dbg !729
  br i1 %tobool, label %if.end, label %if.then, !dbg !731

if.then:                                          ; preds = %entry
  tail call void @bitmap_clear(%struct.bitmap_head_def* nonnull %map) #7, !dbg !732
  %obstack = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %map, i64 0, i32 3, !dbg !734
  %0 = load %struct.bitmap_obstack*, %struct.bitmap_obstack** %obstack, align 8, !dbg !734
  %heads = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %0, i64 0, i32 1, !dbg !735
  %1 = bitcast %struct.bitmap_head_def** %heads to i64*, !dbg !735
  %2 = load i64, i64* %1, align 8, !dbg !735
  %3 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !736
  store i64 %2, i64* %3, align 8, !dbg !736
  store %struct.bitmap_head_def* %map, %struct.bitmap_head_def** %heads, align 8, !dbg !737
  br label %if.end, !dbg !738

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !739
}

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_copy(%struct.bitmap_head_def* %to, %struct.bitmap_head_def* %from) local_unnamed_addr #4 !dbg !740 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %to, metadata !747, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %from, metadata !748, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* null, metadata !752, metadata !DIExpression()), !dbg !757
  tail call void @bitmap_clear(%struct.bitmap_head_def* %to) #7, !dbg !758
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %from, i64 0, i32 0, !dbg !759
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %to, i64 0, i32 1, !dbg !760
  %first5 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %to, i64 0, i32 0, !dbg !760
  %indx7 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %to, i64 0, i32 2, !dbg !760
  br label %for.cond, !dbg !763

for.cond:                                         ; preds = %for.inc, %entry
  %from_ptr.0.in = phi %struct.bitmap_element_def** [ %first, %entry ], [ %next11, %for.inc ]
  %to_ptr.0 = phi %struct.bitmap_element_def* [ null, %entry ], [ %call, %for.inc ], !dbg !757
  %from_ptr.0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %from_ptr.0.in, align 8, !dbg !764
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %to_ptr.0, metadata !752, metadata !DIExpression()), !dbg !757
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %from_ptr.0, metadata !749, metadata !DIExpression()), !dbg !757
  %tobool = icmp eq %struct.bitmap_element_def* %from_ptr.0, null, !dbg !765
  br i1 %tobool, label %for.end, label %for.body, !dbg !765

for.body:                                         ; preds = %for.cond
  %call = tail call fastcc %struct.bitmap_element_def* @bitmap_element_allocate(%struct.bitmap_head_def* %to) #7, !dbg !766
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !753, metadata !DIExpression()), !dbg !767
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %from_ptr.0, i64 0, i32 2, !dbg !768
  %0 = load i32, i32* %indx, align 8, !dbg !768
  %indx1 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call, i64 0, i32 2, !dbg !769
  store i32 %0, i32* %indx1, align 8, !dbg !770
  %arraydecay = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call, i64 0, i32 3, i64 0, !dbg !771
  %1 = bitcast i64* %arraydecay to i8*, !dbg !771
  %arraydecay3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %from_ptr.0, i64 0, i32 3, i64 0, !dbg !772
  %2 = bitcast i64* %arraydecay3 to i8*, !dbg !772
  %call4 = tail call i8* @memcpy(i8* nonnull %1, i8* nonnull %2, i64 16) #6, !dbg !773
  %cmp = icmp eq %struct.bitmap_element_def* %to_ptr.0, null, !dbg !774
  br i1 %cmp, label %if.then, label %if.else, !dbg !775

if.then:                                          ; preds = %for.body
  store %struct.bitmap_element_def* %call, %struct.bitmap_element_def** %current, align 8, !dbg !776
  store %struct.bitmap_element_def* %call, %struct.bitmap_element_def** %first5, align 8, !dbg !777
  %3 = load i32, i32* %indx, align 8, !dbg !778
  store i32 %3, i32* %indx7, align 8, !dbg !779
  %prev = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call, i64 0, i32 1, !dbg !780
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %prev, align 8, !dbg !781
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call, i64 0, i32 0, !dbg !782
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %next, align 8, !dbg !783
  br label %for.inc, !dbg !784

if.else:                                          ; preds = %for.body
  %prev8 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call, i64 0, i32 1, !dbg !785
  store %struct.bitmap_element_def* %to_ptr.0, %struct.bitmap_element_def** %prev8, align 8, !dbg !787
  %next9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call, i64 0, i32 0, !dbg !788
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %next9, align 8, !dbg !789
  %next10 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %to_ptr.0, i64 0, i32 0, !dbg !790
  store %struct.bitmap_element_def* %call, %struct.bitmap_element_def** %next10, align 8, !dbg !791
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !752, metadata !DIExpression()), !dbg !757
  %next11 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %from_ptr.0, i64 0, i32 0, !dbg !792
  br label %for.cond, !dbg !793, !llvm.loop !794

for.end:                                          ; preds = %for.cond
  ret void, !dbg !796
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.bitmap_element_def* @bitmap_element_allocate(%struct.bitmap_head_def* %head) unnamed_addr #0 !dbg !797 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !801, metadata !DIExpression()), !dbg !804
  %obstack = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 3, !dbg !805
  %0 = load %struct.bitmap_obstack*, %struct.bitmap_obstack** %obstack, align 8, !dbg !805
  call void @llvm.dbg.value(metadata %struct.bitmap_obstack* %0, metadata !803, metadata !DIExpression()), !dbg !804
  %tobool = icmp eq %struct.bitmap_obstack* %0, null, !dbg !806
  br i1 %tobool, label %if.else81, label %if.then, !dbg !808

if.then:                                          ; preds = %entry
  %elements = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %0, i64 0, i32 0, !dbg !809
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elements, align 8, !dbg !809
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !802, metadata !DIExpression()), !dbg !804
  %tobool1 = icmp eq %struct.bitmap_element_def* %1, null, !dbg !811
  br i1 %tobool1, label %if.else11, label %if.then2, !dbg !813

if.then2:                                         ; preds = %if.then
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %1, i64 0, i32 0, !dbg !814
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !814
  %tobool3 = icmp eq %struct.bitmap_element_def* %2, null, !dbg !816
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !817

if.then4:                                         ; preds = %if.then2
  %3 = ptrtoint %struct.bitmap_element_def* %2 to i64, !dbg !817
  %4 = bitcast %struct.bitmap_obstack* %0 to i64*, !dbg !818
  store i64 %3, i64* %4, align 8, !dbg !818
  %prev = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %1, i64 0, i32 1, !dbg !820
  %5 = bitcast %struct.bitmap_element_def** %prev to i64*, !dbg !820
  %6 = load i64, i64* %5, align 8, !dbg !820
  %prev8 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %2, i64 0, i32 1, !dbg !821
  %7 = bitcast %struct.bitmap_element_def** %prev8 to i64*, !dbg !822
  store i64 %6, i64* %7, align 8, !dbg !822
  br label %if.end95, !dbg !823

if.else:                                          ; preds = %if.then2
  %prev9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %1, i64 0, i32 1, !dbg !824
  %8 = bitcast %struct.bitmap_element_def** %prev9 to i64*, !dbg !824
  %9 = load i64, i64* %8, align 8, !dbg !824
  %10 = bitcast %struct.bitmap_obstack* %0 to i64*, !dbg !825
  store i64 %9, i64* %10, align 8, !dbg !825
  br label %if.end95

if.else11:                                        ; preds = %if.then
  %temp = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %0, i64 0, i32 2, i32 5, !dbg !826
  store i64 40, i64* %temp, align 8, !dbg !826
  %chunk_limit = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %0, i64 0, i32 2, i32 4, !dbg !826
  %11 = bitcast i8** %chunk_limit to i64*, !dbg !826
  %12 = load i64, i64* %11, align 8, !dbg !826
  %next_free = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %0, i64 0, i32 2, i32 3, !dbg !826
  %13 = bitcast i8** %next_free to i64*, !dbg !826
  %14 = load i64, i64* %13, align 8, !dbg !826
  %sub.ptr.sub = sub i64 %12, %14, !dbg !826
  %cmp = icmp slt i64 %sub.ptr.sub, 40, !dbg !826
  %15 = inttoptr i64 %14 to i8*, !dbg !826
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !826

cond.true:                                        ; preds = %if.else11
  %obstack17 = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %0, i64 0, i32 2, !dbg !826
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %obstack17, i32 40) #6, !dbg !826
  %.pre = load i64, i64* %temp, align 8, !dbg !826
  %.pre5 = load i8*, i8** %next_free, align 8, !dbg !826
  br label %cond.end, !dbg !826

cond.end:                                         ; preds = %if.else11, %cond.true
  %16 = phi i8* [ %15, %if.else11 ], [ %.pre5, %cond.true ], !dbg !826
  %17 = phi i64 [ 40, %if.else11 ], [ %.pre, %cond.true ], !dbg !826
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !826
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !826
  %object_base = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %0, i64 0, i32 2, i32 2, !dbg !826
  %18 = load i8*, i8** %object_base, align 8, !dbg !826
  %cmp27 = icmp eq i8* %add.ptr, %18, !dbg !826
  %19 = ptrtoint i8* %18 to i64, !dbg !826
  %20 = ptrtoint i8* %add.ptr to i64, !dbg !826
  br i1 %cmp27, label %cond.true29, label %cond.end32, !dbg !826

cond.true29:                                      ; preds = %cond.end
  %maybe_empty_object = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %0, i64 0, i32 2, i32 10, !dbg !826
  %bf.load = load i8, i8* %maybe_empty_object, align 8, !dbg !826
  %bf.set = or i8 %bf.load, 2, !dbg !826
  store i8 %bf.set, i8* %maybe_empty_object, align 8, !dbg !826
  br label %cond.end32, !dbg !826

cond.end32:                                       ; preds = %cond.end, %cond.true29
  %21 = bitcast i8** %object_base to i64*, !dbg !826
  store i64 %19, i64* %temp, align 8, !dbg !826
  %alignment_mask = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %0, i64 0, i32 2, i32 6, !dbg !826
  %22 = load i32, i32* %alignment_mask, align 8, !dbg !826
  %conv45 = sext i32 %22 to i64, !dbg !826
  %add = add nsw i64 %20, %conv45, !dbg !826
  %neg = xor i32 %22, -1, !dbg !826
  %conv48 = sext i32 %neg to i64, !dbg !826
  %and = and i64 %add, %conv48, !dbg !826
  %23 = inttoptr i64 %and to i8*, !dbg !826
  store i8* %23, i8** %next_free, align 8, !dbg !826
  %chunk = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %0, i64 0, i32 2, i32 1, !dbg !826
  %24 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !826
  %25 = load i64, i64* %24, align 8, !dbg !826
  %sub.ptr.sub56 = sub i64 %and, %25, !dbg !826
  %26 = load i64, i64* %11, align 8, !dbg !826
  %sub.ptr.sub63 = sub i64 %26, %25, !dbg !826
  %cmp64 = icmp sgt i64 %sub.ptr.sub56, %sub.ptr.sub63, !dbg !826
  %27 = bitcast i8* %18 to %struct.bitmap_element_def*, !dbg !826
  br i1 %cmp64, label %cond.true66, label %cond.end72, !dbg !826

cond.true66:                                      ; preds = %cond.end32
  store i64 %26, i64* %13, align 8, !dbg !826
  br label %cond.end72, !dbg !826

cond.end72:                                       ; preds = %cond.end32, %cond.true66
  %28 = phi i64 [ %and, %cond.end32 ], [ %26, %cond.true66 ], !dbg !826
  store i64 %28, i64* %21, align 8, !dbg !826
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %27, metadata !802, metadata !DIExpression()), !dbg !804
  br label %if.end95

if.else81:                                        ; preds = %entry
  %29 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** @bitmap_ggc_free, align 8, !dbg !827
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %29, metadata !802, metadata !DIExpression()), !dbg !804
  %tobool82 = icmp eq %struct.bitmap_element_def* %29, null, !dbg !829
  br i1 %tobool82, label %if.else93, label %if.then83, !dbg !831

if.then83:                                        ; preds = %if.else81
  %next84 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %29, i64 0, i32 0, !dbg !832
  %30 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next84, align 8, !dbg !832
  %tobool85 = icmp eq %struct.bitmap_element_def* %30, null, !dbg !834
  br i1 %tobool85, label %if.else90, label %if.then86, !dbg !835

if.then86:                                        ; preds = %if.then83
  %31 = ptrtoint %struct.bitmap_element_def* %30 to i64, !dbg !835
  store i64 %31, i64* bitcast (%struct.bitmap_element_def** @bitmap_ggc_free to i64*), align 8, !dbg !836
  %prev88 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %29, i64 0, i32 1, !dbg !838
  %32 = bitcast %struct.bitmap_element_def** %prev88 to i64*, !dbg !838
  %33 = load i64, i64* %32, align 8, !dbg !838
  %prev89 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %30, i64 0, i32 1, !dbg !839
  %34 = bitcast %struct.bitmap_element_def** %prev89 to i64*, !dbg !840
  store i64 %33, i64* %34, align 8, !dbg !840
  br label %if.end95, !dbg !841

if.else90:                                        ; preds = %if.then83
  %prev91 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %29, i64 0, i32 1, !dbg !842
  %35 = bitcast %struct.bitmap_element_def** %prev91 to i64*, !dbg !842
  %36 = load i64, i64* %35, align 8, !dbg !842
  store i64 %36, i64* bitcast (%struct.bitmap_element_def** @bitmap_ggc_free to i64*), align 8, !dbg !843
  br label %if.end95

if.else93:                                        ; preds = %if.else81
  %call = tail call i8* @ggc_alloc_stat(i64 40) #6, !dbg !844
  %37 = bitcast i8* %call to %struct.bitmap_element_def*, !dbg !844
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %37, metadata !802, metadata !DIExpression()), !dbg !804
  br label %if.end95

if.end95:                                         ; preds = %if.else93, %if.else90, %if.then86, %cond.end72, %if.else, %if.then4
  %element.2 = phi %struct.bitmap_element_def* [ %27, %cond.end72 ], [ %1, %if.else ], [ %1, %if.then4 ], [ %37, %if.else93 ], [ %29, %if.else90 ], [ %29, %if.then86 ], !dbg !845
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.2, metadata !802, metadata !DIExpression()), !dbg !804
  %arraydecay = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element.2, i64 0, i32 3, i64 0, !dbg !846
  %38 = bitcast i64* %arraydecay to i8*, !dbg !846
  %call96 = tail call i8* @memset(i8* nonnull %38, i32 0, i64 16) #6, !dbg !847
  ret %struct.bitmap_element_def* %element.2, !dbg !848
}

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %head, i32 %bit) local_unnamed_addr #4 !dbg !849 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !853, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i32 %bit, metadata !854, metadata !DIExpression()), !dbg !863
  %call = tail call fastcc %struct.bitmap_element_def* @bitmap_find_bit(%struct.bitmap_head_def* %head, i32 %bit) #7, !dbg !864
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !855, metadata !DIExpression()), !dbg !863
  %cmp = icmp eq %struct.bitmap_element_def* %call, null, !dbg !865
  br i1 %cmp, label %cleanup, label %if.then, !dbg !866

if.then:                                          ; preds = %entry
  %rem = and i32 %bit, 63, !dbg !867
  call void @llvm.dbg.value(metadata i32 %rem, metadata !857, metadata !DIExpression()), !dbg !868
  %div = lshr i32 %bit, 6, !dbg !869
  %rem1 = and i32 %div, 1, !dbg !870
  call void @llvm.dbg.value(metadata i32 %rem1, metadata !860, metadata !DIExpression()), !dbg !868
  %sh_prom = zext i32 %rem to i64, !dbg !871
  %shl = shl i64 1, %sh_prom, !dbg !871
  call void @llvm.dbg.value(metadata i64 %shl, metadata !861, metadata !DIExpression()), !dbg !868
  %idxprom = zext i32 %rem1 to i64, !dbg !872
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call, i64 0, i32 3, i64 %idxprom, !dbg !872
  %0 = load i64, i64* %arrayidx, align 8, !dbg !872
  %and = and i64 %0, %shl, !dbg !873
  %cmp2 = icmp ne i64 %and, 0, !dbg !874
  %conv3 = zext i1 %cmp2 to i8, !dbg !875
  call void @llvm.dbg.value(metadata i8 %conv3, metadata !862, metadata !DIExpression()), !dbg !868
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !876

if.then4:                                         ; preds = %if.then
  %neg = xor i64 %shl, -1, !dbg !877
  %and8 = and i64 %0, %neg, !dbg !879
  store i64 %and8, i64* %arrayidx, align 8, !dbg !879
  br label %if.end, !dbg !880

if.end:                                           ; preds = %if.then4, %if.then
  %call9 = tail call fastcc i32 @bitmap_element_zerop(%struct.bitmap_element_def* nonnull %call) #7, !dbg !881
  %tobool10 = icmp eq i32 %call9, 0, !dbg !881
  br i1 %tobool10, label %cleanup, label %if.then11, !dbg !883

if.then11:                                        ; preds = %if.end
  tail call fastcc void @bitmap_element_free(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* nonnull %call) #7, !dbg !884
  br label %cleanup, !dbg !884

cleanup:                                          ; preds = %if.end, %entry, %if.then11
  %retval.0 = phi i8 [ %conv3, %if.then11 ], [ %conv3, %if.end ], [ 0, %entry ], !dbg !863
  ret i8 %retval.0, !dbg !885
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.bitmap_element_def* @bitmap_find_bit(%struct.bitmap_head_def* %head, i32 %bit) unnamed_addr #0 !dbg !886 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !890, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i32 %bit, metadata !891, metadata !DIExpression()), !dbg !894
  %div = lshr i32 %bit, 7, !dbg !895
  call void @llvm.dbg.value(metadata i32 %div, metadata !893, metadata !DIExpression()), !dbg !894
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 1, !dbg !896
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !896
  %cmp = icmp eq %struct.bitmap_element_def* %0, null, !dbg !898
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !899

lor.lhs.false:                                    ; preds = %entry
  %indx1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 2, !dbg !900
  %1 = load i32, i32* %indx1, align 8, !dbg !900
  %cmp2 = icmp eq i32 %1, %div, !dbg !901
  br i1 %cmp2, label %if.then, label %if.end, !dbg !902

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %cleanup, !dbg !903

if.end:                                           ; preds = %lor.lhs.false
  %cmp5 = icmp ult i32 %1, %div, !dbg !904
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !906

if.then6:                                         ; preds = %if.end
  br label %for.cond, !dbg !907

for.cond:                                         ; preds = %for.inc, %if.then6
  %element.0 = phi %struct.bitmap_element_def* [ %0, %if.then6 ], [ %2, %for.inc ], !dbg !909
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.0, metadata !892, metadata !DIExpression()), !dbg !894
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element.0, i64 0, i32 0, !dbg !910
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !910
  %cmp8 = icmp eq %struct.bitmap_element_def* %2, null, !dbg !912
  br i1 %cmp8, label %if.end40.loopexit, label %land.rhs, !dbg !913

land.rhs:                                         ; preds = %for.cond
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element.0, i64 0, i32 2, !dbg !914
  %3 = load i32, i32* %indx9, align 8, !dbg !914
  %cmp10 = icmp ult i32 %3, %div, !dbg !915
  br i1 %cmp10, label %for.inc, label %if.end40.loopexit, !dbg !916

for.inc:                                          ; preds = %land.rhs
  br label %for.cond, !dbg !917, !llvm.loop !918

if.else:                                          ; preds = %if.end
  %div13 = lshr i32 %1, 1, !dbg !920
  %cmp14 = icmp ult i32 %div13, %div, !dbg !922
  br i1 %cmp14, label %if.then15, label %if.else27, !dbg !923

if.then15:                                        ; preds = %if.else
  br label %for.cond17, !dbg !924

for.cond17:                                       ; preds = %for.inc24, %if.then15
  %element.1 = phi %struct.bitmap_element_def* [ %0, %if.then15 ], [ %4, %for.inc24 ], !dbg !926
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.1, metadata !892, metadata !DIExpression()), !dbg !894
  %prev = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element.1, i64 0, i32 1, !dbg !927
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev, align 8, !dbg !927
  %cmp18 = icmp eq %struct.bitmap_element_def* %4, null, !dbg !929
  br i1 %cmp18, label %if.end40.loopexit1, label %land.rhs19, !dbg !930

land.rhs19:                                       ; preds = %for.cond17
  %indx20 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element.1, i64 0, i32 2, !dbg !931
  %5 = load i32, i32* %indx20, align 8, !dbg !931
  %cmp21 = icmp ugt i32 %5, %div, !dbg !932
  br i1 %cmp21, label %for.inc24, label %if.end40.loopexit1, !dbg !933

for.inc24:                                        ; preds = %land.rhs19
  br label %for.cond17, !dbg !934, !llvm.loop !935

if.else27:                                        ; preds = %if.else
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 0, !dbg !937
  %element.2.pre = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !939
  br label %for.cond28, !dbg !940

for.cond28:                                       ; preds = %for.inc36, %if.else27
  %element.2 = phi %struct.bitmap_element_def* [ %element.2.pre, %if.else27 ], [ %6, %for.inc36 ], !dbg !939
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.2, metadata !892, metadata !DIExpression()), !dbg !894
  %next29 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element.2, i64 0, i32 0, !dbg !941
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next29, align 8, !dbg !941
  %cmp30 = icmp eq %struct.bitmap_element_def* %6, null, !dbg !943
  br i1 %cmp30, label %if.end40.loopexit2, label %land.rhs31, !dbg !944

land.rhs31:                                       ; preds = %for.cond28
  %indx32 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element.2, i64 0, i32 2, !dbg !945
  %7 = load i32, i32* %indx32, align 8, !dbg !945
  %cmp33 = icmp ult i32 %7, %div, !dbg !946
  br i1 %cmp33, label %for.inc36, label %if.end40.loopexit2, !dbg !947

for.inc36:                                        ; preds = %land.rhs31
  br label %for.cond28, !dbg !948, !llvm.loop !949

if.end40.loopexit:                                ; preds = %land.rhs, %for.cond
  %element.0.lcssa = phi %struct.bitmap_element_def* [ %element.0, %land.rhs ], [ %element.0, %for.cond ], !dbg !909
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.0.lcssa, metadata !892, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.0.lcssa, metadata !892, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.0.lcssa, metadata !892, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.0.lcssa, metadata !892, metadata !DIExpression()), !dbg !894
  br label %if.end40, !dbg !951

if.end40.loopexit1:                               ; preds = %land.rhs19, %for.cond17
  %element.1.lcssa = phi %struct.bitmap_element_def* [ %element.1, %land.rhs19 ], [ %element.1, %for.cond17 ], !dbg !926
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.1.lcssa, metadata !892, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.1.lcssa, metadata !892, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.1.lcssa, metadata !892, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.1.lcssa, metadata !892, metadata !DIExpression()), !dbg !894
  br label %if.end40, !dbg !951

if.end40.loopexit2:                               ; preds = %land.rhs31, %for.cond28
  %element.2.lcssa = phi %struct.bitmap_element_def* [ %element.2, %land.rhs31 ], [ %element.2, %for.cond28 ], !dbg !939
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.2.lcssa, metadata !892, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.2.lcssa, metadata !892, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.2.lcssa, metadata !892, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.2.lcssa, metadata !892, metadata !DIExpression()), !dbg !894
  br label %if.end40, !dbg !951

if.end40:                                         ; preds = %if.end40.loopexit2, %if.end40.loopexit1, %if.end40.loopexit
  %element.4 = phi %struct.bitmap_element_def* [ %element.0.lcssa, %if.end40.loopexit ], [ %element.1.lcssa, %if.end40.loopexit1 ], [ %element.2.lcssa, %if.end40.loopexit2 ], !dbg !952
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element.4, metadata !892, metadata !DIExpression()), !dbg !894
  store %struct.bitmap_element_def* %element.4, %struct.bitmap_element_def** %current, align 8, !dbg !953
  %indx42 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element.4, i64 0, i32 2, !dbg !954
  %8 = load i32, i32* %indx42, align 8, !dbg !954
  store i32 %8, i32* %indx1, align 8, !dbg !955
  %cmp44 = icmp eq %struct.bitmap_element_def* %element.4, null, !dbg !956
  br i1 %cmp44, label %cleanup, label %land.lhs.true, !dbg !958

land.lhs.true:                                    ; preds = %if.end40
  %9 = load i32, i32* %indx42, align 8, !dbg !959
  %cmp46 = icmp eq i32 %9, %div, !dbg !960
  %spec.select = select i1 %cmp46, %struct.bitmap_element_def* %element.4, %struct.bitmap_element_def* null, !dbg !961
  ret %struct.bitmap_element_def* %spec.select, !dbg !961

cleanup:                                          ; preds = %if.end40, %if.then
  %retval.0 = phi %struct.bitmap_element_def* [ %0, %if.then ], [ null, %if.end40 ], !dbg !894
  ret %struct.bitmap_element_def* %retval.0, !dbg !962
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @bitmap_element_zerop(%struct.bitmap_element_def* %element) unnamed_addr #0 !dbg !963 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element, metadata !967, metadata !DIExpression()), !dbg !968
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element, i64 0, i32 3, i64 0, !dbg !969
  %0 = load i64, i64* %arrayidx, align 8, !dbg !969
  %arrayidx2 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element, i64 0, i32 3, i64 1, !dbg !970
  %1 = load i64, i64* %arrayidx2, align 8, !dbg !970
  %or = or i64 %0, %1, !dbg !971
  %cmp = icmp eq i64 %or, 0, !dbg !972
  %conv = zext i1 %cmp to i32, !dbg !972
  ret i32 %conv, !dbg !973
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bitmap_element_free(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* %elt) unnamed_addr #0 !dbg !974 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !976, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt, metadata !977, metadata !DIExpression()), !dbg !980
  %next1 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt, i64 0, i32 0, !dbg !981
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next1, align 8, !dbg !981
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !978, metadata !DIExpression()), !dbg !980
  %prev2 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt, i64 0, i32 1, !dbg !982
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev2, align 8, !dbg !982
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !979, metadata !DIExpression()), !dbg !980
  %tobool = icmp eq %struct.bitmap_element_def* %1, null, !dbg !983
  br i1 %tobool, label %if.end, label %if.then, !dbg !985

if.then:                                          ; preds = %entry
  %next3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %1, i64 0, i32 0, !dbg !986
  store %struct.bitmap_element_def* %0, %struct.bitmap_element_def** %next3, align 8, !dbg !987
  br label %if.end, !dbg !988

if.end:                                           ; preds = %entry, %if.then
  %tobool4 = icmp eq %struct.bitmap_element_def* %0, null, !dbg !989
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !991

if.then5:                                         ; preds = %if.end
  %prev6 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %0, i64 0, i32 1, !dbg !992
  store %struct.bitmap_element_def* %1, %struct.bitmap_element_def** %prev6, align 8, !dbg !993
  br label %if.end7, !dbg !994

if.end7:                                          ; preds = %if.end, %if.then5
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 0, !dbg !995
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !995
  %cmp = icmp eq %struct.bitmap_element_def* %2, %elt, !dbg !997
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !998

if.then8:                                         ; preds = %if.end7
  store %struct.bitmap_element_def* %0, %struct.bitmap_element_def** %first, align 8, !dbg !999
  br label %if.end10, !dbg !1000

if.end10:                                         ; preds = %if.then8, %if.end7
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 1, !dbg !1001
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !1001
  %cmp11 = icmp eq %struct.bitmap_element_def* %3, %elt, !dbg !1003
  br i1 %cmp11, label %if.then12, label %if.end22, !dbg !1004

if.then12:                                        ; preds = %if.end10
  %. = select i1 %tobool4, %struct.bitmap_element_def* %1, %struct.bitmap_element_def* %0, !dbg !1005
  store %struct.bitmap_element_def* %., %struct.bitmap_element_def** %current, align 8, !dbg !1007
  %tobool16 = icmp eq %struct.bitmap_element_def* %., null, !dbg !1008
  br i1 %tobool16, label %if.else, label %if.then17, !dbg !1010

if.then17:                                        ; preds = %if.then12
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %., i64 0, i32 2, !dbg !1011
  %4 = load i32, i32* %indx, align 8, !dbg !1011
  %indx19 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 2, !dbg !1012
  store i32 %4, i32* %indx19, align 8, !dbg !1013
  br label %if.end22, !dbg !1014

if.else:                                          ; preds = %if.then12
  %indx20 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 2, !dbg !1015
  store i32 0, i32* %indx20, align 8, !dbg !1016
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.else, %if.end10
  tail call fastcc void @bitmap_elem_to_freelist(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* %elt) #7, !dbg !1017
  ret void, !dbg !1018
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %head, i32 %bit) local_unnamed_addr #4 !dbg !1019 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !1021, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i32 %bit, metadata !1022, metadata !DIExpression()), !dbg !1030
  %call = tail call fastcc %struct.bitmap_element_def* @bitmap_find_bit(%struct.bitmap_head_def* %head, i32 %bit) #7, !dbg !1031
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !1023, metadata !DIExpression()), !dbg !1030
  %div = lshr i32 %bit, 6, !dbg !1032
  %rem = and i32 %div, 1, !dbg !1033
  call void @llvm.dbg.value(metadata i32 %rem, metadata !1024, metadata !DIExpression()), !dbg !1030
  %rem1 = and i32 %bit, 63, !dbg !1034
  call void @llvm.dbg.value(metadata i32 %rem1, metadata !1025, metadata !DIExpression()), !dbg !1030
  %sh_prom = zext i32 %rem1 to i64, !dbg !1035
  %shl = shl i64 1, %sh_prom, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %shl, metadata !1026, metadata !DIExpression()), !dbg !1030
  %cmp = icmp eq %struct.bitmap_element_def* %call, null, !dbg !1036
  br i1 %cmp, label %if.then, label %if.else, !dbg !1037

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %struct.bitmap_element_def* @bitmap_element_allocate(%struct.bitmap_head_def* %head) #7, !dbg !1038
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call2, metadata !1023, metadata !DIExpression()), !dbg !1030
  %div3 = lshr i32 %bit, 7, !dbg !1040
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call2, i64 0, i32 2, !dbg !1041
  store i32 %div3, i32* %indx, align 8, !dbg !1042
  %idxprom = zext i32 %rem to i64, !dbg !1043
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call2, i64 0, i32 3, i64 %idxprom, !dbg !1043
  store i64 %shl, i64* %arrayidx, align 8, !dbg !1044
  tail call fastcc void @bitmap_element_link(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* %call2) #7, !dbg !1045
  br label %cleanup, !dbg !1046

if.else:                                          ; preds = %entry
  %idxprom5 = zext i32 %rem to i64, !dbg !1047
  %arrayidx6 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call, i64 0, i32 3, i64 %idxprom5, !dbg !1047
  %0 = load i64, i64* %arrayidx6, align 8, !dbg !1047
  %and = and i64 %0, %shl, !dbg !1048
  %cmp7 = icmp eq i64 %and, 0, !dbg !1049
  %conv8 = zext i1 %cmp7 to i8, !dbg !1050
  call void @llvm.dbg.value(metadata i8 %conv8, metadata !1027, metadata !DIExpression()), !dbg !1051
  br i1 %cmp7, label %if.then9, label %cleanup, !dbg !1052

if.then9:                                         ; preds = %if.else
  %or = or i64 %0, %shl, !dbg !1053
  store i64 %or, i64* %arrayidx6, align 8, !dbg !1053
  br label %cleanup, !dbg !1055

cleanup:                                          ; preds = %if.else, %if.then9, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ %conv8, %if.then9 ], [ %conv8, %if.else ], !dbg !1056
  ret i8 %retval.0, !dbg !1057
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bitmap_element_link(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* %element) unnamed_addr #0 !dbg !1058 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !1060, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %element, metadata !1061, metadata !DIExpression()), !dbg !1064
  %indx1 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element, i64 0, i32 2, !dbg !1065
  %0 = load i32, i32* %indx1, align 8, !dbg !1065
  call void @llvm.dbg.value(metadata i32 %0, metadata !1062, metadata !DIExpression()), !dbg !1064
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 0, !dbg !1066
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !1066
  %cmp = icmp eq %struct.bitmap_element_def* %1, null, !dbg !1068
  br i1 %cmp, label %if.then, label %if.else, !dbg !1069

if.then:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element, i64 0, i32 1, !dbg !1070
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %prev, align 8, !dbg !1072
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element, i64 0, i32 0, !dbg !1073
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %next, align 8, !dbg !1074
  store %struct.bitmap_element_def* %element, %struct.bitmap_element_def** %first, align 8, !dbg !1075
  br label %if.end47, !dbg !1076

if.else:                                          ; preds = %entry
  %indx3 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 2, !dbg !1077
  %2 = load i32, i32* %indx3, align 8, !dbg !1077
  %cmp4 = icmp ult i32 %0, %2, !dbg !1079
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 1, !dbg !1080
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !1080
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %3, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %3, metadata !1063, metadata !DIExpression()), !dbg !1064
  br i1 %cmp4, label %for.cond.preheader, label %for.cond24.preheader, !dbg !1081

for.cond24.preheader:                             ; preds = %if.else
  br label %for.cond24, !dbg !1082

for.cond.preheader:                               ; preds = %if.else
  br label %for.cond, !dbg !1085

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %ptr.0 = phi %struct.bitmap_element_def* [ %4, %for.inc ], [ %3, %for.cond.preheader ], !dbg !1088
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.0, metadata !1063, metadata !DIExpression()), !dbg !1064
  %prev6 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %ptr.0, i64 0, i32 1, !dbg !1089
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev6, align 8, !dbg !1089
  %cmp7 = icmp eq %struct.bitmap_element_def* %4, null, !dbg !1091
  br i1 %cmp7, label %for.end, label %land.rhs, !dbg !1092

land.rhs:                                         ; preds = %for.cond
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 2, !dbg !1093
  %5 = load i32, i32* %indx9, align 8, !dbg !1093
  %cmp10 = icmp ugt i32 %5, %0, !dbg !1094
  br i1 %cmp10, label %for.inc, label %for.end, !dbg !1085

for.inc:                                          ; preds = %land.rhs
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %4, metadata !1063, metadata !DIExpression()), !dbg !1064
  br label %for.cond, !dbg !1095, !llvm.loop !1096

for.end:                                          ; preds = %for.cond, %land.rhs
  %ptr.0.lcssa = phi %struct.bitmap_element_def* [ %ptr.0, %for.cond ], [ %ptr.0, %land.rhs ], !dbg !1088
  %prev6.lcssa = phi %struct.bitmap_element_def** [ %prev6, %for.cond ], [ %prev6, %land.rhs ], !dbg !1089
  %.lcssa = phi %struct.bitmap_element_def* [ %4, %for.cond ], [ %4, %land.rhs ], !dbg !1089
  %cmp7.lcssa = phi i1 [ %cmp7, %for.cond ], [ %cmp7, %land.rhs ], !dbg !1091
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.0.lcssa, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.0.lcssa, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.0.lcssa, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.0.lcssa, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.0.lcssa, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.0.lcssa, metadata !1063, metadata !DIExpression()), !dbg !1064
  br i1 %cmp7.lcssa, label %if.else16, label %if.then13, !dbg !1098

if.then13:                                        ; preds = %for.end
  %next15 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %.lcssa, i64 0, i32 0, !dbg !1099
  store %struct.bitmap_element_def* %element, %struct.bitmap_element_def** %next15, align 8, !dbg !1101
  br label %if.end, !dbg !1102

if.else16:                                        ; preds = %for.end
  store %struct.bitmap_element_def* %element, %struct.bitmap_element_def** %first, align 8, !dbg !1103
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then13
  %6 = bitcast %struct.bitmap_element_def** %prev6.lcssa to i64*, !dbg !1104
  %7 = load i64, i64* %6, align 8, !dbg !1104
  %prev19 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element, i64 0, i32 1, !dbg !1105
  %8 = bitcast %struct.bitmap_element_def** %prev19 to i64*, !dbg !1106
  store i64 %7, i64* %8, align 8, !dbg !1106
  %next20 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element, i64 0, i32 0, !dbg !1107
  store %struct.bitmap_element_def* %ptr.0.lcssa, %struct.bitmap_element_def** %next20, align 8, !dbg !1108
  store %struct.bitmap_element_def* %element, %struct.bitmap_element_def** %prev6.lcssa, align 8, !dbg !1109
  br label %if.end47, !dbg !1110

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc33
  %ptr.1 = phi %struct.bitmap_element_def* [ %9, %for.inc33 ], [ %3, %for.cond24.preheader ], !dbg !1111
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.1, metadata !1063, metadata !DIExpression()), !dbg !1064
  %next25 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %ptr.1, i64 0, i32 0, !dbg !1112
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next25, align 8, !dbg !1112
  %cmp26 = icmp eq %struct.bitmap_element_def* %9, null, !dbg !1114
  %10 = ptrtoint %struct.bitmap_element_def* %9 to i64, !dbg !1115
  br i1 %cmp26, label %for.end35, label %land.rhs27, !dbg !1115

land.rhs27:                                       ; preds = %for.cond24
  %indx29 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 2, !dbg !1116
  %11 = load i32, i32* %indx29, align 8, !dbg !1116
  %cmp30 = icmp ult i32 %11, %0, !dbg !1117
  br i1 %cmp30, label %for.inc33, label %for.end35, !dbg !1082

for.inc33:                                        ; preds = %land.rhs27
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %9, metadata !1063, metadata !DIExpression()), !dbg !1064
  br label %for.cond24, !dbg !1118, !llvm.loop !1119

for.end35:                                        ; preds = %for.cond24, %land.rhs27
  %ptr.1.lcssa = phi %struct.bitmap_element_def* [ %ptr.1, %for.cond24 ], [ %ptr.1, %land.rhs27 ], !dbg !1111
  %next25.lcssa = phi %struct.bitmap_element_def** [ %next25, %for.cond24 ], [ %next25, %land.rhs27 ], !dbg !1112
  %.lcssa5 = phi %struct.bitmap_element_def* [ %9, %for.cond24 ], [ %9, %land.rhs27 ], !dbg !1112
  %cmp26.lcssa = phi i1 [ %cmp26, %for.cond24 ], [ %cmp26, %land.rhs27 ], !dbg !1114
  %.lcssa4 = phi i64 [ %10, %for.cond24 ], [ %10, %land.rhs27 ], !dbg !1115
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.1.lcssa, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.1.lcssa, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.1.lcssa, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.1.lcssa, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.1.lcssa, metadata !1063, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.1.lcssa, metadata !1063, metadata !DIExpression()), !dbg !1064
  br i1 %cmp26.lcssa, label %for.end35.if.end41_crit_edge, label %if.then38, !dbg !1121

for.end35.if.end41_crit_edge:                     ; preds = %for.end35
  br label %if.end41, !dbg !1121

if.then38:                                        ; preds = %for.end35
  %prev40 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %.lcssa5, i64 0, i32 1, !dbg !1122
  store %struct.bitmap_element_def* %element, %struct.bitmap_element_def** %prev40, align 8, !dbg !1124
  %.phi.trans.insert = bitcast %struct.bitmap_element_def* %ptr.1.lcssa to i64*, !dbg !1125
  %.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !1126
  br label %if.end41, !dbg !1127

if.end41:                                         ; preds = %for.end35.if.end41_crit_edge, %if.then38
  %12 = phi i64 [ %.lcssa4, %for.end35.if.end41_crit_edge ], [ %.pre, %if.then38 ], !dbg !1126
  %13 = bitcast %struct.bitmap_element_def* %element to i64*, !dbg !1128
  store i64 %12, i64* %13, align 8, !dbg !1128
  %prev44 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %element, i64 0, i32 1, !dbg !1129
  store %struct.bitmap_element_def* %ptr.1.lcssa, %struct.bitmap_element_def** %prev44, align 8, !dbg !1130
  store %struct.bitmap_element_def* %element, %struct.bitmap_element_def** %next25.lcssa, align 8, !dbg !1131
  br label %if.end47

if.end47:                                         ; preds = %if.end, %if.end41, %if.then
  %current48 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 1, !dbg !1132
  store %struct.bitmap_element_def* %element, %struct.bitmap_element_def** %current48, align 8, !dbg !1133
  %indx49 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 2, !dbg !1134
  store i32 %0, i32* %indx49, align 8, !dbg !1135
  ret void, !dbg !1136
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def* %head, i32 %bit) local_unnamed_addr #4 !dbg !1137 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !1141, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i32 %bit, metadata !1142, metadata !DIExpression()), !dbg !1146
  %call = tail call fastcc %struct.bitmap_element_def* @bitmap_find_bit(%struct.bitmap_head_def* %head, i32 %bit) #7, !dbg !1147
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !1143, metadata !DIExpression()), !dbg !1146
  %cmp = icmp eq %struct.bitmap_element_def* %call, null, !dbg !1148
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1150

if.end:                                           ; preds = %entry
  %rem = and i32 %bit, 63, !dbg !1151
  call void @llvm.dbg.value(metadata i32 %rem, metadata !1144, metadata !DIExpression()), !dbg !1146
  %div = lshr i32 %bit, 6, !dbg !1152
  %rem1 = and i32 %div, 1, !dbg !1153
  call void @llvm.dbg.value(metadata i32 %rem1, metadata !1145, metadata !DIExpression()), !dbg !1146
  %idxprom = zext i32 %rem1 to i64, !dbg !1154
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call, i64 0, i32 3, i64 %idxprom, !dbg !1154
  %0 = load i64, i64* %arrayidx, align 8, !dbg !1154
  %sh_prom = zext i32 %rem to i64, !dbg !1155
  %shr = lshr i64 %0, %sh_prom, !dbg !1155
  %1 = trunc i64 %shr to i32, !dbg !1156
  %conv = and i32 %1, 1, !dbg !1156
  br label %cleanup, !dbg !1157

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry ], !dbg !1146
  ret i32 %retval.0, !dbg !1158
}

; Function Attrs: nounwind uwtable
define dso_local i64 @bitmap_count_bits(%struct.bitmap_head_def* %a) local_unnamed_addr #4 !dbg !1159 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !1163, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 0, metadata !1164, metadata !DIExpression()), !dbg !1167
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !1168
  br label %for.cond, !dbg !1170

for.cond:                                         ; preds = %for.inc3, %entry
  %elt.0.in = phi %struct.bitmap_element_def** [ %first, %entry ], [ %next, %for.inc3 ]
  %count.0 = phi i64 [ 0, %entry ], [ %count.1.lcssa, %for.inc3 ], !dbg !1171
  %elt.0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt.0.in, align 8, !dbg !1172
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !1164, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.0, metadata !1165, metadata !DIExpression()), !dbg !1167
  %tobool = icmp eq %struct.bitmap_element_def* %elt.0, null, !dbg !1173
  br i1 %tobool, label %for.end4, label %for.cond1.preheader, !dbg !1173

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !1174

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body2
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body2 ], !dbg !1167
  %count.1 = phi i64 [ %count.0, %for.cond1.preheader ], [ %add, %for.body2 ], !dbg !1167
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1166, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %count.1, metadata !1164, metadata !DIExpression()), !dbg !1167
  %cmp = icmp eq i64 %indvars.iv, 2, !dbg !1178
  br i1 %cmp, label %for.inc3, label %for.body2, !dbg !1174

for.body2:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.0, i64 0, i32 3, i64 %indvars.iv, !dbg !1180
  %0 = load i64, i64* %arrayidx, align 8, !dbg !1180
  %call = tail call fastcc i64 @bitmap_popcount(i64 %0) #7, !dbg !1182
  %add = add i64 %count.1, %call, !dbg !1183
  call void @llvm.dbg.value(metadata i64 %add, metadata !1164, metadata !DIExpression()), !dbg !1167
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1184
  call void @llvm.dbg.value(metadata i32 undef, metadata !1166, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1167
  br label %for.cond1, !dbg !1185, !llvm.loop !1186

for.inc3:                                         ; preds = %for.cond1
  %count.1.lcssa = phi i64 [ %count.1, %for.cond1 ], !dbg !1167
  call void @llvm.dbg.value(metadata i64 %count.1.lcssa, metadata !1164, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %count.1.lcssa, metadata !1164, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %count.1.lcssa, metadata !1164, metadata !DIExpression()), !dbg !1167
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.0, i64 0, i32 0, !dbg !1188
  br label %for.cond, !dbg !1189, !llvm.loop !1190

for.end4:                                         ; preds = %for.cond
  %count.0.lcssa = phi i64 [ %count.0, %for.cond ], !dbg !1171
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !1164, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !1164, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !1164, metadata !DIExpression()), !dbg !1167
  ret i64 %count.0.lcssa, !dbg !1192
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @bitmap_popcount(i64 %a) unnamed_addr #4 !dbg !1193 {
entry:
  call void @llvm.dbg.value(metadata i64 %a, metadata !1197, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i64 0, metadata !1198, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i32 0, metadata !1199, metadata !DIExpression()), !dbg !1200
  br label %for.cond, !dbg !1201

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !1200
  %ret.0 = phi i64 [ %add, %for.body ], [ 0, %entry ], !dbg !1200
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1199, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i64 %ret.0, metadata !1198, metadata !DIExpression()), !dbg !1200
  %cmp = icmp ult i64 %indvars.iv, 64, !dbg !1203
  br i1 %cmp, label %for.body, label %for.end, !dbg !1205

for.body:                                         ; preds = %for.cond
  %shr = lshr i64 %a, %indvars.iv, !dbg !1206
  %and = and i64 %shr, 255, !dbg !1207
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @popcount_table, i64 0, i64 %and, !dbg !1208
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1208
  %conv = zext i8 %0 to i64, !dbg !1208
  %add = add i64 %ret.0, %conv, !dbg !1209
  call void @llvm.dbg.value(metadata i64 %add, metadata !1198, metadata !DIExpression()), !dbg !1200
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8, !dbg !1210
  call void @llvm.dbg.value(metadata i32 undef, metadata !1199, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1200
  br label %for.cond, !dbg !1211, !llvm.loop !1212

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi i64 [ %ret.0, %for.cond ], !dbg !1200
  call void @llvm.dbg.value(metadata i64 %ret.0.lcssa, metadata !1198, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i64 %ret.0.lcssa, metadata !1198, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i64 %ret.0.lcssa, metadata !1198, metadata !DIExpression()), !dbg !1200
  ret i64 %ret.0.lcssa, !dbg !1214
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @bitmap_single_bit_set_p(%struct.bitmap_head_def* %a) local_unnamed_addr #4 !dbg !1215 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !1219, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 0, metadata !1220, metadata !DIExpression()), !dbg !1223
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !1224
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !1224
  %tobool = icmp eq %struct.bitmap_element_def* %0, null, !dbg !1224
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1226

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !1221, metadata !DIExpression()), !dbg !1223
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %0, i64 0, i32 0, !dbg !1227
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !1227
  %cmp = icmp eq %struct.bitmap_element_def* %1, null, !dbg !1229
  br i1 %cmp, label %for.cond.preheader, label %cleanup, !dbg !1230

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !1231

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !1233
  %count.0 = phi i64 [ 0, %for.cond.preheader ], [ %add, %for.inc ], !dbg !1223
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !1220, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1222, metadata !DIExpression()), !dbg !1223
  %cmp4 = icmp eq i64 %indvars.iv, 2, !dbg !1234
  br i1 %cmp4, label %for.end, label %for.body, !dbg !1231

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %0, i64 0, i32 3, i64 %indvars.iv, !dbg !1236
  %2 = load i64, i64* %arrayidx, align 8, !dbg !1236
  %call = tail call fastcc i64 @bitmap_popcount(i64 %2) #7, !dbg !1238
  %add = add i64 %count.0, %call, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %add, metadata !1220, metadata !DIExpression()), !dbg !1223
  %cmp5 = icmp ugt i64 %add, 1, !dbg !1240
  br i1 %cmp5, label %cleanup.loopexit, label %for.inc, !dbg !1242

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1243
  call void @llvm.dbg.value(metadata i32 undef, metadata !1222, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1223
  br label %for.cond, !dbg !1244, !llvm.loop !1245

for.end:                                          ; preds = %for.cond
  %count.0.lcssa = phi i64 [ %count.0, %for.cond ], !dbg !1223
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !1220, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !1220, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !1220, metadata !DIExpression()), !dbg !1223
  %cmp8 = icmp eq i64 %count.0.lcssa, 1, !dbg !1247
  %conv9 = zext i1 %cmp8 to i8, !dbg !1248
  br label %cleanup, !dbg !1249

cleanup.loopexit:                                 ; preds = %for.body
  br label %cleanup, !dbg !1250

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %entry, %for.end
  %retval.0 = phi i8 [ %conv9, %for.end ], [ 0, %entry ], [ 0, %if.end ], [ 0, %cleanup.loopexit ], !dbg !1223
  ret i8 %retval.0, !dbg !1250
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bitmap_first_set_bit(%struct.bitmap_head_def* %a) local_unnamed_addr #4 !dbg !1251 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !1255, metadata !DIExpression()), !dbg !1261
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !1262
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !1262
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !1256, metadata !DIExpression()), !dbg !1261
  %tobool = icmp eq %struct.bitmap_element_def* %0, null, !dbg !1263
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !1263

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 770, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1263
  br label %cond.end, !dbg !1263

cond.end:                                         ; preds = %entry, %cond.true
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %0, i64 0, i32 2, !dbg !1264
  %1 = load i32, i32* %indx, align 8, !dbg !1264
  %mul = shl i32 %1, 7, !dbg !1265
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1257, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 0, metadata !1259, metadata !DIExpression()), !dbg !1261
  br label %for.cond, !dbg !1266

for.cond:                                         ; preds = %for.inc, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %cond.end ], !dbg !1268
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1259, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i64 0, metadata !1258, metadata !DIExpression()), !dbg !1261
  %cmp = icmp eq i64 %indvars.iv, 2, !dbg !1269
  br i1 %cmp, label %for.end, label %for.body, !dbg !1271

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %0, i64 0, i32 3, i64 %indvars.iv, !dbg !1272
  %2 = load i64, i64* %arrayidx, align 8, !dbg !1272
  call void @llvm.dbg.value(metadata i64 %2, metadata !1258, metadata !DIExpression()), !dbg !1261
  %tobool1 = icmp eq i64 %2, 0, !dbg !1274
  br i1 %tobool1, label %for.inc, label %found_bit.loopexit, !dbg !1276

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1277
  call void @llvm.dbg.value(metadata i32 undef, metadata !1259, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1261
  br label %for.cond, !dbg !1278, !llvm.loop !1279

for.end:                                          ; preds = %for.cond
  %ix.0.lcssa.wide = phi i64 [ %indvars.iv, %for.cond ]
  %3 = trunc i64 %ix.0.lcssa.wide to i32, !dbg !1261
  call void @llvm.dbg.value(metadata i32 %3, metadata !1259, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %3, metadata !1259, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i64 0, metadata !1258, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %3, metadata !1259, metadata !DIExpression()), !dbg !1261
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 778, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1281
  br label %found_bit, !dbg !1281

found_bit.loopexit:                               ; preds = %for.body
  %.lcssa = phi i64 [ %2, %for.body ], !dbg !1272
  %ix.0.lcssa7.wide = phi i64 [ %indvars.iv, %for.body ]
  %4 = trunc i64 %ix.0.lcssa7.wide to i32, !dbg !1261
  call void @llvm.dbg.value(metadata i32 %4, metadata !1259, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %4, metadata !1259, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %4, metadata !1259, metadata !DIExpression()), !dbg !1261
  br label %found_bit, !dbg !1282

found_bit:                                        ; preds = %found_bit.loopexit, %for.end
  %ix.08 = phi i32 [ %3, %for.end ], [ %4, %found_bit.loopexit ]
  %word.1 = phi i64 [ 0, %for.end ], [ %.lcssa, %found_bit.loopexit ]
  call void @llvm.dbg.value(metadata i64 %word.1, metadata !1258, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.label(metadata !1260), !dbg !1283
  %mul2 = shl i32 %ix.08, 6, !dbg !1282
  %add = add i32 %mul, %mul2, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %add, metadata !1257, metadata !DIExpression()), !dbg !1261
  %and = and i64 %word.1, 4294967295, !dbg !1285
  %tobool3 = icmp ne i64 %and, 0, !dbg !1285
  %shr = lshr i64 %word.1, 32, !dbg !1287
  %add5 = or i32 %add, 32, !dbg !1287
  %bit_no.0 = select i1 %tobool3, i32 %add, i32 %add5, !dbg !1287
  %word.2 = select i1 %tobool3, i64 %word.1, i64 %shr, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %word.2, metadata !1258, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %bit_no.0, metadata !1257, metadata !DIExpression()), !dbg !1261
  %and7 = and i64 %word.2, 65535, !dbg !1288
  %tobool8 = icmp ne i64 %and7, 0, !dbg !1288
  %shr10 = lshr i64 %word.2, 16, !dbg !1290
  %add11 = or i32 %bit_no.0, 16, !dbg !1290
  %bit_no.1 = select i1 %tobool8, i32 %bit_no.0, i32 %add11, !dbg !1290
  %word.3 = select i1 %tobool8, i64 %word.2, i64 %shr10, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %word.3, metadata !1258, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %bit_no.1, metadata !1257, metadata !DIExpression()), !dbg !1261
  %and13 = and i64 %word.3, 255, !dbg !1291
  %tobool14 = icmp ne i64 %and13, 0, !dbg !1291
  %shr16 = lshr i64 %word.3, 8, !dbg !1293
  %add17 = or i32 %bit_no.1, 8, !dbg !1293
  %bit_no.2 = select i1 %tobool14, i32 %bit_no.1, i32 %add17, !dbg !1293
  %word.4 = select i1 %tobool14, i64 %word.3, i64 %shr16, !dbg !1293
  call void @llvm.dbg.value(metadata i64 %word.4, metadata !1258, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %bit_no.2, metadata !1257, metadata !DIExpression()), !dbg !1261
  %and19 = and i64 %word.4, 15, !dbg !1294
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1294
  %shr22 = lshr i64 %word.4, 4, !dbg !1296
  %add23 = add i32 %bit_no.2, 4, !dbg !1296
  %bit_no.3 = select i1 %tobool20, i32 %bit_no.2, i32 %add23, !dbg !1296
  %word.5 = select i1 %tobool20, i64 %word.4, i64 %shr22, !dbg !1296
  call void @llvm.dbg.value(metadata i64 %word.5, metadata !1258, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %bit_no.3, metadata !1257, metadata !DIExpression()), !dbg !1261
  %and25 = and i64 %word.5, 3, !dbg !1297
  %tobool26 = icmp ne i64 %and25, 0, !dbg !1297
  %shr28 = lshr i64 %word.5, 2, !dbg !1299
  %add29 = add i32 %bit_no.3, 2, !dbg !1299
  %bit_no.4 = select i1 %tobool26, i32 %bit_no.3, i32 %add29, !dbg !1299
  %word.6 = select i1 %tobool26, i64 %word.5, i64 %shr28, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %word.6, metadata !1258, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 %bit_no.4, metadata !1257, metadata !DIExpression()), !dbg !1261
  %and31 = and i64 %word.6, 1, !dbg !1300
  %5 = trunc i64 %and31 to i32, !dbg !1302
  %6 = xor i32 %5, 1, !dbg !1302
  %bit_no.5 = add i32 %bit_no.4, %6, !dbg !1302
  %7 = xor i64 %and31, 1, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %bit_no.5, metadata !1257, metadata !DIExpression()), !dbg !1261
  %8 = shl i64 1, %7, !dbg !1303
  %9 = and i64 %word.6, %8, !dbg !1303
  %tobool38 = icmp eq i64 %9, 0, !dbg !1303
  br i1 %tobool38, label %cond.true39, label %cond.end41, !dbg !1303

cond.true39:                                      ; preds = %found_bit
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 805, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1303
  br label %cond.end41, !dbg !1303

cond.end41:                                       ; preds = %found_bit, %cond.true39
  ret i32 %bit_no.5, !dbg !1304
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @bitmap_last_set_bit(%struct.bitmap_head_def* %a) local_unnamed_addr #4 !dbg !1305 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !1307, metadata !DIExpression()), !dbg !1313
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 1, !dbg !1314
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !1314
  %tobool = icmp eq %struct.bitmap_element_def* %0, null, !dbg !1315
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1315

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1315

cond.false:                                       ; preds = %entry
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !1316
  br label %cond.end, !dbg !1315

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.bitmap_element_def** [ %current, %cond.true ], [ %first, %cond.false ]
  %cond = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %cond.in, align 8, !dbg !1315
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %cond, metadata !1308, metadata !DIExpression()), !dbg !1313
  %tobool2 = icmp eq %struct.bitmap_element_def* %cond, null, !dbg !1317
  br i1 %tobool2, label %cond.true3, label %cond.end5, !dbg !1317

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 821, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1317
  br label %cond.end5, !dbg !1317

cond.end5:                                        ; preds = %cond.end, %cond.true3
  br label %while.cond, !dbg !1318

while.cond:                                       ; preds = %while.body, %cond.end5
  %elt.0 = phi %struct.bitmap_element_def* [ %cond, %cond.end5 ], [ %1, %while.body ], !dbg !1313
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.0, metadata !1308, metadata !DIExpression()), !dbg !1313
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.0, i64 0, i32 0, !dbg !1319
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !1319
  %tobool7 = icmp eq %struct.bitmap_element_def* %1, null, !dbg !1318
  br i1 %tobool7, label %while.end, label %while.body, !dbg !1318

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !1308, metadata !DIExpression()), !dbg !1313
  br label %while.cond, !dbg !1318, !llvm.loop !1320

while.end:                                        ; preds = %while.cond
  %elt.0.lcssa = phi %struct.bitmap_element_def* [ %elt.0, %while.cond ], !dbg !1313
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.0.lcssa, metadata !1308, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.0.lcssa, metadata !1308, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.0.lcssa, metadata !1308, metadata !DIExpression()), !dbg !1313
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.0.lcssa, i64 0, i32 2, !dbg !1322
  %2 = load i32, i32* %indx, align 8, !dbg !1322
  %mul = shl i32 %2, 7, !dbg !1323
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1309, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i32 1, metadata !1311, metadata !DIExpression()), !dbg !1313
  br label %for.cond, !dbg !1324

for.cond:                                         ; preds = %for.inc, %while.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %while.end ], !dbg !1326
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1311, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 0, metadata !1310, metadata !DIExpression()), !dbg !1313
  %cmp = icmp sgt i64 %indvars.iv, -1, !dbg !1327
  br i1 %cmp, label %for.body, label %for.end, !dbg !1329

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.0.lcssa, i64 0, i32 3, i64 %indvars.iv, !dbg !1330
  %3 = load i64, i64* %arrayidx, align 8, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %3, metadata !1310, metadata !DIExpression()), !dbg !1313
  %tobool9 = icmp eq i64 %3, 0, !dbg !1332
  br i1 %tobool9, label %for.inc, label %found_bit.loopexit, !dbg !1334

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1335
  call void @llvm.dbg.value(metadata i32 undef, metadata !1311, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1313
  br label %for.cond, !dbg !1336, !llvm.loop !1337

for.end:                                          ; preds = %for.cond
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond ], !dbg !1326
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !1311, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 0, metadata !1310, metadata !DIExpression()), !dbg !1313
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 831, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1339
  br label %found_bit, !dbg !1339

found_bit.loopexit:                               ; preds = %for.body
  %.lcssa = phi i64 [ %3, %for.body ], !dbg !1330
  %indvars.iv.lcssa8 = phi i64 [ %indvars.iv, %for.body ], !dbg !1326
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa8, metadata !1311, metadata !DIExpression()), !dbg !1313
  br label %found_bit, !dbg !1340

found_bit:                                        ; preds = %found_bit.loopexit, %for.end
  %indvars.iv9 = phi i64 [ %indvars.iv.lcssa, %for.end ], [ %indvars.iv.lcssa8, %found_bit.loopexit ]
  %word.1 = phi i64 [ 0, %for.end ], [ %.lcssa, %found_bit.loopexit ]
  %ix.06 = trunc i64 %indvars.iv9 to i32, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %word.1, metadata !1310, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.label(metadata !1312), !dbg !1341
  %mul10 = shl i32 %ix.06, 6, !dbg !1340
  %add = add i32 %mul, %mul10, !dbg !1342
  call void @llvm.dbg.value(metadata i32 %add, metadata !1309, metadata !DIExpression()), !dbg !1313
  %tobool11 = icmp ugt i64 %word.1, 4294967295, !dbg !1343
  %shr = lshr i64 %word.1, 32, !dbg !1345
  %add13 = or i32 %add, 32, !dbg !1345
  %word.2 = select i1 %tobool11, i64 %shr, i64 %word.1, !dbg !1345
  %bit_no.0 = select i1 %tobool11, i32 %add13, i32 %add, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %bit_no.0, metadata !1309, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %word.2, metadata !1310, metadata !DIExpression()), !dbg !1313
  %and15 = and i64 %word.2, 4294901760, !dbg !1346
  %tobool16 = icmp ne i64 %and15, 0, !dbg !1346
  %shr18 = lshr i64 %word.2, 16, !dbg !1348
  %add19 = or i32 %bit_no.0, 16, !dbg !1348
  %word.3 = select i1 %tobool16, i64 %shr18, i64 %word.2, !dbg !1348
  %bit_no.1 = select i1 %tobool16, i32 %add19, i32 %bit_no.0, !dbg !1348
  call void @llvm.dbg.value(metadata i32 %bit_no.1, metadata !1309, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %word.3, metadata !1310, metadata !DIExpression()), !dbg !1313
  %and21 = and i64 %word.3, 65280, !dbg !1349
  %tobool22 = icmp ne i64 %and21, 0, !dbg !1349
  %shr24 = lshr i64 %word.3, 8, !dbg !1351
  %add25 = or i32 %bit_no.1, 8, !dbg !1351
  %word.4 = select i1 %tobool22, i64 %word.3, i64 %shr24, !dbg !1351
  %bit_no.2 = select i1 %tobool22, i32 %bit_no.1, i32 %add25, !dbg !1351
  call void @llvm.dbg.value(metadata i32 %bit_no.2, metadata !1309, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %word.4, metadata !1310, metadata !DIExpression()), !dbg !1313
  %and27 = and i64 %word.4, 240, !dbg !1352
  %tobool28 = icmp ne i64 %and27, 0, !dbg !1352
  %shr30 = lshr i64 %word.4, 4, !dbg !1354
  %add31 = add i32 %bit_no.2, 4, !dbg !1354
  %word.5 = select i1 %tobool28, i64 %word.4, i64 %shr30, !dbg !1354
  %bit_no.3 = select i1 %tobool28, i32 %bit_no.2, i32 %add31, !dbg !1354
  call void @llvm.dbg.value(metadata i32 %bit_no.3, metadata !1309, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %word.5, metadata !1310, metadata !DIExpression()), !dbg !1313
  %and33 = and i64 %word.5, 12, !dbg !1355
  %tobool34 = icmp ne i64 %and33, 0, !dbg !1355
  %shr36 = lshr i64 %word.5, 2, !dbg !1357
  %add37 = add i32 %bit_no.3, 2, !dbg !1357
  %word.6 = select i1 %tobool34, i64 %word.5, i64 %shr36, !dbg !1357
  %bit_no.4 = select i1 %tobool34, i32 %bit_no.3, i32 %add37, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %bit_no.4, metadata !1309, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i64 %word.6, metadata !1310, metadata !DIExpression()), !dbg !1313
  %and39 = and i64 %word.6, 2, !dbg !1358
  %and39.lobit = lshr exact i64 %and39, 1, !dbg !1360
  %4 = xor i64 %and39.lobit, 1, !dbg !1360
  %and39.lobit7 = lshr exact i64 %and39, 1, !dbg !1360
  %5 = trunc i64 %and39.lobit7 to i32, !dbg !1360
  %6 = xor i32 %5, 1, !dbg !1360
  %bit_no.5 = add i32 %bit_no.4, %6, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %bit_no.5, metadata !1309, metadata !DIExpression()), !dbg !1313
  %7 = shl i64 1, %4, !dbg !1361
  %8 = and i64 %word.6, %7, !dbg !1361
  %tobool46 = icmp eq i64 %8, 0, !dbg !1361
  br i1 %tobool46, label %cond.true47, label %cond.end49, !dbg !1361

cond.true47:                                      ; preds = %found_bit
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 859, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1361
  br label %cond.end49, !dbg !1361

cond.end49:                                       ; preds = %found_bit, %cond.true47
  ret i32 %bit_no.5, !dbg !1362
}

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_and(%struct.bitmap_head_def* %dst, %struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) local_unnamed_addr #4 !dbg !1363 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %dst, metadata !1367, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !1368, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !1369, metadata !DIExpression()), !dbg !1384
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 0, !dbg !1385
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !1385
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !1370, metadata !DIExpression()), !dbg !1384
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !1386
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8, !dbg !1386
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !1371, metadata !DIExpression()), !dbg !1384
  %first2 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %b, i64 0, i32 0, !dbg !1387
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first2, align 8, !dbg !1387
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %2, metadata !1372, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* null, metadata !1373, metadata !DIExpression()), !dbg !1384
  %cmp = icmp ne %struct.bitmap_head_def* %dst, %a, !dbg !1388
  %cmp3 = icmp ne %struct.bitmap_head_def* %dst, %b, !dbg !1388
  %or.cond = and i1 %cmp, %cmp3, !dbg !1388
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !1388

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 874, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1388
  br label %cond.end, !dbg !1388

cond.end:                                         ; preds = %entry, %cond.true
  %cmp4 = icmp eq %struct.bitmap_head_def* %a, %b, !dbg !1389
  br i1 %cmp4, label %if.then, label %while.cond.preheader, !dbg !1391

while.cond.preheader:                             ; preds = %cond.end
  br label %while.cond, !dbg !1392

if.then:                                          ; preds = %cond.end
  tail call void @bitmap_copy(%struct.bitmap_head_def* %dst, %struct.bitmap_head_def* %a) #7, !dbg !1393
  br label %cleanup.cont, !dbg !1395

while.cond:                                       ; preds = %while.cond.preheader, %if.end36
  %dst_prev.0 = phi %struct.bitmap_element_def* [ %dst_prev.3, %if.end36 ], [ null, %while.cond.preheader ], !dbg !1396
  %b_elt.0 = phi %struct.bitmap_element_def* [ %b_elt.2, %if.end36 ], [ %2, %while.cond.preheader ], !dbg !1397
  %a_elt.0 = phi %struct.bitmap_element_def* [ %a_elt.2, %if.end36 ], [ %1, %while.cond.preheader ], !dbg !1384
  %dst_elt.0 = phi %struct.bitmap_element_def* [ %dst_elt.4, %if.end36 ], [ %0, %while.cond.preheader ], !dbg !1398
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0, metadata !1370, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !1371, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !1372, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_prev.0, metadata !1373, metadata !DIExpression()), !dbg !1384
  %tobool = icmp ne %struct.bitmap_element_def* %a_elt.0, null, !dbg !1399
  %tobool5 = icmp ne %struct.bitmap_element_def* %b_elt.0, null, !dbg !1400
  %spec.select = and i1 %tobool5, %tobool, !dbg !1400
  br i1 %spec.select, label %while.body, label %while.end, !dbg !1392

while.body:                                       ; preds = %while.cond
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !1401
  %3 = load i32, i32* %indx, align 8, !dbg !1401
  %indx6 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !1402
  %4 = load i32, i32* %indx6, align 8, !dbg !1402
  %cmp7 = icmp ult i32 %3, %4, !dbg !1403
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1404

if.then8:                                         ; preds = %while.body
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !1405
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !1405
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %5, metadata !1371, metadata !DIExpression()), !dbg !1384
  br label %if.end36, !dbg !1406

if.else:                                          ; preds = %while.body
  %cmp11 = icmp ult i32 %4, %3, !dbg !1407
  br i1 %cmp11, label %if.then12, label %if.else14, !dbg !1408

if.then12:                                        ; preds = %if.else
  %next13 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !1409
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next13, align 8, !dbg !1409
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %6, metadata !1372, metadata !DIExpression()), !dbg !1384
  br label %if.end36, !dbg !1410

if.else14:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i64 0, metadata !1379, metadata !DIExpression()), !dbg !1411
  %tobool15 = icmp eq %struct.bitmap_element_def* %dst_elt.0, null, !dbg !1412
  br i1 %tobool15, label %if.then16, label %if.else18, !dbg !1414

if.then16:                                        ; preds = %if.else14
  %call = tail call fastcc %struct.bitmap_element_def* @bitmap_elt_insert_after(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_prev.0, i32 %3) #7, !dbg !1415
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !1370, metadata !DIExpression()), !dbg !1384
  br label %if.end21, !dbg !1416

if.else18:                                        ; preds = %if.else14
  %indx20 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.0, i64 0, i32 2, !dbg !1417
  store i32 %3, i32* %indx20, align 8, !dbg !1418
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then16
  %dst_elt.1 = phi %struct.bitmap_element_def* [ %dst_elt.0, %if.else18 ], [ %call, %if.then16 ], !dbg !1384
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.1, metadata !1370, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i32 2, metadata !1374, metadata !DIExpression()), !dbg !1411
  br label %for.cond, !dbg !1419

for.cond:                                         ; preds = %for.body, %if.end21
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 2, %if.end21 ], !dbg !1420
  %ior.0 = phi i64 [ %or, %for.body ], [ 0, %if.end21 ], !dbg !1411
  call void @llvm.dbg.value(metadata i64 %ior.0, metadata !1379, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1374, metadata !DIExpression()), !dbg !1411
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1421
  call void @llvm.dbg.value(metadata i32 undef, metadata !1374, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1411
  %tobool22 = icmp eq i64 %indvars.iv, 0, !dbg !1422
  br i1 %tobool22, label %for.end, label %for.body, !dbg !1422

for.body:                                         ; preds = %for.cond
  %idxprom = and i64 %indvars.iv.next, 4294967295, !dbg !1423
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !1423
  %7 = load i64, i64* %arrayidx, align 8, !dbg !1423
  %arrayidx25 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !1424
  %8 = load i64, i64* %arrayidx25, align 8, !dbg !1424
  %and = and i64 %7, %8, !dbg !1425
  call void @llvm.dbg.value(metadata i64 %and, metadata !1380, metadata !DIExpression()), !dbg !1426
  %arrayidx28 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.1, i64 0, i32 3, i64 %idxprom, !dbg !1427
  store i64 %and, i64* %arrayidx28, align 8, !dbg !1428
  %or = or i64 %ior.0, %and, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %or, metadata !1379, metadata !DIExpression()), !dbg !1411
  br label %for.cond, !dbg !1430, !llvm.loop !1431

for.end:                                          ; preds = %for.cond
  %ior.0.lcssa = phi i64 [ %ior.0, %for.cond ], !dbg !1411
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !1379, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !1379, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !1379, metadata !DIExpression()), !dbg !1411
  %tobool29 = icmp eq i64 %ior.0.lcssa, 0, !dbg !1433
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !1435

if.then30:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.1, metadata !1373, metadata !DIExpression()), !dbg !1384
  %next31 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.1, i64 0, i32 0, !dbg !1436
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next31, align 8, !dbg !1436
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %9, metadata !1370, metadata !DIExpression()), !dbg !1384
  br label %if.end32, !dbg !1438

if.end32:                                         ; preds = %for.end, %if.then30
  %dst_prev.1 = phi %struct.bitmap_element_def* [ %dst_elt.1, %if.then30 ], [ %dst_prev.0, %for.end ], !dbg !1384
  %dst_elt.2 = phi %struct.bitmap_element_def* [ %9, %if.then30 ], [ %dst_elt.1, %for.end ], !dbg !1384
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.2, metadata !1370, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_prev.1, metadata !1373, metadata !DIExpression()), !dbg !1384
  %next33 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !1439
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next33, align 8, !dbg !1439
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %10, metadata !1371, metadata !DIExpression()), !dbg !1384
  %next34 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !1440
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next34, align 8, !dbg !1440
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %11, metadata !1372, metadata !DIExpression()), !dbg !1384
  br label %if.end36

if.end36:                                         ; preds = %if.then12, %if.end32, %if.then8
  %dst_prev.3 = phi %struct.bitmap_element_def* [ %dst_prev.0, %if.then8 ], [ %dst_prev.0, %if.then12 ], [ %dst_prev.1, %if.end32 ], !dbg !1396
  %b_elt.2 = phi %struct.bitmap_element_def* [ %b_elt.0, %if.then8 ], [ %6, %if.then12 ], [ %11, %if.end32 ], !dbg !1384
  %a_elt.2 = phi %struct.bitmap_element_def* [ %5, %if.then8 ], [ %a_elt.0, %if.then12 ], [ %10, %if.end32 ], !dbg !1384
  %dst_elt.4 = phi %struct.bitmap_element_def* [ %dst_elt.0, %if.then8 ], [ %dst_elt.0, %if.then12 ], [ %dst_elt.2, %if.end32 ], !dbg !1398
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.4, metadata !1370, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.2, metadata !1371, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.2, metadata !1372, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_prev.3, metadata !1373, metadata !DIExpression()), !dbg !1384
  br label %while.cond, !dbg !1392, !llvm.loop !1441

while.end:                                        ; preds = %while.cond
  %dst_elt.0.lcssa = phi %struct.bitmap_element_def* [ %dst_elt.0, %while.cond ], !dbg !1398
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !1370, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !1370, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !1370, metadata !DIExpression()), !dbg !1384
  %12 = bitcast %struct.bitmap_head_def* %dst to i64*, !dbg !1443
  %13 = load i64, i64* %12, align 8, !dbg !1443
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 1, !dbg !1444
  %14 = bitcast %struct.bitmap_element_def** %current to i64*, !dbg !1445
  store i64 %13, i64* %14, align 8, !dbg !1445
  tail call fastcc void @bitmap_elt_clear_from(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_elt.0.lcssa) #7, !dbg !1446
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !1447
  %tobool39 = icmp ne %struct.bitmap_element_def* %15, null, !dbg !1447
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !1447
  %tobool41 = icmp eq %struct.bitmap_element_def* %16, null, !dbg !1447
  %cmp44 = xor i1 %tobool41, %tobool39, !dbg !1447
  br i1 %cmp44, label %cond.end47, label %cond.true45, !dbg !1447

cond.true45:                                      ; preds = %while.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 917, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1447
  %.pre = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !1448
  br label %cond.end47, !dbg !1447

cond.end47:                                       ; preds = %while.end, %cond.true45
  %17 = phi %struct.bitmap_element_def* [ %15, %while.end ], [ %.pre, %cond.true45 ], !dbg !1448
  %tobool50 = icmp eq %struct.bitmap_element_def* %17, null, !dbg !1450
  br i1 %tobool50, label %cleanup.cont, label %if.then51, !dbg !1451

if.then51:                                        ; preds = %cond.end47
  %indx53 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %17, i64 0, i32 2, !dbg !1452
  %18 = load i32, i32* %indx53, align 8, !dbg !1452
  %indx54 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 2, !dbg !1453
  store i32 %18, i32* %indx54, align 8, !dbg !1454
  br label %cleanup.cont, !dbg !1455

cleanup.cont:                                     ; preds = %cond.end47, %if.then, %if.then51
  ret void, !dbg !1456
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.bitmap_element_def* @bitmap_elt_insert_after(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* %elt, i32 %indx) unnamed_addr #4 !dbg !1457 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !1461, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt, metadata !1462, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i32 %indx, metadata !1463, metadata !DIExpression()), !dbg !1465
  %call = tail call fastcc %struct.bitmap_element_def* @bitmap_element_allocate(%struct.bitmap_head_def* %head) #7, !dbg !1466
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !1464, metadata !DIExpression()), !dbg !1465
  %indx1 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call, i64 0, i32 2, !dbg !1467
  store i32 %indx, i32* %indx1, align 8, !dbg !1468
  %tobool = icmp eq %struct.bitmap_element_def* %elt, null, !dbg !1469
  %current13 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 1, !dbg !1471
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current13, align 8, !dbg !1471
  %tobool14 = icmp ne %struct.bitmap_element_def* %0, null, !dbg !1471
  br i1 %tobool, label %if.then, label %if.else, !dbg !1472

if.then:                                          ; preds = %entry
  br i1 %tobool14, label %if.end, label %if.then3, !dbg !1473

if.then3:                                         ; preds = %if.then
  store %struct.bitmap_element_def* %call, %struct.bitmap_element_def** %current13, align 8, !dbg !1475
  %indx5 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 2, !dbg !1478
  store i32 %indx, i32* %indx5, align 8, !dbg !1479
  br label %if.end, !dbg !1480

if.end:                                           ; preds = %if.then3, %if.then
  %1 = bitcast %struct.bitmap_head_def* %head to i64*, !dbg !1481
  %2 = load i64, i64* %1, align 8, !dbg !1481
  %3 = bitcast %struct.bitmap_element_def* %call to i64*, !dbg !1482
  store i64 %2, i64* %3, align 8, !dbg !1482
  %tobool7 = icmp eq i64 %2, 0, !dbg !1483
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !1485

if.then8:                                         ; preds = %if.end
  %4 = inttoptr i64 %2 to %struct.bitmap_element_def*, !dbg !1485
  %prev = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 1, !dbg !1486
  store %struct.bitmap_element_def* %call, %struct.bitmap_element_def** %prev, align 8, !dbg !1487
  br label %if.end10, !dbg !1488

if.end10:                                         ; preds = %if.end, %if.then8
  %first11 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 0, !dbg !1489
  store %struct.bitmap_element_def* %call, %struct.bitmap_element_def** %first11, align 8, !dbg !1490
  %prev12 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call, i64 0, i32 1, !dbg !1491
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %prev12, align 8, !dbg !1492
  br label %if.end25, !dbg !1493

if.else:                                          ; preds = %entry
  br i1 %tobool14, label %cond.end, label %cond.true, !dbg !1494

cond.true:                                        ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 501, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1494
  br label %cond.end, !dbg !1494

cond.end:                                         ; preds = %if.else, %cond.true
  %5 = bitcast %struct.bitmap_element_def* %elt to i64*, !dbg !1496
  %6 = load i64, i64* %5, align 8, !dbg !1496
  %7 = bitcast %struct.bitmap_element_def* %call to i64*, !dbg !1497
  store i64 %6, i64* %7, align 8, !dbg !1497
  %tobool18 = icmp eq i64 %6, 0, !dbg !1498
  br i1 %tobool18, label %if.end22, label %if.then19, !dbg !1500

if.then19:                                        ; preds = %cond.end
  %8 = inttoptr i64 %6 to %struct.bitmap_element_def*, !dbg !1500
  %prev21 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %8, i64 0, i32 1, !dbg !1501
  store %struct.bitmap_element_def* %call, %struct.bitmap_element_def** %prev21, align 8, !dbg !1502
  br label %if.end22, !dbg !1503

if.end22:                                         ; preds = %cond.end, %if.then19
  %next23 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt, i64 0, i32 0, !dbg !1504
  store %struct.bitmap_element_def* %call, %struct.bitmap_element_def** %next23, align 8, !dbg !1505
  %prev24 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call, i64 0, i32 1, !dbg !1506
  store %struct.bitmap_element_def* %elt, %struct.bitmap_element_def** %prev24, align 8, !dbg !1507
  br label %if.end25

if.end25:                                         ; preds = %if.end22, %if.end10
  ret %struct.bitmap_element_def* %call, !dbg !1508
}

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_and_into(%struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) local_unnamed_addr #4 !dbg !1509 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !1511, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !1512, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* undef, metadata !1513, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* undef, metadata !1514, metadata !DIExpression()), !dbg !1526
  %cmp = icmp eq %struct.bitmap_head_def* %a, %b, !dbg !1527
  br i1 %cmp, label %cleanup.cont, label %while.cond.preheader, !dbg !1529

while.cond.preheader:                             ; preds = %entry
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %b, i64 0, i32 0, !dbg !1530
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8, !dbg !1530
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !1514, metadata !DIExpression()), !dbg !1526
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !1531
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !1531
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !1513, metadata !DIExpression()), !dbg !1526
  br label %while.cond, !dbg !1532

while.cond:                                       ; preds = %while.cond.preheader, %if.end26
  %b_elt.0 = phi %struct.bitmap_element_def* [ %b_elt.2, %if.end26 ], [ %0, %while.cond.preheader ], !dbg !1533
  %a_elt.0 = phi %struct.bitmap_element_def* [ %a_elt.2, %if.end26 ], [ %1, %while.cond.preheader ], !dbg !1526
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !1513, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !1514, metadata !DIExpression()), !dbg !1526
  %tobool = icmp ne %struct.bitmap_element_def* %a_elt.0, null, !dbg !1534
  %tobool2 = icmp ne %struct.bitmap_element_def* %b_elt.0, null, !dbg !1535
  %spec.select = and i1 %tobool2, %tobool, !dbg !1535
  br i1 %spec.select, label %while.body, label %while.end, !dbg !1532

while.body:                                       ; preds = %while.cond
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !1536
  %2 = load i32, i32* %indx, align 8, !dbg !1536
  %indx3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !1537
  %3 = load i32, i32* %indx3, align 8, !dbg !1537
  %cmp4 = icmp ult i32 %2, %3, !dbg !1538
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !1539

if.then5:                                         ; preds = %while.body
  %next6 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !1540
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next6, align 8, !dbg !1540
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %4, metadata !1515, metadata !DIExpression()), !dbg !1526
  tail call fastcc void @bitmap_element_free(%struct.bitmap_head_def* %a, %struct.bitmap_element_def* nonnull %a_elt.0) #7, !dbg !1542
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %4, metadata !1513, metadata !DIExpression()), !dbg !1526
  br label %if.end26, !dbg !1543

if.else:                                          ; preds = %while.body
  %cmp9 = icmp ult i32 %3, %2, !dbg !1544
  br i1 %cmp9, label %if.then10, label %for.cond.preheader, !dbg !1545

for.cond.preheader:                               ; preds = %if.else
  br label %for.cond, !dbg !1546

if.then10:                                        ; preds = %if.else
  %next11 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !1547
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next11, align 8, !dbg !1547
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %5, metadata !1514, metadata !DIExpression()), !dbg !1526
  br label %if.end26, !dbg !1548

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 2, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !1549
  %ior.0 = phi i64 [ 0, %for.cond.preheader ], [ %or, %for.body ], !dbg !1550
  call void @llvm.dbg.value(metadata i64 %ior.0, metadata !1521, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1516, metadata !DIExpression()), !dbg !1550
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1551
  call void @llvm.dbg.value(metadata i32 undef, metadata !1516, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1550
  %tobool13 = icmp eq i64 %indvars.iv, 0, !dbg !1546
  br i1 %tobool13, label %for.end, label %for.body, !dbg !1546

for.body:                                         ; preds = %for.cond
  %idxprom = and i64 %indvars.iv.next, 4294967295, !dbg !1552
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !1552
  %6 = load i64, i64* %arrayidx, align 8, !dbg !1552
  %arrayidx16 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !1553
  %7 = load i64, i64* %arrayidx16, align 8, !dbg !1553
  %and = and i64 %6, %7, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %and, metadata !1522, metadata !DIExpression()), !dbg !1555
  store i64 %and, i64* %arrayidx, align 8, !dbg !1556
  %or = or i64 %ior.0, %and, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %or, metadata !1521, metadata !DIExpression()), !dbg !1550
  br label %for.cond, !dbg !1558, !llvm.loop !1559

for.end:                                          ; preds = %for.cond
  %ior.0.lcssa = phi i64 [ %ior.0, %for.cond ], !dbg !1550
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !1521, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !1521, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !1521, metadata !DIExpression()), !dbg !1550
  %next20 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !1561
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next20, align 8, !dbg !1561
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %8, metadata !1515, metadata !DIExpression()), !dbg !1526
  %tobool21 = icmp eq i64 %ior.0.lcssa, 0, !dbg !1562
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1564

if.then22:                                        ; preds = %for.end
  tail call fastcc void @bitmap_element_free(%struct.bitmap_head_def* %a, %struct.bitmap_element_def* nonnull %a_elt.0) #7, !dbg !1565
  br label %if.end23, !dbg !1565

if.end23:                                         ; preds = %for.end, %if.then22
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %8, metadata !1513, metadata !DIExpression()), !dbg !1526
  %next24 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !1566
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next24, align 8, !dbg !1566
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %9, metadata !1514, metadata !DIExpression()), !dbg !1526
  br label %if.end26

if.end26:                                         ; preds = %if.then10, %if.end23, %if.then5
  %b_elt.2 = phi %struct.bitmap_element_def* [ %b_elt.0, %if.then5 ], [ %5, %if.then10 ], [ %9, %if.end23 ], !dbg !1526
  %a_elt.2 = phi %struct.bitmap_element_def* [ %4, %if.then5 ], [ %a_elt.0, %if.then10 ], [ %8, %if.end23 ], !dbg !1526
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.2, metadata !1513, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.2, metadata !1514, metadata !DIExpression()), !dbg !1526
  br label %while.cond, !dbg !1532, !llvm.loop !1567

while.end:                                        ; preds = %while.cond
  %a_elt.0.lcssa = phi %struct.bitmap_element_def* [ %a_elt.0, %while.cond ], !dbg !1526
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0.lcssa, metadata !1513, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0.lcssa, metadata !1513, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0.lcssa, metadata !1513, metadata !DIExpression()), !dbg !1526
  tail call fastcc void @bitmap_elt_clear_from(%struct.bitmap_head_def* %a, %struct.bitmap_element_def* %a_elt.0.lcssa) #7, !dbg !1569
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 1, !dbg !1570
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !1570
  %tobool27 = icmp ne %struct.bitmap_element_def* %10, null, !dbg !1570
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !1570
  %tobool29 = icmp eq %struct.bitmap_element_def* %11, null, !dbg !1570
  %cmp32 = xor i1 %tobool29, %tobool27, !dbg !1570
  br i1 %cmp32, label %cond.end, label %cond.true, !dbg !1570

cond.true:                                        ; preds = %while.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 965, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1570
  %.pre = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !1571
  br label %cond.end, !dbg !1570

cond.end:                                         ; preds = %while.end, %cond.true
  %12 = phi %struct.bitmap_element_def* [ %10, %while.end ], [ %.pre, %cond.true ], !dbg !1571
  %tobool34 = icmp eq %struct.bitmap_element_def* %12, null, !dbg !1571
  br i1 %tobool34, label %cleanup.cont, label %lor.lhs.false, !dbg !1571

lor.lhs.false:                                    ; preds = %cond.end
  %indx35 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 2, !dbg !1571
  %13 = load i32, i32* %indx35, align 8, !dbg !1571
  %indx37 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %12, i64 0, i32 2, !dbg !1571
  %14 = load i32, i32* %indx37, align 8, !dbg !1571
  %cmp38 = icmp eq i32 %13, %14, !dbg !1571
  br i1 %cmp38, label %cleanup.cont, label %cond.true39, !dbg !1571

cond.true39:                                      ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 966, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1571
  br label %cleanup.cont, !dbg !1571

cleanup.cont:                                     ; preds = %cond.end, %entry, %lor.lhs.false, %cond.true39
  ret void, !dbg !1572
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def* %dst, %struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) local_unnamed_addr #4 !dbg !1573 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %dst, metadata !1577, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !1578, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !1579, metadata !DIExpression()), !dbg !1604
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 0, !dbg !1605
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !1605
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !1580, metadata !DIExpression()), !dbg !1604
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !1606
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8, !dbg !1606
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !1581, metadata !DIExpression()), !dbg !1604
  %first2 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %b, i64 0, i32 0, !dbg !1607
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first2, align 8, !dbg !1607
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %2, metadata !1582, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* null, metadata !1583, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %first, metadata !1584, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 0, metadata !1586, metadata !DIExpression()), !dbg !1604
  %cmp = icmp ne %struct.bitmap_head_def* %dst, %a, !dbg !1608
  %cmp4 = icmp ne %struct.bitmap_head_def* %dst, %b, !dbg !1608
  %or.cond = and i1 %cmp, %cmp4, !dbg !1608
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !1608

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1015, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1608
  br label %cond.end, !dbg !1608

cond.end:                                         ; preds = %entry, %cond.true
  %cmp5 = icmp eq %struct.bitmap_head_def* %a, %b, !dbg !1609
  br i1 %cmp5, label %if.then, label %while.cond.preheader, !dbg !1611

while.cond.preheader:                             ; preds = %cond.end
  br label %while.cond, !dbg !1612

if.then:                                          ; preds = %cond.end
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !1613
  %tobool = icmp ne %struct.bitmap_element_def* %3, null, !dbg !1613
  %conv = zext i1 %tobool to i8, !dbg !1615
  call void @llvm.dbg.value(metadata i8 %conv, metadata !1586, metadata !DIExpression()), !dbg !1604
  tail call void @bitmap_clear(%struct.bitmap_head_def* %dst) #7, !dbg !1616
  br label %cleanup, !dbg !1617

while.cond:                                       ; preds = %while.cond.preheader, %if.end95
  %changed.0 = phi i8 [ %changed.5, %if.end95 ], [ 0, %while.cond.preheader ], !dbg !1604
  %dst_prev_pnext.0 = phi %struct.bitmap_element_def** [ %dst_prev_pnext.2, %if.end95 ], [ %first, %while.cond.preheader ], !dbg !1604
  %dst_prev.0 = phi %struct.bitmap_element_def* [ %dst_prev.2, %if.end95 ], [ null, %while.cond.preheader ], !dbg !1604
  %b_elt.0 = phi %struct.bitmap_element_def* [ %b_elt.2, %if.end95 ], [ %2, %while.cond.preheader ], !dbg !1618
  %a_elt.0 = phi %struct.bitmap_element_def* [ %a_elt.1, %if.end95 ], [ %1, %while.cond.preheader ], !dbg !1604
  %dst_elt.0 = phi %struct.bitmap_element_def* [ %dst_elt.5, %if.end95 ], [ %0, %while.cond.preheader ], !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0, metadata !1580, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !1581, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !1582, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_prev.0, metadata !1583, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %dst_prev_pnext.0, metadata !1584, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !1586, metadata !DIExpression()), !dbg !1604
  %tobool8 = icmp eq %struct.bitmap_element_def* %a_elt.0, null, !dbg !1612
  br i1 %tobool8, label %while.end96, label %while.cond9.preheader, !dbg !1612

while.cond9.preheader:                            ; preds = %while.cond
  %indx11 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !1619
  br label %while.cond9, !dbg !1620

while.cond9:                                      ; preds = %while.cond9.preheader, %while.body14
  %b_elt.1 = phi %struct.bitmap_element_def* [ %6, %while.body14 ], [ %b_elt.0, %while.cond9.preheader ], !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.1, metadata !1582, metadata !DIExpression()), !dbg !1604
  %cond = icmp eq %struct.bitmap_element_def* %b_elt.1, null, !dbg !1621
  br i1 %cond, label %if.then20.loopexit, label %land.rhs, !dbg !1621

land.rhs:                                         ; preds = %while.cond9
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.1, i64 0, i32 2, !dbg !1622
  %4 = load i32, i32* %indx, align 8, !dbg !1622
  %5 = load i32, i32* %indx11, align 8, !dbg !1623
  %cmp12 = icmp ult i32 %4, %5, !dbg !1624
  br i1 %cmp12, label %while.body14, label %while.end, !dbg !1620

while.body14:                                     ; preds = %land.rhs
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.1, i64 0, i32 0, !dbg !1625
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !1625
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %6, metadata !1582, metadata !DIExpression()), !dbg !1604
  br label %while.cond9, !dbg !1620, !llvm.loop !1626

while.end:                                        ; preds = %land.rhs
  %.lcssa17 = phi i32 [ %4, %land.rhs ], !dbg !1622
  %.lcssa = phi i32 [ %5, %land.rhs ], !dbg !1623
  %b_elt.1.lcssa15 = phi %struct.bitmap_element_def* [ %b_elt.1, %land.rhs ], !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.1.lcssa15, metadata !1582, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.1.lcssa15, metadata !1582, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.1.lcssa15, metadata !1582, metadata !DIExpression()), !dbg !1604
  %cmp18 = icmp ugt i32 %.lcssa17, %.lcssa, !dbg !1627
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !1628

if.then20.loopexit:                               ; preds = %while.cond9
  %b_elt.1.lcssa = phi %struct.bitmap_element_def* [ %b_elt.1, %while.cond9 ], !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.1.lcssa, metadata !1582, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.1.lcssa, metadata !1582, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.1.lcssa, metadata !1582, metadata !DIExpression()), !dbg !1604
  br label %if.then20, !dbg !1629

if.then20:                                        ; preds = %if.then20.loopexit, %while.end
  %b_elt.116 = phi %struct.bitmap_element_def* [ %b_elt.1.lcssa, %if.then20.loopexit ], [ %b_elt.1.lcssa15, %while.end ]
  %call = tail call fastcc zeroext i8 @bitmap_elt_copy(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_elt.0, %struct.bitmap_element_def* %dst_prev.0, %struct.bitmap_element_def* nonnull %a_elt.0, i8 zeroext %changed.0) #7, !dbg !1629
  call void @llvm.dbg.value(metadata i8 %call, metadata !1586, metadata !DIExpression()), !dbg !1604
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %dst_prev_pnext.0, align 8, !dbg !1631
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %7, metadata !1583, metadata !DIExpression()), !dbg !1604
  %next21 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %7, i64 0, i32 0, !dbg !1632
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %next21, metadata !1584, metadata !DIExpression()), !dbg !1604
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next21, align 8, !dbg !1633
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %8, metadata !1580, metadata !DIExpression()), !dbg !1604
  br label %if.end95, !dbg !1634

if.else:                                          ; preds = %while.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1591, metadata !DIExpression()), !dbg !1635
  %tobool23 = icmp eq i8 %changed.0, 0, !dbg !1636
  %tobool25 = icmp ne %struct.bitmap_element_def* %dst_elt.0, null, !dbg !1637
  %or.cond1 = and i1 %tobool23, %tobool25, !dbg !1638
  br i1 %or.cond1, label %land.lhs.true26, label %if.else46, !dbg !1638

land.lhs.true26:                                  ; preds = %if.else
  %indx27 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.0, i64 0, i32 2, !dbg !1639
  %9 = load i32, i32* %indx27, align 8, !dbg !1639
  %cmp29 = icmp eq i32 %9, %.lcssa, !dbg !1640
  br i1 %cmp29, label %for.cond.preheader, label %if.else46, !dbg !1641

for.cond.preheader:                               ; preds = %land.lhs.true26
  br label %for.cond, !dbg !1642

for.cond:                                         ; preds = %for.cond.preheader, %if.end45
  %indvars.iv13 = phi i64 [ 2, %for.cond.preheader ], [ %indvars.iv.next14, %if.end45 ], !dbg !1604
  %changed.1 = phi i8 [ 0, %for.cond.preheader ], [ %changed.2, %if.end45 ], !dbg !1604
  %ior.0 = phi i64 [ 0, %for.cond.preheader ], [ %or, %if.end45 ], !dbg !1635
  call void @llvm.dbg.value(metadata i64 %ior.0, metadata !1591, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !1587, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8 %changed.1, metadata !1586, metadata !DIExpression()), !dbg !1604
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, -1, !dbg !1643
  call void @llvm.dbg.value(metadata i32 undef, metadata !1587, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1635
  %tobool32 = icmp eq i64 %indvars.iv13, 0, !dbg !1642
  br i1 %tobool32, label %if.end88.loopexit, label %for.body, !dbg !1642

for.body:                                         ; preds = %for.cond
  %idxprom = and i64 %indvars.iv.next14, 4294967295, !dbg !1644
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !1644
  %10 = load i64, i64* %arrayidx, align 8, !dbg !1644
  %arrayidx35 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.1.lcssa15, i64 0, i32 3, i64 %idxprom, !dbg !1645
  %11 = load i64, i64* %arrayidx35, align 8, !dbg !1645
  %neg = xor i64 %11, -1, !dbg !1646
  %and = and i64 %10, %neg, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %and, metadata !1592, metadata !DIExpression()), !dbg !1648
  %arrayidx38 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !1649
  %12 = load i64, i64* %arrayidx38, align 8, !dbg !1649
  %cmp39 = icmp eq i64 %12, %and, !dbg !1651
  br i1 %cmp39, label %if.end45, label %if.then41, !dbg !1652

if.then41:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata i8 1, metadata !1586, metadata !DIExpression()), !dbg !1604
  store i64 %and, i64* %arrayidx38, align 8, !dbg !1653
  br label %if.end45, !dbg !1655

if.end45:                                         ; preds = %for.body, %if.then41
  %changed.2 = phi i8 [ 1, %if.then41 ], [ %changed.1, %for.body ], !dbg !1604
  call void @llvm.dbg.value(metadata i8 %changed.2, metadata !1586, metadata !DIExpression()), !dbg !1604
  %or = or i64 %ior.0, %and, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %or, metadata !1591, metadata !DIExpression()), !dbg !1635
  br label %for.cond, !dbg !1657, !llvm.loop !1658

if.else46:                                        ; preds = %if.else, %land.lhs.true26
  %tobool47 = icmp eq %struct.bitmap_element_def* %dst_elt.0, null, !dbg !1660
  br i1 %tobool47, label %if.then53, label %lor.lhs.false48, !dbg !1662

lor.lhs.false48:                                  ; preds = %if.else46
  %indx49 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.0, i64 0, i32 2, !dbg !1663
  %13 = load i32, i32* %indx49, align 8, !dbg !1663
  %cmp51 = icmp ugt i32 %13, %.lcssa, !dbg !1664
  br i1 %cmp51, label %if.then53, label %if.else56, !dbg !1665

if.then53:                                        ; preds = %if.else46, %lor.lhs.false48
  %call55 = tail call fastcc %struct.bitmap_element_def* @bitmap_elt_insert_after(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_prev.0, i32 %.lcssa) #7, !dbg !1666
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call55, metadata !1580, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1668
  br label %if.end59, !dbg !1669

if.else56:                                        ; preds = %lor.lhs.false48
  store i32 %.lcssa, i32* %indx49, align 8, !dbg !1670
  call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1668
  br label %if.end59

if.end59:                                         ; preds = %if.else56, %if.then53
  %dst_elt.1 = phi %struct.bitmap_element_def* [ %call55, %if.then53 ], [ %dst_elt.0, %if.else56 ], !dbg !1604
  %new_element.0 = phi i8 [ 0, %if.then53 ], [ 1, %if.else56 ]
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.1, metadata !1580, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i32 2, metadata !1587, metadata !DIExpression()), !dbg !1635
  br label %for.cond60, !dbg !1672

for.cond60:                                       ; preds = %for.body63, %if.end59
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body63 ], [ 2, %if.end59 ], !dbg !1673
  %ior.1 = phi i64 [ %or76, %for.body63 ], [ 0, %if.end59 ], !dbg !1635
  call void @llvm.dbg.value(metadata i64 %ior.1, metadata !1591, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1587, metadata !DIExpression()), !dbg !1635
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1674
  call void @llvm.dbg.value(metadata i32 undef, metadata !1587, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1635
  %tobool62 = icmp eq i64 %indvars.iv, 0, !dbg !1675
  br i1 %tobool62, label %for.end77, label %for.body63, !dbg !1675

for.body63:                                       ; preds = %for.cond60
  %idxprom66 = and i64 %indvars.iv.next, 4294967295, !dbg !1676
  %arrayidx67 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 3, i64 %idxprom66, !dbg !1676
  %14 = load i64, i64* %arrayidx67, align 8, !dbg !1676
  %arrayidx70 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.1.lcssa15, i64 0, i32 3, i64 %idxprom66, !dbg !1677
  %15 = load i64, i64* %arrayidx70, align 8, !dbg !1677
  %neg71 = xor i64 %15, -1, !dbg !1678
  %and72 = and i64 %14, %neg71, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %and72, metadata !1600, metadata !DIExpression()), !dbg !1680
  %arrayidx75 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.1, i64 0, i32 3, i64 %idxprom66, !dbg !1681
  store i64 %and72, i64* %arrayidx75, align 8, !dbg !1682
  %or76 = or i64 %ior.1, %and72, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %or76, metadata !1591, metadata !DIExpression()), !dbg !1635
  br label %for.cond60, !dbg !1684, !llvm.loop !1685

for.end77:                                        ; preds = %for.cond60
  %ior.1.lcssa = phi i64 [ %ior.1, %for.cond60 ], !dbg !1635
  call void @llvm.dbg.value(metadata i64 %ior.1.lcssa, metadata !1591, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %ior.1.lcssa, metadata !1591, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i64 %ior.1.lcssa, metadata !1591, metadata !DIExpression()), !dbg !1635
  %tobool78 = icmp eq i64 %ior.1.lcssa, 0, !dbg !1687
  br i1 %tobool78, label %if.else80, label %if.end88, !dbg !1689

if.else80:                                        ; preds = %for.end77
  %or85 = or i8 %new_element.0, %changed.0, !dbg !1690
  call void @llvm.dbg.value(metadata i8 %or85, metadata !1586, metadata !DIExpression()), !dbg !1604
  tail call fastcc void @bitmap_element_free(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_elt.1) #7, !dbg !1692
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %dst_prev_pnext.0, align 8, !dbg !1693
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %16, metadata !1580, metadata !DIExpression()), !dbg !1604
  br label %if.end88

if.end88.loopexit:                                ; preds = %for.cond
  %changed.1.lcssa = phi i8 [ %changed.1, %for.cond ], !dbg !1604
  %ior.0.lcssa = phi i64 [ %ior.0, %for.cond ], !dbg !1635
  call void @llvm.dbg.value(metadata i8 %changed.1.lcssa, metadata !1586, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !1591, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8 %changed.1.lcssa, metadata !1586, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !1591, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8 %changed.1.lcssa, metadata !1586, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !1591, metadata !DIExpression()), !dbg !1635
  br label %if.end88, !dbg !1694

if.end88:                                         ; preds = %if.end88.loopexit, %for.end77, %if.else80
  %changed.4 = phi i8 [ %or85, %if.else80 ], [ 1, %for.end77 ], [ %changed.1.lcssa, %if.end88.loopexit ], !dbg !1604
  %dst_elt.3 = phi %struct.bitmap_element_def* [ %16, %if.else80 ], [ %dst_elt.1, %for.end77 ], [ %dst_elt.0, %if.end88.loopexit ], !dbg !1604
  %ior.2 = phi i64 [ 0, %if.else80 ], [ %ior.1.lcssa, %for.end77 ], [ %ior.0.lcssa, %if.end88.loopexit ], !dbg !1696
  call void @llvm.dbg.value(metadata i64 %ior.2, metadata !1591, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.3, metadata !1580, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 %changed.4, metadata !1586, metadata !DIExpression()), !dbg !1604
  %tobool89 = icmp eq i64 %ior.2, 0, !dbg !1694
  br i1 %tobool89, label %if.end92, label %if.then90, !dbg !1697

if.then90:                                        ; preds = %if.end88
  %17 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %dst_prev_pnext.0, align 8, !dbg !1698
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %17, metadata !1583, metadata !DIExpression()), !dbg !1604
  %next91 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %17, i64 0, i32 0, !dbg !1700
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %next91, metadata !1584, metadata !DIExpression()), !dbg !1604
  %18 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next91, align 8, !dbg !1701
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %18, metadata !1580, metadata !DIExpression()), !dbg !1604
  br label %if.end92, !dbg !1702

if.end92:                                         ; preds = %if.end88, %if.then90
  %dst_prev_pnext.1 = phi %struct.bitmap_element_def** [ %next91, %if.then90 ], [ %dst_prev_pnext.0, %if.end88 ], !dbg !1604
  %dst_prev.1 = phi %struct.bitmap_element_def* [ %17, %if.then90 ], [ %dst_prev.0, %if.end88 ], !dbg !1604
  %dst_elt.4 = phi %struct.bitmap_element_def* [ %18, %if.then90 ], [ %dst_elt.3, %if.end88 ], !dbg !1635
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.4, metadata !1580, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_prev.1, metadata !1583, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %dst_prev_pnext.1, metadata !1584, metadata !DIExpression()), !dbg !1604
  %next94 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.1.lcssa15, i64 0, i32 0, !dbg !1703
  %19 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next94, align 8, !dbg !1703
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %19, metadata !1582, metadata !DIExpression()), !dbg !1604
  br label %if.end95

if.end95:                                         ; preds = %if.end92, %if.then20
  %changed.5 = phi i8 [ %call, %if.then20 ], [ %changed.4, %if.end92 ], !dbg !1704
  %dst_prev_pnext.2 = phi %struct.bitmap_element_def** [ %next21, %if.then20 ], [ %dst_prev_pnext.1, %if.end92 ], !dbg !1704
  %dst_prev.2 = phi %struct.bitmap_element_def* [ %7, %if.then20 ], [ %dst_prev.1, %if.end92 ], !dbg !1704
  %b_elt.2 = phi %struct.bitmap_element_def* [ %b_elt.116, %if.then20 ], [ %19, %if.end92 ], !dbg !1604
  %dst_elt.5 = phi %struct.bitmap_element_def* [ %8, %if.then20 ], [ %dst_elt.4, %if.end92 ], !dbg !1704
  %a_elt.1.in = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !1704
  %a_elt.1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %a_elt.1.in, align 8, !dbg !1704
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.5, metadata !1580, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.1, metadata !1581, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.2, metadata !1582, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_prev.2, metadata !1583, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %dst_prev_pnext.2, metadata !1584, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 %changed.5, metadata !1586, metadata !DIExpression()), !dbg !1604
  br label %while.cond, !dbg !1612, !llvm.loop !1705

while.end96:                                      ; preds = %while.cond
  %changed.0.lcssa = phi i8 [ %changed.0, %while.cond ], !dbg !1604
  %dst_elt.0.lcssa = phi %struct.bitmap_element_def* [ %dst_elt.0, %while.cond ], !dbg !1604
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1586, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !1580, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1586, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !1580, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !1586, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !1580, metadata !DIExpression()), !dbg !1604
  %20 = bitcast %struct.bitmap_head_def* %dst to i64*, !dbg !1707
  %21 = load i64, i64* %20, align 8, !dbg !1707
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 1, !dbg !1708
  %22 = bitcast %struct.bitmap_element_def** %current to i64*, !dbg !1709
  store i64 %21, i64* %22, align 8, !dbg !1709
  %tobool98 = icmp eq %struct.bitmap_element_def* %dst_elt.0.lcssa, null, !dbg !1710
  %23 = inttoptr i64 %21 to %struct.bitmap_element_def*, !dbg !1712
  br i1 %tobool98, label %if.end100, label %if.then99, !dbg !1712

if.then99:                                        ; preds = %while.end96
  call void @llvm.dbg.value(metadata i8 1, metadata !1586, metadata !DIExpression()), !dbg !1604
  tail call fastcc void @bitmap_elt_clear_from(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* nonnull %dst_elt.0.lcssa) #7, !dbg !1713
  %.pre = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !1715
  %.pre6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !1715
  br label %if.end100, !dbg !1716

if.end100:                                        ; preds = %while.end96, %if.then99
  %24 = phi %struct.bitmap_element_def* [ %.pre, %if.then99 ], [ %23, %while.end96 ]
  %25 = phi %struct.bitmap_element_def* [ %.pre, %if.then99 ], [ %23, %while.end96 ]
  %26 = phi %struct.bitmap_element_def* [ %.pre6, %if.then99 ], [ %23, %while.end96 ], !dbg !1715
  %27 = phi %struct.bitmap_element_def* [ %.pre, %if.then99 ], [ %23, %while.end96 ], !dbg !1715
  %changed.6 = phi i8 [ 1, %if.then99 ], [ %changed.0.lcssa, %while.end96 ], !dbg !1604
  call void @llvm.dbg.value(metadata i8 %changed.6, metadata !1586, metadata !DIExpression()), !dbg !1604
  %tobool102 = icmp ne %struct.bitmap_element_def* %27, null, !dbg !1715
  %tobool106 = icmp eq %struct.bitmap_element_def* %26, null, !dbg !1715
  %cmp109 = xor i1 %tobool106, %tobool102, !dbg !1715
  br i1 %cmp109, label %cond.end113, label %cond.true111, !dbg !1715

cond.true111:                                     ; preds = %if.end100
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1715
  %.pre7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !1717
  br label %cond.end113, !dbg !1715

cond.end113:                                      ; preds = %if.end100, %cond.true111
  %28 = phi %struct.bitmap_element_def* [ %24, %if.end100 ], [ %.pre7, %cond.true111 ]
  %29 = phi %struct.bitmap_element_def* [ %25, %if.end100 ], [ %.pre7, %cond.true111 ], !dbg !1717
  %tobool116 = icmp eq %struct.bitmap_element_def* %29, null, !dbg !1719
  br i1 %tobool116, label %cleanup, label %if.then117, !dbg !1720

if.then117:                                       ; preds = %cond.end113
  %indx119 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %28, i64 0, i32 2, !dbg !1721
  %30 = load i32, i32* %indx119, align 8, !dbg !1721
  %indx120 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 2, !dbg !1722
  store i32 %30, i32* %indx120, align 8, !dbg !1723
  br label %cleanup, !dbg !1724

cleanup:                                          ; preds = %cond.end113, %if.then117, %if.then
  %retval.0 = phi i8 [ %conv, %if.then ], [ %changed.6, %if.then117 ], [ %changed.6, %cond.end113 ], !dbg !1604
  ret i8 %retval.0, !dbg !1725
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bitmap_elt_copy(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_elt, %struct.bitmap_element_def* %dst_prev, %struct.bitmap_element_def* %src_elt, i8 zeroext %changed) unnamed_addr #0 !dbg !1726 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %dst, metadata !1730, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt, metadata !1731, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_prev, metadata !1732, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %src_elt, metadata !1733, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 %changed, metadata !1734, metadata !DIExpression()), !dbg !1738
  %tobool = icmp eq i8 %changed, 0, !dbg !1739
  %tobool1 = icmp ne %struct.bitmap_element_def* %dst_elt, null, !dbg !1740
  %or.cond = and i1 %tobool, %tobool1, !dbg !1741
  br i1 %or.cond, label %land.lhs.true2, label %entry.if.else_crit_edge, !dbg !1741

entry.if.else_crit_edge:                          ; preds = %entry
  %indx20.phi.trans.insert = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %src_elt, i64 0, i32 2, !dbg !1742
  %.pre = load i32, i32* %indx20.phi.trans.insert, align 8, !dbg !1742
  br label %if.else, !dbg !1741

land.lhs.true2:                                   ; preds = %entry
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt, i64 0, i32 2, !dbg !1745
  %0 = load i32, i32* %indx, align 8, !dbg !1745
  %indx3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %src_elt, i64 0, i32 2, !dbg !1746
  %1 = load i32, i32* %indx3, align 8, !dbg !1746
  %cmp = icmp eq i32 %0, %1, !dbg !1747
  br i1 %cmp, label %for.cond.preheader, label %if.else, !dbg !1748

for.cond.preheader:                               ; preds = %land.lhs.true2
  br label %for.cond, !dbg !1749

for.cond:                                         ; preds = %for.cond.preheader, %if.end
  %indvars.iv = phi i64 [ 2, %for.cond.preheader ], [ %indvars.iv.next, %if.end ]
  %changed.addr.0 = phi i8 [ 0, %for.cond.preheader ], [ %changed.addr.1, %if.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1735, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 %changed.addr.0, metadata !1734, metadata !DIExpression()), !dbg !1738
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1752
  call void @llvm.dbg.value(metadata i32 undef, metadata !1735, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1751
  %tobool4 = icmp eq i64 %indvars.iv, 0, !dbg !1749
  br i1 %tobool4, label %if.end27.loopexit, label %for.body, !dbg !1749

for.body:                                         ; preds = %for.cond
  %idxprom = and i64 %indvars.iv.next, 4294967295, !dbg !1754
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %src_elt, i64 0, i32 3, i64 %idxprom, !dbg !1754
  %2 = load i64, i64* %arrayidx, align 8, !dbg !1754
  %arrayidx7 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt, i64 0, i32 3, i64 %idxprom, !dbg !1756
  %3 = load i64, i64* %arrayidx7, align 8, !dbg !1756
  %cmp8 = icmp eq i64 %2, %3, !dbg !1757
  br i1 %cmp8, label %if.end, label %if.then9, !dbg !1758

if.then9:                                         ; preds = %for.body
  store i64 %2, i64* %arrayidx7, align 8, !dbg !1759
  call void @llvm.dbg.value(metadata i8 1, metadata !1734, metadata !DIExpression()), !dbg !1738
  br label %if.end, !dbg !1761

if.end:                                           ; preds = %for.body, %if.then9
  %changed.addr.1 = phi i8 [ 1, %if.then9 ], [ %changed.addr.0, %for.body ]
  call void @llvm.dbg.value(metadata i8 %changed.addr.1, metadata !1734, metadata !DIExpression()), !dbg !1738
  br label %for.cond, !dbg !1762, !llvm.loop !1763

if.else:                                          ; preds = %entry.if.else_crit_edge, %land.lhs.true2
  %4 = phi i32 [ %.pre, %entry.if.else_crit_edge ], [ %1, %land.lhs.true2 ], !dbg !1742
  call void @llvm.dbg.value(metadata i8 1, metadata !1734, metadata !DIExpression()), !dbg !1738
  %tobool16 = icmp eq %struct.bitmap_element_def* %dst_elt, null, !dbg !1765
  br i1 %tobool16, label %if.then17, label %if.else19, !dbg !1766

if.then17:                                        ; preds = %if.else
  %call = tail call fastcc %struct.bitmap_element_def* @bitmap_elt_insert_after(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_prev, i32 %4) #7, !dbg !1767
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !1731, metadata !DIExpression()), !dbg !1738
  br label %if.end22, !dbg !1768

if.else19:                                        ; preds = %if.else
  %indx21 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt, i64 0, i32 2, !dbg !1769
  store i32 %4, i32* %indx21, align 8, !dbg !1770
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %if.then17
  %dst_elt.addr.0 = phi %struct.bitmap_element_def* [ %dst_elt, %if.else19 ], [ %call, %if.then17 ]
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.addr.0, metadata !1731, metadata !DIExpression()), !dbg !1738
  %arraydecay = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.addr.0, i64 0, i32 3, i64 0, !dbg !1771
  %5 = bitcast i64* %arraydecay to i8*, !dbg !1771
  %arraydecay25 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %src_elt, i64 0, i32 3, i64 0, !dbg !1772
  %6 = bitcast i64* %arraydecay25 to i8*, !dbg !1772
  %call26 = tail call i8* @memcpy(i8* nonnull %5, i8* nonnull %6, i64 16) #6, !dbg !1773
  br label %if.end27

if.end27.loopexit:                                ; preds = %for.cond
  %changed.addr.0.lcssa = phi i8 [ %changed.addr.0, %for.cond ]
  call void @llvm.dbg.value(metadata i8 %changed.addr.0.lcssa, metadata !1734, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 %changed.addr.0.lcssa, metadata !1734, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 %changed.addr.0.lcssa, metadata !1734, metadata !DIExpression()), !dbg !1738
  br label %if.end27, !dbg !1774

if.end27:                                         ; preds = %if.end27.loopexit, %if.end22
  %changed.addr.2 = phi i8 [ 1, %if.end22 ], [ %changed.addr.0.lcssa, %if.end27.loopexit ]
  call void @llvm.dbg.value(metadata i8 %changed.addr.2, metadata !1734, metadata !DIExpression()), !dbg !1738
  ret i8 %changed.addr.2, !dbg !1774
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @bitmap_and_compl_into(%struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) local_unnamed_addr #4 !dbg !1775 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !1779, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !1780, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* undef, metadata !1781, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* undef, metadata !1782, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 0, metadata !1784, metadata !DIExpression()), !dbg !1796
  %cmp = icmp eq %struct.bitmap_head_def* %a, %b, !dbg !1797
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !1799

while.cond.preheader:                             ; preds = %entry
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %b, i64 0, i32 0, !dbg !1800
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8, !dbg !1800
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !1782, metadata !DIExpression()), !dbg !1796
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !1801
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !1801
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !1781, metadata !DIExpression()), !dbg !1796
  br label %while.cond, !dbg !1802

if.then:                                          ; preds = %entry
  %first2 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !1803
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first2, align 8, !dbg !1803
  %tobool = icmp eq %struct.bitmap_element_def* %2, null, !dbg !1803
  br i1 %tobool, label %cleanup, label %if.else, !dbg !1806

if.else:                                          ; preds = %if.then
  tail call void @bitmap_clear(%struct.bitmap_head_def* %a) #7, !dbg !1807
  br label %cleanup, !dbg !1809

while.cond:                                       ; preds = %while.cond.preheader, %if.end34
  %changed.0 = phi i64 [ %changed.3, %if.end34 ], [ 0, %while.cond.preheader ], !dbg !1810
  %b_elt.0 = phi %struct.bitmap_element_def* [ %b_elt.2, %if.end34 ], [ %0, %while.cond.preheader ], !dbg !1811
  %a_elt.0 = phi %struct.bitmap_element_def* [ %a_elt.2, %if.end34 ], [ %1, %while.cond.preheader ], !dbg !1796
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !1781, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !1782, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %changed.0, metadata !1784, metadata !DIExpression()), !dbg !1796
  %tobool4 = icmp ne %struct.bitmap_element_def* %a_elt.0, null, !dbg !1812
  %tobool5 = icmp ne %struct.bitmap_element_def* %b_elt.0, null, !dbg !1813
  %spec.select = and i1 %tobool5, %tobool4, !dbg !1813
  br i1 %spec.select, label %while.body, label %while.end, !dbg !1802

while.body:                                       ; preds = %while.cond
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !1814
  %3 = load i32, i32* %indx, align 8, !dbg !1814
  %indx6 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !1815
  %4 = load i32, i32* %indx6, align 8, !dbg !1815
  %cmp7 = icmp ult i32 %3, %4, !dbg !1816
  br i1 %cmp7, label %if.then8, label %if.else10, !dbg !1817

if.then8:                                         ; preds = %while.body
  %next9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !1818
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next9, align 8, !dbg !1818
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %5, metadata !1781, metadata !DIExpression()), !dbg !1796
  br label %if.end34, !dbg !1819

if.else10:                                        ; preds = %while.body
  %cmp13 = icmp ult i32 %4, %3, !dbg !1820
  br i1 %cmp13, label %if.then14, label %for.cond.preheader, !dbg !1821

for.cond.preheader:                               ; preds = %if.else10
  br label %for.cond, !dbg !1822

if.then14:                                        ; preds = %if.else10
  %next15 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !1823
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next15, align 8, !dbg !1823
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %6, metadata !1782, metadata !DIExpression()), !dbg !1796
  br label %if.end34, !dbg !1824

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 2, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !1796
  %changed.1 = phi i64 [ %changed.0, %for.cond.preheader ], [ %or, %for.body ], !dbg !1796
  %ior.0 = phi i64 [ 0, %for.cond.preheader ], [ %or27, %for.body ], !dbg !1825
  call void @llvm.dbg.value(metadata i64 %ior.0, metadata !1790, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1785, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 %changed.1, metadata !1784, metadata !DIExpression()), !dbg !1796
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1826
  call void @llvm.dbg.value(metadata i32 undef, metadata !1785, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1825
  %tobool17 = icmp eq i64 %indvars.iv, 0, !dbg !1822
  br i1 %tobool17, label %for.end, label %for.body, !dbg !1822

for.body:                                         ; preds = %for.cond
  %idxprom = and i64 %indvars.iv.next, 4294967295, !dbg !1827
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !1827
  %7 = load i64, i64* %arrayidx, align 8, !dbg !1827
  %arrayidx20 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !1828
  %8 = load i64, i64* %arrayidx20, align 8, !dbg !1828
  %and = and i64 %7, %8, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %and, metadata !1791, metadata !DIExpression()), !dbg !1830
  %xor = xor i64 %7, %and, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %xor, metadata !1795, metadata !DIExpression()), !dbg !1830
  store i64 %xor, i64* %arrayidx, align 8, !dbg !1832
  %or = or i64 %changed.1, %and, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %or, metadata !1784, metadata !DIExpression()), !dbg !1796
  %or27 = or i64 %ior.0, %xor, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %or27, metadata !1790, metadata !DIExpression()), !dbg !1825
  br label %for.cond, !dbg !1835, !llvm.loop !1836

for.end:                                          ; preds = %for.cond
  %changed.1.lcssa = phi i64 [ %changed.1, %for.cond ], !dbg !1796
  %ior.0.lcssa = phi i64 [ %ior.0, %for.cond ], !dbg !1825
  call void @llvm.dbg.value(metadata i64 %changed.1.lcssa, metadata !1784, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !1790, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 %changed.1.lcssa, metadata !1784, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !1790, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 %changed.1.lcssa, metadata !1784, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !1790, metadata !DIExpression()), !dbg !1825
  %next28 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !1838
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next28, align 8, !dbg !1838
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %9, metadata !1783, metadata !DIExpression()), !dbg !1796
  %tobool29 = icmp eq i64 %ior.0.lcssa, 0, !dbg !1839
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !1841

if.then30:                                        ; preds = %for.end
  tail call fastcc void @bitmap_element_free(%struct.bitmap_head_def* %a, %struct.bitmap_element_def* nonnull %a_elt.0) #7, !dbg !1842
  br label %if.end31, !dbg !1842

if.end31:                                         ; preds = %for.end, %if.then30
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %9, metadata !1781, metadata !DIExpression()), !dbg !1796
  %next32 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !1843
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next32, align 8, !dbg !1843
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %10, metadata !1782, metadata !DIExpression()), !dbg !1796
  br label %if.end34

if.end34:                                         ; preds = %if.then14, %if.end31, %if.then8
  %changed.3 = phi i64 [ %changed.0, %if.then8 ], [ %changed.0, %if.then14 ], [ %changed.1.lcssa, %if.end31 ], !dbg !1810
  %b_elt.2 = phi %struct.bitmap_element_def* [ %b_elt.0, %if.then8 ], [ %6, %if.then14 ], [ %10, %if.end31 ], !dbg !1796
  %a_elt.2 = phi %struct.bitmap_element_def* [ %5, %if.then8 ], [ %a_elt.0, %if.then14 ], [ %9, %if.end31 ], !dbg !1796
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.2, metadata !1781, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.2, metadata !1782, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %changed.3, metadata !1784, metadata !DIExpression()), !dbg !1796
  br label %while.cond, !dbg !1802, !llvm.loop !1844

while.end:                                        ; preds = %while.cond
  %changed.0.lcssa = phi i64 [ %changed.0, %while.cond ], !dbg !1810
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1784, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1784, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1784, metadata !DIExpression()), !dbg !1796
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 1, !dbg !1846
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !1846
  %tobool35 = icmp ne %struct.bitmap_element_def* %11, null, !dbg !1846
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !1846
  %tobool37 = icmp eq %struct.bitmap_element_def* %12, null, !dbg !1846
  %cmp40 = xor i1 %tobool37, %tobool35, !dbg !1846
  br i1 %cmp40, label %cond.end, label %cond.true, !dbg !1846

cond.true:                                        ; preds = %while.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1846
  %.pre = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !1847
  br label %cond.end, !dbg !1846

cond.end:                                         ; preds = %while.end, %cond.true
  %13 = phi %struct.bitmap_element_def* [ %11, %while.end ], [ %.pre, %cond.true ], !dbg !1847
  %tobool42 = icmp eq %struct.bitmap_element_def* %13, null, !dbg !1847
  br i1 %tobool42, label %cond.end49, label %lor.lhs.false, !dbg !1847

lor.lhs.false:                                    ; preds = %cond.end
  %indx43 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 2, !dbg !1847
  %14 = load i32, i32* %indx43, align 8, !dbg !1847
  %indx45 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %13, i64 0, i32 2, !dbg !1847
  %15 = load i32, i32* %indx45, align 8, !dbg !1847
  %cmp46 = icmp eq i32 %14, %15, !dbg !1847
  br i1 %cmp46, label %cond.end49, label %cond.true47, !dbg !1847

cond.true47:                                      ; preds = %lor.lhs.false
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1847
  br label %cond.end49, !dbg !1847

cond.end49:                                       ; preds = %cond.end, %lor.lhs.false, %cond.true47
  %cmp51 = icmp ne i64 %changed.0.lcssa, 0, !dbg !1848
  %conv52 = zext i1 %cmp51 to i8, !dbg !1849
  br label %cleanup, !dbg !1850

cleanup:                                          ; preds = %if.then, %cond.end49, %if.else
  %retval.0 = phi i8 [ 1, %if.else ], [ %conv52, %cond.end49 ], [ 0, %if.then ], !dbg !1796
  ret i8 %retval.0, !dbg !1851
}

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_set_range(%struct.bitmap_head_def* %head, i32 %start, i32 %count) local_unnamed_addr #4 !dbg !1852 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !1856, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i32 %start, metadata !1857, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i32 %count, metadata !1858, metadata !DIExpression()), !dbg !1878
  %tobool = icmp eq i32 %count, 0, !dbg !1879
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !1881

if.end:                                           ; preds = %entry
  %div = lshr i32 %start, 7, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %div, metadata !1859, metadata !DIExpression()), !dbg !1878
  %add = add i32 %start, %count, !dbg !1883
  call void @llvm.dbg.value(metadata i32 %add, metadata !1860, metadata !DIExpression()), !dbg !1878
  %sub = add i32 %add, -1, !dbg !1884
  %div1 = lshr i32 %sub, 7, !dbg !1885
  call void @llvm.dbg.value(metadata i32 %div1, metadata !1861, metadata !DIExpression()), !dbg !1878
  %call = tail call fastcc %struct.bitmap_element_def* @bitmap_find_bit(%struct.bitmap_head_def* %head, i32 %start) #7, !dbg !1886
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !1862, metadata !DIExpression()), !dbg !1878
  %tobool2 = icmp eq %struct.bitmap_element_def* %call, null, !dbg !1887
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !1889

if.then3:                                         ; preds = %if.end
  %call4 = tail call fastcc %struct.bitmap_element_def* @bitmap_element_allocate(%struct.bitmap_head_def* %head) #7, !dbg !1890
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call4, metadata !1862, metadata !DIExpression()), !dbg !1878
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call4, i64 0, i32 2, !dbg !1892
  store i32 %div, i32* %indx, align 8, !dbg !1893
  tail call fastcc void @bitmap_element_link(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* %call4) #7, !dbg !1894
  br label %if.end5, !dbg !1895

if.end5:                                          ; preds = %if.end, %if.then3
  %elt.0 = phi %struct.bitmap_element_def* [ %call, %if.end ], [ %call4, %if.then3 ], !dbg !1878
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.0, metadata !1862, metadata !DIExpression()), !dbg !1878
  %indx6 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.0, i64 0, i32 2, !dbg !1896
  %0 = load i32, i32* %indx6, align 8, !dbg !1896
  %cmp = icmp eq i32 %0, %div, !dbg !1896
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !1896

cond.true:                                        ; preds = %if.end5
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1896
  br label %cond.end, !dbg !1896

cond.end:                                         ; preds = %if.end5, %cond.true
  %prev = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.0, i64 0, i32 1, !dbg !1897
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev, align 8, !dbg !1897
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !1863, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i32 %div, metadata !1864, metadata !DIExpression()), !dbg !1878
  %rem = and i32 %start, 63, !dbg !1898
  %sh_prom = zext i32 %rem to i64, !dbg !1898
  %notmask1 = shl nsw i64 -1, %sh_prom, !dbg !1898
  %rem26 = and i32 %add, 63, !dbg !1901
  %sh_prom27 = zext i32 %rem26 to i64, !dbg !1901
  %notmask = shl nsw i64 -1, %sh_prom27, !dbg !1901
  %sub29 = xor i64 %notmask, -1, !dbg !1901
  br label %for.cond, !dbg !1904

for.cond:                                         ; preds = %if.end42, %cond.end
  %elt_prev.0 = phi %struct.bitmap_element_def* [ %1, %cond.end ], [ %elt.2, %if.end42 ], !dbg !1878
  %elt.1 = phi %struct.bitmap_element_def* [ %elt.0, %cond.end ], [ %6, %if.end42 ], !dbg !1878
  %i.0 = phi i32 [ %div, %cond.end ], [ %inc, %if.end42 ], !dbg !1905
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1864, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.1, metadata !1862, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt_prev.0, metadata !1863, metadata !DIExpression()), !dbg !1878
  %cmp7 = icmp ugt i32 %i.0, %div1, !dbg !1906
  br i1 %cmp7, label %for.end, label %for.body, !dbg !1907

for.body:                                         ; preds = %for.cond
  %mul = shl i32 %i.0, 7, !dbg !1908
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1865, metadata !DIExpression()), !dbg !1909
  %add8 = add i32 %mul, 128, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %add8, metadata !1869, metadata !DIExpression()), !dbg !1909
  %tobool9 = icmp eq %struct.bitmap_element_def* %elt.1, null, !dbg !1911
  br i1 %tobool9, label %if.then12, label %lor.lhs.false, !dbg !1913

lor.lhs.false:                                    ; preds = %for.body
  %indx10 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.1, i64 0, i32 2, !dbg !1914
  %2 = load i32, i32* %indx10, align 8, !dbg !1914
  %cmp11 = icmp eq i32 %2, %i.0, !dbg !1915
  br i1 %cmp11, label %if.end14, label %if.then12, !dbg !1916

if.then12:                                        ; preds = %lor.lhs.false, %for.body
  %call13 = tail call fastcc %struct.bitmap_element_def* @bitmap_elt_insert_after(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* %elt_prev.0, i32 %i.0) #7, !dbg !1917
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call13, metadata !1862, metadata !DIExpression()), !dbg !1878
  br label %if.end14, !dbg !1918

if.end14:                                         ; preds = %lor.lhs.false, %if.then12
  %elt.2 = phi %struct.bitmap_element_def* [ %call13, %if.then12 ], [ %elt.1, %lor.lhs.false ], !dbg !1878
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.2, metadata !1862, metadata !DIExpression()), !dbg !1878
  %cmp15 = icmp ugt i32 %mul, %start, !dbg !1919
  br i1 %cmp15, label %if.end20, label %if.then16, !dbg !1920

if.then16:                                        ; preds = %if.end14
  %sub17 = sub i32 %start, %mul, !dbg !1921
  %div18 = lshr i32 %sub17, 6, !dbg !1922
  call void @llvm.dbg.value(metadata i32 %div18, metadata !1870, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64 %notmask1, metadata !1871, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !1909
  call void @llvm.dbg.value(metadata i64 %notmask1, metadata !1871, metadata !DIExpression()), !dbg !1909
  br label %if.end20, !dbg !1923

if.end20:                                         ; preds = %if.end14, %if.then16
  %first_word_to_mod.0 = phi i32 [ %div18, %if.then16 ], [ 0, %if.end14 ], !dbg !1924
  %first_mask.0 = phi i64 [ %notmask1, %if.then16 ], [ -1, %if.end14 ], !dbg !1924
  call void @llvm.dbg.value(metadata i64 %first_mask.0, metadata !1871, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i32 %first_word_to_mod.0, metadata !1870, metadata !DIExpression()), !dbg !1909
  %cmp21 = icmp ugt i32 %add8, %add, !dbg !1925
  br i1 %cmp21, label %if.else23, label %if.end30, !dbg !1926

if.else23:                                        ; preds = %if.end20
  %sub24 = sub i32 %add, %mul, !dbg !1927
  %div25 = lshr i32 %sub24, 6, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %div25, metadata !1872, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64 %sub29, metadata !1873, metadata !DIExpression()), !dbg !1909
  br label %if.end30

if.end30:                                         ; preds = %if.end20, %if.else23
  %last_word_to_mod.0 = phi i32 [ %div25, %if.else23 ], [ 1, %if.end20 ], !dbg !1929
  %last_mask.0 = phi i64 [ %sub29, %if.else23 ], [ -1, %if.end20 ], !dbg !1929
  call void @llvm.dbg.value(metadata i64 %last_mask.0, metadata !1873, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i32 %last_word_to_mod.0, metadata !1872, metadata !DIExpression()), !dbg !1909
  %cmp31 = icmp eq i32 %first_word_to_mod.0, %last_word_to_mod.0, !dbg !1930
  br i1 %cmp31, label %if.then32, label %if.else33, !dbg !1931

if.then32:                                        ; preds = %if.end30
  %and = and i64 %first_mask.0, %last_mask.0, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %and, metadata !1875, metadata !DIExpression()), !dbg !1933
  %idxprom = zext i32 %first_word_to_mod.0 to i64, !dbg !1934
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.2, i64 0, i32 3, i64 %idxprom, !dbg !1934
  %3 = load i64, i64* %arrayidx, align 8, !dbg !1935
  %or = or i64 %3, %and, !dbg !1935
  store i64 %or, i64* %arrayidx, align 8, !dbg !1935
  br label %if.end42, !dbg !1936

if.else33:                                        ; preds = %if.end30
  %idxprom35 = zext i32 %first_word_to_mod.0 to i64, !dbg !1937
  %arrayidx36 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.2, i64 0, i32 3, i64 %idxprom35, !dbg !1937
  %4 = load i64, i64* %arrayidx36, align 8, !dbg !1939
  %or37 = or i64 %4, %first_mask.0, !dbg !1939
  store i64 %or37, i64* %arrayidx36, align 8, !dbg !1939
  %idxprom39 = zext i32 %last_word_to_mod.0 to i64, !dbg !1940
  %arrayidx40 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.2, i64 0, i32 3, i64 %idxprom39, !dbg !1940
  %5 = load i64, i64* %arrayidx40, align 8, !dbg !1941
  %or41 = or i64 %5, %last_mask.0, !dbg !1941
  store i64 %or41, i64* %arrayidx40, align 8, !dbg !1941
  br label %if.end42

if.end42:                                         ; preds = %if.else33, %if.then32
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.2, metadata !1863, metadata !DIExpression()), !dbg !1878
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.2, i64 0, i32 0, !dbg !1942
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !1942
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %6, metadata !1862, metadata !DIExpression()), !dbg !1878
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1864, metadata !DIExpression()), !dbg !1878
  br label %for.cond, !dbg !1944, !llvm.loop !1945

for.end:                                          ; preds = %for.cond
  %elt_prev.0.lcssa = phi %struct.bitmap_element_def* [ %elt_prev.0, %for.cond ], !dbg !1878
  %elt.1.lcssa = phi %struct.bitmap_element_def* [ %elt.1, %for.cond ], !dbg !1878
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt_prev.0.lcssa, metadata !1863, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.1.lcssa, metadata !1862, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt_prev.0.lcssa, metadata !1863, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.1.lcssa, metadata !1862, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt_prev.0.lcssa, metadata !1863, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.1.lcssa, metadata !1862, metadata !DIExpression()), !dbg !1878
  %tobool43 = icmp eq %struct.bitmap_element_def* %elt.1.lcssa, null, !dbg !1947
  %elt.1.elt_prev.0 = select i1 %tobool43, %struct.bitmap_element_def* %elt_prev.0.lcssa, %struct.bitmap_element_def* %elt.1.lcssa, !dbg !1947
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 1, !dbg !1948
  store %struct.bitmap_element_def* %elt.1.elt_prev.0, %struct.bitmap_element_def** %current, align 8, !dbg !1949
  %indx49 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.1.elt_prev.0, i64 0, i32 2, !dbg !1950
  %7 = load i32, i32* %indx49, align 8, !dbg !1950
  %indx50 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 2, !dbg !1951
  store i32 %7, i32* %indx50, align 8, !dbg !1952
  br label %cleanup.cont, !dbg !1953

cleanup.cont:                                     ; preds = %entry, %for.end
  ret void, !dbg !1953
}

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_clear_range(%struct.bitmap_head_def* %head, i32 %start, i32 %count) local_unnamed_addr #4 !dbg !1954 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !1956, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i32 %start, metadata !1957, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i32 %count, metadata !1958, metadata !DIExpression()), !dbg !1978
  %tobool = icmp eq i32 %count, 0, !dbg !1979
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !1981

if.end:                                           ; preds = %entry
  %div = lshr i32 %start, 7, !dbg !1982
  call void @llvm.dbg.value(metadata i32 %div, metadata !1959, metadata !DIExpression()), !dbg !1978
  %add = add i32 %start, %count, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %add, metadata !1960, metadata !DIExpression()), !dbg !1978
  %sub = add i32 %add, -1, !dbg !1984
  %div1 = lshr i32 %sub, 7, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %div1, metadata !1961, metadata !DIExpression()), !dbg !1978
  %call = tail call fastcc %struct.bitmap_element_def* @bitmap_find_bit(%struct.bitmap_head_def* %head, i32 %start) #7, !dbg !1986
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !1962, metadata !DIExpression()), !dbg !1978
  %tobool2 = icmp eq %struct.bitmap_element_def* %call, null, !dbg !1987
  br i1 %tobool2, label %if.then3, label %if.end15, !dbg !1989

if.then3:                                         ; preds = %if.end
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 1, !dbg !1990
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !1990
  %tobool4 = icmp eq %struct.bitmap_element_def* %0, null, !dbg !1993
  br i1 %tobool4, label %cleanup.cont, label %if.then5, !dbg !1994

if.then5:                                         ; preds = %if.then3
  %indx = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 2, !dbg !1995
  %1 = load i32, i32* %indx, align 8, !dbg !1995
  %cmp = icmp ult i32 %1, %div, !dbg !1998
  br i1 %cmp, label %if.then6, label %if.end15, !dbg !1999

if.then6:                                         ; preds = %if.then5
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %0, i64 0, i32 0, !dbg !2000
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !2000
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %2, metadata !1962, metadata !DIExpression()), !dbg !1978
  %tobool8 = icmp eq %struct.bitmap_element_def* %2, null, !dbg !2002
  br i1 %tobool8, label %cleanup.cont, label %if.end15, !dbg !2004

if.end15:                                         ; preds = %if.then6, %if.end, %if.then5
  %elt.1 = phi %struct.bitmap_element_def* [ %call, %if.end ], [ %2, %if.then6 ], [ %0, %if.then5 ], !dbg !1978
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.1, metadata !1962, metadata !DIExpression()), !dbg !1978
  %rem = and i32 %start, 63, !dbg !2005
  %sh_prom = zext i32 %rem to i64, !dbg !2005
  %notmask1 = shl nsw i64 -1, %sh_prom, !dbg !2005
  %rem40 = and i32 %add, 63, !dbg !2008
  %sh_prom41 = zext i32 %rem40 to i64, !dbg !2008
  %notmask = shl nsw i64 -1, %sh_prom41, !dbg !2008
  %sub43 = xor i64 %notmask, -1, !dbg !2008
  br label %while.cond, !dbg !2011

while.cond:                                       ; preds = %if.end71, %if.end15
  %elt.2 = phi %struct.bitmap_element_def* [ %elt.1, %if.end15 ], [ %4, %if.end71 ], !dbg !1978
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.2, metadata !1962, metadata !DIExpression()), !dbg !1978
  %cond = icmp eq %struct.bitmap_element_def* %elt.2, null, !dbg !2012
  br i1 %cond, label %cleanup.cont.loopexit, label %land.rhs, !dbg !2012

land.rhs:                                         ; preds = %while.cond
  %indx17 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.2, i64 0, i32 2, !dbg !2013
  %3 = load i32, i32* %indx17, align 8, !dbg !2013
  %cmp18 = icmp ugt i32 %3, %div1, !dbg !2014
  br i1 %cmp18, label %while.end, label %while.body, !dbg !2011

while.body:                                       ; preds = %land.rhs
  %next19 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.2, i64 0, i32 0, !dbg !2015
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next19, align 8, !dbg !2015
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %4, metadata !1963, metadata !DIExpression()), !dbg !2016
  %mul = shl i32 %3, 7, !dbg !2017
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1965, metadata !DIExpression()), !dbg !2016
  %add21 = add i32 %mul, 128, !dbg !2018
  call void @llvm.dbg.value(metadata i32 %add21, metadata !1966, metadata !DIExpression()), !dbg !2016
  %cmp22 = icmp uge i32 %mul, %start, !dbg !2019
  %cmp23 = icmp ule i32 %add21, %add, !dbg !2020
  %or.cond = and i1 %cmp22, %cmp23, !dbg !2021
  br i1 %or.cond, label %if.then24, label %if.else25, !dbg !2021

if.then24:                                        ; preds = %while.body
  tail call fastcc void @bitmap_element_free(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* nonnull %elt.2) #7, !dbg !2022
  br label %if.end71, !dbg !2022

if.else25:                                        ; preds = %while.body
  call void @llvm.dbg.value(metadata i8 1, metadata !1974, metadata !DIExpression()), !dbg !2023
  %cmp26 = icmp ugt i32 %mul, %start, !dbg !2024
  br i1 %cmp26, label %if.else31, label %if.then27, !dbg !2025

if.then27:                                        ; preds = %if.else25
  %sub28 = sub i32 %start, %mul, !dbg !2026
  %div29 = lshr i32 %sub28, 6, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %div29, metadata !1967, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %notmask1, metadata !1970, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %notmask1, metadata !1970, metadata !DIExpression()), !dbg !2023
  br label %if.end33, !dbg !2028

if.else31:                                        ; preds = %if.else25
  call void @llvm.dbg.value(metadata i32 0, metadata !1967, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 0, metadata !1970, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 -1, metadata !1970, metadata !DIExpression()), !dbg !2023
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then27
  %first_word_to_mod.0 = phi i32 [ %div29, %if.then27 ], [ 0, %if.else31 ], !dbg !2029
  %first_mask.0 = phi i64 [ %notmask1, %if.then27 ], [ -1, %if.else31 ], !dbg !2029
  call void @llvm.dbg.value(metadata i64 %first_mask.0, metadata !1970, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i32 %first_word_to_mod.0, metadata !1967, metadata !DIExpression()), !dbg !2023
  %cmp34 = icmp ugt i32 %add21, %add, !dbg !2030
  br i1 %cmp34, label %if.else37, label %if.then35, !dbg !2031

if.then35:                                        ; preds = %if.end33
  call void @llvm.dbg.value(metadata i32 1, metadata !1971, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 0, metadata !1972, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 -1, metadata !1972, metadata !DIExpression()), !dbg !2023
  br label %if.end44, !dbg !2032

if.else37:                                        ; preds = %if.end33
  %sub38 = sub i32 %add, %mul, !dbg !2034
  %div39 = lshr i32 %sub38, 6, !dbg !2035
  call void @llvm.dbg.value(metadata i32 %div39, metadata !1971, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %sub43, metadata !1972, metadata !DIExpression()), !dbg !2023
  br label %if.end44

if.end44:                                         ; preds = %if.else37, %if.then35
  %last_word_to_mod.0 = phi i32 [ 1, %if.then35 ], [ %div39, %if.else37 ], !dbg !2036
  %last_mask.0 = phi i64 [ -1, %if.then35 ], [ %sub43, %if.else37 ], !dbg !2036
  call void @llvm.dbg.value(metadata i64 %last_mask.0, metadata !1972, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i32 %last_word_to_mod.0, metadata !1971, metadata !DIExpression()), !dbg !2023
  %cmp45 = icmp eq i32 %first_word_to_mod.0, %last_word_to_mod.0, !dbg !2037
  br i1 %cmp45, label %if.then46, label %if.else49, !dbg !2038

if.then46:                                        ; preds = %if.end44
  %and = and i64 %first_mask.0, %last_mask.0, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %and, metadata !1975, metadata !DIExpression()), !dbg !2040
  %neg47 = xor i64 %and, -1, !dbg !2041
  %idxprom = zext i32 %first_word_to_mod.0 to i64, !dbg !2042
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.2, i64 0, i32 3, i64 %idxprom, !dbg !2042
  %5 = load i64, i64* %arrayidx, align 8, !dbg !2043
  %and48 = and i64 %5, %neg47, !dbg !2043
  store i64 %and48, i64* %arrayidx, align 8, !dbg !2043
  br label %if.end60, !dbg !2044

if.else49:                                        ; preds = %if.end44
  %neg50 = xor i64 %first_mask.0, -1, !dbg !2045
  %idxprom52 = zext i32 %first_word_to_mod.0 to i64, !dbg !2047
  %arrayidx53 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.2, i64 0, i32 3, i64 %idxprom52, !dbg !2047
  %6 = load i64, i64* %arrayidx53, align 8, !dbg !2048
  %and54 = and i64 %6, %neg50, !dbg !2048
  store i64 %and54, i64* %arrayidx53, align 8, !dbg !2048
  %neg55 = xor i64 %last_mask.0, -1, !dbg !2049
  %idxprom57 = zext i32 %last_word_to_mod.0 to i64, !dbg !2050
  %arrayidx58 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.2, i64 0, i32 3, i64 %idxprom57, !dbg !2050
  %7 = load i64, i64* %arrayidx58, align 8, !dbg !2051
  %and59 = and i64 %7, %neg55, !dbg !2051
  store i64 %and59, i64* %arrayidx58, align 8, !dbg !2051
  br label %if.end60

if.end60:                                         ; preds = %if.else49, %if.then46
  call void @llvm.dbg.value(metadata i32 0, metadata !1973, metadata !DIExpression()), !dbg !2023
  br label %for.cond, !dbg !2052

for.cond:                                         ; preds = %for.inc, %if.end60
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end60 ], !dbg !2054
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1973, metadata !DIExpression()), !dbg !2023
  %exitcond = icmp eq i64 %indvars.iv, 2, !dbg !2055
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2057

for.body:                                         ; preds = %for.cond
  %arrayidx64 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt.2, i64 0, i32 3, i64 %indvars.iv, !dbg !2058
  %8 = load i64, i64* %arrayidx64, align 8, !dbg !2058
  %tobool65 = icmp eq i64 %8, 0, !dbg !2058
  br i1 %tobool65, label %for.inc, label %for.end, !dbg !2060

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2061
  call void @llvm.dbg.value(metadata i32 undef, metadata !1973, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2023
  br label %for.cond, !dbg !2062, !llvm.loop !2063

for.end:                                          ; preds = %for.cond, %for.body
  %clear.0 = phi i1 [ true, %for.cond ], [ false, %for.body ]
  br i1 %clear.0, label %if.then69, label %if.end71, !dbg !2065

if.then69:                                        ; preds = %for.end
  tail call fastcc void @bitmap_element_free(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* nonnull %elt.2) #7, !dbg !2066
  br label %if.end71, !dbg !2066

if.end71:                                         ; preds = %for.end, %if.then69, %if.then24
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %4, metadata !1962, metadata !DIExpression()), !dbg !1978
  br label %while.cond, !dbg !2011, !llvm.loop !2068

while.end:                                        ; preds = %land.rhs
  %indx17.lcssa = phi i32* [ %indx17, %land.rhs ], !dbg !2013
  %elt.2.lcssa4 = phi %struct.bitmap_element_def* [ %elt.2, %land.rhs ], !dbg !1978
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.2.lcssa4, metadata !1962, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.2.lcssa4, metadata !1962, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt.2.lcssa4, metadata !1962, metadata !DIExpression()), !dbg !1978
  %current74 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 1, !dbg !2070
  store %struct.bitmap_element_def* %elt.2.lcssa4, %struct.bitmap_element_def** %current74, align 8, !dbg !2073
  %9 = load i32, i32* %indx17.lcssa, align 8, !dbg !2074
  %indx77 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 2, !dbg !2075
  store i32 %9, i32* %indx77, align 8, !dbg !2076
  br label %cleanup.cont, !dbg !2077

cleanup.cont.loopexit:                            ; preds = %while.cond
  br label %cleanup.cont, !dbg !2078

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %if.then6, %if.then3, %entry, %while.end
  ret void, !dbg !2078
}

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_compl_and_into(%struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) local_unnamed_addr #4 !dbg !2079 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !2081, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !2082, metadata !DIExpression()), !dbg !2098
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !2099
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2099
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !2083, metadata !DIExpression()), !dbg !2098
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %b, i64 0, i32 0, !dbg !2100
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8, !dbg !2100
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !2084, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* null, metadata !2085, metadata !DIExpression()), !dbg !2098
  %cmp = icmp eq %struct.bitmap_head_def* %a, %b, !dbg !2101
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2101

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1406, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2101
  %.pre = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2102
  br label %cond.end, !dbg !2101

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi %struct.bitmap_element_def* [ %0, %entry ], [ %.pre, %cond.true ], !dbg !2102
  %tobool = icmp eq %struct.bitmap_element_def* %2, null, !dbg !2102
  br i1 %tobool, label %if.then, label %if.end, !dbg !2104

if.then:                                          ; preds = %cond.end
  tail call void @bitmap_copy(%struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) #7, !dbg !2105
  br label %cleanup, !dbg !2107

if.end:                                           ; preds = %cond.end
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8, !dbg !2108
  %tobool4 = icmp eq %struct.bitmap_element_def* %3, null, !dbg !2108
  br i1 %tobool4, label %if.then5, label %while.cond.preheader, !dbg !2110

while.cond.preheader:                             ; preds = %if.end
  br label %while.cond, !dbg !2111

if.then5:                                         ; preds = %if.end
  tail call void @bitmap_clear(%struct.bitmap_head_def* %a) #7, !dbg !2112
  br label %cleanup, !dbg !2114

while.cond:                                       ; preds = %while.cond.preheader, %if.end45
  %a_prev.0 = phi %struct.bitmap_element_def* [ %a_prev.3, %if.end45 ], [ null, %while.cond.preheader ], !dbg !2098
  %b_elt.0 = phi %struct.bitmap_element_def* [ %b_elt.2, %if.end45 ], [ %1, %while.cond.preheader ], !dbg !2115
  %a_elt.0 = phi %struct.bitmap_element_def* [ %a_elt.2, %if.end45 ], [ %0, %while.cond.preheader ], !dbg !2098
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !2083, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !2084, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_prev.0, metadata !2085, metadata !DIExpression()), !dbg !2098
  %tobool7 = icmp ne %struct.bitmap_element_def* %a_elt.0, null, !dbg !2116
  %tobool8 = icmp ne %struct.bitmap_element_def* %b_elt.0, null, !dbg !2117
  %spec.select = or i1 %tobool8, %tobool7, !dbg !2117
  br i1 %spec.select, label %while.body, label %while.end, !dbg !2111

while.body:                                       ; preds = %while.cond
  %tobool9 = icmp eq %struct.bitmap_element_def* %b_elt.0, null, !dbg !2118
  br i1 %tobool9, label %if.then13, label %lor.lhs.false, !dbg !2119

lor.lhs.false:                                    ; preds = %while.body
  %cond = icmp eq %struct.bitmap_element_def* %a_elt.0, null, !dbg !2120
  br i1 %cond, label %lor.lhs.false.if.then20_crit_edge, label %land.lhs.true, !dbg !2120

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  %indx21.phi.trans.insert = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2121
  %.pre2 = load i32, i32* %indx21.phi.trans.insert, align 8, !dbg !2123
  br label %if.then20, !dbg !2120

land.lhs.true:                                    ; preds = %lor.lhs.false
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2124
  %4 = load i32, i32* %indx, align 8, !dbg !2124
  %indx11 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2125
  %5 = load i32, i32* %indx11, align 8, !dbg !2125
  %cmp12 = icmp ult i32 %4, %5, !dbg !2126
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !2127

if.then13:                                        ; preds = %while.body, %land.lhs.true
  %next14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !2128
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next14, align 8, !dbg !2128
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %6, metadata !2086, metadata !DIExpression()), !dbg !2098
  %prev = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 1, !dbg !2130
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %prev, align 8, !dbg !2130
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %7, metadata !2085, metadata !DIExpression()), !dbg !2098
  tail call fastcc void @bitmap_element_free(%struct.bitmap_head_def* %a, %struct.bitmap_element_def* %a_elt.0) #7, !dbg !2131
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %6, metadata !2083, metadata !DIExpression()), !dbg !2098
  br label %if.end45, !dbg !2132

if.else:                                          ; preds = %land.lhs.true
  %cmp19 = icmp ult i32 %5, %4, !dbg !2133
  br i1 %cmp19, label %if.then20, label %for.cond.preheader, !dbg !2134

for.cond.preheader:                               ; preds = %if.else
  br label %for.cond, !dbg !2135

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.else
  %8 = phi i32 [ %.pre2, %lor.lhs.false.if.then20_crit_edge ], [ %5, %if.else ], !dbg !2123
  %call = tail call fastcc %struct.bitmap_element_def* @bitmap_elt_insert_after(%struct.bitmap_head_def* %a, %struct.bitmap_element_def* %a_prev.0, i32 %8) #7, !dbg !2136
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !2086, metadata !DIExpression()), !dbg !2098
  %arraydecay = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call, i64 0, i32 3, i64 0, !dbg !2137
  %9 = bitcast i64* %arraydecay to i8*, !dbg !2137
  %arraydecay23 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 3, i64 0, !dbg !2138
  %10 = bitcast i64* %arraydecay23 to i8*, !dbg !2138
  %call24 = tail call i8* @memcpy(i8* nonnull %9, i8* nonnull %10, i64 16) #6, !dbg !2139
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !2085, metadata !DIExpression()), !dbg !2098
  %next25 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2140
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next25, align 8, !dbg !2140
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %11, metadata !2084, metadata !DIExpression()), !dbg !2098
  br label %if.end45, !dbg !2141

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 2, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !2142
  %ior.0 = phi i64 [ 0, %for.cond.preheader ], [ %or, %for.body ], !dbg !2143
  call void @llvm.dbg.value(metadata i64 %ior.0, metadata !2092, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2087, metadata !DIExpression()), !dbg !2143
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2144
  call void @llvm.dbg.value(metadata i32 undef, metadata !2087, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2143
  %tobool27 = icmp eq i64 %indvars.iv, 0, !dbg !2135
  br i1 %tobool27, label %for.end, label %for.body, !dbg !2135

for.body:                                         ; preds = %for.cond
  %idxprom = and i64 %indvars.iv.next, 4294967295, !dbg !2145
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !2145
  %12 = load i64, i64* %arrayidx, align 8, !dbg !2145
  %arrayidx31 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !2146
  %13 = load i64, i64* %arrayidx31, align 8, !dbg !2146
  %14 = xor i64 %12, -1, !dbg !2147
  %xor = and i64 %13, %14, !dbg !2147
  call void @llvm.dbg.value(metadata i64 %xor, metadata !2097, metadata !DIExpression()), !dbg !2148
  store i64 %xor, i64* %arrayidx, align 8, !dbg !2149
  %or = or i64 %ior.0, %xor, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %or, metadata !2092, metadata !DIExpression()), !dbg !2143
  br label %for.cond, !dbg !2151, !llvm.loop !2152

for.end:                                          ; preds = %for.cond
  %ior.0.lcssa = phi i64 [ %ior.0, %for.cond ], !dbg !2143
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !2092, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !2092, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !2092, metadata !DIExpression()), !dbg !2143
  %next38 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !2154
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next38, align 8, !dbg !2154
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %15, metadata !2086, metadata !DIExpression()), !dbg !2098
  %tobool39 = icmp eq i64 %ior.0.lcssa, 0, !dbg !2155
  br i1 %tobool39, label %if.then40, label %if.end42, !dbg !2157

if.then40:                                        ; preds = %for.end
  tail call fastcc void @bitmap_element_free(%struct.bitmap_head_def* %a, %struct.bitmap_element_def* nonnull %a_elt.0) #7, !dbg !2158
  br label %if.end42, !dbg !2158

if.end42:                                         ; preds = %for.end, %if.then40
  %a_prev.1 = phi %struct.bitmap_element_def* [ %a_prev.0, %if.then40 ], [ %a_elt.0, %for.end ], !dbg !2098
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_prev.1, metadata !2085, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %15, metadata !2083, metadata !DIExpression()), !dbg !2098
  %next43 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2159
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next43, align 8, !dbg !2159
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %16, metadata !2084, metadata !DIExpression()), !dbg !2098
  br label %if.end45

if.end45:                                         ; preds = %if.then20, %if.end42, %if.then13
  %a_prev.3 = phi %struct.bitmap_element_def* [ %7, %if.then13 ], [ %call, %if.then20 ], [ %a_prev.1, %if.end42 ], !dbg !2160
  %b_elt.2 = phi %struct.bitmap_element_def* [ %b_elt.0, %if.then13 ], [ %11, %if.then20 ], [ %16, %if.end42 ], !dbg !2098
  %a_elt.2 = phi %struct.bitmap_element_def* [ %6, %if.then13 ], [ %a_elt.0, %if.then20 ], [ %15, %if.end42 ], !dbg !2098
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.2, metadata !2083, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.2, metadata !2084, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_prev.3, metadata !2085, metadata !DIExpression()), !dbg !2098
  br label %while.cond, !dbg !2111, !llvm.loop !2161

while.end:                                        ; preds = %while.cond
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 1, !dbg !2163
  %17 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !2163
  %tobool46 = icmp ne %struct.bitmap_element_def* %17, null, !dbg !2163
  %18 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2163
  %tobool48 = icmp eq %struct.bitmap_element_def* %18, null, !dbg !2163
  %cmp51 = xor i1 %tobool48, %tobool46, !dbg !2163
  br i1 %cmp51, label %cond.end54, label %cond.true52, !dbg !2163

cond.true52:                                      ; preds = %while.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1460, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2163
  %.pre1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !2164
  br label %cond.end54, !dbg !2163

cond.end54:                                       ; preds = %while.end, %cond.true52
  %19 = phi %struct.bitmap_element_def* [ %17, %while.end ], [ %.pre1, %cond.true52 ], !dbg !2164
  %tobool57 = icmp eq %struct.bitmap_element_def* %19, null, !dbg !2164
  br i1 %tobool57, label %cleanup, label %lor.lhs.false58, !dbg !2164

lor.lhs.false58:                                  ; preds = %cond.end54
  %indx59 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 2, !dbg !2164
  %20 = load i32, i32* %indx59, align 8, !dbg !2164
  %indx61 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %19, i64 0, i32 2, !dbg !2164
  %21 = load i32, i32* %indx61, align 8, !dbg !2164
  %cmp62 = icmp eq i32 %20, %21, !dbg !2164
  br i1 %cmp62, label %cleanup, label %cond.true63, !dbg !2164

cond.true63:                                      ; preds = %lor.lhs.false58
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1461, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2164
  br label %cleanup, !dbg !2164

cleanup:                                          ; preds = %cond.end54, %cond.true63, %lor.lhs.false58, %if.then5, %if.then
  ret void, !dbg !2165
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @bitmap_ior(%struct.bitmap_head_def* %dst, %struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) local_unnamed_addr #4 !dbg !2166 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %dst, metadata !2168, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !2169, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !2170, metadata !DIExpression()), !dbg !2177
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 0, !dbg !2178
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2178
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !2171, metadata !DIExpression()), !dbg !2177
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !2179
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8, !dbg !2179
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !2172, metadata !DIExpression()), !dbg !2177
  %first2 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %b, i64 0, i32 0, !dbg !2180
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first2, align 8, !dbg !2180
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %2, metadata !2173, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* null, metadata !2174, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %first, metadata !2175, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2177
  %cmp = icmp ne %struct.bitmap_head_def* %dst, %a, !dbg !2181
  %cmp4 = icmp ne %struct.bitmap_head_def* %dst, %b, !dbg !2181
  %or.cond = and i1 %cmp, %cmp4, !dbg !2181
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !2181

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1537, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2181
  br label %cond.end, !dbg !2181

cond.end:                                         ; preds = %entry, %cond.true
  br label %while.cond, !dbg !2182

while.cond:                                       ; preds = %if.end32, %cond.end
  %b_elt.0 = phi %struct.bitmap_element_def* [ %2, %cond.end ], [ %b_elt.3, %if.end32 ], !dbg !2177
  %a_elt.0 = phi %struct.bitmap_element_def* [ %1, %cond.end ], [ %a_elt.2, %if.end32 ], !dbg !2177
  %dst_elt.0 = phi %struct.bitmap_element_def* [ %0, %cond.end ], [ %14, %if.end32 ], !dbg !2177
  %dst_prev.0 = phi %struct.bitmap_element_def* [ null, %cond.end ], [ %13, %if.end32 ], !dbg !2177
  %dst_prev_pnext.0 = phi %struct.bitmap_element_def** [ %first, %cond.end ], [ %next33, %if.end32 ], !dbg !2177
  %changed.0 = phi i8 [ 0, %cond.end ], [ %call, %if.end32 ], !dbg !2177
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !2176, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %dst_prev_pnext.0, metadata !2175, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_prev.0, metadata !2174, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0, metadata !2171, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !2172, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !2173, metadata !DIExpression()), !dbg !2177
  %tobool = icmp ne %struct.bitmap_element_def* %a_elt.0, null, !dbg !2183
  %tobool5 = icmp ne %struct.bitmap_element_def* %b_elt.0, null, !dbg !2184
  %spec.select = or i1 %tobool5, %tobool, !dbg !2184
  br i1 %spec.select, label %while.body, label %while.end, !dbg !2182

while.body:                                       ; preds = %while.cond
  %call = tail call fastcc zeroext i8 @bitmap_elt_ior(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_elt.0, %struct.bitmap_element_def* %dst_prev.0, %struct.bitmap_element_def* %a_elt.0, %struct.bitmap_element_def* %b_elt.0, i8 zeroext %changed.0) #7, !dbg !2185
  call void @llvm.dbg.value(metadata i8 %call, metadata !2176, metadata !DIExpression()), !dbg !2177
  %or.cond1 = and i1 %tobool, %tobool5, !dbg !2187
  br i1 %or.cond1, label %land.lhs.true9, label %if.else, !dbg !2187

land.lhs.true9:                                   ; preds = %while.body
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2189
  %3 = load i32, i32* %indx, align 8, !dbg !2189
  %indx10 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2190
  %4 = load i32, i32* %indx10, align 8, !dbg !2190
  %cmp11 = icmp eq i32 %3, %4, !dbg !2191
  br i1 %cmp11, label %if.then, label %if.else, !dbg !2192

if.then:                                          ; preds = %land.lhs.true9
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !2193
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !2193
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %5, metadata !2172, metadata !DIExpression()), !dbg !2177
  %next12 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2195
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next12, align 8, !dbg !2195
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %6, metadata !2173, metadata !DIExpression()), !dbg !2177
  br label %if.end32, !dbg !2196

if.else:                                          ; preds = %land.lhs.true9, %while.body
  %tobool13 = icmp eq %struct.bitmap_element_def* %a_elt.0, null, !dbg !2197
  br i1 %tobool13, label %if.else21, label %land.lhs.true14, !dbg !2200

land.lhs.true14:                                  ; preds = %if.else
  %tobool15 = icmp eq %struct.bitmap_element_def* %b_elt.0, null, !dbg !2201
  br i1 %tobool15, label %if.then19, label %lor.lhs.false, !dbg !2202

lor.lhs.false:                                    ; preds = %land.lhs.true14
  %indx16 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2203
  %7 = load i32, i32* %indx16, align 8, !dbg !2203
  %indx17 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2204
  %8 = load i32, i32* %indx17, align 8, !dbg !2204
  %cmp18 = icmp ugt i32 %7, %8, !dbg !2205
  br i1 %cmp18, label %if.else21, label %if.then19, !dbg !2206

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true14
  %next20 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !2207
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next20, align 8, !dbg !2207
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %9, metadata !2172, metadata !DIExpression()), !dbg !2177
  br label %if.end32, !dbg !2208

if.else21:                                        ; preds = %lor.lhs.false, %if.else
  %tobool22 = icmp eq %struct.bitmap_element_def* %b_elt.0, null, !dbg !2209
  br i1 %tobool22, label %if.end32, label %land.lhs.true23, !dbg !2211

land.lhs.true23:                                  ; preds = %if.else21
  br i1 %tobool13, label %if.then29, label %lor.lhs.false25, !dbg !2212

lor.lhs.false25:                                  ; preds = %land.lhs.true23
  %indx26 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2213
  %10 = load i32, i32* %indx26, align 8, !dbg !2213
  %indx27 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2214
  %11 = load i32, i32* %indx27, align 8, !dbg !2214
  %cmp28 = icmp ugt i32 %10, %11, !dbg !2215
  br i1 %cmp28, label %if.end32, label %if.then29, !dbg !2216

if.then29:                                        ; preds = %lor.lhs.false25, %land.lhs.true23
  %next30 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2217
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next30, align 8, !dbg !2217
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %12, metadata !2173, metadata !DIExpression()), !dbg !2177
  br label %if.end32, !dbg !2218

if.end32:                                         ; preds = %lor.lhs.false25, %if.else21, %if.then19, %if.then29, %if.then
  %b_elt.3 = phi %struct.bitmap_element_def* [ %6, %if.then ], [ %b_elt.0, %if.then19 ], [ %12, %if.then29 ], [ %b_elt.0, %lor.lhs.false25 ], [ null, %if.else21 ], !dbg !2177
  %a_elt.2 = phi %struct.bitmap_element_def* [ %5, %if.then ], [ %9, %if.then19 ], [ %a_elt.0, %if.then29 ], [ %a_elt.0, %lor.lhs.false25 ], [ %a_elt.0, %if.else21 ], !dbg !2219
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.2, metadata !2172, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.3, metadata !2173, metadata !DIExpression()), !dbg !2177
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %dst_prev_pnext.0, align 8, !dbg !2220
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %13, metadata !2174, metadata !DIExpression()), !dbg !2177
  %next33 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %13, i64 0, i32 0, !dbg !2221
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %next33, metadata !2175, metadata !DIExpression()), !dbg !2177
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next33, align 8, !dbg !2222
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %14, metadata !2171, metadata !DIExpression()), !dbg !2177
  br label %while.cond, !dbg !2182, !llvm.loop !2223

while.end:                                        ; preds = %while.cond
  %dst_elt.0.lcssa = phi %struct.bitmap_element_def* [ %dst_elt.0, %while.cond ], !dbg !2177
  %changed.0.lcssa = phi i8 [ %changed.0, %while.cond ], !dbg !2177
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !2171, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2176, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !2171, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2176, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !2171, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2176, metadata !DIExpression()), !dbg !2177
  %tobool34 = icmp eq %struct.bitmap_element_def* %dst_elt.0.lcssa, null, !dbg !2225
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !2227

if.then35:                                        ; preds = %while.end
  call void @llvm.dbg.value(metadata i8 1, metadata !2176, metadata !DIExpression()), !dbg !2177
  tail call fastcc void @bitmap_elt_clear_from(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* nonnull %dst_elt.0.lcssa) #7, !dbg !2228
  br label %if.end36, !dbg !2230

if.end36:                                         ; preds = %while.end, %if.then35
  %changed.1 = phi i8 [ 1, %if.then35 ], [ %changed.0.lcssa, %while.end ], !dbg !2177
  call void @llvm.dbg.value(metadata i8 %changed.1, metadata !2176, metadata !DIExpression()), !dbg !2177
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 1, !dbg !2231
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !2231
  %tobool37 = icmp ne %struct.bitmap_element_def* %15, null, !dbg !2231
  %16 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2231
  %tobool39 = icmp eq %struct.bitmap_element_def* %16, null, !dbg !2231
  %cmp42 = xor i1 %tobool39, %tobool37, !dbg !2231
  br i1 %cmp42, label %cond.end45, label %cond.true43, !dbg !2231

cond.true43:                                      ; preds = %if.end36
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1566, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2231
  %.pre = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !2232
  br label %cond.end45, !dbg !2231

cond.end45:                                       ; preds = %if.end36, %cond.true43
  %17 = phi %struct.bitmap_element_def* [ %15, %if.end36 ], [ %.pre, %cond.true43 ], !dbg !2232
  %tobool48 = icmp eq %struct.bitmap_element_def* %17, null, !dbg !2234
  br i1 %tobool48, label %if.end53, label %if.then49, !dbg !2235

if.then49:                                        ; preds = %cond.end45
  %indx51 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %17, i64 0, i32 2, !dbg !2236
  %18 = load i32, i32* %indx51, align 8, !dbg !2236
  %indx52 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 2, !dbg !2237
  store i32 %18, i32* %indx52, align 8, !dbg !2238
  br label %if.end53, !dbg !2239

if.end53:                                         ; preds = %cond.end45, %if.then49
  ret i8 %changed.1, !dbg !2240
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bitmap_elt_ior(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_elt, %struct.bitmap_element_def* %dst_prev, %struct.bitmap_element_def* %a_elt, %struct.bitmap_element_def* %b_elt, i8 zeroext %changed) unnamed_addr #0 !dbg !2241 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %dst, metadata !2245, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt, metadata !2246, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_prev, metadata !2247, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt, metadata !2248, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt, metadata !2249, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8 %changed, metadata !2250, metadata !DIExpression()), !dbg !2267
  %tobool = icmp ne %struct.bitmap_element_def* %a_elt, null, !dbg !2268
  %tobool1 = icmp ne %struct.bitmap_element_def* %b_elt, null, !dbg !2268
  %or.cond = or i1 %tobool, %tobool1, !dbg !2268
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !2268

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1475, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2268
  br label %cond.end, !dbg !2268

cond.end:                                         ; preds = %entry, %cond.true
  %or.cond1 = and i1 %tobool, %tobool1, !dbg !2269
  br i1 %or.cond1, label %land.lhs.true4, label %if.else50, !dbg !2269

land.lhs.true4:                                   ; preds = %cond.end
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt, i64 0, i32 2, !dbg !2270
  %0 = load i32, i32* %indx, align 8, !dbg !2270
  %indx5 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt, i64 0, i32 2, !dbg !2271
  %1 = load i32, i32* %indx5, align 8, !dbg !2271
  %cmp = icmp eq i32 %0, %1, !dbg !2272
  br i1 %cmp, label %if.then, label %if.else50, !dbg !2273

if.then:                                          ; preds = %land.lhs.true4
  %tobool6 = icmp eq i8 %changed, 0, !dbg !2274
  %tobool8 = icmp ne %struct.bitmap_element_def* %dst_elt, null, !dbg !2275
  %or.cond2 = and i1 %tobool6, %tobool8, !dbg !2276
  br i1 %or.cond2, label %land.lhs.true9, label %if.else, !dbg !2276

land.lhs.true9:                                   ; preds = %if.then
  %indx10 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt, i64 0, i32 2, !dbg !2277
  %2 = load i32, i32* %indx10, align 8, !dbg !2277
  %cmp12 = icmp eq i32 %2, %0, !dbg !2278
  br i1 %cmp12, label %for.cond.preheader, label %if.else, !dbg !2279

for.cond.preheader:                               ; preds = %land.lhs.true9
  br label %for.cond, !dbg !2280

for.cond:                                         ; preds = %for.cond.preheader, %if.end
  %indvars.iv = phi i64 [ 2, %for.cond.preheader ], [ %indvars.iv.next, %if.end ]
  %changed.addr.0 = phi i8 [ 0, %for.cond.preheader ], [ %changed.addr.1, %if.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2251, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 %changed.addr.0, metadata !2250, metadata !DIExpression()), !dbg !2267
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2282
  call void @llvm.dbg.value(metadata i32 undef, metadata !2251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2281
  %tobool14 = icmp eq i64 %indvars.iv, 0, !dbg !2280
  br i1 %tobool14, label %if.end67.loopexit, label %for.body, !dbg !2280

for.body:                                         ; preds = %for.cond
  %idxprom = and i64 %indvars.iv.next, 4294967295, !dbg !2283
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt, i64 0, i32 3, i64 %idxprom, !dbg !2283
  %3 = load i64, i64* %arrayidx, align 8, !dbg !2283
  %arrayidx17 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt, i64 0, i32 3, i64 %idxprom, !dbg !2284
  %4 = load i64, i64* %arrayidx17, align 8, !dbg !2284
  %or = or i64 %3, %4, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %or, metadata !2254, metadata !DIExpression()), !dbg !2286
  %arrayidx20 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt, i64 0, i32 3, i64 %idxprom, !dbg !2287
  %5 = load i64, i64* %arrayidx20, align 8, !dbg !2287
  %cmp21 = icmp eq i64 %or, %5, !dbg !2289
  br i1 %cmp21, label %if.end, label %if.then22, !dbg !2290

if.then22:                                        ; preds = %for.body
  store i64 %or, i64* %arrayidx20, align 8, !dbg !2291
  call void @llvm.dbg.value(metadata i8 1, metadata !2250, metadata !DIExpression()), !dbg !2267
  br label %if.end, !dbg !2293

if.end:                                           ; preds = %for.body, %if.then22
  %changed.addr.1 = phi i8 [ 1, %if.then22 ], [ %changed.addr.0, %for.body ]
  call void @llvm.dbg.value(metadata i8 %changed.addr.1, metadata !2250, metadata !DIExpression()), !dbg !2267
  br label %for.cond, !dbg !2294, !llvm.loop !2295

if.else:                                          ; preds = %if.then, %land.lhs.true9
  call void @llvm.dbg.value(metadata i8 1, metadata !2250, metadata !DIExpression()), !dbg !2267
  %tobool26 = icmp eq %struct.bitmap_element_def* %dst_elt, null, !dbg !2297
  br i1 %tobool26, label %if.then27, label %if.else29, !dbg !2299

if.then27:                                        ; preds = %if.else
  %call = tail call fastcc %struct.bitmap_element_def* @bitmap_elt_insert_after(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_prev, i32 %0) #7, !dbg !2300
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !2246, metadata !DIExpression()), !dbg !2267
  br label %if.end32, !dbg !2301

if.else29:                                        ; preds = %if.else
  %indx31 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt, i64 0, i32 2, !dbg !2302
  store i32 %0, i32* %indx31, align 8, !dbg !2303
  br label %if.end32

if.end32:                                         ; preds = %if.else29, %if.then27
  %dst_elt.addr.0 = phi %struct.bitmap_element_def* [ %dst_elt, %if.else29 ], [ %call, %if.then27 ]
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.addr.0, metadata !2246, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 2, metadata !2251, metadata !DIExpression()), !dbg !2281
  br label %for.cond33, !dbg !2304

for.cond33:                                       ; preds = %for.body36, %if.end32
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.body36 ], [ 2, %if.end32 ], !dbg !2305
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !2251, metadata !DIExpression()), !dbg !2281
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, -1, !dbg !2306
  call void @llvm.dbg.value(metadata i32 undef, metadata !2251, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2281
  %tobool35 = icmp eq i64 %indvars.iv4, 0, !dbg !2307
  br i1 %tobool35, label %if.end67.loopexit3, label %for.body36, !dbg !2307

for.body36:                                       ; preds = %for.cond33
  %idxprom39 = and i64 %indvars.iv.next5, 4294967295, !dbg !2308
  %arrayidx40 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt, i64 0, i32 3, i64 %idxprom39, !dbg !2308
  %6 = load i64, i64* %arrayidx40, align 8, !dbg !2308
  %arrayidx43 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt, i64 0, i32 3, i64 %idxprom39, !dbg !2309
  %7 = load i64, i64* %arrayidx43, align 8, !dbg !2309
  %or44 = or i64 %6, %7, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %or44, metadata !2260, metadata !DIExpression()), !dbg !2311
  %arrayidx47 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.addr.0, i64 0, i32 3, i64 %idxprom39, !dbg !2312
  store i64 %or44, i64* %arrayidx47, align 8, !dbg !2313
  br label %for.cond33, !dbg !2314, !llvm.loop !2315

if.else50:                                        ; preds = %land.lhs.true4, %cond.end
  %tobool51 = icmp eq %struct.bitmap_element_def* %b_elt, null, !dbg !2317
  br i1 %tobool51, label %if.end60, label %lor.lhs.false52, !dbg !2319

lor.lhs.false52:                                  ; preds = %if.else50
  %tobool53 = icmp eq %struct.bitmap_element_def* %a_elt, null, !dbg !2320
  br i1 %tobool53, label %if.else59, label %land.lhs.true54, !dbg !2321

land.lhs.true54:                                  ; preds = %lor.lhs.false52
  %indx55 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt, i64 0, i32 2, !dbg !2322
  %8 = load i32, i32* %indx55, align 8, !dbg !2322
  %indx56 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt, i64 0, i32 2, !dbg !2323
  %9 = load i32, i32* %indx56, align 8, !dbg !2323
  %cmp57 = icmp ult i32 %8, %9, !dbg !2324
  br i1 %cmp57, label %if.end60, label %if.else59, !dbg !2325

if.else59:                                        ; preds = %lor.lhs.false52, %land.lhs.true54
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt, metadata !2265, metadata !DIExpression()), !dbg !2326
  br label %if.end60

if.end60:                                         ; preds = %if.else50, %land.lhs.true54, %if.else59
  %src.0 = phi %struct.bitmap_element_def* [ %b_elt, %if.else59 ], [ %a_elt, %land.lhs.true54 ], [ %a_elt, %if.else50 ], !dbg !2327
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %src.0, metadata !2265, metadata !DIExpression()), !dbg !2326
  %tobool61 = icmp eq %struct.bitmap_element_def* %src.0, null, !dbg !2328
  br i1 %tobool61, label %cond.true62, label %cond.end64, !dbg !2328

cond.true62:                                      ; preds = %if.end60
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1518, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2328
  br label %cond.end64, !dbg !2328

cond.end64:                                       ; preds = %if.end60, %cond.true62
  %call66 = tail call fastcc zeroext i8 @bitmap_elt_copy(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_elt, %struct.bitmap_element_def* %dst_prev, %struct.bitmap_element_def* %src.0, i8 zeroext %changed) #7, !dbg !2329
  call void @llvm.dbg.value(metadata i8 %call66, metadata !2250, metadata !DIExpression()), !dbg !2267
  br label %if.end67

if.end67.loopexit:                                ; preds = %for.cond
  %changed.addr.0.lcssa = phi i8 [ %changed.addr.0, %for.cond ]
  call void @llvm.dbg.value(metadata i8 %changed.addr.0.lcssa, metadata !2250, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8 %changed.addr.0.lcssa, metadata !2250, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8 %changed.addr.0.lcssa, metadata !2250, metadata !DIExpression()), !dbg !2267
  br label %if.end67, !dbg !2330

if.end67.loopexit3:                               ; preds = %for.cond33
  br label %if.end67, !dbg !2330

if.end67:                                         ; preds = %if.end67.loopexit3, %if.end67.loopexit, %cond.end64
  %changed.addr.3 = phi i8 [ %call66, %cond.end64 ], [ %changed.addr.0.lcssa, %if.end67.loopexit ], [ 1, %if.end67.loopexit3 ], !dbg !2331
  call void @llvm.dbg.value(metadata i8 %changed.addr.3, metadata !2250, metadata !DIExpression()), !dbg !2267
  ret i8 %changed.addr.3, !dbg !2330
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) local_unnamed_addr #4 !dbg !2332 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !2334, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !2335, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* undef, metadata !2337, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* null, metadata !2338, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 0, metadata !2340, metadata !DIExpression()), !dbg !2341
  %cmp = icmp eq %struct.bitmap_head_def* %a, %b, !dbg !2342
  br i1 %cmp, label %cleanup, label %while.cond.preheader, !dbg !2344

while.cond.preheader:                             ; preds = %entry
  %first2 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !2345
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %first2, metadata !2339, metadata !DIExpression()), !dbg !2341
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %b, i64 0, i32 0, !dbg !2346
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8, !dbg !2346
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !2337, metadata !DIExpression()), !dbg !2341
  br label %while.cond, !dbg !2347

while.cond:                                       ; preds = %while.cond.preheader, %if.end14
  %a_prev_pnext.0 = phi %struct.bitmap_element_def** [ %next15, %if.end14 ], [ %first2, %while.cond.preheader ], !dbg !2341
  %a_prev.0 = phi %struct.bitmap_element_def* [ %5, %if.end14 ], [ null, %while.cond.preheader ], !dbg !2341
  %b_elt.0 = phi %struct.bitmap_element_def* [ %b_elt.2, %if.end14 ], [ %0, %while.cond.preheader ], !dbg !2341
  %a_elt.0.in = phi %struct.bitmap_element_def** [ %next15, %if.end14 ], [ %first2, %while.cond.preheader ]
  %changed.0 = phi i8 [ %changed.2, %if.end14 ], [ 0, %while.cond.preheader ], !dbg !2341
  %a_elt.0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %a_elt.0.in, align 8, !dbg !2341
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !2340, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !2336, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !2337, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_prev.0, metadata !2338, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %a_prev_pnext.0, metadata !2339, metadata !DIExpression()), !dbg !2341
  %tobool = icmp eq %struct.bitmap_element_def* %b_elt.0, null, !dbg !2347
  br i1 %tobool, label %while.end, label %while.body, !dbg !2347

while.body:                                       ; preds = %while.cond
  %tobool3 = icmp eq %struct.bitmap_element_def* %a_elt.0, null, !dbg !2348
  br i1 %tobool3, label %if.then6, label %lor.lhs.false, !dbg !2351

lor.lhs.false:                                    ; preds = %while.body
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2352
  %1 = load i32, i32* %indx, align 8, !dbg !2352
  %indx4 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2353
  %2 = load i32, i32* %indx4, align 8, !dbg !2353
  %cmp5 = icmp eq i32 %1, %2, !dbg !2354
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !2355

if.then6:                                         ; preds = %while.body, %lor.lhs.false
  %call = tail call fastcc zeroext i8 @bitmap_elt_ior(%struct.bitmap_head_def* %a, %struct.bitmap_element_def* %a_elt.0, %struct.bitmap_element_def* %a_prev.0, %struct.bitmap_element_def* %a_elt.0, %struct.bitmap_element_def* nonnull %b_elt.0, i8 zeroext %changed.0) #7, !dbg !2356
  call void @llvm.dbg.value(metadata i8 %call, metadata !2340, metadata !DIExpression()), !dbg !2341
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2358
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !2358
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %3, metadata !2337, metadata !DIExpression()), !dbg !2341
  br label %if.end14, !dbg !2359

if.else:                                          ; preds = %lor.lhs.false
  %cmp9 = icmp ugt i32 %1, %2, !dbg !2360
  br i1 %cmp9, label %if.then10, label %if.end14, !dbg !2362

if.then10:                                        ; preds = %if.else
  %call11 = tail call fastcc zeroext i8 @bitmap_elt_copy(%struct.bitmap_head_def* %a, %struct.bitmap_element_def* null, %struct.bitmap_element_def* %a_prev.0, %struct.bitmap_element_def* nonnull %b_elt.0, i8 zeroext %changed.0) #7, !dbg !2363
  call void @llvm.dbg.value(metadata i8 %call11, metadata !2340, metadata !DIExpression()), !dbg !2341
  %next12 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2365
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next12, align 8, !dbg !2365
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %4, metadata !2337, metadata !DIExpression()), !dbg !2341
  br label %if.end14, !dbg !2366

if.end14:                                         ; preds = %if.else, %if.then10, %if.then6
  %b_elt.2 = phi %struct.bitmap_element_def* [ %3, %if.then6 ], [ %4, %if.then10 ], [ %b_elt.0, %if.else ], !dbg !2367
  %changed.2 = phi i8 [ %call, %if.then6 ], [ %call11, %if.then10 ], [ %changed.0, %if.else ], !dbg !2367
  call void @llvm.dbg.value(metadata i8 %changed.2, metadata !2340, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.2, metadata !2337, metadata !DIExpression()), !dbg !2341
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %a_prev_pnext.0, align 8, !dbg !2368
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %5, metadata !2338, metadata !DIExpression()), !dbg !2341
  %next15 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 0, !dbg !2369
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %next15, metadata !2339, metadata !DIExpression()), !dbg !2341
  br label %while.cond, !dbg !2347, !llvm.loop !2370

while.end:                                        ; preds = %while.cond
  %changed.0.lcssa = phi i8 [ %changed.0, %while.cond ], !dbg !2341
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2340, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2340, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2340, metadata !DIExpression()), !dbg !2341
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 1, !dbg !2372
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !2372
  %tobool16 = icmp ne %struct.bitmap_element_def* %6, null, !dbg !2372
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first2, align 8, !dbg !2372
  %tobool18 = icmp eq %struct.bitmap_element_def* %7, null, !dbg !2372
  %cmp21 = xor i1 %tobool18, %tobool16, !dbg !2372
  br i1 %cmp21, label %cond.end, label %cond.true, !dbg !2372

cond.true:                                        ; preds = %while.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1605, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2372
  %.pre = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !2373
  br label %cond.end, !dbg !2372

cond.end:                                         ; preds = %while.end, %cond.true
  %8 = phi %struct.bitmap_element_def* [ %6, %while.end ], [ %.pre, %cond.true ], !dbg !2373
  %tobool23 = icmp eq %struct.bitmap_element_def* %8, null, !dbg !2375
  br i1 %tobool23, label %cleanup, label %if.then24, !dbg !2376

if.then24:                                        ; preds = %cond.end
  %indx26 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %8, i64 0, i32 2, !dbg !2377
  %9 = load i32, i32* %indx26, align 8, !dbg !2377
  %indx27 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 2, !dbg !2378
  store i32 %9, i32* %indx27, align 8, !dbg !2379
  br label %cleanup, !dbg !2380

cleanup:                                          ; preds = %cond.end, %if.then24, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ %changed.0.lcssa, %if.then24 ], [ %changed.0.lcssa, %cond.end ], !dbg !2341
  ret i8 %retval.0, !dbg !2381
}

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_xor(%struct.bitmap_head_def* %dst, %struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) local_unnamed_addr #4 !dbg !2382 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %dst, metadata !2384, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !2385, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !2386, metadata !DIExpression()), !dbg !2402
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 0, !dbg !2403
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2403
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !2387, metadata !DIExpression()), !dbg !2402
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !2404
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8, !dbg !2404
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !2388, metadata !DIExpression()), !dbg !2402
  %first2 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %b, i64 0, i32 0, !dbg !2405
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first2, align 8, !dbg !2405
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %2, metadata !2389, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* null, metadata !2390, metadata !DIExpression()), !dbg !2402
  %cmp = icmp ne %struct.bitmap_head_def* %dst, %a, !dbg !2406
  %cmp3 = icmp ne %struct.bitmap_head_def* %dst, %b, !dbg !2406
  %or.cond = and i1 %cmp, %cmp3, !dbg !2406
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !2406

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1621, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2406
  br label %cond.end, !dbg !2406

cond.end:                                         ; preds = %entry, %cond.true
  %cmp4 = icmp eq %struct.bitmap_head_def* %a, %b, !dbg !2407
  br i1 %cmp4, label %if.then, label %while.cond.preheader, !dbg !2409

while.cond.preheader:                             ; preds = %cond.end
  br label %while.cond, !dbg !2410

if.then:                                          ; preds = %cond.end
  tail call void @bitmap_clear(%struct.bitmap_head_def* %dst) #7, !dbg !2411
  br label %cleanup.cont, !dbg !2413

while.cond:                                       ; preds = %while.cond.preheader, %if.end56
  %dst_prev.0 = phi %struct.bitmap_element_def* [ %dst_prev.2, %if.end56 ], [ null, %while.cond.preheader ], !dbg !2402
  %b_elt.0 = phi %struct.bitmap_element_def* [ %b_elt.2, %if.end56 ], [ %2, %while.cond.preheader ], !dbg !2402
  %a_elt.0 = phi %struct.bitmap_element_def* [ %a_elt.2, %if.end56 ], [ %1, %while.cond.preheader ], !dbg !2402
  %dst_elt.0 = phi %struct.bitmap_element_def* [ %dst_elt.4, %if.end56 ], [ %0, %while.cond.preheader ], !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0, metadata !2387, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !2388, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !2389, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_prev.0, metadata !2390, metadata !DIExpression()), !dbg !2402
  %tobool = icmp ne %struct.bitmap_element_def* %a_elt.0, null, !dbg !2414
  %tobool5 = icmp ne %struct.bitmap_element_def* %b_elt.0, null, !dbg !2415
  %spec.select = or i1 %tobool5, %tobool, !dbg !2415
  br i1 %spec.select, label %while.body, label %while.end, !dbg !2410

while.body:                                       ; preds = %while.cond
  %or.cond1 = and i1 %tobool, %tobool5, !dbg !2416
  br i1 %or.cond1, label %land.lhs.true9, label %if.else31, !dbg !2416

land.lhs.true9:                                   ; preds = %while.body
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2417
  %3 = load i32, i32* %indx, align 8, !dbg !2417
  %indx10 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2418
  %4 = load i32, i32* %indx10, align 8, !dbg !2418
  %cmp11 = icmp eq i32 %3, %4, !dbg !2419
  br i1 %cmp11, label %if.then12, label %if.else31, !dbg !2420

if.then12:                                        ; preds = %land.lhs.true9
  call void @llvm.dbg.value(metadata i64 0, metadata !2395, metadata !DIExpression()), !dbg !2421
  %tobool13 = icmp eq %struct.bitmap_element_def* %dst_elt.0, null, !dbg !2422
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !2424

if.then14:                                        ; preds = %if.then12
  %call = tail call fastcc %struct.bitmap_element_def* @bitmap_elt_insert_after(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_prev.0, i32 %3) #7, !dbg !2425
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !2387, metadata !DIExpression()), !dbg !2402
  br label %if.end18, !dbg !2426

if.else:                                          ; preds = %if.then12
  %indx17 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.0, i64 0, i32 2, !dbg !2427
  store i32 %3, i32* %indx17, align 8, !dbg !2428
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %dst_elt.1 = phi %struct.bitmap_element_def* [ %dst_elt.0, %if.else ], [ %call, %if.then14 ], !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.1, metadata !2387, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i32 2, metadata !2391, metadata !DIExpression()), !dbg !2421
  br label %for.cond, !dbg !2429

for.cond:                                         ; preds = %for.body, %if.end18
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 2, %if.end18 ], !dbg !2430
  %ior.0 = phi i64 [ %or, %for.body ], [ 0, %if.end18 ], !dbg !2421
  call void @llvm.dbg.value(metadata i64 %ior.0, metadata !2395, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2391, metadata !DIExpression()), !dbg !2421
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2431
  call void @llvm.dbg.value(metadata i32 undef, metadata !2391, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2421
  %tobool19 = icmp eq i64 %indvars.iv, 0, !dbg !2432
  br i1 %tobool19, label %for.end, label %for.body, !dbg !2432

for.body:                                         ; preds = %for.cond
  %idxprom = and i64 %indvars.iv.next, 4294967295, !dbg !2433
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !2433
  %5 = load i64, i64* %arrayidx, align 8, !dbg !2433
  %arrayidx22 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !2434
  %6 = load i64, i64* %arrayidx22, align 8, !dbg !2434
  %xor = xor i64 %5, %6, !dbg !2435
  call void @llvm.dbg.value(metadata i64 %xor, metadata !2396, metadata !DIExpression()), !dbg !2436
  %or = or i64 %ior.0, %xor, !dbg !2437
  call void @llvm.dbg.value(metadata i64 %or, metadata !2395, metadata !DIExpression()), !dbg !2421
  %arrayidx25 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.1, i64 0, i32 3, i64 %idxprom, !dbg !2438
  store i64 %xor, i64* %arrayidx25, align 8, !dbg !2439
  br label %for.cond, !dbg !2440, !llvm.loop !2441

for.end:                                          ; preds = %for.cond
  %ior.0.lcssa = phi i64 [ %ior.0, %for.cond ], !dbg !2421
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !2395, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !2395, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !2395, metadata !DIExpression()), !dbg !2421
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !2443
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !2443
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %7, metadata !2388, metadata !DIExpression()), !dbg !2402
  %next26 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2444
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next26, align 8, !dbg !2444
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %8, metadata !2389, metadata !DIExpression()), !dbg !2402
  %tobool27 = icmp eq i64 %ior.0.lcssa, 0, !dbg !2445
  br i1 %tobool27, label %if.end56, label %if.then28, !dbg !2447

if.then28:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.1, metadata !2390, metadata !DIExpression()), !dbg !2402
  %next29 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.1, i64 0, i32 0, !dbg !2448
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next29, align 8, !dbg !2448
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %9, metadata !2387, metadata !DIExpression()), !dbg !2402
  br label %if.end56, !dbg !2450

if.else31:                                        ; preds = %land.lhs.true9, %while.body
  %tobool32 = icmp eq %struct.bitmap_element_def* %b_elt.0, null, !dbg !2451
  br i1 %tobool32, label %if.then38, label %lor.lhs.false, !dbg !2453

lor.lhs.false:                                    ; preds = %if.else31
  %tobool33 = icmp eq %struct.bitmap_element_def* %a_elt.0, null, !dbg !2454
  br i1 %tobool33, label %if.else40, label %land.lhs.true34, !dbg !2455

land.lhs.true34:                                  ; preds = %lor.lhs.false
  %indx35 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2456
  %10 = load i32, i32* %indx35, align 8, !dbg !2456
  %indx36 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2457
  %11 = load i32, i32* %indx36, align 8, !dbg !2457
  %cmp37 = icmp ult i32 %10, %11, !dbg !2458
  br i1 %cmp37, label %if.then38, label %if.else40, !dbg !2459

if.then38:                                        ; preds = %if.else31, %land.lhs.true34
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !2400, metadata !DIExpression()), !dbg !2460
  %next39 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !2461
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next39, align 8, !dbg !2461
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %12, metadata !2388, metadata !DIExpression()), !dbg !2402
  br label %if.end42, !dbg !2463

if.else40:                                        ; preds = %lor.lhs.false, %land.lhs.true34
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !2400, metadata !DIExpression()), !dbg !2460
  %next41 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2464
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next41, align 8, !dbg !2464
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %13, metadata !2389, metadata !DIExpression()), !dbg !2402
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then38
  %b_elt.1 = phi %struct.bitmap_element_def* [ %b_elt.0, %if.then38 ], [ %13, %if.else40 ], !dbg !2402
  %a_elt.1 = phi %struct.bitmap_element_def* [ %12, %if.then38 ], [ %a_elt.0, %if.else40 ], !dbg !2402
  %src.0 = phi %struct.bitmap_element_def* [ %a_elt.0, %if.then38 ], [ %b_elt.0, %if.else40 ], !dbg !2466
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %src.0, metadata !2400, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.1, metadata !2388, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.1, metadata !2389, metadata !DIExpression()), !dbg !2402
  %tobool43 = icmp eq %struct.bitmap_element_def* %dst_elt.0, null, !dbg !2467
  %indx48 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %src.0, i64 0, i32 2, !dbg !2469
  %14 = load i32, i32* %indx48, align 8, !dbg !2469
  br i1 %tobool43, label %if.then44, label %if.else47, !dbg !2470

if.then44:                                        ; preds = %if.end42
  %call46 = tail call fastcc %struct.bitmap_element_def* @bitmap_elt_insert_after(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_prev.0, i32 %14) #7, !dbg !2471
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call46, metadata !2387, metadata !DIExpression()), !dbg !2402
  br label %if.end50, !dbg !2472

if.else47:                                        ; preds = %if.end42
  %indx49 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.0, i64 0, i32 2, !dbg !2473
  store i32 %14, i32* %indx49, align 8, !dbg !2474
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then44
  %dst_elt.3 = phi %struct.bitmap_element_def* [ %dst_elt.0, %if.else47 ], [ %call46, %if.then44 ], !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.3, metadata !2387, metadata !DIExpression()), !dbg !2402
  %arraydecay = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.3, i64 0, i32 3, i64 0, !dbg !2475
  %15 = bitcast i64* %arraydecay to i8*, !dbg !2475
  %arraydecay53 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %src.0, i64 0, i32 3, i64 0, !dbg !2476
  %16 = bitcast i64* %arraydecay53 to i8*, !dbg !2476
  %call54 = tail call i8* @memcpy(i8* nonnull %15, i8* nonnull %16, i64 16) #6, !dbg !2477
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.3, metadata !2390, metadata !DIExpression()), !dbg !2402
  %next55 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %dst_elt.3, i64 0, i32 0, !dbg !2478
  %17 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next55, align 8, !dbg !2478
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %17, metadata !2387, metadata !DIExpression()), !dbg !2402
  br label %if.end56

if.end56:                                         ; preds = %for.end, %if.then28, %if.end50
  %dst_prev.2 = phi %struct.bitmap_element_def* [ %dst_elt.3, %if.end50 ], [ %dst_elt.1, %if.then28 ], [ %dst_prev.0, %for.end ], !dbg !2479
  %b_elt.2 = phi %struct.bitmap_element_def* [ %b_elt.1, %if.end50 ], [ %8, %if.then28 ], [ %8, %for.end ], !dbg !2402
  %a_elt.2 = phi %struct.bitmap_element_def* [ %a_elt.1, %if.end50 ], [ %7, %if.then28 ], [ %7, %for.end ], !dbg !2479
  %dst_elt.4 = phi %struct.bitmap_element_def* [ %17, %if.end50 ], [ %9, %if.then28 ], [ %dst_elt.1, %for.end ], !dbg !2479
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.4, metadata !2387, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.2, metadata !2388, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.2, metadata !2389, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_prev.2, metadata !2390, metadata !DIExpression()), !dbg !2402
  br label %while.cond, !dbg !2410, !llvm.loop !2480

while.end:                                        ; preds = %while.cond
  %dst_elt.0.lcssa = phi %struct.bitmap_element_def* [ %dst_elt.0, %while.cond ], !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !2387, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !2387, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !2387, metadata !DIExpression()), !dbg !2402
  %18 = bitcast %struct.bitmap_head_def* %dst to i64*, !dbg !2482
  %19 = load i64, i64* %18, align 8, !dbg !2482
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 1, !dbg !2483
  %20 = bitcast %struct.bitmap_element_def** %current to i64*, !dbg !2484
  store i64 %19, i64* %20, align 8, !dbg !2484
  tail call fastcc void @bitmap_elt_clear_from(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_elt.0.lcssa) #7, !dbg !2485
  %21 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !2486
  %tobool59 = icmp ne %struct.bitmap_element_def* %21, null, !dbg !2486
  %22 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2486
  %tobool61 = icmp eq %struct.bitmap_element_def* %22, null, !dbg !2486
  %cmp64 = xor i1 %tobool61, %tobool59, !dbg !2486
  br i1 %cmp64, label %cond.end67, label %cond.true65, !dbg !2486

cond.true65:                                      ; preds = %while.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1683, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2486
  %.pre = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !2487
  br label %cond.end67, !dbg !2486

cond.end67:                                       ; preds = %while.end, %cond.true65
  %23 = phi %struct.bitmap_element_def* [ %21, %while.end ], [ %.pre, %cond.true65 ], !dbg !2487
  %tobool70 = icmp eq %struct.bitmap_element_def* %23, null, !dbg !2489
  br i1 %tobool70, label %cleanup.cont, label %if.then71, !dbg !2490

if.then71:                                        ; preds = %cond.end67
  %indx73 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %23, i64 0, i32 2, !dbg !2491
  %24 = load i32, i32* %indx73, align 8, !dbg !2491
  %indx74 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 2, !dbg !2492
  store i32 %24, i32* %indx74, align 8, !dbg !2493
  br label %cleanup.cont, !dbg !2494

cleanup.cont:                                     ; preds = %cond.end67, %if.then, %if.then71
  ret void, !dbg !2495
}

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_xor_into(%struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) local_unnamed_addr #4 !dbg !2496 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !2498, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !2499, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* undef, metadata !2500, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* undef, metadata !2501, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* null, metadata !2502, metadata !DIExpression()), !dbg !2516
  %cmp = icmp eq %struct.bitmap_head_def* %a, %b, !dbg !2517
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !2519

while.cond.preheader:                             ; preds = %entry
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %b, i64 0, i32 0, !dbg !2520
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8, !dbg !2520
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !2501, metadata !DIExpression()), !dbg !2516
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !2521
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2521
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !2500, metadata !DIExpression()), !dbg !2516
  br label %while.cond, !dbg !2522

if.then:                                          ; preds = %entry
  tail call void @bitmap_clear(%struct.bitmap_head_def* %a) #7, !dbg !2523
  br label %cleanup.cont, !dbg !2525

while.cond:                                       ; preds = %while.cond.preheader, %if.end32
  %a_prev.0 = phi %struct.bitmap_element_def* [ %a_prev.3, %if.end32 ], [ null, %while.cond.preheader ], !dbg !2516
  %b_elt.0 = phi %struct.bitmap_element_def* [ %b_elt.2, %if.end32 ], [ %0, %while.cond.preheader ], !dbg !2516
  %a_elt.0 = phi %struct.bitmap_element_def* [ %a_elt.2, %if.end32 ], [ %1, %while.cond.preheader ], !dbg !2526
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !2500, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !2501, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_prev.0, metadata !2502, metadata !DIExpression()), !dbg !2516
  %tobool = icmp eq %struct.bitmap_element_def* %b_elt.0, null, !dbg !2522
  br i1 %tobool, label %while.end, label %while.body, !dbg !2522

while.body:                                       ; preds = %while.cond
  %tobool2 = icmp eq %struct.bitmap_element_def* %a_elt.0, null, !dbg !2527
  br i1 %tobool2, label %while.body.if.then5_crit_edge, label %lor.lhs.false, !dbg !2528

while.body.if.then5_crit_edge:                    ; preds = %while.body
  %indx6.phi.trans.insert = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2529
  %.pre = load i32, i32* %indx6.phi.trans.insert, align 8, !dbg !2530
  br label %if.then5, !dbg !2528

lor.lhs.false:                                    ; preds = %while.body
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2531
  %2 = load i32, i32* %indx, align 8, !dbg !2531
  %indx3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2532
  %3 = load i32, i32* %indx3, align 8, !dbg !2532
  %cmp4 = icmp ult i32 %2, %3, !dbg !2533
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !2534

if.then5:                                         ; preds = %while.body.if.then5_crit_edge, %lor.lhs.false
  %4 = phi i32 [ %.pre, %while.body.if.then5_crit_edge ], [ %2, %lor.lhs.false ], !dbg !2530
  %call = tail call fastcc %struct.bitmap_element_def* @bitmap_elt_insert_after(%struct.bitmap_head_def* %a, %struct.bitmap_element_def* %a_prev.0, i32 %4) #7, !dbg !2535
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !2503, metadata !DIExpression()), !dbg !2529
  %arraydecay = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %call, i64 0, i32 3, i64 0, !dbg !2536
  %5 = bitcast i64* %arraydecay to i8*, !dbg !2536
  %arraydecay8 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 3, i64 0, !dbg !2537
  %6 = bitcast i64* %arraydecay8 to i8*, !dbg !2537
  %call9 = tail call i8* @memcpy(i8* nonnull %5, i8* nonnull %6, i64 16) #6, !dbg !2538
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %call, metadata !2502, metadata !DIExpression()), !dbg !2516
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2539
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !2539
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %7, metadata !2501, metadata !DIExpression()), !dbg !2516
  br label %if.end32, !dbg !2540

if.else:                                          ; preds = %lor.lhs.false
  %cmp12 = icmp ult i32 %3, %2, !dbg !2541
  %next14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !2542
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next14, align 8, !dbg !2542
  br i1 %cmp12, label %if.end32, label %for.cond.preheader, !dbg !2543

for.cond.preheader:                               ; preds = %if.else
  br label %for.cond, !dbg !2544

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 2, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !2545
  %ior.0 = phi i64 [ 0, %for.cond.preheader ], [ %or, %for.body ], !dbg !2546
  call void @llvm.dbg.value(metadata i64 %ior.0, metadata !2510, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2507, metadata !DIExpression()), !dbg !2546
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2547
  call void @llvm.dbg.value(metadata i32 undef, metadata !2507, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2546
  %tobool18 = icmp eq i64 %indvars.iv, 0, !dbg !2544
  br i1 %tobool18, label %for.end, label %for.body, !dbg !2544

for.body:                                         ; preds = %for.cond
  %idxprom = and i64 %indvars.iv.next, 4294967295, !dbg !2548
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !2548
  %9 = load i64, i64* %arrayidx, align 8, !dbg !2548
  %arrayidx22 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !2549
  %10 = load i64, i64* %arrayidx22, align 8, !dbg !2549
  %xor = xor i64 %9, %10, !dbg !2550
  call void @llvm.dbg.value(metadata i64 %xor, metadata !2512, metadata !DIExpression()), !dbg !2551
  %or = or i64 %ior.0, %xor, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %or, metadata !2510, metadata !DIExpression()), !dbg !2546
  store i64 %xor, i64* %arrayidx, align 8, !dbg !2553
  br label %for.cond, !dbg !2554, !llvm.loop !2555

for.end:                                          ; preds = %for.cond
  %ior.0.lcssa = phi i64 [ %ior.0, %for.cond ], !dbg !2546
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !2510, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !2510, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !2510, metadata !DIExpression()), !dbg !2546
  %next26 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2557
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next26, align 8, !dbg !2557
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %11, metadata !2501, metadata !DIExpression()), !dbg !2516
  %tobool27 = icmp eq i64 %ior.0.lcssa, 0, !dbg !2558
  br i1 %tobool27, label %if.else29, label %if.end32, !dbg !2560

if.else29:                                        ; preds = %for.end
  tail call fastcc void @bitmap_element_free(%struct.bitmap_head_def* %a, %struct.bitmap_element_def* nonnull %a_elt.0) #7, !dbg !2561
  br label %if.end32

if.end32:                                         ; preds = %for.end, %if.else, %if.else29, %if.then5
  %a_prev.3 = phi %struct.bitmap_element_def* [ %call, %if.then5 ], [ %a_elt.0, %if.else ], [ %a_prev.0, %if.else29 ], [ %a_elt.0, %for.end ], !dbg !2562
  %b_elt.2 = phi %struct.bitmap_element_def* [ %7, %if.then5 ], [ %b_elt.0, %if.else ], [ %11, %if.else29 ], [ %11, %for.end ], !dbg !2516
  %a_elt.2 = phi %struct.bitmap_element_def* [ %a_elt.0, %if.then5 ], [ %8, %if.else ], [ %8, %if.else29 ], [ %8, %for.end ], !dbg !2516
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.2, metadata !2500, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.2, metadata !2501, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_prev.3, metadata !2502, metadata !DIExpression()), !dbg !2516
  br label %while.cond, !dbg !2522, !llvm.loop !2563

while.end:                                        ; preds = %while.cond
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 1, !dbg !2565
  %12 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !2565
  %tobool33 = icmp ne %struct.bitmap_element_def* %12, null, !dbg !2565
  %13 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2565
  %tobool35 = icmp eq %struct.bitmap_element_def* %13, null, !dbg !2565
  %cmp38 = xor i1 %tobool35, %tobool33, !dbg !2565
  br i1 %cmp38, label %cond.end, label %cond.true, !dbg !2565

cond.true:                                        ; preds = %while.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1740, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2565
  %.pre1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !2566
  br label %cond.end, !dbg !2565

cond.end:                                         ; preds = %while.end, %cond.true
  %14 = phi %struct.bitmap_element_def* [ %12, %while.end ], [ %.pre1, %cond.true ], !dbg !2566
  %tobool40 = icmp eq %struct.bitmap_element_def* %14, null, !dbg !2568
  br i1 %tobool40, label %cleanup.cont, label %if.then41, !dbg !2569

if.then41:                                        ; preds = %cond.end
  %indx43 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %14, i64 0, i32 2, !dbg !2570
  %15 = load i32, i32* %indx43, align 8, !dbg !2570
  %indx44 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 2, !dbg !2571
  store i32 %15, i32* %indx44, align 8, !dbg !2572
  br label %cleanup.cont, !dbg !2573

cleanup.cont:                                     ; preds = %cond.end, %if.then, %if.then41
  ret void, !dbg !2574
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @bitmap_equal_p(%struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) local_unnamed_addr #4 !dbg !2575 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !2579, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !2580, metadata !DIExpression()), !dbg !2584
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !2585
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %b, i64 0, i32 0, !dbg !2587
  br label %for.cond, !dbg !2588

for.cond:                                         ; preds = %for.inc, %entry
  %b_elt.0.in = phi %struct.bitmap_element_def** [ %first1, %entry ], [ %next13, %for.inc ]
  %a_elt.0.in = phi %struct.bitmap_element_def** [ %first, %entry ], [ %next, %for.inc ]
  %a_elt.0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %a_elt.0.in, align 8, !dbg !2589
  %b_elt.0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %b_elt.0.in, align 8, !dbg !2589
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !2581, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !2582, metadata !DIExpression()), !dbg !2584
  %tobool = icmp ne %struct.bitmap_element_def* %a_elt.0, null, !dbg !2590
  %tobool2 = icmp ne %struct.bitmap_element_def* %b_elt.0, null, !dbg !2592
  %spec.select = and i1 %tobool2, %tobool, !dbg !2592
  br i1 %spec.select, label %for.body, label %for.end14, !dbg !2593

for.body:                                         ; preds = %for.cond
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2594
  %0 = load i32, i32* %indx, align 8, !dbg !2594
  %indx3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2597
  %1 = load i32, i32* %indx3, align 8, !dbg !2597
  %cmp = icmp eq i32 %0, %1, !dbg !2598
  br i1 %cmp, label %for.cond4.preheader, label %cleanup.loopexit1, !dbg !2599

for.cond4.preheader:                              ; preds = %for.body
  br label %for.cond4, !dbg !2600

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ 2, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ], !dbg !2602
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2583, metadata !DIExpression()), !dbg !2584
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2603
  call void @llvm.dbg.value(metadata i32 undef, metadata !2583, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2584
  %tobool5 = icmp eq i64 %indvars.iv, 0, !dbg !2600
  br i1 %tobool5, label %for.inc, label %for.body6, !dbg !2600

for.body6:                                        ; preds = %for.cond4
  %idxprom = and i64 %indvars.iv.next, 4294967295, !dbg !2605
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !2605
  %2 = load i64, i64* %arrayidx, align 8, !dbg !2605
  %arrayidx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !2607
  %3 = load i64, i64* %arrayidx9, align 8, !dbg !2607
  %cmp10 = icmp eq i64 %2, %3, !dbg !2608
  br i1 %cmp10, label %for.cond4, label %cleanup.loopexit, !dbg !2609, !llvm.loop !2610

for.inc:                                          ; preds = %for.cond4
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !2612
  %next13 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2613
  br label %for.cond, !dbg !2614, !llvm.loop !2615

for.end14:                                        ; preds = %for.cond
  %a_elt.0.lcssa = phi %struct.bitmap_element_def* [ %a_elt.0, %for.cond ], !dbg !2589
  %b_elt.0.lcssa = phi %struct.bitmap_element_def* [ %b_elt.0, %for.cond ], !dbg !2589
  %tobool15 = icmp eq %struct.bitmap_element_def* %a_elt.0.lcssa, null, !dbg !2617
  br i1 %tobool15, label %land.rhs16, label %land.end18, !dbg !2618

land.rhs16:                                       ; preds = %for.end14
  %tobool17 = icmp eq %struct.bitmap_element_def* %b_elt.0.lcssa, null, !dbg !2619
  %phitmp = zext i1 %tobool17 to i8
  br label %land.end18

land.end18:                                       ; preds = %for.end14, %land.rhs16
  %4 = phi i8 [ 0, %for.end14 ], [ %phitmp, %land.rhs16 ]
  br label %cleanup, !dbg !2620

cleanup.loopexit:                                 ; preds = %for.body6
  br label %cleanup, !dbg !2621

cleanup.loopexit1:                                ; preds = %for.body
  br label %cleanup, !dbg !2621

cleanup:                                          ; preds = %cleanup.loopexit1, %cleanup.loopexit, %land.end18
  %retval.0 = phi i8 [ %4, %land.end18 ], [ 0, %cleanup.loopexit ], [ 0, %cleanup.loopexit1 ], !dbg !2584
  ret i8 %retval.0, !dbg !2621
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @bitmap_intersect_p(%struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) local_unnamed_addr #4 !dbg !2622 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !2624, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !2625, metadata !DIExpression()), !dbg !2629
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !2630
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2630
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !2626, metadata !DIExpression()), !dbg !2629
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %b, i64 0, i32 0, !dbg !2632
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8, !dbg !2632
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !2627, metadata !DIExpression()), !dbg !2629
  br label %for.cond, !dbg !2633

for.cond:                                         ; preds = %if.end21, %entry
  %b_elt.0 = phi %struct.bitmap_element_def* [ %1, %entry ], [ %b_elt.2, %if.end21 ], !dbg !2634
  %a_elt.0 = phi %struct.bitmap_element_def* [ %0, %entry ], [ %a_elt.2, %if.end21 ], !dbg !2635
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !2626, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !2627, metadata !DIExpression()), !dbg !2629
  %tobool = icmp ne %struct.bitmap_element_def* %a_elt.0, null, !dbg !2636
  %tobool2 = icmp ne %struct.bitmap_element_def* %b_elt.0, null, !dbg !2638
  %spec.select = and i1 %tobool2, %tobool, !dbg !2638
  br i1 %spec.select, label %for.body, label %cleanup.loopexit1, !dbg !2639

for.body:                                         ; preds = %for.cond
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2640
  %2 = load i32, i32* %indx, align 8, !dbg !2640
  %indx3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2643
  %3 = load i32, i32* %indx3, align 8, !dbg !2643
  %cmp = icmp ult i32 %2, %3, !dbg !2644
  br i1 %cmp, label %if.then, label %if.else, !dbg !2645

if.then:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !2646
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !2646
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %4, metadata !2626, metadata !DIExpression()), !dbg !2629
  br label %if.end21, !dbg !2647

if.else:                                          ; preds = %for.body
  %cmp6 = icmp ult i32 %3, %2, !dbg !2648
  br i1 %cmp6, label %if.then7, label %for.cond10.preheader, !dbg !2650

for.cond10.preheader:                             ; preds = %if.else
  br label %for.cond10, !dbg !2651

if.then7:                                         ; preds = %if.else
  %next8 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2654
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next8, align 8, !dbg !2654
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %5, metadata !2627, metadata !DIExpression()), !dbg !2629
  br label %if.end21, !dbg !2655

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %indvars.iv = phi i64 [ 2, %for.cond10.preheader ], [ %indvars.iv.next, %for.body12 ], !dbg !2656
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2628, metadata !DIExpression()), !dbg !2629
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2657
  call void @llvm.dbg.value(metadata i32 undef, metadata !2628, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2629
  %tobool11 = icmp eq i64 %indvars.iv, 0, !dbg !2651
  br i1 %tobool11, label %for.end, label %for.body12, !dbg !2651

for.body12:                                       ; preds = %for.cond10
  %idxprom = and i64 %indvars.iv.next, 4294967295, !dbg !2659
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !2659
  %6 = load i64, i64* %arrayidx, align 8, !dbg !2659
  %arrayidx15 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !2661
  %7 = load i64, i64* %arrayidx15, align 8, !dbg !2661
  %and = and i64 %6, %7, !dbg !2662
  %tobool16 = icmp eq i64 %and, 0, !dbg !2662
  br i1 %tobool16, label %for.cond10, label %cleanup.loopexit, !dbg !2663, !llvm.loop !2664

for.end:                                          ; preds = %for.cond10
  %next18 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !2666
  %8 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next18, align 8, !dbg !2666
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %8, metadata !2626, metadata !DIExpression()), !dbg !2629
  %next19 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2667
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next19, align 8, !dbg !2667
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %9, metadata !2627, metadata !DIExpression()), !dbg !2629
  br label %if.end21

if.end21:                                         ; preds = %if.then7, %for.end, %if.then
  %b_elt.2 = phi %struct.bitmap_element_def* [ %b_elt.0, %if.then ], [ %5, %if.then7 ], [ %9, %for.end ], !dbg !2635
  %a_elt.2 = phi %struct.bitmap_element_def* [ %4, %if.then ], [ %a_elt.0, %if.then7 ], [ %8, %for.end ], !dbg !2635
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.2, metadata !2626, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.2, metadata !2627, metadata !DIExpression()), !dbg !2629
  br label %for.cond, !dbg !2668, !llvm.loop !2669

cleanup.loopexit:                                 ; preds = %for.body12
  br label %cleanup, !dbg !2671

cleanup.loopexit1:                                ; preds = %for.cond
  br label %cleanup, !dbg !2671

cleanup:                                          ; preds = %cleanup.loopexit1, %cleanup.loopexit
  %retval.0 = phi i8 [ 1, %cleanup.loopexit ], [ 0, %cleanup.loopexit1 ], !dbg !2629
  ret i8 %retval.0, !dbg !2671
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @bitmap_intersect_compl_p(%struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) local_unnamed_addr #4 !dbg !2672 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !2674, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !2675, metadata !DIExpression()), !dbg !2679
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !2680
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2680
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !2676, metadata !DIExpression()), !dbg !2679
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %b, i64 0, i32 0, !dbg !2682
  br label %for.cond, !dbg !2683

for.cond:                                         ; preds = %if.end20, %entry
  %b_elt.0.in = phi %struct.bitmap_element_def** [ %first1, %entry ], [ %b_elt.1.in, %if.end20 ]
  %a_elt.0 = phi %struct.bitmap_element_def* [ %0, %entry ], [ %a_elt.1, %if.end20 ], !dbg !2684
  %b_elt.0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %b_elt.0.in, align 8, !dbg !2685
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !2676, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !2677, metadata !DIExpression()), !dbg !2679
  %tobool = icmp ne %struct.bitmap_element_def* %a_elt.0, null, !dbg !2686
  %tobool2 = icmp ne %struct.bitmap_element_def* %b_elt.0, null, !dbg !2688
  %spec.select = and i1 %tobool2, %tobool, !dbg !2688
  br i1 %spec.select, label %for.body, label %for.end21, !dbg !2689

for.body:                                         ; preds = %for.cond
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2690
  %1 = load i32, i32* %indx, align 8, !dbg !2690
  %indx3 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2693
  %2 = load i32, i32* %indx3, align 8, !dbg !2693
  %cmp = icmp ult i32 %1, %2, !dbg !2694
  br i1 %cmp, label %cleanup.loopexit1, label %if.else, !dbg !2695

if.else:                                          ; preds = %for.body
  %cmp6 = icmp ult i32 %2, %1, !dbg !2696
  br i1 %cmp6, label %if.then7, label %for.cond9.preheader, !dbg !2698

for.cond9.preheader:                              ; preds = %if.else
  br label %for.cond9, !dbg !2699

if.then7:                                         ; preds = %if.else
  br label %if.end20, !dbg !2702

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %indvars.iv = phi i64 [ 2, %for.cond9.preheader ], [ %indvars.iv.next, %for.body11 ], !dbg !2703
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2678, metadata !DIExpression()), !dbg !2679
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2704
  call void @llvm.dbg.value(metadata i32 undef, metadata !2678, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2679
  %tobool10 = icmp eq i64 %indvars.iv, 0, !dbg !2699
  br i1 %tobool10, label %for.end, label %for.body11, !dbg !2699

for.body11:                                       ; preds = %for.cond9
  %idxprom = and i64 %indvars.iv.next, 4294967295, !dbg !2706
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !2706
  %3 = load i64, i64* %arrayidx, align 8, !dbg !2706
  %arrayidx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !2708
  %4 = load i64, i64* %arrayidx14, align 8, !dbg !2708
  %neg = xor i64 %4, -1, !dbg !2709
  %and = and i64 %3, %neg, !dbg !2710
  %tobool15 = icmp eq i64 %and, 0, !dbg !2710
  br i1 %tobool15, label %for.cond9, label %cleanup.loopexit, !dbg !2711, !llvm.loop !2712

for.end:                                          ; preds = %for.cond9
  %next17 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !2714
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next17, align 8, !dbg !2714
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %5, metadata !2676, metadata !DIExpression()), !dbg !2679
  br label %if.end20

if.end20:                                         ; preds = %if.then7, %for.end
  %a_elt.1 = phi %struct.bitmap_element_def* [ %a_elt.0, %if.then7 ], [ %5, %for.end ], !dbg !2685
  %b_elt.1.in = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2715
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.1, metadata !2676, metadata !DIExpression()), !dbg !2679
  br label %for.cond, !dbg !2716, !llvm.loop !2717

for.end21:                                        ; preds = %for.cond
  %tobool.lcssa = phi i1 [ %tobool, %for.cond ], !dbg !2686
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !2676, metadata !DIExpression()), !dbg !2679
  %conv23 = zext i1 %tobool.lcssa to i8, !dbg !2719
  br label %cleanup, !dbg !2720

cleanup.loopexit:                                 ; preds = %for.body11
  br label %cleanup, !dbg !2721

cleanup.loopexit1:                                ; preds = %for.body
  br label %cleanup, !dbg !2721

cleanup:                                          ; preds = %cleanup.loopexit1, %cleanup.loopexit, %for.end21
  %retval.0 = phi i8 [ %conv23, %for.end21 ], [ 1, %cleanup.loopexit ], [ 1, %cleanup.loopexit1 ], !dbg !2679
  ret i8 %retval.0, !dbg !2721
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @bitmap_ior_and_compl(%struct.bitmap_head_def* %dst, %struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b, %struct.bitmap_head_def* %kill) local_unnamed_addr #4 !dbg !2722 {
entry:
  %tmp_elt = alloca %struct.bitmap_element_def, align 8
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %dst, metadata !2726, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !2727, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !2728, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %kill, metadata !2729, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 0, metadata !2730, metadata !DIExpression()), !dbg !2748
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 0, !dbg !2749
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2749
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !2731, metadata !DIExpression()), !dbg !2748
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !2750
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8, !dbg !2750
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !2732, metadata !DIExpression()), !dbg !2748
  %first2 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %b, i64 0, i32 0, !dbg !2751
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first2, align 8, !dbg !2751
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %2, metadata !2733, metadata !DIExpression()), !dbg !2748
  %first3 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %kill, i64 0, i32 0, !dbg !2752
  %3 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first3, align 8, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %3, metadata !2734, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* null, metadata !2735, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %first, metadata !2736, metadata !DIExpression()), !dbg !2748
  %cmp = icmp ne %struct.bitmap_head_def* %dst, %a, !dbg !2753
  %cmp5 = icmp ne %struct.bitmap_head_def* %dst, %b, !dbg !2753
  %or.cond = and i1 %cmp, %cmp5, !dbg !2753
  %cmp7 = icmp ne %struct.bitmap_head_def* %dst, %kill, !dbg !2753
  %or.cond1 = and i1 %or.cond, %cmp7, !dbg !2753
  br i1 %or.cond1, label %cond.end, label %cond.true, !dbg !2753

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1839, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2753
  br label %cond.end, !dbg !2753

cond.end:                                         ; preds = %entry, %cond.true
  %cmp8 = icmp eq %struct.bitmap_head_def* %b, %kill, !dbg !2754
  br i1 %cmp8, label %if.then, label %lor.lhs.false, !dbg !2756

lor.lhs.false:                                    ; preds = %cond.end
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first2, align 8, !dbg !2757
  %tobool = icmp eq %struct.bitmap_element_def* %4, null, !dbg !2757
  br i1 %tobool, label %if.then, label %if.end13, !dbg !2758

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %call = tail call zeroext i8 @bitmap_equal_p(%struct.bitmap_head_def* %dst, %struct.bitmap_head_def* %a) #7, !dbg !2759
  %tobool10 = icmp eq i8 %call, 0, !dbg !2761
  %conv = zext i1 %tobool10 to i8, !dbg !2761
  call void @llvm.dbg.value(metadata i8 %conv, metadata !2730, metadata !DIExpression()), !dbg !2748
  br i1 %tobool10, label %if.then12, label %cleanup, !dbg !2762

if.then12:                                        ; preds = %if.then
  tail call void @bitmap_copy(%struct.bitmap_head_def* %dst, %struct.bitmap_head_def* %a) #7, !dbg !2763
  br label %cleanup, !dbg !2763

if.end13:                                         ; preds = %lor.lhs.false
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first3, align 8, !dbg !2765
  %tobool15 = icmp eq %struct.bitmap_element_def* %5, null, !dbg !2765
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !2767

if.then16:                                        ; preds = %if.end13
  %call17 = tail call zeroext i8 @bitmap_ior(%struct.bitmap_head_def* %dst, %struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) #7, !dbg !2768
  br label %cleanup, !dbg !2769

if.end18:                                         ; preds = %if.end13
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8, !dbg !2770
  %tobool20 = icmp eq %struct.bitmap_element_def* %6, null, !dbg !2770
  br i1 %tobool20, label %if.then21, label %while.cond.preheader, !dbg !2772

while.cond.preheader:                             ; preds = %if.end18
  %7 = bitcast %struct.bitmap_element_def* %tmp_elt to i8*, !dbg !2773
  %indx52 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %tmp_elt, i64 0, i32 2, !dbg !2773
  br label %while.cond, !dbg !2774

if.then21:                                        ; preds = %if.end18
  %call22 = tail call zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def* %dst, %struct.bitmap_head_def* %b, %struct.bitmap_head_def* %kill) #7, !dbg !2775
  br label %cleanup, !dbg !2776

while.cond:                                       ; preds = %while.cond.preheader, %if.end116
  %dst_prev_pnext.0 = phi %struct.bitmap_element_def** [ %dst_prev_pnext.1, %if.end116 ], [ %first, %while.cond.preheader ], !dbg !2748
  %dst_prev.0 = phi %struct.bitmap_element_def* [ %dst_prev.1, %if.end116 ], [ null, %while.cond.preheader ], !dbg !2748
  %kill_elt.0 = phi %struct.bitmap_element_def* [ %kill_elt.3, %if.end116 ], [ %3, %while.cond.preheader ], !dbg !2748
  %b_elt.0 = phi %struct.bitmap_element_def* [ %b_elt.4, %if.end116 ], [ %2, %while.cond.preheader ], !dbg !2748
  %a_elt.0 = phi %struct.bitmap_element_def* [ %a_elt.5, %if.end116 ], [ %1, %while.cond.preheader ], !dbg !2748
  %dst_elt.0 = phi %struct.bitmap_element_def* [ %dst_elt.1, %if.end116 ], [ %0, %while.cond.preheader ], !dbg !2748
  %changed.0 = phi i8 [ %changed.2, %if.end116 ], [ 0, %while.cond.preheader ], !dbg !2748
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !2730, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0, metadata !2731, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !2732, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !2733, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %kill_elt.0, metadata !2734, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_prev.0, metadata !2735, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %dst_prev_pnext.0, metadata !2736, metadata !DIExpression()), !dbg !2748
  %tobool24 = icmp ne %struct.bitmap_element_def* %a_elt.0, null, !dbg !2777
  %tobool25 = icmp ne %struct.bitmap_element_def* %b_elt.0, null, !dbg !2778
  %spec.select = or i1 %tobool25, %tobool24, !dbg !2778
  br i1 %spec.select, label %while.body, label %while.end117, !dbg !2774

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata i8 0, metadata !2737, metadata !DIExpression()), !dbg !2779
  %tobool26 = icmp eq %struct.bitmap_element_def* %b_elt.0, null, !dbg !2780
  br i1 %tobool26, label %if.end34, label %while.cond28.preheader, !dbg !2782

while.cond28.preheader:                           ; preds = %while.body
  %indx30 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2783
  br label %while.cond28, !dbg !2784

while.cond28:                                     ; preds = %while.cond28.preheader, %while.body33
  %kill_elt.1 = phi %struct.bitmap_element_def* [ %10, %while.body33 ], [ %kill_elt.0, %while.cond28.preheader ], !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %kill_elt.1, metadata !2734, metadata !DIExpression()), !dbg !2748
  %tobool29 = icmp eq %struct.bitmap_element_def* %kill_elt.1, null, !dbg !2785
  br i1 %tobool29, label %if.end34.loopexit, label %land.rhs, !dbg !2786

land.rhs:                                         ; preds = %while.cond28
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %kill_elt.1, i64 0, i32 2, !dbg !2787
  %8 = load i32, i32* %indx, align 8, !dbg !2787
  %9 = load i32, i32* %indx30, align 8, !dbg !2788
  %cmp31 = icmp ult i32 %8, %9, !dbg !2789
  br i1 %cmp31, label %while.body33, label %if.end34.loopexit, !dbg !2784

while.body33:                                     ; preds = %land.rhs
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %kill_elt.1, i64 0, i32 0, !dbg !2790
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !2790
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %10, metadata !2734, metadata !DIExpression()), !dbg !2748
  br label %while.cond28, !dbg !2784, !llvm.loop !2791

if.end34.loopexit:                                ; preds = %land.rhs, %while.cond28
  %kill_elt.1.lcssa = phi %struct.bitmap_element_def* [ %kill_elt.1, %land.rhs ], [ %kill_elt.1, %while.cond28 ], !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %kill_elt.1.lcssa, metadata !2734, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %kill_elt.1.lcssa, metadata !2734, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %kill_elt.1.lcssa, metadata !2734, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %kill_elt.1.lcssa, metadata !2734, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %kill_elt.1.lcssa, metadata !2734, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %kill_elt.1.lcssa, metadata !2734, metadata !DIExpression()), !dbg !2748
  br label %if.end34, !dbg !2792

if.end34:                                         ; preds = %if.end34.loopexit, %while.body
  %kill_elt.2 = phi %struct.bitmap_element_def* [ %kill_elt.0, %while.body ], [ %kill_elt.1.lcssa, %if.end34.loopexit ], !dbg !2793
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %kill_elt.2, metadata !2734, metadata !DIExpression()), !dbg !2748
  %tobool37 = icmp ne %struct.bitmap_element_def* %kill_elt.2, null, !dbg !2794
  %or.cond2 = and i1 %tobool25, %tobool37, !dbg !2795
  br i1 %or.cond2, label %land.lhs.true38, label %if.else, !dbg !2795

land.lhs.true38:                                  ; preds = %if.end34
  %indx39 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %kill_elt.2, i64 0, i32 2, !dbg !2796
  %11 = load i32, i32* %indx39, align 8, !dbg !2796
  %indx40 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2797
  %12 = load i32, i32* %indx40, align 8, !dbg !2797
  %cmp41 = icmp eq i32 %11, %12, !dbg !2798
  br i1 %cmp41, label %land.lhs.true43, label %if.else, !dbg !2799

land.lhs.true43:                                  ; preds = %land.lhs.true38
  %tobool44 = icmp eq %struct.bitmap_element_def* %a_elt.0, null, !dbg !2800
  br i1 %tobool44, label %if.then50, label %lor.lhs.false45, !dbg !2801

lor.lhs.false45:                                  ; preds = %land.lhs.true43
  %indx46 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2802
  %13 = load i32, i32* %indx46, align 8, !dbg !2802
  %cmp48 = icmp ult i32 %13, %11, !dbg !2803
  br i1 %cmp48, label %if.else, label %if.then50, !dbg !2804

if.then50:                                        ; preds = %lor.lhs.false45, %land.lhs.true43
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #8, !dbg !2805
  call void @llvm.dbg.value(metadata i64 0, metadata !2743, metadata !DIExpression()), !dbg !2773
  store i32 %11, i32* %indx52, align 8, !dbg !2806
  call void @llvm.dbg.value(metadata i32 2, metadata !2742, metadata !DIExpression()), !dbg !2773
  br label %for.cond, !dbg !2807

for.cond:                                         ; preds = %for.body, %if.then50
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 2, %if.then50 ], !dbg !2808
  %ior.0 = phi i64 [ %or, %for.body ], [ 0, %if.then50 ], !dbg !2773
  call void @llvm.dbg.value(metadata i64 %ior.0, metadata !2743, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2742, metadata !DIExpression()), !dbg !2773
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2809
  call void @llvm.dbg.value(metadata i32 undef, metadata !2742, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2773
  %tobool53 = icmp eq i64 %indvars.iv, 0, !dbg !2810
  br i1 %tobool53, label %for.end, label %for.body, !dbg !2810

for.body:                                         ; preds = %for.cond
  %idxprom = and i64 %indvars.iv.next, 4294967295, !dbg !2811
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 3, i64 %idxprom, !dbg !2811
  %14 = load i64, i64* %arrayidx, align 8, !dbg !2811
  %arrayidx56 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %kill_elt.2, i64 0, i32 3, i64 %idxprom, !dbg !2812
  %15 = load i64, i64* %arrayidx56, align 8, !dbg !2812
  %neg = xor i64 %15, -1, !dbg !2813
  %and = and i64 %14, %neg, !dbg !2814
  call void @llvm.dbg.value(metadata i64 %and, metadata !2744, metadata !DIExpression()), !dbg !2815
  %or = or i64 %ior.0, %and, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %or, metadata !2743, metadata !DIExpression()), !dbg !2773
  %arrayidx59 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %tmp_elt, i64 0, i32 3, i64 %idxprom, !dbg !2817
  store i64 %and, i64* %arrayidx59, align 8, !dbg !2818
  br label %for.cond, !dbg !2819, !llvm.loop !2820

for.end:                                          ; preds = %for.cond
  %ior.0.lcssa = phi i64 [ %ior.0, %for.cond ], !dbg !2773
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !2743, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !2743, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 %ior.0.lcssa, metadata !2743, metadata !DIExpression()), !dbg !2773
  %tobool60 = icmp eq i64 %ior.0.lcssa, 0, !dbg !2822
  br i1 %tobool60, label %if.end72, label %if.then61, !dbg !2824

if.then61:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %tmp_elt, metadata !2739, metadata !DIExpression(DW_OP_deref)), !dbg !2773
  %call62 = call fastcc zeroext i8 @bitmap_elt_ior(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_elt.0, %struct.bitmap_element_def* %dst_prev.0, %struct.bitmap_element_def* %a_elt.0, %struct.bitmap_element_def* nonnull %tmp_elt, i8 zeroext %changed.0) #7, !dbg !2825
  call void @llvm.dbg.value(metadata i8 %call62, metadata !2730, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 1, metadata !2737, metadata !DIExpression()), !dbg !2779
  br i1 %tobool44, label %if.end72, label %land.lhs.true64, !dbg !2827

land.lhs.true64:                                  ; preds = %if.then61
  %indx65 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2829
  %16 = load i32, i32* %indx65, align 8, !dbg !2829
  %17 = load i32, i32* %indx40, align 8, !dbg !2830
  %cmp67 = icmp eq i32 %16, %17, !dbg !2831
  br i1 %cmp67, label %if.then69, label %if.end72, !dbg !2832

if.then69:                                        ; preds = %land.lhs.true64
  %next70 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !2833
  %18 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next70, align 8, !dbg !2833
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %18, metadata !2732, metadata !DIExpression()), !dbg !2748
  br label %if.end72, !dbg !2834

if.end72:                                         ; preds = %if.then61, %for.end, %land.lhs.true64, %if.then69
  %a_elt.2 = phi %struct.bitmap_element_def* [ %a_elt.0, %for.end ], [ %18, %if.then69 ], [ %a_elt.0, %land.lhs.true64 ], [ null, %if.then61 ], !dbg !2748
  %changed.1 = phi i8 [ %changed.0, %for.end ], [ %call62, %if.then69 ], [ %call62, %land.lhs.true64 ], [ %call62, %if.then61 ], !dbg !2748
  %new_element.0 = phi i8 [ 0, %for.end ], [ 1, %if.then69 ], [ 1, %land.lhs.true64 ], [ 1, %if.then61 ], !dbg !2779
  call void @llvm.dbg.value(metadata i8 %new_element.0, metadata !2737, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i8 %changed.1, metadata !2730, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.2, metadata !2732, metadata !DIExpression()), !dbg !2748
  %next73 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2835
  %19 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next73, align 8, !dbg !2835
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %19, metadata !2733, metadata !DIExpression()), !dbg !2748
  %next74 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %kill_elt.2, i64 0, i32 0, !dbg !2836
  %20 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next74, align 8, !dbg !2836
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %20, metadata !2734, metadata !DIExpression()), !dbg !2748
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #8, !dbg !2837
  br label %if.end112, !dbg !2838

if.else:                                          ; preds = %lor.lhs.false45, %land.lhs.true38, %if.end34
  %call75 = call fastcc zeroext i8 @bitmap_elt_ior(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* %dst_elt.0, %struct.bitmap_element_def* %dst_prev.0, %struct.bitmap_element_def* %a_elt.0, %struct.bitmap_element_def* %b_elt.0, i8 zeroext %changed.0) #7, !dbg !2839
  call void @llvm.dbg.value(metadata i8 %call75, metadata !2730, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 1, metadata !2737, metadata !DIExpression()), !dbg !2779
  %or.cond3 = and i1 %tobool24, %tobool25, !dbg !2841
  br i1 %or.cond3, label %land.lhs.true79, label %if.else87, !dbg !2841

land.lhs.true79:                                  ; preds = %if.else
  %indx80 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2843
  %21 = load i32, i32* %indx80, align 8, !dbg !2843
  %indx81 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2844
  %22 = load i32, i32* %indx81, align 8, !dbg !2844
  %cmp82 = icmp eq i32 %21, %22, !dbg !2845
  br i1 %cmp82, label %if.then84, label %if.else87, !dbg !2846

if.then84:                                        ; preds = %land.lhs.true79
  %next85 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !2847
  %23 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next85, align 8, !dbg !2847
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %23, metadata !2732, metadata !DIExpression()), !dbg !2748
  %next86 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2849
  %24 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next86, align 8, !dbg !2849
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %24, metadata !2733, metadata !DIExpression()), !dbg !2748
  br label %if.end112, !dbg !2850

if.else87:                                        ; preds = %land.lhs.true79, %if.else
  %tobool88 = icmp eq %struct.bitmap_element_def* %a_elt.0, null, !dbg !2851
  br i1 %tobool88, label %if.else98, label %land.lhs.true89, !dbg !2854

land.lhs.true89:                                  ; preds = %if.else87
  br i1 %tobool26, label %if.then96, label %lor.lhs.false91, !dbg !2855

lor.lhs.false91:                                  ; preds = %land.lhs.true89
  %indx92 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2856
  %25 = load i32, i32* %indx92, align 8, !dbg !2856
  %indx93 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2857
  %26 = load i32, i32* %indx93, align 8, !dbg !2857
  %cmp94 = icmp ugt i32 %25, %26, !dbg !2858
  br i1 %cmp94, label %if.else98, label %if.then96, !dbg !2859

if.then96:                                        ; preds = %lor.lhs.false91, %land.lhs.true89
  %next97 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 0, !dbg !2860
  %27 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next97, align 8, !dbg !2860
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %27, metadata !2732, metadata !DIExpression()), !dbg !2748
  br label %if.end112, !dbg !2861

if.else98:                                        ; preds = %lor.lhs.false91, %if.else87
  br i1 %tobool26, label %if.end112, label %land.lhs.true100, !dbg !2862

land.lhs.true100:                                 ; preds = %if.else98
  br i1 %tobool88, label %if.then107, label %lor.lhs.false102, !dbg !2864

lor.lhs.false102:                                 ; preds = %land.lhs.true100
  %indx103 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 2, !dbg !2865
  %28 = load i32, i32* %indx103, align 8, !dbg !2865
  %indx104 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.0, i64 0, i32 2, !dbg !2866
  %29 = load i32, i32* %indx104, align 8, !dbg !2866
  %cmp105 = icmp ugt i32 %28, %29, !dbg !2867
  br i1 %cmp105, label %if.end112, label %if.then107, !dbg !2868

if.then107:                                       ; preds = %lor.lhs.false102, %land.lhs.true100
  %next108 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.0, i64 0, i32 0, !dbg !2869
  %30 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next108, align 8, !dbg !2869
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %30, metadata !2733, metadata !DIExpression()), !dbg !2748
  br label %if.end112, !dbg !2870

if.end112:                                        ; preds = %lor.lhs.false102, %if.else98, %if.then84, %if.then107, %if.then96, %if.end72
  %kill_elt.3 = phi %struct.bitmap_element_def* [ %20, %if.end72 ], [ %kill_elt.2, %if.then96 ], [ %kill_elt.2, %if.then107 ], [ %kill_elt.2, %lor.lhs.false102 ], [ %kill_elt.2, %if.else98 ], [ %kill_elt.2, %if.then84 ], !dbg !2748
  %b_elt.4 = phi %struct.bitmap_element_def* [ %19, %if.end72 ], [ %b_elt.0, %if.then96 ], [ %30, %if.then107 ], [ %b_elt.0, %lor.lhs.false102 ], [ null, %if.else98 ], [ %24, %if.then84 ], !dbg !2871
  %a_elt.5 = phi %struct.bitmap_element_def* [ %a_elt.2, %if.end72 ], [ %27, %if.then96 ], [ %a_elt.0, %if.then107 ], [ %a_elt.0, %lor.lhs.false102 ], [ %a_elt.0, %if.else98 ], [ %23, %if.then84 ], !dbg !2871
  %changed.2 = phi i8 [ %changed.1, %if.end72 ], [ %call75, %if.then96 ], [ %call75, %if.then107 ], [ %call75, %lor.lhs.false102 ], [ %call75, %if.else98 ], [ %call75, %if.then84 ], !dbg !2871
  %new_element.1 = phi i8 [ %new_element.0, %if.end72 ], [ 1, %if.then96 ], [ 1, %if.then107 ], [ 1, %lor.lhs.false102 ], [ 1, %if.else98 ], [ 1, %if.then84 ], !dbg !2871
  call void @llvm.dbg.value(metadata i8 %new_element.1, metadata !2737, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i8 %changed.2, metadata !2730, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.5, metadata !2732, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.4, metadata !2733, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %kill_elt.3, metadata !2734, metadata !DIExpression()), !dbg !2748
  %tobool113 = icmp eq i8 %new_element.1, 0, !dbg !2872
  br i1 %tobool113, label %if.end116, label %if.then114, !dbg !2874

if.then114:                                       ; preds = %if.end112
  %31 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %dst_prev_pnext.0, align 8, !dbg !2875
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %31, metadata !2735, metadata !DIExpression()), !dbg !2748
  %next115 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %31, i64 0, i32 0, !dbg !2877
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %next115, metadata !2736, metadata !DIExpression()), !dbg !2748
  %32 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next115, align 8, !dbg !2878
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %32, metadata !2731, metadata !DIExpression()), !dbg !2748
  br label %if.end116, !dbg !2879

if.end116:                                        ; preds = %if.end112, %if.then114
  %dst_prev_pnext.1 = phi %struct.bitmap_element_def** [ %next115, %if.then114 ], [ %dst_prev_pnext.0, %if.end112 ], !dbg !2748
  %dst_prev.1 = phi %struct.bitmap_element_def* [ %31, %if.then114 ], [ %dst_prev.0, %if.end112 ], !dbg !2748
  %dst_elt.1 = phi %struct.bitmap_element_def* [ %32, %if.then114 ], [ %dst_elt.0, %if.end112 ], !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.1, metadata !2731, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_prev.1, metadata !2735, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %dst_prev_pnext.1, metadata !2736, metadata !DIExpression()), !dbg !2748
  br label %while.cond, !dbg !2774, !llvm.loop !2880

while.end117:                                     ; preds = %while.cond
  %dst_elt.0.lcssa = phi %struct.bitmap_element_def* [ %dst_elt.0, %while.cond ], !dbg !2748
  %changed.0.lcssa = phi i8 [ %changed.0, %while.cond ], !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !2731, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2730, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !2731, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2730, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %dst_elt.0.lcssa, metadata !2731, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2730, metadata !DIExpression()), !dbg !2748
  %tobool118 = icmp eq %struct.bitmap_element_def* %dst_elt.0.lcssa, null, !dbg !2882
  br i1 %tobool118, label %if.end120, label %if.then119, !dbg !2884

if.then119:                                       ; preds = %while.end117
  call void @llvm.dbg.value(metadata i8 1, metadata !2730, metadata !DIExpression()), !dbg !2748
  call fastcc void @bitmap_elt_clear_from(%struct.bitmap_head_def* %dst, %struct.bitmap_element_def* nonnull %dst_elt.0.lcssa) #7, !dbg !2885
  br label %if.end120, !dbg !2887

if.end120:                                        ; preds = %while.end117, %if.then119
  %changed.3 = phi i8 [ 1, %if.then119 ], [ %changed.0.lcssa, %while.end117 ], !dbg !2748
  call void @llvm.dbg.value(metadata i8 %changed.3, metadata !2730, metadata !DIExpression()), !dbg !2748
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 1, !dbg !2888
  %33 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !2888
  %tobool121 = icmp ne %struct.bitmap_element_def* %33, null, !dbg !2888
  %34 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2888
  %tobool125 = icmp eq %struct.bitmap_element_def* %34, null, !dbg !2888
  %cmp128 = xor i1 %tobool125, %tobool121, !dbg !2888
  br i1 %cmp128, label %cond.end132, label %cond.true130, !dbg !2888

cond.true130:                                     ; preds = %if.end120
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1922, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2888
  %.pre = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !2889
  br label %cond.end132, !dbg !2888

cond.end132:                                      ; preds = %if.end120, %cond.true130
  %35 = phi %struct.bitmap_element_def* [ %33, %if.end120 ], [ %.pre, %cond.true130 ], !dbg !2889
  %tobool135 = icmp eq %struct.bitmap_element_def* %35, null, !dbg !2891
  br i1 %tobool135, label %cleanup, label %if.then136, !dbg !2892

if.then136:                                       ; preds = %cond.end132
  %indx138 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %35, i64 0, i32 2, !dbg !2893
  %36 = load i32, i32* %indx138, align 8, !dbg !2893
  %indx139 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %dst, i64 0, i32 2, !dbg !2894
  store i32 %36, i32* %indx139, align 8, !dbg !2895
  br label %cleanup, !dbg !2896

cleanup:                                          ; preds = %cond.end132, %if.then136, %if.then, %if.then12, %if.then21, %if.then16
  %retval.0 = phi i8 [ %call22, %if.then21 ], [ %call17, %if.then16 ], [ %conv, %if.then12 ], [ %conv, %if.then ], [ %changed.3, %if.then136 ], [ %changed.3, %cond.end132 ], !dbg !2748
  ret i8 %retval.0, !dbg !2897
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @bitmap_ior_and_compl_into(%struct.bitmap_head_def* %a, %struct.bitmap_head_def* %from1, %struct.bitmap_head_def* %from2) local_unnamed_addr #4 !dbg !2898 {
entry:
  %tmp = alloca %struct.bitmap_head_def, align 8
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !2900, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %from1, metadata !2901, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %from2, metadata !2902, metadata !DIExpression()), !dbg !2905
  %0 = bitcast %struct.bitmap_head_def* %tmp to i8*, !dbg !2906
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !2906
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %tmp, metadata !2903, metadata !DIExpression(DW_OP_deref)), !dbg !2905
  call fastcc void @bitmap_initialize_stat(%struct.bitmap_head_def* nonnull %tmp, %struct.bitmap_obstack* nonnull @bitmap_default_obstack) #7, !dbg !2907
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %tmp, metadata !2903, metadata !DIExpression(DW_OP_deref)), !dbg !2905
  %call = call zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def* nonnull %tmp, %struct.bitmap_head_def* %from1, %struct.bitmap_head_def* %from2) #7, !dbg !2908
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %tmp, metadata !2903, metadata !DIExpression(DW_OP_deref)), !dbg !2905
  %call1 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %a, %struct.bitmap_head_def* nonnull %tmp) #7, !dbg !2909
  call void @llvm.dbg.value(metadata i8 %call1, metadata !2904, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %tmp, metadata !2903, metadata !DIExpression(DW_OP_deref)), !dbg !2905
  call void @bitmap_clear(%struct.bitmap_head_def* nonnull %tmp) #7, !dbg !2910
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !2911
  ret i8 %call1, !dbg !2912
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @bitmap_ior_and_into(%struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b, %struct.bitmap_head_def* %c) local_unnamed_addr #4 !dbg !2913 {
entry:
  %and_elt = alloca %struct.bitmap_element_def, align 8
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %a, metadata !2915, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %b, metadata !2916, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %c, metadata !2917, metadata !DIExpression()), !dbg !2929
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 0, !dbg !2930
  %0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2930
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %0, metadata !2918, metadata !DIExpression()), !dbg !2929
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %b, i64 0, i32 0, !dbg !2931
  %1 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first1, align 8, !dbg !2931
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %1, metadata !2919, metadata !DIExpression()), !dbg !2929
  %first2 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %c, i64 0, i32 0, !dbg !2932
  %2 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first2, align 8, !dbg !2932
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %2, metadata !2920, metadata !DIExpression()), !dbg !2929
  %3 = bitcast %struct.bitmap_element_def* %and_elt to i8*, !dbg !2933
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #8, !dbg !2933
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* null, metadata !2922, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %first, metadata !2923, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 0, metadata !2924, metadata !DIExpression()), !dbg !2929
  %cmp = icmp eq %struct.bitmap_head_def* %b, %c, !dbg !2934
  br i1 %cmp, label %if.then, label %if.end, !dbg !2936

if.then:                                          ; preds = %entry
  %call = tail call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %a, %struct.bitmap_head_def* %b) #7, !dbg !2937
  br label %cleanup80, !dbg !2938

if.end:                                           ; preds = %entry
  %tobool = icmp eq %struct.bitmap_element_def* %1, null, !dbg !2939
  br i1 %tobool, label %cleanup80, label %lor.lhs.false, !dbg !2941

lor.lhs.false:                                    ; preds = %if.end
  %tobool6 = icmp eq %struct.bitmap_element_def* %2, null, !dbg !2942
  br i1 %tobool6, label %cleanup80, label %if.end8, !dbg !2943

if.end8:                                          ; preds = %lor.lhs.false
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %and_elt, i64 0, i32 2, !dbg !2944
  store i32 -1, i32* %indx, align 8, !dbg !2945
  br label %while.cond, !dbg !2946

while.cond:                                       ; preds = %while.cond.backedge, %if.end8
  %changed.0 = phi i8 [ 0, %if.end8 ], [ %changed.4, %while.cond.backedge ], !dbg !2947
  %a_prev_pnext.0 = phi %struct.bitmap_element_def** [ %first, %if.end8 ], [ %a_prev_pnext.2, %while.cond.backedge ], !dbg !2948
  %a_prev.0 = phi %struct.bitmap_element_def* [ null, %if.end8 ], [ %a_prev.2, %while.cond.backedge ], !dbg !2949
  %c_elt.0 = phi %struct.bitmap_element_def* [ %2, %if.end8 ], [ %c_elt.3, %while.cond.backedge ], !dbg !2950
  %b_elt.0 = phi %struct.bitmap_element_def* [ %1, %if.end8 ], [ %b_elt.3, %while.cond.backedge ], !dbg !2929
  %a_elt.0 = phi %struct.bitmap_element_def* [ %0, %if.end8 ], [ %a_elt.2, %while.cond.backedge ], !dbg !2951
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.0, metadata !2918, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.0, metadata !2919, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %c_elt.0, metadata !2920, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_prev.0, metadata !2922, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %a_prev_pnext.0, metadata !2923, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !2924, metadata !DIExpression()), !dbg !2929
  %tobool9 = icmp ne %struct.bitmap_element_def* %b_elt.0, null, !dbg !2952
  %tobool10 = icmp ne %struct.bitmap_element_def* %c_elt.0, null, !dbg !2953
  %spec.select = and i1 %tobool10, %tobool9, !dbg !2953
  br i1 %spec.select, label %while.cond11.preheader, label %done, !dbg !2946

while.cond11.preheader:                           ; preds = %while.cond
  br label %while.cond11, !dbg !2954

while.cond11:                                     ; preds = %while.cond11.preheader, %if.end27
  %c_elt.1 = phi %struct.bitmap_element_def* [ %c_elt.2, %if.end27 ], [ %c_elt.0, %while.cond11.preheader ], !dbg !2950
  %b_elt.1 = phi %struct.bitmap_element_def* [ %b_elt.2, %if.end27 ], [ %b_elt.0, %while.cond11.preheader ], !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.1, metadata !2919, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %c_elt.1, metadata !2920, metadata !DIExpression()), !dbg !2929
  %indx12 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.1, i64 0, i32 2, !dbg !2955
  %4 = load i32, i32* %indx12, align 8, !dbg !2955
  %indx13 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %c_elt.1, i64 0, i32 2, !dbg !2956
  %5 = load i32, i32* %indx13, align 8, !dbg !2956
  %cmp14 = icmp eq i32 %4, %5, !dbg !2957
  br i1 %cmp14, label %while.end, label %while.body15, !dbg !2954

while.body15:                                     ; preds = %while.cond11
  %cmp18 = icmp ult i32 %4, %5, !dbg !2958
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !2961

if.then19:                                        ; preds = %while.body15
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.1, i64 0, i32 0, !dbg !2962
  %6 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8, !dbg !2962
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %6, metadata !2919, metadata !DIExpression()), !dbg !2929
  %tobool20 = icmp eq %struct.bitmap_element_def* %6, null, !dbg !2964
  br i1 %tobool20, label %cleanup.loopexit1, label %if.end27, !dbg !2966

if.else:                                          ; preds = %while.body15
  %next23 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %c_elt.1, i64 0, i32 0, !dbg !2967
  %7 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next23, align 8, !dbg !2967
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %7, metadata !2920, metadata !DIExpression()), !dbg !2929
  %tobool24 = icmp eq %struct.bitmap_element_def* %7, null, !dbg !2969
  br i1 %tobool24, label %cleanup.loopexit1, label %if.end27, !dbg !2971

if.end27:                                         ; preds = %if.then19, %if.else
  %c_elt.2 = phi %struct.bitmap_element_def* [ %c_elt.1, %if.then19 ], [ %7, %if.else ], !dbg !2929
  %b_elt.2 = phi %struct.bitmap_element_def* [ %6, %if.then19 ], [ %b_elt.1, %if.else ], !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.2, metadata !2919, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %c_elt.2, metadata !2920, metadata !DIExpression()), !dbg !2929
  br label %while.cond11, !dbg !2954, !llvm.loop !2972

while.end:                                        ; preds = %while.cond11
  %c_elt.1.lcssa = phi %struct.bitmap_element_def* [ %c_elt.1, %while.cond11 ], !dbg !2950
  %b_elt.1.lcssa = phi %struct.bitmap_element_def* [ %b_elt.1, %while.cond11 ], !dbg !2929
  %.lcssa = phi i32 [ %4, %while.cond11 ], !dbg !2955
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %c_elt.1.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.1.lcssa, metadata !2919, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %c_elt.1.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.1.lcssa, metadata !2919, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %c_elt.1.lcssa, metadata !2920, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.1.lcssa, metadata !2919, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64 0, metadata !2926, metadata !DIExpression()), !dbg !2974
  store i32 %.lcssa, i32* %indx, align 8, !dbg !2975
  call void @llvm.dbg.value(metadata i32 2, metadata !2925, metadata !DIExpression()), !dbg !2929
  br label %for.cond, !dbg !2976

for.cond:                                         ; preds = %for.body, %while.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 2, %while.end ], !dbg !2978
  %overall.0 = phi i64 [ %or, %for.body ], [ 0, %while.end ], !dbg !2974
  call void @llvm.dbg.value(metadata i64 %overall.0, metadata !2926, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2925, metadata !DIExpression()), !dbg !2929
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2979
  call void @llvm.dbg.value(metadata i32 undef, metadata !2925, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2929
  %tobool30 = icmp eq i64 %indvars.iv, 0, !dbg !2981
  br i1 %tobool30, label %for.end, label %for.body, !dbg !2981

for.body:                                         ; preds = %for.cond
  %idxprom = and i64 %indvars.iv.next, 4294967295, !dbg !2982
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.1.lcssa, i64 0, i32 3, i64 %idxprom, !dbg !2982
  %8 = load i64, i64* %arrayidx, align 8, !dbg !2982
  %arrayidx33 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %c_elt.1.lcssa, i64 0, i32 3, i64 %idxprom, !dbg !2984
  %9 = load i64, i64* %arrayidx33, align 8, !dbg !2984
  %and = and i64 %8, %9, !dbg !2985
  %arrayidx36 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %and_elt, i64 0, i32 3, i64 %idxprom, !dbg !2986
  store i64 %and, i64* %arrayidx36, align 8, !dbg !2987
  %or = or i64 %overall.0, %and, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %or, metadata !2926, metadata !DIExpression()), !dbg !2974
  br label %for.cond, !dbg !2989, !llvm.loop !2990

for.end:                                          ; preds = %for.cond
  %overall.0.lcssa = phi i64 [ %overall.0, %for.cond ], !dbg !2974
  call void @llvm.dbg.value(metadata i64 %overall.0.lcssa, metadata !2926, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %overall.0.lcssa, metadata !2926, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %overall.0.lcssa, metadata !2926, metadata !DIExpression()), !dbg !2974
  %next40 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %b_elt.1.lcssa, i64 0, i32 0, !dbg !2992
  %10 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next40, align 8, !dbg !2992
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %10, metadata !2919, metadata !DIExpression()), !dbg !2929
  %next41 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %c_elt.1.lcssa, i64 0, i32 0, !dbg !2993
  %11 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next41, align 8, !dbg !2993
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %11, metadata !2920, metadata !DIExpression()), !dbg !2929
  %tobool42 = icmp eq i64 %overall.0.lcssa, 0, !dbg !2994
  br i1 %tobool42, label %cleanup, label %do.body.preheader, !dbg !2996, !llvm.loop !2997

do.body.preheader:                                ; preds = %for.end
  br label %do.body, !dbg !2999

do.body:                                          ; preds = %do.body.preheader, %if.end58
  %12 = phi i32 [ %16, %if.end58 ], [ %.lcssa, %do.body.preheader ]
  %changed.1 = phi i8 [ %changed.3, %if.end58 ], [ %changed.0, %do.body.preheader ], !dbg !2929
  %a_prev_pnext.1 = phi %struct.bitmap_element_def** [ %next59, %if.end58 ], [ %a_prev_pnext.0, %do.body.preheader ], !dbg !2929
  %a_prev.1 = phi %struct.bitmap_element_def* [ %14, %if.end58 ], [ %a_prev.0, %do.body.preheader ], !dbg !2929
  %a_elt.1 = phi %struct.bitmap_element_def* [ %15, %if.end58 ], [ %a_elt.0, %do.body.preheader ], !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.1, metadata !2918, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_prev.1, metadata !2922, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %a_prev_pnext.1, metadata !2923, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 %changed.1, metadata !2924, metadata !DIExpression()), !dbg !2929
  %tobool45 = icmp eq %struct.bitmap_element_def* %a_elt.1, null, !dbg !3000
  br i1 %tobool45, label %cond.false, label %cond.true, !dbg !3000

cond.true:                                        ; preds = %do.body
  %indx46 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %a_elt.1, i64 0, i32 2, !dbg !3002
  %13 = load i32, i32* %indx46, align 8, !dbg !3002
  br label %cond.end, !dbg !3000

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !3000

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %12, %cond.false ], !dbg !3000
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2925, metadata !DIExpression()), !dbg !2929
  %cmp49 = icmp eq i32 %cond, %12, !dbg !3003
  br i1 %cmp49, label %if.then50, label %if.else52, !dbg !3005

if.then50:                                        ; preds = %cond.end
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %and_elt, metadata !2921, metadata !DIExpression(DW_OP_deref)), !dbg !2929
  %call51 = call fastcc zeroext i8 @bitmap_elt_ior(%struct.bitmap_head_def* %a, %struct.bitmap_element_def* %a_elt.1, %struct.bitmap_element_def* %a_prev.1, %struct.bitmap_element_def* %a_elt.1, %struct.bitmap_element_def* nonnull %and_elt, i8 zeroext %changed.1) #7, !dbg !3006
  call void @llvm.dbg.value(metadata i8 %call51, metadata !2924, metadata !DIExpression()), !dbg !2929
  br label %if.end58, !dbg !3007

if.else52:                                        ; preds = %cond.end
  %cmp54 = icmp ugt i32 %cond, %12, !dbg !3008
  br i1 %cmp54, label %if.then55, label %if.end58, !dbg !3010

if.then55:                                        ; preds = %if.else52
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %and_elt, metadata !2921, metadata !DIExpression(DW_OP_deref)), !dbg !2929
  %call56 = call fastcc zeroext i8 @bitmap_elt_copy(%struct.bitmap_head_def* %a, %struct.bitmap_element_def* null, %struct.bitmap_element_def* %a_prev.1, %struct.bitmap_element_def* nonnull %and_elt, i8 zeroext %changed.1) #7, !dbg !3011
  call void @llvm.dbg.value(metadata i8 %call56, metadata !2924, metadata !DIExpression()), !dbg !2929
  br label %if.end58, !dbg !3012

if.end58:                                         ; preds = %if.else52, %if.then55, %if.then50
  %changed.3 = phi i8 [ %call51, %if.then50 ], [ %call56, %if.then55 ], [ %changed.1, %if.else52 ], !dbg !3013
  call void @llvm.dbg.value(metadata i8 %changed.3, metadata !2924, metadata !DIExpression()), !dbg !2929
  %14 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %a_prev_pnext.1, align 8, !dbg !3014
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %14, metadata !2922, metadata !DIExpression()), !dbg !2929
  %next59 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %14, i64 0, i32 0, !dbg !3015
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %next59, metadata !2923, metadata !DIExpression()), !dbg !2929
  %15 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next59, align 8, !dbg !3016
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %15, metadata !2918, metadata !DIExpression()), !dbg !2929
  %16 = load i32, i32* %indx, align 8, !dbg !3017
  %cmp61 = icmp ult i32 %cond, %16, !dbg !3018
  br i1 %cmp61, label %do.body, label %cleanup.loopexit, !dbg !3019, !llvm.loop !3020

cleanup.loopexit:                                 ; preds = %if.end58
  %changed.3.lcssa = phi i8 [ %changed.3, %if.end58 ], !dbg !3013
  %.lcssa20 = phi %struct.bitmap_element_def* [ %14, %if.end58 ], !dbg !3014
  %next59.lcssa = phi %struct.bitmap_element_def** [ %next59, %if.end58 ], !dbg !3015
  %.lcssa19 = phi %struct.bitmap_element_def* [ %15, %if.end58 ], !dbg !3016
  call void @llvm.dbg.value(metadata i8 %changed.3.lcssa, metadata !2924, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 %changed.3.lcssa, metadata !2924, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 %changed.3.lcssa, metadata !2924, metadata !DIExpression()), !dbg !2929
  br label %cleanup

cleanup.loopexit1:                                ; preds = %if.else, %if.then19
  %c_elt.3.ph = phi %struct.bitmap_element_def* [ null, %if.else ], [ %c_elt.1, %if.then19 ]
  %b_elt.3.ph = phi %struct.bitmap_element_def* [ %b_elt.1, %if.else ], [ null, %if.then19 ]
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit1, %cleanup.loopexit, %for.end
  %changed.4 = phi i8 [ %changed.0, %for.end ], [ %changed.3.lcssa, %cleanup.loopexit ], [ %changed.0, %cleanup.loopexit1 ], !dbg !2929
  %a_prev_pnext.2 = phi %struct.bitmap_element_def** [ %a_prev_pnext.0, %for.end ], [ %next59.lcssa, %cleanup.loopexit ], [ %a_prev_pnext.0, %cleanup.loopexit1 ], !dbg !2929
  %a_prev.2 = phi %struct.bitmap_element_def* [ %a_prev.0, %for.end ], [ %.lcssa20, %cleanup.loopexit ], [ %a_prev.0, %cleanup.loopexit1 ], !dbg !2929
  %c_elt.3 = phi %struct.bitmap_element_def* [ %11, %for.end ], [ %11, %cleanup.loopexit ], [ %c_elt.3.ph, %cleanup.loopexit1 ], !dbg !2929
  %b_elt.3 = phi %struct.bitmap_element_def* [ %10, %for.end ], [ %10, %cleanup.loopexit ], [ %b_elt.3.ph, %cleanup.loopexit1 ], !dbg !2929
  %a_elt.2 = phi %struct.bitmap_element_def* [ %a_elt.0, %for.end ], [ %.lcssa19, %cleanup.loopexit ], [ %a_elt.0, %cleanup.loopexit1 ], !dbg !2929
  %cleanup.dest.slot.0 = phi i32 [ 2, %for.end ], [ 0, %cleanup.loopexit ], [ 6, %cleanup.loopexit1 ]
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_elt.2, metadata !2918, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %b_elt.3, metadata !2919, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %c_elt.3, metadata !2920, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %a_prev.2, metadata !2922, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def** %a_prev_pnext.2, metadata !2923, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8 %changed.4, metadata !2924, metadata !DIExpression()), !dbg !2929
  switch i32 %cleanup.dest.slot.0, label %cleanup80.loopexit [
    i32 0, label %while.cond.backedge
    i32 2, label %while.cond.backedge
    i32 6, label %done
  ]

while.cond.backedge:                              ; preds = %cleanup, %cleanup
  br label %while.cond, !dbg !2929, !llvm.loop !2997

done:                                             ; preds = %while.cond, %cleanup
  %changed.5 = phi i8 [ %changed.4, %cleanup ], [ %changed.0, %while.cond ], !dbg !2947
  call void @llvm.dbg.value(metadata i8 %changed.5, metadata !2924, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.label(metadata !2928), !dbg !3022
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 1, !dbg !3023
  %17 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !3023
  %tobool63 = icmp ne %struct.bitmap_element_def* %17, null, !dbg !3023
  %18 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !3023
  %tobool65 = icmp eq %struct.bitmap_element_def* %18, null, !dbg !3023
  %cmp68 = xor i1 %tobool65, %tobool63, !dbg !3023
  br i1 %cmp68, label %cond.end71, label %cond.true69, !dbg !3023

cond.true69:                                      ; preds = %done
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 2018, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3023
  %.pre = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %current, align 8, !dbg !3024
  br label %cond.end71, !dbg !3023

cond.end71:                                       ; preds = %done, %cond.true69
  %19 = phi %struct.bitmap_element_def* [ %17, %done ], [ %.pre, %cond.true69 ], !dbg !3024
  %tobool74 = icmp eq %struct.bitmap_element_def* %19, null, !dbg !3026
  br i1 %tobool74, label %cleanup80, label %if.then75, !dbg !3027

if.then75:                                        ; preds = %cond.end71
  %indx77 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %19, i64 0, i32 2, !dbg !3028
  %20 = load i32, i32* %indx77, align 8, !dbg !3028
  %indx78 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %a, i64 0, i32 2, !dbg !3029
  store i32 %20, i32* %indx78, align 8, !dbg !3030
  br label %cleanup80, !dbg !3031

cleanup80.loopexit:                               ; preds = %cleanup
  br label %cleanup80, !dbg !3032

cleanup80:                                        ; preds = %cleanup80.loopexit, %cond.end71, %lor.lhs.false, %if.end, %if.then75, %if.then
  %retval.0 = phi i8 [ %call, %if.then ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %changed.5, %if.then75 ], [ %changed.5, %cond.end71 ], [ undef, %cleanup80.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #8, !dbg !3032
  ret i8 %retval.0, !dbg !3032
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_bitmap_file(%struct._IO_FILE* %file, %struct.bitmap_head_def* %head) local_unnamed_addr #4 !dbg !3033 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3037, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !3038, metadata !DIExpression()), !dbg !3046
  %0 = bitcast %struct.bitmap_head_def* %head to i8**, !dbg !3047
  %1 = load i8*, i8** %0, align 8, !dbg !3047
  %current = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 1, !dbg !3048
  %2 = bitcast %struct.bitmap_element_def** %current to i8**, !dbg !3048
  %3 = load i8*, i8** %2, align 8, !dbg !3048
  %indx = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 2, !dbg !3049
  %4 = load i32, i32* %indx, align 8, !dbg !3049
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %1, i8* %3, i32 %4) #6, !dbg !3050
  %first1 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 0, !dbg !3051
  br label %for.cond, !dbg !3052

for.cond:                                         ; preds = %for.end21, %entry
  %ptr.0.in = phi %struct.bitmap_element_def** [ %first1, %entry ], [ %next24, %for.end21 ]
  %ptr.0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr.0.in, align 8, !dbg !3053
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.0, metadata !3039, metadata !DIExpression()), !dbg !3046
  %tobool = icmp eq %struct.bitmap_element_def* %ptr.0, null, !dbg !3054
  br i1 %tobool, label %for.end25, label %for.body, !dbg !3054

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 26, metadata !3045, metadata !DIExpression()), !dbg !3055
  %5 = bitcast %struct.bitmap_element_def* %ptr.0 to i8**, !dbg !3056
  %6 = load i8*, i8** %5, align 8, !dbg !3056
  %prev = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %ptr.0, i64 0, i32 1, !dbg !3057
  %7 = bitcast %struct.bitmap_element_def** %prev to i8**, !dbg !3057
  %8 = load i8*, i8** %7, align 8, !dbg !3057
  %indx2 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %ptr.0, i64 0, i32 2, !dbg !3058
  %9 = load i32, i32* %indx2, align 8, !dbg !3058
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), %struct.bitmap_element_def* nonnull %ptr.0, i8* %6, i8* %8, i32 %9) #6, !dbg !3059
  call void @llvm.dbg.value(metadata i32 0, metadata !3040, metadata !DIExpression()), !dbg !3055
  br label %for.cond4, !dbg !3060

for.cond4:                                        ; preds = %for.inc19, %for.body
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc19 ], [ 0, %for.body ], !dbg !3062
  %col.0 = phi i32 [ %col.1.lcssa, %for.inc19 ], [ 26, %for.body ], !dbg !3063
  call void @llvm.dbg.value(metadata i32 %col.0, metadata !3045, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3040, metadata !DIExpression()), !dbg !3055
  %exitcond4 = icmp eq i64 %indvars.iv1, 2, !dbg !3064
  br i1 %exitcond4, label %for.end21, label %for.cond6.preheader, !dbg !3066

for.cond6.preheader:                              ; preds = %for.cond4
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %ptr.0, i64 0, i32 3, i64 %indvars.iv1, !dbg !3067
  br label %for.cond6, !dbg !3071

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !3072
  %col.1 = phi i32 [ %col.0, %for.cond6.preheader ], [ %col.3, %for.inc ], !dbg !3055
  call void @llvm.dbg.value(metadata i32 %col.1, metadata !3045, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3044, metadata !DIExpression()), !dbg !3055
  %exitcond = icmp eq i64 %indvars.iv, 64, !dbg !3073
  br i1 %exitcond, label %for.inc19, label %for.body8, !dbg !3071

for.body8:                                        ; preds = %for.cond6
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3074
  %11 = shl i64 1, %indvars.iv, !dbg !3075
  %12 = and i64 %10, %11, !dbg !3075
  %tobool9 = icmp eq i64 %12, 0, !dbg !3075
  br i1 %tobool9, label %for.inc, label %if.then, !dbg !3076

if.then:                                          ; preds = %for.body8
  %cmp10 = icmp ugt i32 %col.1, 70, !dbg !3077
  br i1 %cmp10, label %if.then11, label %if.end, !dbg !3080

if.then11:                                        ; preds = %if.then
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3081
  call void @llvm.dbg.value(metadata i32 24, metadata !3045, metadata !DIExpression()), !dbg !3055
  br label %if.end, !dbg !3083

if.end:                                           ; preds = %if.then11, %if.then
  %col.2 = phi i32 [ 24, %if.then11 ], [ %col.1, %if.then ], !dbg !3055
  call void @llvm.dbg.value(metadata i32 %col.2, metadata !3045, metadata !DIExpression()), !dbg !3055
  %13 = load i32, i32* %indx2, align 8, !dbg !3084
  %mul = shl i32 %13, 7, !dbg !3085
  %indvars.iv1.tr = trunc i64 %indvars.iv1 to i32, !dbg !3086
  %14 = shl i32 %indvars.iv1.tr, 6, !dbg !3086
  %add = add i32 %mul, %14, !dbg !3086
  %15 = trunc i64 %indvars.iv to i32, !dbg !3087
  %add15 = add i32 %add, %15, !dbg !3087
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %add15) #6, !dbg !3088
  %add17 = add i32 %col.2, 4, !dbg !3089
  call void @llvm.dbg.value(metadata i32 %add17, metadata !3045, metadata !DIExpression()), !dbg !3055
  br label %for.inc, !dbg !3090

for.inc:                                          ; preds = %for.body8, %if.end
  %col.3 = phi i32 [ %add17, %if.end ], [ %col.1, %for.body8 ], !dbg !3055
  call void @llvm.dbg.value(metadata i32 %col.3, metadata !3045, metadata !DIExpression()), !dbg !3055
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3091
  call void @llvm.dbg.value(metadata i32 undef, metadata !3044, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3055
  br label %for.cond6, !dbg !3092, !llvm.loop !3093

for.inc19:                                        ; preds = %for.cond6
  %col.1.lcssa = phi i32 [ %col.1, %for.cond6 ], !dbg !3055
  call void @llvm.dbg.value(metadata i32 %col.1.lcssa, metadata !3045, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %col.1.lcssa, metadata !3045, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %col.1.lcssa, metadata !3045, metadata !DIExpression()), !dbg !3055
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3095
  call void @llvm.dbg.value(metadata i32 undef, metadata !3040, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3055
  br label %for.cond4, !dbg !3096, !llvm.loop !3097

for.end21:                                        ; preds = %for.cond4
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3099
  %next24 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %ptr.0, i64 0, i32 0, !dbg !3100
  br label %for.cond, !dbg !3101, !llvm.loop !3102

for.end25:                                        ; preds = %for.cond
  ret void, !dbg !3104
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @debug_bitmap(%struct.bitmap_head_def* %head) local_unnamed_addr #4 !dbg !3105 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !3109, metadata !DIExpression()), !dbg !3110
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3111
  tail call void @debug_bitmap_file(%struct._IO_FILE* %0, %struct.bitmap_head_def* %head) #7, !dbg !3112
  ret void, !dbg !3113
}

; Function Attrs: nounwind uwtable
define dso_local void @bitmap_print(%struct._IO_FILE* %file, %struct.bitmap_head_def* %head, i8* %prefix, i8* %suffix) local_unnamed_addr #4 !dbg !3114 {
entry:
  %i = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3118, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !3119, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8* %prefix, metadata !3120, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8* %suffix, metadata !3121, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), metadata !3122, metadata !DIExpression()), !dbg !3132
  %0 = bitcast i32* %i to i8*, !dbg !3133
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3133
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3134
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3134
  %call = tail call i32 @fputs(i8* %prefix, %struct._IO_FILE* %file) #6, !dbg !3135
  call void @llvm.dbg.value(metadata i32* %i, metadata !3123, metadata !DIExpression(DW_OP_deref)), !dbg !3132
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3124, metadata !DIExpression(DW_OP_deref)), !dbg !3132
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %head, i32 0, i32* nonnull %i) #7, !dbg !3136
  br label %for.cond, !dbg !3136

for.cond:                                         ; preds = %for.body, %entry
  %comma.0 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %entry ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), %for.body ], !dbg !3132
  call void @llvm.dbg.value(metadata i8* %comma.0, metadata !3122, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i32* %i, metadata !3123, metadata !DIExpression(DW_OP_deref)), !dbg !3132
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3124, metadata !DIExpression(DW_OP_deref)), !dbg !3132
  %call1 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3138
  %tobool = icmp eq i8 %call1, 0, !dbg !3136
  br i1 %tobool, label %for.end, label %for.body, !dbg !3136

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !3140
  call void @llvm.dbg.value(metadata i32 %2, metadata !3123, metadata !DIExpression()), !dbg !3132
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %comma.0, i32 %2) #6, !dbg !3142
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), metadata !3122, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i32* %i, metadata !3123, metadata !DIExpression(DW_OP_deref)), !dbg !3132
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3124, metadata !DIExpression(DW_OP_deref)), !dbg !3132
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !3138
  br label %for.cond, !dbg !3138, !llvm.loop !3143

for.end:                                          ; preds = %for.cond
  %call3 = call i32 @fputs(i8* %suffix, %struct._IO_FILE* %file) #6, !dbg !3145
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3146
  ret void, !dbg !3146
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !3147 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3153, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !3154, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i32 0, metadata !3155, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3156, metadata !DIExpression()), !dbg !3157
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !3158
  %1 = load i64, i64* %0, align 8, !dbg !3158
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3159
  store i64 %1, i64* %2, align 8, !dbg !3159
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !3160
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !3161
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3162
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !3165
  br label %while.body, !dbg !3165

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !3166
  br i1 %tobool, label %if.then, label %if.end, !dbg !3167

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !3168
  br label %while.end, !dbg !3170

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !3171

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !3165, !llvm.loop !3172

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !3174

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !3174
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !3176
  %7 = load i32, i32* %indx9, align 8, !dbg !3176
  %cmp11 = icmp eq i32 %7, 0, !dbg !3177
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !3178

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !3179
  %8 = load i32, i32* %indx14, align 8, !dbg !3179
  %mul = shl i32 %8, 7, !dbg !3180
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3155, metadata !DIExpression()), !dbg !3157
  br label %if.end15, !dbg !3181

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !3155, metadata !DIExpression()), !dbg !3157
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3182
  store i32 0, i32* %word_no, align 8, !dbg !3183
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !3184
  %9 = load i64, i64* %arrayidx, align 8, !dbg !3184
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3185
  store i64 %9, i64* %bits21, align 8, !dbg !3186
  %tobool23 = icmp eq i64 %9, 0, !dbg !3187
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !3187
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !3188
  call void @llvm.dbg.value(metadata i32 %add, metadata !3155, metadata !DIExpression()), !dbg !3157
  store i32 %add, i32* %bit_no, align 4, !dbg !3189
  ret void, !dbg !3190
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3191 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3195, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3196, metadata !DIExpression()), !dbg !3200
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3201
  %0 = load i64, i64* %bits, align 8, !dbg !3201
  %tobool = icmp eq i64 %0, 0, !dbg !3202
  br i1 %tobool, label %if.end, label %next_bit, !dbg !3203

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !3204
  br label %next_bit, !dbg !3207

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !3197), !dbg !3208
  br label %while.cond, !dbg !3207

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !3209
  %and = and i64 %2, 1, !dbg !3210
  %tobool2 = icmp eq i64 %and, 0, !dbg !3211
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !3207

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !3212
  store i64 %shr, i64* %bits, align 8, !dbg !3212
  %3 = load i32, i32* %bit_no, align 4, !dbg !3214
  %add = add i32 %3, 1, !dbg !3214
  store i32 %add, i32* %bit_no, align 4, !dbg !3214
  %.pre = load i64, i64* %bits, align 8, !dbg !3209
  br label %while.cond, !dbg !3207, !llvm.loop !3215

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !3217
  %sub = add i32 %4, 63, !dbg !3218
  %div = and i32 %sub, -64, !dbg !3219
  store i32 %div, i32* %bit_no, align 4, !dbg !3220
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3221
  %5 = load i32, i32* %word_no, align 8, !dbg !3222
  %inc = add i32 %5, 1, !dbg !3222
  store i32 %inc, i32* %word_no, align 8, !dbg !3222
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3223
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3223
  br label %while.body6, !dbg !3224

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !3225

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !3226
  %cmp = icmp eq i32 %8, 2, !dbg !3227
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !3223
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !3225

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !3204
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !3204
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3204
  store i64 %10, i64* %bits, align 8, !dbg !3228
  %tobool14 = icmp eq i64 %10, 0, !dbg !3229
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !3231

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !3232
  %add17 = add i32 %11, 64, !dbg !3232
  store i32 %add17, i32* %bit_no, align 4, !dbg !3232
  %12 = load i32, i32* %word_no, align 8, !dbg !3233
  %inc19 = add i32 %12, 1, !dbg !3233
  store i32 %inc19, i32* %word_no, align 8, !dbg !3233
  br label %while.cond7, !dbg !3225, !llvm.loop !3234

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !3223
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !3236
  %14 = load i64, i64* %13, align 8, !dbg !3236
  store i64 %14, i64* %6, align 8, !dbg !3237
  %tobool24 = icmp eq i64 %14, 0, !dbg !3238
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !3240

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !3240
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !3241
  %16 = load i32, i32* %indx, align 8, !dbg !3241
  %mul28 = shl i32 %16, 7, !dbg !3242
  store i32 %mul28, i32* %bit_no, align 4, !dbg !3243
  store i32 0, i32* %word_no, align 8, !dbg !3244
  br label %while.body6, !dbg !3224, !llvm.loop !3245

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !3247

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !3247

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !3200
  ret i8 %retval.0, !dbg !3247
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3248 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3252, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3253, metadata !DIExpression()), !dbg !3254
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3255
  %0 = load i64, i64* %bits, align 8, !dbg !3256
  %shr = lshr i64 %0, 1, !dbg !3256
  store i64 %shr, i64* %bits, align 8, !dbg !3256
  %1 = load i32, i32* %bit_no, align 4, !dbg !3257
  %add = add i32 %1, 1, !dbg !3257
  store i32 %add, i32* %bit_no, align 4, !dbg !3257
  ret void, !dbg !3258
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_bitmap_statistics() local_unnamed_addr #4 !dbg !3259 {
entry:
  ret void, !dbg !3262
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bitmap_hash(%struct.bitmap_head_def* %head) local_unnamed_addr #4 !dbg !3263 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !3267, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 0, metadata !3269, metadata !DIExpression()), !dbg !3271
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 0, !dbg !3272
  br label %for.cond, !dbg !3274

for.cond:                                         ; preds = %for.inc5, %entry
  %hash.0 = phi i64 [ 0, %entry ], [ %hash.1.lcssa, %for.inc5 ], !dbg !3271
  %ptr.0.in = phi %struct.bitmap_element_def** [ %first, %entry ], [ %next, %for.inc5 ]
  %ptr.0 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr.0.in, align 8, !dbg !3275
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %ptr.0, metadata !3268, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %hash.0, metadata !3269, metadata !DIExpression()), !dbg !3271
  %tobool = icmp eq %struct.bitmap_element_def* %ptr.0, null, !dbg !3276
  br i1 %tobool, label %for.end6, label %for.body, !dbg !3276

for.body:                                         ; preds = %for.cond
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %ptr.0, i64 0, i32 2, !dbg !3277
  %0 = load i32, i32* %indx, align 8, !dbg !3277
  %conv = zext i32 %0 to i64, !dbg !3280
  %xor = xor i64 %hash.0, %conv, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %xor, metadata !3269, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i32 0, metadata !3270, metadata !DIExpression()), !dbg !3271
  br label %for.cond1, !dbg !3282

for.cond1:                                        ; preds = %for.body3, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.body ], !dbg !3284
  %hash.1 = phi i64 [ %xor4, %for.body3 ], [ %xor, %for.body ], !dbg !3284
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3270, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %hash.1, metadata !3269, metadata !DIExpression()), !dbg !3271
  %cmp = icmp eq i64 %indvars.iv, 2, !dbg !3285
  br i1 %cmp, label %for.inc5, label %for.body3, !dbg !3287

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %ptr.0, i64 0, i32 3, i64 %indvars.iv, !dbg !3288
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3288
  %xor4 = xor i64 %hash.1, %1, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %xor4, metadata !3269, metadata !DIExpression()), !dbg !3271
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3290
  call void @llvm.dbg.value(metadata i32 undef, metadata !3270, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3271
  br label %for.cond1, !dbg !3291, !llvm.loop !3292

for.inc5:                                         ; preds = %for.cond1
  %hash.1.lcssa = phi i64 [ %hash.1, %for.cond1 ], !dbg !3284
  call void @llvm.dbg.value(metadata i64 %hash.1.lcssa, metadata !3269, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %hash.1.lcssa, metadata !3269, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %hash.1.lcssa, metadata !3269, metadata !DIExpression()), !dbg !3271
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %ptr.0, i64 0, i32 0, !dbg !3294
  br label %for.cond, !dbg !3295, !llvm.loop !3296

for.end6:                                         ; preds = %for.cond
  %hash.0.lcssa = phi i64 [ %hash.0, %for.cond ], !dbg !3271
  call void @llvm.dbg.value(metadata i64 %hash.0.lcssa, metadata !3269, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %hash.0.lcssa, metadata !3269, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %hash.0.lcssa, metadata !3269, metadata !DIExpression()), !dbg !3271
  %conv7 = trunc i64 %hash.0.lcssa to i32, !dbg !3298
  ret i32 %conv7, !dbg !3299
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bitmap_elem_to_freelist(%struct.bitmap_head_def* %head, %struct.bitmap_element_def* %elt) unnamed_addr #0 !dbg !3300 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %head, metadata !3302, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata %struct.bitmap_element_def* %elt, metadata !3303, metadata !DIExpression()), !dbg !3305
  %obstack = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %head, i64 0, i32 3, !dbg !3306
  %0 = load %struct.bitmap_obstack*, %struct.bitmap_obstack** %obstack, align 8, !dbg !3306
  call void @llvm.dbg.value(metadata %struct.bitmap_obstack* %0, metadata !3304, metadata !DIExpression()), !dbg !3305
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt, i64 0, i32 0, !dbg !3307
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %next, align 8, !dbg !3308
  %tobool = icmp eq %struct.bitmap_obstack* %0, null, !dbg !3309
  br i1 %tobool, label %if.else, label %if.then, !dbg !3311

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.bitmap_obstack* %0 to i64*, !dbg !3312
  %2 = load i64, i64* %1, align 8, !dbg !3312
  %prev = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt, i64 0, i32 1, !dbg !3314
  %3 = bitcast %struct.bitmap_element_def** %prev to i64*, !dbg !3315
  store i64 %2, i64* %3, align 8, !dbg !3315
  %elements1 = getelementptr inbounds %struct.bitmap_obstack, %struct.bitmap_obstack* %0, i64 0, i32 0, !dbg !3316
  store %struct.bitmap_element_def* %elt, %struct.bitmap_element_def** %elements1, align 8, !dbg !3317
  br label %if.end, !dbg !3318

if.else:                                          ; preds = %entry
  %4 = load i64, i64* bitcast (%struct.bitmap_element_def** @bitmap_ggc_free to i64*), align 8, !dbg !3319
  %prev2 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %elt, i64 0, i32 1, !dbg !3321
  %5 = bitcast %struct.bitmap_element_def** %prev2 to i64*, !dbg !3322
  store i64 %4, i64* %5, align 8, !dbg !3322
  store %struct.bitmap_element_def* %elt, %struct.bitmap_element_def** @bitmap_ggc_free, align 8, !dbg !3323
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3324
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!119, !120, !121}
!llvm.ident = !{!122}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bitmap_default_obstack_depth", scope: !2, file: !3, line: 124, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !91, nameTableKind: None)
!3 = !DIFile(filename: "bitmap.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !8, !9, !12, !13, !15, !19, !10, !22, !24, !85, !29, !40, !87, !89}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{!12, !18}
!18 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !12}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !23, line: 35, baseType: !18)
!23 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !26, line: 75, size: 256, elements: !27)
!26 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!27 = !{!28, !44, !45, !46}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !25, file: !26, line: 76, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !26, line: 68, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !26, line: 63, size: 320, elements: !32)
!32 = !{!33, !35, !36, !38}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !31, file: !26, line: 64, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !31, file: !26, line: 65, baseType: !34, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !31, file: !26, line: 66, baseType: !37, size: 32, offset: 128)
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !31, file: !26, line: 67, baseType: !39, size: 128, offset: 192)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !42)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !26, line: 29, baseType: !41)
!41 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !{!43}
!43 = !DISubrange(count: 2)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !25, file: !26, line: 77, baseType: !29, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !25, file: !26, line: 78, baseType: !37, size: 32, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !25, file: !26, line: 79, baseType: !47, size: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !26, line: 49, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !26, line: 45, size: 832, elements: !50)
!50 = !{!51, !52, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !49, file: !26, line: 46, baseType: !34, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !49, file: !26, line: 47, baseType: !24, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !49, file: !26, line: 48, baseType: !54, size: 704, offset: 128)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !55, line: 164, size: 704, elements: !56)
!55 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!56 = !{!57, !58, !68, !69, !70, !71, !72, !73, !77, !81, !82, !83, !84}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !54, file: !55, line: 166, baseType: !18, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !54, file: !55, line: 167, baseType: !59, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !55, line: 157, size: 192, elements: !61)
!61 = !{!62, !63, !64}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !60, file: !55, line: 159, baseType: !10, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !60, file: !55, line: 160, baseType: !59, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !60, file: !55, line: 161, baseType: !65, size: 32, offset: 128)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 4)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !54, file: !55, line: 168, baseType: !10, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !54, file: !55, line: 169, baseType: !10, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !54, file: !55, line: 170, baseType: !10, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !54, file: !55, line: 171, baseType: !18, size: 64, offset: 320)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !54, file: !55, line: 172, baseType: !8, size: 32, offset: 384)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !54, file: !55, line: 176, baseType: !74, size: 64, offset: 448)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!59, !12, !18}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !54, file: !55, line: 177, baseType: !78, size: 64, offset: 512)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !12, !59}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !54, file: !55, line: 178, baseType: !12, size: 64, offset: 576)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !54, file: !55, line: 179, baseType: !37, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !54, file: !55, line: 180, baseType: !37, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !54, file: !55, line: 184, baseType: !37, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_head", file: !26, line: 84, baseType: !25)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !90, line: 47, baseType: !37)
!90 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!91 = !{!92, !107, !109, !0, !111, !113}
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "gt_ggc_rd_gt_bitmap_h", scope: !2, file: !94, line: 24, type: !95, isLocal: false, isDefinition: true)
!94 = !DIFile(filename: "./gt-bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 640, elements: !42)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !98, line: 69, size: 320, elements: !99)
!98 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!99 = !{!100, !101, !103, !104, !106}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !97, file: !98, line: 70, baseType: !12, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !97, file: !98, line: 71, baseType: !102, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 46, baseType: !41)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !97, file: !98, line: 72, baseType: !102, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !97, file: !98, line: 73, baseType: !105, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !98, line: 65, baseType: !19)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !97, file: !98, line: 74, baseType: !105, size: 64, offset: 256)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "bitmap_zero_bits", scope: !2, file: !3, line: 122, type: !30, isLocal: false, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "bitmap_default_obstack", scope: !2, file: !3, line: 123, type: !48, isLocal: false, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "bitmap_ggc_free", scope: !2, file: !3, line: 125, type: !29, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "popcount_table", scope: !2, file: !3, line: 674, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 2048, elements: !117)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!117 = !{!118}
!118 = !DISubrange(count: 256)
!119 = !{i32 2, !"Dwarf Version", i32 4}
!120 = !{i32 2, !"Debug Info Version", i32 3}
!121 = !{i32 1, !"wchar_size", i32 4}
!122 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!123 = distinct !DISubprogram(name: "vprintf", scope: !124, file: !124, line: 39, type: !125, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !135)
!124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!125 = !DISubroutineType(types: !126)
!126 = !{!8, !127, !128}
!127 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !130)
!130 = !{!131, !132, !133, !134}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !129, file: !3, baseType: !37, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !129, file: !3, baseType: !37, size: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !129, file: !3, baseType: !12, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !129, file: !3, baseType: !12, size: 64, offset: 128)
!135 = !{!136, !137}
!136 = !DILocalVariable(name: "__fmt", arg: 1, scope: !123, file: !124, line: 39, type: !127)
!137 = !DILocalVariable(name: "__arg", arg: 2, scope: !123, file: !124, line: 39, type: !128)
!138 = !DILocation(line: 0, scope: !123)
!139 = !DILocation(line: 41, column: 20, scope: !123)
!140 = !DILocation(line: 41, column: 10, scope: !123)
!141 = !DILocation(line: 41, column: 3, scope: !123)
!142 = distinct !DISubprogram(name: "getchar", scope: !124, file: !124, line: 47, type: !143, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!143 = !DISubroutineType(types: !144)
!144 = !{!8}
!145 = !DILocation(line: 49, column: 16, scope: !142)
!146 = !DILocation(line: 49, column: 10, scope: !142)
!147 = !DILocation(line: 49, column: 3, scope: !142)
!148 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !124, file: !124, line: 56, type: !149, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !206)
!149 = !DISubroutineType(types: !150)
!150 = !{!8, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !153, line: 7, baseType: !154)
!153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !155, line: 49, size: 1728, elements: !156)
!155 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !172, !174, !175, !176, !179, !181, !183, !187, !190, !192, !195, !198, !199, !200, !201, !202}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !154, file: !155, line: 51, baseType: !8, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !154, file: !155, line: 54, baseType: !10, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !154, file: !155, line: 55, baseType: !10, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !154, file: !155, line: 56, baseType: !10, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !154, file: !155, line: 57, baseType: !10, size: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !154, file: !155, line: 58, baseType: !10, size: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !154, file: !155, line: 59, baseType: !10, size: 64, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !154, file: !155, line: 60, baseType: !10, size: 64, offset: 448)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !154, file: !155, line: 61, baseType: !10, size: 64, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !154, file: !155, line: 64, baseType: !10, size: 64, offset: 576)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !154, file: !155, line: 65, baseType: !10, size: 64, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !154, file: !155, line: 66, baseType: !10, size: 64, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !154, file: !155, line: 68, baseType: !170, size: 64, offset: 768)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !155, line: 36, flags: DIFlagFwdDecl)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !154, file: !155, line: 70, baseType: !173, size: 64, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !154, file: !155, line: 72, baseType: !8, size: 32, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !154, file: !155, line: 73, baseType: !8, size: 32, offset: 928)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !154, file: !155, line: 74, baseType: !177, size: 64, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !178, line: 152, baseType: !18)
!178 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !154, file: !155, line: 77, baseType: !180, size: 16, offset: 1024)
!180 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !154, file: !155, line: 78, baseType: !182, size: 8, offset: 1040)
!182 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !154, file: !155, line: 79, baseType: !184, size: 8, offset: 1048)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 1)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !154, file: !155, line: 81, baseType: !188, size: 64, offset: 1088)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !155, line: 43, baseType: null)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !154, file: !155, line: 89, baseType: !191, size: 64, offset: 1152)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !178, line: 153, baseType: !18)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !154, file: !155, line: 91, baseType: !193, size: 64, offset: 1216)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !155, line: 37, flags: DIFlagFwdDecl)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !154, file: !155, line: 92, baseType: !196, size: 64, offset: 1280)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !155, line: 38, flags: DIFlagFwdDecl)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !154, file: !155, line: 93, baseType: !173, size: 64, offset: 1344)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !154, file: !155, line: 94, baseType: !12, size: 64, offset: 1408)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !154, file: !155, line: 95, baseType: !102, size: 64, offset: 1472)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !154, file: !155, line: 96, baseType: !8, size: 32, offset: 1536)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !154, file: !155, line: 98, baseType: !203, size: 160, offset: 1568)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 20)
!206 = !{!207}
!207 = !DILocalVariable(name: "__fp", arg: 1, scope: !148, file: !124, line: 56, type: !151)
!208 = !DILocation(line: 0, scope: !148)
!209 = !DILocation(line: 58, column: 10, scope: !148)
!210 = !DILocation(line: 58, column: 3, scope: !148)
!211 = distinct !DISubprogram(name: "getc_unlocked", scope: !124, file: !124, line: 66, type: !149, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !212)
!212 = !{!213}
!213 = !DILocalVariable(name: "__fp", arg: 1, scope: !211, file: !124, line: 66, type: !151)
!214 = !DILocation(line: 0, scope: !211)
!215 = !DILocation(line: 68, column: 10, scope: !211)
!216 = !DILocation(line: 68, column: 3, scope: !211)
!217 = distinct !DISubprogram(name: "getchar_unlocked", scope: !124, file: !124, line: 73, type: !143, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!218 = !DILocation(line: 75, column: 10, scope: !217)
!219 = !DILocation(line: 75, column: 3, scope: !217)
!220 = distinct !DISubprogram(name: "putchar", scope: !124, file: !124, line: 82, type: !221, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !223)
!221 = !DISubroutineType(types: !222)
!222 = !{!8, !8}
!223 = !{!224}
!224 = !DILocalVariable(name: "__c", arg: 1, scope: !220, file: !124, line: 82, type: !8)
!225 = !DILocation(line: 0, scope: !220)
!226 = !DILocation(line: 84, column: 21, scope: !220)
!227 = !DILocation(line: 84, column: 10, scope: !220)
!228 = !DILocation(line: 84, column: 3, scope: !220)
!229 = distinct !DISubprogram(name: "fputc_unlocked", scope: !124, file: !124, line: 91, type: !230, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !232)
!230 = !DISubroutineType(types: !231)
!231 = !{!8, !8, !151}
!232 = !{!233, !234}
!233 = !DILocalVariable(name: "__c", arg: 1, scope: !229, file: !124, line: 91, type: !8)
!234 = !DILocalVariable(name: "__stream", arg: 2, scope: !229, file: !124, line: 91, type: !151)
!235 = !DILocation(line: 0, scope: !229)
!236 = !DILocation(line: 93, column: 10, scope: !229)
!237 = !DILocation(line: 93, column: 3, scope: !229)
!238 = distinct !DISubprogram(name: "putc_unlocked", scope: !124, file: !124, line: 101, type: !230, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !239)
!239 = !{!240, !241}
!240 = !DILocalVariable(name: "__c", arg: 1, scope: !238, file: !124, line: 101, type: !8)
!241 = !DILocalVariable(name: "__stream", arg: 2, scope: !238, file: !124, line: 101, type: !151)
!242 = !DILocation(line: 0, scope: !238)
!243 = !DILocation(line: 103, column: 10, scope: !238)
!244 = !DILocation(line: 103, column: 3, scope: !238)
!245 = distinct !DISubprogram(name: "putchar_unlocked", scope: !124, file: !124, line: 108, type: !221, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!246 = !{!247}
!247 = !DILocalVariable(name: "__c", arg: 1, scope: !245, file: !124, line: 108, type: !8)
!248 = !DILocation(line: 0, scope: !245)
!249 = !DILocation(line: 110, column: 10, scope: !245)
!250 = !DILocation(line: 110, column: 3, scope: !245)
!251 = distinct !DISubprogram(name: "getline", scope: !124, file: !124, line: 118, type: !252, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !256)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !9, !255, !151}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !178, line: 193, baseType: !18)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!256 = !{!257, !258, !259}
!257 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !251, file: !124, line: 118, type: !9)
!258 = !DILocalVariable(name: "__n", arg: 2, scope: !251, file: !124, line: 118, type: !255)
!259 = !DILocalVariable(name: "__stream", arg: 3, scope: !251, file: !124, line: 118, type: !151)
!260 = !DILocation(line: 0, scope: !251)
!261 = !DILocation(line: 120, column: 10, scope: !251)
!262 = !DILocation(line: 120, column: 3, scope: !251)
!263 = distinct !DISubprogram(name: "feof_unlocked", scope: !124, file: !124, line: 128, type: !149, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!264 = !{!265}
!265 = !DILocalVariable(name: "__stream", arg: 1, scope: !263, file: !124, line: 128, type: !151)
!266 = !DILocation(line: 0, scope: !263)
!267 = !DILocation(line: 130, column: 10, scope: !263)
!268 = !DILocation(line: 130, column: 3, scope: !263)
!269 = distinct !DISubprogram(name: "ferror_unlocked", scope: !124, file: !124, line: 135, type: !149, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !270)
!270 = !{!271}
!271 = !DILocalVariable(name: "__stream", arg: 1, scope: !269, file: !124, line: 135, type: !151)
!272 = !DILocation(line: 0, scope: !269)
!273 = !DILocation(line: 137, column: 10, scope: !269)
!274 = !DILocation(line: 137, column: 3, scope: !269)
!275 = distinct !DISubprogram(name: "tolower", scope: !276, file: !276, line: 207, type: !221, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !277)
!276 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!277 = !{!278}
!278 = !DILocalVariable(name: "__c", arg: 1, scope: !275, file: !276, line: 207, type: !8)
!279 = !DILocation(line: 0, scope: !275)
!280 = !DILocation(line: 209, column: 22, scope: !275)
!281 = !DILocation(line: 209, column: 39, scope: !275)
!282 = !DILocation(line: 209, column: 38, scope: !275)
!283 = !DILocation(line: 209, column: 37, scope: !275)
!284 = !DILocation(line: 209, column: 10, scope: !275)
!285 = !DILocation(line: 209, column: 3, scope: !275)
!286 = distinct !DISubprogram(name: "toupper", scope: !276, file: !276, line: 213, type: !221, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!287 = !{!288}
!288 = !DILocalVariable(name: "__c", arg: 1, scope: !286, file: !276, line: 213, type: !8)
!289 = !DILocation(line: 0, scope: !286)
!290 = !DILocation(line: 215, column: 22, scope: !286)
!291 = !DILocation(line: 215, column: 39, scope: !286)
!292 = !DILocation(line: 215, column: 38, scope: !286)
!293 = !DILocation(line: 215, column: 37, scope: !286)
!294 = !DILocation(line: 215, column: 10, scope: !286)
!295 = !DILocation(line: 215, column: 3, scope: !286)
!296 = distinct !DISubprogram(name: "atoi", scope: !297, file: !297, line: 361, type: !298, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !300)
!297 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!298 = !DISubroutineType(types: !299)
!299 = !{!8, !13}
!300 = !{!301}
!301 = !DILocalVariable(name: "__nptr", arg: 1, scope: !296, file: !297, line: 361, type: !13)
!302 = !DILocation(line: 0, scope: !296)
!303 = !DILocation(line: 363, column: 16, scope: !296)
!304 = !DILocation(line: 363, column: 10, scope: !296)
!305 = !DILocation(line: 363, column: 3, scope: !296)
!306 = distinct !DISubprogram(name: "atol", scope: !297, file: !297, line: 366, type: !307, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!18, !13}
!309 = !{!310}
!310 = !DILocalVariable(name: "__nptr", arg: 1, scope: !306, file: !297, line: 366, type: !13)
!311 = !DILocation(line: 0, scope: !306)
!312 = !DILocation(line: 368, column: 10, scope: !306)
!313 = !DILocation(line: 368, column: 3, scope: !306)
!314 = distinct !DISubprogram(name: "atoll", scope: !297, file: !297, line: 373, type: !315, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !318)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !13}
!317 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!318 = !{!319}
!319 = !DILocalVariable(name: "__nptr", arg: 1, scope: !314, file: !297, line: 373, type: !13)
!320 = !DILocation(line: 0, scope: !314)
!321 = !DILocation(line: 375, column: 10, scope: !314)
!322 = !DILocation(line: 375, column: 3, scope: !314)
!323 = distinct !DISubprogram(name: "bsearch", scope: !324, file: !324, line: 20, type: !325, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !331)
!324 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!325 = !DISubroutineType(types: !326)
!326 = !{!12, !87, !87, !102, !102, !327}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !297, line: 808, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!8, !87, !87}
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!332 = !DILocalVariable(name: "__key", arg: 1, scope: !323, file: !324, line: 20, type: !87)
!333 = !DILocalVariable(name: "__base", arg: 2, scope: !323, file: !324, line: 20, type: !87)
!334 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !323, file: !324, line: 20, type: !102)
!335 = !DILocalVariable(name: "__size", arg: 4, scope: !323, file: !324, line: 20, type: !102)
!336 = !DILocalVariable(name: "__compar", arg: 5, scope: !323, file: !324, line: 21, type: !327)
!337 = !DILocalVariable(name: "__l", scope: !323, file: !324, line: 23, type: !102)
!338 = !DILocalVariable(name: "__u", scope: !323, file: !324, line: 23, type: !102)
!339 = !DILocalVariable(name: "__idx", scope: !323, file: !324, line: 23, type: !102)
!340 = !DILocalVariable(name: "__p", scope: !323, file: !324, line: 24, type: !87)
!341 = !DILocalVariable(name: "__comparison", scope: !323, file: !324, line: 25, type: !8)
!342 = !DILocation(line: 0, scope: !323)
!343 = !DILocation(line: 29, column: 3, scope: !323)
!344 = !DILocation(line: 27, column: 7, scope: !323)
!345 = !DILocation(line: 29, column: 14, scope: !323)
!346 = !DILocation(line: 31, column: 20, scope: !347)
!347 = distinct !DILexicalBlock(scope: !323, file: !324, line: 30, column: 5)
!348 = !DILocation(line: 31, column: 27, scope: !347)
!349 = !DILocation(line: 32, column: 56, scope: !347)
!350 = !DILocation(line: 32, column: 47, scope: !347)
!351 = !DILocation(line: 33, column: 22, scope: !347)
!352 = !DILocation(line: 34, column: 24, scope: !353)
!353 = distinct !DILexicalBlock(scope: !347, file: !324, line: 34, column: 11)
!354 = !DILocation(line: 34, column: 11, scope: !347)
!355 = !DILocation(line: 36, column: 29, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !324, line: 36, column: 16)
!357 = !DILocation(line: 36, column: 16, scope: !353)
!358 = !DILocation(line: 37, column: 14, scope: !356)
!359 = distinct !{!359, !343, !360}
!360 = !DILocation(line: 40, column: 5, scope: !323)
!361 = !DILocation(line: 43, column: 1, scope: !323)
!362 = distinct !DISubprogram(name: "atof", scope: !363, file: !363, line: 25, type: !364, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !367)
!363 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !13}
!366 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!367 = !{!368}
!368 = !DILocalVariable(name: "__nptr", arg: 1, scope: !362, file: !363, line: 25, type: !13)
!369 = !DILocation(line: 0, scope: !362)
!370 = !DILocation(line: 27, column: 10, scope: !362)
!371 = !DILocation(line: 27, column: 3, scope: !362)
!372 = distinct !DISubprogram(name: "strtoimax", scope: !373, file: !373, line: 324, type: !374, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !380)
!373 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!374 = !DISubroutineType(types: !375)
!375 = !{!376, !127, !379, !8}
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !377, line: 101, baseType: !378)
!377 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !178, line: 72, baseType: !18)
!379 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!380 = !{!381, !382, !383}
!381 = !DILocalVariable(name: "nptr", arg: 1, scope: !372, file: !373, line: 324, type: !127)
!382 = !DILocalVariable(name: "endptr", arg: 2, scope: !372, file: !373, line: 324, type: !379)
!383 = !DILocalVariable(name: "base", arg: 3, scope: !372, file: !373, line: 324, type: !8)
!384 = !DILocation(line: 0, scope: !372)
!385 = !DILocation(line: 327, column: 10, scope: !372)
!386 = !DILocation(line: 327, column: 3, scope: !372)
!387 = distinct !DISubprogram(name: "strtoumax", scope: !373, file: !373, line: 336, type: !388, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !392)
!388 = !DISubroutineType(types: !389)
!389 = !{!390, !127, !379, !8}
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !377, line: 102, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !178, line: 73, baseType: !41)
!392 = !{!393, !394, !395}
!393 = !DILocalVariable(name: "nptr", arg: 1, scope: !387, file: !373, line: 336, type: !127)
!394 = !DILocalVariable(name: "endptr", arg: 2, scope: !387, file: !373, line: 336, type: !379)
!395 = !DILocalVariable(name: "base", arg: 3, scope: !387, file: !373, line: 336, type: !8)
!396 = !DILocation(line: 0, scope: !387)
!397 = !DILocation(line: 339, column: 10, scope: !387)
!398 = !DILocation(line: 339, column: 3, scope: !387)
!399 = distinct !DISubprogram(name: "wcstoimax", scope: !373, file: !373, line: 348, type: !400, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !409)
!400 = !DISubroutineType(types: !401)
!401 = !{!376, !402, !406, !8}
!402 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !373, line: 34, baseType: !8)
!406 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!409 = !{!410, !411, !412}
!410 = !DILocalVariable(name: "nptr", arg: 1, scope: !399, file: !373, line: 348, type: !402)
!411 = !DILocalVariable(name: "endptr", arg: 2, scope: !399, file: !373, line: 348, type: !406)
!412 = !DILocalVariable(name: "base", arg: 3, scope: !399, file: !373, line: 348, type: !8)
!413 = !DILocation(line: 0, scope: !399)
!414 = !DILocation(line: 351, column: 10, scope: !399)
!415 = !DILocation(line: 351, column: 3, scope: !399)
!416 = distinct !DISubprogram(name: "wcstoumax", scope: !373, file: !373, line: 362, type: !417, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!390, !402, !406, !8}
!419 = !{!420, !421, !422}
!420 = !DILocalVariable(name: "nptr", arg: 1, scope: !416, file: !373, line: 362, type: !402)
!421 = !DILocalVariable(name: "endptr", arg: 2, scope: !416, file: !373, line: 362, type: !406)
!422 = !DILocalVariable(name: "base", arg: 3, scope: !416, file: !373, line: 362, type: !8)
!423 = !DILocation(line: 0, scope: !416)
!424 = !DILocation(line: 365, column: 10, scope: !416)
!425 = !DILocation(line: 365, column: 3, scope: !416)
!426 = distinct !DISubprogram(name: "stat", scope: !427, file: !427, line: 453, type: !428, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !467)
!427 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!428 = !DISubroutineType(types: !429)
!429 = !{!8, !13, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !432, line: 46, size: 1152, elements: !433)
!432 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!433 = !{!434, !436, !438, !440, !442, !444, !446, !447, !448, !449, !451, !453, !461, !462, !463}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !431, file: !432, line: 48, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !178, line: 145, baseType: !41)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !431, file: !432, line: 53, baseType: !437, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !178, line: 148, baseType: !41)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !431, file: !432, line: 61, baseType: !439, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !178, line: 151, baseType: !41)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !431, file: !432, line: 62, baseType: !441, size: 32, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !178, line: 150, baseType: !37)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !431, file: !432, line: 64, baseType: !443, size: 32, offset: 224)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !178, line: 146, baseType: !37)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !431, file: !432, line: 65, baseType: !445, size: 32, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !178, line: 147, baseType: !37)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !431, file: !432, line: 67, baseType: !8, size: 32, offset: 288)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !431, file: !432, line: 69, baseType: !435, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !431, file: !432, line: 74, baseType: !177, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !431, file: !432, line: 78, baseType: !450, size: 64, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !178, line: 174, baseType: !18)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !431, file: !432, line: 80, baseType: !452, size: 64, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !178, line: 179, baseType: !18)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !431, file: !432, line: 91, baseType: !454, size: 128, offset: 576)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !455, line: 10, size: 128, elements: !456)
!455 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!456 = !{!457, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !454, file: !455, line: 12, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !178, line: 160, baseType: !18)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !454, file: !455, line: 16, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !178, line: 196, baseType: !18)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !431, file: !432, line: 92, baseType: !454, size: 128, offset: 704)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !431, file: !432, line: 93, baseType: !454, size: 128, offset: 832)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !431, file: !432, line: 106, baseType: !464, size: 192, offset: 960)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 192, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 3)
!467 = !{!468, !469}
!468 = !DILocalVariable(name: "__path", arg: 1, scope: !426, file: !427, line: 453, type: !13)
!469 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !426, file: !427, line: 453, type: !430)
!470 = !DILocation(line: 0, scope: !426)
!471 = !DILocation(line: 455, column: 10, scope: !426)
!472 = !DILocation(line: 455, column: 3, scope: !426)
!473 = distinct !DISubprogram(name: "lstat", scope: !427, file: !427, line: 460, type: !428, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !474)
!474 = !{!475, !476}
!475 = !DILocalVariable(name: "__path", arg: 1, scope: !473, file: !427, line: 460, type: !13)
!476 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !473, file: !427, line: 460, type: !430)
!477 = !DILocation(line: 0, scope: !473)
!478 = !DILocation(line: 462, column: 10, scope: !473)
!479 = !DILocation(line: 462, column: 3, scope: !473)
!480 = distinct !DISubprogram(name: "fstat", scope: !427, file: !427, line: 467, type: !481, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!8, !8, !430}
!483 = !{!484, !485}
!484 = !DILocalVariable(name: "__fd", arg: 1, scope: !480, file: !427, line: 467, type: !8)
!485 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !480, file: !427, line: 467, type: !430)
!486 = !DILocation(line: 0, scope: !480)
!487 = !DILocation(line: 469, column: 10, scope: !480)
!488 = !DILocation(line: 469, column: 3, scope: !480)
!489 = distinct !DISubprogram(name: "fstatat", scope: !427, file: !427, line: 474, type: !490, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !492)
!490 = !DISubroutineType(types: !491)
!491 = !{!8, !8, !13, !430, !8}
!492 = !{!493, !494, !495, !496}
!493 = !DILocalVariable(name: "__fd", arg: 1, scope: !489, file: !427, line: 474, type: !8)
!494 = !DILocalVariable(name: "__filename", arg: 2, scope: !489, file: !427, line: 474, type: !13)
!495 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !489, file: !427, line: 474, type: !430)
!496 = !DILocalVariable(name: "__flag", arg: 4, scope: !489, file: !427, line: 474, type: !8)
!497 = !DILocation(line: 0, scope: !489)
!498 = !DILocation(line: 477, column: 10, scope: !489)
!499 = !DILocation(line: 477, column: 3, scope: !489)
!500 = distinct !DISubprogram(name: "mknod", scope: !427, file: !427, line: 483, type: !501, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{!8, !13, !441, !435}
!503 = !{!504, !505, !506}
!504 = !DILocalVariable(name: "__path", arg: 1, scope: !500, file: !427, line: 483, type: !13)
!505 = !DILocalVariable(name: "__mode", arg: 2, scope: !500, file: !427, line: 483, type: !441)
!506 = !DILocalVariable(name: "__dev", arg: 3, scope: !500, file: !427, line: 483, type: !435)
!507 = !DILocation(line: 0, scope: !500)
!508 = !DILocation(line: 485, column: 10, scope: !500)
!509 = !DILocation(line: 485, column: 3, scope: !500)
!510 = distinct !DISubprogram(name: "mknodat", scope: !427, file: !427, line: 491, type: !511, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!8, !8, !13, !441, !435}
!513 = !{!514, !515, !516, !517}
!514 = !DILocalVariable(name: "__fd", arg: 1, scope: !510, file: !427, line: 491, type: !8)
!515 = !DILocalVariable(name: "__path", arg: 2, scope: !510, file: !427, line: 491, type: !13)
!516 = !DILocalVariable(name: "__mode", arg: 3, scope: !510, file: !427, line: 491, type: !441)
!517 = !DILocalVariable(name: "__dev", arg: 4, scope: !510, file: !427, line: 491, type: !435)
!518 = !DILocation(line: 0, scope: !510)
!519 = !DILocation(line: 494, column: 10, scope: !510)
!520 = !DILocation(line: 494, column: 3, scope: !510)
!521 = distinct !DISubprogram(name: "stat64", scope: !427, file: !427, line: 502, type: !522, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !544)
!522 = !DISubroutineType(types: !523)
!523 = !{!8, !13, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !432, line: 119, size: 1152, elements: !526)
!526 = !{!527, !528, !530, !531, !532, !533, !534, !535, !536, !537, !538, !540, !541, !542, !543}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !525, file: !432, line: 121, baseType: !435, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !525, file: !432, line: 123, baseType: !529, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !178, line: 149, baseType: !41)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !525, file: !432, line: 124, baseType: !439, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !525, file: !432, line: 125, baseType: !441, size: 32, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !525, file: !432, line: 132, baseType: !443, size: 32, offset: 224)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !525, file: !432, line: 133, baseType: !445, size: 32, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !525, file: !432, line: 135, baseType: !8, size: 32, offset: 288)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !525, file: !432, line: 136, baseType: !435, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !525, file: !432, line: 137, baseType: !177, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !525, file: !432, line: 143, baseType: !450, size: 64, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !525, file: !432, line: 144, baseType: !539, size: 64, offset: 512)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !178, line: 180, baseType: !18)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !525, file: !432, line: 152, baseType: !454, size: 128, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !525, file: !432, line: 153, baseType: !454, size: 128, offset: 704)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !525, file: !432, line: 154, baseType: !454, size: 128, offset: 832)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !525, file: !432, line: 164, baseType: !464, size: 192, offset: 960)
!544 = !{!545, !546}
!545 = !DILocalVariable(name: "__path", arg: 1, scope: !521, file: !427, line: 502, type: !13)
!546 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !521, file: !427, line: 502, type: !524)
!547 = !DILocation(line: 0, scope: !521)
!548 = !DILocation(line: 504, column: 10, scope: !521)
!549 = !DILocation(line: 504, column: 3, scope: !521)
!550 = distinct !DISubprogram(name: "lstat64", scope: !427, file: !427, line: 509, type: !522, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !551)
!551 = !{!552, !553}
!552 = !DILocalVariable(name: "__path", arg: 1, scope: !550, file: !427, line: 509, type: !13)
!553 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !550, file: !427, line: 509, type: !524)
!554 = !DILocation(line: 0, scope: !550)
!555 = !DILocation(line: 511, column: 10, scope: !550)
!556 = !DILocation(line: 511, column: 3, scope: !550)
!557 = distinct !DISubprogram(name: "fstat64", scope: !427, file: !427, line: 516, type: !558, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{!8, !8, !524}
!560 = !{!561, !562}
!561 = !DILocalVariable(name: "__fd", arg: 1, scope: !557, file: !427, line: 516, type: !8)
!562 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !557, file: !427, line: 516, type: !524)
!563 = !DILocation(line: 0, scope: !557)
!564 = !DILocation(line: 518, column: 10, scope: !557)
!565 = !DILocation(line: 518, column: 3, scope: !557)
!566 = distinct !DISubprogram(name: "fstatat64", scope: !427, file: !427, line: 523, type: !567, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!8, !8, !13, !524, !8}
!569 = !{!570, !571, !572, !573}
!570 = !DILocalVariable(name: "__fd", arg: 1, scope: !566, file: !427, line: 523, type: !8)
!571 = !DILocalVariable(name: "__filename", arg: 2, scope: !566, file: !427, line: 523, type: !13)
!572 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !566, file: !427, line: 523, type: !524)
!573 = !DILocalVariable(name: "__flag", arg: 4, scope: !566, file: !427, line: 523, type: !8)
!574 = !DILocation(line: 0, scope: !566)
!575 = !DILocation(line: 526, column: 10, scope: !566)
!576 = !DILocation(line: 526, column: 3, scope: !566)
!577 = distinct !DISubprogram(name: "bitmap_clear", scope: !3, file: !3, line: 295, type: !578, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !582)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !580}
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !581, line: 47, baseType: !24)
!581 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!582 = !{!583}
!583 = !DILocalVariable(name: "head", arg: 1, scope: !577, file: !3, line: 295, type: !580)
!584 = !DILocation(line: 0, scope: !577)
!585 = !DILocation(line: 297, column: 13, scope: !586)
!586 = distinct !DILexicalBlock(scope: !577, file: !3, line: 297, column: 7)
!587 = !DILocation(line: 297, column: 7, scope: !586)
!588 = !DILocation(line: 297, column: 7, scope: !577)
!589 = !DILocation(line: 298, column: 5, scope: !586)
!590 = !DILocation(line: 299, column: 1, scope: !577)
!591 = distinct !DISubprogram(name: "bitmap_elt_clear_from", scope: !3, file: !3, line: 246, type: !592, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !594)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !580, !29}
!594 = !{!595, !596, !597, !598}
!595 = !DILocalVariable(name: "head", arg: 1, scope: !591, file: !3, line: 246, type: !580)
!596 = !DILocalVariable(name: "elt", arg: 2, scope: !591, file: !3, line: 246, type: !29)
!597 = !DILocalVariable(name: "prev", scope: !591, file: !3, line: 248, type: !29)
!598 = !DILocalVariable(name: "bit_obstack", scope: !591, file: !3, line: 249, type: !47)
!599 = !DILocation(line: 0, scope: !591)
!600 = !DILocation(line: 249, column: 39, scope: !591)
!601 = !DILocation(line: 254, column: 8, scope: !602)
!602 = distinct !DILexicalBlock(scope: !591, file: !3, line: 254, column: 7)
!603 = !DILocation(line: 254, column: 7, scope: !591)
!604 = !DILocation(line: 262, column: 15, scope: !591)
!605 = !DILocation(line: 263, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !591, file: !3, line: 263, column: 7)
!607 = !DILocation(line: 263, column: 7, scope: !591)
!608 = !DILocation(line: 265, column: 13, scope: !609)
!609 = distinct !DILexicalBlock(scope: !606, file: !3, line: 264, column: 5)
!610 = !DILocation(line: 265, column: 18, scope: !609)
!611 = !DILocation(line: 266, column: 17, scope: !612)
!612 = distinct !DILexicalBlock(scope: !609, file: !3, line: 266, column: 11)
!613 = !DILocation(line: 266, column: 26, scope: !612)
!614 = !DILocation(line: 266, column: 39, scope: !612)
!615 = !DILocation(line: 266, column: 31, scope: !612)
!616 = !DILocation(line: 266, column: 11, scope: !609)
!617 = !DILocation(line: 268, column: 18, scope: !618)
!618 = distinct !DILexicalBlock(scope: !612, file: !3, line: 267, column: 2)
!619 = !DILocation(line: 269, column: 23, scope: !618)
!620 = !DILocation(line: 269, column: 10, scope: !618)
!621 = !DILocation(line: 269, column: 15, scope: !618)
!622 = !DILocation(line: 270, column: 2, scope: !618)
!623 = !DILocation(line: 274, column: 13, scope: !624)
!624 = distinct !DILexicalBlock(scope: !606, file: !3, line: 273, column: 5)
!625 = !DILocation(line: 274, column: 19, scope: !624)
!626 = !DILocation(line: 275, column: 13, scope: !624)
!627 = !DILocation(line: 275, column: 21, scope: !624)
!628 = !DILocation(line: 276, column: 13, scope: !624)
!629 = !DILocation(line: 276, column: 18, scope: !624)
!630 = !DILocation(line: 280, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !591, file: !3, line: 280, column: 7)
!632 = !DILocation(line: 280, column: 7, scope: !591)
!633 = !DILocation(line: 282, column: 32, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !3, line: 281, column: 5)
!635 = !DILocation(line: 282, column: 17, scope: !634)
!636 = !DILocation(line: 283, column: 20, scope: !634)
!637 = !DILocation(line: 283, column: 29, scope: !634)
!638 = !DILocation(line: 284, column: 5, scope: !634)
!639 = !DILocation(line: 287, column: 19, scope: !640)
!640 = distinct !DILexicalBlock(scope: !631, file: !3, line: 286, column: 5)
!641 = !DILocation(line: 287, column: 17, scope: !640)
!642 = !DILocation(line: 288, column: 23, scope: !640)
!643 = !DILocation(line: 290, column: 1, scope: !591)
!644 = distinct !DISubprogram(name: "bitmap_obstack_initialize", scope: !3, file: !3, line: 305, type: !645, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !647)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !47}
!647 = !{!648}
!648 = !DILocalVariable(name: "bit_obstack", arg: 1, scope: !644, file: !3, line: 305, type: !47)
!649 = !DILocation(line: 0, scope: !644)
!650 = !DILocation(line: 307, column: 8, scope: !651)
!651 = distinct !DILexicalBlock(scope: !644, file: !3, line: 307, column: 7)
!652 = !DILocation(line: 307, column: 7, scope: !644)
!653 = !DILocation(line: 309, column: 39, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !3, line: 309, column: 11)
!655 = distinct !DILexicalBlock(scope: !651, file: !3, line: 308, column: 5)
!656 = !DILocation(line: 309, column: 11, scope: !655)
!657 = !DILocation(line: 318, column: 16, scope: !644)
!658 = !DILocation(line: 318, column: 25, scope: !644)
!659 = !DILocation(line: 319, column: 16, scope: !644)
!660 = !DILocation(line: 319, column: 22, scope: !644)
!661 = !DILocation(line: 320, column: 3, scope: !644)
!662 = !DILocation(line: 324, column: 1, scope: !644)
!663 = distinct !DISubprogram(name: "bitmap_obstack_release", scope: !3, file: !3, line: 330, type: !645, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!664 = !{!665}
!665 = !DILocalVariable(name: "bit_obstack", arg: 1, scope: !663, file: !3, line: 330, type: !47)
!666 = !DILocation(line: 0, scope: !663)
!667 = !DILocation(line: 332, column: 8, scope: !668)
!668 = distinct !DILexicalBlock(scope: !663, file: !3, line: 332, column: 7)
!669 = !DILocation(line: 332, column: 7, scope: !663)
!670 = !DILocation(line: 334, column: 11, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 334, column: 11)
!672 = distinct !DILexicalBlock(scope: !668, file: !3, line: 333, column: 5)
!673 = !DILocation(line: 334, column: 11, scope: !672)
!674 = !DILocation(line: 336, column: 4, scope: !675)
!675 = distinct !DILexicalBlock(scope: !671, file: !3, line: 335, column: 2)
!676 = !DILocation(line: 342, column: 16, scope: !663)
!677 = !DILocation(line: 342, column: 25, scope: !663)
!678 = !DILocation(line: 343, column: 16, scope: !663)
!679 = !DILocation(line: 343, column: 22, scope: !663)
!680 = !DILocation(line: 344, column: 3, scope: !663)
!681 = !DILocation(line: 345, column: 1, scope: !663)
!682 = distinct !DISubprogram(name: "bitmap_obstack_alloc_stat", scope: !3, file: !3, line: 351, type: !683, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !685)
!683 = !DISubroutineType(types: !684)
!684 = !{!580, !47}
!685 = !{!686, !687}
!686 = !DILocalVariable(name: "bit_obstack", arg: 1, scope: !682, file: !3, line: 351, type: !47)
!687 = !DILocalVariable(name: "map", scope: !682, file: !3, line: 353, type: !580)
!688 = !DILocation(line: 0, scope: !682)
!689 = !DILocation(line: 355, column: 8, scope: !690)
!690 = distinct !DILexicalBlock(scope: !682, file: !3, line: 355, column: 7)
!691 = !DILocation(line: 355, column: 7, scope: !682)
!692 = !DILocation(line: 357, column: 22, scope: !682)
!693 = !DILocation(line: 358, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !682, file: !3, line: 358, column: 7)
!695 = !DILocation(line: 358, column: 7, scope: !682)
!696 = !DILocation(line: 359, column: 58, scope: !694)
!697 = !DILocation(line: 359, column: 24, scope: !694)
!698 = !DILocation(line: 359, column: 5, scope: !694)
!699 = !DILocation(line: 361, column: 11, scope: !694)
!700 = !DILocation(line: 362, column: 3, scope: !682)
!701 = !DILocation(line: 367, column: 3, scope: !682)
!702 = distinct !DISubprogram(name: "bitmap_initialize_stat", scope: !26, file: !26, line: 165, type: !703, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !580, !47}
!705 = !{!706, !707}
!706 = !DILocalVariable(name: "head", arg: 1, scope: !702, file: !26, line: 165, type: !580)
!707 = !DILocalVariable(name: "obstack", arg: 2, scope: !702, file: !26, line: 165, type: !47)
!708 = !DILocation(line: 0, scope: !702)
!709 = !DILocation(line: 167, column: 23, scope: !702)
!710 = !DILocation(line: 167, column: 31, scope: !702)
!711 = !DILocation(line: 167, column: 9, scope: !702)
!712 = !DILocation(line: 167, column: 15, scope: !702)
!713 = !DILocation(line: 168, column: 9, scope: !702)
!714 = !DILocation(line: 168, column: 17, scope: !702)
!715 = !DILocation(line: 172, column: 1, scope: !702)
!716 = distinct !DISubprogram(name: "bitmap_gc_alloc_stat", scope: !3, file: !3, line: 373, type: !717, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !719)
!717 = !DISubroutineType(types: !718)
!718 = !{!580}
!719 = !{!720}
!720 = !DILocalVariable(name: "map", scope: !716, file: !3, line: 375, type: !580)
!721 = !DILocation(line: 377, column: 9, scope: !716)
!722 = !DILocation(line: 0, scope: !716)
!723 = !DILocation(line: 378, column: 3, scope: !716)
!724 = !DILocation(line: 383, column: 3, scope: !716)
!725 = distinct !DISubprogram(name: "bitmap_obstack_free", scope: !3, file: !3, line: 389, type: !578, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !726)
!726 = !{!727}
!727 = !DILocalVariable(name: "map", arg: 1, scope: !725, file: !3, line: 389, type: !580)
!728 = !DILocation(line: 0, scope: !725)
!729 = !DILocation(line: 391, column: 7, scope: !730)
!730 = distinct !DILexicalBlock(scope: !725, file: !3, line: 391, column: 7)
!731 = !DILocation(line: 391, column: 7, scope: !725)
!732 = !DILocation(line: 393, column: 7, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !3, line: 392, column: 5)
!734 = !DILocation(line: 394, column: 44, scope: !733)
!735 = !DILocation(line: 394, column: 53, scope: !733)
!736 = !DILocation(line: 394, column: 18, scope: !733)
!737 = !DILocation(line: 398, column: 27, scope: !733)
!738 = !DILocation(line: 399, column: 5, scope: !733)
!739 = !DILocation(line: 400, column: 1, scope: !725)
!740 = distinct !DISubprogram(name: "bitmap_copy", scope: !3, file: !3, line: 514, type: !741, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !746)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !580, !743}
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !581, line: 48, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!746 = !{!747, !748, !749, !752, !753}
!747 = !DILocalVariable(name: "to", arg: 1, scope: !740, file: !3, line: 514, type: !580)
!748 = !DILocalVariable(name: "from", arg: 2, scope: !740, file: !3, line: 514, type: !743)
!749 = !DILocalVariable(name: "from_ptr", scope: !740, file: !3, line: 516, type: !750)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!752 = !DILocalVariable(name: "to_ptr", scope: !740, file: !3, line: 517, type: !29)
!753 = !DILocalVariable(name: "to_elt", scope: !754, file: !3, line: 524, type: !29)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 523, column: 5)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 522, column: 3)
!756 = distinct !DILexicalBlock(scope: !740, file: !3, line: 522, column: 3)
!757 = !DILocation(line: 0, scope: !740)
!758 = !DILocation(line: 519, column: 3, scope: !740)
!759 = !DILocation(line: 522, column: 25, scope: !756)
!760 = !DILocation(line: 0, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 532, column: 2)
!762 = distinct !DILexicalBlock(scope: !754, file: !3, line: 531, column: 11)
!763 = !DILocation(line: 522, column: 8, scope: !756)
!764 = !DILocation(line: 0, scope: !756)
!765 = !DILocation(line: 522, column: 3, scope: !756)
!766 = !DILocation(line: 524, column: 32, scope: !754)
!767 = !DILocation(line: 0, scope: !754)
!768 = !DILocation(line: 526, column: 32, scope: !754)
!769 = !DILocation(line: 526, column: 15, scope: !754)
!770 = !DILocation(line: 526, column: 20, scope: !754)
!771 = !DILocation(line: 527, column: 15, scope: !754)
!772 = !DILocation(line: 527, column: 29, scope: !754)
!773 = !DILocation(line: 527, column: 7, scope: !754)
!774 = !DILocation(line: 531, column: 18, scope: !762)
!775 = !DILocation(line: 531, column: 11, scope: !754)
!776 = !DILocation(line: 533, column: 28, scope: !761)
!777 = !DILocation(line: 533, column: 14, scope: !761)
!778 = !DILocation(line: 534, column: 25, scope: !761)
!779 = !DILocation(line: 534, column: 13, scope: !761)
!780 = !DILocation(line: 535, column: 27, scope: !761)
!781 = !DILocation(line: 535, column: 32, scope: !761)
!782 = !DILocation(line: 535, column: 12, scope: !761)
!783 = !DILocation(line: 535, column: 17, scope: !761)
!784 = !DILocation(line: 536, column: 2, scope: !761)
!785 = !DILocation(line: 539, column: 12, scope: !786)
!786 = distinct !DILexicalBlock(scope: !762, file: !3, line: 538, column: 2)
!787 = !DILocation(line: 539, column: 17, scope: !786)
!788 = !DILocation(line: 540, column: 12, scope: !786)
!789 = !DILocation(line: 540, column: 17, scope: !786)
!790 = !DILocation(line: 541, column: 12, scope: !786)
!791 = !DILocation(line: 541, column: 17, scope: !786)
!792 = !DILocation(line: 522, column: 63, scope: !755)
!793 = !DILocation(line: 522, column: 3, scope: !755)
!794 = distinct !{!794, !765, !795}
!795 = !DILocation(line: 545, column: 5, scope: !756)
!796 = !DILocation(line: 546, column: 1, scope: !740)
!797 = distinct !DISubprogram(name: "bitmap_element_allocate", scope: !3, file: !3, line: 194, type: !798, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{!29, !580}
!800 = !{!801, !802, !803}
!801 = !DILocalVariable(name: "head", arg: 1, scope: !797, file: !3, line: 194, type: !580)
!802 = !DILocalVariable(name: "element", scope: !797, file: !3, line: 196, type: !29)
!803 = !DILocalVariable(name: "bit_obstack", scope: !797, file: !3, line: 197, type: !47)
!804 = !DILocation(line: 0, scope: !797)
!805 = !DILocation(line: 197, column: 39, scope: !797)
!806 = !DILocation(line: 199, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !797, file: !3, line: 199, column: 7)
!808 = !DILocation(line: 199, column: 7, scope: !797)
!809 = !DILocation(line: 201, column: 30, scope: !810)
!810 = distinct !DILexicalBlock(scope: !807, file: !3, line: 200, column: 5)
!811 = !DILocation(line: 203, column: 11, scope: !812)
!812 = distinct !DILexicalBlock(scope: !810, file: !3, line: 203, column: 11)
!813 = !DILocation(line: 203, column: 11, scope: !810)
!814 = !DILocation(line: 206, column: 15, scope: !815)
!815 = distinct !DILexicalBlock(scope: !812, file: !3, line: 206, column: 6)
!816 = !DILocation(line: 206, column: 6, scope: !815)
!817 = !DILocation(line: 206, column: 6, scope: !812)
!818 = !DILocation(line: 208, column: 28, scope: !819)
!819 = distinct !DILexicalBlock(scope: !815, file: !3, line: 207, column: 4)
!820 = !DILocation(line: 209, column: 45, scope: !819)
!821 = !DILocation(line: 209, column: 29, scope: !819)
!822 = !DILocation(line: 209, column: 34, scope: !819)
!823 = !DILocation(line: 210, column: 4, scope: !819)
!824 = !DILocation(line: 213, column: 37, scope: !815)
!825 = !DILocation(line: 213, column: 26, scope: !815)
!826 = !DILocation(line: 215, column: 12, scope: !812)
!827 = !DILocation(line: 219, column: 17, scope: !828)
!828 = distinct !DILexicalBlock(scope: !807, file: !3, line: 218, column: 5)
!829 = !DILocation(line: 220, column: 11, scope: !830)
!830 = distinct !DILexicalBlock(scope: !828, file: !3, line: 220, column: 11)
!831 = !DILocation(line: 220, column: 11, scope: !828)
!832 = !DILocation(line: 223, column: 15, scope: !833)
!833 = distinct !DILexicalBlock(scope: !830, file: !3, line: 223, column: 6)
!834 = !DILocation(line: 223, column: 6, scope: !833)
!835 = !DILocation(line: 223, column: 6, scope: !830)
!836 = !DILocation(line: 225, column: 22, scope: !837)
!837 = distinct !DILexicalBlock(scope: !833, file: !3, line: 224, column: 4)
!838 = !DILocation(line: 226, column: 39, scope: !837)
!839 = !DILocation(line: 226, column: 23, scope: !837)
!840 = !DILocation(line: 226, column: 28, scope: !837)
!841 = !DILocation(line: 227, column: 4, scope: !837)
!842 = !DILocation(line: 230, column: 31, scope: !833)
!843 = !DILocation(line: 230, column: 20, scope: !833)
!844 = !DILocation(line: 232, column: 12, scope: !830)
!845 = !DILocation(line: 0, scope: !807)
!846 = !DILocation(line: 238, column: 11, scope: !797)
!847 = !DILocation(line: 238, column: 3, scope: !797)
!848 = !DILocation(line: 240, column: 3, scope: !797)
!849 = distinct !DISubprogram(name: "bitmap_clear_bit", scope: !3, file: !3, line: 603, type: !850, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !852)
!850 = !DISubroutineType(types: !851)
!851 = !{!7, !580, !8}
!852 = !{!853, !854, !855, !857, !860, !861, !862}
!853 = !DILocalVariable(name: "head", arg: 1, scope: !849, file: !3, line: 603, type: !580)
!854 = !DILocalVariable(name: "bit", arg: 2, scope: !849, file: !3, line: 603, type: !8)
!855 = !DILocalVariable(name: "ptr", scope: !849, file: !3, line: 605, type: !856)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!857 = !DILocalVariable(name: "bit_num", scope: !858, file: !3, line: 609, type: !37)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 608, column: 5)
!859 = distinct !DILexicalBlock(scope: !849, file: !3, line: 607, column: 7)
!860 = !DILocalVariable(name: "word_num", scope: !858, file: !3, line: 610, type: !37)
!861 = !DILocalVariable(name: "bit_val", scope: !858, file: !3, line: 611, type: !40)
!862 = !DILocalVariable(name: "res", scope: !858, file: !3, line: 612, type: !7)
!863 = !DILocation(line: 0, scope: !849)
!864 = !DILocation(line: 605, column: 31, scope: !849)
!865 = !DILocation(line: 607, column: 11, scope: !859)
!866 = !DILocation(line: 607, column: 7, scope: !849)
!867 = !DILocation(line: 609, column: 31, scope: !858)
!868 = !DILocation(line: 0, scope: !858)
!869 = !DILocation(line: 610, column: 31, scope: !858)
!870 = !DILocation(line: 610, column: 50, scope: !858)
!871 = !DILocation(line: 611, column: 47, scope: !858)
!872 = !DILocation(line: 612, column: 19, scope: !858)
!873 = !DILocation(line: 612, column: 39, scope: !858)
!874 = !DILocation(line: 612, column: 50, scope: !858)
!875 = !DILocation(line: 612, column: 18, scope: !858)
!876 = !DILocation(line: 613, column: 11, scope: !858)
!877 = !DILocation(line: 614, column: 25, scope: !878)
!878 = distinct !DILexicalBlock(scope: !858, file: !3, line: 613, column: 11)
!879 = !DILocation(line: 614, column: 22, scope: !878)
!880 = !DILocation(line: 614, column: 2, scope: !878)
!881 = !DILocation(line: 617, column: 11, scope: !882)
!882 = distinct !DILexicalBlock(scope: !858, file: !3, line: 617, column: 11)
!883 = !DILocation(line: 617, column: 11, scope: !858)
!884 = !DILocation(line: 618, column: 2, scope: !882)
!885 = !DILocation(line: 624, column: 1, scope: !849)
!886 = distinct !DISubprogram(name: "bitmap_find_bit", scope: !3, file: !3, line: 554, type: !887, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{!29, !580, !37}
!889 = !{!890, !891, !892, !893}
!890 = !DILocalVariable(name: "head", arg: 1, scope: !886, file: !3, line: 554, type: !580)
!891 = !DILocalVariable(name: "bit", arg: 2, scope: !886, file: !3, line: 554, type: !37)
!892 = !DILocalVariable(name: "element", scope: !886, file: !3, line: 556, type: !29)
!893 = !DILocalVariable(name: "indx", scope: !886, file: !3, line: 557, type: !37)
!894 = !DILocation(line: 0, scope: !886)
!895 = !DILocation(line: 557, column: 27, scope: !886)
!896 = !DILocation(line: 562, column: 13, scope: !897)
!897 = distinct !DILexicalBlock(scope: !886, file: !3, line: 562, column: 7)
!898 = !DILocation(line: 562, column: 21, scope: !897)
!899 = !DILocation(line: 563, column: 7, scope: !897)
!900 = !DILocation(line: 563, column: 16, scope: !897)
!901 = !DILocation(line: 563, column: 21, scope: !897)
!902 = !DILocation(line: 562, column: 7, scope: !886)
!903 = !DILocation(line: 564, column: 5, scope: !897)
!904 = !DILocation(line: 566, column: 18, scope: !905)
!905 = distinct !DILexicalBlock(scope: !886, file: !3, line: 566, column: 7)
!906 = !DILocation(line: 566, column: 7, scope: !886)
!907 = !DILocation(line: 569, column: 10, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !3, line: 569, column: 5)
!909 = !DILocation(line: 0, scope: !908)
!910 = !DILocation(line: 570, column: 12, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !3, line: 569, column: 5)
!912 = !DILocation(line: 570, column: 17, scope: !911)
!913 = !DILocation(line: 570, column: 22, scope: !911)
!914 = !DILocation(line: 570, column: 34, scope: !911)
!915 = !DILocation(line: 570, column: 39, scope: !911)
!916 = !DILocation(line: 569, column: 5, scope: !908)
!917 = !DILocation(line: 569, column: 5, scope: !911)
!918 = distinct !{!918, !916, !919}
!919 = !DILocation(line: 572, column: 7, scope: !908)
!920 = !DILocation(line: 574, column: 23, scope: !921)
!921 = distinct !DILexicalBlock(scope: !905, file: !3, line: 574, column: 12)
!922 = !DILocation(line: 574, column: 27, scope: !921)
!923 = !DILocation(line: 574, column: 12, scope: !905)
!924 = !DILocation(line: 577, column: 10, scope: !925)
!925 = distinct !DILexicalBlock(scope: !921, file: !3, line: 577, column: 5)
!926 = !DILocation(line: 0, scope: !925)
!927 = !DILocation(line: 578, column: 12, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !3, line: 577, column: 5)
!929 = !DILocation(line: 578, column: 17, scope: !928)
!930 = !DILocation(line: 578, column: 22, scope: !928)
!931 = !DILocation(line: 578, column: 34, scope: !928)
!932 = !DILocation(line: 578, column: 39, scope: !928)
!933 = !DILocation(line: 577, column: 5, scope: !925)
!934 = !DILocation(line: 577, column: 5, scope: !928)
!935 = distinct !{!935, !933, !936}
!936 = !DILocation(line: 580, column: 7, scope: !925)
!937 = !DILocation(line: 585, column: 26, scope: !938)
!938 = distinct !DILexicalBlock(scope: !921, file: !3, line: 585, column: 5)
!939 = !DILocation(line: 0, scope: !938)
!940 = !DILocation(line: 585, column: 10, scope: !938)
!941 = !DILocation(line: 586, column: 12, scope: !942)
!942 = distinct !DILexicalBlock(scope: !938, file: !3, line: 585, column: 5)
!943 = !DILocation(line: 586, column: 17, scope: !942)
!944 = !DILocation(line: 586, column: 22, scope: !942)
!945 = !DILocation(line: 586, column: 34, scope: !942)
!946 = !DILocation(line: 586, column: 39, scope: !942)
!947 = !DILocation(line: 585, column: 5, scope: !938)
!948 = !DILocation(line: 585, column: 5, scope: !942)
!949 = distinct !{!949, !947, !950}
!950 = !DILocation(line: 588, column: 7, scope: !938)
!951 = !DILocation(line: 592, column: 9, scope: !886)
!952 = !DILocation(line: 0, scope: !905)
!953 = !DILocation(line: 592, column: 17, scope: !886)
!954 = !DILocation(line: 593, column: 25, scope: !886)
!955 = !DILocation(line: 593, column: 14, scope: !886)
!956 = !DILocation(line: 594, column: 15, scope: !957)
!957 = distinct !DILexicalBlock(scope: !886, file: !3, line: 594, column: 7)
!958 = !DILocation(line: 594, column: 20, scope: !957)
!959 = !DILocation(line: 594, column: 32, scope: !957)
!960 = !DILocation(line: 594, column: 37, scope: !957)
!961 = !DILocation(line: 594, column: 7, scope: !886)
!962 = !DILocation(line: 598, column: 1, scope: !886)
!963 = distinct !DISubprogram(name: "bitmap_element_zerop", scope: !3, file: !3, line: 406, type: !964, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !966)
!964 = !DISubroutineType(types: !965)
!965 = !{!8, !750}
!966 = !{!967}
!967 = !DILocalVariable(name: "element", arg: 1, scope: !963, file: !3, line: 406, type: !750)
!968 = !DILocation(line: 0, scope: !963)
!969 = !DILocation(line: 409, column: 11, scope: !963)
!970 = !DILocation(line: 409, column: 30, scope: !963)
!971 = !DILocation(line: 409, column: 28, scope: !963)
!972 = !DILocation(line: 409, column: 48, scope: !963)
!973 = !DILocation(line: 409, column: 3, scope: !963)
!974 = distinct !DISubprogram(name: "bitmap_element_free", scope: !3, file: !3, line: 161, type: !592, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !975)
!975 = !{!976, !977, !978, !979}
!976 = !DILocalVariable(name: "head", arg: 1, scope: !974, file: !3, line: 161, type: !580)
!977 = !DILocalVariable(name: "elt", arg: 2, scope: !974, file: !3, line: 161, type: !29)
!978 = !DILocalVariable(name: "next", scope: !974, file: !3, line: 163, type: !29)
!979 = !DILocalVariable(name: "prev", scope: !974, file: !3, line: 164, type: !29)
!980 = !DILocation(line: 0, scope: !974)
!981 = !DILocation(line: 163, column: 31, scope: !974)
!982 = !DILocation(line: 164, column: 31, scope: !974)
!983 = !DILocation(line: 166, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !974, file: !3, line: 166, column: 7)
!985 = !DILocation(line: 166, column: 7, scope: !974)
!986 = !DILocation(line: 167, column: 11, scope: !984)
!987 = !DILocation(line: 167, column: 16, scope: !984)
!988 = !DILocation(line: 167, column: 5, scope: !984)
!989 = !DILocation(line: 169, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !974, file: !3, line: 169, column: 7)
!991 = !DILocation(line: 169, column: 7, scope: !974)
!992 = !DILocation(line: 170, column: 11, scope: !990)
!993 = !DILocation(line: 170, column: 16, scope: !990)
!994 = !DILocation(line: 170, column: 5, scope: !990)
!995 = !DILocation(line: 172, column: 13, scope: !996)
!996 = distinct !DILexicalBlock(scope: !974, file: !3, line: 172, column: 7)
!997 = !DILocation(line: 172, column: 19, scope: !996)
!998 = !DILocation(line: 172, column: 7, scope: !974)
!999 = !DILocation(line: 173, column: 17, scope: !996)
!1000 = !DILocation(line: 173, column: 5, scope: !996)
!1001 = !DILocation(line: 177, column: 13, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !974, file: !3, line: 177, column: 7)
!1003 = !DILocation(line: 177, column: 21, scope: !1002)
!1004 = !DILocation(line: 177, column: 7, scope: !974)
!1005 = !DILocation(line: 179, column: 23, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 178, column: 5)
!1007 = !DILocation(line: 179, column: 21, scope: !1006)
!1008 = !DILocation(line: 180, column: 11, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 180, column: 11)
!1010 = !DILocation(line: 180, column: 11, scope: !1006)
!1011 = !DILocation(line: 181, column: 30, scope: !1009)
!1012 = !DILocation(line: 181, column: 8, scope: !1009)
!1013 = !DILocation(line: 181, column: 13, scope: !1009)
!1014 = !DILocation(line: 181, column: 2, scope: !1009)
!1015 = !DILocation(line: 183, column: 8, scope: !1009)
!1016 = !DILocation(line: 183, column: 13, scope: !1009)
!1017 = !DILocation(line: 188, column: 3, scope: !974)
!1018 = !DILocation(line: 189, column: 1, scope: !974)
!1019 = distinct !DISubprogram(name: "bitmap_set_bit", scope: !3, file: !3, line: 629, type: !850, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1020)
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1021 = !DILocalVariable(name: "head", arg: 1, scope: !1019, file: !3, line: 629, type: !580)
!1022 = !DILocalVariable(name: "bit", arg: 2, scope: !1019, file: !3, line: 629, type: !8)
!1023 = !DILocalVariable(name: "ptr", scope: !1019, file: !3, line: 631, type: !29)
!1024 = !DILocalVariable(name: "word_num", scope: !1019, file: !3, line: 632, type: !37)
!1025 = !DILocalVariable(name: "bit_num", scope: !1019, file: !3, line: 633, type: !37)
!1026 = !DILocalVariable(name: "bit_val", scope: !1019, file: !3, line: 634, type: !40)
!1027 = !DILocalVariable(name: "res", scope: !1028, file: !3, line: 646, type: !7)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 645, column: 5)
!1029 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 636, column: 7)
!1030 = !DILocation(line: 0, scope: !1019)
!1031 = !DILocation(line: 631, column: 25, scope: !1019)
!1032 = !DILocation(line: 632, column: 27, scope: !1019)
!1033 = !DILocation(line: 632, column: 46, scope: !1019)
!1034 = !DILocation(line: 633, column: 27, scope: !1019)
!1035 = !DILocation(line: 634, column: 43, scope: !1019)
!1036 = !DILocation(line: 636, column: 11, scope: !1029)
!1037 = !DILocation(line: 636, column: 7, scope: !1019)
!1038 = !DILocation(line: 638, column: 13, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 637, column: 5)
!1040 = !DILocation(line: 639, column: 23, scope: !1039)
!1041 = !DILocation(line: 639, column: 12, scope: !1039)
!1042 = !DILocation(line: 639, column: 17, scope: !1039)
!1043 = !DILocation(line: 640, column: 7, scope: !1039)
!1044 = !DILocation(line: 640, column: 27, scope: !1039)
!1045 = !DILocation(line: 641, column: 7, scope: !1039)
!1046 = !DILocation(line: 642, column: 7, scope: !1039)
!1047 = !DILocation(line: 646, column: 19, scope: !1028)
!1048 = !DILocation(line: 646, column: 39, scope: !1028)
!1049 = !DILocation(line: 646, column: 50, scope: !1028)
!1050 = !DILocation(line: 646, column: 18, scope: !1028)
!1051 = !DILocation(line: 0, scope: !1028)
!1052 = !DILocation(line: 647, column: 11, scope: !1028)
!1053 = !DILocation(line: 648, column: 22, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 647, column: 11)
!1055 = !DILocation(line: 648, column: 2, scope: !1054)
!1056 = !DILocation(line: 0, scope: !1029)
!1057 = !DILocation(line: 651, column: 1, scope: !1019)
!1058 = distinct !DISubprogram(name: "bitmap_element_link", scope: !3, file: !3, line: 424, type: !592, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1059)
!1059 = !{!1060, !1061, !1062, !1063}
!1060 = !DILocalVariable(name: "head", arg: 1, scope: !1058, file: !3, line: 424, type: !580)
!1061 = !DILocalVariable(name: "element", arg: 2, scope: !1058, file: !3, line: 424, type: !29)
!1062 = !DILocalVariable(name: "indx", scope: !1058, file: !3, line: 426, type: !37)
!1063 = !DILocalVariable(name: "ptr", scope: !1058, file: !3, line: 427, type: !29)
!1064 = !DILocation(line: 0, scope: !1058)
!1065 = !DILocation(line: 426, column: 32, scope: !1058)
!1066 = !DILocation(line: 430, column: 13, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 430, column: 7)
!1068 = !DILocation(line: 430, column: 19, scope: !1067)
!1069 = !DILocation(line: 430, column: 7, scope: !1058)
!1070 = !DILocation(line: 432, column: 32, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 431, column: 5)
!1072 = !DILocation(line: 432, column: 37, scope: !1071)
!1073 = !DILocation(line: 432, column: 16, scope: !1071)
!1074 = !DILocation(line: 432, column: 21, scope: !1071)
!1075 = !DILocation(line: 433, column: 19, scope: !1071)
!1076 = !DILocation(line: 434, column: 5, scope: !1071)
!1077 = !DILocation(line: 438, column: 25, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 438, column: 12)
!1079 = !DILocation(line: 438, column: 17, scope: !1078)
!1080 = !DILocation(line: 0, scope: !1078)
!1081 = !DILocation(line: 438, column: 12, scope: !1067)
!1082 = !DILocation(line: 458, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 458, column: 7)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 457, column: 5)
!1085 = !DILocation(line: 440, column: 7, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 440, column: 7)
!1087 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 439, column: 5)
!1088 = !DILocation(line: 0, scope: !1086)
!1089 = !DILocation(line: 441, column: 10, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 440, column: 7)
!1091 = !DILocation(line: 441, column: 15, scope: !1090)
!1092 = !DILocation(line: 441, column: 20, scope: !1090)
!1093 = !DILocation(line: 441, column: 34, scope: !1090)
!1094 = !DILocation(line: 441, column: 39, scope: !1090)
!1095 = !DILocation(line: 440, column: 7, scope: !1090)
!1096 = distinct !{!1096, !1085, !1097}
!1097 = !DILocation(line: 443, column: 2, scope: !1086)
!1098 = !DILocation(line: 445, column: 11, scope: !1087)
!1099 = !DILocation(line: 446, column: 13, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 445, column: 11)
!1101 = !DILocation(line: 446, column: 18, scope: !1100)
!1102 = !DILocation(line: 446, column: 2, scope: !1100)
!1103 = !DILocation(line: 448, column: 14, scope: !1100)
!1104 = !DILocation(line: 450, column: 28, scope: !1087)
!1105 = !DILocation(line: 450, column: 16, scope: !1087)
!1106 = !DILocation(line: 450, column: 21, scope: !1087)
!1107 = !DILocation(line: 451, column: 16, scope: !1087)
!1108 = !DILocation(line: 451, column: 21, scope: !1087)
!1109 = !DILocation(line: 452, column: 17, scope: !1087)
!1110 = !DILocation(line: 453, column: 5, scope: !1087)
!1111 = !DILocation(line: 0, scope: !1083)
!1112 = !DILocation(line: 459, column: 10, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 458, column: 7)
!1114 = !DILocation(line: 459, column: 15, scope: !1113)
!1115 = !DILocation(line: 459, column: 20, scope: !1113)
!1116 = !DILocation(line: 459, column: 34, scope: !1113)
!1117 = !DILocation(line: 459, column: 39, scope: !1113)
!1118 = !DILocation(line: 458, column: 7, scope: !1113)
!1119 = distinct !{!1119, !1082, !1120}
!1120 = !DILocation(line: 461, column: 2, scope: !1083)
!1121 = !DILocation(line: 463, column: 11, scope: !1084)
!1122 = !DILocation(line: 464, column: 13, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 463, column: 11)
!1124 = !DILocation(line: 464, column: 18, scope: !1123)
!1125 = !DILocation(line: 0, scope: !1084)
!1126 = !DILocation(line: 466, column: 28, scope: !1084)
!1127 = !DILocation(line: 464, column: 2, scope: !1123)
!1128 = !DILocation(line: 466, column: 21, scope: !1084)
!1129 = !DILocation(line: 467, column: 16, scope: !1084)
!1130 = !DILocation(line: 467, column: 21, scope: !1084)
!1131 = !DILocation(line: 468, column: 17, scope: !1084)
!1132 = !DILocation(line: 472, column: 9, scope: !1058)
!1133 = !DILocation(line: 472, column: 17, scope: !1058)
!1134 = !DILocation(line: 473, column: 9, scope: !1058)
!1135 = !DILocation(line: 473, column: 14, scope: !1058)
!1136 = !DILocation(line: 474, column: 1, scope: !1058)
!1137 = distinct !DISubprogram(name: "bitmap_bit_p", scope: !3, file: !3, line: 656, type: !1138, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1140)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!8, !580, !8}
!1140 = !{!1141, !1142, !1143, !1144, !1145}
!1141 = !DILocalVariable(name: "head", arg: 1, scope: !1137, file: !3, line: 656, type: !580)
!1142 = !DILocalVariable(name: "bit", arg: 2, scope: !1137, file: !3, line: 656, type: !8)
!1143 = !DILocalVariable(name: "ptr", scope: !1137, file: !3, line: 658, type: !29)
!1144 = !DILocalVariable(name: "bit_num", scope: !1137, file: !3, line: 659, type: !37)
!1145 = !DILocalVariable(name: "word_num", scope: !1137, file: !3, line: 660, type: !37)
!1146 = !DILocation(line: 0, scope: !1137)
!1147 = !DILocation(line: 662, column: 9, scope: !1137)
!1148 = !DILocation(line: 663, column: 11, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 663, column: 7)
!1150 = !DILocation(line: 663, column: 7, scope: !1137)
!1151 = !DILocation(line: 666, column: 17, scope: !1137)
!1152 = !DILocation(line: 667, column: 18, scope: !1137)
!1153 = !DILocation(line: 667, column: 37, scope: !1137)
!1154 = !DILocation(line: 669, column: 11, scope: !1137)
!1155 = !DILocation(line: 669, column: 31, scope: !1137)
!1156 = !DILocation(line: 669, column: 10, scope: !1137)
!1157 = !DILocation(line: 669, column: 3, scope: !1137)
!1158 = !DILocation(line: 670, column: 1, scope: !1137)
!1159 = distinct !DISubprogram(name: "bitmap_count_bits", scope: !3, file: !3, line: 701, type: !1160, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1162)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!41, !743}
!1162 = !{!1163, !1164, !1165, !1166}
!1163 = !DILocalVariable(name: "a", arg: 1, scope: !1159, file: !3, line: 701, type: !743)
!1164 = !DILocalVariable(name: "count", scope: !1159, file: !3, line: 703, type: !41)
!1165 = !DILocalVariable(name: "elt", scope: !1159, file: !3, line: 704, type: !750)
!1166 = !DILocalVariable(name: "ix", scope: !1159, file: !3, line: 705, type: !37)
!1167 = !DILocation(line: 0, scope: !1159)
!1168 = !DILocation(line: 707, column: 17, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 707, column: 3)
!1170 = !DILocation(line: 707, column: 8, scope: !1169)
!1171 = !DILocation(line: 703, column: 17, scope: !1159)
!1172 = !DILocation(line: 0, scope: !1169)
!1173 = !DILocation(line: 707, column: 3, scope: !1169)
!1174 = !DILocation(line: 709, column: 7, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 709, column: 7)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 708, column: 5)
!1177 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 707, column: 3)
!1178 = !DILocation(line: 709, column: 23, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 709, column: 7)
!1180 = !DILocation(line: 716, column: 30, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 710, column: 2)
!1182 = !DILocation(line: 716, column: 13, scope: !1181)
!1183 = !DILocation(line: 716, column: 10, scope: !1181)
!1184 = !DILocation(line: 709, column: 50, scope: !1179)
!1185 = !DILocation(line: 709, column: 7, scope: !1179)
!1186 = distinct !{!1186, !1174, !1187}
!1187 = !DILocation(line: 718, column: 2, scope: !1175)
!1188 = !DILocation(line: 707, column: 40, scope: !1177)
!1189 = !DILocation(line: 707, column: 3, scope: !1177)
!1190 = distinct !{!1190, !1173, !1191}
!1191 = !DILocation(line: 719, column: 5, scope: !1169)
!1192 = !DILocation(line: 720, column: 3, scope: !1159)
!1193 = distinct !DISubprogram(name: "bitmap_popcount", scope: !3, file: !3, line: 687, type: !1194, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!41, !40}
!1196 = !{!1197, !1198, !1199}
!1197 = !DILocalVariable(name: "a", arg: 1, scope: !1193, file: !3, line: 687, type: !40)
!1198 = !DILocalVariable(name: "ret", scope: !1193, file: !3, line: 689, type: !41)
!1199 = !DILocalVariable(name: "i", scope: !1193, file: !3, line: 690, type: !37)
!1200 = !DILocation(line: 0, scope: !1193)
!1201 = !DILocation(line: 693, column: 8, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 693, column: 3)
!1203 = !DILocation(line: 693, column: 17, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 693, column: 3)
!1205 = !DILocation(line: 693, column: 3, scope: !1202)
!1206 = !DILocation(line: 694, column: 30, scope: !1204)
!1207 = !DILocation(line: 694, column: 36, scope: !1204)
!1208 = !DILocation(line: 694, column: 12, scope: !1204)
!1209 = !DILocation(line: 694, column: 9, scope: !1204)
!1210 = !DILocation(line: 693, column: 38, scope: !1204)
!1211 = !DILocation(line: 693, column: 3, scope: !1204)
!1212 = distinct !{!1212, !1205, !1213}
!1213 = !DILocation(line: 694, column: 42, scope: !1202)
!1214 = !DILocation(line: 695, column: 3, scope: !1193)
!1215 = distinct !DISubprogram(name: "bitmap_single_bit_set_p", scope: !3, file: !3, line: 727, type: !1216, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1218)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!7, !743}
!1218 = !{!1219, !1220, !1221, !1222}
!1219 = !DILocalVariable(name: "a", arg: 1, scope: !1215, file: !3, line: 727, type: !743)
!1220 = !DILocalVariable(name: "count", scope: !1215, file: !3, line: 729, type: !41)
!1221 = !DILocalVariable(name: "elt", scope: !1215, file: !3, line: 730, type: !750)
!1222 = !DILocalVariable(name: "ix", scope: !1215, file: !3, line: 731, type: !37)
!1223 = !DILocation(line: 0, scope: !1215)
!1224 = !DILocation(line: 733, column: 7, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 733, column: 7)
!1226 = !DILocation(line: 733, column: 7, scope: !1215)
!1227 = !DILocation(line: 739, column: 12, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 739, column: 7)
!1229 = !DILocation(line: 739, column: 17, scope: !1228)
!1230 = !DILocation(line: 739, column: 7, scope: !1215)
!1231 = !DILocation(line: 742, column: 3, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 742, column: 3)
!1233 = !DILocation(line: 0, scope: !1232)
!1234 = !DILocation(line: 742, column: 19, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 742, column: 3)
!1236 = !DILocation(line: 749, column: 33, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 743, column: 5)
!1238 = !DILocation(line: 749, column: 16, scope: !1237)
!1239 = !DILocation(line: 749, column: 13, scope: !1237)
!1240 = !DILocation(line: 751, column: 17, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 751, column: 11)
!1242 = !DILocation(line: 751, column: 11, scope: !1237)
!1243 = !DILocation(line: 742, column: 46, scope: !1235)
!1244 = !DILocation(line: 742, column: 3, scope: !1235)
!1245 = distinct !{!1245, !1231, !1246}
!1246 = !DILocation(line: 753, column: 5, scope: !1232)
!1247 = !DILocation(line: 755, column: 16, scope: !1215)
!1248 = !DILocation(line: 755, column: 10, scope: !1215)
!1249 = !DILocation(line: 755, column: 3, scope: !1215)
!1250 = !DILocation(line: 756, column: 1, scope: !1215)
!1251 = distinct !DISubprogram(name: "bitmap_first_set_bit", scope: !3, file: !3, line: 763, type: !1252, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1254)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!37, !743}
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1260}
!1255 = !DILocalVariable(name: "a", arg: 1, scope: !1251, file: !3, line: 763, type: !743)
!1256 = !DILocalVariable(name: "elt", scope: !1251, file: !3, line: 765, type: !750)
!1257 = !DILocalVariable(name: "bit_no", scope: !1251, file: !3, line: 766, type: !37)
!1258 = !DILocalVariable(name: "word", scope: !1251, file: !3, line: 767, type: !40)
!1259 = !DILocalVariable(name: "ix", scope: !1251, file: !3, line: 768, type: !37)
!1260 = !DILabel(scope: !1251, name: "found_bit", file: !3, line: 779)
!1261 = !DILocation(line: 0, scope: !1251)
!1262 = !DILocation(line: 765, column: 34, scope: !1251)
!1263 = !DILocation(line: 770, column: 3, scope: !1251)
!1264 = !DILocation(line: 771, column: 17, scope: !1251)
!1265 = !DILocation(line: 771, column: 22, scope: !1251)
!1266 = !DILocation(line: 772, column: 8, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 772, column: 3)
!1268 = !DILocation(line: 0, scope: !1267)
!1269 = !DILocation(line: 772, column: 19, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 772, column: 3)
!1271 = !DILocation(line: 772, column: 3, scope: !1267)
!1272 = !DILocation(line: 774, column: 14, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 773, column: 5)
!1274 = !DILocation(line: 775, column: 11, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 775, column: 11)
!1276 = !DILocation(line: 775, column: 11, scope: !1273)
!1277 = !DILocation(line: 772, column: 46, scope: !1270)
!1278 = !DILocation(line: 772, column: 3, scope: !1270)
!1279 = distinct !{!1279, !1271, !1280}
!1280 = !DILocation(line: 777, column: 5, scope: !1267)
!1281 = !DILocation(line: 778, column: 3, scope: !1251)
!1282 = !DILocation(line: 780, column: 16, scope: !1251)
!1283 = !DILocation(line: 779, column: 2, scope: !1251)
!1284 = !DILocation(line: 780, column: 10, scope: !1251)
!1285 = !DILocation(line: 791, column: 14, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 791, column: 7)
!1287 = !DILocation(line: 791, column: 7, scope: !1251)
!1288 = !DILocation(line: 794, column: 14, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 794, column: 7)
!1290 = !DILocation(line: 794, column: 7, scope: !1251)
!1291 = !DILocation(line: 796, column: 14, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 796, column: 7)
!1293 = !DILocation(line: 796, column: 7, scope: !1251)
!1294 = !DILocation(line: 798, column: 14, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 798, column: 7)
!1296 = !DILocation(line: 798, column: 7, scope: !1251)
!1297 = !DILocation(line: 800, column: 14, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 800, column: 7)
!1299 = !DILocation(line: 800, column: 7, scope: !1251)
!1300 = !DILocation(line: 802, column: 14, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 802, column: 7)
!1302 = !DILocation(line: 802, column: 7, scope: !1251)
!1303 = !DILocation(line: 805, column: 2, scope: !1251)
!1304 = !DILocation(line: 807, column: 2, scope: !1251)
!1305 = distinct !DISubprogram(name: "bitmap_last_set_bit", scope: !3, file: !3, line: 814, type: !1252, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312}
!1307 = !DILocalVariable(name: "a", arg: 1, scope: !1305, file: !3, line: 814, type: !743)
!1308 = !DILocalVariable(name: "elt", scope: !1305, file: !3, line: 816, type: !750)
!1309 = !DILocalVariable(name: "bit_no", scope: !1305, file: !3, line: 817, type: !37)
!1310 = !DILocalVariable(name: "word", scope: !1305, file: !3, line: 818, type: !40)
!1311 = !DILocalVariable(name: "ix", scope: !1305, file: !3, line: 819, type: !8)
!1312 = !DILabel(scope: !1305, name: "found_bit", file: !3, line: 832)
!1313 = !DILocation(line: 0, scope: !1305)
!1314 = !DILocation(line: 816, column: 34, scope: !1305)
!1315 = !DILocation(line: 816, column: 31, scope: !1305)
!1316 = !DILocation(line: 816, column: 60, scope: !1305)
!1317 = !DILocation(line: 821, column: 3, scope: !1305)
!1318 = !DILocation(line: 822, column: 3, scope: !1305)
!1319 = !DILocation(line: 822, column: 15, scope: !1305)
!1320 = distinct !{!1320, !1318, !1321}
!1321 = !DILocation(line: 823, column: 16, scope: !1305)
!1322 = !DILocation(line: 824, column: 17, scope: !1305)
!1323 = !DILocation(line: 824, column: 22, scope: !1305)
!1324 = !DILocation(line: 825, column: 8, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 825, column: 3)
!1326 = !DILocation(line: 0, scope: !1325)
!1327 = !DILocation(line: 825, column: 42, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 825, column: 3)
!1329 = !DILocation(line: 825, column: 3, scope: !1325)
!1330 = !DILocation(line: 827, column: 14, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 826, column: 5)
!1332 = !DILocation(line: 828, column: 11, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 828, column: 11)
!1334 = !DILocation(line: 828, column: 11, scope: !1331)
!1335 = !DILocation(line: 825, column: 50, scope: !1328)
!1336 = !DILocation(line: 825, column: 3, scope: !1328)
!1337 = distinct !{!1337, !1329, !1338}
!1338 = !DILocation(line: 830, column: 5, scope: !1325)
!1339 = !DILocation(line: 831, column: 3, scope: !1305)
!1340 = !DILocation(line: 833, column: 16, scope: !1305)
!1341 = !DILocation(line: 832, column: 2, scope: !1305)
!1342 = !DILocation(line: 833, column: 10, scope: !1305)
!1343 = !DILocation(line: 844, column: 13, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 844, column: 7)
!1345 = !DILocation(line: 844, column: 7, scope: !1305)
!1346 = !DILocation(line: 847, column: 12, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 847, column: 7)
!1348 = !DILocation(line: 847, column: 7, scope: !1305)
!1349 = !DILocation(line: 849, column: 14, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 849, column: 7)
!1351 = !DILocation(line: 849, column: 7, scope: !1305)
!1352 = !DILocation(line: 851, column: 14, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 851, column: 7)
!1354 = !DILocation(line: 851, column: 7, scope: !1305)
!1355 = !DILocation(line: 853, column: 14, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 853, column: 7)
!1357 = !DILocation(line: 853, column: 7, scope: !1305)
!1358 = !DILocation(line: 855, column: 14, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 855, column: 7)
!1360 = !DILocation(line: 855, column: 7, scope: !1305)
!1361 = !DILocation(line: 859, column: 2, scope: !1305)
!1362 = !DILocation(line: 860, column: 2, scope: !1305)
!1363 = distinct !DISubprogram(name: "bitmap_and", scope: !3, file: !3, line: 867, type: !1364, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1366)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !580, !743, !743}
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1379, !1380}
!1367 = !DILocalVariable(name: "dst", arg: 1, scope: !1363, file: !3, line: 867, type: !580)
!1368 = !DILocalVariable(name: "a", arg: 2, scope: !1363, file: !3, line: 867, type: !743)
!1369 = !DILocalVariable(name: "b", arg: 3, scope: !1363, file: !3, line: 867, type: !743)
!1370 = !DILocalVariable(name: "dst_elt", scope: !1363, file: !3, line: 869, type: !29)
!1371 = !DILocalVariable(name: "a_elt", scope: !1363, file: !3, line: 870, type: !750)
!1372 = !DILocalVariable(name: "b_elt", scope: !1363, file: !3, line: 871, type: !750)
!1373 = !DILocalVariable(name: "dst_prev", scope: !1363, file: !3, line: 872, type: !29)
!1374 = !DILocalVariable(name: "ix", scope: !1375, file: !3, line: 891, type: !37)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 889, column: 2)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 886, column: 16)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 884, column: 11)
!1378 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 883, column: 5)
!1379 = !DILocalVariable(name: "ior", scope: !1375, file: !3, line: 892, type: !40)
!1380 = !DILocalVariable(name: "r", scope: !1381, file: !3, line: 900, type: !40)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 899, column: 6)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 898, column: 4)
!1383 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 898, column: 4)
!1384 = !DILocation(line: 0, scope: !1363)
!1385 = !DILocation(line: 869, column: 34, scope: !1363)
!1386 = !DILocation(line: 870, column: 36, scope: !1363)
!1387 = !DILocation(line: 871, column: 36, scope: !1363)
!1388 = !DILocation(line: 874, column: 3, scope: !1363)
!1389 = !DILocation(line: 876, column: 9, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 876, column: 7)
!1391 = !DILocation(line: 876, column: 7, scope: !1363)
!1392 = !DILocation(line: 882, column: 3, scope: !1363)
!1393 = !DILocation(line: 878, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 877, column: 5)
!1395 = !DILocation(line: 879, column: 7, scope: !1394)
!1396 = !DILocation(line: 872, column: 19, scope: !1363)
!1397 = !DILocation(line: 871, column: 25, scope: !1363)
!1398 = !DILocation(line: 869, column: 19, scope: !1363)
!1399 = !DILocation(line: 882, column: 10, scope: !1363)
!1400 = !DILocation(line: 882, column: 16, scope: !1363)
!1401 = !DILocation(line: 884, column: 18, scope: !1377)
!1402 = !DILocation(line: 884, column: 32, scope: !1377)
!1403 = !DILocation(line: 884, column: 23, scope: !1377)
!1404 = !DILocation(line: 884, column: 11, scope: !1378)
!1405 = !DILocation(line: 885, column: 17, scope: !1377)
!1406 = !DILocation(line: 885, column: 2, scope: !1377)
!1407 = !DILocation(line: 886, column: 28, scope: !1376)
!1408 = !DILocation(line: 886, column: 16, scope: !1377)
!1409 = !DILocation(line: 887, column: 17, scope: !1376)
!1410 = !DILocation(line: 887, column: 2, scope: !1376)
!1411 = !DILocation(line: 0, scope: !1375)
!1412 = !DILocation(line: 894, column: 9, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 894, column: 8)
!1414 = !DILocation(line: 894, column: 8, scope: !1375)
!1415 = !DILocation(line: 895, column: 16, scope: !1413)
!1416 = !DILocation(line: 895, column: 6, scope: !1413)
!1417 = !DILocation(line: 897, column: 15, scope: !1413)
!1418 = !DILocation(line: 897, column: 20, scope: !1413)
!1419 = !DILocation(line: 898, column: 9, scope: !1383)
!1420 = !DILocation(line: 0, scope: !1383)
!1421 = !DILocation(line: 898, column: 38, scope: !1382)
!1422 = !DILocation(line: 898, column: 4, scope: !1383)
!1423 = !DILocation(line: 900, column: 24, scope: !1381)
!1424 = !DILocation(line: 900, column: 42, scope: !1381)
!1425 = !DILocation(line: 900, column: 40, scope: !1381)
!1426 = !DILocation(line: 0, scope: !1381)
!1427 = !DILocation(line: 902, column: 8, scope: !1381)
!1428 = !DILocation(line: 902, column: 26, scope: !1381)
!1429 = !DILocation(line: 903, column: 12, scope: !1381)
!1430 = !DILocation(line: 898, column: 4, scope: !1382)
!1431 = distinct !{!1431, !1422, !1432}
!1432 = !DILocation(line: 904, column: 6, scope: !1383)
!1433 = !DILocation(line: 905, column: 8, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 905, column: 8)
!1435 = !DILocation(line: 905, column: 8, scope: !1375)
!1436 = !DILocation(line: 908, column: 27, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 906, column: 6)
!1438 = !DILocation(line: 909, column: 6, scope: !1437)
!1439 = !DILocation(line: 910, column: 19, scope: !1375)
!1440 = !DILocation(line: 911, column: 19, scope: !1375)
!1441 = distinct !{!1441, !1392, !1442}
!1442 = !DILocation(line: 913, column: 5, scope: !1363)
!1443 = !DILocation(line: 915, column: 23, scope: !1363)
!1444 = !DILocation(line: 915, column: 8, scope: !1363)
!1445 = !DILocation(line: 915, column: 16, scope: !1363)
!1446 = !DILocation(line: 916, column: 3, scope: !1363)
!1447 = !DILocation(line: 917, column: 3, scope: !1363)
!1448 = !DILocation(line: 918, column: 12, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 918, column: 7)
!1450 = !DILocation(line: 918, column: 7, scope: !1449)
!1451 = !DILocation(line: 918, column: 7, scope: !1363)
!1452 = !DILocation(line: 919, column: 31, scope: !1449)
!1453 = !DILocation(line: 919, column: 10, scope: !1449)
!1454 = !DILocation(line: 919, column: 15, scope: !1449)
!1455 = !DILocation(line: 919, column: 5, scope: !1449)
!1456 = !DILocation(line: 920, column: 1, scope: !1363)
!1457 = distinct !DISubprogram(name: "bitmap_elt_insert_after", scope: !3, file: !3, line: 481, type: !1458, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1460)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!29, !580, !29, !37}
!1460 = !{!1461, !1462, !1463, !1464}
!1461 = !DILocalVariable(name: "head", arg: 1, scope: !1457, file: !3, line: 481, type: !580)
!1462 = !DILocalVariable(name: "elt", arg: 2, scope: !1457, file: !3, line: 481, type: !29)
!1463 = !DILocalVariable(name: "indx", arg: 3, scope: !1457, file: !3, line: 481, type: !37)
!1464 = !DILocalVariable(name: "node", scope: !1457, file: !3, line: 483, type: !29)
!1465 = !DILocation(line: 0, scope: !1457)
!1466 = !DILocation(line: 483, column: 26, scope: !1457)
!1467 = !DILocation(line: 484, column: 9, scope: !1457)
!1468 = !DILocation(line: 484, column: 14, scope: !1457)
!1469 = !DILocation(line: 486, column: 8, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 486, column: 7)
!1471 = !DILocation(line: 0, scope: !1470)
!1472 = !DILocation(line: 486, column: 7, scope: !1457)
!1473 = !DILocation(line: 488, column: 11, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 487, column: 5)
!1475 = !DILocation(line: 490, column: 18, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 489, column: 2)
!1477 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 488, column: 11)
!1478 = !DILocation(line: 491, column: 10, scope: !1476)
!1479 = !DILocation(line: 491, column: 15, scope: !1476)
!1480 = !DILocation(line: 492, column: 2, scope: !1476)
!1481 = !DILocation(line: 493, column: 26, scope: !1474)
!1482 = !DILocation(line: 493, column: 18, scope: !1474)
!1483 = !DILocation(line: 494, column: 11, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 494, column: 11)
!1485 = !DILocation(line: 494, column: 11, scope: !1474)
!1486 = !DILocation(line: 495, column: 14, scope: !1484)
!1487 = !DILocation(line: 495, column: 19, scope: !1484)
!1488 = !DILocation(line: 495, column: 2, scope: !1484)
!1489 = !DILocation(line: 496, column: 13, scope: !1474)
!1490 = !DILocation(line: 496, column: 19, scope: !1474)
!1491 = !DILocation(line: 497, column: 13, scope: !1474)
!1492 = !DILocation(line: 497, column: 18, scope: !1474)
!1493 = !DILocation(line: 498, column: 5, scope: !1474)
!1494 = !DILocation(line: 501, column: 7, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 500, column: 5)
!1496 = !DILocation(line: 502, column: 25, scope: !1495)
!1497 = !DILocation(line: 502, column: 18, scope: !1495)
!1498 = !DILocation(line: 503, column: 11, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 503, column: 11)
!1500 = !DILocation(line: 503, column: 11, scope: !1495)
!1501 = !DILocation(line: 504, column: 14, scope: !1499)
!1502 = !DILocation(line: 504, column: 19, scope: !1499)
!1503 = !DILocation(line: 504, column: 2, scope: !1499)
!1504 = !DILocation(line: 505, column: 12, scope: !1495)
!1505 = !DILocation(line: 505, column: 17, scope: !1495)
!1506 = !DILocation(line: 506, column: 13, scope: !1495)
!1507 = !DILocation(line: 506, column: 18, scope: !1495)
!1508 = !DILocation(line: 508, column: 3, scope: !1457)
!1509 = distinct !DISubprogram(name: "bitmap_and_into", scope: !3, file: !3, line: 925, type: !741, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1516, !1521, !1522}
!1511 = !DILocalVariable(name: "a", arg: 1, scope: !1509, file: !3, line: 925, type: !580)
!1512 = !DILocalVariable(name: "b", arg: 2, scope: !1509, file: !3, line: 925, type: !743)
!1513 = !DILocalVariable(name: "a_elt", scope: !1509, file: !3, line: 927, type: !29)
!1514 = !DILocalVariable(name: "b_elt", scope: !1509, file: !3, line: 928, type: !750)
!1515 = !DILocalVariable(name: "next", scope: !1509, file: !3, line: 929, type: !29)
!1516 = !DILocalVariable(name: "ix", scope: !1517, file: !3, line: 947, type: !37)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 945, column: 2)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 942, column: 16)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 936, column: 11)
!1520 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 935, column: 5)
!1521 = !DILocalVariable(name: "ior", scope: !1517, file: !3, line: 948, type: !40)
!1522 = !DILocalVariable(name: "r", scope: !1523, file: !3, line: 952, type: !40)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 951, column: 6)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 950, column: 4)
!1525 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 950, column: 4)
!1526 = !DILocation(line: 0, scope: !1509)
!1527 = !DILocation(line: 931, column: 9, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 931, column: 7)
!1529 = !DILocation(line: 931, column: 7, scope: !1509)
!1530 = !DILocation(line: 928, column: 36, scope: !1509)
!1531 = !DILocation(line: 927, column: 30, scope: !1509)
!1532 = !DILocation(line: 934, column: 3, scope: !1509)
!1533 = !DILocation(line: 928, column: 25, scope: !1509)
!1534 = !DILocation(line: 934, column: 10, scope: !1509)
!1535 = !DILocation(line: 934, column: 16, scope: !1509)
!1536 = !DILocation(line: 936, column: 18, scope: !1519)
!1537 = !DILocation(line: 936, column: 32, scope: !1519)
!1538 = !DILocation(line: 936, column: 23, scope: !1519)
!1539 = !DILocation(line: 936, column: 11, scope: !1520)
!1540 = !DILocation(line: 938, column: 18, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 937, column: 2)
!1542 = !DILocation(line: 939, column: 4, scope: !1541)
!1543 = !DILocation(line: 941, column: 2, scope: !1541)
!1544 = !DILocation(line: 942, column: 28, scope: !1518)
!1545 = !DILocation(line: 942, column: 16, scope: !1519)
!1546 = !DILocation(line: 950, column: 4, scope: !1525)
!1547 = !DILocation(line: 943, column: 17, scope: !1518)
!1548 = !DILocation(line: 943, column: 2, scope: !1518)
!1549 = !DILocation(line: 0, scope: !1525)
!1550 = !DILocation(line: 0, scope: !1517)
!1551 = !DILocation(line: 950, column: 38, scope: !1524)
!1552 = !DILocation(line: 952, column: 24, scope: !1523)
!1553 = !DILocation(line: 952, column: 42, scope: !1523)
!1554 = !DILocation(line: 952, column: 40, scope: !1523)
!1555 = !DILocation(line: 0, scope: !1523)
!1556 = !DILocation(line: 954, column: 24, scope: !1523)
!1557 = !DILocation(line: 955, column: 12, scope: !1523)
!1558 = !DILocation(line: 950, column: 4, scope: !1524)
!1559 = distinct !{!1559, !1546, !1560}
!1560 = !DILocation(line: 956, column: 6, scope: !1525)
!1561 = !DILocation(line: 957, column: 18, scope: !1517)
!1562 = !DILocation(line: 958, column: 9, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 958, column: 8)
!1564 = !DILocation(line: 958, column: 8, scope: !1517)
!1565 = !DILocation(line: 959, column: 6, scope: !1563)
!1566 = !DILocation(line: 961, column: 19, scope: !1517)
!1567 = distinct !{!1567, !1532, !1568}
!1568 = !DILocation(line: 963, column: 5, scope: !1509)
!1569 = !DILocation(line: 964, column: 3, scope: !1509)
!1570 = !DILocation(line: 965, column: 3, scope: !1509)
!1571 = !DILocation(line: 966, column: 3, scope: !1509)
!1572 = !DILocation(line: 967, column: 1, scope: !1509)
!1573 = distinct !DISubprogram(name: "bitmap_and_compl", scope: !3, file: !3, line: 1006, type: !1574, scopeLine: 1007, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1576)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!7, !580, !743, !743}
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1586, !1587, !1591, !1592, !1598, !1600}
!1577 = !DILocalVariable(name: "dst", arg: 1, scope: !1573, file: !3, line: 1006, type: !580)
!1578 = !DILocalVariable(name: "a", arg: 2, scope: !1573, file: !3, line: 1006, type: !743)
!1579 = !DILocalVariable(name: "b", arg: 3, scope: !1573, file: !3, line: 1006, type: !743)
!1580 = !DILocalVariable(name: "dst_elt", scope: !1573, file: !3, line: 1008, type: !29)
!1581 = !DILocalVariable(name: "a_elt", scope: !1573, file: !3, line: 1009, type: !750)
!1582 = !DILocalVariable(name: "b_elt", scope: !1573, file: !3, line: 1010, type: !750)
!1583 = !DILocalVariable(name: "dst_prev", scope: !1573, file: !3, line: 1011, type: !29)
!1584 = !DILocalVariable(name: "dst_prev_pnext", scope: !1573, file: !3, line: 1012, type: !1585)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!1586 = !DILocalVariable(name: "changed", scope: !1573, file: !3, line: 1013, type: !7)
!1587 = !DILocalVariable(name: "ix", scope: !1588, file: !3, line: 1041, type: !37)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 1039, column: 2)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 1029, column: 11)
!1590 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 1025, column: 5)
!1591 = !DILocalVariable(name: "ior", scope: !1588, file: !3, line: 1042, type: !40)
!1592 = !DILocalVariable(name: "r", scope: !1593, file: !3, line: 1048, type: !40)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 1047, column: 3)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 1046, column: 8)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 1046, column: 8)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 1045, column: 6)
!1597 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 1044, column: 8)
!1598 = !DILocalVariable(name: "new_element", scope: !1599, file: !3, line: 1060, type: !7)
!1599 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 1059, column: 6)
!1600 = !DILocalVariable(name: "r", scope: !1601, file: !3, line: 1074, type: !40)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 1073, column: 3)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 1072, column: 8)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 1072, column: 8)
!1604 = !DILocation(line: 0, scope: !1573)
!1605 = !DILocation(line: 1008, column: 34, scope: !1573)
!1606 = !DILocation(line: 1009, column: 36, scope: !1573)
!1607 = !DILocation(line: 1010, column: 36, scope: !1573)
!1608 = !DILocation(line: 1015, column: 3, scope: !1573)
!1609 = !DILocation(line: 1017, column: 9, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 1017, column: 7)
!1611 = !DILocation(line: 1017, column: 7, scope: !1573)
!1612 = !DILocation(line: 1024, column: 3, scope: !1573)
!1613 = !DILocation(line: 1019, column: 18, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 1018, column: 5)
!1615 = !DILocation(line: 1019, column: 17, scope: !1614)
!1616 = !DILocation(line: 1020, column: 7, scope: !1614)
!1617 = !DILocation(line: 1021, column: 7, scope: !1614)
!1618 = !DILocation(line: 1010, column: 25, scope: !1573)
!1619 = !DILocation(line: 0, scope: !1590)
!1620 = !DILocation(line: 1026, column: 7, scope: !1590)
!1621 = !DILocation(line: 1026, column: 20, scope: !1590)
!1622 = !DILocation(line: 1026, column: 30, scope: !1590)
!1623 = !DILocation(line: 1026, column: 44, scope: !1590)
!1624 = !DILocation(line: 1026, column: 35, scope: !1590)
!1625 = !DILocation(line: 1027, column: 17, scope: !1590)
!1626 = distinct !{!1626, !1620, !1625}
!1627 = !DILocation(line: 1029, column: 33, scope: !1589)
!1628 = !DILocation(line: 1029, column: 11, scope: !1590)
!1629 = !DILocation(line: 1031, column: 14, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 1030, column: 2)
!1631 = !DILocation(line: 1032, column: 15, scope: !1630)
!1632 = !DILocation(line: 1033, column: 32, scope: !1630)
!1633 = !DILocation(line: 1034, column: 14, scope: !1630)
!1634 = !DILocation(line: 1036, column: 2, scope: !1630)
!1635 = !DILocation(line: 0, scope: !1588)
!1636 = !DILocation(line: 1044, column: 9, scope: !1597)
!1637 = !DILocation(line: 1044, column: 20, scope: !1597)
!1638 = !DILocation(line: 1044, column: 17, scope: !1597)
!1639 = !DILocation(line: 1044, column: 40, scope: !1597)
!1640 = !DILocation(line: 1044, column: 45, scope: !1597)
!1641 = !DILocation(line: 1044, column: 8, scope: !1588)
!1642 = !DILocation(line: 1046, column: 8, scope: !1595)
!1643 = !DILocation(line: 1046, column: 42, scope: !1594)
!1644 = !DILocation(line: 1048, column: 21, scope: !1593)
!1645 = !DILocation(line: 1048, column: 40, scope: !1593)
!1646 = !DILocation(line: 1048, column: 39, scope: !1593)
!1647 = !DILocation(line: 1048, column: 37, scope: !1593)
!1648 = !DILocation(line: 0, scope: !1593)
!1649 = !DILocation(line: 1050, column: 9, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 1050, column: 9)
!1651 = !DILocation(line: 1050, column: 27, scope: !1650)
!1652 = !DILocation(line: 1050, column: 9, scope: !1593)
!1653 = !DILocation(line: 1053, column: 27, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 1051, column: 7)
!1655 = !DILocation(line: 1054, column: 7, scope: !1654)
!1656 = !DILocation(line: 1055, column: 9, scope: !1593)
!1657 = !DILocation(line: 1046, column: 8, scope: !1594)
!1658 = distinct !{!1658, !1642, !1659}
!1659 = !DILocation(line: 1056, column: 3, scope: !1595)
!1660 = !DILocation(line: 1061, column: 13, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 1061, column: 12)
!1662 = !DILocation(line: 1061, column: 21, scope: !1661)
!1663 = !DILocation(line: 1061, column: 33, scope: !1661)
!1664 = !DILocation(line: 1061, column: 38, scope: !1661)
!1665 = !DILocation(line: 1061, column: 12, scope: !1599)
!1666 = !DILocation(line: 1063, column: 15, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 1062, column: 3)
!1668 = !DILocation(line: 0, scope: !1599)
!1669 = !DILocation(line: 1065, column: 3, scope: !1667)
!1670 = !DILocation(line: 1068, column: 19, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 1067, column: 3)
!1672 = !DILocation(line: 1072, column: 13, scope: !1603)
!1673 = !DILocation(line: 0, scope: !1603)
!1674 = !DILocation(line: 1072, column: 42, scope: !1602)
!1675 = !DILocation(line: 1072, column: 8, scope: !1603)
!1676 = !DILocation(line: 1074, column: 21, scope: !1601)
!1677 = !DILocation(line: 1074, column: 40, scope: !1601)
!1678 = !DILocation(line: 1074, column: 39, scope: !1601)
!1679 = !DILocation(line: 1074, column: 37, scope: !1601)
!1680 = !DILocation(line: 0, scope: !1601)
!1681 = !DILocation(line: 1076, column: 5, scope: !1601)
!1682 = !DILocation(line: 1076, column: 23, scope: !1601)
!1683 = !DILocation(line: 1077, column: 9, scope: !1601)
!1684 = !DILocation(line: 1072, column: 8, scope: !1602)
!1685 = distinct !{!1685, !1675, !1686}
!1686 = !DILocation(line: 1078, column: 3, scope: !1603)
!1687 = !DILocation(line: 1080, column: 12, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 1080, column: 12)
!1689 = !DILocation(line: 1080, column: 12, scope: !1599)
!1690 = !DILocation(line: 1084, column: 20, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 1083, column: 10)
!1692 = !DILocation(line: 1085, column: 5, scope: !1691)
!1693 = !DILocation(line: 1086, column: 15, scope: !1691)
!1694 = !DILocation(line: 1090, column: 8, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 1090, column: 8)
!1696 = !DILocation(line: 1042, column: 16, scope: !1588)
!1697 = !DILocation(line: 1090, column: 8, scope: !1588)
!1698 = !DILocation(line: 1092, column: 19, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 1091, column: 6)
!1700 = !DILocation(line: 1093, column: 36, scope: !1699)
!1701 = !DILocation(line: 1094, column: 18, scope: !1699)
!1702 = !DILocation(line: 1095, column: 6, scope: !1699)
!1703 = !DILocation(line: 1097, column: 19, scope: !1588)
!1704 = !DILocation(line: 0, scope: !1589)
!1705 = distinct !{!1705, !1612, !1706}
!1706 = !DILocation(line: 1099, column: 5, scope: !1573)
!1707 = !DILocation(line: 1102, column: 23, scope: !1573)
!1708 = !DILocation(line: 1102, column: 8, scope: !1573)
!1709 = !DILocation(line: 1102, column: 16, scope: !1573)
!1710 = !DILocation(line: 1104, column: 7, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 1104, column: 7)
!1712 = !DILocation(line: 1104, column: 7, scope: !1573)
!1713 = !DILocation(line: 1107, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 1105, column: 5)
!1715 = !DILocation(line: 1109, column: 3, scope: !1573)
!1716 = !DILocation(line: 1108, column: 5, scope: !1714)
!1717 = !DILocation(line: 1110, column: 12, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 1110, column: 7)
!1719 = !DILocation(line: 1110, column: 7, scope: !1718)
!1720 = !DILocation(line: 1110, column: 7, scope: !1573)
!1721 = !DILocation(line: 1111, column: 31, scope: !1718)
!1722 = !DILocation(line: 1111, column: 10, scope: !1718)
!1723 = !DILocation(line: 1111, column: 15, scope: !1718)
!1724 = !DILocation(line: 1111, column: 5, scope: !1718)
!1725 = !DILocation(line: 1114, column: 1, scope: !1573)
!1726 = distinct !DISubprogram(name: "bitmap_elt_copy", scope: !3, file: !3, line: 975, type: !1727, scopeLine: 977, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!7, !580, !29, !29, !750, !7}
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735}
!1730 = !DILocalVariable(name: "dst", arg: 1, scope: !1726, file: !3, line: 975, type: !580)
!1731 = !DILocalVariable(name: "dst_elt", arg: 2, scope: !1726, file: !3, line: 975, type: !29)
!1732 = !DILocalVariable(name: "dst_prev", arg: 3, scope: !1726, file: !3, line: 975, type: !29)
!1733 = !DILocalVariable(name: "src_elt", arg: 4, scope: !1726, file: !3, line: 976, type: !750)
!1734 = !DILocalVariable(name: "changed", arg: 5, scope: !1726, file: !3, line: 976, type: !7)
!1735 = !DILocalVariable(name: "ix", scope: !1736, file: !3, line: 980, type: !37)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 979, column: 5)
!1737 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 978, column: 7)
!1738 = !DILocation(line: 0, scope: !1726)
!1739 = !DILocation(line: 978, column: 8, scope: !1737)
!1740 = !DILocation(line: 978, column: 19, scope: !1737)
!1741 = !DILocation(line: 978, column: 16, scope: !1737)
!1742 = !DILocation(line: 0, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 992, column: 11)
!1744 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 990, column: 5)
!1745 = !DILocation(line: 978, column: 39, scope: !1737)
!1746 = !DILocation(line: 978, column: 56, scope: !1737)
!1747 = !DILocation(line: 978, column: 44, scope: !1737)
!1748 = !DILocation(line: 978, column: 7, scope: !1726)
!1749 = !DILocation(line: 982, column: 7, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 982, column: 7)
!1751 = !DILocation(line: 0, scope: !1736)
!1752 = !DILocation(line: 982, column: 41, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1750, file: !3, line: 982, column: 7)
!1754 = !DILocation(line: 983, column: 6, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 983, column: 6)
!1756 = !DILocation(line: 983, column: 27, scope: !1755)
!1757 = !DILocation(line: 983, column: 24, scope: !1755)
!1758 = !DILocation(line: 983, column: 6, scope: !1753)
!1759 = !DILocation(line: 985, column: 24, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 984, column: 4)
!1761 = !DILocation(line: 987, column: 4, scope: !1760)
!1762 = !DILocation(line: 982, column: 7, scope: !1753)
!1763 = distinct !{!1763, !1749, !1764}
!1764 = !DILocation(line: 987, column: 4, scope: !1750)
!1765 = !DILocation(line: 992, column: 12, scope: !1743)
!1766 = !DILocation(line: 992, column: 11, scope: !1744)
!1767 = !DILocation(line: 993, column: 12, scope: !1743)
!1768 = !DILocation(line: 993, column: 2, scope: !1743)
!1769 = !DILocation(line: 995, column: 11, scope: !1743)
!1770 = !DILocation(line: 995, column: 16, scope: !1743)
!1771 = !DILocation(line: 996, column: 15, scope: !1744)
!1772 = !DILocation(line: 996, column: 30, scope: !1744)
!1773 = !DILocation(line: 996, column: 7, scope: !1744)
!1774 = !DILocation(line: 998, column: 3, scope: !1726)
!1775 = distinct !DISubprogram(name: "bitmap_and_compl_into", scope: !3, file: !3, line: 1119, type: !1776, scopeLine: 1120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1778)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!7, !580, !743}
!1778 = !{!1779, !1780, !1781, !1782, !1783, !1784, !1785, !1790, !1791, !1795}
!1779 = !DILocalVariable(name: "a", arg: 1, scope: !1775, file: !3, line: 1119, type: !580)
!1780 = !DILocalVariable(name: "b", arg: 2, scope: !1775, file: !3, line: 1119, type: !743)
!1781 = !DILocalVariable(name: "a_elt", scope: !1775, file: !3, line: 1121, type: !29)
!1782 = !DILocalVariable(name: "b_elt", scope: !1775, file: !3, line: 1122, type: !750)
!1783 = !DILocalVariable(name: "next", scope: !1775, file: !3, line: 1123, type: !29)
!1784 = !DILocalVariable(name: "changed", scope: !1775, file: !3, line: 1124, type: !40)
!1785 = !DILocalVariable(name: "ix", scope: !1786, file: !3, line: 1146, type: !37)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1144, column: 2)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 1141, column: 16)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 1139, column: 11)
!1789 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 1138, column: 5)
!1790 = !DILocalVariable(name: "ior", scope: !1786, file: !3, line: 1147, type: !40)
!1791 = !DILocalVariable(name: "cleared", scope: !1792, file: !3, line: 1151, type: !40)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 1150, column: 6)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 1149, column: 4)
!1794 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 1149, column: 4)
!1795 = !DILocalVariable(name: "r", scope: !1792, file: !3, line: 1152, type: !40)
!1796 = !DILocation(line: 0, scope: !1775)
!1797 = !DILocation(line: 1126, column: 9, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 1126, column: 7)
!1799 = !DILocation(line: 1126, column: 7, scope: !1775)
!1800 = !DILocation(line: 1122, column: 36, scope: !1775)
!1801 = !DILocation(line: 1121, column: 30, scope: !1775)
!1802 = !DILocation(line: 1137, column: 3, scope: !1775)
!1803 = !DILocation(line: 1128, column: 11, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1128, column: 11)
!1805 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 1127, column: 5)
!1806 = !DILocation(line: 1128, column: 11, scope: !1805)
!1807 = !DILocation(line: 1132, column: 4, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 1131, column: 2)
!1809 = !DILocation(line: 1133, column: 4, scope: !1808)
!1810 = !DILocation(line: 1124, column: 15, scope: !1775)
!1811 = !DILocation(line: 1122, column: 25, scope: !1775)
!1812 = !DILocation(line: 1137, column: 10, scope: !1775)
!1813 = !DILocation(line: 1137, column: 16, scope: !1775)
!1814 = !DILocation(line: 1139, column: 18, scope: !1788)
!1815 = !DILocation(line: 1139, column: 32, scope: !1788)
!1816 = !DILocation(line: 1139, column: 23, scope: !1788)
!1817 = !DILocation(line: 1139, column: 11, scope: !1789)
!1818 = !DILocation(line: 1140, column: 17, scope: !1788)
!1819 = !DILocation(line: 1140, column: 2, scope: !1788)
!1820 = !DILocation(line: 1141, column: 28, scope: !1787)
!1821 = !DILocation(line: 1141, column: 16, scope: !1788)
!1822 = !DILocation(line: 1149, column: 4, scope: !1794)
!1823 = !DILocation(line: 1142, column: 17, scope: !1787)
!1824 = !DILocation(line: 1142, column: 2, scope: !1787)
!1825 = !DILocation(line: 0, scope: !1786)
!1826 = !DILocation(line: 1149, column: 38, scope: !1793)
!1827 = !DILocation(line: 1151, column: 30, scope: !1792)
!1828 = !DILocation(line: 1151, column: 48, scope: !1792)
!1829 = !DILocation(line: 1151, column: 46, scope: !1792)
!1830 = !DILocation(line: 0, scope: !1792)
!1831 = !DILocation(line: 1152, column: 40, scope: !1792)
!1832 = !DILocation(line: 1154, column: 24, scope: !1792)
!1833 = !DILocation(line: 1155, column: 16, scope: !1792)
!1834 = !DILocation(line: 1156, column: 12, scope: !1792)
!1835 = !DILocation(line: 1149, column: 4, scope: !1793)
!1836 = distinct !{!1836, !1822, !1837}
!1837 = !DILocation(line: 1157, column: 6, scope: !1794)
!1838 = !DILocation(line: 1158, column: 18, scope: !1786)
!1839 = !DILocation(line: 1159, column: 9, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 1159, column: 8)
!1841 = !DILocation(line: 1159, column: 8, scope: !1786)
!1842 = !DILocation(line: 1160, column: 6, scope: !1840)
!1843 = !DILocation(line: 1162, column: 19, scope: !1786)
!1844 = distinct !{!1844, !1802, !1845}
!1845 = !DILocation(line: 1164, column: 5, scope: !1775)
!1846 = !DILocation(line: 1165, column: 3, scope: !1775)
!1847 = !DILocation(line: 1166, column: 3, scope: !1775)
!1848 = !DILocation(line: 1167, column: 18, scope: !1775)
!1849 = !DILocation(line: 1167, column: 10, scope: !1775)
!1850 = !DILocation(line: 1167, column: 3, scope: !1775)
!1851 = !DILocation(line: 1168, column: 1, scope: !1775)
!1852 = distinct !DISubprogram(name: "bitmap_set_range", scope: !3, file: !3, line: 1172, type: !1853, scopeLine: 1173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1855)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{null, !580, !37, !37}
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1869, !1870, !1871, !1872, !1873, !1874, !1875}
!1856 = !DILocalVariable(name: "head", arg: 1, scope: !1852, file: !3, line: 1172, type: !580)
!1857 = !DILocalVariable(name: "start", arg: 2, scope: !1852, file: !3, line: 1172, type: !37)
!1858 = !DILocalVariable(name: "count", arg: 3, scope: !1852, file: !3, line: 1172, type: !37)
!1859 = !DILocalVariable(name: "first_index", scope: !1852, file: !3, line: 1174, type: !37)
!1860 = !DILocalVariable(name: "end_bit_plus1", scope: !1852, file: !3, line: 1174, type: !37)
!1861 = !DILocalVariable(name: "last_index", scope: !1852, file: !3, line: 1174, type: !37)
!1862 = !DILocalVariable(name: "elt", scope: !1852, file: !3, line: 1175, type: !29)
!1863 = !DILocalVariable(name: "elt_prev", scope: !1852, file: !3, line: 1175, type: !29)
!1864 = !DILocalVariable(name: "i", scope: !1852, file: !3, line: 1176, type: !37)
!1865 = !DILocalVariable(name: "elt_start_bit", scope: !1866, file: !3, line: 1201, type: !37)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 1200, column: 5)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 1199, column: 3)
!1868 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 1199, column: 3)
!1869 = !DILocalVariable(name: "elt_end_bit_plus1", scope: !1866, file: !3, line: 1202, type: !37)
!1870 = !DILocalVariable(name: "first_word_to_mod", scope: !1866, file: !3, line: 1204, type: !37)
!1871 = !DILocalVariable(name: "first_mask", scope: !1866, file: !3, line: 1205, type: !40)
!1872 = !DILocalVariable(name: "last_word_to_mod", scope: !1866, file: !3, line: 1206, type: !37)
!1873 = !DILocalVariable(name: "last_mask", scope: !1866, file: !3, line: 1207, type: !40)
!1874 = !DILocalVariable(name: "ix", scope: !1866, file: !3, line: 1208, type: !37)
!1875 = !DILocalVariable(name: "mask", scope: !1876, file: !3, line: 1250, type: !40)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 1249, column: 2)
!1877 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 1248, column: 11)
!1878 = !DILocation(line: 0, scope: !1852)
!1879 = !DILocation(line: 1178, column: 8, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 1178, column: 7)
!1881 = !DILocation(line: 1178, column: 7, scope: !1852)
!1882 = !DILocation(line: 1181, column: 23, scope: !1852)
!1883 = !DILocation(line: 1182, column: 25, scope: !1852)
!1884 = !DILocation(line: 1183, column: 31, scope: !1852)
!1885 = !DILocation(line: 1183, column: 36, scope: !1852)
!1886 = !DILocation(line: 1184, column: 9, scope: !1852)
!1887 = !DILocation(line: 1190, column: 8, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 1190, column: 7)
!1889 = !DILocation(line: 1190, column: 7, scope: !1852)
!1890 = !DILocation(line: 1192, column: 13, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 1191, column: 5)
!1892 = !DILocation(line: 1193, column: 12, scope: !1891)
!1893 = !DILocation(line: 1193, column: 17, scope: !1891)
!1894 = !DILocation(line: 1194, column: 7, scope: !1891)
!1895 = !DILocation(line: 1195, column: 5, scope: !1891)
!1896 = !DILocation(line: 1197, column: 3, scope: !1852)
!1897 = !DILocation(line: 1198, column: 19, scope: !1852)
!1898 = !DILocation(line: 0, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 1214, column: 2)
!1900 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 1213, column: 11)
!1901 = !DILocation(line: 0, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 1238, column: 2)
!1903 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 1231, column: 11)
!1904 = !DILocation(line: 1199, column: 8, scope: !1868)
!1905 = !DILocation(line: 0, scope: !1868)
!1906 = !DILocation(line: 1199, column: 27, scope: !1867)
!1907 = !DILocation(line: 1199, column: 3, scope: !1868)
!1908 = !DILocation(line: 1201, column: 34, scope: !1866)
!1909 = !DILocation(line: 0, scope: !1866)
!1910 = !DILocation(line: 1202, column: 50, scope: !1866)
!1911 = !DILocation(line: 1210, column: 12, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 1210, column: 11)
!1913 = !DILocation(line: 1210, column: 16, scope: !1912)
!1914 = !DILocation(line: 1210, column: 24, scope: !1912)
!1915 = !DILocation(line: 1210, column: 29, scope: !1912)
!1916 = !DILocation(line: 1210, column: 11, scope: !1866)
!1917 = !DILocation(line: 1211, column: 8, scope: !1912)
!1918 = !DILocation(line: 1211, column: 2, scope: !1912)
!1919 = !DILocation(line: 1213, column: 25, scope: !1900)
!1920 = !DILocation(line: 1213, column: 11, scope: !1866)
!1921 = !DILocation(line: 1217, column: 31, scope: !1899)
!1922 = !DILocation(line: 1217, column: 48, scope: !1899)
!1923 = !DILocation(line: 1223, column: 2, scope: !1899)
!1924 = !DILocation(line: 0, scope: !1900)
!1925 = !DILocation(line: 1231, column: 29, scope: !1903)
!1926 = !DILocation(line: 1231, column: 11, scope: !1866)
!1927 = !DILocation(line: 1241, column: 21, scope: !1902)
!1928 = !DILocation(line: 1241, column: 38, scope: !1902)
!1929 = !DILocation(line: 0, scope: !1903)
!1930 = !DILocation(line: 1248, column: 29, scope: !1877)
!1931 = !DILocation(line: 1248, column: 11, scope: !1866)
!1932 = !DILocation(line: 1250, column: 34, scope: !1876)
!1933 = !DILocation(line: 0, scope: !1876)
!1934 = !DILocation(line: 1251, column: 4, scope: !1876)
!1935 = !DILocation(line: 1251, column: 33, scope: !1876)
!1936 = !DILocation(line: 1252, column: 2, scope: !1876)
!1937 = !DILocation(line: 1255, column: 4, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 1254, column: 2)
!1939 = !DILocation(line: 1255, column: 33, scope: !1938)
!1940 = !DILocation(line: 1259, column: 4, scope: !1938)
!1941 = !DILocation(line: 1259, column: 32, scope: !1938)
!1942 = !DILocation(line: 1263, column: 18, scope: !1866)
!1943 = !DILocation(line: 1199, column: 43, scope: !1867)
!1944 = !DILocation(line: 1199, column: 3, scope: !1867)
!1945 = distinct !{!1945, !1907, !1946}
!1946 = !DILocation(line: 1264, column: 5, scope: !1868)
!1947 = !DILocation(line: 1266, column: 19, scope: !1852)
!1948 = !DILocation(line: 1266, column: 9, scope: !1852)
!1949 = !DILocation(line: 1266, column: 17, scope: !1852)
!1950 = !DILocation(line: 1267, column: 31, scope: !1852)
!1951 = !DILocation(line: 1267, column: 9, scope: !1852)
!1952 = !DILocation(line: 1267, column: 14, scope: !1852)
!1953 = !DILocation(line: 1268, column: 1, scope: !1852)
!1954 = distinct !DISubprogram(name: "bitmap_clear_range", scope: !3, file: !3, line: 1272, type: !1853, scopeLine: 1273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1955 = !{!1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1965, !1966, !1967, !1970, !1971, !1972, !1973, !1974, !1975}
!1956 = !DILocalVariable(name: "head", arg: 1, scope: !1954, file: !3, line: 1272, type: !580)
!1957 = !DILocalVariable(name: "start", arg: 2, scope: !1954, file: !3, line: 1272, type: !37)
!1958 = !DILocalVariable(name: "count", arg: 3, scope: !1954, file: !3, line: 1272, type: !37)
!1959 = !DILocalVariable(name: "first_index", scope: !1954, file: !3, line: 1274, type: !37)
!1960 = !DILocalVariable(name: "end_bit_plus1", scope: !1954, file: !3, line: 1274, type: !37)
!1961 = !DILocalVariable(name: "last_index", scope: !1954, file: !3, line: 1274, type: !37)
!1962 = !DILocalVariable(name: "elt", scope: !1954, file: !3, line: 1275, type: !29)
!1963 = !DILocalVariable(name: "next_elt", scope: !1964, file: !3, line: 1307, type: !29)
!1964 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 1306, column: 5)
!1965 = !DILocalVariable(name: "elt_start_bit", scope: !1964, file: !3, line: 1308, type: !37)
!1966 = !DILocalVariable(name: "elt_end_bit_plus1", scope: !1964, file: !3, line: 1309, type: !37)
!1967 = !DILocalVariable(name: "first_word_to_mod", scope: !1968, file: !3, line: 1318, type: !37)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 1316, column: 2)
!1969 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1312, column: 11)
!1970 = !DILocalVariable(name: "first_mask", scope: !1968, file: !3, line: 1319, type: !40)
!1971 = !DILocalVariable(name: "last_word_to_mod", scope: !1968, file: !3, line: 1320, type: !37)
!1972 = !DILocalVariable(name: "last_mask", scope: !1968, file: !3, line: 1321, type: !40)
!1973 = !DILocalVariable(name: "i", scope: !1968, file: !3, line: 1322, type: !37)
!1974 = !DILocalVariable(name: "clear", scope: !1968, file: !3, line: 1323, type: !7)
!1975 = !DILocalVariable(name: "mask", scope: !1976, file: !3, line: 1365, type: !40)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 1364, column: 6)
!1977 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 1363, column: 8)
!1978 = !DILocation(line: 0, scope: !1954)
!1979 = !DILocation(line: 1277, column: 8, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 1277, column: 7)
!1981 = !DILocation(line: 1277, column: 7, scope: !1954)
!1982 = !DILocation(line: 1280, column: 23, scope: !1954)
!1983 = !DILocation(line: 1281, column: 25, scope: !1954)
!1984 = !DILocation(line: 1282, column: 31, scope: !1954)
!1985 = !DILocation(line: 1282, column: 36, scope: !1954)
!1986 = !DILocation(line: 1283, column: 9, scope: !1954)
!1987 = !DILocation(line: 1288, column: 8, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 1288, column: 7)
!1989 = !DILocation(line: 1288, column: 7, scope: !1954)
!1990 = !DILocation(line: 1290, column: 17, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 1290, column: 11)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 1289, column: 5)
!1993 = !DILocation(line: 1290, column: 11, scope: !1991)
!1994 = !DILocation(line: 1290, column: 11, scope: !1992)
!1995 = !DILocation(line: 1292, column: 14, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 1292, column: 8)
!1997 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 1291, column: 2)
!1998 = !DILocation(line: 1292, column: 19, scope: !1996)
!1999 = !DILocation(line: 1292, column: 8, scope: !1997)
!2000 = !DILocation(line: 1294, column: 29, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 1293, column: 6)
!2002 = !DILocation(line: 1295, column: 13, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 1295, column: 12)
!2004 = !DILocation(line: 1295, column: 12, scope: !2001)
!2005 = !DILocation(line: 0, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 1326, column: 6)
!2007 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 1325, column: 8)
!2008 = !DILocation(line: 0, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 1352, column: 6)
!2010 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 1344, column: 8)
!2011 = !DILocation(line: 1305, column: 3, scope: !1954)
!2012 = !DILocation(line: 1305, column: 14, scope: !1954)
!2013 = !DILocation(line: 1305, column: 23, scope: !1954)
!2014 = !DILocation(line: 1305, column: 28, scope: !1954)
!2015 = !DILocation(line: 1307, column: 40, scope: !1964)
!2016 = !DILocation(line: 0, scope: !1964)
!2017 = !DILocation(line: 1308, column: 44, scope: !1964)
!2018 = !DILocation(line: 1309, column: 50, scope: !1964)
!2019 = !DILocation(line: 1312, column: 25, scope: !1969)
!2020 = !DILocation(line: 1312, column: 55, scope: !1969)
!2021 = !DILocation(line: 1312, column: 34, scope: !1969)
!2022 = !DILocation(line: 1314, column: 2, scope: !1969)
!2023 = !DILocation(line: 0, scope: !1968)
!2024 = !DILocation(line: 1325, column: 22, scope: !2007)
!2025 = !DILocation(line: 1325, column: 8, scope: !1968)
!2026 = !DILocation(line: 1329, column: 35, scope: !2006)
!2027 = !DILocation(line: 1329, column: 52, scope: !2006)
!2028 = !DILocation(line: 1335, column: 6, scope: !2006)
!2029 = !DILocation(line: 0, scope: !2007)
!2030 = !DILocation(line: 1344, column: 26, scope: !2010)
!2031 = !DILocation(line: 1344, column: 8, scope: !1968)
!2032 = !DILocation(line: 1350, column: 6, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 1345, column: 6)
!2034 = !DILocation(line: 1355, column: 18, scope: !2009)
!2035 = !DILocation(line: 1355, column: 35, scope: !2009)
!2036 = !DILocation(line: 0, scope: !2010)
!2037 = !DILocation(line: 1363, column: 26, scope: !1977)
!2038 = !DILocation(line: 1363, column: 8, scope: !1968)
!2039 = !DILocation(line: 1365, column: 38, scope: !1976)
!2040 = !DILocation(line: 0, scope: !1976)
!2041 = !DILocation(line: 1366, column: 40, scope: !1976)
!2042 = !DILocation(line: 1366, column: 8, scope: !1976)
!2043 = !DILocation(line: 1366, column: 37, scope: !1976)
!2044 = !DILocation(line: 1367, column: 6, scope: !1976)
!2045 = !DILocation(line: 1370, column: 40, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 1369, column: 6)
!2047 = !DILocation(line: 1370, column: 8, scope: !2046)
!2048 = !DILocation(line: 1370, column: 37, scope: !2046)
!2049 = !DILocation(line: 1374, column: 39, scope: !2046)
!2050 = !DILocation(line: 1374, column: 8, scope: !2046)
!2051 = !DILocation(line: 1374, column: 36, scope: !2046)
!2052 = !DILocation(line: 1376, column: 9, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 1376, column: 4)
!2054 = !DILocation(line: 0, scope: !2053)
!2055 = !DILocation(line: 1376, column: 18, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 1376, column: 4)
!2057 = !DILocation(line: 1376, column: 4, scope: !2053)
!2058 = !DILocation(line: 1377, column: 10, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 1377, column: 10)
!2060 = !DILocation(line: 1377, column: 10, scope: !2056)
!2061 = !DILocation(line: 1376, column: 43, scope: !2056)
!2062 = !DILocation(line: 1376, column: 4, scope: !2056)
!2063 = distinct !{!2063, !2057, !2064}
!2064 = !DILocation(line: 1381, column: 8, scope: !2053)
!2065 = !DILocation(line: 1383, column: 8, scope: !1968)
!2066 = !DILocation(line: 1384, column: 6, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 1383, column: 8)
!2068 = distinct !{!2068, !2011, !2069}
!2069 = !DILocation(line: 1387, column: 5, scope: !1954)
!2070 = !DILocation(line: 1391, column: 13, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 1390, column: 5)
!2072 = distinct !DILexicalBlock(scope: !1954, file: !3, line: 1389, column: 7)
!2073 = !DILocation(line: 1391, column: 21, scope: !2071)
!2074 = !DILocation(line: 1392, column: 35, scope: !2071)
!2075 = !DILocation(line: 1392, column: 13, scope: !2071)
!2076 = !DILocation(line: 1392, column: 18, scope: !2071)
!2077 = !DILocation(line: 1393, column: 5, scope: !2071)
!2078 = !DILocation(line: 1394, column: 1, scope: !1954)
!2079 = distinct !DISubprogram(name: "bitmap_compl_and_into", scope: !3, file: !3, line: 1399, type: !741, scopeLine: 1400, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2080)
!2080 = !{!2081, !2082, !2083, !2084, !2085, !2086, !2087, !2092, !2093, !2097}
!2081 = !DILocalVariable(name: "a", arg: 1, scope: !2079, file: !3, line: 1399, type: !580)
!2082 = !DILocalVariable(name: "b", arg: 2, scope: !2079, file: !3, line: 1399, type: !743)
!2083 = !DILocalVariable(name: "a_elt", scope: !2079, file: !3, line: 1401, type: !29)
!2084 = !DILocalVariable(name: "b_elt", scope: !2079, file: !3, line: 1402, type: !750)
!2085 = !DILocalVariable(name: "a_prev", scope: !2079, file: !3, line: 1403, type: !29)
!2086 = !DILocalVariable(name: "next", scope: !2079, file: !3, line: 1404, type: !29)
!2087 = !DILocalVariable(name: "ix", scope: !2088, file: !3, line: 1440, type: !37)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 1438, column: 2)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 1429, column: 16)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 1421, column: 11)
!2091 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 1420, column: 5)
!2092 = !DILocalVariable(name: "ior", scope: !2088, file: !3, line: 1441, type: !40)
!2093 = !DILocalVariable(name: "cleared", scope: !2094, file: !3, line: 1445, type: !40)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 1444, column: 6)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1443, column: 4)
!2096 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 1443, column: 4)
!2097 = !DILocalVariable(name: "r", scope: !2094, file: !3, line: 1446, type: !40)
!2098 = !DILocation(line: 0, scope: !2079)
!2099 = !DILocation(line: 1401, column: 30, scope: !2079)
!2100 = !DILocation(line: 1402, column: 36, scope: !2079)
!2101 = !DILocation(line: 1406, column: 3, scope: !2079)
!2102 = !DILocation(line: 1408, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 1408, column: 7)
!2104 = !DILocation(line: 1408, column: 7, scope: !2079)
!2105 = !DILocation(line: 1410, column: 7, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 1409, column: 5)
!2107 = !DILocation(line: 1411, column: 7, scope: !2106)
!2108 = !DILocation(line: 1413, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 1413, column: 7)
!2110 = !DILocation(line: 1413, column: 7, scope: !2079)
!2111 = !DILocation(line: 1419, column: 3, scope: !2079)
!2112 = !DILocation(line: 1415, column: 7, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 1414, column: 5)
!2114 = !DILocation(line: 1416, column: 7, scope: !2113)
!2115 = !DILocation(line: 1402, column: 25, scope: !2079)
!2116 = !DILocation(line: 1419, column: 10, scope: !2079)
!2117 = !DILocation(line: 1419, column: 16, scope: !2079)
!2118 = !DILocation(line: 1421, column: 12, scope: !2090)
!2119 = !DILocation(line: 1421, column: 18, scope: !2090)
!2120 = !DILocation(line: 1421, column: 28, scope: !2090)
!2121 = !DILocation(line: 0, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 1430, column: 2)
!2123 = !DILocation(line: 1432, column: 54, scope: !2122)
!2124 = !DILocation(line: 1421, column: 38, scope: !2090)
!2125 = !DILocation(line: 1421, column: 52, scope: !2090)
!2126 = !DILocation(line: 1421, column: 43, scope: !2090)
!2127 = !DILocation(line: 1421, column: 11, scope: !2091)
!2128 = !DILocation(line: 1424, column: 18, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 1422, column: 2)
!2130 = !DILocation(line: 1425, column: 20, scope: !2129)
!2131 = !DILocation(line: 1426, column: 4, scope: !2129)
!2132 = !DILocation(line: 1428, column: 2, scope: !2129)
!2133 = !DILocation(line: 1429, column: 38, scope: !2089)
!2134 = !DILocation(line: 1429, column: 16, scope: !2090)
!2135 = !DILocation(line: 1443, column: 4, scope: !2096)
!2136 = !DILocation(line: 1432, column: 11, scope: !2122)
!2137 = !DILocation(line: 1433, column: 12, scope: !2122)
!2138 = !DILocation(line: 1433, column: 24, scope: !2122)
!2139 = !DILocation(line: 1433, column: 4, scope: !2122)
!2140 = !DILocation(line: 1435, column: 19, scope: !2122)
!2141 = !DILocation(line: 1436, column: 2, scope: !2122)
!2142 = !DILocation(line: 0, scope: !2096)
!2143 = !DILocation(line: 0, scope: !2088)
!2144 = !DILocation(line: 1443, column: 38, scope: !2095)
!2145 = !DILocation(line: 1445, column: 30, scope: !2094)
!2146 = !DILocation(line: 1445, column: 48, scope: !2094)
!2147 = !DILocation(line: 1446, column: 40, scope: !2094)
!2148 = !DILocation(line: 0, scope: !2094)
!2149 = !DILocation(line: 1448, column: 24, scope: !2094)
!2150 = !DILocation(line: 1449, column: 12, scope: !2094)
!2151 = !DILocation(line: 1443, column: 4, scope: !2095)
!2152 = distinct !{!2152, !2135, !2153}
!2153 = !DILocation(line: 1450, column: 6, scope: !2096)
!2154 = !DILocation(line: 1451, column: 18, scope: !2088)
!2155 = !DILocation(line: 1452, column: 9, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 1452, column: 8)
!2157 = !DILocation(line: 1452, column: 8, scope: !2088)
!2158 = !DILocation(line: 1453, column: 6, scope: !2156)
!2159 = !DILocation(line: 1457, column: 19, scope: !2088)
!2160 = !DILocation(line: 0, scope: !2090)
!2161 = distinct !{!2161, !2111, !2162}
!2162 = !DILocation(line: 1459, column: 5, scope: !2079)
!2163 = !DILocation(line: 1460, column: 3, scope: !2079)
!2164 = !DILocation(line: 1461, column: 3, scope: !2079)
!2165 = !DILocation(line: 1463, column: 1, scope: !2079)
!2166 = distinct !DISubprogram(name: "bitmap_ior", scope: !3, file: !3, line: 1528, type: !1574, scopeLine: 1529, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2167)
!2167 = !{!2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176}
!2168 = !DILocalVariable(name: "dst", arg: 1, scope: !2166, file: !3, line: 1528, type: !580)
!2169 = !DILocalVariable(name: "a", arg: 2, scope: !2166, file: !3, line: 1528, type: !743)
!2170 = !DILocalVariable(name: "b", arg: 3, scope: !2166, file: !3, line: 1528, type: !743)
!2171 = !DILocalVariable(name: "dst_elt", scope: !2166, file: !3, line: 1530, type: !29)
!2172 = !DILocalVariable(name: "a_elt", scope: !2166, file: !3, line: 1531, type: !750)
!2173 = !DILocalVariable(name: "b_elt", scope: !2166, file: !3, line: 1532, type: !750)
!2174 = !DILocalVariable(name: "dst_prev", scope: !2166, file: !3, line: 1533, type: !29)
!2175 = !DILocalVariable(name: "dst_prev_pnext", scope: !2166, file: !3, line: 1534, type: !1585)
!2176 = !DILocalVariable(name: "changed", scope: !2166, file: !3, line: 1535, type: !7)
!2177 = !DILocation(line: 0, scope: !2166)
!2178 = !DILocation(line: 1530, column: 34, scope: !2166)
!2179 = !DILocation(line: 1531, column: 36, scope: !2166)
!2180 = !DILocation(line: 1532, column: 36, scope: !2166)
!2181 = !DILocation(line: 1537, column: 3, scope: !2166)
!2182 = !DILocation(line: 1539, column: 3, scope: !2166)
!2183 = !DILocation(line: 1539, column: 10, scope: !2166)
!2184 = !DILocation(line: 1539, column: 16, scope: !2166)
!2185 = !DILocation(line: 1541, column: 17, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 1540, column: 5)
!2187 = !DILocation(line: 1543, column: 17, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 1543, column: 11)
!2189 = !DILocation(line: 1543, column: 36, scope: !2188)
!2190 = !DILocation(line: 1543, column: 51, scope: !2188)
!2191 = !DILocation(line: 1543, column: 41, scope: !2188)
!2192 = !DILocation(line: 1543, column: 11, scope: !2186)
!2193 = !DILocation(line: 1545, column: 19, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 1544, column: 2)
!2195 = !DILocation(line: 1546, column: 19, scope: !2194)
!2196 = !DILocation(line: 1547, column: 2, scope: !2194)
!2197 = !DILocation(line: 1550, column: 8, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 1550, column: 8)
!2199 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 1549, column: 2)
!2200 = !DILocation(line: 1550, column: 14, scope: !2198)
!2201 = !DILocation(line: 1550, column: 19, scope: !2198)
!2202 = !DILocation(line: 1550, column: 25, scope: !2198)
!2203 = !DILocation(line: 1550, column: 35, scope: !2198)
!2204 = !DILocation(line: 1550, column: 50, scope: !2198)
!2205 = !DILocation(line: 1550, column: 40, scope: !2198)
!2206 = !DILocation(line: 1550, column: 8, scope: !2199)
!2207 = !DILocation(line: 1551, column: 28, scope: !2198)
!2208 = !DILocation(line: 1551, column: 13, scope: !2198)
!2209 = !DILocation(line: 1552, column: 20, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 1552, column: 20)
!2211 = !DILocation(line: 1552, column: 26, scope: !2210)
!2212 = !DILocation(line: 1552, column: 37, scope: !2210)
!2213 = !DILocation(line: 1552, column: 47, scope: !2210)
!2214 = !DILocation(line: 1552, column: 62, scope: !2210)
!2215 = !DILocation(line: 1552, column: 52, scope: !2210)
!2216 = !DILocation(line: 1552, column: 20, scope: !2198)
!2217 = !DILocation(line: 1553, column: 28, scope: !2210)
!2218 = !DILocation(line: 1553, column: 13, scope: !2210)
!2219 = !DILocation(line: 0, scope: !2188)
!2220 = !DILocation(line: 1556, column: 18, scope: !2186)
!2221 = !DILocation(line: 1557, column: 35, scope: !2186)
!2222 = !DILocation(line: 1558, column: 17, scope: !2186)
!2223 = distinct !{!2223, !2182, !2224}
!2224 = !DILocation(line: 1559, column: 5, scope: !2166)
!2225 = !DILocation(line: 1561, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 1561, column: 7)
!2227 = !DILocation(line: 1561, column: 7, scope: !2166)
!2228 = !DILocation(line: 1564, column: 7, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 1562, column: 5)
!2230 = !DILocation(line: 1565, column: 5, scope: !2229)
!2231 = !DILocation(line: 1566, column: 3, scope: !2166)
!2232 = !DILocation(line: 1567, column: 12, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 1567, column: 7)
!2234 = !DILocation(line: 1567, column: 7, scope: !2233)
!2235 = !DILocation(line: 1567, column: 7, scope: !2166)
!2236 = !DILocation(line: 1568, column: 31, scope: !2233)
!2237 = !DILocation(line: 1568, column: 10, scope: !2233)
!2238 = !DILocation(line: 1568, column: 15, scope: !2233)
!2239 = !DILocation(line: 1568, column: 5, scope: !2233)
!2240 = !DILocation(line: 1569, column: 3, scope: !2166)
!2241 = distinct !DISubprogram(name: "bitmap_elt_ior", scope: !3, file: !3, line: 1471, type: !2242, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2244)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!7, !580, !29, !29, !750, !750, !7}
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2250, !2251, !2254, !2260, !2265}
!2245 = !DILocalVariable(name: "dst", arg: 1, scope: !2241, file: !3, line: 1471, type: !580)
!2246 = !DILocalVariable(name: "dst_elt", arg: 2, scope: !2241, file: !3, line: 1471, type: !29)
!2247 = !DILocalVariable(name: "dst_prev", arg: 3, scope: !2241, file: !3, line: 1471, type: !29)
!2248 = !DILocalVariable(name: "a_elt", arg: 4, scope: !2241, file: !3, line: 1472, type: !750)
!2249 = !DILocalVariable(name: "b_elt", arg: 5, scope: !2241, file: !3, line: 1472, type: !750)
!2250 = !DILocalVariable(name: "changed", arg: 6, scope: !2241, file: !3, line: 1473, type: !7)
!2251 = !DILocalVariable(name: "ix", scope: !2252, file: !3, line: 1480, type: !37)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 1478, column: 5)
!2253 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 1477, column: 7)
!2254 = !DILocalVariable(name: "r", scope: !2255, file: !3, line: 1486, type: !40)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1485, column: 6)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 1484, column: 4)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 1484, column: 4)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 1483, column: 2)
!2259 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 1482, column: 11)
!2260 = !DILocalVariable(name: "r", scope: !2261, file: !3, line: 1503, type: !40)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1502, column: 6)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 1501, column: 4)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 1501, column: 4)
!2264 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 1495, column: 2)
!2265 = !DILocalVariable(name: "src", scope: !2266, file: !3, line: 1511, type: !750)
!2266 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 1509, column: 5)
!2267 = !DILocation(line: 0, scope: !2241)
!2268 = !DILocation(line: 1475, column: 3, scope: !2241)
!2269 = !DILocation(line: 1477, column: 13, scope: !2253)
!2270 = !DILocation(line: 1477, column: 32, scope: !2253)
!2271 = !DILocation(line: 1477, column: 47, scope: !2253)
!2272 = !DILocation(line: 1477, column: 37, scope: !2253)
!2273 = !DILocation(line: 1477, column: 7, scope: !2241)
!2274 = !DILocation(line: 1482, column: 12, scope: !2259)
!2275 = !DILocation(line: 1482, column: 23, scope: !2259)
!2276 = !DILocation(line: 1482, column: 20, scope: !2259)
!2277 = !DILocation(line: 1482, column: 43, scope: !2259)
!2278 = !DILocation(line: 1482, column: 48, scope: !2259)
!2279 = !DILocation(line: 1482, column: 11, scope: !2252)
!2280 = !DILocation(line: 1484, column: 4, scope: !2257)
!2281 = !DILocation(line: 0, scope: !2252)
!2282 = !DILocation(line: 1484, column: 38, scope: !2256)
!2283 = !DILocation(line: 1486, column: 24, scope: !2255)
!2284 = !DILocation(line: 1486, column: 42, scope: !2255)
!2285 = !DILocation(line: 1486, column: 40, scope: !2255)
!2286 = !DILocation(line: 0, scope: !2255)
!2287 = !DILocation(line: 1487, column: 17, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 1487, column: 12)
!2289 = !DILocation(line: 1487, column: 14, scope: !2288)
!2290 = !DILocation(line: 1487, column: 12, scope: !2255)
!2291 = !DILocation(line: 1489, column: 23, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 1488, column: 3)
!2293 = !DILocation(line: 1491, column: 3, scope: !2292)
!2294 = !DILocation(line: 1484, column: 4, scope: !2256)
!2295 = distinct !{!2295, !2280, !2296}
!2296 = !DILocation(line: 1492, column: 6, scope: !2257)
!2297 = !DILocation(line: 1497, column: 9, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 1497, column: 8)
!2299 = !DILocation(line: 1497, column: 8, scope: !2264)
!2300 = !DILocation(line: 1498, column: 16, scope: !2298)
!2301 = !DILocation(line: 1498, column: 6, scope: !2298)
!2302 = !DILocation(line: 1500, column: 15, scope: !2298)
!2303 = !DILocation(line: 1500, column: 20, scope: !2298)
!2304 = !DILocation(line: 1501, column: 9, scope: !2263)
!2305 = !DILocation(line: 0, scope: !2263)
!2306 = !DILocation(line: 1501, column: 38, scope: !2262)
!2307 = !DILocation(line: 1501, column: 4, scope: !2263)
!2308 = !DILocation(line: 1503, column: 24, scope: !2261)
!2309 = !DILocation(line: 1503, column: 42, scope: !2261)
!2310 = !DILocation(line: 1503, column: 40, scope: !2261)
!2311 = !DILocation(line: 0, scope: !2261)
!2312 = !DILocation(line: 1504, column: 8, scope: !2261)
!2313 = !DILocation(line: 1504, column: 26, scope: !2261)
!2314 = !DILocation(line: 1501, column: 4, scope: !2262)
!2315 = distinct !{!2315, !2307, !2316}
!2316 = !DILocation(line: 1505, column: 6, scope: !2263)
!2317 = !DILocation(line: 1513, column: 12, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 1513, column: 11)
!2319 = !DILocation(line: 1513, column: 18, scope: !2318)
!2320 = !DILocation(line: 1513, column: 22, scope: !2318)
!2321 = !DILocation(line: 1513, column: 28, scope: !2318)
!2322 = !DILocation(line: 1513, column: 38, scope: !2318)
!2323 = !DILocation(line: 1513, column: 52, scope: !2318)
!2324 = !DILocation(line: 1513, column: 43, scope: !2318)
!2325 = !DILocation(line: 1513, column: 11, scope: !2266)
!2326 = !DILocation(line: 0, scope: !2266)
!2327 = !DILocation(line: 0, scope: !2318)
!2328 = !DILocation(line: 1518, column: 7, scope: !2266)
!2329 = !DILocation(line: 1519, column: 17, scope: !2266)
!2330 = !DILocation(line: 1521, column: 3, scope: !2241)
!2331 = !DILocation(line: 0, scope: !2253)
!2332 = distinct !DISubprogram(name: "bitmap_ior_into", scope: !3, file: !3, line: 1575, type: !1776, scopeLine: 1576, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2333)
!2333 = !{!2334, !2335, !2336, !2337, !2338, !2339, !2340}
!2334 = !DILocalVariable(name: "a", arg: 1, scope: !2332, file: !3, line: 1575, type: !580)
!2335 = !DILocalVariable(name: "b", arg: 2, scope: !2332, file: !3, line: 1575, type: !743)
!2336 = !DILocalVariable(name: "a_elt", scope: !2332, file: !3, line: 1577, type: !29)
!2337 = !DILocalVariable(name: "b_elt", scope: !2332, file: !3, line: 1578, type: !750)
!2338 = !DILocalVariable(name: "a_prev", scope: !2332, file: !3, line: 1579, type: !29)
!2339 = !DILocalVariable(name: "a_prev_pnext", scope: !2332, file: !3, line: 1580, type: !1585)
!2340 = !DILocalVariable(name: "changed", scope: !2332, file: !3, line: 1581, type: !7)
!2341 = !DILocation(line: 0, scope: !2332)
!2342 = !DILocation(line: 1583, column: 9, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 1583, column: 7)
!2344 = !DILocation(line: 1583, column: 7, scope: !2332)
!2345 = !DILocation(line: 1580, column: 39, scope: !2332)
!2346 = !DILocation(line: 1578, column: 36, scope: !2332)
!2347 = !DILocation(line: 1586, column: 3, scope: !2332)
!2348 = !DILocation(line: 1589, column: 12, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 1589, column: 11)
!2350 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 1587, column: 5)
!2351 = !DILocation(line: 1589, column: 18, scope: !2349)
!2352 = !DILocation(line: 1589, column: 28, scope: !2349)
!2353 = !DILocation(line: 1589, column: 43, scope: !2349)
!2354 = !DILocation(line: 1589, column: 33, scope: !2349)
!2355 = !DILocation(line: 1589, column: 11, scope: !2350)
!2356 = !DILocation(line: 1591, column: 14, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1590, column: 2)
!2358 = !DILocation(line: 1592, column: 19, scope: !2357)
!2359 = !DILocation(line: 1593, column: 2, scope: !2357)
!2360 = !DILocation(line: 1594, column: 28, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1594, column: 16)
!2362 = !DILocation(line: 1594, column: 16, scope: !2349)
!2363 = !DILocation(line: 1596, column: 21, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 1595, column: 2)
!2365 = !DILocation(line: 1597, column: 19, scope: !2364)
!2366 = !DILocation(line: 1598, column: 2, scope: !2364)
!2367 = !DILocation(line: 0, scope: !2349)
!2368 = !DILocation(line: 1600, column: 16, scope: !2350)
!2369 = !DILocation(line: 1601, column: 31, scope: !2350)
!2370 = distinct !{!2370, !2347, !2371}
!2371 = !DILocation(line: 1603, column: 5, scope: !2332)
!2372 = !DILocation(line: 1605, column: 3, scope: !2332)
!2373 = !DILocation(line: 1606, column: 10, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 1606, column: 7)
!2375 = !DILocation(line: 1606, column: 7, scope: !2374)
!2376 = !DILocation(line: 1606, column: 7, scope: !2332)
!2377 = !DILocation(line: 1607, column: 27, scope: !2374)
!2378 = !DILocation(line: 1607, column: 8, scope: !2374)
!2379 = !DILocation(line: 1607, column: 13, scope: !2374)
!2380 = !DILocation(line: 1607, column: 5, scope: !2374)
!2381 = !DILocation(line: 1609, column: 1, scope: !2332)
!2382 = distinct !DISubprogram(name: "bitmap_xor", scope: !3, file: !3, line: 1614, type: !1364, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2383)
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2395, !2396, !2400}
!2384 = !DILocalVariable(name: "dst", arg: 1, scope: !2382, file: !3, line: 1614, type: !580)
!2385 = !DILocalVariable(name: "a", arg: 2, scope: !2382, file: !3, line: 1614, type: !743)
!2386 = !DILocalVariable(name: "b", arg: 3, scope: !2382, file: !3, line: 1614, type: !743)
!2387 = !DILocalVariable(name: "dst_elt", scope: !2382, file: !3, line: 1616, type: !29)
!2388 = !DILocalVariable(name: "a_elt", scope: !2382, file: !3, line: 1617, type: !750)
!2389 = !DILocalVariable(name: "b_elt", scope: !2382, file: !3, line: 1618, type: !750)
!2390 = !DILocalVariable(name: "dst_prev", scope: !2382, file: !3, line: 1619, type: !29)
!2391 = !DILocalVariable(name: "ix", scope: !2392, file: !3, line: 1633, type: !37)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1631, column: 2)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1630, column: 11)
!2394 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 1629, column: 5)
!2395 = !DILocalVariable(name: "ior", scope: !2392, file: !3, line: 1634, type: !40)
!2396 = !DILocalVariable(name: "r", scope: !2397, file: !3, line: 1642, type: !40)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 1641, column: 6)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 1640, column: 4)
!2399 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1640, column: 4)
!2400 = !DILocalVariable(name: "src", scope: !2401, file: !3, line: 1658, type: !750)
!2401 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1656, column: 2)
!2402 = !DILocation(line: 0, scope: !2382)
!2403 = !DILocation(line: 1616, column: 34, scope: !2382)
!2404 = !DILocation(line: 1617, column: 36, scope: !2382)
!2405 = !DILocation(line: 1618, column: 36, scope: !2382)
!2406 = !DILocation(line: 1621, column: 3, scope: !2382)
!2407 = !DILocation(line: 1622, column: 9, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 1622, column: 7)
!2409 = !DILocation(line: 1622, column: 7, scope: !2382)
!2410 = !DILocation(line: 1628, column: 3, scope: !2382)
!2411 = !DILocation(line: 1624, column: 7, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 1623, column: 5)
!2413 = !DILocation(line: 1625, column: 7, scope: !2412)
!2414 = !DILocation(line: 1628, column: 10, scope: !2382)
!2415 = !DILocation(line: 1628, column: 16, scope: !2382)
!2416 = !DILocation(line: 1630, column: 17, scope: !2393)
!2417 = !DILocation(line: 1630, column: 36, scope: !2393)
!2418 = !DILocation(line: 1630, column: 51, scope: !2393)
!2419 = !DILocation(line: 1630, column: 41, scope: !2393)
!2420 = !DILocation(line: 1630, column: 11, scope: !2394)
!2421 = !DILocation(line: 0, scope: !2392)
!2422 = !DILocation(line: 1636, column: 9, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1636, column: 8)
!2424 = !DILocation(line: 1636, column: 8, scope: !2392)
!2425 = !DILocation(line: 1637, column: 16, scope: !2423)
!2426 = !DILocation(line: 1637, column: 6, scope: !2423)
!2427 = !DILocation(line: 1639, column: 15, scope: !2423)
!2428 = !DILocation(line: 1639, column: 20, scope: !2423)
!2429 = !DILocation(line: 1640, column: 9, scope: !2399)
!2430 = !DILocation(line: 0, scope: !2399)
!2431 = !DILocation(line: 1640, column: 38, scope: !2398)
!2432 = !DILocation(line: 1640, column: 4, scope: !2399)
!2433 = !DILocation(line: 1642, column: 24, scope: !2397)
!2434 = !DILocation(line: 1642, column: 42, scope: !2397)
!2435 = !DILocation(line: 1642, column: 40, scope: !2397)
!2436 = !DILocation(line: 0, scope: !2397)
!2437 = !DILocation(line: 1644, column: 12, scope: !2397)
!2438 = !DILocation(line: 1645, column: 8, scope: !2397)
!2439 = !DILocation(line: 1645, column: 26, scope: !2397)
!2440 = !DILocation(line: 1640, column: 4, scope: !2398)
!2441 = distinct !{!2441, !2432, !2442}
!2442 = !DILocation(line: 1646, column: 6, scope: !2399)
!2443 = !DILocation(line: 1647, column: 19, scope: !2392)
!2444 = !DILocation(line: 1648, column: 19, scope: !2392)
!2445 = !DILocation(line: 1649, column: 8, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1649, column: 8)
!2447 = !DILocation(line: 1649, column: 8, scope: !2392)
!2448 = !DILocation(line: 1652, column: 27, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 1650, column: 6)
!2450 = !DILocation(line: 1653, column: 6, scope: !2449)
!2451 = !DILocation(line: 1660, column: 9, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 1660, column: 8)
!2453 = !DILocation(line: 1660, column: 15, scope: !2452)
!2454 = !DILocation(line: 1660, column: 19, scope: !2452)
!2455 = !DILocation(line: 1660, column: 25, scope: !2452)
!2456 = !DILocation(line: 1660, column: 35, scope: !2452)
!2457 = !DILocation(line: 1660, column: 49, scope: !2452)
!2458 = !DILocation(line: 1660, column: 40, scope: !2452)
!2459 = !DILocation(line: 1660, column: 8, scope: !2401)
!2460 = !DILocation(line: 0, scope: !2401)
!2461 = !DILocation(line: 1663, column: 23, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 1661, column: 6)
!2463 = !DILocation(line: 1664, column: 6, scope: !2462)
!2464 = !DILocation(line: 1668, column: 23, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 1666, column: 6)
!2466 = !DILocation(line: 0, scope: !2452)
!2467 = !DILocation(line: 1671, column: 9, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 1671, column: 8)
!2469 = !DILocation(line: 0, scope: !2468)
!2470 = !DILocation(line: 1671, column: 8, scope: !2401)
!2471 = !DILocation(line: 1672, column: 16, scope: !2468)
!2472 = !DILocation(line: 1672, column: 6, scope: !2468)
!2473 = !DILocation(line: 1674, column: 15, scope: !2468)
!2474 = !DILocation(line: 1674, column: 20, scope: !2468)
!2475 = !DILocation(line: 1675, column: 12, scope: !2401)
!2476 = !DILocation(line: 1675, column: 27, scope: !2401)
!2477 = !DILocation(line: 1675, column: 4, scope: !2401)
!2478 = !DILocation(line: 1677, column: 23, scope: !2401)
!2479 = !DILocation(line: 0, scope: !2393)
!2480 = distinct !{!2480, !2410, !2481}
!2481 = !DILocation(line: 1679, column: 5, scope: !2382)
!2482 = !DILocation(line: 1681, column: 23, scope: !2382)
!2483 = !DILocation(line: 1681, column: 8, scope: !2382)
!2484 = !DILocation(line: 1681, column: 16, scope: !2382)
!2485 = !DILocation(line: 1682, column: 3, scope: !2382)
!2486 = !DILocation(line: 1683, column: 3, scope: !2382)
!2487 = !DILocation(line: 1684, column: 12, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 1684, column: 7)
!2489 = !DILocation(line: 1684, column: 7, scope: !2488)
!2490 = !DILocation(line: 1684, column: 7, scope: !2382)
!2491 = !DILocation(line: 1685, column: 31, scope: !2488)
!2492 = !DILocation(line: 1685, column: 10, scope: !2488)
!2493 = !DILocation(line: 1685, column: 15, scope: !2488)
!2494 = !DILocation(line: 1685, column: 5, scope: !2488)
!2495 = !DILocation(line: 1686, column: 1, scope: !2382)
!2496 = distinct !DISubprogram(name: "bitmap_xor_into", scope: !3, file: !3, line: 1691, type: !741, scopeLine: 1692, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2497)
!2497 = !{!2498, !2499, !2500, !2501, !2502, !2503, !2507, !2510, !2511, !2512}
!2498 = !DILocalVariable(name: "a", arg: 1, scope: !2496, file: !3, line: 1691, type: !580)
!2499 = !DILocalVariable(name: "b", arg: 2, scope: !2496, file: !3, line: 1691, type: !743)
!2500 = !DILocalVariable(name: "a_elt", scope: !2496, file: !3, line: 1693, type: !29)
!2501 = !DILocalVariable(name: "b_elt", scope: !2496, file: !3, line: 1694, type: !750)
!2502 = !DILocalVariable(name: "a_prev", scope: !2496, file: !3, line: 1695, type: !29)
!2503 = !DILocalVariable(name: "dst", scope: !2504, file: !3, line: 1708, type: !29)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 1706, column: 2)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 1705, column: 11)
!2506 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 1704, column: 5)
!2507 = !DILocalVariable(name: "ix", scope: !2508, file: !3, line: 1721, type: !37)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 1719, column: 2)
!2509 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 1713, column: 16)
!2510 = !DILocalVariable(name: "ior", scope: !2508, file: !3, line: 1722, type: !40)
!2511 = !DILocalVariable(name: "next", scope: !2508, file: !3, line: 1723, type: !29)
!2512 = !DILocalVariable(name: "r", scope: !2513, file: !3, line: 1727, type: !40)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1726, column: 6)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1725, column: 4)
!2515 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 1725, column: 4)
!2516 = !DILocation(line: 0, scope: !2496)
!2517 = !DILocation(line: 1697, column: 9, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 1697, column: 7)
!2519 = !DILocation(line: 1697, column: 7, scope: !2496)
!2520 = !DILocation(line: 1694, column: 36, scope: !2496)
!2521 = !DILocation(line: 1693, column: 30, scope: !2496)
!2522 = !DILocation(line: 1703, column: 3, scope: !2496)
!2523 = !DILocation(line: 1699, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 1698, column: 5)
!2525 = !DILocation(line: 1700, column: 7, scope: !2524)
!2526 = !DILocation(line: 1693, column: 19, scope: !2496)
!2527 = !DILocation(line: 1705, column: 12, scope: !2505)
!2528 = !DILocation(line: 1705, column: 18, scope: !2505)
!2529 = !DILocation(line: 0, scope: !2504)
!2530 = !DILocation(line: 1708, column: 69, scope: !2504)
!2531 = !DILocation(line: 1705, column: 28, scope: !2505)
!2532 = !DILocation(line: 1705, column: 42, scope: !2505)
!2533 = !DILocation(line: 1705, column: 33, scope: !2505)
!2534 = !DILocation(line: 1705, column: 11, scope: !2506)
!2535 = !DILocation(line: 1708, column: 26, scope: !2504)
!2536 = !DILocation(line: 1709, column: 12, scope: !2504)
!2537 = !DILocation(line: 1709, column: 23, scope: !2504)
!2538 = !DILocation(line: 1709, column: 4, scope: !2504)
!2539 = !DILocation(line: 1711, column: 19, scope: !2504)
!2540 = !DILocation(line: 1712, column: 2, scope: !2504)
!2541 = !DILocation(line: 1713, column: 28, scope: !2509)
!2542 = !DILocation(line: 0, scope: !2509)
!2543 = !DILocation(line: 1713, column: 16, scope: !2505)
!2544 = !DILocation(line: 1725, column: 4, scope: !2515)
!2545 = !DILocation(line: 0, scope: !2515)
!2546 = !DILocation(line: 0, scope: !2508)
!2547 = !DILocation(line: 1725, column: 38, scope: !2514)
!2548 = !DILocation(line: 1727, column: 24, scope: !2513)
!2549 = !DILocation(line: 1727, column: 42, scope: !2513)
!2550 = !DILocation(line: 1727, column: 40, scope: !2513)
!2551 = !DILocation(line: 0, scope: !2513)
!2552 = !DILocation(line: 1729, column: 12, scope: !2513)
!2553 = !DILocation(line: 1730, column: 24, scope: !2513)
!2554 = !DILocation(line: 1725, column: 4, scope: !2514)
!2555 = distinct !{!2555, !2544, !2556}
!2556 = !DILocation(line: 1731, column: 6, scope: !2515)
!2557 = !DILocation(line: 1732, column: 19, scope: !2508)
!2558 = !DILocation(line: 1733, column: 8, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 1733, column: 8)
!2560 = !DILocation(line: 1733, column: 8, scope: !2508)
!2561 = !DILocation(line: 1736, column: 6, scope: !2559)
!2562 = !DILocation(line: 0, scope: !2505)
!2563 = distinct !{!2563, !2522, !2564}
!2564 = !DILocation(line: 1739, column: 5, scope: !2496)
!2565 = !DILocation(line: 1740, column: 3, scope: !2496)
!2566 = !DILocation(line: 1741, column: 10, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 1741, column: 7)
!2568 = !DILocation(line: 1741, column: 7, scope: !2567)
!2569 = !DILocation(line: 1741, column: 7, scope: !2496)
!2570 = !DILocation(line: 1742, column: 27, scope: !2567)
!2571 = !DILocation(line: 1742, column: 8, scope: !2567)
!2572 = !DILocation(line: 1742, column: 13, scope: !2567)
!2573 = !DILocation(line: 1742, column: 5, scope: !2567)
!2574 = !DILocation(line: 1743, column: 1, scope: !2496)
!2575 = distinct !DISubprogram(name: "bitmap_equal_p", scope: !3, file: !3, line: 1750, type: !2576, scopeLine: 1751, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2578)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!7, !743, !743}
!2578 = !{!2579, !2580, !2581, !2582, !2583}
!2579 = !DILocalVariable(name: "a", arg: 1, scope: !2575, file: !3, line: 1750, type: !743)
!2580 = !DILocalVariable(name: "b", arg: 2, scope: !2575, file: !3, line: 1750, type: !743)
!2581 = !DILocalVariable(name: "a_elt", scope: !2575, file: !3, line: 1752, type: !750)
!2582 = !DILocalVariable(name: "b_elt", scope: !2575, file: !3, line: 1753, type: !750)
!2583 = !DILocalVariable(name: "ix", scope: !2575, file: !3, line: 1754, type: !37)
!2584 = !DILocation(line: 0, scope: !2575)
!2585 = !DILocation(line: 1756, column: 19, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 1756, column: 3)
!2587 = !DILocation(line: 1756, column: 37, scope: !2586)
!2588 = !DILocation(line: 1756, column: 8, scope: !2586)
!2589 = !DILocation(line: 0, scope: !2586)
!2590 = !DILocation(line: 1757, column: 8, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1756, column: 3)
!2592 = !DILocation(line: 1757, column: 14, scope: !2591)
!2593 = !DILocation(line: 1756, column: 3, scope: !2586)
!2594 = !DILocation(line: 1760, column: 18, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 1760, column: 11)
!2596 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 1759, column: 5)
!2597 = !DILocation(line: 1760, column: 33, scope: !2595)
!2598 = !DILocation(line: 1760, column: 23, scope: !2595)
!2599 = !DILocation(line: 1760, column: 11, scope: !2596)
!2600 = !DILocation(line: 1762, column: 7, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 1762, column: 7)
!2602 = !DILocation(line: 0, scope: !2601)
!2603 = !DILocation(line: 1762, column: 41, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 1762, column: 7)
!2605 = !DILocation(line: 1763, column: 6, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 1763, column: 6)
!2607 = !DILocation(line: 1763, column: 25, scope: !2606)
!2608 = !DILocation(line: 1763, column: 22, scope: !2606)
!2609 = !DILocation(line: 1763, column: 6, scope: !2604)
!2610 = distinct !{!2610, !2600, !2611}
!2611 = !DILocation(line: 1764, column: 11, scope: !2601)
!2612 = !DILocation(line: 1758, column: 23, scope: !2591)
!2613 = !DILocation(line: 1758, column: 44, scope: !2591)
!2614 = !DILocation(line: 1756, column: 3, scope: !2591)
!2615 = distinct !{!2615, !2593, !2616}
!2616 = !DILocation(line: 1765, column: 5, scope: !2586)
!2617 = !DILocation(line: 1766, column: 11, scope: !2575)
!2618 = !DILocation(line: 1766, column: 17, scope: !2575)
!2619 = !DILocation(line: 1766, column: 20, scope: !2575)
!2620 = !DILocation(line: 1766, column: 3, scope: !2575)
!2621 = !DILocation(line: 1767, column: 1, scope: !2575)
!2622 = distinct !DISubprogram(name: "bitmap_intersect_p", scope: !3, file: !3, line: 1772, type: !2576, scopeLine: 1773, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2623)
!2623 = !{!2624, !2625, !2626, !2627, !2628}
!2624 = !DILocalVariable(name: "a", arg: 1, scope: !2622, file: !3, line: 1772, type: !743)
!2625 = !DILocalVariable(name: "b", arg: 2, scope: !2622, file: !3, line: 1772, type: !743)
!2626 = !DILocalVariable(name: "a_elt", scope: !2622, file: !3, line: 1774, type: !750)
!2627 = !DILocalVariable(name: "b_elt", scope: !2622, file: !3, line: 1775, type: !750)
!2628 = !DILocalVariable(name: "ix", scope: !2622, file: !3, line: 1776, type: !37)
!2629 = !DILocation(line: 0, scope: !2622)
!2630 = !DILocation(line: 1778, column: 19, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 1778, column: 3)
!2632 = !DILocation(line: 1778, column: 37, scope: !2631)
!2633 = !DILocation(line: 1778, column: 8, scope: !2631)
!2634 = !DILocation(line: 1778, column: 32, scope: !2631)
!2635 = !DILocation(line: 0, scope: !2631)
!2636 = !DILocation(line: 1779, column: 8, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 1778, column: 3)
!2638 = !DILocation(line: 1779, column: 14, scope: !2637)
!2639 = !DILocation(line: 1778, column: 3, scope: !2631)
!2640 = !DILocation(line: 1781, column: 18, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 1781, column: 11)
!2642 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 1780, column: 5)
!2643 = !DILocation(line: 1781, column: 32, scope: !2641)
!2644 = !DILocation(line: 1781, column: 23, scope: !2641)
!2645 = !DILocation(line: 1781, column: 11, scope: !2642)
!2646 = !DILocation(line: 1782, column: 17, scope: !2641)
!2647 = !DILocation(line: 1782, column: 2, scope: !2641)
!2648 = !DILocation(line: 1783, column: 28, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1783, column: 16)
!2650 = !DILocation(line: 1783, column: 16, scope: !2641)
!2651 = !DILocation(line: 1787, column: 4, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 1787, column: 4)
!2653 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 1786, column: 2)
!2654 = !DILocation(line: 1784, column: 17, scope: !2649)
!2655 = !DILocation(line: 1784, column: 2, scope: !2649)
!2656 = !DILocation(line: 0, scope: !2652)
!2657 = !DILocation(line: 1787, column: 38, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2652, file: !3, line: 1787, column: 4)
!2659 = !DILocation(line: 1788, column: 10, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 1788, column: 10)
!2661 = !DILocation(line: 1788, column: 28, scope: !2660)
!2662 = !DILocation(line: 1788, column: 26, scope: !2660)
!2663 = !DILocation(line: 1788, column: 10, scope: !2658)
!2664 = distinct !{!2664, !2651, !2665}
!2665 = !DILocation(line: 1789, column: 15, scope: !2652)
!2666 = !DILocation(line: 1790, column: 19, scope: !2653)
!2667 = !DILocation(line: 1791, column: 19, scope: !2653)
!2668 = !DILocation(line: 1778, column: 3, scope: !2637)
!2669 = distinct !{!2669, !2639, !2670}
!2670 = !DILocation(line: 1793, column: 5, scope: !2631)
!2671 = !DILocation(line: 1795, column: 1, scope: !2622)
!2672 = distinct !DISubprogram(name: "bitmap_intersect_compl_p", scope: !3, file: !3, line: 1800, type: !2576, scopeLine: 1801, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2673)
!2673 = !{!2674, !2675, !2676, !2677, !2678}
!2674 = !DILocalVariable(name: "a", arg: 1, scope: !2672, file: !3, line: 1800, type: !743)
!2675 = !DILocalVariable(name: "b", arg: 2, scope: !2672, file: !3, line: 1800, type: !743)
!2676 = !DILocalVariable(name: "a_elt", scope: !2672, file: !3, line: 1802, type: !750)
!2677 = !DILocalVariable(name: "b_elt", scope: !2672, file: !3, line: 1803, type: !750)
!2678 = !DILocalVariable(name: "ix", scope: !2672, file: !3, line: 1804, type: !37)
!2679 = !DILocation(line: 0, scope: !2672)
!2680 = !DILocation(line: 1805, column: 19, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 1805, column: 3)
!2682 = !DILocation(line: 1805, column: 37, scope: !2681)
!2683 = !DILocation(line: 1805, column: 8, scope: !2681)
!2684 = !DILocation(line: 1805, column: 14, scope: !2681)
!2685 = !DILocation(line: 0, scope: !2681)
!2686 = !DILocation(line: 1806, column: 8, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 1805, column: 3)
!2688 = !DILocation(line: 1806, column: 14, scope: !2687)
!2689 = !DILocation(line: 1805, column: 3, scope: !2681)
!2690 = !DILocation(line: 1808, column: 18, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 1808, column: 11)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 1807, column: 5)
!2693 = !DILocation(line: 1808, column: 32, scope: !2691)
!2694 = !DILocation(line: 1808, column: 23, scope: !2691)
!2695 = !DILocation(line: 1808, column: 11, scope: !2692)
!2696 = !DILocation(line: 1810, column: 28, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 1810, column: 16)
!2698 = !DILocation(line: 1810, column: 16, scope: !2691)
!2699 = !DILocation(line: 1814, column: 4, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 1814, column: 4)
!2701 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1813, column: 2)
!2702 = !DILocation(line: 1811, column: 2, scope: !2697)
!2703 = !DILocation(line: 0, scope: !2700)
!2704 = !DILocation(line: 1814, column: 38, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 1814, column: 4)
!2706 = !DILocation(line: 1815, column: 10, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 1815, column: 10)
!2708 = !DILocation(line: 1815, column: 29, scope: !2707)
!2709 = !DILocation(line: 1815, column: 28, scope: !2707)
!2710 = !DILocation(line: 1815, column: 26, scope: !2707)
!2711 = !DILocation(line: 1815, column: 10, scope: !2705)
!2712 = distinct !{!2712, !2699, !2713}
!2713 = !DILocation(line: 1816, column: 15, scope: !2700)
!2714 = !DILocation(line: 1817, column: 19, scope: !2701)
!2715 = !DILocation(line: 0, scope: !2697)
!2716 = !DILocation(line: 1805, column: 3, scope: !2687)
!2717 = distinct !{!2717, !2689, !2718}
!2718 = !DILocation(line: 1820, column: 5, scope: !2681)
!2719 = !DILocation(line: 1821, column: 10, scope: !2672)
!2720 = !DILocation(line: 1821, column: 3, scope: !2672)
!2721 = !DILocation(line: 1822, column: 1, scope: !2672)
!2722 = distinct !DISubprogram(name: "bitmap_ior_and_compl", scope: !3, file: !3, line: 1828, type: !2723, scopeLine: 1829, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!7, !580, !743, !743, !743}
!2725 = !{!2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2739, !2742, !2743, !2744}
!2726 = !DILocalVariable(name: "dst", arg: 1, scope: !2722, file: !3, line: 1828, type: !580)
!2727 = !DILocalVariable(name: "a", arg: 2, scope: !2722, file: !3, line: 1828, type: !743)
!2728 = !DILocalVariable(name: "b", arg: 3, scope: !2722, file: !3, line: 1828, type: !743)
!2729 = !DILocalVariable(name: "kill", arg: 4, scope: !2722, file: !3, line: 1828, type: !743)
!2730 = !DILocalVariable(name: "changed", scope: !2722, file: !3, line: 1830, type: !7)
!2731 = !DILocalVariable(name: "dst_elt", scope: !2722, file: !3, line: 1832, type: !29)
!2732 = !DILocalVariable(name: "a_elt", scope: !2722, file: !3, line: 1833, type: !750)
!2733 = !DILocalVariable(name: "b_elt", scope: !2722, file: !3, line: 1834, type: !750)
!2734 = !DILocalVariable(name: "kill_elt", scope: !2722, file: !3, line: 1835, type: !750)
!2735 = !DILocalVariable(name: "dst_prev", scope: !2722, file: !3, line: 1836, type: !29)
!2736 = !DILocalVariable(name: "dst_prev_pnext", scope: !2722, file: !3, line: 1837, type: !1585)
!2737 = !DILocalVariable(name: "new_element", scope: !2738, file: !3, line: 1856, type: !7)
!2738 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1855, column: 5)
!2739 = !DILocalVariable(name: "tmp_elt", scope: !2740, file: !3, line: 1865, type: !30)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1864, column: 9)
!2741 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 1862, column: 11)
!2742 = !DILocalVariable(name: "ix", scope: !2740, file: !3, line: 1866, type: !37)
!2743 = !DILocalVariable(name: "ior", scope: !2740, file: !3, line: 1868, type: !40)
!2744 = !DILocalVariable(name: "r", scope: !2745, file: !3, line: 1872, type: !40)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 1871, column: 13)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1870, column: 11)
!2747 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 1870, column: 11)
!2748 = !DILocation(line: 0, scope: !2722)
!2749 = !DILocation(line: 1832, column: 34, scope: !2722)
!2750 = !DILocation(line: 1833, column: 36, scope: !2722)
!2751 = !DILocation(line: 1834, column: 36, scope: !2722)
!2752 = !DILocation(line: 1835, column: 42, scope: !2722)
!2753 = !DILocation(line: 1839, column: 3, scope: !2722)
!2754 = !DILocation(line: 1842, column: 9, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1842, column: 7)
!2756 = !DILocation(line: 1842, column: 17, scope: !2755)
!2757 = !DILocation(line: 1842, column: 20, scope: !2755)
!2758 = !DILocation(line: 1842, column: 7, scope: !2722)
!2759 = !DILocation(line: 1844, column: 18, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2755, file: !3, line: 1843, column: 5)
!2761 = !DILocation(line: 1844, column: 17, scope: !2760)
!2762 = !DILocation(line: 1845, column: 11, scope: !2760)
!2763 = !DILocation(line: 1846, column: 2, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 1845, column: 11)
!2765 = !DILocation(line: 1849, column: 7, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1849, column: 7)
!2767 = !DILocation(line: 1849, column: 7, scope: !2722)
!2768 = !DILocation(line: 1850, column: 12, scope: !2766)
!2769 = !DILocation(line: 1850, column: 5, scope: !2766)
!2770 = !DILocation(line: 1851, column: 7, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1851, column: 7)
!2772 = !DILocation(line: 1851, column: 7, scope: !2722)
!2773 = !DILocation(line: 0, scope: !2740)
!2774 = !DILocation(line: 1854, column: 3, scope: !2722)
!2775 = !DILocation(line: 1852, column: 12, scope: !2771)
!2776 = !DILocation(line: 1852, column: 5, scope: !2771)
!2777 = !DILocation(line: 1854, column: 10, scope: !2722)
!2778 = !DILocation(line: 1854, column: 16, scope: !2722)
!2779 = !DILocation(line: 0, scope: !2738)
!2780 = !DILocation(line: 1858, column: 11, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 1858, column: 11)
!2782 = !DILocation(line: 1858, column: 11, scope: !2738)
!2783 = !DILocation(line: 0, scope: !2781)
!2784 = !DILocation(line: 1859, column: 2, scope: !2781)
!2785 = !DILocation(line: 1859, column: 9, scope: !2781)
!2786 = !DILocation(line: 1859, column: 18, scope: !2781)
!2787 = !DILocation(line: 1859, column: 31, scope: !2781)
!2788 = !DILocation(line: 1859, column: 45, scope: !2781)
!2789 = !DILocation(line: 1859, column: 36, scope: !2781)
!2790 = !DILocation(line: 1860, column: 25, scope: !2781)
!2791 = distinct !{!2791, !2784, !2790}
!2792 = !DILocation(line: 1862, column: 11, scope: !2741)
!2793 = !DILocation(line: 1835, column: 25, scope: !2722)
!2794 = !DILocation(line: 1862, column: 20, scope: !2741)
!2795 = !DILocation(line: 1862, column: 17, scope: !2741)
!2796 = !DILocation(line: 1862, column: 42, scope: !2741)
!2797 = !DILocation(line: 1862, column: 57, scope: !2741)
!2798 = !DILocation(line: 1862, column: 47, scope: !2741)
!2799 = !DILocation(line: 1863, column: 4, scope: !2741)
!2800 = !DILocation(line: 1863, column: 9, scope: !2741)
!2801 = !DILocation(line: 1863, column: 15, scope: !2741)
!2802 = !DILocation(line: 1863, column: 25, scope: !2741)
!2803 = !DILocation(line: 1863, column: 30, scope: !2741)
!2804 = !DILocation(line: 1862, column: 11, scope: !2738)
!2805 = !DILocation(line: 1865, column: 4, scope: !2740)
!2806 = !DILocation(line: 1869, column: 17, scope: !2740)
!2807 = !DILocation(line: 1870, column: 16, scope: !2747)
!2808 = !DILocation(line: 0, scope: !2747)
!2809 = !DILocation(line: 1870, column: 45, scope: !2746)
!2810 = !DILocation(line: 1870, column: 11, scope: !2747)
!2811 = !DILocation(line: 1872, column: 31, scope: !2745)
!2812 = !DILocation(line: 1872, column: 50, scope: !2745)
!2813 = !DILocation(line: 1872, column: 49, scope: !2745)
!2814 = !DILocation(line: 1872, column: 47, scope: !2745)
!2815 = !DILocation(line: 0, scope: !2745)
!2816 = !DILocation(line: 1873, column: 19, scope: !2745)
!2817 = !DILocation(line: 1874, column: 15, scope: !2745)
!2818 = !DILocation(line: 1874, column: 32, scope: !2745)
!2819 = !DILocation(line: 1870, column: 11, scope: !2746)
!2820 = distinct !{!2820, !2810, !2821}
!2821 = !DILocation(line: 1875, column: 13, scope: !2747)
!2822 = !DILocation(line: 1877, column: 8, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 1877, column: 8)
!2824 = !DILocation(line: 1877, column: 8, scope: !2740)
!2825 = !DILocation(line: 1879, column: 18, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 1878, column: 6)
!2827 = !DILocation(line: 1882, column: 18, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 1882, column: 12)
!2829 = !DILocation(line: 1882, column: 28, scope: !2828)
!2830 = !DILocation(line: 1882, column: 43, scope: !2828)
!2831 = !DILocation(line: 1882, column: 33, scope: !2828)
!2832 = !DILocation(line: 1882, column: 12, scope: !2826)
!2833 = !DILocation(line: 1883, column: 32, scope: !2828)
!2834 = !DILocation(line: 1883, column: 17, scope: !2828)
!2835 = !DILocation(line: 1886, column: 19, scope: !2740)
!2836 = !DILocation(line: 1887, column: 25, scope: !2740)
!2837 = !DILocation(line: 1888, column: 2, scope: !2741)
!2838 = !DILocation(line: 1888, column: 2, scope: !2740)
!2839 = !DILocation(line: 1891, column: 14, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1890, column: 2)
!2841 = !DILocation(line: 1895, column: 21, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 1895, column: 15)
!2843 = !DILocation(line: 1895, column: 40, scope: !2842)
!2844 = !DILocation(line: 1895, column: 55, scope: !2842)
!2845 = !DILocation(line: 1895, column: 45, scope: !2842)
!2846 = !DILocation(line: 1895, column: 15, scope: !2840)
!2847 = !DILocation(line: 1897, column: 23, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1896, column: 6)
!2849 = !DILocation(line: 1898, column: 23, scope: !2848)
!2850 = !DILocation(line: 1899, column: 6, scope: !2848)
!2851 = !DILocation(line: 1902, column: 12, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 1902, column: 12)
!2853 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1901, column: 6)
!2854 = !DILocation(line: 1902, column: 18, scope: !2852)
!2855 = !DILocation(line: 1902, column: 29, scope: !2852)
!2856 = !DILocation(line: 1902, column: 39, scope: !2852)
!2857 = !DILocation(line: 1902, column: 54, scope: !2852)
!2858 = !DILocation(line: 1902, column: 44, scope: !2852)
!2859 = !DILocation(line: 1902, column: 12, scope: !2853)
!2860 = !DILocation(line: 1903, column: 32, scope: !2852)
!2861 = !DILocation(line: 1903, column: 17, scope: !2852)
!2862 = !DILocation(line: 1904, column: 30, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 1904, column: 24)
!2864 = !DILocation(line: 1904, column: 41, scope: !2863)
!2865 = !DILocation(line: 1904, column: 51, scope: !2863)
!2866 = !DILocation(line: 1904, column: 66, scope: !2863)
!2867 = !DILocation(line: 1904, column: 56, scope: !2863)
!2868 = !DILocation(line: 1904, column: 24, scope: !2852)
!2869 = !DILocation(line: 1905, column: 32, scope: !2863)
!2870 = !DILocation(line: 1905, column: 17, scope: !2863)
!2871 = !DILocation(line: 0, scope: !2741)
!2872 = !DILocation(line: 1909, column: 11, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 1909, column: 11)
!2874 = !DILocation(line: 1909, column: 11, scope: !2738)
!2875 = !DILocation(line: 1911, column: 15, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 1910, column: 2)
!2877 = !DILocation(line: 1912, column: 32, scope: !2876)
!2878 = !DILocation(line: 1913, column: 14, scope: !2876)
!2879 = !DILocation(line: 1914, column: 2, scope: !2876)
!2880 = distinct !{!2880, !2774, !2881}
!2881 = !DILocation(line: 1915, column: 5, scope: !2722)
!2882 = !DILocation(line: 1917, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1917, column: 7)
!2884 = !DILocation(line: 1917, column: 7, scope: !2722)
!2885 = !DILocation(line: 1920, column: 7, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1918, column: 5)
!2887 = !DILocation(line: 1921, column: 5, scope: !2886)
!2888 = !DILocation(line: 1922, column: 3, scope: !2722)
!2889 = !DILocation(line: 1923, column: 12, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1923, column: 7)
!2891 = !DILocation(line: 1923, column: 7, scope: !2890)
!2892 = !DILocation(line: 1923, column: 7, scope: !2722)
!2893 = !DILocation(line: 1924, column: 31, scope: !2890)
!2894 = !DILocation(line: 1924, column: 10, scope: !2890)
!2895 = !DILocation(line: 1924, column: 15, scope: !2890)
!2896 = !DILocation(line: 1924, column: 5, scope: !2890)
!2897 = !DILocation(line: 1927, column: 1, scope: !2722)
!2898 = distinct !DISubprogram(name: "bitmap_ior_and_compl_into", scope: !3, file: !3, line: 1932, type: !1574, scopeLine: 1933, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2899)
!2899 = !{!2900, !2901, !2902, !2903, !2904}
!2900 = !DILocalVariable(name: "a", arg: 1, scope: !2898, file: !3, line: 1932, type: !580)
!2901 = !DILocalVariable(name: "from1", arg: 2, scope: !2898, file: !3, line: 1932, type: !743)
!2902 = !DILocalVariable(name: "from2", arg: 3, scope: !2898, file: !3, line: 1932, type: !743)
!2903 = !DILocalVariable(name: "tmp", scope: !2898, file: !3, line: 1934, type: !86)
!2904 = !DILocalVariable(name: "changed", scope: !2898, file: !3, line: 1935, type: !7)
!2905 = !DILocation(line: 0, scope: !2898)
!2906 = !DILocation(line: 1934, column: 3, scope: !2898)
!2907 = !DILocation(line: 1937, column: 3, scope: !2898)
!2908 = !DILocation(line: 1938, column: 3, scope: !2898)
!2909 = !DILocation(line: 1939, column: 13, scope: !2898)
!2910 = !DILocation(line: 1940, column: 3, scope: !2898)
!2911 = !DILocation(line: 1943, column: 1, scope: !2898)
!2912 = !DILocation(line: 1942, column: 3, scope: !2898)
!2913 = distinct !DISubprogram(name: "bitmap_ior_and_into", scope: !3, file: !3, line: 1948, type: !1574, scopeLine: 1949, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2914)
!2914 = !{!2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2928}
!2915 = !DILocalVariable(name: "a", arg: 1, scope: !2913, file: !3, line: 1948, type: !580)
!2916 = !DILocalVariable(name: "b", arg: 2, scope: !2913, file: !3, line: 1948, type: !743)
!2917 = !DILocalVariable(name: "c", arg: 3, scope: !2913, file: !3, line: 1948, type: !743)
!2918 = !DILocalVariable(name: "a_elt", scope: !2913, file: !3, line: 1950, type: !29)
!2919 = !DILocalVariable(name: "b_elt", scope: !2913, file: !3, line: 1951, type: !750)
!2920 = !DILocalVariable(name: "c_elt", scope: !2913, file: !3, line: 1952, type: !750)
!2921 = !DILocalVariable(name: "and_elt", scope: !2913, file: !3, line: 1953, type: !30)
!2922 = !DILocalVariable(name: "a_prev", scope: !2913, file: !3, line: 1954, type: !29)
!2923 = !DILocalVariable(name: "a_prev_pnext", scope: !2913, file: !3, line: 1955, type: !1585)
!2924 = !DILocalVariable(name: "changed", scope: !2913, file: !3, line: 1956, type: !7)
!2925 = !DILocalVariable(name: "ix", scope: !2913, file: !3, line: 1957, type: !37)
!2926 = !DILocalVariable(name: "overall", scope: !2927, file: !3, line: 1967, type: !40)
!2927 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 1966, column: 5)
!2928 = !DILabel(scope: !2913, name: "done", file: !3, line: 2017)
!2929 = !DILocation(line: 0, scope: !2913)
!2930 = !DILocation(line: 1950, column: 30, scope: !2913)
!2931 = !DILocation(line: 1951, column: 36, scope: !2913)
!2932 = !DILocation(line: 1952, column: 36, scope: !2913)
!2933 = !DILocation(line: 1953, column: 3, scope: !2913)
!2934 = !DILocation(line: 1959, column: 9, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 1959, column: 7)
!2936 = !DILocation(line: 1959, column: 7, scope: !2913)
!2937 = !DILocation(line: 1960, column: 12, scope: !2935)
!2938 = !DILocation(line: 1960, column: 5, scope: !2935)
!2939 = !DILocation(line: 1961, column: 7, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 1961, column: 7)
!2941 = !DILocation(line: 1961, column: 26, scope: !2940)
!2942 = !DILocation(line: 1961, column: 29, scope: !2940)
!2943 = !DILocation(line: 1961, column: 7, scope: !2913)
!2944 = !DILocation(line: 1964, column: 11, scope: !2913)
!2945 = !DILocation(line: 1964, column: 16, scope: !2913)
!2946 = !DILocation(line: 1965, column: 3, scope: !2913)
!2947 = !DILocation(line: 1956, column: 8, scope: !2913)
!2948 = !DILocation(line: 1955, column: 20, scope: !2913)
!2949 = !DILocation(line: 1954, column: 19, scope: !2913)
!2950 = !DILocation(line: 1952, column: 25, scope: !2913)
!2951 = !DILocation(line: 1950, column: 19, scope: !2913)
!2952 = !DILocation(line: 1965, column: 10, scope: !2913)
!2953 = !DILocation(line: 1965, column: 16, scope: !2913)
!2954 = !DILocation(line: 1970, column: 7, scope: !2927)
!2955 = !DILocation(line: 1970, column: 21, scope: !2927)
!2956 = !DILocation(line: 1970, column: 36, scope: !2927)
!2957 = !DILocation(line: 1970, column: 26, scope: !2927)
!2958 = !DILocation(line: 1972, column: 27, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 1972, column: 15)
!2960 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 1971, column: 2)
!2961 = !DILocation(line: 1972, column: 15, scope: !2960)
!2962 = !DILocation(line: 1974, column: 23, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 1973, column: 6)
!2964 = !DILocation(line: 1975, column: 13, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 1975, column: 12)
!2966 = !DILocation(line: 1975, column: 12, scope: !2963)
!2967 = !DILocation(line: 1980, column: 23, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 1979, column: 6)
!2969 = !DILocation(line: 1981, column: 13, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 1981, column: 12)
!2971 = !DILocation(line: 1981, column: 12, scope: !2968)
!2972 = distinct !{!2972, !2954, !2973}
!2973 = !DILocation(line: 1984, column: 2, scope: !2927)
!2974 = !DILocation(line: 0, scope: !2927)
!2975 = !DILocation(line: 1987, column: 20, scope: !2927)
!2976 = !DILocation(line: 1988, column: 12, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 1988, column: 7)
!2978 = !DILocation(line: 0, scope: !2977)
!2979 = !DILocation(line: 1988, column: 41, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 1988, column: 7)
!2981 = !DILocation(line: 1988, column: 7, scope: !2977)
!2982 = !DILocation(line: 1990, column: 23, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 1989, column: 2)
!2984 = !DILocation(line: 1990, column: 41, scope: !2983)
!2985 = !DILocation(line: 1990, column: 39, scope: !2983)
!2986 = !DILocation(line: 1990, column: 4, scope: !2983)
!2987 = !DILocation(line: 1990, column: 21, scope: !2983)
!2988 = !DILocation(line: 1991, column: 12, scope: !2983)
!2989 = !DILocation(line: 1988, column: 7, scope: !2980)
!2990 = distinct !{!2990, !2981, !2991}
!2991 = !DILocation(line: 1992, column: 2, scope: !2977)
!2992 = !DILocation(line: 1994, column: 22, scope: !2927)
!2993 = !DILocation(line: 1995, column: 22, scope: !2927)
!2994 = !DILocation(line: 1996, column: 12, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 1996, column: 11)
!2996 = !DILocation(line: 1996, column: 11, scope: !2927)
!2997 = distinct !{!2997, !2946, !2998}
!2998 = !DILocation(line: 2015, column: 5, scope: !2913)
!2999 = !DILocation(line: 2000, column: 7, scope: !2927)
!3000 = !DILocation(line: 2002, column: 9, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 2001, column: 2)
!3002 = !DILocation(line: 2002, column: 24, scope: !3001)
!3003 = !DILocation(line: 2003, column: 18, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 2003, column: 15)
!3005 = !DILocation(line: 2003, column: 15, scope: !3001)
!3006 = !DILocation(line: 2004, column: 16, scope: !3004)
!3007 = !DILocation(line: 2004, column: 6, scope: !3004)
!3008 = !DILocation(line: 2005, column: 23, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 2005, column: 20)
!3010 = !DILocation(line: 2005, column: 20, scope: !3004)
!3011 = !DILocation(line: 2006, column: 16, scope: !3009)
!3012 = !DILocation(line: 2006, column: 6, scope: !3009)
!3013 = !DILocation(line: 0, scope: !3004)
!3014 = !DILocation(line: 2008, column: 20, scope: !3001)
!3015 = !DILocation(line: 2009, column: 35, scope: !3001)
!3016 = !DILocation(line: 2010, column: 19, scope: !3001)
!3017 = !DILocation(line: 2014, column: 27, scope: !2927)
!3018 = !DILocation(line: 2014, column: 17, scope: !2927)
!3019 = !DILocation(line: 2013, column: 2, scope: !3001)
!3020 = distinct !{!3020, !2999, !3021}
!3021 = !DILocation(line: 2014, column: 31, scope: !2927)
!3022 = !DILocation(line: 2017, column: 2, scope: !2913)
!3023 = !DILocation(line: 2018, column: 3, scope: !2913)
!3024 = !DILocation(line: 2019, column: 10, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 2019, column: 7)
!3026 = !DILocation(line: 2019, column: 7, scope: !3025)
!3027 = !DILocation(line: 2019, column: 7, scope: !2913)
!3028 = !DILocation(line: 2020, column: 27, scope: !3025)
!3029 = !DILocation(line: 2020, column: 8, scope: !3025)
!3030 = !DILocation(line: 2020, column: 13, scope: !3025)
!3031 = !DILocation(line: 2020, column: 5, scope: !3025)
!3032 = !DILocation(line: 2022, column: 1, scope: !2913)
!3033 = distinct !DISubprogram(name: "debug_bitmap_file", scope: !3, file: !3, line: 2027, type: !3034, scopeLine: 2028, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{null, !151, !743}
!3036 = !{!3037, !3038, !3039, !3040, !3044, !3045}
!3037 = !DILocalVariable(name: "file", arg: 1, scope: !3033, file: !3, line: 2027, type: !151)
!3038 = !DILocalVariable(name: "head", arg: 2, scope: !3033, file: !3, line: 2027, type: !743)
!3039 = !DILocalVariable(name: "ptr", scope: !3033, file: !3, line: 2029, type: !750)
!3040 = !DILocalVariable(name: "i", scope: !3041, file: !3, line: 2037, type: !37)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 2036, column: 5)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 2035, column: 3)
!3043 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 2035, column: 3)
!3044 = !DILocalVariable(name: "j", scope: !3041, file: !3, line: 2037, type: !37)
!3045 = !DILocalVariable(name: "col", scope: !3041, file: !3, line: 2037, type: !37)
!3046 = !DILocation(line: 0, scope: !3033)
!3047 = !DILocation(line: 2033, column: 20, scope: !3033)
!3048 = !DILocation(line: 2033, column: 42, scope: !3033)
!3049 = !DILocation(line: 2033, column: 57, scope: !3033)
!3050 = !DILocation(line: 2031, column: 3, scope: !3033)
!3051 = !DILocation(line: 2035, column: 20, scope: !3043)
!3052 = !DILocation(line: 2035, column: 8, scope: !3043)
!3053 = !DILocation(line: 0, scope: !3043)
!3054 = !DILocation(line: 2035, column: 3, scope: !3043)
!3055 = !DILocation(line: 0, scope: !3041)
!3056 = !DILocation(line: 2041, column: 47, scope: !3041)
!3057 = !DILocation(line: 2042, column: 28, scope: !3041)
!3058 = !DILocation(line: 2042, column: 39, scope: !3041)
!3059 = !DILocation(line: 2039, column: 7, scope: !3041)
!3060 = !DILocation(line: 2044, column: 12, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 2044, column: 7)
!3062 = !DILocation(line: 0, scope: !3061)
!3063 = !DILocation(line: 2037, column: 26, scope: !3041)
!3064 = !DILocation(line: 2044, column: 21, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 2044, column: 7)
!3066 = !DILocation(line: 2044, column: 7, scope: !3061)
!3067 = !DILocation(line: 0, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 2046, column: 8)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 2045, column: 2)
!3070 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 2045, column: 2)
!3071 = !DILocation(line: 2045, column: 2, scope: !3070)
!3072 = !DILocation(line: 0, scope: !3070)
!3073 = !DILocation(line: 2045, column: 16, scope: !3069)
!3074 = !DILocation(line: 2046, column: 9, scope: !3068)
!3075 = !DILocation(line: 2046, column: 28, scope: !3068)
!3076 = !DILocation(line: 2046, column: 8, scope: !3069)
!3077 = !DILocation(line: 2048, column: 16, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 2048, column: 12)
!3079 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 2047, column: 6)
!3080 = !DILocation(line: 2048, column: 12, scope: !3079)
!3081 = !DILocation(line: 2050, column: 5, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 2049, column: 3)
!3083 = !DILocation(line: 2052, column: 3, scope: !3082)
!3084 = !DILocation(line: 2054, column: 36, scope: !3079)
!3085 = !DILocation(line: 2054, column: 41, scope: !3079)
!3086 = !DILocation(line: 2055, column: 10, scope: !3079)
!3087 = !DILocation(line: 2055, column: 33, scope: !3079)
!3088 = !DILocation(line: 2054, column: 8, scope: !3079)
!3089 = !DILocation(line: 2056, column: 12, scope: !3079)
!3090 = !DILocation(line: 2057, column: 6, scope: !3079)
!3091 = !DILocation(line: 2045, column: 37, scope: !3069)
!3092 = !DILocation(line: 2045, column: 2, scope: !3069)
!3093 = distinct !{!3093, !3071, !3094}
!3094 = !DILocation(line: 2057, column: 6, scope: !3070)
!3095 = !DILocation(line: 2044, column: 46, scope: !3065)
!3096 = !DILocation(line: 2044, column: 7, scope: !3065)
!3097 = distinct !{!3097, !3066, !3098}
!3098 = !DILocation(line: 2057, column: 6, scope: !3061)
!3099 = !DILocation(line: 2059, column: 7, scope: !3041)
!3100 = !DILocation(line: 2035, column: 43, scope: !3042)
!3101 = !DILocation(line: 2035, column: 3, scope: !3042)
!3102 = distinct !{!3102, !3054, !3103}
!3103 = !DILocation(line: 2060, column: 5, scope: !3043)
!3104 = !DILocation(line: 2061, column: 1, scope: !3033)
!3105 = distinct !DISubprogram(name: "debug_bitmap", scope: !3, file: !3, line: 2067, type: !3106, scopeLine: 2068, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{null, !743}
!3108 = !{!3109}
!3109 = !DILocalVariable(name: "head", arg: 1, scope: !3105, file: !3, line: 2067, type: !743)
!3110 = !DILocation(line: 0, scope: !3105)
!3111 = !DILocation(line: 2069, column: 22, scope: !3105)
!3112 = !DILocation(line: 2069, column: 3, scope: !3105)
!3113 = !DILocation(line: 2070, column: 1, scope: !3105)
!3114 = distinct !DISubprogram(name: "bitmap_print", scope: !3, file: !3, line: 2076, type: !3115, scopeLine: 2077, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{null, !151, !743, !13, !13}
!3117 = !{!3118, !3119, !3120, !3121, !3122, !3123, !3124}
!3118 = !DILocalVariable(name: "file", arg: 1, scope: !3114, file: !3, line: 2076, type: !151)
!3119 = !DILocalVariable(name: "head", arg: 2, scope: !3114, file: !3, line: 2076, type: !743)
!3120 = !DILocalVariable(name: "prefix", arg: 3, scope: !3114, file: !3, line: 2076, type: !13)
!3121 = !DILocalVariable(name: "suffix", arg: 4, scope: !3114, file: !3, line: 2076, type: !13)
!3122 = !DILocalVariable(name: "comma", scope: !3114, file: !3, line: 2078, type: !13)
!3123 = !DILocalVariable(name: "i", scope: !3114, file: !3, line: 2079, type: !37)
!3124 = !DILocalVariable(name: "bi", scope: !3114, file: !3, line: 2080, type: !3125)
!3125 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !26, line: 218, baseType: !3126)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 203, size: 256, elements: !3127)
!3127 = !{!3128, !3129, !3130, !3131}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !3126, file: !26, line: 206, baseType: !29, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !3126, file: !26, line: 209, baseType: !29, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !3126, file: !26, line: 212, baseType: !37, size: 32, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3126, file: !26, line: 217, baseType: !40, size: 64, offset: 192)
!3132 = !DILocation(line: 0, scope: !3114)
!3133 = !DILocation(line: 2079, column: 3, scope: !3114)
!3134 = !DILocation(line: 2080, column: 3, scope: !3114)
!3135 = !DILocation(line: 2082, column: 3, scope: !3114)
!3136 = !DILocation(line: 2083, column: 3, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 2083, column: 3)
!3138 = !DILocation(line: 2083, column: 3, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 2083, column: 3)
!3140 = !DILocation(line: 2085, column: 37, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 2084, column: 5)
!3142 = !DILocation(line: 2085, column: 7, scope: !3141)
!3143 = distinct !{!3143, !3136, !3144}
!3144 = !DILocation(line: 2087, column: 5, scope: !3137)
!3145 = !DILocation(line: 2088, column: 3, scope: !3114)
!3146 = !DILocation(line: 2089, column: 1, scope: !3114)
!3147 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !26, file: !26, line: 224, type: !3148, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3152)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{null, !3150, !743, !37, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!3152 = !{!3153, !3154, !3155, !3156}
!3153 = !DILocalVariable(name: "bi", arg: 1, scope: !3147, file: !26, line: 224, type: !3150)
!3154 = !DILocalVariable(name: "map", arg: 2, scope: !3147, file: !26, line: 224, type: !743)
!3155 = !DILocalVariable(name: "start_bit", arg: 3, scope: !3147, file: !26, line: 225, type: !37)
!3156 = !DILocalVariable(name: "bit_no", arg: 4, scope: !3147, file: !26, line: 225, type: !3151)
!3157 = !DILocation(line: 0, scope: !3147)
!3158 = !DILocation(line: 227, column: 19, scope: !3147)
!3159 = !DILocation(line: 227, column: 12, scope: !3147)
!3160 = !DILocation(line: 228, column: 7, scope: !3147)
!3161 = !DILocation(line: 228, column: 12, scope: !3147)
!3162 = !DILocation(line: 0, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !26, line: 233, column: 11)
!3164 = distinct !DILexicalBlock(scope: !3147, file: !26, line: 232, column: 5)
!3165 = !DILocation(line: 231, column: 3, scope: !3147)
!3166 = !DILocation(line: 233, column: 12, scope: !3163)
!3167 = !DILocation(line: 233, column: 11, scope: !3164)
!3168 = !DILocation(line: 235, column: 13, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3163, file: !26, line: 234, column: 2)
!3170 = !DILocation(line: 236, column: 4, scope: !3169)
!3171 = !DILocation(line: 239, column: 11, scope: !3164)
!3172 = distinct !{!3172, !3165, !3173}
!3173 = !DILocation(line: 242, column: 5, scope: !3147)
!3174 = !DILocation(line: 245, column: 11, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3147, file: !26, line: 245, column: 7)
!3176 = !DILocation(line: 245, column: 17, scope: !3175)
!3177 = !DILocation(line: 245, column: 22, scope: !3175)
!3178 = !DILocation(line: 245, column: 7, scope: !3147)
!3179 = !DILocation(line: 246, column: 27, scope: !3175)
!3180 = !DILocation(line: 246, column: 32, scope: !3175)
!3181 = !DILocation(line: 246, column: 5, scope: !3175)
!3182 = !DILocation(line: 249, column: 7, scope: !3147)
!3183 = !DILocation(line: 249, column: 15, scope: !3147)
!3184 = !DILocation(line: 250, column: 14, scope: !3147)
!3185 = !DILocation(line: 251, column: 7, scope: !3147)
!3186 = !DILocation(line: 251, column: 12, scope: !3147)
!3187 = !DILocation(line: 257, column: 16, scope: !3147)
!3188 = !DILocation(line: 257, column: 13, scope: !3147)
!3189 = !DILocation(line: 259, column: 11, scope: !3147)
!3190 = !DILocation(line: 260, column: 1, scope: !3147)
!3191 = distinct !DISubprogram(name: "bmp_iter_set", scope: !26, file: !26, line: 393, type: !3192, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!7, !3150, !3151}
!3194 = !{!3195, !3196, !3197}
!3195 = !DILocalVariable(name: "bi", arg: 1, scope: !3191, file: !26, line: 393, type: !3150)
!3196 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3191, file: !26, line: 393, type: !3151)
!3197 = !DILabel(scope: !3198, name: "next_bit", file: !26, line: 398)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !26, line: 397, column: 5)
!3199 = distinct !DILexicalBlock(scope: !3191, file: !26, line: 396, column: 7)
!3200 = !DILocation(line: 0, scope: !3191)
!3201 = !DILocation(line: 396, column: 11, scope: !3199)
!3202 = !DILocation(line: 396, column: 7, scope: !3199)
!3203 = !DILocation(line: 396, column: 7, scope: !3191)
!3204 = !DILocation(line: 419, column: 15, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !26, line: 418, column: 2)
!3206 = distinct !DILexicalBlock(scope: !3191, file: !26, line: 415, column: 5)
!3207 = !DILocation(line: 399, column: 7, scope: !3198)
!3208 = !DILocation(line: 398, column: 5, scope: !3198)
!3209 = !DILocation(line: 399, column: 20, scope: !3198)
!3210 = !DILocation(line: 399, column: 25, scope: !3198)
!3211 = !DILocation(line: 399, column: 14, scope: !3198)
!3212 = !DILocation(line: 401, column: 13, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3198, file: !26, line: 400, column: 2)
!3214 = !DILocation(line: 402, column: 12, scope: !3213)
!3215 = distinct !{!3215, !3207, !3216}
!3216 = !DILocation(line: 403, column: 2, scope: !3198)
!3217 = !DILocation(line: 410, column: 15, scope: !3191)
!3218 = !DILocation(line: 410, column: 42, scope: !3191)
!3219 = !DILocation(line: 411, column: 26, scope: !3191)
!3220 = !DILocation(line: 410, column: 11, scope: !3191)
!3221 = !DILocation(line: 412, column: 7, scope: !3191)
!3222 = !DILocation(line: 412, column: 14, scope: !3191)
!3223 = !DILocation(line: 0, scope: !3206)
!3224 = !DILocation(line: 414, column: 3, scope: !3191)
!3225 = !DILocation(line: 417, column: 7, scope: !3206)
!3226 = !DILocation(line: 417, column: 18, scope: !3206)
!3227 = !DILocation(line: 417, column: 26, scope: !3206)
!3228 = !DILocation(line: 419, column: 13, scope: !3205)
!3229 = !DILocation(line: 420, column: 8, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3205, file: !26, line: 420, column: 8)
!3231 = !DILocation(line: 420, column: 8, scope: !3205)
!3232 = !DILocation(line: 422, column: 12, scope: !3205)
!3233 = !DILocation(line: 423, column: 15, scope: !3205)
!3234 = distinct !{!3234, !3225, !3235}
!3235 = !DILocation(line: 424, column: 2, scope: !3206)
!3236 = !DILocation(line: 427, column: 28, scope: !3206)
!3237 = !DILocation(line: 427, column: 16, scope: !3206)
!3238 = !DILocation(line: 428, column: 12, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3206, file: !26, line: 428, column: 11)
!3240 = !DILocation(line: 428, column: 11, scope: !3206)
!3241 = !DILocation(line: 430, column: 27, scope: !3206)
!3242 = !DILocation(line: 430, column: 32, scope: !3206)
!3243 = !DILocation(line: 430, column: 15, scope: !3206)
!3244 = !DILocation(line: 431, column: 19, scope: !3206)
!3245 = distinct !{!3245, !3224, !3246}
!3246 = !DILocation(line: 432, column: 5, scope: !3191)
!3247 = !DILocation(line: 433, column: 1, scope: !3191)
!3248 = distinct !DISubprogram(name: "bmp_iter_next", scope: !26, file: !26, line: 382, type: !3249, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{null, !3150, !3151}
!3251 = !{!3252, !3253}
!3252 = !DILocalVariable(name: "bi", arg: 1, scope: !3248, file: !26, line: 382, type: !3150)
!3253 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3248, file: !26, line: 382, type: !3151)
!3254 = !DILocation(line: 0, scope: !3248)
!3255 = !DILocation(line: 384, column: 7, scope: !3248)
!3256 = !DILocation(line: 384, column: 12, scope: !3248)
!3257 = !DILocation(line: 385, column: 11, scope: !3248)
!3258 = !DILocation(line: 386, column: 1, scope: !3248)
!3259 = distinct !DISubprogram(name: "dump_bitmap_statistics", scope: !3, file: !3, line: 2128, type: !3260, scopeLine: 2129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{null}
!3262 = !DILocation(line: 2148, column: 1, scope: !3259)
!3263 = distinct !DISubprogram(name: "bitmap_hash", scope: !3, file: !3, line: 2152, type: !3264, scopeLine: 2153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3266)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!89, !743}
!3266 = !{!3267, !3268, !3269, !3270}
!3267 = !DILocalVariable(name: "head", arg: 1, scope: !3263, file: !3, line: 2152, type: !743)
!3268 = !DILocalVariable(name: "ptr", scope: !3263, file: !3, line: 2154, type: !750)
!3269 = !DILocalVariable(name: "hash", scope: !3263, file: !3, line: 2155, type: !40)
!3270 = !DILocalVariable(name: "ix", scope: !3263, file: !3, line: 2156, type: !8)
!3271 = !DILocation(line: 0, scope: !3263)
!3272 = !DILocation(line: 2158, column: 20, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 2158, column: 3)
!3274 = !DILocation(line: 2158, column: 8, scope: !3273)
!3275 = !DILocation(line: 0, scope: !3273)
!3276 = !DILocation(line: 2158, column: 3, scope: !3273)
!3277 = !DILocation(line: 2160, column: 20, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 2159, column: 5)
!3279 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 2158, column: 3)
!3280 = !DILocation(line: 2160, column: 15, scope: !3278)
!3281 = !DILocation(line: 2160, column: 12, scope: !3278)
!3282 = !DILocation(line: 2161, column: 12, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 2161, column: 7)
!3284 = !DILocation(line: 0, scope: !3278)
!3285 = !DILocation(line: 2161, column: 23, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 2161, column: 7)
!3287 = !DILocation(line: 2161, column: 7, scope: !3283)
!3288 = !DILocation(line: 2162, column: 10, scope: !3286)
!3289 = !DILocation(line: 2162, column: 7, scope: !3286)
!3290 = !DILocation(line: 2161, column: 50, scope: !3286)
!3291 = !DILocation(line: 2161, column: 7, scope: !3286)
!3292 = distinct !{!3292, !3287, !3293}
!3293 = !DILocation(line: 2162, column: 22, scope: !3283)
!3294 = !DILocation(line: 2158, column: 43, scope: !3279)
!3295 = !DILocation(line: 2158, column: 3, scope: !3279)
!3296 = distinct !{!3296, !3276, !3297}
!3297 = !DILocation(line: 2163, column: 5, scope: !3273)
!3298 = !DILocation(line: 2164, column: 10, scope: !3263)
!3299 = !DILocation(line: 2164, column: 3, scope: !3263)
!3300 = distinct !DISubprogram(name: "bitmap_elem_to_freelist", scope: !3, file: !3, line: 140, type: !592, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3301)
!3301 = !{!3302, !3303, !3304}
!3302 = !DILocalVariable(name: "head", arg: 1, scope: !3300, file: !3, line: 140, type: !580)
!3303 = !DILocalVariable(name: "elt", arg: 2, scope: !3300, file: !3, line: 140, type: !29)
!3304 = !DILocalVariable(name: "bit_obstack", scope: !3300, file: !3, line: 142, type: !47)
!3305 = !DILocation(line: 0, scope: !3300)
!3306 = !DILocation(line: 142, column: 39, scope: !3300)
!3307 = !DILocation(line: 144, column: 8, scope: !3300)
!3308 = !DILocation(line: 144, column: 13, scope: !3300)
!3309 = !DILocation(line: 145, column: 7, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 145, column: 7)
!3311 = !DILocation(line: 145, column: 7, scope: !3300)
!3312 = !DILocation(line: 147, column: 32, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 146, column: 5)
!3314 = !DILocation(line: 147, column: 12, scope: !3313)
!3315 = !DILocation(line: 147, column: 17, scope: !3313)
!3316 = !DILocation(line: 148, column: 20, scope: !3313)
!3317 = !DILocation(line: 148, column: 29, scope: !3313)
!3318 = !DILocation(line: 149, column: 5, scope: !3313)
!3319 = !DILocation(line: 152, column: 19, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 151, column: 5)
!3321 = !DILocation(line: 152, column: 12, scope: !3320)
!3322 = !DILocation(line: 152, column: 17, scope: !3320)
!3323 = !DILocation(line: 153, column: 23, scope: !3320)
!3324 = !DILocation(line: 155, column: 1, scope: !3300)
