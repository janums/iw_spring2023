; ModuleID = 'cpp_init.bc'
source_filename = "cpp_init.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lang_flags = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.builtin_operator = type { i8*, i16, i16 }
%struct.builtin_macro = type { i8*, i16, i16, i8 }
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
%struct.htab = type opaque
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { i8*, i32, i32 }
%union._cpp_hashnode_value = type { %struct.cpp_macro* }
%struct.cpp_macro = type { %struct.cpp_hashnode**, %union.cpp_macro_u, i32, i32, i16, i8 }
%union.cpp_macro_u = type { %struct.cpp_token* }
%struct.tokenrun = type { %struct.tokenrun*, %struct.tokenrun*, %struct.cpp_token*, %struct.cpp_token* }
%struct.cset_converter = type { i8 (i8*, i8*, i64, %struct._cpp_strbuf*)*, i8*, i32 }
%struct._cpp_strbuf = type opaque
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, i8* }
%struct.deps = type opaque
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.pragma_entry = type opaque
%struct.cpp_callbacks = type { void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, i8*)*, void (%struct.cpp_reader*, i32, i8*, i8*, i32, %struct.cpp_token**)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32)*, i32 (%struct.cpp_reader*, i8*, i32)*, void (%struct.cpp_reader*, i8*, i32, i8*)*, i8* (%struct.cpp_reader*, i8*, %struct.cpp_dir**)*, %struct.cpp_hashnode* (%struct.cpp_reader*, %struct.cpp_token*)*, i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@_cpp_trigraph_map = dso_local local_unnamed_addr constant <{ [63 x i8], [193 x i8] }> <{ [63 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00|\00\00\00\00\00^[]\00\00\00~\00\5C\00\00\00\00\00\00\00\00\00\00\00\00{#}", [193 x i8] zeroinitializer }>, align 16, !dbg !0
@lang_defaults = internal unnamed_addr constant [10 x %struct.lang_flags] [%struct.lang_flags { i8 0, i8 0, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0 }, %struct.lang_flags { i8 1, i8 0, i8 1, i8 0, i8 0, i8 1, i8 1, i8 1 }, %struct.lang_flags { i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0 }, %struct.lang_flags { i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0 }, %struct.lang_flags { i8 1, i8 0, i8 1, i8 0, i8 1, i8 1, i8 1, i8 0 }, %struct.lang_flags { i8 0, i8 1, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0 }, %struct.lang_flags { i8 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1, i8 0 }, %struct.lang_flags { i8 1, i8 1, i8 1, i8 0, i8 0, i8 1, i8 1, i8 1 }, %struct.lang_flags { i8 1, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1, i8 1 }, %struct.lang_flags { i8 0, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0 }], align 16, !dbg !705
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@operator_array = internal constant [11 x %struct.builtin_operator] [%struct.builtin_operator { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i16 3, i16 15 }, %struct.builtin_operator { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i16 6, i16 32 }, %struct.builtin_operator { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i16 6, i16 9 }, %struct.builtin_operator { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i16 5, i16 10 }, %struct.builtin_operator { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i16 5, i16 14 }, %struct.builtin_operator { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i16 3, i16 1 }, %struct.builtin_operator { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i16 6, i16 24 }, %struct.builtin_operator { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i16 2, i16 16 }, %struct.builtin_operator { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i16 5, i16 33 }, %struct.builtin_operator { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i16 3, i16 11 }, %struct.builtin_operator { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i16 6, i16 34 }], align 16, !dbg !727
@builtin_array = internal constant [10 x %struct.builtin_macro] [%struct.builtin_macro { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i16 13, i16 8, i8 0 }, %struct.builtin_macro { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i16 8, i16 5, i8 0 }, %struct.builtin_macro { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i16 8, i16 1, i8 0 }, %struct.builtin_macro { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i16 8, i16 2, i8 0 }, %struct.builtin_macro { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i16 13, i16 3, i8 0 }, %struct.builtin_macro { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i16 8, i16 0, i8 1 }, %struct.builtin_macro { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i16 17, i16 4, i8 1 }, %struct.builtin_macro { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i16 11, i16 9, i8 1 }, %struct.builtin_macro { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i16 7, i16 7, i8 1 }, %struct.builtin_macro { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i16 8, i16 6, i8 1 }], align 16, !dbg !743
@.str.1 = private unnamed_addr constant [11 x i8] c"__STDC__ 1\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"__cplusplus 1\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"__ASSEMBLER__ 1\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"__STDC_VERSION__ 199409L\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"__STDC_VERSION__ 199901L\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"__STDC_HOSTED__ 1\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"__STDC_HOSTED__ 0\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"__OBJC__ 1\00", align 1
@init_library.initialized = internal unnamed_addr global i1 false, align 4, !dbg !756
@.str.9 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"and_eq\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"bitand\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"bitor\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"compl\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"not_eq\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"or_eq\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"xor_eq\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"__TIMESTAMP__\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"__TIME__\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"__DATE__\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"__FILE__\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"__BASE_FILE__\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"__LINE__\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"__INCLUDE_LEVEL__\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"__COUNTER__\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"_Pragma\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"__STDC__\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !761 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !766, metadata !DIExpression()), !dbg !767
  %__c.off = add i32 %__c, 128, !dbg !768
  %0 = icmp ult i32 %__c.off, 384, !dbg !768
  br i1 %0, label %cond.true, label %cond.end, !dbg !768

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !769
  %1 = load i32*, i32** %call, align 8, !dbg !770
  %idxprom = sext i32 %__c to i64, !dbg !771
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !771
  %2 = load i32, i32* %arrayidx, align 4, !dbg !771
  br label %cond.end, !dbg !772

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !772
  ret i32 %cond, !dbg !773
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !774 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !776, metadata !DIExpression()), !dbg !777
  %__c.off = add i32 %__c, 128, !dbg !778
  %0 = icmp ult i32 %__c.off, 384, !dbg !778
  br i1 %0, label %cond.true, label %cond.end, !dbg !778

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !779
  %1 = load i32*, i32** %call, align 8, !dbg !780
  %idxprom = sext i32 %__c to i64, !dbg !781
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !781
  %2 = load i32, i32* %arrayidx, align 4, !dbg !781
  br label %cond.end, !dbg !782

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !782
  ret i32 %cond, !dbg !783
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @cpp_set_lang(%struct.cpp_reader* %pfile, i32 %lang) local_unnamed_addr #2 !dbg !784 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !788, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i32 %lang, metadata !789, metadata !DIExpression()), !dbg !792
  %idxprom = sext i32 %lang to i64, !dbg !793
  %lang1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 1, !dbg !794
  store i32 %lang, i32* %lang1, align 4, !dbg !795
  %c99 = getelementptr inbounds [10 x %struct.lang_flags], [10 x %struct.lang_flags]* @lang_defaults, i64 0, i64 %idxprom, i32 0, !dbg !796
  %0 = load i8, i8* %c99, align 8, !dbg !796
  %c993 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 29, !dbg !797
  store i8 %0, i8* %c993, align 1, !dbg !798
  %cplusplus = getelementptr inbounds [10 x %struct.lang_flags], [10 x %struct.lang_flags]* @lang_defaults, i64 0, i64 %idxprom, i32 1, !dbg !799
  %1 = load i8, i8* %cplusplus, align 1, !dbg !799
  %cplusplus5 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 2, !dbg !800
  store i8 %1, i8* %cplusplus5, align 8, !dbg !801
  %extended_numbers = getelementptr inbounds [10 x %struct.lang_flags], [10 x %struct.lang_flags]* @lang_defaults, i64 0, i64 %idxprom, i32 2, !dbg !802
  %2 = load i8, i8* %extended_numbers, align 2, !dbg !802
  %extended_numbers7 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 9, !dbg !803
  store i8 %2, i8* %extended_numbers7, align 1, !dbg !804
  %extended_identifiers = getelementptr inbounds [10 x %struct.lang_flags], [10 x %struct.lang_flags]* @lang_defaults, i64 0, i64 %idxprom, i32 3, !dbg !805
  %3 = load i8, i8* %extended_identifiers, align 1, !dbg !805
  %extended_identifiers9 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 25, !dbg !806
  store i8 %3, i8* %extended_identifiers9, align 1, !dbg !807
  %std = getelementptr inbounds [10 x %struct.lang_flags], [10 x %struct.lang_flags]* @lang_defaults, i64 0, i64 %idxprom, i32 4, !dbg !808
  %4 = load i8, i8* %std, align 4, !dbg !808
  %std11 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 30, !dbg !809
  store i8 %4, i8* %std11, align 4, !dbg !810
  %trigraphs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 7, !dbg !811
  store i8 %4, i8* %trigraphs, align 1, !dbg !812
  %cplusplus_comments = getelementptr inbounds [10 x %struct.lang_flags], [10 x %struct.lang_flags]* @lang_defaults, i64 0, i64 %idxprom, i32 5, !dbg !813
  %5 = load i8, i8* %cplusplus_comments, align 1, !dbg !813
  %cplusplus_comments15 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 3, !dbg !814
  store i8 %5, i8* %cplusplus_comments15, align 1, !dbg !815
  %digraphs = getelementptr inbounds [10 x %struct.lang_flags], [10 x %struct.lang_flags]* @lang_defaults, i64 0, i64 %idxprom, i32 6, !dbg !816
  %6 = load i8, i8* %digraphs, align 2, !dbg !816
  %digraphs17 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 8, !dbg !817
  store i8 %6, i8* %digraphs17, align 2, !dbg !818
  %uliterals = getelementptr inbounds [10 x %struct.lang_flags], [10 x %struct.lang_flags]* @lang_defaults, i64 0, i64 %idxprom, i32 7, !dbg !819
  %7 = load i8, i8* %uliterals, align 1, !dbg !819
  %uliterals19 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 10, !dbg !820
  store i8 %7, i8* %uliterals19, align 8, !dbg !821
  ret void, !dbg !822
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_reader* @cpp_create_reader(i32 %lang, %struct.ht* %table, %struct.line_maps* %line_table) local_unnamed_addr #2 !dbg !823 {
entry:
  call void @llvm.dbg.value(metadata i32 %lang, metadata !827, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata %struct.ht* %table, metadata !828, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata %struct.line_maps* %line_table, metadata !829, metadata !DIExpression()), !dbg !831
  tail call fastcc void @init_library() #6, !dbg !832
  %call = tail call i8* @xcalloc(i64 1, i64 1304) #5, !dbg !833
  %0 = bitcast i8* %call to %struct.cpp_reader*, !dbg !833
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %0, metadata !830, metadata !DIExpression()), !dbg !831
  tail call void @cpp_set_lang(%struct.cpp_reader* %0, i32 %lang) #6, !dbg !834
  %1 = getelementptr inbounds i8, i8* %call, i64 1062, !dbg !835
  store i8 1, i8* %1, align 2, !dbg !836
  %2 = getelementptr inbounds i8, i8* %call, i64 1051, !dbg !837
  store i8 1, i8* %2, align 1, !dbg !838
  %3 = getelementptr inbounds i8, i8* %call, i64 1052, !dbg !839
  store i8 1, i8* %3, align 4, !dbg !840
  %4 = getelementptr inbounds i8, i8* %call, i64 1079, !dbg !841
  store i8 1, i8* %4, align 1, !dbg !842
  %opts4 = getelementptr inbounds i8, i8* %call, i64 1040, !dbg !843
  %tabstop = bitcast i8* %opts4 to i32*, !dbg !843
  store i32 8, i32* %tabstop, align 8, !dbg !844
  %5 = getelementptr inbounds i8, i8* %call, i64 1080, !dbg !845
  store i8 1, i8* %5, align 8, !dbg !846
  %6 = getelementptr inbounds i8, i8* %call, i64 1061, !dbg !847
  store i8 2, i8* %6, align 1, !dbg !848
  %7 = getelementptr inbounds i8, i8* %call, i64 1065, !dbg !849
  store i8 1, i8* %7, align 1, !dbg !850
  %8 = getelementptr inbounds i8, i8* %call, i64 1058, !dbg !851
  store i8 1, i8* %8, align 2, !dbg !852
  %9 = getelementptr inbounds i8, i8* %call, i64 1064, !dbg !853
  store i8 0, i8* %9, align 8, !dbg !854
  %10 = getelementptr inbounds i8, i8* %call, i64 1070, !dbg !855
  store i8 1, i8* %10, align 2, !dbg !856
  %11 = getelementptr inbounds i8, i8* %call, i64 1072, !dbg !857
  store i8 1, i8* %11, align 8, !dbg !858
  %12 = getelementptr inbounds i8, i8* %call, i64 1067, !dbg !859
  store i8 1, i8* %12, align 1, !dbg !860
  %13 = getelementptr inbounds i8, i8* %call, i64 1068, !dbg !861
  store i8 1, i8* %13, align 4, !dbg !862
  %warn_normalize = getelementptr inbounds i8, i8* %call, i64 1112, !dbg !863
  %14 = bitcast i8* %warn_normalize to i32*, !dbg !863
  store i32 1, i32* %14, align 8, !dbg !864
  %precision = getelementptr inbounds i8, i8* %call, i64 1128, !dbg !865
  %15 = bitcast i8* %precision to i64*, !dbg !865
  store i64 64, i64* %15, align 8, !dbg !866
  %char_precision = getelementptr inbounds i8, i8* %call, i64 1136, !dbg !867
  %16 = bitcast i8* %char_precision to i64*, !dbg !867
  store i64 8, i64* %16, align 8, !dbg !868
  %wchar_precision = getelementptr inbounds i8, i8* %call, i64 1152, !dbg !869
  %17 = bitcast i8* %wchar_precision to i64*, !dbg !869
  store i64 32, i64* %17, align 8, !dbg !870
  %int_precision = getelementptr inbounds i8, i8* %call, i64 1144, !dbg !871
  %18 = bitcast i8* %int_precision to i64*, !dbg !871
  store i64 32, i64* %18, align 8, !dbg !872
  %19 = getelementptr inbounds i8, i8* %call, i64 1160, !dbg !873
  store i8 0, i8* %19, align 8, !dbg !874
  %20 = getelementptr inbounds i8, i8* %call, i64 1161, !dbg !875
  store i8 1, i8* %20, align 1, !dbg !876
  %21 = getelementptr inbounds i8, i8* %call, i64 1162, !dbg !877
  store i8 1, i8* %21, align 2, !dbg !878
  %call22 = tail call i8* @_cpp_default_encoding() #5, !dbg !879
  %narrow_charset = getelementptr inbounds i8, i8* %call, i64 1088, !dbg !880
  %22 = bitcast i8* %narrow_charset to i8**, !dbg !880
  store i8* %call22, i8** %22, align 8, !dbg !881
  %wide_charset = getelementptr inbounds i8, i8* %call, i64 1096, !dbg !882
  %23 = bitcast i8* %wide_charset to i8**, !dbg !882
  store i8* null, i8** %23, align 8, !dbg !883
  %call25 = tail call i8* @_cpp_default_encoding() #5, !dbg !884
  %input_charset = getelementptr inbounds i8, i8* %call, i64 1104, !dbg !885
  %24 = bitcast i8* %input_charset to i8**, !dbg !885
  store i8* %call25, i8** %24, align 8, !dbg !886
  %name = getelementptr inbounds i8, i8* %call, i64 208, !dbg !887
  %25 = bitcast i8* %name to i8**, !dbg !887
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %25, align 8, !dbg !888
  %line_table27 = getelementptr inbounds i8, i8* %call, i64 40, !dbg !889
  %26 = bitcast i8* %line_table27 to %struct.line_maps**, !dbg !889
  store %struct.line_maps* %line_table, %struct.line_maps** %26, align 8, !dbg !890
  %27 = load i8, i8* %2, align 1, !dbg !891
  %tobool = icmp eq i8 %27, 0, !dbg !892
  %conv = zext i1 %tobool to i8, !dbg !892
  %28 = getelementptr inbounds i8, i8* %call, i64 21, !dbg !893
  store i8 %conv, i8* %28, align 1, !dbg !894
  %29 = getelementptr inbounds i8, i8* %call, i64 644, !dbg !895
  store i8 72, i8* %29, align 4, !dbg !896
  %val = getelementptr inbounds i8, i8* %call, i64 648, !dbg !897
  %source = bitcast i8* %val to %struct.cpp_token**, !dbg !898
  store %struct.cpp_token* null, %struct.cpp_token** %source, align 8, !dbg !899
  %30 = getelementptr inbounds i8, i8* %call, i64 668, !dbg !900
  store i8 22, i8* %30, align 4, !dbg !901
  %flags = getelementptr inbounds i8, i8* %call, i64 670, !dbg !902
  %31 = bitcast i8* %flags to i16*, !dbg !902
  store i16 0, i16* %31, align 2, !dbg !903
  %base_run = getelementptr inbounds i8, i8* %call, i64 440, !dbg !904
  %32 = bitcast i8* %base_run to %struct.tokenrun*, !dbg !904
  tail call void @_cpp_init_tokenrun(%struct.tokenrun* nonnull %32, i32 250) #5, !dbg !905
  %cur_run = getelementptr inbounds i8, i8* %call, i64 472, !dbg !906
  %33 = bitcast i8* %cur_run to i8**, !dbg !907
  store i8* %base_run, i8** %33, align 8, !dbg !907
  %base = getelementptr inbounds i8, i8* %call, i64 456, !dbg !908
  %34 = bitcast i8* %base to i64*, !dbg !908
  %35 = load i64, i64* %34, align 8, !dbg !908
  %cur_token = getelementptr inbounds i8, i8* %call, i64 432, !dbg !909
  %36 = bitcast i8* %cur_token to i64*, !dbg !910
  store i64 %35, i64* %36, align 8, !dbg !910
  %base_context = getelementptr inbounds i8, i8* %call, i64 80, !dbg !911
  %context = getelementptr inbounds i8, i8* %call, i64 136, !dbg !912
  %37 = bitcast i8* %context to i8**, !dbg !913
  store i8* %base_context, i8** %37, align 8, !dbg !913
  %macro = getelementptr inbounds i8, i8* %call, i64 120, !dbg !914
  %38 = bitcast i8* %macro to %struct.cpp_hashnode**, !dbg !914
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %38, align 8, !dbg !915
  %next = bitcast i8* %base_context to %struct.cpp_context**, !dbg !916
  store %struct.cpp_context* null, %struct.cpp_context** %next, align 8, !dbg !917
  %prev = getelementptr inbounds i8, i8* %call, i64 88, !dbg !918
  %39 = bitcast i8* %prev to %struct.cpp_context**, !dbg !918
  store %struct.cpp_context* null, %struct.cpp_context** %39, align 8, !dbg !919
  %call38 = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %0, i64 0) #5, !dbg !920
  %a_buff = getelementptr inbounds i8, i8* %call, i64 56, !dbg !921
  %40 = bitcast i8* %a_buff to %struct._cpp_buff**, !dbg !921
  store %struct._cpp_buff* %call38, %struct._cpp_buff** %40, align 8, !dbg !922
  %call39 = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %0, i64 0) #5, !dbg !923
  %u_buff = getelementptr inbounds i8, i8* %call, i64 64, !dbg !924
  %41 = bitcast i8* %u_buff to %struct._cpp_buff**, !dbg !924
  store %struct._cpp_buff* %call39, %struct._cpp_buff** %41, align 8, !dbg !925
  %pushed_macros = getelementptr inbounds i8, i8* %call, i64 1296, !dbg !926
  %42 = bitcast i8* %pushed_macros to %struct.def_pragma_macro**, !dbg !926
  store %struct.def_pragma_macro* null, %struct.def_pragma_macro** %42, align 8, !dbg !927
  %call40 = tail call %struct.op* @_cpp_expand_op_stack(%struct.cpp_reader* %0) #5, !dbg !928
  %buffer_ob = getelementptr inbounds i8, i8* %call, i64 784, !dbg !929
  %43 = bitcast i8* %buffer_ob to %struct.obstack*, !dbg !929
  %call41 = tail call i32 @_obstack_begin(%struct.obstack* nonnull %43, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #5, !dbg !930
  tail call void @_cpp_init_files(%struct.cpp_reader* %0) #5, !dbg !931
  tail call void @_cpp_init_hashtable(%struct.cpp_reader* %0, %struct.ht* %table) #5, !dbg !932
  ret %struct.cpp_reader* %0, !dbg !933
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_library() unnamed_addr #2 !dbg !723 {
entry:
  %.b = load i1, i1* @init_library.initialized, align 4, !dbg !934
  br i1 %.b, label %if.end, label %if.then, !dbg !936

if.then:                                          ; preds = %entry
  store i1 true, i1* @init_library.initialized, align 4, !dbg !937
  br label %if.end, !dbg !939

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !940
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

declare dso_local i8* @_cpp_default_encoding() local_unnamed_addr #1

declare dso_local void @_cpp_init_tokenrun(%struct.tokenrun*, i32) local_unnamed_addr #1

declare dso_local %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader*, i64) local_unnamed_addr #1

declare dso_local %struct.op* @_cpp_expand_op_stack(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

declare dso_local void @_cpp_init_files(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local void @_cpp_init_hashtable(%struct.cpp_reader*, %struct.ht*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @cpp_set_line_map(%struct.cpp_reader* %pfile, %struct.line_maps* %line_table) local_unnamed_addr #2 !dbg !941 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !945, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata %struct.line_maps* %line_table, metadata !946, metadata !DIExpression()), !dbg !947
  %line_table1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !948
  store %struct.line_maps* %line_table, %struct.line_maps** %line_table1, align 8, !dbg !949
  ret void, !dbg !950
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_destroy(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !951 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !953, metadata !DIExpression()), !dbg !960
  %op_stack = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 51, !dbg !961
  %0 = bitcast %struct.op** %op_stack to i8**, !dbg !961
  %1 = load i8*, i8** %0, align 8, !dbg !961
  tail call void @free(i8* %1) #5, !dbg !962
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !960
  br label %while.cond, !dbg !963

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !964
  %cmp = icmp eq %struct.cpp_buffer* %2, null, !dbg !965
  br i1 %cmp, label %while.end, label %while.body, !dbg !963

while.body:                                       ; preds = %while.cond
  tail call void @_cpp_pop_buffer(%struct.cpp_reader* %pfile) #5, !dbg !966
  br label %while.cond, !dbg !963, !llvm.loop !967

while.end:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 0, !dbg !969
  %3 = load i8*, i8** %base, align 8, !dbg !969
  %tobool = icmp eq i8* %3, null, !dbg !971
  br i1 %tobool, label %if.end, label %if.then, !dbg !972

if.then:                                          ; preds = %while.end
  tail call void @free(i8* nonnull %3) #5, !dbg !973
  br label %if.end, !dbg !973

if.end:                                           ; preds = %while.end, %if.then
  %macro_buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 34, !dbg !974
  %4 = load i8*, i8** %macro_buffer, align 8, !dbg !974
  %tobool3 = icmp eq i8* %4, null, !dbg !976
  br i1 %tobool3, label %if.end7, label %if.then4, !dbg !977

if.then4:                                         ; preds = %if.end
  tail call void @free(i8* nonnull %4) #5, !dbg !978
  store i8* null, i8** %macro_buffer, align 8, !dbg !980
  %macro_buffer_len = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 35, !dbg !981
  store i32 0, i32* %macro_buffer_len, align 8, !dbg !982
  br label %if.end7, !dbg !983

if.end7:                                          ; preds = %if.end, %if.then4
  %deps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 45, !dbg !984
  %5 = load %struct.deps*, %struct.deps** %deps, align 8, !dbg !984
  %tobool8 = icmp eq %struct.deps* %5, null, !dbg !986
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !987

if.then9:                                         ; preds = %if.end7
  tail call void @deps_free(%struct.deps* nonnull %5) #5, !dbg !988
  br label %if.end11, !dbg !988

if.end11:                                         ; preds = %if.end7, %if.then9
  %chunk = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 1, !dbg !989
  %6 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !989
  %7 = load i64, i64* %6, align 8, !dbg !989
  %sub.ptr.sub = sub i64 0, %7, !dbg !989
  %temp = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 5, !dbg !989
  store i64 %sub.ptr.sub, i64* %temp, align 8, !dbg !989
  %cmp15 = icmp sgt i64 %sub.ptr.sub, 0, !dbg !989
  %8 = inttoptr i64 %7 to i8*, !dbg !989
  br i1 %cmp15, label %land.lhs.true, label %cond.false, !dbg !989

land.lhs.true:                                    ; preds = %if.end11
  %chunk_limit = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 4, !dbg !989
  %9 = bitcast i8** %chunk_limit to i64*, !dbg !989
  %10 = load i64, i64* %9, align 8, !dbg !989
  %sub.ptr.sub22 = sub i64 %10, %7, !dbg !989
  %cmp23 = icmp sgt i64 %sub.ptr.sub22, %sub.ptr.sub, !dbg !989
  br i1 %cmp23, label %cond.true, label %cond.false, !dbg !989

cond.true:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %sub.ptr.sub, !dbg !989
  %object_base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 2, !dbg !989
  store i8* %add.ptr, i8** %object_base, align 8, !dbg !989
  %next_free = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 3, !dbg !989
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !989
  br label %cond.end, !dbg !989

cond.false:                                       ; preds = %land.lhs.true, %if.end11
  %buffer_ob30 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, !dbg !989
  %add.ptr35 = getelementptr inbounds i8, i8* %8, i64 %sub.ptr.sub, !dbg !989
  tail call void @obstack_free(%struct.obstack* nonnull %buffer_ob30, i8* %add.ptr35) #5, !dbg !989
  br label %cond.end, !dbg !989

cond.end:                                         ; preds = %cond.false, %cond.true
  tail call void @_cpp_destroy_hashtable(%struct.cpp_reader* %pfile) #5, !dbg !990
  tail call void @_cpp_cleanup_files(%struct.cpp_reader* %pfile) #5, !dbg !991
  tail call void @_cpp_destroy_iconv(%struct.cpp_reader* %pfile) #5, !dbg !992
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 5, !dbg !993
  %11 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !993
  tail call void @_cpp_free_buff(%struct._cpp_buff* %11) #5, !dbg !994
  %u_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 6, !dbg !995
  %12 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff, align 8, !dbg !995
  tail call void @_cpp_free_buff(%struct._cpp_buff* %12) #5, !dbg !996
  %free_buffs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 7, !dbg !997
  %13 = load %struct._cpp_buff*, %struct._cpp_buff** %free_buffs, align 8, !dbg !997
  tail call void @_cpp_free_buff(%struct._cpp_buff* %13) #5, !dbg !998
  %base_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 30, !dbg !999
  call void @llvm.dbg.value(metadata %struct.tokenrun* %base_run, metadata !957, metadata !DIExpression()), !dbg !960
  br label %for.cond, !dbg !1001

for.cond:                                         ; preds = %for.inc, %cond.end
  %run.0 = phi %struct.tokenrun* [ %base_run, %cond.end ], [ %14, %for.inc ], !dbg !1002
  call void @llvm.dbg.value(metadata %struct.tokenrun* %run.0, metadata !957, metadata !DIExpression()), !dbg !960
  %tobool36 = icmp eq %struct.tokenrun* %run.0, null, !dbg !1003
  br i1 %tobool36, label %for.end, label %for.body, !dbg !1003

for.body:                                         ; preds = %for.cond
  %next = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %run.0, i64 0, i32 0, !dbg !1004
  %14 = load %struct.tokenrun*, %struct.tokenrun** %next, align 8, !dbg !1004
  call void @llvm.dbg.value(metadata %struct.tokenrun* %14, metadata !958, metadata !DIExpression()), !dbg !960
  %base37 = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %run.0, i64 0, i32 2, !dbg !1007
  %15 = bitcast %struct.cpp_token** %base37 to i8**, !dbg !1007
  %16 = load i8*, i8** %15, align 8, !dbg !1007
  tail call void @free(i8* %16) #5, !dbg !1008
  %cmp39 = icmp eq %struct.tokenrun* %run.0, %base_run, !dbg !1009
  br i1 %cmp39, label %for.inc, label %if.then40, !dbg !1011

if.then40:                                        ; preds = %for.body
  %17 = bitcast %struct.tokenrun* %run.0 to i8*, !dbg !1012
  tail call void @free(i8* nonnull %17) #5, !dbg !1013
  br label %for.inc, !dbg !1013

for.inc:                                          ; preds = %for.body, %if.then40
  call void @llvm.dbg.value(metadata %struct.tokenrun* %14, metadata !957, metadata !DIExpression()), !dbg !960
  br label %for.cond, !dbg !1014, !llvm.loop !1015

for.end:                                          ; preds = %for.cond
  %next42 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 8, i32 0, !dbg !1017
  %18 = load %struct.cpp_context*, %struct.cpp_context** %next42, align 8, !dbg !1017
  call void @llvm.dbg.value(metadata %struct.cpp_context* %18, metadata !954, metadata !DIExpression()), !dbg !960
  br label %for.cond43, !dbg !1019

for.cond43:                                       ; preds = %for.body45, %for.end
  %.in = phi %struct.cpp_context* [ %18, %for.end ], [ %20, %for.body45 ]
  %context.0 = phi %struct.cpp_context* [ %18, %for.end ], [ %20, %for.body45 ], !dbg !1020
  call void @llvm.dbg.value(metadata %struct.cpp_context* %context.0, metadata !954, metadata !DIExpression()), !dbg !960
  %tobool44 = icmp eq %struct.cpp_context* %context.0, null, !dbg !1021
  br i1 %tobool44, label %for.end48, label %for.body45, !dbg !1021

for.body45:                                       ; preds = %for.cond43
  %19 = bitcast %struct.cpp_context* %.in to i8*, !dbg !1020
  %next46 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %context.0, i64 0, i32 0, !dbg !1022
  %20 = load %struct.cpp_context*, %struct.cpp_context** %next46, align 8, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.cpp_context* %20, metadata !955, metadata !DIExpression()), !dbg !960
  tail call void @free(i8* %19) #5, !dbg !1025
  call void @llvm.dbg.value(metadata %struct.cpp_context* %20, metadata !954, metadata !DIExpression()), !dbg !960
  br label %for.cond43, !dbg !1026, !llvm.loop !1027

for.end48:                                        ; preds = %for.cond43
  %entries = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 62, i32 0, !dbg !1029
  %21 = load %struct.cpp_comment*, %struct.cpp_comment** %entries, align 8, !dbg !1029
  %tobool49 = icmp eq %struct.cpp_comment* %21, null, !dbg !1031
  br i1 %tobool49, label %if.end61, label %for.cond51.preheader, !dbg !1032

for.cond51.preheader:                             ; preds = %for.end48
  %count = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 62, i32 1, !dbg !1033
  br label %for.cond51, !dbg !1037

for.cond51:                                       ; preds = %for.cond51.preheader, %for.body54
  %indvars.iv = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next, %for.body54 ], !dbg !1038
  %22 = phi %struct.cpp_comment* [ %21, %for.cond51.preheader ], [ %.pre, %for.body54 ], !dbg !1038
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !959, metadata !DIExpression()), !dbg !960
  %23 = load i32, i32* %count, align 8, !dbg !1039
  %24 = sext i32 %23 to i64, !dbg !1040
  %cmp53 = icmp slt i64 %indvars.iv, %24, !dbg !1040
  br i1 %cmp53, label %for.body54, label %for.end58, !dbg !1037

for.body54:                                       ; preds = %for.cond51
  %comment = getelementptr inbounds %struct.cpp_comment, %struct.cpp_comment* %22, i64 %indvars.iv, i32 0, !dbg !1041
  %25 = load i8*, i8** %comment, align 8, !dbg !1041
  tail call void @free(i8* %25) #5, !dbg !1042
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1043
  call void @llvm.dbg.value(metadata i32 undef, metadata !959, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !960
  %.pre = load %struct.cpp_comment*, %struct.cpp_comment** %entries, align 8, !dbg !1038
  br label %for.cond51, !dbg !1044, !llvm.loop !1045

for.end58:                                        ; preds = %for.cond51
  %.lcssa = phi %struct.cpp_comment* [ %22, %for.cond51 ], !dbg !1038
  %26 = bitcast %struct.cpp_comment* %.lcssa to i8*, !dbg !1047
  tail call void @free(i8* %26) #5, !dbg !1048
  br label %if.end61, !dbg !1049

if.end61:                                         ; preds = %for.end48, %for.end58
  %pushed_macros = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 63, !dbg !1050
  %27 = load %struct.def_pragma_macro*, %struct.def_pragma_macro** %pushed_macros, align 8, !dbg !1050
  %tobool62 = icmp eq %struct.def_pragma_macro* %27, null, !dbg !1052
  br i1 %tobool62, label %if.end69, label %do.body.preheader, !dbg !1053

do.body.preheader:                                ; preds = %if.end61
  %28 = bitcast %struct.def_pragma_macro** %pushed_macros to i64*, !dbg !1054
  br label %do.body, !dbg !1057

do.body:                                          ; preds = %do.body.preheader, %do.body
  %29 = phi %struct.def_pragma_macro* [ %27, %do.body.preheader ], [ %34, %do.body ], !dbg !1058
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* %29, metadata !956, metadata !DIExpression()), !dbg !960
  %30 = bitcast %struct.def_pragma_macro* %29 to i64*, !dbg !1059
  %31 = load i64, i64* %30, align 8, !dbg !1059
  store i64 %31, i64* %28, align 8, !dbg !1060
  %name = getelementptr inbounds %struct.def_pragma_macro, %struct.def_pragma_macro* %29, i64 0, i32 1, !dbg !1061
  %32 = load i8*, i8** %name, align 8, !dbg !1061
  tail call void @free(i8* %32) #5, !dbg !1062
  %33 = bitcast %struct.def_pragma_macro* %29 to i8*, !dbg !1063
  tail call void @free(i8* %33) #5, !dbg !1064
  %34 = load %struct.def_pragma_macro*, %struct.def_pragma_macro** %pushed_macros, align 8, !dbg !1065
  %tobool68 = icmp eq %struct.def_pragma_macro* %34, null, !dbg !1066
  br i1 %tobool68, label %if.end69.loopexit, label %do.body, !dbg !1066, !llvm.loop !1067

if.end69.loopexit:                                ; preds = %do.body
  br label %if.end69, !dbg !1069

if.end69:                                         ; preds = %if.end69.loopexit, %if.end61
  %35 = bitcast %struct.cpp_reader* %pfile to i8*, !dbg !1069
  tail call void @free(i8* %35) #5, !dbg !1070
  ret void, !dbg !1071
}

declare dso_local void @_cpp_pop_buffer(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local void @deps_free(%struct.deps*) local_unnamed_addr #1

declare dso_local void @obstack_free(%struct.obstack*, i8*) local_unnamed_addr #1

declare dso_local void @_cpp_destroy_hashtable(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local void @_cpp_cleanup_files(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local void @_cpp_destroy_iconv(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local void @_cpp_free_buff(%struct._cpp_buff*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @cpp_named_operator2name(i32 %type) local_unnamed_addr #2 !dbg !1072 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !1076, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata %struct.builtin_operator* getelementptr inbounds ([11 x %struct.builtin_operator], [11 x %struct.builtin_operator]* @operator_array, i64 0, i64 0), metadata !1077, metadata !DIExpression()), !dbg !1079
  br label %for.cond, !dbg !1080

for.cond:                                         ; preds = %for.inc, %entry
  %b.0 = phi %struct.builtin_operator* [ getelementptr inbounds ([11 x %struct.builtin_operator], [11 x %struct.builtin_operator]* @operator_array, i64 0, i64 0), %entry ], [ %incdec.ptr, %for.inc ], !dbg !1082
  call void @llvm.dbg.value(metadata %struct.builtin_operator* %b.0, metadata !1077, metadata !DIExpression()), !dbg !1079
  %cmp = icmp ult %struct.builtin_operator* %b.0, getelementptr inbounds ([11 x %struct.builtin_operator], [11 x %struct.builtin_operator]* @operator_array, i64 1, i64 0), !dbg !1083
  br i1 %cmp, label %for.body, label %cleanup.loopexit, !dbg !1085

for.body:                                         ; preds = %for.cond
  %value = getelementptr inbounds %struct.builtin_operator, %struct.builtin_operator* %b.0, i64 0, i32 2, !dbg !1086
  %0 = load i16, i16* %value, align 2, !dbg !1086
  %conv = zext i16 %0 to i32, !dbg !1089
  %cmp1 = icmp eq i32 %conv, %type, !dbg !1090
  br i1 %cmp1, label %if.then, label %for.inc, !dbg !1091

if.then:                                          ; preds = %for.body
  %b.0.lcssa3 = phi %struct.builtin_operator* [ %b.0, %for.body ], !dbg !1082
  call void @llvm.dbg.value(metadata %struct.builtin_operator* %b.0.lcssa3, metadata !1077, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata %struct.builtin_operator* %b.0.lcssa3, metadata !1077, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata %struct.builtin_operator* %b.0.lcssa3, metadata !1077, metadata !DIExpression()), !dbg !1079
  %name = getelementptr inbounds %struct.builtin_operator, %struct.builtin_operator* %b.0.lcssa3, i64 0, i32 0, !dbg !1092
  %1 = load i8*, i8** %name, align 8, !dbg !1092
  br label %cleanup, !dbg !1093

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %struct.builtin_operator, %struct.builtin_operator* %b.0, i64 1, !dbg !1094
  call void @llvm.dbg.value(metadata %struct.builtin_operator* %incdec.ptr, metadata !1077, metadata !DIExpression()), !dbg !1079
  br label %for.cond, !dbg !1095, !llvm.loop !1096

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !1098

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi i8* [ %1, %if.then ], [ null, %cleanup.loopexit ], !dbg !1079
  ret i8* %retval.0, !dbg !1098
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_init_special_builtins(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !1099 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1101, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 10, metadata !1104, metadata !DIExpression()), !dbg !1109
  %traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !1110
  %0 = load i8, i8* %traditional, align 2, !dbg !1110
  %tobool = icmp eq i8 %0, 0, !dbg !1110
  br i1 %tobool, label %if.else, label %if.then, !dbg !1112

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i64 8, metadata !1104, metadata !DIExpression()), !dbg !1109
  br label %if.end6, !dbg !1113

if.else:                                          ; preds = %entry
  %stdc_0_in_system_headers = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 51, !dbg !1114
  %1 = load i8, i8* %stdc_0_in_system_headers, align 1, !dbg !1114
  %tobool2 = icmp eq i8 %1, 0, !dbg !1114
  br i1 %tobool2, label %if.then5, label %lor.lhs.false, !dbg !1116

lor.lhs.false:                                    ; preds = %if.else
  %std = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 30, !dbg !1117
  %2 = load i8, i8* %std, align 4, !dbg !1117
  %tobool4 = icmp eq i8 %2, 0, !dbg !1117
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1118

if.then5:                                         ; preds = %lor.lhs.false, %if.else
  call void @llvm.dbg.value(metadata i64 9, metadata !1104, metadata !DIExpression()), !dbg !1109
  br label %if.end6, !dbg !1119

if.end6:                                          ; preds = %lor.lhs.false, %if.then5, %if.then
  %n.1 = phi i64 [ 8, %if.then ], [ 9, %if.then5 ], [ 10, %lor.lhs.false ], !dbg !1120
  call void @llvm.dbg.value(metadata i64 %n.1, metadata !1104, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata %struct.builtin_macro* getelementptr inbounds ([10 x %struct.builtin_macro], [10 x %struct.builtin_macro]* @builtin_array, i64 0, i64 0), metadata !1102, metadata !DIExpression()), !dbg !1109
  %add.ptr = getelementptr inbounds [10 x %struct.builtin_macro], [10 x %struct.builtin_macro]* @builtin_array, i64 0, i64 %n.1, !dbg !1121
  %warn_builtin_macro_redefined = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 22, !dbg !1122
  br label %for.cond, !dbg !1124

for.cond:                                         ; preds = %if.end31, %if.end6
  %b.0 = phi %struct.builtin_macro* [ getelementptr inbounds ([10 x %struct.builtin_macro], [10 x %struct.builtin_macro]* @builtin_array, i64 0, i64 0), %if.end6 ], [ %incdec.ptr, %if.end31 ], !dbg !1125
  call void @llvm.dbg.value(metadata %struct.builtin_macro* %b.0, metadata !1102, metadata !DIExpression()), !dbg !1109
  %cmp = icmp ult %struct.builtin_macro* %b.0, %add.ptr, !dbg !1126
  br i1 %cmp, label %for.body, label %for.end, !dbg !1127

for.body:                                         ; preds = %for.cond
  %name = getelementptr inbounds %struct.builtin_macro, %struct.builtin_macro* %b.0, i64 0, i32 0, !dbg !1128
  %3 = load i8*, i8** %name, align 8, !dbg !1128
  %len = getelementptr inbounds %struct.builtin_macro, %struct.builtin_macro* %b.0, i64 0, i32 1, !dbg !1129
  %4 = load i16, i16* %len, align 8, !dbg !1129
  %conv8 = zext i16 %4 to i32, !dbg !1130
  %call = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %pfile, i8* %3, i32 %conv8) #5, !dbg !1131
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call, metadata !1105, metadata !DIExpression()), !dbg !1132
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 3, !dbg !1133
  %bf.load = load i16, i16* %type, align 2, !dbg !1134
  %bf.lshr = and i16 %bf.load, -320, !dbg !1135
  %bf.set12 = or i16 %bf.lshr, 257, !dbg !1135
  store i16 %bf.set12, i16* %type, align 2, !dbg !1135
  %always_warn_if_redefined = getelementptr inbounds %struct.builtin_macro, %struct.builtin_macro* %b.0, i64 0, i32 3, !dbg !1136
  %5 = load i8, i8* %always_warn_if_redefined, align 4, !dbg !1136
  %tobool14 = icmp eq i8 %5, 0, !dbg !1137
  br i1 %tobool14, label %lor.lhs.false15, label %if.then19, !dbg !1138

lor.lhs.false15:                                  ; preds = %for.body
  %6 = load i8, i8* %warn_builtin_macro_redefined, align 4, !dbg !1139
  %tobool18 = icmp eq i8 %6, 0, !dbg !1139
  br i1 %tobool18, label %if.end31, label %if.then19, !dbg !1140

if.then19:                                        ; preds = %lor.lhs.false15, %for.body
  %bf.set29 = or i16 %bf.lshr, 1281, !dbg !1141
  store i16 %bf.set29, i16* %type, align 2, !dbg !1141
  br label %if.end31, !dbg !1142

if.end31:                                         ; preds = %lor.lhs.false15, %if.then19
  %value = getelementptr inbounds %struct.builtin_macro, %struct.builtin_macro* %b.0, i64 0, i32 2, !dbg !1143
  %7 = load i16, i16* %value, align 2, !dbg !1143
  %conv32 = zext i16 %7 to i32, !dbg !1144
  %value33 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 4, !dbg !1145
  %builtin = bitcast %union._cpp_hashnode_value* %value33 to i32*, !dbg !1146
  store i32 %conv32, i32* %builtin, align 8, !dbg !1147
  %incdec.ptr = getelementptr inbounds %struct.builtin_macro, %struct.builtin_macro* %b.0, i64 1, !dbg !1148
  call void @llvm.dbg.value(metadata %struct.builtin_macro* %incdec.ptr, metadata !1102, metadata !DIExpression()), !dbg !1109
  br label %for.cond, !dbg !1149, !llvm.loop !1150

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1152
}

declare dso_local %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @cpp_init_builtins(%struct.cpp_reader* %pfile, i32 %hosted) local_unnamed_addr #2 !dbg !1153 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1157, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 %hosted, metadata !1158, metadata !DIExpression()), !dbg !1159
  tail call void @cpp_init_special_builtins(%struct.cpp_reader* %pfile) #6, !dbg !1160
  %traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !1161
  %0 = load i8, i8* %traditional, align 2, !dbg !1161
  %tobool = icmp eq i8 %0, 0, !dbg !1161
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1163

land.lhs.true:                                    ; preds = %entry
  %stdc_0_in_system_headers = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 51, !dbg !1164
  %1 = load i8, i8* %stdc_0_in_system_headers, align 1, !dbg !1164
  %tobool2 = icmp eq i8 %1, 0, !dbg !1164
  br i1 %tobool2, label %if.then, label %lor.lhs.false, !dbg !1165

lor.lhs.false:                                    ; preds = %land.lhs.true
  %std = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 30, !dbg !1166
  %2 = load i8, i8* %std, align 4, !dbg !1166
  %tobool4 = icmp eq i8 %2, 0, !dbg !1166
  br i1 %tobool4, label %if.end, label %if.then, !dbg !1167

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  tail call void @_cpp_define_builtin(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !1168
  br label %if.end, !dbg !1168

if.end:                                           ; preds = %lor.lhs.false, %entry, %if.then
  %cplusplus = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 2, !dbg !1169
  %3 = load i8, i8* %cplusplus, align 8, !dbg !1169
  %tobool6 = icmp eq i8 %3, 0, !dbg !1169
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !1171

if.then7:                                         ; preds = %if.end
  tail call void @_cpp_define_builtin(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !1172
  br label %if.end24, !dbg !1172

if.else:                                          ; preds = %if.end
  %lang = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 1, !dbg !1173
  %4 = load i32, i32* %lang, align 4, !dbg !1173
  %cmp = icmp eq i32 %4, 9, !dbg !1175
  br i1 %cmp, label %if.then10, label %if.else11, !dbg !1176

if.then10:                                        ; preds = %if.else
  tail call void @_cpp_define_builtin(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !1177
  br label %if.end24, !dbg !1177

if.else11:                                        ; preds = %if.else
  %cmp14 = icmp eq i32 %4, 3, !dbg !1178
  br i1 %cmp14, label %if.then16, label %if.else17, !dbg !1180

if.then16:                                        ; preds = %if.else11
  tail call void @_cpp_define_builtin(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0)) #5, !dbg !1181
  br label %if.end24, !dbg !1181

if.else17:                                        ; preds = %if.else11
  %c99 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 29, !dbg !1182
  %5 = load i8, i8* %c99, align 1, !dbg !1182
  %tobool19 = icmp eq i8 %5, 0, !dbg !1182
  br i1 %tobool19, label %if.end24, label %if.then20, !dbg !1184

if.then20:                                        ; preds = %if.else17
  tail call void @_cpp_define_builtin(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)) #5, !dbg !1185
  br label %if.end24, !dbg !1185

if.end24:                                         ; preds = %if.else17, %if.then10, %if.then20, %if.then16, %if.then7
  %tobool25 = icmp eq i32 %hosted, 0, !dbg !1186
  br i1 %tobool25, label %if.else27, label %if.then26, !dbg !1188

if.then26:                                        ; preds = %if.end24
  tail call void @_cpp_define_builtin(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #5, !dbg !1189
  br label %if.end28, !dbg !1189

if.else27:                                        ; preds = %if.end24
  tail call void @_cpp_define_builtin(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !1190
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  %objc = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 4, !dbg !1191
  %6 = load i8, i8* %objc, align 2, !dbg !1191
  %tobool30 = icmp eq i8 %6, 0, !dbg !1191
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !1193

if.then31:                                        ; preds = %if.end28
  tail call void @_cpp_define_builtin(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !1194
  br label %if.end32, !dbg !1194

if.end32:                                         ; preds = %if.end28, %if.then31
  ret void, !dbg !1195
}

declare dso_local void @_cpp_define_builtin(%struct.cpp_reader*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @cpp_post_options(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !1196 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1198, metadata !DIExpression()), !dbg !1200
  tail call fastcc void @post_options(%struct.cpp_reader* %pfile) #6, !dbg !1201
  call void @llvm.dbg.value(metadata i32 0, metadata !1199, metadata !DIExpression()), !dbg !1200
  %cplusplus = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 2, !dbg !1202
  %0 = load i8, i8* %cplusplus, align 8, !dbg !1202
  %tobool = icmp eq i8 %0, 0, !dbg !1202
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1204

land.lhs.true:                                    ; preds = %entry
  %operator_names = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 34, !dbg !1205
  %1 = load i8, i8* %operator_names, align 8, !dbg !1205
  %tobool3 = icmp ne i8 %1, 0, !dbg !1205
  %spec.select = zext i1 %tobool3 to i32, !dbg !1206
  br label %if.end, !dbg !1206

if.end:                                           ; preds = %entry, %land.lhs.true
  %flags.0 = phi i32 [ 0, %entry ], [ %spec.select, %land.lhs.true ], !dbg !1200
  call void @llvm.dbg.value(metadata i32 %flags.0, metadata !1199, metadata !DIExpression()), !dbg !1200
  %warn_cxx_operator_names = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 35, !dbg !1207
  %2 = load i8, i8* %warn_cxx_operator_names, align 1, !dbg !1207
  %tobool5 = icmp eq i8 %2, 0, !dbg !1207
  %or7 = or i32 %flags.0, 520, !dbg !1209
  %spec.select1 = select i1 %tobool5, i32 %flags.0, i32 %or7, !dbg !1210
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !1199, metadata !DIExpression()), !dbg !1200
  %cmp = icmp eq i32 %spec.select1, 0, !dbg !1211
  br i1 %cmp, label %if.end11, label %if.then10, !dbg !1213

if.then10:                                        ; preds = %if.end
  tail call fastcc void @mark_named_operators(%struct.cpp_reader* %pfile, i32 %spec.select1) #6, !dbg !1214
  br label %if.end11, !dbg !1214

if.end11:                                         ; preds = %if.end, %if.then10
  ret void, !dbg !1215
}

; Function Attrs: nounwind uwtable
define internal fastcc void @post_options(%struct.cpp_reader* %pfile) unnamed_addr #2 !dbg !1216 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1218, metadata !DIExpression()), !dbg !1219
  %cplusplus = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 2, !dbg !1220
  %0 = load i8, i8* %cplusplus, align 8, !dbg !1220
  %tobool = icmp eq i8 %0, 0, !dbg !1220
  br i1 %tobool, label %if.end, label %if.then, !dbg !1222

if.then:                                          ; preds = %entry
  %warn_traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 17, !dbg !1223
  store i8 0, i8* %warn_traditional, align 1, !dbg !1224
  br label %if.end, !dbg !1223

if.end:                                           ; preds = %entry, %if.then
  %preprocessed = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 32, !dbg !1225
  %1 = load i8, i8* %preprocessed, align 2, !dbg !1225
  %tobool3 = icmp eq i8 %1, 0, !dbg !1225
  br i1 %tobool3, label %if.end10, label %if.then4, !dbg !1227

if.then4:                                         ; preds = %if.end
  %directives_only = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 52, !dbg !1228
  %2 = load i8, i8* %directives_only, align 4, !dbg !1228
  %tobool6 = icmp eq i8 %2, 0, !dbg !1228
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1231

if.then7:                                         ; preds = %if.then4
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !1232
  store i8 1, i8* %prevent_expansion, align 8, !dbg !1233
  br label %if.end8, !dbg !1234

if.end8:                                          ; preds = %if.then4, %if.then7
  %traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !1235
  store i8 0, i8* %traditional, align 2, !dbg !1236
  br label %if.end10, !dbg !1237

if.end10:                                         ; preds = %if.end, %if.end8
  %warn_trigraphs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 15, !dbg !1238
  %3 = load i8, i8* %warn_trigraphs, align 1, !dbg !1238
  %cmp = icmp eq i8 %3, 2, !dbg !1240
  br i1 %cmp, label %if.then13, label %if.end19, !dbg !1241

if.then13:                                        ; preds = %if.end10
  %trigraphs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 7, !dbg !1242
  %4 = load i8, i8* %trigraphs, align 1, !dbg !1242
  %tobool15 = icmp eq i8 %4, 0, !dbg !1243
  %conv16 = zext i1 %tobool15 to i8, !dbg !1243
  store i8 %conv16, i8* %warn_trigraphs, align 1, !dbg !1244
  br label %if.end19, !dbg !1245

if.end19:                                         ; preds = %if.then13, %if.end10
  %traditional21 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !1246
  %5 = load i8, i8* %traditional21, align 2, !dbg !1246
  %tobool22 = icmp eq i8 %5, 0, !dbg !1246
  br i1 %tobool22, label %if.end30, label %if.then23, !dbg !1248

if.then23:                                        ; preds = %if.end19
  %cplusplus_comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 3, !dbg !1249
  store i8 0, i8* %cplusplus_comments, align 1, !dbg !1251
  %show_column = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 33, !dbg !1252
  store i8 0, i8* %show_column, align 1, !dbg !1253
  %trigraphs27 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 7, !dbg !1254
  store i8 0, i8* %trigraphs27, align 1, !dbg !1255
  store i8 0, i8* %warn_trigraphs, align 1, !dbg !1256
  br label %if.end30, !dbg !1257

if.end30:                                         ; preds = %if.end19, %if.then23
  ret void, !dbg !1258
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_named_operators(%struct.cpp_reader* %pfile, i32 %flags) unnamed_addr #2 !dbg !1259 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1261, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1262, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata %struct.builtin_operator* getelementptr inbounds ([11 x %struct.builtin_operator], [11 x %struct.builtin_operator]* @operator_array, i64 0, i64 0), metadata !1263, metadata !DIExpression()), !dbg !1268
  %0 = trunc i32 %flags to i16, !dbg !1269
  %bf.value1 = shl i16 %0, 6, !dbg !1269
  br label %for.cond, !dbg !1270

for.cond:                                         ; preds = %for.body, %entry
  %b.0 = phi %struct.builtin_operator* [ getelementptr inbounds ([11 x %struct.builtin_operator], [11 x %struct.builtin_operator]* @operator_array, i64 0, i64 0), %entry ], [ %incdec.ptr, %for.body ], !dbg !1271
  call void @llvm.dbg.value(metadata %struct.builtin_operator* %b.0, metadata !1263, metadata !DIExpression()), !dbg !1268
  %cmp = icmp ult %struct.builtin_operator* %b.0, getelementptr inbounds ([11 x %struct.builtin_operator], [11 x %struct.builtin_operator]* @operator_array, i64 1, i64 0), !dbg !1272
  br i1 %cmp, label %for.body, label %for.end, !dbg !1273

for.body:                                         ; preds = %for.cond
  %name = getelementptr inbounds %struct.builtin_operator, %struct.builtin_operator* %b.0, i64 0, i32 0, !dbg !1274
  %1 = load i8*, i8** %name, align 8, !dbg !1274
  %len = getelementptr inbounds %struct.builtin_operator, %struct.builtin_operator* %b.0, i64 0, i32 1, !dbg !1275
  %2 = load i16, i16* %len, align 8, !dbg !1275
  %conv = zext i16 %2 to i32, !dbg !1276
  %call = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %pfile, i8* %1, i32 %conv) #5, !dbg !1277
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call, metadata !1264, metadata !DIExpression()), !dbg !1269
  %flags1 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 3, !dbg !1278
  %bf.load = load i16, i16* %flags1, align 2, !dbg !1279
  %bf.load.masked = and i16 %bf.load, -64, !dbg !1279
  %bf.shl = or i16 %bf.load.masked, %bf.value1, !dbg !1279
  %bf.clear = and i16 %bf.load, 63, !dbg !1279
  %bf.set = or i16 %bf.clear, %bf.shl, !dbg !1279
  store i16 %bf.set, i16* %flags1, align 2, !dbg !1279
  %is_directive = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 1, !dbg !1280
  %bf.load3 = load i8, i8* %is_directive, align 8, !dbg !1281
  %bf.clear4 = and i8 %bf.load3, -2, !dbg !1281
  store i8 %bf.clear4, i8* %is_directive, align 8, !dbg !1281
  %value = getelementptr inbounds %struct.builtin_operator, %struct.builtin_operator* %b.0, i64 0, i32 2, !dbg !1282
  %3 = load i16, i16* %value, align 2, !dbg !1282
  %4 = trunc i16 %3 to i8, !dbg !1283
  %bf.shl8 = shl i8 %4, 1, !dbg !1283
  store i8 %bf.shl8, i8* %is_directive, align 8, !dbg !1283
  %incdec.ptr = getelementptr inbounds %struct.builtin_operator, %struct.builtin_operator* %b.0, i64 1, !dbg !1284
  call void @llvm.dbg.value(metadata %struct.builtin_operator* %incdec.ptr, metadata !1263, metadata !DIExpression()), !dbg !1268
  br label %for.cond, !dbg !1285, !llvm.loop !1286

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1288
}

; Function Attrs: nounwind uwtable
define dso_local i8* @cpp_read_main_file(%struct.cpp_reader* %pfile, i8* %fname) local_unnamed_addr #2 !dbg !1289 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1293, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1294, metadata !DIExpression()), !dbg !1295
  %style = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 43, i32 0, !dbg !1296
  %0 = load i32, i32* %style, align 8, !dbg !1296
  %cmp = icmp eq i32 %0, 0, !dbg !1298
  br i1 %cmp, label %if.end5, label %if.then, !dbg !1299

if.then:                                          ; preds = %entry
  %deps1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 45, !dbg !1300
  %1 = load %struct.deps*, %struct.deps** %deps1, align 8, !dbg !1300
  %tobool = icmp eq %struct.deps* %1, null, !dbg !1303
  br i1 %tobool, label %if.then2, label %if.end, !dbg !1304

if.then2:                                         ; preds = %if.then
  %call = tail call %struct.deps* @deps_init() #5, !dbg !1305
  store %struct.deps* %call, %struct.deps** %deps1, align 8, !dbg !1306
  br label %if.end, !dbg !1307

if.end:                                           ; preds = %if.then, %if.then2
  %2 = phi %struct.deps* [ %1, %if.then ], [ %call, %if.then2 ], !dbg !1308
  tail call void @deps_add_default_target(%struct.deps* %2, i8* %fname) #5, !dbg !1309
  br label %if.end5, !dbg !1310

if.end5:                                          ; preds = %entry, %if.end
  %no_search_path = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 16, !dbg !1311
  %call6 = tail call %struct._cpp_file* @_cpp_find_file(%struct.cpp_reader* %pfile, i8* %fname, %struct.cpp_dir* nonnull %no_search_path, i8 zeroext 0, i32 0) #5, !dbg !1312
  %main_file = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 18, !dbg !1313
  store %struct._cpp_file* %call6, %struct._cpp_file** %main_file, align 8, !dbg !1314
  %call8 = tail call zeroext i8 @_cpp_find_failed(%struct._cpp_file* %call6) #5, !dbg !1315
  %tobool9 = icmp eq i8 %call8, 0, !dbg !1315
  br i1 %tobool9, label %if.end11, label %return, !dbg !1317

if.end11:                                         ; preds = %if.end5
  %3 = load %struct._cpp_file*, %struct._cpp_file** %main_file, align 8, !dbg !1318
  %call13 = tail call zeroext i8 @_cpp_stack_file(%struct.cpp_reader* %pfile, %struct._cpp_file* %3, i8 zeroext 0) #5, !dbg !1319
  %preprocessed = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 32, !dbg !1320
  %4 = load i8, i8* %preprocessed, align 2, !dbg !1320
  %tobool15 = icmp eq i8 %4, 0, !dbg !1320
  br i1 %tobool15, label %return, label %if.then16, !dbg !1322

if.then16:                                        ; preds = %if.end11
  tail call fastcc void @read_original_filename(%struct.cpp_reader* %pfile) #6, !dbg !1323
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !1325
  %5 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !1325
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %5, i64 0, i32 0, !dbg !1326
  %6 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !1326
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %5, i64 0, i32 2, !dbg !1327
  %7 = load i32, i32* %used, align 4, !dbg !1327
  %sub = add i32 %7, -1, !dbg !1328
  %idxprom = zext i32 %sub to i64, !dbg !1329
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %6, i64 %idxprom, i32 0, !dbg !1330
  %8 = load i8*, i8** %to_file, align 8, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %8, metadata !1294, metadata !DIExpression()), !dbg !1295
  br label %return, !dbg !1331

return:                                           ; preds = %if.end11, %if.end5, %if.then16
  %retval.0 = phi i8* [ null, %if.end5 ], [ %8, %if.then16 ], [ %fname, %if.end11 ], !dbg !1295
  ret i8* %retval.0, !dbg !1332
}

declare dso_local %struct.deps* @deps_init() local_unnamed_addr #1

declare dso_local void @deps_add_default_target(%struct.deps*, i8*) local_unnamed_addr #1

declare dso_local %struct._cpp_file* @_cpp_find_file(%struct.cpp_reader*, i8*, %struct.cpp_dir*, i8 zeroext, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @_cpp_find_failed(%struct._cpp_file*) local_unnamed_addr #1

declare dso_local zeroext i8 @_cpp_stack_file(%struct.cpp_reader*, %struct._cpp_file*, i8 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @read_original_filename(%struct.cpp_reader* %pfile) unnamed_addr #2 !dbg !1333 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1335, metadata !DIExpression()), !dbg !1338
  %call = tail call %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %pfile) #5, !dbg !1339
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !1336, metadata !DIExpression()), !dbg !1338
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !1340
  %bf.load = load i8, i8* %type, align 4, !dbg !1340
  %cmp = icmp eq i8 %bf.load, 37, !dbg !1342
  br i1 %cmp, label %if.then, label %if.end10, !dbg !1343

if.then:                                          ; preds = %entry
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !1344
  store i8 1, i8* %in_directive, align 8, !dbg !1346
  %call1 = tail call %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %pfile) #5, !dbg !1347
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call1, metadata !1337, metadata !DIExpression()), !dbg !1338
  tail call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 1) #5, !dbg !1348
  store i8 0, i8* %in_directive, align 8, !dbg !1349
  %type4 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 1, !dbg !1350
  %bf.load5 = load i8, i8* %type4, align 4, !dbg !1350
  %cmp7 = icmp eq i8 %bf.load5, 55, !dbg !1352
  br i1 %cmp7, label %land.lhs.true, label %if.end10, !dbg !1353

land.lhs.true:                                    ; preds = %if.then
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 2, !dbg !1354
  %0 = load i16, i16* %flags, align 2, !dbg !1354
  %1 = and i16 %0, 1, !dbg !1355
  %and = zext i16 %1 to i32, !dbg !1355
  %call8 = tail call i32 @_cpp_handle_directive(%struct.cpp_reader* %pfile, i32 %and) #5, !dbg !1356
  %tobool = icmp eq i32 %call8, 0, !dbg !1356
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !1357

if.then9:                                         ; preds = %land.lhs.true
  tail call fastcc void @read_original_directory(%struct.cpp_reader* %pfile) #6, !dbg !1358
  br label %cleanup.cont, !dbg !1360

if.end10:                                         ; preds = %land.lhs.true, %if.then, %entry
  tail call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 1) #5, !dbg !1361
  br label %cleanup.cont, !dbg !1362

cleanup.cont:                                     ; preds = %if.then9, %if.end10
  ret void, !dbg !1362
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_finish(%struct.cpp_reader* %pfile, %struct._IO_FILE* %deps_stream) local_unnamed_addr #2 !dbg !1363 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1418, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %deps_stream, metadata !1419, metadata !DIExpression()), !dbg !1420
  %warn_unused_macros = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 28, !dbg !1421
  %0 = load i8, i8* %warn_unused_macros, align 2, !dbg !1421
  %tobool = icmp eq i8 %0, 0, !dbg !1421
  br i1 %tobool, label %if.end, label %if.then, !dbg !1423

if.then:                                          ; preds = %entry
  tail call void @cpp_forall_identifiers(%struct.cpp_reader* %pfile, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* nonnull @_cpp_warn_if_unused_macro, i8* null) #5, !dbg !1424
  br label %if.end, !dbg !1424

if.end:                                           ; preds = %entry, %if.then
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1420
  br label %while.cond, !dbg !1425

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !1426
  %tobool1 = icmp eq %struct.cpp_buffer* %1, null, !dbg !1425
  br i1 %tobool1, label %while.end, label %while.body, !dbg !1425

while.body:                                       ; preds = %while.cond
  tail call void @_cpp_pop_buffer(%struct.cpp_reader* %pfile) #5, !dbg !1427
  br label %while.cond, !dbg !1425, !llvm.loop !1428

while.end:                                        ; preds = %while.cond
  %style = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 43, i32 0, !dbg !1430
  %2 = load i32, i32* %style, align 8, !dbg !1430
  %cmp = icmp ne i32 %2, 0, !dbg !1432
  %tobool3 = icmp ne %struct._IO_FILE* %deps_stream, null, !dbg !1433
  %or.cond = and i1 %cmp, %tobool3, !dbg !1434
  br i1 %or.cond, label %if.then4, label %if.end12, !dbg !1434

if.then4:                                         ; preds = %while.end
  %deps5 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 45, !dbg !1435
  %3 = load %struct.deps*, %struct.deps** %deps5, align 8, !dbg !1435
  tail call void @deps_write(%struct.deps* %3, %struct._IO_FILE* nonnull %deps_stream, i32 72) #5, !dbg !1437
  %phony_targets = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 43, i32 2, !dbg !1438
  %4 = load i8, i8* %phony_targets, align 1, !dbg !1438
  %tobool8 = icmp eq i8 %4, 0, !dbg !1438
  br i1 %tobool8, label %if.end12, label %if.then9, !dbg !1440

if.then9:                                         ; preds = %if.then4
  %5 = load %struct.deps*, %struct.deps** %deps5, align 8, !dbg !1441
  tail call void @deps_phony_targets(%struct.deps* %5, %struct._IO_FILE* nonnull %deps_stream) #5, !dbg !1442
  br label %if.end12, !dbg !1442

if.end12:                                         ; preds = %if.then4, %if.then9, %while.end
  %print_include_names = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 11, !dbg !1443
  %6 = load i8, i8* %print_include_names, align 1, !dbg !1443
  %tobool14 = icmp eq i8 %6, 0, !dbg !1443
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !1445

if.then15:                                        ; preds = %if.end12
  tail call void @_cpp_report_missing_guards(%struct.cpp_reader* %pfile) #5, !dbg !1446
  br label %if.end16, !dbg !1446

if.end16:                                         ; preds = %if.end12, %if.then15
  ret void, !dbg !1447
}

declare dso_local void @cpp_forall_identifiers(%struct.cpp_reader*, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)*, i8*) local_unnamed_addr #1

declare dso_local i32 @_cpp_warn_if_unused_macro(%struct.cpp_reader*, %struct.cpp_hashnode*, i8*) #1

declare dso_local void @deps_write(%struct.deps*, %struct._IO_FILE*, i32) local_unnamed_addr #1

declare dso_local void @deps_phony_targets(%struct.deps*, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local void @_cpp_report_missing_guards(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local void @_cpp_backup_tokens(%struct.cpp_reader*, i32) local_unnamed_addr #1

declare dso_local i32 @_cpp_handle_directive(%struct.cpp_reader*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @read_original_directory(%struct.cpp_reader* %pfile) unnamed_addr #2 !dbg !1448 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1450, metadata !DIExpression()), !dbg !1456
  %call = tail call %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %pfile) #5, !dbg !1457
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !1451, metadata !DIExpression()), !dbg !1456
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !1458
  %bf.load = load i8, i8* %type, align 4, !dbg !1458
  %cmp = icmp eq i8 %bf.load, 37, !dbg !1460
  br i1 %cmp, label %if.end, label %if.then, !dbg !1461

if.then:                                          ; preds = %entry
  tail call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 1) #5, !dbg !1462
  br label %cleanup.cont, !dbg !1464

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %pfile) #5, !dbg !1465
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call1, metadata !1452, metadata !DIExpression()), !dbg !1456
  %type2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 1, !dbg !1466
  %bf.load3 = load i8, i8* %type2, align 4, !dbg !1466
  %cmp5 = icmp eq i8 %bf.load3, 55, !dbg !1468
  br i1 %cmp5, label %if.end7, label %if.then6, !dbg !1469

if.then6:                                         ; preds = %if.end
  tail call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 2) #5, !dbg !1470
  br label %cleanup.cont, !dbg !1472

if.end7:                                          ; preds = %if.end
  %call8 = tail call %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %pfile) #5, !dbg !1473
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call8, metadata !1452, metadata !DIExpression()), !dbg !1456
  %type9 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call8, i64 0, i32 1, !dbg !1474
  %bf.load10 = load i8, i8* %type9, align 4, !dbg !1474
  %cmp12 = icmp eq i8 %bf.load10, 61, !dbg !1476
  br i1 %cmp12, label %lor.lhs.false, label %if.then34, !dbg !1477

lor.lhs.false:                                    ; preds = %if.end7
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call8, i64 0, i32 3, i32 0, i32 0, !dbg !1478
  %0 = load i32, i32* %len, align 8, !dbg !1478
  %cmp13 = icmp ugt i32 %0, 4, !dbg !1479
  br i1 %cmp13, label %land.lhs.true, label %if.then34, !dbg !1480

land.lhs.true:                                    ; preds = %lor.lhs.false
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call8, i64 0, i32 3, i32 0, i32 1, !dbg !1481
  %1 = load i8*, i8** %text, align 8, !dbg !1481
  %sub = add i32 %0, -2, !dbg !1482
  %idxprom = zext i32 %sub to i64, !dbg !1483
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom, !dbg !1483
  %2 = load i8, i8* %arrayidx, align 1, !dbg !1483
  %cmp19 = icmp eq i8 %2, 47, !dbg !1484
  br i1 %cmp19, label %land.lhs.true21, label %if.then34, !dbg !1485

land.lhs.true21:                                  ; preds = %land.lhs.true
  %sub28 = add i32 %0, -3, !dbg !1486
  %idxprom29 = zext i32 %sub28 to i64, !dbg !1487
  %arrayidx30 = getelementptr inbounds i8, i8* %1, i64 %idxprom29, !dbg !1487
  %3 = load i8, i8* %arrayidx30, align 1, !dbg !1487
  %cmp32 = icmp eq i8 %3, 47, !dbg !1488
  br i1 %cmp32, label %if.end35, label %if.then34, !dbg !1489

if.then34:                                        ; preds = %if.end7, %land.lhs.true21, %land.lhs.true, %lor.lhs.false
  tail call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 3) #5, !dbg !1490
  br label %cleanup.cont, !dbg !1492

if.end35:                                         ; preds = %land.lhs.true21
  %dir_change = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 2, !dbg !1493
  %4 = load void (%struct.cpp_reader*, i8*)*, void (%struct.cpp_reader*, i8*)** %dir_change, align 8, !dbg !1493
  %tobool = icmp eq void (%struct.cpp_reader*, i8*)* %4, null, !dbg !1494
  br i1 %tobool, label %cleanup.cont, label %if.then36, !dbg !1495

if.then36:                                        ; preds = %if.end35
  %5 = alloca i8, i64 %idxprom29, align 16, !dbg !1496
  call void @llvm.dbg.value(metadata i8* %5, metadata !1453, metadata !DIExpression()), !dbg !1497
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1498
  %sub48 = add i32 %0, -4, !dbg !1499
  %conv49 = zext i32 %sub48 to i64, !dbg !1500
  %call50 = call i8* @memcpy(i8* nonnull %5, i8* nonnull %add.ptr, i64 %conv49) #5, !dbg !1501
  %6 = load i32, i32* %len, align 8, !dbg !1502
  %sub54 = add i32 %6, -4, !dbg !1503
  %idxprom55 = zext i32 %sub54 to i64, !dbg !1504
  %arrayidx56 = getelementptr inbounds i8, i8* %5, i64 %idxprom55, !dbg !1504
  store i8 0, i8* %arrayidx56, align 1, !dbg !1505
  %7 = load void (%struct.cpp_reader*, i8*)*, void (%struct.cpp_reader*, i8*)** %dir_change, align 8, !dbg !1506
  call void %7(%struct.cpp_reader* %pfile, i8* nonnull %5) #5, !dbg !1507
  br label %cleanup.cont, !dbg !1508

cleanup.cont:                                     ; preds = %if.end35, %if.then, %if.then6, %if.then34, %if.then36
  ret void, !dbg !1509
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!757, !758, !759}
!llvm.ident = !{!760}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_cpp_trigraph_map", scope: !2, file: !3, line: 60, type: !753, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !122, globals: !704, nameTableKind: None)
!3 = !DIFile(filename: "cpp_init.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !19, !31, !37, !42}
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
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_ttype", file: !6, line: 143, baseType: !7, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121}
!44 = !DIEnumerator(name: "CPP_EQ", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "CPP_NOT", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "CPP_GREATER", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "CPP_LESS", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "CPP_PLUS", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "CPP_MINUS", value: 5, isUnsigned: true)
!50 = !DIEnumerator(name: "CPP_MULT", value: 6, isUnsigned: true)
!51 = !DIEnumerator(name: "CPP_DIV", value: 7, isUnsigned: true)
!52 = !DIEnumerator(name: "CPP_MOD", value: 8, isUnsigned: true)
!53 = !DIEnumerator(name: "CPP_AND", value: 9, isUnsigned: true)
!54 = !DIEnumerator(name: "CPP_OR", value: 10, isUnsigned: true)
!55 = !DIEnumerator(name: "CPP_XOR", value: 11, isUnsigned: true)
!56 = !DIEnumerator(name: "CPP_RSHIFT", value: 12, isUnsigned: true)
!57 = !DIEnumerator(name: "CPP_LSHIFT", value: 13, isUnsigned: true)
!58 = !DIEnumerator(name: "CPP_COMPL", value: 14, isUnsigned: true)
!59 = !DIEnumerator(name: "CPP_AND_AND", value: 15, isUnsigned: true)
!60 = !DIEnumerator(name: "CPP_OR_OR", value: 16, isUnsigned: true)
!61 = !DIEnumerator(name: "CPP_QUERY", value: 17, isUnsigned: true)
!62 = !DIEnumerator(name: "CPP_COLON", value: 18, isUnsigned: true)
!63 = !DIEnumerator(name: "CPP_COMMA", value: 19, isUnsigned: true)
!64 = !DIEnumerator(name: "CPP_OPEN_PAREN", value: 20, isUnsigned: true)
!65 = !DIEnumerator(name: "CPP_CLOSE_PAREN", value: 21, isUnsigned: true)
!66 = !DIEnumerator(name: "CPP_EOF", value: 22, isUnsigned: true)
!67 = !DIEnumerator(name: "CPP_EQ_EQ", value: 23, isUnsigned: true)
!68 = !DIEnumerator(name: "CPP_NOT_EQ", value: 24, isUnsigned: true)
!69 = !DIEnumerator(name: "CPP_GREATER_EQ", value: 25, isUnsigned: true)
!70 = !DIEnumerator(name: "CPP_LESS_EQ", value: 26, isUnsigned: true)
!71 = !DIEnumerator(name: "CPP_PLUS_EQ", value: 27, isUnsigned: true)
!72 = !DIEnumerator(name: "CPP_MINUS_EQ", value: 28, isUnsigned: true)
!73 = !DIEnumerator(name: "CPP_MULT_EQ", value: 29, isUnsigned: true)
!74 = !DIEnumerator(name: "CPP_DIV_EQ", value: 30, isUnsigned: true)
!75 = !DIEnumerator(name: "CPP_MOD_EQ", value: 31, isUnsigned: true)
!76 = !DIEnumerator(name: "CPP_AND_EQ", value: 32, isUnsigned: true)
!77 = !DIEnumerator(name: "CPP_OR_EQ", value: 33, isUnsigned: true)
!78 = !DIEnumerator(name: "CPP_XOR_EQ", value: 34, isUnsigned: true)
!79 = !DIEnumerator(name: "CPP_RSHIFT_EQ", value: 35, isUnsigned: true)
!80 = !DIEnumerator(name: "CPP_LSHIFT_EQ", value: 36, isUnsigned: true)
!81 = !DIEnumerator(name: "CPP_HASH", value: 37, isUnsigned: true)
!82 = !DIEnumerator(name: "CPP_PASTE", value: 38, isUnsigned: true)
!83 = !DIEnumerator(name: "CPP_OPEN_SQUARE", value: 39, isUnsigned: true)
!84 = !DIEnumerator(name: "CPP_CLOSE_SQUARE", value: 40, isUnsigned: true)
!85 = !DIEnumerator(name: "CPP_OPEN_BRACE", value: 41, isUnsigned: true)
!86 = !DIEnumerator(name: "CPP_CLOSE_BRACE", value: 42, isUnsigned: true)
!87 = !DIEnumerator(name: "CPP_SEMICOLON", value: 43, isUnsigned: true)
!88 = !DIEnumerator(name: "CPP_ELLIPSIS", value: 44, isUnsigned: true)
!89 = !DIEnumerator(name: "CPP_PLUS_PLUS", value: 45, isUnsigned: true)
!90 = !DIEnumerator(name: "CPP_MINUS_MINUS", value: 46, isUnsigned: true)
!91 = !DIEnumerator(name: "CPP_DEREF", value: 47, isUnsigned: true)
!92 = !DIEnumerator(name: "CPP_DOT", value: 48, isUnsigned: true)
!93 = !DIEnumerator(name: "CPP_SCOPE", value: 49, isUnsigned: true)
!94 = !DIEnumerator(name: "CPP_DEREF_STAR", value: 50, isUnsigned: true)
!95 = !DIEnumerator(name: "CPP_DOT_STAR", value: 51, isUnsigned: true)
!96 = !DIEnumerator(name: "CPP_ATSIGN", value: 52, isUnsigned: true)
!97 = !DIEnumerator(name: "CPP_NAME", value: 53, isUnsigned: true)
!98 = !DIEnumerator(name: "CPP_AT_NAME", value: 54, isUnsigned: true)
!99 = !DIEnumerator(name: "CPP_NUMBER", value: 55, isUnsigned: true)
!100 = !DIEnumerator(name: "CPP_CHAR", value: 56, isUnsigned: true)
!101 = !DIEnumerator(name: "CPP_WCHAR", value: 57, isUnsigned: true)
!102 = !DIEnumerator(name: "CPP_CHAR16", value: 58, isUnsigned: true)
!103 = !DIEnumerator(name: "CPP_CHAR32", value: 59, isUnsigned: true)
!104 = !DIEnumerator(name: "CPP_OTHER", value: 60, isUnsigned: true)
!105 = !DIEnumerator(name: "CPP_STRING", value: 61, isUnsigned: true)
!106 = !DIEnumerator(name: "CPP_WSTRING", value: 62, isUnsigned: true)
!107 = !DIEnumerator(name: "CPP_STRING16", value: 63, isUnsigned: true)
!108 = !DIEnumerator(name: "CPP_STRING32", value: 64, isUnsigned: true)
!109 = !DIEnumerator(name: "CPP_UTF8STRING", value: 65, isUnsigned: true)
!110 = !DIEnumerator(name: "CPP_OBJC_STRING", value: 66, isUnsigned: true)
!111 = !DIEnumerator(name: "CPP_HEADER_NAME", value: 67, isUnsigned: true)
!112 = !DIEnumerator(name: "CPP_COMMENT", value: 68, isUnsigned: true)
!113 = !DIEnumerator(name: "CPP_MACRO_ARG", value: 69, isUnsigned: true)
!114 = !DIEnumerator(name: "CPP_PRAGMA", value: 70, isUnsigned: true)
!115 = !DIEnumerator(name: "CPP_PRAGMA_EOL", value: 71, isUnsigned: true)
!116 = !DIEnumerator(name: "CPP_PADDING", value: 72, isUnsigned: true)
!117 = !DIEnumerator(name: "N_TTYPES", value: 73, isUnsigned: true)
!118 = !DIEnumerator(name: "CPP_LAST_EQ", value: 13, isUnsigned: true)
!119 = !DIEnumerator(name: "CPP_FIRST_DIGRAPH", value: 37, isUnsigned: true)
!120 = !DIEnumerator(name: "CPP_LAST_PUNCTUATOR", value: 52, isUnsigned: true)
!121 = !DIEnumerator(name: "CPP_LAST_CPP_OP", value: 26, isUnsigned: true)
!122 = !{!123, !124, !172, !697, !700, !207, !703, !180, !5}
!123 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !6, line: 31, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !127, line: 322, size: 10432, elements: !128)
!127 = !DIFile(filename: "./internal.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!128 = !{!129, !214, !215, !232, !264, !265, !276, !277, !278, !388, !390, !394, !395, !396, !397, !398, !399, !400, !401, !402, !405, !406, !409, !410, !443, !444, !445, !448, !449, !450, !451, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !477, !478, !479, !482, !562, !588, !591, !592, !655, !662, !663, !670, !671, !672, !673, !676, !677, !690}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !126, file: !127, line: 325, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_buffer", file: !6, line: 32, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_buffer", file: !127, line: 249, size: 1536, elements: !133)
!133 = !{!134, !138, !139, !140, !141, !142, !149, !150, !151, !152, !154, !157, !158, !161, !162, !163, !164, !165, !166, !197}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !132, file: !127, line: 251, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "line_base", scope: !132, file: !127, line: 252, baseType: !135, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !132, file: !127, line: 253, baseType: !135, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !132, file: !127, line: 255, baseType: !135, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !132, file: !127, line: 256, baseType: !135, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !132, file: !127, line: 258, baseType: !143, size: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_line_note", file: !127, line: 235, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_line_note", file: !127, line: 236, size: 128, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !145, file: !127, line: 239, baseType: !135, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !127, line: 245, baseType: !7, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "cur_note", scope: !132, file: !127, line: 259, baseType: !7, size: 32, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "notes_used", scope: !132, file: !127, line: 260, baseType: !7, size: 32, offset: 416)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "notes_cap", scope: !132, file: !127, line: 261, baseType: !7, size: 32, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !127, line: 263, baseType: !153, size: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !132, file: !127, line: 267, baseType: !155, size: 64, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_file", file: !6, line: 42, flags: DIFlagFwdDecl)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !132, file: !127, line: 271, baseType: !135, size: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "if_stack", scope: !132, file: !127, line: 275, baseType: !159, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "if_stack", file: !127, line: 275, flags: DIFlagFwdDecl)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "need_line", scope: !132, file: !127, line: 278, baseType: !137, size: 8, offset: 768)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "warned_cplusplus_comments", scope: !132, file: !127, line: 284, baseType: !7, size: 1, offset: 776, flags: DIFlagBitField, extraData: i64 776)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "from_stage3", scope: !132, file: !127, line: 289, baseType: !7, size: 1, offset: 777, flags: DIFlagBitField, extraData: i64 776)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "return_at_eof", scope: !132, file: !127, line: 294, baseType: !7, size: 1, offset: 778, flags: DIFlagBitField, extraData: i64 776)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !132, file: !127, line: 298, baseType: !137, size: 8, offset: 784)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !132, file: !127, line: 302, baseType: !167, size: 512, offset: 832)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !6, line: 523, size: 512, elements: !168)
!168 = !{!169, !171, !174, !175, !176, !177, !178, !182, !188, !194}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !6, line: 526, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !6, line: 529, baseType: !172, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !167, file: !6, line: 530, baseType: !7, size: 32, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !167, file: !6, line: 534, baseType: !137, size: 8, offset: 160)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !167, file: !6, line: 537, baseType: !137, size: 8, offset: 168)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !167, file: !6, line: 541, baseType: !172, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !167, file: !6, line: 545, baseType: !179, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !167, file: !6, line: 551, baseType: !183, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!172, !180, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !6, line: 39, baseType: !167)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !167, file: !6, line: 555, baseType: !189, size: 64, offset: 384)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !190, line: 47, baseType: !191)
!190 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !192, line: 148, baseType: !193)
!192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!193 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !167, file: !6, line: 556, baseType: !195, size: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !190, line: 59, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !192, line: 145, baseType: !193)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "input_cset_desc", scope: !132, file: !127, line: 306, baseType: !198, size: 192, offset: 1344)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cset_converter", file: !127, line: 47, size: 192, elements: !199)
!199 = !{!200, !212, !213}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !198, file: !127, line: 49, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "convert_f", file: !127, line: 45, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!137, !205, !135, !208, !210}
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !206, line: 29, baseType: !207)
!206 = !DIFile(filename: "/usr/include/iconv.h", directory: "")
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !209, line: 46, baseType: !193)
!209 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_strbuf", file: !127, line: 43, flags: DIFlagFwdDecl)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !198, file: !127, line: 50, baseType: !205, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !198, file: !127, line: 51, baseType: !123, size: 32, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "overlaid_buffer", scope: !126, file: !127, line: 328, baseType: !130, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !126, file: !127, line: 331, baseType: !216, size: 160, offset: 128)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lexer_state", file: !127, line: 177, size: 160, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "in_directive", scope: !216, file: !127, line: 180, baseType: !137, size: 8)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "directive_wants_padding", scope: !216, file: !127, line: 185, baseType: !137, size: 8, offset: 8)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "skipping", scope: !216, file: !127, line: 188, baseType: !137, size: 8, offset: 16)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "angled_headers", scope: !216, file: !127, line: 191, baseType: !137, size: 8, offset: 24)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "in_expression", scope: !216, file: !127, line: 194, baseType: !137, size: 8, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "save_comments", scope: !216, file: !127, line: 198, baseType: !137, size: 8, offset: 40)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "va_args_ok", scope: !216, file: !127, line: 201, baseType: !137, size: 8, offset: 48)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned_ok", scope: !216, file: !127, line: 204, baseType: !137, size: 8, offset: 56)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_expansion", scope: !216, file: !127, line: 207, baseType: !137, size: 8, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parsing_args", scope: !216, file: !127, line: 210, baseType: !137, size: 8, offset: 72)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "discarding_output", scope: !216, file: !127, line: 214, baseType: !137, size: 8, offset: 80)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "skip_eval", scope: !216, file: !127, line: 217, baseType: !7, size: 32, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "in_deferred_pragma", scope: !216, file: !127, line: 220, baseType: !137, size: 8, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pragma_allow_expansion", scope: !216, file: !127, line: 223, baseType: !137, size: 8, offset: 136)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "line_table", scope: !126, file: !127, line: 334, baseType: !233, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !235, line: 74, size: 448, elements: !236)
!235 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!236 = !{!237, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !234, file: !235, line: 75, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !235, line: 61, size: 192, elements: !240)
!240 = !{!241, !242, !244, !246, !247, !248, !249}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !239, file: !235, line: 62, baseType: !180, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !239, file: !235, line: 63, baseType: !243, size: 32, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !235, line: 39, baseType: !7)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !239, file: !235, line: 64, baseType: !245, size: 32, offset: 96)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !235, line: 44, baseType: !7)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !239, file: !235, line: 65, baseType: !123, size: 32, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !239, file: !235, line: 66, baseType: !7, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !239, file: !235, line: 68, baseType: !137, size: 8, offset: 168)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !239, file: !235, line: 70, baseType: !7, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !234, file: !235, line: 76, baseType: !7, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !234, file: !235, line: 77, baseType: !7, size: 32, offset: 96)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !234, file: !235, line: 79, baseType: !7, size: 32, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !234, file: !235, line: 84, baseType: !123, size: 32, offset: 160)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !234, file: !235, line: 87, baseType: !7, size: 32, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !234, file: !235, line: 90, baseType: !137, size: 8, offset: 224)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !234, file: !235, line: 93, baseType: !245, size: 32, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !234, file: !235, line: 96, baseType: !245, size: 32, offset: 288)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !234, file: !235, line: 100, baseType: !7, size: 32, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !234, file: !235, line: 104, baseType: !260, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !235, line: 47, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!207, !207, !208}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "directive_line", scope: !126, file: !127, line: 337, baseType: !245, size: 32, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "a_buff", scope: !126, file: !127, line: 340, baseType: !266, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_buff", file: !127, line: 99, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_buff", file: !127, line: 100, size: 256, elements: !269)
!269 = !{!270, !272, !274, !275}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !127, line: 102, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !268, file: !127, line: 103, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !268, file: !127, line: 103, baseType: !273, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !268, file: !127, line: 103, baseType: !273, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "u_buff", scope: !126, file: !127, line: 341, baseType: !266, size: 64, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffs", scope: !126, file: !127, line: 342, baseType: !266, size: 64, offset: 576)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "base_context", scope: !126, file: !127, line: 345, baseType: !279, size: 448, offset: 640)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_context", file: !127, line: 142, size: 448, elements: !280)
!280 = !{!281, !284, !285, !385, !386, !387}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !127, line: 145, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_context", file: !127, line: 141, baseType: !279)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !279, file: !127, line: 145, baseType: !282, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !279, file: !127, line: 164, baseType: !286, size: 128, offset: 128)
!286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !279, file: !127, line: 147, size: 128, elements: !287)
!287 = !{!288, !380}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "iso", scope: !286, file: !127, line: 156, baseType: !289, size: 128)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !286, file: !127, line: 152, size: 128, elements: !290)
!290 = !{!291, !379}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !289, file: !127, line: 154, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "utoken", file: !127, line: 121, size: 64, elements: !293)
!293 = !{!294, !377}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !292, file: !127, line: 123, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !6, line: 34, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !6, line: 212, size: 192, elements: !299)
!299 = !{!300, !301, !302, !304}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !298, file: !6, line: 213, baseType: !245, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !298, file: !6, line: 214, baseType: !7, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !6, line: 215, baseType: !303, size: 16, offset: 48)
!303 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !298, file: !6, line: 237, baseType: !305, size: 128, offset: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_token_u", file: !6, line: 217, size: 128, elements: !306)
!306 = !{!307, !365, !366, !371, !375, !376}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !305, file: !6, line: 220, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_identifier", file: !6, line: 201, size: 64, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !308, file: !6, line: 207, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_hashnode", file: !6, line: 36, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_hashnode", file: !6, line: 644, size: 256, elements: !314)
!314 = !{!315, !322, !323, !324, !325, !326, !327}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !313, file: !6, line: 645, baseType: !316, size: 128)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !317, line: 31, size: 128, elements: !318)
!317 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!318 = !{!319, !320, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !316, file: !317, line: 32, baseType: !135, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !316, file: !317, line: 33, baseType: !7, size: 32, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !316, file: !317, line: 34, baseType: !7, size: 32, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !313, file: !6, line: 646, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !313, file: !6, line: 647, baseType: !7, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !313, file: !6, line: 650, baseType: !137, size: 8, offset: 136)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !313, file: !6, line: 651, baseType: !7, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !6, line: 652, baseType: !7, size: 10, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !313, file: !6, line: 654, baseType: !328, size: 64, offset: 192)
!328 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_cpp_hashnode_value", file: !6, line: 633, size: 64, elements: !329)
!329 = !{!330, !353, !363, !364}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !328, file: !6, line: 635, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_macro", file: !6, line: 37, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro", file: !334, line: 36, size: 256, elements: !335)
!334 = !DIFile(filename: "./cpp-id-data.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!335 = !{!336, !338, !344, !345, !346, !347, !348, !349, !350, !351, !352}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !333, file: !334, line: 42, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !333, file: !334, line: 51, baseType: !339, size: 64, offset: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_macro_u", file: !334, line: 47, size: 64, elements: !340)
!340 = !{!341, !343}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tokens", scope: !339, file: !334, line: 49, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !339, file: !334, line: 50, baseType: !135, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !333, file: !334, line: 54, baseType: !245, size: 32, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !333, file: !334, line: 57, baseType: !7, size: 32, offset: 160)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "paramc", scope: !333, file: !334, line: 60, baseType: !303, size: 16, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "fun_like", scope: !333, file: !334, line: 63, baseType: !7, size: 1, offset: 208, flags: DIFlagBitField, extraData: i64 208)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "variadic", scope: !333, file: !334, line: 66, baseType: !7, size: 1, offset: 209, flags: DIFlagBitField, extraData: i64 208)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "syshdr", scope: !333, file: !334, line: 69, baseType: !7, size: 1, offset: 210, flags: DIFlagBitField, extraData: i64 208)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !333, file: !334, line: 72, baseType: !7, size: 1, offset: 211, flags: DIFlagBitField, extraData: i64 208)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !333, file: !334, line: 75, baseType: !7, size: 1, offset: 212, flags: DIFlagBitField, extraData: i64 208)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "extra_tokens", scope: !333, file: !334, line: 80, baseType: !7, size: 1, offset: 213, flags: DIFlagBitField, extraData: i64 208)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "answers", scope: !328, file: !6, line: 637, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !334, line: 28, size: 320, elements: !356)
!356 = !{!357, !358, !359}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !334, line: 29, baseType: !354, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !355, file: !334, line: 30, baseType: !7, size: 32, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !355, file: !334, line: 31, baseType: !360, size: 192, offset: 128)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 192, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 1)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !328, file: !6, line: 639, baseType: !5, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !328, file: !6, line: 641, baseType: !303, size: 16)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !305, file: !6, line: 223, baseType: !342, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !305, file: !6, line: 226, baseType: !367, size: 128)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !6, line: 162, size: 128, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !367, file: !6, line: 163, baseType: !7, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !367, file: !6, line: 164, baseType: !135, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !305, file: !6, line: 229, baseType: !372, size: 32)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !6, line: 195, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !372, file: !6, line: 197, baseType: !7, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !305, file: !6, line: 233, baseType: !7, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !305, file: !6, line: 236, baseType: !7, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ptoken", scope: !292, file: !127, line: 124, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !289, file: !127, line: 155, baseType: !292, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "trad", scope: !286, file: !127, line: 163, baseType: !381, size: 128)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !286, file: !127, line: 159, size: 128, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !381, file: !127, line: 161, baseType: !135, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !381, file: !127, line: 162, baseType: !135, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !279, file: !127, line: 168, baseType: !266, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !279, file: !127, line: 171, baseType: !311, size: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "direct_p", scope: !279, file: !127, line: 174, baseType: !137, size: 8, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !126, file: !127, line: 346, baseType: !389, size: 64, offset: 1088)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !126, file: !127, line: 349, baseType: !391, size: 64, offset: 1152)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "directive", file: !127, line: 40, flags: DIFlagFwdDecl)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "directive_result", scope: !126, file: !127, line: 352, baseType: !297, size: 192, offset: 1216)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "invocation_location", scope: !126, file: !127, line: 356, baseType: !245, size: 32, offset: 1408)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "set_invocation_location", scope: !126, file: !127, line: 360, baseType: !137, size: 8, offset: 1440)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "quote_include", scope: !126, file: !127, line: 363, baseType: !170, size: 64, offset: 1472)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "bracket_include", scope: !126, file: !127, line: 364, baseType: !170, size: 64, offset: 1536)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "no_search_path", scope: !126, file: !127, line: 365, baseType: !167, size: 512, offset: 1600)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "all_files", scope: !126, file: !127, line: 368, baseType: !155, size: 64, offset: 2112)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "main_file", scope: !126, file: !127, line: 370, baseType: !155, size: 64, offset: 2176)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash", scope: !126, file: !127, line: 373, baseType: !403, size: 64, offset: 2240)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !127, line: 373, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash", scope: !126, file: !127, line: 374, baseType: !403, size: 64, offset: 2304)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash_entries", scope: !126, file: !127, line: 375, baseType: !407, size: 64, offset: 2368)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_hash_entry_pool", file: !127, line: 375, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_hash", scope: !126, file: !127, line: 378, baseType: !403, size: 64, offset: 2432)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_ob", scope: !126, file: !127, line: 379, baseType: !411, size: 704, offset: 2496)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !412, line: 164, size: 704, elements: !413)
!412 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!413 = !{!414, !416, !426, !427, !428, !429, !430, !431, !435, !439, !440, !441, !442}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !411, file: !412, line: 166, baseType: !415, size: 64)
!415 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !411, file: !412, line: 167, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !412, line: 157, size: 192, elements: !419)
!419 = !{!420, !421, !422}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !418, file: !412, line: 159, baseType: !172, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !418, file: !412, line: 160, baseType: !417, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !418, file: !412, line: 161, baseType: !423, size: 32, offset: 128)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 32, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 4)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !411, file: !412, line: 168, baseType: !172, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !411, file: !412, line: 169, baseType: !172, size: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !411, file: !412, line: 170, baseType: !172, size: 64, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !411, file: !412, line: 171, baseType: !415, size: 64, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !411, file: !412, line: 172, baseType: !123, size: 32, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !411, file: !412, line: 176, baseType: !432, size: 64, offset: 448)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!417, !207, !415}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !411, file: !412, line: 177, baseType: !436, size: 64, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !207, !417}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !411, file: !412, line: 178, baseType: !207, size: 64, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !411, file: !412, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !411, file: !412, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !411, file: !412, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "quote_ignores_source_dir", scope: !126, file: !127, line: 383, baseType: !137, size: 8, offset: 3200)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "seen_once_only", scope: !126, file: !127, line: 387, baseType: !137, size: 8, offset: 3208)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "mi_cmacro", scope: !126, file: !127, line: 390, baseType: !446, size: 64, offset: 3264)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mi_ind_cmacro", scope: !126, file: !127, line: 391, baseType: !446, size: 64, offset: 3328)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mi_valid", scope: !126, file: !127, line: 392, baseType: !137, size: 8, offset: 3392)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cur_token", scope: !126, file: !127, line: 395, baseType: !342, size: 64, offset: 3456)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "base_run", scope: !126, file: !127, line: 396, baseType: !452, size: 256, offset: 3520)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "tokenrun", file: !127, line: 128, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenrun", file: !127, line: 129, size: 256, elements: !454)
!454 = !{!455, !457, !458, !459}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !127, line: 131, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !453, file: !127, line: 131, baseType: !456, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !453, file: !127, line: 132, baseType: !342, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !453, file: !127, line: 132, baseType: !342, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "cur_run", scope: !126, file: !127, line: 396, baseType: !456, size: 64, offset: 3776)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "lookaheads", scope: !126, file: !127, line: 397, baseType: !7, size: 32, offset: 3840)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "keep_tokens", scope: !126, file: !127, line: 400, baseType: !7, size: 32, offset: 3872)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer", scope: !126, file: !127, line: 403, baseType: !273, size: 64, offset: 3904)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer_len", scope: !126, file: !127, line: 404, baseType: !7, size: 32, offset: 3968)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_cset_desc", scope: !126, file: !127, line: 408, baseType: !198, size: 192, offset: 4032)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_cset_desc", scope: !126, file: !127, line: 412, baseType: !198, size: 192, offset: 4224)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "char16_cset_desc", scope: !126, file: !127, line: 416, baseType: !198, size: 192, offset: 4416)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "char32_cset_desc", scope: !126, file: !127, line: 420, baseType: !198, size: 192, offset: 4608)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "wide_cset_desc", scope: !126, file: !127, line: 424, baseType: !198, size: 192, offset: 4800)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !126, file: !127, line: 427, baseType: !135, size: 64, offset: 4992)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !126, file: !127, line: 428, baseType: !135, size: 64, offset: 5056)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_paste", scope: !126, file: !127, line: 431, baseType: !297, size: 192, offset: 5120)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !126, file: !127, line: 432, baseType: !297, size: 192, offset: 5312)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !126, file: !127, line: 435, baseType: !475, size: 64, offset: 5504)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !6, line: 685, flags: DIFlagFwdDecl)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "hash_ob", scope: !126, file: !127, line: 439, baseType: !411, size: 704, offset: 5568)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_ob", scope: !126, file: !127, line: 443, baseType: !411, size: 704, offset: 6272)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "pragmas", scope: !126, file: !127, line: 447, baseType: !480, size: 64, offset: 6976)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "pragma_entry", file: !127, line: 447, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !126, file: !127, line: 450, baseType: !483, size: 1088, offset: 7040)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !6, line: 472, size: 1088, elements: !484)
!484 = !{!485, !489, !495, !499, !503, !507, !508, !515, !519, !523, !527, !533, !537, !552, !553, !554, !558}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !483, file: !6, line: 475, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !124, !295, !123}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !483, file: !6, line: 481, baseType: !490, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !124, !493}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !483, file: !6, line: 483, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !124, !180}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !483, file: !6, line: 484, baseType: !500, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !124, !7, !135, !180, !123, !378}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !483, file: !6, line: 486, baseType: !504, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !124, !7, !311}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !483, file: !6, line: 487, baseType: !504, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !483, file: !6, line: 488, baseType: !509, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !124, !7, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !6, line: 35, baseType: !367)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !483, file: !6, line: 489, baseType: !516, size: 64, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !124, !7}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !483, file: !6, line: 490, baseType: !520, size: 64, offset: 512)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!123, !124, !180, !123}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !483, file: !6, line: 491, baseType: !524, size: 64, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !124, !180, !123, !180}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !483, file: !6, line: 492, baseType: !528, size: 64, offset: 640)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !6, line: 469, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!180, !124, !180, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !483, file: !6, line: 496, baseType: !534, size: 64, offset: 704)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!311, !124, !295}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !483, file: !6, line: 500, baseType: !538, size: 64, offset: 768)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!137, !124, !123, !245, !7, !180, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !543, line: 14, baseType: !544)
!543 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 60, baseType: !545)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 192, elements: !361)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 60, size: 192, elements: !547)
!547 = !{!548, !549, !550, !551}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !546, file: !3, line: 60, baseType: !7, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !546, file: !3, line: 60, baseType: !7, size: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !546, file: !3, line: 60, baseType: !207, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !546, file: !3, line: 60, baseType: !207, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !483, file: !6, line: 506, baseType: !504, size: 64, offset: 832)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !483, file: !6, line: 507, baseType: !504, size: 64, offset: 896)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !483, file: !6, line: 510, baseType: !555, size: 64, offset: 960)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !124}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !483, file: !6, line: 513, baseType: !559, size: 64, offset: 1024)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !124, !245, !311}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !126, file: !127, line: 453, baseType: !563, size: 64, offset: 8128)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht", file: !317, line: 46, size: 1152, elements: !565)
!565 = !{!566, !567, !571, !577, !581, !582, !583, !585, !586, !587}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !564, file: !317, line: 49, baseType: !411, size: 704)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !564, file: !317, line: 51, baseType: !568, size: 64, offset: 704)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashnode", file: !317, line: 41, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_node", scope: !564, file: !317, line: 53, baseType: !572, size: 64, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!569, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !317, line: 40, baseType: !564)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_subobject", scope: !564, file: !317, line: 56, baseType: !578, size: 64, offset: 832)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!207, !208}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !564, file: !317, line: 58, baseType: !7, size: 32, offset: 896)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !564, file: !317, line: 59, baseType: !7, size: 32, offset: 928)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !564, file: !317, line: 62, baseType: !584, size: 64, offset: 960)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !564, file: !317, line: 65, baseType: !7, size: 32, offset: 1024)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !564, file: !317, line: 66, baseType: !7, size: 32, offset: 1056)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !564, file: !317, line: 69, baseType: !137, size: 8, offset: 1088)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "op_stack", scope: !126, file: !127, line: 456, baseType: !589, size: 64, offset: 8192)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !127, line: 42, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "op_limit", scope: !126, file: !127, line: 456, baseType: !589, size: 64, offset: 8256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !126, file: !127, line: 459, baseType: !593, size: 1024, offset: 8320)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !6, line: 279, size: 1024, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !646, !647, !648, !649, !650, !651, !652, !653, !654}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !593, file: !6, line: 282, baseType: !7, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !593, file: !6, line: 285, baseType: !19, size: 32, offset: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !593, file: !6, line: 288, baseType: !137, size: 8, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !593, file: !6, line: 291, baseType: !137, size: 8, offset: 72)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !593, file: !6, line: 296, baseType: !137, size: 8, offset: 80)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !593, file: !6, line: 299, baseType: !137, size: 8, offset: 88)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !593, file: !6, line: 303, baseType: !137, size: 8, offset: 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !593, file: !6, line: 306, baseType: !137, size: 8, offset: 104)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !593, file: !6, line: 309, baseType: !137, size: 8, offset: 112)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !593, file: !6, line: 312, baseType: !137, size: 8, offset: 120)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !593, file: !6, line: 315, baseType: !137, size: 8, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !593, file: !6, line: 318, baseType: !137, size: 8, offset: 136)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !593, file: !6, line: 321, baseType: !137, size: 8, offset: 144)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !593, file: !6, line: 324, baseType: !137, size: 8, offset: 152)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !593, file: !6, line: 328, baseType: !137, size: 8, offset: 160)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !593, file: !6, line: 331, baseType: !137, size: 8, offset: 168)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !593, file: !6, line: 334, baseType: !137, size: 8, offset: 176)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !593, file: !6, line: 338, baseType: !137, size: 8, offset: 184)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !593, file: !6, line: 341, baseType: !137, size: 8, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !593, file: !6, line: 344, baseType: !137, size: 8, offset: 200)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !593, file: !6, line: 348, baseType: !137, size: 8, offset: 208)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !593, file: !6, line: 352, baseType: !137, size: 8, offset: 216)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !593, file: !6, line: 356, baseType: !137, size: 8, offset: 224)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !593, file: !6, line: 360, baseType: !137, size: 8, offset: 232)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !593, file: !6, line: 363, baseType: !137, size: 8, offset: 240)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !593, file: !6, line: 366, baseType: !137, size: 8, offset: 248)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !593, file: !6, line: 370, baseType: !137, size: 8, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !593, file: !6, line: 373, baseType: !137, size: 8, offset: 264)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !593, file: !6, line: 376, baseType: !137, size: 8, offset: 272)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !593, file: !6, line: 379, baseType: !137, size: 8, offset: 280)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !593, file: !6, line: 382, baseType: !137, size: 8, offset: 288)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !593, file: !6, line: 385, baseType: !137, size: 8, offset: 296)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !593, file: !6, line: 389, baseType: !137, size: 8, offset: 304)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !593, file: !6, line: 392, baseType: !137, size: 8, offset: 312)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !593, file: !6, line: 395, baseType: !137, size: 8, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !593, file: !6, line: 398, baseType: !137, size: 8, offset: 328)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !593, file: !6, line: 401, baseType: !137, size: 8, offset: 336)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !593, file: !6, line: 404, baseType: !180, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !593, file: !6, line: 407, baseType: !180, size: 64, offset: 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !593, file: !6, line: 410, baseType: !180, size: 64, offset: 512)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !593, file: !6, line: 414, baseType: !31, size: 32, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !593, file: !6, line: 417, baseType: !137, size: 8, offset: 608)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !593, file: !6, line: 420, baseType: !137, size: 8, offset: 616)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !593, file: !6, line: 441, baseType: !639, size: 64, offset: 640)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !6, line: 423, size: 64, elements: !640)
!640 = !{!641, !642, !643, !644, !645}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !639, file: !6, line: 426, baseType: !37, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !639, file: !6, line: 429, baseType: !137, size: 8, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !639, file: !6, line: 433, baseType: !137, size: 8, offset: 40)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !639, file: !6, line: 436, baseType: !137, size: 8, offset: 48)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !639, file: !6, line: 440, baseType: !137, size: 8, offset: 56)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !593, file: !6, line: 447, baseType: !208, size: 64, offset: 704)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !593, file: !6, line: 447, baseType: !208, size: 64, offset: 768)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !593, file: !6, line: 447, baseType: !208, size: 64, offset: 832)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !593, file: !6, line: 447, baseType: !208, size: 64, offset: 896)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !593, file: !6, line: 450, baseType: !137, size: 8, offset: 960)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !593, file: !6, line: 450, baseType: !137, size: 8, offset: 968)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !593, file: !6, line: 454, baseType: !137, size: 8, offset: 976)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !593, file: !6, line: 457, baseType: !137, size: 8, offset: 984)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !593, file: !6, line: 460, baseType: !137, size: 8, offset: 992)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "spec_nodes", scope: !126, file: !127, line: 463, baseType: !656, size: 256, offset: 9344)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spec_nodes", file: !127, line: 227, size: 256, elements: !657)
!657 = !{!658, !659, !660, !661}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "n_defined", scope: !656, file: !127, line: 229, baseType: !311, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "n_true", scope: !656, file: !127, line: 230, baseType: !311, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "n_false", scope: !656, file: !127, line: 231, baseType: !311, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "n__VA_ARGS__", scope: !656, file: !127, line: 232, baseType: !311, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "our_hashtable", scope: !126, file: !127, line: 466, baseType: !137, size: 8, offset: 9600)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !126, file: !127, line: 475, baseType: !664, size: 256, offset: 9664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !126, file: !127, line: 469, size: 256, elements: !665)
!665 = !{!666, !667, !668, !669}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !664, file: !127, line: 471, baseType: !273, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !664, file: !127, line: 472, baseType: !273, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !664, file: !127, line: 473, baseType: !273, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !664, file: !127, line: 474, baseType: !245, size: 32, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cur", scope: !126, file: !127, line: 478, baseType: !135, size: 64, offset: 9920)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "saved_rlimit", scope: !126, file: !127, line: 478, baseType: !135, size: 64, offset: 9984)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "saved_line_base", scope: !126, file: !127, line: 478, baseType: !135, size: 64, offset: 10048)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "savedstate", scope: !126, file: !127, line: 482, baseType: !674, size: 64, offset: 10112)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_savedstate", file: !127, line: 482, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !126, file: !127, line: 485, baseType: !7, size: 32, offset: 10176)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "comments", scope: !126, file: !127, line: 488, baseType: !678, size: 128, offset: 10240)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment_table", file: !6, line: 901, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 891, size: 128, elements: !680)
!680 = !{!681, !688, !689}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !679, file: !6, line: 894, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment", file: !6, line: 887, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 880, size: 128, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !684, file: !6, line: 883, baseType: !172, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sloc", scope: !684, file: !6, line: 886, baseType: !245, size: 32, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !679, file: !6, line: 897, baseType: !123, size: 32, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !679, file: !6, line: 900, baseType: !123, size: 32, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "pushed_macros", scope: !126, file: !127, line: 491, baseType: !691, size: 64, offset: 10368)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_pragma_macro", file: !127, line: 310, size: 192, elements: !693)
!693 = !{!694, !695, !696}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !692, file: !127, line: 312, baseType: !691, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !692, file: !127, line: 314, baseType: !172, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !692, file: !127, line: 316, baseType: !331, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!207, !415}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !207}
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !209, line: 35, baseType: !415)
!704 = !{!0, !705, !721, !727, !743}
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(name: "lang_defaults", scope: !2, file: !3, line: 84, type: !707, isLocal: true, isDefinition: true)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 640, elements: !719)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lang_flags", file: !3, line: 72, size: 64, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !709, file: !3, line: 74, baseType: !173, size: 8)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !709, file: !3, line: 75, baseType: !173, size: 8, offset: 8)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !709, file: !3, line: 76, baseType: !173, size: 8, offset: 16)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !709, file: !3, line: 77, baseType: !173, size: 8, offset: 24)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !709, file: !3, line: 78, baseType: !173, size: 8, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !709, file: !3, line: 79, baseType: !173, size: 8, offset: 40)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !709, file: !3, line: 80, baseType: !173, size: 8, offset: 48)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !709, file: !3, line: 81, baseType: !173, size: 8, offset: 56)
!719 = !{!720}
!720 = !DISubrange(count: 10)
!721 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression())
!722 = distinct !DIGlobalVariable(name: "initialized", scope: !723, file: !3, line: 125, type: !123, isLocal: true, isDefinition: true)
!723 = distinct !DISubprogram(name: "init_library", scope: !3, file: !3, line: 123, type: !724, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{null}
!726 = !{}
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(name: "operator_array", scope: !2, file: !3, line: 367, type: !729, isLocal: true, isDefinition: true)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 1408, elements: !741)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "builtin_operator", file: !3, line: 359, size: 128, elements: !732)
!732 = !{!733, !738, !740}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !731, file: !3, line: 361, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !334, line: 22, baseType: !137)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !731, file: !3, line: 362, baseType: !739, size: 16, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !731, file: !3, line: 363, baseType: !739, size: 16, offset: 80)
!741 = !{!742}
!742 = !DISubrange(count: 11)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "builtin_array", scope: !2, file: !3, line: 342, type: !745, isLocal: true, isDefinition: true)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 1280, elements: !719)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "builtin_macro", file: !3, line: 333, size: 128, elements: !748)
!748 = !{!749, !750, !751, !752}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !747, file: !3, line: 335, baseType: !734, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !747, file: !3, line: 336, baseType: !739, size: 16, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !747, file: !3, line: 337, baseType: !739, size: 16, offset: 80)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "always_warn_if_redefined", scope: !747, file: !3, line: 338, baseType: !136, size: 8, offset: 96)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 2048, elements: !754)
!754 = !{!755}
!755 = !DISubrange(count: 256)
!756 = !DIGlobalVariableExpression(var: !722, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!757 = !{i32 2, !"Dwarf Version", i32 4}
!758 = !{i32 2, !"Debug Info Version", i32 3}
!759 = !{i32 1, !"wchar_size", i32 4}
!760 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!761 = distinct !DISubprogram(name: "tolower", scope: !762, file: !762, line: 207, type: !763, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !765)
!762 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!763 = !DISubroutineType(types: !764)
!764 = !{!123, !123}
!765 = !{!766}
!766 = !DILocalVariable(name: "__c", arg: 1, scope: !761, file: !762, line: 207, type: !123)
!767 = !DILocation(line: 0, scope: !761)
!768 = !DILocation(line: 209, column: 22, scope: !761)
!769 = !DILocation(line: 209, column: 39, scope: !761)
!770 = !DILocation(line: 209, column: 38, scope: !761)
!771 = !DILocation(line: 209, column: 37, scope: !761)
!772 = !DILocation(line: 209, column: 10, scope: !761)
!773 = !DILocation(line: 209, column: 3, scope: !761)
!774 = distinct !DISubprogram(name: "toupper", scope: !762, file: !762, line: 213, type: !763, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !775)
!775 = !{!776}
!776 = !DILocalVariable(name: "__c", arg: 1, scope: !774, file: !762, line: 213, type: !123)
!777 = !DILocation(line: 0, scope: !774)
!778 = !DILocation(line: 215, column: 22, scope: !774)
!779 = !DILocation(line: 215, column: 39, scope: !774)
!780 = !DILocation(line: 215, column: 38, scope: !774)
!781 = !DILocation(line: 215, column: 37, scope: !774)
!782 = !DILocation(line: 215, column: 10, scope: !774)
!783 = !DILocation(line: 215, column: 3, scope: !774)
!784 = distinct !DISubprogram(name: "cpp_set_lang", scope: !3, file: !3, line: 104, type: !785, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !787)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !124, !19}
!787 = !{!788, !789, !790}
!788 = !DILocalVariable(name: "pfile", arg: 1, scope: !784, file: !3, line: 104, type: !124)
!789 = !DILocalVariable(name: "lang", arg: 2, scope: !784, file: !3, line: 104, type: !19)
!790 = !DILocalVariable(name: "l", scope: !784, file: !3, line: 106, type: !791)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!792 = !DILocation(line: 0, scope: !784)
!793 = !DILocation(line: 106, column: 33, scope: !784)
!794 = !DILocation(line: 108, column: 3, scope: !784)
!795 = !DILocation(line: 108, column: 28, scope: !784)
!796 = !DILocation(line: 110, column: 35, scope: !784)
!797 = !DILocation(line: 110, column: 3, scope: !784)
!798 = !DILocation(line: 110, column: 30, scope: !784)
!799 = !DILocation(line: 111, column: 41, scope: !784)
!800 = !DILocation(line: 111, column: 3, scope: !784)
!801 = !DILocation(line: 111, column: 36, scope: !784)
!802 = !DILocation(line: 112, column: 47, scope: !784)
!803 = !DILocation(line: 112, column: 3, scope: !784)
!804 = !DILocation(line: 112, column: 42, scope: !784)
!805 = !DILocation(line: 113, column: 50, scope: !784)
!806 = !DILocation(line: 113, column: 3, scope: !784)
!807 = !DILocation(line: 113, column: 45, scope: !784)
!808 = !DILocation(line: 114, column: 35, scope: !784)
!809 = !DILocation(line: 114, column: 3, scope: !784)
!810 = !DILocation(line: 114, column: 30, scope: !784)
!811 = !DILocation(line: 115, column: 3, scope: !784)
!812 = !DILocation(line: 115, column: 36, scope: !784)
!813 = !DILocation(line: 116, column: 48, scope: !784)
!814 = !DILocation(line: 116, column: 3, scope: !784)
!815 = !DILocation(line: 116, column: 43, scope: !784)
!816 = !DILocation(line: 117, column: 40, scope: !784)
!817 = !DILocation(line: 117, column: 3, scope: !784)
!818 = !DILocation(line: 117, column: 35, scope: !784)
!819 = !DILocation(line: 118, column: 41, scope: !784)
!820 = !DILocation(line: 118, column: 3, scope: !784)
!821 = !DILocation(line: 118, column: 36, scope: !784)
!822 = !DILocation(line: 119, column: 1, scope: !784)
!823 = distinct !DISubprogram(name: "cpp_create_reader", scope: !3, file: !3, line: 144, type: !824, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!124, !19, !575, !233}
!826 = !{!827, !828, !829, !830}
!827 = !DILocalVariable(name: "lang", arg: 1, scope: !823, file: !3, line: 144, type: !19)
!828 = !DILocalVariable(name: "table", arg: 2, scope: !823, file: !3, line: 144, type: !575)
!829 = !DILocalVariable(name: "line_table", arg: 3, scope: !823, file: !3, line: 145, type: !233)
!830 = !DILocalVariable(name: "pfile", scope: !823, file: !3, line: 147, type: !124)
!831 = !DILocation(line: 0, scope: !823)
!832 = !DILocation(line: 150, column: 3, scope: !823)
!833 = !DILocation(line: 152, column: 11, scope: !823)
!834 = !DILocation(line: 154, column: 3, scope: !823)
!835 = !DILocation(line: 155, column: 3, scope: !823)
!836 = !DILocation(line: 155, column: 38, scope: !823)
!837 = !DILocation(line: 156, column: 3, scope: !823)
!838 = !DILocation(line: 156, column: 40, scope: !823)
!839 = !DILocation(line: 157, column: 3, scope: !823)
!840 = !DILocation(line: 157, column: 53, scope: !823)
!841 = !DILocation(line: 158, column: 3, scope: !823)
!842 = !DILocation(line: 158, column: 35, scope: !823)
!843 = !DILocation(line: 159, column: 3, scope: !823)
!844 = !DILocation(line: 159, column: 31, scope: !823)
!845 = !DILocation(line: 160, column: 3, scope: !823)
!846 = !DILocation(line: 160, column: 38, scope: !823)
!847 = !DILocation(line: 161, column: 3, scope: !823)
!848 = !DILocation(line: 161, column: 38, scope: !823)
!849 = !DILocation(line: 162, column: 3, scope: !823)
!850 = !DILocation(line: 162, column: 41, scope: !823)
!851 = !DILocation(line: 163, column: 3, scope: !823)
!852 = !DILocation(line: 163, column: 39, scope: !823)
!853 = !DILocation(line: 164, column: 3, scope: !823)
!854 = !DILocation(line: 164, column: 38, scope: !823)
!855 = !DILocation(line: 165, column: 3, scope: !823)
!856 = !DILocation(line: 165, column: 40, scope: !823)
!857 = !DILocation(line: 166, column: 3, scope: !823)
!858 = !DILocation(line: 166, column: 36, scope: !823)
!859 = !DILocation(line: 167, column: 3, scope: !823)
!860 = !DILocation(line: 167, column: 44, scope: !823)
!861 = !DILocation(line: 168, column: 3, scope: !823)
!862 = !DILocation(line: 168, column: 52, scope: !823)
!863 = !DILocation(line: 169, column: 3, scope: !823)
!864 = !DILocation(line: 169, column: 38, scope: !823)
!865 = !DILocation(line: 173, column: 3, scope: !823)
!866 = !DILocation(line: 173, column: 33, scope: !823)
!867 = !DILocation(line: 174, column: 3, scope: !823)
!868 = !DILocation(line: 174, column: 38, scope: !823)
!869 = !DILocation(line: 175, column: 3, scope: !823)
!870 = !DILocation(line: 175, column: 39, scope: !823)
!871 = !DILocation(line: 176, column: 3, scope: !823)
!872 = !DILocation(line: 176, column: 37, scope: !823)
!873 = !DILocation(line: 177, column: 3, scope: !823)
!874 = !DILocation(line: 177, column: 37, scope: !823)
!875 = !DILocation(line: 178, column: 3, scope: !823)
!876 = !DILocation(line: 178, column: 38, scope: !823)
!877 = !DILocation(line: 179, column: 3, scope: !823)
!878 = !DILocation(line: 179, column: 40, scope: !823)
!879 = !DILocation(line: 182, column: 40, scope: !823)
!880 = !DILocation(line: 182, column: 3, scope: !823)
!881 = !DILocation(line: 182, column: 38, scope: !823)
!882 = !DILocation(line: 183, column: 3, scope: !823)
!883 = !DILocation(line: 183, column: 36, scope: !823)
!884 = !DILocation(line: 186, column: 39, scope: !823)
!885 = !DILocation(line: 186, column: 3, scope: !823)
!886 = !DILocation(line: 186, column: 37, scope: !823)
!887 = !DILocation(line: 192, column: 25, scope: !823)
!888 = !DILocation(line: 192, column: 30, scope: !823)
!889 = !DILocation(line: 195, column: 10, scope: !823)
!890 = !DILocation(line: 195, column: 21, scope: !823)
!891 = !DILocation(line: 198, column: 34, scope: !823)
!892 = !DILocation(line: 198, column: 32, scope: !823)
!893 = !DILocation(line: 198, column: 16, scope: !823)
!894 = !DILocation(line: 198, column: 30, scope: !823)
!895 = !DILocation(line: 201, column: 22, scope: !823)
!896 = !DILocation(line: 201, column: 27, scope: !823)
!897 = !DILocation(line: 202, column: 22, scope: !823)
!898 = !DILocation(line: 202, column: 26, scope: !823)
!899 = !DILocation(line: 202, column: 33, scope: !823)
!900 = !DILocation(line: 203, column: 14, scope: !823)
!901 = !DILocation(line: 203, column: 19, scope: !823)
!902 = !DILocation(line: 204, column: 14, scope: !823)
!903 = !DILocation(line: 204, column: 20, scope: !823)
!904 = !DILocation(line: 207, column: 31, scope: !823)
!905 = !DILocation(line: 207, column: 3, scope: !823)
!906 = !DILocation(line: 208, column: 10, scope: !823)
!907 = !DILocation(line: 208, column: 18, scope: !823)
!908 = !DILocation(line: 209, column: 38, scope: !823)
!909 = !DILocation(line: 209, column: 10, scope: !823)
!910 = !DILocation(line: 209, column: 20, scope: !823)
!911 = !DILocation(line: 212, column: 28, scope: !823)
!912 = !DILocation(line: 212, column: 10, scope: !823)
!913 = !DILocation(line: 212, column: 18, scope: !823)
!914 = !DILocation(line: 213, column: 23, scope: !823)
!915 = !DILocation(line: 213, column: 29, scope: !823)
!916 = !DILocation(line: 214, column: 50, scope: !823)
!917 = !DILocation(line: 214, column: 55, scope: !823)
!918 = !DILocation(line: 214, column: 23, scope: !823)
!919 = !DILocation(line: 214, column: 28, scope: !823)
!920 = !DILocation(line: 217, column: 19, scope: !823)
!921 = !DILocation(line: 217, column: 10, scope: !823)
!922 = !DILocation(line: 217, column: 17, scope: !823)
!923 = !DILocation(line: 218, column: 19, scope: !823)
!924 = !DILocation(line: 218, column: 10, scope: !823)
!925 = !DILocation(line: 218, column: 17, scope: !823)
!926 = !DILocation(line: 221, column: 10, scope: !823)
!927 = !DILocation(line: 221, column: 24, scope: !823)
!928 = !DILocation(line: 224, column: 3, scope: !823)
!929 = !DILocation(line: 227, column: 27, scope: !823)
!930 = !DILocation(line: 227, column: 3, scope: !823)
!931 = !DILocation(line: 231, column: 3, scope: !823)
!932 = !DILocation(line: 233, column: 3, scope: !823)
!933 = !DILocation(line: 235, column: 3, scope: !823)
!934 = !DILocation(line: 127, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !723, file: !3, line: 127, column: 7)
!936 = !DILocation(line: 127, column: 7, scope: !723)
!937 = !DILocation(line: 129, column: 19, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 128, column: 5)
!939 = !DILocation(line: 139, column: 5, scope: !938)
!940 = !DILocation(line: 140, column: 1, scope: !723)
!941 = distinct !DISubprogram(name: "cpp_set_line_map", scope: !3, file: !3, line: 241, type: !942, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !944)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !124, !233}
!944 = !{!945, !946}
!945 = !DILocalVariable(name: "pfile", arg: 1, scope: !941, file: !3, line: 241, type: !124)
!946 = !DILocalVariable(name: "line_table", arg: 2, scope: !941, file: !3, line: 241, type: !233)
!947 = !DILocation(line: 0, scope: !941)
!948 = !DILocation(line: 243, column: 10, scope: !941)
!949 = !DILocation(line: 243, column: 21, scope: !941)
!950 = !DILocation(line: 244, column: 1, scope: !941)
!951 = distinct !DISubprogram(name: "cpp_destroy", scope: !3, file: !3, line: 249, type: !556, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959}
!953 = !DILocalVariable(name: "pfile", arg: 1, scope: !951, file: !3, line: 249, type: !124)
!954 = !DILocalVariable(name: "context", scope: !951, file: !3, line: 251, type: !282)
!955 = !DILocalVariable(name: "contextn", scope: !951, file: !3, line: 251, type: !282)
!956 = !DILocalVariable(name: "pmacro", scope: !951, file: !3, line: 252, type: !691)
!957 = !DILocalVariable(name: "run", scope: !951, file: !3, line: 253, type: !456)
!958 = !DILocalVariable(name: "runn", scope: !951, file: !3, line: 253, type: !456)
!959 = !DILocalVariable(name: "i", scope: !951, file: !3, line: 254, type: !123)
!960 = !DILocation(line: 0, scope: !951)
!961 = !DILocation(line: 256, column: 16, scope: !951)
!962 = !DILocation(line: 256, column: 3, scope: !951)
!963 = !DILocation(line: 258, column: 3, scope: !951)
!964 = !DILocation(line: 258, column: 10, scope: !951)
!965 = !DILocation(line: 258, column: 29, scope: !951)
!966 = !DILocation(line: 259, column: 5, scope: !951)
!967 = distinct !{!967, !963, !968}
!968 = !DILocation(line: 259, column: 27, scope: !951)
!969 = !DILocation(line: 261, column: 18, scope: !970)
!970 = distinct !DILexicalBlock(scope: !951, file: !3, line: 261, column: 7)
!971 = !DILocation(line: 261, column: 7, scope: !970)
!972 = !DILocation(line: 261, column: 7, scope: !951)
!973 = !DILocation(line: 262, column: 5, scope: !970)
!974 = !DILocation(line: 264, column: 14, scope: !975)
!975 = distinct !DILexicalBlock(scope: !951, file: !3, line: 264, column: 7)
!976 = !DILocation(line: 264, column: 7, scope: !975)
!977 = !DILocation(line: 264, column: 7, scope: !951)
!978 = !DILocation(line: 266, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !975, file: !3, line: 265, column: 5)
!980 = !DILocation(line: 267, column: 27, scope: !979)
!981 = !DILocation(line: 268, column: 14, scope: !979)
!982 = !DILocation(line: 268, column: 31, scope: !979)
!983 = !DILocation(line: 269, column: 5, scope: !979)
!984 = !DILocation(line: 271, column: 14, scope: !985)
!985 = distinct !DILexicalBlock(scope: !951, file: !3, line: 271, column: 7)
!986 = !DILocation(line: 271, column: 7, scope: !985)
!987 = !DILocation(line: 271, column: 7, scope: !951)
!988 = !DILocation(line: 272, column: 5, scope: !985)
!989 = !DILocation(line: 273, column: 3, scope: !951)
!990 = !DILocation(line: 275, column: 3, scope: !951)
!991 = !DILocation(line: 276, column: 3, scope: !951)
!992 = !DILocation(line: 277, column: 3, scope: !951)
!993 = !DILocation(line: 279, column: 26, scope: !951)
!994 = !DILocation(line: 279, column: 3, scope: !951)
!995 = !DILocation(line: 280, column: 26, scope: !951)
!996 = !DILocation(line: 280, column: 3, scope: !951)
!997 = !DILocation(line: 281, column: 26, scope: !951)
!998 = !DILocation(line: 281, column: 3, scope: !951)
!999 = !DILocation(line: 283, column: 22, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !951, file: !3, line: 283, column: 3)
!1001 = !DILocation(line: 283, column: 8, scope: !1000)
!1002 = !DILocation(line: 0, scope: !1000)
!1003 = !DILocation(line: 283, column: 3, scope: !1000)
!1004 = !DILocation(line: 285, column: 19, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 284, column: 5)
!1006 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 283, column: 3)
!1007 = !DILocation(line: 286, column: 18, scope: !1005)
!1008 = !DILocation(line: 286, column: 7, scope: !1005)
!1009 = !DILocation(line: 287, column: 15, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 287, column: 11)
!1011 = !DILocation(line: 287, column: 11, scope: !1005)
!1012 = !DILocation(line: 288, column: 8, scope: !1010)
!1013 = !DILocation(line: 288, column: 2, scope: !1010)
!1014 = !DILocation(line: 283, column: 3, scope: !1006)
!1015 = distinct !{!1015, !1003, !1016}
!1016 = !DILocation(line: 289, column: 5, scope: !1000)
!1017 = !DILocation(line: 291, column: 38, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !951, file: !3, line: 291, column: 3)
!1019 = !DILocation(line: 291, column: 8, scope: !1018)
!1020 = !DILocation(line: 0, scope: !1018)
!1021 = !DILocation(line: 291, column: 3, scope: !1018)
!1022 = !DILocation(line: 293, column: 27, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 292, column: 5)
!1024 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 291, column: 3)
!1025 = !DILocation(line: 294, column: 7, scope: !1023)
!1026 = !DILocation(line: 291, column: 3, scope: !1024)
!1027 = distinct !{!1027, !1021, !1028}
!1028 = !DILocation(line: 295, column: 5, scope: !1018)
!1029 = !DILocation(line: 297, column: 23, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !951, file: !3, line: 297, column: 7)
!1031 = !DILocation(line: 297, column: 7, scope: !1030)
!1032 = !DILocation(line: 297, column: 7, scope: !951)
!1033 = !DILocation(line: 0, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 299, column: 7)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 299, column: 7)
!1036 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 298, column: 5)
!1037 = !DILocation(line: 299, column: 7, scope: !1035)
!1038 = !DILocation(line: 0, scope: !1036)
!1039 = !DILocation(line: 299, column: 39, scope: !1034)
!1040 = !DILocation(line: 299, column: 21, scope: !1034)
!1041 = !DILocation(line: 300, column: 35, scope: !1034)
!1042 = !DILocation(line: 300, column: 2, scope: !1034)
!1043 = !DILocation(line: 299, column: 47, scope: !1034)
!1044 = !DILocation(line: 299, column: 7, scope: !1034)
!1045 = distinct !{!1045, !1037, !1046}
!1046 = !DILocation(line: 300, column: 42, scope: !1035)
!1047 = !DILocation(line: 302, column: 13, scope: !1036)
!1048 = !DILocation(line: 302, column: 7, scope: !1036)
!1049 = !DILocation(line: 303, column: 5, scope: !1036)
!1050 = !DILocation(line: 304, column: 14, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !951, file: !3, line: 304, column: 7)
!1052 = !DILocation(line: 304, column: 7, scope: !1051)
!1053 = !DILocation(line: 304, column: 7, scope: !951)
!1054 = !DILocation(line: 0, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 307, column: 2)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 305, column: 5)
!1057 = !DILocation(line: 306, column: 7, scope: !1056)
!1058 = !DILocation(line: 308, column: 20, scope: !1055)
!1059 = !DILocation(line: 309, column: 35, scope: !1055)
!1060 = !DILocation(line: 309, column: 25, scope: !1055)
!1061 = !DILocation(line: 310, column: 18, scope: !1055)
!1062 = !DILocation(line: 310, column: 4, scope: !1055)
!1063 = !DILocation(line: 311, column: 10, scope: !1055)
!1064 = !DILocation(line: 311, column: 4, scope: !1055)
!1065 = !DILocation(line: 313, column: 21, scope: !1056)
!1066 = !DILocation(line: 312, column: 2, scope: !1055)
!1067 = distinct !{!1067, !1057, !1068}
!1068 = !DILocation(line: 313, column: 34, scope: !1056)
!1069 = !DILocation(line: 316, column: 9, scope: !951)
!1070 = !DILocation(line: 316, column: 3, scope: !951)
!1071 = !DILocation(line: 317, column: 1, scope: !951)
!1072 = distinct !DISubprogram(name: "cpp_named_operator2name", scope: !3, file: !3, line: 403, type: !1073, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1075)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!180, !42}
!1075 = !{!1076, !1077}
!1076 = !DILocalVariable(name: "type", arg: 1, scope: !1072, file: !3, line: 403, type: !42)
!1077 = !DILocalVariable(name: "b", scope: !1072, file: !3, line: 405, type: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!1079 = !DILocation(line: 0, scope: !1072)
!1080 = !DILocation(line: 407, column: 8, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 407, column: 3)
!1082 = !DILocation(line: 0, scope: !1081)
!1083 = !DILocation(line: 408, column: 10, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 407, column: 3)
!1085 = !DILocation(line: 407, column: 3, scope: !1081)
!1086 = !DILocation(line: 411, column: 22, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 411, column: 11)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 410, column: 5)
!1089 = !DILocation(line: 411, column: 19, scope: !1087)
!1090 = !DILocation(line: 411, column: 16, scope: !1087)
!1091 = !DILocation(line: 411, column: 11, scope: !1088)
!1092 = !DILocation(line: 412, column: 27, scope: !1087)
!1093 = !DILocation(line: 412, column: 2, scope: !1087)
!1094 = !DILocation(line: 409, column: 9, scope: !1084)
!1095 = !DILocation(line: 407, column: 3, scope: !1084)
!1096 = distinct !{!1096, !1085, !1097}
!1097 = !DILocation(line: 413, column: 5, scope: !1081)
!1098 = !DILocation(line: 416, column: 1, scope: !1072)
!1099 = distinct !DISubprogram(name: "cpp_init_special_builtins", scope: !3, file: !3, line: 419, type: !556, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1100)
!1100 = !{!1101, !1102, !1104, !1105}
!1101 = !DILocalVariable(name: "pfile", arg: 1, scope: !1099, file: !3, line: 419, type: !124)
!1102 = !DILocalVariable(name: "b", scope: !1099, file: !3, line: 421, type: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!1104 = !DILocalVariable(name: "n", scope: !1099, file: !3, line: 422, type: !208)
!1105 = !DILocalVariable(name: "hp", scope: !1106, file: !3, line: 432, type: !311)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 431, column: 5)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 430, column: 3)
!1108 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 430, column: 3)
!1109 = !DILocation(line: 0, scope: !1099)
!1110 = !DILocation(line: 424, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 424, column: 7)
!1112 = !DILocation(line: 424, column: 7, scope: !1099)
!1113 = !DILocation(line: 425, column: 5, scope: !1111)
!1114 = !DILocation(line: 426, column: 14, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 426, column: 12)
!1116 = !DILocation(line: 427, column: 5, scope: !1115)
!1117 = !DILocation(line: 427, column: 8, scope: !1115)
!1118 = !DILocation(line: 426, column: 12, scope: !1111)
!1119 = !DILocation(line: 428, column: 5, scope: !1115)
!1120 = !DILocation(line: 0, scope: !1111)
!1121 = !DILocation(line: 0, scope: !1107)
!1122 = !DILocation(line: 0, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 435, column: 11)
!1124 = !DILocation(line: 430, column: 8, scope: !1108)
!1125 = !DILocation(line: 0, scope: !1108)
!1126 = !DILocation(line: 430, column: 29, scope: !1107)
!1127 = !DILocation(line: 430, column: 3, scope: !1108)
!1128 = !DILocation(line: 432, column: 48, scope: !1106)
!1129 = !DILocation(line: 432, column: 57, scope: !1106)
!1130 = !DILocation(line: 432, column: 54, scope: !1106)
!1131 = !DILocation(line: 432, column: 26, scope: !1106)
!1132 = !DILocation(line: 0, scope: !1106)
!1133 = !DILocation(line: 433, column: 11, scope: !1106)
!1134 = !DILocation(line: 433, column: 16, scope: !1106)
!1135 = !DILocation(line: 434, column: 17, scope: !1106)
!1136 = !DILocation(line: 435, column: 14, scope: !1123)
!1137 = !DILocation(line: 435, column: 11, scope: !1123)
!1138 = !DILocation(line: 436, column: 11, scope: !1123)
!1139 = !DILocation(line: 436, column: 14, scope: !1123)
!1140 = !DILocation(line: 435, column: 11, scope: !1106)
!1141 = !DILocation(line: 437, column: 12, scope: !1123)
!1142 = !DILocation(line: 437, column: 2, scope: !1123)
!1143 = !DILocation(line: 438, column: 54, scope: !1106)
!1144 = !DILocation(line: 438, column: 27, scope: !1106)
!1145 = !DILocation(line: 438, column: 11, scope: !1106)
!1146 = !DILocation(line: 438, column: 17, scope: !1106)
!1147 = !DILocation(line: 438, column: 25, scope: !1106)
!1148 = !DILocation(line: 430, column: 51, scope: !1107)
!1149 = !DILocation(line: 430, column: 3, scope: !1107)
!1150 = distinct !{!1150, !1127, !1151}
!1151 = !DILocation(line: 439, column: 5, scope: !1108)
!1152 = !DILocation(line: 440, column: 1, scope: !1099)
!1153 = distinct !DISubprogram(name: "cpp_init_builtins", scope: !3, file: !3, line: 446, type: !1154, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1156)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !124, !123}
!1156 = !{!1157, !1158}
!1157 = !DILocalVariable(name: "pfile", arg: 1, scope: !1153, file: !3, line: 446, type: !124)
!1158 = !DILocalVariable(name: "hosted", arg: 2, scope: !1153, file: !3, line: 446, type: !123)
!1159 = !DILocation(line: 0, scope: !1153)
!1160 = !DILocation(line: 448, column: 3, scope: !1153)
!1161 = !DILocation(line: 450, column: 8, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 450, column: 7)
!1163 = !DILocation(line: 451, column: 7, scope: !1162)
!1164 = !DILocation(line: 451, column: 13, scope: !1162)
!1165 = !DILocation(line: 452, column: 4, scope: !1162)
!1166 = !DILocation(line: 452, column: 7, scope: !1162)
!1167 = !DILocation(line: 450, column: 7, scope: !1153)
!1168 = !DILocation(line: 453, column: 5, scope: !1162)
!1169 = !DILocation(line: 455, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 455, column: 7)
!1171 = !DILocation(line: 455, column: 7, scope: !1153)
!1172 = !DILocation(line: 456, column: 5, scope: !1170)
!1173 = !DILocation(line: 457, column: 12, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 457, column: 12)
!1175 = !DILocation(line: 457, column: 37, scope: !1174)
!1176 = !DILocation(line: 457, column: 12, scope: !1170)
!1177 = !DILocation(line: 458, column: 5, scope: !1174)
!1178 = !DILocation(line: 459, column: 37, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 459, column: 12)
!1180 = !DILocation(line: 459, column: 12, scope: !1174)
!1181 = !DILocation(line: 460, column: 5, scope: !1179)
!1182 = !DILocation(line: 461, column: 12, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 461, column: 12)
!1184 = !DILocation(line: 461, column: 12, scope: !1179)
!1185 = !DILocation(line: 462, column: 5, scope: !1183)
!1186 = !DILocation(line: 464, column: 7, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 464, column: 7)
!1188 = !DILocation(line: 464, column: 7, scope: !1153)
!1189 = !DILocation(line: 465, column: 5, scope: !1187)
!1190 = !DILocation(line: 467, column: 5, scope: !1187)
!1191 = !DILocation(line: 469, column: 7, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 469, column: 7)
!1193 = !DILocation(line: 469, column: 7, scope: !1153)
!1194 = !DILocation(line: 470, column: 5, scope: !1192)
!1195 = !DILocation(line: 471, column: 1, scope: !1153)
!1196 = distinct !DISubprogram(name: "cpp_post_options", scope: !3, file: !3, line: 529, type: !556, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1197)
!1197 = !{!1198, !1199}
!1198 = !DILocalVariable(name: "pfile", arg: 1, scope: !1196, file: !3, line: 529, type: !124)
!1199 = !DILocalVariable(name: "flags", scope: !1196, file: !3, line: 531, type: !123)
!1200 = !DILocation(line: 0, scope: !1196)
!1201 = !DILocation(line: 535, column: 3, scope: !1196)
!1202 = !DILocation(line: 539, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 539, column: 7)
!1204 = !DILocation(line: 539, column: 37, scope: !1203)
!1205 = !DILocation(line: 539, column: 40, scope: !1203)
!1206 = !DILocation(line: 539, column: 7, scope: !1196)
!1207 = !DILocation(line: 541, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 541, column: 7)
!1209 = !DILocation(line: 542, column: 11, scope: !1208)
!1210 = !DILocation(line: 541, column: 7, scope: !1196)
!1211 = !DILocation(line: 543, column: 13, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 543, column: 7)
!1213 = !DILocation(line: 543, column: 7, scope: !1196)
!1214 = !DILocation(line: 544, column: 5, scope: !1212)
!1215 = !DILocation(line: 545, column: 1, scope: !1196)
!1216 = distinct !DISubprogram(name: "post_options", scope: !3, file: !3, line: 694, type: !556, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1217)
!1217 = !{!1218}
!1218 = !DILocalVariable(name: "pfile", arg: 1, scope: !1216, file: !3, line: 694, type: !124)
!1219 = !DILocation(line: 0, scope: !1216)
!1220 = !DILocation(line: 697, column: 7, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 697, column: 7)
!1222 = !DILocation(line: 697, column: 7, scope: !1216)
!1223 = !DILocation(line: 698, column: 5, scope: !1221)
!1224 = !DILocation(line: 698, column: 42, scope: !1221)
!1225 = !DILocation(line: 702, column: 7, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 702, column: 7)
!1227 = !DILocation(line: 702, column: 7, scope: !1216)
!1228 = !DILocation(line: 704, column: 12, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 704, column: 11)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 703, column: 5)
!1231 = !DILocation(line: 704, column: 11, scope: !1230)
!1232 = !DILocation(line: 705, column: 15, scope: !1229)
!1233 = !DILocation(line: 705, column: 33, scope: !1229)
!1234 = !DILocation(line: 705, column: 2, scope: !1229)
!1235 = !DILocation(line: 706, column: 7, scope: !1230)
!1236 = !DILocation(line: 706, column: 39, scope: !1230)
!1237 = !DILocation(line: 707, column: 5, scope: !1230)
!1238 = !DILocation(line: 709, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 709, column: 7)
!1240 = !DILocation(line: 709, column: 42, scope: !1239)
!1241 = !DILocation(line: 709, column: 7, scope: !1216)
!1242 = !DILocation(line: 710, column: 43, scope: !1239)
!1243 = !DILocation(line: 710, column: 42, scope: !1239)
!1244 = !DILocation(line: 710, column: 40, scope: !1239)
!1245 = !DILocation(line: 710, column: 5, scope: !1239)
!1246 = !DILocation(line: 712, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 712, column: 7)
!1248 = !DILocation(line: 712, column: 7, scope: !1216)
!1249 = !DILocation(line: 714, column: 7, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 713, column: 5)
!1251 = !DILocation(line: 714, column: 46, scope: !1250)
!1252 = !DILocation(line: 717, column: 7, scope: !1250)
!1253 = !DILocation(line: 717, column: 39, scope: !1250)
!1254 = !DILocation(line: 718, column: 7, scope: !1250)
!1255 = !DILocation(line: 718, column: 37, scope: !1250)
!1256 = !DILocation(line: 719, column: 42, scope: !1250)
!1257 = !DILocation(line: 720, column: 5, scope: !1250)
!1258 = !DILocation(line: 721, column: 1, scope: !1216)
!1259 = distinct !DISubprogram(name: "mark_named_operators", scope: !3, file: !3, line: 385, type: !1154, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1260)
!1260 = !{!1261, !1262, !1263, !1264}
!1261 = !DILocalVariable(name: "pfile", arg: 1, scope: !1259, file: !3, line: 385, type: !124)
!1262 = !DILocalVariable(name: "flags", arg: 2, scope: !1259, file: !3, line: 385, type: !123)
!1263 = !DILocalVariable(name: "b", scope: !1259, file: !3, line: 387, type: !1078)
!1264 = !DILocalVariable(name: "hp", scope: !1265, file: !3, line: 393, type: !311)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 392, column: 5)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 389, column: 3)
!1267 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 389, column: 3)
!1268 = !DILocation(line: 0, scope: !1259)
!1269 = !DILocation(line: 0, scope: !1265)
!1270 = !DILocation(line: 389, column: 8, scope: !1267)
!1271 = !DILocation(line: 0, scope: !1267)
!1272 = !DILocation(line: 390, column: 10, scope: !1266)
!1273 = !DILocation(line: 389, column: 3, scope: !1267)
!1274 = !DILocation(line: 393, column: 48, scope: !1265)
!1275 = !DILocation(line: 393, column: 57, scope: !1265)
!1276 = !DILocation(line: 393, column: 54, scope: !1265)
!1277 = !DILocation(line: 393, column: 26, scope: !1265)
!1278 = !DILocation(line: 394, column: 11, scope: !1265)
!1279 = !DILocation(line: 394, column: 17, scope: !1265)
!1280 = !DILocation(line: 395, column: 11, scope: !1265)
!1281 = !DILocation(line: 395, column: 24, scope: !1265)
!1282 = !DILocation(line: 396, column: 32, scope: !1265)
!1283 = !DILocation(line: 396, column: 27, scope: !1265)
!1284 = !DILocation(line: 391, column: 9, scope: !1266)
!1285 = !DILocation(line: 389, column: 3, scope: !1266)
!1286 = distinct !{!1286, !1273, !1287}
!1287 = !DILocation(line: 397, column: 5, scope: !1267)
!1288 = !DILocation(line: 398, column: 1, scope: !1259)
!1289 = distinct !DISubprogram(name: "cpp_read_main_file", scope: !3, file: !3, line: 551, type: !1290, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1292)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!180, !124, !180}
!1292 = !{!1293, !1294}
!1293 = !DILocalVariable(name: "pfile", arg: 1, scope: !1289, file: !3, line: 551, type: !124)
!1294 = !DILocalVariable(name: "fname", arg: 2, scope: !1289, file: !3, line: 551, type: !180)
!1295 = !DILocation(line: 0, scope: !1289)
!1296 = !DILocation(line: 553, column: 7, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 553, column: 7)
!1298 = !DILocation(line: 553, column: 38, scope: !1297)
!1299 = !DILocation(line: 553, column: 7, scope: !1289)
!1300 = !DILocation(line: 555, column: 19, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 555, column: 11)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 554, column: 5)
!1303 = !DILocation(line: 555, column: 12, scope: !1301)
!1304 = !DILocation(line: 555, column: 11, scope: !1302)
!1305 = !DILocation(line: 556, column: 16, scope: !1301)
!1306 = !DILocation(line: 556, column: 14, scope: !1301)
!1307 = !DILocation(line: 556, column: 2, scope: !1301)
!1308 = !DILocation(line: 559, column: 39, scope: !1302)
!1309 = !DILocation(line: 559, column: 7, scope: !1302)
!1310 = !DILocation(line: 560, column: 5, scope: !1302)
!1311 = !DILocation(line: 563, column: 45, scope: !1289)
!1312 = !DILocation(line: 563, column: 7, scope: !1289)
!1313 = !DILocation(line: 562, column: 10, scope: !1289)
!1314 = !DILocation(line: 563, column: 5, scope: !1289)
!1315 = !DILocation(line: 564, column: 7, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 564, column: 7)
!1317 = !DILocation(line: 564, column: 7, scope: !1289)
!1318 = !DILocation(line: 567, column: 34, scope: !1289)
!1319 = !DILocation(line: 567, column: 3, scope: !1289)
!1320 = !DILocation(line: 571, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 571, column: 7)
!1322 = !DILocation(line: 571, column: 7, scope: !1289)
!1323 = !DILocation(line: 573, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 572, column: 5)
!1325 = !DILocation(line: 574, column: 22, scope: !1324)
!1326 = !DILocation(line: 574, column: 34, scope: !1324)
!1327 = !DILocation(line: 574, column: 58, scope: !1324)
!1328 = !DILocation(line: 574, column: 62, scope: !1324)
!1329 = !DILocation(line: 574, column: 15, scope: !1324)
!1330 = !DILocation(line: 574, column: 66, scope: !1324)
!1331 = !DILocation(line: 575, column: 5, scope: !1324)
!1332 = !DILocation(line: 577, column: 1, scope: !1289)
!1333 = distinct !DISubprogram(name: "read_original_filename", scope: !3, file: !3, line: 584, type: !556, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1334)
!1334 = !{!1335, !1336, !1337}
!1335 = !DILocalVariable(name: "pfile", arg: 1, scope: !1333, file: !3, line: 584, type: !124)
!1336 = !DILocalVariable(name: "token", scope: !1333, file: !3, line: 586, type: !295)
!1337 = !DILocalVariable(name: "token1", scope: !1333, file: !3, line: 586, type: !295)
!1338 = !DILocation(line: 0, scope: !1333)
!1339 = !DILocation(line: 590, column: 11, scope: !1333)
!1340 = !DILocation(line: 591, column: 14, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 591, column: 7)
!1342 = !DILocation(line: 591, column: 19, scope: !1341)
!1343 = !DILocation(line: 591, column: 7, scope: !1333)
!1344 = !DILocation(line: 593, column: 20, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 592, column: 5)
!1346 = !DILocation(line: 593, column: 33, scope: !1345)
!1347 = !DILocation(line: 594, column: 16, scope: !1345)
!1348 = !DILocation(line: 595, column: 7, scope: !1345)
!1349 = !DILocation(line: 596, column: 33, scope: !1345)
!1350 = !DILocation(line: 599, column: 19, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 599, column: 11)
!1352 = !DILocation(line: 599, column: 24, scope: !1351)
!1353 = !DILocation(line: 600, column: 4, scope: !1351)
!1354 = !DILocation(line: 600, column: 44, scope: !1351)
!1355 = !DILocation(line: 600, column: 50, scope: !1351)
!1356 = !DILocation(line: 600, column: 7, scope: !1351)
!1357 = !DILocation(line: 599, column: 11, scope: !1345)
!1358 = !DILocation(line: 602, column: 4, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 601, column: 2)
!1360 = !DILocation(line: 603, column: 4, scope: !1359)
!1361 = !DILocation(line: 608, column: 3, scope: !1333)
!1362 = !DILocation(line: 609, column: 1, scope: !1333)
!1363 = distinct !DISubprogram(name: "cpp_finish", scope: !3, file: !3, line: 665, type: !1364, scopeLine: 666, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1417)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !124, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1368, line: 7, baseType: !1369)
!1368 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1370, line: 49, size: 1728, elements: !1371)
!1370 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1371 = !{!1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1387, !1389, !1390, !1391, !1393, !1394, !1396, !1398, !1401, !1403, !1406, !1409, !1410, !1411, !1412, !1413}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1369, file: !1370, line: 51, baseType: !123, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1369, file: !1370, line: 54, baseType: !172, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1369, file: !1370, line: 55, baseType: !172, size: 64, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1369, file: !1370, line: 56, baseType: !172, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1369, file: !1370, line: 57, baseType: !172, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1369, file: !1370, line: 58, baseType: !172, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1369, file: !1370, line: 59, baseType: !172, size: 64, offset: 384)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1369, file: !1370, line: 60, baseType: !172, size: 64, offset: 448)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1369, file: !1370, line: 61, baseType: !172, size: 64, offset: 512)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1369, file: !1370, line: 64, baseType: !172, size: 64, offset: 576)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1369, file: !1370, line: 65, baseType: !172, size: 64, offset: 640)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1369, file: !1370, line: 66, baseType: !172, size: 64, offset: 704)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1369, file: !1370, line: 68, baseType: !1385, size: 64, offset: 768)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1370, line: 36, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1369, file: !1370, line: 70, baseType: !1388, size: 64, offset: 832)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1369, file: !1370, line: 72, baseType: !123, size: 32, offset: 896)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1369, file: !1370, line: 73, baseType: !123, size: 32, offset: 928)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1369, file: !1370, line: 74, baseType: !1392, size: 64, offset: 960)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !192, line: 152, baseType: !415)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1369, file: !1370, line: 77, baseType: !303, size: 16, offset: 1024)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1369, file: !1370, line: 78, baseType: !1395, size: 8, offset: 1040)
!1395 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1369, file: !1370, line: 79, baseType: !1397, size: 8, offset: 1048)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 8, elements: !361)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1369, file: !1370, line: 81, baseType: !1399, size: 64, offset: 1088)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1370, line: 43, baseType: null)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1369, file: !1370, line: 89, baseType: !1402, size: 64, offset: 1152)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !192, line: 153, baseType: !415)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1369, file: !1370, line: 91, baseType: !1404, size: 64, offset: 1216)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1370, line: 37, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1369, file: !1370, line: 92, baseType: !1407, size: 64, offset: 1280)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1370, line: 38, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1369, file: !1370, line: 93, baseType: !1388, size: 64, offset: 1344)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1369, file: !1370, line: 94, baseType: !207, size: 64, offset: 1408)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1369, file: !1370, line: 95, baseType: !208, size: 64, offset: 1472)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1369, file: !1370, line: 96, baseType: !123, size: 32, offset: 1536)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1369, file: !1370, line: 98, baseType: !1414, size: 160, offset: 1568)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 160, elements: !1415)
!1415 = !{!1416}
!1416 = !DISubrange(count: 20)
!1417 = !{!1418, !1419}
!1418 = !DILocalVariable(name: "pfile", arg: 1, scope: !1363, file: !3, line: 665, type: !124)
!1419 = !DILocalVariable(name: "deps_stream", arg: 2, scope: !1363, file: !3, line: 665, type: !1366)
!1420 = !DILocation(line: 0, scope: !1363)
!1421 = !DILocation(line: 668, column: 7, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 668, column: 7)
!1423 = !DILocation(line: 668, column: 7, scope: !1363)
!1424 = !DILocation(line: 669, column: 5, scope: !1422)
!1425 = !DILocation(line: 676, column: 3, scope: !1363)
!1426 = !DILocation(line: 676, column: 17, scope: !1363)
!1427 = !DILocation(line: 677, column: 5, scope: !1363)
!1428 = distinct !{!1428, !1425, !1429}
!1429 = !DILocation(line: 677, column: 27, scope: !1363)
!1430 = !DILocation(line: 679, column: 7, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 679, column: 7)
!1432 = !DILocation(line: 679, column: 38, scope: !1431)
!1433 = !DILocation(line: 680, column: 10, scope: !1431)
!1434 = !DILocation(line: 680, column: 7, scope: !1431)
!1435 = !DILocation(line: 682, column: 26, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 681, column: 5)
!1437 = !DILocation(line: 682, column: 7, scope: !1436)
!1438 = !DILocation(line: 684, column: 11, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 684, column: 11)
!1440 = !DILocation(line: 684, column: 11, scope: !1436)
!1441 = !DILocation(line: 685, column: 29, scope: !1439)
!1442 = !DILocation(line: 685, column: 2, scope: !1439)
!1443 = !DILocation(line: 689, column: 7, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 689, column: 7)
!1445 = !DILocation(line: 689, column: 7, scope: !1363)
!1446 = !DILocation(line: 690, column: 5, scope: !1444)
!1447 = !DILocation(line: 691, column: 1, scope: !1363)
!1448 = distinct !DISubprogram(name: "read_original_directory", scope: !3, file: !3, line: 615, type: !556, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1449)
!1449 = !{!1450, !1451, !1452, !1453}
!1450 = !DILocalVariable(name: "pfile", arg: 1, scope: !1448, file: !3, line: 615, type: !124)
!1451 = !DILocalVariable(name: "hash", scope: !1448, file: !3, line: 617, type: !295)
!1452 = !DILocalVariable(name: "token", scope: !1448, file: !3, line: 617, type: !295)
!1453 = !DILocalVariable(name: "debugdir", scope: !1454, file: !3, line: 649, type: !172)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 648, column: 5)
!1455 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 647, column: 7)
!1456 = !DILocation(line: 0, scope: !1448)
!1457 = !DILocation(line: 621, column: 10, scope: !1448)
!1458 = !DILocation(line: 622, column: 13, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 622, column: 7)
!1460 = !DILocation(line: 622, column: 18, scope: !1459)
!1461 = !DILocation(line: 622, column: 7, scope: !1448)
!1462 = !DILocation(line: 624, column: 7, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 623, column: 5)
!1464 = !DILocation(line: 625, column: 7, scope: !1463)
!1465 = !DILocation(line: 628, column: 11, scope: !1448)
!1466 = !DILocation(line: 630, column: 14, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 630, column: 7)
!1468 = !DILocation(line: 630, column: 19, scope: !1467)
!1469 = !DILocation(line: 630, column: 7, scope: !1448)
!1470 = !DILocation(line: 632, column: 7, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 631, column: 5)
!1472 = !DILocation(line: 633, column: 7, scope: !1471)
!1473 = !DILocation(line: 636, column: 11, scope: !1448)
!1474 = !DILocation(line: 638, column: 14, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 638, column: 7)
!1476 = !DILocation(line: 638, column: 19, scope: !1475)
!1477 = !DILocation(line: 639, column: 7, scope: !1475)
!1478 = !DILocation(line: 639, column: 28, scope: !1475)
!1479 = !DILocation(line: 639, column: 32, scope: !1475)
!1480 = !DILocation(line: 640, column: 6, scope: !1475)
!1481 = !DILocation(line: 640, column: 24, scope: !1475)
!1482 = !DILocation(line: 640, column: 47, scope: !1475)
!1483 = !DILocation(line: 640, column: 9, scope: !1475)
!1484 = !DILocation(line: 640, column: 51, scope: !1475)
!1485 = !DILocation(line: 641, column: 6, scope: !1475)
!1486 = !DILocation(line: 641, column: 47, scope: !1475)
!1487 = !DILocation(line: 641, column: 9, scope: !1475)
!1488 = !DILocation(line: 641, column: 51, scope: !1475)
!1489 = !DILocation(line: 638, column: 7, scope: !1448)
!1490 = !DILocation(line: 643, column: 7, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 642, column: 5)
!1492 = !DILocation(line: 644, column: 7, scope: !1491)
!1493 = !DILocation(line: 647, column: 17, scope: !1455)
!1494 = !DILocation(line: 647, column: 7, scope: !1455)
!1495 = !DILocation(line: 647, column: 7, scope: !1448)
!1496 = !DILocation(line: 649, column: 33, scope: !1454)
!1497 = !DILocation(line: 0, scope: !1454)
!1498 = !DILocation(line: 651, column: 60, scope: !1454)
!1499 = !DILocation(line: 652, column: 27, scope: !1454)
!1500 = !DILocation(line: 652, column: 8, scope: !1454)
!1501 = !DILocation(line: 651, column: 7, scope: !1454)
!1502 = !DILocation(line: 653, column: 31, scope: !1454)
!1503 = !DILocation(line: 653, column: 35, scope: !1454)
!1504 = !DILocation(line: 653, column: 7, scope: !1454)
!1505 = !DILocation(line: 653, column: 40, scope: !1454)
!1506 = !DILocation(line: 655, column: 17, scope: !1454)
!1507 = !DILocation(line: 655, column: 7, scope: !1454)
!1508 = !DILocation(line: 656, column: 5, scope: !1454)
!1509 = !DILocation(line: 657, column: 1, scope: !1448)
