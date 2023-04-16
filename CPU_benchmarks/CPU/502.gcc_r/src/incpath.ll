; ModuleID = 'incpath.bc'
source_filename = "incpath.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cpp_dir = type { %struct.cpp_dir*, i8*, i32, i8, i8, i8*, i8**, i8* (i8*, %struct.cpp_dir*)*, i64, i64 }
%struct.target_c_incpath_s = type { void (i8*, i8*, i32)*, void (i8*, i8*, i32)* }
%struct.default_include = type { i8*, i8*, i8, i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.cpp_reader = type opaque
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i8*, i8*, i32, i8, i8, %struct.anon, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon = type { i32, i8, i8, i8, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@heads = internal unnamed_addr global [4 x %struct.cpp_dir*] zeroinitializer, align 16, !dbg !0
@tails = internal unnamed_addr global [4 x %struct.cpp_dir*] zeroinitializer, align 16, !dbg !166
@quote_ignores_source_dir = internal unnamed_addr global i1 false, align 1, !dbg !222
@register_include_chains.lang_env_vars = internal unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)], align 16, !dbg !67
@.str = private unnamed_addr constant [15 x i8] c"C_INCLUDE_PATH\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CPLUS_INCLUDE_PATH\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"OBJC_INCLUDE_PATH\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"OBJCPLUS_INCLUDE_PATH\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"CPATH\00", align 1
@target_c_incpath = dso_local local_unnamed_addr global %struct.target_c_incpath_s { void (i8*, i8*, i32)* @hook_void_charptr_charptr_int, void (i8*, i8*, i32)* @hook_void_charptr_charptr_int }, align 8, !dbg !156
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@cpp_GCC_INCLUDE_DIR_len = external dso_local local_unnamed_addr constant i64, align 8
@cpp_include_defaults = external dso_local local_unnamed_addr constant [0 x %struct.default_include], align 8
@cpp_GCC_INCLUDE_DIR = external dso_local constant [0 x i8], align 1
@dir_separator_str = internal constant [2 x i8] c"/\00", align 1, !dbg !217
@cpp_PREFIX = external dso_local constant [0 x i8], align 1
@cpp_PREFIX_len = external dso_local local_unnamed_addr constant i64, align 8
@add_standard_paths.relocated_prefix = internal unnamed_addr global i8* null, align 8, !dbg !171
@gcc_exec_prefix = external dso_local local_unnamed_addr global i8*, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@cpp_EXEC_PREFIX = external dso_local constant [0 x i8], align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"#include \22...\22 search starts here:\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"#include <...> search starts here:\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"End of search list.\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%s: not a directory\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"ignoring duplicate directory \22%s\22\0A\00", align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"  as it is a non-system directory that duplicates a system directory\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"ignoring nonexistent directory \22%s\22\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !227 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !241, metadata !DIExpression()), !dbg !242
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !243
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !244
  ret i32 %call, !dbg !245
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !246 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !250
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !251
  ret i32 %call, !dbg !252
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !253 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !312, metadata !DIExpression()), !dbg !313
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !314
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !314
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !314
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !314
  %cmp = icmp uge i8* %0, %1, !dbg !314
  %conv1 = zext i1 %cmp to i64, !dbg !314
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !314
  %tobool = icmp eq i64 %expval, 0, !dbg !314
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !314

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !314
  br label %cond.end, !dbg !314

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !314
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !314
  %2 = load i8, i8* %0, align 1, !dbg !314
  %conv3 = zext i8 %2 to i32, !dbg !314
  br label %cond.end, !dbg !314

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !314
  ret i32 %cond, !dbg !315
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !316 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !318, metadata !DIExpression()), !dbg !319
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !320
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !320
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !320
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !320
  %cmp = icmp uge i8* %0, %1, !dbg !320
  %conv1 = zext i1 %cmp to i64, !dbg !320
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !320
  %tobool = icmp eq i64 %expval, 0, !dbg !320
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !320

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !320
  br label %cond.end, !dbg !320

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !320
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !320
  %2 = load i8, i8* %0, align 1, !dbg !320
  %conv3 = zext i8 %2 to i32, !dbg !320
  br label %cond.end, !dbg !320

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !320
  ret i32 %cond, !dbg !321
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !322 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !323
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !323
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !323
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !323
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !323
  %cmp = icmp uge i8* %1, %2, !dbg !323
  %conv1 = zext i1 %cmp to i64, !dbg !323
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !323
  %tobool = icmp eq i64 %expval, 0, !dbg !323
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !323

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !323
  br label %cond.end, !dbg !323

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !323
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !323
  %3 = load i8, i8* %1, align 1, !dbg !323
  %conv3 = zext i8 %3 to i32, !dbg !323
  br label %cond.end, !dbg !323

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !323
  ret i32 %cond, !dbg !324
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !325 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !331
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !332
  ret i32 %call, !dbg !333
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !334 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !339, metadata !DIExpression()), !dbg !340
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !341
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !341
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !341
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !341
  %cmp = icmp uge i8* %0, %1, !dbg !341
  %conv1 = zext i1 %cmp to i64, !dbg !341
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !341
  %tobool = icmp eq i64 %expval, 0, !dbg !341
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !341

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !341
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !341
  br label %cond.end, !dbg !341

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !341
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !341
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !341
  store i8 %conv2, i8* %0, align 1, !dbg !341
  %conv6 = and i32 %__c, 255, !dbg !341
  br label %cond.end, !dbg !341

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !341
  ret i32 %cond, !dbg !342
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !343 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !345, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !346, metadata !DIExpression()), !dbg !347
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !348
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !348
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !348
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !348
  %cmp = icmp uge i8* %0, %1, !dbg !348
  %conv1 = zext i1 %cmp to i64, !dbg !348
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !348
  %tobool = icmp eq i64 %expval, 0, !dbg !348
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !348

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !348
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !348
  br label %cond.end, !dbg !348

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !348
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !348
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !348
  store i8 %conv2, i8* %0, align 1, !dbg !348
  %conv6 = and i32 %__c, 255, !dbg !348
  br label %cond.end, !dbg !348

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !348
  ret i32 %cond, !dbg !349
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !350 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !352, metadata !DIExpression()), !dbg !353
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !354
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !354
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !354
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !354
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !354
  %cmp = icmp uge i8* %1, %2, !dbg !354
  %conv1 = zext i1 %cmp to i64, !dbg !354
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !354
  %tobool = icmp eq i64 %expval, 0, !dbg !354
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !354

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !354
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !354
  br label %cond.end, !dbg !354

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !354
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !354
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !354
  store i8 %conv4, i8* %1, align 1, !dbg !354
  %conv6 = and i32 %__c, 255, !dbg !354
  br label %cond.end, !dbg !354

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !354
  ret i32 %cond, !dbg !355
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !356 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !362, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64* %__n, metadata !363, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !364, metadata !DIExpression()), !dbg !365
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !366
  ret i64 %call, !dbg !367
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !368 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !370, metadata !DIExpression()), !dbg !371
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !372
  %0 = load i32, i32* %_flags, align 8, !dbg !372
  %and = lshr i32 %0, 4, !dbg !372
  %and.lobit = and i32 %and, 1, !dbg !372
  ret i32 %and.lobit, !dbg !373
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !374 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !376, metadata !DIExpression()), !dbg !377
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !378
  %0 = load i32, i32* %_flags, align 8, !dbg !378
  %and = lshr i32 %0, 5, !dbg !378
  %and.lobit = and i32 %and, 1, !dbg !378
  ret i32 %and.lobit, !dbg !379
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !380 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !383, metadata !DIExpression()), !dbg !384
  %__c.off = add i32 %__c, 128, !dbg !385
  %0 = icmp ult i32 %__c.off, 384, !dbg !385
  br i1 %0, label %cond.true, label %cond.end, !dbg !385

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !386
  %1 = load i32*, i32** %call, align 8, !dbg !387
  %idxprom = sext i32 %__c to i64, !dbg !388
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !388
  %2 = load i32, i32* %arrayidx, align 4, !dbg !388
  br label %cond.end, !dbg !389

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !389
  ret i32 %cond, !dbg !390
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !391 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !393, metadata !DIExpression()), !dbg !394
  %__c.off = add i32 %__c, 128, !dbg !395
  %0 = icmp ult i32 %__c.off, 384, !dbg !395
  br i1 %0, label %cond.true, label %cond.end, !dbg !395

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !396
  %1 = load i32*, i32** %call, align 8, !dbg !397
  %idxprom = sext i32 %__c to i64, !dbg !398
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !398
  %2 = load i32, i32* %arrayidx, align 4, !dbg !398
  br label %cond.end, !dbg !399

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !399
  ret i32 %cond, !dbg !400
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !401 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !406, metadata !DIExpression()), !dbg !407
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !408
  %conv = trunc i64 %call to i32, !dbg !409
  ret i32 %conv, !dbg !410
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !411 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !415, metadata !DIExpression()), !dbg !416
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !417
  ret i64 %call, !dbg !418
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !419 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !424, metadata !DIExpression()), !dbg !425
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !426
  ret i64 %call, !dbg !427
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !428 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !439, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i8* %__base, metadata !440, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !441, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %__size, metadata !442, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !443, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 0, metadata !444, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !445, metadata !DIExpression()), !dbg !449
  br label %while.cond, !dbg !450

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !451
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !449
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !445, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !444, metadata !DIExpression()), !dbg !449
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !452
  br i1 %cmp, label %while.body, label %cleanup, !dbg !450

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !453
  %div = lshr i64 %add, 1, !dbg !455
  call void @llvm.dbg.value(metadata i64 %div, metadata !446, metadata !DIExpression()), !dbg !449
  %mul = mul i64 %div, %__size, !dbg !456
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !457
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !447, metadata !DIExpression()), !dbg !449
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !458
  call void @llvm.dbg.value(metadata i32 %call, metadata !448, metadata !DIExpression()), !dbg !449
  %cmp1 = icmp slt i32 %call, 0, !dbg !459
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !461

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !462
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !464

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !465
  call void @llvm.dbg.value(metadata i64 %add4, metadata !444, metadata !DIExpression()), !dbg !449
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !449
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !449
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !445, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !444, metadata !DIExpression()), !dbg !449
  br label %while.cond, !dbg !450, !llvm.loop !466

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !449
  ret i8* %retval.0, !dbg !468
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !469 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !475, metadata !DIExpression()), !dbg !476
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !477
  ret double %call, !dbg !478
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !479 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !488, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !489, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata i32 %base, metadata !490, metadata !DIExpression()), !dbg !491
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !492
  ret i64 %call, !dbg !493
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !494 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !500, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !501, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i32 %base, metadata !502, metadata !DIExpression()), !dbg !503
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !504
  ret i64 %call, !dbg !505
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !506 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !517, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !518, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.value(metadata i32 %base, metadata !519, metadata !DIExpression()), !dbg !520
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !521
  ret i64 %call, !dbg !522
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !523 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !527, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !528, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i32 %base, metadata !529, metadata !DIExpression()), !dbg !530
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !531
  ret i64 %call, !dbg !532
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !533 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !573, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !574, metadata !DIExpression()), !dbg !575
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !576
  ret i32 %call, !dbg !577
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !578 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !580, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !581, metadata !DIExpression()), !dbg !582
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !583
  ret i32 %call, !dbg !584
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !585 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !589, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !590, metadata !DIExpression()), !dbg !591
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !592
  ret i32 %call, !dbg !593
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !594 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !598, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !599, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !600, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !601, metadata !DIExpression()), !dbg !602
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !603
  ret i32 %call, !dbg !604
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !605 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !609, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !610, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !611, metadata !DIExpression()), !dbg !612
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !611, metadata !DIExpression(DW_OP_deref)), !dbg !612
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !613
  ret i32 %call, !dbg !614
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !615 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !619, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i8* %__path, metadata !620, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !621, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !622, metadata !DIExpression()), !dbg !623
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !622, metadata !DIExpression(DW_OP_deref)), !dbg !623
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !624
  ret i32 %call, !dbg !625
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !626 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !650, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !651, metadata !DIExpression()), !dbg !652
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !653
  ret i32 %call, !dbg !654
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !655 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !657, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !658, metadata !DIExpression()), !dbg !659
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !660
  ret i32 %call, !dbg !661
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !662 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !666, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !667, metadata !DIExpression()), !dbg !668
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !669
  ret i32 %call, !dbg !670
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !671 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !675, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !676, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !677, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !678, metadata !DIExpression()), !dbg !679
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !680
  ret i32 %call, !dbg !681
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @split_quote_chain() local_unnamed_addr #4 !dbg !682 {
entry:
  %0 = load i64, i64* bitcast (%struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 1) to i64*), align 8, !dbg !685
  store i64 %0, i64* bitcast ([4 x %struct.cpp_dir*]* @heads to i64*), align 16, !dbg !686
  %1 = load i64, i64* bitcast (%struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @tails, i64 0, i64 1) to i64*), align 8, !dbg !687
  store i64 %1, i64* bitcast ([4 x %struct.cpp_dir*]* @tails to i64*), align 16, !dbg !688
  store %struct.cpp_dir* null, %struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 1), align 8, !dbg !689
  store %struct.cpp_dir* null, %struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @tails, i64 0, i64 1), align 8, !dbg !690
  store i1 true, i1* @quote_ignores_source_dir, align 1, !dbg !691
  ret void, !dbg !692
}

; Function Attrs: nounwind uwtable
define dso_local void @add_cpp_dir_path(%struct.cpp_dir* %p, i32 %chain) local_unnamed_addr #4 !dbg !693 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %p, metadata !697, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i32 %chain, metadata !698, metadata !DIExpression()), !dbg !699
  %idxprom = sext i32 %chain to i64, !dbg !700
  %arrayidx = getelementptr inbounds [4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @tails, i64 0, i64 %idxprom, !dbg !700
  %0 = load %struct.cpp_dir*, %struct.cpp_dir** %arrayidx, align 8, !dbg !700
  %tobool = icmp eq %struct.cpp_dir* %0, null, !dbg !700
  br i1 %tobool, label %if.else, label %if.then, !dbg !702

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %0, i64 0, i32 0, !dbg !703
  store %struct.cpp_dir* %p, %struct.cpp_dir** %next, align 8, !dbg !704
  br label %if.end, !dbg !705

if.else:                                          ; preds = %entry
  %arrayidx4 = getelementptr inbounds [4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 %idxprom, !dbg !706
  store %struct.cpp_dir* %p, %struct.cpp_dir** %arrayidx4, align 8, !dbg !707
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store %struct.cpp_dir* %p, %struct.cpp_dir** %arrayidx, align 8, !dbg !708
  ret void, !dbg !709
}

; Function Attrs: nounwind uwtable
define dso_local void @add_path(i8* %path, i32 %chain, i32 %cxx_aware, i8 zeroext %user_supplied_p) local_unnamed_addr #4 !dbg !710 {
entry:
  call void @llvm.dbg.value(metadata i8* %path, metadata !714, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i32 %chain, metadata !715, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i32 %cxx_aware, metadata !716, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i8 %user_supplied_p, metadata !717, metadata !DIExpression()), !dbg !719
  %call = tail call i8* @xmalloc(i64 64) #6, !dbg !720
  %0 = bitcast i8* %call to %struct.cpp_dir*, !dbg !720
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %0, metadata !718, metadata !DIExpression()), !dbg !719
  %next = bitcast i8* %call to %struct.cpp_dir**, !dbg !721
  store %struct.cpp_dir* null, %struct.cpp_dir** %next, align 8, !dbg !722
  %name = getelementptr inbounds i8, i8* %call, i64 8, !dbg !723
  %1 = bitcast i8* %name to i8**, !dbg !723
  store i8* %path, i8** %1, align 8, !dbg !724
  %2 = and i32 %chain, -2, !dbg !725
  %switch = icmp eq i32 %2, 2, !dbg !725
  br i1 %switch, label %if.then, label %if.else, !dbg !725

if.then:                                          ; preds = %entry
  %tobool = icmp eq i32 %cxx_aware, 0, !dbg !727
  %add = select i1 %tobool, i8 2, i8 1, !dbg !728
  %3 = getelementptr inbounds i8, i8* %call, i64 20, !dbg !729
  store i8 %add, i8* %3, align 4, !dbg !730
  br label %if.end, !dbg !731

if.else:                                          ; preds = %entry
  %4 = getelementptr inbounds i8, i8* %call, i64 20, !dbg !732
  store i8 0, i8* %4, align 4, !dbg !733
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %construct = getelementptr inbounds i8, i8* %call, i64 40, !dbg !734
  %5 = bitcast i8* %construct to i8* (i8*, %struct.cpp_dir*)**, !dbg !734
  store i8* (i8*, %struct.cpp_dir*)* null, i8* (i8*, %struct.cpp_dir*)** %5, align 8, !dbg !735
  %6 = getelementptr inbounds i8, i8* %call, i64 21, !dbg !736
  store i8 %user_supplied_p, i8* %6, align 1, !dbg !737
  tail call void @add_cpp_dir_path(%struct.cpp_dir* %0, i32 %chain) #7, !dbg !738
  ret void, !dbg !739
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @register_include_chains(%struct.cpp_reader* %pfile, i8* %sysroot, i8* %iprefix, i8* %imultilib, i32 %stdinc, i32 %cxx_stdinc, i32 %verbose) local_unnamed_addr #4 !dbg !69 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !77, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8* %sysroot, metadata !78, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8* %iprefix, metadata !79, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8* %imultilib, metadata !80, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 %stdinc, metadata !81, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 %cxx_stdinc, metadata !82, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 %verbose, metadata !83, metadata !DIExpression()), !dbg !740
  %call = tail call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #6, !dbg !741
  call void @llvm.dbg.value(metadata %struct.cpp_options* %call, metadata !84, metadata !DIExpression()), !dbg !740
  %objc = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call, i64 0, i32 4, !dbg !742
  %0 = load i8, i8* %objc, align 2, !dbg !742
  %tobool = icmp eq i8 %0, 0, !dbg !743
  %conv1 = select i1 %tobool, i64 0, i64 2, !dbg !744
  call void @llvm.dbg.value(metadata i64 %conv1, metadata !151, metadata !DIExpression()), !dbg !740
  %cplusplus = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call, i64 0, i32 2, !dbg !745
  %1 = load i8, i8* %cplusplus, align 8, !dbg !745
  %tobool2 = icmp ne i8 %1, 0, !dbg !747
  %inc = zext i1 %tobool2 to i64, !dbg !748
  %idx.0 = or i64 %conv1, %inc, !dbg !748
  call void @llvm.dbg.value(metadata i64 %idx.0, metadata !151, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 undef, metadata !82, metadata !DIExpression()), !dbg !740
  tail call fastcc void @add_env_var_paths(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 1) #7, !dbg !749
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @register_include_chains.lang_env_vars, i64 0, i64 %idx.0, !dbg !750
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !750
  tail call fastcc void @add_env_var_paths(i8* %2, i32 2) #7, !dbg !751
  %3 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** getelementptr inbounds (%struct.target_c_incpath_s, %struct.target_c_incpath_s* @target_c_incpath, i64 0, i32 0), align 8, !dbg !752
  tail call void %3(i8* %sysroot, i8* %iprefix, i32 %stdinc) #6, !dbg !753
  %tobool3 = icmp eq i32 %stdinc, 0, !dbg !754
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !756

if.then4:                                         ; preds = %entry
  %cxx_stdinc.addr.0 = select i1 %tobool2, i32 %cxx_stdinc, i32 0, !dbg !748
  call void @llvm.dbg.value(metadata i32 %cxx_stdinc.addr.0, metadata !82, metadata !DIExpression()), !dbg !740
  tail call fastcc void @add_standard_paths(i8* %sysroot, i8* %iprefix, i8* %imultilib, i32 %cxx_stdinc.addr.0) #7, !dbg !757
  br label %if.end5, !dbg !757

if.end5:                                          ; preds = %entry, %if.then4
  %4 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** getelementptr inbounds (%struct.target_c_incpath_s, %struct.target_c_incpath_s* @target_c_incpath, i64 0, i32 1), align 8, !dbg !758
  tail call void %4(i8* %sysroot, i8* %iprefix, i32 %stdinc) #6, !dbg !759
  tail call fastcc void @merge_include_chains(i8* %sysroot, %struct.cpp_reader* %pfile, i32 %verbose) #7, !dbg !760
  %5 = load %struct.cpp_dir*, %struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 0), align 16, !dbg !761
  %6 = load %struct.cpp_dir*, %struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 1), align 8, !dbg !762
  %.b = load i1, i1* @quote_ignores_source_dir, align 1, !dbg !763
  %conv6 = zext i1 %.b to i32, !dbg !763
  tail call void @cpp_set_include_chains(%struct.cpp_reader* %pfile, %struct.cpp_dir* %5, %struct.cpp_dir* %6, i32 %conv6) #6, !dbg !764
  ret void, !dbg !765
}

declare dso_local %struct.cpp_options* @cpp_get_options(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @add_env_var_paths(i8* %env_var, i32 %chain) unnamed_addr #4 !dbg !766 {
entry:
  call void @llvm.dbg.value(metadata i8* %env_var, metadata !770, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i32 %chain, metadata !771, metadata !DIExpression()), !dbg !775
  %call = tail call i8* @getenv(i8* %env_var) #6, !dbg !776
  call void @llvm.dbg.value(metadata i8* %call, metadata !773, metadata !DIExpression()), !dbg !775
  %tobool = icmp eq i8* %call, null, !dbg !778
  br i1 %tobool, label %cleanup.cont, label %for.cond.preheader, !dbg !780

for.cond.preheader:                               ; preds = %entry
  %cmp19 = icmp eq i32 %chain, 2, !dbg !781
  %conv20 = zext i1 %cmp19 to i32, !dbg !781
  br label %for.cond, !dbg !785

for.cond:                                         ; preds = %for.cond.preheader, %if.end18
  %q.0 = phi i8* [ %q.1.lcssa, %if.end18 ], [ %call, %for.cond.preheader ], !dbg !775
  %p.0 = phi i8* [ %add.ptr, %if.end18 ], [ %call, %for.cond.preheader ], !dbg !786
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !772, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !773, metadata !DIExpression()), !dbg !775
  %0 = load i8, i8* %q.0, align 1, !dbg !787
  %tobool1 = icmp eq i8 %0, 0, !dbg !785
  br i1 %tobool1, label %cleanup.cont.loopexit, label %while.cond.preheader, !dbg !785

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !788

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %q.1 = phi i8* [ %incdec.ptr, %while.body ], [ %p.0, %while.cond.preheader ], !dbg !781
  call void @llvm.dbg.value(metadata i8* %q.1, metadata !773, metadata !DIExpression()), !dbg !775
  %1 = load i8, i8* %q.1, align 1, !dbg !789
  %cmp = icmp eq i8 %1, 0, !dbg !790
  %cmp4 = icmp eq i8 %1, 58, !dbg !791
  %or.cond = or i1 %cmp, %cmp4, !dbg !792
  br i1 %or.cond, label %while.end, label %while.body, !dbg !792

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %q.1, i64 1, !dbg !793
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !773, metadata !DIExpression()), !dbg !775
  br label %while.cond, !dbg !788, !llvm.loop !794

while.end:                                        ; preds = %while.cond
  %q.1.lcssa = phi i8* [ %q.1, %while.cond ], !dbg !781
  call void @llvm.dbg.value(metadata i8* %q.1.lcssa, metadata !773, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i8* %q.1.lcssa, metadata !773, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i8* %q.1.lcssa, metadata !773, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i8* %q.1.lcssa, metadata !773, metadata !DIExpression()), !dbg !775
  %cmp6 = icmp eq i8* %p.0, %q.1.lcssa, !dbg !795
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !797

if.then8:                                         ; preds = %while.end
  %call9 = tail call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !798
  call void @llvm.dbg.value(metadata i8* %call9, metadata !774, metadata !DIExpression()), !dbg !775
  br label %if.end18, !dbg !799

if.else:                                          ; preds = %while.end
  %sub.ptr.lhs.cast = ptrtoint i8* %q.1.lcssa to i64, !dbg !800
  %sub.ptr.rhs.cast = ptrtoint i8* %p.0 to i64, !dbg !800
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !800
  %add = add nsw i64 %sub.ptr.sub, 1, !dbg !800
  %call10 = tail call i8* @xmalloc(i64 %add) #6, !dbg !800
  call void @llvm.dbg.value(metadata i8* %call10, metadata !774, metadata !DIExpression()), !dbg !775
  %call14 = tail call i8* @memcpy(i8* %call10, i8* %p.0, i64 %sub.ptr.sub) #6, !dbg !802
  %arrayidx = getelementptr inbounds i8, i8* %call10, i64 %sub.ptr.sub, !dbg !803
  store i8 0, i8* %arrayidx, align 1, !dbg !804
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then8
  %path.0 = phi i8* [ %call9, %if.then8 ], [ %call10, %if.else ], !dbg !805
  call void @llvm.dbg.value(metadata i8* %path.0, metadata !774, metadata !DIExpression()), !dbg !775
  tail call void @add_path(i8* %path.0, i32 %chain, i32 %conv20, i8 zeroext 0) #7, !dbg !806
  %add.ptr = getelementptr inbounds i8, i8* %q.1.lcssa, i64 1, !dbg !807
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !772, metadata !DIExpression()), !dbg !775
  br label %for.cond, !dbg !808, !llvm.loop !809

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !811

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry
  ret void, !dbg !811
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_standard_paths(i8* %sysroot, i8* %iprefix, i8* %imultilib, i32 %cxx_stdinc) unnamed_addr #4 !dbg !173 {
entry:
  call void @llvm.dbg.value(metadata i8* %sysroot, metadata !177, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata i8* %iprefix, metadata !178, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata i8* %imultilib, metadata !179, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata i32 %cxx_stdinc, metadata !180, metadata !DIExpression()), !dbg !812
  %call = tail call zeroext i8 @cpp_relocated() #6, !dbg !813
  call void @llvm.dbg.value(metadata i8 %call, metadata !193, metadata !DIExpression()), !dbg !812
  %tobool = icmp eq i8* %iprefix, null, !dbg !814
  br i1 %tobool, label %if.end27, label %land.lhs.true, !dbg !815

land.lhs.true:                                    ; preds = %entry
  %0 = load i64, i64* @cpp_GCC_INCLUDE_DIR_len, align 8, !dbg !816
  call void @llvm.dbg.value(metadata i64 %0, metadata !194, metadata !DIExpression()), !dbg !812
  %cmp = icmp eq i64 %0, 0, !dbg !817
  br i1 %cmp, label %if.end27, label %for.cond.preheader, !dbg !818

for.cond.preheader:                               ; preds = %land.lhs.true
  %tobool4 = icmp eq i32 %cxx_stdinc, 0, !dbg !819
  %tobool6 = icmp eq i8* %sysroot, null, !dbg !820
  %tobool20 = icmp ne i8* %imultilib, null, !dbg !822
  br i1 %tobool4, label %for.cond.preheader.for.cond.preheader.split_crit_edge, label %for.cond.preheader.split.us, !dbg !824

for.cond.preheader.for.cond.preheader.split_crit_edge: ; preds = %for.cond.preheader
  br i1 %tobool6, label %for.cond.preheader.split.split.us, label %for.cond.preheader.split.for.cond.preheader.split.split_crit_edge, !dbg !824

for.cond.preheader.split.us:                      ; preds = %for.cond.preheader
  br label %for.cond.us, !dbg !824

for.cond.us:                                      ; preds = %for.inc.us, %for.cond.preheader.split.us
  %p.0.us = phi %struct.default_include* [ %incdec.ptr.us, %for.inc.us ], [ getelementptr inbounds ([0 x %struct.default_include], [0 x %struct.default_include]* @cpp_include_defaults, i64 0, i64 0), %for.cond.preheader.split.us ], !dbg !825
  call void @llvm.dbg.value(metadata %struct.default_include* %p.0.us, metadata !181, metadata !DIExpression()), !dbg !812
  %fname.us = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0.us, i64 0, i32 0, !dbg !826
  %1 = load i8*, i8** %fname.us, align 8, !dbg !826
  %tobool2.us = icmp eq i8* %1, null, !dbg !824
  br i1 %tobool2.us, label %if.end27.loopexit.us-lcssa.us, label %for.body.us, !dbg !824

for.body.us:                                      ; preds = %for.cond.us
  br i1 %tobool6, label %if.end.us, label %land.lhs.true7.us, !dbg !827

land.lhs.true7.us:                                ; preds = %for.body.us
  %add_sysroot.us = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0.us, i64 0, i32 4, !dbg !828
  %2 = load i8, i8* %add_sysroot.us, align 2, !dbg !828
  %tobool9.us = icmp eq i8 %2, 0, !dbg !829
  br i1 %tobool9.us, label %if.end.us, label %for.inc.us, !dbg !830

if.end.us:                                        ; preds = %land.lhs.true7.us, %for.body.us
  %call12.us = tail call i32 @strncmp(i8* nonnull %1, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cpp_GCC_INCLUDE_DIR, i64 0, i64 0), i64 %0) #6, !dbg !831
  %tobool13.us = icmp eq i32 %call12.us, 0, !dbg !831
  br i1 %tobool13.us, label %if.then14.us, label %for.inc.us, !dbg !832

if.then14.us:                                     ; preds = %if.end.us
  %3 = load i8*, i8** %fname.us, align 8, !dbg !833
  %add.ptr.us = getelementptr inbounds i8, i8* %3, i64 %0, !dbg !834
  %call16.us = tail call i8* (i8*, ...) @concat(i8* nonnull %iprefix, i8* %add.ptr.us, i8* null) #6, !dbg !835
  call void @llvm.dbg.value(metadata i8* %call16.us, metadata !195, metadata !DIExpression()), !dbg !836
  %multilib.us = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0.us, i64 0, i32 5, !dbg !837
  %4 = load i8, i8* %multilib.us, align 1, !dbg !837
  %tobool18.us = icmp ne i8 %4, 0, !dbg !838
  %or.cond1.us = and i1 %tobool18.us, %tobool20, !dbg !839
  br i1 %or.cond1.us, label %if.then21.us, label %if.end23.us, !dbg !839

if.then21.us:                                     ; preds = %if.then14.us
  %call22.us = tail call i8* (i8*, ...) @concat(i8* %call16.us, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @dir_separator_str, i64 0, i64 0), i8* nonnull %imultilib, i8* null) #6, !dbg !840
  call void @llvm.dbg.value(metadata i8* %call22.us, metadata !195, metadata !DIExpression()), !dbg !836
  br label %if.end23.us, !dbg !841

if.end23.us:                                      ; preds = %if.then21.us, %if.then14.us
  %str.0.us = phi i8* [ %call22.us, %if.then21.us ], [ %call16.us, %if.then14.us ], !dbg !836
  call void @llvm.dbg.value(metadata i8* %str.0.us, metadata !195, metadata !DIExpression()), !dbg !836
  %cxx_aware.us = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0.us, i64 0, i32 3, !dbg !842
  %5 = load i8, i8* %cxx_aware.us, align 1, !dbg !842
  %conv24.us = sext i8 %5 to i32, !dbg !843
  tail call void @add_path(i8* %str.0.us, i32 2, i32 %conv24.us, i8 zeroext 0) #7, !dbg !844
  br label %for.inc.us, !dbg !845

for.inc.us:                                       ; preds = %if.end23.us, %if.end.us, %land.lhs.true7.us
  %incdec.ptr.us = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0.us, i64 1, !dbg !846
  call void @llvm.dbg.value(metadata %struct.default_include* %incdec.ptr.us, metadata !181, metadata !DIExpression()), !dbg !812
  br label %for.cond.us, !dbg !847, !llvm.loop !848

if.end27.loopexit.us-lcssa.us:                    ; preds = %for.cond.us
  br label %if.end27.loopexit, !dbg !850

for.cond.preheader.split.for.cond.preheader.split.split_crit_edge: ; preds = %for.cond.preheader.for.cond.preheader.split_crit_edge
  br label %for.cond, !dbg !824

for.cond.preheader.split.split.us:                ; preds = %for.cond.preheader.for.cond.preheader.split_crit_edge
  br label %for.cond.us5, !dbg !824

for.cond.us5:                                     ; preds = %for.inc.us31, %for.cond.preheader.split.split.us
  %p.0.us6 = phi %struct.default_include* [ %incdec.ptr.us32, %for.inc.us31 ], [ getelementptr inbounds ([0 x %struct.default_include], [0 x %struct.default_include]* @cpp_include_defaults, i64 0, i64 0), %for.cond.preheader.split.split.us ], !dbg !825
  call void @llvm.dbg.value(metadata %struct.default_include* %p.0.us6, metadata !181, metadata !DIExpression()), !dbg !812
  %fname.us7 = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0.us6, i64 0, i32 0, !dbg !826
  %6 = load i8*, i8** %fname.us7, align 8, !dbg !826
  %tobool2.us8 = icmp eq i8* %6, null, !dbg !824
  br i1 %tobool2.us8, label %if.end27.loopexit.us-lcssa.us-lcssa.us, label %for.body.us9, !dbg !824

for.body.us9:                                     ; preds = %for.cond.us5
  %cplusplus.us = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0.us6, i64 0, i32 2, !dbg !851
  %7 = load i8, i8* %cplusplus.us, align 8, !dbg !851
  %tobool3.us = icmp eq i8 %7, 0, !dbg !852
  br i1 %tobool3.us, label %if.then5.us10, label %for.inc.us31, !dbg !853

if.then5.us10:                                    ; preds = %for.body.us9
  %call12.us16 = tail call i32 @strncmp(i8* nonnull %6, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cpp_GCC_INCLUDE_DIR, i64 0, i64 0), i64 %0) #6, !dbg !831
  %tobool13.us17 = icmp eq i32 %call12.us16, 0, !dbg !831
  br i1 %tobool13.us17, label %if.then14.us18, label %for.inc.us31, !dbg !832

if.then14.us18:                                   ; preds = %if.then5.us10
  %8 = load i8*, i8** %fname.us7, align 8, !dbg !833
  %add.ptr.us20 = getelementptr inbounds i8, i8* %8, i64 %0, !dbg !834
  %call16.us21 = tail call i8* (i8*, ...) @concat(i8* nonnull %iprefix, i8* %add.ptr.us20, i8* null) #6, !dbg !835
  call void @llvm.dbg.value(metadata i8* %call16.us21, metadata !195, metadata !DIExpression()), !dbg !836
  %multilib.us22 = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0.us6, i64 0, i32 5, !dbg !837
  %9 = load i8, i8* %multilib.us22, align 1, !dbg !837
  %tobool18.us23 = icmp ne i8 %9, 0, !dbg !838
  %or.cond1.us24 = and i1 %tobool18.us23, %tobool20, !dbg !839
  br i1 %or.cond1.us24, label %if.then21.us25, label %if.end23.us27, !dbg !839

if.then21.us25:                                   ; preds = %if.then14.us18
  %call22.us26 = tail call i8* (i8*, ...) @concat(i8* %call16.us21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @dir_separator_str, i64 0, i64 0), i8* nonnull %imultilib, i8* null) #6, !dbg !840
  call void @llvm.dbg.value(metadata i8* %call22.us26, metadata !195, metadata !DIExpression()), !dbg !836
  br label %if.end23.us27, !dbg !841

if.end23.us27:                                    ; preds = %if.then21.us25, %if.then14.us18
  %str.0.us28 = phi i8* [ %call22.us26, %if.then21.us25 ], [ %call16.us21, %if.then14.us18 ], !dbg !836
  call void @llvm.dbg.value(metadata i8* %str.0.us28, metadata !195, metadata !DIExpression()), !dbg !836
  %cxx_aware.us29 = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0.us6, i64 0, i32 3, !dbg !842
  %10 = load i8, i8* %cxx_aware.us29, align 1, !dbg !842
  %conv24.us30 = sext i8 %10 to i32, !dbg !843
  tail call void @add_path(i8* %str.0.us28, i32 2, i32 %conv24.us30, i8 zeroext 0) #7, !dbg !844
  br label %for.inc.us31, !dbg !845

for.inc.us31:                                     ; preds = %if.end23.us27, %if.then5.us10, %for.body.us9
  %incdec.ptr.us32 = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0.us6, i64 1, !dbg !846
  call void @llvm.dbg.value(metadata %struct.default_include* %incdec.ptr.us32, metadata !181, metadata !DIExpression()), !dbg !812
  br label %for.cond.us5, !dbg !847, !llvm.loop !848

if.end27.loopexit.us-lcssa.us-lcssa.us:           ; preds = %for.cond.us5
  br label %if.end27.loopexit.us-lcssa, !dbg !850

for.cond:                                         ; preds = %for.cond.preheader.split.for.cond.preheader.split.split_crit_edge, %for.inc
  %p.0 = phi %struct.default_include* [ %incdec.ptr, %for.inc ], [ getelementptr inbounds ([0 x %struct.default_include], [0 x %struct.default_include]* @cpp_include_defaults, i64 0, i64 0), %for.cond.preheader.split.for.cond.preheader.split.split_crit_edge ], !dbg !825
  call void @llvm.dbg.value(metadata %struct.default_include* %p.0, metadata !181, metadata !DIExpression()), !dbg !812
  %fname = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0, i64 0, i32 0, !dbg !826
  %11 = load i8*, i8** %fname, align 8, !dbg !826
  %tobool2 = icmp eq i8* %11, null, !dbg !824
  br i1 %tobool2, label %if.end27.loopexit.us-lcssa.us-lcssa, label %for.body, !dbg !824

for.body:                                         ; preds = %for.cond
  %cplusplus = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0, i64 0, i32 2, !dbg !851
  %12 = load i8, i8* %cplusplus, align 8, !dbg !851
  %tobool3 = icmp eq i8 %12, 0, !dbg !852
  br i1 %tobool3, label %if.then5, label %for.inc, !dbg !853

if.then5:                                         ; preds = %for.body
  %add_sysroot = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0, i64 0, i32 4, !dbg !828
  %13 = load i8, i8* %add_sysroot, align 2, !dbg !828
  %tobool9 = icmp eq i8 %13, 0, !dbg !829
  br i1 %tobool9, label %if.end, label %for.inc, !dbg !830

if.end:                                           ; preds = %if.then5
  %call12 = tail call i32 @strncmp(i8* nonnull %11, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cpp_GCC_INCLUDE_DIR, i64 0, i64 0), i64 %0) #6, !dbg !831
  %tobool13 = icmp eq i32 %call12, 0, !dbg !831
  br i1 %tobool13, label %if.then14, label %for.inc, !dbg !832

if.then14:                                        ; preds = %if.end
  %14 = load i8*, i8** %fname, align 8, !dbg !833
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %0, !dbg !834
  %call16 = tail call i8* (i8*, ...) @concat(i8* nonnull %iprefix, i8* %add.ptr, i8* null) #6, !dbg !835
  call void @llvm.dbg.value(metadata i8* %call16, metadata !195, metadata !DIExpression()), !dbg !836
  %multilib = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0, i64 0, i32 5, !dbg !837
  %15 = load i8, i8* %multilib, align 1, !dbg !837
  %tobool18 = icmp ne i8 %15, 0, !dbg !838
  %or.cond1 = and i1 %tobool18, %tobool20, !dbg !839
  br i1 %or.cond1, label %if.then21, label %if.end23, !dbg !839

if.then21:                                        ; preds = %if.then14
  %call22 = tail call i8* (i8*, ...) @concat(i8* %call16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @dir_separator_str, i64 0, i64 0), i8* nonnull %imultilib, i8* null) #6, !dbg !840
  call void @llvm.dbg.value(metadata i8* %call22, metadata !195, metadata !DIExpression()), !dbg !836
  br label %if.end23, !dbg !841

if.end23:                                         ; preds = %if.then21, %if.then14
  %str.0 = phi i8* [ %call22, %if.then21 ], [ %call16, %if.then14 ], !dbg !836
  call void @llvm.dbg.value(metadata i8* %str.0, metadata !195, metadata !DIExpression()), !dbg !836
  %cxx_aware = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0, i64 0, i32 3, !dbg !842
  %16 = load i8, i8* %cxx_aware, align 1, !dbg !842
  %conv24 = sext i8 %16 to i32, !dbg !843
  tail call void @add_path(i8* %str.0, i32 2, i32 %conv24, i8 zeroext 0) #7, !dbg !844
  br label %for.inc, !dbg !845

for.inc:                                          ; preds = %if.then5, %if.end, %for.body, %if.end23
  %incdec.ptr = getelementptr inbounds %struct.default_include, %struct.default_include* %p.0, i64 1, !dbg !846
  call void @llvm.dbg.value(metadata %struct.default_include* %incdec.ptr, metadata !181, metadata !DIExpression()), !dbg !812
  br label %for.cond, !dbg !847, !llvm.loop !848

if.end27.loopexit.us-lcssa.us-lcssa:              ; preds = %for.cond
  br label %if.end27.loopexit.us-lcssa, !dbg !850

if.end27.loopexit.us-lcssa:                       ; preds = %if.end27.loopexit.us-lcssa.us-lcssa.us, %if.end27.loopexit.us-lcssa.us-lcssa
  br label %if.end27.loopexit, !dbg !850

if.end27.loopexit:                                ; preds = %if.end27.loopexit.us-lcssa.us, %if.end27.loopexit.us-lcssa
  br label %if.end27, !dbg !850

if.end27:                                         ; preds = %if.end27.loopexit, %land.lhs.true, %entry
  call void @llvm.dbg.value(metadata %struct.default_include* getelementptr inbounds ([0 x %struct.default_include], [0 x %struct.default_include]* @cpp_include_defaults, i64 0, i64 0), metadata !181, metadata !DIExpression()), !dbg !812
  %tobool35 = icmp eq i32 %cxx_stdinc, 0, !dbg !854
  %tobool38 = icmp eq i8* %sysroot, null, !dbg !855
  %tobool49 = icmp ne i8 %call, 0, !dbg !856
  %17 = load i64, i64* @cpp_PREFIX_len, align 8, !dbg !856
  %tobool75 = icmp ne i8* %imultilib, null, !dbg !857
  br i1 %tobool35, label %if.end27.if.end27.split_crit_edge, label %if.end27.split.us, !dbg !850

if.end27.if.end27.split_crit_edge:                ; preds = %if.end27
  br label %for.cond28, !dbg !850

if.end27.split.us:                                ; preds = %if.end27
  br label %for.cond28.us, !dbg !850

for.cond28.us:                                    ; preds = %if.end78.us, %if.end27.split.us
  %p.1.us = phi %struct.default_include* [ getelementptr inbounds ([0 x %struct.default_include], [0 x %struct.default_include]* @cpp_include_defaults, i64 0, i64 0), %if.end27.split.us ], [ %incdec.ptr83.us, %if.end78.us ], !dbg !859
  call void @llvm.dbg.value(metadata %struct.default_include* %p.1.us, metadata !181, metadata !DIExpression()), !dbg !812
  %fname29.us = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1.us, i64 0, i32 0, !dbg !860
  %18 = load i8*, i8** %fname29.us, align 8, !dbg !860
  %tobool30.us = icmp eq i8* %18, null, !dbg !861
  br i1 %tobool30.us, label %for.end84.us-lcssa.us, label %for.body31.us, !dbg !861

for.body31.us:                                    ; preds = %for.cond28.us
  br i1 %tobool38, label %for.body31.us.if.else.us_crit_edge, label %land.lhs.true39.us, !dbg !862

for.body31.us.if.else.us_crit_edge:               ; preds = %for.body31.us
  %add_sysroot46.us.phi.trans.insert = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1.us, i64 0, i32 4, !dbg !856
  %.pre = load i8, i8* %add_sysroot46.us.phi.trans.insert, align 2, !dbg !863
  br label %if.else.us, !dbg !862

land.lhs.true39.us:                               ; preds = %for.body31.us
  %add_sysroot40.us = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1.us, i64 0, i32 4, !dbg !864
  %19 = load i8, i8* %add_sysroot40.us, align 2, !dbg !864
  %tobool42.us = icmp eq i8 %19, 0, !dbg !865
  br i1 %tobool42.us, label %if.else.us, label %if.then43.us, !dbg !866

if.then43.us:                                     ; preds = %land.lhs.true39.us
  %call45.us = tail call i8* (i8*, ...) @concat(i8* nonnull %sysroot, i8* nonnull %18, i8* null) #6, !dbg !867
  call void @llvm.dbg.value(metadata i8* %call45.us, metadata !205, metadata !DIExpression()), !dbg !868
  br label %if.end70.us, !dbg !869

if.else.us:                                       ; preds = %for.body31.us.if.else.us_crit_edge, %land.lhs.true39.us
  %20 = phi i8 [ %.pre, %for.body31.us.if.else.us_crit_edge ], [ 0, %land.lhs.true39.us ], !dbg !863
  %tobool47.us = icmp eq i8 %20, 0, !dbg !870
  %or.cond3.us = and i1 %tobool47.us, %tobool49, !dbg !871
  br i1 %or.cond3.us, label %land.lhs.true50.us, label %if.else65.us, !dbg !871

land.lhs.true50.us:                               ; preds = %if.else.us
  %call52.us = tail call i32 @strncmp(i8* nonnull %18, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cpp_PREFIX, i64 0, i64 0), i64 %17) #6, !dbg !872
  %cmp53.us = icmp eq i32 %call52.us, 0, !dbg !873
  br i1 %cmp53.us, label %if.then55.us, label %land.lhs.true50.us.if.else65.us_crit_edge, !dbg !874

land.lhs.true50.us.if.else65.us_crit_edge:        ; preds = %land.lhs.true50.us
  %.pre33 = load i8*, i8** %fname29.us, align 8, !dbg !875
  br label %if.else65.us, !dbg !874

if.else65.us:                                     ; preds = %land.lhs.true50.us.if.else65.us_crit_edge, %if.else.us
  %21 = phi i8* [ %.pre33, %land.lhs.true50.us.if.else65.us_crit_edge ], [ %18, %if.else.us ], !dbg !875
  %component67.us = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1.us, i64 0, i32 1, !dbg !876
  %22 = load i8*, i8** %component67.us, align 8, !dbg !876
  %call68.us = tail call i8* @update_path(i8* %21, i8* %22) #6, !dbg !877
  call void @llvm.dbg.value(metadata i8* %call68.us, metadata !205, metadata !DIExpression()), !dbg !868
  br label %if.end70.us

if.then55.us:                                     ; preds = %land.lhs.true50.us
  %23 = load i8*, i8** @add_standard_paths.relocated_prefix, align 8, !dbg !878
  %tobool56.us = icmp eq i8* %23, null, !dbg !878
  br i1 %tobool56.us, label %if.then57.us, label %if.end60.us, !dbg !879

if.then57.us:                                     ; preds = %if.then55.us
  %24 = load i8*, i8** @gcc_exec_prefix, align 8, !dbg !880
  %call58.us = tail call i8* (i8*, ...) @concat(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* null) #6, !dbg !881
  call void @llvm.dbg.value(metadata i8* %call58.us, metadata !211, metadata !DIExpression()), !dbg !882
  %call59.us = tail call i8* @make_relative_prefix(i8* %call58.us, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cpp_EXEC_PREFIX, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cpp_PREFIX, i64 0, i64 0)) #6, !dbg !883
  store i8* %call59.us, i8** @add_standard_paths.relocated_prefix, align 8, !dbg !884
  br label %if.end60.us, !dbg !885

if.end60.us:                                      ; preds = %if.then57.us, %if.then55.us
  %25 = phi i8* [ %call59.us, %if.then57.us ], [ %23, %if.then55.us ], !dbg !886
  %26 = load i8*, i8** %fname29.us, align 8, !dbg !887
  %add.ptr62.us = getelementptr inbounds i8, i8* %26, i64 %17, !dbg !888
  %call63.us = tail call i8* (i8*, ...) @concat(i8* %25, i8* %add.ptr62.us, i8* null) #6, !dbg !889
  call void @llvm.dbg.value(metadata i8* %call63.us, metadata !205, metadata !DIExpression()), !dbg !868
  %component.us = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1.us, i64 0, i32 1, !dbg !890
  %27 = load i8*, i8** %component.us, align 8, !dbg !890
  %call64.us = tail call i8* @update_path(i8* %call63.us, i8* %27) #6, !dbg !891
  call void @llvm.dbg.value(metadata i8* %call64.us, metadata !205, metadata !DIExpression()), !dbg !868
  br label %if.end70.us, !dbg !892

if.end70.us:                                      ; preds = %if.end60.us, %if.else65.us, %if.then43.us
  %str37.1.us = phi i8* [ %call45.us, %if.then43.us ], [ %call68.us, %if.else65.us ], [ %call64.us, %if.end60.us ], !dbg !855
  call void @llvm.dbg.value(metadata i8* %str37.1.us, metadata !205, metadata !DIExpression()), !dbg !868
  %multilib71.us = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1.us, i64 0, i32 5, !dbg !893
  %28 = load i8, i8* %multilib71.us, align 1, !dbg !893
  %tobool73.us = icmp ne i8 %28, 0, !dbg !894
  %or.cond4.us = and i1 %tobool73.us, %tobool75, !dbg !895
  br i1 %or.cond4.us, label %if.then76.us, label %if.end78.us, !dbg !895

if.then76.us:                                     ; preds = %if.end70.us
  %call77.us = tail call i8* (i8*, ...) @concat(i8* %str37.1.us, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @dir_separator_str, i64 0, i64 0), i8* nonnull %imultilib, i8* null) #6, !dbg !896
  call void @llvm.dbg.value(metadata i8* %call77.us, metadata !205, metadata !DIExpression()), !dbg !868
  br label %if.end78.us, !dbg !897

if.end78.us:                                      ; preds = %if.then76.us, %if.end70.us
  %str37.2.us = phi i8* [ %call77.us, %if.then76.us ], [ %str37.1.us, %if.end70.us ], !dbg !868
  call void @llvm.dbg.value(metadata i8* %str37.2.us, metadata !205, metadata !DIExpression()), !dbg !868
  %cxx_aware79.us = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1.us, i64 0, i32 3, !dbg !898
  %29 = load i8, i8* %cxx_aware79.us, align 1, !dbg !898
  %conv80.us = sext i8 %29 to i32, !dbg !899
  tail call void @add_path(i8* %str37.2.us, i32 2, i32 %conv80.us, i8 zeroext 0) #7, !dbg !900
  %incdec.ptr83.us = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1.us, i64 1, !dbg !901
  call void @llvm.dbg.value(metadata %struct.default_include* %incdec.ptr83.us, metadata !181, metadata !DIExpression()), !dbg !812
  br label %for.cond28.us, !dbg !902, !llvm.loop !903

for.end84.us-lcssa.us:                            ; preds = %for.cond28.us
  br label %for.end84, !dbg !905

for.cond28:                                       ; preds = %for.inc82, %if.end27.if.end27.split_crit_edge
  %p.1 = phi %struct.default_include* [ getelementptr inbounds ([0 x %struct.default_include], [0 x %struct.default_include]* @cpp_include_defaults, i64 0, i64 0), %if.end27.if.end27.split_crit_edge ], [ %incdec.ptr83, %for.inc82 ], !dbg !859
  call void @llvm.dbg.value(metadata %struct.default_include* %p.1, metadata !181, metadata !DIExpression()), !dbg !812
  %fname29 = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1, i64 0, i32 0, !dbg !860
  %30 = load i8*, i8** %fname29, align 8, !dbg !860
  %tobool30 = icmp eq i8* %30, null, !dbg !861
  br i1 %tobool30, label %for.end84.us-lcssa, label %for.body31, !dbg !861

for.body31:                                       ; preds = %for.cond28
  %cplusplus32 = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1, i64 0, i32 2, !dbg !906
  %31 = load i8, i8* %cplusplus32, align 8, !dbg !906
  %tobool33 = icmp eq i8 %31, 0, !dbg !907
  br i1 %tobool33, label %if.then36, label %for.inc82, !dbg !908

if.then36:                                        ; preds = %for.body31
  br i1 %tobool38, label %if.then36.if.else_crit_edge, label %land.lhs.true39, !dbg !862

if.then36.if.else_crit_edge:                      ; preds = %if.then36
  %add_sysroot46.phi.trans.insert = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1, i64 0, i32 4, !dbg !856
  %.pre34 = load i8, i8* %add_sysroot46.phi.trans.insert, align 2, !dbg !863
  br label %if.else, !dbg !862

land.lhs.true39:                                  ; preds = %if.then36
  %add_sysroot40 = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1, i64 0, i32 4, !dbg !864
  %32 = load i8, i8* %add_sysroot40, align 2, !dbg !864
  %tobool42 = icmp eq i8 %32, 0, !dbg !865
  br i1 %tobool42, label %if.else, label %if.then43, !dbg !866

if.then43:                                        ; preds = %land.lhs.true39
  %call45 = tail call i8* (i8*, ...) @concat(i8* nonnull %sysroot, i8* nonnull %30, i8* null) #6, !dbg !867
  call void @llvm.dbg.value(metadata i8* %call45, metadata !205, metadata !DIExpression()), !dbg !868
  br label %if.end70, !dbg !869

if.else:                                          ; preds = %if.then36.if.else_crit_edge, %land.lhs.true39
  %33 = phi i8 [ %.pre34, %if.then36.if.else_crit_edge ], [ 0, %land.lhs.true39 ], !dbg !863
  %tobool47 = icmp eq i8 %33, 0, !dbg !870
  %or.cond3 = and i1 %tobool47, %tobool49, !dbg !871
  br i1 %or.cond3, label %land.lhs.true50, label %if.else65, !dbg !871

land.lhs.true50:                                  ; preds = %if.else
  %call52 = tail call i32 @strncmp(i8* nonnull %30, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cpp_PREFIX, i64 0, i64 0), i64 %17) #6, !dbg !872
  %cmp53 = icmp eq i32 %call52, 0, !dbg !873
  br i1 %cmp53, label %if.then55, label %land.lhs.true50.if.else65_crit_edge, !dbg !874

land.lhs.true50.if.else65_crit_edge:              ; preds = %land.lhs.true50
  %.pre35 = load i8*, i8** %fname29, align 8, !dbg !875
  br label %if.else65, !dbg !874

if.then55:                                        ; preds = %land.lhs.true50
  %34 = load i8*, i8** @add_standard_paths.relocated_prefix, align 8, !dbg !878
  %tobool56 = icmp eq i8* %34, null, !dbg !878
  br i1 %tobool56, label %if.then57, label %if.end60, !dbg !879

if.then57:                                        ; preds = %if.then55
  %35 = load i8*, i8** @gcc_exec_prefix, align 8, !dbg !880
  %call58 = tail call i8* (i8*, ...) @concat(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* null) #6, !dbg !881
  call void @llvm.dbg.value(metadata i8* %call58, metadata !211, metadata !DIExpression()), !dbg !882
  %call59 = tail call i8* @make_relative_prefix(i8* %call58, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cpp_EXEC_PREFIX, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cpp_PREFIX, i64 0, i64 0)) #6, !dbg !883
  store i8* %call59, i8** @add_standard_paths.relocated_prefix, align 8, !dbg !884
  br label %if.end60, !dbg !885

if.end60:                                         ; preds = %if.then55, %if.then57
  %36 = phi i8* [ %34, %if.then55 ], [ %call59, %if.then57 ], !dbg !886
  %37 = load i8*, i8** %fname29, align 8, !dbg !887
  %add.ptr62 = getelementptr inbounds i8, i8* %37, i64 %17, !dbg !888
  %call63 = tail call i8* (i8*, ...) @concat(i8* %36, i8* %add.ptr62, i8* null) #6, !dbg !889
  call void @llvm.dbg.value(metadata i8* %call63, metadata !205, metadata !DIExpression()), !dbg !868
  %component = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1, i64 0, i32 1, !dbg !890
  %38 = load i8*, i8** %component, align 8, !dbg !890
  %call64 = tail call i8* @update_path(i8* %call63, i8* %38) #6, !dbg !891
  call void @llvm.dbg.value(metadata i8* %call64, metadata !205, metadata !DIExpression()), !dbg !868
  br label %if.end70, !dbg !892

if.else65:                                        ; preds = %land.lhs.true50.if.else65_crit_edge, %if.else
  %39 = phi i8* [ %.pre35, %land.lhs.true50.if.else65_crit_edge ], [ %30, %if.else ], !dbg !875
  %component67 = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1, i64 0, i32 1, !dbg !876
  %40 = load i8*, i8** %component67, align 8, !dbg !876
  %call68 = tail call i8* @update_path(i8* %39, i8* %40) #6, !dbg !877
  call void @llvm.dbg.value(metadata i8* %call68, metadata !205, metadata !DIExpression()), !dbg !868
  br label %if.end70

if.end70:                                         ; preds = %if.end60, %if.else65, %if.then43
  %str37.1 = phi i8* [ %call45, %if.then43 ], [ %call68, %if.else65 ], [ %call64, %if.end60 ], !dbg !855
  call void @llvm.dbg.value(metadata i8* %str37.1, metadata !205, metadata !DIExpression()), !dbg !868
  %multilib71 = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1, i64 0, i32 5, !dbg !893
  %41 = load i8, i8* %multilib71, align 1, !dbg !893
  %tobool73 = icmp ne i8 %41, 0, !dbg !894
  %or.cond4 = and i1 %tobool73, %tobool75, !dbg !895
  br i1 %or.cond4, label %if.then76, label %if.end78, !dbg !895

if.then76:                                        ; preds = %if.end70
  %call77 = tail call i8* (i8*, ...) @concat(i8* %str37.1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @dir_separator_str, i64 0, i64 0), i8* nonnull %imultilib, i8* null) #6, !dbg !896
  call void @llvm.dbg.value(metadata i8* %call77, metadata !205, metadata !DIExpression()), !dbg !868
  br label %if.end78, !dbg !897

if.end78:                                         ; preds = %if.then76, %if.end70
  %str37.2 = phi i8* [ %call77, %if.then76 ], [ %str37.1, %if.end70 ], !dbg !868
  call void @llvm.dbg.value(metadata i8* %str37.2, metadata !205, metadata !DIExpression()), !dbg !868
  %cxx_aware79 = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1, i64 0, i32 3, !dbg !898
  %42 = load i8, i8* %cxx_aware79, align 1, !dbg !898
  %conv80 = sext i8 %42 to i32, !dbg !899
  tail call void @add_path(i8* %str37.2, i32 2, i32 %conv80, i8 zeroext 0) #7, !dbg !900
  br label %for.inc82, !dbg !909

for.inc82:                                        ; preds = %if.end78, %for.body31
  %incdec.ptr83 = getelementptr inbounds %struct.default_include, %struct.default_include* %p.1, i64 1, !dbg !901
  call void @llvm.dbg.value(metadata %struct.default_include* %incdec.ptr83, metadata !181, metadata !DIExpression()), !dbg !812
  br label %for.cond28, !dbg !902, !llvm.loop !903

for.end84.us-lcssa:                               ; preds = %for.cond28
  br label %for.end84, !dbg !905

for.end84:                                        ; preds = %for.end84.us-lcssa.us, %for.end84.us-lcssa
  ret void, !dbg !905
}

; Function Attrs: nounwind uwtable
define internal fastcc void @merge_include_chains(i8* %sysroot, %struct.cpp_reader* %pfile, i32 %verbose) unnamed_addr #4 !dbg !910 {
entry:
  call void @llvm.dbg.value(metadata i8* %sysroot, metadata !914, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !915, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata i32 %verbose, metadata !916, metadata !DIExpression()), !dbg !920
  %tobool = icmp eq i8* %sysroot, null, !dbg !921
  br i1 %tobool, label %if.end, label %if.then, !dbg !923

if.then:                                          ; preds = %entry
  tail call fastcc void @add_sysroot_to_chain(i8* nonnull %sysroot, i32 0) #7, !dbg !924
  tail call fastcc void @add_sysroot_to_chain(i8* nonnull %sysroot, i32 1) #7, !dbg !926
  tail call fastcc void @add_sysroot_to_chain(i8* nonnull %sysroot, i32 2) #7, !dbg !927
  tail call fastcc void @add_sysroot_to_chain(i8* nonnull %sysroot, i32 3) #7, !dbg !928
  br label %if.end, !dbg !929

if.end:                                           ; preds = %entry, %if.then
  %0 = load %struct.cpp_dir*, %struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 2), align 16, !dbg !930
  %tobool1 = icmp eq %struct.cpp_dir* %0, null, !dbg !930
  %1 = load i64, i64* bitcast (%struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 3) to i64*), align 8, !dbg !932
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !933

if.then2:                                         ; preds = %if.end
  %2 = load i64*, i64** bitcast (%struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @tails, i64 0, i64 2) to i64**), align 16, !dbg !934
  store i64 %1, i64* %2, align 8, !dbg !935
  %.pre = load %struct.cpp_dir*, %struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 2), align 16, !dbg !936
  br label %if.end3, !dbg !934

if.else:                                          ; preds = %if.end
  store i64 %1, i64* bitcast (%struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 2) to i64*), align 16, !dbg !937
  %3 = inttoptr i64 %1 to %struct.cpp_dir*
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %4 = phi %struct.cpp_dir* [ %3, %if.else ], [ %.pre, %if.then2 ], !dbg !936
  %call = tail call fastcc %struct.cpp_dir* @remove_duplicates(%struct.cpp_reader* %pfile, %struct.cpp_dir* %4, %struct.cpp_dir* null, %struct.cpp_dir* null, i32 %verbose) #7, !dbg !938
  store %struct.cpp_dir* %call, %struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 2), align 16, !dbg !939
  %5 = load %struct.cpp_dir*, %struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 1), align 8, !dbg !940
  %call4 = tail call fastcc %struct.cpp_dir* @remove_duplicates(%struct.cpp_reader* %pfile, %struct.cpp_dir* %5, %struct.cpp_dir* %call, %struct.cpp_dir* %call, i32 %verbose) #7, !dbg !941
  store %struct.cpp_dir* %call4, %struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 1), align 8, !dbg !942
  %6 = load %struct.cpp_dir*, %struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 0), align 16, !dbg !943
  %7 = load %struct.cpp_dir*, %struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 2), align 16, !dbg !944
  %call5 = tail call fastcc %struct.cpp_dir* @remove_duplicates(%struct.cpp_reader* %pfile, %struct.cpp_dir* %6, %struct.cpp_dir* %7, %struct.cpp_dir* %call4, i32 %verbose) #7, !dbg !945
  store %struct.cpp_dir* %call5, %struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 0), align 16, !dbg !946
  %tobool6 = icmp eq i32 %verbose, 0, !dbg !947
  br i1 %tobool6, label %if.end18, label %if.then7, !dbg !948

if.then7:                                         ; preds = %if.end3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !949
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !950
  br label %for.cond, !dbg !951

for.cond:                                         ; preds = %if.end14, %if.then7
  %p.0.in = phi %struct.cpp_dir** [ getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 0), %if.then7 ], [ %next16, %if.end14 ]
  %p.0 = load %struct.cpp_dir*, %struct.cpp_dir** %p.0.in, align 8, !dbg !953
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %p.0, metadata !917, metadata !DIExpression()), !dbg !954
  %9 = load %struct.cpp_dir*, %struct.cpp_dir** getelementptr inbounds ([4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 1), align 8, !dbg !955
  %cmp = icmp eq %struct.cpp_dir* %p.0, %9, !dbg !959
  br i1 %cmp, label %if.then9, label %if.end11, !dbg !960

if.then9:                                         ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !961
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !962
  br label %if.end11, !dbg !962

if.end11:                                         ; preds = %if.then9, %for.cond
  %tobool12 = icmp eq %struct.cpp_dir* %p.0, null, !dbg !963
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !954
  br i1 %tobool12, label %for.end, label %if.end14, !dbg !965

if.end14:                                         ; preds = %if.end11
  %name = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %p.0, i64 0, i32 1, !dbg !966
  %12 = load i8*, i8** %name, align 8, !dbg !966
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %12) #6, !dbg !967
  %next16 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %p.0, i64 0, i32 0, !dbg !968
  br label %for.cond, !dbg !969, !llvm.loop !970

for.end:                                          ; preds = %if.end11
  %.lcssa = phi %struct._IO_FILE* [ %11, %if.end11 ], !dbg !954
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.lcssa, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !973
  br label %if.end18, !dbg !974

if.end18:                                         ; preds = %if.end3, %for.end
  ret void, !dbg !975
}

declare dso_local void @cpp_set_include_chains(%struct.cpp_reader*, %struct.cpp_dir*, %struct.cpp_dir*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @hook_void_charptr_charptr_int(i8* %sysroot, i8* %iprefix, i32 %stdinc) #4 !dbg !976 {
entry:
  call void @llvm.dbg.value(metadata i8* %sysroot, metadata !978, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %iprefix, metadata !979, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i32 %stdinc, metadata !980, metadata !DIExpression()), !dbg !981
  ret void, !dbg !982
}

declare dso_local i8* @getenv(i8*) local_unnamed_addr #1

declare dso_local i8* @xstrdup(i8*) local_unnamed_addr #1

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local zeroext i8 @cpp_relocated() local_unnamed_addr #1

declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local i8* @concat(i8*, ...) local_unnamed_addr #1

declare dso_local i8* @make_relative_prefix(i8*, i8*, i8*) local_unnamed_addr #1

declare dso_local i8* @update_path(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @add_sysroot_to_chain(i8* %sysroot, i32 %chain) unnamed_addr #4 !dbg !983 {
entry:
  call void @llvm.dbg.value(metadata i8* %sysroot, metadata !985, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i32 %chain, metadata !986, metadata !DIExpression()), !dbg !988
  %idxprom = sext i32 %chain to i64, !dbg !989
  %arrayidx = getelementptr inbounds [4 x %struct.cpp_dir*], [4 x %struct.cpp_dir*]* @heads, i64 0, i64 %idxprom, !dbg !989
  br label %for.cond, !dbg !991

for.cond:                                         ; preds = %for.inc, %entry
  %p.0.in = phi %struct.cpp_dir** [ %arrayidx, %entry ], [ %next, %for.inc ]
  %p.0 = load %struct.cpp_dir*, %struct.cpp_dir** %p.0.in, align 8, !dbg !992
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %p.0, metadata !987, metadata !DIExpression()), !dbg !988
  %cmp = icmp eq %struct.cpp_dir* %p.0, null, !dbg !993
  br i1 %cmp, label %for.end, label %for.body, !dbg !995

for.body:                                         ; preds = %for.cond
  %name = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %p.0, i64 0, i32 1, !dbg !996
  %0 = load i8*, i8** %name, align 8, !dbg !996
  %1 = load i8, i8* %0, align 1, !dbg !998
  %cmp2 = icmp eq i8 %1, 61, !dbg !999
  br i1 %cmp2, label %land.lhs.true, label %for.inc, !dbg !1000

land.lhs.true:                                    ; preds = %for.body
  %user_supplied_p = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %p.0, i64 0, i32 4, !dbg !1001
  %2 = load i8, i8* %user_supplied_p, align 1, !dbg !1001
  %tobool = icmp eq i8 %2, 0, !dbg !1002
  br i1 %tobool, label %for.inc, label %if.then, !dbg !1003

if.then:                                          ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1004
  %call = tail call i8* (i8*, ...) @concat(i8* %sysroot, i8* nonnull %add.ptr, i8* null) #6, !dbg !1005
  store i8* %call, i8** %name, align 8, !dbg !1006
  br label %for.inc, !dbg !1007

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then
  %next = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %p.0, i64 0, i32 0, !dbg !1008
  br label %for.cond, !dbg !1009, !llvm.loop !1010

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1012
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_dir* @remove_duplicates(%struct.cpp_reader* %pfile, %struct.cpp_dir* %head, %struct.cpp_dir* %system, %struct.cpp_dir* %join, i32 %verbose) unnamed_addr #4 !dbg !1013 {
entry:
  %head.addr = alloca %struct.cpp_dir*, align 8
  %st = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1017, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %head, metadata !1018, metadata !DIExpression()), !dbg !1036
  store %struct.cpp_dir* %head, %struct.cpp_dir** %head.addr, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %system, metadata !1019, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %join, metadata !1020, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i32 %verbose, metadata !1021, metadata !DIExpression()), !dbg !1036
  %0 = bitcast %struct.stat* %st to i8*, !dbg !1037
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #8, !dbg !1037
  call void @llvm.dbg.value(metadata %struct.cpp_dir** %head.addr, metadata !1022, metadata !DIExpression()), !dbg !1036
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 3, !dbg !1038
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 1, !dbg !1040
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 0, !dbg !1040
  %tobool71 = icmp ne %struct.cpp_dir* %join, null, !dbg !1042
  %dev74 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %join, i64 0, i32 9, !dbg !1042
  %ino79 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %join, i64 0, i32 8, !dbg !1042
  %construct84 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %join, i64 0, i32 7, !dbg !1042
  %tobool94 = icmp eq i32 %verbose, 0, !dbg !1046
  br label %for.cond, !dbg !1047

for.cond:                                         ; preds = %cleanup, %entry
  %1 = phi %struct.cpp_dir* [ %head, %entry ], [ %.pre, %cleanup ], !dbg !1048
  %pcur.0 = phi %struct.cpp_dir** [ %head.addr, %entry ], [ %pcur.1, %cleanup ], !dbg !1049
  call void @llvm.dbg.value(metadata %struct.cpp_dir** %pcur.0, metadata !1022, metadata !DIExpression()), !dbg !1036
  %tobool = icmp eq %struct.cpp_dir* %1, null, !dbg !1050
  br i1 %tobool, label %for.end95, label %for.body, !dbg !1050

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !1027, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %1, metadata !1025, metadata !DIExpression()), !dbg !1036
  %name = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %1, i64 0, i32 1, !dbg !1051
  %2 = load i8*, i8** %name, align 8, !dbg !1051
  call void @llvm.dbg.value(metadata %struct.stat* %st, metadata !1026, metadata !DIExpression(DW_OP_deref)), !dbg !1036
  %call = call i32 @stat(i8* %2, %struct.stat* nonnull %st) #7, !dbg !1052
  %tobool1 = icmp eq i32 %call, 0, !dbg !1052
  br i1 %tobool1, label %if.else14, label %if.then, !dbg !1053

if.then:                                          ; preds = %for.body
  %call2 = call i32* @__errno_location() #6, !dbg !1054
  %3 = load i32, i32* %call2, align 4, !dbg !1054
  %cmp = icmp eq i32 %3, 2, !dbg !1055
  br i1 %cmp, label %if.else, label %if.then3, !dbg !1056

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %name, align 8, !dbg !1057
  %call5 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 3, i8* %4) #6, !dbg !1058
  br label %if.end92, !dbg !1058

if.else:                                          ; preds = %if.then
  %call6 = call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #6, !dbg !1059
  call void @llvm.dbg.value(metadata %struct.cpp_options* %call6, metadata !1031, metadata !DIExpression()), !dbg !1060
  %warn_missing_include_dirs = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call6, i64 0, i32 14, !dbg !1061
  %5 = load i8, i8* %warn_missing_include_dirs, align 4, !dbg !1061
  %tobool7 = icmp eq i8 %5, 0, !dbg !1063
  br i1 %tobool7, label %if.end92, label %land.lhs.true, !dbg !1064

land.lhs.true:                                    ; preds = %if.else
  %user_supplied_p = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %1, i64 0, i32 4, !dbg !1065
  %6 = load i8, i8* %user_supplied_p, align 1, !dbg !1065
  %tobool9 = icmp eq i8 %6, 0, !dbg !1066
  br i1 %tobool9, label %if.end92, label %if.then10, !dbg !1067

if.then10:                                        ; preds = %land.lhs.true
  %7 = load i8*, i8** %name, align 8, !dbg !1068
  %call12 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 0, i8* %7) #6, !dbg !1069
  br label %if.end92, !dbg !1069

if.else14:                                        ; preds = %for.body
  %8 = load i32, i32* %st_mode, align 8, !dbg !1070
  %and = and i32 %8, 61440, !dbg !1070
  %cmp15 = icmp eq i32 %and, 16384, !dbg !1070
  br i1 %cmp15, label %if.else20, label %if.then17, !dbg !1071

if.then17:                                        ; preds = %if.else14
  %9 = load i8*, i8** %name, align 8, !dbg !1072
  %call19 = call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 0, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %9) #6, !dbg !1073
  br label %if.end92, !dbg !1073

if.else20:                                        ; preds = %if.else14
  %10 = load i64, i64* %st_ino, align 8, !dbg !1074
  %ino = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %1, i64 0, i32 8, !dbg !1074
  store i64 %10, i64* %ino, align 8, !dbg !1074
  %11 = load i64, i64* %st_dev, align 8, !dbg !1075
  %dev = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %1, i64 0, i32 9, !dbg !1076
  store i64 %11, i64* %dev, align 8, !dbg !1077
  call void @llvm.dbg.value(metadata i32 3, metadata !1027, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %system, metadata !1024, metadata !DIExpression()), !dbg !1036
  %construct = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %1, i64 0, i32 7, !dbg !1078
  br label %for.cond21, !dbg !1082

for.cond21:                                       ; preds = %for.inc, %if.else20
  %tmp.0 = phi %struct.cpp_dir* [ %system, %if.else20 ], [ %16, %for.inc ], !dbg !1083
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %tmp.0, metadata !1024, metadata !DIExpression()), !dbg !1036
  %cond = icmp eq %struct.cpp_dir* %tmp.0, null, !dbg !1084
  br i1 %cond, label %if.then40.loopexit, label %for.body23, !dbg !1084

for.body23:                                       ; preds = %for.cond21
  %dev24 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %tmp.0, i64 0, i32 9, !dbg !1085
  %12 = load i64, i64* %dev24, align 8, !dbg !1085
  %cmp26 = icmp eq i64 %12, %11, !dbg !1085
  br i1 %cmp26, label %land.lhs.true28, label %for.inc, !dbg !1085

land.lhs.true28:                                  ; preds = %for.body23
  %ino29 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %tmp.0, i64 0, i32 8, !dbg !1085
  %13 = load i64, i64* %ino29, align 8, !dbg !1085
  %cmp31 = icmp eq i64 %13, %10, !dbg !1085
  br i1 %cmp31, label %land.lhs.true33, label %for.inc, !dbg !1086

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %14 = load i8* (i8*, %struct.cpp_dir*)*, i8* (i8*, %struct.cpp_dir*)** %construct, align 8, !dbg !1087
  %construct34 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %tmp.0, i64 0, i32 7, !dbg !1088
  %15 = load i8* (i8*, %struct.cpp_dir*)*, i8* (i8*, %struct.cpp_dir*)** %construct34, align 8, !dbg !1088
  %cmp35 = icmp eq i8* (i8*, %struct.cpp_dir*)* %14, %15, !dbg !1089
  br i1 %cmp35, label %for.end, label %for.inc, !dbg !1090

for.inc:                                          ; preds = %for.body23, %land.lhs.true28, %land.lhs.true33
  %next = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %tmp.0, i64 0, i32 0, !dbg !1091
  %16 = load %struct.cpp_dir*, %struct.cpp_dir** %next, align 8, !dbg !1091
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %16, metadata !1024, metadata !DIExpression()), !dbg !1036
  br label %for.cond21, !dbg !1092, !llvm.loop !1093

for.end:                                          ; preds = %land.lhs.true33
  br label %if.end92, !dbg !1095

if.then40.loopexit:                               ; preds = %for.cond21
  call void @llvm.dbg.value(metadata i32 2, metadata !1027, metadata !DIExpression()), !dbg !1046
  br label %for.cond41, !dbg !1096

for.cond41:                                       ; preds = %for.inc61, %if.then40.loopexit
  %tmp.1.in = phi %struct.cpp_dir** [ %head.addr, %if.then40.loopexit ], [ %next62, %for.inc61 ]
  %tmp.1 = load %struct.cpp_dir*, %struct.cpp_dir** %tmp.1.in, align 8, !dbg !1098
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %tmp.1, metadata !1024, metadata !DIExpression()), !dbg !1036
  %cmp42 = icmp eq %struct.cpp_dir* %tmp.1, %1, !dbg !1099
  br i1 %cmp42, label %for.end63, label %for.body44, !dbg !1101

for.body44:                                       ; preds = %for.cond41
  %dev46 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %tmp.1, i64 0, i32 9, !dbg !1102
  %17 = load i64, i64* %dev46, align 8, !dbg !1102
  %cmp47 = icmp eq i64 %11, %17, !dbg !1102
  br i1 %cmp47, label %land.lhs.true49, label %for.inc61, !dbg !1102

land.lhs.true49:                                  ; preds = %for.body44
  %ino51 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %tmp.1, i64 0, i32 8, !dbg !1102
  %18 = load i64, i64* %ino51, align 8, !dbg !1102
  %cmp52 = icmp eq i64 %10, %18, !dbg !1102
  br i1 %cmp52, label %land.lhs.true54, label %for.inc61, !dbg !1104

land.lhs.true54:                                  ; preds = %land.lhs.true49
  %19 = load i8* (i8*, %struct.cpp_dir*)*, i8* (i8*, %struct.cpp_dir*)** %construct, align 8, !dbg !1105
  %construct56 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %tmp.1, i64 0, i32 7, !dbg !1106
  %20 = load i8* (i8*, %struct.cpp_dir*)*, i8* (i8*, %struct.cpp_dir*)** %construct56, align 8, !dbg !1106
  %cmp57 = icmp eq i8* (i8*, %struct.cpp_dir*)* %19, %20, !dbg !1107
  br i1 %cmp57, label %for.end63, label %for.inc61, !dbg !1108

for.inc61:                                        ; preds = %for.body44, %land.lhs.true49, %land.lhs.true54
  %next62 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %tmp.1, i64 0, i32 0, !dbg !1109
  br label %for.cond41, !dbg !1110, !llvm.loop !1111

for.end63:                                        ; preds = %for.cond41, %land.lhs.true54
  %cmp42.lcssa = phi i1 [ %cmp42, %for.cond41 ], [ %cmp42, %land.lhs.true54 ], !dbg !1099
  br i1 %cmp42.lcssa, label %land.lhs.true66, label %if.end92, !dbg !1113

land.lhs.true66:                                  ; preds = %for.end63
  %next67 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %1, i64 0, i32 0, !dbg !1114
  %21 = load %struct.cpp_dir*, %struct.cpp_dir** %next67, align 8, !dbg !1114
  %cmp68 = icmp eq %struct.cpp_dir* %21, null, !dbg !1115
  %or.cond = and i1 %cmp68, %tobool71, !dbg !1116
  br i1 %or.cond, label %land.lhs.true72, label %if.then87, !dbg !1116

land.lhs.true72:                                  ; preds = %land.lhs.true66
  %22 = load i64, i64* %dev74, align 8, !dbg !1117
  %cmp75 = icmp eq i64 %11, %22, !dbg !1117
  br i1 %cmp75, label %land.lhs.true77, label %if.then87, !dbg !1117

land.lhs.true77:                                  ; preds = %land.lhs.true72
  %23 = load i64, i64* %ino79, align 8, !dbg !1117
  %cmp80 = icmp eq i64 %10, %23, !dbg !1117
  br i1 %cmp80, label %land.lhs.true82, label %if.then87, !dbg !1118

land.lhs.true82:                                  ; preds = %land.lhs.true77
  %24 = load i8* (i8*, %struct.cpp_dir*)*, i8* (i8*, %struct.cpp_dir*)** %construct, align 8, !dbg !1119
  %25 = load i8* (i8*, %struct.cpp_dir*)*, i8* (i8*, %struct.cpp_dir*)** %construct84, align 8, !dbg !1120
  %cmp85 = icmp eq i8* (i8*, %struct.cpp_dir*)* %24, %25, !dbg !1121
  br i1 %cmp85, label %if.end92, label %if.then87, !dbg !1122

if.then87:                                        ; preds = %land.lhs.true82, %land.lhs.true77, %land.lhs.true72, %land.lhs.true66
  call void @llvm.dbg.value(metadata %struct.cpp_dir** %next67, metadata !1022, metadata !DIExpression()), !dbg !1036
  br label %cleanup, !dbg !1123, !llvm.loop !1125

if.end92:                                         ; preds = %for.end, %land.lhs.true, %if.else, %if.then17, %for.end63, %land.lhs.true82, %if.then3, %if.then10
  %reason.3 = phi i32 [ 0, %if.then3 ], [ 1, %if.then10 ], [ 1, %land.lhs.true ], [ 1, %if.else ], [ 0, %if.then17 ], [ 3, %for.end ], [ 2, %land.lhs.true82 ], [ 2, %for.end63 ], !dbg !1046
  call void @llvm.dbg.value(metadata i32 %reason.3, metadata !1027, metadata !DIExpression()), !dbg !1046
  %26 = bitcast %struct.cpp_dir* %1 to i64*, !dbg !1127
  %27 = load i64, i64* %26, align 8, !dbg !1127
  %28 = bitcast %struct.cpp_dir** %pcur.0 to i64*, !dbg !1128
  store i64 %27, i64* %28, align 8, !dbg !1128
  %reason.3. = select i1 %tobool94, i32 0, i32 %reason.3, !dbg !1129
  call fastcc void @free_path(%struct.cpp_dir* nonnull %1, i32 %reason.3.) #7, !dbg !1130
  %.pre.pre = load %struct.cpp_dir*, %struct.cpp_dir** %pcur.0, align 8, !dbg !1048
  br label %cleanup, !dbg !1131

cleanup:                                          ; preds = %if.end92, %if.then87
  %.pre = phi %struct.cpp_dir* [ %.pre.pre, %if.end92 ], [ %21, %if.then87 ], !dbg !1048
  %pcur.1 = phi %struct.cpp_dir** [ %pcur.0, %if.end92 ], [ %next67, %if.then87 ], !dbg !1132
  call void @llvm.dbg.value(metadata %struct.cpp_dir** %pcur.1, metadata !1022, metadata !DIExpression()), !dbg !1036
  br label %for.cond

for.end95:                                        ; preds = %for.cond
  %pcur.0.lcssa = phi %struct.cpp_dir** [ %pcur.0, %for.cond ], !dbg !1049
  call void @llvm.dbg.value(metadata %struct.cpp_dir** %pcur.0.lcssa, metadata !1022, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata %struct.cpp_dir** %pcur.0.lcssa, metadata !1022, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata %struct.cpp_dir** %pcur.0.lcssa, metadata !1022, metadata !DIExpression()), !dbg !1036
  store %struct.cpp_dir* %join, %struct.cpp_dir** %pcur.0.lcssa, align 8, !dbg !1133
  %29 = load %struct.cpp_dir*, %struct.cpp_dir** %head.addr, align 8, !dbg !1134
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %29, metadata !1018, metadata !DIExpression()), !dbg !1036
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #8, !dbg !1135
  ret %struct.cpp_dir* %29, !dbg !1136
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local i32* @__errno_location() local_unnamed_addr #1

declare dso_local zeroext i8 @cpp_errno(%struct.cpp_reader*, i32, i8*) local_unnamed_addr #1

declare dso_local zeroext i8 @cpp_error_with_line(%struct.cpp_reader*, i32, i32, i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @free_path(%struct.cpp_dir* %path, i32 %reason) unnamed_addr #4 !dbg !1137 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %path, metadata !1141, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i32 %reason, metadata !1142, metadata !DIExpression()), !dbg !1143
  switch i32 %reason, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !1144

sw.bb:                                            ; preds = %entry, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1145
  %name = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %path, i64 0, i32 1, !dbg !1147
  %1 = load i8*, i8** %name, align 8, !dbg !1147
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* %1) #6, !dbg !1148
  %cmp = icmp eq i32 %reason, 3, !dbg !1149
  br i1 %cmp, label %if.then, label %sw.epilog, !dbg !1151

if.then:                                          ; preds = %sw.bb
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1152
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !1153
  br label %sw.epilog, !dbg !1153

sw.bb2:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1154
  %name3 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %path, i64 0, i32 1, !dbg !1155
  %4 = load i8*, i8** %name3, align 8, !dbg !1155
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i8* %4) #6, !dbg !1156
  br label %sw.epilog, !dbg !1157

sw.epilog:                                        ; preds = %entry, %sw.bb, %if.then, %sw.bb2
  %name6 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %path, i64 0, i32 1, !dbg !1158
  %5 = load i8*, i8** %name6, align 8, !dbg !1158
  tail call void @free(i8* %5) #6, !dbg !1159
  %6 = bitcast %struct.cpp_dir* %path to i8*, !dbg !1160
  tail call void @free(i8* %6) #6, !dbg !1161
  ret void, !dbg !1162
}

declare dso_local void @free(i8*) local_unnamed_addr #1

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
!llvm.module.flags = !{!223, !224, !225}
!llvm.ident = !{!226}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "heads", scope: !2, file: !3, line: 63, type: !168, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !66, nameTableKind: None)
!3 = !DIFile(filename: "incpath.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !19, !25}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_lang", file: !6, line: 158, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./cpplib.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "CLK_GNUC89", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "CLK_GNUC99", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "CLK_STDC89", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "CLK_STDC94", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "CLK_STDC99", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "CLK_GNUCXX", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "CLK_CXX98", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "CLK_GNUCXX0X", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "CLK_CXX0X", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "CLK_ASM", value: 9, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_normalize_level", file: !6, line: 265, baseType: !7, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "normalized_KC", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "normalized_C", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "normalized_identifier_C", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "normalized_none", value: 3, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_deps_style", file: !6, line: 262, baseType: !7, size: 32, elements: !26)
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "DEPS_NONE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "DEPS_USER", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "DEPS_SYSTEM", value: 2, isUnsigned: true)
!30 = !{!31, !32, !33, !34, !37, !38, !40, !35}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !6, line: 39, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !6, line: 523, size: 512, elements: !43)
!43 = !{!44, !46, !47, !48, !49, !50, !51, !53, !57, !63}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !42, file: !6, line: 526, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !42, file: !6, line: 529, baseType: !35, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !42, file: !6, line: 530, baseType: !7, size: 32, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !42, file: !6, line: 534, baseType: !32, size: 8, offset: 160)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !42, file: !6, line: 537, baseType: !32, size: 8, offset: 168)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !42, file: !6, line: 541, baseType: !35, size: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !42, file: !6, line: 545, baseType: !52, size: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !42, file: !6, line: 551, baseType: !54, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!35, !38, !40}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !42, file: !6, line: 555, baseType: !58, size: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !59, line: 47, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !61, line: 148, baseType: !62)
!61 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!62 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !42, file: !6, line: 556, baseType: !64, size: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !59, line: 59, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !61, line: 145, baseType: !62)
!66 = !{!67, !156, !0, !166, !169, !171, !217}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "lang_env_vars", scope: !69, file: !3, line: 430, type: !152, isLocal: true, isDefinition: true)
!69 = distinct !DISubprogram(name: "register_include_chains", scope: !3, file: !3, line: 426, type: !70, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !76)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72, !38, !38, !38, !33, !33, !33}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !6, line: 31, baseType: !74)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !75, line: 91, flags: DIFlagFwdDecl)
!75 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !151}
!77 = !DILocalVariable(name: "pfile", arg: 1, scope: !69, file: !3, line: 426, type: !72)
!78 = !DILocalVariable(name: "sysroot", arg: 2, scope: !69, file: !3, line: 426, type: !38)
!79 = !DILocalVariable(name: "iprefix", arg: 3, scope: !69, file: !3, line: 427, type: !38)
!80 = !DILocalVariable(name: "imultilib", arg: 4, scope: !69, file: !3, line: 427, type: !38)
!81 = !DILocalVariable(name: "stdinc", arg: 5, scope: !69, file: !3, line: 428, type: !33)
!82 = !DILocalVariable(name: "cxx_stdinc", arg: 6, scope: !69, file: !3, line: 428, type: !33)
!83 = !DILocalVariable(name: "verbose", arg: 7, scope: !69, file: !3, line: 428, type: !33)
!84 = !DILocalVariable(name: "cpp_opts", scope: !69, file: !3, line: 433, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_options", file: !6, line: 33, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !6, line: 279, size: 1024, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !140, !143, !144, !145, !146, !147, !148, !149, !150}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !87, file: !6, line: 282, baseType: !7, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !87, file: !6, line: 285, baseType: !5, size: 32, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !87, file: !6, line: 288, baseType: !32, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !87, file: !6, line: 291, baseType: !32, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !87, file: !6, line: 296, baseType: !32, size: 8, offset: 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !87, file: !6, line: 299, baseType: !32, size: 8, offset: 88)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !87, file: !6, line: 303, baseType: !32, size: 8, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !87, file: !6, line: 306, baseType: !32, size: 8, offset: 104)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !87, file: !6, line: 309, baseType: !32, size: 8, offset: 112)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !87, file: !6, line: 312, baseType: !32, size: 8, offset: 120)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !87, file: !6, line: 315, baseType: !32, size: 8, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !87, file: !6, line: 318, baseType: !32, size: 8, offset: 136)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !87, file: !6, line: 321, baseType: !32, size: 8, offset: 144)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !87, file: !6, line: 324, baseType: !32, size: 8, offset: 152)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !87, file: !6, line: 328, baseType: !32, size: 8, offset: 160)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !87, file: !6, line: 331, baseType: !32, size: 8, offset: 168)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !87, file: !6, line: 334, baseType: !32, size: 8, offset: 176)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !87, file: !6, line: 338, baseType: !32, size: 8, offset: 184)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !87, file: !6, line: 341, baseType: !32, size: 8, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !87, file: !6, line: 344, baseType: !32, size: 8, offset: 200)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !87, file: !6, line: 348, baseType: !32, size: 8, offset: 208)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !87, file: !6, line: 352, baseType: !32, size: 8, offset: 216)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !87, file: !6, line: 356, baseType: !32, size: 8, offset: 224)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !87, file: !6, line: 360, baseType: !32, size: 8, offset: 232)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !87, file: !6, line: 363, baseType: !32, size: 8, offset: 240)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !87, file: !6, line: 366, baseType: !32, size: 8, offset: 248)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !87, file: !6, line: 370, baseType: !32, size: 8, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !87, file: !6, line: 373, baseType: !32, size: 8, offset: 264)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !87, file: !6, line: 376, baseType: !32, size: 8, offset: 272)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !87, file: !6, line: 379, baseType: !32, size: 8, offset: 280)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !87, file: !6, line: 382, baseType: !32, size: 8, offset: 288)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !87, file: !6, line: 385, baseType: !32, size: 8, offset: 296)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !87, file: !6, line: 389, baseType: !32, size: 8, offset: 304)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !87, file: !6, line: 392, baseType: !32, size: 8, offset: 312)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !87, file: !6, line: 395, baseType: !32, size: 8, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !87, file: !6, line: 398, baseType: !32, size: 8, offset: 328)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !87, file: !6, line: 401, baseType: !32, size: 8, offset: 336)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !87, file: !6, line: 404, baseType: !38, size: 64, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !87, file: !6, line: 407, baseType: !38, size: 64, offset: 448)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !87, file: !6, line: 410, baseType: !38, size: 64, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !87, file: !6, line: 414, baseType: !19, size: 32, offset: 576)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !87, file: !6, line: 417, baseType: !32, size: 8, offset: 608)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !87, file: !6, line: 420, baseType: !32, size: 8, offset: 616)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !87, file: !6, line: 441, baseType: !133, size: 64, offset: 640)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !87, file: !6, line: 423, size: 64, elements: !134)
!134 = !{!135, !136, !137, !138, !139}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !133, file: !6, line: 426, baseType: !25, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !133, file: !6, line: 429, baseType: !32, size: 8, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !133, file: !6, line: 433, baseType: !32, size: 8, offset: 40)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !133, file: !6, line: 436, baseType: !32, size: 8, offset: 48)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !133, file: !6, line: 440, baseType: !32, size: 8, offset: 56)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !87, file: !6, line: 447, baseType: !141, size: 64, offset: 704)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 46, baseType: !62)
!142 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!143 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !87, file: !6, line: 447, baseType: !141, size: 64, offset: 768)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !87, file: !6, line: 447, baseType: !141, size: 64, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !87, file: !6, line: 447, baseType: !141, size: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !87, file: !6, line: 450, baseType: !32, size: 8, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !87, file: !6, line: 450, baseType: !32, size: 8, offset: 968)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !87, file: !6, line: 454, baseType: !32, size: 8, offset: 976)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !87, file: !6, line: 457, baseType: !32, size: 8, offset: 984)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !87, file: !6, line: 460, baseType: !32, size: 8, offset: 992)
!151 = !DILocalVariable(name: "idx", scope: !69, file: !3, line: 434, type: !141)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !154)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!154 = !{!155}
!155 = !DISubrange(count: 4)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "target_c_incpath", scope: !2, file: !3, line: 474, type: !158, isLocal: false, isDefinition: true)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "target_c_incpath_s", file: !159, line: 26, size: 128, elements: !160)
!159 = !DIFile(filename: "./incpath.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!160 = !{!161, !165}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "extra_pre_includes", scope: !158, file: !159, line: 28, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !38, !38, !33}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "extra_includes", scope: !158, file: !159, line: 29, baseType: !162, size: 64, offset: 64)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "tails", scope: !2, file: !3, line: 64, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !154)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "quote_ignores_source_dir", scope: !2, file: !3, line: 65, type: !32, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "relocated_prefix", scope: !173, file: !3, line: 173, type: !38, isLocal: true, isDefinition: true)
!173 = distinct !DISubprogram(name: "add_standard_paths", scope: !3, file: !3, line: 129, type: !174, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !38, !38, !38, !33}
!176 = !{!177, !178, !179, !180, !181, !193, !194, !195, !205, !211}
!177 = !DILocalVariable(name: "sysroot", arg: 1, scope: !173, file: !3, line: 129, type: !38)
!178 = !DILocalVariable(name: "iprefix", arg: 2, scope: !173, file: !3, line: 129, type: !38)
!179 = !DILocalVariable(name: "imultilib", arg: 3, scope: !173, file: !3, line: 130, type: !38)
!180 = !DILocalVariable(name: "cxx_stdinc", arg: 4, scope: !173, file: !3, line: 130, type: !33)
!181 = !DILocalVariable(name: "p", scope: !173, file: !3, line: 132, type: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_include", file: !185, line: 35, size: 192, elements: !186)
!185 = !DIFile(filename: "./cppdefault.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!186 = !{!187, !188, !189, !190, !191, !192}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !184, file: !185, line: 37, baseType: !153, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "component", scope: !184, file: !185, line: 38, baseType: !153, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !184, file: !185, line: 40, baseType: !39, size: 8, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "cxx_aware", scope: !184, file: !185, line: 41, baseType: !39, size: 8, offset: 136)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "add_sysroot", scope: !184, file: !185, line: 44, baseType: !39, size: 8, offset: 144)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "multilib", scope: !184, file: !185, line: 46, baseType: !39, size: 8, offset: 152)
!193 = !DILocalVariable(name: "relocated", scope: !173, file: !3, line: 133, type: !33)
!194 = !DILocalVariable(name: "len", scope: !173, file: !3, line: 134, type: !141)
!195 = !DILocalVariable(name: "str", scope: !196, file: !3, line: 152, type: !35)
!196 = distinct !DILexicalBlock(scope: !197, file: !3, line: 151, column: 3)
!197 = distinct !DILexicalBlock(scope: !198, file: !3, line: 150, column: 12)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 144, column: 6)
!199 = distinct !DILexicalBlock(scope: !200, file: !3, line: 143, column: 8)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 142, column: 2)
!201 = distinct !DILexicalBlock(scope: !202, file: !3, line: 141, column: 7)
!202 = distinct !DILexicalBlock(scope: !203, file: !3, line: 141, column: 7)
!203 = distinct !DILexicalBlock(scope: !204, file: !3, line: 137, column: 5)
!204 = distinct !DILexicalBlock(scope: !173, file: !3, line: 136, column: 7)
!205 = !DILocalVariable(name: "str", scope: !206, file: !3, line: 165, type: !35)
!206 = distinct !DILexicalBlock(scope: !207, file: !3, line: 164, column: 2)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 163, column: 11)
!208 = distinct !DILexicalBlock(scope: !209, file: !3, line: 162, column: 5)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 161, column: 3)
!210 = distinct !DILexicalBlock(scope: !173, file: !3, line: 161, column: 3)
!211 = !DILocalVariable(name: "dummy", scope: !212, file: !3, line: 181, type: !35)
!212 = distinct !DILexicalBlock(scope: !213, file: !3, line: 180, column: 3)
!213 = distinct !DILexicalBlock(scope: !214, file: !3, line: 179, column: 12)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 172, column: 6)
!215 = distinct !DILexicalBlock(scope: !216, file: !3, line: 170, column: 13)
!216 = distinct !DILexicalBlock(scope: !206, file: !3, line: 168, column: 8)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "dir_separator_str", scope: !2, file: !3, line: 51, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 16, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 2)
!222 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!223 = !{i32 2, !"Dwarf Version", i32 4}
!224 = !{i32 2, !"Debug Info Version", i32 3}
!225 = !{i32 1, !"wchar_size", i32 4}
!226 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!227 = distinct !DISubprogram(name: "vprintf", scope: !228, file: !228, line: 39, type: !229, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !239)
!228 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!229 = !DISubroutineType(types: !230)
!230 = !{!33, !231, !232}
!231 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !234)
!234 = !{!235, !236, !237, !238}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !233, file: !3, baseType: !7, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !233, file: !3, baseType: !7, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !233, file: !3, baseType: !37, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !233, file: !3, baseType: !37, size: 64, offset: 128)
!239 = !{!240, !241}
!240 = !DILocalVariable(name: "__fmt", arg: 1, scope: !227, file: !228, line: 39, type: !231)
!241 = !DILocalVariable(name: "__arg", arg: 2, scope: !227, file: !228, line: 39, type: !232)
!242 = !DILocation(line: 0, scope: !227)
!243 = !DILocation(line: 41, column: 20, scope: !227)
!244 = !DILocation(line: 41, column: 10, scope: !227)
!245 = !DILocation(line: 41, column: 3, scope: !227)
!246 = distinct !DISubprogram(name: "getchar", scope: !228, file: !228, line: 47, type: !247, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!247 = !DISubroutineType(types: !248)
!248 = !{!33}
!249 = !{}
!250 = !DILocation(line: 49, column: 16, scope: !246)
!251 = !DILocation(line: 49, column: 10, scope: !246)
!252 = !DILocation(line: 49, column: 3, scope: !246)
!253 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !228, file: !228, line: 56, type: !254, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !311)
!254 = !DISubroutineType(types: !255)
!255 = !{!33, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !258, line: 7, baseType: !259)
!258 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !260, line: 49, size: 1728, elements: !261)
!260 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !277, !279, !280, !281, !284, !286, !288, !292, !295, !297, !300, !303, !304, !305, !306, !307}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !259, file: !260, line: 51, baseType: !33, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !259, file: !260, line: 54, baseType: !35, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !259, file: !260, line: 55, baseType: !35, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !259, file: !260, line: 56, baseType: !35, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !259, file: !260, line: 57, baseType: !35, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !259, file: !260, line: 58, baseType: !35, size: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !259, file: !260, line: 59, baseType: !35, size: 64, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !259, file: !260, line: 60, baseType: !35, size: 64, offset: 448)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !259, file: !260, line: 61, baseType: !35, size: 64, offset: 512)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !259, file: !260, line: 64, baseType: !35, size: 64, offset: 576)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !259, file: !260, line: 65, baseType: !35, size: 64, offset: 640)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !259, file: !260, line: 66, baseType: !35, size: 64, offset: 704)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !259, file: !260, line: 68, baseType: !275, size: 64, offset: 768)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !260, line: 36, flags: DIFlagFwdDecl)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !259, file: !260, line: 70, baseType: !278, size: 64, offset: 832)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !259, file: !260, line: 72, baseType: !33, size: 32, offset: 896)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !259, file: !260, line: 73, baseType: !33, size: 32, offset: 928)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !259, file: !260, line: 74, baseType: !282, size: 64, offset: 960)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !61, line: 152, baseType: !283)
!283 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !259, file: !260, line: 77, baseType: !285, size: 16, offset: 1024)
!285 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !259, file: !260, line: 78, baseType: !287, size: 8, offset: 1040)
!287 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !259, file: !260, line: 79, baseType: !289, size: 8, offset: 1048)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 1)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !259, file: !260, line: 81, baseType: !293, size: 64, offset: 1088)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !260, line: 43, baseType: null)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !259, file: !260, line: 89, baseType: !296, size: 64, offset: 1152)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !61, line: 153, baseType: !283)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !259, file: !260, line: 91, baseType: !298, size: 64, offset: 1216)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !260, line: 37, flags: DIFlagFwdDecl)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !259, file: !260, line: 92, baseType: !301, size: 64, offset: 1280)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !260, line: 38, flags: DIFlagFwdDecl)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !259, file: !260, line: 93, baseType: !278, size: 64, offset: 1344)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !259, file: !260, line: 94, baseType: !37, size: 64, offset: 1408)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !259, file: !260, line: 95, baseType: !141, size: 64, offset: 1472)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !259, file: !260, line: 96, baseType: !33, size: 32, offset: 1536)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !259, file: !260, line: 98, baseType: !308, size: 160, offset: 1568)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 20)
!311 = !{!312}
!312 = !DILocalVariable(name: "__fp", arg: 1, scope: !253, file: !228, line: 56, type: !256)
!313 = !DILocation(line: 0, scope: !253)
!314 = !DILocation(line: 58, column: 10, scope: !253)
!315 = !DILocation(line: 58, column: 3, scope: !253)
!316 = distinct !DISubprogram(name: "getc_unlocked", scope: !228, file: !228, line: 66, type: !254, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !317)
!317 = !{!318}
!318 = !DILocalVariable(name: "__fp", arg: 1, scope: !316, file: !228, line: 66, type: !256)
!319 = !DILocation(line: 0, scope: !316)
!320 = !DILocation(line: 68, column: 10, scope: !316)
!321 = !DILocation(line: 68, column: 3, scope: !316)
!322 = distinct !DISubprogram(name: "getchar_unlocked", scope: !228, file: !228, line: 73, type: !247, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!323 = !DILocation(line: 75, column: 10, scope: !322)
!324 = !DILocation(line: 75, column: 3, scope: !322)
!325 = distinct !DISubprogram(name: "putchar", scope: !228, file: !228, line: 82, type: !326, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{!33, !33}
!328 = !{!329}
!329 = !DILocalVariable(name: "__c", arg: 1, scope: !325, file: !228, line: 82, type: !33)
!330 = !DILocation(line: 0, scope: !325)
!331 = !DILocation(line: 84, column: 21, scope: !325)
!332 = !DILocation(line: 84, column: 10, scope: !325)
!333 = !DILocation(line: 84, column: 3, scope: !325)
!334 = distinct !DISubprogram(name: "fputc_unlocked", scope: !228, file: !228, line: 91, type: !335, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{!33, !33, !256}
!337 = !{!338, !339}
!338 = !DILocalVariable(name: "__c", arg: 1, scope: !334, file: !228, line: 91, type: !33)
!339 = !DILocalVariable(name: "__stream", arg: 2, scope: !334, file: !228, line: 91, type: !256)
!340 = !DILocation(line: 0, scope: !334)
!341 = !DILocation(line: 93, column: 10, scope: !334)
!342 = !DILocation(line: 93, column: 3, scope: !334)
!343 = distinct !DISubprogram(name: "putc_unlocked", scope: !228, file: !228, line: 101, type: !335, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !344)
!344 = !{!345, !346}
!345 = !DILocalVariable(name: "__c", arg: 1, scope: !343, file: !228, line: 101, type: !33)
!346 = !DILocalVariable(name: "__stream", arg: 2, scope: !343, file: !228, line: 101, type: !256)
!347 = !DILocation(line: 0, scope: !343)
!348 = !DILocation(line: 103, column: 10, scope: !343)
!349 = !DILocation(line: 103, column: 3, scope: !343)
!350 = distinct !DISubprogram(name: "putchar_unlocked", scope: !228, file: !228, line: 108, type: !326, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !351)
!351 = !{!352}
!352 = !DILocalVariable(name: "__c", arg: 1, scope: !350, file: !228, line: 108, type: !33)
!353 = !DILocation(line: 0, scope: !350)
!354 = !DILocation(line: 110, column: 10, scope: !350)
!355 = !DILocation(line: 110, column: 3, scope: !350)
!356 = distinct !DISubprogram(name: "getline", scope: !228, file: !228, line: 118, type: !357, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !361)
!357 = !DISubroutineType(types: !358)
!358 = !{!359, !34, !360, !256}
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !61, line: 193, baseType: !283)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!361 = !{!362, !363, !364}
!362 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !356, file: !228, line: 118, type: !34)
!363 = !DILocalVariable(name: "__n", arg: 2, scope: !356, file: !228, line: 118, type: !360)
!364 = !DILocalVariable(name: "__stream", arg: 3, scope: !356, file: !228, line: 118, type: !256)
!365 = !DILocation(line: 0, scope: !356)
!366 = !DILocation(line: 120, column: 10, scope: !356)
!367 = !DILocation(line: 120, column: 3, scope: !356)
!368 = distinct !DISubprogram(name: "feof_unlocked", scope: !228, file: !228, line: 128, type: !254, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !369)
!369 = !{!370}
!370 = !DILocalVariable(name: "__stream", arg: 1, scope: !368, file: !228, line: 128, type: !256)
!371 = !DILocation(line: 0, scope: !368)
!372 = !DILocation(line: 130, column: 10, scope: !368)
!373 = !DILocation(line: 130, column: 3, scope: !368)
!374 = distinct !DISubprogram(name: "ferror_unlocked", scope: !228, file: !228, line: 135, type: !254, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !375)
!375 = !{!376}
!376 = !DILocalVariable(name: "__stream", arg: 1, scope: !374, file: !228, line: 135, type: !256)
!377 = !DILocation(line: 0, scope: !374)
!378 = !DILocation(line: 137, column: 10, scope: !374)
!379 = !DILocation(line: 137, column: 3, scope: !374)
!380 = distinct !DISubprogram(name: "tolower", scope: !381, file: !381, line: 207, type: !326, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !382)
!381 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!382 = !{!383}
!383 = !DILocalVariable(name: "__c", arg: 1, scope: !380, file: !381, line: 207, type: !33)
!384 = !DILocation(line: 0, scope: !380)
!385 = !DILocation(line: 209, column: 22, scope: !380)
!386 = !DILocation(line: 209, column: 39, scope: !380)
!387 = !DILocation(line: 209, column: 38, scope: !380)
!388 = !DILocation(line: 209, column: 37, scope: !380)
!389 = !DILocation(line: 209, column: 10, scope: !380)
!390 = !DILocation(line: 209, column: 3, scope: !380)
!391 = distinct !DISubprogram(name: "toupper", scope: !381, file: !381, line: 213, type: !326, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !392)
!392 = !{!393}
!393 = !DILocalVariable(name: "__c", arg: 1, scope: !391, file: !381, line: 213, type: !33)
!394 = !DILocation(line: 0, scope: !391)
!395 = !DILocation(line: 215, column: 22, scope: !391)
!396 = !DILocation(line: 215, column: 39, scope: !391)
!397 = !DILocation(line: 215, column: 38, scope: !391)
!398 = !DILocation(line: 215, column: 37, scope: !391)
!399 = !DILocation(line: 215, column: 10, scope: !391)
!400 = !DILocation(line: 215, column: 3, scope: !391)
!401 = distinct !DISubprogram(name: "atoi", scope: !402, file: !402, line: 361, type: !403, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !405)
!402 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!403 = !DISubroutineType(types: !404)
!404 = !{!33, !38}
!405 = !{!406}
!406 = !DILocalVariable(name: "__nptr", arg: 1, scope: !401, file: !402, line: 361, type: !38)
!407 = !DILocation(line: 0, scope: !401)
!408 = !DILocation(line: 363, column: 16, scope: !401)
!409 = !DILocation(line: 363, column: 10, scope: !401)
!410 = !DILocation(line: 363, column: 3, scope: !401)
!411 = distinct !DISubprogram(name: "atol", scope: !402, file: !402, line: 366, type: !412, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{!283, !38}
!414 = !{!415}
!415 = !DILocalVariable(name: "__nptr", arg: 1, scope: !411, file: !402, line: 366, type: !38)
!416 = !DILocation(line: 0, scope: !411)
!417 = !DILocation(line: 368, column: 10, scope: !411)
!418 = !DILocation(line: 368, column: 3, scope: !411)
!419 = distinct !DISubprogram(name: "atoll", scope: !402, file: !402, line: 373, type: !420, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !423)
!420 = !DISubroutineType(types: !421)
!421 = !{!422, !38}
!422 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!423 = !{!424}
!424 = !DILocalVariable(name: "__nptr", arg: 1, scope: !419, file: !402, line: 373, type: !38)
!425 = !DILocation(line: 0, scope: !419)
!426 = !DILocation(line: 375, column: 10, scope: !419)
!427 = !DILocation(line: 375, column: 3, scope: !419)
!428 = distinct !DISubprogram(name: "bsearch", scope: !429, file: !429, line: 20, type: !430, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !438)
!429 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!430 = !DISubroutineType(types: !431)
!431 = !{!37, !432, !432, !141, !141, !434}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !402, line: 808, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!33, !432, !432}
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448}
!439 = !DILocalVariable(name: "__key", arg: 1, scope: !428, file: !429, line: 20, type: !432)
!440 = !DILocalVariable(name: "__base", arg: 2, scope: !428, file: !429, line: 20, type: !432)
!441 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !428, file: !429, line: 20, type: !141)
!442 = !DILocalVariable(name: "__size", arg: 4, scope: !428, file: !429, line: 20, type: !141)
!443 = !DILocalVariable(name: "__compar", arg: 5, scope: !428, file: !429, line: 21, type: !434)
!444 = !DILocalVariable(name: "__l", scope: !428, file: !429, line: 23, type: !141)
!445 = !DILocalVariable(name: "__u", scope: !428, file: !429, line: 23, type: !141)
!446 = !DILocalVariable(name: "__idx", scope: !428, file: !429, line: 23, type: !141)
!447 = !DILocalVariable(name: "__p", scope: !428, file: !429, line: 24, type: !432)
!448 = !DILocalVariable(name: "__comparison", scope: !428, file: !429, line: 25, type: !33)
!449 = !DILocation(line: 0, scope: !428)
!450 = !DILocation(line: 29, column: 3, scope: !428)
!451 = !DILocation(line: 27, column: 7, scope: !428)
!452 = !DILocation(line: 29, column: 14, scope: !428)
!453 = !DILocation(line: 31, column: 20, scope: !454)
!454 = distinct !DILexicalBlock(scope: !428, file: !429, line: 30, column: 5)
!455 = !DILocation(line: 31, column: 27, scope: !454)
!456 = !DILocation(line: 32, column: 56, scope: !454)
!457 = !DILocation(line: 32, column: 47, scope: !454)
!458 = !DILocation(line: 33, column: 22, scope: !454)
!459 = !DILocation(line: 34, column: 24, scope: !460)
!460 = distinct !DILexicalBlock(scope: !454, file: !429, line: 34, column: 11)
!461 = !DILocation(line: 34, column: 11, scope: !454)
!462 = !DILocation(line: 36, column: 29, scope: !463)
!463 = distinct !DILexicalBlock(scope: !460, file: !429, line: 36, column: 16)
!464 = !DILocation(line: 36, column: 16, scope: !460)
!465 = !DILocation(line: 37, column: 14, scope: !463)
!466 = distinct !{!466, !450, !467}
!467 = !DILocation(line: 40, column: 5, scope: !428)
!468 = !DILocation(line: 43, column: 1, scope: !428)
!469 = distinct !DISubprogram(name: "atof", scope: !470, file: !470, line: 25, type: !471, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !474)
!470 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!471 = !DISubroutineType(types: !472)
!472 = !{!473, !38}
!473 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!474 = !{!475}
!475 = !DILocalVariable(name: "__nptr", arg: 1, scope: !469, file: !470, line: 25, type: !38)
!476 = !DILocation(line: 0, scope: !469)
!477 = !DILocation(line: 27, column: 10, scope: !469)
!478 = !DILocation(line: 27, column: 3, scope: !469)
!479 = distinct !DISubprogram(name: "strtoimax", scope: !480, file: !480, line: 324, type: !481, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !487)
!480 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !231, !486, !33}
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !484, line: 101, baseType: !485)
!484 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !61, line: 72, baseType: !283)
!486 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!487 = !{!488, !489, !490}
!488 = !DILocalVariable(name: "nptr", arg: 1, scope: !479, file: !480, line: 324, type: !231)
!489 = !DILocalVariable(name: "endptr", arg: 2, scope: !479, file: !480, line: 324, type: !486)
!490 = !DILocalVariable(name: "base", arg: 3, scope: !479, file: !480, line: 324, type: !33)
!491 = !DILocation(line: 0, scope: !479)
!492 = !DILocation(line: 327, column: 10, scope: !479)
!493 = !DILocation(line: 327, column: 3, scope: !479)
!494 = distinct !DISubprogram(name: "strtoumax", scope: !480, file: !480, line: 336, type: !495, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !499)
!495 = !DISubroutineType(types: !496)
!496 = !{!497, !231, !486, !33}
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !484, line: 102, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !61, line: 73, baseType: !62)
!499 = !{!500, !501, !502}
!500 = !DILocalVariable(name: "nptr", arg: 1, scope: !494, file: !480, line: 336, type: !231)
!501 = !DILocalVariable(name: "endptr", arg: 2, scope: !494, file: !480, line: 336, type: !486)
!502 = !DILocalVariable(name: "base", arg: 3, scope: !494, file: !480, line: 336, type: !33)
!503 = !DILocation(line: 0, scope: !494)
!504 = !DILocation(line: 339, column: 10, scope: !494)
!505 = !DILocation(line: 339, column: 3, scope: !494)
!506 = distinct !DISubprogram(name: "wcstoimax", scope: !480, file: !480, line: 348, type: !507, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !516)
!507 = !DISubroutineType(types: !508)
!508 = !{!483, !509, !513, !33}
!509 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !480, line: 34, baseType: !33)
!513 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!516 = !{!517, !518, !519}
!517 = !DILocalVariable(name: "nptr", arg: 1, scope: !506, file: !480, line: 348, type: !509)
!518 = !DILocalVariable(name: "endptr", arg: 2, scope: !506, file: !480, line: 348, type: !513)
!519 = !DILocalVariable(name: "base", arg: 3, scope: !506, file: !480, line: 348, type: !33)
!520 = !DILocation(line: 0, scope: !506)
!521 = !DILocation(line: 351, column: 10, scope: !506)
!522 = !DILocation(line: 351, column: 3, scope: !506)
!523 = distinct !DISubprogram(name: "wcstoumax", scope: !480, file: !480, line: 362, type: !524, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !526)
!524 = !DISubroutineType(types: !525)
!525 = !{!497, !509, !513, !33}
!526 = !{!527, !528, !529}
!527 = !DILocalVariable(name: "nptr", arg: 1, scope: !523, file: !480, line: 362, type: !509)
!528 = !DILocalVariable(name: "endptr", arg: 2, scope: !523, file: !480, line: 362, type: !513)
!529 = !DILocalVariable(name: "base", arg: 3, scope: !523, file: !480, line: 362, type: !33)
!530 = !DILocation(line: 0, scope: !523)
!531 = !DILocation(line: 365, column: 10, scope: !523)
!532 = !DILocation(line: 365, column: 3, scope: !523)
!533 = distinct !DISubprogram(name: "stat", scope: !534, file: !534, line: 453, type: !535, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !572)
!534 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!535 = !DISubroutineType(types: !536)
!536 = !{!33, !38, !537}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !539, line: 46, size: 1152, elements: !540)
!539 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!540 = !{!541, !542, !543, !545, !547, !549, !551, !552, !553, !554, !556, !558, !566, !567, !568}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !538, file: !539, line: 48, baseType: !65, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !538, file: !539, line: 53, baseType: !60, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !538, file: !539, line: 61, baseType: !544, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !61, line: 151, baseType: !62)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !538, file: !539, line: 62, baseType: !546, size: 32, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !61, line: 150, baseType: !7)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !538, file: !539, line: 64, baseType: !548, size: 32, offset: 224)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !61, line: 146, baseType: !7)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !538, file: !539, line: 65, baseType: !550, size: 32, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !61, line: 147, baseType: !7)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !538, file: !539, line: 67, baseType: !33, size: 32, offset: 288)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !538, file: !539, line: 69, baseType: !65, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !538, file: !539, line: 74, baseType: !282, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !538, file: !539, line: 78, baseType: !555, size: 64, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !61, line: 174, baseType: !283)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !538, file: !539, line: 80, baseType: !557, size: 64, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !61, line: 179, baseType: !283)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !538, file: !539, line: 91, baseType: !559, size: 128, offset: 576)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !560, line: 10, size: 128, elements: !561)
!560 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!561 = !{!562, !564}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !559, file: !560, line: 12, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !61, line: 160, baseType: !283)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !559, file: !560, line: 16, baseType: !565, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !61, line: 196, baseType: !283)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !538, file: !539, line: 92, baseType: !559, size: 128, offset: 704)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !538, file: !539, line: 93, baseType: !559, size: 128, offset: 832)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !538, file: !539, line: 106, baseType: !569, size: 192, offset: 960)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 192, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 3)
!572 = !{!573, !574}
!573 = !DILocalVariable(name: "__path", arg: 1, scope: !533, file: !534, line: 453, type: !38)
!574 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !533, file: !534, line: 453, type: !537)
!575 = !DILocation(line: 0, scope: !533)
!576 = !DILocation(line: 455, column: 10, scope: !533)
!577 = !DILocation(line: 455, column: 3, scope: !533)
!578 = distinct !DISubprogram(name: "lstat", scope: !534, file: !534, line: 460, type: !535, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !579)
!579 = !{!580, !581}
!580 = !DILocalVariable(name: "__path", arg: 1, scope: !578, file: !534, line: 460, type: !38)
!581 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !578, file: !534, line: 460, type: !537)
!582 = !DILocation(line: 0, scope: !578)
!583 = !DILocation(line: 462, column: 10, scope: !578)
!584 = !DILocation(line: 462, column: 3, scope: !578)
!585 = distinct !DISubprogram(name: "fstat", scope: !534, file: !534, line: 467, type: !586, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{!33, !33, !537}
!588 = !{!589, !590}
!589 = !DILocalVariable(name: "__fd", arg: 1, scope: !585, file: !534, line: 467, type: !33)
!590 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !585, file: !534, line: 467, type: !537)
!591 = !DILocation(line: 0, scope: !585)
!592 = !DILocation(line: 469, column: 10, scope: !585)
!593 = !DILocation(line: 469, column: 3, scope: !585)
!594 = distinct !DISubprogram(name: "fstatat", scope: !534, file: !534, line: 474, type: !595, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{!33, !33, !38, !537, !33}
!597 = !{!598, !599, !600, !601}
!598 = !DILocalVariable(name: "__fd", arg: 1, scope: !594, file: !534, line: 474, type: !33)
!599 = !DILocalVariable(name: "__filename", arg: 2, scope: !594, file: !534, line: 474, type: !38)
!600 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !594, file: !534, line: 474, type: !537)
!601 = !DILocalVariable(name: "__flag", arg: 4, scope: !594, file: !534, line: 474, type: !33)
!602 = !DILocation(line: 0, scope: !594)
!603 = !DILocation(line: 477, column: 10, scope: !594)
!604 = !DILocation(line: 477, column: 3, scope: !594)
!605 = distinct !DISubprogram(name: "mknod", scope: !534, file: !534, line: 483, type: !606, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{!33, !38, !546, !65}
!608 = !{!609, !610, !611}
!609 = !DILocalVariable(name: "__path", arg: 1, scope: !605, file: !534, line: 483, type: !38)
!610 = !DILocalVariable(name: "__mode", arg: 2, scope: !605, file: !534, line: 483, type: !546)
!611 = !DILocalVariable(name: "__dev", arg: 3, scope: !605, file: !534, line: 483, type: !65)
!612 = !DILocation(line: 0, scope: !605)
!613 = !DILocation(line: 485, column: 10, scope: !605)
!614 = !DILocation(line: 485, column: 3, scope: !605)
!615 = distinct !DISubprogram(name: "mknodat", scope: !534, file: !534, line: 491, type: !616, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{!33, !33, !38, !546, !65}
!618 = !{!619, !620, !621, !622}
!619 = !DILocalVariable(name: "__fd", arg: 1, scope: !615, file: !534, line: 491, type: !33)
!620 = !DILocalVariable(name: "__path", arg: 2, scope: !615, file: !534, line: 491, type: !38)
!621 = !DILocalVariable(name: "__mode", arg: 3, scope: !615, file: !534, line: 491, type: !546)
!622 = !DILocalVariable(name: "__dev", arg: 4, scope: !615, file: !534, line: 491, type: !65)
!623 = !DILocation(line: 0, scope: !615)
!624 = !DILocation(line: 494, column: 10, scope: !615)
!625 = !DILocation(line: 494, column: 3, scope: !615)
!626 = distinct !DISubprogram(name: "stat64", scope: !534, file: !534, line: 502, type: !627, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !649)
!627 = !DISubroutineType(types: !628)
!628 = !{!33, !38, !629}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !539, line: 119, size: 1152, elements: !631)
!631 = !{!632, !633, !635, !636, !637, !638, !639, !640, !641, !642, !643, !645, !646, !647, !648}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !630, file: !539, line: 121, baseType: !65, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !630, file: !539, line: 123, baseType: !634, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !61, line: 149, baseType: !62)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !630, file: !539, line: 124, baseType: !544, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !630, file: !539, line: 125, baseType: !546, size: 32, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !630, file: !539, line: 132, baseType: !548, size: 32, offset: 224)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !630, file: !539, line: 133, baseType: !550, size: 32, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !630, file: !539, line: 135, baseType: !33, size: 32, offset: 288)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !630, file: !539, line: 136, baseType: !65, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !630, file: !539, line: 137, baseType: !282, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !630, file: !539, line: 143, baseType: !555, size: 64, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !630, file: !539, line: 144, baseType: !644, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !61, line: 180, baseType: !283)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !630, file: !539, line: 152, baseType: !559, size: 128, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !630, file: !539, line: 153, baseType: !559, size: 128, offset: 704)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !630, file: !539, line: 154, baseType: !559, size: 128, offset: 832)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !630, file: !539, line: 164, baseType: !569, size: 192, offset: 960)
!649 = !{!650, !651}
!650 = !DILocalVariable(name: "__path", arg: 1, scope: !626, file: !534, line: 502, type: !38)
!651 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !626, file: !534, line: 502, type: !629)
!652 = !DILocation(line: 0, scope: !626)
!653 = !DILocation(line: 504, column: 10, scope: !626)
!654 = !DILocation(line: 504, column: 3, scope: !626)
!655 = distinct !DISubprogram(name: "lstat64", scope: !534, file: !534, line: 509, type: !627, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !656)
!656 = !{!657, !658}
!657 = !DILocalVariable(name: "__path", arg: 1, scope: !655, file: !534, line: 509, type: !38)
!658 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !655, file: !534, line: 509, type: !629)
!659 = !DILocation(line: 0, scope: !655)
!660 = !DILocation(line: 511, column: 10, scope: !655)
!661 = !DILocation(line: 511, column: 3, scope: !655)
!662 = distinct !DISubprogram(name: "fstat64", scope: !534, file: !534, line: 516, type: !663, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !665)
!663 = !DISubroutineType(types: !664)
!664 = !{!33, !33, !629}
!665 = !{!666, !667}
!666 = !DILocalVariable(name: "__fd", arg: 1, scope: !662, file: !534, line: 516, type: !33)
!667 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !662, file: !534, line: 516, type: !629)
!668 = !DILocation(line: 0, scope: !662)
!669 = !DILocation(line: 518, column: 10, scope: !662)
!670 = !DILocation(line: 518, column: 3, scope: !662)
!671 = distinct !DISubprogram(name: "fstatat64", scope: !534, file: !534, line: 523, type: !672, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !674)
!672 = !DISubroutineType(types: !673)
!673 = !{!33, !33, !38, !629, !33}
!674 = !{!675, !676, !677, !678}
!675 = !DILocalVariable(name: "__fd", arg: 1, scope: !671, file: !534, line: 523, type: !33)
!676 = !DILocalVariable(name: "__filename", arg: 2, scope: !671, file: !534, line: 523, type: !38)
!677 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !671, file: !534, line: 523, type: !629)
!678 = !DILocalVariable(name: "__flag", arg: 4, scope: !671, file: !534, line: 523, type: !33)
!679 = !DILocation(line: 0, scope: !671)
!680 = !DILocation(line: 526, column: 10, scope: !671)
!681 = !DILocation(line: 526, column: 3, scope: !671)
!682 = distinct !DISubprogram(name: "split_quote_chain", scope: !3, file: !3, line: 363, type: !683, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!683 = !DISubroutineType(types: !684)
!684 = !{null}
!685 = !DILocation(line: 365, column: 18, scope: !682)
!686 = !DILocation(line: 365, column: 16, scope: !682)
!687 = !DILocation(line: 366, column: 18, scope: !682)
!688 = !DILocation(line: 366, column: 16, scope: !682)
!689 = !DILocation(line: 367, column: 18, scope: !682)
!690 = !DILocation(line: 368, column: 18, scope: !682)
!691 = !DILocation(line: 370, column: 28, scope: !682)
!692 = !DILocation(line: 371, column: 1, scope: !682)
!693 = distinct !DISubprogram(name: "add_cpp_dir_path", scope: !3, file: !3, line: 376, type: !694, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !40, !33}
!696 = !{!697, !698}
!697 = !DILocalVariable(name: "p", arg: 1, scope: !693, file: !3, line: 376, type: !40)
!698 = !DILocalVariable(name: "chain", arg: 2, scope: !693, file: !3, line: 376, type: !33)
!699 = !DILocation(line: 0, scope: !693)
!700 = !DILocation(line: 378, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !693, file: !3, line: 378, column: 7)
!702 = !DILocation(line: 378, column: 7, scope: !693)
!703 = !DILocation(line: 379, column: 19, scope: !701)
!704 = !DILocation(line: 379, column: 24, scope: !701)
!705 = !DILocation(line: 379, column: 5, scope: !701)
!706 = !DILocation(line: 381, column: 5, scope: !701)
!707 = !DILocation(line: 381, column: 18, scope: !701)
!708 = !DILocation(line: 382, column: 16, scope: !693)
!709 = !DILocation(line: 383, column: 1, scope: !693)
!710 = distinct !DISubprogram(name: "add_path", scope: !3, file: !3, line: 388, type: !711, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !35, !33, !33, !32}
!713 = !{!714, !715, !716, !717, !718}
!714 = !DILocalVariable(name: "path", arg: 1, scope: !710, file: !3, line: 388, type: !35)
!715 = !DILocalVariable(name: "chain", arg: 2, scope: !710, file: !3, line: 388, type: !33)
!716 = !DILocalVariable(name: "cxx_aware", arg: 3, scope: !710, file: !3, line: 388, type: !33)
!717 = !DILocalVariable(name: "user_supplied_p", arg: 4, scope: !710, file: !3, line: 388, type: !32)
!718 = !DILocalVariable(name: "p", scope: !710, file: !3, line: 390, type: !40)
!719 = !DILocation(line: 0, scope: !710)
!720 = !DILocation(line: 407, column: 7, scope: !710)
!721 = !DILocation(line: 408, column: 6, scope: !710)
!722 = !DILocation(line: 408, column: 11, scope: !710)
!723 = !DILocation(line: 409, column: 6, scope: !710)
!724 = !DILocation(line: 409, column: 11, scope: !710)
!725 = !DILocation(line: 413, column: 23, scope: !726)
!726 = distinct !DILexicalBlock(scope: !710, file: !3, line: 413, column: 7)
!727 = !DILocation(line: 414, column: 19, scope: !726)
!728 = !DILocation(line: 414, column: 17, scope: !726)
!729 = !DILocation(line: 414, column: 8, scope: !726)
!730 = !DILocation(line: 414, column: 13, scope: !726)
!731 = !DILocation(line: 414, column: 5, scope: !726)
!732 = !DILocation(line: 416, column: 8, scope: !726)
!733 = !DILocation(line: 416, column: 13, scope: !726)
!734 = !DILocation(line: 417, column: 6, scope: !710)
!735 = !DILocation(line: 417, column: 16, scope: !710)
!736 = !DILocation(line: 418, column: 6, scope: !710)
!737 = !DILocation(line: 418, column: 22, scope: !710)
!738 = !DILocation(line: 420, column: 3, scope: !710)
!739 = !DILocation(line: 421, column: 1, scope: !710)
!740 = !DILocation(line: 0, scope: !69)
!741 = !DILocation(line: 433, column: 27, scope: !69)
!742 = !DILocation(line: 434, column: 27, scope: !69)
!743 = !DILocation(line: 434, column: 17, scope: !69)
!744 = !DILocation(line: 434, column: 16, scope: !69)
!745 = !DILocation(line: 436, column: 17, scope: !746)
!746 = distinct !DILexicalBlock(scope: !69, file: !3, line: 436, column: 7)
!747 = !DILocation(line: 436, column: 7, scope: !746)
!748 = !DILocation(line: 436, column: 7, scope: !69)
!749 = !DILocation(line: 443, column: 3, scope: !69)
!750 = !DILocation(line: 444, column: 22, scope: !69)
!751 = !DILocation(line: 444, column: 3, scope: !69)
!752 = !DILocation(line: 446, column: 20, scope: !69)
!753 = !DILocation(line: 446, column: 3, scope: !69)
!754 = !DILocation(line: 449, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !69, file: !3, line: 449, column: 7)
!756 = !DILocation(line: 449, column: 7, scope: !69)
!757 = !DILocation(line: 450, column: 5, scope: !755)
!758 = !DILocation(line: 452, column: 20, scope: !69)
!759 = !DILocation(line: 452, column: 3, scope: !69)
!760 = !DILocation(line: 454, column: 3, scope: !69)
!761 = !DILocation(line: 456, column: 34, scope: !69)
!762 = !DILocation(line: 456, column: 48, scope: !69)
!763 = !DILocation(line: 457, column: 6, scope: !69)
!764 = !DILocation(line: 456, column: 3, scope: !69)
!765 = !DILocation(line: 458, column: 1, scope: !69)
!766 = distinct !DISubprogram(name: "add_env_var_paths", scope: !3, file: !3, line: 99, type: !767, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !38, !33}
!769 = !{!770, !771, !772, !773, !774}
!770 = !DILocalVariable(name: "env_var", arg: 1, scope: !766, file: !3, line: 99, type: !38)
!771 = !DILocalVariable(name: "chain", arg: 2, scope: !766, file: !3, line: 99, type: !33)
!772 = !DILocalVariable(name: "p", scope: !766, file: !3, line: 101, type: !35)
!773 = !DILocalVariable(name: "q", scope: !766, file: !3, line: 101, type: !35)
!774 = !DILocalVariable(name: "path", scope: !766, file: !3, line: 101, type: !35)
!775 = !DILocation(line: 0, scope: !766)
!776 = !DILocation(line: 103, column: 3, scope: !777)
!777 = distinct !DILexicalBlock(scope: !766, file: !3, line: 103, column: 3)
!778 = !DILocation(line: 105, column: 8, scope: !779)
!779 = distinct !DILexicalBlock(scope: !766, file: !3, line: 105, column: 7)
!780 = !DILocation(line: 105, column: 7, scope: !766)
!781 = !DILocation(line: 0, scope: !782)
!782 = distinct !DILexicalBlock(scope: !783, file: !3, line: 109, column: 5)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 108, column: 3)
!784 = distinct !DILexicalBlock(scope: !766, file: !3, line: 108, column: 3)
!785 = !DILocation(line: 108, column: 3, scope: !784)
!786 = !DILocation(line: 0, scope: !784)
!787 = !DILocation(line: 108, column: 15, scope: !783)
!788 = !DILocation(line: 111, column: 7, scope: !782)
!789 = !DILocation(line: 111, column: 14, scope: !782)
!790 = !DILocation(line: 111, column: 17, scope: !782)
!791 = !DILocation(line: 111, column: 28, scope: !782)
!792 = !DILocation(line: 111, column: 22, scope: !782)
!793 = !DILocation(line: 112, column: 3, scope: !782)
!794 = distinct !{!794, !788, !793}
!795 = !DILocation(line: 114, column: 13, scope: !796)
!796 = distinct !DILexicalBlock(scope: !782, file: !3, line: 114, column: 11)
!797 = !DILocation(line: 114, column: 11, scope: !782)
!798 = !DILocation(line: 115, column: 9, scope: !796)
!799 = !DILocation(line: 115, column: 2, scope: !796)
!800 = !DILocation(line: 118, column: 11, scope: !801)
!801 = distinct !DILexicalBlock(scope: !796, file: !3, line: 117, column: 2)
!802 = !DILocation(line: 119, column: 4, scope: !801)
!803 = !DILocation(line: 120, column: 4, scope: !801)
!804 = !DILocation(line: 120, column: 16, scope: !801)
!805 = !DILocation(line: 0, scope: !796)
!806 = !DILocation(line: 123, column: 7, scope: !782)
!807 = !DILocation(line: 108, column: 25, scope: !783)
!808 = !DILocation(line: 108, column: 3, scope: !783)
!809 = distinct !{!809, !785, !810}
!810 = !DILocation(line: 124, column: 5, scope: !784)
!811 = !DILocation(line: 125, column: 1, scope: !766)
!812 = !DILocation(line: 0, scope: !173)
!813 = !DILocation(line: 133, column: 19, scope: !173)
!814 = !DILocation(line: 136, column: 7, scope: !204)
!815 = !DILocation(line: 136, column: 15, scope: !204)
!816 = !DILocation(line: 136, column: 25, scope: !204)
!817 = !DILocation(line: 136, column: 50, scope: !204)
!818 = !DILocation(line: 136, column: 7, scope: !173)
!819 = !DILocation(line: 0, scope: !199)
!820 = !DILocation(line: 0, scope: !821)
!821 = distinct !DILexicalBlock(scope: !198, file: !3, line: 148, column: 12)
!822 = !DILocation(line: 0, scope: !823)
!823 = distinct !DILexicalBlock(scope: !196, file: !3, line: 153, column: 9)
!824 = !DILocation(line: 141, column: 7, scope: !202)
!825 = !DILocation(line: 0, scope: !202)
!826 = !DILocation(line: 141, column: 41, scope: !201)
!827 = !DILocation(line: 148, column: 20, scope: !821)
!828 = !DILocation(line: 148, column: 26, scope: !821)
!829 = !DILocation(line: 148, column: 23, scope: !821)
!830 = !DILocation(line: 148, column: 12, scope: !198)
!831 = !DILocation(line: 150, column: 13, scope: !197)
!832 = !DILocation(line: 150, column: 12, scope: !198)
!833 = !DILocation(line: 152, column: 37, scope: !196)
!834 = !DILocation(line: 152, column: 43, scope: !196)
!835 = !DILocation(line: 152, column: 17, scope: !196)
!836 = !DILocation(line: 0, scope: !196)
!837 = !DILocation(line: 153, column: 12, scope: !823)
!838 = !DILocation(line: 153, column: 9, scope: !823)
!839 = !DILocation(line: 153, column: 21, scope: !823)
!840 = !DILocation(line: 154, column: 13, scope: !823)
!841 = !DILocation(line: 154, column: 7, scope: !823)
!842 = !DILocation(line: 155, column: 31, scope: !196)
!843 = !DILocation(line: 155, column: 28, scope: !196)
!844 = !DILocation(line: 155, column: 5, scope: !196)
!845 = !DILocation(line: 156, column: 3, scope: !196)
!846 = !DILocation(line: 141, column: 49, scope: !201)
!847 = !DILocation(line: 141, column: 7, scope: !201)
!848 = distinct !{!848, !824, !849}
!849 = !DILocation(line: 158, column: 2, scope: !202)
!850 = !DILocation(line: 161, column: 8, scope: !210)
!851 = !DILocation(line: 143, column: 12, scope: !199)
!852 = !DILocation(line: 143, column: 9, scope: !199)
!853 = !DILocation(line: 143, column: 22, scope: !199)
!854 = !DILocation(line: 0, scope: !207)
!855 = !DILocation(line: 0, scope: !216)
!856 = !DILocation(line: 0, scope: !215)
!857 = !DILocation(line: 0, scope: !858)
!858 = distinct !DILexicalBlock(scope: !206, file: !3, line: 198, column: 8)
!859 = !DILocation(line: 0, scope: !210)
!860 = !DILocation(line: 161, column: 37, scope: !209)
!861 = !DILocation(line: 161, column: 3, scope: !210)
!862 = !DILocation(line: 168, column: 16, scope: !216)
!863 = !DILocation(line: 170, column: 17, scope: !215)
!864 = !DILocation(line: 168, column: 22, scope: !216)
!865 = !DILocation(line: 168, column: 19, scope: !216)
!866 = !DILocation(line: 168, column: 8, scope: !206)
!867 = !DILocation(line: 169, column: 12, scope: !216)
!868 = !DILocation(line: 0, scope: !206)
!869 = !DILocation(line: 169, column: 6, scope: !216)
!870 = !DILocation(line: 170, column: 14, scope: !215)
!871 = !DILocation(line: 170, column: 29, scope: !215)
!872 = !DILocation(line: 171, column: 9, scope: !215)
!873 = !DILocation(line: 171, column: 56, scope: !215)
!874 = !DILocation(line: 170, column: 13, scope: !216)
!875 = !DILocation(line: 196, column: 28, scope: !215)
!876 = !DILocation(line: 196, column: 38, scope: !215)
!877 = !DILocation(line: 196, column: 12, scope: !215)
!878 = !DILocation(line: 179, column: 13, scope: !213)
!879 = !DILocation(line: 179, column: 12, scope: !214)
!880 = !DILocation(line: 184, column: 21, scope: !212)
!881 = !DILocation(line: 184, column: 13, scope: !212)
!882 = !DILocation(line: 0, scope: !212)
!883 = !DILocation(line: 186, column: 9, scope: !212)
!884 = !DILocation(line: 186, column: 7, scope: !212)
!885 = !DILocation(line: 189, column: 3, scope: !212)
!886 = !DILocation(line: 190, column: 22, scope: !214)
!887 = !DILocation(line: 191, column: 11, scope: !214)
!888 = !DILocation(line: 191, column: 17, scope: !214)
!889 = !DILocation(line: 190, column: 14, scope: !214)
!890 = !DILocation(line: 193, column: 35, scope: !214)
!891 = !DILocation(line: 193, column: 14, scope: !214)
!892 = !DILocation(line: 194, column: 6, scope: !214)
!893 = !DILocation(line: 198, column: 11, scope: !858)
!894 = !DILocation(line: 198, column: 8, scope: !858)
!895 = !DILocation(line: 198, column: 20, scope: !858)
!896 = !DILocation(line: 199, column: 12, scope: !858)
!897 = !DILocation(line: 199, column: 6, scope: !858)
!898 = !DILocation(line: 201, column: 30, scope: !206)
!899 = !DILocation(line: 201, column: 27, scope: !206)
!900 = !DILocation(line: 201, column: 4, scope: !206)
!901 = !DILocation(line: 161, column: 45, scope: !209)
!902 = !DILocation(line: 161, column: 3, scope: !209)
!903 = distinct !{!903, !861, !904}
!904 = !DILocation(line: 203, column: 5, scope: !210)
!905 = !DILocation(line: 204, column: 1, scope: !173)
!906 = !DILocation(line: 163, column: 15, scope: !207)
!907 = !DILocation(line: 163, column: 12, scope: !207)
!908 = !DILocation(line: 163, column: 25, scope: !207)
!909 = !DILocation(line: 202, column: 2, scope: !206)
!910 = distinct !DISubprogram(name: "merge_include_chains", scope: !3, file: !3, line: 311, type: !911, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !913)
!911 = !DISubroutineType(types: !912)
!912 = !{null, !38, !72, !33}
!913 = !{!914, !915, !916, !917}
!914 = !DILocalVariable(name: "sysroot", arg: 1, scope: !910, file: !3, line: 311, type: !38)
!915 = !DILocalVariable(name: "pfile", arg: 2, scope: !910, file: !3, line: 311, type: !72)
!916 = !DILocalVariable(name: "verbose", arg: 3, scope: !910, file: !3, line: 311, type: !33)
!917 = !DILocalVariable(name: "p", scope: !918, file: !3, line: 343, type: !45)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 342, column: 5)
!919 = distinct !DILexicalBlock(scope: !910, file: !3, line: 341, column: 7)
!920 = !DILocation(line: 0, scope: !910)
!921 = !DILocation(line: 314, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !910, file: !3, line: 314, column: 7)
!923 = !DILocation(line: 314, column: 7, scope: !910)
!924 = !DILocation(line: 316, column: 7, scope: !925)
!925 = distinct !DILexicalBlock(scope: !922, file: !3, line: 315, column: 5)
!926 = !DILocation(line: 317, column: 7, scope: !925)
!927 = !DILocation(line: 318, column: 7, scope: !925)
!928 = !DILocation(line: 319, column: 7, scope: !925)
!929 = !DILocation(line: 320, column: 5, scope: !925)
!930 = !DILocation(line: 324, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !910, file: !3, line: 324, column: 7)
!932 = !DILocation(line: 0, scope: !931)
!933 = !DILocation(line: 324, column: 7, scope: !910)
!934 = !DILocation(line: 325, column: 5, scope: !931)
!935 = !DILocation(line: 325, column: 25, scope: !931)
!936 = !DILocation(line: 328, column: 45, scope: !910)
!937 = !DILocation(line: 327, column: 19, scope: !931)
!938 = !DILocation(line: 328, column: 19, scope: !910)
!939 = !DILocation(line: 328, column: 17, scope: !910)
!940 = !DILocation(line: 332, column: 46, scope: !910)
!941 = !DILocation(line: 332, column: 20, scope: !910)
!942 = !DILocation(line: 332, column: 18, scope: !910)
!943 = !DILocation(line: 337, column: 44, scope: !910)
!944 = !DILocation(line: 337, column: 58, scope: !910)
!945 = !DILocation(line: 337, column: 18, scope: !910)
!946 = !DILocation(line: 337, column: 16, scope: !910)
!947 = !DILocation(line: 341, column: 7, scope: !919)
!948 = !DILocation(line: 341, column: 7, scope: !910)
!949 = !DILocation(line: 345, column: 16, scope: !918)
!950 = !DILocation(line: 345, column: 7, scope: !918)
!951 = !DILocation(line: 346, column: 12, scope: !952)
!952 = distinct !DILexicalBlock(scope: !918, file: !3, line: 346, column: 7)
!953 = !DILocation(line: 0, scope: !952)
!954 = !DILocation(line: 0, scope: !918)
!955 = !DILocation(line: 348, column: 13, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 348, column: 8)
!957 = distinct !DILexicalBlock(scope: !958, file: !3, line: 347, column: 2)
!958 = distinct !DILexicalBlock(scope: !952, file: !3, line: 346, column: 7)
!959 = !DILocation(line: 348, column: 10, scope: !956)
!960 = !DILocation(line: 348, column: 8, scope: !957)
!961 = !DILocation(line: 349, column: 15, scope: !956)
!962 = !DILocation(line: 349, column: 6, scope: !956)
!963 = !DILocation(line: 350, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !957, file: !3, line: 350, column: 8)
!965 = !DILocation(line: 350, column: 8, scope: !957)
!966 = !DILocation(line: 352, column: 33, scope: !957)
!967 = !DILocation(line: 352, column: 4, scope: !957)
!968 = !DILocation(line: 346, column: 38, scope: !958)
!969 = !DILocation(line: 346, column: 7, scope: !958)
!970 = distinct !{!970, !971, !972}
!971 = !DILocation(line: 346, column: 7, scope: !952)
!972 = !DILocation(line: 353, column: 2, scope: !952)
!973 = !DILocation(line: 354, column: 7, scope: !918)
!974 = !DILocation(line: 355, column: 5, scope: !918)
!975 = !DILocation(line: 356, column: 1, scope: !910)
!976 = distinct !DISubprogram(name: "hook_void_charptr_charptr_int", scope: !3, file: !3, line: 460, type: !163, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !977)
!977 = !{!978, !979, !980}
!978 = !DILocalVariable(name: "sysroot", arg: 1, scope: !976, file: !3, line: 460, type: !38)
!979 = !DILocalVariable(name: "iprefix", arg: 2, scope: !976, file: !3, line: 461, type: !38)
!980 = !DILocalVariable(name: "stdinc", arg: 3, scope: !976, file: !3, line: 462, type: !33)
!981 = !DILocation(line: 0, scope: !976)
!982 = !DILocation(line: 464, column: 1, scope: !976)
!983 = distinct !DISubprogram(name: "add_sysroot_to_chain", scope: !3, file: !3, line: 291, type: !767, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !984)
!984 = !{!985, !986, !987}
!985 = !DILocalVariable(name: "sysroot", arg: 1, scope: !983, file: !3, line: 291, type: !38)
!986 = !DILocalVariable(name: "chain", arg: 2, scope: !983, file: !3, line: 291, type: !33)
!987 = !DILocalVariable(name: "p", scope: !983, file: !3, line: 293, type: !45)
!988 = !DILocation(line: 0, scope: !983)
!989 = !DILocation(line: 295, column: 12, scope: !990)
!990 = distinct !DILexicalBlock(scope: !983, file: !3, line: 295, column: 3)
!991 = !DILocation(line: 295, column: 8, scope: !990)
!992 = !DILocation(line: 0, scope: !990)
!993 = !DILocation(line: 295, column: 28, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !3, line: 295, column: 3)
!995 = !DILocation(line: 295, column: 3, scope: !990)
!996 = !DILocation(line: 296, column: 12, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !3, line: 296, column: 9)
!998 = !DILocation(line: 296, column: 9, scope: !997)
!999 = !DILocation(line: 296, column: 20, scope: !997)
!1000 = !DILocation(line: 296, column: 27, scope: !997)
!1001 = !DILocation(line: 296, column: 33, scope: !997)
!1002 = !DILocation(line: 296, column: 30, scope: !997)
!1003 = !DILocation(line: 296, column: 9, scope: !994)
!1004 = !DILocation(line: 297, column: 42, scope: !997)
!1005 = !DILocation(line: 297, column: 17, scope: !997)
!1006 = !DILocation(line: 297, column: 15, scope: !997)
!1007 = !DILocation(line: 297, column: 7, scope: !997)
!1008 = !DILocation(line: 295, column: 44, scope: !994)
!1009 = !DILocation(line: 295, column: 3, scope: !994)
!1010 = distinct !{!1010, !995, !1011}
!1011 = !DILocation(line: 297, column: 51, scope: !990)
!1012 = !DILocation(line: 298, column: 1, scope: !983)
!1013 = distinct !DISubprogram(name: "remove_duplicates", scope: !3, file: !3, line: 214, type: !1014, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1016)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!45, !72, !45, !45, !45, !33}
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1022, !1024, !1025, !1026, !1027, !1031}
!1017 = !DILocalVariable(name: "pfile", arg: 1, scope: !1013, file: !3, line: 214, type: !72)
!1018 = !DILocalVariable(name: "head", arg: 2, scope: !1013, file: !3, line: 214, type: !45)
!1019 = !DILocalVariable(name: "system", arg: 3, scope: !1013, file: !3, line: 215, type: !45)
!1020 = !DILocalVariable(name: "join", arg: 4, scope: !1013, file: !3, line: 215, type: !45)
!1021 = !DILocalVariable(name: "verbose", arg: 5, scope: !1013, file: !3, line: 216, type: !33)
!1022 = !DILocalVariable(name: "pcur", scope: !1013, file: !3, line: 218, type: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!1024 = !DILocalVariable(name: "tmp", scope: !1013, file: !3, line: 218, type: !45)
!1025 = !DILocalVariable(name: "cur", scope: !1013, file: !3, line: 218, type: !45)
!1026 = !DILocalVariable(name: "st", scope: !1013, file: !3, line: 219, type: !538)
!1027 = !DILocalVariable(name: "reason", scope: !1028, file: !3, line: 223, type: !33)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 222, column: 5)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 221, column: 3)
!1030 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 221, column: 3)
!1031 = !DILocalVariable(name: "opts", scope: !1032, file: !3, line: 235, type: !85)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 233, column: 6)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 230, column: 8)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 228, column: 2)
!1035 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 227, column: 11)
!1036 = !DILocation(line: 0, scope: !1013)
!1037 = !DILocation(line: 219, column: 3, scope: !1013)
!1038 = !DILocation(line: 0, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 241, column: 16)
!1040 = !DILocation(line: 0, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 245, column: 2)
!1042 = !DILocation(line: 0, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 265, column: 12)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 258, column: 6)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 257, column: 8)
!1046 = !DILocation(line: 0, scope: !1028)
!1047 = !DILocation(line: 221, column: 8, scope: !1030)
!1048 = !DILocation(line: 221, column: 22, scope: !1029)
!1049 = !DILocation(line: 221, column: 13, scope: !1030)
!1050 = !DILocation(line: 221, column: 3, scope: !1030)
!1051 = !DILocation(line: 227, column: 22, scope: !1035)
!1052 = !DILocation(line: 227, column: 11, scope: !1035)
!1053 = !DILocation(line: 227, column: 11, scope: !1028)
!1054 = !DILocation(line: 230, column: 8, scope: !1033)
!1055 = !DILocation(line: 230, column: 14, scope: !1033)
!1056 = !DILocation(line: 230, column: 8, scope: !1034)
!1057 = !DILocation(line: 231, column: 43, scope: !1033)
!1058 = !DILocation(line: 231, column: 6, scope: !1033)
!1059 = !DILocation(line: 235, column: 28, scope: !1032)
!1060 = !DILocation(line: 0, scope: !1032)
!1061 = !DILocation(line: 236, column: 18, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 236, column: 12)
!1063 = !DILocation(line: 236, column: 12, scope: !1062)
!1064 = !DILocation(line: 236, column: 44, scope: !1062)
!1065 = !DILocation(line: 236, column: 52, scope: !1062)
!1066 = !DILocation(line: 236, column: 47, scope: !1062)
!1067 = !DILocation(line: 236, column: 12, scope: !1032)
!1068 = !DILocation(line: 237, column: 42, scope: !1062)
!1069 = !DILocation(line: 237, column: 3, scope: !1062)
!1070 = !DILocation(line: 241, column: 17, scope: !1039)
!1071 = !DILocation(line: 241, column: 16, scope: !1035)
!1072 = !DILocation(line: 243, column: 37, scope: !1039)
!1073 = !DILocation(line: 242, column: 2, scope: !1039)
!1074 = !DILocation(line: 247, column: 4, scope: !1041)
!1075 = !DILocation(line: 248, column: 19, scope: !1041)
!1076 = !DILocation(line: 248, column: 9, scope: !1041)
!1077 = !DILocation(line: 248, column: 14, scope: !1041)
!1078 = !DILocation(line: 0, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 254, column: 9)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 253, column: 4)
!1081 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 253, column: 4)
!1082 = !DILocation(line: 253, column: 9, scope: !1081)
!1083 = !DILocation(line: 0, scope: !1081)
!1084 = !DILocation(line: 253, column: 4, scope: !1081)
!1085 = !DILocation(line: 254, column: 9, scope: !1079)
!1086 = !DILocation(line: 254, column: 28, scope: !1079)
!1087 = !DILocation(line: 254, column: 36, scope: !1079)
!1088 = !DILocation(line: 254, column: 54, scope: !1079)
!1089 = !DILocation(line: 254, column: 46, scope: !1079)
!1090 = !DILocation(line: 254, column: 9, scope: !1080)
!1091 = !DILocation(line: 253, column: 39, scope: !1080)
!1092 = !DILocation(line: 253, column: 4, scope: !1080)
!1093 = distinct !{!1093, !1084, !1094}
!1094 = !DILocation(line: 255, column: 8, scope: !1081)
!1095 = !DILocation(line: 257, column: 8, scope: !1041)
!1096 = !DILocation(line: 261, column: 13, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 261, column: 8)
!1098 = !DILocation(line: 0, scope: !1097)
!1099 = !DILocation(line: 261, column: 29, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 261, column: 8)
!1101 = !DILocation(line: 261, column: 8, scope: !1097)
!1102 = !DILocation(line: 262, column: 13, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 262, column: 13)
!1104 = !DILocation(line: 262, column: 32, scope: !1103)
!1105 = !DILocation(line: 262, column: 40, scope: !1103)
!1106 = !DILocation(line: 262, column: 58, scope: !1103)
!1107 = !DILocation(line: 262, column: 50, scope: !1103)
!1108 = !DILocation(line: 262, column: 13, scope: !1100)
!1109 = !DILocation(line: 261, column: 48, scope: !1100)
!1110 = !DILocation(line: 261, column: 8, scope: !1100)
!1111 = distinct !{!1111, !1101, !1112}
!1112 = !DILocation(line: 263, column: 5, scope: !1097)
!1113 = !DILocation(line: 267, column: 5, scope: !1043)
!1114 = !DILocation(line: 267, column: 15, scope: !1043)
!1115 = !DILocation(line: 267, column: 20, scope: !1043)
!1116 = !DILocation(line: 267, column: 28, scope: !1043)
!1117 = !DILocation(line: 268, column: 13, scope: !1043)
!1118 = !DILocation(line: 269, column: 10, scope: !1043)
!1119 = !DILocation(line: 269, column: 18, scope: !1043)
!1120 = !DILocation(line: 269, column: 37, scope: !1043)
!1121 = !DILocation(line: 269, column: 28, scope: !1043)
!1122 = !DILocation(line: 265, column: 12, scope: !1044)
!1123 = !DILocation(line: 273, column: 5, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 270, column: 3)
!1125 = distinct !{!1125, !1050, !1126}
!1126 = !DILocation(line: 281, column: 5, scope: !1030)
!1127 = !DILocation(line: 279, column: 20, scope: !1028)
!1128 = !DILocation(line: 279, column: 13, scope: !1028)
!1129 = !DILocation(line: 280, column: 23, scope: !1028)
!1130 = !DILocation(line: 280, column: 7, scope: !1028)
!1131 = !DILocation(line: 281, column: 5, scope: !1029)
!1132 = !DILocation(line: 0, scope: !1030)
!1133 = !DILocation(line: 283, column: 9, scope: !1013)
!1134 = !DILocation(line: 284, column: 10, scope: !1013)
!1135 = !DILocation(line: 285, column: 1, scope: !1013)
!1136 = !DILocation(line: 284, column: 3, scope: !1013)
!1137 = distinct !DISubprogram(name: "free_path", scope: !3, file: !3, line: 70, type: !1138, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1140)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !45, !33}
!1140 = !{!1141, !1142}
!1141 = !DILocalVariable(name: "path", arg: 1, scope: !1137, file: !3, line: 70, type: !45)
!1142 = !DILocalVariable(name: "reason", arg: 2, scope: !1137, file: !3, line: 70, type: !33)
!1143 = !DILocation(line: 0, scope: !1137)
!1144 = !DILocation(line: 72, column: 3, scope: !1137)
!1145 = !DILocation(line: 76, column: 16, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 73, column: 5)
!1147 = !DILocation(line: 76, column: 74, scope: !1146)
!1148 = !DILocation(line: 76, column: 7, scope: !1146)
!1149 = !DILocation(line: 77, column: 18, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 77, column: 11)
!1151 = !DILocation(line: 77, column: 11, scope: !1146)
!1152 = !DILocation(line: 78, column: 11, scope: !1150)
!1153 = !DILocation(line: 78, column: 2, scope: !1150)
!1154 = !DILocation(line: 83, column: 16, scope: !1146)
!1155 = !DILocation(line: 84, column: 15, scope: !1146)
!1156 = !DILocation(line: 83, column: 7, scope: !1146)
!1157 = !DILocation(line: 85, column: 7, scope: !1146)
!1158 = !DILocation(line: 92, column: 15, scope: !1137)
!1159 = !DILocation(line: 92, column: 3, scope: !1137)
!1160 = !DILocation(line: 93, column: 9, scope: !1137)
!1161 = !DILocation(line: 93, column: 3, scope: !1137)
!1162 = !DILocation(line: 94, column: 1, scope: !1137)
