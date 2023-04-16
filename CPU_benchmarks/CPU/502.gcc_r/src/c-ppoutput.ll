; ModuleID = 'c-ppoutput.bc'
source_filename = "c-ppoutput.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.anon.3 = type { %struct._IO_FILE*, %struct.cpp_token*, %struct.cpp_token*, i32, i8, i8 }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, i8* }
%struct.cpp_reader = type { %struct.cpp_buffer*, %struct.cpp_buffer*, %struct.lexer_state, %struct.line_maps*, i32, %struct._cpp_buff*, %struct._cpp_buff*, %struct._cpp_buff*, %struct.cpp_context, %struct.cpp_context*, %struct.directive*, %struct.cpp_token, i32, i8, %struct.cpp_dir*, %struct.cpp_dir*, %struct.cpp_dir, %struct._cpp_file*, %struct._cpp_file*, %struct.htab*, %struct.htab*, %struct.file_hash_entry_pool*, %struct.htab*, %struct.obstack, i8, i8, %struct.cpp_hashnode*, %struct.cpp_hashnode*, i8, %struct.cpp_token*, %struct.tokenrun, %struct.tokenrun*, i32, i32, i8*, i32, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, i8*, i8*, %struct.cpp_token, %struct.cpp_token, %struct.deps*, %struct.obstack, %struct.obstack, %struct.pragma_entry*, %struct.cpp_callbacks, %struct.ht*, %struct.op*, %struct.op*, %struct.cpp_options, %struct.spec_nodes, i8, %struct.anon.2, i8*, i8*, i8*, %struct.cpp_savedstate*, i32, %struct.cpp_comment_table, %struct.def_pragma_macro* }
%struct.cpp_buffer = type { i8*, i8*, i8*, i8*, i8*, %struct._cpp_line_note*, i32, i32, i32, %struct.cpp_buffer*, %struct._cpp_file*, i8*, %struct.if_stack*, i8, i8, i8, %struct.cpp_dir, %struct.cset_converter }
%struct._cpp_line_note = type { i8*, i32 }
%struct.if_stack = type opaque
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.line_maps = type { %struct.line_map*, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8* (i8*, i64)* }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct._cpp_buff = type { %struct._cpp_buff*, i8*, i8*, i8* }
%struct.cpp_context = type { %struct.cpp_context*, %struct.cpp_context*, %union.anon, %struct._cpp_buff*, %struct.cpp_hashnode*, i8 }
%union.anon = type { %struct.anon }
%struct.anon = type { %union.utoken, %union.utoken }
%union.utoken = type { %struct.cpp_token* }
%struct.directive = type opaque
%struct.cpp_dir = type { %struct.cpp_dir*, i8*, i32, i8, i8, i8*, i8**, i8* (i8*, %struct.cpp_dir*)*, i64, i64 }
%struct._cpp_file = type opaque
%struct.file_hash_entry_pool = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { i8*, i32, i32 }
%union._cpp_hashnode_value = type { %struct.cpp_macro* }
%struct.cpp_macro = type { %struct.cpp_hashnode**, %union.cpp_macro_u, i32, i32, i16, i8 }
%union.cpp_macro_u = type { %struct.cpp_token* }
%struct.tokenrun = type { %struct.tokenrun*, %struct.tokenrun*, %struct.cpp_token*, %struct.cpp_token* }
%struct.cset_converter = type { i8 (i32, i8*, i64, %struct._cpp_strbuf*)*, i32, i32 }
%struct._cpp_strbuf = type opaque
%struct.deps = type opaque
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.pragma_entry = type opaque
%struct.cpp_callbacks = type { void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, i8*)*, void (%struct.cpp_reader*, i32, i8*, i8*, i32, %struct.cpp_token**)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32)*, i32 (%struct.cpp_reader*, i8*, i32)*, void (%struct.cpp_reader*, i8*, i32, i8*)*, i8* (%struct.cpp_reader*, i8*, %struct.cpp_dir**)*, %struct.cpp_hashnode* (%struct.cpp_reader*, %struct.cpp_token*)*, i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, {}*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i8* (i64)*, i32, i32, %struct.cpp_reader*, i32, i32, i8 }
%struct.op = type opaque
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i8*, i8*, i32, i8, i8, %struct.anon.1, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i8, i8, i8, i8 }
%struct.spec_nodes = type { %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode* }
%struct.anon.2 = type { i8*, i8*, i8*, i32 }
%struct.cpp_savedstate = type opaque
%struct.cpp_comment_table = type { %struct.cpp_comment*, i32, i32 }
%struct.cpp_comment = type { i8*, i32 }
%struct.def_pragma_macro = type { %struct.def_pragma_macro*, i8*, %struct.cpp_macro* }
%struct.macro_queue = type { %struct.macro_queue*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct._cpp_dir_only_callbacks = type { void (i32, i8*, i64)*, void (i32)* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@flag_no_output = external dso_local local_unnamed_addr global i8, align 1
@flag_dump_macros = external dso_local local_unnamed_addr global i8, align 1
@print = internal unnamed_addr global %struct.anon.3 zeroinitializer, align 8, !dbg !0
@parse_in = external dso_local local_unnamed_addr global %struct.cpp_reader*, align 8
@flag_dump_includes = external dso_local local_unnamed_addr global i8, align 1
@flag_pch_preprocess = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [12 x i8] c"# 1 \22%s//\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@flag_no_line_commands = external dso_local local_unnamed_addr global i8, align 1
@input_location = external dso_local local_unnamed_addr global i32, align 4
@line_table = external dso_local local_unnamed_addr global %struct.line_maps*, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c" 1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" 2\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"#pragma \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@define_queue = internal unnamed_addr global %struct.macro_queue* null, align 8, !dbg !62
@undef_queue = internal unnamed_addr global %struct.macro_queue* null, align 8, !dbg !64
@.str.7 = private unnamed_addr constant [11 x i8] c"#ident %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"#define \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"#undef %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"#%s <%s>\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"#%s \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"# %u \22%s\22%s\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" 3 4\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c" 3\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"#pragma GCC pch_preprocess \22%s\22\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !218 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !231, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !234
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !235
  ret i32 %call, !dbg !236
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !237 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !241
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !242
  ret i32 %call, !dbg !243
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !244 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !248, metadata !DIExpression()), !dbg !249
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !250
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !250
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !250
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !250
  %cmp = icmp uge i8* %0, %1, !dbg !250
  %conv1 = zext i1 %cmp to i64, !dbg !250
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !250
  %tobool = icmp eq i64 %expval, 0, !dbg !250
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !250

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !250
  br label %cond.end, !dbg !250

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !250
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !250
  %2 = load i8, i8* %0, align 1, !dbg !250
  %conv3 = zext i8 %2 to i32, !dbg !250
  br label %cond.end, !dbg !250

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !250
  ret i32 %cond, !dbg !251
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !252 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !254, metadata !DIExpression()), !dbg !255
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !256
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !256
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !256
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !256
  %cmp = icmp uge i8* %0, %1, !dbg !256
  %conv1 = zext i1 %cmp to i64, !dbg !256
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !256
  %tobool = icmp eq i64 %expval, 0, !dbg !256
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !256

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !256
  br label %cond.end, !dbg !256

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !256
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !256
  %2 = load i8, i8* %0, align 1, !dbg !256
  %conv3 = zext i8 %2 to i32, !dbg !256
  br label %cond.end, !dbg !256

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !256
  ret i32 %cond, !dbg !257
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !258 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !259
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !259
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !259
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !259
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !259
  %cmp = icmp uge i8* %1, %2, !dbg !259
  %conv1 = zext i1 %cmp to i64, !dbg !259
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !259
  %tobool = icmp eq i64 %expval, 0, !dbg !259
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !259

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !259
  br label %cond.end, !dbg !259

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !259
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !259
  %3 = load i8, i8* %1, align 1, !dbg !259
  %conv3 = zext i8 %3 to i32, !dbg !259
  br label %cond.end, !dbg !259

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !259
  ret i32 %cond, !dbg !260
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !261 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !265, metadata !DIExpression()), !dbg !266
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !267
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !268
  ret i32 %call, !dbg !269
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !270 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !275, metadata !DIExpression()), !dbg !276
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !277
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !277
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !277
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !277
  %cmp = icmp uge i8* %0, %1, !dbg !277
  %conv1 = zext i1 %cmp to i64, !dbg !277
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !277
  %tobool = icmp eq i64 %expval, 0, !dbg !277
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !277

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !277
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !277
  br label %cond.end, !dbg !277

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !277
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !277
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !277
  store i8 %conv2, i8* %0, align 1, !dbg !277
  %conv6 = and i32 %__c, 255, !dbg !277
  br label %cond.end, !dbg !277

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !277
  ret i32 %cond, !dbg !278
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !279 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !281, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !282, metadata !DIExpression()), !dbg !283
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !284
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !284
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !284
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !284
  %cmp = icmp uge i8* %0, %1, !dbg !284
  %conv1 = zext i1 %cmp to i64, !dbg !284
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !284
  %tobool = icmp eq i64 %expval, 0, !dbg !284
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !284

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !284
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !284
  br label %cond.end, !dbg !284

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !284
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !284
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !284
  store i8 %conv2, i8* %0, align 1, !dbg !284
  %conv6 = and i32 %__c, 255, !dbg !284
  br label %cond.end, !dbg !284

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !284
  ret i32 %cond, !dbg !285
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !286 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !288, metadata !DIExpression()), !dbg !289
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !290
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !290
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !290
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !290
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !290
  %cmp = icmp uge i8* %1, %2, !dbg !290
  %conv1 = zext i1 %cmp to i64, !dbg !290
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !290
  %tobool = icmp eq i64 %expval, 0, !dbg !290
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !290

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !290
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !290
  br label %cond.end, !dbg !290

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !290
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !290
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !290
  store i8 %conv4, i8* %1, align 1, !dbg !290
  %conv6 = and i32 %__c, 255, !dbg !290
  br label %cond.end, !dbg !290

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !290
  ret i32 %cond, !dbg !291
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !292 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !298, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64* %__n, metadata !299, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !300, metadata !DIExpression()), !dbg !301
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !302
  ret i64 %call, !dbg !303
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !304 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !306, metadata !DIExpression()), !dbg !307
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !308
  %0 = load i32, i32* %_flags, align 8, !dbg !308
  %and = lshr i32 %0, 4, !dbg !308
  %and.lobit = and i32 %and, 1, !dbg !308
  ret i32 %and.lobit, !dbg !309
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !310 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !312, metadata !DIExpression()), !dbg !313
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !314
  %0 = load i32, i32* %_flags, align 8, !dbg !314
  %and = lshr i32 %0, 5, !dbg !314
  %and.lobit = and i32 %and, 1, !dbg !314
  ret i32 %and.lobit, !dbg !315
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !316 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !319, metadata !DIExpression()), !dbg !320
  %__c.off = add i32 %__c, 128, !dbg !321
  %0 = icmp ult i32 %__c.off, 384, !dbg !321
  br i1 %0, label %cond.true, label %cond.end, !dbg !321

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !322
  %1 = load i32*, i32** %call, align 8, !dbg !323
  %idxprom = sext i32 %__c to i64, !dbg !324
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !324
  %2 = load i32, i32* %arrayidx, align 4, !dbg !324
  br label %cond.end, !dbg !325

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !325
  ret i32 %cond, !dbg !326
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !327 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !329, metadata !DIExpression()), !dbg !330
  %__c.off = add i32 %__c, 128, !dbg !331
  %0 = icmp ult i32 %__c.off, 384, !dbg !331
  br i1 %0, label %cond.true, label %cond.end, !dbg !331

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !332
  %1 = load i32*, i32** %call, align 8, !dbg !333
  %idxprom = sext i32 %__c to i64, !dbg !334
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !334
  %2 = load i32, i32* %arrayidx, align 4, !dbg !334
  br label %cond.end, !dbg !335

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !335
  ret i32 %cond, !dbg !336
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !337 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !342, metadata !DIExpression()), !dbg !343
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !344
  %conv = trunc i64 %call to i32, !dbg !345
  ret i32 %conv, !dbg !346
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !347 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !351, metadata !DIExpression()), !dbg !352
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !353
  ret i64 %call, !dbg !354
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !355 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !360, metadata !DIExpression()), !dbg !361
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !362
  ret i64 %call, !dbg !363
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !364 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !375, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i8* %__base, metadata !376, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !377, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i64 %__size, metadata !378, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !379, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i64 0, metadata !380, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !381, metadata !DIExpression()), !dbg !385
  br label %while.cond, !dbg !386

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !387
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !385
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !381, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !380, metadata !DIExpression()), !dbg !385
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !388
  br i1 %cmp, label %while.body, label %cleanup, !dbg !386

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !389
  %div = lshr i64 %add, 1, !dbg !391
  call void @llvm.dbg.value(metadata i64 %div, metadata !382, metadata !DIExpression()), !dbg !385
  %mul = mul i64 %div, %__size, !dbg !392
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !393
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !383, metadata !DIExpression()), !dbg !385
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !394
  call void @llvm.dbg.value(metadata i32 %call, metadata !384, metadata !DIExpression()), !dbg !385
  %cmp1 = icmp slt i32 %call, 0, !dbg !395
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !397

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !398
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !400

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !401
  call void @llvm.dbg.value(metadata i64 %add4, metadata !380, metadata !DIExpression()), !dbg !385
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !385
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !385
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !381, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !380, metadata !DIExpression()), !dbg !385
  br label %while.cond, !dbg !386, !llvm.loop !402

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !385
  ret i8* %retval.0, !dbg !404
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !405 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !411, metadata !DIExpression()), !dbg !412
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !413
  ret double %call, !dbg !414
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !415 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !424, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !425, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i32 %base, metadata !426, metadata !DIExpression()), !dbg !427
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !428
  ret i64 %call, !dbg !429
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !430 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !436, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !437, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 %base, metadata !438, metadata !DIExpression()), !dbg !439
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !440
  ret i64 %call, !dbg !441
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !442 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !453, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !454, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %base, metadata !455, metadata !DIExpression()), !dbg !456
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !457
  ret i64 %call, !dbg !458
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !459 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !463, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !464, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.value(metadata i32 %base, metadata !465, metadata !DIExpression()), !dbg !466
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !467
  ret i64 %call, !dbg !468
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !469 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !511, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !512, metadata !DIExpression()), !dbg !513
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !514
  ret i32 %call, !dbg !515
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !516 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !518, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !519, metadata !DIExpression()), !dbg !520
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !521
  ret i32 %call, !dbg !522
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !523 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !527, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !528, metadata !DIExpression()), !dbg !529
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !530
  ret i32 %call, !dbg !531
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !532 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !536, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !537, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !538, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !539, metadata !DIExpression()), !dbg !540
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !541
  ret i32 %call, !dbg !542
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !543 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !547, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !548, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !549, metadata !DIExpression()), !dbg !550
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !549, metadata !DIExpression(DW_OP_deref)), !dbg !550
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !551
  ret i32 %call, !dbg !552
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !553 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !557, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i8* %__path, metadata !558, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !559, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !560, metadata !DIExpression()), !dbg !561
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !560, metadata !DIExpression(DW_OP_deref)), !dbg !561
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !562
  ret i32 %call, !dbg !563
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !564 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !588, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !589, metadata !DIExpression()), !dbg !590
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !591
  ret i32 %call, !dbg !592
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !593 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !595, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !596, metadata !DIExpression()), !dbg !597
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !598
  ret i32 %call, !dbg !599
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !600 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !604, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !605, metadata !DIExpression()), !dbg !606
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !607
  ret i32 %call, !dbg !608
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !609 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !613, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !614, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !615, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !616, metadata !DIExpression()), !dbg !617
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !618
  ret i32 %call, !dbg !619
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @preprocess_file(%struct.cpp_reader* %pfile) local_unnamed_addr #4 !dbg !620 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1131, metadata !DIExpression()), !dbg !1132
  %0 = load i8, i8* @flag_no_output, align 1, !dbg !1133
  %tobool = icmp eq i8 %0, 0, !dbg !1133
  br i1 %tobool, label %if.else, label %while.cond.preheader, !dbg !1135

while.cond.preheader:                             ; preds = %entry
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1136
  br label %while.cond, !dbg !1138

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !1139
  %prev = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %1, i64 0, i32 9, !dbg !1140
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %prev, align 8, !dbg !1140
  %tobool1 = icmp eq %struct.cpp_buffer* %2, null, !dbg !1138
  tail call void @cpp_scan_nooutput(%struct.cpp_reader* %pfile) #6, !dbg !1136
  br i1 %tobool1, label %if.end12.loopexit, label %while.cond, !dbg !1138, !llvm.loop !1141

if.else:                                          ; preds = %entry
  %call = tail call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #6, !dbg !1143
  %traditional = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call, i64 0, i32 36, !dbg !1145
  %3 = load i8, i8* %traditional, align 2, !dbg !1145
  %tobool2 = icmp eq i8 %3, 0, !dbg !1143
  br i1 %tobool2, label %if.else4, label %if.then3, !dbg !1146

if.then3:                                         ; preds = %if.else
  tail call fastcc void @scan_translation_unit_trad(%struct.cpp_reader* %pfile) #7, !dbg !1147
  br label %if.end12, !dbg !1147

if.else4:                                         ; preds = %if.else
  %call5 = tail call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #6, !dbg !1148
  %directives_only = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call5, i64 0, i32 52, !dbg !1150
  %4 = load i8, i8* %directives_only, align 4, !dbg !1150
  %tobool6 = icmp eq i8 %4, 0, !dbg !1148
  br i1 %tobool6, label %if.else10, label %land.lhs.true, !dbg !1151

land.lhs.true:                                    ; preds = %if.else4
  %call7 = tail call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #6, !dbg !1152
  %preprocessed = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call7, i64 0, i32 32, !dbg !1153
  %5 = load i8, i8* %preprocessed, align 2, !dbg !1153
  %tobool8 = icmp eq i8 %5, 0, !dbg !1152
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !1154

if.then9:                                         ; preds = %land.lhs.true
  tail call fastcc void @scan_translation_unit_directives_only(%struct.cpp_reader* %pfile) #7, !dbg !1155
  br label %if.end12, !dbg !1155

if.else10:                                        ; preds = %land.lhs.true, %if.else4
  tail call fastcc void @scan_translation_unit(%struct.cpp_reader* %pfile) #7, !dbg !1156
  br label %if.end12

if.end12.loopexit:                                ; preds = %while.cond
  br label %if.end12, !dbg !1157

if.end12:                                         ; preds = %if.end12.loopexit, %if.then3, %if.else10, %if.then9
  %6 = load i8, i8* @flag_dump_macros, align 1, !dbg !1157
  %cmp = icmp eq i8 %6, 77, !dbg !1159
  br i1 %cmp, label %if.then15, label %if.end16, !dbg !1160

if.then15:                                        ; preds = %if.end12
  tail call void @cpp_forall_identifiers(%struct.cpp_reader* %pfile, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* nonnull @dump_macro, i8* null) #6, !dbg !1161
  br label %if.end16, !dbg !1161

if.end16:                                         ; preds = %if.then15, %if.end12
  %7 = load i8, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 4), align 4, !dbg !1162
  %tobool17 = icmp eq i8 %7, 0, !dbg !1164
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !1165

if.then18:                                        ; preds = %if.end16
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1166
  %call19 = tail call i32 @putc(i32 10, %struct._IO_FILE* %8) #6, !dbg !1167
  br label %if.end20, !dbg !1167

if.end20:                                         ; preds = %if.end16, %if.then18
  ret void, !dbg !1168
}

declare dso_local void @cpp_scan_nooutput(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local %struct.cpp_options* @cpp_get_options(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @scan_translation_unit_trad(%struct.cpp_reader* %pfile) unnamed_addr #4 !dbg !1169 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1171, metadata !DIExpression()), !dbg !1174
  %cur = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 2, !dbg !1175
  %0 = bitcast i8** %cur to i64*, !dbg !1175
  %base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 0, !dbg !1175
  %1 = bitcast i8** %base to i64*, !dbg !1175
  %first_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 3, !dbg !1175
  %discard_comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 5, !dbg !1176
  br label %while.cond, !dbg !1178

while.cond:                                       ; preds = %if.end, %entry
  %call = tail call zeroext i8 @_cpp_read_logical_line_trad(%struct.cpp_reader* %pfile) #6, !dbg !1179
  %tobool = icmp eq i8 %call, 0, !dbg !1178
  br i1 %tobool, label %while.end, label %while.body, !dbg !1178

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %0, align 8, !dbg !1180
  %3 = load i64, i64* %1, align 8, !dbg !1181
  %sub.ptr.sub = sub i64 %2, %3, !dbg !1182
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !1172, metadata !DIExpression()), !dbg !1175
  %4 = load i32, i32* %first_line, align 8, !dbg !1183
  tail call void @maybe_print_line(i32 %4) #7, !dbg !1184
  %5 = load i8*, i8** %base, align 8, !dbg !1185
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1186
  %call5 = tail call i64 @fwrite(i8* %5, i64 1, i64 %sub.ptr.sub, %struct._IO_FILE* %6) #6, !dbg !1187
  store i8 1, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 4), align 4, !dbg !1188
  %7 = load i8, i8* %discard_comments, align 1, !dbg !1189
  %tobool6 = icmp eq i8 %7, 0, !dbg !1189
  br i1 %tobool6, label %if.then, label %if.end, !dbg !1190

if.then:                                          ; preds = %while.body
  %8 = load i8*, i8** %base, align 8, !dbg !1191
  tail call fastcc void @account_for_newlines(i8* %8, i64 %sub.ptr.sub) #7, !dbg !1192
  br label %if.end, !dbg !1192

if.end:                                           ; preds = %while.body, %if.then
  br label %while.cond, !dbg !1178, !llvm.loop !1193

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1195
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scan_translation_unit_directives_only(%struct.cpp_reader* %pfile) unnamed_addr #4 !dbg !1196 {
entry:
  %cb = alloca %struct._cpp_dir_only_callbacks, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1198, metadata !DIExpression()), !dbg !1210
  %0 = bitcast %struct._cpp_dir_only_callbacks* %cb to i8*, !dbg !1211
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !1211
  %print_lines = getelementptr inbounds %struct._cpp_dir_only_callbacks, %struct._cpp_dir_only_callbacks* %cb, i64 0, i32 0, !dbg !1212
  store void (i32, i8*, i64)* @print_lines_directives_only, void (i32, i8*, i64)** %print_lines, align 8, !dbg !1213
  %maybe_print_line = getelementptr inbounds %struct._cpp_dir_only_callbacks, %struct._cpp_dir_only_callbacks* %cb, i64 0, i32 1, !dbg !1214
  store void (i32)* @maybe_print_line, void (i32)** %maybe_print_line, align 8, !dbg !1215
  call void @llvm.dbg.value(metadata %struct._cpp_dir_only_callbacks* %cb, metadata !1199, metadata !DIExpression(DW_OP_deref)), !dbg !1210
  call void @_cpp_preprocess_dir_only(%struct.cpp_reader* %pfile, %struct._cpp_dir_only_callbacks* nonnull %cb) #6, !dbg !1216
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !1217
  ret void, !dbg !1217
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scan_translation_unit(%struct.cpp_reader* %pfile) unnamed_addr #4 !dbg !1218 {
entry:
  %loc = alloca i32, align 4
  %space = alloca i8*, align 8
  %name = alloca i8*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1220, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 0, metadata !1221, metadata !DIExpression()), !dbg !1241
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1242
  %call = tail call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %0) #6, !dbg !1243
  %lang = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call, i64 0, i32 1, !dbg !1244
  %1 = load i32, i32* %lang, align 4, !dbg !1244
  %cmp = icmp eq i32 %1, 9, !dbg !1245
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !1246

land.rhs:                                         ; preds = %entry
  %2 = load i8, i8* @flag_no_line_commands, align 1, !dbg !1247
  %tobool = icmp ne i8 %2, 0, !dbg !1248
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %3 = phi i1 [ true, %entry ], [ %tobool, %land.rhs ]
  call void @llvm.dbg.value(metadata i8 0, metadata !1223, metadata !DIExpression()), !dbg !1241
  store %struct.cpp_token* null, %struct.cpp_token** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 2), align 8, !dbg !1249
  %4 = bitcast i32* %loc to i8*, !dbg !1250
  %5 = bitcast i8** %space to i8*, !dbg !1251
  %6 = bitcast i8** %name to i8*, !dbg !1251
  br label %for.cond, !dbg !1252

for.cond:                                         ; preds = %cleanup, %land.end
  %in_pragma.0 = phi i8 [ 0, %land.end ], [ %in_pragma.3, %cleanup ], !dbg !1253
  %avoid_paste.0 = phi i8 [ 0, %land.end ], [ %avoid_paste.1, %cleanup ], !dbg !1241
  call void @llvm.dbg.value(metadata i8 %avoid_paste.0, metadata !1221, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %in_pragma.0, metadata !1223, metadata !DIExpression()), !dbg !1241
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8, !dbg !1254
  call void @llvm.dbg.value(metadata i32* %loc, metadata !1224, metadata !DIExpression(DW_OP_deref)), !dbg !1250
  %call1 = call %struct.cpp_token* @cpp_get_token_with_location(%struct.cpp_reader* %pfile, i32* nonnull %loc) #6, !dbg !1255
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call1, metadata !1228, metadata !DIExpression()), !dbg !1250
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 1, !dbg !1256
  %bf.load = load i8, i8* %type, align 4, !dbg !1256
  %cmp2 = icmp eq i8 %bf.load, 72, !dbg !1258
  br i1 %cmp2, label %if.then, label %if.end13, !dbg !1259

if.then:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata i8 1, metadata !1221, metadata !DIExpression()), !dbg !1241
  %7 = load %struct.cpp_token*, %struct.cpp_token** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 2), align 8, !dbg !1260
  %cmp4 = icmp eq %struct.cpp_token* %7, null, !dbg !1263
  br i1 %cmp4, label %if.then.if.then10_crit_edge, label %lor.lhs.false, !dbg !1264

if.then.if.then10_crit_edge:                      ; preds = %if.then
  %val11.phi.trans.insert = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 3, !dbg !1265
  %.phi.trans.insert = bitcast %union.cpp_token_u* %val11.phi.trans.insert to i64*, !dbg !1265
  %.pre5 = load i64, i64* %.phi.trans.insert, align 8, !dbg !1266
  br label %if.then10, !dbg !1264

lor.lhs.false:                                    ; preds = %if.then
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %7, i64 0, i32 2, !dbg !1267
  %8 = load i16, i16* %flags, align 2, !dbg !1267
  %9 = and i16 %8, 1, !dbg !1268
  %tobool7 = icmp eq i16 %9, 0, !dbg !1268
  br i1 %tobool7, label %land.lhs.true, label %cleanup, !dbg !1269, !llvm.loop !1270

land.lhs.true:                                    ; preds = %lor.lhs.false
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 3, !dbg !1273
  %source = bitcast %union.cpp_token_u* %val to %struct.cpp_token**, !dbg !1274
  %10 = load %struct.cpp_token*, %struct.cpp_token** %source, align 8, !dbg !1274
  %cmp8 = icmp eq %struct.cpp_token* %10, null, !dbg !1275
  br i1 %cmp8, label %land.lhs.true.if.then10_crit_edge, label %cleanup, !dbg !1276, !llvm.loop !1270

land.lhs.true.if.then10_crit_edge:                ; preds = %land.lhs.true
  %11 = ptrtoint %struct.cpp_token* %10 to i64, !dbg !1276
  br label %if.then10, !dbg !1276

if.then10:                                        ; preds = %land.lhs.true.if.then10_crit_edge, %if.then.if.then10_crit_edge
  %12 = phi i64 [ %.pre5, %if.then.if.then10_crit_edge ], [ %11, %land.lhs.true.if.then10_crit_edge ], !dbg !1266
  store i64 %12, i64* bitcast (%struct.cpp_token** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 2) to i64*), align 8, !dbg !1277
  br label %cleanup, !dbg !1278, !llvm.loop !1270

if.end13:                                         ; preds = %for.cond
  %cmp17 = icmp eq i8 %bf.load, 22, !dbg !1279
  br i1 %cmp17, label %cleanup, label %if.end20, !dbg !1281

if.end20:                                         ; preds = %if.end13
  %tobool21 = icmp eq i8 %avoid_paste.0, 0, !dbg !1282
  br i1 %tobool21, label %if.else61, label %if.then22, !dbg !1283

if.then22:                                        ; preds = %if.end20
  %13 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !1284
  %14 = load i32, i32* %loc, align 4, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %14, metadata !1224, metadata !DIExpression()), !dbg !1250
  %call23 = call %struct.line_map* @linemap_lookup(%struct.line_maps* %13, i32 %14) #6, !dbg !1286
  call void @llvm.dbg.value(metadata %struct.line_map* %call23, metadata !1229, metadata !DIExpression()), !dbg !1287
  %15 = load i32, i32* %loc, align 4, !dbg !1288
  call void @llvm.dbg.value(metadata i32 %15, metadata !1224, metadata !DIExpression()), !dbg !1250
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %call23, i64 0, i32 2, !dbg !1288
  %16 = load i32, i32* %start_location, align 4, !dbg !1288
  %sub = sub i32 %15, %16, !dbg !1288
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %call23, i64 0, i32 6, !dbg !1288
  %bf.load24 = load i8, i8* %column_bits, align 2, !dbg !1288
  %bf.cast25 = zext i8 %bf.load24 to i32, !dbg !1288
  %shr = lshr i32 %sub, %bf.cast25, !dbg !1288
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %call23, i64 0, i32 1, !dbg !1288
  %17 = load i32, i32* %to_line, align 8, !dbg !1288
  %add = add i32 %shr, %17, !dbg !1288
  call void @llvm.dbg.value(metadata i32 %add, metadata !1232, metadata !DIExpression()), !dbg !1287
  %18 = load %struct.cpp_token*, %struct.cpp_token** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 2), align 8, !dbg !1289
  %cmp26 = icmp eq %struct.cpp_token* %18, null, !dbg !1291
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !1292

if.then28:                                        ; preds = %if.then22
  store %struct.cpp_token* %call1, %struct.cpp_token** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 2), align 8, !dbg !1293
  br label %if.end29, !dbg !1294

if.end29:                                         ; preds = %if.then28, %if.then22
  %19 = phi %struct.cpp_token* [ %call1, %if.then28 ], [ %18, %if.then22 ]
  %20 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1295
  %cmp30 = icmp eq i32 %add, %20, !dbg !1297
  %or.cond.not = or i1 %3, %cmp30, !dbg !1298
  %tobool36 = icmp ne i8 %in_pragma.0, 0, !dbg !1299
  %or.cond1 = or i1 %or.cond.not, %tobool36, !dbg !1298
  br i1 %or.cond1, label %if.else, label %if.then37, !dbg !1298

if.then37:                                        ; preds = %if.end29
  call void @llvm.dbg.value(metadata i32 %15, metadata !1224, metadata !DIExpression()), !dbg !1250
  call fastcc void @do_line_change(%struct.cpp_reader* %pfile, %struct.cpp_token* %call1, i32 %15, i32 0) #7, !dbg !1300
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1302
  %call38 = call i32 @putc(i32 32, %struct._IO_FILE* %21) #6, !dbg !1303
  br label %if.end89, !dbg !1304

if.else:                                          ; preds = %if.end29
  %flags39 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %19, i64 0, i32 2, !dbg !1305
  %22 = load i16, i16* %flags39, align 2, !dbg !1305
  %23 = and i16 %22, 1, !dbg !1307
  %tobool42 = icmp eq i16 %23, 0, !dbg !1307
  br i1 %tobool42, label %lor.lhs.false43, label %if.then57, !dbg !1308

lor.lhs.false43:                                  ; preds = %if.else
  %24 = load %struct.cpp_token*, %struct.cpp_token** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 1), align 8, !dbg !1309
  %tobool44 = icmp eq %struct.cpp_token* %24, null, !dbg !1310
  br i1 %tobool44, label %lor.lhs.false48, label %land.lhs.true45, !dbg !1311

land.lhs.true45:                                  ; preds = %lor.lhs.false43
  %call46 = call i32 @cpp_avoid_paste(%struct.cpp_reader* %pfile, %struct.cpp_token* nonnull %24, %struct.cpp_token* %call1) #6, !dbg !1312
  %tobool47 = icmp eq i32 %call46, 0, !dbg !1312
  br i1 %tobool47, label %land.lhs.true45.lor.lhs.false48_crit_edge, label %if.then57, !dbg !1313

land.lhs.true45.lor.lhs.false48_crit_edge:        ; preds = %land.lhs.true45
  %.pre = load %struct.cpp_token*, %struct.cpp_token** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 1), align 8, !dbg !1314
  br label %lor.lhs.false48, !dbg !1313

lor.lhs.false48:                                  ; preds = %land.lhs.true45.lor.lhs.false48_crit_edge, %lor.lhs.false43
  %25 = phi %struct.cpp_token* [ %.pre, %land.lhs.true45.lor.lhs.false48_crit_edge ], [ null, %lor.lhs.false43 ], !dbg !1314
  %cmp49 = icmp eq %struct.cpp_token* %25, null, !dbg !1315
  br i1 %cmp49, label %land.lhs.true51, label %if.end89, !dbg !1316

land.lhs.true51:                                  ; preds = %lor.lhs.false48
  %bf.load53 = load i8, i8* %type, align 4, !dbg !1317
  %cmp55 = icmp eq i8 %bf.load53, 37, !dbg !1318
  br i1 %cmp55, label %if.then57, label %if.end89, !dbg !1319

if.then57:                                        ; preds = %land.lhs.true45, %if.else, %land.lhs.true51
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1320
  %call58 = call i32 @putc(i32 32, %struct._IO_FILE* %26) #6, !dbg !1321
  br label %if.end89, !dbg !1321

if.else61:                                        ; preds = %if.end20
  %flags62 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 2, !dbg !1322
  %27 = load i16, i16* %flags62, align 2, !dbg !1322
  %28 = and i16 %27, 1, !dbg !1323
  %tobool65 = icmp eq i16 %28, 0, !dbg !1323
  br i1 %tobool65, label %if.end89, label %if.then66, !dbg !1324

if.then66:                                        ; preds = %if.else61
  %29 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !1325
  %30 = load i32, i32* %loc, align 4, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %30, metadata !1224, metadata !DIExpression()), !dbg !1250
  %call68 = call %struct.line_map* @linemap_lookup(%struct.line_maps* %29, i32 %30) #6, !dbg !1327
  call void @llvm.dbg.value(metadata %struct.line_map* %call68, metadata !1233, metadata !DIExpression()), !dbg !1328
  %31 = load i32, i32* %loc, align 4, !dbg !1329
  call void @llvm.dbg.value(metadata i32 %31, metadata !1224, metadata !DIExpression()), !dbg !1250
  %start_location70 = getelementptr inbounds %struct.line_map, %struct.line_map* %call68, i64 0, i32 2, !dbg !1329
  %32 = load i32, i32* %start_location70, align 4, !dbg !1329
  %sub71 = sub i32 %31, %32, !dbg !1329
  %column_bits72 = getelementptr inbounds %struct.line_map, %struct.line_map* %call68, i64 0, i32 6, !dbg !1329
  %bf.load73 = load i8, i8* %column_bits72, align 2, !dbg !1329
  %bf.cast74 = zext i8 %bf.load73 to i32, !dbg !1329
  %shr75 = lshr i32 %sub71, %bf.cast74, !dbg !1329
  %to_line76 = getelementptr inbounds %struct.line_map, %struct.line_map* %call68, i64 0, i32 1, !dbg !1329
  %33 = load i32, i32* %to_line76, align 8, !dbg !1329
  %add77 = add i32 %shr75, %33, !dbg !1329
  call void @llvm.dbg.value(metadata i32 %add77, metadata !1236, metadata !DIExpression()), !dbg !1328
  %34 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1330
  %cmp78 = icmp eq i32 %add77, %34, !dbg !1332
  %or.cond2.not = or i1 %3, %cmp78, !dbg !1333
  %tobool84 = icmp ne i8 %in_pragma.0, 0, !dbg !1334
  %or.cond3 = or i1 %or.cond2.not, %tobool84, !dbg !1333
  br i1 %or.cond3, label %if.end86, label %if.then85, !dbg !1333

if.then85:                                        ; preds = %if.then66
  call void @llvm.dbg.value(metadata i32 %31, metadata !1224, metadata !DIExpression()), !dbg !1250
  call fastcc void @do_line_change(%struct.cpp_reader* %pfile, %struct.cpp_token* %call1, i32 %31, i32 0) #7, !dbg !1335
  br label %if.end86, !dbg !1335

if.end86:                                         ; preds = %if.then66, %if.then85
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1336
  %call87 = call i32 @putc(i32 32, %struct._IO_FILE* %35) #6, !dbg !1337
  br label %if.end89, !dbg !1338

if.end89:                                         ; preds = %if.else61, %if.end86, %if.then37, %if.then57, %land.lhs.true51, %lor.lhs.false48
  call void @llvm.dbg.value(metadata i8 0, metadata !1221, metadata !DIExpression()), !dbg !1241
  store %struct.cpp_token* null, %struct.cpp_token** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 2), align 8, !dbg !1339
  store %struct.cpp_token* %call1, %struct.cpp_token** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 1), align 8, !dbg !1340
  %bf.load91 = load i8, i8* %type, align 4, !dbg !1341
  %cmp93 = icmp eq i8 %bf.load91, 70, !dbg !1342
  br i1 %cmp93, label %if.then95, label %if.else104, !dbg !1343

if.then95:                                        ; preds = %if.end89
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1344
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !1345
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 0, !dbg !1346
  %36 = load i32, i32* %src_loc, align 8, !dbg !1346
  call void @maybe_print_line(i32 %36) #7, !dbg !1347
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1348
  %call96 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %37) #6, !dbg !1349
  %pragma = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 3, i32 0, i32 0, !dbg !1350
  %38 = load i32, i32* %pragma, align 8, !dbg !1350
  call void @llvm.dbg.value(metadata i8** %space, metadata !1237, metadata !DIExpression(DW_OP_deref)), !dbg !1251
  call void @llvm.dbg.value(metadata i8** %name, metadata !1240, metadata !DIExpression(DW_OP_deref)), !dbg !1251
  call void @c_pp_lookup_pragma(i32 %38, i8** nonnull %space, i8** nonnull %name) #6, !dbg !1351
  %39 = load i8*, i8** %space, align 8, !dbg !1352
  call void @llvm.dbg.value(metadata i8* %39, metadata !1237, metadata !DIExpression()), !dbg !1251
  %tobool98 = icmp eq i8* %39, null, !dbg !1352
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1354
  br i1 %tobool98, label %if.else101, label %if.then99, !dbg !1355

if.then99:                                        ; preds = %if.then95
  call void @llvm.dbg.value(metadata i8* %39, metadata !1237, metadata !DIExpression()), !dbg !1251
  %41 = load i8*, i8** %name, align 8, !dbg !1356
  call void @llvm.dbg.value(metadata i8* %41, metadata !1240, metadata !DIExpression()), !dbg !1251
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %39, i8* %41) #6, !dbg !1357
  br label %if.end103, !dbg !1357

if.else101:                                       ; preds = %if.then95
  %42 = load i8*, i8** %name, align 8, !dbg !1358
  call void @llvm.dbg.value(metadata i8* %42, metadata !1240, metadata !DIExpression()), !dbg !1251
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %42) #6, !dbg !1359
  br label %if.end103

if.end103:                                        ; preds = %if.else101, %if.then99
  store i8 1, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 4), align 4, !dbg !1360
  call void @llvm.dbg.value(metadata i8 1, metadata !1223, metadata !DIExpression()), !dbg !1241
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !1361
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1361
  br label %if.end114, !dbg !1362

if.else104:                                       ; preds = %if.end89
  %cmp108 = icmp eq i8 %bf.load91, 71, !dbg !1363
  br i1 %cmp108, label %if.then110, label %if.else112, !dbg !1365

if.then110:                                       ; preds = %if.else104
  %src_loc111 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 0, !dbg !1366
  %43 = load i32, i32* %src_loc111, align 8, !dbg !1366
  call void @maybe_print_line(i32 %43) #7, !dbg !1368
  call void @llvm.dbg.value(metadata i8 0, metadata !1223, metadata !DIExpression()), !dbg !1241
  br label %if.end114, !dbg !1369

if.else112:                                       ; preds = %if.else104
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1370
  call void @cpp_output_token(%struct.cpp_token* %call1, %struct._IO_FILE* %44) #6, !dbg !1371
  br label %if.end114

if.end114:                                        ; preds = %if.then110, %if.else112, %if.end103
  %in_pragma.2 = phi i8 [ 1, %if.end103 ], [ 0, %if.then110 ], [ %in_pragma.0, %if.else112 ], !dbg !1372
  call void @llvm.dbg.value(metadata i8 %in_pragma.2, metadata !1223, metadata !DIExpression()), !dbg !1241
  %bf.load116 = load i8, i8* %type, align 4, !dbg !1373
  %cmp118 = icmp eq i8 %bf.load116, 68, !dbg !1375
  br i1 %cmp118, label %if.then120, label %cleanup, !dbg !1376

if.then120:                                       ; preds = %if.end114
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 3, i32 0, i32 1, !dbg !1377
  %45 = load i8*, i8** %text, align 8, !dbg !1377
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 3, i32 0, i32 0, !dbg !1378
  %46 = load i32, i32* %len, align 8, !dbg !1378
  %conv124 = zext i32 %46 to i64, !dbg !1379
  call fastcc void @account_for_newlines(i8* %45, i64 %conv124) #7, !dbg !1380
  br label %cleanup, !dbg !1380

cleanup:                                          ; preds = %lor.lhs.false, %if.end114, %if.then120, %if.end13, %land.lhs.true, %if.then10
  %in_pragma.3 = phi i8 [ %in_pragma.0, %if.then10 ], [ %in_pragma.0, %land.lhs.true ], [ %in_pragma.0, %lor.lhs.false ], [ %in_pragma.0, %if.end13 ], [ %in_pragma.2, %if.then120 ], [ %in_pragma.2, %if.end114 ], !dbg !1241
  %avoid_paste.1 = phi i8 [ 1, %if.then10 ], [ 1, %land.lhs.true ], [ 1, %lor.lhs.false ], [ %avoid_paste.0, %if.end13 ], [ 0, %if.then120 ], [ 0, %if.end114 ], !dbg !1241
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then10 ], [ false, %land.lhs.true ], [ false, %lor.lhs.false ], [ true, %if.end13 ], [ false, %if.then120 ], [ false, %if.end114 ]
  call void @llvm.dbg.value(metadata i8 %avoid_paste.1, metadata !1221, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %in_pragma.3, metadata !1223, metadata !DIExpression()), !dbg !1241
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8, !dbg !1381
  br i1 %cleanup.dest.slot.0, label %for.end, label %for.cond

for.end:                                          ; preds = %cleanup
  ret void, !dbg !1382
}

declare dso_local void @cpp_forall_identifiers(%struct.cpp_reader*, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @dump_macro(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, i8* %v) #4 !dbg !1383 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1387, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !1388, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i8* %v, metadata !1389, metadata !DIExpression()), !dbg !1390
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 3, !dbg !1391
  %bf.load = load i16, i16* %type, align 2, !dbg !1391
  %bf.clear = and i16 %bf.load, 63, !dbg !1391
  %cmp = icmp eq i16 %bf.clear, 1, !dbg !1393
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1394

land.lhs.true:                                    ; preds = %entry
  %0 = and i16 %bf.load, 256, !dbg !1395
  %tobool = icmp eq i16 %0, 0, !dbg !1395
  br i1 %tobool, label %if.then, label %if.end, !dbg !1396

if.then:                                          ; preds = %land.lhs.true
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1397
  %call = tail call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* %1) #6, !dbg !1399
  %call3 = tail call i8* @cpp_macro_definition(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) #6, !dbg !1400
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1401
  %call4 = tail call i32 @fputs(i8* %call3, %struct._IO_FILE* %2) #6, !dbg !1402
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1403
  %call5 = tail call i32 @putc(i32 10, %struct._IO_FILE* %3) #6, !dbg !1404
  %4 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1405
  %inc = add nsw i32 %4, 1, !dbg !1405
  store i32 %inc, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1405
  br label %if.end, !dbg !1406

if.end:                                           ; preds = %land.lhs.true, %if.then, %entry
  ret i32 1, !dbg !1407
}

; Function Attrs: nounwind uwtable
define dso_local void @init_pp_output(%struct._IO_FILE* %out_stream) local_unnamed_addr #4 !dbg !1408 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %out_stream, metadata !1412, metadata !DIExpression()), !dbg !1416
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1417
  %call = tail call %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader* %0) #6, !dbg !1418
  call void @llvm.dbg.value(metadata %struct.cpp_callbacks* %call, metadata !1413, metadata !DIExpression()), !dbg !1416
  %1 = load i8, i8* @flag_no_output, align 1, !dbg !1419
  %tobool = icmp eq i8 %1, 0, !dbg !1419
  br i1 %tobool, label %if.then, label %if.end3, !dbg !1421

if.then:                                          ; preds = %entry
  %line_change = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call, i64 0, i32 0, !dbg !1422
  store void (%struct.cpp_reader*, %struct.cpp_token*, i32)* @cb_line_change, void (%struct.cpp_reader*, %struct.cpp_token*, i32)** %line_change, align 8, !dbg !1424
  %2 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1425
  %call1 = tail call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %2) #6, !dbg !1427
  %lang = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call1, i64 0, i32 1, !dbg !1428
  %3 = load i32, i32* %lang, align 4, !dbg !1428
  %cmp = icmp eq i32 %3, 9, !dbg !1429
  br i1 %cmp, label %if.end3, label %if.then2, !dbg !1430

if.then2:                                         ; preds = %if.then
  %ident = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call, i64 0, i32 6, !dbg !1431
  store void (%struct.cpp_reader*, i32, %struct.cpp_string*)* @cb_ident, void (%struct.cpp_reader*, i32, %struct.cpp_string*)** %ident, align 8, !dbg !1433
  %def_pragma = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call, i64 0, i32 7, !dbg !1434
  store void (%struct.cpp_reader*, i32)* @cb_def_pragma, void (%struct.cpp_reader*, i32)** %def_pragma, align 8, !dbg !1435
  br label %if.end3, !dbg !1436

if.end3:                                          ; preds = %if.then, %entry, %if.then2
  %4 = load i8, i8* @flag_dump_includes, align 1, !dbg !1437
  %tobool4 = icmp eq i8 %4, 0, !dbg !1437
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1439

if.then5:                                         ; preds = %if.end3
  %include = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call, i64 0, i32 3, !dbg !1440
  store void (%struct.cpp_reader*, i32, i8*, i8*, i32, %struct.cpp_token**)* @cb_include, void (%struct.cpp_reader*, i32, i8*, i8*, i32, %struct.cpp_token**)** %include, align 8, !dbg !1441
  br label %if.end6, !dbg !1442

if.end6:                                          ; preds = %if.end3, %if.then5
  %5 = load i8, i8* @flag_pch_preprocess, align 1, !dbg !1443
  %tobool7 = icmp eq i8 %5, 0, !dbg !1443
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !1445

if.then8:                                         ; preds = %if.end6
  %valid_pch = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call, i64 0, i32 8, !dbg !1446
  store i32 (%struct.cpp_reader*, i8*, i32)* @c_common_valid_pch, i32 (%struct.cpp_reader*, i8*, i32)** %valid_pch, align 8, !dbg !1448
  %read_pch = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call, i64 0, i32 9, !dbg !1449
  store void (%struct.cpp_reader*, i8*, i32, i8*)* @cb_read_pch, void (%struct.cpp_reader*, i8*, i32, i8*)** %read_pch, align 8, !dbg !1450
  br label %if.end9, !dbg !1451

if.end9:                                          ; preds = %if.end6, %if.then8
  %6 = load i8, i8* @flag_dump_macros, align 1, !dbg !1452
  %cmp10 = icmp eq i8 %6, 78, !dbg !1454
  br i1 %cmp10, label %if.then15, label %lor.lhs.false, !dbg !1455

lor.lhs.false:                                    ; preds = %if.end9
  %cmp13 = icmp eq i8 %6, 68, !dbg !1456
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1457

if.then15:                                        ; preds = %lor.lhs.false, %if.end9
  %define = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call, i64 0, i32 4, !dbg !1458
  store void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* @cb_define, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %define, align 8, !dbg !1460
  %undef = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call, i64 0, i32 5, !dbg !1461
  store void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* @cb_undef, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %undef, align 8, !dbg !1462
  br label %if.end16, !dbg !1463

if.end16:                                         ; preds = %if.then15, %lor.lhs.false
  %cmp18 = icmp eq i8 %6, 85, !dbg !1464
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !1466

if.then20:                                        ; preds = %if.end16
  %before_define = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call, i64 0, i32 15, !dbg !1467
  %before_define21 = bitcast {}** %before_define to void (%struct.cpp_reader*)**, !dbg !1467
  store void (%struct.cpp_reader*)* @dump_queued_macros, void (%struct.cpp_reader*)** %before_define21, align 8, !dbg !1469
  %used_define = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call, i64 0, i32 13, !dbg !1470
  store void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* @cb_used_define, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %used_define, align 8, !dbg !1471
  %used_undef = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %call, i64 0, i32 14, !dbg !1472
  store void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* @cb_used_undef, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %used_undef, align 8, !dbg !1473
  br label %if.end22, !dbg !1474

if.end22:                                         ; preds = %if.then20, %if.end16
  store i32 1, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1475
  store i8 0, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 4), align 4, !dbg !1476
  store %struct.cpp_token* null, %struct.cpp_token** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 1), align 8, !dbg !1477
  store %struct._IO_FILE* %out_stream, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1478
  store i8 1, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 5), align 1, !dbg !1479
  ret void, !dbg !1480
}

declare dso_local %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @cb_line_change(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i32 %parsing_args) #4 !dbg !1481 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1483, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !1484, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i32 %parsing_args, metadata !1485, metadata !DIExpression()), !dbg !1486
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 0, !dbg !1487
  %0 = load i32, i32* %src_loc, align 8, !dbg !1487
  tail call fastcc void @do_line_change(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i32 %0, i32 %parsing_args) #7, !dbg !1488
  ret void, !dbg !1489
}

; Function Attrs: nounwind uwtable
define internal void @cb_ident(%struct.cpp_reader* %pfile, i32 %line, %struct.cpp_string* %str) #4 !dbg !1490 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1494, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i32 %line, metadata !1495, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata %struct.cpp_string* %str, metadata !1496, metadata !DIExpression()), !dbg !1497
  tail call void @maybe_print_line(i32 %line) #7, !dbg !1498
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1499
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i64 0, i32 1, !dbg !1500
  %1 = load i8*, i8** %text, align 8, !dbg !1500
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %1) #6, !dbg !1501
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1502
  %inc = add nsw i32 %2, 1, !dbg !1502
  store i32 %inc, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1502
  ret void, !dbg !1503
}

; Function Attrs: nounwind uwtable
define internal void @cb_def_pragma(%struct.cpp_reader* %pfile, i32 %line) #4 !dbg !1504 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1508, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i32 %line, metadata !1509, metadata !DIExpression()), !dbg !1510
  tail call void @maybe_print_line(i32 %line) #7, !dbg !1511
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1512
  %call = tail call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %0) #6, !dbg !1513
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1514
  tail call void @cpp_output_line(%struct.cpp_reader* %pfile, %struct._IO_FILE* %1) #6, !dbg !1515
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1516
  %inc = add nsw i32 %2, 1, !dbg !1516
  store i32 %inc, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1516
  ret void, !dbg !1517
}

; Function Attrs: nounwind uwtable
define internal void @cb_include(%struct.cpp_reader* %pfile, i32 %line, i8* %dir, i8* %header, i32 %angle_brackets, %struct.cpp_token** %comments) #4 !dbg !1518 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1522, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i32 %line, metadata !1523, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i8* %dir, metadata !1524, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i8* %header, metadata !1525, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata i32 %angle_brackets, metadata !1526, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata %struct.cpp_token** %comments, metadata !1527, metadata !DIExpression()), !dbg !1528
  tail call void @maybe_print_line(i32 %line) #7, !dbg !1529
  %tobool = icmp eq i32 %angle_brackets, 0, !dbg !1530
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1532
  br i1 %tobool, label %if.else, label %if.then, !dbg !1533

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %dir, i8* %header) #6, !dbg !1534
  br label %if.end, !dbg !1534

if.else:                                          ; preds = %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %dir, i8* %header) #6, !dbg !1535
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp = icmp eq %struct.cpp_token** %comments, null, !dbg !1536
  br i1 %cmp, label %if.end8, label %while.cond.preheader, !dbg !1538

while.cond.preheader:                             ; preds = %if.end
  br label %while.cond, !dbg !1539

while.cond:                                       ; preds = %while.cond.preheader, %if.end7
  %comments.addr.0 = phi %struct.cpp_token** [ %incdec.ptr, %if.end7 ], [ %comments, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata %struct.cpp_token** %comments.addr.0, metadata !1527, metadata !DIExpression()), !dbg !1528
  %1 = load %struct.cpp_token*, %struct.cpp_token** %comments.addr.0, align 8, !dbg !1541
  %cmp3 = icmp eq %struct.cpp_token* %1, null, !dbg !1542
  br i1 %cmp3, label %if.end8.loopexit, label %while.body, !dbg !1539

while.body:                                       ; preds = %while.cond
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i64 0, i32 2, !dbg !1543
  %2 = load i16, i16* %flags, align 2, !dbg !1543
  %3 = and i16 %2, 1, !dbg !1546
  %tobool4 = icmp eq i16 %3, 0, !dbg !1546
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !1547

if.then5:                                         ; preds = %while.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1548
  %call6 = tail call i32 @putc(i32 32, %struct._IO_FILE* %4) #6, !dbg !1549
  %.pre = load %struct.cpp_token*, %struct.cpp_token** %comments.addr.0, align 8, !dbg !1550
  br label %if.end7, !dbg !1549

if.end7:                                          ; preds = %while.body, %if.then5
  %5 = phi %struct.cpp_token* [ %1, %while.body ], [ %.pre, %if.then5 ], !dbg !1550
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1551
  tail call void @cpp_output_token(%struct.cpp_token* %5, %struct._IO_FILE* %6) #6, !dbg !1552
  %incdec.ptr = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %comments.addr.0, i64 1, !dbg !1553
  call void @llvm.dbg.value(metadata %struct.cpp_token** %incdec.ptr, metadata !1527, metadata !DIExpression()), !dbg !1528
  br label %while.cond, !dbg !1539, !llvm.loop !1554

if.end8.loopexit:                                 ; preds = %while.cond
  br label %if.end8, !dbg !1556

if.end8:                                          ; preds = %if.end8.loopexit, %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1556
  %call9 = tail call i32 @putc(i32 10, %struct._IO_FILE* %7) #6, !dbg !1557
  %8 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1558
  %inc = add nsw i32 %8, 1, !dbg !1558
  store i32 %inc, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1558
  ret void, !dbg !1559
}

declare dso_local i32 @c_common_valid_pch(%struct.cpp_reader*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @cb_read_pch(%struct.cpp_reader* %pfile, i8* %name, i32 %fd, i8* %orig_name) #4 !dbg !1560 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1562, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i8* %name, metadata !1563, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i32 %fd, metadata !1564, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i8* %orig_name, metadata !1565, metadata !DIExpression()), !dbg !1566
  tail call void @c_common_read_pch(%struct.cpp_reader* %pfile, i8* %name, i32 %fd, i8* %orig_name) #6, !dbg !1567
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1568
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i8* %name) #6, !dbg !1569
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1570
  %inc = add nsw i32 %1, 1, !dbg !1570
  store i32 %inc, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1570
  ret void, !dbg !1571
}

; Function Attrs: nounwind uwtable
define internal void @cb_define(%struct.cpp_reader* %pfile, i32 %line, %struct.cpp_hashnode* %node) #4 !dbg !1572 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1574, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 %line, metadata !1575, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !1576, metadata !DIExpression()), !dbg !1577
  tail call void @maybe_print_line(i32 %line) #7, !dbg !1578
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1579
  %call = tail call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* %0) #6, !dbg !1580
  %1 = load i8, i8* @flag_dump_macros, align 1, !dbg !1581
  %cmp = icmp eq i8 %1, 68, !dbg !1583
  br i1 %cmp, label %if.then, label %if.else, !dbg !1584

if.then:                                          ; preds = %entry
  %call2 = tail call i8* @cpp_macro_definition(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) #6, !dbg !1585
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1586
  %call3 = tail call i32 @fputs(i8* %call2, %struct._IO_FILE* %2) #6, !dbg !1587
  br label %if.end, !dbg !1587

if.else:                                          ; preds = %entry
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !1588
  %3 = load i8*, i8** %str, align 8, !dbg !1588
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1589
  %call4 = tail call i32 @fputs(i8* %3, %struct._IO_FILE* %4) #6, !dbg !1590
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1591
  %call5 = tail call i32 @putc(i32 10, %struct._IO_FILE* %5) #6, !dbg !1592
  %6 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !1593
  %call6 = tail call %struct.line_map* @linemap_lookup(%struct.line_maps* %6, i32 %line) #6, !dbg !1595
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %call6, i64 0, i32 1, !dbg !1596
  %7 = load i32, i32* %to_line, align 8, !dbg !1596
  %cmp7 = icmp eq i32 %7, 0, !dbg !1597
  br i1 %cmp7, label %if.end10, label %if.then9, !dbg !1598

if.then9:                                         ; preds = %if.end
  %8 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1599
  %inc = add nsw i32 %8, 1, !dbg !1599
  store i32 %inc, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1599
  br label %if.end10, !dbg !1600

if.end10:                                         ; preds = %if.end, %if.then9
  ret void, !dbg !1601
}

; Function Attrs: nounwind uwtable
define internal void @cb_undef(%struct.cpp_reader* %pfile, i32 %line, %struct.cpp_hashnode* %node) #4 !dbg !1602 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1604, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i32 %line, metadata !1605, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !1606, metadata !DIExpression()), !dbg !1607
  tail call void @maybe_print_line(i32 %line) #7, !dbg !1608
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1609
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !1610
  %1 = load i8*, i8** %str, align 8, !dbg !1610
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %1) #6, !dbg !1611
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1612
  %inc = add nsw i32 %2, 1, !dbg !1612
  store i32 %inc, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1612
  ret void, !dbg !1613
}

; Function Attrs: nounwind uwtable
define internal void @dump_queued_macros(%struct.cpp_reader* %pfile) #4 !dbg !1614 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1616, metadata !DIExpression()), !dbg !1626
  %0 = load i8, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 4), align 4, !dbg !1627
  %tobool = icmp eq i8 %0, 0, !dbg !1629
  br i1 %tobool, label %if.end, label %if.then, !dbg !1630

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1631
  %call = tail call i32 @putc(i32 10, %struct._IO_FILE* %1) #6, !dbg !1633
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1634
  %inc = add nsw i32 %2, 1, !dbg !1634
  store i32 %inc, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1634
  store i8 0, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 4), align 4, !dbg !1635
  br label %if.end, !dbg !1636

if.end:                                           ; preds = %entry, %if.then
  %3 = load %struct.macro_queue*, %struct.macro_queue** @define_queue, align 8, !dbg !1637
  call void @llvm.dbg.value(metadata %struct.macro_queue* %3, metadata !1617, metadata !DIExpression()), !dbg !1626
  br label %for.cond, !dbg !1638

for.cond:                                         ; preds = %for.body, %if.end
  %.in1 = phi %struct.macro_queue* [ %3, %if.end ], [ %10, %for.body ]
  %q.0 = phi %struct.macro_queue* [ %3, %if.end ], [ %10, %for.body ], !dbg !1639
  call void @llvm.dbg.value(metadata %struct.macro_queue* %q.0, metadata !1617, metadata !DIExpression()), !dbg !1626
  %tobool1 = icmp eq %struct.macro_queue* %q.0, null, !dbg !1640
  br i1 %tobool1, label %for.end, label %for.body, !dbg !1640

for.body:                                         ; preds = %for.cond
  %4 = bitcast %struct.macro_queue* %.in1 to i8*, !dbg !1639
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1641
  %call2 = tail call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* %5) #6, !dbg !1642
  %macro = getelementptr inbounds %struct.macro_queue, %struct.macro_queue* %q.0, i64 0, i32 1, !dbg !1643
  %6 = load i8*, i8** %macro, align 8, !dbg !1643
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1644
  %call3 = tail call i32 @fputs(i8* %6, %struct._IO_FILE* %7) #6, !dbg !1645
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1646
  %call4 = tail call i32 @putc(i32 10, %struct._IO_FILE* %8) #6, !dbg !1647
  %9 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1648
  %inc5 = add nsw i32 %9, 1, !dbg !1648
  store i32 %inc5, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1648
  call void @llvm.dbg.value(metadata %struct.macro_queue* %q.0, metadata !1618, metadata !DIExpression()), !dbg !1649
  %next = getelementptr inbounds %struct.macro_queue, %struct.macro_queue* %q.0, i64 0, i32 0, !dbg !1650
  %10 = load %struct.macro_queue*, %struct.macro_queue** %next, align 8, !dbg !1650
  call void @llvm.dbg.value(metadata %struct.macro_queue* %10, metadata !1617, metadata !DIExpression()), !dbg !1626
  %11 = load i8*, i8** %macro, align 8, !dbg !1651
  tail call void @free(i8* %11) #6, !dbg !1652
  tail call void @free(i8* %4) #6, !dbg !1653
  br label %for.cond, !dbg !1654, !llvm.loop !1655

for.end:                                          ; preds = %for.cond
  store %struct.macro_queue* null, %struct.macro_queue** @define_queue, align 8, !dbg !1657
  %12 = load %struct.macro_queue*, %struct.macro_queue** @undef_queue, align 8, !dbg !1658
  call void @llvm.dbg.value(metadata %struct.macro_queue* %12, metadata !1617, metadata !DIExpression()), !dbg !1626
  br label %for.cond7, !dbg !1659

for.cond7:                                        ; preds = %for.body9, %for.end
  %.in = phi %struct.macro_queue* [ %12, %for.end ], [ %17, %for.body9 ]
  %q.1 = phi %struct.macro_queue* [ %12, %for.end ], [ %17, %for.body9 ], !dbg !1660
  call void @llvm.dbg.value(metadata %struct.macro_queue* %q.1, metadata !1617, metadata !DIExpression()), !dbg !1626
  %tobool8 = icmp eq %struct.macro_queue* %q.1, null, !dbg !1661
  br i1 %tobool8, label %for.end16, label %for.body9, !dbg !1661

for.body9:                                        ; preds = %for.cond7
  %13 = bitcast %struct.macro_queue* %.in to i8*, !dbg !1660
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1662
  %macro11 = getelementptr inbounds %struct.macro_queue, %struct.macro_queue* %q.1, i64 0, i32 1, !dbg !1663
  %15 = load i8*, i8** %macro11, align 8, !dbg !1663
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %15) #6, !dbg !1664
  %16 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1665
  %inc13 = add nsw i32 %16, 1, !dbg !1665
  store i32 %inc13, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1665
  call void @llvm.dbg.value(metadata %struct.macro_queue* %q.1, metadata !1622, metadata !DIExpression()), !dbg !1666
  %next14 = getelementptr inbounds %struct.macro_queue, %struct.macro_queue* %q.1, i64 0, i32 0, !dbg !1667
  %17 = load %struct.macro_queue*, %struct.macro_queue** %next14, align 8, !dbg !1667
  call void @llvm.dbg.value(metadata %struct.macro_queue* %17, metadata !1617, metadata !DIExpression()), !dbg !1626
  %18 = load i8*, i8** %macro11, align 8, !dbg !1668
  tail call void @free(i8* %18) #6, !dbg !1669
  tail call void @free(i8* %13) #6, !dbg !1670
  br label %for.cond7, !dbg !1671, !llvm.loop !1672

for.end16:                                        ; preds = %for.cond7
  store %struct.macro_queue* null, %struct.macro_queue** @undef_queue, align 8, !dbg !1674
  ret void, !dbg !1675
}

; Function Attrs: nounwind uwtable
define internal void @cb_used_define(%struct.cpp_reader* %pfile, i32 %line, %struct.cpp_hashnode* %node) #4 !dbg !1676 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1678, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %line, metadata !1679, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !1680, metadata !DIExpression()), !dbg !1682
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 3, !dbg !1683
  %bf.load = load i16, i16* %flags, align 2, !dbg !1683
  %0 = and i16 %bf.load, 256, !dbg !1685
  %tobool = icmp eq i16 %0, 0, !dbg !1685
  br i1 %tobool, label %if.end, label %cleanup.cont, !dbg !1686

if.end:                                           ; preds = %entry
  %call = tail call i8* @xmalloc(i64 16) #6, !dbg !1687
  call void @llvm.dbg.value(metadata i8* %call, metadata !1681, metadata !DIExpression()), !dbg !1682
  %call1 = tail call i8* @cpp_macro_definition(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) #6, !dbg !1688
  %call2 = tail call i8* @xstrdup(i8* %call1) #6, !dbg !1689
  %macro = getelementptr inbounds i8, i8* %call, i64 8, !dbg !1690
  %1 = bitcast i8* %macro to i8**, !dbg !1690
  store i8* %call2, i8** %1, align 8, !dbg !1691
  %2 = load i64, i64* bitcast (%struct.macro_queue** @define_queue to i64*), align 8, !dbg !1692
  %3 = bitcast i8* %call to i64*, !dbg !1693
  store i64 %2, i64* %3, align 8, !dbg !1693
  store i8* %call, i8** bitcast (%struct.macro_queue** @define_queue to i8**), align 8, !dbg !1694
  br label %cleanup.cont, !dbg !1695

cleanup.cont:                                     ; preds = %entry, %if.end
  ret void, !dbg !1695
}

; Function Attrs: nounwind uwtable
define internal void @cb_used_undef(%struct.cpp_reader* %pfile, i32 %line, %struct.cpp_hashnode* %node) #4 !dbg !1696 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1698, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 %line, metadata !1699, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !1700, metadata !DIExpression()), !dbg !1702
  %call = tail call i8* @xmalloc(i64 16) #6, !dbg !1703
  call void @llvm.dbg.value(metadata i8* %call, metadata !1701, metadata !DIExpression()), !dbg !1702
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !1704
  %0 = load i8*, i8** %str, align 8, !dbg !1704
  %call1 = tail call i8* @xstrdup(i8* %0) #6, !dbg !1705
  %macro = getelementptr inbounds i8, i8* %call, i64 8, !dbg !1706
  %1 = bitcast i8* %macro to i8**, !dbg !1706
  store i8* %call1, i8** %1, align 8, !dbg !1707
  %2 = load i64, i64* bitcast (%struct.macro_queue** @undef_queue to i64*), align 8, !dbg !1708
  %3 = bitcast i8* %call to i64*, !dbg !1709
  store i64 %2, i64* %3, align 8, !dbg !1709
  store i8* %call, i8** bitcast (%struct.macro_queue** @undef_queue to i8**), align 8, !dbg !1710
  ret void, !dbg !1711
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_dir_change(%struct.cpp_reader* %pfile, i8* %dir) local_unnamed_addr #4 !dbg !1712 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1714, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i8* %dir, metadata !1715, metadata !DIExpression()), !dbg !1719
  %call = tail call i64 @strlen(i8* %dir) #6, !dbg !1720
  call void @llvm.dbg.value(metadata i64 %call, metadata !1716, metadata !DIExpression()), !dbg !1719
  %mul = shl i64 %call, 2, !dbg !1721
  %add = or i64 %mul, 1, !dbg !1721
  %0 = alloca i8, i64 %add, align 16, !dbg !1721
  call void @llvm.dbg.value(metadata i8* %0, metadata !1717, metadata !DIExpression()), !dbg !1719
  %conv = trunc i64 %call to i32, !dbg !1722
  %call1 = call i8* @cpp_quote_string(i8* nonnull %0, i8* %dir, i32 %conv) #6, !dbg !1723
  call void @llvm.dbg.value(metadata i8* %call1, metadata !1718, metadata !DIExpression()), !dbg !1719
  store i8 0, i8* %call1, align 1, !dbg !1724
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1725
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* nonnull %0) #6, !dbg !1726
  ret void, !dbg !1727
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i8* @cpp_quote_string(i8*, i8*, i32) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pp_file_change(%struct.line_map* %map) local_unnamed_addr #4 !dbg !1728 {
entry:
  call void @llvm.dbg.value(metadata %struct.line_map* %map, metadata !1732, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), metadata !1733, metadata !DIExpression()), !dbg !1741
  %0 = load i8, i8* @flag_no_line_commands, align 1, !dbg !1742
  %tobool = icmp eq i8 %0, 0, !dbg !1742
  %cmp = icmp ne %struct.line_map* %map, null, !dbg !1744
  %or.cond = and i1 %tobool, %cmp, !dbg !1745
  br i1 %or.cond, label %if.then1, label %cleanup.cont, !dbg !1745

if.then1:                                         ; preds = %entry
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %map, i64 0, i32 2, !dbg !1746
  %1 = load i32, i32* %start_location, align 4, !dbg !1746
  store i32 %1, i32* @input_location, align 4, !dbg !1747
  %2 = load i8, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 5), align 1, !dbg !1748
  %tobool2 = icmp eq i8 %2, 0, !dbg !1749
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !1750

if.then3:                                         ; preds = %if.then1
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** @parse_in, align 8, !dbg !1751
  %call = tail call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %3) #6, !dbg !1754
  %preprocessed = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call, i64 0, i32 32, !dbg !1755
  %4 = load i8, i8* %preprocessed, align 2, !dbg !1755
  %tobool4 = icmp eq i8 %4, 0, !dbg !1754
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !1756

if.then5:                                         ; preds = %if.then3
  %5 = load i32, i32* %start_location, align 4, !dbg !1757
  tail call fastcc void @print_line(i32 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1758
  br label %if.end7, !dbg !1758

if.end7:                                          ; preds = %if.then3, %if.then5
  store i8 0, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 5), align 1, !dbg !1759
  br label %cleanup.cont, !dbg !1760

if.else:                                          ; preds = %if.then1
  %reason = getelementptr inbounds %struct.line_map, %struct.line_map* %map, i64 0, i32 4, !dbg !1761
  %bf.load = load i8, i8* %reason, align 4, !dbg !1761
  %cmp8 = icmp eq i8 %bf.load, 0, !dbg !1762
  br i1 %cmp8, label %if.then9, label %if.end18, !dbg !1763

if.then9:                                         ; preds = %if.else
  %6 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !1764
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %6, i64 0, i32 0, !dbg !1764
  %7 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !1764
  %included_from = getelementptr inbounds %struct.line_map, %struct.line_map* %map, i64 0, i32 3, !dbg !1764
  %8 = load i32, i32* %included_from, align 8, !dbg !1764
  %idxprom = sext i32 %8 to i64, !dbg !1764
  %arrayidx = getelementptr inbounds %struct.line_map, %struct.line_map* %7, i64 %idxprom, !dbg !1764
  call void @llvm.dbg.value(metadata %struct.line_map* %arrayidx, metadata !1734, metadata !DIExpression()), !dbg !1765
  %arrayidx10 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx, i64 1, !dbg !1766
  %start_location11 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx10, i64 0, i32 2, !dbg !1766
  %9 = load i32, i32* %start_location11, align 4, !dbg !1766
  %start_location12 = getelementptr inbounds %struct.line_map, %struct.line_map* %7, i64 %idxprom, i32 2, !dbg !1766
  %10 = load i32, i32* %start_location12, align 4, !dbg !1766
  %11 = xor i32 %10, -1, !dbg !1766
  %sub13 = add i32 %9, %11, !dbg !1766
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %7, i64 %idxprom, i32 6, !dbg !1766
  %bf.load14 = load i8, i8* %column_bits, align 2, !dbg !1766
  %bf.cast15 = zext i8 %bf.load14 to i32, !dbg !1766
  %notmask = shl nsw i32 -1, %bf.cast15, !dbg !1766
  %and = and i32 %sub13, %notmask, !dbg !1766
  %add = add i32 %and, %10, !dbg !1766
  tail call void @maybe_print_line(i32 %add) #7, !dbg !1767
  %bf.load20.pre = load i8, i8* %reason, align 4, !dbg !1768
  br label %if.end18, !dbg !1770

if.end18:                                         ; preds = %if.then9, %if.else
  %bf.load26 = phi i8 [ %bf.load20.pre, %if.then9 ], [ %bf.load, %if.else ], !dbg !1768
  %cmp22 = icmp eq i8 %bf.load26, 0, !dbg !1771
  br i1 %cmp22, label %if.end31, label %if.else24, !dbg !1772

if.else24:                                        ; preds = %if.end18
  %cmp28 = icmp eq i8 %bf.load26, 1, !dbg !1773
  %spec.select = select i1 %cmp28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), !dbg !1775
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !1733, metadata !DIExpression()), !dbg !1741
  br label %if.end31

if.end31:                                         ; preds = %if.end18, %if.else24
  %flags.1 = phi i8* [ %spec.select, %if.else24 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %if.end18 ], !dbg !1776
  call void @llvm.dbg.value(metadata i8* %flags.1, metadata !1733, metadata !DIExpression()), !dbg !1741
  %12 = load i32, i32* %start_location, align 4, !dbg !1777
  tail call fastcc void @print_line(i32 %12, i8* %flags.1) #7, !dbg !1778
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %entry, %if.end7, %if.end31
  ret void, !dbg !1779
}

; Function Attrs: nounwind uwtable
define internal fastcc void @print_line(i32 %src_loc, i8* %special_flags) unnamed_addr #4 !dbg !1780 {
entry:
  call void @llvm.dbg.value(metadata i32 %src_loc, metadata !1784, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i8* %special_flags, metadata !1785, metadata !DIExpression()), !dbg !1792
  %0 = load i8, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 4), align 4, !dbg !1793
  %tobool = icmp eq i8 %0, 0, !dbg !1795
  br i1 %tobool, label %if.end, label %if.then, !dbg !1796

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1797
  %call = tail call i32 @putc(i32 10, %struct._IO_FILE* %1) #6, !dbg !1798
  br label %if.end, !dbg !1798

if.end:                                           ; preds = %entry, %if.then
  store i8 0, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 4), align 4, !dbg !1799
  %2 = load i8, i8* @flag_no_line_commands, align 1, !dbg !1800
  %tobool1 = icmp eq i8 %2, 0, !dbg !1800
  br i1 %tobool1, label %if.then2, label %if.end24, !dbg !1801

if.then2:                                         ; preds = %if.end
  %3 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !1802
  %call3 = tail call %struct.line_map* @linemap_lookup(%struct.line_maps* %3, i32 %src_loc) #6, !dbg !1803
  call void @llvm.dbg.value(metadata %struct.line_map* %call3, metadata !1786, metadata !DIExpression()), !dbg !1804
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %call3, i64 0, i32 0, !dbg !1805
  %4 = load i8*, i8** %to_file, align 8, !dbg !1805
  %call4 = tail call i64 @strlen(i8* %4) #6, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %call4, metadata !1789, metadata !DIExpression()), !dbg !1804
  %mul = shl i64 %call4, 2, !dbg !1807
  %add = or i64 %mul, 1, !dbg !1807
  %5 = alloca i8, i64 %add, align 16, !dbg !1807
  call void @llvm.dbg.value(metadata i8* %5, metadata !1790, metadata !DIExpression()), !dbg !1804
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %call3, i64 0, i32 2, !dbg !1808
  %6 = load i32, i32* %start_location, align 4, !dbg !1808
  %sub = sub i32 %src_loc, %6, !dbg !1808
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %call3, i64 0, i32 6, !dbg !1808
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !1808
  %bf.cast = zext i8 %bf.load to i32, !dbg !1808
  %shr = lshr i32 %sub, %bf.cast, !dbg !1808
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %call3, i64 0, i32 1, !dbg !1808
  %7 = load i32, i32* %to_line, align 8, !dbg !1808
  %add5 = add i32 %shr, %7, !dbg !1808
  store i32 %add5, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1809
  %8 = load i8*, i8** %to_file, align 8, !dbg !1810
  %conv = trunc i64 %call4 to i32, !dbg !1811
  %call7 = call i8* @cpp_quote_string(i8* nonnull %5, i8* %8, i32 %conv) #6, !dbg !1812
  call void @llvm.dbg.value(metadata i8* %call7, metadata !1791, metadata !DIExpression()), !dbg !1804
  store i8 0, i8* %call7, align 1, !dbg !1813
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1814
  %10 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1815
  %cmp = icmp eq i32 %10, 0, !dbg !1816
  %cond = select i1 %cmp, i32 1, i32 %10, !dbg !1817
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %cond, i8* nonnull %5, i8* %special_flags) #6, !dbg !1818
  %sysp = getelementptr inbounds %struct.line_map, %struct.line_map* %call3, i64 0, i32 5, !dbg !1819
  %11 = load i8, i8* %sysp, align 1, !dbg !1819
  %cmp11 = icmp eq i8 %11, 2, !dbg !1821
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !1822

if.then13:                                        ; preds = %if.then2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1823
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %12) #6, !dbg !1824
  br label %if.end22, !dbg !1824

if.else:                                          ; preds = %if.then2
  %cmp17 = icmp eq i8 %11, 1, !dbg !1825
  br i1 %cmp17, label %if.then19, label %if.end22, !dbg !1827

if.then19:                                        ; preds = %if.else
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1828
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), %struct._IO_FILE* %13) #6, !dbg !1829
  br label %if.end22, !dbg !1829

if.end22:                                         ; preds = %if.else, %if.then19, %if.then13
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1830
  %call23 = call i32 @putc(i32 10, %struct._IO_FILE* %14) #6, !dbg !1831
  br label %if.end24, !dbg !1832

if.end24:                                         ; preds = %if.end, %if.end22
  ret void, !dbg !1833
}

; Function Attrs: nounwind uwtable
define internal void @maybe_print_line(i32 %src_loc) #4 !dbg !1834 {
entry:
  call void @llvm.dbg.value(metadata i32 %src_loc, metadata !1836, metadata !DIExpression()), !dbg !1839
  %0 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !1840
  %call = tail call %struct.line_map* @linemap_lookup(%struct.line_maps* %0, i32 %src_loc) #6, !dbg !1841
  call void @llvm.dbg.value(metadata %struct.line_map* %call, metadata !1837, metadata !DIExpression()), !dbg !1839
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %call, i64 0, i32 2, !dbg !1842
  %1 = load i32, i32* %start_location, align 4, !dbg !1842
  %sub = sub i32 %src_loc, %1, !dbg !1842
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %call, i64 0, i32 6, !dbg !1842
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !1842
  %bf.cast = zext i8 %bf.load to i32, !dbg !1842
  %shr = lshr i32 %sub, %bf.cast, !dbg !1842
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %call, i64 0, i32 1, !dbg !1842
  %2 = load i32, i32* %to_line, align 8, !dbg !1842
  %add = add i32 %shr, %2, !dbg !1842
  call void @llvm.dbg.value(metadata i32 %add, metadata !1838, metadata !DIExpression()), !dbg !1839
  %3 = load i8, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 4), align 4, !dbg !1843
  %tobool = icmp eq i8 %3, 0, !dbg !1845
  br i1 %tobool, label %entry.if.end_crit_edge, label %if.then, !dbg !1846

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1847
  br label %if.end, !dbg !1846

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1849
  %call1 = tail call i32 @putc(i32 10, %struct._IO_FILE* %4) #6, !dbg !1851
  %5 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1852
  %inc = add nsw i32 %5, 1, !dbg !1852
  store i32 %inc, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1852
  store i8 0, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 4), align 4, !dbg !1853
  br label %if.end, !dbg !1854

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %6 = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %inc, %if.then ], !dbg !1847
  %cmp = icmp slt i32 %add, %6, !dbg !1855
  br i1 %cmp, label %if.else, label %land.lhs.true, !dbg !1856

land.lhs.true:                                    ; preds = %if.end
  %add2 = add nsw i32 %6, 8, !dbg !1857
  %cmp3 = icmp slt i32 %add, %add2, !dbg !1858
  br i1 %cmp3, label %while.cond.preheader, label %if.else, !dbg !1859

while.cond.preheader:                             ; preds = %land.lhs.true
  br label %while.cond, !dbg !1860

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %7 = phi i32 [ %6, %while.cond.preheader ], [ %inc7, %while.body ], !dbg !1862
  %cmp5 = icmp sgt i32 %add, %7, !dbg !1863
  br i1 %cmp5, label %while.body, label %if.end8.loopexit, !dbg !1860

while.body:                                       ; preds = %while.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1864
  %call6 = tail call i32 @putc(i32 10, %struct._IO_FILE* %8) #6, !dbg !1866
  %9 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1867
  %inc7 = add nsw i32 %9, 1, !dbg !1867
  store i32 %inc7, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1867
  br label %while.cond, !dbg !1860, !llvm.loop !1868

if.else:                                          ; preds = %if.end, %land.lhs.true
  tail call fastcc void @print_line(i32 %src_loc, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1870
  br label %if.end8

if.end8.loopexit:                                 ; preds = %while.cond
  br label %if.end8, !dbg !1871

if.end8:                                          ; preds = %if.end8.loopexit, %if.else
  ret void, !dbg !1871
}

declare dso_local %struct.cpp_token* @cpp_get_token_with_location(%struct.cpp_reader*, i32*) local_unnamed_addr #1

declare dso_local %struct.line_map* @linemap_lookup(%struct.line_maps*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @do_line_change(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i32 %src_loc, i32 %parsing_args) unnamed_addr #4 !dbg !1872 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1876, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !1877, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i32 %src_loc, metadata !1878, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i32 %parsing_args, metadata !1879, metadata !DIExpression()), !dbg !1884
  %0 = load %struct.macro_queue*, %struct.macro_queue** @define_queue, align 8, !dbg !1885
  %tobool = icmp ne %struct.macro_queue* %0, null, !dbg !1885
  %1 = load %struct.macro_queue*, %struct.macro_queue** @undef_queue, align 8, !dbg !1887
  %tobool1 = icmp ne %struct.macro_queue* %1, null, !dbg !1887
  %or.cond = or i1 %tobool, %tobool1, !dbg !1888
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1888

if.then:                                          ; preds = %entry
  tail call void @dump_queued_macros(%struct.cpp_reader* %pfile) #7, !dbg !1889
  br label %if.end, !dbg !1889

if.end:                                           ; preds = %entry, %if.then
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 1, !dbg !1890
  %bf.load = load i8, i8* %type, align 4, !dbg !1890
  %cmp = icmp eq i8 %bf.load, 22, !dbg !1892
  %tobool3 = icmp ne i32 %parsing_args, 0, !dbg !1893
  %or.cond1 = or i1 %cmp, %tobool3, !dbg !1894
  br i1 %or.cond1, label %if.end14, label %if.end5, !dbg !1894

if.end5:                                          ; preds = %if.end
  tail call void @maybe_print_line(i32 %src_loc) #7, !dbg !1895
  store %struct.cpp_token* null, %struct.cpp_token** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 1), align 8, !dbg !1896
  store %struct.cpp_token* null, %struct.cpp_token** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 2), align 8, !dbg !1897
  %traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !1898
  %2 = load i8, i8* %traditional, align 2, !dbg !1898
  %tobool6 = icmp eq i8 %2, 0, !dbg !1898
  br i1 %tobool6, label %if.then7, label %if.end14, !dbg !1899

if.then7:                                         ; preds = %if.end5
  %3 = load %struct.line_maps*, %struct.line_maps** @line_table, align 8, !dbg !1900
  %call = tail call %struct.line_map* @linemap_lookup(%struct.line_maps* %3, i32 %src_loc) #6, !dbg !1901
  call void @llvm.dbg.value(metadata %struct.line_map* %call, metadata !1880, metadata !DIExpression()), !dbg !1902
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %call, i64 0, i32 2, !dbg !1903
  %4 = load i32, i32* %start_location, align 4, !dbg !1903
  %sub = sub i32 %src_loc, %4, !dbg !1903
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %call, i64 0, i32 6, !dbg !1903
  %bf.load8 = load i8, i8* %column_bits, align 2, !dbg !1903
  %bf.cast9 = zext i8 %bf.load8 to i32, !dbg !1903
  %notmask = shl nsw i32 -1, %bf.cast9, !dbg !1903
  %sub10 = xor i32 %notmask, -1, !dbg !1903
  %and = and i32 %sub, %sub10, !dbg !1903
  %sub11 = add i32 %and, -2, !dbg !1904
  call void @llvm.dbg.value(metadata i32 %sub11, metadata !1883, metadata !DIExpression()), !dbg !1902
  store i8 1, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 4), align 4, !dbg !1905
  br label %while.cond, !dbg !1906

while.cond:                                       ; preds = %while.body, %if.then7
  %spaces.0 = phi i32 [ %sub11, %if.then7 ], [ %dec, %while.body ], !dbg !1902
  call void @llvm.dbg.value(metadata i32 %spaces.0, metadata !1883, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i32 %spaces.0, metadata !1883, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1902
  %cmp12 = icmp sgt i32 %spaces.0, 0, !dbg !1907
  br i1 %cmp12, label %while.body, label %if.end14.loopexit, !dbg !1906

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %spaces.0, -1, !dbg !1908
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1883, metadata !DIExpression()), !dbg !1902
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1909
  %call13 = tail call i32 @putc(i32 32, %struct._IO_FILE* %5) #6, !dbg !1910
  br label %while.cond, !dbg !1906, !llvm.loop !1911

if.end14.loopexit:                                ; preds = %while.cond
  br label %if.end14, !dbg !1913

if.end14:                                         ; preds = %if.end14.loopexit, %if.end5, %if.end
  ret void, !dbg !1913
}

declare dso_local i32 @cpp_avoid_paste(%struct.cpp_reader*, %struct.cpp_token*, %struct.cpp_token*) local_unnamed_addr #1

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @c_pp_lookup_pragma(i32, i8**, i8**) local_unnamed_addr #1

declare dso_local void @cpp_output_token(%struct.cpp_token*, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @account_for_newlines(i8* %str, i64 %len) unnamed_addr #4 !dbg !1914 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !1918, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 %len, metadata !1919, metadata !DIExpression()), !dbg !1920
  br label %while.cond, !dbg !1921

while.cond:                                       ; preds = %if.end, %entry
  %len.addr.0 = phi i64 [ %len, %entry ], [ %dec, %if.end ]
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %if.end ]
  call void @llvm.dbg.value(metadata i8* %str.addr.0, metadata !1918, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 %len.addr.0, metadata !1919, metadata !DIExpression()), !dbg !1920
  %dec = add i64 %len.addr.0, -1, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1919, metadata !DIExpression()), !dbg !1920
  %tobool = icmp eq i64 %len.addr.0, 0, !dbg !1921
  br i1 %tobool, label %while.end, label %while.body, !dbg !1921

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %str.addr.0, i64 1, !dbg !1923
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1918, metadata !DIExpression()), !dbg !1920
  %0 = load i8, i8* %str.addr.0, align 1, !dbg !1925
  %cmp = icmp eq i8 %0, 10, !dbg !1926
  br i1 %cmp, label %if.then, label %if.end, !dbg !1927

if.then:                                          ; preds = %while.body
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1928
  %inc = add nsw i32 %1, 1, !dbg !1928
  store i32 %inc, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1928
  br label %if.end, !dbg !1929

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !dbg !1921, !llvm.loop !1930

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1932
}

; Function Attrs: nounwind uwtable
define internal void @print_lines_directives_only(i32 %lines, i8* %buf, i64 %size) #4 !dbg !1933 {
entry:
  call void @llvm.dbg.value(metadata i32 %lines, metadata !1935, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i8* %buf, metadata !1936, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %size, metadata !1937, metadata !DIExpression()), !dbg !1938
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1939
  %add = add nsw i32 %0, %lines, !dbg !1939
  store i32 %add, i32* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 3), align 8, !dbg !1939
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.anon.3, %struct.anon.3* @print, i64 0, i32 0), align 8, !dbg !1940
  %call = tail call i64 @fwrite(i8* %buf, i64 1, i64 %size, %struct._IO_FILE* %1) #6, !dbg !1941
  ret void, !dbg !1942
}

declare dso_local void @_cpp_preprocess_dir_only(%struct.cpp_reader*, %struct._cpp_dir_only_callbacks*) local_unnamed_addr #1

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local zeroext i8 @_cpp_read_logical_line_trad(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local i8* @cpp_macro_definition(%struct.cpp_reader*, %struct.cpp_hashnode*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i8* @xstrdup(i8*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local void @cpp_output_line(%struct.cpp_reader*, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @c_common_read_pch(%struct.cpp_reader*, i8*, i32, i8*) local_unnamed_addr #1

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
!llvm.module.flags = !{!214, !215, !216}
!llvm.ident = !{!217}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "print", scope: !2, file: !3, line: 44, type: !66, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !61, nameTableKind: None)
!3 = !DIFile(filename: "c-ppoutput.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !19, !31, !37}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_builtin_type", file: !6, line: 593, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./cpplib.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "BT_SPECLINE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "BT_DATE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "BT_FILE", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "BT_BASE_FILE", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "BT_INCLUDE_LEVEL", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "BT_TIME", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "BT_STDC", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "BT_PRAGMA", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "BT_TIMESTAMP", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "BT_COUNTER", value: 9, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_lang", file: !6, line: 158, baseType: !7, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!21 = !DIEnumerator(name: "CLK_GNUC89", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "CLK_GNUC99", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "CLK_STDC89", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "CLK_STDC94", value: 3, isUnsigned: true)
!25 = !DIEnumerator(name: "CLK_STDC99", value: 4, isUnsigned: true)
!26 = !DIEnumerator(name: "CLK_GNUCXX", value: 5, isUnsigned: true)
!27 = !DIEnumerator(name: "CLK_CXX98", value: 6, isUnsigned: true)
!28 = !DIEnumerator(name: "CLK_GNUCXX0X", value: 7, isUnsigned: true)
!29 = !DIEnumerator(name: "CLK_CXX0X", value: 8, isUnsigned: true)
!30 = !DIEnumerator(name: "CLK_ASM", value: 9, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_normalize_level", file: !6, line: 265, baseType: !7, size: 32, elements: !32)
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "normalized_KC", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "normalized_C", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "normalized_identifier_C", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "normalized_none", value: 3, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_deps_style", file: !6, line: 262, baseType: !7, size: 32, elements: !38)
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "DEPS_NONE", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "DEPS_USER", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "DEPS_SYSTEM", value: 2, isUnsigned: true)
!42 = !{!43, !44, !45, !46, !49, !50, !52, !54}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "macro_queue", file: !3, line: 54, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macro_queue", file: !3, line: 48, size: 128, elements: !57)
!57 = !{!58, !60}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !56, file: !3, line: 50, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !56, file: !3, line: 51, baseType: !47, size: 64, offset: 64)
!61 = !{!0, !62, !64}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "define_queue", scope: !2, file: !3, line: 55, type: !54, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "undef_queue", scope: !2, file: !3, line: 55, type: !54, isLocal: true, isDefinition: true)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 36, size: 256, elements: !67)
!67 = !{!68, !128, !210, !211, !212, !213}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "outf", scope: !66, file: !3, line: 38, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !71, line: 7, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !73, line: 49, size: 1728, elements: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !90, !92, !93, !94, !98, !100, !102, !106, !109, !111, !114, !117, !118, !119, !123, !124}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !72, file: !73, line: 51, baseType: !45, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !72, file: !73, line: 54, baseType: !47, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !72, file: !73, line: 55, baseType: !47, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !72, file: !73, line: 56, baseType: !47, size: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !72, file: !73, line: 57, baseType: !47, size: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !72, file: !73, line: 58, baseType: !47, size: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !72, file: !73, line: 59, baseType: !47, size: 64, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !72, file: !73, line: 60, baseType: !47, size: 64, offset: 448)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !72, file: !73, line: 61, baseType: !47, size: 64, offset: 512)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !72, file: !73, line: 64, baseType: !47, size: 64, offset: 576)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !72, file: !73, line: 65, baseType: !47, size: 64, offset: 640)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !72, file: !73, line: 66, baseType: !47, size: 64, offset: 704)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !72, file: !73, line: 68, baseType: !88, size: 64, offset: 768)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !73, line: 36, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !72, file: !73, line: 70, baseType: !91, size: 64, offset: 832)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !72, file: !73, line: 72, baseType: !45, size: 32, offset: 896)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !72, file: !73, line: 73, baseType: !45, size: 32, offset: 928)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !72, file: !73, line: 74, baseType: !95, size: 64, offset: 960)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !96, line: 152, baseType: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!97 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !72, file: !73, line: 77, baseType: !99, size: 16, offset: 1024)
!99 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !72, file: !73, line: 78, baseType: !101, size: 8, offset: 1040)
!101 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !72, file: !73, line: 79, baseType: !103, size: 8, offset: 1048)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 1)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !72, file: !73, line: 81, baseType: !107, size: 64, offset: 1088)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !73, line: 43, baseType: null)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !72, file: !73, line: 89, baseType: !110, size: 64, offset: 1152)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !96, line: 153, baseType: !97)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !72, file: !73, line: 91, baseType: !112, size: 64, offset: 1216)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !73, line: 37, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !72, file: !73, line: 92, baseType: !115, size: 64, offset: 1280)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !73, line: 38, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !72, file: !73, line: 93, baseType: !91, size: 64, offset: 1344)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !72, file: !73, line: 94, baseType: !49, size: 64, offset: 1408)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !72, file: !73, line: 95, baseType: !120, size: 64, offset: 1472)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !121, line: 46, baseType: !122)
!121 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!122 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !72, file: !73, line: 96, baseType: !45, size: 32, offset: 1536)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !72, file: !73, line: 98, baseType: !125, size: 160, offset: 1568)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 160, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 20)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !66, file: !3, line: 39, baseType: !129, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !6, line: 34, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !6, line: 212, size: 192, elements: !133)
!133 = !{!134, !137, !138, !139}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !132, file: !6, line: 213, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !136, line: 44, baseType: !7)
!136 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !6, line: 214, baseType: !7, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !6, line: 215, baseType: !99, size: 16, offset: 48)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !132, file: !6, line: 237, baseType: !140, size: 128, offset: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_token_u", file: !6, line: 217, size: 128, elements: !141)
!141 = !{!142, !198, !199, !204, !208, !209}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !140, file: !6, line: 220, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_identifier", file: !6, line: 201, size: 64, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !143, file: !6, line: 207, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_hashnode", file: !6, line: 36, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_hashnode", file: !6, line: 644, size: 256, elements: !149)
!149 = !{!150, !157, !158, !159, !160, !161, !162}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !148, file: !6, line: 645, baseType: !151, size: 128)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !152, line: 31, size: 128, elements: !153)
!152 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!153 = !{!154, !155, !156}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !151, file: !152, line: 32, baseType: !52, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !151, file: !152, line: 33, baseType: !7, size: 32, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !151, file: !152, line: 34, baseType: !7, size: 32, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !148, file: !6, line: 646, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !148, file: !6, line: 647, baseType: !7, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !148, file: !6, line: 650, baseType: !44, size: 8, offset: 136)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !148, file: !6, line: 651, baseType: !7, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !6, line: 652, baseType: !7, size: 10, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !148, file: !6, line: 654, baseType: !163, size: 64, offset: 192)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_cpp_hashnode_value", file: !6, line: 633, size: 64, elements: !164)
!164 = !{!165, !188, !196, !197}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !163, file: !6, line: 635, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_macro", file: !6, line: 37, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro", file: !169, line: 36, size: 256, elements: !170)
!169 = !DIFile(filename: "./cpp-id-data.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!170 = !{!171, !173, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !168, file: !169, line: 42, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !168, file: !169, line: 51, baseType: !174, size: 64, offset: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_macro_u", file: !169, line: 47, size: 64, elements: !175)
!175 = !{!176, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tokens", scope: !174, file: !169, line: 49, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !174, file: !169, line: 50, baseType: !52, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !168, file: !169, line: 54, baseType: !135, size: 32, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !168, file: !169, line: 57, baseType: !7, size: 32, offset: 160)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "paramc", scope: !168, file: !169, line: 60, baseType: !99, size: 16, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "fun_like", scope: !168, file: !169, line: 63, baseType: !7, size: 1, offset: 208, flags: DIFlagBitField, extraData: i64 208)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "variadic", scope: !168, file: !169, line: 66, baseType: !7, size: 1, offset: 209, flags: DIFlagBitField, extraData: i64 208)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "syshdr", scope: !168, file: !169, line: 69, baseType: !7, size: 1, offset: 210, flags: DIFlagBitField, extraData: i64 208)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !168, file: !169, line: 72, baseType: !7, size: 1, offset: 211, flags: DIFlagBitField, extraData: i64 208)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !168, file: !169, line: 75, baseType: !7, size: 1, offset: 212, flags: DIFlagBitField, extraData: i64 208)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "extra_tokens", scope: !168, file: !169, line: 80, baseType: !7, size: 1, offset: 213, flags: DIFlagBitField, extraData: i64 208)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "answers", scope: !163, file: !6, line: 637, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !169, line: 28, size: 320, elements: !191)
!191 = !{!192, !193, !194}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !169, line: 29, baseType: !189, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !190, file: !169, line: 30, baseType: !7, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !190, file: !169, line: 31, baseType: !195, size: 192, offset: 128)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 192, elements: !104)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !163, file: !6, line: 639, baseType: !5, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !163, file: !6, line: 641, baseType: !99, size: 16)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !140, file: !6, line: 223, baseType: !177, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !140, file: !6, line: 226, baseType: !200, size: 128)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !6, line: 162, size: 128, elements: !201)
!201 = !{!202, !203}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !200, file: !6, line: 163, baseType: !7, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !200, file: !6, line: 164, baseType: !52, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !140, file: !6, line: 229, baseType: !205, size: 32)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !6, line: 195, size: 32, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !205, file: !6, line: 197, baseType: !7, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !140, file: !6, line: 233, baseType: !7, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !140, file: !6, line: 236, baseType: !7, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !66, file: !3, line: 40, baseType: !129, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "src_line", scope: !66, file: !3, line: 41, baseType: !45, size: 32, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !66, file: !3, line: 42, baseType: !44, size: 8, offset: 224)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "first_time", scope: !66, file: !3, line: 43, baseType: !44, size: 8, offset: 232)
!214 = !{i32 2, !"Dwarf Version", i32 4}
!215 = !{i32 2, !"Debug Info Version", i32 3}
!216 = !{i32 1, !"wchar_size", i32 4}
!217 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!218 = distinct !DISubprogram(name: "vprintf", scope: !219, file: !219, line: 39, type: !220, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !230)
!219 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!220 = !DISubroutineType(types: !221)
!221 = !{!45, !222, !223}
!222 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !225)
!225 = !{!226, !227, !228, !229}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !224, file: !3, baseType: !7, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !224, file: !3, baseType: !7, size: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !224, file: !3, baseType: !49, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !224, file: !3, baseType: !49, size: 64, offset: 128)
!230 = !{!231, !232}
!231 = !DILocalVariable(name: "__fmt", arg: 1, scope: !218, file: !219, line: 39, type: !222)
!232 = !DILocalVariable(name: "__arg", arg: 2, scope: !218, file: !219, line: 39, type: !223)
!233 = !DILocation(line: 0, scope: !218)
!234 = !DILocation(line: 41, column: 20, scope: !218)
!235 = !DILocation(line: 41, column: 10, scope: !218)
!236 = !DILocation(line: 41, column: 3, scope: !218)
!237 = distinct !DISubprogram(name: "getchar", scope: !219, file: !219, line: 47, type: !238, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!45}
!240 = !{}
!241 = !DILocation(line: 49, column: 16, scope: !237)
!242 = !DILocation(line: 49, column: 10, scope: !237)
!243 = !DILocation(line: 49, column: 3, scope: !237)
!244 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !219, file: !219, line: 56, type: !245, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{!45, !69}
!247 = !{!248}
!248 = !DILocalVariable(name: "__fp", arg: 1, scope: !244, file: !219, line: 56, type: !69)
!249 = !DILocation(line: 0, scope: !244)
!250 = !DILocation(line: 58, column: 10, scope: !244)
!251 = !DILocation(line: 58, column: 3, scope: !244)
!252 = distinct !DISubprogram(name: "getc_unlocked", scope: !219, file: !219, line: 66, type: !245, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !253)
!253 = !{!254}
!254 = !DILocalVariable(name: "__fp", arg: 1, scope: !252, file: !219, line: 66, type: !69)
!255 = !DILocation(line: 0, scope: !252)
!256 = !DILocation(line: 68, column: 10, scope: !252)
!257 = !DILocation(line: 68, column: 3, scope: !252)
!258 = distinct !DISubprogram(name: "getchar_unlocked", scope: !219, file: !219, line: 73, type: !238, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !240)
!259 = !DILocation(line: 75, column: 10, scope: !258)
!260 = !DILocation(line: 75, column: 3, scope: !258)
!261 = distinct !DISubprogram(name: "putchar", scope: !219, file: !219, line: 82, type: !262, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!262 = !DISubroutineType(types: !263)
!263 = !{!45, !45}
!264 = !{!265}
!265 = !DILocalVariable(name: "__c", arg: 1, scope: !261, file: !219, line: 82, type: !45)
!266 = !DILocation(line: 0, scope: !261)
!267 = !DILocation(line: 84, column: 21, scope: !261)
!268 = !DILocation(line: 84, column: 10, scope: !261)
!269 = !DILocation(line: 84, column: 3, scope: !261)
!270 = distinct !DISubprogram(name: "fputc_unlocked", scope: !219, file: !219, line: 91, type: !271, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !273)
!271 = !DISubroutineType(types: !272)
!272 = !{!45, !45, !69}
!273 = !{!274, !275}
!274 = !DILocalVariable(name: "__c", arg: 1, scope: !270, file: !219, line: 91, type: !45)
!275 = !DILocalVariable(name: "__stream", arg: 2, scope: !270, file: !219, line: 91, type: !69)
!276 = !DILocation(line: 0, scope: !270)
!277 = !DILocation(line: 93, column: 10, scope: !270)
!278 = !DILocation(line: 93, column: 3, scope: !270)
!279 = distinct !DISubprogram(name: "putc_unlocked", scope: !219, file: !219, line: 101, type: !271, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !280)
!280 = !{!281, !282}
!281 = !DILocalVariable(name: "__c", arg: 1, scope: !279, file: !219, line: 101, type: !45)
!282 = !DILocalVariable(name: "__stream", arg: 2, scope: !279, file: !219, line: 101, type: !69)
!283 = !DILocation(line: 0, scope: !279)
!284 = !DILocation(line: 103, column: 10, scope: !279)
!285 = !DILocation(line: 103, column: 3, scope: !279)
!286 = distinct !DISubprogram(name: "putchar_unlocked", scope: !219, file: !219, line: 108, type: !262, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!287 = !{!288}
!288 = !DILocalVariable(name: "__c", arg: 1, scope: !286, file: !219, line: 108, type: !45)
!289 = !DILocation(line: 0, scope: !286)
!290 = !DILocation(line: 110, column: 10, scope: !286)
!291 = !DILocation(line: 110, column: 3, scope: !286)
!292 = distinct !DISubprogram(name: "getline", scope: !219, file: !219, line: 118, type: !293, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !297)
!293 = !DISubroutineType(types: !294)
!294 = !{!295, !46, !296, !69}
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !96, line: 193, baseType: !97)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!297 = !{!298, !299, !300}
!298 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !292, file: !219, line: 118, type: !46)
!299 = !DILocalVariable(name: "__n", arg: 2, scope: !292, file: !219, line: 118, type: !296)
!300 = !DILocalVariable(name: "__stream", arg: 3, scope: !292, file: !219, line: 118, type: !69)
!301 = !DILocation(line: 0, scope: !292)
!302 = !DILocation(line: 120, column: 10, scope: !292)
!303 = !DILocation(line: 120, column: 3, scope: !292)
!304 = distinct !DISubprogram(name: "feof_unlocked", scope: !219, file: !219, line: 128, type: !245, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !305)
!305 = !{!306}
!306 = !DILocalVariable(name: "__stream", arg: 1, scope: !304, file: !219, line: 128, type: !69)
!307 = !DILocation(line: 0, scope: !304)
!308 = !DILocation(line: 130, column: 10, scope: !304)
!309 = !DILocation(line: 130, column: 3, scope: !304)
!310 = distinct !DISubprogram(name: "ferror_unlocked", scope: !219, file: !219, line: 135, type: !245, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !311)
!311 = !{!312}
!312 = !DILocalVariable(name: "__stream", arg: 1, scope: !310, file: !219, line: 135, type: !69)
!313 = !DILocation(line: 0, scope: !310)
!314 = !DILocation(line: 137, column: 10, scope: !310)
!315 = !DILocation(line: 137, column: 3, scope: !310)
!316 = distinct !DISubprogram(name: "tolower", scope: !317, file: !317, line: 207, type: !262, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !318)
!317 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!318 = !{!319}
!319 = !DILocalVariable(name: "__c", arg: 1, scope: !316, file: !317, line: 207, type: !45)
!320 = !DILocation(line: 0, scope: !316)
!321 = !DILocation(line: 209, column: 22, scope: !316)
!322 = !DILocation(line: 209, column: 39, scope: !316)
!323 = !DILocation(line: 209, column: 38, scope: !316)
!324 = !DILocation(line: 209, column: 37, scope: !316)
!325 = !DILocation(line: 209, column: 10, scope: !316)
!326 = !DILocation(line: 209, column: 3, scope: !316)
!327 = distinct !DISubprogram(name: "toupper", scope: !317, file: !317, line: 213, type: !262, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !328)
!328 = !{!329}
!329 = !DILocalVariable(name: "__c", arg: 1, scope: !327, file: !317, line: 213, type: !45)
!330 = !DILocation(line: 0, scope: !327)
!331 = !DILocation(line: 215, column: 22, scope: !327)
!332 = !DILocation(line: 215, column: 39, scope: !327)
!333 = !DILocation(line: 215, column: 38, scope: !327)
!334 = !DILocation(line: 215, column: 37, scope: !327)
!335 = !DILocation(line: 215, column: 10, scope: !327)
!336 = !DILocation(line: 215, column: 3, scope: !327)
!337 = distinct !DISubprogram(name: "atoi", scope: !338, file: !338, line: 361, type: !339, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !341)
!338 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!339 = !DISubroutineType(types: !340)
!340 = !{!45, !50}
!341 = !{!342}
!342 = !DILocalVariable(name: "__nptr", arg: 1, scope: !337, file: !338, line: 361, type: !50)
!343 = !DILocation(line: 0, scope: !337)
!344 = !DILocation(line: 363, column: 16, scope: !337)
!345 = !DILocation(line: 363, column: 10, scope: !337)
!346 = !DILocation(line: 363, column: 3, scope: !337)
!347 = distinct !DISubprogram(name: "atol", scope: !338, file: !338, line: 366, type: !348, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{!97, !50}
!350 = !{!351}
!351 = !DILocalVariable(name: "__nptr", arg: 1, scope: !347, file: !338, line: 366, type: !50)
!352 = !DILocation(line: 0, scope: !347)
!353 = !DILocation(line: 368, column: 10, scope: !347)
!354 = !DILocation(line: 368, column: 3, scope: !347)
!355 = distinct !DISubprogram(name: "atoll", scope: !338, file: !338, line: 373, type: !356, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !359)
!356 = !DISubroutineType(types: !357)
!357 = !{!358, !50}
!358 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!359 = !{!360}
!360 = !DILocalVariable(name: "__nptr", arg: 1, scope: !355, file: !338, line: 373, type: !50)
!361 = !DILocation(line: 0, scope: !355)
!362 = !DILocation(line: 375, column: 10, scope: !355)
!363 = !DILocation(line: 375, column: 3, scope: !355)
!364 = distinct !DISubprogram(name: "bsearch", scope: !365, file: !365, line: 20, type: !366, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !374)
!365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!366 = !DISubroutineType(types: !367)
!367 = !{!49, !368, !368, !120, !120, !370}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !338, line: 808, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!45, !368, !368}
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383, !384}
!375 = !DILocalVariable(name: "__key", arg: 1, scope: !364, file: !365, line: 20, type: !368)
!376 = !DILocalVariable(name: "__base", arg: 2, scope: !364, file: !365, line: 20, type: !368)
!377 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !364, file: !365, line: 20, type: !120)
!378 = !DILocalVariable(name: "__size", arg: 4, scope: !364, file: !365, line: 20, type: !120)
!379 = !DILocalVariable(name: "__compar", arg: 5, scope: !364, file: !365, line: 21, type: !370)
!380 = !DILocalVariable(name: "__l", scope: !364, file: !365, line: 23, type: !120)
!381 = !DILocalVariable(name: "__u", scope: !364, file: !365, line: 23, type: !120)
!382 = !DILocalVariable(name: "__idx", scope: !364, file: !365, line: 23, type: !120)
!383 = !DILocalVariable(name: "__p", scope: !364, file: !365, line: 24, type: !368)
!384 = !DILocalVariable(name: "__comparison", scope: !364, file: !365, line: 25, type: !45)
!385 = !DILocation(line: 0, scope: !364)
!386 = !DILocation(line: 29, column: 3, scope: !364)
!387 = !DILocation(line: 27, column: 7, scope: !364)
!388 = !DILocation(line: 29, column: 14, scope: !364)
!389 = !DILocation(line: 31, column: 20, scope: !390)
!390 = distinct !DILexicalBlock(scope: !364, file: !365, line: 30, column: 5)
!391 = !DILocation(line: 31, column: 27, scope: !390)
!392 = !DILocation(line: 32, column: 56, scope: !390)
!393 = !DILocation(line: 32, column: 47, scope: !390)
!394 = !DILocation(line: 33, column: 22, scope: !390)
!395 = !DILocation(line: 34, column: 24, scope: !396)
!396 = distinct !DILexicalBlock(scope: !390, file: !365, line: 34, column: 11)
!397 = !DILocation(line: 34, column: 11, scope: !390)
!398 = !DILocation(line: 36, column: 29, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !365, line: 36, column: 16)
!400 = !DILocation(line: 36, column: 16, scope: !396)
!401 = !DILocation(line: 37, column: 14, scope: !399)
!402 = distinct !{!402, !386, !403}
!403 = !DILocation(line: 40, column: 5, scope: !364)
!404 = !DILocation(line: 43, column: 1, scope: !364)
!405 = distinct !DISubprogram(name: "atof", scope: !406, file: !406, line: 25, type: !407, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !410)
!406 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!407 = !DISubroutineType(types: !408)
!408 = !{!409, !50}
!409 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!410 = !{!411}
!411 = !DILocalVariable(name: "__nptr", arg: 1, scope: !405, file: !406, line: 25, type: !50)
!412 = !DILocation(line: 0, scope: !405)
!413 = !DILocation(line: 27, column: 10, scope: !405)
!414 = !DILocation(line: 27, column: 3, scope: !405)
!415 = distinct !DISubprogram(name: "strtoimax", scope: !416, file: !416, line: 324, type: !417, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !423)
!416 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!417 = !DISubroutineType(types: !418)
!418 = !{!419, !222, !422, !45}
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !420, line: 101, baseType: !421)
!420 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !96, line: 72, baseType: !97)
!422 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!423 = !{!424, !425, !426}
!424 = !DILocalVariable(name: "nptr", arg: 1, scope: !415, file: !416, line: 324, type: !222)
!425 = !DILocalVariable(name: "endptr", arg: 2, scope: !415, file: !416, line: 324, type: !422)
!426 = !DILocalVariable(name: "base", arg: 3, scope: !415, file: !416, line: 324, type: !45)
!427 = !DILocation(line: 0, scope: !415)
!428 = !DILocation(line: 327, column: 10, scope: !415)
!429 = !DILocation(line: 327, column: 3, scope: !415)
!430 = distinct !DISubprogram(name: "strtoumax", scope: !416, file: !416, line: 336, type: !431, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !435)
!431 = !DISubroutineType(types: !432)
!432 = !{!433, !222, !422, !45}
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !420, line: 102, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !96, line: 73, baseType: !122)
!435 = !{!436, !437, !438}
!436 = !DILocalVariable(name: "nptr", arg: 1, scope: !430, file: !416, line: 336, type: !222)
!437 = !DILocalVariable(name: "endptr", arg: 2, scope: !430, file: !416, line: 336, type: !422)
!438 = !DILocalVariable(name: "base", arg: 3, scope: !430, file: !416, line: 336, type: !45)
!439 = !DILocation(line: 0, scope: !430)
!440 = !DILocation(line: 339, column: 10, scope: !430)
!441 = !DILocation(line: 339, column: 3, scope: !430)
!442 = distinct !DISubprogram(name: "wcstoimax", scope: !416, file: !416, line: 348, type: !443, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !452)
!443 = !DISubroutineType(types: !444)
!444 = !{!419, !445, !449, !45}
!445 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !416, line: 34, baseType: !45)
!449 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!452 = !{!453, !454, !455}
!453 = !DILocalVariable(name: "nptr", arg: 1, scope: !442, file: !416, line: 348, type: !445)
!454 = !DILocalVariable(name: "endptr", arg: 2, scope: !442, file: !416, line: 348, type: !449)
!455 = !DILocalVariable(name: "base", arg: 3, scope: !442, file: !416, line: 348, type: !45)
!456 = !DILocation(line: 0, scope: !442)
!457 = !DILocation(line: 351, column: 10, scope: !442)
!458 = !DILocation(line: 351, column: 3, scope: !442)
!459 = distinct !DISubprogram(name: "wcstoumax", scope: !416, file: !416, line: 362, type: !460, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!433, !445, !449, !45}
!462 = !{!463, !464, !465}
!463 = !DILocalVariable(name: "nptr", arg: 1, scope: !459, file: !416, line: 362, type: !445)
!464 = !DILocalVariable(name: "endptr", arg: 2, scope: !459, file: !416, line: 362, type: !449)
!465 = !DILocalVariable(name: "base", arg: 3, scope: !459, file: !416, line: 362, type: !45)
!466 = !DILocation(line: 0, scope: !459)
!467 = !DILocation(line: 365, column: 10, scope: !459)
!468 = !DILocation(line: 365, column: 3, scope: !459)
!469 = distinct !DISubprogram(name: "stat", scope: !470, file: !470, line: 453, type: !471, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !510)
!470 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!471 = !DISubroutineType(types: !472)
!472 = !{!45, !50, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !475, line: 46, size: 1152, elements: !476)
!475 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!476 = !{!477, !479, !481, !483, !485, !487, !489, !490, !491, !492, !494, !496, !504, !505, !506}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !474, file: !475, line: 48, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !96, line: 145, baseType: !122)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !474, file: !475, line: 53, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !96, line: 148, baseType: !122)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !474, file: !475, line: 61, baseType: !482, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !96, line: 151, baseType: !122)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !474, file: !475, line: 62, baseType: !484, size: 32, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !96, line: 150, baseType: !7)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !474, file: !475, line: 64, baseType: !486, size: 32, offset: 224)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !96, line: 146, baseType: !7)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !474, file: !475, line: 65, baseType: !488, size: 32, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !96, line: 147, baseType: !7)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !474, file: !475, line: 67, baseType: !45, size: 32, offset: 288)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !474, file: !475, line: 69, baseType: !478, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !474, file: !475, line: 74, baseType: !95, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !474, file: !475, line: 78, baseType: !493, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !96, line: 174, baseType: !97)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !474, file: !475, line: 80, baseType: !495, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !96, line: 179, baseType: !97)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !474, file: !475, line: 91, baseType: !497, size: 128, offset: 576)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !498, line: 10, size: 128, elements: !499)
!498 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!499 = !{!500, !502}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !497, file: !498, line: 12, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !96, line: 160, baseType: !97)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !497, file: !498, line: 16, baseType: !503, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !96, line: 196, baseType: !97)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !474, file: !475, line: 92, baseType: !497, size: 128, offset: 704)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !474, file: !475, line: 93, baseType: !497, size: 128, offset: 832)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !474, file: !475, line: 106, baseType: !507, size: 192, offset: 960)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 192, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 3)
!510 = !{!511, !512}
!511 = !DILocalVariable(name: "__path", arg: 1, scope: !469, file: !470, line: 453, type: !50)
!512 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !469, file: !470, line: 453, type: !473)
!513 = !DILocation(line: 0, scope: !469)
!514 = !DILocation(line: 455, column: 10, scope: !469)
!515 = !DILocation(line: 455, column: 3, scope: !469)
!516 = distinct !DISubprogram(name: "lstat", scope: !470, file: !470, line: 460, type: !471, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !517)
!517 = !{!518, !519}
!518 = !DILocalVariable(name: "__path", arg: 1, scope: !516, file: !470, line: 460, type: !50)
!519 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !516, file: !470, line: 460, type: !473)
!520 = !DILocation(line: 0, scope: !516)
!521 = !DILocation(line: 462, column: 10, scope: !516)
!522 = !DILocation(line: 462, column: 3, scope: !516)
!523 = distinct !DISubprogram(name: "fstat", scope: !470, file: !470, line: 467, type: !524, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !526)
!524 = !DISubroutineType(types: !525)
!525 = !{!45, !45, !473}
!526 = !{!527, !528}
!527 = !DILocalVariable(name: "__fd", arg: 1, scope: !523, file: !470, line: 467, type: !45)
!528 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !523, file: !470, line: 467, type: !473)
!529 = !DILocation(line: 0, scope: !523)
!530 = !DILocation(line: 469, column: 10, scope: !523)
!531 = !DILocation(line: 469, column: 3, scope: !523)
!532 = distinct !DISubprogram(name: "fstatat", scope: !470, file: !470, line: 474, type: !533, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !535)
!533 = !DISubroutineType(types: !534)
!534 = !{!45, !45, !50, !473, !45}
!535 = !{!536, !537, !538, !539}
!536 = !DILocalVariable(name: "__fd", arg: 1, scope: !532, file: !470, line: 474, type: !45)
!537 = !DILocalVariable(name: "__filename", arg: 2, scope: !532, file: !470, line: 474, type: !50)
!538 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !532, file: !470, line: 474, type: !473)
!539 = !DILocalVariable(name: "__flag", arg: 4, scope: !532, file: !470, line: 474, type: !45)
!540 = !DILocation(line: 0, scope: !532)
!541 = !DILocation(line: 477, column: 10, scope: !532)
!542 = !DILocation(line: 477, column: 3, scope: !532)
!543 = distinct !DISubprogram(name: "mknod", scope: !470, file: !470, line: 483, type: !544, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !546)
!544 = !DISubroutineType(types: !545)
!545 = !{!45, !50, !484, !478}
!546 = !{!547, !548, !549}
!547 = !DILocalVariable(name: "__path", arg: 1, scope: !543, file: !470, line: 483, type: !50)
!548 = !DILocalVariable(name: "__mode", arg: 2, scope: !543, file: !470, line: 483, type: !484)
!549 = !DILocalVariable(name: "__dev", arg: 3, scope: !543, file: !470, line: 483, type: !478)
!550 = !DILocation(line: 0, scope: !543)
!551 = !DILocation(line: 485, column: 10, scope: !543)
!552 = !DILocation(line: 485, column: 3, scope: !543)
!553 = distinct !DISubprogram(name: "mknodat", scope: !470, file: !470, line: 491, type: !554, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !556)
!554 = !DISubroutineType(types: !555)
!555 = !{!45, !45, !50, !484, !478}
!556 = !{!557, !558, !559, !560}
!557 = !DILocalVariable(name: "__fd", arg: 1, scope: !553, file: !470, line: 491, type: !45)
!558 = !DILocalVariable(name: "__path", arg: 2, scope: !553, file: !470, line: 491, type: !50)
!559 = !DILocalVariable(name: "__mode", arg: 3, scope: !553, file: !470, line: 491, type: !484)
!560 = !DILocalVariable(name: "__dev", arg: 4, scope: !553, file: !470, line: 491, type: !478)
!561 = !DILocation(line: 0, scope: !553)
!562 = !DILocation(line: 494, column: 10, scope: !553)
!563 = !DILocation(line: 494, column: 3, scope: !553)
!564 = distinct !DISubprogram(name: "stat64", scope: !470, file: !470, line: 502, type: !565, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !587)
!565 = !DISubroutineType(types: !566)
!566 = !{!45, !50, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !475, line: 119, size: 1152, elements: !569)
!569 = !{!570, !571, !573, !574, !575, !576, !577, !578, !579, !580, !581, !583, !584, !585, !586}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !568, file: !475, line: 121, baseType: !478, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !568, file: !475, line: 123, baseType: !572, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !96, line: 149, baseType: !122)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !568, file: !475, line: 124, baseType: !482, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !568, file: !475, line: 125, baseType: !484, size: 32, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !568, file: !475, line: 132, baseType: !486, size: 32, offset: 224)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !568, file: !475, line: 133, baseType: !488, size: 32, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !568, file: !475, line: 135, baseType: !45, size: 32, offset: 288)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !568, file: !475, line: 136, baseType: !478, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !568, file: !475, line: 137, baseType: !95, size: 64, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !568, file: !475, line: 143, baseType: !493, size: 64, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !568, file: !475, line: 144, baseType: !582, size: 64, offset: 512)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !96, line: 180, baseType: !97)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !568, file: !475, line: 152, baseType: !497, size: 128, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !568, file: !475, line: 153, baseType: !497, size: 128, offset: 704)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !568, file: !475, line: 154, baseType: !497, size: 128, offset: 832)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !568, file: !475, line: 164, baseType: !507, size: 192, offset: 960)
!587 = !{!588, !589}
!588 = !DILocalVariable(name: "__path", arg: 1, scope: !564, file: !470, line: 502, type: !50)
!589 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !564, file: !470, line: 502, type: !567)
!590 = !DILocation(line: 0, scope: !564)
!591 = !DILocation(line: 504, column: 10, scope: !564)
!592 = !DILocation(line: 504, column: 3, scope: !564)
!593 = distinct !DISubprogram(name: "lstat64", scope: !470, file: !470, line: 509, type: !565, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !594)
!594 = !{!595, !596}
!595 = !DILocalVariable(name: "__path", arg: 1, scope: !593, file: !470, line: 509, type: !50)
!596 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !593, file: !470, line: 509, type: !567)
!597 = !DILocation(line: 0, scope: !593)
!598 = !DILocation(line: 511, column: 10, scope: !593)
!599 = !DILocation(line: 511, column: 3, scope: !593)
!600 = distinct !DISubprogram(name: "fstat64", scope: !470, file: !470, line: 516, type: !601, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !603)
!601 = !DISubroutineType(types: !602)
!602 = !{!45, !45, !567}
!603 = !{!604, !605}
!604 = !DILocalVariable(name: "__fd", arg: 1, scope: !600, file: !470, line: 516, type: !45)
!605 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !600, file: !470, line: 516, type: !567)
!606 = !DILocation(line: 0, scope: !600)
!607 = !DILocation(line: 518, column: 10, scope: !600)
!608 = !DILocation(line: 518, column: 3, scope: !600)
!609 = distinct !DISubprogram(name: "fstatat64", scope: !470, file: !470, line: 523, type: !610, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{!45, !45, !50, !567, !45}
!612 = !{!613, !614, !615, !616}
!613 = !DILocalVariable(name: "__fd", arg: 1, scope: !609, file: !470, line: 523, type: !45)
!614 = !DILocalVariable(name: "__filename", arg: 2, scope: !609, file: !470, line: 523, type: !50)
!615 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !609, file: !470, line: 523, type: !567)
!616 = !DILocalVariable(name: "__flag", arg: 4, scope: !609, file: !470, line: 523, type: !45)
!617 = !DILocation(line: 0, scope: !609)
!618 = !DILocation(line: 526, column: 10, scope: !609)
!619 = !DILocation(line: 526, column: 3, scope: !609)
!620 = distinct !DISubprogram(name: "preprocess_file", scope: !3, file: !3, line: 87, type: !621, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1130)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !6, line: 31, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !626, line: 322, size: 10112, elements: !627)
!626 = !DIFile(filename: "./internal.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!627 = !{!628, !698, !699, !716, !746, !747, !757, !758, !759, !787, !789, !793, !794, !795, !796, !797, !798, !799, !800, !801, !845, !846, !849, !850, !882, !883, !884, !887, !888, !889, !890, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !916, !917, !918, !921, !995, !1021, !1024, !1025, !1088, !1095, !1096, !1103, !1104, !1105, !1106, !1109, !1110, !1123}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !625, file: !626, line: 325, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_buffer", file: !6, line: 32, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_buffer", file: !626, line: 249, size: 1472, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !645, !646, !647, !648, !650, !653, !654, !657, !658, !659, !660, !661, !662, !685}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !631, file: !626, line: 251, baseType: !52, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "line_base", scope: !631, file: !626, line: 252, baseType: !52, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !631, file: !626, line: 253, baseType: !52, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !631, file: !626, line: 255, baseType: !52, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !631, file: !626, line: 256, baseType: !52, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !631, file: !626, line: 258, baseType: !639, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_line_note", file: !626, line: 235, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_line_note", file: !626, line: 236, size: 128, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !641, file: !626, line: 239, baseType: !52, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !626, line: 245, baseType: !7, size: 32, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cur_note", scope: !631, file: !626, line: 259, baseType: !7, size: 32, offset: 384)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "notes_used", scope: !631, file: !626, line: 260, baseType: !7, size: 32, offset: 416)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "notes_cap", scope: !631, file: !626, line: 261, baseType: !7, size: 32, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !631, file: !626, line: 263, baseType: !649, size: 64, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !631, file: !626, line: 267, baseType: !651, size: 64, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_file", file: !6, line: 42, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !631, file: !626, line: 271, baseType: !52, size: 64, offset: 640)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "if_stack", scope: !631, file: !626, line: 275, baseType: !655, size: 64, offset: 704)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "if_stack", file: !626, line: 275, flags: DIFlagFwdDecl)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "need_line", scope: !631, file: !626, line: 278, baseType: !44, size: 8, offset: 768)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "warned_cplusplus_comments", scope: !631, file: !626, line: 284, baseType: !7, size: 1, offset: 776, flags: DIFlagBitField, extraData: i64 776)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "from_stage3", scope: !631, file: !626, line: 289, baseType: !7, size: 1, offset: 777, flags: DIFlagBitField, extraData: i64 776)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "return_at_eof", scope: !631, file: !626, line: 294, baseType: !7, size: 1, offset: 778, flags: DIFlagBitField, extraData: i64 776)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !631, file: !626, line: 298, baseType: !44, size: 8, offset: 784)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !631, file: !626, line: 302, baseType: !663, size: 512, offset: 832)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !6, line: 523, size: 512, elements: !664)
!664 = !{!665, !667, !668, !669, !670, !671, !672, !674, !680, !683}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !663, file: !6, line: 526, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !663, file: !6, line: 529, baseType: !47, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !663, file: !6, line: 530, baseType: !7, size: 32, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !663, file: !6, line: 534, baseType: !44, size: 8, offset: 160)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !663, file: !6, line: 537, baseType: !44, size: 8, offset: 168)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !663, file: !6, line: 541, baseType: !47, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !663, file: !6, line: 545, baseType: !673, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !663, file: !6, line: 551, baseType: !675, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!47, !50, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !6, line: 39, baseType: !663)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !663, file: !6, line: 555, baseType: !681, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !682, line: 47, baseType: !480)
!682 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!683 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !663, file: !6, line: 556, baseType: !684, size: 64, offset: 448)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !682, line: 59, baseType: !478)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "input_cset_desc", scope: !631, file: !626, line: 306, baseType: !686, size: 128, offset: 1344)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cset_converter", file: !626, line: 47, size: 128, elements: !687)
!687 = !{!688, !696, !697}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !686, file: !626, line: 49, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "convert_f", file: !626, line: 45, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!44, !693, !52, !120, !694}
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !626, line: 33, baseType: !45)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_strbuf", file: !626, line: 43, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !686, file: !626, line: 50, baseType: !693, size: 32, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !686, file: !626, line: 51, baseType: !45, size: 32, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "overlaid_buffer", scope: !625, file: !626, line: 328, baseType: !629, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !625, file: !626, line: 331, baseType: !700, size: 160, offset: 128)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lexer_state", file: !626, line: 177, size: 160, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "in_directive", scope: !700, file: !626, line: 180, baseType: !44, size: 8)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "directive_wants_padding", scope: !700, file: !626, line: 185, baseType: !44, size: 8, offset: 8)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "skipping", scope: !700, file: !626, line: 188, baseType: !44, size: 8, offset: 16)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "angled_headers", scope: !700, file: !626, line: 191, baseType: !44, size: 8, offset: 24)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "in_expression", scope: !700, file: !626, line: 194, baseType: !44, size: 8, offset: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "save_comments", scope: !700, file: !626, line: 198, baseType: !44, size: 8, offset: 40)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "va_args_ok", scope: !700, file: !626, line: 201, baseType: !44, size: 8, offset: 48)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned_ok", scope: !700, file: !626, line: 204, baseType: !44, size: 8, offset: 56)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_expansion", scope: !700, file: !626, line: 207, baseType: !44, size: 8, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "parsing_args", scope: !700, file: !626, line: 210, baseType: !44, size: 8, offset: 72)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "discarding_output", scope: !700, file: !626, line: 214, baseType: !44, size: 8, offset: 80)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "skip_eval", scope: !700, file: !626, line: 217, baseType: !7, size: 32, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "in_deferred_pragma", scope: !700, file: !626, line: 220, baseType: !44, size: 8, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pragma_allow_expansion", scope: !700, file: !626, line: 223, baseType: !44, size: 8, offset: 136)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "line_table", scope: !625, file: !626, line: 334, baseType: !717, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !136, line: 74, size: 448, elements: !719)
!719 = !{!720, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !718, file: !136, line: 75, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !136, line: 61, size: 192, elements: !723)
!723 = !{!724, !725, !727, !728, !729, !730, !731}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !722, file: !136, line: 62, baseType: !50, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !722, file: !136, line: 63, baseType: !726, size: 32, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !136, line: 39, baseType: !7)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !722, file: !136, line: 64, baseType: !135, size: 32, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !722, file: !136, line: 65, baseType: !45, size: 32, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !722, file: !136, line: 66, baseType: !7, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !722, file: !136, line: 68, baseType: !44, size: 8, offset: 168)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !722, file: !136, line: 70, baseType: !7, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !718, file: !136, line: 76, baseType: !7, size: 32, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !718, file: !136, line: 77, baseType: !7, size: 32, offset: 96)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !718, file: !136, line: 79, baseType: !7, size: 32, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !718, file: !136, line: 84, baseType: !45, size: 32, offset: 160)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !718, file: !136, line: 87, baseType: !7, size: 32, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !718, file: !136, line: 90, baseType: !44, size: 8, offset: 224)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !718, file: !136, line: 93, baseType: !135, size: 32, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !718, file: !136, line: 96, baseType: !135, size: 32, offset: 288)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !718, file: !136, line: 100, baseType: !7, size: 32, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !718, file: !136, line: 104, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !136, line: 47, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!49, !49, !120}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "directive_line", scope: !625, file: !626, line: 337, baseType: !135, size: 32, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "a_buff", scope: !625, file: !626, line: 340, baseType: !748, size: 64, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_buff", file: !626, line: 99, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_buff", file: !626, line: 100, size: 256, elements: !751)
!751 = !{!752, !754, !755, !756}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !750, file: !626, line: 102, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !750, file: !626, line: 103, baseType: !43, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !750, file: !626, line: 103, baseType: !43, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !750, file: !626, line: 103, baseType: !43, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "u_buff", scope: !625, file: !626, line: 341, baseType: !748, size: 64, offset: 512)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffs", scope: !625, file: !626, line: 342, baseType: !748, size: 64, offset: 576)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "base_context", scope: !625, file: !626, line: 345, baseType: !760, size: 448, offset: 640)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_context", file: !626, line: 142, size: 448, elements: !761)
!761 = !{!762, !765, !766, !784, !785, !786}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !760, file: !626, line: 145, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_context", file: !626, line: 141, baseType: !760)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !760, file: !626, line: 145, baseType: !763, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !760, file: !626, line: 164, baseType: !767, size: 128, offset: 128)
!767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !760, file: !626, line: 147, size: 128, elements: !768)
!768 = !{!769, !779}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "iso", scope: !767, file: !626, line: 156, baseType: !770, size: 128)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !626, line: 152, size: 128, elements: !771)
!771 = !{!772, !778}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !770, file: !626, line: 154, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "utoken", file: !626, line: 121, size: 64, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !773, file: !626, line: 123, baseType: !129, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ptoken", scope: !773, file: !626, line: 124, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !770, file: !626, line: 155, baseType: !773, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "trad", scope: !767, file: !626, line: 163, baseType: !780, size: 128)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !626, line: 159, size: 128, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !780, file: !626, line: 161, baseType: !52, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !780, file: !626, line: 162, baseType: !52, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !760, file: !626, line: 168, baseType: !748, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !760, file: !626, line: 171, baseType: !146, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "direct_p", scope: !760, file: !626, line: 174, baseType: !44, size: 8, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !625, file: !626, line: 346, baseType: !788, size: 64, offset: 1088)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !625, file: !626, line: 349, baseType: !790, size: 64, offset: 1152)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "directive", file: !626, line: 40, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "directive_result", scope: !625, file: !626, line: 352, baseType: !131, size: 192, offset: 1216)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "invocation_location", scope: !625, file: !626, line: 356, baseType: !135, size: 32, offset: 1408)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "set_invocation_location", scope: !625, file: !626, line: 360, baseType: !44, size: 8, offset: 1440)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "quote_include", scope: !625, file: !626, line: 363, baseType: !666, size: 64, offset: 1472)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "bracket_include", scope: !625, file: !626, line: 364, baseType: !666, size: 64, offset: 1536)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "no_search_path", scope: !625, file: !626, line: 365, baseType: !663, size: 512, offset: 1600)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "all_files", scope: !625, file: !626, line: 368, baseType: !651, size: 64, offset: 2112)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "main_file", scope: !625, file: !626, line: 370, baseType: !651, size: 64, offset: 2176)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash", scope: !625, file: !626, line: 373, baseType: !802, size: 64, offset: 2240)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !804, line: 100, size: 896, elements: !805)
!804 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!805 = !{!806, !812, !814, !819, !821, !822, !823, !824, !825, !826, !831, !833, !834, !839, !844}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !803, file: !804, line: 102, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !804, line: 52, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!811, !368}
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !804, line: 47, baseType: !7)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !803, file: !804, line: 105, baseType: !813, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !804, line: 59, baseType: !371)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !803, file: !804, line: 108, baseType: !815, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !804, line: 63, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !49}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !803, file: !804, line: 111, baseType: !820, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !803, file: !804, line: 114, baseType: !120, size: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !803, file: !804, line: 117, baseType: !120, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !803, file: !804, line: 120, baseType: !120, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !803, file: !804, line: 124, baseType: !7, size: 32, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !803, file: !804, line: 128, baseType: !7, size: 32, offset: 480)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !803, file: !804, line: 131, baseType: !827, size: 64, offset: 512)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !804, line: 75, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!49, !120, !120}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !803, file: !804, line: 132, baseType: !832, size: 64, offset: 576)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !804, line: 78, baseType: !816)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !803, file: !804, line: 135, baseType: !49, size: 64, offset: 640)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !803, file: !804, line: 136, baseType: !835, size: 64, offset: 704)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !804, line: 82, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!49, !49, !120, !120}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !803, file: !804, line: 137, baseType: !840, size: 64, offset: 768)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !804, line: 83, baseType: !841)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !49, !49}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !803, file: !804, line: 141, baseType: !7, size: 32, offset: 832)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash", scope: !625, file: !626, line: 374, baseType: !802, size: 64, offset: 2304)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash_entries", scope: !625, file: !626, line: 375, baseType: !847, size: 64, offset: 2368)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_hash_entry_pool", file: !626, line: 375, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_hash", scope: !625, file: !626, line: 378, baseType: !802, size: 64, offset: 2432)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_ob", scope: !625, file: !626, line: 379, baseType: !851, size: 704, offset: 2496)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !852, line: 164, size: 704, elements: !853)
!852 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!853 = !{!854, !855, !865, !866, !867, !868, !869, !870, !874, !878, !879, !880, !881}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !851, file: !852, line: 166, baseType: !97, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !851, file: !852, line: 167, baseType: !856, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !852, line: 157, size: 192, elements: !858)
!858 = !{!859, !860, !861}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !857, file: !852, line: 159, baseType: !47, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !857, file: !852, line: 160, baseType: !856, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !857, file: !852, line: 161, baseType: !862, size: 32, offset: 128)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 32, elements: !863)
!863 = !{!864}
!864 = !DISubrange(count: 4)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !851, file: !852, line: 168, baseType: !47, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !851, file: !852, line: 169, baseType: !47, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !851, file: !852, line: 170, baseType: !47, size: 64, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !851, file: !852, line: 171, baseType: !97, size: 64, offset: 320)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !851, file: !852, line: 172, baseType: !45, size: 32, offset: 384)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !851, file: !852, line: 176, baseType: !871, size: 64, offset: 448)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!856, !49, !97}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !851, file: !852, line: 177, baseType: !875, size: 64, offset: 512)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !49, !856}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !851, file: !852, line: 178, baseType: !49, size: 64, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !851, file: !852, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !851, file: !852, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !851, file: !852, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "quote_ignores_source_dir", scope: !625, file: !626, line: 383, baseType: !44, size: 8, offset: 3200)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "seen_once_only", scope: !625, file: !626, line: 387, baseType: !44, size: 8, offset: 3208)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "mi_cmacro", scope: !625, file: !626, line: 390, baseType: !885, size: 64, offset: 3264)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "mi_ind_cmacro", scope: !625, file: !626, line: 391, baseType: !885, size: 64, offset: 3328)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "mi_valid", scope: !625, file: !626, line: 392, baseType: !44, size: 8, offset: 3392)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "cur_token", scope: !625, file: !626, line: 395, baseType: !177, size: 64, offset: 3456)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "base_run", scope: !625, file: !626, line: 396, baseType: !891, size: 256, offset: 3520)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "tokenrun", file: !626, line: 128, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenrun", file: !626, line: 129, size: 256, elements: !893)
!893 = !{!894, !896, !897, !898}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !892, file: !626, line: 131, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !892, file: !626, line: 131, baseType: !895, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !892, file: !626, line: 132, baseType: !177, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !892, file: !626, line: 132, baseType: !177, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "cur_run", scope: !625, file: !626, line: 396, baseType: !895, size: 64, offset: 3776)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "lookaheads", scope: !625, file: !626, line: 397, baseType: !7, size: 32, offset: 3840)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "keep_tokens", scope: !625, file: !626, line: 400, baseType: !7, size: 32, offset: 3872)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer", scope: !625, file: !626, line: 403, baseType: !43, size: 64, offset: 3904)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer_len", scope: !625, file: !626, line: 404, baseType: !7, size: 32, offset: 3968)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_cset_desc", scope: !625, file: !626, line: 408, baseType: !686, size: 128, offset: 4032)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_cset_desc", scope: !625, file: !626, line: 412, baseType: !686, size: 128, offset: 4160)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "char16_cset_desc", scope: !625, file: !626, line: 416, baseType: !686, size: 128, offset: 4288)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "char32_cset_desc", scope: !625, file: !626, line: 420, baseType: !686, size: 128, offset: 4416)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "wide_cset_desc", scope: !625, file: !626, line: 424, baseType: !686, size: 128, offset: 4544)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !625, file: !626, line: 427, baseType: !52, size: 64, offset: 4672)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !625, file: !626, line: 428, baseType: !52, size: 64, offset: 4736)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_paste", scope: !625, file: !626, line: 431, baseType: !131, size: 192, offset: 4800)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !625, file: !626, line: 432, baseType: !131, size: 192, offset: 4992)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !625, file: !626, line: 435, baseType: !914, size: 64, offset: 5184)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !6, line: 685, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "hash_ob", scope: !625, file: !626, line: 439, baseType: !851, size: 704, offset: 5248)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_ob", scope: !625, file: !626, line: 443, baseType: !851, size: 704, offset: 5952)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "pragmas", scope: !625, file: !626, line: 447, baseType: !919, size: 64, offset: 6656)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "pragma_entry", file: !626, line: 447, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !625, file: !626, line: 450, baseType: !922, size: 1088, offset: 6720)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !6, line: 472, size: 1088, elements: !923)
!923 = !{!924, !928, !934, !938, !942, !946, !947, !954, !958, !962, !966, !972, !976, !987, !988, !989, !991}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !922, file: !6, line: 475, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{null, !623, !129, !45}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !922, file: !6, line: 481, baseType: !929, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !623, !932}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !922, file: !6, line: 483, baseType: !935, size: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !623, !50}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !922, file: !6, line: 484, baseType: !939, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !623, !7, !52, !50, !45, !777}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !922, file: !6, line: 486, baseType: !943, size: 64, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !623, !7, !146}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !922, file: !6, line: 487, baseType: !943, size: 64, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !922, file: !6, line: 488, baseType: !948, size: 64, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !623, !7, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !6, line: 35, baseType: !200)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !922, file: !6, line: 489, baseType: !955, size: 64, offset: 448)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !623, !7}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !922, file: !6, line: 490, baseType: !959, size: 64, offset: 512)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!45, !623, !50, !45}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !922, file: !6, line: 491, baseType: !963, size: 64, offset: 576)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{null, !623, !50, !45, !50}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !922, file: !6, line: 492, baseType: !967, size: 64, offset: 640)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !6, line: 469, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!50, !623, !50, !971}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !922, file: !6, line: 496, baseType: !973, size: 64, offset: 704)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!146, !623, !129}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !922, file: !6, line: 500, baseType: !977, size: 64, offset: 768)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!44, !623, !45, !135, !7, !50, !980}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !982, line: 52, baseType: !983)
!982 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !984, line: 32, baseType: !985)
!984 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 527, baseType: !986)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 192, elements: !104)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !922, file: !6, line: 506, baseType: !943, size: 64, offset: 832)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !922, file: !6, line: 507, baseType: !943, size: 64, offset: 896)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !922, file: !6, line: 510, baseType: !990, size: 64, offset: 960)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !922, file: !6, line: 513, baseType: !992, size: 64, offset: 1024)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !623, !135, !146}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !625, file: !626, line: 453, baseType: !996, size: 64, offset: 7808)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht", file: !152, line: 46, size: 1152, elements: !998)
!998 = !{!999, !1000, !1004, !1010, !1014, !1015, !1016, !1018, !1019, !1020}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !997, file: !152, line: 49, baseType: !851, size: 704)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !997, file: !152, line: 51, baseType: !1001, size: 64, offset: 704)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashnode", file: !152, line: 41, baseType: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_node", scope: !997, file: !152, line: 53, baseType: !1005, size: 64, offset: 768)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!1002, !1008}
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !152, line: 40, baseType: !997)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_subobject", scope: !997, file: !152, line: 56, baseType: !1011, size: 64, offset: 832)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!49, !120}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !997, file: !152, line: 58, baseType: !7, size: 32, offset: 896)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !997, file: !152, line: 59, baseType: !7, size: 32, offset: 928)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !997, file: !152, line: 62, baseType: !1017, size: 64, offset: 960)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !997, file: !152, line: 65, baseType: !7, size: 32, offset: 1024)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !997, file: !152, line: 66, baseType: !7, size: 32, offset: 1056)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !997, file: !152, line: 69, baseType: !44, size: 8, offset: 1088)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "op_stack", scope: !625, file: !626, line: 456, baseType: !1022, size: 64, offset: 7872)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !626, line: 42, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "op_limit", scope: !625, file: !626, line: 456, baseType: !1022, size: 64, offset: 7936)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !625, file: !626, line: 459, baseType: !1026, size: 1024, offset: 8000)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !6, line: 279, size: 1024, elements: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !1026, file: !6, line: 282, baseType: !7, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !1026, file: !6, line: 285, baseType: !19, size: 32, offset: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !1026, file: !6, line: 288, baseType: !44, size: 8, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !1026, file: !6, line: 291, baseType: !44, size: 8, offset: 72)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !1026, file: !6, line: 296, baseType: !44, size: 8, offset: 80)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !1026, file: !6, line: 299, baseType: !44, size: 8, offset: 88)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !1026, file: !6, line: 303, baseType: !44, size: 8, offset: 96)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !1026, file: !6, line: 306, baseType: !44, size: 8, offset: 104)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !1026, file: !6, line: 309, baseType: !44, size: 8, offset: 112)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !1026, file: !6, line: 312, baseType: !44, size: 8, offset: 120)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !1026, file: !6, line: 315, baseType: !44, size: 8, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !1026, file: !6, line: 318, baseType: !44, size: 8, offset: 136)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !1026, file: !6, line: 321, baseType: !44, size: 8, offset: 144)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !1026, file: !6, line: 324, baseType: !44, size: 8, offset: 152)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !1026, file: !6, line: 328, baseType: !44, size: 8, offset: 160)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !1026, file: !6, line: 331, baseType: !44, size: 8, offset: 168)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !1026, file: !6, line: 334, baseType: !44, size: 8, offset: 176)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !1026, file: !6, line: 338, baseType: !44, size: 8, offset: 184)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !1026, file: !6, line: 341, baseType: !44, size: 8, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !1026, file: !6, line: 344, baseType: !44, size: 8, offset: 200)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !1026, file: !6, line: 348, baseType: !44, size: 8, offset: 208)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !1026, file: !6, line: 352, baseType: !44, size: 8, offset: 216)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !1026, file: !6, line: 356, baseType: !44, size: 8, offset: 224)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !1026, file: !6, line: 360, baseType: !44, size: 8, offset: 232)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !1026, file: !6, line: 363, baseType: !44, size: 8, offset: 240)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !1026, file: !6, line: 366, baseType: !44, size: 8, offset: 248)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !1026, file: !6, line: 370, baseType: !44, size: 8, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !1026, file: !6, line: 373, baseType: !44, size: 8, offset: 264)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !1026, file: !6, line: 376, baseType: !44, size: 8, offset: 272)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !1026, file: !6, line: 379, baseType: !44, size: 8, offset: 280)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !1026, file: !6, line: 382, baseType: !44, size: 8, offset: 288)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !1026, file: !6, line: 385, baseType: !44, size: 8, offset: 296)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !1026, file: !6, line: 389, baseType: !44, size: 8, offset: 304)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !1026, file: !6, line: 392, baseType: !44, size: 8, offset: 312)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !1026, file: !6, line: 395, baseType: !44, size: 8, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !1026, file: !6, line: 398, baseType: !44, size: 8, offset: 328)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !1026, file: !6, line: 401, baseType: !44, size: 8, offset: 336)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !1026, file: !6, line: 404, baseType: !50, size: 64, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !1026, file: !6, line: 407, baseType: !50, size: 64, offset: 448)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !1026, file: !6, line: 410, baseType: !50, size: 64, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !1026, file: !6, line: 414, baseType: !31, size: 32, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !1026, file: !6, line: 417, baseType: !44, size: 8, offset: 608)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !1026, file: !6, line: 420, baseType: !44, size: 8, offset: 616)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !1026, file: !6, line: 441, baseType: !1072, size: 64, offset: 640)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !6, line: 423, size: 64, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !1072, file: !6, line: 426, baseType: !37, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !1072, file: !6, line: 429, baseType: !44, size: 8, offset: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !1072, file: !6, line: 433, baseType: !44, size: 8, offset: 40)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !1072, file: !6, line: 436, baseType: !44, size: 8, offset: 48)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !1072, file: !6, line: 440, baseType: !44, size: 8, offset: 56)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1026, file: !6, line: 447, baseType: !120, size: 64, offset: 704)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !1026, file: !6, line: 447, baseType: !120, size: 64, offset: 768)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !1026, file: !6, line: 447, baseType: !120, size: 64, offset: 832)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !1026, file: !6, line: 447, baseType: !120, size: 64, offset: 896)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !1026, file: !6, line: 450, baseType: !44, size: 8, offset: 960)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !1026, file: !6, line: 450, baseType: !44, size: 8, offset: 968)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !1026, file: !6, line: 454, baseType: !44, size: 8, offset: 976)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !1026, file: !6, line: 457, baseType: !44, size: 8, offset: 984)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !1026, file: !6, line: 460, baseType: !44, size: 8, offset: 992)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "spec_nodes", scope: !625, file: !626, line: 463, baseType: !1089, size: 256, offset: 9024)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spec_nodes", file: !626, line: 227, size: 256, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1094}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "n_defined", scope: !1089, file: !626, line: 229, baseType: !146, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "n_true", scope: !1089, file: !626, line: 230, baseType: !146, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "n_false", scope: !1089, file: !626, line: 231, baseType: !146, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "n__VA_ARGS__", scope: !1089, file: !626, line: 232, baseType: !146, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "our_hashtable", scope: !625, file: !626, line: 466, baseType: !44, size: 8, offset: 9280)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !625, file: !626, line: 475, baseType: !1097, size: 256, offset: 9344)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !626, line: 469, size: 256, elements: !1098)
!1098 = !{!1099, !1100, !1101, !1102}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1097, file: !626, line: 471, baseType: !43, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1097, file: !626, line: 472, baseType: !43, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !1097, file: !626, line: 473, baseType: !43, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !1097, file: !626, line: 474, baseType: !135, size: 32, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cur", scope: !625, file: !626, line: 478, baseType: !52, size: 64, offset: 9600)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "saved_rlimit", scope: !625, file: !626, line: 478, baseType: !52, size: 64, offset: 9664)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "saved_line_base", scope: !625, file: !626, line: 478, baseType: !52, size: 64, offset: 9728)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "savedstate", scope: !625, file: !626, line: 482, baseType: !1107, size: 64, offset: 9792)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_savedstate", file: !626, line: 482, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !625, file: !626, line: 485, baseType: !7, size: 32, offset: 9856)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "comments", scope: !625, file: !626, line: 488, baseType: !1111, size: 128, offset: 9920)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment_table", file: !6, line: 901, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 891, size: 128, elements: !1113)
!1113 = !{!1114, !1121, !1122}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1112, file: !6, line: 894, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment", file: !6, line: 887, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 880, size: 128, elements: !1118)
!1118 = !{!1119, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !1117, file: !6, line: 883, baseType: !47, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "sloc", scope: !1117, file: !6, line: 886, baseType: !135, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1112, file: !6, line: 897, baseType: !45, size: 32, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1112, file: !6, line: 900, baseType: !45, size: 32, offset: 96)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pushed_macros", scope: !625, file: !626, line: 491, baseType: !1124, size: 64, offset: 10048)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_pragma_macro", file: !626, line: 310, size: 192, elements: !1126)
!1126 = !{!1127, !1128, !1129}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1125, file: !626, line: 312, baseType: !1124, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1125, file: !626, line: 314, baseType: !47, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1125, file: !626, line: 316, baseType: !166, size: 64, offset: 128)
!1130 = !{!1131}
!1131 = !DILocalVariable(name: "pfile", arg: 1, scope: !620, file: !3, line: 87, type: !623)
!1132 = !DILocation(line: 0, scope: !620)
!1133 = !DILocation(line: 91, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !620, file: !3, line: 91, column: 7)
!1135 = !DILocation(line: 91, column: 7, scope: !620)
!1136 = !DILocation(line: 0, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 92, column: 5)
!1138 = !DILocation(line: 94, column: 7, scope: !1137)
!1139 = !DILocation(line: 94, column: 21, scope: !1137)
!1140 = !DILocation(line: 94, column: 29, scope: !1137)
!1141 = distinct !{!1141, !1138, !1142}
!1142 = !DILocation(line: 95, column: 26, scope: !1137)
!1143 = !DILocation(line: 98, column: 12, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 98, column: 12)
!1145 = !DILocation(line: 98, column: 37, scope: !1144)
!1146 = !DILocation(line: 98, column: 12, scope: !1134)
!1147 = !DILocation(line: 99, column: 5, scope: !1144)
!1148 = !DILocation(line: 100, column: 12, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 100, column: 12)
!1150 = !DILocation(line: 100, column: 37, scope: !1149)
!1151 = !DILocation(line: 101, column: 5, scope: !1149)
!1152 = !DILocation(line: 101, column: 9, scope: !1149)
!1153 = !DILocation(line: 101, column: 34, scope: !1149)
!1154 = !DILocation(line: 100, column: 12, scope: !1144)
!1155 = !DILocation(line: 102, column: 5, scope: !1149)
!1156 = !DILocation(line: 104, column: 5, scope: !1149)
!1157 = !DILocation(line: 107, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !620, file: !3, line: 107, column: 7)
!1159 = !DILocation(line: 107, column: 24, scope: !1158)
!1160 = !DILocation(line: 107, column: 7, scope: !620)
!1161 = !DILocation(line: 108, column: 5, scope: !1158)
!1162 = !DILocation(line: 111, column: 13, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !620, file: !3, line: 111, column: 7)
!1164 = !DILocation(line: 111, column: 7, scope: !1163)
!1165 = !DILocation(line: 111, column: 7, scope: !620)
!1166 = !DILocation(line: 112, column: 23, scope: !1163)
!1167 = !DILocation(line: 112, column: 5, scope: !1163)
!1168 = !DILocation(line: 113, column: 1, scope: !620)
!1169 = distinct !DISubprogram(name: "scan_translation_unit_trad", scope: !3, file: !3, line: 291, type: !621, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1170)
!1170 = !{!1171, !1172}
!1171 = !DILocalVariable(name: "pfile", arg: 1, scope: !1169, file: !3, line: 291, type: !623)
!1172 = !DILocalVariable(name: "len", scope: !1173, file: !3, line: 295, type: !120)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 294, column: 5)
!1174 = !DILocation(line: 0, scope: !1169)
!1175 = !DILocation(line: 0, scope: !1173)
!1176 = !DILocation(line: 0, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 299, column: 11)
!1178 = !DILocation(line: 293, column: 3, scope: !1169)
!1179 = !DILocation(line: 293, column: 10, scope: !1169)
!1180 = !DILocation(line: 295, column: 31, scope: !1173)
!1181 = !DILocation(line: 295, column: 48, scope: !1173)
!1182 = !DILocation(line: 295, column: 35, scope: !1173)
!1183 = !DILocation(line: 296, column: 36, scope: !1173)
!1184 = !DILocation(line: 296, column: 7, scope: !1173)
!1185 = !DILocation(line: 297, column: 26, scope: !1173)
!1186 = !DILocation(line: 297, column: 46, scope: !1173)
!1187 = !DILocation(line: 297, column: 7, scope: !1173)
!1188 = !DILocation(line: 298, column: 21, scope: !1173)
!1189 = !DILocation(line: 299, column: 12, scope: !1177)
!1190 = !DILocation(line: 299, column: 11, scope: !1173)
!1191 = !DILocation(line: 300, column: 35, scope: !1177)
!1192 = !DILocation(line: 300, column: 2, scope: !1177)
!1193 = distinct !{!1193, !1178, !1194}
!1194 = !DILocation(line: 301, column: 5, scope: !1169)
!1195 = !DILocation(line: 302, column: 1, scope: !1169)
!1196 = distinct !DISubprogram(name: "scan_translation_unit_directives_only", scope: !3, file: !3, line: 270, type: !621, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1197)
!1197 = !{!1198, !1199}
!1198 = !DILocalVariable(name: "pfile", arg: 1, scope: !1196, file: !3, line: 270, type: !623)
!1199 = !DILocalVariable(name: "cb", scope: !1196, file: !3, line: 272, type: !1200)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_dir_only_callbacks", file: !626, line: 612, size: 128, elements: !1201)
!1201 = !{!1202, !1206}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "print_lines", scope: !1200, file: !626, line: 615, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !45, !368, !120}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_print_line", scope: !1200, file: !626, line: 616, baseType: !1207, size: 64, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{null, !135}
!1210 = !DILocation(line: 0, scope: !1196)
!1211 = !DILocation(line: 272, column: 3, scope: !1196)
!1212 = !DILocation(line: 274, column: 6, scope: !1196)
!1213 = !DILocation(line: 274, column: 18, scope: !1196)
!1214 = !DILocation(line: 275, column: 6, scope: !1196)
!1215 = !DILocation(line: 275, column: 23, scope: !1196)
!1216 = !DILocation(line: 277, column: 3, scope: !1196)
!1217 = !DILocation(line: 278, column: 1, scope: !1196)
!1218 = distinct !DISubprogram(name: "scan_translation_unit", scope: !3, file: !3, line: 166, type: !621, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1219)
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1228, !1229, !1232, !1233, !1236, !1237, !1240}
!1220 = !DILocalVariable(name: "pfile", arg: 1, scope: !1218, file: !3, line: 166, type: !623)
!1221 = !DILocalVariable(name: "avoid_paste", scope: !1218, file: !3, line: 168, type: !44)
!1222 = !DILocalVariable(name: "do_line_adjustments", scope: !1218, file: !3, line: 169, type: !44)
!1223 = !DILocalVariable(name: "in_pragma", scope: !1218, file: !3, line: 172, type: !44)
!1224 = !DILocalVariable(name: "loc", scope: !1225, file: !3, line: 177, type: !135)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 176, column: 5)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 175, column: 3)
!1227 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 175, column: 3)
!1228 = !DILocalVariable(name: "token", scope: !1225, file: !3, line: 178, type: !129)
!1229 = !DILocalVariable(name: "map", scope: !1230, file: !3, line: 196, type: !932)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 195, column: 2)
!1231 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 194, column: 11)
!1232 = !DILocalVariable(name: "src_line", scope: !1230, file: !3, line: 198, type: !45)
!1233 = !DILocalVariable(name: "map", scope: !1234, file: !3, line: 218, type: !932)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 217, column: 2)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 216, column: 16)
!1236 = !DILocalVariable(name: "src_line", scope: !1234, file: !3, line: 220, type: !45)
!1237 = !DILocalVariable(name: "space", scope: !1238, file: !3, line: 234, type: !50)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 233, column: 2)
!1239 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 232, column: 11)
!1240 = !DILocalVariable(name: "name", scope: !1238, file: !3, line: 235, type: !50)
!1241 = !DILocation(line: 0, scope: !1218)
!1242 = !DILocation(line: 170, column: 24, scope: !1218)
!1243 = !DILocation(line: 170, column: 7, scope: !1218)
!1244 = !DILocation(line: 170, column: 35, scope: !1218)
!1245 = !DILocation(line: 170, column: 40, scope: !1218)
!1246 = !DILocation(line: 171, column: 7, scope: !1218)
!1247 = !DILocation(line: 171, column: 11, scope: !1218)
!1248 = !DILocation(line: 171, column: 10, scope: !1218)
!1249 = !DILocation(line: 174, column: 16, scope: !1218)
!1250 = !DILocation(line: 0, scope: !1225)
!1251 = !DILocation(line: 0, scope: !1238)
!1252 = !DILocation(line: 175, column: 3, scope: !1218)
!1253 = !DILocation(line: 172, column: 8, scope: !1218)
!1254 = !DILocation(line: 177, column: 7, scope: !1225)
!1255 = !DILocation(line: 178, column: 32, scope: !1225)
!1256 = !DILocation(line: 180, column: 18, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 180, column: 11)
!1258 = !DILocation(line: 180, column: 23, scope: !1257)
!1259 = !DILocation(line: 180, column: 11, scope: !1225)
!1260 = !DILocation(line: 183, column: 14, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 183, column: 8)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 181, column: 2)
!1263 = !DILocation(line: 183, column: 21, scope: !1261)
!1264 = !DILocation(line: 184, column: 8, scope: !1261)
!1265 = !DILocation(line: 0, scope: !1261)
!1266 = !DILocation(line: 186, column: 32, scope: !1261)
!1267 = !DILocation(line: 184, column: 28, scope: !1261)
!1268 = !DILocation(line: 184, column: 34, scope: !1261)
!1269 = !DILocation(line: 185, column: 5, scope: !1261)
!1270 = distinct !{!1270, !1271, !1272}
!1271 = !DILocation(line: 175, column: 3, scope: !1227)
!1272 = !DILocation(line: 257, column: 5, scope: !1227)
!1273 = !DILocation(line: 185, column: 15, scope: !1261)
!1274 = !DILocation(line: 185, column: 19, scope: !1261)
!1275 = !DILocation(line: 185, column: 26, scope: !1261)
!1276 = !DILocation(line: 183, column: 8, scope: !1262)
!1277 = !DILocation(line: 186, column: 19, scope: !1261)
!1278 = !DILocation(line: 186, column: 6, scope: !1261)
!1279 = !DILocation(line: 190, column: 23, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 190, column: 11)
!1281 = !DILocation(line: 190, column: 11, scope: !1225)
!1282 = !DILocation(line: 194, column: 11, scope: !1231)
!1283 = !DILocation(line: 194, column: 11, scope: !1225)
!1284 = !DILocation(line: 197, column: 24, scope: !1230)
!1285 = !DILocation(line: 197, column: 36, scope: !1230)
!1286 = !DILocation(line: 197, column: 8, scope: !1230)
!1287 = !DILocation(line: 0, scope: !1230)
!1288 = !DILocation(line: 198, column: 19, scope: !1230)
!1289 = !DILocation(line: 200, column: 14, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 200, column: 8)
!1291 = !DILocation(line: 200, column: 21, scope: !1290)
!1292 = !DILocation(line: 200, column: 8, scope: !1230)
!1293 = !DILocation(line: 201, column: 19, scope: !1290)
!1294 = !DILocation(line: 201, column: 6, scope: !1290)
!1295 = !DILocation(line: 203, column: 26, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 203, column: 8)
!1297 = !DILocation(line: 203, column: 17, scope: !1296)
!1298 = !DILocation(line: 204, column: 8, scope: !1296)
!1299 = !DILocation(line: 205, column: 12, scope: !1296)
!1300 = !DILocation(line: 207, column: 8, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 206, column: 6)
!1302 = !DILocation(line: 208, column: 25, scope: !1301)
!1303 = !DILocation(line: 208, column: 8, scope: !1301)
!1304 = !DILocation(line: 209, column: 6, scope: !1301)
!1305 = !DILocation(line: 210, column: 27, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 210, column: 13)
!1307 = !DILocation(line: 210, column: 33, scope: !1306)
!1308 = !DILocation(line: 211, column: 6, scope: !1306)
!1309 = !DILocation(line: 211, column: 16, scope: !1306)
!1310 = !DILocation(line: 211, column: 10, scope: !1306)
!1311 = !DILocation(line: 212, column: 10, scope: !1306)
!1312 = !DILocation(line: 212, column: 13, scope: !1306)
!1313 = !DILocation(line: 213, column: 6, scope: !1306)
!1314 = !DILocation(line: 213, column: 16, scope: !1306)
!1315 = !DILocation(line: 213, column: 21, scope: !1306)
!1316 = !DILocation(line: 213, column: 29, scope: !1306)
!1317 = !DILocation(line: 213, column: 39, scope: !1306)
!1318 = !DILocation(line: 213, column: 44, scope: !1306)
!1319 = !DILocation(line: 210, column: 13, scope: !1296)
!1320 = !DILocation(line: 214, column: 23, scope: !1306)
!1321 = !DILocation(line: 214, column: 6, scope: !1306)
!1322 = !DILocation(line: 216, column: 23, scope: !1235)
!1323 = !DILocation(line: 216, column: 29, scope: !1235)
!1324 = !DILocation(line: 216, column: 16, scope: !1231)
!1325 = !DILocation(line: 219, column: 24, scope: !1234)
!1326 = !DILocation(line: 219, column: 36, scope: !1234)
!1327 = !DILocation(line: 219, column: 8, scope: !1234)
!1328 = !DILocation(line: 0, scope: !1234)
!1329 = !DILocation(line: 220, column: 19, scope: !1234)
!1330 = !DILocation(line: 222, column: 26, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 222, column: 8)
!1332 = !DILocation(line: 222, column: 17, scope: !1331)
!1333 = !DILocation(line: 223, column: 8, scope: !1331)
!1334 = !DILocation(line: 224, column: 12, scope: !1331)
!1335 = !DILocation(line: 225, column: 6, scope: !1331)
!1336 = !DILocation(line: 226, column: 21, scope: !1234)
!1337 = !DILocation(line: 226, column: 4, scope: !1234)
!1338 = !DILocation(line: 227, column: 2, scope: !1234)
!1339 = !DILocation(line: 230, column: 20, scope: !1225)
!1340 = !DILocation(line: 231, column: 18, scope: !1225)
!1341 = !DILocation(line: 232, column: 18, scope: !1239)
!1342 = !DILocation(line: 232, column: 23, scope: !1239)
!1343 = !DILocation(line: 232, column: 11, scope: !1225)
!1344 = !DILocation(line: 234, column: 4, scope: !1238)
!1345 = !DILocation(line: 235, column: 4, scope: !1238)
!1346 = !DILocation(line: 237, column: 29, scope: !1238)
!1347 = !DILocation(line: 237, column: 4, scope: !1238)
!1348 = !DILocation(line: 238, column: 29, scope: !1238)
!1349 = !DILocation(line: 238, column: 4, scope: !1238)
!1350 = !DILocation(line: 239, column: 35, scope: !1238)
!1351 = !DILocation(line: 239, column: 4, scope: !1238)
!1352 = !DILocation(line: 240, column: 8, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 240, column: 8)
!1354 = !DILocation(line: 0, scope: !1353)
!1355 = !DILocation(line: 240, column: 8, scope: !1238)
!1356 = !DILocation(line: 241, column: 43, scope: !1353)
!1357 = !DILocation(line: 241, column: 6, scope: !1353)
!1358 = !DILocation(line: 243, column: 33, scope: !1353)
!1359 = !DILocation(line: 243, column: 6, scope: !1353)
!1360 = !DILocation(line: 244, column: 18, scope: !1238)
!1361 = !DILocation(line: 246, column: 2, scope: !1239)
!1362 = !DILocation(line: 246, column: 2, scope: !1238)
!1363 = !DILocation(line: 247, column: 28, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 247, column: 16)
!1365 = !DILocation(line: 247, column: 16, scope: !1239)
!1366 = !DILocation(line: 249, column: 29, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 248, column: 2)
!1368 = !DILocation(line: 249, column: 4, scope: !1367)
!1369 = !DILocation(line: 251, column: 2, scope: !1367)
!1370 = !DILocation(line: 253, column: 33, scope: !1364)
!1371 = !DILocation(line: 253, column: 2, scope: !1364)
!1372 = !DILocation(line: 0, scope: !1239)
!1373 = !DILocation(line: 255, column: 18, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 255, column: 11)
!1375 = !DILocation(line: 255, column: 23, scope: !1374)
!1376 = !DILocation(line: 255, column: 11, scope: !1225)
!1377 = !DILocation(line: 256, column: 39, scope: !1374)
!1378 = !DILocation(line: 256, column: 60, scope: !1374)
!1379 = !DILocation(line: 256, column: 45, scope: !1374)
!1380 = !DILocation(line: 256, column: 2, scope: !1374)
!1381 = !DILocation(line: 257, column: 5, scope: !1226)
!1382 = !DILocation(line: 258, column: 1, scope: !1218)
!1383 = distinct !DISubprogram(name: "dump_macro", scope: !3, file: !3, line: 604, type: !1384, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1386)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!45, !623, !146, !49}
!1386 = !{!1387, !1388, !1389}
!1387 = !DILocalVariable(name: "pfile", arg: 1, scope: !1383, file: !3, line: 604, type: !623)
!1388 = !DILocalVariable(name: "node", arg: 2, scope: !1383, file: !3, line: 604, type: !146)
!1389 = !DILocalVariable(name: "v", arg: 3, scope: !1383, file: !3, line: 604, type: !49)
!1390 = !DILocation(line: 0, scope: !1383)
!1391 = !DILocation(line: 606, column: 13, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 606, column: 7)
!1393 = !DILocation(line: 606, column: 18, scope: !1392)
!1394 = !DILocation(line: 606, column: 30, scope: !1392)
!1395 = !DILocation(line: 606, column: 47, scope: !1392)
!1396 = !DILocation(line: 606, column: 7, scope: !1383)
!1397 = !DILocation(line: 608, column: 32, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 607, column: 5)
!1399 = !DILocation(line: 608, column: 7, scope: !1398)
!1400 = !DILocation(line: 609, column: 29, scope: !1398)
!1401 = !DILocation(line: 610, column: 13, scope: !1398)
!1402 = !DILocation(line: 609, column: 7, scope: !1398)
!1403 = !DILocation(line: 611, column: 25, scope: !1398)
!1404 = !DILocation(line: 611, column: 7, scope: !1398)
!1405 = !DILocation(line: 612, column: 21, scope: !1398)
!1406 = !DILocation(line: 613, column: 5, scope: !1398)
!1407 = !DILocation(line: 615, column: 3, scope: !1383)
!1408 = distinct !DISubprogram(name: "init_pp_output", scope: !3, file: !3, line: 117, type: !1409, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1411)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{null, !69}
!1411 = !{!1412, !1413}
!1412 = !DILocalVariable(name: "out_stream", arg: 1, scope: !1408, file: !3, line: 117, type: !69)
!1413 = !DILocalVariable(name: "cb", scope: !1408, file: !3, line: 119, type: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_callbacks", file: !6, line: 38, baseType: !922)
!1416 = !DILocation(line: 0, scope: !1408)
!1417 = !DILocation(line: 119, column: 42, scope: !1408)
!1418 = !DILocation(line: 119, column: 23, scope: !1408)
!1419 = !DILocation(line: 121, column: 8, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 121, column: 7)
!1421 = !DILocation(line: 121, column: 7, scope: !1408)
!1422 = !DILocation(line: 123, column: 11, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 122, column: 5)
!1424 = !DILocation(line: 123, column: 23, scope: !1423)
!1425 = !DILocation(line: 126, column: 28, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 126, column: 11)
!1427 = !DILocation(line: 126, column: 11, scope: !1426)
!1428 = !DILocation(line: 126, column: 39, scope: !1426)
!1429 = !DILocation(line: 126, column: 44, scope: !1426)
!1430 = !DILocation(line: 126, column: 11, scope: !1423)
!1431 = !DILocation(line: 128, column: 8, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 127, column: 2)
!1433 = !DILocation(line: 128, column: 19, scope: !1432)
!1434 = !DILocation(line: 129, column: 8, scope: !1432)
!1435 = !DILocation(line: 129, column: 19, scope: !1432)
!1436 = !DILocation(line: 130, column: 2, scope: !1432)
!1437 = !DILocation(line: 133, column: 7, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 133, column: 7)
!1439 = !DILocation(line: 133, column: 7, scope: !1408)
!1440 = !DILocation(line: 134, column: 9, scope: !1438)
!1441 = !DILocation(line: 134, column: 18, scope: !1438)
!1442 = !DILocation(line: 134, column: 5, scope: !1438)
!1443 = !DILocation(line: 136, column: 7, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 136, column: 7)
!1445 = !DILocation(line: 136, column: 7, scope: !1408)
!1446 = !DILocation(line: 138, column: 11, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 137, column: 5)
!1448 = !DILocation(line: 138, column: 21, scope: !1447)
!1449 = !DILocation(line: 139, column: 11, scope: !1447)
!1450 = !DILocation(line: 139, column: 20, scope: !1447)
!1451 = !DILocation(line: 140, column: 5, scope: !1447)
!1452 = !DILocation(line: 142, column: 7, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 142, column: 7)
!1454 = !DILocation(line: 142, column: 24, scope: !1453)
!1455 = !DILocation(line: 142, column: 31, scope: !1453)
!1456 = !DILocation(line: 142, column: 51, scope: !1453)
!1457 = !DILocation(line: 142, column: 7, scope: !1408)
!1458 = !DILocation(line: 144, column: 11, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 143, column: 5)
!1460 = !DILocation(line: 144, column: 18, scope: !1459)
!1461 = !DILocation(line: 145, column: 11, scope: !1459)
!1462 = !DILocation(line: 145, column: 18, scope: !1459)
!1463 = !DILocation(line: 146, column: 5, scope: !1459)
!1464 = !DILocation(line: 148, column: 24, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 148, column: 7)
!1466 = !DILocation(line: 148, column: 7, scope: !1408)
!1467 = !DILocation(line: 150, column: 11, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 149, column: 5)
!1469 = !DILocation(line: 150, column: 25, scope: !1468)
!1470 = !DILocation(line: 151, column: 11, scope: !1468)
!1471 = !DILocation(line: 151, column: 23, scope: !1468)
!1472 = !DILocation(line: 152, column: 11, scope: !1468)
!1473 = !DILocation(line: 152, column: 22, scope: !1468)
!1474 = !DILocation(line: 153, column: 5, scope: !1468)
!1475 = !DILocation(line: 156, column: 18, scope: !1408)
!1476 = !DILocation(line: 157, column: 17, scope: !1408)
!1477 = !DILocation(line: 158, column: 14, scope: !1408)
!1478 = !DILocation(line: 159, column: 14, scope: !1408)
!1479 = !DILocation(line: 160, column: 20, scope: !1408)
!1480 = !DILocation(line: 161, column: 1, scope: !1408)
!1481 = distinct !DISubprogram(name: "cb_line_change", scope: !3, file: !3, line: 405, type: !926, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1482)
!1482 = !{!1483, !1484, !1485}
!1483 = !DILocalVariable(name: "pfile", arg: 1, scope: !1481, file: !3, line: 405, type: !623)
!1484 = !DILocalVariable(name: "token", arg: 2, scope: !1481, file: !3, line: 405, type: !129)
!1485 = !DILocalVariable(name: "parsing_args", arg: 3, scope: !1481, file: !3, line: 406, type: !45)
!1486 = !DILocation(line: 0, scope: !1481)
!1487 = !DILocation(line: 408, column: 40, scope: !1481)
!1488 = !DILocation(line: 408, column: 3, scope: !1481)
!1489 = !DILocation(line: 409, column: 1, scope: !1481)
!1490 = distinct !DISubprogram(name: "cb_ident", scope: !3, file: !3, line: 412, type: !1491, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !623, !135, !951}
!1493 = !{!1494, !1495, !1496}
!1494 = !DILocalVariable(name: "pfile", arg: 1, scope: !1490, file: !3, line: 412, type: !623)
!1495 = !DILocalVariable(name: "line", arg: 2, scope: !1490, file: !3, line: 412, type: !135)
!1496 = !DILocalVariable(name: "str", arg: 3, scope: !1490, file: !3, line: 413, type: !951)
!1497 = !DILocation(line: 0, scope: !1490)
!1498 = !DILocation(line: 415, column: 3, scope: !1490)
!1499 = !DILocation(line: 416, column: 18, scope: !1490)
!1500 = !DILocation(line: 416, column: 44, scope: !1490)
!1501 = !DILocation(line: 416, column: 3, scope: !1490)
!1502 = !DILocation(line: 417, column: 17, scope: !1490)
!1503 = !DILocation(line: 418, column: 1, scope: !1490)
!1504 = distinct !DISubprogram(name: "cb_def_pragma", scope: !3, file: !3, line: 594, type: !1505, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !623, !135}
!1507 = !{!1508, !1509}
!1508 = !DILocalVariable(name: "pfile", arg: 1, scope: !1504, file: !3, line: 594, type: !623)
!1509 = !DILocalVariable(name: "line", arg: 2, scope: !1504, file: !3, line: 594, type: !135)
!1510 = !DILocation(line: 0, scope: !1504)
!1511 = !DILocation(line: 596, column: 3, scope: !1504)
!1512 = !DILocation(line: 597, column: 28, scope: !1504)
!1513 = !DILocation(line: 597, column: 3, scope: !1504)
!1514 = !DILocation(line: 598, column: 33, scope: !1504)
!1515 = !DILocation(line: 598, column: 3, scope: !1504)
!1516 = !DILocation(line: 599, column: 17, scope: !1504)
!1517 = !DILocation(line: 600, column: 1, scope: !1504)
!1518 = distinct !DISubprogram(name: "cb_include", scope: !3, file: !3, line: 512, type: !1519, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1521)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !623, !135, !52, !50, !45, !777}
!1521 = !{!1522, !1523, !1524, !1525, !1526, !1527}
!1522 = !DILocalVariable(name: "pfile", arg: 1, scope: !1518, file: !3, line: 512, type: !623)
!1523 = !DILocalVariable(name: "line", arg: 2, scope: !1518, file: !3, line: 512, type: !135)
!1524 = !DILocalVariable(name: "dir", arg: 3, scope: !1518, file: !3, line: 513, type: !52)
!1525 = !DILocalVariable(name: "header", arg: 4, scope: !1518, file: !3, line: 513, type: !50)
!1526 = !DILocalVariable(name: "angle_brackets", arg: 5, scope: !1518, file: !3, line: 513, type: !45)
!1527 = !DILocalVariable(name: "comments", arg: 6, scope: !1518, file: !3, line: 514, type: !777)
!1528 = !DILocation(line: 0, scope: !1518)
!1529 = !DILocation(line: 516, column: 3, scope: !1518)
!1530 = !DILocation(line: 517, column: 7, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 517, column: 7)
!1532 = !DILocation(line: 0, scope: !1531)
!1533 = !DILocation(line: 517, column: 7, scope: !1518)
!1534 = !DILocation(line: 518, column: 5, scope: !1531)
!1535 = !DILocation(line: 520, column: 5, scope: !1531)
!1536 = !DILocation(line: 522, column: 16, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 522, column: 7)
!1538 = !DILocation(line: 522, column: 7, scope: !1518)
!1539 = !DILocation(line: 524, column: 7, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 523, column: 5)
!1541 = !DILocation(line: 524, column: 14, scope: !1540)
!1542 = !DILocation(line: 524, column: 24, scope: !1540)
!1543 = !DILocation(line: 526, column: 21, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 526, column: 8)
!1545 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 525, column: 2)
!1546 = !DILocation(line: 526, column: 27, scope: !1544)
!1547 = !DILocation(line: 526, column: 8, scope: !1545)
!1548 = !DILocation(line: 527, column: 23, scope: !1544)
!1549 = !DILocation(line: 527, column: 6, scope: !1544)
!1550 = !DILocation(line: 528, column: 22, scope: !1545)
!1551 = !DILocation(line: 528, column: 39, scope: !1545)
!1552 = !DILocation(line: 528, column: 4, scope: !1545)
!1553 = !DILocation(line: 529, column: 4, scope: !1545)
!1554 = distinct !{!1554, !1539, !1555}
!1555 = !DILocation(line: 530, column: 2, scope: !1540)
!1556 = !DILocation(line: 533, column: 21, scope: !1518)
!1557 = !DILocation(line: 533, column: 3, scope: !1518)
!1558 = !DILocation(line: 534, column: 17, scope: !1518)
!1559 = !DILocation(line: 535, column: 1, scope: !1518)
!1560 = distinct !DISubprogram(name: "cb_read_pch", scope: !3, file: !3, line: 623, type: !964, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1561)
!1561 = !{!1562, !1563, !1564, !1565}
!1562 = !DILocalVariable(name: "pfile", arg: 1, scope: !1560, file: !3, line: 623, type: !623)
!1563 = !DILocalVariable(name: "name", arg: 2, scope: !1560, file: !3, line: 623, type: !50)
!1564 = !DILocalVariable(name: "fd", arg: 3, scope: !1560, file: !3, line: 624, type: !45)
!1565 = !DILocalVariable(name: "orig_name", arg: 4, scope: !1560, file: !3, line: 624, type: !50)
!1566 = !DILocation(line: 0, scope: !1560)
!1567 = !DILocation(line: 626, column: 3, scope: !1560)
!1568 = !DILocation(line: 628, column: 18, scope: !1560)
!1569 = !DILocation(line: 628, column: 3, scope: !1560)
!1570 = !DILocation(line: 629, column: 17, scope: !1560)
!1571 = !DILocation(line: 630, column: 1, scope: !1560)
!1572 = distinct !DISubprogram(name: "cb_define", scope: !3, file: !3, line: 421, type: !993, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1573)
!1573 = !{!1574, !1575, !1576}
!1574 = !DILocalVariable(name: "pfile", arg: 1, scope: !1572, file: !3, line: 421, type: !623)
!1575 = !DILocalVariable(name: "line", arg: 2, scope: !1572, file: !3, line: 421, type: !135)
!1576 = !DILocalVariable(name: "node", arg: 3, scope: !1572, file: !3, line: 421, type: !146)
!1577 = !DILocation(line: 0, scope: !1572)
!1578 = !DILocation(line: 423, column: 3, scope: !1572)
!1579 = !DILocation(line: 424, column: 28, scope: !1572)
!1580 = !DILocation(line: 424, column: 3, scope: !1572)
!1581 = !DILocation(line: 427, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 427, column: 7)
!1583 = !DILocation(line: 427, column: 24, scope: !1582)
!1584 = !DILocation(line: 427, column: 7, scope: !1572)
!1585 = !DILocation(line: 428, column: 27, scope: !1582)
!1586 = !DILocation(line: 429, column: 11, scope: !1582)
!1587 = !DILocation(line: 428, column: 5, scope: !1582)
!1588 = !DILocation(line: 431, column: 27, scope: !1582)
!1589 = !DILocation(line: 431, column: 51, scope: !1582)
!1590 = !DILocation(line: 431, column: 5, scope: !1582)
!1591 = !DILocation(line: 433, column: 21, scope: !1572)
!1592 = !DILocation(line: 433, column: 3, scope: !1572)
!1593 = !DILocation(line: 434, column: 23, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 434, column: 7)
!1595 = !DILocation(line: 434, column: 7, scope: !1594)
!1596 = !DILocation(line: 434, column: 42, scope: !1594)
!1597 = !DILocation(line: 434, column: 50, scope: !1594)
!1598 = !DILocation(line: 434, column: 7, scope: !1572)
!1599 = !DILocation(line: 435, column: 19, scope: !1594)
!1600 = !DILocation(line: 435, column: 5, scope: !1594)
!1601 = !DILocation(line: 436, column: 1, scope: !1572)
!1602 = distinct !DISubprogram(name: "cb_undef", scope: !3, file: !3, line: 439, type: !993, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1603)
!1603 = !{!1604, !1605, !1606}
!1604 = !DILocalVariable(name: "pfile", arg: 1, scope: !1602, file: !3, line: 439, type: !623)
!1605 = !DILocalVariable(name: "line", arg: 2, scope: !1602, file: !3, line: 439, type: !135)
!1606 = !DILocalVariable(name: "node", arg: 3, scope: !1602, file: !3, line: 440, type: !146)
!1607 = !DILocation(line: 0, scope: !1602)
!1608 = !DILocation(line: 442, column: 3, scope: !1602)
!1609 = !DILocation(line: 443, column: 18, scope: !1602)
!1610 = !DILocation(line: 443, column: 39, scope: !1602)
!1611 = !DILocation(line: 443, column: 3, scope: !1602)
!1612 = !DILocation(line: 444, column: 17, scope: !1602)
!1613 = !DILocation(line: 445, column: 1, scope: !1602)
!1614 = distinct !DISubprogram(name: "dump_queued_macros", scope: !3, file: !3, line: 473, type: !621, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1615)
!1615 = !{!1616, !1617, !1618, !1622}
!1616 = !DILocalVariable(name: "pfile", arg: 1, scope: !1614, file: !3, line: 473, type: !623)
!1617 = !DILocalVariable(name: "q", scope: !1614, file: !3, line: 475, type: !54)
!1618 = !DILocalVariable(name: "oq", scope: !1619, file: !3, line: 487, type: !54)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 486, column: 5)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 485, column: 3)
!1621 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 485, column: 3)
!1622 = !DILocalVariable(name: "oq", scope: !1623, file: !3, line: 500, type: !54)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 499, column: 5)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 498, column: 3)
!1625 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 498, column: 3)
!1626 = !DILocation(line: 0, scope: !1614)
!1627 = !DILocation(line: 478, column: 13, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 478, column: 7)
!1629 = !DILocation(line: 478, column: 7, scope: !1628)
!1630 = !DILocation(line: 478, column: 7, scope: !1614)
!1631 = !DILocation(line: 480, column: 25, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 479, column: 5)
!1633 = !DILocation(line: 480, column: 7, scope: !1632)
!1634 = !DILocation(line: 481, column: 21, scope: !1632)
!1635 = !DILocation(line: 482, column: 21, scope: !1632)
!1636 = !DILocation(line: 483, column: 5, scope: !1632)
!1637 = !DILocation(line: 485, column: 12, scope: !1621)
!1638 = !DILocation(line: 485, column: 8, scope: !1621)
!1639 = !DILocation(line: 0, scope: !1621)
!1640 = !DILocation(line: 485, column: 3, scope: !1621)
!1641 = !DILocation(line: 488, column: 32, scope: !1619)
!1642 = !DILocation(line: 488, column: 7, scope: !1619)
!1643 = !DILocation(line: 489, column: 17, scope: !1619)
!1644 = !DILocation(line: 489, column: 30, scope: !1619)
!1645 = !DILocation(line: 489, column: 7, scope: !1619)
!1646 = !DILocation(line: 490, column: 25, scope: !1619)
!1647 = !DILocation(line: 490, column: 7, scope: !1619)
!1648 = !DILocation(line: 491, column: 21, scope: !1619)
!1649 = !DILocation(line: 0, scope: !1619)
!1650 = !DILocation(line: 493, column: 14, scope: !1619)
!1651 = !DILocation(line: 494, column: 17, scope: !1619)
!1652 = !DILocation(line: 494, column: 7, scope: !1619)
!1653 = !DILocation(line: 495, column: 7, scope: !1619)
!1654 = !DILocation(line: 485, column: 3, scope: !1620)
!1655 = distinct !{!1655, !1640, !1656}
!1656 = !DILocation(line: 496, column: 5, scope: !1621)
!1657 = !DILocation(line: 497, column: 16, scope: !1614)
!1658 = !DILocation(line: 498, column: 12, scope: !1625)
!1659 = !DILocation(line: 498, column: 8, scope: !1625)
!1660 = !DILocation(line: 0, scope: !1625)
!1661 = !DILocation(line: 498, column: 3, scope: !1625)
!1662 = !DILocation(line: 501, column: 22, scope: !1623)
!1663 = !DILocation(line: 501, column: 46, scope: !1623)
!1664 = !DILocation(line: 501, column: 7, scope: !1623)
!1665 = !DILocation(line: 502, column: 21, scope: !1623)
!1666 = !DILocation(line: 0, scope: !1623)
!1667 = !DILocation(line: 504, column: 14, scope: !1623)
!1668 = !DILocation(line: 505, column: 17, scope: !1623)
!1669 = !DILocation(line: 505, column: 7, scope: !1623)
!1670 = !DILocation(line: 506, column: 7, scope: !1623)
!1671 = !DILocation(line: 498, column: 3, scope: !1624)
!1672 = distinct !{!1672, !1661, !1673}
!1673 = !DILocation(line: 507, column: 5, scope: !1625)
!1674 = !DILocation(line: 508, column: 15, scope: !1614)
!1675 = !DILocation(line: 509, column: 1, scope: !1614)
!1676 = distinct !DISubprogram(name: "cb_used_define", scope: !3, file: !3, line: 448, type: !993, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1677)
!1677 = !{!1678, !1679, !1680, !1681}
!1678 = !DILocalVariable(name: "pfile", arg: 1, scope: !1676, file: !3, line: 448, type: !623)
!1679 = !DILocalVariable(name: "line", arg: 2, scope: !1676, file: !3, line: 448, type: !135)
!1680 = !DILocalVariable(name: "node", arg: 3, scope: !1676, file: !3, line: 449, type: !146)
!1681 = !DILocalVariable(name: "q", scope: !1676, file: !3, line: 451, type: !54)
!1682 = !DILocation(line: 0, scope: !1676)
!1683 = !DILocation(line: 452, column: 13, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 452, column: 7)
!1685 = !DILocation(line: 452, column: 19, scope: !1684)
!1686 = !DILocation(line: 452, column: 7, scope: !1676)
!1687 = !DILocation(line: 454, column: 7, scope: !1676)
!1688 = !DILocation(line: 455, column: 38, scope: !1676)
!1689 = !DILocation(line: 455, column: 14, scope: !1676)
!1690 = !DILocation(line: 455, column: 6, scope: !1676)
!1691 = !DILocation(line: 455, column: 12, scope: !1676)
!1692 = !DILocation(line: 456, column: 13, scope: !1676)
!1693 = !DILocation(line: 456, column: 11, scope: !1676)
!1694 = !DILocation(line: 457, column: 16, scope: !1676)
!1695 = !DILocation(line: 458, column: 1, scope: !1676)
!1696 = distinct !DISubprogram(name: "cb_used_undef", scope: !3, file: !3, line: 461, type: !993, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1697)
!1697 = !{!1698, !1699, !1700, !1701}
!1698 = !DILocalVariable(name: "pfile", arg: 1, scope: !1696, file: !3, line: 461, type: !623)
!1699 = !DILocalVariable(name: "line", arg: 2, scope: !1696, file: !3, line: 462, type: !135)
!1700 = !DILocalVariable(name: "node", arg: 3, scope: !1696, file: !3, line: 463, type: !146)
!1701 = !DILocalVariable(name: "q", scope: !1696, file: !3, line: 465, type: !54)
!1702 = !DILocation(line: 0, scope: !1696)
!1703 = !DILocation(line: 466, column: 7, scope: !1696)
!1704 = !DILocation(line: 467, column: 38, scope: !1696)
!1705 = !DILocation(line: 467, column: 14, scope: !1696)
!1706 = !DILocation(line: 467, column: 6, scope: !1696)
!1707 = !DILocation(line: 467, column: 12, scope: !1696)
!1708 = !DILocation(line: 468, column: 13, scope: !1696)
!1709 = !DILocation(line: 468, column: 11, scope: !1696)
!1710 = !DILocation(line: 469, column: 15, scope: !1696)
!1711 = !DILocation(line: 470, column: 1, scope: !1696)
!1712 = distinct !DISubprogram(name: "pp_dir_change", scope: !3, file: !3, line: 541, type: !936, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1713)
!1713 = !{!1714, !1715, !1716, !1717, !1718}
!1714 = !DILocalVariable(name: "pfile", arg: 1, scope: !1712, file: !3, line: 541, type: !623)
!1715 = !DILocalVariable(name: "dir", arg: 2, scope: !1712, file: !3, line: 541, type: !50)
!1716 = !DILocalVariable(name: "to_file_len", scope: !1712, file: !3, line: 543, type: !120)
!1717 = !DILocalVariable(name: "to_file_quoted", scope: !1712, file: !3, line: 544, type: !43)
!1718 = !DILocalVariable(name: "p", scope: !1712, file: !3, line: 546, type: !43)
!1719 = !DILocation(line: 0, scope: !1712)
!1720 = !DILocation(line: 543, column: 24, scope: !1712)
!1721 = !DILocation(line: 545, column: 24, scope: !1712)
!1722 = !DILocation(line: 549, column: 70, scope: !1712)
!1723 = !DILocation(line: 549, column: 7, scope: !1712)
!1724 = !DILocation(line: 550, column: 6, scope: !1712)
!1725 = !DILocation(line: 551, column: 18, scope: !1712)
!1726 = !DILocation(line: 551, column: 3, scope: !1712)
!1727 = !DILocation(line: 552, column: 1, scope: !1712)
!1728 = distinct !DISubprogram(name: "pp_file_change", scope: !3, file: !3, line: 558, type: !1729, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1731)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !932}
!1731 = !{!1732, !1733, !1734}
!1732 = !DILocalVariable(name: "map", arg: 1, scope: !1728, file: !3, line: 558, type: !932)
!1733 = !DILocalVariable(name: "flags", scope: !1728, file: !3, line: 560, type: !50)
!1734 = !DILocalVariable(name: "from", scope: !1735, file: !3, line: 580, type: !932)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 579, column: 6)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 578, column: 8)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 576, column: 2)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 568, column: 11)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 566, column: 5)
!1740 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 565, column: 7)
!1741 = !DILocation(line: 0, scope: !1728)
!1742 = !DILocation(line: 562, column: 7, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 562, column: 7)
!1744 = !DILocation(line: 565, column: 11, scope: !1740)
!1745 = !DILocation(line: 562, column: 7, scope: !1728)
!1746 = !DILocation(line: 567, column: 29, scope: !1739)
!1747 = !DILocation(line: 567, column: 22, scope: !1739)
!1748 = !DILocation(line: 568, column: 17, scope: !1738)
!1749 = !DILocation(line: 568, column: 11, scope: !1738)
!1750 = !DILocation(line: 568, column: 11, scope: !1739)
!1751 = !DILocation(line: 571, column: 26, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 571, column: 8)
!1753 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 569, column: 2)
!1754 = !DILocation(line: 571, column: 9, scope: !1752)
!1755 = !DILocation(line: 571, column: 37, scope: !1752)
!1756 = !DILocation(line: 571, column: 8, scope: !1753)
!1757 = !DILocation(line: 572, column: 23, scope: !1752)
!1758 = !DILocation(line: 572, column: 6, scope: !1752)
!1759 = !DILocation(line: 573, column: 21, scope: !1753)
!1760 = !DILocation(line: 574, column: 2, scope: !1753)
!1761 = !DILocation(line: 578, column: 13, scope: !1736)
!1762 = !DILocation(line: 578, column: 20, scope: !1736)
!1763 = !DILocation(line: 578, column: 8, scope: !1737)
!1764 = !DILocation(line: 580, column: 38, scope: !1735)
!1765 = !DILocation(line: 0, scope: !1735)
!1766 = !DILocation(line: 581, column: 26, scope: !1735)
!1767 = !DILocation(line: 581, column: 8, scope: !1735)
!1768 = !DILocation(line: 583, column: 13, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 583, column: 8)
!1770 = !DILocation(line: 582, column: 6, scope: !1735)
!1771 = !DILocation(line: 583, column: 20, scope: !1769)
!1772 = !DILocation(line: 583, column: 8, scope: !1737)
!1773 = !DILocation(line: 585, column: 25, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 585, column: 13)
!1775 = !DILocation(line: 585, column: 13, scope: !1769)
!1776 = !DILocation(line: 0, scope: !1769)
!1777 = !DILocation(line: 587, column: 21, scope: !1737)
!1778 = !DILocation(line: 587, column: 4, scope: !1737)
!1779 = !DILocation(line: 590, column: 1, scope: !1728)
!1780 = distinct !DISubprogram(name: "print_line", scope: !3, file: !3, line: 335, type: !1781, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1783)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{null, !135, !50}
!1783 = !{!1784, !1785, !1786, !1789, !1790, !1791}
!1784 = !DILocalVariable(name: "src_loc", arg: 1, scope: !1780, file: !3, line: 335, type: !135)
!1785 = !DILocalVariable(name: "special_flags", arg: 2, scope: !1780, file: !3, line: 335, type: !50)
!1786 = !DILocalVariable(name: "map", scope: !1787, file: !3, line: 344, type: !932)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 343, column: 5)
!1788 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 342, column: 7)
!1789 = !DILocalVariable(name: "to_file_len", scope: !1787, file: !3, line: 346, type: !120)
!1790 = !DILocalVariable(name: "to_file_quoted", scope: !1787, file: !3, line: 347, type: !43)
!1791 = !DILocalVariable(name: "p", scope: !1787, file: !3, line: 349, type: !43)
!1792 = !DILocation(line: 0, scope: !1780)
!1793 = !DILocation(line: 338, column: 13, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 338, column: 7)
!1795 = !DILocation(line: 338, column: 7, scope: !1794)
!1796 = !DILocation(line: 338, column: 7, scope: !1780)
!1797 = !DILocation(line: 339, column: 23, scope: !1794)
!1798 = !DILocation(line: 339, column: 5, scope: !1794)
!1799 = !DILocation(line: 340, column: 17, scope: !1780)
!1800 = !DILocation(line: 342, column: 8, scope: !1788)
!1801 = !DILocation(line: 342, column: 7, scope: !1780)
!1802 = !DILocation(line: 344, column: 52, scope: !1787)
!1803 = !DILocation(line: 344, column: 36, scope: !1787)
!1804 = !DILocation(line: 0, scope: !1787)
!1805 = !DILocation(line: 346, column: 41, scope: !1787)
!1806 = !DILocation(line: 346, column: 28, scope: !1787)
!1807 = !DILocation(line: 348, column: 28, scope: !1787)
!1808 = !DILocation(line: 351, column: 24, scope: !1787)
!1809 = !DILocation(line: 351, column: 22, scope: !1787)
!1810 = !DILocation(line: 356, column: 37, scope: !1787)
!1811 = !DILocation(line: 356, column: 46, scope: !1787)
!1812 = !DILocation(line: 355, column: 11, scope: !1787)
!1813 = !DILocation(line: 357, column: 10, scope: !1787)
!1814 = !DILocation(line: 358, column: 22, scope: !1787)
!1815 = !DILocation(line: 359, column: 15, scope: !1787)
!1816 = !DILocation(line: 359, column: 24, scope: !1787)
!1817 = !DILocation(line: 359, column: 9, scope: !1787)
!1818 = !DILocation(line: 358, column: 7, scope: !1787)
!1819 = !DILocation(line: 362, column: 16, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 362, column: 11)
!1821 = !DILocation(line: 362, column: 21, scope: !1820)
!1822 = !DILocation(line: 362, column: 11, scope: !1787)
!1823 = !DILocation(line: 363, column: 23, scope: !1820)
!1824 = !DILocation(line: 363, column: 2, scope: !1820)
!1825 = !DILocation(line: 364, column: 26, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 364, column: 16)
!1827 = !DILocation(line: 364, column: 16, scope: !1820)
!1828 = !DILocation(line: 365, column: 21, scope: !1826)
!1829 = !DILocation(line: 365, column: 2, scope: !1826)
!1830 = !DILocation(line: 367, column: 25, scope: !1787)
!1831 = !DILocation(line: 367, column: 7, scope: !1787)
!1832 = !DILocation(line: 368, column: 5, scope: !1787)
!1833 = !DILocation(line: 369, column: 1, scope: !1780)
!1834 = distinct !DISubprogram(name: "maybe_print_line", scope: !3, file: !3, line: 308, type: !1208, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1835)
!1835 = !{!1836, !1837, !1838}
!1836 = !DILocalVariable(name: "src_loc", arg: 1, scope: !1834, file: !3, line: 308, type: !135)
!1837 = !DILocalVariable(name: "map", scope: !1834, file: !3, line: 310, type: !932)
!1838 = !DILocalVariable(name: "src_line", scope: !1834, file: !3, line: 311, type: !45)
!1839 = !DILocation(line: 0, scope: !1834)
!1840 = !DILocation(line: 310, column: 48, scope: !1834)
!1841 = !DILocation(line: 310, column: 32, scope: !1834)
!1842 = !DILocation(line: 311, column: 18, scope: !1834)
!1843 = !DILocation(line: 313, column: 13, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 313, column: 7)
!1845 = !DILocation(line: 313, column: 7, scope: !1844)
!1846 = !DILocation(line: 313, column: 7, scope: !1834)
!1847 = !DILocation(line: 320, column: 25, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 320, column: 7)
!1849 = !DILocation(line: 315, column: 25, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 314, column: 5)
!1851 = !DILocation(line: 315, column: 7, scope: !1850)
!1852 = !DILocation(line: 316, column: 21, scope: !1850)
!1853 = !DILocation(line: 317, column: 21, scope: !1850)
!1854 = !DILocation(line: 318, column: 5, scope: !1850)
!1855 = !DILocation(line: 320, column: 16, scope: !1848)
!1856 = !DILocation(line: 320, column: 34, scope: !1848)
!1857 = !DILocation(line: 320, column: 63, scope: !1848)
!1858 = !DILocation(line: 320, column: 46, scope: !1848)
!1859 = !DILocation(line: 320, column: 7, scope: !1834)
!1860 = !DILocation(line: 322, column: 7, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 321, column: 5)
!1862 = !DILocation(line: 322, column: 31, scope: !1861)
!1863 = !DILocation(line: 322, column: 23, scope: !1861)
!1864 = !DILocation(line: 324, column: 22, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 323, column: 2)
!1866 = !DILocation(line: 324, column: 4, scope: !1865)
!1867 = !DILocation(line: 325, column: 18, scope: !1865)
!1868 = distinct !{!1868, !1860, !1869}
!1869 = !DILocation(line: 326, column: 2, scope: !1861)
!1870 = !DILocation(line: 329, column: 5, scope: !1848)
!1871 = !DILocation(line: 330, column: 1, scope: !1834)
!1872 = distinct !DISubprogram(name: "do_line_change", scope: !3, file: !3, line: 373, type: !1873, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !623, !129, !135, !45}
!1875 = !{!1876, !1877, !1878, !1879, !1880, !1883}
!1876 = !DILocalVariable(name: "pfile", arg: 1, scope: !1872, file: !3, line: 373, type: !623)
!1877 = !DILocalVariable(name: "token", arg: 2, scope: !1872, file: !3, line: 373, type: !129)
!1878 = !DILocalVariable(name: "src_loc", arg: 3, scope: !1872, file: !3, line: 374, type: !135)
!1879 = !DILocalVariable(name: "parsing_args", arg: 4, scope: !1872, file: !3, line: 374, type: !45)
!1880 = !DILocalVariable(name: "map", scope: !1881, file: !3, line: 393, type: !932)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 392, column: 5)
!1882 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 391, column: 7)
!1883 = !DILocalVariable(name: "spaces", scope: !1881, file: !3, line: 394, type: !45)
!1884 = !DILocation(line: 0, scope: !1872)
!1885 = !DILocation(line: 376, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 376, column: 7)
!1887 = !DILocation(line: 376, column: 23, scope: !1886)
!1888 = !DILocation(line: 376, column: 20, scope: !1886)
!1889 = !DILocation(line: 377, column: 5, scope: !1886)
!1890 = !DILocation(line: 379, column: 14, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 379, column: 7)
!1892 = !DILocation(line: 379, column: 19, scope: !1891)
!1893 = !DILocation(line: 379, column: 33, scope: !1891)
!1894 = !DILocation(line: 379, column: 30, scope: !1891)
!1895 = !DILocation(line: 382, column: 3, scope: !1872)
!1896 = !DILocation(line: 383, column: 14, scope: !1872)
!1897 = !DILocation(line: 384, column: 16, scope: !1872)
!1898 = !DILocation(line: 391, column: 8, scope: !1882)
!1899 = !DILocation(line: 391, column: 7, scope: !1872)
!1900 = !DILocation(line: 393, column: 52, scope: !1881)
!1901 = !DILocation(line: 393, column: 36, scope: !1881)
!1902 = !DILocation(line: 0, scope: !1881)
!1903 = !DILocation(line: 394, column: 20, scope: !1881)
!1904 = !DILocation(line: 394, column: 49, scope: !1881)
!1905 = !DILocation(line: 395, column: 21, scope: !1881)
!1906 = !DILocation(line: 397, column: 7, scope: !1881)
!1907 = !DILocation(line: 397, column: 24, scope: !1881)
!1908 = !DILocation(line: 397, column: 14, scope: !1881)
!1909 = !DILocation(line: 398, column: 19, scope: !1881)
!1910 = !DILocation(line: 398, column: 2, scope: !1881)
!1911 = distinct !{!1911, !1906, !1912}
!1912 = !DILocation(line: 398, column: 23, scope: !1881)
!1913 = !DILocation(line: 400, column: 1, scope: !1872)
!1914 = distinct !DISubprogram(name: "account_for_newlines", scope: !3, file: !3, line: 282, type: !1915, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1917)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{null, !52, !120}
!1917 = !{!1918, !1919}
!1918 = !DILocalVariable(name: "str", arg: 1, scope: !1914, file: !3, line: 282, type: !52)
!1919 = !DILocalVariable(name: "len", arg: 2, scope: !1914, file: !3, line: 282, type: !120)
!1920 = !DILocation(line: 0, scope: !1914)
!1921 = !DILocation(line: 284, column: 3, scope: !1914)
!1922 = !DILocation(line: 284, column: 13, scope: !1914)
!1923 = !DILocation(line: 285, column: 13, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 285, column: 9)
!1925 = !DILocation(line: 285, column: 9, scope: !1924)
!1926 = !DILocation(line: 285, column: 16, scope: !1924)
!1927 = !DILocation(line: 285, column: 9, scope: !1914)
!1928 = !DILocation(line: 286, column: 21, scope: !1924)
!1929 = !DILocation(line: 286, column: 7, scope: !1924)
!1930 = distinct !{!1930, !1921, !1931}
!1931 = !DILocation(line: 286, column: 21, scope: !1914)
!1932 = !DILocation(line: 287, column: 1, scope: !1914)
!1933 = distinct !DISubprogram(name: "print_lines_directives_only", scope: !3, file: !3, line: 261, type: !1204, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1934)
!1934 = !{!1935, !1936, !1937}
!1935 = !DILocalVariable(name: "lines", arg: 1, scope: !1933, file: !3, line: 261, type: !45)
!1936 = !DILocalVariable(name: "buf", arg: 2, scope: !1933, file: !3, line: 261, type: !368)
!1937 = !DILocalVariable(name: "size", arg: 3, scope: !1933, file: !3, line: 261, type: !120)
!1938 = !DILocation(line: 0, scope: !1933)
!1939 = !DILocation(line: 263, column: 18, scope: !1933)
!1940 = !DILocation(line: 264, column: 31, scope: !1933)
!1941 = !DILocation(line: 264, column: 3, scope: !1933)
!1942 = !DILocation(line: 265, column: 1, scope: !1933)
