; ModuleID = 'double-int.bc'
source_filename = "double-int.c"
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
%union.tree_node = type { %struct.tree_function_decl }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, %struct.function*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, %union.tree_node*, %union.tree_node*, %union.tree_node*, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, %struct.rtx_def* }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, %union.tree_node*, i40, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_decl* }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, %union.tree_node*, %union.tree_node* }
%struct.tree_common = type { %struct.tree_base, %union.tree_node*, %union.tree_node* }
%struct.tree_base = type { i64 }
%struct.lang_decl = type opaque
%struct.rtx_def = type opaque
%struct.function = type opaque
%struct.double_int = type { i64, i64 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.__mpz_struct = type { i32, i32, i64* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"double-int.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !248 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !261, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !262, metadata !DIExpression()), !dbg !263
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !264
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !265
  ret i32 %call, !dbg !266
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !267 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !271
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !272
  ret i32 %call, !dbg !273
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !274 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !335, metadata !DIExpression()), !dbg !336
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !337
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !337
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !337
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !337
  %cmp = icmp uge i8* %0, %1, !dbg !337
  %conv1 = zext i1 %cmp to i64, !dbg !337
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !337
  %tobool = icmp eq i64 %expval, 0, !dbg !337
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !337

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !337
  br label %cond.end, !dbg !337

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !337
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !337
  %2 = load i8, i8* %0, align 1, !dbg !337
  %conv3 = zext i8 %2 to i32, !dbg !337
  br label %cond.end, !dbg !337

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !337
  ret i32 %cond, !dbg !338
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !339 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !341, metadata !DIExpression()), !dbg !342
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !343
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !343
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !343
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !343
  %cmp = icmp uge i8* %0, %1, !dbg !343
  %conv1 = zext i1 %cmp to i64, !dbg !343
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !343
  %tobool = icmp eq i64 %expval, 0, !dbg !343
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !343

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !343
  br label %cond.end, !dbg !343

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !343
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !343
  %2 = load i8, i8* %0, align 1, !dbg !343
  %conv3 = zext i8 %2 to i32, !dbg !343
  br label %cond.end, !dbg !343

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !343
  ret i32 %cond, !dbg !344
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !345 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !346
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !346
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !346
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !346
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !346
  %cmp = icmp uge i8* %1, %2, !dbg !346
  %conv1 = zext i1 %cmp to i64, !dbg !346
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !346
  %tobool = icmp eq i64 %expval, 0, !dbg !346
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !346

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !346
  br label %cond.end, !dbg !346

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !346
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !346
  %3 = load i8, i8* %1, align 1, !dbg !346
  %conv3 = zext i8 %3 to i32, !dbg !346
  br label %cond.end, !dbg !346

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !346
  ret i32 %cond, !dbg !347
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !348 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !352, metadata !DIExpression()), !dbg !353
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !354
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !355
  ret i32 %call, !dbg !356
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !357 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !361, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !362, metadata !DIExpression()), !dbg !363
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !364
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !364
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !364
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !364
  %cmp = icmp uge i8* %0, %1, !dbg !364
  %conv1 = zext i1 %cmp to i64, !dbg !364
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !364
  %tobool = icmp eq i64 %expval, 0, !dbg !364
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !364

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !364
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !364
  br label %cond.end, !dbg !364

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !364
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !364
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !364
  store i8 %conv2, i8* %0, align 1, !dbg !364
  %conv6 = and i32 %__c, 255, !dbg !364
  br label %cond.end, !dbg !364

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !364
  ret i32 %cond, !dbg !365
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !366 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !368, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !369, metadata !DIExpression()), !dbg !370
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !371
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !371
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !371
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !371
  %cmp = icmp uge i8* %0, %1, !dbg !371
  %conv1 = zext i1 %cmp to i64, !dbg !371
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !371
  %tobool = icmp eq i64 %expval, 0, !dbg !371
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !371

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !371
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !371
  br label %cond.end, !dbg !371

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !371
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !371
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !371
  store i8 %conv2, i8* %0, align 1, !dbg !371
  %conv6 = and i32 %__c, 255, !dbg !371
  br label %cond.end, !dbg !371

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !371
  ret i32 %cond, !dbg !372
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !373 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !377
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !377
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !377
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !377
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !377
  %cmp = icmp uge i8* %1, %2, !dbg !377
  %conv1 = zext i1 %cmp to i64, !dbg !377
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !377
  %tobool = icmp eq i64 %expval, 0, !dbg !377
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !377

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !377
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !377
  br label %cond.end, !dbg !377

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !377
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !377
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !377
  store i8 %conv4, i8* %1, align 1, !dbg !377
  %conv6 = and i32 %__c, 255, !dbg !377
  br label %cond.end, !dbg !377

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !377
  ret i32 %cond, !dbg !378
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !379 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !385, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i64* %__n, metadata !386, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !387, metadata !DIExpression()), !dbg !388
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !389
  ret i64 %call, !dbg !390
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !391 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !393, metadata !DIExpression()), !dbg !394
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !395
  %0 = load i32, i32* %_flags, align 8, !dbg !395
  %and = lshr i32 %0, 4, !dbg !395
  %and.lobit = and i32 %and, 1, !dbg !395
  ret i32 %and.lobit, !dbg !396
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !397 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !399, metadata !DIExpression()), !dbg !400
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !401
  %0 = load i32, i32* %_flags, align 8, !dbg !401
  %and = lshr i32 %0, 5, !dbg !401
  %and.lobit = and i32 %and, 1, !dbg !401
  ret i32 %and.lobit, !dbg !402
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !403 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !406, metadata !DIExpression()), !dbg !407
  %__c.off = add i32 %__c, 128, !dbg !408
  %0 = icmp ult i32 %__c.off, 384, !dbg !408
  br i1 %0, label %cond.true, label %cond.end, !dbg !408

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !409
  %1 = load i32*, i32** %call, align 8, !dbg !410
  %idxprom = sext i32 %__c to i64, !dbg !411
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !411
  %2 = load i32, i32* %arrayidx, align 4, !dbg !411
  br label %cond.end, !dbg !412

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !412
  ret i32 %cond, !dbg !413
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !414 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !416, metadata !DIExpression()), !dbg !417
  %__c.off = add i32 %__c, 128, !dbg !418
  %0 = icmp ult i32 %__c.off, 384, !dbg !418
  br i1 %0, label %cond.true, label %cond.end, !dbg !418

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !419
  %1 = load i32*, i32** %call, align 8, !dbg !420
  %idxprom = sext i32 %__c to i64, !dbg !421
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !421
  %2 = load i32, i32* %arrayidx, align 4, !dbg !421
  br label %cond.end, !dbg !422

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !422
  ret i32 %cond, !dbg !423
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !424 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !429, metadata !DIExpression()), !dbg !430
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !431
  %conv = trunc i64 %call to i32, !dbg !432
  ret i32 %conv, !dbg !433
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !434 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !438, metadata !DIExpression()), !dbg !439
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !440
  ret i64 %call, !dbg !441
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !442 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !447, metadata !DIExpression()), !dbg !448
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !449
  ret i64 %call, !dbg !450
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !451 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !462, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i8* %__base, metadata !463, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !464, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %__size, metadata !465, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !466, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 0, metadata !467, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !468, metadata !DIExpression()), !dbg !472
  br label %while.cond, !dbg !473

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !474
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !472
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !468, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !467, metadata !DIExpression()), !dbg !472
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !475
  br i1 %cmp, label %while.body, label %cleanup, !dbg !473

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !476
  %div = lshr i64 %add, 1, !dbg !478
  call void @llvm.dbg.value(metadata i64 %div, metadata !469, metadata !DIExpression()), !dbg !472
  %mul = mul i64 %div, %__size, !dbg !479
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !480
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !470, metadata !DIExpression()), !dbg !472
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !481
  call void @llvm.dbg.value(metadata i32 %call, metadata !471, metadata !DIExpression()), !dbg !472
  %cmp1 = icmp slt i32 %call, 0, !dbg !482
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !484

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !485
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !487

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !488
  call void @llvm.dbg.value(metadata i64 %add4, metadata !467, metadata !DIExpression()), !dbg !472
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !472
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !472
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !468, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !467, metadata !DIExpression()), !dbg !472
  br label %while.cond, !dbg !473, !llvm.loop !489

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !472
  ret i8* %retval.0, !dbg !491
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !492 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !498, metadata !DIExpression()), !dbg !499
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !500
  ret double %call, !dbg !501
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !502 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !511, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !512, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %base, metadata !513, metadata !DIExpression()), !dbg !514
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !515
  ret i64 %call, !dbg !516
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !517 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !523, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !524, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i32 %base, metadata !525, metadata !DIExpression()), !dbg !526
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !527
  ret i64 %call, !dbg !528
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !529 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !540, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !541, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.value(metadata i32 %base, metadata !542, metadata !DIExpression()), !dbg !543
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !544
  ret i64 %call, !dbg !545
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !546 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !550, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !551, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i32 %base, metadata !552, metadata !DIExpression()), !dbg !553
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !554
  ret i64 %call, !dbg !555
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !556 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !598, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !599, metadata !DIExpression()), !dbg !600
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !601
  ret i32 %call, !dbg !602
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !603 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !605, metadata !DIExpression()), !dbg !607
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !606, metadata !DIExpression()), !dbg !607
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !608
  ret i32 %call, !dbg !609
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !610 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !614, metadata !DIExpression()), !dbg !616
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !615, metadata !DIExpression()), !dbg !616
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !617
  ret i32 %call, !dbg !618
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !619 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !623, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !624, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !625, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !626, metadata !DIExpression()), !dbg !627
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !628
  ret i32 %call, !dbg !629
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !630 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !634, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !635, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !636, metadata !DIExpression()), !dbg !637
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !636, metadata !DIExpression(DW_OP_deref)), !dbg !637
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !638
  ret i32 %call, !dbg !639
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !640 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !644, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i8* %__path, metadata !645, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !646, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !647, metadata !DIExpression()), !dbg !648
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !647, metadata !DIExpression(DW_OP_deref)), !dbg !648
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !649
  ret i32 %call, !dbg !650
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !651 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !675, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !676, metadata !DIExpression()), !dbg !677
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !678
  ret i32 %call, !dbg !679
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !680 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !682, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !683, metadata !DIExpression()), !dbg !684
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !685
  ret i32 %call, !dbg !686
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !687 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !691, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !692, metadata !DIExpression()), !dbg !693
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !694
  ret i32 %call, !dbg !695
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !696 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !700, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !701, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !702, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !703, metadata !DIExpression()), !dbg !704
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !705
  ret i32 %call, !dbg !706
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_mask(i32 %prec) local_unnamed_addr #5 !dbg !707 {
entry:
  call void @llvm.dbg.value(metadata i32 %prec, metadata !717, metadata !DIExpression()), !dbg !720
  %cmp = icmp ugt i32 %prec, 64, !dbg !721
  br i1 %cmp, label %if.then, label %if.else, !dbg !723

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %prec, metadata !717, metadata !DIExpression(DW_OP_constu, 64, DW_OP_minus, DW_OP_stack_value)), !dbg !720
  %sub1 = add i32 %prec, -65, !dbg !724
  %sh_prom = zext i32 %sub1 to i64, !dbg !726
  %shl = shl i64 2, %sh_prom, !dbg !726
  %sub2 = add i64 %shl, -1, !dbg !727
  call void @llvm.dbg.value(metadata i64 %sub2, metadata !718, metadata !DIExpression()), !dbg !720
  br label %if.end, !dbg !728

if.else:                                          ; preds = %entry
  %sub4 = add i32 %prec, -1, !dbg !729
  %sh_prom5 = zext i32 %sub4 to i64, !dbg !731
  %shl6 = shl i64 2, %sh_prom5, !dbg !731
  %sub7 = add i64 %shl6, -1, !dbg !732
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.unpack2 = phi i64 [ 0, %if.else ], [ %sub2, %if.then ], !dbg !733
  %.unpack = phi i64 [ %sub7, %if.else ], [ -1, %if.then ], !dbg !733
  %0 = insertvalue { i64, i64 } undef, i64 %.unpack, 0, !dbg !733
  %1 = insertvalue { i64, i64 } %0, i64 %.unpack2, 1, !dbg !733
  ret { i64, i64 } %1, !dbg !733
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_ext(i64 %cst.coerce0, i64 %cst.coerce1, i32 %prec, i8 zeroext %uns) local_unnamed_addr #5 !dbg !734 {
entry:
  call void @llvm.dbg.value(metadata i32 %prec, metadata !739, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i8 %uns, metadata !740, metadata !DIExpression()), !dbg !741
  %tobool = icmp eq i8 %uns, 0, !dbg !742
  br i1 %tobool, label %if.else, label %if.then, !dbg !744

if.then:                                          ; preds = %entry
  %call = tail call { i64, i64 } @double_int_zext(i64 %cst.coerce0, i64 %cst.coerce1, i32 %prec) #7, !dbg !745
  %0 = extractvalue { i64, i64 } %call, 0, !dbg !745
  %1 = extractvalue { i64, i64 } %call, 1, !dbg !745
  br label %return, !dbg !746

if.else:                                          ; preds = %entry
  %call1 = tail call { i64, i64 } @double_int_sext(i64 %cst.coerce0, i64 %cst.coerce1, i32 %prec) #7, !dbg !747
  %2 = extractvalue { i64, i64 } %call1, 0, !dbg !747
  %3 = extractvalue { i64, i64 } %call1, 1, !dbg !747
  br label %return, !dbg !748

return:                                           ; preds = %if.else, %if.then
  %.unpack2 = phi i64 [ %3, %if.else ], [ %1, %if.then ], !dbg !749
  %.unpack = phi i64 [ %2, %if.else ], [ %0, %if.then ], !dbg !749
  %4 = insertvalue { i64, i64 } undef, i64 %.unpack, 0, !dbg !749
  %5 = insertvalue { i64, i64 } %4, i64 %.unpack2, 1, !dbg !749
  ret { i64, i64 } %5, !dbg !749
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_zext(i64 %cst.coerce0, i64 %cst.coerce1, i32 %prec) local_unnamed_addr #5 !dbg !750 {
entry:
  call void @llvm.dbg.value(metadata i32 %prec, metadata !755, metadata !DIExpression()), !dbg !758
  %call = tail call { i64, i64 } @double_int_mask(i32 %prec) #7, !dbg !759
  %0 = extractvalue { i64, i64 } %call, 0, !dbg !759
  %1 = extractvalue { i64, i64 } %call, 1, !dbg !759
  %and = and i64 %0, %cst.coerce0, !dbg !760
  %and4 = and i64 %1, %cst.coerce1, !dbg !761
  %2 = insertvalue { i64, i64 } undef, i64 %and, 0, !dbg !762
  %3 = insertvalue { i64, i64 } %2, i64 %and4, 1, !dbg !762
  ret { i64, i64 } %3, !dbg !762
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_sext(i64 %cst.coerce0, i64 %cst.coerce1, i32 %prec) local_unnamed_addr #5 !dbg !763 {
entry:
  call void @llvm.dbg.value(metadata i32 %prec, metadata !766, metadata !DIExpression()), !dbg !770
  %call = tail call { i64, i64 } @double_int_mask(i32 %prec) #7, !dbg !771
  %0 = extractvalue { i64, i64 } %call, 0, !dbg !771
  %1 = extractvalue { i64, i64 } %call, 1, !dbg !771
  %cmp = icmp ult i32 %prec, 65, !dbg !772
  %sub = add i32 %prec, -64, !dbg !774
  %snum.0 = select i1 %cmp, i64 %cst.coerce0, i64 %cst.coerce1, !dbg !774
  %prec.addr.0 = select i1 %cmp, i32 %prec, i32 %sub, !dbg !774
  call void @llvm.dbg.value(metadata i32 %prec.addr.0, metadata !766, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i64 %snum.0, metadata !769, metadata !DIExpression()), !dbg !770
  %sub1 = add i32 %prec.addr.0, -1, !dbg !775
  %sh_prom = zext i32 %sub1 to i64, !dbg !777
  %2 = shl i64 1, %sh_prom, !dbg !778
  %3 = and i64 %snum.0, %2, !dbg !778
  %cmp2 = icmp eq i64 %3, 0, !dbg !778
  br i1 %cmp2, label %if.else12, label %if.then3, !dbg !779

if.then3:                                         ; preds = %entry
  %neg = xor i64 %0, -1, !dbg !780
  %or = or i64 %neg, %cst.coerce0, !dbg !782
  %neg9 = xor i64 %1, -1, !dbg !783
  %or10 = or i64 %neg9, %cst.coerce1, !dbg !784
  br label %if.end21, !dbg !785

if.else12:                                        ; preds = %entry
  %and15 = and i64 %0, %cst.coerce0, !dbg !786
  %and19 = and i64 %1, %cst.coerce1, !dbg !788
  br label %if.end21

if.end21:                                         ; preds = %if.else12, %if.then3
  %.unpack2 = phi i64 [ %and19, %if.else12 ], [ %or10, %if.then3 ], !dbg !789
  %.unpack = phi i64 [ %and15, %if.else12 ], [ %or, %if.then3 ], !dbg !789
  %4 = insertvalue { i64, i64 } undef, i64 %.unpack, 0, !dbg !789
  %5 = insertvalue { i64, i64 } %4, i64 %.unpack2, 1, !dbg !789
  ret { i64, i64 } %5, !dbg !789
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @tree_to_double_int(%union.tree_node* %cst) local_unnamed_addr #5 !dbg !790 {
entry:
  %retval = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %cst, metadata !1425, metadata !DIExpression()), !dbg !1426
  %int_cst1 = getelementptr inbounds %union.tree_node, %union.tree_node* %cst, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1427
  %0 = bitcast %struct.double_int* %retval to i8*, !dbg !1427
  %1 = bitcast i32* %int_cst1 to i8*, !dbg !1427
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 16, i1 false), !dbg !1427
  %.elt = getelementptr inbounds %struct.double_int, %struct.double_int* %retval, i64 0, i32 0, !dbg !1428
  %.unpack = load i64, i64* %.elt, align 8, !dbg !1428
  %2 = insertvalue { i64, i64 } undef, i64 %.unpack, 0, !dbg !1428
  %3 = getelementptr inbounds %struct.double_int, %struct.double_int* %retval, i64 0, i32 1, !dbg !1428
  %.unpack2 = load i64, i64* %3, align 8, !dbg !1428
  %4 = insertvalue { i64, i64 } %2, i64 %.unpack2, 1, !dbg !1428
  ret { i64, i64 } %4, !dbg !1428
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @double_int_fits_in_uhwi_p(i64 %cst.coerce0, i64 %cst.coerce1) local_unnamed_addr #5 !dbg !1429 {
entry:
  %cmp = icmp eq i64 %cst.coerce1, 0, !dbg !1434
  %conv1 = zext i1 %cmp to i8, !dbg !1435
  ret i8 %conv1, !dbg !1436
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @double_int_fits_in_shwi_p(i64 %cst.coerce0, i64 %cst.coerce1) local_unnamed_addr #5 !dbg !1437 {
entry:
  %cmp = icmp eq i64 %cst.coerce1, 0, !dbg !1440
  br i1 %cmp, label %if.then, label %if.else, !dbg !1442

if.then:                                          ; preds = %entry
  %.lobit1 = lshr i64 %cst.coerce0, 63, !dbg !1443
  %0 = trunc i64 %.lobit1 to i8, !dbg !1443
  %.not = xor i8 %0, 1, !dbg !1443
  br label %return, !dbg !1444

if.else:                                          ; preds = %entry
  %cmp4 = icmp eq i64 %cst.coerce1, -1, !dbg !1445
  br i1 %cmp4, label %if.then6, label %return, !dbg !1447

if.then6:                                         ; preds = %if.else
  %.lobit = lshr i64 %cst.coerce0, 63, !dbg !1448
  %1 = trunc i64 %.lobit to i8, !dbg !1448
  br label %return, !dbg !1449

return:                                           ; preds = %if.else, %if.then6, %if.then
  %retval.0 = phi i8 [ %.not, %if.then ], [ %1, %if.then6 ], [ 0, %if.else ], !dbg !1450
  ret i8 %retval.0, !dbg !1451
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @double_int_fits_in_hwi_p(i64 %cst.coerce0, i64 %cst.coerce1, i8 zeroext %uns) local_unnamed_addr #5 !dbg !1452 {
entry:
  call void @llvm.dbg.value(metadata i8 %uns, metadata !1457, metadata !DIExpression()), !dbg !1458
  %tobool = icmp eq i8 %uns, 0, !dbg !1459
  br i1 %tobool, label %if.else, label %if.then, !dbg !1461

if.then:                                          ; preds = %entry
  %call = tail call zeroext i8 @double_int_fits_in_uhwi_p(i64 %cst.coerce0, i64 %cst.coerce1) #7, !dbg !1462
  br label %return, !dbg !1463

if.else:                                          ; preds = %entry
  %call1 = tail call zeroext i8 @double_int_fits_in_shwi_p(i64 %cst.coerce0, i64 %cst.coerce1) #7, !dbg !1464
  br label %return, !dbg !1465

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i8 [ %call, %if.then ], [ %call1, %if.else ], !dbg !1466
  ret i8 %retval.0, !dbg !1467
}

; Function Attrs: nounwind uwtable
define dso_local i64 @double_int_to_shwi(i64 %cst.coerce0, i64 %cst.coerce1) local_unnamed_addr #5 !dbg !1468 {
entry:
  ret i64 %cst.coerce0, !dbg !1473
}

; Function Attrs: nounwind uwtable
define dso_local i64 @double_int_to_uhwi(i64 %cst.coerce0, i64 %cst.coerce1) local_unnamed_addr #5 !dbg !1474 {
entry:
  ret i64 %cst.coerce0, !dbg !1479
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_mul(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1) local_unnamed_addr #5 !dbg !1480 {
entry:
  %retval = alloca %struct.double_int, align 8
  %low3 = getelementptr inbounds %struct.double_int, %struct.double_int* %retval, i64 0, i32 0, !dbg !1487
  %high4 = getelementptr inbounds %struct.double_int, %struct.double_int* %retval, i64 0, i32 1, !dbg !1487
  %call = call i32 @mul_double_with_sign(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i64* nonnull %low3, i64* nonnull %high4, i8 zeroext 0) #6, !dbg !1487
  %.unpack = load i64, i64* %low3, align 8, !dbg !1488
  %0 = insertvalue { i64, i64 } undef, i64 %.unpack, 0, !dbg !1488
  %.unpack2 = load i64, i64* %high4, align 8, !dbg !1488
  %1 = insertvalue { i64, i64 } %0, i64 %.unpack2, 1, !dbg !1488
  ret { i64, i64 } %1, !dbg !1488
}

declare dso_local i32 @mul_double_with_sign(i64, i64, i64, i64, i64*, i64*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_add(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1) local_unnamed_addr #5 !dbg !1489 {
entry:
  %retval = alloca %struct.double_int, align 8
  %low3 = getelementptr inbounds %struct.double_int, %struct.double_int* %retval, i64 0, i32 0, !dbg !1494
  %high4 = getelementptr inbounds %struct.double_int, %struct.double_int* %retval, i64 0, i32 1, !dbg !1494
  %call = call i32 @add_double_with_sign(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i64* nonnull %low3, i64* nonnull %high4, i8 zeroext 0) #6, !dbg !1494
  %.unpack = load i64, i64* %low3, align 8, !dbg !1495
  %0 = insertvalue { i64, i64 } undef, i64 %.unpack, 0, !dbg !1495
  %.unpack2 = load i64, i64* %high4, align 8, !dbg !1495
  %1 = insertvalue { i64, i64 } %0, i64 %.unpack2, 1, !dbg !1495
  ret { i64, i64 } %1, !dbg !1495
}

declare dso_local i32 @add_double_with_sign(i64, i64, i64, i64, i64*, i64*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_neg(i64 %a.coerce0, i64 %a.coerce1) local_unnamed_addr #5 !dbg !1496 {
entry:
  %retval = alloca %struct.double_int, align 8
  %low1 = getelementptr inbounds %struct.double_int, %struct.double_int* %retval, i64 0, i32 0, !dbg !1502
  %high2 = getelementptr inbounds %struct.double_int, %struct.double_int* %retval, i64 0, i32 1, !dbg !1503
  %call = call i32 @neg_double(i64 %a.coerce0, i64 %a.coerce1, i64* nonnull %low1, i64* nonnull %high2) #6, !dbg !1504
  %.unpack = load i64, i64* %low1, align 8, !dbg !1505
  %0 = insertvalue { i64, i64 } undef, i64 %.unpack, 0, !dbg !1505
  %.unpack2 = load i64, i64* %high2, align 8, !dbg !1505
  %1 = insertvalue { i64, i64 } %0, i64 %.unpack2, 1, !dbg !1505
  ret { i64, i64 } %1, !dbg !1505
}

declare dso_local i32 @neg_double(i64, i64, i64*, i64*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_divmod(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i8 zeroext %uns, i32 %code, %struct.double_int* %mod) local_unnamed_addr #5 !dbg !1506 {
entry:
  %retval = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata i8 %uns, metadata !1513, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i32 %code, metadata !1514, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata %struct.double_int* %mod, metadata !1515, metadata !DIExpression()), !dbg !1517
  %conv = zext i8 %uns to i32, !dbg !1518
  %low3 = getelementptr inbounds %struct.double_int, %struct.double_int* %retval, i64 0, i32 0, !dbg !1519
  %high4 = getelementptr inbounds %struct.double_int, %struct.double_int* %retval, i64 0, i32 1, !dbg !1520
  %low5 = getelementptr inbounds %struct.double_int, %struct.double_int* %mod, i64 0, i32 0, !dbg !1521
  %high6 = getelementptr inbounds %struct.double_int, %struct.double_int* %mod, i64 0, i32 1, !dbg !1522
  %call = call i32 @div_and_round_double(i32 %code, i32 %conv, i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i64* nonnull %low3, i64* nonnull %high4, i64* %low5, i64* nonnull %high6) #6, !dbg !1523
  %.unpack = load i64, i64* %low3, align 8, !dbg !1524
  %0 = insertvalue { i64, i64 } undef, i64 %.unpack, 0, !dbg !1524
  %.unpack2 = load i64, i64* %high4, align 8, !dbg !1524
  %1 = insertvalue { i64, i64 } %0, i64 %.unpack2, 1, !dbg !1524
  ret { i64, i64 } %1, !dbg !1524
}

declare dso_local i32 @div_and_round_double(i32, i32, i64, i64, i64, i64, i64*, i64*, i64*, i64*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_sdivmod(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i32 %code, %struct.double_int* %mod) local_unnamed_addr #5 !dbg !1525 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1531, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata %struct.double_int* %mod, metadata !1532, metadata !DIExpression()), !dbg !1533
  %call = tail call { i64, i64 } @double_int_divmod(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i8 zeroext 0, i32 %code, %struct.double_int* %mod) #7, !dbg !1534
  ret { i64, i64 } %call, !dbg !1535
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_udivmod(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i32 %code, %struct.double_int* %mod) local_unnamed_addr #5 !dbg !1536 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1540, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata %struct.double_int* %mod, metadata !1541, metadata !DIExpression()), !dbg !1542
  %call = tail call { i64, i64 } @double_int_divmod(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i8 zeroext 1, i32 %code, %struct.double_int* %mod) #7, !dbg !1543
  ret { i64, i64 } %call, !dbg !1544
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_div(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i8 zeroext %uns, i32 %code) local_unnamed_addr #5 !dbg !1545 {
entry:
  %mod = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata i8 %uns, metadata !1551, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i32 %code, metadata !1552, metadata !DIExpression()), !dbg !1554
  %0 = bitcast %struct.double_int* %mod to i8*, !dbg !1555
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !1555
  call void @llvm.dbg.value(metadata %struct.double_int* %mod, metadata !1553, metadata !DIExpression(DW_OP_deref)), !dbg !1554
  %call = call { i64, i64 } @double_int_divmod(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i8 zeroext %uns, i32 %code, %struct.double_int* nonnull %mod) #7, !dbg !1556
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !1557
  ret { i64, i64 } %call, !dbg !1557
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_sdiv(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i32 %code) local_unnamed_addr #5 !dbg !1558 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1564, metadata !DIExpression()), !dbg !1565
  %call = tail call { i64, i64 } @double_int_div(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i8 zeroext 0, i32 %code) #7, !dbg !1566
  ret { i64, i64 } %call, !dbg !1567
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_udiv(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i32 %code) local_unnamed_addr #5 !dbg !1568 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1572, metadata !DIExpression()), !dbg !1573
  %call = tail call { i64, i64 } @double_int_div(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i8 zeroext 1, i32 %code) #7, !dbg !1574
  ret { i64, i64 } %call, !dbg !1575
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_mod(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i8 zeroext %uns, i32 %code) local_unnamed_addr #5 !dbg !1576 {
entry:
  %retval = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata i8 %uns, metadata !1580, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %code, metadata !1581, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata %struct.double_int* %retval, metadata !1582, metadata !DIExpression(DW_OP_deref)), !dbg !1583
  %call = call { i64, i64 } @double_int_divmod(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i8 zeroext %uns, i32 %code, %struct.double_int* nonnull %retval) #7, !dbg !1584
  %.elt = getelementptr inbounds %struct.double_int, %struct.double_int* %retval, i64 0, i32 0, !dbg !1585
  %.unpack = load i64, i64* %.elt, align 8, !dbg !1585
  %0 = insertvalue { i64, i64 } undef, i64 %.unpack, 0, !dbg !1585
  %1 = getelementptr inbounds %struct.double_int, %struct.double_int* %retval, i64 0, i32 1, !dbg !1585
  %.unpack2 = load i64, i64* %1, align 8, !dbg !1585
  %2 = insertvalue { i64, i64 } %0, i64 %.unpack2, 1, !dbg !1585
  ret { i64, i64 } %2, !dbg !1585
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_smod(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i32 %code) local_unnamed_addr #5 !dbg !1586 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1590, metadata !DIExpression()), !dbg !1591
  %call = tail call { i64, i64 } @double_int_mod(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i8 zeroext 0, i32 %code) #7, !dbg !1592
  ret { i64, i64 } %call, !dbg !1593
}

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @double_int_umod(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i32 %code) local_unnamed_addr #5 !dbg !1594 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1598, metadata !DIExpression()), !dbg !1599
  %call = tail call { i64, i64 } @double_int_mod(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i8 zeroext 1, i32 %code) #7, !dbg !1600
  ret { i64, i64 } %call, !dbg !1601
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @double_int_to_tree(%union.tree_node* %type, i64 %cst.coerce0, i64 %cst.coerce1) local_unnamed_addr #5 !dbg !1602 {
entry:
  %cst = alloca %struct.double_int, align 8
  %tmp = alloca %struct.double_int, align 8
  %0 = getelementptr inbounds %struct.double_int, %struct.double_int* %cst, i64 0, i32 0
  %1 = getelementptr inbounds %struct.double_int, %struct.double_int* %cst, i64 0, i32 1
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !1606, metadata !DIExpression()), !dbg !1608
  %2 = bitcast %struct.double_int* %tmp to i8*, !dbg !1609
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !1609
  %type1 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !1610
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !1610
  %bf.load = load i32, i32* %precision, align 4, !dbg !1610
  %bf.clear = and i32 %bf.load, 1023, !dbg !1610
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1611
  %bf.load2 = load i64, i64* %3, align 8, !dbg !1611
  %bf.lshr = lshr i64 %bf.load2, 21, !dbg !1611
  %4 = trunc i64 %bf.lshr to i8, !dbg !1611
  %bf.cast = and i8 %4, 1, !dbg !1611
  %call = tail call { i64, i64 } @double_int_ext(i64 %cst.coerce0, i64 %cst.coerce1, i32 %bf.clear, i8 zeroext %bf.cast) #7, !dbg !1609
  %5 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !1609
  %6 = extractvalue { i64, i64 } %call, 0, !dbg !1609
  store i64 %6, i64* %5, align 8, !dbg !1609
  %7 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !1609
  %8 = extractvalue { i64, i64 } %call, 1, !dbg !1609
  store i64 %8, i64* %7, align 8, !dbg !1609
  %9 = bitcast %struct.double_int* %cst to i8*, !dbg !1609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !1609
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !1609
  %10 = load i64, i64* %0, align 8, !dbg !1612
  %11 = load i64, i64* %1, align 8, !dbg !1613
  %call4 = tail call %union.tree_node* @build_int_cst_wide(%union.tree_node* %type, i64 %10, i64 %11) #6, !dbg !1614
  ret %union.tree_node* %call4, !dbg !1615
}

declare dso_local %union.tree_node* @build_int_cst_wide(%union.tree_node*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @double_int_fits_to_tree_p(%union.tree_node* %type, i64 %cst.coerce0, i64 %cst.coerce1) local_unnamed_addr #5 !dbg !1616 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !1620, metadata !DIExpression()), !dbg !1623
  %type1 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !1624
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i64 0, i32 6, !dbg !1624
  %bf.load = load i32, i32* %precision, align 4, !dbg !1624
  %bf.clear = and i32 %bf.load, 1023, !dbg !1624
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1625
  %bf.load2 = load i64, i64* %0, align 8, !dbg !1625
  %bf.lshr = lshr i64 %bf.load2, 21, !dbg !1625
  %1 = trunc i64 %bf.lshr to i8, !dbg !1625
  %bf.cast = and i8 %1, 1, !dbg !1625
  %call = tail call { i64, i64 } @double_int_ext(i64 %cst.coerce0, i64 %cst.coerce1, i32 %bf.clear, i8 zeroext %bf.cast) #7, !dbg !1626
  %2 = extractvalue { i64, i64 } %call, 0, !dbg !1626
  %3 = extractvalue { i64, i64 } %call, 1, !dbg !1626
  %call4 = tail call fastcc zeroext i8 @double_int_equal_p(i64 %cst.coerce0, i64 %cst.coerce1, i64 %2, i64 %3) #7, !dbg !1627
  ret i8 %call4, !dbg !1628
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @double_int_equal_p(i64 %cst1.coerce0, i64 %cst1.coerce1, i64 %cst2.coerce0, i64 %cst2.coerce1) unnamed_addr #0 !dbg !1629 {
entry:
  %cmp = icmp eq i64 %cst1.coerce0, %cst2.coerce0, !dbg !1635
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1636

land.rhs:                                         ; preds = %entry
  %cmp3 = icmp eq i64 %cst1.coerce1, %cst2.coerce1, !dbg !1637
  %phitmp = zext i1 %cmp3 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !1638
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @double_int_negative_p(i64 %cst.coerce0, i64 %cst.coerce1) local_unnamed_addr #5 !dbg !1639 {
entry:
  %cst.coerce1.lobit = lshr i64 %cst.coerce1, 63, !dbg !1642
  %0 = trunc i64 %cst.coerce1.lobit to i8, !dbg !1642
  ret i8 %0, !dbg !1643
}

; Function Attrs: nounwind uwtable
define dso_local i32 @double_int_cmp(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1, i8 zeroext %uns) local_unnamed_addr #5 !dbg !1644 {
entry:
  call void @llvm.dbg.value(metadata i8 %uns, metadata !1650, metadata !DIExpression()), !dbg !1651
  %tobool = icmp eq i8 %uns, 0, !dbg !1652
  br i1 %tobool, label %if.else, label %if.then, !dbg !1654

if.then:                                          ; preds = %entry
  %call = tail call i32 @double_int_ucmp(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1) #7, !dbg !1655
  br label %return, !dbg !1656

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @double_int_scmp(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1) #7, !dbg !1657
  br label %return, !dbg !1658

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ], !dbg !1659
  ret i32 %retval.0, !dbg !1660
}

; Function Attrs: nounwind uwtable
define dso_local i32 @double_int_ucmp(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1) local_unnamed_addr #5 !dbg !1661 {
entry:
  %cmp = icmp ult i64 %a.coerce1, %b.coerce1, !dbg !1667
  br i1 %cmp, label %return, label %if.end, !dbg !1669

if.end:                                           ; preds = %entry
  %cmp4 = icmp ugt i64 %a.coerce1, %b.coerce1, !dbg !1670
  br i1 %cmp4, label %return, label %if.end6, !dbg !1672

if.end6:                                          ; preds = %if.end
  %cmp8 = icmp ult i64 %a.coerce0, %b.coerce0, !dbg !1673
  br i1 %cmp8, label %return, label %if.end10, !dbg !1675

if.end10:                                         ; preds = %if.end6
  %cmp13 = icmp ugt i64 %a.coerce0, %b.coerce0, !dbg !1676
  %. = zext i1 %cmp13 to i32, !dbg !1678
  br label %return, !dbg !1678

return:                                           ; preds = %if.end10, %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 1, %if.end ], [ -1, %if.end6 ], [ %., %if.end10 ], !dbg !1678
  ret i32 %retval.0, !dbg !1679
}

; Function Attrs: nounwind uwtable
define dso_local i32 @double_int_scmp(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1) local_unnamed_addr #5 !dbg !1680 {
entry:
  %cmp = icmp slt i64 %a.coerce1, %b.coerce1, !dbg !1684
  br i1 %cmp, label %return, label %if.end, !dbg !1686

if.end:                                           ; preds = %entry
  %cmp4 = icmp sgt i64 %a.coerce1, %b.coerce1, !dbg !1687
  br i1 %cmp4, label %return, label %if.end6, !dbg !1689

if.end6:                                          ; preds = %if.end
  %cmp8 = icmp ult i64 %a.coerce0, %b.coerce0, !dbg !1690
  br i1 %cmp8, label %return, label %if.end10, !dbg !1692

if.end10:                                         ; preds = %if.end6
  %cmp13 = icmp ugt i64 %a.coerce0, %b.coerce0, !dbg !1693
  %. = zext i1 %cmp13 to i32, !dbg !1695
  br label %return, !dbg !1695

return:                                           ; preds = %if.end10, %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 1, %if.end ], [ -1, %if.end6 ], [ %., %if.end10 ], !dbg !1695
  ret i32 %retval.0, !dbg !1696
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_double_int(%struct._IO_FILE* %file, i64 %cst.coerce0, i64 %cst.coerce1, i8 zeroext %uns) local_unnamed_addr #5 !dbg !1697 {
entry:
  %cst = alloca %struct.double_int, align 8
  %digits = alloca [100 x i32], align 16
  %tmp = alloca %struct.double_int, align 8
  %0 = getelementptr inbounds %struct.double_int, %struct.double_int* %cst, i64 0, i32 0
  store i64 %cst.coerce0, i64* %0, align 8
  %1 = getelementptr inbounds %struct.double_int, %struct.double_int* %cst, i64 0, i32 1
  store i64 %cst.coerce1, i64* %1, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !1701, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 %uns, metadata !1703, metadata !DIExpression()), !dbg !1710
  %2 = bitcast [100 x i32]* %digits to i8*, !dbg !1711
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %2) #8, !dbg !1711
  call void @llvm.dbg.declare(metadata [100 x i32]* %digits, metadata !1704, metadata !DIExpression()), !dbg !1712
  %call = tail call fastcc zeroext i8 @double_int_zero_p(i64 %cst.coerce0, i64 %cst.coerce1) #7, !dbg !1713
  %tobool = icmp eq i8 %call, 0, !dbg !1713
  br i1 %tobool, label %if.end, label %if.then, !dbg !1715

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6, !dbg !1716
  br label %cleanup, !dbg !1718

if.end:                                           ; preds = %entry
  %tobool2 = icmp eq i8 %uns, 0, !dbg !1719
  br i1 %tobool2, label %land.lhs.true, label %if.end8, !dbg !1721

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call zeroext i8 @double_int_negative_p(i64 %cst.coerce0, i64 %cst.coerce1) #7, !dbg !1722
  %tobool4 = icmp eq i8 %call3, 0, !dbg !1722
  br i1 %tobool4, label %if.end8, label %if.then5, !dbg !1723

if.then5:                                         ; preds = %land.lhs.true
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1724
  %3 = bitcast %struct.double_int* %tmp to i8*, !dbg !1726
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8, !dbg !1726
  %call7 = tail call { i64, i64 } @double_int_neg(i64 %cst.coerce0, i64 %cst.coerce1) #7, !dbg !1726
  %4 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !1726
  %5 = extractvalue { i64, i64 } %call7, 0, !dbg !1726
  store i64 %5, i64* %4, align 8, !dbg !1726
  %6 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !1726
  %7 = extractvalue { i64, i64 } %call7, 1, !dbg !1726
  store i64 %7, i64* %6, align 8, !dbg !1726
  %8 = bitcast %struct.double_int* %cst to i8*, !dbg !1726
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !1726
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8, !dbg !1726
  br label %if.end8, !dbg !1727

if.end8:                                          ; preds = %land.lhs.true, %if.end, %if.then5
  call void @llvm.dbg.value(metadata i32 0, metadata !1708, metadata !DIExpression()), !dbg !1710
  br label %for.cond, !dbg !1728

for.cond:                                         ; preds = %for.body, %if.end8
  %n.0 = phi i32 [ 0, %if.end8 ], [ %inc, %for.body ], !dbg !1730
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !1708, metadata !DIExpression()), !dbg !1710
  %9 = load i64, i64* %0, align 8, !dbg !1731
  %10 = load i64, i64* %1, align 8, !dbg !1731
  %call9 = call fastcc zeroext i8 @double_int_zero_p(i64 %9, i64 %10) #7, !dbg !1731
  %tobool10 = icmp eq i8 %call9, 0, !dbg !1733
  br i1 %tobool10, label %for.body, label %for.end, !dbg !1734

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.double_int* %cst, metadata !1702, metadata !DIExpression(DW_OP_deref)), !dbg !1710
  %call11 = call fastcc i32 @double_int_split_digit(%struct.double_int* nonnull %cst, i32 10) #7, !dbg !1735
  %idxprom = zext i32 %n.0 to i64, !dbg !1736
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %digits, i64 0, i64 %idxprom, !dbg !1736
  store i32 %call11, i32* %arrayidx, align 4, !dbg !1737
  %inc = add i32 %n.0, 1, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1708, metadata !DIExpression()), !dbg !1710
  br label %for.cond, !dbg !1739, !llvm.loop !1740

for.end:                                          ; preds = %for.cond
  %n.0.lcssa = phi i32 [ %n.0, %for.cond ], !dbg !1730
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !1708, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !1708, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !1708, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !1709, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1710
  br label %for.cond12, !dbg !1742

for.cond12:                                       ; preds = %for.body14, %for.end
  %i.0.in = phi i32 [ %n.0.lcssa, %for.end ], [ %i.0, %for.body14 ]
  %i.0 = add i32 %i.0.in, -1, !dbg !1744
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1709, metadata !DIExpression()), !dbg !1710
  %cmp = icmp sgt i32 %i.0, -1, !dbg !1745
  br i1 %cmp, label %for.body14, label %cleanup.loopexit, !dbg !1747

for.body14:                                       ; preds = %for.cond12
  %idxprom15 = sext i32 %i.0 to i64, !dbg !1748
  %arrayidx16 = getelementptr inbounds [100 x i32], [100 x i32]* %digits, i64 0, i64 %idxprom15, !dbg !1748
  %11 = load i32, i32* %arrayidx16, align 4, !dbg !1748
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %11) #6, !dbg !1749
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1709, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1710
  br label %for.cond12, !dbg !1750, !llvm.loop !1751

cleanup.loopexit:                                 ; preds = %for.cond12
  br label %cleanup, !dbg !1753

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %2) #8, !dbg !1753
  ret void, !dbg !1753
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @double_int_zero_p(i64 %cst.coerce0, i64 %cst.coerce1) unnamed_addr #0 !dbg !1754 {
entry:
  %0 = or i64 %cst.coerce0, %cst.coerce1, !dbg !1757
  %1 = icmp eq i64 %0, 0, !dbg !1757
  %conv = zext i1 %1 to i8, !dbg !1758
  ret i8 %conv, !dbg !1759
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @double_int_split_digit(%struct.double_int* %cst, i32 %base) unnamed_addr #5 !dbg !1760 {
entry:
  %resl = alloca i64, align 8
  %reml = alloca i64, align 8
  %resh = alloca i64, align 8
  %remh = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.double_int* %cst, metadata !1764, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i32 10, metadata !1765, metadata !DIExpression()), !dbg !1770
  %0 = bitcast i64* %resl to i8*, !dbg !1771
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !1771
  %1 = bitcast i64* %reml to i8*, !dbg !1771
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !1771
  %2 = bitcast i64* %resh to i8*, !dbg !1772
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !1772
  %3 = bitcast i64* %remh to i8*, !dbg !1772
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !1772
  %low = getelementptr inbounds %struct.double_int, %struct.double_int* %cst, i64 0, i32 0, !dbg !1773
  %4 = load i64, i64* %low, align 8, !dbg !1773
  %high = getelementptr inbounds %struct.double_int, %struct.double_int* %cst, i64 0, i32 1, !dbg !1774
  %5 = load i64, i64* %high, align 8, !dbg !1774
  call void @llvm.dbg.value(metadata i64* %resl, metadata !1766, metadata !DIExpression(DW_OP_deref)), !dbg !1770
  call void @llvm.dbg.value(metadata i64* %reml, metadata !1767, metadata !DIExpression(DW_OP_deref)), !dbg !1770
  call void @llvm.dbg.value(metadata i64* %resh, metadata !1768, metadata !DIExpression(DW_OP_deref)), !dbg !1770
  call void @llvm.dbg.value(metadata i64* %remh, metadata !1769, metadata !DIExpression(DW_OP_deref)), !dbg !1770
  %call = call i32 @div_and_round_double(i32 69, i32 1, i64 %4, i64 %5, i64 10, i64 0, i64* nonnull %resl, i64* nonnull %resh, i64* nonnull %reml, i64* nonnull %remh) #6, !dbg !1775
  %6 = load i64, i64* %resh, align 8, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %6, metadata !1768, metadata !DIExpression()), !dbg !1770
  store i64 %6, i64* %high, align 8, !dbg !1777
  %7 = load i64, i64* %resl, align 8, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %7, metadata !1766, metadata !DIExpression()), !dbg !1770
  store i64 %7, i64* %low, align 8, !dbg !1779
  %8 = load i64, i64* %reml, align 8, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %8, metadata !1767, metadata !DIExpression()), !dbg !1770
  %conv3 = trunc i64 %8 to i32, !dbg !1780
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !1781
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !1781
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !1781
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !1781
  ret i32 %conv3, !dbg !1782
}

; Function Attrs: nounwind uwtable
define dso_local void @mpz_set_double_int(%struct.__mpz_struct* %result, i64 %val.coerce0, i64 %val.coerce1, i8 zeroext %uns) local_unnamed_addr #5 !dbg !1783 {
entry:
  %val = alloca %struct.double_int, align 8
  %vp = alloca [2 x i64], align 16
  %tmp = alloca %struct.double_int, align 8
  %0 = getelementptr inbounds %struct.double_int, %struct.double_int* %val, i64 0, i32 0
  store i64 %val.coerce0, i64* %0, align 8
  %1 = getelementptr inbounds %struct.double_int, %struct.double_int* %val, i64 0, i32 1
  store i64 %val.coerce1, i64* %1, align 8
  call void @llvm.dbg.value(metadata %struct.__mpz_struct* %result, metadata !1797, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 %uns, metadata !1799, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1805
  %2 = bitcast [2 x i64]* %vp to i8*, !dbg !1806
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !1806
  call void @llvm.dbg.declare(metadata [2 x i64]* %vp, metadata !1801, metadata !DIExpression()), !dbg !1807
  %tobool = icmp eq i8 %uns, 0, !dbg !1808
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1810

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i8 @double_int_negative_p(i64 %val.coerce0, i64 %val.coerce1) #7, !dbg !1811
  %tobool1 = icmp eq i8 %call, 0, !dbg !1811
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1812

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i8 1, metadata !1800, metadata !DIExpression()), !dbg !1805
  %3 = bitcast %struct.double_int* %tmp to i8*, !dbg !1813
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8, !dbg !1813
  %call2 = tail call { i64, i64 } @double_int_neg(i64 %val.coerce0, i64 %val.coerce1) #7, !dbg !1813
  %4 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !1813
  %5 = extractvalue { i64, i64 } %call2, 0, !dbg !1813
  store i64 %5, i64* %4, align 8, !dbg !1813
  %6 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !1813
  %7 = extractvalue { i64, i64 } %call2, 1, !dbg !1813
  store i64 %7, i64* %6, align 8, !dbg !1813
  %8 = bitcast %struct.double_int* %val to i8*, !dbg !1813
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !1813
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8, !dbg !1813
  %.pre = load i64, i64* %0, align 8, !dbg !1815
  %.pre1 = load i64, i64* %1, align 8, !dbg !1816
  br label %if.end, !dbg !1817

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %9 = phi i64 [ %val.coerce1, %entry ], [ %.pre1, %if.then ], [ %val.coerce1, %land.lhs.true ], !dbg !1816
  %10 = phi i64 [ %val.coerce0, %entry ], [ %.pre, %if.then ], [ %val.coerce0, %land.lhs.true ], !dbg !1815
  %negate.0 = phi i1 [ false, %entry ], [ true, %if.then ], [ false, %land.lhs.true ]
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %vp, i64 0, i64 0, !dbg !1818
  store i64 %10, i64* %arrayidx, align 16, !dbg !1819
  %arrayidx3 = getelementptr inbounds [2 x i64], [2 x i64]* %vp, i64 0, i64 1, !dbg !1820
  store i64 %9, i64* %arrayidx3, align 8, !dbg !1821
  call void @mpz_import(%struct.__mpz_struct* %result, i64 2, i32 -1, i64 8, i32 0, i64 0, i8* nonnull %2) #6, !dbg !1822
  br i1 %negate.0, label %if.then5, label %if.end6, !dbg !1823

if.then5:                                         ; preds = %if.end
  call void @mpz_neg(%struct.__mpz_struct* %result, %struct.__mpz_struct* %result) #6, !dbg !1824
  br label %if.end6, !dbg !1824

if.end6:                                          ; preds = %if.then5, %if.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !1826
  ret void, !dbg !1826
}

declare dso_local void @mpz_import(%struct.__mpz_struct*, i64, i32, i64, i32, i64, i8*) local_unnamed_addr #2

declare dso_local void @mpz_neg(%struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local { i64, i64 } @mpz_get_double_int(%union.tree_node* %type, %struct.__mpz_struct* %val, i8 zeroext %wrap) local_unnamed_addr #5 !dbg !1827 {
entry:
  %retval = alloca %struct.double_int, align 8
  %count = alloca i64, align 8
  %min = alloca [1 x %struct.__mpz_struct], align 16
  %max = alloca [1 x %struct.__mpz_struct], align 16
  %tmp = alloca %struct.double_int, align 8
  %tmp36 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !1831, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata %struct.__mpz_struct* %val, metadata !1832, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8 %wrap, metadata !1833, metadata !DIExpression()), !dbg !1844
  %0 = bitcast i64* %count to i8*, !dbg !1845
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !1845
  %tobool = icmp eq i8 %wrap, 0, !dbg !1846
  br i1 %tobool, label %if.then, label %if.end15, !dbg !1847

if.then:                                          ; preds = %entry
  %1 = bitcast [1 x %struct.__mpz_struct]* %min to i8*, !dbg !1848
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !1848
  call void @llvm.dbg.declare(metadata [1 x %struct.__mpz_struct]* %min, metadata !1838, metadata !DIExpression()), !dbg !1849
  %2 = bitcast [1 x %struct.__mpz_struct]* %max to i8*, !dbg !1848
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !1848
  call void @llvm.dbg.declare(metadata [1 x %struct.__mpz_struct]* %max, metadata !1843, metadata !DIExpression()), !dbg !1850
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* %min, i64 0, i64 0, !dbg !1851
  call void @mpz_init(%struct.__mpz_struct* nonnull %arraydecay) #6, !dbg !1852
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* %max, i64 0, i64 0, !dbg !1853
  call void @mpz_init(%struct.__mpz_struct* nonnull %arraydecay1) #6, !dbg !1854
  call void @get_type_static_bounds(%union.tree_node* %type, %struct.__mpz_struct* nonnull %arraydecay, %struct.__mpz_struct* nonnull %arraydecay1) #6, !dbg !1855
  %call = call i32 @mpz_cmp(%struct.__mpz_struct* %val, %struct.__mpz_struct* nonnull %arraydecay) #6, !dbg !1856
  %cmp = icmp slt i32 %call, 0, !dbg !1858
  br i1 %cmp, label %if.then5, label %if.else, !dbg !1859

if.then5:                                         ; preds = %if.then
  call void @mpz_set(%struct.__mpz_struct* %val, %struct.__mpz_struct* nonnull %arraydecay) #6, !dbg !1860
  br label %if.end12, !dbg !1860

if.else:                                          ; preds = %if.then
  %call8 = call i32 @mpz_cmp(%struct.__mpz_struct* %val, %struct.__mpz_struct* nonnull %arraydecay1) #6, !dbg !1861
  %cmp9 = icmp sgt i32 %call8, 0, !dbg !1863
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1864

if.then10:                                        ; preds = %if.else
  call void @mpz_set(%struct.__mpz_struct* %val, %struct.__mpz_struct* nonnull %arraydecay1) #6, !dbg !1865
  br label %if.end12, !dbg !1865

if.end12:                                         ; preds = %if.else, %if.then10, %if.then5
  call void @mpz_clear(%struct.__mpz_struct* nonnull %arraydecay) #6, !dbg !1866
  call void @mpz_clear(%struct.__mpz_struct* nonnull %arraydecay1) #6, !dbg !1867
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !1868
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !1868
  br label %if.end15, !dbg !1869

if.end15:                                         ; preds = %entry, %if.end12
  call void @llvm.dbg.value(metadata i64 64, metadata !1836, metadata !DIExpression()), !dbg !1844
  %call16 = call i64 @mpz_sizeinbase(%struct.__mpz_struct* %val, i32 2) #6, !dbg !1870
  %sub = add i64 %call16, 63, !dbg !1871
  %div = lshr i64 %sub, 6, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %div, metadata !1835, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i64 %div, metadata !1835, metadata !DIExpression()), !dbg !1844
  %3 = icmp ugt i64 %div, 2, !dbg !1873
  %spec.store.select = select i1 %3, i64 %div, i64 2, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %spec.store.select, metadata !1835, metadata !DIExpression()), !dbg !1844
  store i64 %spec.store.select, i64* %count, align 8, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %spec.store.select, metadata !1835, metadata !DIExpression()), !dbg !1844
  %4 = alloca i64, i64 %spec.store.select, align 16, !dbg !1874
  call void @llvm.dbg.value(metadata i64* %4, metadata !1834, metadata !DIExpression()), !dbg !1844
  store i64 0, i64* %4, align 16, !dbg !1875
  %arrayidx20 = getelementptr inbounds i64, i64* %4, i64 1, !dbg !1876
  store i64 0, i64* %arrayidx20, align 8, !dbg !1877
  %5 = bitcast i64* %4 to i8*, !dbg !1878
  call void @llvm.dbg.value(metadata i64* %count, metadata !1835, metadata !DIExpression(DW_OP_deref)), !dbg !1844
  %call21 = call i8* @mpz_export(i8* nonnull %5, i64* nonnull %count, i32 -1, i64 8, i32 0, i64 0, %struct.__mpz_struct* %val) #6, !dbg !1879
  %tobool22 = icmp ne i8 %wrap, 0, !dbg !1880
  %6 = load i64, i64* %count, align 8, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %6, metadata !1835, metadata !DIExpression()), !dbg !1844
  %cmp23 = icmp ult i64 %6, 3, !dbg !1880
  %or.cond = or i1 %tobool22, %cmp23, !dbg !1880
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !1880

cond.true:                                        ; preds = %if.end15
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 483, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1880
  br label %cond.end, !dbg !1880

cond.end:                                         ; preds = %if.end15, %cond.true
  %7 = load i64, i64* %4, align 16, !dbg !1881
  %low = getelementptr inbounds %struct.double_int, %struct.double_int* %retval, i64 0, i32 0, !dbg !1882
  %8 = load i64, i64* %arrayidx20, align 8, !dbg !1883
  %high = getelementptr inbounds %struct.double_int, %struct.double_int* %retval, i64 0, i32 1, !dbg !1884
  %9 = bitcast %struct.double_int* %tmp to i8*, !dbg !1885
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #8, !dbg !1885
  %type27 = bitcast %union.tree_node* %type to %struct.tree_type*, !dbg !1886
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type27, i64 0, i32 6, !dbg !1886
  %bf.load = load i32, i32* %precision, align 4, !dbg !1886
  %bf.clear = and i32 %bf.load, 1023, !dbg !1886
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1887
  %bf.load28 = load i64, i64* %10, align 8, !dbg !1887
  %bf.lshr = lshr i64 %bf.load28, 21, !dbg !1887
  %11 = trunc i64 %bf.lshr to i8, !dbg !1887
  %bf.cast = and i8 %11, 1, !dbg !1887
  %call31 = call { i64, i64 } @double_int_ext(i64 %7, i64 %8, i32 %bf.clear, i8 zeroext %bf.cast) #7, !dbg !1885
  %12 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !1885
  %13 = extractvalue { i64, i64 } %call31, 0, !dbg !1885
  store i64 %13, i64* %12, align 8, !dbg !1885
  %14 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !1885
  %15 = extractvalue { i64, i64 } %call31, 1, !dbg !1885
  store i64 %15, i64* %14, align 8, !dbg !1885
  %16 = bitcast %struct.double_int* %retval to i8*, !dbg !1885
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %16, i8* nonnull align 8 %9, i64 16, i1 false), !dbg !1885
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #8, !dbg !1885
  %call32 = call i32 @mpz_sgn(%struct.__mpz_struct* %val) #6, !dbg !1888
  %cmp33 = icmp slt i32 %call32, 0, !dbg !1890
  br i1 %cmp33, label %if.then35, label %if.end38, !dbg !1891

if.then35:                                        ; preds = %cond.end
  %17 = bitcast %struct.double_int* %tmp36 to i8*, !dbg !1892
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #8, !dbg !1892
  %18 = load i64, i64* %low, align 8, !dbg !1892
  %19 = load i64, i64* %high, align 8, !dbg !1892
  %call37 = call { i64, i64 } @double_int_neg(i64 %18, i64 %19) #7, !dbg !1892
  %20 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp36, i64 0, i32 0, !dbg !1892
  %21 = extractvalue { i64, i64 } %call37, 0, !dbg !1892
  store i64 %21, i64* %20, align 8, !dbg !1892
  %22 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp36, i64 0, i32 1, !dbg !1892
  %23 = extractvalue { i64, i64 } %call37, 1, !dbg !1892
  store i64 %23, i64* %22, align 8, !dbg !1892
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %16, i8* nonnull align 8 %17, i64 16, i1 false), !dbg !1892
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #8, !dbg !1892
  br label %if.end38, !dbg !1893

if.end38:                                         ; preds = %if.then35, %cond.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !1894
  %.unpack = load i64, i64* %low, align 8, !dbg !1894
  %24 = insertvalue { i64, i64 } undef, i64 %.unpack, 0, !dbg !1894
  %.unpack2 = load i64, i64* %high, align 8, !dbg !1894
  %25 = insertvalue { i64, i64 } %24, i64 %.unpack2, 1, !dbg !1894
  ret { i64, i64 } %25, !dbg !1894
}

declare dso_local void @mpz_init(%struct.__mpz_struct*) local_unnamed_addr #2

declare dso_local void @get_type_static_bounds(%union.tree_node*, %struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #2

declare dso_local i32 @mpz_cmp(%struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #2

declare dso_local void @mpz_set(%struct.__mpz_struct*, %struct.__mpz_struct*) local_unnamed_addr #2

declare dso_local void @mpz_clear(%struct.__mpz_struct*) local_unnamed_addr #2

declare dso_local i64 @mpz_sizeinbase(%struct.__mpz_struct*, i32) local_unnamed_addr #2

declare dso_local i8* @mpz_export(i8*, i64*, i32, i64, i32, i64, %struct.__mpz_struct*) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i32 @mpz_sgn(%struct.__mpz_struct*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!244, !245, !246}
!llvm.ident = !{!247}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !231, nameTableKind: None)
!1 = !DIFile(filename: "double-int.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !23, !30, !37}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !4, line: 280, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!7 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !4, line: 1817, baseType: !5, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!29 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !4, line: 1805, baseType: !5, size: 32, elements: !31)
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !4, line: 39, baseType: !5, size: 32, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!39 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!44 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!45 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!46 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!47 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!48 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!49 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!50 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!51 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!52 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!53 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!54 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!55 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!56 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!57 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!58 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!59 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!60 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!61 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!62 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!63 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!64 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!65 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!66 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!67 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!68 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!69 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!70 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!71 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!72 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!73 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!74 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!75 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!76 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!77 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!78 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!79 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!80 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!81 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!82 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!83 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!84 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!85 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!86 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!87 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!88 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!89 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!90 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!91 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!92 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!93 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!94 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!95 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!96 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!97 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!98 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!99 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!100 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!101 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!102 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!103 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!104 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!105 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!106 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!107 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!108 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!109 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!110 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!111 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!112 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!113 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!114 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!115 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!116 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!117 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!118 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!119 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!120 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!121 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!122 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!123 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!124 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!125 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!126 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!127 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!128 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!129 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!130 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!131 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!132 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!133 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!134 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!135 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!136 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!137 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!138 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!139 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!140 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!141 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!142 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!143 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!144 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!145 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!146 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!147 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!148 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!149 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!150 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!151 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!152 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!153 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!154 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!155 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!156 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!157 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!158 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!159 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!160 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!161 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!162 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!163 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!164 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!165 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!166 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!167 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!168 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!169 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!170 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!171 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!172 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!173 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!174 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!175 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!176 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!177 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!178 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!179 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!180 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!181 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!182 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!183 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!184 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!185 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!186 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!187 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!188 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!189 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!190 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!191 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!192 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!193 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!194 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!195 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!196 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!197 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!198 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!199 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!200 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!201 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!202 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!203 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!204 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!205 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!206 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!207 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!208 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!209 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!210 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!211 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!212 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!213 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!214 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!215 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!216 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!217 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!218 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!219 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!220 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!221 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!222 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!223 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!224 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!225 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!226 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!227 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!228 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!229 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!230 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!231 = !{!232, !233, !234, !235, !238, !239, !241, !242, !37, !243}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!234 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!241 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!242 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!244 = !{i32 2, !"Dwarf Version", i32 4}
!245 = !{i32 2, !"Debug Info Version", i32 3}
!246 = !{i32 1, !"wchar_size", i32 4}
!247 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!248 = distinct !DISubprogram(name: "vprintf", scope: !249, file: !249, line: 39, type: !250, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !260)
!249 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!250 = !DISubroutineType(types: !251)
!251 = !{!234, !252, !253}
!252 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !239)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !255)
!255 = !{!256, !257, !258, !259}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !254, file: !1, baseType: !5, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !254, file: !1, baseType: !5, size: 32, offset: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !254, file: !1, baseType: !238, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !254, file: !1, baseType: !238, size: 64, offset: 128)
!260 = !{!261, !262}
!261 = !DILocalVariable(name: "__fmt", arg: 1, scope: !248, file: !249, line: 39, type: !252)
!262 = !DILocalVariable(name: "__arg", arg: 2, scope: !248, file: !249, line: 39, type: !253)
!263 = !DILocation(line: 0, scope: !248)
!264 = !DILocation(line: 41, column: 20, scope: !248)
!265 = !DILocation(line: 41, column: 10, scope: !248)
!266 = !DILocation(line: 41, column: 3, scope: !248)
!267 = distinct !DISubprogram(name: "getchar", scope: !249, file: !249, line: 47, type: !268, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !270)
!268 = !DISubroutineType(types: !269)
!269 = !{!234}
!270 = !{}
!271 = !DILocation(line: 49, column: 16, scope: !267)
!272 = !DILocation(line: 49, column: 10, scope: !267)
!273 = !DILocation(line: 49, column: 3, scope: !267)
!274 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !249, file: !249, line: 56, type: !275, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !334)
!275 = !DISubroutineType(types: !276)
!276 = !{!234, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !279, line: 7, baseType: !280)
!279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !281, line: 49, size: 1728, elements: !282)
!281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !298, !300, !301, !302, !305, !307, !309, !313, !316, !318, !321, !324, !325, !326, !329, !330}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !280, file: !281, line: 51, baseType: !234, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !280, file: !281, line: 54, baseType: !236, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !280, file: !281, line: 55, baseType: !236, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !280, file: !281, line: 56, baseType: !236, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !280, file: !281, line: 57, baseType: !236, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !280, file: !281, line: 58, baseType: !236, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !280, file: !281, line: 59, baseType: !236, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !280, file: !281, line: 60, baseType: !236, size: 64, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !280, file: !281, line: 61, baseType: !236, size: 64, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !280, file: !281, line: 64, baseType: !236, size: 64, offset: 576)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !280, file: !281, line: 65, baseType: !236, size: 64, offset: 640)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !280, file: !281, line: 66, baseType: !236, size: 64, offset: 704)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !280, file: !281, line: 68, baseType: !296, size: 64, offset: 768)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !281, line: 36, flags: DIFlagFwdDecl)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !280, file: !281, line: 70, baseType: !299, size: 64, offset: 832)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !280, file: !281, line: 72, baseType: !234, size: 32, offset: 896)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !280, file: !281, line: 73, baseType: !234, size: 32, offset: 928)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !280, file: !281, line: 74, baseType: !303, size: 64, offset: 960)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !304, line: 152, baseType: !242)
!304 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !280, file: !281, line: 77, baseType: !306, size: 16, offset: 1024)
!306 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !280, file: !281, line: 78, baseType: !308, size: 8, offset: 1040)
!308 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !280, file: !281, line: 79, baseType: !310, size: 8, offset: 1048)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 8, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 1)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !280, file: !281, line: 81, baseType: !314, size: 64, offset: 1088)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !281, line: 43, baseType: null)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !280, file: !281, line: 89, baseType: !317, size: 64, offset: 1152)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !304, line: 153, baseType: !242)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !280, file: !281, line: 91, baseType: !319, size: 64, offset: 1216)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !281, line: 37, flags: DIFlagFwdDecl)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !280, file: !281, line: 92, baseType: !322, size: 64, offset: 1280)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !281, line: 38, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !280, file: !281, line: 93, baseType: !299, size: 64, offset: 1344)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !280, file: !281, line: 94, baseType: !238, size: 64, offset: 1408)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !280, file: !281, line: 95, baseType: !327, size: 64, offset: 1472)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !328, line: 46, baseType: !241)
!328 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !280, file: !281, line: 96, baseType: !234, size: 32, offset: 1536)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !280, file: !281, line: 98, baseType: !331, size: 160, offset: 1568)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 160, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 20)
!334 = !{!335}
!335 = !DILocalVariable(name: "__fp", arg: 1, scope: !274, file: !249, line: 56, type: !277)
!336 = !DILocation(line: 0, scope: !274)
!337 = !DILocation(line: 58, column: 10, scope: !274)
!338 = !DILocation(line: 58, column: 3, scope: !274)
!339 = distinct !DISubprogram(name: "getc_unlocked", scope: !249, file: !249, line: 66, type: !275, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !340)
!340 = !{!341}
!341 = !DILocalVariable(name: "__fp", arg: 1, scope: !339, file: !249, line: 66, type: !277)
!342 = !DILocation(line: 0, scope: !339)
!343 = !DILocation(line: 68, column: 10, scope: !339)
!344 = !DILocation(line: 68, column: 3, scope: !339)
!345 = distinct !DISubprogram(name: "getchar_unlocked", scope: !249, file: !249, line: 73, type: !268, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !270)
!346 = !DILocation(line: 75, column: 10, scope: !345)
!347 = !DILocation(line: 75, column: 3, scope: !345)
!348 = distinct !DISubprogram(name: "putchar", scope: !249, file: !249, line: 82, type: !349, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !351)
!349 = !DISubroutineType(types: !350)
!350 = !{!234, !234}
!351 = !{!352}
!352 = !DILocalVariable(name: "__c", arg: 1, scope: !348, file: !249, line: 82, type: !234)
!353 = !DILocation(line: 0, scope: !348)
!354 = !DILocation(line: 84, column: 21, scope: !348)
!355 = !DILocation(line: 84, column: 10, scope: !348)
!356 = !DILocation(line: 84, column: 3, scope: !348)
!357 = distinct !DISubprogram(name: "fputc_unlocked", scope: !249, file: !249, line: 91, type: !358, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{!234, !234, !277}
!360 = !{!361, !362}
!361 = !DILocalVariable(name: "__c", arg: 1, scope: !357, file: !249, line: 91, type: !234)
!362 = !DILocalVariable(name: "__stream", arg: 2, scope: !357, file: !249, line: 91, type: !277)
!363 = !DILocation(line: 0, scope: !357)
!364 = !DILocation(line: 93, column: 10, scope: !357)
!365 = !DILocation(line: 93, column: 3, scope: !357)
!366 = distinct !DISubprogram(name: "putc_unlocked", scope: !249, file: !249, line: 101, type: !358, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !367)
!367 = !{!368, !369}
!368 = !DILocalVariable(name: "__c", arg: 1, scope: !366, file: !249, line: 101, type: !234)
!369 = !DILocalVariable(name: "__stream", arg: 2, scope: !366, file: !249, line: 101, type: !277)
!370 = !DILocation(line: 0, scope: !366)
!371 = !DILocation(line: 103, column: 10, scope: !366)
!372 = !DILocation(line: 103, column: 3, scope: !366)
!373 = distinct !DISubprogram(name: "putchar_unlocked", scope: !249, file: !249, line: 108, type: !349, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !374)
!374 = !{!375}
!375 = !DILocalVariable(name: "__c", arg: 1, scope: !373, file: !249, line: 108, type: !234)
!376 = !DILocation(line: 0, scope: !373)
!377 = !DILocation(line: 110, column: 10, scope: !373)
!378 = !DILocation(line: 110, column: 3, scope: !373)
!379 = distinct !DISubprogram(name: "getline", scope: !249, file: !249, line: 118, type: !380, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !384)
!380 = !DISubroutineType(types: !381)
!381 = !{!382, !235, !383, !277}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !304, line: 193, baseType: !242)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!384 = !{!385, !386, !387}
!385 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !379, file: !249, line: 118, type: !235)
!386 = !DILocalVariable(name: "__n", arg: 2, scope: !379, file: !249, line: 118, type: !383)
!387 = !DILocalVariable(name: "__stream", arg: 3, scope: !379, file: !249, line: 118, type: !277)
!388 = !DILocation(line: 0, scope: !379)
!389 = !DILocation(line: 120, column: 10, scope: !379)
!390 = !DILocation(line: 120, column: 3, scope: !379)
!391 = distinct !DISubprogram(name: "feof_unlocked", scope: !249, file: !249, line: 128, type: !275, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !392)
!392 = !{!393}
!393 = !DILocalVariable(name: "__stream", arg: 1, scope: !391, file: !249, line: 128, type: !277)
!394 = !DILocation(line: 0, scope: !391)
!395 = !DILocation(line: 130, column: 10, scope: !391)
!396 = !DILocation(line: 130, column: 3, scope: !391)
!397 = distinct !DISubprogram(name: "ferror_unlocked", scope: !249, file: !249, line: 135, type: !275, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !398)
!398 = !{!399}
!399 = !DILocalVariable(name: "__stream", arg: 1, scope: !397, file: !249, line: 135, type: !277)
!400 = !DILocation(line: 0, scope: !397)
!401 = !DILocation(line: 137, column: 10, scope: !397)
!402 = !DILocation(line: 137, column: 3, scope: !397)
!403 = distinct !DISubprogram(name: "tolower", scope: !404, file: !404, line: 207, type: !349, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !405)
!404 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!405 = !{!406}
!406 = !DILocalVariable(name: "__c", arg: 1, scope: !403, file: !404, line: 207, type: !234)
!407 = !DILocation(line: 0, scope: !403)
!408 = !DILocation(line: 209, column: 22, scope: !403)
!409 = !DILocation(line: 209, column: 39, scope: !403)
!410 = !DILocation(line: 209, column: 38, scope: !403)
!411 = !DILocation(line: 209, column: 37, scope: !403)
!412 = !DILocation(line: 209, column: 10, scope: !403)
!413 = !DILocation(line: 209, column: 3, scope: !403)
!414 = distinct !DISubprogram(name: "toupper", scope: !404, file: !404, line: 213, type: !349, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !415)
!415 = !{!416}
!416 = !DILocalVariable(name: "__c", arg: 1, scope: !414, file: !404, line: 213, type: !234)
!417 = !DILocation(line: 0, scope: !414)
!418 = !DILocation(line: 215, column: 22, scope: !414)
!419 = !DILocation(line: 215, column: 39, scope: !414)
!420 = !DILocation(line: 215, column: 38, scope: !414)
!421 = !DILocation(line: 215, column: 37, scope: !414)
!422 = !DILocation(line: 215, column: 10, scope: !414)
!423 = !DILocation(line: 215, column: 3, scope: !414)
!424 = distinct !DISubprogram(name: "atoi", scope: !425, file: !425, line: 361, type: !426, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !428)
!425 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!426 = !DISubroutineType(types: !427)
!427 = !{!234, !239}
!428 = !{!429}
!429 = !DILocalVariable(name: "__nptr", arg: 1, scope: !424, file: !425, line: 361, type: !239)
!430 = !DILocation(line: 0, scope: !424)
!431 = !DILocation(line: 363, column: 16, scope: !424)
!432 = !DILocation(line: 363, column: 10, scope: !424)
!433 = !DILocation(line: 363, column: 3, scope: !424)
!434 = distinct !DISubprogram(name: "atol", scope: !425, file: !425, line: 366, type: !435, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{!242, !239}
!437 = !{!438}
!438 = !DILocalVariable(name: "__nptr", arg: 1, scope: !434, file: !425, line: 366, type: !239)
!439 = !DILocation(line: 0, scope: !434)
!440 = !DILocation(line: 368, column: 10, scope: !434)
!441 = !DILocation(line: 368, column: 3, scope: !434)
!442 = distinct !DISubprogram(name: "atoll", scope: !425, file: !425, line: 373, type: !443, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !446)
!443 = !DISubroutineType(types: !444)
!444 = !{!445, !239}
!445 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!446 = !{!447}
!447 = !DILocalVariable(name: "__nptr", arg: 1, scope: !442, file: !425, line: 373, type: !239)
!448 = !DILocation(line: 0, scope: !442)
!449 = !DILocation(line: 375, column: 10, scope: !442)
!450 = !DILocation(line: 375, column: 3, scope: !442)
!451 = distinct !DISubprogram(name: "bsearch", scope: !452, file: !452, line: 20, type: !453, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !461)
!452 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!453 = !DISubroutineType(types: !454)
!454 = !{!238, !455, !455, !327, !327, !457}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !425, line: 808, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!234, !455, !455}
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471}
!462 = !DILocalVariable(name: "__key", arg: 1, scope: !451, file: !452, line: 20, type: !455)
!463 = !DILocalVariable(name: "__base", arg: 2, scope: !451, file: !452, line: 20, type: !455)
!464 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !451, file: !452, line: 20, type: !327)
!465 = !DILocalVariable(name: "__size", arg: 4, scope: !451, file: !452, line: 20, type: !327)
!466 = !DILocalVariable(name: "__compar", arg: 5, scope: !451, file: !452, line: 21, type: !457)
!467 = !DILocalVariable(name: "__l", scope: !451, file: !452, line: 23, type: !327)
!468 = !DILocalVariable(name: "__u", scope: !451, file: !452, line: 23, type: !327)
!469 = !DILocalVariable(name: "__idx", scope: !451, file: !452, line: 23, type: !327)
!470 = !DILocalVariable(name: "__p", scope: !451, file: !452, line: 24, type: !455)
!471 = !DILocalVariable(name: "__comparison", scope: !451, file: !452, line: 25, type: !234)
!472 = !DILocation(line: 0, scope: !451)
!473 = !DILocation(line: 29, column: 3, scope: !451)
!474 = !DILocation(line: 27, column: 7, scope: !451)
!475 = !DILocation(line: 29, column: 14, scope: !451)
!476 = !DILocation(line: 31, column: 20, scope: !477)
!477 = distinct !DILexicalBlock(scope: !451, file: !452, line: 30, column: 5)
!478 = !DILocation(line: 31, column: 27, scope: !477)
!479 = !DILocation(line: 32, column: 56, scope: !477)
!480 = !DILocation(line: 32, column: 47, scope: !477)
!481 = !DILocation(line: 33, column: 22, scope: !477)
!482 = !DILocation(line: 34, column: 24, scope: !483)
!483 = distinct !DILexicalBlock(scope: !477, file: !452, line: 34, column: 11)
!484 = !DILocation(line: 34, column: 11, scope: !477)
!485 = !DILocation(line: 36, column: 29, scope: !486)
!486 = distinct !DILexicalBlock(scope: !483, file: !452, line: 36, column: 16)
!487 = !DILocation(line: 36, column: 16, scope: !483)
!488 = !DILocation(line: 37, column: 14, scope: !486)
!489 = distinct !{!489, !473, !490}
!490 = !DILocation(line: 40, column: 5, scope: !451)
!491 = !DILocation(line: 43, column: 1, scope: !451)
!492 = distinct !DISubprogram(name: "atof", scope: !493, file: !493, line: 25, type: !494, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !497)
!493 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!494 = !DISubroutineType(types: !495)
!495 = !{!496, !239}
!496 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!497 = !{!498}
!498 = !DILocalVariable(name: "__nptr", arg: 1, scope: !492, file: !493, line: 25, type: !239)
!499 = !DILocation(line: 0, scope: !492)
!500 = !DILocation(line: 27, column: 10, scope: !492)
!501 = !DILocation(line: 27, column: 3, scope: !492)
!502 = distinct !DISubprogram(name: "strtoimax", scope: !503, file: !503, line: 324, type: !504, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !510)
!503 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!504 = !DISubroutineType(types: !505)
!505 = !{!506, !252, !509, !234}
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !507, line: 101, baseType: !508)
!507 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !304, line: 72, baseType: !242)
!509 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !235)
!510 = !{!511, !512, !513}
!511 = !DILocalVariable(name: "nptr", arg: 1, scope: !502, file: !503, line: 324, type: !252)
!512 = !DILocalVariable(name: "endptr", arg: 2, scope: !502, file: !503, line: 324, type: !509)
!513 = !DILocalVariable(name: "base", arg: 3, scope: !502, file: !503, line: 324, type: !234)
!514 = !DILocation(line: 0, scope: !502)
!515 = !DILocation(line: 327, column: 10, scope: !502)
!516 = !DILocation(line: 327, column: 3, scope: !502)
!517 = distinct !DISubprogram(name: "strtoumax", scope: !503, file: !503, line: 336, type: !518, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !522)
!518 = !DISubroutineType(types: !519)
!519 = !{!520, !252, !509, !234}
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !507, line: 102, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !304, line: 73, baseType: !241)
!522 = !{!523, !524, !525}
!523 = !DILocalVariable(name: "nptr", arg: 1, scope: !517, file: !503, line: 336, type: !252)
!524 = !DILocalVariable(name: "endptr", arg: 2, scope: !517, file: !503, line: 336, type: !509)
!525 = !DILocalVariable(name: "base", arg: 3, scope: !517, file: !503, line: 336, type: !234)
!526 = !DILocation(line: 0, scope: !517)
!527 = !DILocation(line: 339, column: 10, scope: !517)
!528 = !DILocation(line: 339, column: 3, scope: !517)
!529 = distinct !DISubprogram(name: "wcstoimax", scope: !503, file: !503, line: 348, type: !530, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !539)
!530 = !DISubroutineType(types: !531)
!531 = !{!506, !532, !536, !234}
!532 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !503, line: 34, baseType: !234)
!536 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!539 = !{!540, !541, !542}
!540 = !DILocalVariable(name: "nptr", arg: 1, scope: !529, file: !503, line: 348, type: !532)
!541 = !DILocalVariable(name: "endptr", arg: 2, scope: !529, file: !503, line: 348, type: !536)
!542 = !DILocalVariable(name: "base", arg: 3, scope: !529, file: !503, line: 348, type: !234)
!543 = !DILocation(line: 0, scope: !529)
!544 = !DILocation(line: 351, column: 10, scope: !529)
!545 = !DILocation(line: 351, column: 3, scope: !529)
!546 = distinct !DISubprogram(name: "wcstoumax", scope: !503, file: !503, line: 362, type: !547, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{!520, !532, !536, !234}
!549 = !{!550, !551, !552}
!550 = !DILocalVariable(name: "nptr", arg: 1, scope: !546, file: !503, line: 362, type: !532)
!551 = !DILocalVariable(name: "endptr", arg: 2, scope: !546, file: !503, line: 362, type: !536)
!552 = !DILocalVariable(name: "base", arg: 3, scope: !546, file: !503, line: 362, type: !234)
!553 = !DILocation(line: 0, scope: !546)
!554 = !DILocation(line: 365, column: 10, scope: !546)
!555 = !DILocation(line: 365, column: 3, scope: !546)
!556 = distinct !DISubprogram(name: "stat", scope: !557, file: !557, line: 453, type: !558, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !597)
!557 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!558 = !DISubroutineType(types: !559)
!559 = !{!234, !239, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !562, line: 46, size: 1152, elements: !563)
!562 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!563 = !{!564, !566, !568, !570, !572, !574, !576, !577, !578, !579, !581, !583, !591, !592, !593}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !561, file: !562, line: 48, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !304, line: 145, baseType: !241)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !561, file: !562, line: 53, baseType: !567, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !304, line: 148, baseType: !241)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !561, file: !562, line: 61, baseType: !569, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !304, line: 151, baseType: !241)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !561, file: !562, line: 62, baseType: !571, size: 32, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !304, line: 150, baseType: !5)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !561, file: !562, line: 64, baseType: !573, size: 32, offset: 224)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !304, line: 146, baseType: !5)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !561, file: !562, line: 65, baseType: !575, size: 32, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !304, line: 147, baseType: !5)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !561, file: !562, line: 67, baseType: !234, size: 32, offset: 288)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !561, file: !562, line: 69, baseType: !565, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !561, file: !562, line: 74, baseType: !303, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !561, file: !562, line: 78, baseType: !580, size: 64, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !304, line: 174, baseType: !242)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !561, file: !562, line: 80, baseType: !582, size: 64, offset: 512)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !304, line: 179, baseType: !242)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !561, file: !562, line: 91, baseType: !584, size: 128, offset: 576)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !585, line: 10, size: 128, elements: !586)
!585 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!586 = !{!587, !589}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !584, file: !585, line: 12, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !304, line: 160, baseType: !242)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !584, file: !585, line: 16, baseType: !590, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !304, line: 196, baseType: !242)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !561, file: !562, line: 92, baseType: !584, size: 128, offset: 704)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !561, file: !562, line: 93, baseType: !584, size: 128, offset: 832)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !561, file: !562, line: 106, baseType: !594, size: 192, offset: 960)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 192, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 3)
!597 = !{!598, !599}
!598 = !DILocalVariable(name: "__path", arg: 1, scope: !556, file: !557, line: 453, type: !239)
!599 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !556, file: !557, line: 453, type: !560)
!600 = !DILocation(line: 0, scope: !556)
!601 = !DILocation(line: 455, column: 10, scope: !556)
!602 = !DILocation(line: 455, column: 3, scope: !556)
!603 = distinct !DISubprogram(name: "lstat", scope: !557, file: !557, line: 460, type: !558, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !604)
!604 = !{!605, !606}
!605 = !DILocalVariable(name: "__path", arg: 1, scope: !603, file: !557, line: 460, type: !239)
!606 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !603, file: !557, line: 460, type: !560)
!607 = !DILocation(line: 0, scope: !603)
!608 = !DILocation(line: 462, column: 10, scope: !603)
!609 = !DILocation(line: 462, column: 3, scope: !603)
!610 = distinct !DISubprogram(name: "fstat", scope: !557, file: !557, line: 467, type: !611, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{!234, !234, !560}
!613 = !{!614, !615}
!614 = !DILocalVariable(name: "__fd", arg: 1, scope: !610, file: !557, line: 467, type: !234)
!615 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !610, file: !557, line: 467, type: !560)
!616 = !DILocation(line: 0, scope: !610)
!617 = !DILocation(line: 469, column: 10, scope: !610)
!618 = !DILocation(line: 469, column: 3, scope: !610)
!619 = distinct !DISubprogram(name: "fstatat", scope: !557, file: !557, line: 474, type: !620, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !622)
!620 = !DISubroutineType(types: !621)
!621 = !{!234, !234, !239, !560, !234}
!622 = !{!623, !624, !625, !626}
!623 = !DILocalVariable(name: "__fd", arg: 1, scope: !619, file: !557, line: 474, type: !234)
!624 = !DILocalVariable(name: "__filename", arg: 2, scope: !619, file: !557, line: 474, type: !239)
!625 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !619, file: !557, line: 474, type: !560)
!626 = !DILocalVariable(name: "__flag", arg: 4, scope: !619, file: !557, line: 474, type: !234)
!627 = !DILocation(line: 0, scope: !619)
!628 = !DILocation(line: 477, column: 10, scope: !619)
!629 = !DILocation(line: 477, column: 3, scope: !619)
!630 = distinct !DISubprogram(name: "mknod", scope: !557, file: !557, line: 483, type: !631, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{!234, !239, !571, !565}
!633 = !{!634, !635, !636}
!634 = !DILocalVariable(name: "__path", arg: 1, scope: !630, file: !557, line: 483, type: !239)
!635 = !DILocalVariable(name: "__mode", arg: 2, scope: !630, file: !557, line: 483, type: !571)
!636 = !DILocalVariable(name: "__dev", arg: 3, scope: !630, file: !557, line: 483, type: !565)
!637 = !DILocation(line: 0, scope: !630)
!638 = !DILocation(line: 485, column: 10, scope: !630)
!639 = !DILocation(line: 485, column: 3, scope: !630)
!640 = distinct !DISubprogram(name: "mknodat", scope: !557, file: !557, line: 491, type: !641, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{!234, !234, !239, !571, !565}
!643 = !{!644, !645, !646, !647}
!644 = !DILocalVariable(name: "__fd", arg: 1, scope: !640, file: !557, line: 491, type: !234)
!645 = !DILocalVariable(name: "__path", arg: 2, scope: !640, file: !557, line: 491, type: !239)
!646 = !DILocalVariable(name: "__mode", arg: 3, scope: !640, file: !557, line: 491, type: !571)
!647 = !DILocalVariable(name: "__dev", arg: 4, scope: !640, file: !557, line: 491, type: !565)
!648 = !DILocation(line: 0, scope: !640)
!649 = !DILocation(line: 494, column: 10, scope: !640)
!650 = !DILocation(line: 494, column: 3, scope: !640)
!651 = distinct !DISubprogram(name: "stat64", scope: !557, file: !557, line: 502, type: !652, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !674)
!652 = !DISubroutineType(types: !653)
!653 = !{!234, !239, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !562, line: 119, size: 1152, elements: !656)
!656 = !{!657, !658, !660, !661, !662, !663, !664, !665, !666, !667, !668, !670, !671, !672, !673}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !655, file: !562, line: 121, baseType: !565, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !655, file: !562, line: 123, baseType: !659, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !304, line: 149, baseType: !241)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !655, file: !562, line: 124, baseType: !569, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !655, file: !562, line: 125, baseType: !571, size: 32, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !655, file: !562, line: 132, baseType: !573, size: 32, offset: 224)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !655, file: !562, line: 133, baseType: !575, size: 32, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !655, file: !562, line: 135, baseType: !234, size: 32, offset: 288)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !655, file: !562, line: 136, baseType: !565, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !655, file: !562, line: 137, baseType: !303, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !655, file: !562, line: 143, baseType: !580, size: 64, offset: 448)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !655, file: !562, line: 144, baseType: !669, size: 64, offset: 512)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !304, line: 180, baseType: !242)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !655, file: !562, line: 152, baseType: !584, size: 128, offset: 576)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !655, file: !562, line: 153, baseType: !584, size: 128, offset: 704)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !655, file: !562, line: 154, baseType: !584, size: 128, offset: 832)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !655, file: !562, line: 164, baseType: !594, size: 192, offset: 960)
!674 = !{!675, !676}
!675 = !DILocalVariable(name: "__path", arg: 1, scope: !651, file: !557, line: 502, type: !239)
!676 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !651, file: !557, line: 502, type: !654)
!677 = !DILocation(line: 0, scope: !651)
!678 = !DILocation(line: 504, column: 10, scope: !651)
!679 = !DILocation(line: 504, column: 3, scope: !651)
!680 = distinct !DISubprogram(name: "lstat64", scope: !557, file: !557, line: 509, type: !652, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !681)
!681 = !{!682, !683}
!682 = !DILocalVariable(name: "__path", arg: 1, scope: !680, file: !557, line: 509, type: !239)
!683 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !680, file: !557, line: 509, type: !654)
!684 = !DILocation(line: 0, scope: !680)
!685 = !DILocation(line: 511, column: 10, scope: !680)
!686 = !DILocation(line: 511, column: 3, scope: !680)
!687 = distinct !DISubprogram(name: "fstat64", scope: !557, file: !557, line: 516, type: !688, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{!234, !234, !654}
!690 = !{!691, !692}
!691 = !DILocalVariable(name: "__fd", arg: 1, scope: !687, file: !557, line: 516, type: !234)
!692 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !687, file: !557, line: 516, type: !654)
!693 = !DILocation(line: 0, scope: !687)
!694 = !DILocation(line: 518, column: 10, scope: !687)
!695 = !DILocation(line: 518, column: 3, scope: !687)
!696 = distinct !DISubprogram(name: "fstatat64", scope: !557, file: !557, line: 523, type: !697, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !699)
!697 = !DISubroutineType(types: !698)
!698 = !{!234, !234, !239, !654, !234}
!699 = !{!700, !701, !702, !703}
!700 = !DILocalVariable(name: "__fd", arg: 1, scope: !696, file: !557, line: 523, type: !234)
!701 = !DILocalVariable(name: "__filename", arg: 2, scope: !696, file: !557, line: 523, type: !239)
!702 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !696, file: !557, line: 523, type: !654)
!703 = !DILocalVariable(name: "__flag", arg: 4, scope: !696, file: !557, line: 523, type: !234)
!704 = !DILocation(line: 0, scope: !696)
!705 = !DILocation(line: 526, column: 10, scope: !696)
!706 = !DILocation(line: 526, column: 3, scope: !696)
!707 = distinct !DISubprogram(name: "double_int_mask", scope: !1, file: !1, line: 29, type: !708, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !716)
!708 = !DISubroutineType(types: !709)
!709 = !{!710, !5}
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !711, line: 58, baseType: !712)
!711 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !711, line: 54, size: 128, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !712, file: !711, line: 56, baseType: !241, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !712, file: !711, line: 57, baseType: !242, size: 64, offset: 64)
!716 = !{!717, !718, !719}
!717 = !DILocalVariable(name: "prec", arg: 1, scope: !707, file: !1, line: 29, type: !5)
!718 = !DILocalVariable(name: "m", scope: !707, file: !1, line: 31, type: !241)
!719 = !DILocalVariable(name: "mask", scope: !707, file: !1, line: 32, type: !710)
!720 = !DILocation(line: 0, scope: !707)
!721 = !DILocation(line: 34, column: 12, scope: !722)
!722 = distinct !DILexicalBlock(scope: !707, file: !1, line: 34, column: 7)
!723 = !DILocation(line: 34, column: 7, scope: !707)
!724 = !DILocation(line: 37, column: 48, scope: !725)
!725 = distinct !DILexicalBlock(scope: !722, file: !1, line: 35, column: 5)
!726 = !DILocation(line: 37, column: 39, scope: !725)
!727 = !DILocation(line: 37, column: 54, scope: !725)
!728 = !DILocation(line: 40, column: 5, scope: !725)
!729 = !DILocation(line: 44, column: 55, scope: !730)
!730 = distinct !DILexicalBlock(scope: !722, file: !1, line: 42, column: 5)
!731 = !DILocation(line: 44, column: 46, scope: !730)
!732 = !DILocation(line: 44, column: 61, scope: !730)
!733 = !DILocation(line: 48, column: 1, scope: !707)
!734 = distinct !DISubprogram(name: "double_int_ext", scope: !1, file: !1, line: 58, type: !735, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{!710, !710, !5, !233}
!737 = !{!738, !739, !740}
!738 = !DILocalVariable(name: "cst", arg: 1, scope: !734, file: !1, line: 58, type: !710)
!739 = !DILocalVariable(name: "prec", arg: 2, scope: !734, file: !1, line: 58, type: !5)
!740 = !DILocalVariable(name: "uns", arg: 3, scope: !734, file: !1, line: 58, type: !233)
!741 = !DILocation(line: 0, scope: !734)
!742 = !DILocation(line: 60, column: 7, scope: !743)
!743 = distinct !DILexicalBlock(scope: !734, file: !1, line: 60, column: 7)
!744 = !DILocation(line: 60, column: 7, scope: !734)
!745 = !DILocation(line: 61, column: 12, scope: !743)
!746 = !DILocation(line: 61, column: 5, scope: !743)
!747 = !DILocation(line: 63, column: 12, scope: !743)
!748 = !DILocation(line: 63, column: 5, scope: !743)
!749 = !DILocation(line: 64, column: 1, scope: !734)
!750 = distinct !DISubprogram(name: "double_int_zext", scope: !1, file: !1, line: 69, type: !751, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !753)
!751 = !DISubroutineType(types: !752)
!752 = !{!710, !710, !5}
!753 = !{!754, !755, !756, !757}
!754 = !DILocalVariable(name: "cst", arg: 1, scope: !750, file: !1, line: 69, type: !710)
!755 = !DILocalVariable(name: "prec", arg: 2, scope: !750, file: !1, line: 69, type: !5)
!756 = !DILocalVariable(name: "mask", scope: !750, file: !1, line: 71, type: !710)
!757 = !DILocalVariable(name: "r", scope: !750, file: !1, line: 72, type: !710)
!758 = !DILocation(line: 0, scope: !750)
!759 = !DILocation(line: 71, column: 21, scope: !750)
!760 = !DILocation(line: 74, column: 19, scope: !750)
!761 = !DILocation(line: 75, column: 21, scope: !750)
!762 = !DILocation(line: 78, column: 1, scope: !750)
!763 = distinct !DISubprogram(name: "double_int_sext", scope: !1, file: !1, line: 83, type: !751, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !764)
!764 = !{!765, !766, !767, !768, !769}
!765 = !DILocalVariable(name: "cst", arg: 1, scope: !763, file: !1, line: 83, type: !710)
!766 = !DILocalVariable(name: "prec", arg: 2, scope: !763, file: !1, line: 83, type: !5)
!767 = !DILocalVariable(name: "mask", scope: !763, file: !1, line: 85, type: !710)
!768 = !DILocalVariable(name: "r", scope: !763, file: !1, line: 86, type: !710)
!769 = !DILocalVariable(name: "snum", scope: !763, file: !1, line: 87, type: !241)
!770 = !DILocation(line: 0, scope: !763)
!771 = !DILocation(line: 85, column: 21, scope: !763)
!772 = !DILocation(line: 89, column: 12, scope: !773)
!773 = distinct !DILexicalBlock(scope: !763, file: !1, line: 89, column: 7)
!774 = !DILocation(line: 89, column: 7, scope: !763)
!775 = !DILocation(line: 96, column: 23, scope: !776)
!776 = distinct !DILexicalBlock(scope: !763, file: !1, line: 96, column: 7)
!777 = !DILocation(line: 96, column: 14, scope: !776)
!778 = !DILocation(line: 96, column: 34, scope: !776)
!779 = !DILocation(line: 96, column: 7, scope: !763)
!780 = !DILocation(line: 98, column: 25, scope: !781)
!781 = distinct !DILexicalBlock(scope: !776, file: !1, line: 97, column: 5)
!782 = !DILocation(line: 98, column: 23, scope: !781)
!783 = !DILocation(line: 99, column: 27, scope: !781)
!784 = !DILocation(line: 99, column: 25, scope: !781)
!785 = !DILocation(line: 100, column: 5, scope: !781)
!786 = !DILocation(line: 103, column: 23, scope: !787)
!787 = distinct !DILexicalBlock(scope: !776, file: !1, line: 102, column: 5)
!788 = !DILocation(line: 104, column: 25, scope: !787)
!789 = !DILocation(line: 108, column: 1, scope: !763)
!790 = distinct !DISubprogram(name: "tree_to_double_int", scope: !1, file: !1, line: 115, type: !791, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1424)
!791 = !DISubroutineType(types: !792)
!792 = !{!710, !793}
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !794, line: 59, baseType: !795)
!794 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !4, line: 3371, size: 1792, elements: !798)
!798 = !{!799, !832, !840, !845, !852, !859, !864, !870, !876, !889, !901, !939, !947, !975, !983, !984, !989, !998, !1004, !1009, !1013, !1017, !1046, !1095, !1101, !1108, !1115, !1141, !1166, !1183, !1195, !1217, !1235, !1406}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !797, file: !4, line: 3372, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !4, line: 360, size: 64, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !800, file: !4, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !800, file: !4, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !800, file: !4, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !800, file: !4, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !800, file: !4, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !800, file: !4, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !800, file: !4, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !800, file: !4, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !800, file: !4, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !800, file: !4, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !800, file: !4, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !800, file: !4, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !800, file: !4, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !800, file: !4, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !800, file: !4, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !800, file: !4, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !800, file: !4, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !800, file: !4, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !800, file: !4, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !800, file: !4, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !800, file: !4, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !800, file: !4, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !800, file: !4, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !800, file: !4, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !800, file: !4, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !800, file: !4, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !800, file: !4, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !800, file: !4, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !800, file: !4, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !800, file: !4, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !797, file: !4, line: 3373, baseType: !833, size: 192)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !4, line: 402, size: 192, elements: !834)
!834 = !{!835, !836, !839}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !833, file: !4, line: 403, baseType: !800, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !833, file: !4, line: 404, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !794, line: 56, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !833, file: !4, line: 405, baseType: !837, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !797, file: !4, line: 3374, baseType: !841, size: 320)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !4, line: 1384, size: 320, elements: !842)
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !841, file: !4, line: 1385, baseType: !833, size: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !841, file: !4, line: 1386, baseType: !710, size: 128, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !797, file: !4, line: 3375, baseType: !846, size: 256)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !4, line: 1397, size: 256, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !846, file: !4, line: 1398, baseType: !833, size: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !846, file: !4, line: 1399, baseType: !850, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !4, line: 1392, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !797, file: !4, line: 3376, baseType: !853, size: 256)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !4, line: 1408, size: 256, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !853, file: !4, line: 1409, baseType: !833, size: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !853, file: !4, line: 1410, baseType: !857, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !4, line: 1403, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !797, file: !4, line: 3377, baseType: !860, size: 256)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !4, line: 1437, size: 256, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !860, file: !4, line: 1438, baseType: !833, size: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !860, file: !4, line: 1439, baseType: !837, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !797, file: !4, line: 3378, baseType: !865, size: 256)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !4, line: 1418, size: 256, elements: !866)
!866 = !{!867, !868, !869}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !865, file: !4, line: 1419, baseType: !833, size: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !865, file: !4, line: 1420, baseType: !234, size: 32, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !865, file: !4, line: 1421, baseType: !310, size: 8, offset: 224)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !797, file: !4, line: 3379, baseType: !871, size: 320)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !4, line: 1428, size: 320, elements: !872)
!872 = !{!873, !874, !875}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !871, file: !4, line: 1429, baseType: !833, size: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !871, file: !4, line: 1430, baseType: !837, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !871, file: !4, line: 1431, baseType: !837, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !797, file: !4, line: 3380, baseType: !877, size: 320)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !4, line: 1460, size: 320, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !877, file: !4, line: 1461, baseType: !833, size: 192)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !877, file: !4, line: 1462, baseType: !881, size: 128, offset: 192)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !882, line: 31, size: 128, elements: !883)
!882 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!883 = !{!884, !887, !888}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !881, file: !882, line: 32, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !881, file: !882, line: 33, baseType: !5, size: 32, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !881, file: !882, line: 34, baseType: !5, size: 32, offset: 96)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !797, file: !4, line: 3381, baseType: !890, size: 384)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !4, line: 2507, size: 384, elements: !891)
!891 = !{!892, !893, !898, !899, !900}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !890, file: !4, line: 2508, baseType: !833, size: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !890, file: !4, line: 2509, baseType: !894, size: 32, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !895, line: 58, baseType: !896)
!895 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !897, line: 44, baseType: !5)
!897 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!898 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !890, file: !4, line: 2510, baseType: !5, size: 32, offset: 224)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !890, file: !4, line: 2511, baseType: !837, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !890, file: !4, line: 2512, baseType: !837, size: 64, offset: 320)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !797, file: !4, line: 3382, baseType: !902, size: 896)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !4, line: 2652, size: 896, elements: !903)
!903 = !{!904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !902, file: !4, line: 2653, baseType: !890, size: 384)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !902, file: !4, line: 2654, baseType: !837, size: 64, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !902, file: !4, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !902, file: !4, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !902, file: !4, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !902, file: !4, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !902, file: !4, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !902, file: !4, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !902, file: !4, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !902, file: !4, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !902, file: !4, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !902, file: !4, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !902, file: !4, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !902, file: !4, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !902, file: !4, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !902, file: !4, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !902, file: !4, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !902, file: !4, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !902, file: !4, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !902, file: !4, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !902, file: !4, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !902, file: !4, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !902, file: !4, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !902, file: !4, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !902, file: !4, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !902, file: !4, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !902, file: !4, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !902, file: !4, line: 2703, baseType: !5, size: 32, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !902, file: !4, line: 2705, baseType: !837, size: 64, offset: 576)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !902, file: !4, line: 2706, baseType: !837, size: 64, offset: 640)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !902, file: !4, line: 2707, baseType: !837, size: 64, offset: 704)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !902, file: !4, line: 2708, baseType: !837, size: 64, offset: 768)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !902, file: !4, line: 2711, baseType: !937, size: 64, offset: 832)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !4, line: 2711, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !797, file: !4, line: 3383, baseType: !940, size: 960)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !4, line: 2756, size: 960, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !940, file: !4, line: 2757, baseType: !902, size: 896)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !940, file: !4, line: 2758, baseType: !944, size: 64, offset: 896)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !794, line: 50, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !794, line: 49, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !797, file: !4, line: 3384, baseType: !948, size: 1472)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !4, line: 3114, size: 1472, elements: !949)
!949 = !{!950, !971, !972, !973, !974}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !948, file: !4, line: 3115, baseType: !951, size: 1216)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !4, line: 2984, size: 1216, elements: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !951, file: !4, line: 2985, baseType: !940, size: 960)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !951, file: !4, line: 2986, baseType: !837, size: 64, offset: 960)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !951, file: !4, line: 2987, baseType: !837, size: 64, offset: 1024)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !951, file: !4, line: 2988, baseType: !837, size: 64, offset: 1088)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !951, file: !4, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !951, file: !4, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !951, file: !4, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !951, file: !4, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !951, file: !4, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !951, file: !4, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !951, file: !4, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !951, file: !4, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !951, file: !4, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !951, file: !4, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !951, file: !4, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !951, file: !4, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !951, file: !4, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !951, file: !4, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !948, file: !4, line: 3117, baseType: !837, size: 64, offset: 1216)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !948, file: !4, line: 3119, baseType: !837, size: 64, offset: 1280)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !948, file: !4, line: 3121, baseType: !837, size: 64, offset: 1344)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !948, file: !4, line: 3123, baseType: !837, size: 64, offset: 1408)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !797, file: !4, line: 3385, baseType: !976, size: 1088)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !4, line: 2874, size: 1088, elements: !977)
!977 = !{!978, !979, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !976, file: !4, line: 2875, baseType: !940, size: 960)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !976, file: !4, line: 2876, baseType: !944, size: 64, offset: 960)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !976, file: !4, line: 2877, baseType: !981, size: 64, offset: 1024)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !4, line: 2856, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !797, file: !4, line: 3386, baseType: !951, size: 1216)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !797, file: !4, line: 3387, baseType: !985, size: 1280)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !4, line: 3093, size: 1280, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !985, file: !4, line: 3094, baseType: !951, size: 1216)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !985, file: !4, line: 3095, baseType: !981, size: 64, offset: 1216)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !797, file: !4, line: 3388, baseType: !990, size: 1216)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !4, line: 2824, size: 1216, elements: !991)
!991 = !{!992, !993, !994, !995, !996, !997}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !990, file: !4, line: 2825, baseType: !902, size: 896)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !990, file: !4, line: 2827, baseType: !837, size: 64, offset: 896)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !990, file: !4, line: 2828, baseType: !837, size: 64, offset: 960)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !990, file: !4, line: 2829, baseType: !837, size: 64, offset: 1024)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !990, file: !4, line: 2830, baseType: !837, size: 64, offset: 1088)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !990, file: !4, line: 2831, baseType: !837, size: 64, offset: 1152)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !797, file: !4, line: 3389, baseType: !999, size: 1024)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !4, line: 2850, size: 1024, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !999, file: !4, line: 2851, baseType: !940, size: 960)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !999, file: !4, line: 2852, baseType: !234, size: 32, offset: 960)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !999, file: !4, line: 2853, baseType: !234, size: 32, offset: 992)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !797, file: !4, line: 3390, baseType: !1005, size: 1024)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !4, line: 2857, size: 1024, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1005, file: !4, line: 2858, baseType: !940, size: 960)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1005, file: !4, line: 2859, baseType: !981, size: 64, offset: 960)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !797, file: !4, line: 3391, baseType: !1010, size: 960)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !4, line: 2862, size: 960, elements: !1011)
!1011 = !{!1012}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1010, file: !4, line: 2863, baseType: !940, size: 960)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !797, file: !4, line: 3392, baseType: !1014, size: 1472)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !4, line: 3304, size: 1472, elements: !1015)
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1014, file: !4, line: 3305, baseType: !948, size: 1472)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !797, file: !4, line: 3393, baseType: !1018, size: 1792)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !4, line: 3248, size: 1792, elements: !1019)
!1019 = !{!1020, !1021, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1018, file: !4, line: 3249, baseType: !948, size: 1472)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1018, file: !4, line: 3251, baseType: !1022, size: 64, offset: 1472)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1024, line: 41, flags: DIFlagFwdDecl)
!1024 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1018, file: !4, line: 3254, baseType: !837, size: 64, offset: 1536)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1018, file: !4, line: 3257, baseType: !837, size: 64, offset: 1600)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1018, file: !4, line: 3258, baseType: !837, size: 64, offset: 1664)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1018, file: !4, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1018, file: !4, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1018, file: !4, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1018, file: !4, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1018, file: !4, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1018, file: !4, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1018, file: !4, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1018, file: !4, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1018, file: !4, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1018, file: !4, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1018, file: !4, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1018, file: !4, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1018, file: !4, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1018, file: !4, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1018, file: !4, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1018, file: !4, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1018, file: !4, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1018, file: !4, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !797, file: !4, line: 3394, baseType: !1047, size: 1344)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !4, line: 2279, size: 1344, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1074, !1075, !1076, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1047, file: !4, line: 2280, baseType: !833, size: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1047, file: !4, line: 2281, baseType: !837, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1047, file: !4, line: 2282, baseType: !837, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1047, file: !4, line: 2283, baseType: !837, size: 64, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1047, file: !4, line: 2284, baseType: !837, size: 64, offset: 384)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1047, file: !4, line: 2285, baseType: !5, size: 32, offset: 448)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1047, file: !4, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1047, file: !4, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1047, file: !4, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1047, file: !4, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1047, file: !4, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1047, file: !4, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1047, file: !4, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1047, file: !4, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1047, file: !4, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1047, file: !4, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1047, file: !4, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1047, file: !4, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1047, file: !4, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1047, file: !4, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1047, file: !4, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1047, file: !4, line: 2305, baseType: !5, size: 32, offset: 512)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1047, file: !4, line: 2306, baseType: !1072, size: 32, offset: 544)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1073, line: 31, baseType: !234)
!1073 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1047, file: !4, line: 2307, baseType: !837, size: 64, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1047, file: !4, line: 2308, baseType: !837, size: 64, offset: 640)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1047, file: !4, line: 2314, baseType: !1077, size: 64, offset: 704)
!1077 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !4, line: 2309, size: 64, elements: !1078)
!1078 = !{!1079, !1080, !1081}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1077, file: !4, line: 2310, baseType: !234, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1077, file: !4, line: 2311, baseType: !239, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1077, file: !4, line: 2312, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !4, line: 2277, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1047, file: !4, line: 2315, baseType: !837, size: 64, offset: 768)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1047, file: !4, line: 2316, baseType: !837, size: 64, offset: 832)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1047, file: !4, line: 2317, baseType: !837, size: 64, offset: 896)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1047, file: !4, line: 2318, baseType: !837, size: 64, offset: 960)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1047, file: !4, line: 2319, baseType: !837, size: 64, offset: 1024)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1047, file: !4, line: 2320, baseType: !837, size: 64, offset: 1088)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1047, file: !4, line: 2321, baseType: !837, size: 64, offset: 1152)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1047, file: !4, line: 2322, baseType: !837, size: 64, offset: 1216)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1047, file: !4, line: 2324, baseType: !1093, size: 64, offset: 1280)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !4, line: 2324, flags: DIFlagFwdDecl)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !797, file: !4, line: 3395, baseType: !1096, size: 320)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !4, line: 1469, size: 320, elements: !1097)
!1097 = !{!1098, !1099, !1100}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1096, file: !4, line: 1470, baseType: !833, size: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1096, file: !4, line: 1471, baseType: !837, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1096, file: !4, line: 1472, baseType: !837, size: 64, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !797, file: !4, line: 3396, baseType: !1102, size: 320)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !4, line: 1482, size: 320, elements: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1102, file: !4, line: 1483, baseType: !833, size: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1102, file: !4, line: 1484, baseType: !234, size: 32, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1102, file: !4, line: 1485, baseType: !1107, size: 64, offset: 256)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !837, size: 64, elements: !311)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !797, file: !4, line: 3397, baseType: !1109, size: 384)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !4, line: 1829, size: 384, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1109, file: !4, line: 1830, baseType: !833, size: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1109, file: !4, line: 1831, baseType: !894, size: 32, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1109, file: !4, line: 1832, baseType: !837, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1109, file: !4, line: 1835, baseType: !1107, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !797, file: !4, line: 3398, baseType: !1116, size: 704)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !4, line: 1898, size: 704, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1124, !1125, !1128}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1116, file: !4, line: 1899, baseType: !833, size: 192)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1116, file: !4, line: 1902, baseType: !837, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1116, file: !4, line: 1905, baseType: !1121, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !794, line: 58, baseType: !1122)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !794, line: 57, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1116, file: !4, line: 1908, baseType: !5, size: 32, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1116, file: !4, line: 1911, baseType: !1126, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !4, line: 1876, flags: DIFlagFwdDecl)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1116, file: !4, line: 1914, baseType: !1129, size: 256, offset: 448)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !4, line: 1883, size: 256, elements: !1130)
!1130 = !{!1131, !1133, !1134, !1139}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1129, file: !4, line: 1884, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1129, file: !4, line: 1885, baseType: !1132, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1129, file: !4, line: 1891, baseType: !1135, size: 64, offset: 128)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1129, file: !4, line: 1891, size: 64, elements: !1136)
!1136 = !{!1137, !1138}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1135, file: !4, line: 1891, baseType: !1121, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1135, file: !4, line: 1891, baseType: !837, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1129, file: !4, line: 1892, baseType: !1140, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !797, file: !4, line: 3399, baseType: !1142, size: 704)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !4, line: 2008, size: 704, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149, !1161, !1162, !1163, !1164, !1165}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1142, file: !4, line: 2009, baseType: !833, size: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1142, file: !4, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1142, file: !4, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1142, file: !4, line: 2014, baseType: !894, size: 32, offset: 224)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1142, file: !4, line: 2016, baseType: !837, size: 64, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1142, file: !4, line: 2017, baseType: !1150, size: 64, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !4, line: 183, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !4, line: 183, size: 128, elements: !1153)
!1153 = !{!1154}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1152, file: !4, line: 183, baseType: !1155, size: 128)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !4, line: 182, baseType: !1156)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !4, line: 182, size: 128, elements: !1157)
!1157 = !{!1158, !1159, !1160}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1156, file: !4, line: 182, baseType: !5, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1156, file: !4, line: 182, baseType: !5, size: 32, offset: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1156, file: !4, line: 182, baseType: !1107, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1142, file: !4, line: 2019, baseType: !837, size: 64, offset: 384)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1142, file: !4, line: 2020, baseType: !837, size: 64, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1142, file: !4, line: 2021, baseType: !837, size: 64, offset: 512)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1142, file: !4, line: 2022, baseType: !837, size: 64, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1142, file: !4, line: 2023, baseType: !837, size: 64, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !797, file: !4, line: 3400, baseType: !1167, size: 832)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !4, line: 2430, size: 832, elements: !1168)
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1167, file: !4, line: 2431, baseType: !833, size: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1167, file: !4, line: 2433, baseType: !837, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1167, file: !4, line: 2434, baseType: !837, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1167, file: !4, line: 2435, baseType: !837, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1167, file: !4, line: 2436, baseType: !837, size: 64, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1167, file: !4, line: 2437, baseType: !1150, size: 64, offset: 448)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1167, file: !4, line: 2438, baseType: !837, size: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1167, file: !4, line: 2440, baseType: !837, size: 64, offset: 576)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1167, file: !4, line: 2441, baseType: !837, size: 64, offset: 640)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1167, file: !4, line: 2443, baseType: !1179, size: 128, offset: 704)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !4, line: 182, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !4, line: 182, size: 128, elements: !1181)
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1180, file: !4, line: 182, baseType: !1155, size: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !797, file: !4, line: 3401, baseType: !1184, size: 320)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !4, line: 3327, size: 320, elements: !1185)
!1185 = !{!1186, !1187, !1194}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1184, file: !4, line: 3329, baseType: !833, size: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1184, file: !4, line: 3330, baseType: !1188, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !4, line: 3320, size: 192, elements: !1190)
!1190 = !{!1191, !1192, !1193}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1189, file: !4, line: 3322, baseType: !1188, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1189, file: !4, line: 3323, baseType: !1188, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1189, file: !4, line: 3324, baseType: !837, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1184, file: !4, line: 3331, baseType: !1188, size: 64, offset: 256)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !797, file: !4, line: 3402, baseType: !1196, size: 256)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !4, line: 1540, size: 256, elements: !1197)
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1196, file: !4, line: 1541, baseType: !833, size: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1196, file: !4, line: 1542, baseType: !1200, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !4, line: 1538, baseType: !1202)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !4, line: 1538, size: 192, elements: !1203)
!1203 = !{!1204}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1202, file: !4, line: 1538, baseType: !1205, size: 192)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !4, line: 1537, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !4, line: 1537, size: 192, elements: !1207)
!1207 = !{!1208, !1209, !1210}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1206, file: !4, line: 1537, baseType: !5, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1206, file: !4, line: 1537, baseType: !5, size: 32, offset: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1206, file: !4, line: 1537, baseType: !1211, size: 128, offset: 64)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1212, size: 128, elements: !311)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !4, line: 1535, baseType: !1213)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !4, line: 1532, size: 128, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1213, file: !4, line: 1533, baseType: !837, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1213, file: !4, line: 1534, baseType: !837, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !797, file: !4, line: 3403, baseType: !1218, size: 512)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !4, line: 1938, size: 512, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1223, !1229, !1233, !1234}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1218, file: !4, line: 1939, baseType: !833, size: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1218, file: !4, line: 1940, baseType: !894, size: 32, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1218, file: !4, line: 1941, baseType: !3, size: 32, offset: 224)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1218, file: !4, line: 1946, baseType: !1224, size: 32, offset: 256)
!1224 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !4, line: 1942, size: 32, elements: !1225)
!1225 = !{!1226, !1227, !1228}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1224, file: !4, line: 1943, baseType: !23, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1224, file: !4, line: 1944, baseType: !30, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1224, file: !4, line: 1945, baseType: !37, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1218, file: !4, line: 1950, baseType: !1230, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !794, line: 66, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !794, line: 65, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1218, file: !4, line: 1951, baseType: !1230, size: 64, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1218, file: !4, line: 1953, baseType: !1107, size: 64, offset: 448)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !797, file: !4, line: 3404, baseType: !1236, size: 1664)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !4, line: 3337, size: 1664, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1236, file: !4, line: 3338, baseType: !833, size: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1236, file: !4, line: 3341, baseType: !1240, size: 1472, offset: 192)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1241, line: 410, size: 1472, elements: !1242)
!1241 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1240, file: !1241, line: 412, baseType: !234, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1240, file: !1241, line: 413, baseType: !234, size: 32, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1240, file: !1241, line: 414, baseType: !234, size: 32, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1240, file: !1241, line: 415, baseType: !234, size: 32, offset: 96)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1240, file: !1241, line: 416, baseType: !234, size: 32, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1240, file: !1241, line: 417, baseType: !234, size: 32, offset: 160)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1240, file: !1241, line: 418, baseType: !233, size: 8, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1240, file: !1241, line: 419, baseType: !233, size: 8, offset: 200)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1240, file: !1241, line: 420, baseType: !308, size: 8, offset: 208)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1240, file: !1241, line: 421, baseType: !308, size: 8, offset: 216)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1240, file: !1241, line: 422, baseType: !308, size: 8, offset: 224)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1240, file: !1241, line: 423, baseType: !308, size: 8, offset: 232)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1240, file: !1241, line: 424, baseType: !308, size: 8, offset: 240)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1240, file: !1241, line: 425, baseType: !308, size: 8, offset: 248)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1240, file: !1241, line: 426, baseType: !308, size: 8, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1240, file: !1241, line: 427, baseType: !308, size: 8, offset: 264)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1240, file: !1241, line: 428, baseType: !308, size: 8, offset: 272)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1240, file: !1241, line: 429, baseType: !308, size: 8, offset: 280)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1240, file: !1241, line: 430, baseType: !308, size: 8, offset: 288)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1240, file: !1241, line: 431, baseType: !308, size: 8, offset: 296)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1240, file: !1241, line: 432, baseType: !308, size: 8, offset: 304)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1240, file: !1241, line: 433, baseType: !308, size: 8, offset: 312)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1240, file: !1241, line: 434, baseType: !308, size: 8, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1240, file: !1241, line: 435, baseType: !308, size: 8, offset: 328)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1240, file: !1241, line: 436, baseType: !308, size: 8, offset: 336)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1240, file: !1241, line: 437, baseType: !308, size: 8, offset: 344)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1240, file: !1241, line: 438, baseType: !308, size: 8, offset: 352)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1240, file: !1241, line: 439, baseType: !308, size: 8, offset: 360)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1240, file: !1241, line: 440, baseType: !308, size: 8, offset: 368)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1240, file: !1241, line: 441, baseType: !308, size: 8, offset: 376)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1240, file: !1241, line: 442, baseType: !308, size: 8, offset: 384)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1240, file: !1241, line: 443, baseType: !308, size: 8, offset: 392)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1240, file: !1241, line: 444, baseType: !308, size: 8, offset: 400)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1240, file: !1241, line: 445, baseType: !308, size: 8, offset: 408)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1240, file: !1241, line: 446, baseType: !308, size: 8, offset: 416)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1240, file: !1241, line: 447, baseType: !308, size: 8, offset: 424)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1240, file: !1241, line: 448, baseType: !308, size: 8, offset: 432)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1240, file: !1241, line: 449, baseType: !308, size: 8, offset: 440)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1240, file: !1241, line: 450, baseType: !308, size: 8, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1240, file: !1241, line: 451, baseType: !308, size: 8, offset: 456)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1240, file: !1241, line: 452, baseType: !308, size: 8, offset: 464)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1240, file: !1241, line: 453, baseType: !308, size: 8, offset: 472)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1240, file: !1241, line: 454, baseType: !308, size: 8, offset: 480)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1240, file: !1241, line: 455, baseType: !308, size: 8, offset: 488)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1240, file: !1241, line: 456, baseType: !308, size: 8, offset: 496)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1240, file: !1241, line: 457, baseType: !308, size: 8, offset: 504)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1240, file: !1241, line: 458, baseType: !308, size: 8, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1240, file: !1241, line: 459, baseType: !308, size: 8, offset: 520)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1240, file: !1241, line: 460, baseType: !308, size: 8, offset: 528)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1240, file: !1241, line: 461, baseType: !308, size: 8, offset: 536)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1240, file: !1241, line: 462, baseType: !308, size: 8, offset: 544)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1240, file: !1241, line: 463, baseType: !308, size: 8, offset: 552)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1240, file: !1241, line: 464, baseType: !308, size: 8, offset: 560)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1240, file: !1241, line: 465, baseType: !308, size: 8, offset: 568)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1240, file: !1241, line: 466, baseType: !308, size: 8, offset: 576)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1240, file: !1241, line: 467, baseType: !308, size: 8, offset: 584)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1240, file: !1241, line: 468, baseType: !308, size: 8, offset: 592)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1240, file: !1241, line: 469, baseType: !308, size: 8, offset: 600)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1240, file: !1241, line: 470, baseType: !308, size: 8, offset: 608)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1240, file: !1241, line: 471, baseType: !308, size: 8, offset: 616)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1240, file: !1241, line: 472, baseType: !308, size: 8, offset: 624)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1240, file: !1241, line: 473, baseType: !308, size: 8, offset: 632)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1240, file: !1241, line: 474, baseType: !308, size: 8, offset: 640)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1240, file: !1241, line: 475, baseType: !308, size: 8, offset: 648)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1240, file: !1241, line: 476, baseType: !308, size: 8, offset: 656)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1240, file: !1241, line: 477, baseType: !308, size: 8, offset: 664)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1240, file: !1241, line: 478, baseType: !308, size: 8, offset: 672)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1240, file: !1241, line: 479, baseType: !308, size: 8, offset: 680)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1240, file: !1241, line: 480, baseType: !308, size: 8, offset: 688)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1240, file: !1241, line: 481, baseType: !308, size: 8, offset: 696)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1240, file: !1241, line: 482, baseType: !308, size: 8, offset: 704)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1240, file: !1241, line: 483, baseType: !308, size: 8, offset: 712)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1240, file: !1241, line: 484, baseType: !308, size: 8, offset: 720)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1240, file: !1241, line: 485, baseType: !308, size: 8, offset: 728)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1240, file: !1241, line: 486, baseType: !308, size: 8, offset: 736)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1240, file: !1241, line: 487, baseType: !308, size: 8, offset: 744)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1240, file: !1241, line: 488, baseType: !308, size: 8, offset: 752)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1240, file: !1241, line: 489, baseType: !308, size: 8, offset: 760)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1240, file: !1241, line: 490, baseType: !308, size: 8, offset: 768)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1240, file: !1241, line: 491, baseType: !308, size: 8, offset: 776)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1240, file: !1241, line: 492, baseType: !308, size: 8, offset: 784)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1240, file: !1241, line: 493, baseType: !308, size: 8, offset: 792)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1240, file: !1241, line: 494, baseType: !308, size: 8, offset: 800)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1240, file: !1241, line: 495, baseType: !308, size: 8, offset: 808)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1240, file: !1241, line: 496, baseType: !308, size: 8, offset: 816)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1240, file: !1241, line: 497, baseType: !308, size: 8, offset: 824)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1240, file: !1241, line: 498, baseType: !308, size: 8, offset: 832)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1240, file: !1241, line: 499, baseType: !308, size: 8, offset: 840)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1240, file: !1241, line: 500, baseType: !308, size: 8, offset: 848)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1240, file: !1241, line: 501, baseType: !308, size: 8, offset: 856)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1240, file: !1241, line: 502, baseType: !308, size: 8, offset: 864)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1240, file: !1241, line: 503, baseType: !308, size: 8, offset: 872)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1240, file: !1241, line: 504, baseType: !308, size: 8, offset: 880)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1240, file: !1241, line: 505, baseType: !308, size: 8, offset: 888)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1240, file: !1241, line: 506, baseType: !308, size: 8, offset: 896)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1240, file: !1241, line: 507, baseType: !308, size: 8, offset: 904)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1240, file: !1241, line: 508, baseType: !308, size: 8, offset: 912)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1240, file: !1241, line: 509, baseType: !308, size: 8, offset: 920)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1240, file: !1241, line: 510, baseType: !308, size: 8, offset: 928)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1240, file: !1241, line: 511, baseType: !308, size: 8, offset: 936)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1240, file: !1241, line: 512, baseType: !308, size: 8, offset: 944)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1240, file: !1241, line: 513, baseType: !308, size: 8, offset: 952)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1240, file: !1241, line: 514, baseType: !308, size: 8, offset: 960)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1240, file: !1241, line: 515, baseType: !308, size: 8, offset: 968)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1240, file: !1241, line: 516, baseType: !308, size: 8, offset: 976)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1240, file: !1241, line: 517, baseType: !308, size: 8, offset: 984)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1240, file: !1241, line: 518, baseType: !308, size: 8, offset: 992)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1240, file: !1241, line: 519, baseType: !308, size: 8, offset: 1000)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1240, file: !1241, line: 520, baseType: !308, size: 8, offset: 1008)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1240, file: !1241, line: 521, baseType: !308, size: 8, offset: 1016)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1240, file: !1241, line: 522, baseType: !308, size: 8, offset: 1024)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1240, file: !1241, line: 523, baseType: !308, size: 8, offset: 1032)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1240, file: !1241, line: 524, baseType: !308, size: 8, offset: 1040)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1240, file: !1241, line: 525, baseType: !308, size: 8, offset: 1048)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1240, file: !1241, line: 526, baseType: !308, size: 8, offset: 1056)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1240, file: !1241, line: 527, baseType: !308, size: 8, offset: 1064)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1240, file: !1241, line: 528, baseType: !308, size: 8, offset: 1072)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1240, file: !1241, line: 529, baseType: !308, size: 8, offset: 1080)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1240, file: !1241, line: 530, baseType: !308, size: 8, offset: 1088)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1240, file: !1241, line: 531, baseType: !308, size: 8, offset: 1096)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1240, file: !1241, line: 532, baseType: !308, size: 8, offset: 1104)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1240, file: !1241, line: 533, baseType: !308, size: 8, offset: 1112)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1240, file: !1241, line: 534, baseType: !308, size: 8, offset: 1120)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1240, file: !1241, line: 535, baseType: !308, size: 8, offset: 1128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1240, file: !1241, line: 536, baseType: !308, size: 8, offset: 1136)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1240, file: !1241, line: 537, baseType: !308, size: 8, offset: 1144)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1240, file: !1241, line: 538, baseType: !308, size: 8, offset: 1152)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1240, file: !1241, line: 539, baseType: !308, size: 8, offset: 1160)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1240, file: !1241, line: 540, baseType: !308, size: 8, offset: 1168)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1240, file: !1241, line: 541, baseType: !308, size: 8, offset: 1176)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1240, file: !1241, line: 542, baseType: !308, size: 8, offset: 1184)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1240, file: !1241, line: 543, baseType: !308, size: 8, offset: 1192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1240, file: !1241, line: 544, baseType: !308, size: 8, offset: 1200)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1240, file: !1241, line: 545, baseType: !308, size: 8, offset: 1208)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1240, file: !1241, line: 546, baseType: !308, size: 8, offset: 1216)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1240, file: !1241, line: 547, baseType: !308, size: 8, offset: 1224)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1240, file: !1241, line: 548, baseType: !308, size: 8, offset: 1232)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1240, file: !1241, line: 549, baseType: !308, size: 8, offset: 1240)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1240, file: !1241, line: 550, baseType: !308, size: 8, offset: 1248)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1240, file: !1241, line: 551, baseType: !308, size: 8, offset: 1256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1240, file: !1241, line: 552, baseType: !308, size: 8, offset: 1264)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1240, file: !1241, line: 553, baseType: !308, size: 8, offset: 1272)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1240, file: !1241, line: 554, baseType: !308, size: 8, offset: 1280)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1240, file: !1241, line: 555, baseType: !308, size: 8, offset: 1288)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1240, file: !1241, line: 556, baseType: !308, size: 8, offset: 1296)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1240, file: !1241, line: 557, baseType: !308, size: 8, offset: 1304)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1240, file: !1241, line: 558, baseType: !308, size: 8, offset: 1312)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1240, file: !1241, line: 559, baseType: !308, size: 8, offset: 1320)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1240, file: !1241, line: 560, baseType: !308, size: 8, offset: 1328)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1240, file: !1241, line: 561, baseType: !308, size: 8, offset: 1336)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1240, file: !1241, line: 562, baseType: !308, size: 8, offset: 1344)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1240, file: !1241, line: 563, baseType: !308, size: 8, offset: 1352)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1240, file: !1241, line: 564, baseType: !308, size: 8, offset: 1360)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1240, file: !1241, line: 565, baseType: !308, size: 8, offset: 1368)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1240, file: !1241, line: 566, baseType: !308, size: 8, offset: 1376)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1240, file: !1241, line: 567, baseType: !308, size: 8, offset: 1384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1240, file: !1241, line: 568, baseType: !308, size: 8, offset: 1392)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1240, file: !1241, line: 569, baseType: !308, size: 8, offset: 1400)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1240, file: !1241, line: 570, baseType: !308, size: 8, offset: 1408)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1240, file: !1241, line: 571, baseType: !308, size: 8, offset: 1416)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1240, file: !1241, line: 572, baseType: !308, size: 8, offset: 1424)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1240, file: !1241, line: 573, baseType: !308, size: 8, offset: 1432)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1240, file: !1241, line: 574, baseType: !308, size: 8, offset: 1440)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !797, file: !4, line: 3405, baseType: !1407, size: 384)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !4, line: 3352, size: 384, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1407, file: !4, line: 3353, baseType: !833, size: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1407, file: !4, line: 3356, baseType: !1411, size: 192, offset: 192)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1241, line: 578, size: 192, elements: !1412)
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1411, file: !1241, line: 580, baseType: !234, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1411, file: !1241, line: 581, baseType: !234, size: 32, offset: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1411, file: !1241, line: 582, baseType: !234, size: 32, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1411, file: !1241, line: 583, baseType: !234, size: 32, offset: 96)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1411, file: !1241, line: 584, baseType: !233, size: 8, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1411, file: !1241, line: 585, baseType: !233, size: 8, offset: 136)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1411, file: !1241, line: 586, baseType: !233, size: 8, offset: 144)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1411, file: !1241, line: 587, baseType: !233, size: 8, offset: 152)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1411, file: !1241, line: 588, baseType: !233, size: 8, offset: 160)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1411, file: !1241, line: 589, baseType: !233, size: 8, offset: 168)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1411, file: !1241, line: 590, baseType: !233, size: 8, offset: 176)
!1424 = !{!1425}
!1425 = !DILocalVariable(name: "cst", arg: 1, scope: !790, file: !1, line: 115, type: !793)
!1426 = !DILocation(line: 0, scope: !790)
!1427 = !DILocation(line: 119, column: 10, scope: !790)
!1428 = !DILocation(line: 119, column: 3, scope: !790)
!1429 = distinct !DISubprogram(name: "double_int_fits_in_uhwi_p", scope: !1, file: !1, line: 125, type: !1430, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1432)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!233, !710}
!1432 = !{!1433}
!1433 = !DILocalVariable(name: "cst", arg: 1, scope: !1429, file: !1, line: 125, type: !710)
!1434 = !DILocation(line: 127, column: 19, scope: !1429)
!1435 = !DILocation(line: 127, column: 10, scope: !1429)
!1436 = !DILocation(line: 127, column: 3, scope: !1429)
!1437 = distinct !DISubprogram(name: "double_int_fits_in_shwi_p", scope: !1, file: !1, line: 133, type: !1430, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1438)
!1438 = !{!1439}
!1439 = !DILocalVariable(name: "cst", arg: 1, scope: !1437, file: !1, line: 133, type: !710)
!1440 = !DILocation(line: 135, column: 16, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1437, file: !1, line: 135, column: 7)
!1442 = !DILocation(line: 135, column: 7, scope: !1437)
!1443 = !DILocation(line: 136, column: 12, scope: !1441)
!1444 = !DILocation(line: 136, column: 5, scope: !1441)
!1445 = !DILocation(line: 137, column: 21, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !1, line: 137, column: 12)
!1447 = !DILocation(line: 137, column: 12, scope: !1441)
!1448 = !DILocation(line: 138, column: 12, scope: !1446)
!1449 = !DILocation(line: 138, column: 5, scope: !1446)
!1450 = !DILocation(line: 0, scope: !1441)
!1451 = !DILocation(line: 141, column: 1, scope: !1437)
!1452 = distinct !DISubprogram(name: "double_int_fits_in_hwi_p", scope: !1, file: !1, line: 147, type: !1453, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1455)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!233, !710, !233}
!1455 = !{!1456, !1457}
!1456 = !DILocalVariable(name: "cst", arg: 1, scope: !1452, file: !1, line: 147, type: !710)
!1457 = !DILocalVariable(name: "uns", arg: 2, scope: !1452, file: !1, line: 147, type: !233)
!1458 = !DILocation(line: 0, scope: !1452)
!1459 = !DILocation(line: 149, column: 7, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1452, file: !1, line: 149, column: 7)
!1461 = !DILocation(line: 149, column: 7, scope: !1452)
!1462 = !DILocation(line: 150, column: 12, scope: !1460)
!1463 = !DILocation(line: 150, column: 5, scope: !1460)
!1464 = !DILocation(line: 152, column: 12, scope: !1460)
!1465 = !DILocation(line: 152, column: 5, scope: !1460)
!1466 = !DILocation(line: 0, scope: !1460)
!1467 = !DILocation(line: 153, column: 1, scope: !1452)
!1468 = distinct !DISubprogram(name: "double_int_to_shwi", scope: !1, file: !1, line: 159, type: !1469, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1471)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!242, !710}
!1471 = !{!1472}
!1472 = !DILocalVariable(name: "cst", arg: 1, scope: !1468, file: !1, line: 159, type: !710)
!1473 = !DILocation(line: 161, column: 3, scope: !1468)
!1474 = distinct !DISubprogram(name: "double_int_to_uhwi", scope: !1, file: !1, line: 168, type: !1475, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1477)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!241, !710}
!1477 = !{!1478}
!1478 = !DILocalVariable(name: "cst", arg: 1, scope: !1474, file: !1, line: 168, type: !710)
!1479 = !DILocation(line: 170, column: 3, scope: !1474)
!1480 = distinct !DISubprogram(name: "double_int_mul", scope: !1, file: !1, line: 176, type: !1481, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!710, !710, !710}
!1483 = !{!1484, !1485, !1486}
!1484 = !DILocalVariable(name: "a", arg: 1, scope: !1480, file: !1, line: 176, type: !710)
!1485 = !DILocalVariable(name: "b", arg: 2, scope: !1480, file: !1, line: 176, type: !710)
!1486 = !DILocalVariable(name: "ret", scope: !1480, file: !1, line: 178, type: !710)
!1487 = !DILocation(line: 179, column: 3, scope: !1480)
!1488 = !DILocation(line: 180, column: 3, scope: !1480)
!1489 = distinct !DISubprogram(name: "double_int_add", scope: !1, file: !1, line: 186, type: !1481, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1490)
!1490 = !{!1491, !1492, !1493}
!1491 = !DILocalVariable(name: "a", arg: 1, scope: !1489, file: !1, line: 186, type: !710)
!1492 = !DILocalVariable(name: "b", arg: 2, scope: !1489, file: !1, line: 186, type: !710)
!1493 = !DILocalVariable(name: "ret", scope: !1489, file: !1, line: 188, type: !710)
!1494 = !DILocation(line: 189, column: 3, scope: !1489)
!1495 = !DILocation(line: 190, column: 3, scope: !1489)
!1496 = distinct !DISubprogram(name: "double_int_neg", scope: !1, file: !1, line: 196, type: !1497, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!710, !710}
!1499 = !{!1500, !1501}
!1500 = !DILocalVariable(name: "a", arg: 1, scope: !1496, file: !1, line: 196, type: !710)
!1501 = !DILocalVariable(name: "ret", scope: !1496, file: !1, line: 198, type: !710)
!1502 = !DILocation(line: 199, column: 35, scope: !1496)
!1503 = !DILocation(line: 199, column: 45, scope: !1496)
!1504 = !DILocation(line: 199, column: 3, scope: !1496)
!1505 = !DILocation(line: 200, column: 3, scope: !1496)
!1506 = distinct !DISubprogram(name: "double_int_divmod", scope: !1, file: !1, line: 209, type: !1507, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1510)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!710, !710, !710, !233, !5, !1509}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1516}
!1511 = !DILocalVariable(name: "a", arg: 1, scope: !1506, file: !1, line: 209, type: !710)
!1512 = !DILocalVariable(name: "b", arg: 2, scope: !1506, file: !1, line: 209, type: !710)
!1513 = !DILocalVariable(name: "uns", arg: 3, scope: !1506, file: !1, line: 209, type: !233)
!1514 = !DILocalVariable(name: "code", arg: 4, scope: !1506, file: !1, line: 209, type: !5)
!1515 = !DILocalVariable(name: "mod", arg: 5, scope: !1506, file: !1, line: 210, type: !1509)
!1516 = !DILocalVariable(name: "ret", scope: !1506, file: !1, line: 212, type: !710)
!1517 = !DILocation(line: 0, scope: !1506)
!1518 = !DILocation(line: 214, column: 48, scope: !1506)
!1519 = !DILocation(line: 215, column: 24, scope: !1506)
!1520 = !DILocation(line: 215, column: 34, scope: !1506)
!1521 = !DILocation(line: 216, column: 10, scope: !1506)
!1522 = !DILocation(line: 216, column: 21, scope: !1506)
!1523 = !DILocation(line: 214, column: 3, scope: !1506)
!1524 = !DILocation(line: 217, column: 3, scope: !1506)
!1525 = distinct !DISubprogram(name: "double_int_sdivmod", scope: !1, file: !1, line: 223, type: !1526, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1528)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!710, !710, !710, !5, !1509}
!1528 = !{!1529, !1530, !1531, !1532}
!1529 = !DILocalVariable(name: "a", arg: 1, scope: !1525, file: !1, line: 223, type: !710)
!1530 = !DILocalVariable(name: "b", arg: 2, scope: !1525, file: !1, line: 223, type: !710)
!1531 = !DILocalVariable(name: "code", arg: 3, scope: !1525, file: !1, line: 223, type: !5)
!1532 = !DILocalVariable(name: "mod", arg: 4, scope: !1525, file: !1, line: 223, type: !1509)
!1533 = !DILocation(line: 0, scope: !1525)
!1534 = !DILocation(line: 225, column: 10, scope: !1525)
!1535 = !DILocation(line: 225, column: 3, scope: !1525)
!1536 = distinct !DISubprogram(name: "double_int_udivmod", scope: !1, file: !1, line: 231, type: !1526, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1537)
!1537 = !{!1538, !1539, !1540, !1541}
!1538 = !DILocalVariable(name: "a", arg: 1, scope: !1536, file: !1, line: 231, type: !710)
!1539 = !DILocalVariable(name: "b", arg: 2, scope: !1536, file: !1, line: 231, type: !710)
!1540 = !DILocalVariable(name: "code", arg: 3, scope: !1536, file: !1, line: 231, type: !5)
!1541 = !DILocalVariable(name: "mod", arg: 4, scope: !1536, file: !1, line: 231, type: !1509)
!1542 = !DILocation(line: 0, scope: !1536)
!1543 = !DILocation(line: 233, column: 10, scope: !1536)
!1544 = !DILocation(line: 233, column: 3, scope: !1536)
!1545 = distinct !DISubprogram(name: "double_int_div", scope: !1, file: !1, line: 241, type: !1546, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!710, !710, !710, !233, !5}
!1548 = !{!1549, !1550, !1551, !1552, !1553}
!1549 = !DILocalVariable(name: "a", arg: 1, scope: !1545, file: !1, line: 241, type: !710)
!1550 = !DILocalVariable(name: "b", arg: 2, scope: !1545, file: !1, line: 241, type: !710)
!1551 = !DILocalVariable(name: "uns", arg: 3, scope: !1545, file: !1, line: 241, type: !233)
!1552 = !DILocalVariable(name: "code", arg: 4, scope: !1545, file: !1, line: 241, type: !5)
!1553 = !DILocalVariable(name: "mod", scope: !1545, file: !1, line: 243, type: !710)
!1554 = !DILocation(line: 0, scope: !1545)
!1555 = !DILocation(line: 243, column: 3, scope: !1545)
!1556 = !DILocation(line: 245, column: 10, scope: !1545)
!1557 = !DILocation(line: 246, column: 1, scope: !1545)
!1558 = distinct !DISubprogram(name: "double_int_sdiv", scope: !1, file: !1, line: 251, type: !1559, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1561)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!710, !710, !710, !5}
!1561 = !{!1562, !1563, !1564}
!1562 = !DILocalVariable(name: "a", arg: 1, scope: !1558, file: !1, line: 251, type: !710)
!1563 = !DILocalVariable(name: "b", arg: 2, scope: !1558, file: !1, line: 251, type: !710)
!1564 = !DILocalVariable(name: "code", arg: 3, scope: !1558, file: !1, line: 251, type: !5)
!1565 = !DILocation(line: 0, scope: !1558)
!1566 = !DILocation(line: 253, column: 10, scope: !1558)
!1567 = !DILocation(line: 253, column: 3, scope: !1558)
!1568 = distinct !DISubprogram(name: "double_int_udiv", scope: !1, file: !1, line: 259, type: !1559, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1569)
!1569 = !{!1570, !1571, !1572}
!1570 = !DILocalVariable(name: "a", arg: 1, scope: !1568, file: !1, line: 259, type: !710)
!1571 = !DILocalVariable(name: "b", arg: 2, scope: !1568, file: !1, line: 259, type: !710)
!1572 = !DILocalVariable(name: "code", arg: 3, scope: !1568, file: !1, line: 259, type: !5)
!1573 = !DILocation(line: 0, scope: !1568)
!1574 = !DILocation(line: 261, column: 10, scope: !1568)
!1575 = !DILocation(line: 261, column: 3, scope: !1568)
!1576 = distinct !DISubprogram(name: "double_int_mod", scope: !1, file: !1, line: 269, type: !1546, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1577)
!1577 = !{!1578, !1579, !1580, !1581, !1582}
!1578 = !DILocalVariable(name: "a", arg: 1, scope: !1576, file: !1, line: 269, type: !710)
!1579 = !DILocalVariable(name: "b", arg: 2, scope: !1576, file: !1, line: 269, type: !710)
!1580 = !DILocalVariable(name: "uns", arg: 3, scope: !1576, file: !1, line: 269, type: !233)
!1581 = !DILocalVariable(name: "code", arg: 4, scope: !1576, file: !1, line: 269, type: !5)
!1582 = !DILocalVariable(name: "mod", scope: !1576, file: !1, line: 271, type: !710)
!1583 = !DILocation(line: 0, scope: !1576)
!1584 = !DILocation(line: 273, column: 3, scope: !1576)
!1585 = !DILocation(line: 274, column: 3, scope: !1576)
!1586 = distinct !DISubprogram(name: "double_int_smod", scope: !1, file: !1, line: 280, type: !1559, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1587)
!1587 = !{!1588, !1589, !1590}
!1588 = !DILocalVariable(name: "a", arg: 1, scope: !1586, file: !1, line: 280, type: !710)
!1589 = !DILocalVariable(name: "b", arg: 2, scope: !1586, file: !1, line: 280, type: !710)
!1590 = !DILocalVariable(name: "code", arg: 3, scope: !1586, file: !1, line: 280, type: !5)
!1591 = !DILocation(line: 0, scope: !1586)
!1592 = !DILocation(line: 282, column: 10, scope: !1586)
!1593 = !DILocation(line: 282, column: 3, scope: !1586)
!1594 = distinct !DISubprogram(name: "double_int_umod", scope: !1, file: !1, line: 288, type: !1559, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1595)
!1595 = !{!1596, !1597, !1598}
!1596 = !DILocalVariable(name: "a", arg: 1, scope: !1594, file: !1, line: 288, type: !710)
!1597 = !DILocalVariable(name: "b", arg: 2, scope: !1594, file: !1, line: 288, type: !710)
!1598 = !DILocalVariable(name: "code", arg: 3, scope: !1594, file: !1, line: 288, type: !5)
!1599 = !DILocation(line: 0, scope: !1594)
!1600 = !DILocation(line: 290, column: 10, scope: !1594)
!1601 = !DILocation(line: 290, column: 3, scope: !1594)
!1602 = distinct !DISubprogram(name: "double_int_to_tree", scope: !1, file: !1, line: 297, type: !1603, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1605)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!838, !837, !710}
!1605 = !{!1606, !1607}
!1606 = !DILocalVariable(name: "type", arg: 1, scope: !1602, file: !1, line: 297, type: !837)
!1607 = !DILocalVariable(name: "cst", arg: 2, scope: !1602, file: !1, line: 297, type: !710)
!1608 = !DILocation(line: 0, scope: !1602)
!1609 = !DILocation(line: 299, column: 9, scope: !1602)
!1610 = !DILocation(line: 299, column: 30, scope: !1602)
!1611 = !DILocation(line: 299, column: 53, scope: !1602)
!1612 = !DILocation(line: 301, column: 40, scope: !1602)
!1613 = !DILocation(line: 301, column: 49, scope: !1602)
!1614 = !DILocation(line: 301, column: 10, scope: !1602)
!1615 = !DILocation(line: 301, column: 3, scope: !1602)
!1616 = distinct !DISubprogram(name: "double_int_fits_to_tree_p", scope: !1, file: !1, line: 308, type: !1617, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1619)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!233, !793, !710}
!1619 = !{!1620, !1621, !1622}
!1620 = !DILocalVariable(name: "type", arg: 1, scope: !1616, file: !1, line: 308, type: !793)
!1621 = !DILocalVariable(name: "cst", arg: 2, scope: !1616, file: !1, line: 308, type: !710)
!1622 = !DILocalVariable(name: "ext", scope: !1616, file: !1, line: 310, type: !710)
!1623 = !DILocation(line: 0, scope: !1616)
!1624 = !DILocation(line: 311, column: 8, scope: !1616)
!1625 = !DILocation(line: 312, column: 8, scope: !1616)
!1626 = !DILocation(line: 310, column: 20, scope: !1616)
!1627 = !DILocation(line: 314, column: 10, scope: !1616)
!1628 = !DILocation(line: 314, column: 3, scope: !1616)
!1629 = distinct !DISubprogram(name: "double_int_equal_p", scope: !711, file: !711, line: 176, type: !1630, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1632)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!233, !710, !710}
!1632 = !{!1633, !1634}
!1633 = !DILocalVariable(name: "cst1", arg: 1, scope: !1629, file: !711, line: 176, type: !710)
!1634 = !DILocalVariable(name: "cst2", arg: 2, scope: !1629, file: !711, line: 176, type: !710)
!1635 = !DILocation(line: 178, column: 19, scope: !1629)
!1636 = !DILocation(line: 178, column: 31, scope: !1629)
!1637 = !DILocation(line: 178, column: 44, scope: !1629)
!1638 = !DILocation(line: 178, column: 3, scope: !1629)
!1639 = distinct !DISubprogram(name: "double_int_negative_p", scope: !1, file: !1, line: 321, type: !1430, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1640)
!1640 = !{!1641}
!1641 = !DILocalVariable(name: "cst", arg: 1, scope: !1639, file: !1, line: 321, type: !710)
!1642 = !DILocation(line: 323, column: 10, scope: !1639)
!1643 = !DILocation(line: 323, column: 3, scope: !1639)
!1644 = distinct !DISubprogram(name: "double_int_cmp", scope: !1, file: !1, line: 330, type: !1645, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!234, !710, !710, !233}
!1647 = !{!1648, !1649, !1650}
!1648 = !DILocalVariable(name: "a", arg: 1, scope: !1644, file: !1, line: 330, type: !710)
!1649 = !DILocalVariable(name: "b", arg: 2, scope: !1644, file: !1, line: 330, type: !710)
!1650 = !DILocalVariable(name: "uns", arg: 3, scope: !1644, file: !1, line: 330, type: !233)
!1651 = !DILocation(line: 0, scope: !1644)
!1652 = !DILocation(line: 332, column: 7, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1644, file: !1, line: 332, column: 7)
!1654 = !DILocation(line: 332, column: 7, scope: !1644)
!1655 = !DILocation(line: 333, column: 12, scope: !1653)
!1656 = !DILocation(line: 333, column: 5, scope: !1653)
!1657 = !DILocation(line: 335, column: 12, scope: !1653)
!1658 = !DILocation(line: 335, column: 5, scope: !1653)
!1659 = !DILocation(line: 0, scope: !1653)
!1660 = !DILocation(line: 336, column: 1, scope: !1644)
!1661 = distinct !DISubprogram(name: "double_int_ucmp", scope: !1, file: !1, line: 342, type: !1662, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1664)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!234, !710, !710}
!1664 = !{!1665, !1666}
!1665 = !DILocalVariable(name: "a", arg: 1, scope: !1661, file: !1, line: 342, type: !710)
!1666 = !DILocalVariable(name: "b", arg: 2, scope: !1661, file: !1, line: 342, type: !710)
!1667 = !DILocation(line: 344, column: 39, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 344, column: 7)
!1669 = !DILocation(line: 344, column: 7, scope: !1661)
!1670 = !DILocation(line: 346, column: 39, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 346, column: 7)
!1672 = !DILocation(line: 346, column: 7, scope: !1661)
!1673 = !DILocation(line: 348, column: 13, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 348, column: 7)
!1675 = !DILocation(line: 348, column: 7, scope: !1661)
!1676 = !DILocation(line: 350, column: 13, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 350, column: 7)
!1678 = !DILocation(line: 0, scope: !1661)
!1679 = !DILocation(line: 354, column: 1, scope: !1661)
!1680 = distinct !DISubprogram(name: "double_int_scmp", scope: !1, file: !1, line: 360, type: !1662, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1681)
!1681 = !{!1682, !1683}
!1682 = !DILocalVariable(name: "a", arg: 1, scope: !1680, file: !1, line: 360, type: !710)
!1683 = !DILocalVariable(name: "b", arg: 2, scope: !1680, file: !1, line: 360, type: !710)
!1684 = !DILocation(line: 362, column: 14, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 362, column: 7)
!1686 = !DILocation(line: 362, column: 7, scope: !1680)
!1687 = !DILocation(line: 364, column: 14, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 364, column: 7)
!1689 = !DILocation(line: 364, column: 7, scope: !1680)
!1690 = !DILocation(line: 366, column: 13, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 366, column: 7)
!1692 = !DILocation(line: 366, column: 7, scope: !1680)
!1693 = !DILocation(line: 368, column: 13, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1680, file: !1, line: 368, column: 7)
!1695 = !DILocation(line: 0, scope: !1680)
!1696 = !DILocation(line: 372, column: 1, scope: !1680)
!1697 = distinct !DISubprogram(name: "dump_double_int", scope: !1, file: !1, line: 394, type: !1698, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1700)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{null, !277, !710, !233}
!1700 = !{!1701, !1702, !1703, !1704, !1708, !1709}
!1701 = !DILocalVariable(name: "file", arg: 1, scope: !1697, file: !1, line: 394, type: !277)
!1702 = !DILocalVariable(name: "cst", arg: 2, scope: !1697, file: !1, line: 394, type: !710)
!1703 = !DILocalVariable(name: "uns", arg: 3, scope: !1697, file: !1, line: 394, type: !233)
!1704 = !DILocalVariable(name: "digits", scope: !1697, file: !1, line: 396, type: !1705)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 3200, elements: !1706)
!1706 = !{!1707}
!1707 = !DISubrange(count: 100)
!1708 = !DILocalVariable(name: "n", scope: !1697, file: !1, line: 396, type: !5)
!1709 = !DILocalVariable(name: "i", scope: !1697, file: !1, line: 397, type: !234)
!1710 = !DILocation(line: 0, scope: !1697)
!1711 = !DILocation(line: 396, column: 3, scope: !1697)
!1712 = !DILocation(line: 396, column: 12, scope: !1697)
!1713 = !DILocation(line: 399, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1697, file: !1, line: 399, column: 7)
!1715 = !DILocation(line: 399, column: 7, scope: !1697)
!1716 = !DILocation(line: 401, column: 7, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1714, file: !1, line: 400, column: 5)
!1718 = !DILocation(line: 402, column: 7, scope: !1717)
!1719 = !DILocation(line: 405, column: 8, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1697, file: !1, line: 405, column: 7)
!1721 = !DILocation(line: 405, column: 12, scope: !1720)
!1722 = !DILocation(line: 405, column: 15, scope: !1720)
!1723 = !DILocation(line: 405, column: 7, scope: !1697)
!1724 = !DILocation(line: 407, column: 7, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1720, file: !1, line: 406, column: 5)
!1726 = !DILocation(line: 408, column: 13, scope: !1725)
!1727 = !DILocation(line: 409, column: 5, scope: !1725)
!1728 = !DILocation(line: 411, column: 8, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1697, file: !1, line: 411, column: 3)
!1730 = !DILocation(line: 0, scope: !1729)
!1731 = !DILocation(line: 411, column: 16, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1729, file: !1, line: 411, column: 3)
!1733 = !DILocation(line: 411, column: 15, scope: !1732)
!1734 = !DILocation(line: 411, column: 3, scope: !1729)
!1735 = !DILocation(line: 412, column: 17, scope: !1732)
!1736 = !DILocation(line: 412, column: 5, scope: !1732)
!1737 = !DILocation(line: 412, column: 15, scope: !1732)
!1738 = !DILocation(line: 411, column: 42, scope: !1732)
!1739 = !DILocation(line: 411, column: 3, scope: !1732)
!1740 = distinct !{!1740, !1734, !1741}
!1741 = !DILocation(line: 412, column: 49, scope: !1729)
!1742 = !DILocation(line: 413, column: 8, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1697, file: !1, line: 413, column: 3)
!1744 = !DILocation(line: 0, scope: !1743)
!1745 = !DILocation(line: 413, column: 21, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1743, file: !1, line: 413, column: 3)
!1747 = !DILocation(line: 413, column: 3, scope: !1743)
!1748 = !DILocation(line: 414, column: 26, scope: !1746)
!1749 = !DILocation(line: 414, column: 5, scope: !1746)
!1750 = !DILocation(line: 413, column: 3, scope: !1746)
!1751 = distinct !{!1751, !1747, !1752}
!1752 = !DILocation(line: 414, column: 35, scope: !1743)
!1753 = !DILocation(line: 415, column: 1, scope: !1697)
!1754 = distinct !DISubprogram(name: "double_int_zero_p", scope: !711, file: !711, line: 152, type: !1430, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1755)
!1755 = !{!1756}
!1756 = !DILocalVariable(name: "cst", arg: 1, scope: !1754, file: !711, line: 152, type: !710)
!1757 = !DILocation(line: 154, column: 23, scope: !1754)
!1758 = !DILocation(line: 154, column: 10, scope: !1754)
!1759 = !DILocation(line: 154, column: 3, scope: !1754)
!1760 = distinct !DISubprogram(name: "double_int_split_digit", scope: !1, file: !1, line: 377, type: !1761, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!5, !1509, !5}
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769}
!1764 = !DILocalVariable(name: "cst", arg: 1, scope: !1760, file: !1, line: 377, type: !1509)
!1765 = !DILocalVariable(name: "base", arg: 2, scope: !1760, file: !1, line: 377, type: !5)
!1766 = !DILocalVariable(name: "resl", scope: !1760, file: !1, line: 379, type: !241)
!1767 = !DILocalVariable(name: "reml", scope: !1760, file: !1, line: 379, type: !241)
!1768 = !DILocalVariable(name: "resh", scope: !1760, file: !1, line: 380, type: !242)
!1769 = !DILocalVariable(name: "remh", scope: !1760, file: !1, line: 380, type: !242)
!1770 = !DILocation(line: 0, scope: !1760)
!1771 = !DILocation(line: 379, column: 3, scope: !1760)
!1772 = !DILocation(line: 380, column: 3, scope: !1760)
!1773 = !DILocation(line: 382, column: 52, scope: !1760)
!1774 = !DILocation(line: 382, column: 62, scope: !1760)
!1775 = !DILocation(line: 382, column: 3, scope: !1760)
!1776 = !DILocation(line: 384, column: 15, scope: !1760)
!1777 = !DILocation(line: 384, column: 13, scope: !1760)
!1778 = !DILocation(line: 385, column: 14, scope: !1760)
!1779 = !DILocation(line: 385, column: 12, scope: !1760)
!1780 = !DILocation(line: 387, column: 10, scope: !1760)
!1781 = !DILocation(line: 388, column: 1, scope: !1760)
!1782 = !DILocation(line: 387, column: 3, scope: !1760)
!1783 = distinct !DISubprogram(name: "mpz_set_double_int", scope: !1, file: !1, line: 422, type: !1784, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1796)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !1786, !710, !233}
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mpz_struct", file: !1788, line: 71, baseType: !1789)
!1788 = !DIFile(filename: "./mini-gmp.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1788, line: 63, size: 128, elements: !1790)
!1790 = !{!1791, !1792, !1793}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_alloc", scope: !1789, file: !1788, line: 65, baseType: !234, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_size", scope: !1789, file: !1788, line: 67, baseType: !234, size: 32, offset: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_d", scope: !1789, file: !1788, line: 70, baseType: !1794, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_limb_t", file: !1788, line: 56, baseType: !241)
!1796 = !{!1797, !1798, !1799, !1800, !1801}
!1797 = !DILocalVariable(name: "result", arg: 1, scope: !1783, file: !1, line: 422, type: !1786)
!1798 = !DILocalVariable(name: "val", arg: 2, scope: !1783, file: !1, line: 422, type: !710)
!1799 = !DILocalVariable(name: "uns", arg: 3, scope: !1783, file: !1, line: 422, type: !233)
!1800 = !DILocalVariable(name: "negate", scope: !1783, file: !1, line: 424, type: !233)
!1801 = !DILocalVariable(name: "vp", scope: !1783, file: !1, line: 425, type: !1802)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 128, elements: !1803)
!1803 = !{!1804}
!1804 = !DISubrange(count: 2)
!1805 = !DILocation(line: 0, scope: !1783)
!1806 = !DILocation(line: 425, column: 3, scope: !1783)
!1807 = !DILocation(line: 425, column: 26, scope: !1783)
!1808 = !DILocation(line: 427, column: 8, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1783, file: !1, line: 427, column: 7)
!1810 = !DILocation(line: 427, column: 12, scope: !1809)
!1811 = !DILocation(line: 427, column: 15, scope: !1809)
!1812 = !DILocation(line: 427, column: 7, scope: !1783)
!1813 = !DILocation(line: 430, column: 13, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1809, file: !1, line: 428, column: 5)
!1815 = !DILocation(line: 433, column: 15, scope: !1783)
!1816 = !DILocation(line: 434, column: 40, scope: !1783)
!1817 = !DILocation(line: 431, column: 5, scope: !1814)
!1818 = !DILocation(line: 433, column: 3, scope: !1783)
!1819 = !DILocation(line: 433, column: 9, scope: !1783)
!1820 = !DILocation(line: 434, column: 3, scope: !1783)
!1821 = !DILocation(line: 434, column: 9, scope: !1783)
!1822 = !DILocation(line: 435, column: 3, scope: !1783)
!1823 = !DILocation(line: 437, column: 7, scope: !1783)
!1824 = !DILocation(line: 438, column: 5, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1783, file: !1, line: 437, column: 7)
!1826 = !DILocation(line: 439, column: 1, scope: !1783)
!1827 = distinct !DISubprogram(name: "mpz_get_double_int", scope: !1, file: !1, line: 446, type: !1828, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1830)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!710, !793, !1786, !233}
!1830 = !{!1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1843}
!1831 = !DILocalVariable(name: "type", arg: 1, scope: !1827, file: !1, line: 446, type: !793)
!1832 = !DILocalVariable(name: "val", arg: 2, scope: !1827, file: !1, line: 446, type: !1786)
!1833 = !DILocalVariable(name: "wrap", arg: 3, scope: !1827, file: !1, line: 446, type: !233)
!1834 = !DILocalVariable(name: "vp", scope: !1827, file: !1, line: 448, type: !243)
!1835 = !DILocalVariable(name: "count", scope: !1827, file: !1, line: 449, type: !327)
!1836 = !DILocalVariable(name: "numb", scope: !1827, file: !1, line: 449, type: !327)
!1837 = !DILocalVariable(name: "res", scope: !1827, file: !1, line: 450, type: !710)
!1838 = !DILocalVariable(name: "min", scope: !1839, file: !1, line: 454, type: !1841)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !1, line: 453, column: 5)
!1840 = distinct !DILexicalBlock(scope: !1827, file: !1, line: 452, column: 7)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpz_t", file: !1788, line: 73, baseType: !1842)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1787, size: 128, elements: !311)
!1843 = !DILocalVariable(name: "max", scope: !1839, file: !1, line: 454, type: !1841)
!1844 = !DILocation(line: 0, scope: !1827)
!1845 = !DILocation(line: 449, column: 3, scope: !1827)
!1846 = !DILocation(line: 452, column: 8, scope: !1840)
!1847 = !DILocation(line: 452, column: 7, scope: !1827)
!1848 = !DILocation(line: 454, column: 7, scope: !1839)
!1849 = !DILocation(line: 454, column: 13, scope: !1839)
!1850 = !DILocation(line: 454, column: 18, scope: !1839)
!1851 = !DILocation(line: 456, column: 17, scope: !1839)
!1852 = !DILocation(line: 456, column: 7, scope: !1839)
!1853 = !DILocation(line: 457, column: 17, scope: !1839)
!1854 = !DILocation(line: 457, column: 7, scope: !1839)
!1855 = !DILocation(line: 458, column: 7, scope: !1839)
!1856 = !DILocation(line: 460, column: 11, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1839, file: !1, line: 460, column: 11)
!1858 = !DILocation(line: 460, column: 30, scope: !1857)
!1859 = !DILocation(line: 460, column: 11, scope: !1839)
!1860 = !DILocation(line: 461, column: 2, scope: !1857)
!1861 = !DILocation(line: 462, column: 16, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1857, file: !1, line: 462, column: 16)
!1863 = !DILocation(line: 462, column: 35, scope: !1862)
!1864 = !DILocation(line: 462, column: 16, scope: !1857)
!1865 = !DILocation(line: 463, column: 2, scope: !1862)
!1866 = !DILocation(line: 465, column: 7, scope: !1839)
!1867 = !DILocation(line: 466, column: 7, scope: !1839)
!1868 = !DILocation(line: 467, column: 5, scope: !1840)
!1869 = !DILocation(line: 467, column: 5, scope: !1839)
!1870 = !DILocation(line: 474, column: 12, scope: !1827)
!1871 = !DILocation(line: 474, column: 42, scope: !1827)
!1872 = !DILocation(line: 474, column: 46, scope: !1827)
!1873 = !DILocation(line: 475, column: 7, scope: !1827)
!1874 = !DILocation(line: 477, column: 35, scope: !1827)
!1875 = !DILocation(line: 479, column: 9, scope: !1827)
!1876 = !DILocation(line: 480, column: 3, scope: !1827)
!1877 = !DILocation(line: 480, column: 9, scope: !1827)
!1878 = !DILocation(line: 481, column: 15, scope: !1827)
!1879 = !DILocation(line: 481, column: 3, scope: !1827)
!1880 = !DILocation(line: 483, column: 3, scope: !1827)
!1881 = !DILocation(line: 485, column: 13, scope: !1827)
!1882 = !DILocation(line: 485, column: 7, scope: !1827)
!1883 = !DILocation(line: 486, column: 30, scope: !1827)
!1884 = !DILocation(line: 486, column: 7, scope: !1827)
!1885 = !DILocation(line: 488, column: 9, scope: !1827)
!1886 = !DILocation(line: 488, column: 30, scope: !1827)
!1887 = !DILocation(line: 488, column: 53, scope: !1827)
!1888 = !DILocation(line: 489, column: 7, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1827, file: !1, line: 489, column: 7)
!1890 = !DILocation(line: 489, column: 21, scope: !1889)
!1891 = !DILocation(line: 489, column: 7, scope: !1827)
!1892 = !DILocation(line: 490, column: 11, scope: !1889)
!1893 = !DILocation(line: 490, column: 5, scope: !1889)
!1894 = !DILocation(line: 493, column: 1, scope: !1827)
