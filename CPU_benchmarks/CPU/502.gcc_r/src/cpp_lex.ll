; ModuleID = 'cpp_lex.bc'
source_filename = "cpp_lex.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.token_spelling = type { i32, i8* }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, i8* }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { i8*, i32, i32 }
%union._cpp_hashnode_value = type { %struct.cpp_macro* }
%struct.cpp_macro = type { %struct.cpp_hashnode**, %union.cpp_macro_u, i32, i32, i16, i8 }
%union.cpp_macro_u = type { %struct.cpp_token* }
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
%struct.tokenrun = type { %struct.tokenrun*, %struct.tokenrun*, %struct.cpp_token*, %struct.cpp_token* }
%struct.cset_converter = type { i8 (i8*, i8*, i64, %struct._cpp_strbuf*)*, i8*, i32 }
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
%struct.normalize_state = type { i32, i8, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@_cpp_trigraph_map = external dso_local local_unnamed_addr constant [256 x i8], align 16
@.str = private unnamed_addr constant [41 x i8] c"backslash and newline separated by space\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"backslash-newline at end of file\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"trigraph ??%c converted to %c\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"trigraph ??%c ignored, use -trigraphs to enable\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\22/*\22 within comment\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"C++ style comments are not allowed in ISO C90\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"(this will be reported only once per input file)\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"multi-line comment\00", align 1
@token_spellings = internal unnamed_addr constant [73 x %struct.token_spelling] [%struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0) }, %struct.token_spelling { i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.60, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.64, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i32 0, i32 0) }, %struct.token_spelling { i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.82, i32 0, i32 0) }, %struct.token_spelling { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0) }, %struct.token_spelling { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0) }, %struct.token_spelling { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0) }, %struct.token_spelling { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i32 0, i32 0) }, %struct.token_spelling { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0) }, %struct.token_spelling { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0) }, %struct.token_spelling { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0) }], align 16, !dbg !0
@.str.9 = private unnamed_addr constant [21 x i8] c"unspellable token %s\00", align 1
@digraph_spellings = internal unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0)], align 16, !dbg !270
@.str.10 = private unnamed_addr constant [5 x i8] c"#%s \00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"attempt to use poisoned \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"__VA_ARGS__ can only appear in the expansion of a C99 variadic macro\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"identifier \22%s\22 is a special operator name in C++\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"%s in preprocessing directive\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"form feed\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"vertical tab\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"null character(s) ignored\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"`%.*s' is not in NFKC\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"`%.*s' is not in NFC\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"null character(s) preserved in literal\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"missing terminating %c character\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"raw string delimiter longer than 16 characters\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"invalid character '%c' in raw string delimiter\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"unterminated raw string\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"'$' in identifier or number\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"##\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"->*\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"AT_NAME\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"NUMBER\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"WCHAR\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"CHAR16\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"CHAR32\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"OTHER\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"WSTRING\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"STRING16\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"STRING32\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"UTF8STRING\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"OBJC_STRING\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"HEADER_NAME\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"MACRO_ARG\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"PRAGMA\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"PRAGMA_EOL\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"PADDING\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"%:\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"%:%:\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"<:\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c":>\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"<%\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"%>\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !288 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !293, metadata !DIExpression()), !dbg !294
  %__c.off = add i32 %__c, 128, !dbg !295
  %0 = icmp ult i32 %__c.off, 384, !dbg !295
  br i1 %0, label %cond.true, label %cond.end, !dbg !295

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #8, !dbg !296
  %1 = load i32*, i32** %call, align 8, !dbg !297
  %idxprom = sext i32 %__c to i64, !dbg !298
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !298
  %2 = load i32, i32* %arrayidx, align 4, !dbg !298
  br label %cond.end, !dbg !299

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !299
  ret i32 %cond, !dbg !300
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !301 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !303, metadata !DIExpression()), !dbg !304
  %__c.off = add i32 %__c, 128, !dbg !305
  %0 = icmp ult i32 %__c.off, 384, !dbg !305
  br i1 %0, label %cond.true, label %cond.end, !dbg !305

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #8, !dbg !306
  %1 = load i32*, i32** %call, align 8, !dbg !307
  %idxprom = sext i32 %__c to i64, !dbg !308
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !308
  %2 = load i32, i32* %arrayidx, align 4, !dbg !308
  br label %cond.end, !dbg !309

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !309
  ret i32 %cond, !dbg !310
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @cpp_ideq(%struct.cpp_token* %token, i8* %string) local_unnamed_addr #3 !dbg !311 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !317, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i8* %string, metadata !318, metadata !DIExpression()), !dbg !319
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 1, !dbg !320
  %bf.load = load i8, i8* %type, align 4, !dbg !320
  %cmp = icmp eq i8 %bf.load, 53, !dbg !322
  br i1 %cmp, label %if.end, label %return, !dbg !323

if.end:                                           ; preds = %entry
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, !dbg !324
  %node1 = bitcast %union.cpp_token_u* %val to %struct.cpp_hashnode**, !dbg !324
  %0 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node1, align 8, !dbg !324
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %0, i64 0, i32 0, i32 0, !dbg !324
  %1 = load i8*, i8** %str, align 8, !dbg !324
  %call = tail call fastcc i32 @ustrcmp(i8* %1, i8* %string) #9, !dbg !325
  %tobool = icmp eq i32 %call, 0, !dbg !326
  %lnot.ext = zext i1 %tobool to i32, !dbg !326
  br label %return, !dbg !327

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %lnot.ext, %if.end ], [ 0, %entry ], !dbg !319
  ret i32 %retval.0, !dbg !328
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ustrcmp(i8* %s1, i8* %s2) unnamed_addr #0 !dbg !329 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !333, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i8* %s2, metadata !334, metadata !DIExpression()), !dbg !335
  %call = tail call i32 @strcmp(i8* %s1, i8* %s2) #10, !dbg !336
  ret i32 %call, !dbg !337
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_clean_line(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !338 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !786, metadata !DIExpression()), !dbg !796
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !797
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !797
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %0, metadata !787, metadata !DIExpression()), !dbg !796
  %notes_used = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 7, !dbg !798
  store i32 0, i32* %notes_used, align 4, !dbg !799
  %cur_note = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 6, !dbg !800
  store i32 0, i32* %cur_note, align 8, !dbg !801
  %next_line = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 2, !dbg !802
  %1 = bitcast i8** %next_line to i64*, !dbg !802
  %2 = load i64, i64* %1, align 8, !dbg !802
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 1, !dbg !803
  %3 = bitcast i8** %line_base to i64*, !dbg !804
  store i64 %2, i64* %3, align 8, !dbg !804
  %4 = bitcast %struct.cpp_buffer* %0 to i64*, !dbg !805
  store i64 %2, i64* %4, align 8, !dbg !805
  %need_line = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 13, !dbg !806
  store i8 0, i8* %need_line, align 8, !dbg !807
  %5 = inttoptr i64 %2 to i8*, !dbg !808
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !809
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !788, metadata !DIExpression()), !dbg !796
  %from_stage3 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 14, !dbg !810
  %bf.load = load i8, i8* %from_stage3, align 1, !dbg !810
  %bf.clear = and i8 %bf.load, 2, !dbg !810
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !811
  br i1 %tobool, label %for.cond.preheader, label %do.body.preheader, !dbg !812

do.body.preheader:                                ; preds = %entry
  br label %do.body, !dbg !813

for.cond.preheader:                               ; preds = %entry
  %trigraphs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 7, !dbg !815
  br label %for.cond, !dbg !823

for.cond:                                         ; preds = %for.cond.preheader, %if.end77
  %s.0 = phi i8* [ %incdec.ptr.ptr, %if.end77 ], [ %add.ptr, %for.cond.preheader ], !dbg !796
  %pbackslash.0 = phi i8* [ %pbackslash.1, %if.end77 ], [ null, %for.cond.preheader ], !dbg !824
  call void @llvm.dbg.value(metadata i8* %pbackslash.0, metadata !792, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i8* %s.0, metadata !788, metadata !DIExpression()), !dbg !796
  %incdec.ptr.ptr = getelementptr inbounds i8, i8* %s.0, i64 1, !dbg !796
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.ptr, metadata !788, metadata !DIExpression()), !dbg !796
  %6 = load i8, i8* %incdec.ptr.ptr, align 1, !dbg !825
  call void @llvm.dbg.value(metadata i8 %6, metadata !789, metadata !DIExpression()), !dbg !796
  %cmp = icmp eq i8 %6, 10, !dbg !826
  %cmp5 = icmp eq i8 %6, 13, !dbg !828
  %or.cond = or i1 %cmp, %cmp5, !dbg !829
  br i1 %or.cond, label %if.then7, label %if.end47, !dbg !829

if.then7:                                         ; preds = %for.cond
  %s.0.lcssa = phi i8* [ %s.0, %for.cond ], !dbg !796
  %pbackslash.0.lcssa = phi i8* [ %pbackslash.0, %for.cond ], !dbg !824
  %incdec.ptr.ptr.lcssa = phi i8* [ %incdec.ptr.ptr, %for.cond ], !dbg !796
  %cmp5.lcssa = phi i1 [ %cmp5, %for.cond ], !dbg !828
  call void @llvm.dbg.value(metadata i8* %s.0.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %pbackslash.0.lcssa, metadata !792, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i8* %s.0.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %pbackslash.0.lcssa, metadata !792, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i8* %s.0.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %pbackslash.0.lcssa, metadata !792, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.ptr.lcssa, metadata !790, metadata !DIExpression()), !dbg !796
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 4, !dbg !830
  %7 = load i8*, i8** %rlimit, align 8, !dbg !830
  %cmp8 = icmp eq i8* %incdec.ptr.ptr.lcssa, %7, !dbg !830
  br i1 %cmp8, label %done, label %if.end, !dbg !833

if.end:                                           ; preds = %if.then7
  br i1 %cmp5.lcssa, label %land.lhs.true, label %if.end24, !dbg !834

land.lhs.true:                                    ; preds = %if.end
  %arrayidx = getelementptr inbounds i8, i8* %s.0.lcssa, i64 2, !dbg !836
  %8 = load i8, i8* %arrayidx, align 1, !dbg !836
  %cmp15 = icmp eq i8 %8, 10, !dbg !837
  br i1 %cmp15, label %if.then17, label %if.end24, !dbg !838

if.then17:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i8* %arrayidx, metadata !788, metadata !DIExpression()), !dbg !796
  %cmp20 = icmp eq i8* %arrayidx, %7, !dbg !839
  br i1 %cmp20, label %done, label %if.end24, !dbg !842

if.end24:                                         ; preds = %if.then17, %land.lhs.true, %if.end
  %s.1 = phi i8* [ %incdec.ptr.ptr.lcssa, %land.lhs.true ], [ %incdec.ptr.ptr.lcssa, %if.end ], [ %arrayidx, %if.then17 ], !dbg !843
  call void @llvm.dbg.value(metadata i8* %s.1, metadata !788, metadata !DIExpression()), !dbg !796
  %cmp25 = icmp eq i8* %pbackslash.0.lcssa, null, !dbg !844
  br i1 %cmp25, label %done, label %while.cond.preheader, !dbg !846

while.cond.preheader:                             ; preds = %if.end24
  br label %while.cond, !dbg !847

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %p.0.idx = phi i64 [ %p.0.add, %while.body ], [ 1, %while.cond.preheader ]
  %p.0.ptr = getelementptr inbounds i8, i8* %s.0.lcssa, i64 %p.0.idx, !dbg !796
  call void @llvm.dbg.value(metadata i8* %p.0.ptr, metadata !791, metadata !DIExpression()), !dbg !796
  %arrayidx29 = getelementptr inbounds i8, i8* %p.0.ptr, i64 -1, !dbg !848
  %9 = load i8, i8* %arrayidx29, align 1, !dbg !848
  %idxprom = zext i8 %9 to i64, !dbg !848
  %arrayidx31 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !848
  %10 = load i16, i16* %arrayidx31, align 2, !dbg !848
  %11 = and i16 %10, 2048, !dbg !848
  %tobool34 = icmp eq i16 %11, 0, !dbg !847
  br i1 %tobool34, label %while.end, label %while.body, !dbg !847

while.body:                                       ; preds = %while.cond
  %p.0.add = add nsw i64 %p.0.idx, -1, !dbg !849
  call void @llvm.dbg.value(metadata i8* undef, metadata !791, metadata !DIExpression()), !dbg !796
  br label %while.cond, !dbg !847, !llvm.loop !850

while.end:                                        ; preds = %while.cond
  %p.0.idx.lcssa = phi i64 [ %p.0.idx, %while.cond ]
  %p.0.ptr.lcssa = phi i8* [ %p.0.ptr, %while.cond ], !dbg !796
  %arrayidx29.lcssa = phi i8* [ %arrayidx29, %while.cond ], !dbg !848
  %cmp37 = icmp eq i8* %arrayidx29.lcssa, %pbackslash.0.lcssa, !dbg !851
  br i1 %cmp37, label %if.end40, label %done, !dbg !853

if.end40:                                         ; preds = %while.end
  %cmp42 = icmp eq i64 %p.0.idx.lcssa, 1, !dbg !854
  %cond = select i1 %cmp42, i32 92, i32 32, !dbg !855
  tail call fastcc void @add_line_note(%struct.cpp_buffer* %0, i8* nonnull %pbackslash.0.lcssa, i32 %cond) #9, !dbg !856
  %add.ptr44 = getelementptr inbounds i8, i8* %p.0.ptr.lcssa, i64 -2, !dbg !857
  call void @llvm.dbg.value(metadata i8* %add.ptr44, metadata !790, metadata !DIExpression()), !dbg !796
  store i8* %pbackslash.0.lcssa, i8** %next_line, align 8, !dbg !858
  br label %for.end, !dbg !859

if.end47:                                         ; preds = %for.cond
  %cmp49 = icmp eq i8 %6, 92, !dbg !860
  br i1 %cmp49, label %if.end77, label %if.else, !dbg !861

if.else:                                          ; preds = %if.end47
  %cmp53 = icmp eq i8 %6, 63, !dbg !862
  br i1 %cmp53, label %land.lhs.true55, label %if.end77, !dbg !863

land.lhs.true55:                                  ; preds = %if.else
  %arrayidx56 = getelementptr inbounds i8, i8* %s.0, i64 2, !dbg !864
  %12 = load i8, i8* %arrayidx56, align 1, !dbg !864
  %cmp58 = icmp eq i8 %12, 63, !dbg !864
  br i1 %cmp58, label %land.lhs.true60, label %if.end77, !dbg !865

land.lhs.true60:                                  ; preds = %land.lhs.true55
  %arrayidx61 = getelementptr inbounds i8, i8* %s.0, i64 3, !dbg !866
  %13 = load i8, i8* %arrayidx61, align 1, !dbg !866
  %idxprom62 = zext i8 %13 to i64, !dbg !867
  %arrayidx63 = getelementptr inbounds [256 x i8], [256 x i8]* @_cpp_trigraph_map, i64 0, i64 %idxprom62, !dbg !867
  %14 = load i8, i8* %arrayidx63, align 1, !dbg !867
  %tobool65 = icmp eq i8 %14, 0, !dbg !867
  br i1 %tobool65, label %if.end77, label %if.then66, !dbg !868

if.then66:                                        ; preds = %land.lhs.true60
  %conv68 = zext i8 %13 to i32, !dbg !869
  tail call fastcc void @add_line_note(%struct.cpp_buffer* %0, i8* nonnull %incdec.ptr.ptr, i32 %conv68) #9, !dbg !870
  %15 = load i8, i8* %trigraphs, align 1, !dbg !871
  %tobool69 = icmp eq i8 %15, 0, !dbg !871
  br i1 %tobool69, label %if.end77, label %if.then70, !dbg !872

if.then70:                                        ; preds = %if.then66
  %arrayidx61.lcssa = phi i8* [ %arrayidx61, %if.then66 ], !dbg !866
  %incdec.ptr.ptr.lcssa17 = phi i8* [ %incdec.ptr.ptr, %if.then66 ], !dbg !796
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.ptr.lcssa17, metadata !790, metadata !DIExpression()), !dbg !796
  %16 = load i8, i8* %arrayidx61.lcssa, align 1, !dbg !873
  %idxprom72 = zext i8 %16 to i64, !dbg !875
  %arrayidx73 = getelementptr inbounds [256 x i8], [256 x i8]* @_cpp_trigraph_map, i64 0, i64 %idxprom72, !dbg !875
  %17 = load i8, i8* %arrayidx73, align 1, !dbg !875
  store i8 %17, i8* %incdec.ptr.ptr.lcssa17, align 1, !dbg !876
  call void @llvm.dbg.value(metadata i8* %arrayidx61.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  br label %for.end, !dbg !877

if.end77:                                         ; preds = %if.then66, %land.lhs.true60, %if.else, %land.lhs.true55, %if.end47
  %pbackslash.1 = phi i8* [ %incdec.ptr.ptr, %if.end47 ], [ %pbackslash.0, %if.then66 ], [ %pbackslash.0, %land.lhs.true60 ], [ %pbackslash.0, %land.lhs.true55 ], [ %pbackslash.0, %if.else ], !dbg !824
  call void @llvm.dbg.value(metadata i8* %pbackslash.1, metadata !792, metadata !DIExpression()), !dbg !824
  br label %for.cond, !dbg !878, !llvm.loop !879

for.end:                                          ; preds = %if.then70, %if.end40
  %d.0 = phi i8* [ %add.ptr44, %if.end40 ], [ %incdec.ptr.ptr.lcssa17, %if.then70 ], !dbg !843
  %s.2 = phi i8* [ %s.1, %if.end40 ], [ %arrayidx61.lcssa, %if.then70 ], !dbg !843
  call void @llvm.dbg.value(metadata i8* %s.2, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %d.0, metadata !790, metadata !DIExpression()), !dbg !796
  %rlimit93 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 4, !dbg !881
  br label %for.cond78, !dbg !888

for.cond78:                                       ; preds = %if.end169, %for.end
  %d.1 = phi i8* [ %d.0, %for.end ], [ %d.2, %if.end169 ], !dbg !824
  %s.3 = phi i8* [ %s.2, %for.end ], [ %s.7, %if.end169 ], !dbg !824
  call void @llvm.dbg.value(metadata i8* %s.3, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %d.1, metadata !790, metadata !DIExpression()), !dbg !796
  %incdec.ptr79 = getelementptr inbounds i8, i8* %s.3, i64 1, !dbg !889
  call void @llvm.dbg.value(metadata i8* %incdec.ptr79, metadata !788, metadata !DIExpression()), !dbg !796
  %18 = load i8, i8* %incdec.ptr79, align 1, !dbg !890
  call void @llvm.dbg.value(metadata i8 %18, metadata !789, metadata !DIExpression()), !dbg !796
  %incdec.ptr80.ptr = getelementptr inbounds i8, i8* %d.1, i64 1, !dbg !796
  call void @llvm.dbg.value(metadata i8* %incdec.ptr80.ptr, metadata !790, metadata !DIExpression()), !dbg !796
  store i8 %18, i8* %incdec.ptr80.ptr, align 1, !dbg !891
  %cmp82 = icmp eq i8 %18, 10, !dbg !892
  %cmp86 = icmp eq i8 %18, 13, !dbg !893
  %or.cond1 = or i1 %cmp82, %cmp86, !dbg !894
  br i1 %or.cond1, label %if.then88, label %if.else141, !dbg !894

if.then88:                                        ; preds = %for.cond78
  br i1 %cmp86, label %land.lhs.true92, label %if.then88.if.end103_crit_edge, !dbg !895

if.then88.if.end103_crit_edge:                    ; preds = %if.then88
  %.pre = load i8*, i8** %rlimit93, align 8, !dbg !896
  br label %if.end103, !dbg !895

land.lhs.true92:                                  ; preds = %if.then88
  %19 = load i8*, i8** %rlimit93, align 8, !dbg !898
  %cmp94 = icmp eq i8* %incdec.ptr79, %19, !dbg !899
  br i1 %cmp94, label %if.end103, label %land.lhs.true96, !dbg !900

land.lhs.true96:                                  ; preds = %land.lhs.true92
  %arrayidx97 = getelementptr inbounds i8, i8* %s.3, i64 2, !dbg !901
  %20 = load i8, i8* %arrayidx97, align 1, !dbg !901
  %cmp99 = icmp eq i8 %20, 10, !dbg !902
  %spec.select = select i1 %cmp99, i8* %arrayidx97, i8* %incdec.ptr79, !dbg !903
  br label %if.end103, !dbg !903

if.end103:                                        ; preds = %if.then88.if.end103_crit_edge, %land.lhs.true92, %land.lhs.true96
  %21 = phi i8* [ %incdec.ptr79, %land.lhs.true92 ], [ %.pre, %if.then88.if.end103_crit_edge ], [ %19, %land.lhs.true96 ], !dbg !896
  %s.4 = phi i8* [ %incdec.ptr79, %land.lhs.true92 ], [ %incdec.ptr79, %if.then88.if.end103_crit_edge ], [ %spec.select, %land.lhs.true96 ], !dbg !904
  call void @llvm.dbg.value(metadata i8* %s.4, metadata !788, metadata !DIExpression()), !dbg !796
  %cmp105 = icmp eq i8* %s.4, %21, !dbg !905
  br i1 %cmp105, label %done.loopexit, label %while.cond109.preheader, !dbg !906

while.cond109.preheader:                          ; preds = %if.end103
  %22 = load i8*, i8** %next_line, align 8, !dbg !907
  br label %while.cond109, !dbg !908

while.cond109:                                    ; preds = %while.cond109.preheader, %while.body121
  %p.1.idx = phi i64 [ %p.1.add, %while.body121 ], [ 1, %while.cond109.preheader ]
  %p.1.ptr = getelementptr inbounds i8, i8* %d.1, i64 %p.1.idx, !dbg !796
  call void @llvm.dbg.value(metadata i8* %p.1.ptr, metadata !791, metadata !DIExpression()), !dbg !796
  %cmp111 = icmp eq i8* %p.1.ptr, %22, !dbg !909
  br i1 %cmp111, label %while.end123, label %land.rhs, !dbg !910

land.rhs:                                         ; preds = %while.cond109
  %arrayidx113 = getelementptr inbounds i8, i8* %p.1.ptr, i64 -1, !dbg !911
  %23 = load i8, i8* %arrayidx113, align 1, !dbg !911
  %idxprom116 = zext i8 %23 to i64, !dbg !911
  %arrayidx117 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom116, !dbg !911
  %24 = load i16, i16* %arrayidx117, align 2, !dbg !911
  %25 = and i16 %24, 2048, !dbg !911
  %tobool120 = icmp eq i16 %25, 0, !dbg !910
  br i1 %tobool120, label %while.end123, label %while.body121, !dbg !908

while.body121:                                    ; preds = %land.rhs
  %p.1.add = add nsw i64 %p.1.idx, -1, !dbg !912
  call void @llvm.dbg.value(metadata i8* undef, metadata !791, metadata !DIExpression()), !dbg !796
  br label %while.cond109, !dbg !908, !llvm.loop !913

while.end123:                                     ; preds = %land.rhs, %while.cond109
  %p.1.idx.lcssa = phi i64 [ %p.1.idx, %land.rhs ], [ %p.1.idx, %while.cond109 ]
  %p.1.ptr.lcssa = phi i8* [ %p.1.ptr, %land.rhs ], [ %p.1.ptr, %while.cond109 ], !dbg !796
  %cmp111.lcssa = phi i1 [ %cmp111, %land.rhs ], [ %cmp111, %while.cond109 ], !dbg !909
  br i1 %cmp111.lcssa, label %done.loopexit, label %lor.lhs.false127, !dbg !914

lor.lhs.false127:                                 ; preds = %while.end123
  %arrayidx128 = getelementptr inbounds i8, i8* %p.1.ptr.lcssa, i64 -1, !dbg !916
  %26 = load i8, i8* %arrayidx128, align 1, !dbg !916
  %cmp130 = icmp eq i8 %26, 92, !dbg !917
  br i1 %cmp130, label %if.end133, label %done.loopexit, !dbg !918

if.end133:                                        ; preds = %lor.lhs.false127
  %cmp135 = icmp eq i64 %p.1.idx.lcssa, 1, !dbg !919
  %cond137 = select i1 %cmp135, i32 92, i32 32, !dbg !920
  tail call fastcc void @add_line_note(%struct.cpp_buffer* %0, i8* nonnull %arrayidx128, i32 %cond137) #9, !dbg !921
  %add.ptr138 = getelementptr inbounds i8, i8* %p.1.ptr.lcssa, i64 -2, !dbg !922
  call void @llvm.dbg.value(metadata i8* %add.ptr138, metadata !790, metadata !DIExpression()), !dbg !796
  store i8* %arrayidx128, i8** %next_line, align 8, !dbg !923
  br label %if.end169, !dbg !924

if.else141:                                       ; preds = %for.cond78
  %cmp143 = icmp eq i8 %18, 63, !dbg !925
  br i1 %cmp143, label %land.lhs.true145, label %if.end169, !dbg !927

land.lhs.true145:                                 ; preds = %if.else141
  %arrayidx146 = getelementptr inbounds i8, i8* %s.3, i64 2, !dbg !928
  %27 = load i8, i8* %arrayidx146, align 1, !dbg !928
  %cmp148 = icmp eq i8 %27, 63, !dbg !929
  br i1 %cmp148, label %land.lhs.true150, label %if.end169, !dbg !930

land.lhs.true150:                                 ; preds = %land.lhs.true145
  %arrayidx151 = getelementptr inbounds i8, i8* %s.3, i64 3, !dbg !931
  %28 = load i8, i8* %arrayidx151, align 1, !dbg !931
  %idxprom152 = zext i8 %28 to i64, !dbg !932
  %arrayidx153 = getelementptr inbounds [256 x i8], [256 x i8]* @_cpp_trigraph_map, i64 0, i64 %idxprom152, !dbg !932
  %29 = load i8, i8* %arrayidx153, align 1, !dbg !932
  %tobool155 = icmp eq i8 %29, 0, !dbg !932
  br i1 %tobool155, label %if.end169, label %if.then156, !dbg !933

if.then156:                                       ; preds = %land.lhs.true150
  %conv158 = zext i8 %28 to i32, !dbg !934
  tail call fastcc void @add_line_note(%struct.cpp_buffer* %0, i8* nonnull %incdec.ptr80.ptr, i32 %conv158) #9, !dbg !936
  %30 = load i8, i8* %trigraphs, align 1, !dbg !937
  %tobool161 = icmp eq i8 %30, 0, !dbg !937
  br i1 %tobool161, label %if.end169, label %if.then162, !dbg !939

if.then162:                                       ; preds = %if.then156
  %31 = load i8, i8* %arrayidx151, align 1, !dbg !940
  %idxprom164 = zext i8 %31 to i64, !dbg !942
  %arrayidx165 = getelementptr inbounds [256 x i8], [256 x i8]* @_cpp_trigraph_map, i64 0, i64 %idxprom164, !dbg !942
  %32 = load i8, i8* %arrayidx165, align 1, !dbg !942
  store i8 %32, i8* %incdec.ptr80.ptr, align 1, !dbg !943
  call void @llvm.dbg.value(metadata i8* %arrayidx151, metadata !788, metadata !DIExpression()), !dbg !796
  br label %if.end169, !dbg !944

if.end169:                                        ; preds = %if.then156, %land.lhs.true150, %if.else141, %land.lhs.true145, %if.then162, %if.end133
  %d.2 = phi i8* [ %add.ptr138, %if.end133 ], [ %incdec.ptr80.ptr, %if.then156 ], [ %incdec.ptr80.ptr, %if.then162 ], [ %incdec.ptr80.ptr, %land.lhs.true150 ], [ %incdec.ptr80.ptr, %land.lhs.true145 ], [ %incdec.ptr80.ptr, %if.else141 ], !dbg !904
  %s.7 = phi i8* [ %s.4, %if.end133 ], [ %incdec.ptr79, %if.then156 ], [ %arrayidx151, %if.then162 ], [ %incdec.ptr79, %land.lhs.true150 ], [ %incdec.ptr79, %land.lhs.true145 ], [ %incdec.ptr79, %if.else141 ], !dbg !945
  call void @llvm.dbg.value(metadata i8* %s.7, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %d.2, metadata !790, metadata !DIExpression()), !dbg !796
  br label %for.cond78, !dbg !946, !llvm.loop !947

do.body:                                          ; preds = %do.body, %do.body.preheader
  %s.9 = phi i8* [ %add.ptr, %do.body.preheader ], [ %incdec.ptr172, %do.body ], !dbg !796
  call void @llvm.dbg.value(metadata i8* %s.9, metadata !788, metadata !DIExpression()), !dbg !796
  %incdec.ptr172 = getelementptr inbounds i8, i8* %s.9, i64 1, !dbg !950
  call void @llvm.dbg.value(metadata i8* %incdec.ptr172, metadata !788, metadata !DIExpression()), !dbg !796
  %33 = load i8, i8* %incdec.ptr172, align 1, !dbg !951
  %cmp174 = icmp eq i8 %33, 10, !dbg !952
  %cmp178 = icmp eq i8 %33, 13, !dbg !953
  %or.cond10 = or i1 %cmp174, %cmp178, !dbg !954
  br i1 %or.cond10, label %do.end, label %do.body, !dbg !954, !llvm.loop !955

do.end:                                           ; preds = %do.body
  %s.9.lcssa = phi i8* [ %s.9, %do.body ], !dbg !796
  %incdec.ptr172.lcssa = phi i8* [ %incdec.ptr172, %do.body ], !dbg !950
  %.lcssa = phi i8 [ %33, %do.body ], !dbg !951
  call void @llvm.dbg.value(metadata i8* %s.9.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %s.9.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %s.9.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %s.9.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %incdec.ptr172.lcssa, metadata !790, metadata !DIExpression()), !dbg !796
  %cmp182 = icmp eq i8 %.lcssa, 13, !dbg !957
  br i1 %cmp182, label %land.lhs.true184, label %done, !dbg !959

land.lhs.true184:                                 ; preds = %do.end
  %rlimit185 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 4, !dbg !960
  %34 = load i8*, i8** %rlimit185, align 8, !dbg !960
  %cmp186 = icmp eq i8* %incdec.ptr172.lcssa, %34, !dbg !961
  br i1 %cmp186, label %done, label %land.lhs.true188, !dbg !962

land.lhs.true188:                                 ; preds = %land.lhs.true184
  %arrayidx189 = getelementptr inbounds i8, i8* %s.9.lcssa, i64 2, !dbg !963
  %35 = load i8, i8* %arrayidx189, align 1, !dbg !963
  %cmp191 = icmp eq i8 %35, 10, !dbg !964
  %spec.select2 = select i1 %cmp191, i8* %arrayidx189, i8* %incdec.ptr172.lcssa, !dbg !965
  br label %done, !dbg !965

done.loopexit:                                    ; preds = %if.end103, %while.end123, %lor.lhs.false127
  %s.4.lcssa = phi i8* [ %s.4, %if.end103 ], [ %s.4, %while.end123 ], [ %s.4, %lor.lhs.false127 ], !dbg !904
  %incdec.ptr80.ptr.lcssa = phi i8* [ %incdec.ptr80.ptr, %if.end103 ], [ %incdec.ptr80.ptr, %while.end123 ], [ %incdec.ptr80.ptr, %lor.lhs.false127 ], !dbg !796
  call void @llvm.dbg.value(metadata i8* %s.4.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %s.4.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %s.4.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %s.4.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %s.4.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %s.4.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %s.4.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %s.4.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %s.4.lcssa, metadata !788, metadata !DIExpression()), !dbg !796
  br label %done, !dbg !966

done:                                             ; preds = %done.loopexit, %land.lhs.true184, %while.end, %land.lhs.true188, %if.then7, %if.then17, %if.end24, %do.end
  %d.5 = phi i8* [ %incdec.ptr172.lcssa, %land.lhs.true188 ], [ %incdec.ptr172.lcssa, %land.lhs.true184 ], [ %incdec.ptr172.lcssa, %do.end ], [ %incdec.ptr.ptr.lcssa, %if.then7 ], [ %incdec.ptr.ptr.lcssa, %if.then17 ], [ %incdec.ptr.ptr.lcssa, %if.end24 ], [ %incdec.ptr.ptr.lcssa, %while.end ], [ %incdec.ptr80.ptr.lcssa, %done.loopexit ], !dbg !967
  %s.12 = phi i8* [ %spec.select2, %land.lhs.true188 ], [ %incdec.ptr172.lcssa, %land.lhs.true184 ], [ %incdec.ptr172.lcssa, %do.end ], [ %incdec.ptr.ptr.lcssa, %if.then7 ], [ %arrayidx, %if.then17 ], [ %s.1, %if.end24 ], [ %s.1, %while.end ], [ %s.4.lcssa, %done.loopexit ], !dbg !967
  call void @llvm.dbg.value(metadata i8* %s.12, metadata !788, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i8* %d.5, metadata !790, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.label(metadata !795), !dbg !968
  store i8 10, i8* %d.5, align 1, !dbg !966
  %add.ptr197 = getelementptr inbounds i8, i8* %d.5, i64 1, !dbg !969
  tail call fastcc void @add_line_note(%struct.cpp_buffer* %0, i8* nonnull %add.ptr197, i32 10) #9, !dbg !970
  %add.ptr198 = getelementptr inbounds i8, i8* %s.12, i64 1, !dbg !971
  store i8* %add.ptr198, i8** %next_line, align 8, !dbg !972
  ret void, !dbg !973
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @add_line_note(%struct.cpp_buffer* %buffer, i8* %pos, i32 %type) unnamed_addr #3 !dbg !974 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %buffer, metadata !978, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i8* %pos, metadata !979, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i32 %type, metadata !980, metadata !DIExpression()), !dbg !981
  %notes_used = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %buffer, i64 0, i32 7, !dbg !982
  %0 = load i32, i32* %notes_used, align 4, !dbg !982
  %notes_cap = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %buffer, i64 0, i32 8, !dbg !984
  %1 = load i32, i32* %notes_cap, align 8, !dbg !984
  %cmp = icmp eq i32 %0, %1, !dbg !985
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !986

entry.if.end_crit_edge:                           ; preds = %entry
  %notes6.phi.trans.insert = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %buffer, i64 0, i32 5, !dbg !981
  %.pre = load %struct._cpp_line_note*, %struct._cpp_line_note** %notes6.phi.trans.insert, align 8, !dbg !987
  br label %if.end, !dbg !986

if.then:                                          ; preds = %entry
  %mul = shl i32 %0, 1, !dbg !988
  %add = add i32 %mul, 200, !dbg !990
  store i32 %add, i32* %notes_cap, align 8, !dbg !991
  %notes = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %buffer, i64 0, i32 5, !dbg !992
  %2 = bitcast %struct._cpp_line_note** %notes to i8**, !dbg !992
  %3 = load i8*, i8** %2, align 8, !dbg !992
  %conv = zext i32 %add to i64, !dbg !992
  %mul4 = shl nuw nsw i64 %conv, 4, !dbg !992
  %call = tail call i8* @xrealloc(i8* %3, i64 %mul4) #8, !dbg !992
  store i8* %call, i8** %2, align 8, !dbg !993
  %4 = bitcast i8* %call to %struct._cpp_line_note*, !dbg !994
  %.pre1 = load i32, i32* %notes_used, align 4, !dbg !995
  br label %if.end, !dbg !994

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi i32 [ %0, %entry.if.end_crit_edge ], [ %.pre1, %if.then ], !dbg !995
  %6 = phi %struct._cpp_line_note* [ %.pre, %entry.if.end_crit_edge ], [ %4, %if.then ], !dbg !987
  %notes6 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %buffer, i64 0, i32 5, !dbg !987
  %idxprom = zext i32 %5 to i64, !dbg !996
  %pos8 = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %6, i64 %idxprom, i32 0, !dbg !997
  store i8* %pos, i8** %pos8, align 8, !dbg !998
  %7 = load %struct._cpp_line_note*, %struct._cpp_line_note** %notes6, align 8, !dbg !999
  %8 = load i32, i32* %notes_used, align 4, !dbg !1000
  %idxprom11 = zext i32 %8 to i64, !dbg !1001
  %type13 = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %7, i64 %idxprom11, i32 1, !dbg !1002
  store i32 %type, i32* %type13, align 8, !dbg !1003
  %9 = load i32, i32* %notes_used, align 4, !dbg !1004
  %inc = add i32 %9, 1, !dbg !1004
  store i32 %inc, i32* %notes_used, align 4, !dbg !1004
  ret void, !dbg !1005
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_process_line_notes(%struct.cpp_reader* %pfile, i32 %in_comment) local_unnamed_addr #3 !dbg !1006 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1010, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i32 %in_comment, metadata !1011, metadata !DIExpression()), !dbg !1026
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1027
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !1027
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %0, metadata !1012, metadata !DIExpression()), !dbg !1026
  %notes = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 5, !dbg !1028
  %cur_note = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 6, !dbg !1028
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 0, !dbg !1029
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 1, !dbg !1028
  %1 = bitcast i8** %line_base to i64*, !dbg !1028
  %warn_trigraphs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 15, !dbg !1031
  %tobool43 = icmp eq i32 %in_comment, 0, !dbg !1031
  %trigraphs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 7, !dbg !1035
  %line_table52 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !1035
  %tobool = icmp ne i32 %in_comment, 0, !dbg !1038
  %next_line = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 2, !dbg !1040
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 4, !dbg !1040
  %2 = bitcast i8** %rlimit to i64*, !dbg !1042
  %3 = bitcast i8** %next_line to i64*, !dbg !1042
  br label %for.cond, !dbg !1044

for.cond:                                         ; preds = %cleanup, %entry
  %4 = load %struct._cpp_line_note*, %struct._cpp_line_note** %notes, align 8, !dbg !1045
  %5 = load i32, i32* %cur_note, align 8, !dbg !1046
  %idxprom = zext i32 %5 to i64, !dbg !1047
  %arrayidx = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %4, i64 %idxprom, !dbg !1047
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %arrayidx, metadata !1013, metadata !DIExpression()), !dbg !1028
  %pos = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %arrayidx, i64 0, i32 0, !dbg !1048
  %6 = load i8*, i8** %pos, align 8, !dbg !1048
  %7 = load i8*, i8** %cur, align 8, !dbg !1049
  %cmp = icmp ugt i8* %6, %7, !dbg !1050
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1051

if.end:                                           ; preds = %for.cond
  %inc = add i32 %5, 1, !dbg !1052
  store i32 %inc, i32* %cur_note, align 8, !dbg !1052
  %8 = load i8*, i8** %pos, align 8, !dbg !1053
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1053
  %9 = load i64, i64* %1, align 8, !dbg !1053
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64, !dbg !1053
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %9, !dbg !1053
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !1053
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1017, metadata !DIExpression()), !dbg !1028
  %type = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %4, i64 %idxprom, i32 1, !dbg !1054
  %10 = load i32, i32* %type, align 8, !dbg !1054
  %cmp4 = icmp eq i32 %10, 92, !dbg !1055
  br i1 %cmp4, label %if.then9, label %lor.lhs.false, !dbg !1056

lor.lhs.false:                                    ; preds = %if.end
  %cmp7 = icmp eq i32 %10, 32, !dbg !1057
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !1058

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  %cmp11 = icmp ne i32 %10, 32, !dbg !1059
  %or.cond = or i1 %cmp11, %tobool, !dbg !1060
  br i1 %or.cond, label %if.end14, label %if.then13, !dbg !1060

if.then13:                                        ; preds = %if.then9
  %11 = load %struct.line_maps*, %struct.line_maps** %line_table52, align 8, !dbg !1061
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %11, i64 0, i32 8, !dbg !1062
  %12 = load i32, i32* %highest_line, align 4, !dbg !1062
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 0, i32 %12, i32 %conv, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1063
  br label %if.end14, !dbg !1063

if.end14:                                         ; preds = %if.then9, %if.then13
  %13 = load i8*, i8** %next_line, align 8, !dbg !1064
  %14 = load i8*, i8** %rlimit, align 8, !dbg !1065
  %cmp15 = icmp ugt i8* %13, %14, !dbg !1066
  br i1 %cmp15, label %if.then17, label %if.end23, !dbg !1067

if.then17:                                        ; preds = %if.end14
  %15 = load %struct.line_maps*, %struct.line_maps** %line_table52, align 8, !dbg !1068
  %highest_line19 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %15, i64 0, i32 8, !dbg !1069
  %16 = load i32, i32* %highest_line19, align 4, !dbg !1069
  %call20 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 2, i32 %16, i32 %conv, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !1070
  %17 = load i64, i64* %2, align 8, !dbg !1071
  store i64 %17, i64* %3, align 8, !dbg !1072
  br label %if.end23, !dbg !1073

if.end23:                                         ; preds = %if.then17, %if.end14
  %18 = bitcast %struct._cpp_line_note* %arrayidx to i64*, !dbg !1074
  %19 = load i64, i64* %18, align 8, !dbg !1074
  store i64 %19, i64* %1, align 8, !dbg !1075
  %20 = load %struct.line_maps*, %struct.line_maps** %line_table52, align 8, !dbg !1076
  call void @llvm.dbg.value(metadata %struct.line_maps* %20, metadata !1018, metadata !DIExpression()), !dbg !1077
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %20, i64 0, i32 0, !dbg !1076
  %21 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !1076
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %20, i64 0, i32 2, !dbg !1076
  %22 = load i32, i32* %used, align 4, !dbg !1076
  %sub = add i32 %22, -1, !dbg !1076
  %idxprom28 = zext i32 %sub to i64, !dbg !1076
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !1024, metadata !DIExpression()), !dbg !1077
  %highest_line30 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %20, i64 0, i32 8, !dbg !1076
  %23 = load i32, i32* %highest_line30, align 4, !dbg !1076
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %21, i64 %idxprom28, i32 2, !dbg !1076
  %24 = load i32, i32* %start_location, align 4, !dbg !1076
  %sub31 = sub i32 %23, %24, !dbg !1076
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %21, i64 %idxprom28, i32 6, !dbg !1076
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !1076
  %bf.cast = zext i8 %bf.load to i32, !dbg !1076
  %shr = lshr i32 %sub31, %bf.cast, !dbg !1076
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %21, i64 %idxprom28, i32 1, !dbg !1076
  %25 = load i32, i32* %to_line, align 8, !dbg !1076
  %add = add i32 %shr, %25, !dbg !1076
  call void @llvm.dbg.value(metadata i32 %add, metadata !1025, metadata !DIExpression()), !dbg !1077
  %add33 = add i32 %add, 1, !dbg !1076
  %call34 = tail call i32 @linemap_line_start(%struct.line_maps* %20, i32 %add33, i32 0) #8, !dbg !1076
  br label %cleanup, !dbg !1078

if.else:                                          ; preds = %lor.lhs.false
  %idxprom36 = zext i32 %10 to i64, !dbg !1079
  %arrayidx37 = getelementptr inbounds [256 x i8], [256 x i8]* @_cpp_trigraph_map, i64 0, i64 %idxprom36, !dbg !1079
  %26 = load i8, i8* %arrayidx37, align 1, !dbg !1079
  %tobool38 = icmp eq i8 %26, 0, !dbg !1079
  br i1 %tobool38, label %if.else67, label %if.then39, !dbg !1080

if.then39:                                        ; preds = %if.else
  %27 = load i8, i8* %warn_trigraphs, align 1, !dbg !1081
  %tobool41 = icmp eq i8 %27, 0, !dbg !1081
  br i1 %tobool41, label %cleanup, label %land.lhs.true42, !dbg !1082

land.lhs.true42:                                  ; preds = %if.then39
  br i1 %tobool43, label %if.then48, label %lor.lhs.false44, !dbg !1083

lor.lhs.false44:                                  ; preds = %land.lhs.true42
  %call45 = tail call fastcc zeroext i8 @warn_in_comment(%struct.cpp_reader* %pfile, %struct._cpp_line_note* %arrayidx) #9, !dbg !1084
  %tobool47 = icmp eq i8 %call45, 0, !dbg !1084
  br i1 %tobool47, label %cleanup, label %lor.lhs.false44.if.then48_crit_edge, !dbg !1085

lor.lhs.false44.if.then48_crit_edge:              ; preds = %lor.lhs.false44
  %.pre = load i32, i32* %type, align 8, !dbg !1035
  br label %if.then48, !dbg !1085

if.then48:                                        ; preds = %lor.lhs.false44.if.then48_crit_edge, %land.lhs.true42
  %28 = phi i32 [ %.pre, %lor.lhs.false44.if.then48_crit_edge ], [ %10, %land.lhs.true42 ], !dbg !1035
  %29 = load i8, i8* %trigraphs, align 1, !dbg !1086
  %tobool50 = icmp eq i8 %29, 0, !dbg !1086
  %30 = load %struct.line_maps*, %struct.line_maps** %line_table52, align 8, !dbg !1035
  %highest_line53 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %30, i64 0, i32 8, !dbg !1035
  %31 = load i32, i32* %highest_line53, align 4, !dbg !1035
  br i1 %tobool50, label %if.else60, label %if.then51, !dbg !1087

if.then51:                                        ; preds = %if.then48
  %idxprom56 = zext i32 %28 to i64, !dbg !1088
  %arrayidx57 = getelementptr inbounds [256 x i8], [256 x i8]* @_cpp_trigraph_map, i64 0, i64 %idxprom56, !dbg !1088
  %32 = load i8, i8* %arrayidx57, align 1, !dbg !1088
  %conv58 = zext i8 %32 to i32, !dbg !1089
  %call59 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 0, i32 %31, i32 %conv, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %conv58) #8, !dbg !1090
  br label %cleanup, !dbg !1090

if.else60:                                        ; preds = %if.then48
  %call64 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 0, i32 %31, i32 %conv, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %28) #8, !dbg !1091
  br label %cleanup

if.else67:                                        ; preds = %if.else
  %cmp69 = icmp eq i32 %10, 0, !dbg !1093
  br i1 %cmp69, label %cleanup, label %if.else72, !dbg !1095

if.else72:                                        ; preds = %if.else67
  tail call void @abort() #11, !dbg !1096
  unreachable, !dbg !1096

cleanup:                                          ; preds = %lor.lhs.false44, %if.then39, %if.end23, %if.else67, %if.else60, %if.then51, %for.cond
  %cleanup.dest.slot.0 = phi i1 [ false, %for.cond ], [ true, %if.then51 ], [ true, %if.else60 ], [ true, %lor.lhs.false44 ], [ true, %if.then39 ], [ true, %if.else67 ], [ true, %if.end23 ]
  br i1 %cleanup.dest.slot.0, label %for.cond, label %for.end, !llvm.loop !1097

for.end:                                          ; preds = %cleanup
  ret void, !dbg !1100
}

declare dso_local zeroext i8 @cpp_error_with_line(%struct.cpp_reader*, i32, i32, i32, i8*, ...) local_unnamed_addr #2

declare dso_local i32 @linemap_line_start(%struct.line_maps*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @warn_in_comment(%struct.cpp_reader* %pfile, %struct._cpp_line_note* %note) unnamed_addr #3 !dbg !1101 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1105, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note, metadata !1106, metadata !DIExpression()), !dbg !1108
  %type = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %note, i64 0, i32 1, !dbg !1109
  %0 = load i32, i32* %type, align 8, !dbg !1109
  %cmp = icmp eq i32 %0, 47, !dbg !1111
  br i1 %cmp, label %if.end, label %cleanup, !dbg !1112

if.end:                                           ; preds = %entry
  %trigraphs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 7, !dbg !1113
  %1 = load i8, i8* %trigraphs, align 1, !dbg !1113
  %tobool = icmp eq i8 %1, 0, !dbg !1113
  br i1 %tobool, label %if.end5, label %if.then1, !dbg !1115

if.then1:                                         ; preds = %if.end
  %pos = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %note, i64 1, i32 0, !dbg !1116
  %2 = load i8*, i8** %pos, align 8, !dbg !1116
  %pos2 = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %note, i64 0, i32 0, !dbg !1117
  %3 = load i8*, i8** %pos2, align 8, !dbg !1117
  %cmp3 = icmp eq i8* %2, %3, !dbg !1118
  %conv4 = zext i1 %cmp3 to i8, !dbg !1119
  br label %cleanup, !dbg !1120

if.end5:                                          ; preds = %if.end
  %pos6 = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %note, i64 0, i32 0, !dbg !1121
  %4 = load i8*, i8** %pos6, align 8, !dbg !1121
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 3, !dbg !1122
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1107, metadata !DIExpression()), !dbg !1108
  br label %while.cond, !dbg !1123

while.cond:                                       ; preds = %while.body, %if.end5
  %p.0 = phi i8* [ %add.ptr, %if.end5 ], [ %incdec.ptr, %while.body ], !dbg !1108
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !1107, metadata !DIExpression()), !dbg !1108
  %5 = load i8, i8* %p.0, align 1, !dbg !1124
  %idxprom = zext i8 %5 to i64, !dbg !1124
  %arrayidx8 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !1124
  %6 = load i16, i16* %arrayidx8, align 2, !dbg !1124
  %7 = and i16 %6, 2048, !dbg !1124
  %tobool11 = icmp eq i16 %7, 0, !dbg !1123
  br i1 %tobool11, label %while.end, label %while.body, !dbg !1123

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1107, metadata !DIExpression()), !dbg !1108
  br label %while.cond, !dbg !1123, !llvm.loop !1126

while.end:                                        ; preds = %while.cond
  %p.0.lcssa = phi i8* [ %p.0, %while.cond ], !dbg !1108
  %.lcssa = phi i8 [ %5, %while.cond ], !dbg !1124
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1107, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1107, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !1107, metadata !DIExpression()), !dbg !1108
  %cmp13 = icmp eq i8 %.lcssa, 10, !dbg !1127
  br i1 %cmp13, label %land.rhs, label %land.end, !dbg !1128

land.rhs:                                         ; preds = %while.end
  %pos16 = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %note, i64 1, i32 0, !dbg !1129
  %8 = load i8*, i8** %pos16, align 8, !dbg !1129
  %cmp17 = icmp ult i8* %p.0.lcssa, %8, !dbg !1130
  %phitmp = zext i1 %cmp17 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.end
  %9 = phi i8 [ 0, %while.end ], [ %phitmp, %land.rhs ]
  br label %cleanup, !dbg !1131

cleanup:                                          ; preds = %entry, %land.end, %if.then1
  %retval.0 = phi i8 [ %conv4, %if.then1 ], [ %9, %land.end ], [ 0, %entry ], !dbg !1108
  ret i8 %retval.0, !dbg !1132
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_skip_block_comment(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !1133 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1137, metadata !DIExpression()), !dbg !1152
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1153
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !1153
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %0, metadata !1138, metadata !DIExpression()), !dbg !1152
  %cur2 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 0, !dbg !1154
  %1 = load i8*, i8** %cur2, align 8, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %1, metadata !1139, metadata !DIExpression()), !dbg !1152
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1155
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1139, metadata !DIExpression()), !dbg !1152
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !1156
  %cmp = icmp eq i8 %2, 47, !dbg !1158
  %incdec.ptr4 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !1159
  %spec.select = select i1 %cmp, i8* %incdec.ptr4, i8* %incdec.ptr, !dbg !1160
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !1139, metadata !DIExpression()), !dbg !1152
  %next_line = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 2, !dbg !1161
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 4, !dbg !1161
  %3 = bitcast i8** %next_line to i64*, !dbg !1163
  %line_base40 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 1, !dbg !1163
  %4 = bitcast i8** %line_base40 to i64*, !dbg !1163
  %line_table46 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !1164
  %warn_comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 13, !dbg !1165
  br label %for.cond, !dbg !1168

for.cond:                                         ; preds = %if.end55, %entry
  %cur.1 = phi i8* [ %spec.select, %entry ], [ %cur.4, %if.end55 ], !dbg !1152
  call void @llvm.dbg.value(metadata i8* %cur.1, metadata !1139, metadata !DIExpression()), !dbg !1152
  %incdec.ptr5 = getelementptr inbounds i8, i8* %cur.1, i64 1, !dbg !1169
  call void @llvm.dbg.value(metadata i8* %incdec.ptr5, metadata !1139, metadata !DIExpression()), !dbg !1152
  %5 = load i8, i8* %cur.1, align 1, !dbg !1170
  call void @llvm.dbg.value(metadata i8 %5, metadata !1140, metadata !DIExpression()), !dbg !1152
  %cmp7 = icmp eq i8 %5, 47, !dbg !1171
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !1172

if.then9:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %cur.1, i64 -1, !dbg !1173
  %6 = load i8, i8* %arrayidx, align 1, !dbg !1173
  %cmp11 = icmp eq i8 %6, 42, !dbg !1175
  br i1 %cmp11, label %for.end, label %if.end14, !dbg !1176

if.end14:                                         ; preds = %if.then9
  %7 = load i8, i8* %warn_comments, align 1, !dbg !1177
  %tobool = icmp eq i8 %7, 0, !dbg !1177
  br i1 %tobool, label %if.end55, label %land.lhs.true, !dbg !1178

land.lhs.true:                                    ; preds = %if.end14
  %8 = load i8, i8* %incdec.ptr5, align 1, !dbg !1179
  %cmp18 = icmp eq i8 %8, 42, !dbg !1180
  br i1 %cmp18, label %land.lhs.true20, label %if.end55, !dbg !1181

land.lhs.true20:                                  ; preds = %land.lhs.true
  %arrayidx21 = getelementptr inbounds i8, i8* %cur.1, i64 2, !dbg !1182
  %9 = load i8, i8* %arrayidx21, align 1, !dbg !1182
  %cmp23 = icmp eq i8 %9, 47, !dbg !1183
  br i1 %cmp23, label %if.end55, label %if.then25, !dbg !1184

if.then25:                                        ; preds = %land.lhs.true20
  store i8* %incdec.ptr5, i8** %cur2, align 8, !dbg !1185
  %10 = load %struct.line_maps*, %struct.line_maps** %line_table46, align 8, !dbg !1187
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %10, i64 0, i32 8, !dbg !1188
  %11 = load i32, i32* %highest_line, align 4, !dbg !1188
  %.cast = ptrtoint i8* %incdec.ptr5 to i64, !dbg !1189
  %12 = load i64, i64* %4, align 8, !dbg !1189
  %sub.ptr.sub = sub i64 %.cast, %12, !dbg !1189
  %conv28 = trunc i64 %sub.ptr.sub to i32, !dbg !1189
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 0, i32 %11, i32 %conv28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1190
  br label %if.end55, !dbg !1191

if.else:                                          ; preds = %for.cond
  %cmp31 = icmp eq i8 %5, 10, !dbg !1192
  br i1 %cmp31, label %if.then33, label %if.end55, !dbg !1193

if.then33:                                        ; preds = %if.else
  store i8* %cur.1, i8** %cur2, align 8, !dbg !1194
  tail call void @_cpp_process_line_notes(%struct.cpp_reader* %pfile, i32 1) #9, !dbg !1195
  %13 = load i8*, i8** %next_line, align 8, !dbg !1196
  %14 = load i8*, i8** %rlimit, align 8, !dbg !1197
  %cmp35 = icmp ult i8* %13, %14, !dbg !1198
  br i1 %cmp35, label %if.end38, label %cleanup, !dbg !1199

if.end38:                                         ; preds = %if.then33
  tail call void @_cpp_clean_line(%struct.cpp_reader* %pfile) #9, !dbg !1200
  %15 = load i64, i64* %3, align 8, !dbg !1201
  %16 = load i64, i64* %4, align 8, !dbg !1202
  %sub.ptr.sub43 = sub i64 %15, %16, !dbg !1203
  %conv44 = trunc i64 %sub.ptr.sub43 to i32, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %conv44, metadata !1141, metadata !DIExpression()), !dbg !1163
  %17 = load %struct.line_maps*, %struct.line_maps** %line_table46, align 8, !dbg !1205
  call void @llvm.dbg.value(metadata %struct.line_maps* %17, metadata !1148, metadata !DIExpression()), !dbg !1164
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %17, i64 0, i32 0, !dbg !1205
  %18 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !1205
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %17, i64 0, i32 2, !dbg !1205
  %19 = load i32, i32* %used, align 4, !dbg !1205
  %sub = add i32 %19, -1, !dbg !1205
  %idxprom = zext i32 %sub to i64, !dbg !1205
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !1150, metadata !DIExpression()), !dbg !1164
  %highest_line48 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %17, i64 0, i32 8, !dbg !1205
  %20 = load i32, i32* %highest_line48, align 4, !dbg !1205
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %18, i64 %idxprom, i32 2, !dbg !1205
  %21 = load i32, i32* %start_location, align 4, !dbg !1205
  %sub49 = sub i32 %20, %21, !dbg !1205
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %18, i64 %idxprom, i32 6, !dbg !1205
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !1205
  %bf.cast = zext i8 %bf.load to i32, !dbg !1205
  %shr = lshr i32 %sub49, %bf.cast, !dbg !1205
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %18, i64 %idxprom, i32 1, !dbg !1205
  %22 = load i32, i32* %to_line, align 8, !dbg !1205
  %add = add i32 %shr, %22, !dbg !1205
  call void @llvm.dbg.value(metadata i32 %add, metadata !1151, metadata !DIExpression()), !dbg !1164
  %add51 = add i32 %add, 1, !dbg !1205
  %call52 = tail call i32 @linemap_line_start(%struct.line_maps* %17, i32 %add51, i32 %conv44) #8, !dbg !1205
  %23 = load i8*, i8** %cur2, align 8, !dbg !1206
  call void @llvm.dbg.value(metadata i8* %23, metadata !1139, metadata !DIExpression()), !dbg !1152
  br label %cleanup, !dbg !1207

cleanup:                                          ; preds = %if.then33, %if.end38
  %cur.2 = phi i8* [ %23, %if.end38 ], [ %incdec.ptr5, %if.then33 ], !dbg !1208
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end38 ], [ false, %if.then33 ]
  call void @llvm.dbg.value(metadata i8* %cur.2, metadata !1139, metadata !DIExpression()), !dbg !1152
  br i1 %cleanup.dest.slot.0, label %if.end55, label %cleanup57.loopexit

if.end55:                                         ; preds = %land.lhs.true20, %if.end14, %if.else, %cleanup, %land.lhs.true, %if.then25
  %cur.4 = phi i8* [ %incdec.ptr5, %if.then25 ], [ %incdec.ptr5, %land.lhs.true20 ], [ %incdec.ptr5, %land.lhs.true ], [ %incdec.ptr5, %if.end14 ], [ %incdec.ptr5, %if.else ], [ %cur.2, %cleanup ], !dbg !1169
  call void @llvm.dbg.value(metadata i8* %cur.4, metadata !1139, metadata !DIExpression()), !dbg !1152
  br label %for.cond, !dbg !1209, !llvm.loop !1210

for.end:                                          ; preds = %if.then9
  %incdec.ptr5.lcssa3 = phi i8* [ %incdec.ptr5, %if.then9 ], !dbg !1169
  store i8* %incdec.ptr5.lcssa3, i8** %cur2, align 8, !dbg !1213
  tail call void @_cpp_process_line_notes(%struct.cpp_reader* %pfile, i32 1) #9, !dbg !1214
  br label %cleanup57, !dbg !1215

cleanup57.loopexit:                               ; preds = %cleanup
  br label %cleanup57, !dbg !1216

cleanup57:                                        ; preds = %cleanup57.loopexit, %for.end
  %retval.4 = phi i8 [ 0, %for.end ], [ 1, %cleanup57.loopexit ], !dbg !1152
  ret i8 %retval.4, !dbg !1216
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_hashnode* @_cpp_lex_identifier(%struct.cpp_reader* %pfile, i8* %name) local_unnamed_addr #3 !dbg !1217 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1221, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8* %name, metadata !1222, metadata !DIExpression()), !dbg !1224
  %call = tail call fastcc %struct.cpp_hashnode* @lex_identifier_intern(%struct.cpp_reader* %pfile, i8* %name) #9, !dbg !1225
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call, metadata !1223, metadata !DIExpression()), !dbg !1224
  ret %struct.cpp_hashnode* %call, !dbg !1226
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_hashnode* @lex_identifier_intern(%struct.cpp_reader* %pfile, i8* %base) unnamed_addr #3 !dbg !1227 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1231, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %base, metadata !1232, metadata !DIExpression()), !dbg !1237
  %0 = load i8, i8* %base, align 1, !dbg !1238
  %conv = zext i8 %0 to i32, !dbg !1238
  %sub = add nsw i32 %conv, -113, !dbg !1238
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1236, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %base, metadata !1234, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1237
  br label %while.cond, !dbg !1239

while.cond:                                       ; preds = %while.body, %entry
  %base.pn = phi i8* [ %base, %entry ], [ %cur.0, %while.body ]
  %hash.0 = phi i32 [ %sub, %entry ], [ %add6, %while.body ], !dbg !1237
  %cur.0 = getelementptr inbounds i8, i8* %base.pn, i64 1, !dbg !1237
  call void @llvm.dbg.value(metadata i32 %hash.0, metadata !1236, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %cur.0, metadata !1234, metadata !DIExpression()), !dbg !1237
  %1 = load i8, i8* %cur.0, align 1, !dbg !1240
  %idxprom = zext i8 %1 to i64, !dbg !1240
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !1240
  %2 = load i16, i16* %arrayidx, align 2, !dbg !1240
  %3 = and i16 %2, 516, !dbg !1240
  %tobool = icmp eq i16 %3, 0, !dbg !1239
  br i1 %tobool, label %while.end, label %while.body, !dbg !1239

while.body:                                       ; preds = %while.cond
  %mul = mul i32 %hash.0, 67, !dbg !1241
  %conv4 = zext i8 %1 to i32, !dbg !1241
  %sub5 = add nsw i32 %conv4, -113, !dbg !1241
  %add6 = add i32 %mul, %sub5, !dbg !1241
  call void @llvm.dbg.value(metadata i32 %add6, metadata !1236, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %cur.0, metadata !1234, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1237
  br label %while.cond, !dbg !1239, !llvm.loop !1243

while.end:                                        ; preds = %while.cond
  %hash.0.lcssa = phi i32 [ %hash.0, %while.cond ], !dbg !1237
  %cur.0.lcssa = phi i8* [ %cur.0, %while.cond ], !dbg !1237
  call void @llvm.dbg.value(metadata i32 %hash.0.lcssa, metadata !1236, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 %hash.0.lcssa, metadata !1236, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 %hash.0.lcssa, metadata !1236, metadata !DIExpression()), !dbg !1237
  %sub.ptr.lhs.cast = ptrtoint i8* %cur.0.lcssa to i64, !dbg !1245
  %sub.ptr.rhs.cast = ptrtoint i8* %base to i64, !dbg !1245
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1245
  %conv7 = trunc i64 %sub.ptr.sub to i32, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %conv7, metadata !1235, metadata !DIExpression()), !dbg !1237
  %add8 = add i32 %hash.0.lcssa, %conv7, !dbg !1247
  call void @llvm.dbg.value(metadata i32 %add8, metadata !1236, metadata !DIExpression()), !dbg !1237
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 50, !dbg !1248
  %4 = load %struct.ht*, %struct.ht** %hash_table, align 8, !dbg !1248
  %conv9 = and i64 %sub.ptr.sub, 4294967295, !dbg !1248
  %call = tail call %struct.ht_identifier* @ht_lookup_with_hash(%struct.ht* %4, i8* %base, i64 %conv9, i32 %add8, i32 1) #8, !dbg !1248
  %5 = bitcast %struct.ht_identifier* %call to %struct.cpp_hashnode*, !dbg !1248
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %5, metadata !1233, metadata !DIExpression()), !dbg !1237
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %5, i64 0, i32 3, !dbg !1249
  %bf.load = load i16, i16* %flags, align 2, !dbg !1249
  %6 = and i16 %bf.load, 512, !dbg !1249
  %tobool11 = icmp eq i16 %6, 0, !dbg !1249
  br i1 %tobool11, label %if.end42, label %land.lhs.true, !dbg !1249

land.lhs.true:                                    ; preds = %while.end
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !1249
  %7 = load i8, i8* %skipping, align 2, !dbg !1249
  %tobool12 = icmp eq i8 %7, 0, !dbg !1249
  br i1 %tobool12, label %if.then, label %if.end42, !dbg !1251

if.then:                                          ; preds = %land.lhs.true
  %8 = trunc i16 %bf.load to i8, !dbg !1252
  %tobool18 = icmp slt i8 %8, 0, !dbg !1252
  br i1 %tobool18, label %land.lhs.true19, label %if.end, !dbg !1255

land.lhs.true19:                                  ; preds = %if.then
  %poisoned_ok = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 7, !dbg !1256
  %9 = load i8, i8* %poisoned_ok, align 1, !dbg !1256
  %tobool21 = icmp eq i8 %9, 0, !dbg !1257
  br i1 %tobool21, label %if.then22, label %if.end, !dbg !1258

if.then22:                                        ; preds = %land.lhs.true19
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %call, i64 0, i32 0, !dbg !1259
  %10 = load i8*, i8** %str, align 8, !dbg !1259
  %call23 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %10) #8, !dbg !1260
  br label %if.end, !dbg !1260

if.end:                                           ; preds = %land.lhs.true19, %if.then22, %if.then
  %n__VA_ARGS__ = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 54, i32 3, !dbg !1261
  %11 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n__VA_ARGS__, align 8, !dbg !1261
  %cmp = icmp eq %struct.cpp_hashnode* %11, %5, !dbg !1263
  br i1 %cmp, label %land.lhs.true25, label %if.end30, !dbg !1264

land.lhs.true25:                                  ; preds = %if.end
  %va_args_ok = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 6, !dbg !1265
  %12 = load i8, i8* %va_args_ok, align 2, !dbg !1265
  %tobool27 = icmp eq i8 %12, 0, !dbg !1266
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !1267

if.then28:                                        ; preds = %land.lhs.true25
  %call29 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !1268
  br label %if.end30, !dbg !1268

if.end30:                                         ; preds = %land.lhs.true25, %if.then28, %if.end
  %bf.load32 = load i16, i16* %flags, align 2, !dbg !1269
  %tobool36 = icmp slt i16 %bf.load32, 0, !dbg !1271
  br i1 %tobool36, label %if.then37, label %if.end42, !dbg !1272

if.then37:                                        ; preds = %if.end30
  %str39 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %call, i64 0, i32 0, !dbg !1273
  %13 = load i8*, i8** %str39, align 8, !dbg !1273
  %call40 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i8* %13) #8, !dbg !1274
  br label %if.end42, !dbg !1274

if.end42:                                         ; preds = %land.lhs.true, %while.end, %if.end30, %if.then37
  ret %struct.cpp_hashnode* %5, !dbg !1275
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_comment_table* @cpp_get_comments(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !1276 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1281, metadata !DIExpression()), !dbg !1282
  %comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 62, !dbg !1283
  ret %struct.cpp_comment_table* %comments, !dbg !1284
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_init_tokenrun(%struct.tokenrun* %run, i32 %count) local_unnamed_addr #3 !dbg !1285 {
entry:
  call void @llvm.dbg.value(metadata %struct.tokenrun* %run, metadata !1289, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i32 %count, metadata !1290, metadata !DIExpression()), !dbg !1291
  %conv = zext i32 %count to i64, !dbg !1292
  %mul = mul nuw nsw i64 %conv, 24, !dbg !1292
  %call = tail call i8* @xmalloc(i64 %mul) #8, !dbg !1292
  %base = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %run, i64 0, i32 2, !dbg !1293
  %0 = bitcast %struct.cpp_token** %base to i8**, !dbg !1294
  store i8* %call, i8** %0, align 8, !dbg !1294
  %.cast = bitcast i8* %call to %struct.cpp_token*, !dbg !1295
  %add.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %.cast, i64 %conv, !dbg !1296
  %limit = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %run, i64 0, i32 3, !dbg !1297
  store %struct.cpp_token* %add.ptr, %struct.cpp_token** %limit, align 8, !dbg !1298
  %next = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %run, i64 0, i32 0, !dbg !1299
  store %struct.tokenrun* null, %struct.tokenrun** %next, align 8, !dbg !1300
  ret void, !dbg !1301
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_token* @cpp_peek_token(%struct.cpp_reader* %pfile, i32 %index) local_unnamed_addr #3 !dbg !1302 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1306, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i32 %index, metadata !1307, metadata !DIExpression()), !dbg !1313
  %context1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1314
  %0 = load %struct.cpp_context*, %struct.cpp_context** %context1, align 8, !dbg !1314
  call void @llvm.dbg.value(metadata %struct.cpp_context* %0, metadata !1308, metadata !DIExpression()), !dbg !1313
  br label %while.cond, !dbg !1315

while.cond:                                       ; preds = %cleanup, %entry
  %context.0 = phi %struct.cpp_context* [ %0, %entry ], [ %context.1, %cleanup ], !dbg !1316
  %index.addr.0 = phi i32 [ %index, %entry ], [ %index.addr.1, %cleanup ]
  %retval.0 = phi %struct.cpp_token* [ undef, %entry ], [ %retval.1, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %index.addr.0, metadata !1307, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata %struct.cpp_context* %context.0, metadata !1308, metadata !DIExpression()), !dbg !1313
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %context.0, i64 0, i32 1, !dbg !1317
  %1 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8, !dbg !1317
  %tobool = icmp eq %struct.cpp_context* %1, null, !dbg !1315
  br i1 %tobool, label %while.end, label %while.body, !dbg !1315

while.body:                                       ; preds = %while.cond
  %direct_p = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %context.0, i64 0, i32 5, !dbg !1318
  %2 = load i8, i8* %direct_p, align 8, !dbg !1318
  %tobool2 = icmp eq i8 %2, 0, !dbg !1319
  %last = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %context.0, i64 0, i32 2, i32 0, i32 1, !dbg !1320
  br i1 %tobool2, label %cond.false, label %cond.true, !dbg !1319

cond.true:                                        ; preds = %while.body
  %3 = bitcast %union.utoken* %last to i64*, !dbg !1321
  %4 = load i64, i64* %3, align 8, !dbg !1321
  %token5 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %context.0, i64 0, i32 2, i32 0, i32 0, i32 0, !dbg !1322
  %5 = bitcast %struct.cpp_token** %token5 to i64*, !dbg !1322
  %6 = load i64, i64* %5, align 8, !dbg !1322
  %sub.ptr.sub = sub i64 %4, %6, !dbg !1323
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24, !dbg !1323
  br label %cond.end, !dbg !1319

cond.false:                                       ; preds = %while.body
  %7 = bitcast %union.utoken* %last to i64*, !dbg !1324
  %8 = load i64, i64* %7, align 8, !dbg !1324
  %first11 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %context.0, i64 0, i32 2, i32 0, i32 0, !dbg !1325
  %9 = bitcast %union.utoken* %first11 to i64*, !dbg !1326
  %10 = load i64, i64* %9, align 8, !dbg !1326
  %sub.ptr.sub15 = sub i64 %8, %10, !dbg !1327
  %sub.ptr.div16 = ashr exact i64 %sub.ptr.sub15, 3, !dbg !1327
  br label %cond.end, !dbg !1319

cond.end:                                         ; preds = %cond.false, %cond.true
  %.in = phi i64 [ %6, %cond.true ], [ %10, %cond.false ]
  %.in7 = phi i64 [ %6, %cond.true ], [ %10, %cond.false ]
  %cond = phi i64 [ %sub.ptr.div, %cond.true ], [ %sub.ptr.div16, %cond.false ], !dbg !1319
  %11 = inttoptr i64 %.in7 to %struct.cpp_token*, !dbg !1319
  %12 = inttoptr i64 %.in to %struct.cpp_token**, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %cond, metadata !1311, metadata !DIExpression()), !dbg !1320
  %conv17 = trunc i64 %cond to i32, !dbg !1328
  %cmp = icmp slt i32 %index.addr.0, %conv17, !dbg !1330
  br i1 %cmp, label %if.then, label %if.end, !dbg !1331

if.then:                                          ; preds = %cond.end
  br i1 %tobool2, label %cond.false27, label %cond.true22, !dbg !1332

cond.true22:                                      ; preds = %if.then
  %idx.ext = sext i32 %index.addr.0 to i64, !dbg !1333
  %add.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %11, i64 %idx.ext, !dbg !1333
  br label %cleanup, !dbg !1332

cond.false27:                                     ; preds = %if.then
  %idx.ext32 = sext i32 %index.addr.0 to i64, !dbg !1334
  %add.ptr33 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %12, i64 %idx.ext32, !dbg !1334
  %13 = load %struct.cpp_token*, %struct.cpp_token** %add.ptr33, align 8, !dbg !1335
  br label %cleanup, !dbg !1332

if.end:                                           ; preds = %cond.end
  %sub = sub nsw i32 %index.addr.0, %conv17, !dbg !1336
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1307, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata %struct.cpp_context* %1, metadata !1308, metadata !DIExpression()), !dbg !1313
  br label %cleanup, !dbg !1337

cleanup:                                          ; preds = %cond.true22, %cond.false27, %if.end
  %context.1 = phi %struct.cpp_context* [ %1, %if.end ], [ %context.0, %cond.false27 ], [ %context.0, %cond.true22 ], !dbg !1313
  %index.addr.1 = phi i32 [ %sub, %if.end ], [ %index.addr.0, %cond.false27 ], [ %index.addr.0, %cond.true22 ]
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end ], [ false, %cond.false27 ], [ false, %cond.true22 ]
  %retval.1 = phi %struct.cpp_token* [ %retval.0, %if.end ], [ %13, %cond.false27 ], [ %add.ptr, %cond.true22 ]
  call void @llvm.dbg.value(metadata i32 %index.addr.1, metadata !1307, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata %struct.cpp_context* %context.1, metadata !1308, metadata !DIExpression()), !dbg !1313
  br i1 %cleanup.dest.slot.0, label %while.cond, label %cleanup45.loopexit2, !llvm.loop !1338

while.end:                                        ; preds = %while.cond
  %index.addr.0.lcssa = phi i32 [ %index.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata i32 %index.addr.0.lcssa, metadata !1307, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i32 %index.addr.0.lcssa, metadata !1307, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i32 %index.addr.0.lcssa, metadata !1307, metadata !DIExpression()), !dbg !1313
  call void @llvm.dbg.value(metadata i32 %index.addr.0.lcssa, metadata !1310, metadata !DIExpression()), !dbg !1313
  %keep_tokens = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 33, !dbg !1339
  %14 = load i32, i32* %keep_tokens, align 4, !dbg !1340
  %inc = add i32 %14, 1, !dbg !1340
  store i32 %inc, i32* %keep_tokens, align 4, !dbg !1340
  br label %do.body, !dbg !1341

do.body:                                          ; preds = %do.cond, %while.end
  %index.addr.2 = phi i32 [ %index.addr.0.lcssa, %while.end ], [ %dec, %do.cond ]
  call void @llvm.dbg.value(metadata i32 %index.addr.2, metadata !1307, metadata !DIExpression()), !dbg !1313
  %call = tail call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %pfile) #9, !dbg !1342
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !1309, metadata !DIExpression()), !dbg !1313
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !1344
  %bf.load = load i8, i8* %type, align 4, !dbg !1344
  %cmp38 = icmp eq i8 %bf.load, 22, !dbg !1346
  br i1 %cmp38, label %cleanup45.loopexit, label %do.cond, !dbg !1347

do.cond:                                          ; preds = %do.body
  %dec = add nsw i32 %index.addr.2, -1, !dbg !1348
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1307, metadata !DIExpression()), !dbg !1313
  %tobool42 = icmp eq i32 %index.addr.2, 0, !dbg !1349
  br i1 %tobool42, label %do.end, label %do.body, !dbg !1349, !llvm.loop !1350

do.end:                                           ; preds = %do.cond
  %call.lcssa8 = phi %struct.cpp_token* [ %call, %do.cond ], !dbg !1342
  %add = add nsw i32 %index.addr.0.lcssa, 1, !dbg !1352
  tail call void @_cpp_backup_tokens_direct(%struct.cpp_reader* %pfile, i32 %add) #8, !dbg !1353
  %15 = load i32, i32* %keep_tokens, align 4, !dbg !1354
  %dec44 = add i32 %15, -1, !dbg !1354
  store i32 %dec44, i32* %keep_tokens, align 4, !dbg !1354
  br label %cleanup45, !dbg !1355

cleanup45.loopexit:                               ; preds = %do.body
  %call.lcssa = phi %struct.cpp_token* [ %call, %do.body ], !dbg !1342
  br label %cleanup45, !dbg !1356

cleanup45.loopexit2:                              ; preds = %cleanup
  %retval.1.lcssa = phi %struct.cpp_token* [ %retval.1, %cleanup ]
  br label %cleanup45, !dbg !1356

cleanup45:                                        ; preds = %cleanup45.loopexit2, %cleanup45.loopexit, %do.end
  %retval.2 = phi %struct.cpp_token* [ %call.lcssa8, %do.end ], [ %call.lcssa, %cleanup45.loopexit ], [ %retval.1.lcssa, %cleanup45.loopexit2 ], !dbg !1313
  ret %struct.cpp_token* %retval.2, !dbg !1356
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !1357 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1361, metadata !DIExpression()), !dbg !1363
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !1364
  %cur_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 31, !dbg !1364
  %0 = bitcast %struct.cpp_token** %cur_token to i64*, !dbg !1369
  %lookaheads = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 32, !dbg !1371
  %parsing_args = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 9, !dbg !1373
  %type34 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 11, i32 1, !dbg !1377
  %directive_result41 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 11, !dbg !1382
  %in_deferred_pragma = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 12, !dbg !1383
  %line_change = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 0, !dbg !1385
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !1385
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !1387
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 28, !dbg !1389
  br label %for.cond, !dbg !1390

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %1 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !1391
  %2 = load %struct.tokenrun*, %struct.tokenrun** %cur_run, align 8, !dbg !1392
  %limit = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %2, i64 0, i32 3, !dbg !1393
  %3 = load %struct.cpp_token*, %struct.cpp_token** %limit, align 8, !dbg !1393
  %cmp = icmp eq %struct.cpp_token* %1, %3, !dbg !1394
  br i1 %cmp, label %if.then, label %if.end, !dbg !1395

if.then:                                          ; preds = %for.cond
  %call = tail call fastcc %struct.tokenrun* @next_tokenrun(%struct.tokenrun* %2) #9, !dbg !1396
  store %struct.tokenrun* %call, %struct.tokenrun** %cur_run, align 8, !dbg !1397
  %base = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %call, i64 0, i32 2, !dbg !1398
  %4 = bitcast %struct.cpp_token** %base to i64*, !dbg !1398
  %5 = load i64, i64* %4, align 8, !dbg !1398
  store i64 %5, i64* %0, align 8, !dbg !1399
  %6 = inttoptr i64 %5 to %struct.cpp_token*, !dbg !1400
  br label %if.end, !dbg !1400

if.end:                                           ; preds = %if.then, %for.cond
  %7 = phi %struct.cpp_token* [ %6, %if.then ], [ %1, %for.cond ]
  %8 = phi %struct.cpp_token* [ %6, %if.then ], [ %1, %for.cond ]
  %9 = phi %struct.tokenrun* [ %call, %if.then ], [ %2, %for.cond ], !dbg !1401
  %10 = phi %struct.cpp_token* [ %6, %if.then ], [ %1, %for.cond ], !dbg !1403
  %base7 = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %9, i64 0, i32 2, !dbg !1404
  %11 = load %struct.cpp_token*, %struct.cpp_token** %base7, align 8, !dbg !1404
  %cmp8 = icmp ult %struct.cpp_token* %10, %11, !dbg !1405
  br i1 %cmp8, label %if.then13, label %lor.lhs.false, !dbg !1406

lor.lhs.false:                                    ; preds = %if.end
  %limit11 = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %9, i64 0, i32 3, !dbg !1407
  %12 = load %struct.cpp_token*, %struct.cpp_token** %limit11, align 8, !dbg !1407
  %cmp12 = icmp ult %struct.cpp_token* %8, %12, !dbg !1408
  br i1 %cmp12, label %if.end14, label %if.then13, !dbg !1409

if.then13:                                        ; preds = %lor.lhs.false, %if.end
  tail call void @abort() #11, !dbg !1410
  unreachable, !dbg !1410

if.end14:                                         ; preds = %lor.lhs.false
  %13 = load i32, i32* %lookaheads, align 8, !dbg !1411
  %tobool = icmp eq i32 %13, 0, !dbg !1412
  br i1 %tobool, label %if.else, label %if.then15, !dbg !1413

if.then15:                                        ; preds = %if.end14
  %dec = add i32 %13, -1, !dbg !1414
  store i32 %dec, i32* %lookaheads, align 8, !dbg !1414
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %7, i64 1, !dbg !1416
  store %struct.cpp_token* %incdec.ptr, %struct.cpp_token** %cur_token, align 8, !dbg !1416
  call void @llvm.dbg.value(metadata %struct.cpp_token* %7, metadata !1362, metadata !DIExpression()), !dbg !1363
  br label %if.end19, !dbg !1417

if.else:                                          ; preds = %if.end14
  %call18 = tail call %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %pfile) #9, !dbg !1418
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call18, metadata !1362, metadata !DIExpression()), !dbg !1363
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then15
  %result.0 = phi %struct.cpp_token* [ %7, %if.then15 ], [ %call18, %if.else ], !dbg !1371
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.0, metadata !1362, metadata !DIExpression()), !dbg !1363
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.0, i64 0, i32 2, !dbg !1419
  %14 = load i16, i16* %flags, align 2, !dbg !1419
  %15 = and i16 %14, 64, !dbg !1420
  %tobool20 = icmp eq i16 %15, 0, !dbg !1420
  br i1 %tobool20, label %if.end61, label %if.then21, !dbg !1421

if.then21:                                        ; preds = %if.end19
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.0, i64 0, i32 1, !dbg !1422
  %bf.load = load i8, i8* %type, align 4, !dbg !1422
  %cmp22 = icmp eq i8 %bf.load, 37, !dbg !1423
  br i1 %cmp22, label %land.lhs.true, label %if.else43, !dbg !1424

land.lhs.true:                                    ; preds = %if.then21
  %16 = load i8, i8* %parsing_args, align 1, !dbg !1425
  %cmp25 = icmp eq i8 %16, 1, !dbg !1426
  br i1 %cmp25, label %if.else43, label %if.then27, !dbg !1427

if.then27:                                        ; preds = %land.lhs.true
  %17 = and i16 %14, 1, !dbg !1428
  %and30 = zext i16 %17 to i32, !dbg !1428
  %call31 = tail call i32 @_cpp_handle_directive(%struct.cpp_reader* %pfile, i32 %and30) #8, !dbg !1429
  %tobool32 = icmp eq i32 %call31, 0, !dbg !1429
  br i1 %tobool32, label %if.end49, label %if.then33, !dbg !1430

if.then33:                                        ; preds = %if.then27
  %bf.load35 = load i8, i8* %type34, align 4, !dbg !1431
  %cmp37 = icmp eq i8 %bf.load35, 72, !dbg !1432
  br i1 %cmp37, label %for.cond.backedge, label %if.end40, !dbg !1433

for.cond.backedge:                                ; preds = %if.then33, %lor.lhs.false75
  br label %for.cond, !dbg !1391, !llvm.loop !1434

if.end40:                                         ; preds = %if.then33
  call void @llvm.dbg.value(metadata %struct.cpp_token* %directive_result41, metadata !1362, metadata !DIExpression()), !dbg !1363
  br label %if.end49, !dbg !1437

if.else43:                                        ; preds = %land.lhs.true, %if.then21
  %18 = load i8, i8* %in_deferred_pragma, align 8, !dbg !1438
  %tobool45 = icmp eq i8 %18, 0, !dbg !1439
  %spec.select = select i1 %tobool45, %struct.cpp_token* %result.0, %struct.cpp_token* %directive_result41, !dbg !1440
  call void @llvm.dbg.value(metadata %struct.cpp_token* %spec.select, metadata !1362, metadata !DIExpression()), !dbg !1363
  br label %if.end49

if.end49:                                         ; preds = %if.then27, %if.end40, %if.else43
  %result.3 = phi %struct.cpp_token* [ %spec.select, %if.else43 ], [ %directive_result41, %if.end40 ], [ %result.0, %if.then27 ], !dbg !1373
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.3, metadata !1362, metadata !DIExpression()), !dbg !1363
  %19 = load void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.cpp_token*, i32)** %line_change, align 8, !dbg !1441
  %tobool50 = icmp eq void (%struct.cpp_reader*, %struct.cpp_token*, i32)* %19, null, !dbg !1442
  br i1 %tobool50, label %if.end61, label %land.lhs.true51, !dbg !1443

land.lhs.true51:                                  ; preds = %if.end49
  %20 = load i8, i8* %skipping, align 2, !dbg !1444
  %tobool53 = icmp eq i8 %20, 0, !dbg !1445
  br i1 %tobool53, label %if.then54, label %if.end61, !dbg !1446

if.then54:                                        ; preds = %land.lhs.true51
  %21 = load i8, i8* %parsing_args, align 1, !dbg !1447
  %conv59 = zext i8 %21 to i32, !dbg !1448
  tail call void %19(%struct.cpp_reader* %pfile, %struct.cpp_token* %result.3, i32 %conv59) #8, !dbg !1449
  br label %if.end61, !dbg !1449

if.end61:                                         ; preds = %land.lhs.true51, %if.end49, %if.end19, %if.then54
  %result.4 = phi %struct.cpp_token* [ %result.0, %if.end19 ], [ %result.3, %if.then54 ], [ %result.3, %land.lhs.true51 ], [ %result.3, %if.end49 ], !dbg !1389
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4, metadata !1362, metadata !DIExpression()), !dbg !1363
  %22 = load i8, i8* %in_directive, align 8, !dbg !1450
  %tobool64 = icmp eq i8 %22, 0, !dbg !1451
  br i1 %tobool64, label %lor.lhs.false65, label %for.end, !dbg !1452

lor.lhs.false65:                                  ; preds = %if.end61
  %23 = load i8, i8* %in_deferred_pragma, align 8, !dbg !1453
  %tobool69 = icmp eq i8 %23, 0, !dbg !1454
  br i1 %tobool69, label %if.end71, label %for.end, !dbg !1455

if.end71:                                         ; preds = %lor.lhs.false65
  store i8 0, i8* %mi_valid, align 8, !dbg !1456
  %24 = load i8, i8* %skipping, align 2, !dbg !1457
  %tobool74 = icmp eq i8 %24, 0, !dbg !1459
  br i1 %tobool74, label %for.end, label %lor.lhs.false75, !dbg !1460

lor.lhs.false75:                                  ; preds = %if.end71
  %type76 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.4, i64 0, i32 1, !dbg !1461
  %bf.load77 = load i8, i8* %type76, align 4, !dbg !1461
  %cmp79 = icmp eq i8 %bf.load77, 22, !dbg !1462
  br i1 %cmp79, label %for.end, label %for.cond.backedge, !dbg !1463

for.end:                                          ; preds = %if.end71, %lor.lhs.false65, %if.end61, %lor.lhs.false75
  %result.4.lcssa = phi %struct.cpp_token* [ %result.4, %if.end71 ], [ %result.4, %lor.lhs.false65 ], [ %result.4, %if.end61 ], [ %result.4, %lor.lhs.false75 ], !dbg !1389
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa, metadata !1362, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa, metadata !1362, metadata !DIExpression()), !dbg !1363
  ret %struct.cpp_token* %result.4.lcssa, !dbg !1464
}

declare dso_local void @_cpp_backup_tokens_direct(%struct.cpp_reader*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !1465 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1469, metadata !DIExpression()), !dbg !1479
  %cur_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 31, !dbg !1480
  %0 = load %struct.tokenrun*, %struct.tokenrun** %cur_run, align 8, !dbg !1480
  %limit = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %0, i64 0, i32 3, !dbg !1481
  %1 = bitcast %struct.cpp_token** %limit to i64*, !dbg !1481
  %2 = load i64, i64* %1, align 8, !dbg !1481
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !1482
  %3 = bitcast %struct.cpp_token** %cur_token to i64*, !dbg !1482
  %4 = load i64, i64* %3, align 8, !dbg !1482
  %sub.ptr.sub = sub i64 %2, %4, !dbg !1483
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %sub.ptr.div, metadata !1472, metadata !DIExpression()), !dbg !1479
  %lookaheads = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 32, !dbg !1484
  %5 = load i32, i32* %lookaheads, align 8, !dbg !1484
  %conv = zext i32 %5 to i64, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1473, metadata !DIExpression()), !dbg !1479
  %6 = inttoptr i64 %4 to %struct.cpp_token*, !dbg !1486
  call void @llvm.dbg.value(metadata %struct.cpp_token* %6, metadata !1470, metadata !DIExpression(DW_OP_constu, 24, DW_OP_minus, DW_OP_stack_value)), !dbg !1479
  %tobool = icmp eq i32 %5, 0, !dbg !1487
  br i1 %tobool, label %if.end29, label %if.then, !dbg !1488

if.then:                                          ; preds = %entry
  %cmp = icmp sgt i64 %sub.ptr.div, %conv, !dbg !1489
  br i1 %cmp, label %if.end15, label %if.then3, !dbg !1490

if.then3:                                         ; preds = %if.then
  %call = tail call fastcc %struct.tokenrun* @next_tokenrun(%struct.tokenrun* %0) #9, !dbg !1491
  call void @llvm.dbg.value(metadata %struct.tokenrun* %call, metadata !1474, metadata !DIExpression()), !dbg !1492
  %cmp5 = icmp slt i64 %sub.ptr.div, %conv, !dbg !1493
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !1495

if.then7:                                         ; preds = %if.then3
  %base = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %call, i64 0, i32 2, !dbg !1496
  %7 = load %struct.cpp_token*, %struct.cpp_token** %base, align 8, !dbg !1496
  %add.ptr8 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %7, i64 1, !dbg !1497
  %8 = bitcast %struct.cpp_token* %add.ptr8 to i8*, !dbg !1498
  %.cast1 = bitcast %struct.cpp_token* %7 to i8*, !dbg !1499
  %sub = sub nsw i64 %conv, %sub.ptr.div, !dbg !1500
  %mul = mul i64 %sub, 24, !dbg !1501
  %call10 = tail call i8* @memmove(i8* nonnull %8, i8* %.cast1, i64 %mul) #8, !dbg !1502
  br label %if.end, !dbg !1502

if.end:                                           ; preds = %if.then7, %if.then3
  %base11 = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %call, i64 0, i32 2, !dbg !1503
  %9 = bitcast %struct.cpp_token** %base11 to i8**, !dbg !1503
  %10 = load i8*, i8** %9, align 8, !dbg !1503
  %11 = load %struct.tokenrun*, %struct.tokenrun** %cur_run, align 8, !dbg !1504
  %limit13 = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %11, i64 0, i32 3, !dbg !1505
  %12 = load %struct.cpp_token*, %struct.cpp_token** %limit13, align 8, !dbg !1505
  %arrayidx14 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %12, i64 -1, !dbg !1506
  %13 = bitcast %struct.cpp_token* %arrayidx14 to i8*, !dbg !1506
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* nonnull align 8 %13, i64 24, i1 false), !dbg !1506
  br label %if.end15, !dbg !1507

if.end15:                                         ; preds = %if.then, %if.end
  %cmp16 = icmp sgt i64 %sub.ptr.sub, 24, !dbg !1508
  br i1 %cmp16, label %if.then18, label %if.end29, !dbg !1510

if.then18:                                        ; preds = %if.end15
  %14 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !1511
  %add.ptr20 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %14, i64 1, !dbg !1512
  %15 = bitcast %struct.cpp_token* %add.ptr20 to i8*, !dbg !1513
  %.cast = bitcast %struct.cpp_token* %14 to i8*, !dbg !1514
  %sub22 = add nsw i64 %sub.ptr.div, -1, !dbg !1515
  %cmp23 = icmp sgt i64 %sub22, %conv, !dbg !1515
  %cond = select i1 %cmp23, i64 %conv, i64 %sub22, !dbg !1515
  %mul26 = mul i64 %cond, 24, !dbg !1516
  %call27 = tail call i8* @memmove(i8* nonnull %15, i8* %.cast, i64 %mul26) #8, !dbg !1517
  br label %if.end29, !dbg !1517

if.end29:                                         ; preds = %entry, %if.end15, %if.then18
  %16 = icmp eq i64 %sub.ptr.sub, 0, !dbg !1518
  br i1 %16, label %land.lhs.true, label %if.end29.if.end43_crit_edge, !dbg !1520

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  %.pre = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !1521
  br label %if.end43, !dbg !1520

land.lhs.true:                                    ; preds = %if.end29
  %17 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !1522
  %18 = load %struct.tokenrun*, %struct.tokenrun** %cur_run, align 8, !dbg !1523
  %limit33 = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %18, i64 0, i32 3, !dbg !1524
  %19 = load %struct.cpp_token*, %struct.cpp_token** %limit33, align 8, !dbg !1524
  %cmp34 = icmp eq %struct.cpp_token* %17, %19, !dbg !1525
  br i1 %cmp34, label %if.then36, label %if.end43, !dbg !1526

if.then36:                                        ; preds = %land.lhs.true
  %call38 = tail call fastcc %struct.tokenrun* @next_tokenrun(%struct.tokenrun* %18) #9, !dbg !1527
  store %struct.tokenrun* %call38, %struct.tokenrun** %cur_run, align 8, !dbg !1529
  %base41 = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %call38, i64 0, i32 2, !dbg !1530
  %20 = bitcast %struct.cpp_token** %base41 to i64*, !dbg !1530
  %21 = load i64, i64* %20, align 8, !dbg !1530
  store i64 %21, i64* %3, align 8, !dbg !1531
  %22 = inttoptr i64 %21 to %struct.cpp_token*, !dbg !1532
  br label %if.end43, !dbg !1532

if.end43:                                         ; preds = %if.end29.if.end43_crit_edge, %if.then36, %land.lhs.true
  %23 = phi %struct.cpp_token* [ %.pre, %if.end29.if.end43_crit_edge ], [ %22, %if.then36 ], [ %17, %land.lhs.true ], !dbg !1521
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %23, i64 1, !dbg !1521
  store %struct.cpp_token* %incdec.ptr, %struct.cpp_token** %cur_token, align 8, !dbg !1521
  call void @llvm.dbg.value(metadata %struct.cpp_token* %23, metadata !1471, metadata !DIExpression()), !dbg !1479
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i64 -1, i32 0, !dbg !1533
  %24 = load i32, i32* %src_loc, align 8, !dbg !1533
  %src_loc45 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %23, i64 0, i32 0, !dbg !1534
  store i32 %24, i32* %src_loc45, align 8, !dbg !1535
  ret %struct.cpp_token* %23, !dbg !1536
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.tokenrun* @next_tokenrun(%struct.tokenrun* %run) unnamed_addr #3 !dbg !1537 {
entry:
  call void @llvm.dbg.value(metadata %struct.tokenrun* %run, metadata !1541, metadata !DIExpression()), !dbg !1542
  %next = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %run, i64 0, i32 0, !dbg !1543
  %0 = load %struct.tokenrun*, %struct.tokenrun** %next, align 8, !dbg !1543
  %cmp = icmp eq %struct.tokenrun* %0, null, !dbg !1545
  br i1 %cmp, label %if.then, label %if.end, !dbg !1546

if.then:                                          ; preds = %entry
  %call = tail call i8* @xmalloc(i64 32) #8, !dbg !1547
  %1 = bitcast %struct.tokenrun* %run to i8**, !dbg !1549
  store i8* %call, i8** %1, align 8, !dbg !1549
  %prev = getelementptr inbounds i8, i8* %call, i64 8, !dbg !1550
  %2 = bitcast i8* %prev to %struct.tokenrun**, !dbg !1550
  store %struct.tokenrun* %run, %struct.tokenrun** %2, align 8, !dbg !1551
  %3 = load %struct.tokenrun*, %struct.tokenrun** %next, align 8, !dbg !1552
  tail call void @_cpp_init_tokenrun(%struct.tokenrun* %3, i32 250) #9, !dbg !1553
  %.pre = load %struct.tokenrun*, %struct.tokenrun** %next, align 8, !dbg !1554
  br label %if.end, !dbg !1555

if.end:                                           ; preds = %if.then, %entry
  %4 = phi %struct.tokenrun* [ %.pre, %if.then ], [ %0, %entry ], !dbg !1554
  ret %struct.tokenrun* %4, !dbg !1556
}

; Function Attrs: nounwind
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !1557 {
entry:
  %nst = alloca %struct.normalize_state, align 4
  %nst161 = alloca %struct.normalize_state, align 4
  %nst441 = alloca %struct.normalize_state, align 4
  %nst717 = alloca %struct.normalize_state, align 4
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1559, metadata !DIExpression()), !dbg !1595
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !1596
  %0 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !1597
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i64 1, !dbg !1597
  store %struct.cpp_token* %incdec.ptr, %struct.cpp_token** %cur_token, align 8, !dbg !1597
  call void @llvm.dbg.value(metadata %struct.cpp_token* %0, metadata !1564, metadata !DIExpression()), !dbg !1595
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1595
  %in_deferred_pragma = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 12, !dbg !1598
  %keep_tokens = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 33, !dbg !1602
  %base_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 30, !dbg !1604
  %cur_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 31, !dbg !1604
  %base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 30, i32 2, !dbg !1604
  %parsing_args = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 9, !dbg !1606
  %line_table35 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !1595
  %overlaid_buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 1, !dbg !1608
  %cplusplus_comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 3, !dbg !1610
  %lang = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 1, !dbg !1613
  %pedantic = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !1613
  %warn_comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 13, !dbg !1616
  %save_comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 5, !dbg !1618
  br label %fresh_line, !dbg !1620

fresh_line:                                       ; preds = %if.end87, %entry
  %result.0 = phi %struct.cpp_token* [ %0, %entry ], [ %result.2, %if.end87 ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.0, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.label(metadata !1592), !dbg !1622
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.0, i64 0, i32 2, !dbg !1623
  store i16 0, i16* %flags, align 2, !dbg !1624
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !1625
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %1, metadata !1562, metadata !DIExpression()), !dbg !1595
  %need_line = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %1, i64 0, i32 13, !dbg !1626
  %2 = load i8, i8* %need_line, align 8, !dbg !1626
  %tobool = icmp eq i8 %2, 0, !dbg !1627
  br i1 %tobool, label %if.end33, label %if.then, !dbg !1628

if.then:                                          ; preds = %fresh_line
  %3 = load i8, i8* %in_deferred_pragma, align 8, !dbg !1629
  %tobool2 = icmp eq i8 %3, 0, !dbg !1630
  br i1 %tobool2, label %if.end10, label %if.then3, !dbg !1631

if.then3:                                         ; preds = %if.then
  %result.0.lcssa = phi %struct.cpp_token* [ %result.0, %if.then ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.0.lcssa, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.0.lcssa, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.0.lcssa, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.0.lcssa, i64 0, i32 1, !dbg !1632
  store i8 71, i8* %type, align 4, !dbg !1634
  store i8 0, i8* %in_deferred_pragma, align 8, !dbg !1635
  %pragma_allow_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 13, !dbg !1636
  %4 = load i8, i8* %pragma_allow_expansion, align 1, !dbg !1636
  %tobool7 = icmp eq i8 %4, 0, !dbg !1638
  br i1 %tobool7, label %if.then8, label %cleanup732, !dbg !1639

if.then8:                                         ; preds = %if.then3
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !1640
  %5 = load i8, i8* %prevent_expansion, align 8, !dbg !1641
  %dec = add i8 %5, -1, !dbg !1641
  store i8 %dec, i8* %prevent_expansion, align 8, !dbg !1641
  br label %cleanup732, !dbg !1642

if.end10:                                         ; preds = %if.then
  %call = tail call zeroext i8 @_cpp_get_fresh_line(%struct.cpp_reader* %pfile) #9, !dbg !1643
  %tobool11 = icmp eq i8 %call, 0, !dbg !1643
  br i1 %tobool11, label %if.then12, label %if.end19, !dbg !1645

if.then12:                                        ; preds = %if.end10
  %result.0.lcssa455 = phi %struct.cpp_token* [ %result.0, %if.end10 ], !dbg !1621
  %flags.lcssa419 = phi i16* [ %flags, %if.end10 ], !dbg !1623
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.0.lcssa455, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.0.lcssa455, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.0.lcssa455, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type13 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.0.lcssa455, i64 0, i32 1, !dbg !1646
  store i8 22, i8* %type13, align 4, !dbg !1648
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !1649
  %6 = load i8, i8* %in_directive, align 8, !dbg !1649
  %tobool15 = icmp eq i8 %6, 0, !dbg !1651
  br i1 %tobool15, label %if.then16, label %cleanup732, !dbg !1652

if.then16:                                        ; preds = %if.then12
  %7 = load %struct.line_maps*, %struct.line_maps** %line_table35, align 8, !dbg !1653
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %7, i64 0, i32 8, !dbg !1655
  %8 = load i32, i32* %highest_line, align 4, !dbg !1655
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.0.lcssa455, i64 0, i32 0, !dbg !1656
  store i32 %8, i32* %src_loc, align 8, !dbg !1657
  store i16 64, i16* %flags.lcssa419, align 2, !dbg !1658
  br label %cleanup732, !dbg !1659

if.end19:                                         ; preds = %if.end10
  %9 = load i32, i32* %keep_tokens, align 4, !dbg !1660
  %tobool20 = icmp eq i32 %9, 0, !dbg !1661
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !1662

if.then21:                                        ; preds = %if.end19
  store %struct.tokenrun* %base_run, %struct.tokenrun** %cur_run, align 8, !dbg !1663
  %10 = load %struct.cpp_token*, %struct.cpp_token** %base, align 8, !dbg !1664
  call void @llvm.dbg.value(metadata %struct.cpp_token* %10, metadata !1564, metadata !DIExpression()), !dbg !1595
  %add.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %10, i64 1, !dbg !1665
  store %struct.cpp_token* %add.ptr, %struct.cpp_token** %cur_token, align 8, !dbg !1666
  br label %if.end24, !dbg !1667

if.end24:                                         ; preds = %if.end19, %if.then21
  %result.1 = phi %struct.cpp_token* [ %result.0, %if.end19 ], [ %10, %if.then21 ], !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.1, metadata !1564, metadata !DIExpression()), !dbg !1595
  %flags25 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.1, i64 0, i32 2, !dbg !1668
  store i16 64, i16* %flags25, align 2, !dbg !1669
  %11 = load i8, i8* %parsing_args, align 1, !dbg !1670
  %cmp = icmp eq i8 %11, 2, !dbg !1671
  br i1 %cmp, label %if.then28, label %if.end33, !dbg !1672

if.then28:                                        ; preds = %if.end24
  store i16 65, i16* %flags25, align 2, !dbg !1673
  br label %if.end33, !dbg !1674

if.end33:                                         ; preds = %fresh_line, %if.end24, %if.then28
  %result.2 = phi %struct.cpp_token* [ %result.0, %fresh_line ], [ %result.1, %if.then28 ], [ %result.1, %if.end24 ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2, metadata !1564, metadata !DIExpression()), !dbg !1595
  %12 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !1675
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %12, metadata !1562, metadata !DIExpression()), !dbg !1595
  %src_loc37 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2, i64 0, i32 0, !dbg !1595
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %12, i64 0, i32 0, !dbg !1608
  %notes = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %12, i64 0, i32 5, !dbg !1608
  %cur_note = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %12, i64 0, i32 6, !dbg !1608
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %12, i64 0, i32 1, !dbg !1676
  %13 = bitcast i8** %line_base to i64*, !dbg !1676
  %flags65 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2, i64 0, i32 2, !dbg !1677
  %warned_cplusplus_comments = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %12, i64 0, i32 14, !dbg !1613
  br label %update_tokens_line, !dbg !1678

update_tokens_line:                               ; preds = %if.then253, %if.end33
  call void @llvm.dbg.label(metadata !1593), !dbg !1679
  %14 = load %struct.line_maps*, %struct.line_maps** %line_table35, align 8, !dbg !1680
  %highest_line36 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %14, i64 0, i32 8, !dbg !1681
  %15 = load i32, i32* %highest_line36, align 4, !dbg !1681
  store i32 %15, i32* %src_loc37, align 8, !dbg !1682
  br label %skipped_white, !dbg !1683

skipped_white:                                    ; preds = %sw.bb, %update_tokens_line
  call void @llvm.dbg.label(metadata !1594), !dbg !1684
  %16 = load i8*, i8** %cur, align 8, !dbg !1685
  %17 = load %struct._cpp_line_note*, %struct._cpp_line_note** %notes, align 8, !dbg !1686
  %18 = load i32, i32* %cur_note, align 8, !dbg !1687
  %idxprom = zext i32 %18 to i64, !dbg !1688
  %pos = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %17, i64 %idxprom, i32 0, !dbg !1689
  %19 = load i8*, i8** %pos, align 8, !dbg !1689
  %cmp38 = icmp ult i8* %16, %19, !dbg !1690
  br i1 %cmp38, label %if.end45, label %land.lhs.true, !dbg !1691

land.lhs.true:                                    ; preds = %skipped_white
  %20 = load %struct.cpp_buffer*, %struct.cpp_buffer** %overlaid_buffer, align 8, !dbg !1692
  %tobool40 = icmp eq %struct.cpp_buffer* %20, null, !dbg !1693
  br i1 %tobool40, label %if.then41, label %if.end45, !dbg !1694

if.then41:                                        ; preds = %land.lhs.true
  tail call void @_cpp_process_line_notes(%struct.cpp_reader* %pfile, i32 0) #9, !dbg !1695
  %21 = load %struct.line_maps*, %struct.line_maps** %line_table35, align 8, !dbg !1697
  %highest_line43 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %21, i64 0, i32 8, !dbg !1698
  %22 = load i32, i32* %highest_line43, align 4, !dbg !1698
  store i32 %22, i32* %src_loc37, align 8, !dbg !1699
  %.pre = load i8*, i8** %cur, align 8, !dbg !1700
  br label %if.end45, !dbg !1701

if.end45:                                         ; preds = %land.lhs.true, %skipped_white, %if.then41
  %23 = phi i8* [ %16, %land.lhs.true ], [ %16, %skipped_white ], [ %.pre, %if.then41 ], !dbg !1700
  %incdec.ptr47 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !1700
  store i8* %incdec.ptr47, i8** %cur, align 8, !dbg !1700
  %24 = load i8, i8* %23, align 1, !dbg !1702
  %conv48 = zext i8 %24 to i32, !dbg !1702
  call void @llvm.dbg.value(metadata i32 %conv48, metadata !1560, metadata !DIExpression()), !dbg !1595
  %.cast = ptrtoint i8* %incdec.ptr47 to i64, !dbg !1703
  %25 = load i64, i64* %13, align 8, !dbg !1703
  %sub.ptr.sub = sub i64 %.cast, %25, !dbg !1703
  %conv50 = trunc i64 %sub.ptr.sub to i32, !dbg !1703
  call void @llvm.dbg.value(metadata i32 %conv50, metadata !1565, metadata !DIExpression()), !dbg !1676
  %26 = load %struct.line_maps*, %struct.line_maps** %line_table35, align 8, !dbg !1703
  call void @llvm.dbg.value(metadata %struct.line_maps* %26, metadata !1567, metadata !DIExpression()), !dbg !1676
  %max_column_hint = getelementptr inbounds %struct.line_maps, %struct.line_maps* %26, i64 0, i32 9, !dbg !1704
  %27 = load i32, i32* %max_column_hint, align 8, !dbg !1704
  %cmp52 = icmp ugt i32 %27, %conv50, !dbg !1704
  br i1 %cmp52, label %if.else, label %if.then54, !dbg !1703

if.then54:                                        ; preds = %if.end45
  %call55 = tail call i32 @linemap_position_for_column(%struct.line_maps* %26, i32 %conv50) #8, !dbg !1704
  br label %do.end, !dbg !1704

if.else:                                          ; preds = %if.end45
  %highest_line57 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %26, i64 0, i32 8, !dbg !1705
  %28 = load i32, i32* %highest_line57, align 4, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %28, metadata !1568, metadata !DIExpression()), !dbg !1706
  %add = add i32 %28, %conv50, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %add, metadata !1568, metadata !DIExpression()), !dbg !1706
  %highest_location = getelementptr inbounds %struct.line_maps, %struct.line_maps* %26, i64 0, i32 7, !dbg !1707
  %29 = load i32, i32* %highest_location, align 8, !dbg !1707
  %cmp58 = icmp ult i32 %add, %29, !dbg !1707
  br i1 %cmp58, label %if.end62, label %if.then60, !dbg !1705

if.then60:                                        ; preds = %if.else
  store i32 %add, i32* %highest_location, align 8, !dbg !1707
  br label %if.end62, !dbg !1707

if.end62:                                         ; preds = %if.else, %if.then60
  br label %do.end

do.end:                                           ; preds = %if.end62, %if.then54
  %storemerge = phi i32 [ %call55, %if.then54 ], [ %add, %if.end62 ], !dbg !1709
  store i32 %storemerge, i32* %src_loc37, align 8, !dbg !1709
  switch i8 %24, label %sw.default.loopexit [
    i8 32, label %sw.bb
    i8 9, label %sw.bb
    i8 12, label %sw.bb
    i8 11, label %sw.bb
    i8 0, label %sw.bb
    i8 10, label %sw.bb69
    i8 48, label %sw.bb89
    i8 49, label %sw.bb89
    i8 50, label %sw.bb89
    i8 51, label %sw.bb89
    i8 52, label %sw.bb89
    i8 53, label %sw.bb89
    i8 54, label %sw.bb89
    i8 55, label %sw.bb89
    i8 56, label %sw.bb89
    i8 57, label %sw.bb89
    i8 76, label %sw.bb91
    i8 117, label %sw.bb91
    i8 85, label %sw.bb91
    i8 82, label %sw.bb91
    i8 95, label %sw.bb159.loopexit
    i8 97, label %sw.bb159.loopexit
    i8 98, label %sw.bb159.loopexit
    i8 99, label %sw.bb159.loopexit
    i8 100, label %sw.bb159.loopexit
    i8 101, label %sw.bb159.loopexit
    i8 102, label %sw.bb159.loopexit
    i8 103, label %sw.bb159.loopexit
    i8 104, label %sw.bb159.loopexit
    i8 105, label %sw.bb159.loopexit
    i8 106, label %sw.bb159.loopexit
    i8 107, label %sw.bb159.loopexit
    i8 108, label %sw.bb159.loopexit
    i8 109, label %sw.bb159.loopexit
    i8 110, label %sw.bb159.loopexit
    i8 111, label %sw.bb159.loopexit
    i8 112, label %sw.bb159.loopexit
    i8 113, label %sw.bb159.loopexit
    i8 114, label %sw.bb159.loopexit
    i8 115, label %sw.bb159.loopexit
    i8 116, label %sw.bb159.loopexit
    i8 118, label %sw.bb159.loopexit
    i8 119, label %sw.bb159.loopexit
    i8 120, label %sw.bb159.loopexit
    i8 121, label %sw.bb159.loopexit
    i8 122, label %sw.bb159.loopexit
    i8 65, label %sw.bb159.loopexit
    i8 66, label %sw.bb159.loopexit
    i8 67, label %sw.bb159.loopexit
    i8 68, label %sw.bb159.loopexit
    i8 69, label %sw.bb159.loopexit
    i8 70, label %sw.bb159.loopexit
    i8 71, label %sw.bb159.loopexit
    i8 72, label %sw.bb159.loopexit
    i8 73, label %sw.bb159.loopexit
    i8 74, label %sw.bb159.loopexit
    i8 75, label %sw.bb159.loopexit
    i8 77, label %sw.bb159.loopexit
    i8 78, label %sw.bb159.loopexit
    i8 79, label %sw.bb159.loopexit
    i8 80, label %sw.bb159.loopexit
    i8 81, label %sw.bb159.loopexit
    i8 83, label %sw.bb159.loopexit
    i8 84, label %sw.bb159.loopexit
    i8 86, label %sw.bb159.loopexit
    i8 87, label %sw.bb159.loopexit
    i8 88, label %sw.bb159.loopexit
    i8 89, label %sw.bb159.loopexit
    i8 90, label %sw.bb159.loopexit
    i8 39, label %sw.bb187
    i8 34, label %sw.bb187
    i8 47, label %sw.bb190
    i8 60, label %sw.bb259
    i8 62, label %sw.bb337
    i8 37, label %sw.bb370
    i8 46, label %sw.bb430
    i8 43, label %sw.bb476
    i8 45, label %sw.bb497
    i8 38, label %sw.bb542
    i8 124, label %sw.bb563
    i8 58, label %sw.bb584
    i8 42, label %do.body620
    i8 61, label %do.body634
    i8 33, label %do.body648
    i8 94, label %do.body662
    i8 35, label %do.body676
    i8 63, label %sw.bb691
    i8 126, label %sw.bb693
    i8 44, label %sw.bb695
    i8 40, label %sw.bb697
    i8 41, label %sw.bb699
    i8 91, label %sw.bb701
    i8 93, label %sw.bb703
    i8 123, label %sw.bb705
    i8 125, label %sw.bb707
    i8 59, label %sw.bb709
    i8 64, label %sw.bb711
    i8 36, label %sw.bb713
    i8 92, label %sw.bb713
  ], !dbg !1710

sw.bb:                                            ; preds = %do.end, %do.end, %do.end, %do.end, %do.end
  %30 = load i16, i16* %flags65, align 2, !dbg !1711
  %31 = or i16 %30, 1, !dbg !1711
  store i16 %31, i16* %flags65, align 2, !dbg !1711
  tail call fastcc void @skip_whitespace(%struct.cpp_reader* %pfile, i32 %conv48) #9, !dbg !1712
  br label %skipped_white, !dbg !1713

sw.bb69:                                          ; preds = %do.end
  %32 = load i8*, i8** %cur, align 8, !dbg !1714
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %12, i64 0, i32 4, !dbg !1715
  %33 = load i8*, i8** %rlimit, align 8, !dbg !1715
  %cmp71 = icmp ult i8* %32, %33, !dbg !1716
  br i1 %cmp71, label %do.body74, label %if.end87, !dbg !1717

do.body74:                                        ; preds = %sw.bb69
  %34 = load %struct.line_maps*, %struct.line_maps** %line_table35, align 8, !dbg !1718
  call void @llvm.dbg.value(metadata %struct.line_maps* %34, metadata !1571, metadata !DIExpression()), !dbg !1719
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %34, i64 0, i32 0, !dbg !1718
  %35 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !1718
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %34, i64 0, i32 2, !dbg !1718
  %36 = load i32, i32* %used, align 4, !dbg !1718
  %sub = add i32 %36, -1, !dbg !1718
  %idxprom77 = zext i32 %sub to i64, !dbg !1718
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !1575, metadata !DIExpression()), !dbg !1719
  %highest_line79 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %34, i64 0, i32 8, !dbg !1718
  %37 = load i32, i32* %highest_line79, align 4, !dbg !1718
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %35, i64 %idxprom77, i32 2, !dbg !1718
  %38 = load i32, i32* %start_location, align 4, !dbg !1718
  %sub80 = sub i32 %37, %38, !dbg !1718
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %35, i64 %idxprom77, i32 6, !dbg !1718
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !1718
  %bf.cast = zext i8 %bf.load to i32, !dbg !1718
  %shr = lshr i32 %sub80, %bf.cast, !dbg !1718
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %35, i64 %idxprom77, i32 1, !dbg !1718
  %39 = load i32, i32* %to_line, align 8, !dbg !1718
  %add81 = add i32 %shr, %39, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %add81, metadata !1576, metadata !DIExpression()), !dbg !1719
  %add83 = add i32 %add81, 1, !dbg !1718
  %call84 = tail call i32 @linemap_line_start(%struct.line_maps* %34, i32 %add83, i32 0) #8, !dbg !1718
  br label %if.end87, !dbg !1718

if.end87:                                         ; preds = %do.body74, %sw.bb69
  %need_line88 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %12, i64 0, i32 13, !dbg !1720
  store i8 1, i8* %need_line88, align 8, !dbg !1721
  br label %fresh_line, !dbg !1722

sw.bb89:                                          ; preds = %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end
  %result.2.lcssa563 = phi %struct.cpp_token* [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa563, metadata !1564, metadata !DIExpression()), !dbg !1595
  %40 = bitcast %struct.normalize_state* %nst to i8*, !dbg !1723
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %40) #12, !dbg !1723
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %40, i8 0, i64 12, i1 false), !dbg !1724
  %type90 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa563, i64 0, i32 1, !dbg !1725
  store i8 55, i8* %type90, align 4, !dbg !1726
  %str = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa563, i64 0, i32 3, i32 0, !dbg !1727
  call void @llvm.dbg.value(metadata %struct.normalize_state* %nst, metadata !1577, metadata !DIExpression(DW_OP_deref)), !dbg !1728
  call fastcc void @lex_number(%struct.cpp_reader* %pfile, %struct.cpp_string* nonnull %str, %struct.normalize_state* nonnull %nst) #9, !dbg !1729
  call void @llvm.dbg.value(metadata %struct.normalize_state* %nst, metadata !1577, metadata !DIExpression(DW_OP_deref)), !dbg !1728
  call fastcc void @warn_about_normalization(%struct.cpp_reader* %pfile, %struct.cpp_token* %result.2.lcssa563, %struct.normalize_state* nonnull %nst) #9, !dbg !1730
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %40) #12, !dbg !1731
  br label %cleanup732

sw.bb91:                                          ; preds = %do.end, %do.end, %do.end, %do.end
  %result.2.lcssa564 = phi %struct.cpp_token* [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa527 = phi i8** [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], !dbg !1608
  %flags65.lcssa492 = phi i16* [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], !dbg !1677
  %.lcssa382 = phi i8 [ %24, %do.end ], [ %24, %do.end ], [ %24, %do.end ], [ %24, %do.end ], !dbg !1702
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa564, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa564, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa564, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa564, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa564, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa564, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa564, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa564, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa564, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa564, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa564, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa564, metadata !1564, metadata !DIExpression()), !dbg !1595
  %cmp92 = icmp eq i8 %.lcssa382, 76, !dbg !1732
  br i1 %cmp92, label %if.then96, label %lor.lhs.false, !dbg !1734

lor.lhs.false:                                    ; preds = %sw.bb91
  %uliterals = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 10, !dbg !1735
  %41 = load i8, i8* %uliterals, align 8, !dbg !1735
  %tobool95 = icmp eq i8 %41, 0, !dbg !1735
  br i1 %tobool95, label %sw.bb159, label %if.then96, !dbg !1736

if.then96:                                        ; preds = %lor.lhs.false, %sw.bb91
  %42 = load i8*, i8** %cur.lcssa527, align 8, !dbg !1737
  %43 = load i8, i8* %42, align 1, !dbg !1740
  %cmp99 = icmp eq i8 %43, 39, !dbg !1741
  %cmp102 = icmp ne i8 %.lcssa382, 82, !dbg !1742
  %or.cond = and i1 %cmp99, %cmp102, !dbg !1743
  br i1 %or.cond, label %if.then154, label %lor.lhs.false104, !dbg !1743

lor.lhs.false104:                                 ; preds = %if.then96
  %cmp107 = icmp eq i8 %43, 34, !dbg !1744
  br i1 %cmp107, label %if.then154, label %lor.lhs.false109, !dbg !1745

lor.lhs.false109:                                 ; preds = %lor.lhs.false104
  %cmp112 = icmp eq i8 %43, 82, !dbg !1746
  %or.cond1 = and i1 %cmp112, %cmp102, !dbg !1747
  br i1 %or.cond1, label %land.lhs.true117, label %lor.lhs.false128, !dbg !1747

land.lhs.true117:                                 ; preds = %lor.lhs.false109
  %arrayidx119 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1748
  %44 = load i8, i8* %arrayidx119, align 1, !dbg !1748
  %cmp121 = icmp eq i8 %44, 34, !dbg !1749
  br i1 %cmp121, label %land.lhs.true123, label %lor.lhs.false128, !dbg !1750

land.lhs.true123:                                 ; preds = %land.lhs.true117
  %uliterals125 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 10, !dbg !1751
  %45 = load i8, i8* %uliterals125, align 8, !dbg !1751
  %tobool127 = icmp eq i8 %45, 0, !dbg !1751
  br i1 %tobool127, label %lor.lhs.false128, label %if.then154, !dbg !1752

lor.lhs.false128:                                 ; preds = %land.lhs.true123, %land.lhs.true117, %lor.lhs.false109
  %cmp131 = icmp eq i8 %43, 56, !dbg !1753
  %cmp134 = icmp eq i8 %.lcssa382, 117, !dbg !1754
  %or.cond2 = and i1 %cmp131, %cmp134, !dbg !1755
  br i1 %or.cond2, label %land.lhs.true136, label %sw.bb159, !dbg !1755

land.lhs.true136:                                 ; preds = %lor.lhs.false128
  %arrayidx138 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1756
  %46 = load i8, i8* %arrayidx138, align 1, !dbg !1756
  %cmp140 = icmp eq i8 %46, 34, !dbg !1757
  br i1 %cmp140, label %if.then154, label %lor.lhs.false142, !dbg !1758

lor.lhs.false142:                                 ; preds = %land.lhs.true136
  %cmp146 = icmp eq i8 %46, 82, !dbg !1759
  br i1 %cmp146, label %land.lhs.true148, label %sw.bb159, !dbg !1760

land.lhs.true148:                                 ; preds = %lor.lhs.false142
  %arrayidx150 = getelementptr inbounds i8, i8* %42, i64 2, !dbg !1761
  %47 = load i8, i8* %arrayidx150, align 1, !dbg !1761
  %cmp152 = icmp eq i8 %47, 34, !dbg !1762
  br i1 %cmp152, label %if.then154, label %sw.bb159, !dbg !1763

if.then154:                                       ; preds = %land.lhs.true123, %if.then96, %land.lhs.true148, %land.lhs.true136, %lor.lhs.false104
  %add.ptr156 = getelementptr inbounds i8, i8* %42, i64 -1, !dbg !1764
  tail call fastcc void @lex_string(%struct.cpp_reader* %pfile, %struct.cpp_token* %result.2.lcssa564, i8* nonnull %add.ptr156) #9, !dbg !1766
  br label %cleanup732, !dbg !1767

sw.bb159.loopexit:                                ; preds = %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end, %do.end
  %result.2.lcssa565 = phi %struct.cpp_token* [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa528 = phi i8** [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], [ %cur, %do.end ], !dbg !1608
  %flags65.lcssa493 = phi i16* [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], [ %flags65, %do.end ], !dbg !1677
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa565, metadata !1564, metadata !DIExpression()), !dbg !1595
  br label %sw.bb159, !dbg !1768

sw.bb159:                                         ; preds = %sw.bb159.loopexit, %lor.lhs.false, %land.lhs.true148, %lor.lhs.false142, %lor.lhs.false128
  %result.2598 = phi %struct.cpp_token* [ %result.2.lcssa565, %sw.bb159.loopexit ], [ %result.2.lcssa564, %lor.lhs.false ], [ %result.2.lcssa564, %land.lhs.true148 ], [ %result.2.lcssa564, %lor.lhs.false142 ], [ %result.2.lcssa564, %lor.lhs.false128 ]
  %cur560 = phi i8** [ %cur.lcssa528, %sw.bb159.loopexit ], [ %cur.lcssa527, %lor.lhs.false ], [ %cur.lcssa527, %land.lhs.true148 ], [ %cur.lcssa527, %lor.lhs.false142 ], [ %cur.lcssa527, %lor.lhs.false128 ]
  %flags65525 = phi i16* [ %flags65.lcssa493, %sw.bb159.loopexit ], [ %flags65.lcssa492, %lor.lhs.false ], [ %flags65.lcssa492, %land.lhs.true148 ], [ %flags65.lcssa492, %lor.lhs.false142 ], [ %flags65.lcssa492, %lor.lhs.false128 ]
  %type160 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2598, i64 0, i32 1, !dbg !1768
  store i8 53, i8* %type160, align 4, !dbg !1769
  %48 = bitcast %struct.normalize_state* %nst161 to i8*, !dbg !1770
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %48) #12, !dbg !1770
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %48, i8 0, i64 12, i1 false), !dbg !1771
  %49 = load i8*, i8** %cur560, align 8, !dbg !1772
  %add.ptr163 = getelementptr inbounds i8, i8* %49, i64 -1, !dbg !1773
  call void @llvm.dbg.value(metadata %struct.normalize_state* %nst161, metadata !1584, metadata !DIExpression(DW_OP_deref)), !dbg !1774
  %call164 = call fastcc %struct.cpp_hashnode* @lex_identifier(%struct.cpp_reader* %pfile, i8* nonnull %add.ptr163, i8 zeroext 0, %struct.normalize_state* nonnull %nst161) #9, !dbg !1775
  %val165 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2598, i64 0, i32 3, !dbg !1776
  %node166 = bitcast %union.cpp_token_u* %val165 to %struct.cpp_hashnode**, !dbg !1777
  store %struct.cpp_hashnode* %call164, %struct.cpp_hashnode** %node166, align 8, !dbg !1778
  call void @llvm.dbg.value(metadata %struct.normalize_state* %nst161, metadata !1584, metadata !DIExpression(DW_OP_deref)), !dbg !1774
  call fastcc void @warn_about_normalization(%struct.cpp_reader* %pfile, %struct.cpp_token* %result.2598, %struct.normalize_state* nonnull %nst161) #9, !dbg !1779
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %48) #12, !dbg !1780
  %50 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node166, align 8, !dbg !1781
  %flags170 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %50, i64 0, i32 3, !dbg !1783
  %bf.load171 = load i16, i16* %flags170, align 2, !dbg !1783
  %51 = and i16 %bf.load171, 64, !dbg !1784
  %tobool173 = icmp eq i16 %51, 0, !dbg !1784
  br i1 %tobool173, label %cleanup732, label %if.then174, !dbg !1785

if.then174:                                       ; preds = %sw.bb159
  %52 = load i16, i16* %flags65525, align 2, !dbg !1786
  %53 = or i16 %52, 16, !dbg !1786
  store i16 %53, i16* %flags65525, align 2, !dbg !1786
  %directive_index = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %50, i64 0, i32 1, !dbg !1788
  %bf.load182 = load i8, i8* %directive_index, align 8, !dbg !1788
  %bf.lshr183 = lshr i8 %bf.load182, 1, !dbg !1788
  store i8 %bf.lshr183, i8* %type160, align 4, !dbg !1789
  br label %cleanup732, !dbg !1790

sw.bb187:                                         ; preds = %do.end, %do.end
  %result.2.lcssa566 = phi %struct.cpp_token* [ %result.2, %do.end ], [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa529 = phi i8** [ %cur, %do.end ], [ %cur, %do.end ], !dbg !1608
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa566, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa566, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa566, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa566, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa566, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa566, metadata !1564, metadata !DIExpression()), !dbg !1595
  %54 = load i8*, i8** %cur.lcssa529, align 8, !dbg !1791
  %add.ptr189 = getelementptr inbounds i8, i8* %54, i64 -1, !dbg !1792
  tail call fastcc void @lex_string(%struct.cpp_reader* %pfile, %struct.cpp_token* %result.2.lcssa566, i8* nonnull %add.ptr189) #9, !dbg !1793
  br label %cleanup732, !dbg !1794

sw.bb190:                                         ; preds = %do.end
  %55 = load i8*, i8** %cur, align 8, !dbg !1795
  call void @llvm.dbg.value(metadata i8* %55, metadata !1563, metadata !DIExpression()), !dbg !1595
  %56 = load i8, i8* %55, align 1, !dbg !1796
  switch i8 %56, label %if.else247.loopexit [
    i8 42, label %if.then196
    i8 47, label %land.lhs.true205
    i8 61, label %if.then243.loopexit
  ], !dbg !1797

if.then196:                                       ; preds = %sw.bb190
  %call197 = tail call zeroext i8 @_cpp_skip_block_comment(%struct.cpp_reader* %pfile) #9, !dbg !1798
  %tobool198 = icmp eq i8 %call197, 0, !dbg !1798
  br i1 %tobool198, label %if.end250, label %if.then199, !dbg !1801

if.then199:                                       ; preds = %if.then196
  %call200 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1802
  br label %if.end250, !dbg !1802

land.lhs.true205:                                 ; preds = %sw.bb190
  %57 = load i8, i8* %cplusplus_comments, align 1, !dbg !1803
  %tobool208 = icmp eq i8 %57, 0, !dbg !1803
  br i1 %tobool208, label %lor.lhs.false209, label %if.then212, !dbg !1804

lor.lhs.false209:                                 ; preds = %land.lhs.true205
  %call210 = tail call fastcc i32 @cpp_in_system_header(%struct.cpp_reader* %pfile) #9, !dbg !1805
  %tobool211 = icmp eq i32 %call210, 0, !dbg !1805
  br i1 %tobool211, label %if.else240, label %if.then212, !dbg !1806

if.then212:                                       ; preds = %lor.lhs.false209, %land.lhs.true205
  %58 = load i32, i32* %lang, align 4, !dbg !1807
  %cmp214 = icmp eq i32 %58, 0, !dbg !1808
  br i1 %cmp214, label %land.lhs.true216, label %if.end230, !dbg !1809

land.lhs.true216:                                 ; preds = %if.then212
  %59 = load i8, i8* %pedantic, align 1, !dbg !1810
  %tobool219 = icmp eq i8 %59, 0, !dbg !1810
  br i1 %tobool219, label %if.end230, label %land.lhs.true220, !dbg !1811

land.lhs.true220:                                 ; preds = %land.lhs.true216
  %bf.load221 = load i8, i8* %warned_cplusplus_comments, align 1, !dbg !1812
  %bf.clear = and i8 %bf.load221, 1, !dbg !1812
  %tobool223 = icmp eq i8 %bf.clear, 0, !dbg !1813
  br i1 %tobool223, label %if.then224, label %if.end230, !dbg !1814

if.then224:                                       ; preds = %land.lhs.true220
  %call225 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1815
  %call226 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1817
  %bf.load228 = load i8, i8* %warned_cplusplus_comments, align 1, !dbg !1818
  %bf.set = or i8 %bf.load228, 1, !dbg !1818
  store i8 %bf.set, i8* %warned_cplusplus_comments, align 1, !dbg !1818
  br label %if.end230, !dbg !1819

if.end230:                                        ; preds = %land.lhs.true220, %land.lhs.true216, %if.then224, %if.then212
  %call231 = tail call fastcc i32 @skip_line_comment(%struct.cpp_reader* %pfile) #9, !dbg !1820
  %tobool232 = icmp eq i32 %call231, 0, !dbg !1820
  br i1 %tobool232, label %if.end250, label %land.lhs.true233, !dbg !1821

land.lhs.true233:                                 ; preds = %if.end230
  %60 = load i8, i8* %warn_comments, align 1, !dbg !1822
  %tobool236 = icmp eq i8 %60, 0, !dbg !1822
  br i1 %tobool236, label %if.end250, label %if.then237, !dbg !1823

if.then237:                                       ; preds = %land.lhs.true233
  %call238 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !1824
  br label %if.end250, !dbg !1824

if.else240:                                       ; preds = %lor.lhs.false209
  %result.2.lcssa595 = phi %struct.cpp_token* [ %result.2, %lor.lhs.false209 ], !dbg !1621
  %cur.lcssa558 = phi i8** [ %cur, %lor.lhs.false209 ], !dbg !1608
  %.lcssa417 = phi i8* [ %55, %lor.lhs.false209 ], !dbg !1795
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa595, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa595, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa595, metadata !1564, metadata !DIExpression()), !dbg !1595
  br i1 false, label %if.else240.if.then243_crit_edge, label %if.else247, !dbg !1825

if.else240.if.then243_crit_edge:                  ; preds = %if.else240
  br label %if.then243, !dbg !1825

if.then243.loopexit:                              ; preds = %sw.bb190
  %result.2.lcssa594 = phi %struct.cpp_token* [ %result.2, %sw.bb190 ], !dbg !1621
  %cur.lcssa557 = phi i8** [ %cur, %sw.bb190 ], !dbg !1608
  %.lcssa416 = phi i8* [ %55, %sw.bb190 ], !dbg !1795
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa594, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa594, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa594, metadata !1564, metadata !DIExpression()), !dbg !1595
  br label %if.then243, !dbg !1826

if.then243:                                       ; preds = %if.else240.if.then243_crit_edge, %if.then243.loopexit
  %result.2600 = phi %struct.cpp_token* [ %result.2.lcssa595, %if.else240.if.then243_crit_edge ], [ %result.2.lcssa594, %if.then243.loopexit ]
  %cur561 = phi i8** [ %cur.lcssa558, %if.else240.if.then243_crit_edge ], [ %cur.lcssa557, %if.then243.loopexit ]
  %61 = phi i8* [ %.lcssa417, %if.else240.if.then243_crit_edge ], [ %.lcssa416, %if.then243.loopexit ]
  %incdec.ptr245 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1829
  store i8* %incdec.ptr245, i8** %cur561, align 8, !dbg !1829
  %type246 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2600, i64 0, i32 1, !dbg !1830
  store i8 30, i8* %type246, align 4, !dbg !1831
  br label %cleanup732, !dbg !1832

if.else247.loopexit:                              ; preds = %sw.bb190
  %result.2.lcssa593 = phi %struct.cpp_token* [ %result.2, %sw.bb190 ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa593, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa593, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa593, metadata !1564, metadata !DIExpression()), !dbg !1595
  br label %if.else247, !dbg !1833

if.else247:                                       ; preds = %if.else247.loopexit, %if.else240
  %result.2599 = phi %struct.cpp_token* [ %result.2.lcssa593, %if.else247.loopexit ], [ %result.2.lcssa595, %if.else240 ]
  %type248 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2599, i64 0, i32 1, !dbg !1833
  store i8 7, i8* %type248, align 4, !dbg !1835
  br label %cleanup732, !dbg !1836

if.end250:                                        ; preds = %if.then196, %land.lhs.true233, %if.end230, %if.then237, %if.then199
  %62 = load i8, i8* %save_comments, align 1, !dbg !1837
  %tobool252 = icmp eq i8 %62, 0, !dbg !1838
  br i1 %tobool252, label %if.then253, label %if.end258, !dbg !1839

if.then253:                                       ; preds = %if.end250
  %63 = load i16, i16* %flags65, align 2, !dbg !1840
  %64 = or i16 %63, 1, !dbg !1840
  store i16 %64, i16* %flags65, align 2, !dbg !1840
  br label %update_tokens_line, !dbg !1842

if.end258:                                        ; preds = %if.end250
  %result.2.lcssa596 = phi %struct.cpp_token* [ %result.2, %if.end250 ], !dbg !1621
  %.lcssa418 = phi i8* [ %55, %if.end250 ], !dbg !1795
  %.lcssa414 = phi i8 [ %56, %if.end250 ], !dbg !1796
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa596, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa596, metadata !1564, metadata !DIExpression()), !dbg !1595
  %conv193.le = zext i8 %.lcssa414 to i32, !dbg !1796
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa596, metadata !1564, metadata !DIExpression()), !dbg !1595
  tail call fastcc void @save_comment(%struct.cpp_reader* %pfile, %struct.cpp_token* %result.2.lcssa596, i8* %.lcssa418, i32 %conv193.le) #9, !dbg !1843
  br label %cleanup732, !dbg !1844

sw.bb259:                                         ; preds = %do.end
  %result.2.lcssa567 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa530 = phi i8** [ %cur, %do.end ], !dbg !1608
  %flags65.lcssa495 = phi i16* [ %flags65, %do.end ], !dbg !1677
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa567, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa567, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa567, metadata !1564, metadata !DIExpression()), !dbg !1595
  %angled_headers = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 3, !dbg !1845
  %65 = load i8, i8* %angled_headers, align 1, !dbg !1845
  %tobool261 = icmp eq i8 %65, 0, !dbg !1847
  br i1 %tobool261, label %if.end272, label %if.then262, !dbg !1848

if.then262:                                       ; preds = %sw.bb259
  %66 = load i8*, i8** %cur.lcssa530, align 8, !dbg !1849
  %add.ptr264 = getelementptr inbounds i8, i8* %66, i64 -1, !dbg !1851
  tail call fastcc void @lex_string(%struct.cpp_reader* %pfile, %struct.cpp_token* %result.2.lcssa567, i8* nonnull %add.ptr264) #9, !dbg !1852
  %type265 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa567, i64 0, i32 1, !dbg !1853
  %bf.load266 = load i8, i8* %type265, align 4, !dbg !1853
  %cmp268 = icmp eq i8 %bf.load266, 3, !dbg !1855
  br i1 %cmp268, label %if.end272, label %cleanup732, !dbg !1856

if.end272:                                        ; preds = %if.then262, %sw.bb259
  %type273 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa567, i64 0, i32 1, !dbg !1857
  store i8 3, i8* %type273, align 4, !dbg !1858
  %67 = load i8*, i8** %cur.lcssa530, align 8, !dbg !1859
  %68 = load i8, i8* %67, align 1, !dbg !1861
  %cmp276 = icmp eq i8 %68, 61, !dbg !1862
  br i1 %cmp276, label %if.then278, label %if.else282, !dbg !1863

if.then278:                                       ; preds = %if.end272
  %incdec.ptr280 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !1864
  store i8* %incdec.ptr280, i8** %cur.lcssa530, align 8, !dbg !1864
  store i8 26, i8* %type273, align 4, !dbg !1865
  br label %cleanup732, !dbg !1866

if.else282:                                       ; preds = %if.end272
  %cmp285 = icmp eq i8 %68, 60, !dbg !1867
  br i1 %cmp285, label %if.then287, label %if.else303, !dbg !1869

if.then287:                                       ; preds = %if.else282
  %incdec.ptr289 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !1870
  store i8* %incdec.ptr289, i8** %cur.lcssa530, align 8, !dbg !1870
  store i8 13, i8* %type273, align 4, !dbg !1872
  %69 = load i8*, i8** %cur.lcssa530, align 8, !dbg !1874
  %70 = load i8, i8* %69, align 1, !dbg !1874
  %cmp294 = icmp eq i8 %70, 61, !dbg !1874
  br i1 %cmp294, label %if.then296, label %cleanup732, !dbg !1872

if.then296:                                       ; preds = %if.then287
  %incdec.ptr298 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1874
  store i8* %incdec.ptr298, i8** %cur.lcssa530, align 8, !dbg !1874
  store i8 36, i8* %type273, align 4, !dbg !1874
  br label %cleanup732, !dbg !1874

if.else303:                                       ; preds = %if.else282
  %digraphs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 8, !dbg !1876
  %71 = load i8, i8* %digraphs, align 2, !dbg !1876
  %tobool305 = icmp eq i8 %71, 0, !dbg !1876
  br i1 %tobool305, label %cleanup732, label %if.then306, !dbg !1878

if.then306:                                       ; preds = %if.else303
  %cmp309 = icmp eq i8 %68, 58, !dbg !1879
  br i1 %cmp309, label %if.then311, label %if.else319, !dbg !1882

if.then311:                                       ; preds = %if.then306
  %incdec.ptr313 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !1883
  store i8* %incdec.ptr313, i8** %cur.lcssa530, align 8, !dbg !1883
  %72 = load i16, i16* %flags65.lcssa495, align 2, !dbg !1885
  %73 = or i16 %72, 2, !dbg !1885
  store i16 %73, i16* %flags65.lcssa495, align 2, !dbg !1885
  store i8 39, i8* %type273, align 4, !dbg !1886
  br label %cleanup732, !dbg !1887

if.else319:                                       ; preds = %if.then306
  %cmp322 = icmp eq i8 %68, 37, !dbg !1888
  br i1 %cmp322, label %if.then324, label %cleanup732, !dbg !1890

if.then324:                                       ; preds = %if.else319
  %incdec.ptr326 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !1891
  store i8* %incdec.ptr326, i8** %cur.lcssa530, align 8, !dbg !1891
  %74 = load i16, i16* %flags65.lcssa495, align 2, !dbg !1893
  %75 = or i16 %74, 2, !dbg !1893
  store i16 %75, i16* %flags65.lcssa495, align 2, !dbg !1893
  store i8 41, i8* %type273, align 4, !dbg !1894
  br label %cleanup732, !dbg !1895

sw.bb337:                                         ; preds = %do.end
  %result.2.lcssa568 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa531 = phi i8** [ %cur, %do.end ], !dbg !1608
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa568, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa568, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa568, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type338 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa568, i64 0, i32 1, !dbg !1896
  store i8 2, i8* %type338, align 4, !dbg !1897
  %76 = load i8*, i8** %cur.lcssa531, align 8, !dbg !1898
  %77 = load i8, i8* %76, align 1, !dbg !1900
  %cmp341 = icmp eq i8 %77, 61, !dbg !1901
  br i1 %cmp341, label %if.then343, label %if.else347, !dbg !1902

if.then343:                                       ; preds = %sw.bb337
  %incdec.ptr345 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !1903
  store i8* %incdec.ptr345, i8** %cur.lcssa531, align 8, !dbg !1903
  store i8 25, i8* %type338, align 4, !dbg !1904
  br label %cleanup732, !dbg !1905

if.else347:                                       ; preds = %sw.bb337
  %cmp350 = icmp eq i8 %77, 62, !dbg !1906
  br i1 %cmp350, label %if.then352, label %cleanup732, !dbg !1908

if.then352:                                       ; preds = %if.else347
  %incdec.ptr354 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !1909
  store i8* %incdec.ptr354, i8** %cur.lcssa531, align 8, !dbg !1909
  store i8 12, i8* %type338, align 4, !dbg !1911
  %78 = load i8*, i8** %cur.lcssa531, align 8, !dbg !1913
  %79 = load i8, i8* %78, align 1, !dbg !1913
  %cmp359 = icmp eq i8 %79, 61, !dbg !1913
  br i1 %cmp359, label %if.then361, label %cleanup732, !dbg !1911

if.then361:                                       ; preds = %if.then352
  %incdec.ptr363 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !1913
  store i8* %incdec.ptr363, i8** %cur.lcssa531, align 8, !dbg !1913
  store i8 35, i8* %type338, align 4, !dbg !1913
  br label %cleanup732, !dbg !1913

sw.bb370:                                         ; preds = %do.end
  %result.2.lcssa569 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa532 = phi i8** [ %cur, %do.end ], !dbg !1608
  %flags65.lcssa497 = phi i16* [ %flags65, %do.end ], !dbg !1677
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa569, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa569, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa569, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type371 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa569, i64 0, i32 1, !dbg !1915
  store i8 8, i8* %type371, align 4, !dbg !1916
  %80 = load i8*, i8** %cur.lcssa532, align 8, !dbg !1917
  %81 = load i8, i8* %80, align 1, !dbg !1919
  %cmp374 = icmp eq i8 %81, 61, !dbg !1920
  br i1 %cmp374, label %if.then376, label %if.else380, !dbg !1921

if.then376:                                       ; preds = %sw.bb370
  %incdec.ptr378 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !1922
  store i8* %incdec.ptr378, i8** %cur.lcssa532, align 8, !dbg !1922
  store i8 31, i8* %type371, align 4, !dbg !1923
  br label %cleanup732, !dbg !1924

if.else380:                                       ; preds = %sw.bb370
  %digraphs382 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 8, !dbg !1925
  %82 = load i8, i8* %digraphs382, align 2, !dbg !1925
  %tobool383 = icmp eq i8 %82, 0, !dbg !1925
  br i1 %tobool383, label %cleanup732, label %if.then384, !dbg !1927

if.then384:                                       ; preds = %if.else380
  %cmp387 = icmp eq i8 %81, 58, !dbg !1928
  br i1 %cmp387, label %if.then389, label %if.else413, !dbg !1931

if.then389:                                       ; preds = %if.then384
  %incdec.ptr391 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !1932
  store i8* %incdec.ptr391, i8** %cur.lcssa532, align 8, !dbg !1932
  %83 = load i16, i16* %flags65.lcssa497, align 2, !dbg !1934
  %84 = or i16 %83, 2, !dbg !1934
  store i16 %84, i16* %flags65.lcssa497, align 2, !dbg !1934
  store i8 37, i8* %type371, align 4, !dbg !1935
  %85 = load i8*, i8** %cur.lcssa532, align 8, !dbg !1936
  %86 = load i8, i8* %85, align 1, !dbg !1938
  %cmp399 = icmp eq i8 %86, 37, !dbg !1939
  br i1 %cmp399, label %land.lhs.true401, label %cleanup732, !dbg !1940

land.lhs.true401:                                 ; preds = %if.then389
  %arrayidx403 = getelementptr inbounds i8, i8* %85, i64 1, !dbg !1941
  %87 = load i8, i8* %arrayidx403, align 1, !dbg !1941
  %cmp405 = icmp eq i8 %87, 58, !dbg !1942
  br i1 %cmp405, label %if.then407, label %cleanup732, !dbg !1943

if.then407:                                       ; preds = %land.lhs.true401
  %add.ptr409 = getelementptr inbounds i8, i8* %85, i64 2, !dbg !1944
  store i8* %add.ptr409, i8** %cur.lcssa532, align 8, !dbg !1944
  store i8 38, i8* %type371, align 4, !dbg !1945
  %token_no = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa569, i64 0, i32 3, i32 0, i32 0, !dbg !1946
  store i32 0, i32* %token_no, align 8, !dbg !1947
  br label %cleanup732, !dbg !1948

if.else413:                                       ; preds = %if.then384
  %cmp416 = icmp eq i8 %81, 62, !dbg !1949
  br i1 %cmp416, label %if.then418, label %cleanup732, !dbg !1951

if.then418:                                       ; preds = %if.else413
  %incdec.ptr420 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !1952
  store i8* %incdec.ptr420, i8** %cur.lcssa532, align 8, !dbg !1952
  %88 = load i16, i16* %flags65.lcssa497, align 2, !dbg !1954
  %89 = or i16 %88, 2, !dbg !1954
  store i16 %89, i16* %flags65.lcssa497, align 2, !dbg !1954
  store i8 42, i8* %type371, align 4, !dbg !1955
  br label %cleanup732, !dbg !1956

sw.bb430:                                         ; preds = %do.end
  %result.2.lcssa570 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa533 = phi i8** [ %cur, %do.end ], !dbg !1608
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa570, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa570, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa570, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type431 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa570, i64 0, i32 1, !dbg !1957
  store i8 48, i8* %type431, align 4, !dbg !1958
  %90 = load i8*, i8** %cur.lcssa533, align 8, !dbg !1959
  %91 = load i8, i8* %90, align 1, !dbg !1959
  %idxprom435 = zext i8 %91 to i64, !dbg !1959
  %arrayidx436 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom435, !dbg !1959
  %92 = load i16, i16* %arrayidx436, align 2, !dbg !1959
  %93 = and i16 %92, 4, !dbg !1959
  %tobool439 = icmp eq i16 %93, 0, !dbg !1959
  br i1 %tobool439, label %if.else445, label %if.then440, !dbg !1960

if.then440:                                       ; preds = %sw.bb430
  %94 = bitcast %struct.normalize_state* %nst441 to i8*, !dbg !1961
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %94) #12, !dbg !1961
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %94, i8 0, i64 12, i1 false), !dbg !1962
  store i8 55, i8* %type431, align 4, !dbg !1963
  %str444 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa570, i64 0, i32 3, i32 0, !dbg !1964
  call void @llvm.dbg.value(metadata %struct.normalize_state* %nst441, metadata !1586, metadata !DIExpression(DW_OP_deref)), !dbg !1965
  call fastcc void @lex_number(%struct.cpp_reader* %pfile, %struct.cpp_string* nonnull %str444, %struct.normalize_state* nonnull %nst441) #9, !dbg !1966
  call void @llvm.dbg.value(metadata %struct.normalize_state* %nst441, metadata !1586, metadata !DIExpression(DW_OP_deref)), !dbg !1965
  call fastcc void @warn_about_normalization(%struct.cpp_reader* %pfile, %struct.cpp_token* %result.2.lcssa570, %struct.normalize_state* nonnull %nst441) #9, !dbg !1967
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %94) #12, !dbg !1968
  br label %cleanup732, !dbg !1969

if.else445:                                       ; preds = %sw.bb430
  %cmp448 = icmp eq i8 %91, 46, !dbg !1970
  br i1 %cmp448, label %land.lhs.true450, label %if.else460, !dbg !1972

land.lhs.true450:                                 ; preds = %if.else445
  %arrayidx452 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !1973
  %95 = load i8, i8* %arrayidx452, align 1, !dbg !1973
  %cmp454 = icmp eq i8 %95, 46, !dbg !1974
  br i1 %cmp454, label %if.then456, label %if.else460, !dbg !1975

if.then456:                                       ; preds = %land.lhs.true450
  %add.ptr458 = getelementptr inbounds i8, i8* %90, i64 2, !dbg !1976
  store i8* %add.ptr458, i8** %cur.lcssa533, align 8, !dbg !1976
  store i8 44, i8* %type431, align 4, !dbg !1977
  br label %cleanup732, !dbg !1978

if.else460:                                       ; preds = %land.lhs.true450, %if.else445
  %cmp463 = icmp eq i8 %91, 42, !dbg !1979
  br i1 %cmp463, label %land.lhs.true465, label %cleanup732, !dbg !1981

land.lhs.true465:                                 ; preds = %if.else460
  %cplusplus = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 2, !dbg !1982
  %96 = load i8, i8* %cplusplus, align 8, !dbg !1982
  %tobool468 = icmp eq i8 %96, 0, !dbg !1982
  br i1 %tobool468, label %cleanup732, label %if.then469, !dbg !1983

if.then469:                                       ; preds = %land.lhs.true465
  %incdec.ptr471 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !1984
  store i8* %incdec.ptr471, i8** %cur.lcssa533, align 8, !dbg !1984
  store i8 51, i8* %type431, align 4, !dbg !1985
  br label %cleanup732, !dbg !1986

sw.bb476:                                         ; preds = %do.end
  %result.2.lcssa571 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa534 = phi i8** [ %cur, %do.end ], !dbg !1608
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa571, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa571, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa571, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type477 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa571, i64 0, i32 1, !dbg !1987
  store i8 4, i8* %type477, align 4, !dbg !1988
  %97 = load i8*, i8** %cur.lcssa534, align 8, !dbg !1989
  %98 = load i8, i8* %97, align 1, !dbg !1991
  %cmp480 = icmp eq i8 %98, 43, !dbg !1992
  br i1 %cmp480, label %if.then482, label %if.else486, !dbg !1993

if.then482:                                       ; preds = %sw.bb476
  %incdec.ptr484 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !1994
  store i8* %incdec.ptr484, i8** %cur.lcssa534, align 8, !dbg !1994
  store i8 45, i8* %type477, align 4, !dbg !1995
  br label %cleanup732, !dbg !1996

if.else486:                                       ; preds = %sw.bb476
  %cmp489 = icmp eq i8 %98, 61, !dbg !1997
  br i1 %cmp489, label %if.then491, label %cleanup732, !dbg !1999

if.then491:                                       ; preds = %if.else486
  %incdec.ptr493 = getelementptr inbounds i8, i8* %97, i64 1, !dbg !2000
  store i8* %incdec.ptr493, i8** %cur.lcssa534, align 8, !dbg !2000
  store i8 27, i8* %type477, align 4, !dbg !2001
  br label %cleanup732, !dbg !2002

sw.bb497:                                         ; preds = %do.end
  %result.2.lcssa572 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa535 = phi i8** [ %cur, %do.end ], !dbg !1608
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa572, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa572, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa572, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type498 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa572, i64 0, i32 1, !dbg !2003
  store i8 5, i8* %type498, align 4, !dbg !2004
  %99 = load i8*, i8** %cur.lcssa535, align 8, !dbg !2005
  %100 = load i8, i8* %99, align 1, !dbg !2007
  %cmp501 = icmp eq i8 %100, 62, !dbg !2008
  br i1 %cmp501, label %if.then503, label %if.else521, !dbg !2009

if.then503:                                       ; preds = %sw.bb497
  %incdec.ptr505 = getelementptr inbounds i8, i8* %99, i64 1, !dbg !2010
  store i8* %incdec.ptr505, i8** %cur.lcssa535, align 8, !dbg !2010
  store i8 47, i8* %type498, align 4, !dbg !2012
  %101 = load i8*, i8** %cur.lcssa535, align 8, !dbg !2013
  %102 = load i8, i8* %101, align 1, !dbg !2015
  %cmp509 = icmp eq i8 %102, 42, !dbg !2016
  br i1 %cmp509, label %land.lhs.true511, label %cleanup732, !dbg !2017

land.lhs.true511:                                 ; preds = %if.then503
  %cplusplus513 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 2, !dbg !2018
  %103 = load i8, i8* %cplusplus513, align 8, !dbg !2018
  %tobool515 = icmp eq i8 %103, 0, !dbg !2018
  br i1 %tobool515, label %cleanup732, label %if.then516, !dbg !2019

if.then516:                                       ; preds = %land.lhs.true511
  %incdec.ptr518 = getelementptr inbounds i8, i8* %101, i64 1, !dbg !2020
  store i8* %incdec.ptr518, i8** %cur.lcssa535, align 8, !dbg !2020
  store i8 50, i8* %type498, align 4, !dbg !2021
  br label %cleanup732, !dbg !2022

if.else521:                                       ; preds = %sw.bb497
  %cmp524 = icmp eq i8 %100, 45, !dbg !2023
  br i1 %cmp524, label %if.then526, label %if.else530, !dbg !2025

if.then526:                                       ; preds = %if.else521
  %incdec.ptr528 = getelementptr inbounds i8, i8* %99, i64 1, !dbg !2026
  store i8* %incdec.ptr528, i8** %cur.lcssa535, align 8, !dbg !2026
  store i8 46, i8* %type498, align 4, !dbg !2027
  br label %cleanup732, !dbg !2028

if.else530:                                       ; preds = %if.else521
  %cmp533 = icmp eq i8 %100, 61, !dbg !2029
  br i1 %cmp533, label %if.then535, label %cleanup732, !dbg !2031

if.then535:                                       ; preds = %if.else530
  %incdec.ptr537 = getelementptr inbounds i8, i8* %99, i64 1, !dbg !2032
  store i8* %incdec.ptr537, i8** %cur.lcssa535, align 8, !dbg !2032
  store i8 28, i8* %type498, align 4, !dbg !2033
  br label %cleanup732, !dbg !2034

sw.bb542:                                         ; preds = %do.end
  %result.2.lcssa573 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa536 = phi i8** [ %cur, %do.end ], !dbg !1608
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa573, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa573, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa573, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type543 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa573, i64 0, i32 1, !dbg !2035
  store i8 9, i8* %type543, align 4, !dbg !2036
  %104 = load i8*, i8** %cur.lcssa536, align 8, !dbg !2037
  %105 = load i8, i8* %104, align 1, !dbg !2039
  %cmp546 = icmp eq i8 %105, 38, !dbg !2040
  br i1 %cmp546, label %if.then548, label %if.else552, !dbg !2041

if.then548:                                       ; preds = %sw.bb542
  %incdec.ptr550 = getelementptr inbounds i8, i8* %104, i64 1, !dbg !2042
  store i8* %incdec.ptr550, i8** %cur.lcssa536, align 8, !dbg !2042
  store i8 15, i8* %type543, align 4, !dbg !2043
  br label %cleanup732, !dbg !2044

if.else552:                                       ; preds = %sw.bb542
  %cmp555 = icmp eq i8 %105, 61, !dbg !2045
  br i1 %cmp555, label %if.then557, label %cleanup732, !dbg !2047

if.then557:                                       ; preds = %if.else552
  %incdec.ptr559 = getelementptr inbounds i8, i8* %104, i64 1, !dbg !2048
  store i8* %incdec.ptr559, i8** %cur.lcssa536, align 8, !dbg !2048
  store i8 32, i8* %type543, align 4, !dbg !2049
  br label %cleanup732, !dbg !2050

sw.bb563:                                         ; preds = %do.end
  %result.2.lcssa574 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa537 = phi i8** [ %cur, %do.end ], !dbg !1608
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa574, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa574, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa574, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type564 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa574, i64 0, i32 1, !dbg !2051
  store i8 10, i8* %type564, align 4, !dbg !2052
  %106 = load i8*, i8** %cur.lcssa537, align 8, !dbg !2053
  %107 = load i8, i8* %106, align 1, !dbg !2055
  %cmp567 = icmp eq i8 %107, 124, !dbg !2056
  br i1 %cmp567, label %if.then569, label %if.else573, !dbg !2057

if.then569:                                       ; preds = %sw.bb563
  %incdec.ptr571 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !2058
  store i8* %incdec.ptr571, i8** %cur.lcssa537, align 8, !dbg !2058
  store i8 16, i8* %type564, align 4, !dbg !2059
  br label %cleanup732, !dbg !2060

if.else573:                                       ; preds = %sw.bb563
  %cmp576 = icmp eq i8 %107, 61, !dbg !2061
  br i1 %cmp576, label %if.then578, label %cleanup732, !dbg !2063

if.then578:                                       ; preds = %if.else573
  %incdec.ptr580 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !2064
  store i8* %incdec.ptr580, i8** %cur.lcssa537, align 8, !dbg !2064
  store i8 33, i8* %type564, align 4, !dbg !2065
  br label %cleanup732, !dbg !2066

sw.bb584:                                         ; preds = %do.end
  %result.2.lcssa575 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa538 = phi i8** [ %cur, %do.end ], !dbg !1608
  %flags65.lcssa503 = phi i16* [ %flags65, %do.end ], !dbg !1677
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa575, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa575, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa575, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type585 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa575, i64 0, i32 1, !dbg !2067
  store i8 18, i8* %type585, align 4, !dbg !2068
  %108 = load i8*, i8** %cur.lcssa538, align 8, !dbg !2069
  %109 = load i8, i8* %108, align 1, !dbg !2071
  %cmp588 = icmp eq i8 %109, 58, !dbg !2072
  br i1 %cmp588, label %land.lhs.true590, label %if.else599, !dbg !2073

land.lhs.true590:                                 ; preds = %sw.bb584
  %cplusplus592 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 2, !dbg !2074
  %110 = load i8, i8* %cplusplus592, align 8, !dbg !2074
  %tobool594 = icmp eq i8 %110, 0, !dbg !2074
  br i1 %tobool594, label %if.else599, label %if.then595, !dbg !2075

if.then595:                                       ; preds = %land.lhs.true590
  %incdec.ptr597 = getelementptr inbounds i8, i8* %108, i64 1, !dbg !2076
  store i8* %incdec.ptr597, i8** %cur.lcssa538, align 8, !dbg !2076
  store i8 49, i8* %type585, align 4, !dbg !2077
  br label %cleanup732, !dbg !2078

if.else599:                                       ; preds = %land.lhs.true590, %sw.bb584
  %cmp602 = icmp eq i8 %109, 62, !dbg !2079
  br i1 %cmp602, label %land.lhs.true604, label %cleanup732, !dbg !2081

land.lhs.true604:                                 ; preds = %if.else599
  %digraphs606 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 8, !dbg !2082
  %111 = load i8, i8* %digraphs606, align 2, !dbg !2082
  %tobool608 = icmp eq i8 %111, 0, !dbg !2082
  br i1 %tobool608, label %cleanup732, label %if.then609, !dbg !2083

if.then609:                                       ; preds = %land.lhs.true604
  %incdec.ptr611 = getelementptr inbounds i8, i8* %108, i64 1, !dbg !2084
  store i8* %incdec.ptr611, i8** %cur.lcssa538, align 8, !dbg !2084
  %112 = load i16, i16* %flags65.lcssa503, align 2, !dbg !2086
  %113 = or i16 %112, 2, !dbg !2086
  store i16 %113, i16* %flags65.lcssa503, align 2, !dbg !2086
  store i8 40, i8* %type585, align 4, !dbg !2087
  br label %cleanup732, !dbg !2088

do.body620:                                       ; preds = %do.end
  %result.2.lcssa576 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa539 = phi i8** [ %cur, %do.end ], !dbg !1608
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa576, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa576, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa576, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type621 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa576, i64 0, i32 1, !dbg !2089
  store i8 6, i8* %type621, align 4, !dbg !2089
  %114 = load i8*, i8** %cur.lcssa539, align 8, !dbg !2091
  %115 = load i8, i8* %114, align 1, !dbg !2091
  %cmp624 = icmp eq i8 %115, 61, !dbg !2091
  br i1 %cmp624, label %if.then626, label %cleanup732, !dbg !2089

if.then626:                                       ; preds = %do.body620
  %incdec.ptr628 = getelementptr inbounds i8, i8* %114, i64 1, !dbg !2091
  store i8* %incdec.ptr628, i8** %cur.lcssa539, align 8, !dbg !2091
  store i8 29, i8* %type621, align 4, !dbg !2091
  br label %cleanup732, !dbg !2091

do.body634:                                       ; preds = %do.end
  %result.2.lcssa577 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa540 = phi i8** [ %cur, %do.end ], !dbg !1608
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa577, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa577, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa577, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type635 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa577, i64 0, i32 1, !dbg !2093
  store i8 0, i8* %type635, align 4, !dbg !2093
  %116 = load i8*, i8** %cur.lcssa540, align 8, !dbg !2095
  %117 = load i8, i8* %116, align 1, !dbg !2095
  %cmp638 = icmp eq i8 %117, 61, !dbg !2095
  br i1 %cmp638, label %if.then640, label %cleanup732, !dbg !2093

if.then640:                                       ; preds = %do.body634
  %incdec.ptr642 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !2095
  store i8* %incdec.ptr642, i8** %cur.lcssa540, align 8, !dbg !2095
  store i8 23, i8* %type635, align 4, !dbg !2095
  br label %cleanup732, !dbg !2095

do.body648:                                       ; preds = %do.end
  %result.2.lcssa578 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa541 = phi i8** [ %cur, %do.end ], !dbg !1608
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa578, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa578, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa578, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type649 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa578, i64 0, i32 1, !dbg !2097
  store i8 1, i8* %type649, align 4, !dbg !2097
  %118 = load i8*, i8** %cur.lcssa541, align 8, !dbg !2099
  %119 = load i8, i8* %118, align 1, !dbg !2099
  %cmp652 = icmp eq i8 %119, 61, !dbg !2099
  br i1 %cmp652, label %if.then654, label %cleanup732, !dbg !2097

if.then654:                                       ; preds = %do.body648
  %incdec.ptr656 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !2099
  store i8* %incdec.ptr656, i8** %cur.lcssa541, align 8, !dbg !2099
  store i8 24, i8* %type649, align 4, !dbg !2099
  br label %cleanup732, !dbg !2099

do.body662:                                       ; preds = %do.end
  %result.2.lcssa579 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa542 = phi i8** [ %cur, %do.end ], !dbg !1608
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa579, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa579, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa579, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type663 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa579, i64 0, i32 1, !dbg !2101
  store i8 11, i8* %type663, align 4, !dbg !2101
  %120 = load i8*, i8** %cur.lcssa542, align 8, !dbg !2103
  %121 = load i8, i8* %120, align 1, !dbg !2103
  %cmp666 = icmp eq i8 %121, 61, !dbg !2103
  br i1 %cmp666, label %if.then668, label %cleanup732, !dbg !2101

if.then668:                                       ; preds = %do.body662
  %incdec.ptr670 = getelementptr inbounds i8, i8* %120, i64 1, !dbg !2103
  store i8* %incdec.ptr670, i8** %cur.lcssa542, align 8, !dbg !2103
  store i8 34, i8* %type663, align 4, !dbg !2103
  br label %cleanup732, !dbg !2103

do.body676:                                       ; preds = %do.end
  %result.2.lcssa580 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa543 = phi i8** [ %cur, %do.end ], !dbg !1608
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa580, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa580, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa580, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type677 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa580, i64 0, i32 1, !dbg !2105
  store i8 37, i8* %type677, align 4, !dbg !2105
  %122 = load i8*, i8** %cur.lcssa543, align 8, !dbg !2107
  %123 = load i8, i8* %122, align 1, !dbg !2107
  %cmp680 = icmp eq i8 %123, 35, !dbg !2107
  br i1 %cmp680, label %if.then682, label %do.end688, !dbg !2105

if.then682:                                       ; preds = %do.body676
  %incdec.ptr684 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !2107
  store i8* %incdec.ptr684, i8** %cur.lcssa543, align 8, !dbg !2107
  store i8 38, i8* %type677, align 4, !dbg !2107
  br label %do.end688, !dbg !2107

do.end688:                                        ; preds = %if.then682, %do.body676
  %token_no690 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa580, i64 0, i32 3, i32 0, i32 0, !dbg !2109
  store i32 0, i32* %token_no690, align 8, !dbg !2110
  br label %cleanup732, !dbg !2111

sw.bb691:                                         ; preds = %do.end
  %result.2.lcssa581 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa581, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa581, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa581, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type692 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa581, i64 0, i32 1, !dbg !2112
  store i8 17, i8* %type692, align 4, !dbg !2113
  br label %cleanup732, !dbg !2114

sw.bb693:                                         ; preds = %do.end
  %result.2.lcssa582 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa582, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa582, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa582, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type694 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa582, i64 0, i32 1, !dbg !2115
  store i8 14, i8* %type694, align 4, !dbg !2116
  br label %cleanup732, !dbg !2117

sw.bb695:                                         ; preds = %do.end
  %result.2.lcssa583 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa583, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa583, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa583, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type696 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa583, i64 0, i32 1, !dbg !2118
  store i8 19, i8* %type696, align 4, !dbg !2119
  br label %cleanup732, !dbg !2120

sw.bb697:                                         ; preds = %do.end
  %result.2.lcssa584 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa584, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa584, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa584, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type698 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa584, i64 0, i32 1, !dbg !2121
  store i8 20, i8* %type698, align 4, !dbg !2122
  br label %cleanup732, !dbg !2123

sw.bb699:                                         ; preds = %do.end
  %result.2.lcssa585 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa585, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa585, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa585, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type700 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa585, i64 0, i32 1, !dbg !2124
  store i8 21, i8* %type700, align 4, !dbg !2125
  br label %cleanup732, !dbg !2126

sw.bb701:                                         ; preds = %do.end
  %result.2.lcssa586 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa586, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa586, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa586, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type702 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa586, i64 0, i32 1, !dbg !2127
  store i8 39, i8* %type702, align 4, !dbg !2128
  br label %cleanup732, !dbg !2129

sw.bb703:                                         ; preds = %do.end
  %result.2.lcssa587 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa587, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa587, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa587, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type704 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa587, i64 0, i32 1, !dbg !2130
  store i8 40, i8* %type704, align 4, !dbg !2131
  br label %cleanup732, !dbg !2132

sw.bb705:                                         ; preds = %do.end
  %result.2.lcssa588 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa588, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa588, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa588, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type706 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa588, i64 0, i32 1, !dbg !2133
  store i8 41, i8* %type706, align 4, !dbg !2134
  br label %cleanup732, !dbg !2135

sw.bb707:                                         ; preds = %do.end
  %result.2.lcssa589 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa589, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa589, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa589, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type708 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa589, i64 0, i32 1, !dbg !2136
  store i8 42, i8* %type708, align 4, !dbg !2137
  br label %cleanup732, !dbg !2138

sw.bb709:                                         ; preds = %do.end
  %result.2.lcssa590 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa590, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa590, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa590, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type710 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa590, i64 0, i32 1, !dbg !2139
  store i8 43, i8* %type710, align 4, !dbg !2140
  br label %cleanup732, !dbg !2141

sw.bb711:                                         ; preds = %do.end
  %result.2.lcssa591 = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa591, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa591, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa591, metadata !1564, metadata !DIExpression()), !dbg !1595
  %type712 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa591, i64 0, i32 1, !dbg !2142
  store i8 52, i8* %type712, align 4, !dbg !2143
  br label %cleanup732, !dbg !2144

sw.bb713:                                         ; preds = %do.end, %do.end
  %result.2.lcssa592 = phi %struct.cpp_token* [ %result.2, %do.end ], [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa555 = phi i8** [ %cur, %do.end ], [ %cur, %do.end ], !dbg !1608
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa592, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa592, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa592, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa592, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa592, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa592, metadata !1564, metadata !DIExpression()), !dbg !1595
  %124 = load i8*, i8** %cur.lcssa555, align 8, !dbg !2145
  %incdec.ptr716 = getelementptr inbounds i8, i8* %124, i64 -1, !dbg !2145
  store i8* %incdec.ptr716, i8** %cur.lcssa555, align 8, !dbg !2145
  call void @llvm.dbg.value(metadata i8* %incdec.ptr716, metadata !1589, metadata !DIExpression()), !dbg !2146
  %125 = bitcast %struct.normalize_state* %nst717 to i8*, !dbg !2147
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %125) #12, !dbg !2147
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %125, i8 0, i64 12, i1 false), !dbg !2148
  call void @llvm.dbg.value(metadata %struct.normalize_state* %nst717, metadata !1591, metadata !DIExpression(DW_OP_deref)), !dbg !2146
  %call718 = call fastcc zeroext i8 @forms_identifier_p(%struct.cpp_reader* %pfile, i32 1, %struct.normalize_state* nonnull %nst717) #9, !dbg !2149
  %tobool719 = icmp eq i8 %call718, 0, !dbg !2149
  br i1 %tobool719, label %if.end726, label %if.then720, !dbg !2151

if.then720:                                       ; preds = %sw.bb713
  %type721 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa592, i64 0, i32 1, !dbg !2152
  store i8 53, i8* %type721, align 4, !dbg !2154
  call void @llvm.dbg.value(metadata %struct.normalize_state* %nst717, metadata !1591, metadata !DIExpression(DW_OP_deref)), !dbg !2146
  %call722 = call fastcc %struct.cpp_hashnode* @lex_identifier(%struct.cpp_reader* %pfile, i8* nonnull %incdec.ptr716, i8 zeroext 1, %struct.normalize_state* nonnull %nst717) #9, !dbg !2155
  %val723 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2.lcssa592, i64 0, i32 3, !dbg !2156
  %node725 = bitcast %union.cpp_token_u* %val723 to %struct.cpp_hashnode**, !dbg !2157
  store %struct.cpp_hashnode* %call722, %struct.cpp_hashnode** %node725, align 8, !dbg !2158
  call void @llvm.dbg.value(metadata %struct.normalize_state* %nst717, metadata !1591, metadata !DIExpression(DW_OP_deref)), !dbg !2146
  call fastcc void @warn_about_normalization(%struct.cpp_reader* %pfile, %struct.cpp_token* %result.2.lcssa592, %struct.normalize_state* nonnull %nst717) #9, !dbg !2159
  br label %cleanup, !dbg !2160

if.end726:                                        ; preds = %sw.bb713
  %126 = load i8*, i8** %cur.lcssa555, align 8, !dbg !2161
  %incdec.ptr728 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !2161
  store i8* %incdec.ptr728, i8** %cur.lcssa555, align 8, !dbg !2161
  br label %cleanup, !dbg !2162

cleanup:                                          ; preds = %if.end726, %if.then720
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then720 ], [ true, %if.end726 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %125) #12, !dbg !2162
  br i1 %cleanup.dest.slot.0, label %sw.default, label %cleanup732

sw.default.loopexit:                              ; preds = %do.end
  %result.2.lcssa = phi %struct.cpp_token* [ %result.2, %do.end ], !dbg !1621
  %cur.lcssa = phi i8** [ %cur, %do.end ], !dbg !1608
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa, metadata !1564, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2.lcssa, metadata !1564, metadata !DIExpression()), !dbg !1595
  br label %sw.default, !dbg !2163

sw.default:                                       ; preds = %sw.default.loopexit, %cleanup
  %result.2597 = phi %struct.cpp_token* [ %result.2.lcssa, %sw.default.loopexit ], [ %result.2.lcssa592, %cleanup ]
  %cur562 = phi i8** [ %cur.lcssa, %sw.default.loopexit ], [ %cur.lcssa555, %cleanup ]
  %127 = load i8*, i8** %cur562, align 8, !dbg !2163
  %add.ptr731 = getelementptr inbounds i8, i8* %127, i64 -1, !dbg !2164
  call fastcc void @create_literal(%struct.cpp_reader* %pfile, %struct.cpp_token* %result.2597, i8* nonnull %add.ptr731, i32 1, i32 60) #9, !dbg !2165
  br label %cleanup732, !dbg !2166

cleanup732:                                       ; preds = %if.then3, %if.then12, %sw.bb159, %if.then262, %if.else303, %if.else380, %land.lhs.true465, %land.lhs.true511, %land.lhs.true604, %sw.bb89, %if.then154, %sw.bb187, %if.then243, %if.else247, %if.end258, %do.end688, %sw.bb691, %sw.bb693, %sw.bb695, %sw.bb697, %sw.bb699, %sw.bb701, %sw.bb703, %sw.bb705, %sw.bb707, %sw.bb709, %sw.bb711, %sw.default, %if.then174, %if.then296, %if.then287, %if.then311, %if.then324, %if.else319, %if.then278, %if.else347, %if.then361, %if.then352, %if.then343, %if.else413, %if.then418, %if.then389, %land.lhs.true401, %if.then407, %if.then376, %if.then456, %if.then469, %if.else460, %if.then440, %if.else486, %if.then491, %if.then482, %if.then526, %if.then535, %if.else530, %if.then503, %if.then516, %if.else552, %if.then557, %if.then548, %if.else573, %if.then578, %if.then569, %if.else599, %if.then609, %if.then595, %if.then626, %do.body620, %if.then640, %do.body634, %if.then654, %do.body648, %if.then668, %do.body662, %cleanup, %if.then16, %if.then8
  %retval.0 = phi %struct.cpp_token* [ %result.0.lcssa, %if.then8 ], [ %result.0.lcssa, %if.then3 ], [ %result.0.lcssa455, %if.then16 ], [ %result.0.lcssa455, %if.then12 ], [ %result.2.lcssa592, %cleanup ], [ %result.2.lcssa579, %do.body662 ], [ %result.2.lcssa579, %if.then668 ], [ %result.2.lcssa578, %do.body648 ], [ %result.2.lcssa578, %if.then654 ], [ %result.2.lcssa577, %do.body634 ], [ %result.2.lcssa577, %if.then640 ], [ %result.2.lcssa576, %do.body620 ], [ %result.2.lcssa576, %if.then626 ], [ %result.2.lcssa575, %if.then595 ], [ %result.2.lcssa575, %if.then609 ], [ %result.2.lcssa575, %land.lhs.true604 ], [ %result.2.lcssa575, %if.else599 ], [ %result.2.lcssa574, %if.then569 ], [ %result.2.lcssa574, %if.then578 ], [ %result.2.lcssa574, %if.else573 ], [ %result.2.lcssa573, %if.then548 ], [ %result.2.lcssa573, %if.then557 ], [ %result.2.lcssa573, %if.else552 ], [ %result.2.lcssa572, %if.then516 ], [ %result.2.lcssa572, %land.lhs.true511 ], [ %result.2.lcssa572, %if.then503 ], [ %result.2.lcssa572, %if.else530 ], [ %result.2.lcssa572, %if.then535 ], [ %result.2.lcssa572, %if.then526 ], [ %result.2.lcssa571, %if.then482 ], [ %result.2.lcssa571, %if.then491 ], [ %result.2.lcssa571, %if.else486 ], [ %result.2.lcssa570, %if.then440 ], [ %result.2.lcssa570, %if.else460 ], [ %result.2.lcssa570, %land.lhs.true465 ], [ %result.2.lcssa570, %if.then469 ], [ %result.2.lcssa570, %if.then456 ], [ %result.2.lcssa569, %if.then376 ], [ %result.2.lcssa569, %if.then407 ], [ %result.2.lcssa569, %land.lhs.true401 ], [ %result.2.lcssa569, %if.then389 ], [ %result.2.lcssa569, %if.then418 ], [ %result.2.lcssa569, %if.else413 ], [ %result.2.lcssa569, %if.else380 ], [ %result.2.lcssa568, %if.then343 ], [ %result.2.lcssa568, %if.then352 ], [ %result.2.lcssa568, %if.then361 ], [ %result.2.lcssa568, %if.else347 ], [ %result.2.lcssa567, %if.then278 ], [ %result.2.lcssa567, %if.else303 ], [ %result.2.lcssa567, %if.else319 ], [ %result.2.lcssa567, %if.then324 ], [ %result.2.lcssa567, %if.then311 ], [ %result.2.lcssa567, %if.then287 ], [ %result.2.lcssa567, %if.then296 ], [ %result.2.lcssa567, %if.then262 ], [ %result.2598, %sw.bb159 ], [ %result.2598, %if.then174 ], [ %result.2597, %sw.default ], [ %result.2.lcssa591, %sw.bb711 ], [ %result.2.lcssa590, %sw.bb709 ], [ %result.2.lcssa589, %sw.bb707 ], [ %result.2.lcssa588, %sw.bb705 ], [ %result.2.lcssa587, %sw.bb703 ], [ %result.2.lcssa586, %sw.bb701 ], [ %result.2.lcssa585, %sw.bb699 ], [ %result.2.lcssa584, %sw.bb697 ], [ %result.2.lcssa583, %sw.bb695 ], [ %result.2.lcssa582, %sw.bb693 ], [ %result.2.lcssa581, %sw.bb691 ], [ %result.2.lcssa580, %do.end688 ], [ %result.2.lcssa596, %if.end258 ], [ %result.2599, %if.else247 ], [ %result.2600, %if.then243 ], [ %result.2.lcssa566, %sw.bb187 ], [ %result.2.lcssa564, %if.then154 ], [ %result.2.lcssa563, %sw.bb89 ], !dbg !1595
  ret %struct.cpp_token* %retval.0, !dbg !2167
}

declare dso_local i32 @_cpp_handle_directive(%struct.cpp_reader*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_get_fresh_line(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !2168 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2170, metadata !DIExpression()), !dbg !2176
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !2177
  %0 = load i8, i8* %in_directive, align 8, !dbg !2177
  %tobool = icmp eq i8 %0, 0, !dbg !2179
  br i1 %tobool, label %for.cond.preheader, label %cleanup32, !dbg !2180

for.cond.preheader:                               ; preds = %entry
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2181
  %parsing_args = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 9, !dbg !2182
  br label %for.cond, !dbg !2184

for.cond:                                         ; preds = %for.cond.preheader, %cleanup
  %retval.0 = phi i8 [ %retval.1, %cleanup ], [ undef, %for.cond.preheader ]
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !2185
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %1, metadata !2172, metadata !DIExpression()), !dbg !2181
  %need_line = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %1, i64 0, i32 13, !dbg !2186
  %2 = load i8, i8* %need_line, align 8, !dbg !2186
  %tobool2 = icmp eq i8 %2, 0, !dbg !2188
  br i1 %tobool2, label %cleanup, label %if.end4, !dbg !2189

if.end4:                                          ; preds = %for.cond
  %next_line = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %1, i64 0, i32 2, !dbg !2190
  %3 = load i8*, i8** %next_line, align 8, !dbg !2190
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %1, i64 0, i32 4, !dbg !2192
  %4 = load i8*, i8** %rlimit, align 8, !dbg !2192
  %cmp = icmp ult i8* %3, %4, !dbg !2193
  %5 = ptrtoint i8* %4 to i64, !dbg !2194
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !2194

if.then5:                                         ; preds = %if.end4
  tail call void @_cpp_clean_line(%struct.cpp_reader* %pfile) #9, !dbg !2195
  br label %cleanup, !dbg !2197

if.end6:                                          ; preds = %if.end4
  %6 = load i8, i8* %parsing_args, align 1, !dbg !2198
  %tobool8 = icmp eq i8 %6, 0, !dbg !2199
  br i1 %tobool8, label %if.end10, label %cleanup, !dbg !2200

if.end10:                                         ; preds = %if.end6
  %buf = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %1, i64 0, i32 3, !dbg !2201
  %7 = load i8*, i8** %buf, align 8, !dbg !2201
  %cmp12 = icmp eq i8* %7, %4, !dbg !2203
  br i1 %cmp12, label %if.end21, label %land.lhs.true, !dbg !2204

land.lhs.true:                                    ; preds = %if.end10
  %cmp15 = icmp ugt i8* %3, %4, !dbg !2205
  br i1 %cmp15, label %land.lhs.true16, label %if.end21, !dbg !2206

land.lhs.true16:                                  ; preds = %land.lhs.true
  %from_stage3 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %1, i64 0, i32 14, !dbg !2207
  %bf.load = load i8, i8* %from_stage3, align 1, !dbg !2207
  %bf.clear = and i8 %bf.load, 2, !dbg !2207
  %tobool17 = icmp eq i8 %bf.clear, 0, !dbg !2208
  br i1 %tobool17, label %if.then18, label %if.end21, !dbg !2209

if.then18:                                        ; preds = %land.lhs.true16
  %8 = bitcast i8** %next_line to i64*, !dbg !2210
  store i64 %5, i64* %8, align 8, !dbg !2210
  br label %if.end21, !dbg !2212

if.end21:                                         ; preds = %land.lhs.true16, %if.end10, %if.then18, %land.lhs.true
  %return_at_eof22 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %1, i64 0, i32 14, !dbg !2213
  %bf.load23 = load i8, i8* %return_at_eof22, align 1, !dbg !2213
  %bf.clear25 = and i8 %bf.load23, 4, !dbg !2213
  call void @llvm.dbg.value(metadata i8 %bf.clear25, metadata !2171, metadata !DIExpression()), !dbg !2176
  tail call void @_cpp_pop_buffer(%struct.cpp_reader* %pfile) #8, !dbg !2214
  %9 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !2215
  %cmp28 = icmp eq %struct.cpp_buffer* %9, null, !dbg !2217
  %tobool29 = icmp ne i8 %bf.clear25, 0, !dbg !2218
  %or.cond = or i1 %cmp28, %tobool29, !dbg !2219
  %cmp282 = zext i1 %cmp28 to i32, !dbg !2219
  %bf.clear25.lobit = lshr exact i8 %bf.clear25, 2, !dbg !2219
  %10 = zext i8 %bf.clear25.lobit to i32, !dbg !2219
  %spec.select = or i32 %cmp282, %10, !dbg !2219
  %spec.select1 = select i1 %or.cond, i8 0, i8 %retval.0, !dbg !2219
  br label %cleanup, !dbg !2219

cleanup:                                          ; preds = %if.end6, %for.cond, %if.end21, %if.then5
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then5 ], [ 1, %for.cond ], [ 1, %if.end6 ], [ %spec.select, %if.end21 ]
  %retval.1 = phi i8 [ 1, %if.then5 ], [ 1, %for.cond ], [ 0, %if.end6 ], [ %spec.select1, %if.end21 ]
  %cond = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond, label %for.cond, label %cleanup32.loopexit, !llvm.loop !2220

cleanup32.loopexit:                               ; preds = %cleanup
  %retval.1.lcssa = phi i8 [ %retval.1, %cleanup ]
  br label %cleanup32, !dbg !2222

cleanup32:                                        ; preds = %cleanup32.loopexit, %entry
  %retval.2 = phi i8 [ 0, %entry ], [ %retval.1.lcssa, %cleanup32.loopexit ], !dbg !2176
  ret i8 %retval.2, !dbg !2222
}

declare dso_local void @_cpp_pop_buffer(%struct.cpp_reader*) local_unnamed_addr #2

declare dso_local i32 @linemap_position_for_column(%struct.line_maps*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @skip_whitespace(%struct.cpp_reader* %pfile, i32 %c) unnamed_addr #3 !dbg !2223 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2227, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i32 %c, metadata !2228, metadata !DIExpression()), !dbg !2231
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2232
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !2232
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %0, metadata !2229, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 0, metadata !2230, metadata !DIExpression()), !dbg !2231
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !2233
  %pedantic = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !2233
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !2233
  %1 = bitcast %struct.cpp_buffer* %0 to i64*, !dbg !2233
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 1, !dbg !2233
  %2 = bitcast i8** %line_base to i64*, !dbg !2233
  %cur14 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 0, !dbg !2238
  br label %do.body, !dbg !2239

do.body:                                          ; preds = %if.end13, %entry
  %c.addr.0 = phi i32 [ %c, %entry ], [ %conv15, %if.end13 ]
  %saw_NUL.0 = phi i8 [ 0, %entry ], [ %saw_NUL.2, %if.end13 ], !dbg !2240
  call void @llvm.dbg.value(metadata i8 %saw_NUL.0, metadata !2230, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i32 %c.addr.0, metadata !2228, metadata !DIExpression()), !dbg !2231
  switch i32 %c.addr.0, label %if.else5 [
    i32 32, label %if.end13
    i32 9, label %if.end13
    i32 0, label %if.end12
  ], !dbg !2241

if.else5:                                         ; preds = %do.body
  %3 = load i8, i8* %in_directive, align 8, !dbg !2242
  %tobool = icmp eq i8 %3, 0, !dbg !2243
  br i1 %tobool, label %if.end12, label %land.lhs.true, !dbg !2244

land.lhs.true:                                    ; preds = %if.else5
  %4 = load i8, i8* %pedantic, align 1, !dbg !2245
  %tobool7 = icmp eq i8 %4, 0, !dbg !2245
  br i1 %tobool7, label %if.end12, label %if.then8, !dbg !2246

if.then8:                                         ; preds = %land.lhs.true
  %5 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !2247
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %5, i64 0, i32 8, !dbg !2248
  %6 = load i32, i32* %highest_line, align 4, !dbg !2248
  %7 = load i64, i64* %1, align 8, !dbg !2249
  %8 = load i64, i64* %2, align 8, !dbg !2249
  %sub.ptr.sub = sub i64 %7, %8, !dbg !2249
  %conv9 = trunc i64 %sub.ptr.sub to i32, !dbg !2249
  %cmp10 = icmp eq i32 %c.addr.0, 12, !dbg !2250
  %cond = select i1 %cmp10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), !dbg !2251
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 2, i32 %6, i32 %conv9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* %cond) #8, !dbg !2252
  br label %if.end12, !dbg !2252

if.end12:                                         ; preds = %land.lhs.true, %if.else5, %if.then8, %do.body
  %saw_NUL.1 = phi i8 [ 1, %do.body ], [ %saw_NUL.0, %if.then8 ], [ %saw_NUL.0, %land.lhs.true ], [ %saw_NUL.0, %if.else5 ], !dbg !2231
  call void @llvm.dbg.value(metadata i8 %saw_NUL.1, metadata !2230, metadata !DIExpression()), !dbg !2231
  br label %if.end13

if.end13:                                         ; preds = %do.body, %do.body, %if.end12
  %saw_NUL.2 = phi i8 [ %saw_NUL.1, %if.end12 ], [ %saw_NUL.0, %do.body ], [ %saw_NUL.0, %do.body ], !dbg !2231
  call void @llvm.dbg.value(metadata i8 %saw_NUL.2, metadata !2230, metadata !DIExpression()), !dbg !2231
  %9 = load i8*, i8** %cur14, align 8, !dbg !2253
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i64 1, !dbg !2253
  store i8* %incdec.ptr, i8** %cur14, align 8, !dbg !2253
  %10 = load i8, i8* %9, align 1, !dbg !2254
  %conv15 = zext i8 %10 to i32, !dbg !2254
  call void @llvm.dbg.value(metadata i32 %conv15, metadata !2228, metadata !DIExpression()), !dbg !2231
  %idxprom = zext i8 %10 to i64, !dbg !2255
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2255
  %11 = load i16, i16* %arrayidx, align 2, !dbg !2255
  %12 = and i16 %11, 2048, !dbg !2255
  %tobool18 = icmp eq i16 %12, 0, !dbg !2256
  br i1 %tobool18, label %do.end, label %do.body, !dbg !2256, !llvm.loop !2257

do.end:                                           ; preds = %if.end13
  %saw_NUL.2.lcssa = phi i8 [ %saw_NUL.2, %if.end13 ], !dbg !2231
  %incdec.ptr.lcssa = phi i8* [ %incdec.ptr, %if.end13 ], !dbg !2253
  call void @llvm.dbg.value(metadata i8 %saw_NUL.2.lcssa, metadata !2230, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 %saw_NUL.2.lcssa, metadata !2230, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8 %saw_NUL.2.lcssa, metadata !2230, metadata !DIExpression()), !dbg !2231
  %tobool19 = icmp eq i8 %saw_NUL.2.lcssa, 0, !dbg !2259
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !2261

if.then20:                                        ; preds = %do.end
  %call21 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !2262
  %.pre = load i8*, i8** %cur14, align 8, !dbg !2263
  br label %if.end22, !dbg !2262

if.end22:                                         ; preds = %do.end, %if.then20
  %13 = phi i8* [ %incdec.ptr.lcssa, %do.end ], [ %.pre, %if.then20 ], !dbg !2263
  %incdec.ptr24 = getelementptr inbounds i8, i8* %13, i64 -1, !dbg !2263
  store i8* %incdec.ptr24, i8** %cur14, align 8, !dbg !2263
  ret void, !dbg !2264
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @lex_number(%struct.cpp_reader* %pfile, %struct.cpp_string* %number, %struct.normalize_state* %nst) unnamed_addr #3 !dbg !2265 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2271, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata %struct.cpp_string* %number, metadata !2272, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata %struct.normalize_state* %nst, metadata !2273, metadata !DIExpression()), !dbg !2277
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2278
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !2278
  %cur1 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 0, !dbg !2279
  %1 = load i8*, i8** %cur1, align 8, !dbg !2279
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2275, metadata !DIExpression()), !dbg !2277
  %extended_numbers = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 9, !dbg !2280
  %previous = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 0, !dbg !2282
  %prev_class = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 1, !dbg !2282
  br label %do.body, !dbg !2284

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %2 = phi i8* [ %.pre5, %while.end.do.body_crit_edge ], [ %1, %entry ], !dbg !2285
  call void @llvm.dbg.value(metadata i8* %2, metadata !2274, metadata !DIExpression()), !dbg !2277
  br label %while.cond, !dbg !2286

while.cond:                                       ; preds = %while.body, %do.body
  %cur.0 = phi i8* [ %2, %do.body ], [ %incdec.ptr, %while.body ], !dbg !2280
  call void @llvm.dbg.value(metadata i8* %cur.0, metadata !2274, metadata !DIExpression()), !dbg !2277
  %3 = load i8, i8* %cur.0, align 1, !dbg !2287
  %idxprom = zext i8 %3 to i64, !dbg !2287
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2287
  %4 = load i16, i16* %arrayidx, align 2, !dbg !2287
  %5 = and i16 %4, 516, !dbg !2287
  %tobool = icmp eq i16 %5, 0, !dbg !2287
  br i1 %tobool, label %lor.lhs.false, label %while.body, !dbg !2288

lor.lhs.false:                                    ; preds = %while.cond
  %cmp = icmp eq i8 %3, 46, !dbg !2289
  br i1 %cmp, label %while.body, label %lor.rhs, !dbg !2290

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp9 = icmp eq i8 %3, 43, !dbg !2291
  %cmp13 = icmp eq i8 %3, 45, !dbg !2291
  %or.cond = or i1 %cmp9, %cmp13, !dbg !2291
  br i1 %or.cond, label %land.rhs, label %while.end, !dbg !2291

land.rhs:                                         ; preds = %lor.rhs
  %arrayidx15 = getelementptr inbounds i8, i8* %cur.0, i64 -1, !dbg !2291
  %6 = load i8, i8* %arrayidx15, align 1, !dbg !2291
  %cmp17 = icmp eq i8 %6, 101, !dbg !2291
  br i1 %cmp17, label %while.body, label %lor.lhs.false19, !dbg !2291

lor.lhs.false19:                                  ; preds = %land.rhs
  %cmp22 = icmp eq i8 %6, 69, !dbg !2291
  br i1 %cmp22, label %while.body, label %lor.rhs24, !dbg !2291

lor.rhs24:                                        ; preds = %lor.lhs.false19
  %7 = or i8 %6, 32, !dbg !2291
  %8 = icmp eq i8 %7, 112, !dbg !2291
  br i1 %8, label %land.rhs34, label %while.end, !dbg !2291

land.rhs34:                                       ; preds = %lor.rhs24
  %9 = load i8, i8* %extended_numbers, align 1, !dbg !2291
  %tobool36 = icmp eq i8 %9, 0, !dbg !2291
  br i1 %tobool36, label %while.end, label %while.body, !dbg !2286

while.body:                                       ; preds = %land.rhs34, %while.cond, %land.rhs, %lor.lhs.false19, %lor.lhs.false
  %incdec.ptr = getelementptr inbounds i8, i8* %cur.0, i64 1, !dbg !2292
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2274, metadata !DIExpression()), !dbg !2277
  store i32 0, i32* %previous, align 4, !dbg !2293
  store i8 0, i8* %prev_class, align 4, !dbg !2293
  br label %while.cond, !dbg !2286, !llvm.loop !2294

while.end:                                        ; preds = %lor.rhs24, %lor.rhs, %land.rhs34
  %cur.0.lcssa = phi i8* [ %cur.0, %lor.rhs24 ], [ %cur.0, %lor.rhs ], [ %cur.0, %land.rhs34 ], !dbg !2280
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !2274, metadata !DIExpression()), !dbg !2277
  %10 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !2296
  %cur40 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %10, i64 0, i32 0, !dbg !2297
  store i8* %cur.0.lcssa, i8** %cur40, align 8, !dbg !2298
  %call = tail call fastcc zeroext i8 @forms_identifier_p(%struct.cpp_reader* %pfile, i32 0, %struct.normalize_state* %nst) #9, !dbg !2299
  %tobool41 = icmp eq i8 %call, 0, !dbg !2300
  br i1 %tobool41, label %do.end, label %while.end.do.body_crit_edge, !dbg !2300, !llvm.loop !2301

while.end.do.body_crit_edge:                      ; preds = %while.end
  %.pre = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !2303
  %cur3.phi.trans.insert = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %.pre, i64 0, i32 0, !dbg !2280
  %.pre5 = load i8*, i8** %cur3.phi.trans.insert, align 8, !dbg !2285
  br label %do.body, !dbg !2300

do.end:                                           ; preds = %while.end
  %cur.0.lcssa.lcssa = phi i8* [ %cur.0.lcssa, %while.end ], !dbg !2280
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa.lcssa, metadata !2274, metadata !DIExpression()), !dbg !2277
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !2304
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa.lcssa, metadata !2274, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa.lcssa, metadata !2274, metadata !DIExpression()), !dbg !2277
  %sub.ptr.lhs.cast = ptrtoint i8* %cur.0.lcssa.lcssa to i64, !dbg !2305
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr to i64, !dbg !2305
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2305
  %conv42 = trunc i64 %sub.ptr.sub to i32, !dbg !2306
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %number, i64 0, i32 0, !dbg !2307
  store i32 %conv42, i32* %len, align 8, !dbg !2308
  %add = add i64 %sub.ptr.sub, 1, !dbg !2309
  %conv44 = and i64 %add, 4294967295, !dbg !2310
  %call45 = tail call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %pfile, i64 %conv44) #9, !dbg !2311
  call void @llvm.dbg.value(metadata i8* %call45, metadata !2276, metadata !DIExpression()), !dbg !2277
  %11 = load i32, i32* %len, align 8, !dbg !2312
  %conv47 = zext i32 %11 to i64, !dbg !2313
  %call48 = tail call i8* @memcpy(i8* %call45, i8* nonnull %add.ptr, i64 %conv47) #8, !dbg !2314
  %12 = load i32, i32* %len, align 8, !dbg !2315
  %idxprom50 = zext i32 %12 to i64, !dbg !2316
  %arrayidx51 = getelementptr inbounds i8, i8* %call45, i64 %idxprom50, !dbg !2316
  store i8 0, i8* %arrayidx51, align 1, !dbg !2317
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %number, i64 0, i32 1, !dbg !2318
  store i8* %call45, i8** %text, align 8, !dbg !2319
  ret void, !dbg !2320
}

; Function Attrs: nounwind uwtable
define internal fastcc void @warn_about_normalization(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, %struct.normalize_state* %s) unnamed_addr #3 !dbg !2321 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2327, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !2328, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata %struct.normalize_state* %s, metadata !2329, metadata !DIExpression()), !dbg !2334
  %warn_normalize = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 40, !dbg !2335
  %0 = load i32, i32* %warn_normalize, align 8, !dbg !2335
  %level = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %s, i64 0, i32 2, !dbg !2336
  %1 = load i32, i32* %level, align 4, !dbg !2336
  %cmp = icmp ult i32 %0, %1, !dbg !2337
  br i1 %cmp, label %land.lhs.true, label %if.end12, !dbg !2338

land.lhs.true:                                    ; preds = %entry
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !2339
  %2 = load i8, i8* %skipping, align 2, !dbg !2339
  %tobool = icmp eq i8 %2, 0, !dbg !2340
  br i1 %tobool, label %if.then, label %if.end12, !dbg !2341

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @cpp_token_len(%struct.cpp_token* %token) #9, !dbg !2342
  %conv = zext i32 %call to i64, !dbg !2342
  %call1 = tail call i8* @xmalloc(i64 %conv) #8, !dbg !2342
  call void @llvm.dbg.value(metadata i8* %call1, metadata !2330, metadata !DIExpression()), !dbg !2343
  %call2 = tail call i8* @cpp_spell_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i8* %call1, i8 zeroext 0) #9, !dbg !2344
  %sub.ptr.lhs.cast = ptrtoint i8* %call2 to i64, !dbg !2345
  %sub.ptr.rhs.cast = ptrtoint i8* %call1 to i64, !dbg !2345
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !2333, metadata !DIExpression()), !dbg !2343
  %3 = load i32, i32* %level, align 4, !dbg !2346
  %cmp4 = icmp eq i32 %3, 1, !dbg !2348
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 0, !dbg !2349
  %4 = load i32, i32* %src_loc, align 8, !dbg !2349
  %conv7 = trunc i64 %sub.ptr.sub to i32, !dbg !2349
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !2350

if.then6:                                         ; preds = %if.then
  %call8 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 0, i32 %4, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 %conv7, i8* %call1) #8, !dbg !2351
  br label %if.end12, !dbg !2351

if.else:                                          ; preds = %if.then
  %call11 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 0, i32 %4, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 %conv7, i8* %call1) #8, !dbg !2352
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.then6, %if.else, %entry
  ret void, !dbg !2353
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lex_string(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i8* %base) unnamed_addr #3 !dbg !2354 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2358, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !2359, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %base, metadata !2360, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %base, metadata !2362, metadata !DIExpression()), !dbg !2369
  %incdec.ptr = getelementptr inbounds i8, i8* %base, i64 1, !dbg !2370
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2362, metadata !DIExpression()), !dbg !2369
  %0 = load i8, i8* %base, align 1, !dbg !2371
  call void @llvm.dbg.value(metadata i8 %0, metadata !2363, metadata !DIExpression()), !dbg !2369
  switch i8 %0, label %if.end17 [
    i8 76, label %if.then
    i8 85, label %if.then
    i8 117, label %if.then8
  ], !dbg !2372

if.then:                                          ; preds = %entry, %entry
  %incdec.ptr4 = getelementptr inbounds i8, i8* %base, i64 2, !dbg !2374
  call void @llvm.dbg.value(metadata i8* %incdec.ptr4, metadata !2362, metadata !DIExpression()), !dbg !2369
  %1 = load i8, i8* %incdec.ptr, align 1, !dbg !2375
  call void @llvm.dbg.value(metadata i8 %1, metadata !2363, metadata !DIExpression()), !dbg !2369
  br label %if.end17, !dbg !2376

if.then8:                                         ; preds = %entry
  %incdec.ptr9 = getelementptr inbounds i8, i8* %base, i64 2, !dbg !2377
  call void @llvm.dbg.value(metadata i8* %incdec.ptr9, metadata !2362, metadata !DIExpression()), !dbg !2369
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !2380
  call void @llvm.dbg.value(metadata i8 %2, metadata !2363, metadata !DIExpression()), !dbg !2369
  %cmp11 = icmp eq i8 %2, 56, !dbg !2381
  br i1 %cmp11, label %if.then13, label %if.end17, !dbg !2383

if.then13:                                        ; preds = %if.then8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %base, i64 3, !dbg !2384
  call void @llvm.dbg.value(metadata i8* %incdec.ptr14, metadata !2362, metadata !DIExpression()), !dbg !2369
  %3 = load i8, i8* %incdec.ptr9, align 1, !dbg !2385
  call void @llvm.dbg.value(metadata i8 %3, metadata !2363, metadata !DIExpression()), !dbg !2369
  br label %if.end17, !dbg !2386

if.end17:                                         ; preds = %entry, %if.then13, %if.then8, %if.then
  %cur.2 = phi i8* [ %incdec.ptr4, %if.then ], [ %incdec.ptr, %entry ], [ %incdec.ptr14, %if.then13 ], [ %incdec.ptr9, %if.then8 ], !dbg !2387
  %terminator.2.in = phi i8 [ %1, %if.then ], [ %0, %entry ], [ %3, %if.then13 ], [ %2, %if.then8 ]
  %terminator.2 = zext i8 %terminator.2.in to i32, !dbg !2387
  call void @llvm.dbg.value(metadata i32 %terminator.2, metadata !2363, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %cur.2, metadata !2362, metadata !DIExpression()), !dbg !2369
  switch i8 %terminator.2.in, label %if.end70 [
    i8 82, label %if.then20
    i8 34, label %if.then24
    i8 39, label %if.then49
  ], !dbg !2388

if.then20:                                        ; preds = %if.end17
  tail call fastcc void @lex_raw_string(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i8* %base, i8* %cur.2) #9, !dbg !2389
  br label %cleanup.cont125, !dbg !2392

if.then24:                                        ; preds = %if.end17
  %cmp26 = icmp eq i8 %0, 76, !dbg !2393
  br i1 %cmp26, label %if.end70, label %cond.false, !dbg !2395

cond.false:                                       ; preds = %if.then24
  %cmp29 = icmp eq i8 %0, 85, !dbg !2396
  br i1 %cmp29, label %if.end70, label %cond.false32, !dbg !2397

cond.false32:                                     ; preds = %cond.false
  %cmp34 = icmp eq i8 %0, 117, !dbg !2398
  br i1 %cmp34, label %cond.true36, label %if.end70, !dbg !2399

cond.true36:                                      ; preds = %cond.false32
  %4 = load i8, i8* %incdec.ptr, align 1, !dbg !2400
  %cmp38 = icmp eq i8 %4, 56, !dbg !2401
  %cond = select i1 %cmp38, i32 65, i32 63, !dbg !2400
  br label %if.end70, !dbg !2399

if.then49:                                        ; preds = %if.end17
  %cmp51 = icmp eq i8 %0, 76, !dbg !2402
  br i1 %cmp51, label %if.end70, label %cond.false54, !dbg !2404

cond.false54:                                     ; preds = %if.then49
  %cmp56 = icmp eq i8 %0, 85, !dbg !2405
  br i1 %cmp56, label %if.end70, label %cond.false59, !dbg !2406

cond.false59:                                     ; preds = %cond.false54
  %cmp61 = icmp eq i8 %0, 117, !dbg !2407
  %cond63 = select i1 %cmp61, i32 58, i32 56, !dbg !2408
  br label %if.end70, !dbg !2406

if.end70:                                         ; preds = %cond.false59, %cond.false54, %if.then49, %if.end17, %if.then24, %cond.true36, %cond.false32, %cond.false
  %terminator.4 = phi i32 [ %terminator.2, %cond.false ], [ %terminator.2, %cond.false32 ], [ %terminator.2, %cond.true36 ], [ %terminator.2, %if.then24 ], [ %terminator.2, %cond.false59 ], [ %terminator.2, %cond.false54 ], [ %terminator.2, %if.then49 ], [ 62, %if.end17 ], !dbg !2409
  %type.1 = phi i32 [ 64, %cond.false ], [ 61, %cond.false32 ], [ %cond, %cond.true36 ], [ 62, %if.then24 ], [ %cond63, %cond.false59 ], [ 59, %cond.false54 ], [ 57, %if.then49 ], [ 67, %if.end17 ], !dbg !2410
  call void @llvm.dbg.value(metadata i32 %type.1, metadata !2364, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 %terminator.4, metadata !2363, metadata !DIExpression()), !dbg !2369
  %angled_headers = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 3, !dbg !2411
  %cmp90 = icmp eq i32 %terminator.4, 62, !dbg !2413
  %type93 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 1, !dbg !2418
  br i1 %cmp90, label %if.end70.split.us, label %if.end70.if.end70.split_crit_edge, !dbg !2420

if.end70.if.end70.split_crit_edge:                ; preds = %if.end70
  br label %for.cond, !dbg !2420

if.end70.split.us:                                ; preds = %if.end70
  br label %for.cond.us, !dbg !2420

for.cond.us:                                      ; preds = %cleanup.us, %if.end70.split.us
  %cur.3.us = phi i8* [ %cur.2, %if.end70.split.us ], [ %cur.5.us, %cleanup.us ], !dbg !2369
  %saw_NUL.0.us = phi i8 [ 0, %if.end70.split.us ], [ %saw_NUL.3.us, %cleanup.us ], !dbg !2421
  call void @llvm.dbg.value(metadata i32 %type.1, metadata !2364, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %saw_NUL.0.us, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %cur.3.us, metadata !2362, metadata !DIExpression()), !dbg !2369
  %incdec.ptr71.us = getelementptr inbounds i8, i8* %cur.3.us, i64 1, !dbg !2422
  call void @llvm.dbg.value(metadata i8* %incdec.ptr71.us, metadata !2362, metadata !DIExpression()), !dbg !2369
  %5 = load i8, i8* %cur.3.us, align 1, !dbg !2423
  call void @llvm.dbg.value(metadata i8 %5, metadata !2365, metadata !DIExpression()), !dbg !2424
  %cmp73.us = icmp eq i8 %5, 92, !dbg !2425
  br i1 %cmp73.us, label %land.lhs.true.us, label %if.else81.us, !dbg !2426

land.lhs.true.us:                                 ; preds = %for.cond.us
  %6 = load i8, i8* %angled_headers, align 1, !dbg !2427
  %tobool.us = icmp eq i8 %6, 0, !dbg !2428
  br i1 %tobool.us, label %land.lhs.true75.us, label %if.else81.us, !dbg !2429

land.lhs.true75.us:                               ; preds = %land.lhs.true.us
  %7 = load i8, i8* %incdec.ptr71.us, align 1, !dbg !2430
  %cmp77.us = icmp eq i8 %7, 10, !dbg !2431
  br i1 %cmp77.us, label %if.else81.us, label %if.then79.us, !dbg !2432

if.then79.us:                                     ; preds = %land.lhs.true75.us
  %incdec.ptr80.us = getelementptr inbounds i8, i8* %cur.3.us, i64 2, !dbg !2433
  call void @llvm.dbg.value(metadata i8* %incdec.ptr80.us, metadata !2362, metadata !DIExpression()), !dbg !2369
  br label %cleanup.us, !dbg !2434

if.else81.us:                                     ; preds = %land.lhs.true75.us, %land.lhs.true.us, %for.cond.us
  %cmp82.us = icmp eq i8 %5, 62, !dbg !2435
  br i1 %cmp82.us, label %cleanup.us, label %if.else85.us, !dbg !2436

if.else85.us:                                     ; preds = %if.else81.us
  switch i8 %5, label %cleanup.us [
    i8 10, label %if.then88.us
    i8 0, label %if.then98.us
  ], !dbg !2437

if.then98.us:                                     ; preds = %if.else85.us
  call void @llvm.dbg.value(metadata i8 1, metadata !2361, metadata !DIExpression()), !dbg !2369
  br label %cleanup.us, !dbg !2438

if.then88.us:                                     ; preds = %if.else85.us
  call void @llvm.dbg.value(metadata i8* %cur.3.us, metadata !2362, metadata !DIExpression()), !dbg !2369
  store i8 3, i8* %type93, align 4, !dbg !2440
  br label %cleanup.us, !dbg !2441

cleanup.us:                                       ; preds = %if.then88.us, %if.then98.us, %if.else85.us, %if.else81.us, %if.then79.us
  %cur.5.us = phi i8* [ %cur.3.us, %if.then88.us ], [ %incdec.ptr71.us, %if.else81.us ], [ %incdec.ptr80.us, %if.then79.us ], [ %incdec.ptr71.us, %if.else85.us ], [ %incdec.ptr71.us, %if.then98.us ], !dbg !2424
  %saw_NUL.3.us = phi i8 [ %saw_NUL.0.us, %if.then88.us ], [ %saw_NUL.0.us, %if.else81.us ], [ %saw_NUL.0.us, %if.then79.us ], [ %saw_NUL.0.us, %if.else85.us ], [ 1, %if.then98.us ], !dbg !2369
  %cleanup.dest.slot.0.us = phi i32 [ 1, %if.then88.us ], [ 2, %if.else81.us ], [ 0, %if.then79.us ], [ 0, %if.else85.us ], [ 0, %if.then98.us ]
  call void @llvm.dbg.value(metadata i32 %type.1, metadata !2364, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %saw_NUL.3.us, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %cur.5.us, metadata !2362, metadata !DIExpression()), !dbg !2369
  switch i32 %cleanup.dest.slot.0.us, label %cleanup.cont125.loopexit.us-lcssa.us [
    i32 0, label %for.cond.us
    i32 2, label %for.end.us-lcssa.us
  ], !llvm.loop !2442

cleanup.cont125.loopexit.us-lcssa.us:             ; preds = %cleanup.us
  br label %cleanup.cont125.loopexit, !dbg !2445

for.end.us-lcssa.us:                              ; preds = %cleanup.us
  %cur.5.us.lcssa10 = phi i8* [ %cur.5.us, %cleanup.us ], !dbg !2424
  %saw_NUL.3.us.lcssa9 = phi i8 [ %saw_NUL.3.us, %cleanup.us ], !dbg !2369
  call void @llvm.dbg.value(metadata i8* %cur.5.us.lcssa10, metadata !2362, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %saw_NUL.3.us.lcssa9, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %cur.5.us.lcssa10, metadata !2362, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %saw_NUL.3.us.lcssa9, metadata !2361, metadata !DIExpression()), !dbg !2369
  br label %for.end, !dbg !2446

for.cond:                                         ; preds = %cleanup, %if.end70.if.end70.split_crit_edge
  %cur.3 = phi i8* [ %cur.2, %if.end70.if.end70.split_crit_edge ], [ %cur.5, %cleanup ], !dbg !2369
  %saw_NUL.0 = phi i8 [ 0, %if.end70.if.end70.split_crit_edge ], [ %saw_NUL.3, %cleanup ], !dbg !2421
  %type.2 = phi i32 [ %type.1, %if.end70.if.end70.split_crit_edge ], [ %type.3, %cleanup ], !dbg !2448
  call void @llvm.dbg.value(metadata i32 %type.2, metadata !2364, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %saw_NUL.0, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %cur.3, metadata !2362, metadata !DIExpression()), !dbg !2369
  %incdec.ptr71 = getelementptr inbounds i8, i8* %cur.3, i64 1, !dbg !2422
  call void @llvm.dbg.value(metadata i8* %incdec.ptr71, metadata !2362, metadata !DIExpression()), !dbg !2369
  %8 = load i8, i8* %cur.3, align 1, !dbg !2423
  %conv72 = zext i8 %8 to i32, !dbg !2423
  call void @llvm.dbg.value(metadata i32 %conv72, metadata !2365, metadata !DIExpression()), !dbg !2424
  %cmp73 = icmp eq i8 %8, 92, !dbg !2425
  br i1 %cmp73, label %land.lhs.true, label %if.else81, !dbg !2426

land.lhs.true:                                    ; preds = %for.cond
  %9 = load i8, i8* %angled_headers, align 1, !dbg !2427
  %tobool = icmp eq i8 %9, 0, !dbg !2428
  br i1 %tobool, label %land.lhs.true75, label %if.else81, !dbg !2429

land.lhs.true75:                                  ; preds = %land.lhs.true
  %10 = load i8, i8* %incdec.ptr71, align 1, !dbg !2430
  %cmp77 = icmp eq i8 %10, 10, !dbg !2431
  br i1 %cmp77, label %if.else81, label %if.then79, !dbg !2432

if.then79:                                        ; preds = %land.lhs.true75
  %incdec.ptr80 = getelementptr inbounds i8, i8* %cur.3, i64 2, !dbg !2433
  call void @llvm.dbg.value(metadata i8* %incdec.ptr80, metadata !2362, metadata !DIExpression()), !dbg !2369
  br label %cleanup, !dbg !2434

if.else81:                                        ; preds = %land.lhs.true75, %land.lhs.true, %for.cond
  %cmp82 = icmp eq i32 %terminator.4, %conv72, !dbg !2435
  br i1 %cmp82, label %cleanup, label %if.else85, !dbg !2436

if.else85:                                        ; preds = %if.else81
  switch i8 %8, label %cleanup [
    i8 10, label %if.then88
    i8 0, label %if.then98
  ], !dbg !2437

if.then88:                                        ; preds = %if.else85
  call void @llvm.dbg.value(metadata i8* %cur.3, metadata !2362, metadata !DIExpression()), !dbg !2369
  br label %cleanup, !dbg !2449

if.then98:                                        ; preds = %if.else85
  call void @llvm.dbg.value(metadata i8 1, metadata !2361, metadata !DIExpression()), !dbg !2369
  br label %cleanup, !dbg !2438

cleanup:                                          ; preds = %if.then88, %if.then79, %if.else85, %if.then98, %if.else81
  %cur.5 = phi i8* [ %incdec.ptr71, %if.else81 ], [ %cur.3, %if.then88 ], [ %incdec.ptr80, %if.then79 ], [ %incdec.ptr71, %if.else85 ], [ %incdec.ptr71, %if.then98 ], !dbg !2424
  %saw_NUL.3 = phi i8 [ %saw_NUL.0, %if.else81 ], [ %saw_NUL.0, %if.then88 ], [ %saw_NUL.0, %if.then79 ], [ %saw_NUL.0, %if.else85 ], [ 1, %if.then98 ], !dbg !2369
  %type.3 = phi i32 [ %type.2, %if.else81 ], [ 60, %if.then88 ], [ %type.2, %if.then79 ], [ %type.2, %if.else85 ], [ %type.2, %if.then98 ], !dbg !2369
  %cleanup.dest.slot.0 = phi i32 [ 2, %if.else81 ], [ 2, %if.then88 ], [ 0, %if.then79 ], [ 0, %if.else85 ], [ 0, %if.then98 ]
  call void @llvm.dbg.value(metadata i32 %type.3, metadata !2364, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %saw_NUL.3, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %cur.5, metadata !2362, metadata !DIExpression()), !dbg !2369
  switch i32 %cleanup.dest.slot.0, label %cleanup.cont125.loopexit.us-lcssa [
    i32 0, label %for.cond
    i32 2, label %for.end.us-lcssa
  ], !llvm.loop !2442

for.end.us-lcssa:                                 ; preds = %cleanup
  %cur.5.lcssa13 = phi i8* [ %cur.5, %cleanup ], !dbg !2424
  %saw_NUL.3.lcssa12 = phi i8 [ %saw_NUL.3, %cleanup ], !dbg !2369
  %type.3.lcssa11 = phi i32 [ %type.3, %cleanup ], !dbg !2369
  call void @llvm.dbg.value(metadata i8* %cur.5.lcssa13, metadata !2362, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %saw_NUL.3.lcssa12, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 %type.3.lcssa11, metadata !2364, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8* %cur.5.lcssa13, metadata !2362, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %saw_NUL.3.lcssa12, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 %type.3.lcssa11, metadata !2364, metadata !DIExpression()), !dbg !2369
  br label %for.end, !dbg !2446

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %cur.5.lcssa3 = phi i8* [ %cur.5.lcssa13, %for.end.us-lcssa ], [ %cur.5.us.lcssa10, %for.end.us-lcssa.us ], !dbg !2424
  %saw_NUL.3.lcssa2 = phi i8 [ %saw_NUL.3.lcssa12, %for.end.us-lcssa ], [ %saw_NUL.3.us.lcssa9, %for.end.us-lcssa.us ], !dbg !2369
  %type.3.lcssa1 = phi i32 [ %type.3.lcssa11, %for.end.us-lcssa ], [ %type.1, %for.end.us-lcssa.us ], !dbg !2369
  call void @llvm.dbg.value(metadata i8* %cur.5.lcssa3, metadata !2362, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %saw_NUL.3.lcssa2, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 %type.3.lcssa1, metadata !2364, metadata !DIExpression()), !dbg !2369
  %tobool104 = icmp eq i8 %saw_NUL.3.lcssa2, 0, !dbg !2446
  br i1 %tobool104, label %if.end109, label %land.lhs.true105, !dbg !2450

land.lhs.true105:                                 ; preds = %for.end
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !2451
  %11 = load i8, i8* %skipping, align 2, !dbg !2451
  %tobool107 = icmp eq i8 %11, 0, !dbg !2452
  br i1 %tobool107, label %if.then108, label %if.end109, !dbg !2453

if.then108:                                       ; preds = %land.lhs.true105
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !2454
  br label %if.end109, !dbg !2454

if.end109:                                        ; preds = %land.lhs.true105, %for.end, %if.then108
  %cmp110 = icmp eq i32 %type.3.lcssa1, 60, !dbg !2455
  br i1 %cmp110, label %land.lhs.true112, label %if.end117, !dbg !2457

land.lhs.true112:                                 ; preds = %if.end109
  %lang = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 1, !dbg !2458
  %12 = load i32, i32* %lang, align 4, !dbg !2458
  %cmp113 = icmp eq i32 %12, 9, !dbg !2459
  br i1 %cmp113, label %if.end117, label %if.then115, !dbg !2460

if.then115:                                       ; preds = %land.lhs.true112
  %call116 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i32 %terminator.4) #8, !dbg !2461
  br label %if.end117, !dbg !2461

if.end117:                                        ; preds = %land.lhs.true112, %if.then115, %if.end109
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2462
  %13 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !2462
  %cur118 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %13, i64 0, i32 0, !dbg !2463
  store i8* %cur.5.lcssa3, i8** %cur118, align 8, !dbg !2464
  %sub.ptr.lhs.cast = ptrtoint i8* %cur.5.lcssa3 to i64, !dbg !2465
  %sub.ptr.rhs.cast = ptrtoint i8* %base to i64, !dbg !2465
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2465
  %conv119 = trunc i64 %sub.ptr.sub to i32, !dbg !2466
  tail call fastcc void @create_literal(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i8* %base, i32 %conv119, i32 %type.3.lcssa1) #9, !dbg !2467
  br label %cleanup.cont125, !dbg !2445

cleanup.cont125.loopexit.us-lcssa:                ; preds = %cleanup
  br label %cleanup.cont125.loopexit, !dbg !2445

cleanup.cont125.loopexit:                         ; preds = %cleanup.cont125.loopexit.us-lcssa.us, %cleanup.cont125.loopexit.us-lcssa
  br label %cleanup.cont125, !dbg !2445

cleanup.cont125:                                  ; preds = %cleanup.cont125.loopexit, %if.then20, %if.end117
  ret void, !dbg !2445
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_hashnode* @lex_identifier(%struct.cpp_reader* %pfile, i8* %base, i8 zeroext %starts_ucn, %struct.normalize_state* %nst) unnamed_addr #3 !dbg !2468 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2472, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8* %base, metadata !2473, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8 %starts_ucn, metadata !2474, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata %struct.normalize_state* %nst, metadata !2475, metadata !DIExpression()), !dbg !2480
  %0 = load i8, i8* %base, align 1, !dbg !2481
  %conv = zext i8 %0 to i32, !dbg !2481
  %sub = add nsw i32 %conv, -113, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2479, metadata !DIExpression()), !dbg !2480
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2482
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !2482
  %cur1 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %1, i64 0, i32 0, !dbg !2483
  %2 = load i8*, i8** %cur1, align 8, !dbg !2483
  call void @llvm.dbg.value(metadata i8* %2, metadata !2477, metadata !DIExpression()), !dbg !2480
  %tobool = icmp eq i8 %starts_ucn, 0, !dbg !2484
  br i1 %tobool, label %while.cond.preheader, label %if.end, !dbg !2486

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !2487

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %cur.0 = phi i8* [ %incdec.ptr, %while.body ], [ %2, %while.cond.preheader ], !dbg !2480
  %hash.0 = phi i32 [ %add8, %while.body ], [ %sub, %while.cond.preheader ], !dbg !2480
  call void @llvm.dbg.value(metadata i32 %hash.0, metadata !2479, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8* %cur.0, metadata !2477, metadata !DIExpression()), !dbg !2480
  %3 = load i8, i8* %cur.0, align 1, !dbg !2488
  %idxprom = zext i8 %3 to i64, !dbg !2488
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2488
  %4 = load i16, i16* %arrayidx, align 2, !dbg !2488
  %5 = and i16 %4, 516, !dbg !2488
  %tobool5 = icmp eq i16 %5, 0, !dbg !2487
  br i1 %tobool5, label %if.end.loopexit, label %while.body, !dbg !2487

while.body:                                       ; preds = %while.cond
  %mul = mul i32 %hash.0, 67, !dbg !2489
  %conv6 = zext i8 %3 to i32, !dbg !2489
  %sub7 = add nsw i32 %conv6, -113, !dbg !2489
  %add8 = add i32 %mul, %sub7, !dbg !2489
  call void @llvm.dbg.value(metadata i32 %add8, metadata !2479, metadata !DIExpression()), !dbg !2480
  %incdec.ptr = getelementptr inbounds i8, i8* %cur.0, i64 1, !dbg !2491
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2477, metadata !DIExpression()), !dbg !2480
  br label %while.cond, !dbg !2487, !llvm.loop !2492

if.end.loopexit:                                  ; preds = %while.cond
  %cur.0.lcssa = phi i8* [ %cur.0, %while.cond ], !dbg !2480
  %hash.0.lcssa = phi i32 [ %hash.0, %while.cond ], !dbg !2480
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !2477, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 %hash.0.lcssa, metadata !2479, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !2477, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 %hash.0.lcssa, metadata !2479, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !2477, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 %hash.0.lcssa, metadata !2479, metadata !DIExpression()), !dbg !2480
  br label %if.end, !dbg !2494

if.end:                                           ; preds = %if.end.loopexit, %entry
  %cur.1 = phi i8* [ %2, %entry ], [ %cur.0.lcssa, %if.end.loopexit ], !dbg !2495
  %hash.1 = phi i32 [ %sub, %entry ], [ %hash.0.lcssa, %if.end.loopexit ], !dbg !2496
  call void @llvm.dbg.value(metadata i32 %hash.1, metadata !2479, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8* %cur.1, metadata !2477, metadata !DIExpression()), !dbg !2480
  store i8* %cur.1, i8** %cur1, align 8, !dbg !2497
  br i1 %tobool, label %lor.lhs.false, label %if.then15, !dbg !2498

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call fastcc zeroext i8 @forms_identifier_p(%struct.cpp_reader* %pfile, i32 0, %struct.normalize_state* %nst) #9, !dbg !2500
  %tobool14 = icmp eq i8 %call, 0, !dbg !2500
  br i1 %tobool14, label %if.else, label %if.then15, !dbg !2501

if.then15:                                        ; preds = %lor.lhs.false, %if.end
  %previous = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 0, !dbg !2502
  %prev_class = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 1, !dbg !2502
  br label %do.body, !dbg !2506

do.body:                                          ; preds = %do.cond, %if.then15
  br label %while.cond16, !dbg !2507

while.cond16:                                     ; preds = %while.body26, %do.body
  %6 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !2508
  %cur18 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %6, i64 0, i32 0, !dbg !2508
  %7 = load i8*, i8** %cur18, align 8, !dbg !2508
  %8 = load i8, i8* %7, align 1, !dbg !2508
  %idxprom21 = zext i8 %8 to i64, !dbg !2508
  %arrayidx22 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom21, !dbg !2508
  %9 = load i16, i16* %arrayidx22, align 2, !dbg !2508
  %10 = and i16 %9, 516, !dbg !2508
  %tobool25 = icmp eq i16 %10, 0, !dbg !2507
  br i1 %tobool25, label %do.cond, label %while.body26, !dbg !2507

while.body26:                                     ; preds = %while.cond16
  %incdec.ptr29 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2509
  store i8* %incdec.ptr29, i8** %cur18, align 8, !dbg !2509
  store i32 0, i32* %previous, align 4, !dbg !2510
  store i8 0, i8* %prev_class, align 4, !dbg !2510
  br label %while.cond16, !dbg !2507, !llvm.loop !2511

do.cond:                                          ; preds = %while.cond16
  %call31 = tail call fastcc zeroext i8 @forms_identifier_p(%struct.cpp_reader* %pfile, i32 0, %struct.normalize_state* %nst) #9, !dbg !2513
  %tobool32 = icmp eq i8 %call31, 0, !dbg !2514
  br i1 %tobool32, label %do.end, label %do.body, !dbg !2514, !llvm.loop !2515

do.end:                                           ; preds = %do.cond
  %11 = bitcast %struct.cpp_reader* %pfile to i64**, !dbg !2517
  %12 = load i64*, i64** %11, align 8, !dbg !2517
  %13 = load i64, i64* %12, align 8, !dbg !2518
  %sub.ptr.rhs.cast = ptrtoint i8* %base to i64, !dbg !2519
  %sub.ptr.sub = sub i64 %13, %sub.ptr.rhs.cast, !dbg !2519
  %call35 = tail call %struct.cpp_hashnode* @_cpp_interpret_identifier(%struct.cpp_reader* %pfile, i8* %base, i64 %sub.ptr.sub) #8, !dbg !2520
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call35, metadata !2476, metadata !DIExpression()), !dbg !2480
  br label %if.end43, !dbg !2521

if.else:                                          ; preds = %lor.lhs.false
  %sub.ptr.lhs.cast36 = ptrtoint i8* %cur.1 to i64, !dbg !2522
  %sub.ptr.rhs.cast37 = ptrtoint i8* %base to i64, !dbg !2522
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37, !dbg !2522
  %conv39 = trunc i64 %sub.ptr.sub38 to i32, !dbg !2524
  call void @llvm.dbg.value(metadata i32 %conv39, metadata !2478, metadata !DIExpression()), !dbg !2480
  %add40 = add i32 %hash.1, %conv39, !dbg !2525
  call void @llvm.dbg.value(metadata i32 %add40, metadata !2479, metadata !DIExpression()), !dbg !2480
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 50, !dbg !2526
  %14 = load %struct.ht*, %struct.ht** %hash_table, align 8, !dbg !2526
  %conv41 = and i64 %sub.ptr.sub38, 4294967295, !dbg !2526
  %call42 = tail call %struct.ht_identifier* @ht_lookup_with_hash(%struct.ht* %14, i8* %base, i64 %conv41, i32 %add40, i32 1) #8, !dbg !2526
  %15 = bitcast %struct.ht_identifier* %call42 to %struct.cpp_hashnode*, !dbg !2526
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %15, metadata !2476, metadata !DIExpression()), !dbg !2480
  br label %if.end43

if.end43:                                         ; preds = %if.else, %do.end
  %result.0 = phi %struct.cpp_hashnode* [ %call35, %do.end ], [ %15, %if.else ], !dbg !2527
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %result.0, metadata !2476, metadata !DIExpression()), !dbg !2480
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %result.0, i64 0, i32 3, !dbg !2528
  %bf.load = load i16, i16* %flags, align 2, !dbg !2528
  %16 = and i16 %bf.load, 512, !dbg !2528
  %tobool45 = icmp eq i16 %16, 0, !dbg !2528
  br i1 %tobool45, label %if.end78, label %land.lhs.true, !dbg !2528

land.lhs.true:                                    ; preds = %if.end43
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !2528
  %17 = load i8, i8* %skipping, align 2, !dbg !2528
  %tobool46 = icmp eq i8 %17, 0, !dbg !2528
  br i1 %tobool46, label %if.then47, label %if.end78, !dbg !2530

if.then47:                                        ; preds = %land.lhs.true
  %18 = trunc i16 %bf.load to i8, !dbg !2531
  %tobool53 = icmp slt i8 %18, 0, !dbg !2531
  br i1 %tobool53, label %land.lhs.true54, label %if.end59, !dbg !2534

land.lhs.true54:                                  ; preds = %if.then47
  %poisoned_ok = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 7, !dbg !2535
  %19 = load i8, i8* %poisoned_ok, align 1, !dbg !2535
  %tobool56 = icmp eq i8 %19, 0, !dbg !2536
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !2537

if.then57:                                        ; preds = %land.lhs.true54
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %result.0, i64 0, i32 0, i32 0, !dbg !2538
  %20 = load i8*, i8** %str, align 8, !dbg !2538
  %call58 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %20) #8, !dbg !2539
  br label %if.end59, !dbg !2539

if.end59:                                         ; preds = %land.lhs.true54, %if.then57, %if.then47
  %n__VA_ARGS__ = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 54, i32 3, !dbg !2540
  %21 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n__VA_ARGS__, align 8, !dbg !2540
  %cmp = icmp eq %struct.cpp_hashnode* %result.0, %21, !dbg !2542
  br i1 %cmp, label %land.lhs.true61, label %if.end66, !dbg !2543

land.lhs.true61:                                  ; preds = %if.end59
  %va_args_ok = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 6, !dbg !2544
  %22 = load i8, i8* %va_args_ok, align 2, !dbg !2544
  %tobool63 = icmp eq i8 %22, 0, !dbg !2545
  br i1 %tobool63, label %if.then64, label %if.end66, !dbg !2546

if.then64:                                        ; preds = %land.lhs.true61
  %call65 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !2547
  br label %if.end66, !dbg !2547

if.end66:                                         ; preds = %land.lhs.true61, %if.then64, %if.end59
  %bf.load68 = load i16, i16* %flags, align 2, !dbg !2548
  %tobool72 = icmp slt i16 %bf.load68, 0, !dbg !2550
  br i1 %tobool72, label %if.then73, label %if.end78, !dbg !2551

if.then73:                                        ; preds = %if.end66
  %str75 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %result.0, i64 0, i32 0, i32 0, !dbg !2552
  %23 = load i8*, i8** %str75, align 8, !dbg !2552
  %call76 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i8* %23) #8, !dbg !2553
  br label %if.end78, !dbg !2553

if.end78:                                         ; preds = %land.lhs.true, %if.end43, %if.end66, %if.then73
  ret %struct.cpp_hashnode* %result.0, !dbg !2554
}

declare dso_local zeroext i8 @cpp_error(%struct.cpp_reader*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @cpp_in_system_header(%struct.cpp_reader* %pfile) unnamed_addr #0 !dbg !2555 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2559, metadata !DIExpression()), !dbg !2560
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2561
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !2561
  %tobool = icmp eq %struct.cpp_buffer* %0, null, !dbg !2562
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2562

cond.true:                                        ; preds = %entry
  %sysp = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 15, !dbg !2563
  %1 = load i8, i8* %sysp, align 2, !dbg !2563
  %conv = zext i8 %1 to i32, !dbg !2564
  br label %cond.end, !dbg !2562

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %entry ], !dbg !2562
  ret i32 %cond, !dbg !2565
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @skip_line_comment(%struct.cpp_reader* %pfile) unnamed_addr #3 !dbg !2566 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2568, metadata !DIExpression()), !dbg !2571
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2572
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !2572
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %0, metadata !2569, metadata !DIExpression()), !dbg !2571
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !2573
  %1 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !2573
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %1, i64 0, i32 8, !dbg !2574
  %2 = load i32, i32* %highest_line, align 4, !dbg !2574
  call void @llvm.dbg.value(metadata i32 %2, metadata !2570, metadata !DIExpression()), !dbg !2571
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 0, !dbg !2571
  %.pre = load i8*, i8** %cur, align 8, !dbg !2575
  br label %while.cond, !dbg !2576

while.cond:                                       ; preds = %while.body, %entry
  %3 = phi i8* [ %incdec.ptr, %while.body ], [ %.pre, %entry ], !dbg !2575
  %4 = load i8, i8* %3, align 1, !dbg !2577
  %cmp = icmp eq i8 %4, 10, !dbg !2578
  br i1 %cmp, label %while.end, label %while.body, !dbg !2576

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i64 1, !dbg !2579
  store i8* %incdec.ptr, i8** %cur, align 8, !dbg !2579
  br label %while.cond, !dbg !2576, !llvm.loop !2580

while.end:                                        ; preds = %while.cond
  tail call void @_cpp_process_line_notes(%struct.cpp_reader* %pfile, i32 1) #9, !dbg !2581
  %5 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !2582
  %highest_line5 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %5, i64 0, i32 8, !dbg !2583
  %6 = load i32, i32* %highest_line5, align 4, !dbg !2583
  %cmp6 = icmp ne i32 %2, %6, !dbg !2584
  %conv7 = zext i1 %cmp6 to i32, !dbg !2584
  ret i32 %conv7, !dbg !2585
}

; Function Attrs: nounwind uwtable
define internal fastcc void @save_comment(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i8* %from, i32 %type) unnamed_addr #3 !dbg !2586 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2590, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !2591, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8* %from, metadata !2592, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %type, metadata !2593, metadata !DIExpression()), !dbg !2597
  %0 = bitcast %struct.cpp_reader* %pfile to i64**, !dbg !2598
  %1 = load i64*, i64** %0, align 8, !dbg !2598
  %2 = load i64, i64* %1, align 8, !dbg !2599
  %sub.ptr.rhs.cast = ptrtoint i8* %from to i64, !dbg !2600
  %sub.ptr.sub = sub i64 %2, %sub.ptr.rhs.cast, !dbg !2600
  %3 = trunc i64 %sub.ptr.sub to i32, !dbg !2601
  call void @llvm.dbg.value(metadata i32 %3, metadata !2595, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2597
  %.cast = inttoptr i64 %2 to i8*, !dbg !2602
  %arrayidx = getelementptr inbounds i8, i8* %.cast, i64 -1, !dbg !2602
  %4 = load i8, i8* %arrayidx, align 1, !dbg !2602
  %idxprom = zext i8 %4 to i64, !dbg !2602
  %arrayidx5 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2602
  %5 = load i16, i16* %arrayidx5, align 2, !dbg !2602
  %6 = lshr i16 %5, 10, !dbg !2604
  %.lobit = and i16 %6, 1, !dbg !2604
  %7 = xor i16 %.lobit, 1, !dbg !2604
  %8 = zext i16 %7 to i32, !dbg !2604
  %spec.select = add i32 %8, %3, !dbg !2604
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2595, metadata !DIExpression()), !dbg !2597
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !2605
  %9 = load i8, i8* %in_directive, align 8, !dbg !2605
  %tobool9 = icmp ne i8 %9, 0, !dbg !2606
  %cmp = icmp eq i32 %type, 47, !dbg !2607
  %or.cond = and i1 %tobool9, %cmp, !dbg !2608
  %add11 = add i32 %spec.select, 2, !dbg !2608
  %cond = select i1 %or.cond, i32 %add11, i32 %spec.select, !dbg !2608
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2596, metadata !DIExpression()), !dbg !2597
  %conv12 = zext i32 %cond to i64, !dbg !2609
  %call = tail call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %pfile, i64 %conv12) #9, !dbg !2610
  call void @llvm.dbg.value(metadata i8* %call, metadata !2594, metadata !DIExpression()), !dbg !2597
  %type13 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 1, !dbg !2611
  store i8 68, i8* %type13, align 4, !dbg !2612
  %len14 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 0, !dbg !2613
  store i32 %cond, i32* %len14, align 8, !dbg !2614
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 1, !dbg !2615
  store i8* %call, i8** %text, align 8, !dbg !2616
  store i8 47, i8* %call, align 1, !dbg !2617
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1, !dbg !2618
  %sub = add i32 %spec.select, -1, !dbg !2619
  %conv18 = zext i32 %sub to i64, !dbg !2620
  %call19 = tail call i8* @memcpy(i8* nonnull %add.ptr, i8* %from, i64 %conv18) #8, !dbg !2621
  %10 = load i8, i8* %in_directive, align 8, !dbg !2622
  %tobool23 = icmp ne i8 %10, 0, !dbg !2624
  %or.cond1 = and i1 %tobool23, %cmp, !dbg !2625
  br i1 %or.cond1, label %if.then27, label %if.end35, !dbg !2625

if.then27:                                        ; preds = %entry
  store i8 42, i8* %add.ptr, align 1, !dbg !2626
  %sub29 = add i32 %cond, -2, !dbg !2628
  %idxprom30 = zext i32 %sub29 to i64, !dbg !2629
  %arrayidx31 = getelementptr inbounds i8, i8* %call, i64 %idxprom30, !dbg !2629
  store i8 42, i8* %arrayidx31, align 1, !dbg !2630
  %sub32 = add i32 %cond, -1, !dbg !2631
  %idxprom33 = zext i32 %sub32 to i64, !dbg !2632
  %arrayidx34 = getelementptr inbounds i8, i8* %call, i64 %idxprom33, !dbg !2632
  store i8 47, i8* %arrayidx34, align 1, !dbg !2633
  br label %if.end35, !dbg !2634

if.end35:                                         ; preds = %if.then27, %entry
  tail call fastcc void @store_comment(%struct.cpp_reader* %pfile, %struct.cpp_token* %token) #9, !dbg !2635
  ret void, !dbg !2636
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @forms_identifier_p(%struct.cpp_reader* %pfile, i32 %first, %struct.normalize_state* %state) unnamed_addr #3 !dbg !2637 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2641, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %first, metadata !2642, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata %struct.normalize_state* %state, metadata !2643, metadata !DIExpression()), !dbg !2645
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2646
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !2646
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %0, metadata !2644, metadata !DIExpression()), !dbg !2645
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 0, !dbg !2647
  %1 = load i8*, i8** %cur, align 8, !dbg !2647
  %2 = load i8, i8* %1, align 1, !dbg !2649
  %cmp = icmp eq i8 %2, 36, !dbg !2650
  br i1 %cmp, label %if.then, label %if.end14, !dbg !2651

if.then:                                          ; preds = %entry
  %dollars_in_ident = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 24, !dbg !2652
  %3 = load i8, i8* %dollars_in_ident, align 2, !dbg !2652
  %tobool = icmp eq i8 %3, 0, !dbg !2652
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2655

if.end:                                           ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2656
  store i8* %incdec.ptr, i8** %cur, align 8, !dbg !2656
  %warn_dollars = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 26, !dbg !2657
  %4 = load i8, i8* %warn_dollars, align 8, !dbg !2657
  %tobool7 = icmp eq i8 %4, 0, !dbg !2657
  br i1 %tobool7, label %cleanup, label %land.lhs.true, !dbg !2659

land.lhs.true:                                    ; preds = %if.end
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !2660
  %5 = load i8, i8* %skipping, align 2, !dbg !2660
  %tobool9 = icmp eq i8 %5, 0, !dbg !2661
  br i1 %tobool9, label %if.then10, label %cleanup, !dbg !2662

if.then10:                                        ; preds = %land.lhs.true
  store i8 0, i8* %warn_dollars, align 8, !dbg !2663
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0)) #8, !dbg !2665
  br label %cleanup, !dbg !2666

if.end14:                                         ; preds = %entry
  %extended_identifiers = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 25, !dbg !2667
  %6 = load i8, i8* %extended_identifiers, align 1, !dbg !2667
  %tobool17 = icmp eq i8 %6, 0, !dbg !2667
  br i1 %tobool17, label %cleanup, label %land.lhs.true18, !dbg !2669

land.lhs.true18:                                  ; preds = %if.end14
  %cmp21 = icmp eq i8 %2, 92, !dbg !2670
  br i1 %cmp21, label %land.lhs.true23, label %cleanup, !dbg !2671

land.lhs.true23:                                  ; preds = %land.lhs.true18
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2672
  %7 = load i8, i8* %arrayidx, align 1, !dbg !2672
  %cmp26 = icmp eq i8 %7, 117, !dbg !2673
  br i1 %cmp26, label %if.then33, label %lor.lhs.false, !dbg !2674

lor.lhs.false:                                    ; preds = %land.lhs.true23
  %cmp31 = icmp eq i8 %7, 85, !dbg !2675
  br i1 %cmp31, label %if.then33, label %cleanup, !dbg !2676

if.then33:                                        ; preds = %lor.lhs.false, %land.lhs.true23
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 2, !dbg !2677
  store i8* %add.ptr, i8** %cur, align 8, !dbg !2677
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 4, !dbg !2679
  %8 = load i8*, i8** %rlimit, align 8, !dbg !2679
  %tobool36 = icmp eq i32 %first, 0, !dbg !2681
  %add = select i1 %tobool36, i32 2, i32 1, !dbg !2682
  %call37 = tail call i32 @_cpp_valid_ucn(%struct.cpp_reader* %pfile, i8** %cur, i8* %8, i32 %add, %struct.normalize_state* %state) #8, !dbg !2683
  %tobool38 = icmp eq i32 %call37, 0, !dbg !2683
  br i1 %tobool38, label %if.end40, label %cleanup, !dbg !2684

if.end40:                                         ; preds = %if.then33
  %9 = load i8*, i8** %cur, align 8, !dbg !2685
  %add.ptr42 = getelementptr inbounds i8, i8* %9, i64 -2, !dbg !2685
  store i8* %add.ptr42, i8** %cur, align 8, !dbg !2685
  br label %cleanup, !dbg !2686

cleanup:                                          ; preds = %land.lhs.true, %if.end, %if.then, %if.then33, %if.end14, %land.lhs.true18, %lor.lhs.false, %if.end40, %if.then10
  %retval.0 = phi i8 [ 0, %if.then ], [ 1, %if.then10 ], [ 1, %land.lhs.true ], [ 1, %if.end ], [ 1, %if.then33 ], [ 0, %if.end40 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true18 ], [ 0, %if.end14 ], !dbg !2645
  ret i8 %retval.0, !dbg !2687
}

; Function Attrs: nounwind uwtable
define internal fastcc void @create_literal(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i8* %base, i32 %len, i32 %type) unnamed_addr #3 !dbg !2688 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2692, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !2693, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i8* %base, metadata !2694, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 %len, metadata !2695, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 %type, metadata !2696, metadata !DIExpression()), !dbg !2698
  %add = add i32 %len, 1, !dbg !2699
  %conv = zext i32 %add to i64, !dbg !2700
  %call = tail call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %pfile, i64 %conv) #9, !dbg !2701
  call void @llvm.dbg.value(metadata i8* %call, metadata !2697, metadata !DIExpression()), !dbg !2698
  %conv1 = zext i32 %len to i64, !dbg !2702
  %call2 = tail call i8* @memcpy(i8* %call, i8* %base, i64 %conv1) #8, !dbg !2703
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %conv1, !dbg !2704
  store i8 0, i8* %arrayidx, align 1, !dbg !2705
  %type3 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 1, !dbg !2706
  %0 = trunc i32 %type to i8, !dbg !2707
  store i8 %0, i8* %type3, align 4, !dbg !2707
  %len4 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 0, !dbg !2708
  store i32 %len, i32* %len4, align 8, !dbg !2709
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 1, !dbg !2710
  store i8* %call, i8** %text, align 8, !dbg !2711
  ret void, !dbg !2712
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cpp_token_len(%struct.cpp_token* %token) local_unnamed_addr #3 !dbg !2713 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !2717, metadata !DIExpression()), !dbg !2719
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 1, !dbg !2720
  %bf.load = load i8, i8* %type, align 4, !dbg !2720
  %idxprom = zext i8 %bf.load to i64, !dbg !2720
  %category = getelementptr inbounds [73 x %struct.token_spelling], [73 x %struct.token_spelling]* @token_spellings, i64 0, i64 %idxprom, i32 0, !dbg !2720
  %0 = load i32, i32* %category, align 16, !dbg !2720
  switch i32 %0, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !2721

sw.bb:                                            ; preds = %entry
  %len1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 0, !dbg !2722
  %1 = load i32, i32* %len1, align 8, !dbg !2722
  call void @llvm.dbg.value(metadata i32 %1, metadata !2718, metadata !DIExpression()), !dbg !2719
  br label %sw.epilog, !dbg !2724

sw.bb2:                                           ; preds = %entry
  %val3 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, !dbg !2725
  %node4 = bitcast %union.cpp_token_u* %val3 to %struct.cpp_hashnode**, !dbg !2725
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node4, align 8, !dbg !2725
  %len5 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i64 0, i32 0, i32 1, !dbg !2725
  %3 = load i32, i32* %len5, align 8, !dbg !2725
  %mul = mul i32 %3, 10, !dbg !2726
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2718, metadata !DIExpression()), !dbg !2719
  br label %sw.epilog, !dbg !2727

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb
  %len.0 = phi i32 [ %mul, %sw.bb2 ], [ %1, %sw.bb ], [ 6, %entry ], !dbg !2728
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !2718, metadata !DIExpression()), !dbg !2719
  ret i32 %len.0, !dbg !2729
}

; Function Attrs: nounwind uwtable
define dso_local i8* @cpp_spell_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i8* %buffer, i8 zeroext %forstring) local_unnamed_addr #3 !dbg !2730 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2734, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !2735, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !2736, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8 %forstring, metadata !2737, metadata !DIExpression()), !dbg !2747
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 1, !dbg !2748
  %bf.load = load i8, i8* %type, align 4, !dbg !2748
  %idxprom = zext i8 %bf.load to i64, !dbg !2748
  %category = getelementptr inbounds [73 x %struct.token_spelling], [73 x %struct.token_spelling]* @token_spellings, i64 0, i64 %idxprom, i32 0, !dbg !2748
  %0 = load i32, i32* %category, align 16, !dbg !2748
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
    i32 2, label %sw.bb68
    i32 3, label %sw.bb81
  ], !dbg !2749

sw.bb:                                            ; preds = %entry
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 2, !dbg !2750
  %1 = load i16, i16* %flags, align 2, !dbg !2750
  %2 = and i16 %1, 2, !dbg !2752
  %tobool = icmp eq i16 %2, 0, !dbg !2752
  br i1 %tobool, label %if.else, label %if.then, !dbg !2753

if.then:                                          ; preds = %sw.bb
  %bf.cast3 = zext i8 %bf.load to i32, !dbg !2754
  %call = tail call fastcc i8* @cpp_digraph2name(i32 %bf.cast3) #9, !dbg !2755
  call void @llvm.dbg.value(metadata i8* %call, metadata !2738, metadata !DIExpression()), !dbg !2756
  br label %if.end15, !dbg !2757

if.else:                                          ; preds = %sw.bb
  %3 = and i16 %1, 16, !dbg !2758
  %tobool7 = icmp eq i16 %3, 0, !dbg !2758
  br i1 %tobool7, label %if.else9, label %cleanup, !dbg !2760

if.else9:                                         ; preds = %if.else
  %name = getelementptr inbounds [73 x %struct.token_spelling], [73 x %struct.token_spelling]* @token_spellings, i64 0, i64 %idxprom, i32 1, !dbg !2761
  %4 = load i8*, i8** %name, align 8, !dbg !2761
  call void @llvm.dbg.value(metadata i8* %4, metadata !2738, metadata !DIExpression()), !dbg !2756
  br label %if.end15

if.end15:                                         ; preds = %if.else9, %if.then
  %spelling.0 = phi i8* [ %call, %if.then ], [ %4, %if.else9 ], !dbg !2762
  call void @llvm.dbg.value(metadata i8* %spelling.0, metadata !2738, metadata !DIExpression()), !dbg !2756
  br label %while.cond, !dbg !2763

while.cond:                                       ; preds = %while.body, %if.end15
  %spelling.1 = phi i8* [ %spelling.0, %if.end15 ], [ %incdec.ptr, %while.body ], !dbg !2756
  %buffer.addr.0 = phi i8* [ %buffer, %if.end15 ], [ %incdec.ptr18, %while.body ]
  call void @llvm.dbg.value(metadata i8* %buffer.addr.0, metadata !2736, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %spelling.1, metadata !2738, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8* %spelling.1, metadata !2738, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2756
  %5 = load i8, i8* %spelling.1, align 1, !dbg !2764
  call void @llvm.dbg.value(metadata i8 %5, metadata !2741, metadata !DIExpression()), !dbg !2756
  %cmp = icmp eq i8 %5, 0, !dbg !2765
  br i1 %cmp, label %cleanup.loopexit, label %while.body, !dbg !2763

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %spelling.1, i64 1, !dbg !2766
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2738, metadata !DIExpression()), !dbg !2756
  %incdec.ptr18 = getelementptr inbounds i8, i8* %buffer.addr.0, i64 1, !dbg !2767
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18, metadata !2736, metadata !DIExpression()), !dbg !2747
  store i8 %5, i8* %buffer.addr.0, align 1, !dbg !2768
  br label %while.cond, !dbg !2763, !llvm.loop !2769

cleanup.loopexit:                                 ; preds = %while.cond
  %buffer.addr.0.lcssa = phi i8* [ %buffer.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata i8* %buffer.addr.0.lcssa, metadata !2736, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %buffer.addr.0.lcssa, metadata !2736, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %buffer.addr.0.lcssa, metadata !2736, metadata !DIExpression()), !dbg !2747
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.else
  %buffer.addr.1 = phi i8* [ %buffer, %if.else ], [ %buffer.addr.0.lcssa, %cleanup.loopexit ]
  %cleanup.dest.slot.0 = phi i1 [ false, %if.else ], [ true, %cleanup.loopexit ]
  call void @llvm.dbg.value(metadata i8* %buffer.addr.1, metadata !2736, metadata !DIExpression()), !dbg !2747
  br i1 %cleanup.dest.slot.0, label %sw.epilog, label %sw.bb20

sw.bb20:                                          ; preds = %cleanup, %entry
  %buffer.addr.2 = phi i8* [ %buffer, %entry ], [ %buffer.addr.1, %cleanup ]
  call void @llvm.dbg.value(metadata i8* %buffer.addr.2, metadata !2736, metadata !DIExpression()), !dbg !2747
  %tobool21 = icmp eq i8 %forstring, 0, !dbg !2771
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, !dbg !2772
  %node23 = bitcast %union.cpp_token_u* %val to %struct.cpp_hashnode**, !dbg !2772
  %6 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node23, align 8, !dbg !2772
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %6, i64 0, i32 0, i32 0, !dbg !2772
  %7 = load i8*, i8** %str, align 8, !dbg !2772
  br i1 %tobool21, label %for.cond.preheader, label %if.then22, !dbg !2773

for.cond.preheader:                               ; preds = %sw.bb20
  br label %for.cond, !dbg !2774

if.then22:                                        ; preds = %sw.bb20
  %len = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %6, i64 0, i32 0, i32 1, !dbg !2776
  %8 = load i32, i32* %len, align 8, !dbg !2776
  %conv28 = zext i32 %8 to i64, !dbg !2776
  %call29 = tail call i8* @memcpy(i8* %buffer.addr.2, i8* %7, i64 %conv28) #8, !dbg !2778
  %9 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node23, align 8, !dbg !2779
  %len34 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %9, i64 0, i32 0, i32 1, !dbg !2779
  %10 = load i32, i32* %len34, align 8, !dbg !2779
  %idx.ext = zext i32 %10 to i64, !dbg !2780
  %add.ptr = getelementptr inbounds i8, i8* %buffer.addr.2, i64 %idx.ext, !dbg !2780
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2736, metadata !DIExpression()), !dbg !2747
  br label %sw.epilog, !dbg !2781

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %11 = phi %struct.cpp_hashnode* [ %.pre, %for.inc ], [ %6, %for.cond.preheader ], !dbg !2782
  %buffer.addr.3 = phi i8* [ %buffer.addr.4, %for.inc ], [ %buffer.addr.2, %for.cond.preheader ]
  %i.0 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2784
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2742, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %buffer.addr.3, metadata !2736, metadata !DIExpression()), !dbg !2747
  %len46 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %11, i64 0, i32 0, i32 1, !dbg !2782
  %12 = load i32, i32* %len46, align 8, !dbg !2782
  %conv47 = zext i32 %12 to i64, !dbg !2782
  %cmp48 = icmp ult i64 %i.0, %conv47, !dbg !2786
  br i1 %cmp48, label %for.body, label %sw.epilog.loopexit, !dbg !2774

for.body:                                         ; preds = %for.cond
  %arrayidx50 = getelementptr inbounds i8, i8* %7, i64 %i.0, !dbg !2787
  %13 = load i8, i8* %arrayidx50, align 1, !dbg !2787
  %tobool53 = icmp slt i8 %13, 0, !dbg !2789
  br i1 %tobool53, label %if.then54, label %if.else58, !dbg !2790

if.then54:                                        ; preds = %for.body
  %call56 = tail call fastcc i64 @utf8_to_ucn(i8* %buffer.addr.3, i8* %arrayidx50) #9, !dbg !2791
  %sub = add i64 %call56, -1, !dbg !2793
  %add = add i64 %i.0, %sub, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %add, metadata !2742, metadata !DIExpression()), !dbg !2785
  %add.ptr57 = getelementptr inbounds i8, i8* %buffer.addr.3, i64 10, !dbg !2795
  call void @llvm.dbg.value(metadata i8* %add.ptr57, metadata !2736, metadata !DIExpression()), !dbg !2747
  br label %for.inc, !dbg !2796

if.else58:                                        ; preds = %for.body
  %str63 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %11, i64 0, i32 0, i32 0, !dbg !2797
  %14 = load i8*, i8** %str63, align 8, !dbg !2797
  %arrayidx64 = getelementptr inbounds i8, i8* %14, i64 %i.0, !dbg !2797
  %15 = load i8, i8* %arrayidx64, align 1, !dbg !2797
  %incdec.ptr65 = getelementptr inbounds i8, i8* %buffer.addr.3, i64 1, !dbg !2798
  call void @llvm.dbg.value(metadata i8* %incdec.ptr65, metadata !2736, metadata !DIExpression()), !dbg !2747
  store i8 %15, i8* %buffer.addr.3, align 1, !dbg !2799
  br label %for.inc

for.inc:                                          ; preds = %if.then54, %if.else58
  %buffer.addr.4 = phi i8* [ %add.ptr57, %if.then54 ], [ %incdec.ptr65, %if.else58 ], !dbg !2800
  %i.1 = phi i64 [ %add, %if.then54 ], [ %i.0, %if.else58 ], !dbg !2784
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !2742, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %buffer.addr.4, metadata !2736, metadata !DIExpression()), !dbg !2747
  %inc = add i64 %i.1, 1, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2742, metadata !DIExpression()), !dbg !2785
  %.pre = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node23, align 8, !dbg !2782
  br label %for.cond, !dbg !2802, !llvm.loop !2803

sw.bb68:                                          ; preds = %entry
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 1, !dbg !2805
  %16 = load i8*, i8** %text, align 8, !dbg !2805
  %len73 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 0, !dbg !2806
  %17 = load i32, i32* %len73, align 8, !dbg !2806
  %conv74 = zext i32 %17 to i64, !dbg !2807
  %call75 = tail call i8* @memcpy(i8* %buffer, i8* %16, i64 %conv74) #8, !dbg !2808
  %18 = load i32, i32* %len73, align 8, !dbg !2809
  %idx.ext79 = zext i32 %18 to i64, !dbg !2810
  %add.ptr80 = getelementptr inbounds i8, i8* %buffer, i64 %idx.ext79, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %add.ptr80, metadata !2736, metadata !DIExpression()), !dbg !2747
  br label %sw.epilog, !dbg !2811

sw.bb81:                                          ; preds = %entry
  %name87 = getelementptr inbounds [73 x %struct.token_spelling], [73 x %struct.token_spelling]* @token_spellings, i64 0, i64 %idxprom, i32 1, !dbg !2812
  %19 = load i8*, i8** %name87, align 8, !dbg !2812
  %call88 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %19) #8, !dbg !2813
  br label %sw.epilog, !dbg !2814

sw.epilog.loopexit:                               ; preds = %for.cond
  %buffer.addr.3.lcssa = phi i8* [ %buffer.addr.3, %for.cond ]
  call void @llvm.dbg.value(metadata i8* %buffer.addr.3.lcssa, metadata !2736, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %buffer.addr.3.lcssa, metadata !2736, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i8* %buffer.addr.3.lcssa, metadata !2736, metadata !DIExpression()), !dbg !2747
  br label %sw.epilog, !dbg !2815

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %if.then22, %cleanup, %entry, %sw.bb81, %sw.bb68
  %buffer.addr.6 = phi i8* [ %buffer, %entry ], [ %buffer, %sw.bb81 ], [ %add.ptr80, %sw.bb68 ], [ %buffer.addr.1, %cleanup ], [ %add.ptr, %if.then22 ], [ %buffer.addr.3.lcssa, %sw.epilog.loopexit ]
  call void @llvm.dbg.value(metadata i8* %buffer.addr.6, metadata !2736, metadata !DIExpression()), !dbg !2747
  ret i8* %buffer.addr.6, !dbg !2815
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @cpp_digraph2name(i32 %type) unnamed_addr #3 !dbg !2816 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !2820, metadata !DIExpression()), !dbg !2821
  %sub = add nsw i32 %type, -37, !dbg !2822
  %idxprom = sext i32 %sub to i64, !dbg !2823
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* @digraph_spellings, i64 0, i64 %idxprom, !dbg !2823
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !2823
  ret i8* %0, !dbg !2824
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i64 @utf8_to_ucn(i8* %buffer, i8* %name) unnamed_addr #3 !dbg !2825 {
entry:
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !2829, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %name, metadata !2830, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 0, metadata !2832, metadata !DIExpression()), !dbg !2836
  %0 = load i8, i8* %name, align 1, !dbg !2837
  %conv = zext i8 %0 to i32, !dbg !2837
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2834, metadata !DIExpression()), !dbg !2836
  br label %for.cond, !dbg !2839

for.cond:                                         ; preds = %for.body, %entry
  %t.0 = phi i32 [ %conv, %entry ], [ %shl, %for.body ], !dbg !2840
  %ucn_len.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2836
  call void @llvm.dbg.value(metadata i32 %ucn_len.0, metadata !2832, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 %t.0, metadata !2834, metadata !DIExpression()), !dbg !2836
  %1 = trunc i32 %t.0 to i8, !dbg !2841
  %tobool = icmp slt i8 %1, 0, !dbg !2841
  br i1 %tobool, label %for.body, label %for.end, !dbg !2841

for.body:                                         ; preds = %for.cond
  %inc = add nuw nsw i32 %ucn_len.0, 1, !dbg !2842
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2832, metadata !DIExpression()), !dbg !2836
  %shl = shl i32 %t.0, 1, !dbg !2844
  call void @llvm.dbg.value(metadata i32 %shl, metadata !2834, metadata !DIExpression()), !dbg !2836
  br label %for.cond, !dbg !2845, !llvm.loop !2846

for.end:                                          ; preds = %for.cond
  %ucn_len.0.lcssa = phi i32 [ %ucn_len.0, %for.cond ], !dbg !2836
  call void @llvm.dbg.value(metadata i32 %ucn_len.0.lcssa, metadata !2832, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 %ucn_len.0.lcssa, metadata !2832, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 %ucn_len.0.lcssa, metadata !2832, metadata !DIExpression()), !dbg !2836
  %shr = lshr i32 127, %ucn_len.0.lcssa, !dbg !2848
  %and2 = and i32 %shr, %conv, !dbg !2849
  %conv3 = zext i32 %and2 to i64, !dbg !2850
  call void @llvm.dbg.value(metadata i64 %conv3, metadata !2835, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 1, metadata !2833, metadata !DIExpression()), !dbg !2836
  br label %for.cond4, !dbg !2851

for.cond4:                                        ; preds = %for.inc15, %for.end
  %utf32.0 = phi i64 [ %conv3, %for.end ], [ %or, %for.inc15 ], !dbg !2836
  %ucn_len_c.0 = phi i32 [ 1, %for.end ], [ %inc16, %for.inc15 ], !dbg !2853
  %name.addr.0 = phi i8* [ %name, %for.end ], [ %incdec.ptr, %for.inc15 ]
  call void @llvm.dbg.value(metadata i8* %name.addr.0, metadata !2830, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 %ucn_len_c.0, metadata !2833, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %utf32.0, metadata !2835, metadata !DIExpression()), !dbg !2836
  %cmp = icmp ult i32 %ucn_len_c.0, %ucn_len.0.lcssa, !dbg !2854
  br i1 %cmp, label %for.body6, label %for.end17, !dbg !2856

for.body6:                                        ; preds = %for.cond4
  %incdec.ptr = getelementptr inbounds i8, i8* %name.addr.0, i64 1, !dbg !2857
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2830, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 undef, metadata !2835, metadata !DIExpression()), !dbg !2836
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !2859
  %3 = and i8 %2, -64, !dbg !2861
  %cmp13 = icmp eq i8 %3, -128, !dbg !2862
  br i1 %cmp13, label %for.inc15, label %if.then, !dbg !2863

if.then:                                          ; preds = %for.body6
  tail call void @abort() #11, !dbg !2864
  unreachable, !dbg !2864

for.inc15:                                        ; preds = %for.body6
  %shl7 = shl i64 %utf32.0, 6, !dbg !2865
  %4 = and i8 %2, 63, !dbg !2866
  %conv10 = zext i8 %4 to i64, !dbg !2867
  %or = or i64 %shl7, %conv10, !dbg !2868
  call void @llvm.dbg.value(metadata i64 %or, metadata !2835, metadata !DIExpression()), !dbg !2836
  %inc16 = add nuw nsw i32 %ucn_len_c.0, 1, !dbg !2869
  call void @llvm.dbg.value(metadata i32 %inc16, metadata !2833, metadata !DIExpression()), !dbg !2836
  br label %for.cond4, !dbg !2870, !llvm.loop !2871

for.end17:                                        ; preds = %for.cond4
  %utf32.0.lcssa = phi i64 [ %utf32.0, %for.cond4 ], !dbg !2836
  call void @llvm.dbg.value(metadata i64 %utf32.0.lcssa, metadata !2835, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %utf32.0.lcssa, metadata !2835, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i64 %utf32.0.lcssa, metadata !2835, metadata !DIExpression()), !dbg !2836
  %incdec.ptr18 = getelementptr inbounds i8, i8* %buffer, i64 1, !dbg !2873
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18, metadata !2829, metadata !DIExpression()), !dbg !2836
  store i8 92, i8* %buffer, align 1, !dbg !2874
  %incdec.ptr19 = getelementptr inbounds i8, i8* %buffer, i64 2, !dbg !2875
  call void @llvm.dbg.value(metadata i8* %incdec.ptr19, metadata !2829, metadata !DIExpression()), !dbg !2836
  store i8 85, i8* %incdec.ptr18, align 1, !dbg !2876
  call void @llvm.dbg.value(metadata i32 7, metadata !2831, metadata !DIExpression()), !dbg !2836
  br label %for.cond20, !dbg !2877

for.cond20:                                       ; preds = %for.body23, %for.end17
  %j.0 = phi i32 [ 7, %for.end17 ], [ %dec, %for.body23 ], !dbg !2879
  %buffer.addr.0 = phi i8* [ %incdec.ptr19, %for.end17 ], [ %incdec.ptr26, %for.body23 ], !dbg !2836
  call void @llvm.dbg.value(metadata i8* %buffer.addr.0, metadata !2829, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !2831, metadata !DIExpression()), !dbg !2836
  %cmp21 = icmp sgt i32 %j.0, -1, !dbg !2880
  br i1 %cmp21, label %for.body23, label %for.end28, !dbg !2882

for.body23:                                       ; preds = %for.cond20
  %mul = shl nsw i32 %j.0, 2, !dbg !2883
  %sh_prom = zext i32 %mul to i64, !dbg !2884
  %shr24 = lshr i64 %utf32.0.lcssa, %sh_prom, !dbg !2884
  %and25 = and i64 %shr24, 15, !dbg !2885
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* @.str.103, i64 0, i64 %and25, !dbg !2886
  %5 = load i8, i8* %arrayidx, align 1, !dbg !2886
  %incdec.ptr26 = getelementptr inbounds i8, i8* %buffer.addr.0, i64 1, !dbg !2887
  call void @llvm.dbg.value(metadata i8* %incdec.ptr26, metadata !2829, metadata !DIExpression()), !dbg !2836
  store i8 %5, i8* %buffer.addr.0, align 1, !dbg !2888
  %dec = add nsw i32 %j.0, -1, !dbg !2889
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2831, metadata !DIExpression()), !dbg !2836
  br label %for.cond20, !dbg !2890, !llvm.loop !2891

for.end28:                                        ; preds = %for.cond20
  %conv29 = zext i32 %ucn_len.0.lcssa to i64, !dbg !2893
  ret i64 %conv29, !dbg !2894
}

; Function Attrs: nounwind uwtable
define dso_local i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %token) local_unnamed_addr #3 !dbg !2895 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2899, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !2900, metadata !DIExpression()), !dbg !2904
  %call = tail call i32 @cpp_token_len(%struct.cpp_token* %token) #9, !dbg !2905
  %add = add i32 %call, 1, !dbg !2906
  call void @llvm.dbg.value(metadata i32 %add, metadata !2901, metadata !DIExpression()), !dbg !2904
  %conv = zext i32 %add to i64, !dbg !2907
  %call1 = tail call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %pfile, i64 %conv) #9, !dbg !2908
  call void @llvm.dbg.value(metadata i8* %call1, metadata !2902, metadata !DIExpression()), !dbg !2904
  %call2 = tail call i8* @cpp_spell_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i8* %call1, i8 zeroext 0) #9, !dbg !2909
  call void @llvm.dbg.value(metadata i8* %call2, metadata !2903, metadata !DIExpression()), !dbg !2904
  store i8 0, i8* %call2, align 1, !dbg !2910
  ret i8* %call1, !dbg !2911
}

; Function Attrs: nounwind uwtable
define dso_local i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %pfile, i64 %len) local_unnamed_addr #3 !dbg !2912 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2916, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 %len, metadata !2917, metadata !DIExpression()), !dbg !2920
  %u_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 6, !dbg !2921
  %0 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff, align 8, !dbg !2921
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %0, metadata !2918, metadata !DIExpression()), !dbg !2920
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %0, i64 0, i32 2, !dbg !2922
  %1 = load i8*, i8** %cur, align 8, !dbg !2922
  call void @llvm.dbg.value(metadata i8* %1, metadata !2919, metadata !DIExpression()), !dbg !2920
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %0, i64 0, i32 3, !dbg !2923
  %2 = bitcast i8** %limit to i64*, !dbg !2923
  %3 = load i64, i64* %2, align 8, !dbg !2923
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64, !dbg !2925
  %sub.ptr.sub = sub i64 %3, %sub.ptr.rhs.cast, !dbg !2925
  %cmp = icmp ult i64 %sub.ptr.sub, %len, !dbg !2926
  br i1 %cmp, label %if.then, label %if.end, !dbg !2927

if.then:                                          ; preds = %entry
  %call = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 %len) #9, !dbg !2928
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call, metadata !2918, metadata !DIExpression()), !dbg !2920
  %4 = bitcast %struct._cpp_buff** %u_buff to i64*, !dbg !2930
  %5 = load i64, i64* %4, align 8, !dbg !2930
  %6 = bitcast %struct._cpp_buff* %call to i64*, !dbg !2931
  store i64 %5, i64* %6, align 8, !dbg !2931
  store %struct._cpp_buff* %call, %struct._cpp_buff** %u_buff, align 8, !dbg !2932
  %cur3 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %call, i64 0, i32 2, !dbg !2933
  %7 = load i8*, i8** %cur3, align 8, !dbg !2933
  call void @llvm.dbg.value(metadata i8* %7, metadata !2919, metadata !DIExpression()), !dbg !2920
  br label %if.end, !dbg !2934

if.end:                                           ; preds = %if.then, %entry
  %buff.0 = phi %struct._cpp_buff* [ %call, %if.then ], [ %0, %entry ], !dbg !2920
  %result.0 = phi i8* [ %7, %if.then ], [ %1, %entry ], !dbg !2920
  call void @llvm.dbg.value(metadata i8* %result.0, metadata !2919, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.0, metadata !2918, metadata !DIExpression()), !dbg !2920
  %add.ptr = getelementptr inbounds i8, i8* %result.0, i64 %len, !dbg !2935
  %cur4 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %buff.0, i64 0, i32 2, !dbg !2936
  store i8* %add.ptr, i8** %cur4, align 8, !dbg !2937
  ret i8* %result.0, !dbg !2938
}

; Function Attrs: nounwind uwtable
define dso_local i8* @cpp_type2name(i32 %type, i8 zeroext %flags) local_unnamed_addr #3 !dbg !2939 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !2943, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8 %flags, metadata !2944, metadata !DIExpression()), !dbg !2945
  %0 = and i8 %flags, 2, !dbg !2946
  %tobool = icmp eq i8 %0, 0, !dbg !2946
  br i1 %tobool, label %if.else, label %if.then, !dbg !2948

if.then:                                          ; preds = %entry
  %call = tail call fastcc i8* @cpp_digraph2name(i32 %type) #9, !dbg !2949
  br label %return, !dbg !2950

if.else:                                          ; preds = %entry
  %1 = and i8 %flags, 16, !dbg !2951
  %tobool3 = icmp eq i8 %1, 0, !dbg !2951
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !2953

if.then4:                                         ; preds = %if.else
  %call5 = tail call i8* @cpp_named_operator2name(i32 %type) #8, !dbg !2954
  br label %return, !dbg !2955

if.end6:                                          ; preds = %if.else
  %idxprom = zext i32 %type to i64, !dbg !2956
  %name = getelementptr inbounds [73 x %struct.token_spelling], [73 x %struct.token_spelling]* @token_spellings, i64 0, i64 %idxprom, i32 1, !dbg !2957
  %2 = load i8*, i8** %name, align 8, !dbg !2957
  br label %return, !dbg !2958

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %call5, %if.then4 ], [ %2, %if.end6 ], !dbg !2945
  ret i8* %retval.0, !dbg !2959
}

declare dso_local i8* @cpp_named_operator2name(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cpp_output_token(%struct.cpp_token* %token, %struct._IO_FILE* %fp) local_unnamed_addr #3 !dbg !2960 {
entry:
  %buffer = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !3015, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !3016, metadata !DIExpression()), !dbg !3033
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 1, !dbg !3034
  %bf.load = load i8, i8* %type, align 4, !dbg !3034
  %idxprom = zext i8 %bf.load to i64, !dbg !3034
  %category = getelementptr inbounds [73 x %struct.token_spelling], [73 x %struct.token_spelling]* @token_spellings, i64 0, i64 %idxprom, i32 0, !dbg !3034
  %0 = load i32, i32* %category, align 16, !dbg !3034
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
    i32 2, label %sw.bb49
  ], !dbg !3035

sw.bb:                                            ; preds = %entry
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 2, !dbg !3036
  %1 = load i16, i16* %flags, align 2, !dbg !3036
  %2 = and i16 %1, 2, !dbg !3038
  %tobool = icmp eq i16 %2, 0, !dbg !3038
  br i1 %tobool, label %if.else, label %if.then, !dbg !3039

if.then:                                          ; preds = %sw.bb
  %bf.cast3 = zext i8 %bf.load to i32, !dbg !3040
  %call = tail call fastcc i8* @cpp_digraph2name(i32 %bf.cast3) #9, !dbg !3041
  call void @llvm.dbg.value(metadata i8* %call, metadata !3017, metadata !DIExpression()), !dbg !3042
  br label %if.end15, !dbg !3043

if.else:                                          ; preds = %sw.bb
  %3 = and i16 %1, 16, !dbg !3044
  %tobool7 = icmp eq i16 %3, 0, !dbg !3044
  br i1 %tobool7, label %if.else9, label %cleanup, !dbg !3046

if.else9:                                         ; preds = %if.else
  %name = getelementptr inbounds [73 x %struct.token_spelling], [73 x %struct.token_spelling]* @token_spellings, i64 0, i64 %idxprom, i32 1, !dbg !3047
  %4 = load i8*, i8** %name, align 8, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %4, metadata !3017, metadata !DIExpression()), !dbg !3042
  br label %if.end15

if.end15:                                         ; preds = %if.else9, %if.then
  %spelling.0 = phi i8* [ %call, %if.then ], [ %4, %if.else9 ], !dbg !3048
  call void @llvm.dbg.value(metadata i8* %spelling.0, metadata !3017, metadata !DIExpression()), !dbg !3042
  %5 = load i8, i8* %spelling.0, align 1, !dbg !3049
  call void @llvm.dbg.value(metadata i8 %5, metadata !3020, metadata !DIExpression()), !dbg !3042
  br label %do.body, !dbg !3050

do.body:                                          ; preds = %do.body, %if.end15
  %c.0.in = phi i8 [ %5, %if.end15 ], [ %6, %do.body ]
  %spelling.1 = phi i8* [ %spelling.0, %if.end15 ], [ %incdec.ptr, %do.body ], !dbg !3042
  %c.0 = zext i8 %c.0.in to i32, !dbg !3042
  call void @llvm.dbg.value(metadata i8* %spelling.1, metadata !3017, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 %c.0, metadata !3020, metadata !DIExpression()), !dbg !3042
  %call17 = tail call i32 @putc(i32 %c.0, %struct._IO_FILE* %fp) #8, !dbg !3051
  %incdec.ptr = getelementptr inbounds i8, i8* %spelling.1, i64 1, !dbg !3052
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !3017, metadata !DIExpression()), !dbg !3042
  %6 = load i8, i8* %incdec.ptr, align 1, !dbg !3053
  call void @llvm.dbg.value(metadata i8 %6, metadata !3020, metadata !DIExpression()), !dbg !3042
  %cmp = icmp eq i8 %6, 0, !dbg !3054
  br i1 %cmp, label %cleanup.loopexit, label %do.body, !dbg !3051, !llvm.loop !3055

cleanup.loopexit:                                 ; preds = %do.body
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.else
  %cleanup.dest.slot.0 = phi i1 [ false, %if.else ], [ true, %cleanup.loopexit ]
  br i1 %cleanup.dest.slot.0, label %sw.epilog, label %sw.bb21

sw.bb21:                                          ; preds = %cleanup, %entry
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, !dbg !3057
  %node23 = bitcast %union.cpp_token_u* %val to %struct.cpp_hashnode**, !dbg !3057
  %7 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node23, align 8, !dbg !3057
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %7, i64 0, i32 0, i32 0, !dbg !3057
  %8 = load i8*, i8** %str, align 8, !dbg !3057
  call void @llvm.dbg.value(metadata i8* %8, metadata !3023, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 0, metadata !3021, metadata !DIExpression()), !dbg !3058
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %buffer, i64 0, i64 0, !dbg !3059
  br label %for.cond, !dbg !3060

for.cond:                                         ; preds = %for.inc, %sw.bb21
  %10 = phi %struct.cpp_hashnode* [ %7, %sw.bb21 ], [ %.pre, %for.inc ], !dbg !3061
  %i.0 = phi i64 [ 0, %sw.bb21 ], [ %inc, %for.inc ], !dbg !3062
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3021, metadata !DIExpression()), !dbg !3058
  %len = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %10, i64 0, i32 0, i32 1, !dbg !3061
  %11 = load i32, i32* %len, align 8, !dbg !3061
  %conv28 = zext i32 %11 to i64, !dbg !3061
  %cmp29 = icmp ult i64 %i.0, %conv28, !dbg !3063
  br i1 %cmp29, label %for.body, label %sw.epilog.loopexit, !dbg !3064

for.body:                                         ; preds = %for.cond
  %arrayidx31 = getelementptr inbounds i8, i8* %8, i64 %i.0, !dbg !3065
  %12 = load i8, i8* %arrayidx31, align 1, !dbg !3065
  %tobool34 = icmp slt i8 %12, 0, !dbg !3066
  br i1 %tobool34, label %if.then35, label %if.else39, !dbg !3067

if.then35:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %9) #12, !dbg !3068
  call void @llvm.dbg.declare(metadata [10 x i8]* %buffer, metadata !3024, metadata !DIExpression()), !dbg !3069
  %call36 = call fastcc i64 @utf8_to_ucn(i8* nonnull %9, i8* %arrayidx31) #9, !dbg !3070
  %sub = add i64 %call36, -1, !dbg !3071
  %add = add i64 %i.0, %sub, !dbg !3072
  call void @llvm.dbg.value(metadata i64 %add, metadata !3021, metadata !DIExpression()), !dbg !3058
  %call38 = call i64 @fwrite(i8* nonnull %9, i64 1, i64 10, %struct._IO_FILE* %fp) #8, !dbg !3073
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %9) #12, !dbg !3074
  br label %for.inc, !dbg !3075

if.else39:                                        ; preds = %for.body
  %str44 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %10, i64 0, i32 0, i32 0, !dbg !3076
  %13 = load i8*, i8** %str44, align 8, !dbg !3076
  %arrayidx45 = getelementptr inbounds i8, i8* %13, i64 %i.0, !dbg !3076
  %14 = load i8, i8* %arrayidx45, align 1, !dbg !3076
  %conv46 = zext i8 %14 to i32, !dbg !3076
  %call47 = call i32 @fputc(i32 %conv46, %struct._IO_FILE* %fp) #8, !dbg !3077
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %if.else39
  %i.1 = phi i64 [ %add, %if.then35 ], [ %i.0, %if.else39 ], !dbg !3062
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !3021, metadata !DIExpression()), !dbg !3058
  %inc = add i64 %i.1, 1, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3021, metadata !DIExpression()), !dbg !3058
  %.pre = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node23, align 8, !dbg !3061
  br label %for.cond, !dbg !3079, !llvm.loop !3080

sw.bb49:                                          ; preds = %entry
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 1, !dbg !3082
  %15 = load i8*, i8** %text, align 8, !dbg !3082
  %len54 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 0, !dbg !3083
  %16 = load i32, i32* %len54, align 8, !dbg !3083
  %conv55 = zext i32 %16 to i64, !dbg !3084
  %call56 = tail call i64 @fwrite(i8* %15, i64 1, i64 %conv55, %struct._IO_FILE* %fp) #8, !dbg !3085
  br label %sw.epilog, !dbg !3086

sw.epilog.loopexit:                               ; preds = %for.cond
  br label %sw.epilog, !dbg !3087

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %cleanup, %entry, %sw.bb49
  ret void, !dbg !3087
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @_cpp_equiv_tokens(%struct.cpp_token* %a, %struct.cpp_token* %b) local_unnamed_addr #3 !dbg !3088 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_token* %a, metadata !3092, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata %struct.cpp_token* %b, metadata !3093, metadata !DIExpression()), !dbg !3094
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %a, i64 0, i32 1, !dbg !3095
  %bf.load = load i8, i8* %type, align 4, !dbg !3095
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %b, i64 0, i32 1, !dbg !3097
  %bf.load2 = load i8, i8* %type1, align 4, !dbg !3097
  %cmp = icmp eq i8 %bf.load, %bf.load2, !dbg !3098
  br i1 %cmp, label %land.lhs.true, label %return, !dbg !3099

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %a, i64 0, i32 2, !dbg !3100
  %0 = load i16, i16* %flags, align 2, !dbg !3100
  %flags4 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %b, i64 0, i32 2, !dbg !3101
  %1 = load i16, i16* %flags4, align 2, !dbg !3101
  %cmp6 = icmp eq i16 %0, %1, !dbg !3102
  br i1 %cmp6, label %if.then, label %return, !dbg !3103

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i8 %bf.load to i64, !dbg !3104
  %category = getelementptr inbounds [73 x %struct.token_spelling], [73 x %struct.token_spelling]* @token_spellings, i64 0, i64 %idxprom, i32 0, !dbg !3104
  %2 = load i32, i32* %category, align 16, !dbg !3104
  switch i32 %2, label %sw.bb [
    i32 2, label %sw.bb43
    i32 3, label %sw.bb20
    i32 1, label %sw.bb35
  ], !dbg !3105

sw.bb:                                            ; preds = %if.then
  %cmp14 = icmp eq i8 %bf.load, 38, !dbg !3106
  br i1 %cmp14, label %lor.rhs, label %lor.end, !dbg !3108

lor.rhs:                                          ; preds = %sw.bb
  %token_no = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %a, i64 0, i32 3, i32 0, i32 0, !dbg !3109
  %3 = load i32, i32* %token_no, align 8, !dbg !3109
  %token_no17 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %b, i64 0, i32 3, i32 0, i32 0, !dbg !3110
  %4 = load i32, i32* %token_no17, align 8, !dbg !3110
  %cmp18 = icmp eq i32 %3, %4, !dbg !3111
  br label %lor.end, !dbg !3108

lor.end:                                          ; preds = %sw.bb, %lor.rhs
  %5 = phi i1 [ true, %sw.bb ], [ %cmp18, %lor.rhs ]
  br label %return, !dbg !3112

sw.bb20:                                          ; preds = %if.then
  %cmp24 = icmp eq i8 %bf.load, 69, !dbg !3113
  br i1 %cmp24, label %lor.rhs26, label %lor.end33, !dbg !3114

lor.rhs26:                                        ; preds = %sw.bb20
  %arg_no = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %a, i64 0, i32 3, i32 0, i32 0, !dbg !3115
  %6 = load i32, i32* %arg_no, align 8, !dbg !3115
  %arg_no30 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %b, i64 0, i32 3, i32 0, i32 0, !dbg !3116
  %7 = load i32, i32* %arg_no30, align 8, !dbg !3116
  %cmp31 = icmp eq i32 %6, %7, !dbg !3117
  br label %lor.end33, !dbg !3114

lor.end33:                                        ; preds = %sw.bb20, %lor.rhs26
  %8 = phi i1 [ true, %sw.bb20 ], [ %cmp31, %lor.rhs26 ]
  br label %return, !dbg !3118

sw.bb35:                                          ; preds = %if.then
  %val36 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %a, i64 0, i32 3, !dbg !3119
  %node37 = bitcast %union.cpp_token_u* %val36 to %struct.cpp_hashnode**, !dbg !3120
  %9 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node37, align 8, !dbg !3120
  %val38 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %b, i64 0, i32 3, !dbg !3121
  %node40 = bitcast %union.cpp_token_u* %val38 to %struct.cpp_hashnode**, !dbg !3122
  %10 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node40, align 8, !dbg !3122
  %cmp41 = icmp eq %struct.cpp_hashnode* %9, %10, !dbg !3123
  br label %return, !dbg !3124

sw.bb43:                                          ; preds = %if.then
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %a, i64 0, i32 3, i32 0, i32 0, !dbg !3125
  %11 = load i32, i32* %len, align 8, !dbg !3125
  %len47 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %b, i64 0, i32 3, i32 0, i32 0, !dbg !3126
  %12 = load i32, i32* %len47, align 8, !dbg !3126
  %cmp48 = icmp eq i32 %11, %12, !dbg !3127
  br i1 %cmp48, label %land.rhs, label %land.end, !dbg !3128

land.rhs:                                         ; preds = %sw.bb43
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %a, i64 0, i32 3, i32 0, i32 1, !dbg !3129
  %13 = load i8*, i8** %text, align 8, !dbg !3129
  %text54 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %b, i64 0, i32 3, i32 0, i32 1, !dbg !3130
  %14 = load i8*, i8** %text54, align 8, !dbg !3130
  %conv58 = zext i32 %11 to i64, !dbg !3131
  %call = tail call i32 @memcmp(i8* %13, i8* %14, i64 %conv58) #10, !dbg !3132
  %tobool = icmp eq i32 %call, 0, !dbg !3133
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb43
  %15 = phi i1 [ false, %sw.bb43 ], [ %tobool, %land.rhs ], !dbg !3134
  br label %return, !dbg !3135

return:                                           ; preds = %entry, %land.lhs.true, %land.end, %sw.bb35, %lor.end33, %lor.end
  %retval.0.shrunk = phi i1 [ %5, %lor.end ], [ %15, %land.end ], [ %cmp41, %sw.bb35 ], [ %8, %lor.end33 ], [ false, %land.lhs.true ], [ false, %entry ]
  %retval.0 = zext i1 %retval.0.shrunk to i32, !dbg !3094
  ret i32 %retval.0, !dbg !3136
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @cpp_avoid_paste(%struct.cpp_reader* %pfile, %struct.cpp_token* %token1, %struct.cpp_token* %token2) local_unnamed_addr #3 !dbg !3137 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3141, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token1, metadata !3142, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token2, metadata !3143, metadata !DIExpression()), !dbg !3147
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token1, i64 0, i32 1, !dbg !3148
  %bf.load = load i8, i8* %type, align 4, !dbg !3148
  %bf.cast = zext i8 %bf.load to i32, !dbg !3148
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3144, metadata !DIExpression()), !dbg !3147
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token2, i64 0, i32 1, !dbg !3149
  %bf.load2 = load i8, i8* %type1, align 4, !dbg !3149
  %bf.cast3 = zext i8 %bf.load2 to i32, !dbg !3149
  call void @llvm.dbg.value(metadata i32 %bf.cast3, metadata !3145, metadata !DIExpression()), !dbg !3147
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token1, i64 0, i32 2, !dbg !3150
  %0 = load i16, i16* %flags, align 2, !dbg !3150
  %1 = and i16 %0, 16, !dbg !3152
  %tobool = icmp eq i16 %1, 0, !dbg !3152
  %spec.select = select i1 %tobool, i32 %bf.cast, i32 53, !dbg !3153
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3144, metadata !DIExpression()), !dbg !3147
  %flags4 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token2, i64 0, i32 2, !dbg !3154
  %2 = load i16, i16* %flags4, align 2, !dbg !3154
  %3 = and i16 %2, 16, !dbg !3156
  %tobool7 = icmp eq i16 %3, 0, !dbg !3156
  %b.0 = select i1 %tobool7, i32 %bf.cast3, i32 53, !dbg !3157
  call void @llvm.dbg.value(metadata i32 %b.0, metadata !3145, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 -1, metadata !3146, metadata !DIExpression()), !dbg !3147
  %4 = and i16 %2, 2, !dbg !3158
  %tobool13 = icmp eq i16 %4, 0, !dbg !3158
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !3160

if.then14:                                        ; preds = %entry
  %sub = add nsw i32 %b.0, -37, !dbg !3161
  %idxprom = sext i32 %sub to i64, !dbg !3162
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* @digraph_spellings, i64 0, i64 %idxprom, !dbg !3162
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !3162
  %6 = load i8, i8* %5, align 1, !dbg !3162
  %conv16 = zext i8 %6 to i32, !dbg !3162
  call void @llvm.dbg.value(metadata i32 %conv16, metadata !3146, metadata !DIExpression()), !dbg !3147
  br label %if.end26, !dbg !3163

if.else:                                          ; preds = %entry
  %idxprom17 = zext i32 %b.0 to i64, !dbg !3164
  %category = getelementptr inbounds [73 x %struct.token_spelling], [73 x %struct.token_spelling]* @token_spellings, i64 0, i64 %idxprom17, i32 0, !dbg !3166
  %7 = load i32, i32* %category, align 16, !dbg !3166
  %cmp = icmp eq i32 %7, 0, !dbg !3167
  br i1 %cmp, label %if.then20, label %if.end26, !dbg !3168

if.then20:                                        ; preds = %if.else
  %name = getelementptr inbounds [73 x %struct.token_spelling], [73 x %struct.token_spelling]* @token_spellings, i64 0, i64 %idxprom17, i32 1, !dbg !3169
  %8 = load i8*, i8** %name, align 8, !dbg !3169
  %9 = load i8, i8* %8, align 1, !dbg !3170
  %conv24 = zext i8 %9 to i32, !dbg !3170
  call void @llvm.dbg.value(metadata i32 %conv24, metadata !3146, metadata !DIExpression()), !dbg !3147
  br label %if.end26, !dbg !3171

if.end26:                                         ; preds = %if.else, %if.then20, %if.then14
  %c.1 = phi i32 [ %conv16, %if.then14 ], [ %conv24, %if.then20 ], [ -1, %if.else ], !dbg !3172
  call void @llvm.dbg.value(metadata i32 %c.1, metadata !3146, metadata !DIExpression()), !dbg !3147
  %cmp27 = icmp ult i32 %spec.select, 14, !dbg !3173
  %cmp29 = icmp eq i32 %c.1, 61, !dbg !3175
  %or.cond = and i1 %cmp27, %cmp29, !dbg !3176
  br i1 %or.cond, label %cleanup, label %if.end32, !dbg !3176

if.end32:                                         ; preds = %if.end26
  %trunc = trunc i32 %spec.select to i8, !dbg !3177
  switch i8 %trunc, label %cleanup [
    i8 2, label %sw.bb
    i8 3, label %sw.bb35
    i8 4, label %sw.bb42
    i8 5, label %sw.bb45
    i8 7, label %sw.bb53
    i8 8, label %sw.bb61
    i8 9, label %sw.bb69
    i8 10, label %sw.bb72
    i8 18, label %sw.bb75
    i8 47, label %sw.bb83
    i8 48, label %sw.bb86
    i8 37, label %sw.bb97
    i8 53, label %sw.bb105
    i8 55, label %sw.bb121
    i8 60, label %sw.bb138
  ], !dbg !3177

sw.bb:                                            ; preds = %if.end32
  %cmp33 = icmp eq i32 %c.1, 62, !dbg !3178
  %conv34 = zext i1 %cmp33 to i32, !dbg !3178
  br label %cleanup, !dbg !3180

sw.bb35:                                          ; preds = %if.end32
  switch i32 %c.1, label %lor.rhs [
    i32 60, label %lor.end
    i32 37, label %lor.end
    i32 58, label %lor.end
  ], !dbg !3181

lor.rhs:                                          ; preds = %sw.bb35
  br label %lor.end, !dbg !3182

lor.end:                                          ; preds = %sw.bb35, %sw.bb35, %sw.bb35, %lor.rhs
  %10 = phi i32 [ 1, %sw.bb35 ], [ 0, %lor.rhs ], [ 1, %sw.bb35 ], [ 1, %sw.bb35 ]
  br label %cleanup, !dbg !3183

sw.bb42:                                          ; preds = %if.end32
  %cmp43 = icmp eq i32 %c.1, 43, !dbg !3184
  %conv44 = zext i1 %cmp43 to i32, !dbg !3184
  br label %cleanup, !dbg !3185

sw.bb45:                                          ; preds = %if.end32
  %cmp46 = icmp eq i32 %c.1, 45, !dbg !3186
  %cmp49 = icmp eq i32 %c.1, 62, !dbg !3187
  %spec.select1 = or i1 %cmp46, %cmp49, !dbg !3188
  %lor.ext52 = zext i1 %spec.select1 to i32, !dbg !3188
  br label %cleanup, !dbg !3189

sw.bb53:                                          ; preds = %if.end32
  %cmp54 = icmp eq i32 %c.1, 47, !dbg !3190
  %cmp57 = icmp eq i32 %c.1, 42, !dbg !3191
  %spec.select2 = or i1 %cmp54, %cmp57, !dbg !3192
  %lor.ext60 = zext i1 %spec.select2 to i32, !dbg !3192
  br label %cleanup, !dbg !3193

sw.bb61:                                          ; preds = %if.end32
  %11 = or i32 %c.1, 4, !dbg !3194
  %12 = icmp eq i32 %11, 62, !dbg !3194
  %lor.ext68 = zext i1 %12 to i32, !dbg !3194
  br label %cleanup, !dbg !3195

sw.bb69:                                          ; preds = %if.end32
  %cmp70 = icmp eq i32 %c.1, 38, !dbg !3196
  %conv71 = zext i1 %cmp70 to i32, !dbg !3196
  br label %cleanup, !dbg !3197

sw.bb72:                                          ; preds = %if.end32
  %cmp73 = icmp eq i32 %c.1, 124, !dbg !3198
  %conv74 = zext i1 %cmp73 to i32, !dbg !3198
  br label %cleanup, !dbg !3199

sw.bb75:                                          ; preds = %if.end32
  %13 = or i32 %c.1, 4, !dbg !3200
  %14 = icmp eq i32 %13, 62, !dbg !3200
  %lor.ext82 = zext i1 %14 to i32, !dbg !3200
  br label %cleanup, !dbg !3201

sw.bb83:                                          ; preds = %if.end32
  %cmp84 = icmp eq i32 %c.1, 42, !dbg !3202
  %conv85 = zext i1 %cmp84 to i32, !dbg !3202
  br label %cleanup, !dbg !3203

sw.bb86:                                          ; preds = %if.end32
  switch i32 %c.1, label %lor.rhs92 [
    i32 46, label %lor.end95
    i32 37, label %lor.end95
  ], !dbg !3204

lor.rhs92:                                        ; preds = %sw.bb86
  %cmp93 = icmp eq i32 %b.0, 55, !dbg !3205
  %phitmp15 = zext i1 %cmp93 to i32, !dbg !3206
  br label %lor.end95, !dbg !3206

lor.end95:                                        ; preds = %sw.bb86, %sw.bb86, %lor.rhs92
  %15 = phi i32 [ 1, %sw.bb86 ], [ %phitmp15, %lor.rhs92 ], [ 1, %sw.bb86 ]
  br label %cleanup, !dbg !3207

sw.bb97:                                          ; preds = %if.end32
  %cmp98 = icmp eq i32 %c.1, 35, !dbg !3208
  %cmp101 = icmp eq i32 %c.1, 37, !dbg !3209
  %spec.select5 = or i1 %cmp98, %cmp101, !dbg !3210
  %lor.ext104 = zext i1 %spec.select5 to i32, !dbg !3210
  br label %cleanup, !dbg !3211

sw.bb105:                                         ; preds = %if.end32
  %trunc12 = trunc i32 %b.0 to i8, !dbg !3212
  switch i8 %trunc12, label %lor.rhs116 [
    i8 55, label %land.lhs.true108
    i8 53, label %lor.end119
    i8 56, label %lor.end119
  ], !dbg !3212

land.lhs.true108:                                 ; preds = %sw.bb105
  %str = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token2, i64 0, i32 3, i32 0, !dbg !3213
  %call = tail call fastcc i32 @name_p(%struct.cpp_reader* %pfile, %struct.cpp_string* nonnull %str) #9, !dbg !3214
  %tobool109 = icmp eq i32 %call, 0, !dbg !3214
  br i1 %tobool109, label %switch.early.test, label %lor.end119, !dbg !3215

switch.early.test:                                ; preds = %land.lhs.true108
  switch i8 55, label %lor.rhs116 [
    i8 56, label %lor.end119
    i8 53, label %lor.end119
  ], !dbg !3215

lor.rhs116:                                       ; preds = %switch.early.test, %sw.bb105
  %cmp117 = icmp eq i32 %b.0, 61, !dbg !3216
  %phitmp13 = zext i1 %cmp117 to i32, !dbg !3217
  br label %lor.end119, !dbg !3217

lor.end119:                                       ; preds = %land.lhs.true108, %switch.early.test, %switch.early.test, %sw.bb105, %sw.bb105, %lor.rhs116
  %16 = phi i32 [ 1, %switch.early.test ], [ %phitmp13, %lor.rhs116 ], [ 1, %sw.bb105 ], [ 1, %sw.bb105 ], [ 1, %land.lhs.true108 ], [ 1, %switch.early.test ]
  br label %cleanup, !dbg !3218

sw.bb121:                                         ; preds = %if.end32
  %trunc11 = trunc i32 %b.0 to i8, !dbg !3219
  switch i8 %trunc11, label %lor.lhs.false127 [
    i8 55, label %lor.end136
    i8 53, label %lor.end136
  ], !dbg !3219

lor.lhs.false127:                                 ; preds = %sw.bb121
  switch i32 %c.1, label %lor.rhs133 [
    i32 46, label %lor.end136
    i32 43, label %lor.end136
    i32 45, label %lor.end136
  ], !dbg !3220

lor.rhs133:                                       ; preds = %lor.lhs.false127
  br label %lor.end136, !dbg !3221

lor.end136:                                       ; preds = %lor.lhs.false127, %lor.lhs.false127, %lor.lhs.false127, %sw.bb121, %sw.bb121, %lor.rhs133
  %17 = phi i32 [ 1, %lor.lhs.false127 ], [ 1, %sw.bb121 ], [ 0, %lor.rhs133 ], [ 1, %sw.bb121 ], [ 1, %lor.lhs.false127 ], [ 1, %lor.lhs.false127 ]
  br label %cleanup, !dbg !3222

sw.bb138:                                         ; preds = %if.end32
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token1, i64 0, i32 3, i32 0, i32 1, !dbg !3223
  %18 = load i8*, i8** %text, align 8, !dbg !3223
  %19 = load i8, i8* %18, align 1, !dbg !3224
  %cmp143 = icmp eq i8 %19, 92, !dbg !3225
  %cmp146 = icmp eq i32 %b.0, 53, !dbg !3226
  %or.cond9 = and i1 %cmp143, %cmp146, !dbg !3227
  br i1 %or.cond9, label %lor.end166, label %lor.rhs148, !dbg !3227

lor.rhs148:                                       ; preds = %sw.bb138
  %objc = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 4, !dbg !3228
  %20 = load i8, i8* %objc, align 2, !dbg !3228
  %tobool150 = icmp eq i8 %20, 0, !dbg !3228
  br i1 %tobool150, label %lor.end166, label %land.lhs.true151, !dbg !3229

land.lhs.true151:                                 ; preds = %lor.rhs148
  %cmp157 = icmp eq i8 %19, 64, !dbg !3230
  br i1 %cmp157, label %land.rhs, label %lor.end166, !dbg !3231

land.rhs:                                         ; preds = %land.lhs.true151
  %21 = or i32 %b.0, 8, !dbg !3232
  %22 = icmp eq i32 %21, 61, !dbg !3232
  %phitmp = zext i1 %22 to i32
  br label %lor.end166

lor.end166:                                       ; preds = %lor.rhs148, %land.lhs.true151, %land.rhs, %sw.bb138
  %23 = phi i32 [ 1, %sw.bb138 ], [ 0, %land.lhs.true151 ], [ 0, %lor.rhs148 ], [ %phitmp, %land.rhs ]
  br label %cleanup, !dbg !3233

cleanup:                                          ; preds = %if.end32, %if.end26, %lor.end166, %lor.end136, %lor.end119, %sw.bb97, %lor.end95, %sw.bb83, %sw.bb75, %sw.bb72, %sw.bb69, %sw.bb61, %sw.bb53, %sw.bb45, %sw.bb42, %lor.end, %sw.bb
  %retval.0 = phi i32 [ %23, %lor.end166 ], [ %17, %lor.end136 ], [ %16, %lor.end119 ], [ %lor.ext104, %sw.bb97 ], [ %15, %lor.end95 ], [ %conv85, %sw.bb83 ], [ %lor.ext82, %sw.bb75 ], [ %conv74, %sw.bb72 ], [ %conv71, %sw.bb69 ], [ %lor.ext68, %sw.bb61 ], [ %lor.ext60, %sw.bb53 ], [ %lor.ext52, %sw.bb45 ], [ %conv44, %sw.bb42 ], [ %10, %lor.end ], [ %conv34, %sw.bb ], [ 1, %if.end26 ], [ 0, %if.end32 ], !dbg !3147
  ret i32 %retval.0, !dbg !3234
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @name_p(%struct.cpp_reader* %pfile, %struct.cpp_string* %string) unnamed_addr #3 !dbg !3235 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3239, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata %struct.cpp_string* %string, metadata !3240, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 0, metadata !3241, metadata !DIExpression()), !dbg !3242
  %text5 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %string, i64 0, i32 1, !dbg !3243
  %dollars_in_ident = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 24, !dbg !3243
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %string, i64 0, i32 0, !dbg !3247
  %0 = load i32, i32* %len, align 8, !dbg !3247
  %wide.trip.count = zext i32 %0 to i64, !dbg !3248
  br label %for.cond, !dbg !3249

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !3250
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3241, metadata !DIExpression()), !dbg !3242
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !3248
  br i1 %exitcond, label %cleanup, label %for.body, !dbg !3251

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %text5, align 8, !dbg !3243
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %indvars.iv, !dbg !3243
  %2 = load i8, i8* %arrayidx, align 1, !dbg !3243
  %idxprom1 = zext i8 %2 to i64, !dbg !3243
  %arrayidx2 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom1, !dbg !3243
  %3 = load i16, i16* %arrayidx2, align 2, !dbg !3243
  %4 = and i16 %3, 516, !dbg !3243
  %tobool = icmp eq i16 %4, 0, !dbg !3243
  br i1 %tobool, label %lor.lhs.false, label %for.inc, !dbg !3243

lor.lhs.false:                                    ; preds = %for.body
  %cmp9 = icmp eq i8 %2, 36, !dbg !3243
  br i1 %cmp9, label %land.lhs.true, label %cleanup, !dbg !3243

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8, i8* %dollars_in_ident, align 2, !dbg !3243
  %tobool12 = icmp eq i8 %5, 0, !dbg !3243
  br i1 %tobool12, label %cleanup, label %for.inc, !dbg !3252

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3253
  br label %for.cond, !dbg !3254, !llvm.loop !3255

cleanup:                                          ; preds = %for.cond, %land.lhs.true, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ 1, %for.cond ], !dbg !3242
  ret i32 %retval.0, !dbg !3257
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_output_line(%struct.cpp_reader* %pfile, %struct._IO_FILE* %fp) local_unnamed_addr #3 !dbg !3258 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3262, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !3263, metadata !DIExpression()), !dbg !3265
  %call = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !3266
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !3264, metadata !DIExpression()), !dbg !3265
  br label %while.cond, !dbg !3267

while.cond:                                       ; preds = %if.end, %entry
  %token.0 = phi %struct.cpp_token* [ %call, %entry ], [ %call1, %if.end ], !dbg !3265
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token.0, metadata !3264, metadata !DIExpression()), !dbg !3265
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.0, i64 0, i32 1, !dbg !3268
  %bf.load = load i8, i8* %type, align 4, !dbg !3268
  %cmp = icmp eq i8 %bf.load, 22, !dbg !3269
  br i1 %cmp, label %while.end, label %while.body, !dbg !3267

while.body:                                       ; preds = %while.cond
  tail call void @cpp_output_token(%struct.cpp_token* %token.0, %struct._IO_FILE* %fp) #9, !dbg !3270
  %call1 = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !3272
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call1, metadata !3264, metadata !DIExpression()), !dbg !3265
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 2, !dbg !3273
  %0 = load i16, i16* %flags, align 2, !dbg !3273
  %1 = and i16 %0, 1, !dbg !3275
  %tobool = icmp eq i16 %1, 0, !dbg !3275
  br i1 %tobool, label %if.end, label %if.then, !dbg !3276

if.then:                                          ; preds = %while.body
  %call2 = tail call i32 @putc(i32 32, %struct._IO_FILE* %fp) #8, !dbg !3277
  br label %if.end, !dbg !3277

if.end:                                           ; preds = %while.body, %if.then
  br label %while.cond, !dbg !3267, !llvm.loop !3278

while.end:                                        ; preds = %while.cond
  %call3 = tail call i32 @putc(i32 10, %struct._IO_FILE* %fp) #8, !dbg !3280
  ret void, !dbg !3281
}

declare dso_local %struct.cpp_token* @cpp_get_token(%struct.cpp_reader*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @cpp_output_line_to_string(%struct.cpp_reader* %pfile, i8* %dir_name) local_unnamed_addr #3 !dbg !3282 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3286, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8* %dir_name, metadata !3287, metadata !DIExpression()), !dbg !3295
  %tobool = icmp eq i8* %dir_name, null, !dbg !3296
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3296

cond.true:                                        ; preds = %entry
  %call = tail call fastcc i64 @ustrlen(i8* nonnull %dir_name) #9, !dbg !3297
  %phitmp = trunc i64 %call to i32, !dbg !3296
  br label %cond.end, !dbg !3296

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %phitmp, %cond.true ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i32 %cond, metadata !3289, metadata !DIExpression()), !dbg !3295
  %add = add i32 %cond, 120, !dbg !3298
  call void @llvm.dbg.value(metadata i32 %add, metadata !3290, metadata !DIExpression()), !dbg !3295
  %conv1 = zext i32 %add to i64, !dbg !3299
  %call2 = tail call i8* @xmalloc(i64 %conv1) #8, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %call2, metadata !3291, metadata !DIExpression()), !dbg !3295
  br i1 %tobool, label %if.end, label %if.then, !dbg !3301

if.then:                                          ; preds = %cond.end
  %call4 = tail call i32 (i8*, i8*, ...) @sprintf(i8* %call2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %dir_name) #8, !dbg !3302
  %add5 = add i32 %cond, 2, !dbg !3305
  call void @llvm.dbg.value(metadata i32 %add5, metadata !3289, metadata !DIExpression()), !dbg !3295
  br label %if.end, !dbg !3306

if.end:                                           ; preds = %cond.end, %if.then
  %out.0 = phi i32 [ %add5, %if.then ], [ %cond, %cond.end ], !dbg !3295
  call void @llvm.dbg.value(metadata i32 %out.0, metadata !3289, metadata !DIExpression()), !dbg !3295
  %call6 = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !3307
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call6, metadata !3288, metadata !DIExpression()), !dbg !3295
  br label %while.cond, !dbg !3308

while.cond:                                       ; preds = %if.end31, %if.end
  %out.1 = phi i32 [ %out.0, %if.end ], [ %out.2, %if.end31 ], !dbg !3295
  %token.0 = phi %struct.cpp_token* [ %call6, %if.end ], [ %call25, %if.end31 ], !dbg !3295
  %alloced.0 = phi i32 [ %add, %if.end ], [ %alloced.2, %if.end31 ], !dbg !3295
  %result.0 = phi i8* [ %call2, %if.end ], [ %result.1, %if.end31 ], !dbg !3295
  call void @llvm.dbg.value(metadata i8* %result.0, metadata !3291, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i32 %alloced.0, metadata !3290, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token.0, metadata !3288, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i32 %out.1, metadata !3289, metadata !DIExpression()), !dbg !3295
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.0, i64 0, i32 1, !dbg !3309
  %bf.load = load i8, i8* %type, align 4, !dbg !3309
  %cmp = icmp eq i8 %bf.load, 22, !dbg !3310
  br i1 %cmp, label %while.end, label %while.body, !dbg !3308

while.body:                                       ; preds = %while.cond
  %call8 = tail call i32 @cpp_token_len(%struct.cpp_token* %token.0) #9, !dbg !3311
  %add9 = add i32 %call8, 2, !dbg !3312
  call void @llvm.dbg.value(metadata i32 %add9, metadata !3294, metadata !DIExpression()), !dbg !3313
  %add10 = add i32 %out.1, %add9, !dbg !3314
  %cmp11 = icmp ugt i32 %add10, %alloced.0, !dbg !3316
  br i1 %cmp11, label %if.then13, label %if.end22, !dbg !3317

if.then13:                                        ; preds = %while.body
  %mul = shl i32 %alloced.0, 1, !dbg !3318
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3290, metadata !DIExpression()), !dbg !3295
  %cmp15 = icmp ugt i32 %add10, %mul, !dbg !3320
  %spec.select = select i1 %cmp15, i32 %add10, i32 %mul, !dbg !3322
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3290, metadata !DIExpression()), !dbg !3295
  %conv20 = zext i32 %spec.select to i64, !dbg !3323
  %call21 = tail call i8* @xrealloc(i8* %result.0, i64 %conv20) #8, !dbg !3324
  call void @llvm.dbg.value(metadata i8* %call21, metadata !3291, metadata !DIExpression()), !dbg !3295
  br label %if.end22, !dbg !3325

if.end22:                                         ; preds = %if.then13, %while.body
  %alloced.2 = phi i32 [ %spec.select, %if.then13 ], [ %alloced.0, %while.body ], !dbg !3295
  %result.1 = phi i8* [ %call21, %if.then13 ], [ %result.0, %while.body ], !dbg !3295
  call void @llvm.dbg.value(metadata i8* %result.1, metadata !3291, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i32 %alloced.2, metadata !3290, metadata !DIExpression()), !dbg !3295
  %idxprom = zext i32 %out.1 to i64, !dbg !3326
  %arrayidx = getelementptr inbounds i8, i8* %result.1, i64 %idxprom, !dbg !3326
  %call23 = tail call i8* @cpp_spell_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %token.0, i8* %arrayidx, i8 zeroext 0) #9, !dbg !3327
  call void @llvm.dbg.value(metadata i8* %call23, metadata !3292, metadata !DIExpression()), !dbg !3313
  %sub.ptr.lhs.cast = ptrtoint i8* %call23 to i64, !dbg !3328
  %sub.ptr.rhs.cast = ptrtoint i8* %result.1 to i64, !dbg !3328
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3328
  %conv24 = trunc i64 %sub.ptr.sub to i32, !dbg !3329
  call void @llvm.dbg.value(metadata i32 %conv24, metadata !3289, metadata !DIExpression()), !dbg !3295
  %call25 = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !3330
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call25, metadata !3288, metadata !DIExpression()), !dbg !3295
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call25, i64 0, i32 2, !dbg !3331
  %0 = load i16, i16* %flags, align 2, !dbg !3331
  %1 = and i16 %0, 1, !dbg !3333
  %tobool27 = icmp eq i16 %1, 0, !dbg !3333
  br i1 %tobool27, label %if.end31, label %if.then28, !dbg !3334

if.then28:                                        ; preds = %if.end22
  %inc = add i32 %conv24, 1, !dbg !3335
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3289, metadata !DIExpression()), !dbg !3295
  %idxprom29 = and i64 %sub.ptr.sub, 4294967295, !dbg !3336
  %arrayidx30 = getelementptr inbounds i8, i8* %result.1, i64 %idxprom29, !dbg !3336
  store i8 32, i8* %arrayidx30, align 1, !dbg !3337
  br label %if.end31, !dbg !3336

if.end31:                                         ; preds = %if.end22, %if.then28
  %out.2 = phi i32 [ %inc, %if.then28 ], [ %conv24, %if.end22 ], !dbg !3313
  call void @llvm.dbg.value(metadata i32 %out.2, metadata !3289, metadata !DIExpression()), !dbg !3295
  br label %while.cond, !dbg !3308, !llvm.loop !3338

while.end:                                        ; preds = %while.cond
  %out.1.lcssa = phi i32 [ %out.1, %while.cond ], !dbg !3295
  %result.0.lcssa = phi i8* [ %result.0, %while.cond ], !dbg !3295
  call void @llvm.dbg.value(metadata i32 %out.1.lcssa, metadata !3289, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8* %result.0.lcssa, metadata !3291, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i32 %out.1.lcssa, metadata !3289, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8* %result.0.lcssa, metadata !3291, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i32 %out.1.lcssa, metadata !3289, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i8* %result.0.lcssa, metadata !3291, metadata !DIExpression()), !dbg !3295
  %idxprom32 = zext i32 %out.1.lcssa to i64, !dbg !3340
  %arrayidx33 = getelementptr inbounds i8, i8* %result.0.lcssa, i64 %idxprom32, !dbg !3340
  store i8 0, i8* %arrayidx33, align 1, !dbg !3341
  ret i8* %result.0.lcssa, !dbg !3342
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ustrlen(i8* %s1) unnamed_addr #0 !dbg !3343 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !3347, metadata !DIExpression()), !dbg !3348
  %call = tail call i64 @strlen(i8* %s1) #10, !dbg !3349
  ret i64 %call, !dbg !3350
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #6

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_release_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* %buff) local_unnamed_addr #3 !dbg !3351 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3355, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff, metadata !3356, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff, metadata !3357, metadata !DIExpression()), !dbg !3358
  br label %while.cond, !dbg !3359

while.cond:                                       ; preds = %while.body, %entry
  %end.0 = phi %struct._cpp_buff* [ %buff, %entry ], [ %0, %while.body ], !dbg !3358
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %end.0, metadata !3357, metadata !DIExpression()), !dbg !3358
  %next = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %end.0, i64 0, i32 0, !dbg !3360
  %0 = load %struct._cpp_buff*, %struct._cpp_buff** %next, align 8, !dbg !3360
  %tobool = icmp eq %struct._cpp_buff* %0, null, !dbg !3359
  br i1 %tobool, label %while.end, label %while.body, !dbg !3359

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %0, metadata !3357, metadata !DIExpression()), !dbg !3358
  br label %while.cond, !dbg !3359, !llvm.loop !3361

while.end:                                        ; preds = %while.cond
  %end.0.lcssa = phi %struct._cpp_buff* [ %end.0, %while.cond ], !dbg !3358
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %end.0.lcssa, metadata !3357, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %end.0.lcssa, metadata !3357, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %end.0.lcssa, metadata !3357, metadata !DIExpression()), !dbg !3358
  %free_buffs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 7, !dbg !3363
  %1 = bitcast %struct._cpp_buff** %free_buffs to i64*, !dbg !3363
  %2 = load i64, i64* %1, align 8, !dbg !3363
  %3 = bitcast %struct._cpp_buff* %end.0.lcssa to i64*, !dbg !3364
  store i64 %2, i64* %3, align 8, !dbg !3364
  store %struct._cpp_buff* %buff, %struct._cpp_buff** %free_buffs, align 8, !dbg !3365
  ret void, !dbg !3366
}

; Function Attrs: nounwind uwtable
define dso_local %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 %min_size) local_unnamed_addr #3 !dbg !3367 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3371, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 %min_size, metadata !3372, metadata !DIExpression()), !dbg !3380
  %free_buffs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 7, !dbg !3381
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %free_buffs, metadata !3374, metadata !DIExpression()), !dbg !3380
  %mul = mul i64 %min_size, 3, !dbg !3382
  %div = lshr i64 %mul, 1, !dbg !3382
  %add = add nuw i64 %div, 8000, !dbg !3382
  br label %for.cond, !dbg !3384

for.cond:                                         ; preds = %for.inc, %entry
  %result.0 = phi %struct._cpp_buff* [ undef, %entry ], [ %result.1, %for.inc ]
  %p.0 = phi %struct._cpp_buff** [ %free_buffs, %entry ], [ %next, %for.inc ], !dbg !3385
  %retval.0 = phi %struct._cpp_buff* [ undef, %entry ], [ %retval.1, %for.inc ]
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %p.0, metadata !3374, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %result.0, metadata !3373, metadata !DIExpression()), !dbg !3380
  %0 = load %struct._cpp_buff*, %struct._cpp_buff** %p.0, align 8, !dbg !3386
  %cmp = icmp eq %struct._cpp_buff* %0, null, !dbg !3388
  br i1 %cmp, label %if.then, label %if.end, !dbg !3389

if.then:                                          ; preds = %for.cond
  %call = tail call fastcc %struct._cpp_buff* @new_buff(i64 %min_size) #9, !dbg !3390
  br label %cleanup, !dbg !3391

if.end:                                           ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %0, metadata !3373, metadata !DIExpression()), !dbg !3380
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %0, i64 0, i32 3, !dbg !3392
  %1 = bitcast i8** %limit to i64*, !dbg !3392
  %2 = load i64, i64* %1, align 8, !dbg !3392
  %base = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %0, i64 0, i32 1, !dbg !3393
  %3 = bitcast i8** %base to i64*, !dbg !3393
  %4 = load i64, i64* %3, align 8, !dbg !3393
  %sub.ptr.sub = sub i64 %2, %4, !dbg !3394
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !3376, metadata !DIExpression()), !dbg !3395
  %cmp1 = icmp ult i64 %sub.ptr.sub, %min_size, !dbg !3396
  br i1 %cmp1, label %if.end4, label %land.lhs.true, !dbg !3397

land.lhs.true:                                    ; preds = %if.end
  %cmp2 = icmp ugt i64 %sub.ptr.sub, %add, !dbg !3398
  br i1 %cmp2, label %if.end4, label %cleanup, !dbg !3399

if.end4:                                          ; preds = %land.lhs.true, %if.end
  br label %cleanup, !dbg !3400

cleanup:                                          ; preds = %land.lhs.true, %if.end4, %if.then
  %result.1 = phi %struct._cpp_buff* [ %result.0, %if.then ], [ %0, %if.end4 ], [ %0, %land.lhs.true ]
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then ], [ 0, %if.end4 ], [ 2, %land.lhs.true ]
  %retval.1 = phi %struct._cpp_buff* [ %call, %if.then ], [ %retval.0, %if.end4 ], [ %retval.0, %land.lhs.true ]
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %result.1, metadata !3373, metadata !DIExpression()), !dbg !3380
  switch i32 %cleanup.dest.slot.0, label %cleanup8.loopexit [
    i32 0, label %for.inc
    i32 2, label %for.end
  ]

for.inc:                                          ; preds = %cleanup
  %5 = load %struct._cpp_buff*, %struct._cpp_buff** %p.0, align 8, !dbg !3401
  %next = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %5, i64 0, i32 0, !dbg !3402
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %next, metadata !3374, metadata !DIExpression()), !dbg !3380
  br label %for.cond, !dbg !3403, !llvm.loop !3404

for.end:                                          ; preds = %cleanup
  %result.1.lcssa9 = phi %struct._cpp_buff* [ %result.1, %cleanup ]
  %p.0.lcssa7 = phi %struct._cpp_buff** [ %p.0, %cleanup ], !dbg !3385
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %result.1.lcssa9, metadata !3373, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %p.0.lcssa7, metadata !3374, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %result.1.lcssa9, metadata !3373, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %p.0.lcssa7, metadata !3374, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %result.1.lcssa9, metadata !3373, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %p.0.lcssa7, metadata !3374, metadata !DIExpression()), !dbg !3380
  %6 = bitcast %struct._cpp_buff* %result.1.lcssa9 to i64*, !dbg !3407
  %7 = load i64, i64* %6, align 8, !dbg !3407
  %8 = bitcast %struct._cpp_buff** %p.0.lcssa7 to i64*, !dbg !3408
  store i64 %7, i64* %8, align 8, !dbg !3408
  %next6 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %result.1.lcssa9, i64 0, i32 0, !dbg !3409
  store %struct._cpp_buff* null, %struct._cpp_buff** %next6, align 8, !dbg !3410
  %base7 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %result.1.lcssa9, i64 0, i32 1, !dbg !3411
  %9 = bitcast i8** %base7 to i64*, !dbg !3411
  %10 = load i64, i64* %9, align 8, !dbg !3411
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %result.1.lcssa9, i64 0, i32 2, !dbg !3412
  %11 = bitcast i8** %cur to i64*, !dbg !3413
  store i64 %10, i64* %11, align 8, !dbg !3413
  br label %cleanup8, !dbg !3414

cleanup8.loopexit:                                ; preds = %cleanup
  %retval.1.lcssa = phi %struct._cpp_buff* [ %retval.1, %cleanup ]
  br label %cleanup8, !dbg !3415

cleanup8:                                         ; preds = %cleanup8.loopexit, %for.end
  %retval.2 = phi %struct._cpp_buff* [ %result.1.lcssa9, %for.end ], [ %retval.1.lcssa, %cleanup8.loopexit ], !dbg !3380
  ret %struct._cpp_buff* %retval.2, !dbg !3415
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._cpp_buff* @new_buff(i64 %len) unnamed_addr #3 !dbg !3416 {
entry:
  call void @llvm.dbg.value(metadata i64 %len, metadata !3420, metadata !DIExpression()), !dbg !3423
  %0 = icmp ugt i64 %len, 8000, !dbg !3424
  %spec.select = select i1 %0, i64 %len, i64 8000, !dbg !3424
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !3420, metadata !DIExpression()), !dbg !3423
  %add = add i64 %spec.select, 7, !dbg !3425
  %and = and i64 %add, -8, !dbg !3425
  call void @llvm.dbg.value(metadata i64 %and, metadata !3420, metadata !DIExpression()), !dbg !3423
  %add1 = add i64 %and, 32, !dbg !3426
  %call = tail call i8* @xmalloc(i64 %add1) #8, !dbg !3426
  call void @llvm.dbg.value(metadata i8* %call, metadata !3422, metadata !DIExpression()), !dbg !3423
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %and, !dbg !3427
  %1 = bitcast i8* %add.ptr to %struct._cpp_buff*, !dbg !3428
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %1, metadata !3421, metadata !DIExpression()), !dbg !3423
  %base2 = getelementptr inbounds i8, i8* %add.ptr, i64 8, !dbg !3429
  %2 = bitcast i8* %base2 to i8**, !dbg !3429
  store i8* %call, i8** %2, align 8, !dbg !3430
  %cur = getelementptr inbounds i8, i8* %add.ptr, i64 16, !dbg !3431
  %3 = bitcast i8* %cur to i8**, !dbg !3431
  store i8* %call, i8** %3, align 8, !dbg !3432
  %limit = getelementptr inbounds i8, i8* %add.ptr, i64 24, !dbg !3433
  %4 = bitcast i8* %limit to i8**, !dbg !3433
  store i8* %add.ptr, i8** %4, align 8, !dbg !3434
  %next = bitcast i8* %add.ptr to %struct._cpp_buff**, !dbg !3435
  store %struct._cpp_buff* null, %struct._cpp_buff** %next, align 8, !dbg !3436
  ret %struct._cpp_buff* %1, !dbg !3437
}

; Function Attrs: nounwind uwtable
define dso_local %struct._cpp_buff* @_cpp_append_extend_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* %buff, i64 %min_extra) local_unnamed_addr #3 !dbg !3438 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3442, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff, metadata !3443, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %min_extra, metadata !3444, metadata !DIExpression()), !dbg !3447
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %buff, i64 0, i32 3, !dbg !3448
  %0 = bitcast i8** %limit to i64*, !dbg !3448
  %1 = load i64, i64* %0, align 8, !dbg !3448
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %buff, i64 0, i32 2, !dbg !3448
  %2 = bitcast i8** %cur to i64*, !dbg !3448
  %3 = load i64, i64* %2, align 8, !dbg !3448
  %sub.ptr.sub = sub i64 %1, %3, !dbg !3448
  %mul = shl nsw i64 %sub.ptr.sub, 1, !dbg !3448
  %add = add i64 %mul, %min_extra, !dbg !3448
  call void @llvm.dbg.value(metadata i64 %add, metadata !3445, metadata !DIExpression()), !dbg !3447
  %call = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 %add) #9, !dbg !3449
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call, metadata !3446, metadata !DIExpression()), !dbg !3447
  %next = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %buff, i64 0, i32 0, !dbg !3450
  store %struct._cpp_buff* %call, %struct._cpp_buff** %next, align 8, !dbg !3451
  %base = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %call, i64 0, i32 1, !dbg !3452
  %4 = load i8*, i8** %base, align 8, !dbg !3452
  %5 = load i8*, i8** %cur, align 8, !dbg !3453
  %6 = load i64, i64* %0, align 8, !dbg !3454
  %.cast = ptrtoint i8* %5 to i64, !dbg !3454
  %sub.ptr.sub6 = sub i64 %6, %.cast, !dbg !3454
  %call7 = tail call i8* @memcpy(i8* %4, i8* %5, i64 %sub.ptr.sub6) #8, !dbg !3455
  ret %struct._cpp_buff* %call, !dbg !3456
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_extend_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff** %pbuff, i64 %min_extra) local_unnamed_addr #3 !dbg !3457 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3461, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %pbuff, metadata !3462, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %min_extra, metadata !3463, metadata !DIExpression()), !dbg !3467
  %0 = load %struct._cpp_buff*, %struct._cpp_buff** %pbuff, align 8, !dbg !3468
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %0, metadata !3465, metadata !DIExpression()), !dbg !3467
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %0, i64 0, i32 3, !dbg !3469
  %1 = bitcast i8** %limit to i64*, !dbg !3469
  %2 = load i64, i64* %1, align 8, !dbg !3469
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %0, i64 0, i32 2, !dbg !3469
  %3 = bitcast i8** %cur to i64*, !dbg !3469
  %4 = load i64, i64* %3, align 8, !dbg !3469
  %sub.ptr.sub = sub i64 %2, %4, !dbg !3469
  %mul = shl nsw i64 %sub.ptr.sub, 1, !dbg !3469
  %add = add i64 %mul, %min_extra, !dbg !3469
  call void @llvm.dbg.value(metadata i64 %add, metadata !3466, metadata !DIExpression()), !dbg !3467
  %call = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 %add) #9, !dbg !3470
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call, metadata !3464, metadata !DIExpression()), !dbg !3467
  %base = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %call, i64 0, i32 1, !dbg !3471
  %5 = load i8*, i8** %base, align 8, !dbg !3471
  %6 = load i8*, i8** %cur, align 8, !dbg !3472
  %7 = load i64, i64* %1, align 8, !dbg !3473
  %.cast = ptrtoint i8* %6 to i64, !dbg !3473
  %sub.ptr.sub6 = sub i64 %7, %.cast, !dbg !3473
  %call7 = tail call i8* @memcpy(i8* %5, i8* %6, i64 %sub.ptr.sub6) #8, !dbg !3474
  %next = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %call, i64 0, i32 0, !dbg !3475
  store %struct._cpp_buff* %0, %struct._cpp_buff** %next, align 8, !dbg !3476
  store %struct._cpp_buff* %call, %struct._cpp_buff** %pbuff, align 8, !dbg !3477
  ret void, !dbg !3478
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_free_buff(%struct._cpp_buff* %buff) local_unnamed_addr #3 !dbg !3479 {
entry:
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff, metadata !3483, metadata !DIExpression()), !dbg !3485
  br label %for.cond, !dbg !3486

for.cond:                                         ; preds = %for.body, %entry
  %buff.addr.0 = phi %struct._cpp_buff* [ %buff, %entry ], [ %0, %for.body ]
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.addr.0, metadata !3483, metadata !DIExpression()), !dbg !3485
  %tobool = icmp eq %struct._cpp_buff* %buff.addr.0, null, !dbg !3487
  br i1 %tobool, label %for.end, label %for.body, !dbg !3487

for.body:                                         ; preds = %for.cond
  %next1 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %buff.addr.0, i64 0, i32 0, !dbg !3489
  %0 = load %struct._cpp_buff*, %struct._cpp_buff** %next1, align 8, !dbg !3489
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %0, metadata !3484, metadata !DIExpression()), !dbg !3485
  %base = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %buff.addr.0, i64 0, i32 1, !dbg !3492
  %1 = load i8*, i8** %base, align 8, !dbg !3492
  tail call void @free(i8* %1) #8, !dbg !3493
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %0, metadata !3483, metadata !DIExpression()), !dbg !3485
  br label %for.cond, !dbg !3494, !llvm.loop !3495

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3497
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i8* @_cpp_aligned_alloc(%struct.cpp_reader* %pfile, i64 %len) local_unnamed_addr #3 !dbg !3498 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3500, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 %len, metadata !3501, metadata !DIExpression()), !dbg !3504
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 5, !dbg !3505
  %0 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !3505
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %0, metadata !3502, metadata !DIExpression()), !dbg !3504
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %0, i64 0, i32 2, !dbg !3506
  %1 = load i8*, i8** %cur, align 8, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %1, metadata !3503, metadata !DIExpression()), !dbg !3504
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %0, i64 0, i32 3, !dbg !3507
  %2 = bitcast i8** %limit to i64*, !dbg !3507
  %3 = load i64, i64* %2, align 8, !dbg !3507
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64, !dbg !3509
  %sub.ptr.sub = sub i64 %3, %sub.ptr.rhs.cast, !dbg !3509
  %cmp = icmp ult i64 %sub.ptr.sub, %len, !dbg !3510
  br i1 %cmp, label %if.then, label %if.end, !dbg !3511

if.then:                                          ; preds = %entry
  %call = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 %len) #9, !dbg !3512
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call, metadata !3502, metadata !DIExpression()), !dbg !3504
  %4 = bitcast %struct._cpp_buff** %a_buff to i64*, !dbg !3514
  %5 = load i64, i64* %4, align 8, !dbg !3514
  %6 = bitcast %struct._cpp_buff* %call to i64*, !dbg !3515
  store i64 %5, i64* %6, align 8, !dbg !3515
  store %struct._cpp_buff* %call, %struct._cpp_buff** %a_buff, align 8, !dbg !3516
  %cur3 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %call, i64 0, i32 2, !dbg !3517
  %7 = load i8*, i8** %cur3, align 8, !dbg !3517
  call void @llvm.dbg.value(metadata i8* %7, metadata !3503, metadata !DIExpression()), !dbg !3504
  br label %if.end, !dbg !3518

if.end:                                           ; preds = %if.then, %entry
  %buff.0 = phi %struct._cpp_buff* [ %call, %if.then ], [ %0, %entry ], !dbg !3504
  %result.0 = phi i8* [ %7, %if.then ], [ %1, %entry ], !dbg !3504
  call void @llvm.dbg.value(metadata i8* %result.0, metadata !3503, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.0, metadata !3502, metadata !DIExpression()), !dbg !3504
  %add.ptr = getelementptr inbounds i8, i8* %result.0, i64 %len, !dbg !3519
  %cur4 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %buff.0, i64 0, i32 2, !dbg !3520
  store i8* %add.ptr, i8** %cur4, align 8, !dbg !3521
  ret i8* %result.0, !dbg !3522
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cpp_token_val_index(%struct.cpp_token* %tok) local_unnamed_addr #3 !dbg !3523 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_token* %tok, metadata !3527, metadata !DIExpression()), !dbg !3528
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %tok, i64 0, i32 1, !dbg !3529
  %bf.load = load i8, i8* %type, align 4, !dbg !3529
  %idxprom = zext i8 %bf.load to i64, !dbg !3529
  %category = getelementptr inbounds [73 x %struct.token_spelling], [73 x %struct.token_spelling]* @token_spellings, i64 0, i64 %idxprom, i32 0, !dbg !3529
  %0 = load i32, i32* %category, align 16, !dbg !3529
  switch i32 %0, label %sw.default [
    i32 1, label %return
    i32 2, label %sw.bb1
    i32 0, label %sw.bb2
    i32 3, label %sw.bb6
  ], !dbg !3530

sw.bb1:                                           ; preds = %entry
  br label %return, !dbg !3531

sw.bb2:                                           ; preds = %entry
  %cmp = icmp eq i8 %bf.load, 38, !dbg !3533
  %. = select i1 %cmp, i32 4, i32 6, !dbg !3535
  br label %return, !dbg !3535

sw.bb6:                                           ; preds = %entry
  %cmp10 = icmp eq i8 %bf.load, 69, !dbg !3536
  br i1 %cmp10, label %return, label %if.else12, !dbg !3538

if.else12:                                        ; preds = %sw.bb6
  %cmp16 = icmp eq i8 %bf.load, 72, !dbg !3539
  br i1 %cmp16, label %return, label %if.else18, !dbg !3541

if.else18:                                        ; preds = %if.else12
  %cmp22 = icmp eq i8 %bf.load, 70, !dbg !3542
  br i1 %cmp22, label %return, label %sw.default, !dbg !3544

sw.default:                                       ; preds = %if.else18, %entry
  br label %return, !dbg !3545

return:                                           ; preds = %if.else18, %if.else12, %sw.bb6, %sw.bb2, %entry, %sw.default, %sw.bb1
  %retval.0 = phi i32 [ 6, %sw.default ], [ 2, %sw.bb1 ], [ 0, %entry ], [ %., %sw.bb2 ], [ 3, %sw.bb6 ], [ 1, %if.else12 ], [ 5, %if.else18 ], !dbg !3546
  ret i32 %retval.0, !dbg !3547
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #7

declare dso_local %struct.ht_identifier* @ht_lookup_with_hash(%struct.ht*, i8*, i64, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @lex_raw_string(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i8* %base, i8* %cur) unnamed_addr #3 !dbg !3548 {
entry:
  %first_buff = alloca %struct._cpp_buff*, align 8
  %last_buff = alloca %struct._cpp_buff*, align 8
  %type96 = alloca i8, align 1
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3552, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !3553, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %base, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 0, metadata !3556, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 0, metadata !3558, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 0, metadata !3560, metadata !DIExpression()), !dbg !3601
  %0 = bitcast %struct._cpp_buff** %first_buff to i8*, !dbg !3602
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #12, !dbg !3602
  call void @llvm.dbg.value(metadata %struct._cpp_buff* null, metadata !3561, metadata !DIExpression()), !dbg !3601
  store %struct._cpp_buff* null, %struct._cpp_buff** %first_buff, align 8, !dbg !3603
  %1 = bitcast %struct._cpp_buff** %last_buff to i8*, !dbg !3602
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #12, !dbg !3602
  call void @llvm.dbg.value(metadata %struct._cpp_buff* null, metadata !3562, metadata !DIExpression()), !dbg !3601
  store %struct._cpp_buff* null, %struct._cpp_buff** %last_buff, align 8, !dbg !3604
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !3605
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !3605
  %notes = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i64 0, i32 5, !dbg !3606
  %3 = load %struct._cpp_line_note*, %struct._cpp_line_note** %notes, align 8, !dbg !3606
  %cur_note = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i64 0, i32 6, !dbg !3607
  %4 = load i32, i32* %cur_note, align 8, !dbg !3607
  %idxprom = zext i32 %4 to i64, !dbg !3608
  %arrayidx = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %3, i64 %idxprom, !dbg !3608
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %arrayidx, metadata !3563, metadata !DIExpression()), !dbg !3601
  %5 = load i8, i8* %base, align 1, !dbg !3609
  %cmp = icmp eq i8 %5, 76, !dbg !3610
  br i1 %cmp, label %cond.end20, label %cond.false, !dbg !3609

cond.false:                                       ; preds = %entry
  %cmp4 = icmp eq i8 %5, 85, !dbg !3611
  br i1 %cmp4, label %cond.end20, label %cond.false7, !dbg !3612

cond.false7:                                      ; preds = %cond.false
  %cmp9 = icmp eq i8 %5, 117, !dbg !3613
  br i1 %cmp9, label %cond.true11, label %cond.end20, !dbg !3614

cond.true11:                                      ; preds = %cond.false7
  %arrayidx12 = getelementptr inbounds i8, i8* %base, i64 1, !dbg !3615
  %6 = load i8, i8* %arrayidx12, align 1, !dbg !3615
  %cmp14 = icmp eq i8 %6, 56, !dbg !3616
  %cond = select i1 %cmp14, i32 65, i32 63, !dbg !3615
  br label %cond.end20, !dbg !3614

cond.end20:                                       ; preds = %cond.false, %cond.false7, %cond.true11, %entry
  %cond21 = phi i32 [ 62, %entry ], [ 64, %cond.false ], [ %cond, %cond.true11 ], [ 61, %cond.false7 ], !dbg !3609
  call void @llvm.dbg.value(metadata i32 %cond21, metadata !3559, metadata !DIExpression()), !dbg !3601
  %add.ptr = getelementptr inbounds i8, i8* %cur, i64 1, !dbg !3617
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3557, metadata !DIExpression()), !dbg !3601
  br label %while.cond, !dbg !3618

while.cond:                                       ; preds = %sw.bb27, %cond.end20
  %indvars.iv = phi i64 [ %indvars.iv.next, %sw.bb27 ], [ 0, %cond.end20 ], !dbg !3601
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3558, metadata !DIExpression()), !dbg !3601
  %exitcond = icmp eq i64 %indvars.iv, 16, !dbg !3619
  br i1 %exitcond, label %while.cond.while.end_crit_edge, label %while.body, !dbg !3618

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %while.cond ], !dbg !3601
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !3558, metadata !DIExpression()), !dbg !3601
  %idxprom28.phi.trans.insert = and i64 %indvars.iv.lcssa, 4294967295, !dbg !3620
  %arrayidx29.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr, i64 %idxprom28.phi.trans.insert, !dbg !3620
  %.pre = load i8, i8* %arrayidx29.phi.trans.insert, align 1, !dbg !3621
  br label %while.end, !dbg !3618

while.body:                                       ; preds = %while.cond
  %arrayidx25 = getelementptr inbounds i8, i8* %add.ptr, i64 %indvars.iv, !dbg !3622
  %7 = load i8, i8* %arrayidx25, align 1, !dbg !3622
  switch i8 %7, label %while.end.loopexit [
    i8 39, label %sw.bb27
    i8 34, label %sw.bb27
    i8 44, label %sw.bb27
    i8 61, label %sw.bb27
    i8 33, label %sw.bb27
    i8 126, label %sw.bb27
    i8 124, label %sw.bb27
    i8 38, label %sw.bb27
    i8 97, label %sw.bb27
    i8 98, label %sw.bb27
    i8 99, label %sw.bb27
    i8 100, label %sw.bb27
    i8 101, label %sw.bb27
    i8 102, label %sw.bb27
    i8 103, label %sw.bb27
    i8 104, label %sw.bb27
    i8 105, label %sw.bb27
    i8 106, label %sw.bb27
    i8 107, label %sw.bb27
    i8 108, label %sw.bb27
    i8 109, label %sw.bb27
    i8 110, label %sw.bb27
    i8 111, label %sw.bb27
    i8 112, label %sw.bb27
    i8 113, label %sw.bb27
    i8 114, label %sw.bb27
    i8 115, label %sw.bb27
    i8 116, label %sw.bb27
    i8 117, label %sw.bb27
    i8 118, label %sw.bb27
    i8 119, label %sw.bb27
    i8 120, label %sw.bb27
    i8 121, label %sw.bb27
    i8 122, label %sw.bb27
    i8 65, label %sw.bb27
    i8 66, label %sw.bb27
    i8 67, label %sw.bb27
    i8 68, label %sw.bb27
    i8 69, label %sw.bb27
    i8 70, label %sw.bb27
    i8 71, label %sw.bb27
    i8 72, label %sw.bb27
    i8 73, label %sw.bb27
    i8 74, label %sw.bb27
    i8 75, label %sw.bb27
    i8 76, label %sw.bb27
    i8 77, label %sw.bb27
    i8 78, label %sw.bb27
    i8 79, label %sw.bb27
    i8 80, label %sw.bb27
    i8 81, label %sw.bb27
    i8 82, label %sw.bb27
    i8 83, label %sw.bb27
    i8 84, label %sw.bb27
    i8 85, label %sw.bb27
    i8 86, label %sw.bb27
    i8 87, label %sw.bb27
    i8 88, label %sw.bb27
    i8 89, label %sw.bb27
    i8 90, label %sw.bb27
    i8 48, label %sw.bb27
    i8 49, label %sw.bb27
    i8 50, label %sw.bb27
    i8 51, label %sw.bb27
    i8 52, label %sw.bb27
    i8 53, label %sw.bb27
    i8 54, label %sw.bb27
    i8 55, label %sw.bb27
    i8 56, label %sw.bb27
    i8 57, label %sw.bb27
    i8 95, label %sw.bb27
    i8 123, label %sw.bb27
    i8 125, label %sw.bb27
    i8 35, label %sw.bb27
    i8 91, label %sw.bb27
    i8 93, label %sw.bb27
    i8 60, label %sw.bb27
    i8 62, label %sw.bb27
    i8 37, label %sw.bb27
    i8 58, label %sw.bb27
    i8 59, label %sw.bb27
    i8 46, label %sw.bb27
    i8 63, label %sw.bb27
    i8 42, label %sw.bb27
    i8 43, label %sw.bb27
    i8 45, label %sw.bb27
    i8 47, label %sw.bb27
    i8 94, label %sw.bb27
  ], !dbg !3624

sw.bb27:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3625
  call void @llvm.dbg.value(metadata i32 undef, metadata !3558, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3601
  br label %while.cond, !dbg !3627, !llvm.loop !3628

while.end.loopexit:                               ; preds = %while.body
  %.lcssa72 = phi i8 [ %7, %while.body ], !dbg !3622
  %indvars.iv.lcssa70 = phi i64 [ %indvars.iv, %while.body ], !dbg !3601
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa70, metadata !3558, metadata !DIExpression()), !dbg !3601
  br label %while.end, !dbg !3621

while.end:                                        ; preds = %while.end.loopexit, %while.cond.while.end_crit_edge
  %indvars.iv71 = phi i64 [ %indvars.iv.lcssa, %while.cond.while.end_crit_edge ], [ %indvars.iv.lcssa70, %while.end.loopexit ]
  %idxprom28.pre-phi = phi i64 [ %idxprom28.phi.trans.insert, %while.cond.while.end_crit_edge ], [ %indvars.iv.lcssa70, %while.end.loopexit ], !dbg !3621
  %8 = phi i8 [ %.pre, %while.cond.while.end_crit_edge ], [ %.lcssa72, %while.end.loopexit ], !dbg !3621
  call void @llvm.dbg.value(metadata i32 undef, metadata !3558, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 undef, metadata !3558, metadata !DIExpression()), !dbg !3601
  %arrayidx29 = getelementptr inbounds i8, i8* %add.ptr, i64 %idxprom28.pre-phi, !dbg !3621
  %cmp31 = icmp eq i8 %8, 40, !dbg !3630
  br i1 %cmp31, label %if.end52, label %if.then, !dbg !3631

if.then:                                          ; preds = %while.end
  %raw_prefix_len.048 = trunc i64 %indvars.iv71 to i32, !dbg !3601
  call void @llvm.dbg.value(metadata i32 %raw_prefix_len.048, metadata !3558, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %raw_prefix_len.048, metadata !3558, metadata !DIExpression()), !dbg !3601
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i64 0, i32 1, !dbg !3632
  %9 = bitcast i8** %line_base to i64*, !dbg !3632
  %10 = load i64, i64* %9, align 8, !dbg !3632
  %sub.ptr.lhs.cast = ptrtoint i8* %arrayidx29 to i64, !dbg !3632
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %10, !dbg !3632
  %11 = trunc i64 %sub.ptr.sub to i32, !dbg !3632
  %conv35 = add i32 %11, 1, !dbg !3632
  call void @llvm.dbg.value(metadata i32 %conv35, metadata !3564, metadata !DIExpression()), !dbg !3633
  %cmp36 = icmp eq i32 %raw_prefix_len.048, 16, !dbg !3634
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 0, !dbg !3636
  %12 = load i32, i32* %src_loc, align 8, !dbg !3636
  br i1 %cmp36, label %if.then38, label %if.else, !dbg !3637

if.then38:                                        ; preds = %if.then
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %12, i32 %conv35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !3638
  br label %if.end, !dbg !3638

if.else:                                          ; preds = %if.then
  %conv42 = zext i8 %8 to i32, !dbg !3639
  %call43 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %12, i32 %conv35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0), i32 %conv42) #8, !dbg !3640
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then38
  %13 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !3641
  %cur46 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %13, i64 0, i32 0, !dbg !3642
  store i8* %cur, i8** %cur46, align 8, !dbg !3643
  %sub.ptr.lhs.cast48 = ptrtoint i8* %cur to i64, !dbg !3644
  %sub.ptr.rhs.cast49 = ptrtoint i8* %base to i64, !dbg !3644
  %sub.ptr.sub50 = sub i64 %sub.ptr.lhs.cast48, %sub.ptr.rhs.cast49, !dbg !3644
  %conv51 = trunc i64 %sub.ptr.sub50 to i32, !dbg !3645
  tail call fastcc void @create_literal(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i8* %base, i32 %conv51, i32 60) #9, !dbg !3646
  br label %cleanup361

if.end52:                                         ; preds = %while.end
  %add.ptr55 = getelementptr inbounds i8, i8* %arrayidx29, i64 1, !dbg !3647
  call void @llvm.dbg.value(metadata i8* %add.ptr55, metadata !3555, metadata !DIExpression()), !dbg !3601
  %trigraphs = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 7, !dbg !3648
  %add152 = add nuw i64 %indvars.iv71, 1, !dbg !3650
  %idxprom153 = and i64 %add152, 4294967295, !dbg !3650
  %add159 = add nuw i64 %indvars.iv71, 2, !dbg !3653
  %idx.ext160 = and i64 %add159, 4294967295, !dbg !3653
  %line_table280 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !3655
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !3656
  %parsing_args = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 9, !dbg !3656
  %in_deferred_pragma = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 12, !dbg !3656
  %src_loc208 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 0, !dbg !3658
  %type248 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 1, !dbg !3660
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 2, !dbg !3660
  br label %for.cond, !dbg !3661

for.cond:                                         ; preds = %cleanup299, %if.end52
  %note.0 = phi %struct._cpp_line_note* [ %arrayidx, %if.end52 ], [ %note.7, %cleanup299 ], !dbg !3601
  %total_len.0 = phi i64 [ 0, %if.end52 ], [ %total_len.7, %cleanup299 ], !dbg !3601
  %type.0 = phi i32 [ %cond21, %if.end52 ], [ %type.1, %cleanup299 ], !dbg !3662
  %saw_NUL.0 = phi i32 [ 0, %if.end52 ], [ %saw_NUL.4, %cleanup299 ], !dbg !3663
  %cur.addr.0 = phi i8* [ %add.ptr55, %if.end52 ], [ %cur.addr.6, %cleanup299 ], !dbg !3664
  %base.addr.0 = phi i8* [ %base, %if.end52 ], [ %base.addr.6, %cleanup299 ]
  call void @llvm.dbg.value(metadata i8* %base.addr.0, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.0, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %saw_NUL.0, metadata !3556, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %type.0, metadata !3559, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.0, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.0, metadata !3563, metadata !DIExpression()), !dbg !3601
  br label %while.cond56, !dbg !3665

while.cond56:                                     ; preds = %while.body59, %for.cond
  %note.1 = phi %struct._cpp_line_note* [ %note.0, %for.cond ], [ %incdec.ptr, %while.body59 ], !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.1, metadata !3563, metadata !DIExpression()), !dbg !3601
  %pos = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %note.1, i64 0, i32 0, !dbg !3666
  %14 = load i8*, i8** %pos, align 8, !dbg !3666
  %cmp57 = icmp ult i8* %14, %cur.addr.0, !dbg !3667
  br i1 %cmp57, label %while.body59, label %for.cond61.preheader, !dbg !3665

for.cond61.preheader:                             ; preds = %while.cond56
  %note.1.lcssa = phi %struct._cpp_line_note* [ %note.1, %while.cond56 ], !dbg !3601
  %.lcssa = phi i8* [ %14, %while.cond56 ], !dbg !3666
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.1.lcssa, metadata !3563, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.1.lcssa, metadata !3563, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.1.lcssa, metadata !3563, metadata !DIExpression()), !dbg !3601
  br label %for.cond61, !dbg !3668

while.body59:                                     ; preds = %while.cond56
  %incdec.ptr = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %note.1, i64 1, !dbg !3669
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %incdec.ptr, metadata !3563, metadata !DIExpression()), !dbg !3601
  br label %while.cond56, !dbg !3665, !llvm.loop !3670

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc
  %15 = phi i8* [ %.pre24, %for.inc ], [ %.lcssa, %for.cond61.preheader ], !dbg !3672
  %note.2 = phi %struct._cpp_line_note* [ %incdec.ptr173, %for.inc ], [ %note.1.lcssa, %for.cond61.preheader ], !dbg !3601
  %total_len.1 = phi i64 [ %total_len.5, %for.inc ], [ %total_len.0, %for.cond61.preheader ], !dbg !3601
  %cur.addr.1 = phi i8* [ %cur.addr.4, %for.inc ], [ %cur.addr.0, %for.cond61.preheader ], !dbg !3664
  %base.addr.1 = phi i8* [ %base.addr.4, %for.inc ], [ %base.addr.0, %for.cond61.preheader ]
  call void @llvm.dbg.value(metadata i8* %base.addr.1, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.1, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.1, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.2, metadata !3563, metadata !DIExpression()), !dbg !3601
  %cmp63 = icmp eq i8* %15, %cur.addr.1, !dbg !3673
  br i1 %cmp63, label %for.body, label %for.end, !dbg !3668

for.body:                                         ; preds = %for.cond61
  %type65 = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %note.2, i64 0, i32 1, !dbg !3674
  %16 = load i32, i32* %type65, align 8, !dbg !3674
  switch i32 %16, label %sw.default91 [
    i32 92, label %do.body
    i32 32, label %do.body
    i32 0, label %for.inc
  ], !dbg !3675

do.body:                                          ; preds = %for.body, %for.body
  %sub.ptr.lhs.cast67 = ptrtoint i8* %15 to i64, !dbg !3676
  %sub.ptr.rhs.cast68 = ptrtoint i8* %base.addr.1 to i64, !dbg !3676
  %sub.ptr.sub69 = sub i64 %sub.ptr.lhs.cast67, %sub.ptr.rhs.cast68, !dbg !3676
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %first_buff, metadata !3561, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %last_buff, metadata !3562, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call fastcc void @bufring_append(%struct.cpp_reader* %pfile, i8* %base.addr.1, i64 %sub.ptr.sub69, %struct._cpp_buff** nonnull %first_buff, %struct._cpp_buff** nonnull %last_buff) #9, !dbg !3676
  %add73 = add i64 %total_len.1, %sub.ptr.sub69, !dbg !3676
  call void @llvm.dbg.value(metadata i64 %add73, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.1, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %first_buff, metadata !3561, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %last_buff, metadata !3562, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call fastcc void @bufring_append(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i64 1, %struct._cpp_buff** nonnull %first_buff, %struct._cpp_buff** nonnull %last_buff) #9, !dbg !3678
  %add75 = add i64 %add73, 1, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %add75, metadata !3560, metadata !DIExpression()), !dbg !3601
  br label %after_backslash, !dbg !3678

after_backslash:                                  ; preds = %cleanup, %do.body
  %note.3 = phi %struct._cpp_line_note* [ %note.4, %cleanup ], [ %note.2, %do.body ], !dbg !3601
  %total_len.2 = phi i64 [ %total_len.4, %cleanup ], [ %add75, %do.body ], !dbg !3680
  %cur.addr.2 = phi i8* [ %cur.addr.3, %cleanup ], [ %15, %do.body ], !dbg !3664
  %base.addr.2 = phi i8* [ %base.addr.3, %cleanup ], [ %15, %do.body ], !dbg !3680
  call void @llvm.dbg.value(metadata i8* %base.addr.2, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.2, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.2, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.3, metadata !3563, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.label(metadata !3599), !dbg !3681
  %type78 = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %note.3, i64 0, i32 1, !dbg !3682
  %17 = load i32, i32* %type78, align 8, !dbg !3682
  %cmp79 = icmp eq i32 %17, 32, !dbg !3684
  br i1 %cmp79, label %do.body82, label %do.body87, !dbg !3685

do.body82:                                        ; preds = %after_backslash
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %first_buff, metadata !3561, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %last_buff, metadata !3562, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call fastcc void @bufring_append(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i64 1, %struct._cpp_buff** nonnull %first_buff, %struct._cpp_buff** nonnull %last_buff) #9, !dbg !3686
  %add83 = add i64 %total_len.2, 1, !dbg !3686
  call void @llvm.dbg.value(metadata i64 %add83, metadata !3560, metadata !DIExpression()), !dbg !3601
  br label %do.body87, !dbg !3689

do.body87:                                        ; preds = %after_backslash, %do.body82
  %total_len.3 = phi i64 [ %add83, %do.body82 ], [ %total_len.2, %after_backslash ], !dbg !3680
  call void @llvm.dbg.value(metadata i64 %total_len.3, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %first_buff, metadata !3561, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %last_buff, metadata !3562, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call fastcc void @bufring_append(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i64 1, %struct._cpp_buff** nonnull %first_buff, %struct._cpp_buff** nonnull %last_buff) #9, !dbg !3690
  %add88 = add i64 %total_len.3, 1, !dbg !3690
  call void @llvm.dbg.value(metadata i64 %add88, metadata !3560, metadata !DIExpression()), !dbg !3601
  br label %for.inc, !dbg !3692

sw.default91:                                     ; preds = %for.body
  %idxprom93 = zext i32 %16 to i64, !dbg !3693
  %arrayidx94 = getelementptr inbounds [256 x i8], [256 x i8]* @_cpp_trigraph_map, i64 0, i64 %idxprom93, !dbg !3693
  %18 = load i8, i8* %arrayidx94, align 1, !dbg !3693
  %tobool = icmp eq i8 %18, 0, !dbg !3693
  br i1 %tobool, label %if.else170, label %if.then95, !dbg !3694

if.then95:                                        ; preds = %sw.default91
  call void @llvm.dbg.value(metadata i8* %type96, metadata !3571, metadata !DIExpression(DW_OP_deref)), !dbg !3695
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %type96) #12, !dbg !3696
  %conv98 = trunc i32 %16 to i8, !dbg !3697
  call void @llvm.dbg.value(metadata i8 %conv98, metadata !3571, metadata !DIExpression()), !dbg !3695
  store i8 %conv98, i8* %type96, align 1, !dbg !3698
  store i32 0, i32* %type65, align 8, !dbg !3699
  %19 = load i8, i8* %trigraphs, align 1, !dbg !3700
  %tobool100 = icmp eq i8 %19, 0, !dbg !3700
  br i1 %tobool100, label %cleanup, label %do.body103, !dbg !3701

do.body103:                                       ; preds = %if.then95
  %sub.ptr.lhs.cast104 = ptrtoint i8* %15 to i64, !dbg !3702
  %sub.ptr.rhs.cast105 = ptrtoint i8* %base.addr.1 to i64, !dbg !3702
  %sub.ptr.sub106 = sub i64 %sub.ptr.lhs.cast104, %sub.ptr.rhs.cast105, !dbg !3702
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %first_buff, metadata !3561, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %last_buff, metadata !3562, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call fastcc void @bufring_append(%struct.cpp_reader* %pfile, i8* %base.addr.1, i64 %sub.ptr.sub106, %struct._cpp_buff** nonnull %first_buff, %struct._cpp_buff** nonnull %last_buff) #9, !dbg !3702
  %add110 = add i64 %total_len.1, %sub.ptr.sub106, !dbg !3702
  call void @llvm.dbg.value(metadata i64 %add110, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.1, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %first_buff, metadata !3561, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %last_buff, metadata !3562, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call fastcc void @bufring_append(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i64 2, %struct._cpp_buff** nonnull %first_buff, %struct._cpp_buff** nonnull %last_buff) #9, !dbg !3704
  %add114 = add i64 %add110, 2, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %add114, metadata !3560, metadata !DIExpression()), !dbg !3601
  %20 = load i8, i8* %type96, align 1, !dbg !3706
  call void @llvm.dbg.value(metadata i8 %20, metadata !3571, metadata !DIExpression()), !dbg !3695
  %cmp118 = icmp eq i8 %20, 47, !dbg !3707
  br i1 %cmp118, label %land.lhs.true, label %if.else141, !dbg !3708

land.lhs.true:                                    ; preds = %do.body103
  %pos121 = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %note.2, i64 1, i32 0, !dbg !3709
  %21 = load i8*, i8** %pos121, align 8, !dbg !3709
  %cmp122 = icmp eq i8* %21, %15, !dbg !3710
  br i1 %cmp122, label %if.then124, label %if.else141, !dbg !3711

if.then124:                                       ; preds = %land.lhs.true
  %type126 = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %note.2, i64 1, i32 1, !dbg !3712
  %22 = load i32, i32* %type126, align 8, !dbg !3712
  %cmp127 = icmp eq i32 %22, 92, !dbg !3715
  br i1 %cmp127, label %do.body136, label %land.lhs.true129, !dbg !3716

land.lhs.true129:                                 ; preds = %if.then124
  %cmp132 = icmp eq i32 %22, 32, !dbg !3717
  br i1 %cmp132, label %do.body136, label %if.then134, !dbg !3718

if.then134:                                       ; preds = %land.lhs.true129
  call void @abort() #11, !dbg !3719
  unreachable, !dbg !3719

do.body136:                                       ; preds = %land.lhs.true129, %if.then124
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %first_buff, metadata !3561, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %last_buff, metadata !3562, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call fastcc void @bufring_append(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i64 1, %struct._cpp_buff** nonnull %first_buff, %struct._cpp_buff** nonnull %last_buff) #9, !dbg !3720
  %add137 = add i64 %add110, 3, !dbg !3720
  call void @llvm.dbg.value(metadata i64 %add137, metadata !3560, metadata !DIExpression()), !dbg !3601
  %incdec.ptr140 = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %note.2, i64 1, !dbg !3722
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %incdec.ptr140, metadata !3563, metadata !DIExpression()), !dbg !3601
  br label %cleanup, !dbg !3723

if.else141:                                       ; preds = %land.lhs.true, %do.body103
  call void @llvm.dbg.value(metadata i8 %20, metadata !3571, metadata !DIExpression()), !dbg !3695
  %cmp143 = icmp eq i8 %20, 41, !dbg !3724
  br i1 %cmp143, label %land.lhs.true145, label %if.else162, !dbg !3725

land.lhs.true145:                                 ; preds = %if.else141
  %add.ptr146 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !3726
  %call148 = call i32 @strncmp(i8* nonnull %add.ptr146, i8* nonnull %add.ptr, i64 %idxprom28.pre-phi) #10, !dbg !3727
  %cmp149 = icmp eq i32 %call148, 0, !dbg !3728
  br i1 %cmp149, label %land.lhs.true151, label %if.else162, !dbg !3729

land.lhs.true151:                                 ; preds = %land.lhs.true145
  %arrayidx154 = getelementptr inbounds i8, i8* %15, i64 %idxprom153, !dbg !3730
  %23 = load i8, i8* %arrayidx154, align 1, !dbg !3730
  %cmp156 = icmp eq i8 %23, 34, !dbg !3731
  br i1 %cmp156, label %if.then158, label %if.else162, !dbg !3732

if.then158:                                       ; preds = %land.lhs.true151
  %add.ptr161 = getelementptr inbounds i8, i8* %15, i64 %idx.ext160, !dbg !3733
  call void @llvm.dbg.value(metadata i8* %add.ptr161, metadata !3555, metadata !DIExpression()), !dbg !3601
  br label %cleanup, !dbg !3734

if.else162:                                       ; preds = %land.lhs.true151, %land.lhs.true145, %if.else141
  %incdec.ptr163 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !3735
  call void @llvm.dbg.value(metadata i8* %incdec.ptr163, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %incdec.ptr163, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %first_buff, metadata !3561, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %last_buff, metadata !3562, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %type96, metadata !3571, metadata !DIExpression(DW_OP_deref)), !dbg !3695
  call fastcc void @bufring_append(%struct.cpp_reader* %pfile, i8* nonnull %type96, i64 1, %struct._cpp_buff** nonnull %first_buff, %struct._cpp_buff** nonnull %last_buff) #9, !dbg !3737
  %add165 = add i64 %add110, 3, !dbg !3737
  call void @llvm.dbg.value(metadata i64 %add165, metadata !3560, metadata !DIExpression()), !dbg !3601
  br label %cleanup, !dbg !3739

cleanup:                                          ; preds = %if.then95, %if.then158, %if.else162, %do.body136
  %note.4 = phi %struct._cpp_line_note* [ %incdec.ptr140, %do.body136 ], [ %note.2, %if.then158 ], [ %note.2, %if.else162 ], [ %note.2, %if.then95 ], !dbg !3601
  %total_len.4 = phi i64 [ %add137, %do.body136 ], [ %add114, %if.then158 ], [ %add165, %if.else162 ], [ %total_len.1, %if.then95 ], !dbg !3601
  %cleanup.dest.slot.0 = phi i32 [ 17, %do.body136 ], [ 28, %if.then158 ], [ 0, %if.else162 ], [ 12, %if.then95 ]
  %cur.addr.3 = phi i8* [ %15, %do.body136 ], [ %add.ptr161, %if.then158 ], [ %incdec.ptr163, %if.else162 ], [ %15, %if.then95 ], !dbg !3601
  %base.addr.3 = phi i8* [ %15, %do.body136 ], [ %15, %if.then158 ], [ %incdec.ptr163, %if.else162 ], [ %base.addr.1, %if.then95 ]
  call void @llvm.dbg.value(metadata i8* %base.addr.3, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.3, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.4, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.4, metadata !3563, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %type96, metadata !3571, metadata !DIExpression(DW_OP_deref)), !dbg !3695
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %type96) #12, !dbg !3739
  switch i32 %cleanup.dest.slot.0, label %cleanup299.loopexit [
    i32 0, label %for.inc
    i32 12, label %for.inc
    i32 17, label %after_backslash
  ]

if.else170:                                       ; preds = %sw.default91
  call void @abort() #11, !dbg !3740
  unreachable, !dbg !3740

for.inc:                                          ; preds = %do.body87, %for.body, %cleanup, %cleanup
  %note.5 = phi %struct._cpp_line_note* [ %note.3, %do.body87 ], [ %note.4, %cleanup ], [ %note.2, %for.body ], [ %note.4, %cleanup ], !dbg !3601
  %total_len.5 = phi i64 [ %add88, %do.body87 ], [ %total_len.4, %cleanup ], [ %total_len.1, %for.body ], [ %total_len.4, %cleanup ], !dbg !3601
  %cur.addr.4 = phi i8* [ %cur.addr.2, %do.body87 ], [ %cur.addr.3, %cleanup ], [ %15, %for.body ], [ %cur.addr.3, %cleanup ], !dbg !3664
  %base.addr.4 = phi i8* [ %base.addr.2, %do.body87 ], [ %base.addr.3, %cleanup ], [ %base.addr.1, %for.body ], [ %base.addr.3, %cleanup ]
  call void @llvm.dbg.value(metadata i8* %base.addr.4, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.4, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.5, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.5, metadata !3563, metadata !DIExpression()), !dbg !3601
  %incdec.ptr173 = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %note.5, i64 1, !dbg !3741
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %incdec.ptr173, metadata !3563, metadata !DIExpression()), !dbg !3601
  %pos62.phi.trans.insert = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %incdec.ptr173, i64 0, i32 0, !dbg !3742
  %.pre24 = load i8*, i8** %pos62.phi.trans.insert, align 8, !dbg !3672
  br label %for.cond61, !dbg !3743, !llvm.loop !3744

for.end:                                          ; preds = %for.cond61
  %note.2.lcssa = phi %struct._cpp_line_note* [ %note.2, %for.cond61 ], !dbg !3601
  %total_len.1.lcssa = phi i64 [ %total_len.1, %for.cond61 ], !dbg !3601
  %cur.addr.1.lcssa = phi i8* [ %cur.addr.1, %for.cond61 ], !dbg !3664
  %base.addr.1.lcssa = phi i8* [ %base.addr.1, %for.cond61 ]
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.2.lcssa, metadata !3563, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.1.lcssa, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.1.lcssa, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %base.addr.1.lcssa, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.2.lcssa, metadata !3563, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.1.lcssa, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.1.lcssa, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %base.addr.1.lcssa, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.2.lcssa, metadata !3563, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.1.lcssa, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.1.lcssa, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %base.addr.1.lcssa, metadata !3554, metadata !DIExpression()), !dbg !3601
  %incdec.ptr174 = getelementptr inbounds i8, i8* %cur.addr.1.lcssa, i64 1, !dbg !3746
  call void @llvm.dbg.value(metadata i8* %incdec.ptr174, metadata !3555, metadata !DIExpression()), !dbg !3601
  %24 = load i8, i8* %cur.addr.1.lcssa, align 1, !dbg !3747
  call void @llvm.dbg.value(metadata i8 %24, metadata !3567, metadata !DIExpression()), !dbg !3748
  switch i8 %24, label %cleanup299 [
    i8 41, label %land.lhs.true178
    i8 10, label %if.then196
    i8 0, label %land.lhs.true270
  ], !dbg !3749

land.lhs.true178:                                 ; preds = %for.end
  %call180 = call i32 @strncmp(i8* nonnull %incdec.ptr174, i8* nonnull %add.ptr, i64 %idxprom28.pre-phi) #10, !dbg !3750
  %cmp181 = icmp eq i32 %call180, 0, !dbg !3751
  br i1 %cmp181, label %land.lhs.true183, label %if.else193, !dbg !3752

land.lhs.true183:                                 ; preds = %land.lhs.true178
  %arrayidx185 = getelementptr inbounds i8, i8* %incdec.ptr174, i64 %idxprom28.pre-phi, !dbg !3753
  %25 = load i8, i8* %arrayidx185, align 1, !dbg !3753
  %cmp187 = icmp eq i8 %25, 34, !dbg !3754
  br i1 %cmp187, label %if.then189, label %if.else193, !dbg !3755

if.then189:                                       ; preds = %land.lhs.true183
  %add.ptr192 = getelementptr inbounds i8, i8* %incdec.ptr174, i64 %idxprom153, !dbg !3756
  call void @llvm.dbg.value(metadata i8* %add.ptr192, metadata !3555, metadata !DIExpression()), !dbg !3601
  br label %cleanup299, !dbg !3758

if.else193:                                       ; preds = %land.lhs.true183, %land.lhs.true178
  switch i8 41, label %cleanup299 [
    i8 10, label %if.then196
    i8 0, label %land.lhs.true270
  ], !dbg !3759

if.then196:                                       ; preds = %for.end, %if.else193
  %note.264 = phi %struct._cpp_line_note* [ %note.2.lcssa, %for.end ], [ %note.2.lcssa, %if.else193 ]
  %total_len.160 = phi i64 [ %total_len.1.lcssa, %for.end ], [ %total_len.1.lcssa, %if.else193 ]
  %base.addr.153 = phi i8* [ %base.addr.1.lcssa, %for.end ], [ %base.addr.1.lcssa, %if.else193 ]
  %26 = load i8, i8* %in_directive, align 8, !dbg !3760
  %tobool198 = icmp eq i8 %26, 0, !dbg !3761
  br i1 %tobool198, label %lor.lhs.false, label %if.then206, !dbg !3762

lor.lhs.false:                                    ; preds = %if.then196
  %27 = load i8, i8* %parsing_args, align 1, !dbg !3763
  %tobool201 = icmp eq i8 %27, 0, !dbg !3764
  br i1 %tobool201, label %lor.lhs.false202, label %if.then206, !dbg !3765

lor.lhs.false202:                                 ; preds = %lor.lhs.false
  %28 = load i8, i8* %in_deferred_pragma, align 8, !dbg !3766
  %tobool205 = icmp eq i8 %28, 0, !dbg !3767
  br i1 %tobool205, label %do.body211, label %if.then206, !dbg !3768

if.then206:                                       ; preds = %lor.lhs.false202, %lor.lhs.false, %if.then196
  call void @llvm.dbg.value(metadata i8* %cur.addr.1.lcssa, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 60, metadata !3559, metadata !DIExpression()), !dbg !3601
  %29 = load i32, i32* %src_loc208, align 8, !dbg !3769
  %call209 = call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %29, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !3770
  br label %cleanup299, !dbg !3771

do.body211:                                       ; preds = %lor.lhs.false202
  %sub.ptr.lhs.cast212 = ptrtoint i8* %incdec.ptr174 to i64, !dbg !3772
  %sub.ptr.rhs.cast213 = ptrtoint i8* %base.addr.153 to i64, !dbg !3772
  %sub.ptr.sub214 = sub i64 %sub.ptr.lhs.cast212, %sub.ptr.rhs.cast213, !dbg !3772
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %first_buff, metadata !3561, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %last_buff, metadata !3562, metadata !DIExpression(DW_OP_deref)), !dbg !3601
  call fastcc void @bufring_append(%struct.cpp_reader* %pfile, i8* %base.addr.153, i64 %sub.ptr.sub214, %struct._cpp_buff** nonnull %first_buff, %struct._cpp_buff** nonnull %last_buff) #9, !dbg !3772
  %add218 = add i64 %total_len.160, %sub.ptr.sub214, !dbg !3772
  call void @llvm.dbg.value(metadata i64 %add218, metadata !3560, metadata !DIExpression()), !dbg !3601
  %30 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !3774
  %cur222 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %30, i64 0, i32 0, !dbg !3775
  %31 = load i8*, i8** %cur222, align 8, !dbg !3775
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %30, i64 0, i32 4, !dbg !3776
  %32 = load i8*, i8** %rlimit, align 8, !dbg !3776
  %cmp224 = icmp ult i8* %31, %32, !dbg !3777
  br i1 %cmp224, label %do.body227, label %if.end238, !dbg !3778

do.body227:                                       ; preds = %do.body211
  %33 = load %struct.line_maps*, %struct.line_maps** %line_table280, align 8, !dbg !3779
  call void @llvm.dbg.value(metadata %struct.line_maps* %33, metadata !3578, metadata !DIExpression()), !dbg !3780
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %33, i64 0, i32 0, !dbg !3779
  %34 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !3779
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %33, i64 0, i32 2, !dbg !3779
  %35 = load i32, i32* %used, align 4, !dbg !3779
  %sub = add i32 %35, -1, !dbg !3779
  %idxprom229 = zext i32 %sub to i64, !dbg !3779
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !3584, metadata !DIExpression()), !dbg !3780
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %33, i64 0, i32 8, !dbg !3779
  %36 = load i32, i32* %highest_line, align 4, !dbg !3779
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %34, i64 %idxprom229, i32 2, !dbg !3779
  %37 = load i32, i32* %start_location, align 4, !dbg !3779
  %sub231 = sub i32 %36, %37, !dbg !3779
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %34, i64 %idxprom229, i32 6, !dbg !3779
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !3779
  %bf.cast = zext i8 %bf.load to i32, !dbg !3779
  %shr = lshr i32 %sub231, %bf.cast, !dbg !3779
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %34, i64 %idxprom229, i32 1, !dbg !3779
  %38 = load i32, i32* %to_line, align 8, !dbg !3779
  %add232 = add i32 %shr, %38, !dbg !3779
  call void @llvm.dbg.value(metadata i32 %add232, metadata !3585, metadata !DIExpression()), !dbg !3780
  %add234 = add i32 %add232, 1, !dbg !3779
  %call235 = call i32 @linemap_line_start(%struct.line_maps* %33, i32 %add234, i32 0) #8, !dbg !3779
  %.pre25 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !3781
  br label %if.end238, !dbg !3779

if.end238:                                        ; preds = %do.body227, %do.body211
  %39 = phi %struct.cpp_buffer* [ %.pre25, %do.body227 ], [ %30, %do.body211 ], !dbg !3781
  %need_line = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %39, i64 0, i32 13, !dbg !3782
  store i8 1, i8* %need_line, align 8, !dbg !3783
  %40 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !3784
  %cur242 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %40, i64 0, i32 0, !dbg !3785
  store i8* %cur.addr.1.lcssa, i8** %cur242, align 8, !dbg !3786
  call void @_cpp_process_line_notes(%struct.cpp_reader* %pfile, i32 0) #9, !dbg !3787
  %call243 = call zeroext i8 @_cpp_get_fresh_line(%struct.cpp_reader* %pfile) #9, !dbg !3788
  %tobool244 = icmp eq i8 %call243, 0, !dbg !3788
  br i1 %tobool244, label %if.then245, label %if.end258, !dbg !3789

if.then245:                                       ; preds = %if.end238
  %41 = load i32, i32* %src_loc208, align 8, !dbg !3790
  call void @llvm.dbg.value(metadata i32 %41, metadata !3586, metadata !DIExpression()), !dbg !3660
  store i8 22, i8* %type248, align 4, !dbg !3791
  %42 = load %struct.line_maps*, %struct.line_maps** %line_table280, align 8, !dbg !3792
  %highest_line250 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %42, i64 0, i32 8, !dbg !3793
  %43 = load i32, i32* %highest_line250, align 4, !dbg !3793
  store i32 %43, i32* %src_loc208, align 8, !dbg !3794
  store i16 64, i16* %flags, align 2, !dbg !3795
  %44 = load %struct._cpp_buff*, %struct._cpp_buff** %first_buff, align 8, !dbg !3796
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %44, metadata !3561, metadata !DIExpression()), !dbg !3601
  %cmp252 = icmp eq %struct._cpp_buff* %44, null, !dbg !3798
  br i1 %cmp252, label %if.end255, label %if.then254, !dbg !3799

if.then254:                                       ; preds = %if.then245
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %44, metadata !3561, metadata !DIExpression()), !dbg !3601
  call void @_cpp_release_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* nonnull %44) #9, !dbg !3800
  br label %if.end255, !dbg !3800

if.end255:                                        ; preds = %if.then245, %if.then254
  %call256 = call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %41, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !3801
  br label %cleanup299

if.end258:                                        ; preds = %if.end238
  %45 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !3802
  %cur260 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %45, i64 0, i32 0, !dbg !3803
  %46 = load i8*, i8** %cur260, align 8, !dbg !3803
  call void @llvm.dbg.value(metadata i8* %46, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %46, metadata !3555, metadata !DIExpression()), !dbg !3601
  %notes262 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %45, i64 0, i32 5, !dbg !3804
  %47 = load %struct._cpp_line_note*, %struct._cpp_line_note** %notes262, align 8, !dbg !3804
  %cur_note264 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %45, i64 0, i32 6, !dbg !3805
  %48 = load i32, i32* %cur_note264, align 8, !dbg !3805
  %idxprom265 = zext i32 %48 to i64, !dbg !3806
  %arrayidx266 = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %47, i64 %idxprom265, !dbg !3806
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %arrayidx266, metadata !3563, metadata !DIExpression()), !dbg !3601
  br label %cleanup299, !dbg !3807

land.lhs.true270:                                 ; preds = %for.end, %if.else193
  %tobool271 = icmp eq i32 %saw_NUL.0, 0, !dbg !3808
  br i1 %tobool271, label %do.body273, label %cleanup299, !dbg !3809

do.body273:                                       ; preds = %land.lhs.true270
  %49 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !3810
  %line_base275 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %49, i64 0, i32 1, !dbg !3810
  %50 = bitcast i8** %line_base275 to i64*, !dbg !3810
  %51 = load i64, i64* %50, align 8, !dbg !3810
  %sub.ptr.lhs.cast276 = ptrtoint i8* %incdec.ptr174 to i64, !dbg !3810
  %sub.ptr.sub278 = sub i64 %sub.ptr.lhs.cast276, %51, !dbg !3810
  %conv279 = trunc i64 %sub.ptr.sub278 to i32, !dbg !3810
  call void @llvm.dbg.value(metadata i32 %conv279, metadata !3589, metadata !DIExpression()), !dbg !3655
  %52 = load %struct.line_maps*, %struct.line_maps** %line_table280, align 8, !dbg !3810
  call void @llvm.dbg.value(metadata %struct.line_maps* %52, metadata !3592, metadata !DIExpression()), !dbg !3655
  %max_column_hint = getelementptr inbounds %struct.line_maps, %struct.line_maps* %52, i64 0, i32 9, !dbg !3811
  %53 = load i32, i32* %max_column_hint, align 8, !dbg !3811
  %cmp281 = icmp ugt i32 %53, %conv279, !dbg !3811
  br i1 %cmp281, label %if.else285, label %if.then283, !dbg !3810

if.then283:                                       ; preds = %do.body273
  %call284 = call i32 @linemap_position_for_column(%struct.line_maps* %52, i32 %conv279) #8, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %call284, metadata !3556, metadata !DIExpression()), !dbg !3601
  br label %cleanup299, !dbg !3811

if.else285:                                       ; preds = %do.body273
  %highest_line286 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %52, i64 0, i32 8, !dbg !3812
  %54 = load i32, i32* %highest_line286, align 4, !dbg !3812
  call void @llvm.dbg.value(metadata i32 %54, metadata !3593, metadata !DIExpression()), !dbg !3813
  %add287 = add i32 %54, %conv279, !dbg !3812
  call void @llvm.dbg.value(metadata i32 %add287, metadata !3593, metadata !DIExpression()), !dbg !3813
  %highest_location = getelementptr inbounds %struct.line_maps, %struct.line_maps* %52, i64 0, i32 7, !dbg !3814
  %55 = load i32, i32* %highest_location, align 8, !dbg !3814
  %cmp288 = icmp ult i32 %add287, %55, !dbg !3814
  br i1 %cmp288, label %cleanup299, label %if.then290, !dbg !3812

if.then290:                                       ; preds = %if.else285
  store i32 %add287, i32* %highest_location, align 8, !dbg !3814
  br label %cleanup299, !dbg !3814

cleanup299.loopexit:                              ; preds = %cleanup
  %note.4.lcssa = phi %struct._cpp_line_note* [ %note.4, %cleanup ], !dbg !3601
  %total_len.4.lcssa = phi i64 [ %total_len.4, %cleanup ], !dbg !3601
  %cleanup.dest.slot.0.lcssa = phi i32 [ %cleanup.dest.slot.0, %cleanup ]
  %cur.addr.3.lcssa = phi i8* [ %cur.addr.3, %cleanup ], !dbg !3601
  %base.addr.3.lcssa = phi i8* [ %base.addr.3, %cleanup ]
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.4.lcssa, metadata !3563, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.4.lcssa, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.3.lcssa, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %base.addr.3.lcssa, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.4.lcssa, metadata !3563, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.4.lcssa, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.3.lcssa, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %base.addr.3.lcssa, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.4.lcssa, metadata !3563, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.4.lcssa, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.3.lcssa, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %base.addr.3.lcssa, metadata !3554, metadata !DIExpression()), !dbg !3601
  br label %cleanup299

cleanup299:                                       ; preds = %cleanup299.loopexit, %if.else285, %land.lhs.true270, %if.else193, %for.end, %if.then290, %if.then283, %if.end258, %if.end255, %if.then206, %if.then189
  %note.7 = phi %struct._cpp_line_note* [ %note.2.lcssa, %if.then189 ], [ %note.264, %if.then206 ], [ %note.264, %if.end255 ], [ %arrayidx266, %if.end258 ], [ %note.2.lcssa, %if.then283 ], [ %note.2.lcssa, %if.then290 ], [ %note.2.lcssa, %if.else285 ], [ %note.2.lcssa, %for.end ], [ %note.2.lcssa, %if.else193 ], [ %note.2.lcssa, %land.lhs.true270 ], [ %note.4.lcssa, %cleanup299.loopexit ], !dbg !3601
  %total_len.7 = phi i64 [ %total_len.1.lcssa, %if.then189 ], [ %total_len.160, %if.then206 ], [ %add218, %if.end255 ], [ %add218, %if.end258 ], [ %total_len.1.lcssa, %if.then283 ], [ %total_len.1.lcssa, %if.then290 ], [ %total_len.1.lcssa, %if.else285 ], [ %total_len.1.lcssa, %for.end ], [ %total_len.1.lcssa, %if.else193 ], [ %total_len.1.lcssa, %land.lhs.true270 ], [ %total_len.4.lcssa, %cleanup299.loopexit ], !dbg !3601
  %type.1 = phi i32 [ %type.0, %if.then189 ], [ 60, %if.then206 ], [ %type.0, %if.end255 ], [ %type.0, %if.end258 ], [ %type.0, %if.then283 ], [ %type.0, %if.then290 ], [ %type.0, %if.else285 ], [ %type.0, %for.end ], [ %type.0, %if.else193 ], [ %type.0, %land.lhs.true270 ], [ %type.0, %cleanup299.loopexit ], !dbg !3601
  %cleanup.dest.slot.1 = phi i32 [ 5, %if.then189 ], [ 5, %if.then206 ], [ 1, %if.end255 ], [ 0, %if.end258 ], [ 0, %if.then283 ], [ 0, %if.then290 ], [ 0, %if.else285 ], [ 0, %for.end ], [ 0, %if.else193 ], [ 0, %land.lhs.true270 ], [ %cleanup.dest.slot.0.lcssa, %cleanup299.loopexit ]
  %saw_NUL.4 = phi i32 [ %saw_NUL.0, %if.then189 ], [ %saw_NUL.0, %if.then206 ], [ %saw_NUL.0, %if.end255 ], [ %saw_NUL.0, %if.end258 ], [ %call284, %if.then283 ], [ %add287, %if.then290 ], [ %add287, %if.else285 ], [ %saw_NUL.0, %for.end ], [ %saw_NUL.0, %if.else193 ], [ %saw_NUL.0, %land.lhs.true270 ], [ %saw_NUL.0, %cleanup299.loopexit ], !dbg !3663
  %cur.addr.6 = phi i8* [ %add.ptr192, %if.then189 ], [ %cur.addr.1.lcssa, %if.then206 ], [ %incdec.ptr174, %if.end255 ], [ %46, %if.end258 ], [ %incdec.ptr174, %if.then283 ], [ %incdec.ptr174, %if.then290 ], [ %incdec.ptr174, %if.else285 ], [ %incdec.ptr174, %for.end ], [ %incdec.ptr174, %if.else193 ], [ %incdec.ptr174, %land.lhs.true270 ], [ %cur.addr.3.lcssa, %cleanup299.loopexit ], !dbg !3601
  %base.addr.6 = phi i8* [ %base.addr.1.lcssa, %if.then189 ], [ %base.addr.153, %if.then206 ], [ %base.addr.153, %if.end255 ], [ %46, %if.end258 ], [ %base.addr.1.lcssa, %if.then283 ], [ %base.addr.1.lcssa, %if.then290 ], [ %base.addr.1.lcssa, %if.else285 ], [ %base.addr.1.lcssa, %for.end ], [ %base.addr.1.lcssa, %if.else193 ], [ %base.addr.1.lcssa, %land.lhs.true270 ], [ %base.addr.3.lcssa, %cleanup299.loopexit ]
  call void @llvm.dbg.value(metadata i8* %base.addr.6, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.6, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %saw_NUL.4, metadata !3556, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %type.1, metadata !3559, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.7, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata %struct._cpp_line_note* %note.7, metadata !3563, metadata !DIExpression()), !dbg !3601
  switch i32 %cleanup.dest.slot.1, label %cleanup361.loopexit [
    i32 0, label %for.cond
    i32 5, label %break_outer_loop
    i32 28, label %break_outer_loop
  ], !llvm.loop !3816

break_outer_loop:                                 ; preds = %cleanup299, %cleanup299
  %total_len.7.lcssa69 = phi i64 [ %total_len.7, %cleanup299 ], [ %total_len.7, %cleanup299 ], !dbg !3601
  %type.1.lcssa68 = phi i32 [ %type.1, %cleanup299 ], [ %type.1, %cleanup299 ], !dbg !3601
  %saw_NUL.4.lcssa67 = phi i32 [ %saw_NUL.4, %cleanup299 ], [ %saw_NUL.4, %cleanup299 ], !dbg !3663
  %cur.addr.6.lcssa66 = phi i8* [ %cur.addr.6, %cleanup299 ], [ %cur.addr.6, %cleanup299 ], !dbg !3601
  %base.addr.6.lcssa65 = phi i8* [ %base.addr.6, %cleanup299 ], [ %base.addr.6, %cleanup299 ]
  call void @llvm.dbg.value(metadata i64 %total_len.7.lcssa69, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.7.lcssa69, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %type.1.lcssa68, metadata !3559, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %type.1.lcssa68, metadata !3559, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %saw_NUL.4.lcssa67, metadata !3556, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %saw_NUL.4.lcssa67, metadata !3556, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.6.lcssa66, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.6.lcssa66, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %base.addr.6.lcssa65, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %base.addr.6.lcssa65, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.7.lcssa69, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.7.lcssa69, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %type.1.lcssa68, metadata !3559, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %type.1.lcssa68, metadata !3559, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %saw_NUL.4.lcssa67, metadata !3556, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %saw_NUL.4.lcssa67, metadata !3556, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.6.lcssa66, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.6.lcssa66, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %base.addr.6.lcssa65, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %base.addr.6.lcssa65, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.7.lcssa69, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i64 %total_len.7.lcssa69, metadata !3560, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %type.1.lcssa68, metadata !3559, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %type.1.lcssa68, metadata !3559, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %saw_NUL.4.lcssa67, metadata !3556, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %saw_NUL.4.lcssa67, metadata !3556, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.6.lcssa66, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %cur.addr.6.lcssa66, metadata !3555, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %base.addr.6.lcssa65, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %base.addr.6.lcssa65, metadata !3554, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.label(metadata !3600), !dbg !3819
  %tobool303 = icmp eq i32 %saw_NUL.4.lcssa67, 0, !dbg !3820
  br i1 %tobool303, label %if.end309, label %land.lhs.true304, !dbg !3822

land.lhs.true304:                                 ; preds = %break_outer_loop
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !3823
  %56 = load i8, i8* %skipping, align 2, !dbg !3823
  %tobool306 = icmp eq i8 %56, 0, !dbg !3824
  br i1 %tobool306, label %if.then307, label %if.end309, !dbg !3825

if.then307:                                       ; preds = %land.lhs.true304
  %call308 = call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 0, i32 %saw_NUL.4.lcssa67, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !3826
  br label %if.end309, !dbg !3826

if.end309:                                        ; preds = %land.lhs.true304, %break_outer_loop, %if.then307
  %57 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !3827
  %cur311 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %57, i64 0, i32 0, !dbg !3828
  store i8* %cur.addr.6.lcssa66, i8** %cur311, align 8, !dbg !3829
  %58 = load %struct._cpp_buff*, %struct._cpp_buff** %first_buff, align 8, !dbg !3830
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %58, metadata !3561, metadata !DIExpression()), !dbg !3601
  %cmp312 = icmp eq %struct._cpp_buff* %58, null, !dbg !3831
  %sub.ptr.lhs.cast315 = ptrtoint i8* %cur.addr.6.lcssa66 to i64, !dbg !3832
  %sub.ptr.rhs.cast316 = ptrtoint i8* %base.addr.6.lcssa65 to i64, !dbg !3832
  %sub.ptr.sub317 = sub i64 %sub.ptr.lhs.cast315, %sub.ptr.rhs.cast316, !dbg !3832
  br i1 %cmp312, label %if.then314, label %if.else319, !dbg !3833

if.then314:                                       ; preds = %if.end309
  %conv318 = trunc i64 %sub.ptr.sub317 to i32, !dbg !3834
  call fastcc void @create_literal(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i8* %base.addr.6.lcssa65, i32 %conv318, i32 %type.1.lcssa68) #9, !dbg !3835
  br label %cleanup361, !dbg !3835

if.else319:                                       ; preds = %if.end309
  %add323 = add i64 %total_len.7.lcssa69, %sub.ptr.sub317, !dbg !3836
  %add324 = add i64 %add323, 1, !dbg !3837
  %call325 = call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %pfile, i64 %add324) #9, !dbg !3838
  call void @llvm.dbg.value(metadata i8* %call325, metadata !3596, metadata !DIExpression()), !dbg !3839
  %59 = trunc i32 %type.1.lcssa68 to i8, !dbg !3840
  store i8 %59, i8* %type248, align 4, !dbg !3840
  %conv331 = trunc i64 %add323 to i32, !dbg !3841
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 0, !dbg !3842
  store i32 %conv331, i32* %len, align 8, !dbg !3843
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 1, !dbg !3844
  store i8* %call325, i8** %text, align 8, !dbg !3845
  %60 = bitcast %struct._cpp_buff** %first_buff to i64*, !dbg !3846
  %61 = load i64, i64* %60, align 8, !dbg !3846
  %62 = bitcast %struct._cpp_buff** %last_buff to i64*, !dbg !3847
  store i64 %61, i64* %62, align 8, !dbg !3847
  %63 = inttoptr i64 %61 to %struct._cpp_buff*, !dbg !3848
  br label %while.cond334, !dbg !3848

while.cond334:                                    ; preds = %while.body337, %if.else319
  %64 = phi %struct._cpp_buff* [ %63, %if.else319 ], [ %76, %while.body337 ]
  %65 = phi %struct._cpp_buff* [ %63, %if.else319 ], [ %76, %while.body337 ], !dbg !3849
  %dest.0 = phi i8* [ %call325, %if.else319 ], [ %add.ptr350, %while.body337 ], !dbg !3839
  call void @llvm.dbg.value(metadata i8* %dest.0, metadata !3596, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %65, metadata !3562, metadata !DIExpression()), !dbg !3601
  %cmp335 = icmp eq %struct._cpp_buff* %65, null, !dbg !3850
  br i1 %cmp335, label %while.end351, label %while.body337, !dbg !3848

while.body337:                                    ; preds = %while.cond334
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %64, metadata !3562, metadata !DIExpression()), !dbg !3601
  %base338 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %64, i64 0, i32 1, !dbg !3851
  %66 = load i8*, i8** %base338, align 8, !dbg !3851
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %64, metadata !3562, metadata !DIExpression()), !dbg !3601
  %cur339 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %64, i64 0, i32 2, !dbg !3853
  %67 = bitcast i8** %cur339 to i64*, !dbg !3853
  %68 = load i64, i64* %67, align 8, !dbg !3853
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %64, metadata !3562, metadata !DIExpression()), !dbg !3601
  %.cast = ptrtoint i8* %66 to i64, !dbg !3854
  %sub.ptr.sub343 = sub i64 %68, %.cast, !dbg !3855
  %call344 = call i8* @memcpy(i8* %dest.0, i8* %66, i64 %sub.ptr.sub343) #8, !dbg !3856
  %69 = load %struct._cpp_buff*, %struct._cpp_buff** %last_buff, align 8, !dbg !3857
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %69, metadata !3562, metadata !DIExpression()), !dbg !3601
  %cur345 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %69, i64 0, i32 2, !dbg !3857
  %70 = bitcast i8** %cur345 to i64*, !dbg !3857
  %71 = load i64, i64* %70, align 8, !dbg !3857
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %69, metadata !3562, metadata !DIExpression()), !dbg !3601
  %base346 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %69, i64 0, i32 1, !dbg !3858
  %72 = bitcast i8** %base346 to i64*, !dbg !3858
  %73 = load i64, i64* %72, align 8, !dbg !3858
  %sub.ptr.sub349 = sub i64 %71, %73, !dbg !3859
  %add.ptr350 = getelementptr inbounds i8, i8* %dest.0, i64 %sub.ptr.sub349, !dbg !3860
  call void @llvm.dbg.value(metadata i8* %add.ptr350, metadata !3596, metadata !DIExpression()), !dbg !3839
  %74 = bitcast %struct._cpp_buff* %69 to i64*, !dbg !3861
  %75 = load i64, i64* %74, align 8, !dbg !3862
  store i64 %75, i64* %62, align 8, !dbg !3863
  %76 = inttoptr i64 %75 to %struct._cpp_buff*, !dbg !3848
  br label %while.cond334, !dbg !3848, !llvm.loop !3864

while.end351:                                     ; preds = %while.cond334
  %dest.0.lcssa = phi i8* [ %dest.0, %while.cond334 ], !dbg !3839
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !3596, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !3596, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !3596, metadata !DIExpression()), !dbg !3839
  %77 = load %struct._cpp_buff*, %struct._cpp_buff** %first_buff, align 8, !dbg !3866
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %77, metadata !3561, metadata !DIExpression()), !dbg !3601
  call void @_cpp_release_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* %77) #9, !dbg !3867
  %call355 = call i8* @memcpy(i8* %dest.0.lcssa, i8* %base.addr.6.lcssa65, i64 %sub.ptr.sub317) #8, !dbg !3868
  %arrayidx359 = getelementptr inbounds i8, i8* %dest.0.lcssa, i64 %sub.ptr.sub317, !dbg !3869
  store i8 0, i8* %arrayidx359, align 1, !dbg !3870
  br label %cleanup361

cleanup361.loopexit:                              ; preds = %cleanup299
  br label %cleanup361, !dbg !3871

cleanup361:                                       ; preds = %cleanup361.loopexit, %if.then314, %while.end351, %if.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #12, !dbg !3871
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #12, !dbg !3871
  ret void, !dbg !3871
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bufring_append(%struct.cpp_reader* %pfile, i8* %base, i64 %len, %struct._cpp_buff** %first_buff_p, %struct._cpp_buff** %last_buff_p) unnamed_addr #3 !dbg !3872 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3876, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i8* %base, metadata !3877, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i64 %len, metadata !3878, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %first_buff_p, metadata !3879, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %last_buff_p, metadata !3880, metadata !DIExpression()), !dbg !3887
  %0 = load %struct._cpp_buff*, %struct._cpp_buff** %first_buff_p, align 8, !dbg !3888
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %0, metadata !3881, metadata !DIExpression()), !dbg !3887
  %1 = load %struct._cpp_buff*, %struct._cpp_buff** %last_buff_p, align 8, !dbg !3889
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %1, metadata !3882, metadata !DIExpression()), !dbg !3887
  %cmp = icmp eq %struct._cpp_buff* %0, null, !dbg !3890
  br i1 %cmp, label %if.then, label %if.else, !dbg !3891

if.then:                                          ; preds = %entry
  %call = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 %len) #9, !dbg !3892
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call, metadata !3882, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call, metadata !3881, metadata !DIExpression()), !dbg !3887
  br label %if.end13, !dbg !3893

if.else:                                          ; preds = %entry
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %1, i64 0, i32 3, !dbg !3894
  %2 = bitcast i8** %limit to i64*, !dbg !3894
  %3 = load i64, i64* %2, align 8, !dbg !3894
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %1, i64 0, i32 2, !dbg !3894
  %4 = bitcast i8** %cur to i64*, !dbg !3894
  %5 = load i64, i64* %4, align 8, !dbg !3894
  %sub.ptr.sub = sub i64 %3, %5, !dbg !3894
  %cmp1 = icmp ult i64 %sub.ptr.sub, %len, !dbg !3895
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !3896

if.then2:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !3883, metadata !DIExpression()), !dbg !3897
  %.cast = inttoptr i64 %5 to i8*, !dbg !3898
  %call9 = tail call i8* @memcpy(i8* %.cast, i8* %base, i64 %sub.ptr.sub) #8, !dbg !3899
  %6 = load i8*, i8** %cur, align 8, !dbg !3900
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %sub.ptr.sub, !dbg !3900
  store i8* %add.ptr, i8** %cur, align 8, !dbg !3900
  %add.ptr11 = getelementptr inbounds i8, i8* %base, i64 %sub.ptr.sub, !dbg !3901
  call void @llvm.dbg.value(metadata i8* %add.ptr11, metadata !3877, metadata !DIExpression()), !dbg !3887
  %sub = sub i64 %len, %sub.ptr.sub, !dbg !3902
  call void @llvm.dbg.value(metadata i64 %sub, metadata !3878, metadata !DIExpression()), !dbg !3887
  %call12 = tail call %struct._cpp_buff* @_cpp_append_extend_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* %1, i64 %sub) #9, !dbg !3903
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call12, metadata !3882, metadata !DIExpression()), !dbg !3887
  br label %if.end13, !dbg !3904

if.end13:                                         ; preds = %if.else, %if.then2, %if.then
  %first_buff.0 = phi %struct._cpp_buff* [ %call, %if.then ], [ %0, %if.then2 ], [ %0, %if.else ], !dbg !3887
  %len.addr.1 = phi i64 [ %len, %if.then ], [ %sub, %if.then2 ], [ %len, %if.else ]
  %base.addr.1 = phi i8* [ %base, %if.then ], [ %add.ptr11, %if.then2 ], [ %base, %if.else ]
  %last_buff.1 = phi %struct._cpp_buff* [ %call, %if.then ], [ %call12, %if.then2 ], [ %1, %if.else ], !dbg !3905
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %last_buff.1, metadata !3882, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i8* %base.addr.1, metadata !3877, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i64 %len.addr.1, metadata !3878, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %first_buff.0, metadata !3881, metadata !DIExpression()), !dbg !3887
  %cur14 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %last_buff.1, i64 0, i32 2, !dbg !3906
  %7 = load i8*, i8** %cur14, align 8, !dbg !3906
  %call15 = tail call i8* @memcpy(i8* %7, i8* %base.addr.1, i64 %len.addr.1) #8, !dbg !3907
  %8 = load i8*, i8** %cur14, align 8, !dbg !3908
  %add.ptr17 = getelementptr inbounds i8, i8* %8, i64 %len.addr.1, !dbg !3908
  store i8* %add.ptr17, i8** %cur14, align 8, !dbg !3908
  store %struct._cpp_buff* %first_buff.0, %struct._cpp_buff** %first_buff_p, align 8, !dbg !3909
  store %struct._cpp_buff* %last_buff.1, %struct._cpp_buff** %last_buff_p, align 8, !dbg !3910
  ret void, !dbg !3911
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #7

declare dso_local %struct.cpp_hashnode* @_cpp_interpret_identifier(%struct.cpp_reader*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @store_comment(%struct.cpp_reader* %pfile, %struct.cpp_token* %token) unnamed_addr #3 !dbg !3912 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3916, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !3917, metadata !DIExpression()), !dbg !3919
  %allocated = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 62, i32 2, !dbg !3920
  %0 = load i32, i32* %allocated, align 4, !dbg !3920
  %cmp = icmp eq i32 %0, 0, !dbg !3922
  br i1 %cmp, label %if.then, label %if.end, !dbg !3923

if.then:                                          ; preds = %entry
  store i32 256, i32* %allocated, align 4, !dbg !3924
  %call = tail call i8* @xmalloc(i64 4096) #8, !dbg !3926
  %entries = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 62, i32 0, !dbg !3927
  %1 = bitcast %struct.cpp_comment** %entries to i8**, !dbg !3928
  store i8* %call, i8** %1, align 8, !dbg !3928
  %.pre = load i32, i32* %allocated, align 4, !dbg !3929
  br label %if.end, !dbg !3931

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %.pre, %if.then ], [ %0, %entry ], !dbg !3929
  %count = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 62, i32 1, !dbg !3932
  %3 = load i32, i32* %count, align 8, !dbg !3932
  %cmp9 = icmp eq i32 %3, %2, !dbg !3933
  br i1 %cmp9, label %if.then11, label %if.end24, !dbg !3934

if.then11:                                        ; preds = %if.end
  %mul14 = shl nsw i32 %2, 1, !dbg !3935
  store i32 %mul14, i32* %allocated, align 4, !dbg !3935
  %entries16 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 62, i32 0, !dbg !3937
  %4 = bitcast %struct.cpp_comment** %entries16 to i8**, !dbg !3937
  %5 = load i8*, i8** %4, align 8, !dbg !3937
  %conv19 = sext i32 %mul14 to i64, !dbg !3938
  %mul20 = shl nsw i64 %conv19, 4, !dbg !3939
  %call21 = tail call i8* @xrealloc(i8* %5, i64 %mul20) #8, !dbg !3940
  store i8* %call21, i8** %4, align 8, !dbg !3941
  br label %if.end24, !dbg !3942

if.end24:                                         ; preds = %if.then11, %if.end
  %len25 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 0, !dbg !3943
  %6 = load i32, i32* %len25, align 8, !dbg !3943
  call void @llvm.dbg.value(metadata i32 %6, metadata !3918, metadata !DIExpression()), !dbg !3919
  %add = add nsw i32 %6, 1, !dbg !3944
  %conv26 = sext i32 %add to i64, !dbg !3945
  %call28 = tail call i8* @xmalloc(i64 %conv26) #8, !dbg !3946
  %entries30 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 62, i32 0, !dbg !3947
  %7 = load %struct.cpp_comment*, %struct.cpp_comment** %entries30, align 8, !dbg !3947
  %8 = load i32, i32* %count, align 8, !dbg !3948
  %idxprom = sext i32 %8 to i64, !dbg !3949
  %comment = getelementptr inbounds %struct.cpp_comment, %struct.cpp_comment* %7, i64 %idxprom, i32 0, !dbg !3950
  store i8* %call28, i8** %comment, align 8, !dbg !3951
  %9 = load %struct.cpp_comment*, %struct.cpp_comment** %entries30, align 8, !dbg !3952
  %10 = load i32, i32* %count, align 8, !dbg !3953
  %idxprom37 = sext i32 %10 to i64, !dbg !3954
  %comment39 = getelementptr inbounds %struct.cpp_comment, %struct.cpp_comment* %9, i64 %idxprom37, i32 0, !dbg !3955
  %11 = load i8*, i8** %comment39, align 8, !dbg !3955
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 1, !dbg !3956
  %12 = load i8*, i8** %text, align 8, !dbg !3956
  %conv42 = sext i32 %6 to i64, !dbg !3957
  %call43 = tail call i8* @memcpy(i8* %11, i8* %12, i64 %conv42) #8, !dbg !3958
  %13 = load %struct.cpp_comment*, %struct.cpp_comment** %entries30, align 8, !dbg !3959
  %14 = load i32, i32* %count, align 8, !dbg !3960
  %idxprom48 = sext i32 %14 to i64, !dbg !3961
  %comment50 = getelementptr inbounds %struct.cpp_comment, %struct.cpp_comment* %13, i64 %idxprom48, i32 0, !dbg !3962
  %15 = load i8*, i8** %comment50, align 8, !dbg !3962
  %arrayidx52 = getelementptr inbounds i8, i8* %15, i64 %conv42, !dbg !3961
  store i8 0, i8* %arrayidx52, align 1, !dbg !3963
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 0, !dbg !3964
  %16 = load i32, i32* %src_loc, align 8, !dbg !3964
  %17 = load %struct.cpp_comment*, %struct.cpp_comment** %entries30, align 8, !dbg !3965
  %18 = load i32, i32* %count, align 8, !dbg !3966
  %idxprom57 = sext i32 %18 to i64, !dbg !3967
  %sloc = getelementptr inbounds %struct.cpp_comment, %struct.cpp_comment* %17, i64 %idxprom57, i32 1, !dbg !3968
  store i32 %16, i32* %sloc, align 8, !dbg !3969
  %19 = load i32, i32* %count, align 8, !dbg !3970
  %inc = add nsw i32 %19, 1, !dbg !3970
  store i32 %inc, i32* %count, align 8, !dbg !3970
  ret void, !dbg !3971
}

declare dso_local i32 @_cpp_valid_ucn(%struct.cpp_reader*, i8**, i8*, i32, %struct.normalize_state*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) local_unnamed_addr #7

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind readonly }
attributes #11 = { nobuiltin noreturn nounwind }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!284, !285, !286}
!llvm.ident = !{!287}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "token_spellings", scope: !2, file: !3, line: 48, type: !276, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !137, globals: !269, nameTableKind: None)
!3 = !DIFile(filename: "cpp_lex.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !19, !31, !37, !42, !122, !131}
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
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_token_fld_kind", file: !6, line: 184, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIEnumerator(name: "CPP_TOKEN_FLD_NODE", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "CPP_TOKEN_FLD_SOURCE", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "CPP_TOKEN_FLD_STR", value: 2, isUnsigned: true)
!127 = !DIEnumerator(name: "CPP_TOKEN_FLD_ARG_NO", value: 3, isUnsigned: true)
!128 = !DIEnumerator(name: "CPP_TOKEN_FLD_TOKEN_NO", value: 4, isUnsigned: true)
!129 = !DIEnumerator(name: "CPP_TOKEN_FLD_PRAGMA", value: 5, isUnsigned: true)
!130 = !DIEnumerator(name: "CPP_TOKEN_FLD_NONE", value: 6, isUnsigned: true)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spell_type", file: !3, line: 29, baseType: !7, size: 32, elements: !132)
!132 = !{!133, !134, !135, !136}
!133 = !DIEnumerator(name: "SPELL_OPERATOR", value: 0, isUnsigned: true)
!134 = !DIEnumerator(name: "SPELL_IDENT", value: 1, isUnsigned: true)
!135 = !DIEnumerator(name: "SPELL_LITERAL", value: 2, isUnsigned: true)
!136 = !DIEnumerator(name: "SPELL_NONE", value: 3, isUnsigned: true)
!137 = !{!138, !143, !144, !145, !146, !147, !229, !42, !232, !235, !236, !237, !239, !163, !246, !254, !260}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !141, line: 22, baseType: !142)
!141 = !DIFile(filename: "./cpp-id-data.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!142 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!146 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !6, line: 34, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !6, line: 212, size: 192, elements: !150)
!150 = !{!151, !154, !155, !156}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !149, file: !6, line: 213, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !153, line: 44, baseType: !7)
!153 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !149, file: !6, line: 214, baseType: !7, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !149, file: !6, line: 215, baseType: !145, size: 16, offset: 48)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !149, file: !6, line: 237, baseType: !157, size: 128, offset: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_token_u", file: !6, line: 217, size: 128, elements: !158)
!158 = !{!159, !217, !218, !223, !227, !228}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !157, file: !6, line: 220, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_identifier", file: !6, line: 201, size: 64, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !160, file: !6, line: 207, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_hashnode", file: !6, line: 36, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_hashnode", file: !6, line: 644, size: 256, elements: !166)
!166 = !{!167, !176, !177, !178, !179, !180, !181}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !165, file: !6, line: 645, baseType: !168, size: 128)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !169, line: 31, size: 128, elements: !170)
!169 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!170 = !{!171, !174, !175}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !168, file: !169, line: 32, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !168, file: !169, line: 33, baseType: !7, size: 32, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !168, file: !169, line: 34, baseType: !7, size: 32, offset: 96)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !165, file: !6, line: 646, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !165, file: !6, line: 647, baseType: !7, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !165, file: !6, line: 650, baseType: !142, size: 8, offset: 136)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !165, file: !6, line: 651, baseType: !7, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !165, file: !6, line: 652, baseType: !7, size: 10, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !165, file: !6, line: 654, baseType: !182, size: 64, offset: 192)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_cpp_hashnode_value", file: !6, line: 633, size: 64, elements: !183)
!183 = !{!184, !205, !215, !216}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !182, file: !6, line: 635, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_macro", file: !6, line: 37, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro", file: !141, line: 36, size: 256, elements: !188)
!188 = !{!189, !191, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !187, file: !141, line: 42, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !187, file: !141, line: 51, baseType: !192, size: 64, offset: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_macro_u", file: !141, line: 47, size: 64, elements: !193)
!193 = !{!194, !195}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "tokens", scope: !192, file: !141, line: 49, baseType: !147, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !192, file: !141, line: 50, baseType: !172, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !187, file: !141, line: 54, baseType: !152, size: 32, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !187, file: !141, line: 57, baseType: !7, size: 32, offset: 160)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "paramc", scope: !187, file: !141, line: 60, baseType: !145, size: 16, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "fun_like", scope: !187, file: !141, line: 63, baseType: !7, size: 1, offset: 208, flags: DIFlagBitField, extraData: i64 208)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "variadic", scope: !187, file: !141, line: 66, baseType: !7, size: 1, offset: 209, flags: DIFlagBitField, extraData: i64 208)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "syshdr", scope: !187, file: !141, line: 69, baseType: !7, size: 1, offset: 210, flags: DIFlagBitField, extraData: i64 208)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !187, file: !141, line: 72, baseType: !7, size: 1, offset: 211, flags: DIFlagBitField, extraData: i64 208)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !187, file: !141, line: 75, baseType: !7, size: 1, offset: 212, flags: DIFlagBitField, extraData: i64 208)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "extra_tokens", scope: !187, file: !141, line: 80, baseType: !7, size: 1, offset: 213, flags: DIFlagBitField, extraData: i64 208)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "answers", scope: !182, file: !6, line: 637, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !141, line: 28, size: 320, elements: !208)
!208 = !{!209, !210, !211}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !141, line: 29, baseType: !206, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !207, file: !141, line: 30, baseType: !7, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !207, file: !141, line: 31, baseType: !212, size: 192, offset: 128)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 192, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 1)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !182, file: !6, line: 639, baseType: !5, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !182, file: !6, line: 641, baseType: !145, size: 16)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !157, file: !6, line: 223, baseType: !147, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !157, file: !6, line: 226, baseType: !219, size: 128)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !6, line: 162, size: 128, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !219, file: !6, line: 163, baseType: !7, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !219, file: !6, line: 164, baseType: !172, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !157, file: !6, line: 229, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !6, line: 195, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !224, file: !6, line: 197, baseType: !7, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !157, file: !6, line: 233, baseType: !7, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !157, file: !6, line: 236, baseType: !7, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !230, line: 35, baseType: !231)
!230 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!231 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !230, line: 46, baseType: !238)
!238 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_line_note", file: !241, line: 235, baseType: !242)
!241 = !DIFile(filename: "./internal.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_line_note", file: !241, line: 236, size: 128, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !242, file: !241, line: 239, baseType: !172, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !242, file: !241, line: 245, baseType: !7, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "tokenrun", file: !241, line: 128, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenrun", file: !241, line: 129, size: 256, elements: !249)
!249 = !{!250, !251, !252, !253}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !241, line: 131, baseType: !246, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !248, file: !241, line: 131, baseType: !246, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !248, file: !241, line: 132, baseType: !147, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !248, file: !241, line: 132, baseType: !147, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment", file: !6, line: 887, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 880, size: 128, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !256, file: !6, line: 883, baseType: !236, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "sloc", scope: !256, file: !6, line: 886, baseType: !152, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_buff", file: !241, line: 99, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_buff", file: !241, line: 100, size: 256, elements: !263)
!263 = !{!264, !266, !267, !268}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !241, line: 102, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !262, file: !241, line: 103, baseType: !235, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !262, file: !241, line: 103, baseType: !235, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !262, file: !241, line: 103, baseType: !235, size: 64, offset: 192)
!269 = !{!0, !270}
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "digraph_spellings", scope: !2, file: !3, line: 43, type: !272, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 384, elements: !274)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!274 = !{!275}
!275 = !DISubrange(count: 6)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 9344, elements: !282)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "token_spelling", file: !3, line: 37, size: 128, elements: !279)
!279 = !{!280, !281}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !278, file: !3, line: 39, baseType: !131, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !3, line: 40, baseType: !172, size: 64, offset: 64)
!282 = !{!283}
!283 = !DISubrange(count: 73)
!284 = !{i32 2, !"Dwarf Version", i32 4}
!285 = !{i32 2, !"Debug Info Version", i32 3}
!286 = !{i32 1, !"wchar_size", i32 4}
!287 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!288 = distinct !DISubprogram(name: "tolower", scope: !289, file: !289, line: 207, type: !290, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !292)
!289 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!290 = !DISubroutineType(types: !291)
!291 = !{!146, !146}
!292 = !{!293}
!293 = !DILocalVariable(name: "__c", arg: 1, scope: !288, file: !289, line: 207, type: !146)
!294 = !DILocation(line: 0, scope: !288)
!295 = !DILocation(line: 209, column: 22, scope: !288)
!296 = !DILocation(line: 209, column: 39, scope: !288)
!297 = !DILocation(line: 209, column: 38, scope: !288)
!298 = !DILocation(line: 209, column: 37, scope: !288)
!299 = !DILocation(line: 209, column: 10, scope: !288)
!300 = !DILocation(line: 209, column: 3, scope: !288)
!301 = distinct !DISubprogram(name: "toupper", scope: !289, file: !289, line: 213, type: !290, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !302)
!302 = !{!303}
!303 = !DILocalVariable(name: "__c", arg: 1, scope: !301, file: !289, line: 213, type: !146)
!304 = !DILocation(line: 0, scope: !301)
!305 = !DILocation(line: 215, column: 22, scope: !301)
!306 = !DILocation(line: 215, column: 39, scope: !301)
!307 = !DILocation(line: 215, column: 38, scope: !301)
!308 = !DILocation(line: 215, column: 37, scope: !301)
!309 = !DILocation(line: 215, column: 10, scope: !301)
!310 = !DILocation(line: 215, column: 3, scope: !301)
!311 = distinct !DISubprogram(name: "cpp_ideq", scope: !3, file: !3, line: 75, type: !312, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !316)
!312 = !DISubroutineType(types: !313)
!313 = !{!146, !314, !232}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!316 = !{!317, !318}
!317 = !DILocalVariable(name: "token", arg: 1, scope: !311, file: !3, line: 75, type: !314)
!318 = !DILocalVariable(name: "string", arg: 2, scope: !311, file: !3, line: 75, type: !232)
!319 = !DILocation(line: 0, scope: !311)
!320 = !DILocation(line: 77, column: 14, scope: !321)
!321 = distinct !DILexicalBlock(scope: !311, file: !3, line: 77, column: 7)
!322 = !DILocation(line: 77, column: 19, scope: !321)
!323 = !DILocation(line: 77, column: 7, scope: !311)
!324 = !DILocation(line: 80, column: 20, scope: !311)
!325 = !DILocation(line: 80, column: 11, scope: !311)
!326 = !DILocation(line: 80, column: 10, scope: !311)
!327 = !DILocation(line: 80, column: 3, scope: !311)
!328 = !DILocation(line: 81, column: 1, scope: !311)
!329 = distinct !DISubprogram(name: "ustrcmp", scope: !241, file: !241, line: 687, type: !330, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{!146, !172, !172}
!332 = !{!333, !334}
!333 = !DILocalVariable(name: "s1", arg: 1, scope: !329, file: !241, line: 687, type: !172)
!334 = !DILocalVariable(name: "s2", arg: 2, scope: !329, file: !241, line: 687, type: !172)
!335 = !DILocation(line: 0, scope: !329)
!336 = !DILocation(line: 689, column: 10, scope: !329)
!337 = !DILocation(line: 689, column: 3, scope: !329)
!338 = distinct !DISubprogram(name: "_cpp_clean_line", scope: !3, file: !3, line: 103, type: !339, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !785)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !6, line: 31, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !241, line: 322, size: 10432, elements: !344)
!344 = !{!345, !413, !414, !431, !461, !462, !463, !464, !465, !493, !495, !499, !500, !501, !502, !503, !504, !505, !506, !507, !510, !511, !514, !515, !547, !548, !549, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !573, !574, !575, !578, !656, !682, !685, !686, !749, !756, !757, !764, !765, !766, !767, !770, !771, !778}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !343, file: !241, line: 325, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_buffer", file: !6, line: 32, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_buffer", file: !241, line: 249, size: 1536, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !361, !364, !365, !368, !369, !370, !371, !372, !373, !399}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !348, file: !241, line: 251, baseType: !172, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "line_base", scope: !348, file: !241, line: 252, baseType: !172, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !348, file: !241, line: 253, baseType: !172, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !348, file: !241, line: 255, baseType: !172, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !348, file: !241, line: 256, baseType: !172, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !348, file: !241, line: 258, baseType: !239, size: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "cur_note", scope: !348, file: !241, line: 259, baseType: !7, size: 32, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "notes_used", scope: !348, file: !241, line: 260, baseType: !7, size: 32, offset: 416)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "notes_cap", scope: !348, file: !241, line: 261, baseType: !7, size: 32, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !348, file: !241, line: 263, baseType: !360, size: 64, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !348, file: !241, line: 267, baseType: !362, size: 64, offset: 576)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_file", file: !6, line: 42, flags: DIFlagFwdDecl)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !348, file: !241, line: 271, baseType: !172, size: 64, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "if_stack", scope: !348, file: !241, line: 275, baseType: !366, size: 64, offset: 704)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "if_stack", file: !241, line: 275, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "need_line", scope: !348, file: !241, line: 278, baseType: !142, size: 8, offset: 768)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "warned_cplusplus_comments", scope: !348, file: !241, line: 284, baseType: !7, size: 1, offset: 776, flags: DIFlagBitField, extraData: i64 776)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "from_stage3", scope: !348, file: !241, line: 289, baseType: !7, size: 1, offset: 777, flags: DIFlagBitField, extraData: i64 776)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "return_at_eof", scope: !348, file: !241, line: 294, baseType: !7, size: 1, offset: 778, flags: DIFlagBitField, extraData: i64 776)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !348, file: !241, line: 298, baseType: !142, size: 8, offset: 784)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !348, file: !241, line: 302, baseType: !374, size: 512, offset: 832)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !6, line: 523, size: 512, elements: !375)
!375 = !{!376, !378, !379, !380, !381, !382, !383, !385, !391, !396}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !6, line: 526, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !374, file: !6, line: 529, baseType: !236, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !374, file: !6, line: 530, baseType: !7, size: 32, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !374, file: !6, line: 534, baseType: !142, size: 8, offset: 160)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !374, file: !6, line: 537, baseType: !142, size: 8, offset: 168)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !374, file: !6, line: 541, baseType: !236, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !374, file: !6, line: 545, baseType: !384, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !374, file: !6, line: 551, baseType: !386, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!236, !232, !389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !6, line: 39, baseType: !374)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !374, file: !6, line: 555, baseType: !392, size: 64, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !393, line: 47, baseType: !394)
!393 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !395, line: 148, baseType: !238)
!395 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !374, file: !6, line: 556, baseType: !397, size: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !393, line: 59, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !395, line: 145, baseType: !238)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "input_cset_desc", scope: !348, file: !241, line: 306, baseType: !400, size: 192, offset: 1344)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cset_converter", file: !241, line: 47, size: 192, elements: !401)
!401 = !{!402, !411, !412}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !400, file: !241, line: 49, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "convert_f", file: !241, line: 45, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!142, !407, !172, !237, !409}
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !408, line: 29, baseType: !144)
!408 = !DIFile(filename: "/usr/include/iconv.h", directory: "")
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_strbuf", file: !241, line: 43, flags: DIFlagFwdDecl)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !400, file: !241, line: 50, baseType: !407, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !400, file: !241, line: 51, baseType: !146, size: 32, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "overlaid_buffer", scope: !343, file: !241, line: 328, baseType: !346, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !343, file: !241, line: 331, baseType: !415, size: 160, offset: 128)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lexer_state", file: !241, line: 177, size: 160, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "in_directive", scope: !415, file: !241, line: 180, baseType: !142, size: 8)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "directive_wants_padding", scope: !415, file: !241, line: 185, baseType: !142, size: 8, offset: 8)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "skipping", scope: !415, file: !241, line: 188, baseType: !142, size: 8, offset: 16)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "angled_headers", scope: !415, file: !241, line: 191, baseType: !142, size: 8, offset: 24)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "in_expression", scope: !415, file: !241, line: 194, baseType: !142, size: 8, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "save_comments", scope: !415, file: !241, line: 198, baseType: !142, size: 8, offset: 40)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "va_args_ok", scope: !415, file: !241, line: 201, baseType: !142, size: 8, offset: 48)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned_ok", scope: !415, file: !241, line: 204, baseType: !142, size: 8, offset: 56)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_expansion", scope: !415, file: !241, line: 207, baseType: !142, size: 8, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "parsing_args", scope: !415, file: !241, line: 210, baseType: !142, size: 8, offset: 72)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "discarding_output", scope: !415, file: !241, line: 214, baseType: !142, size: 8, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "skip_eval", scope: !415, file: !241, line: 217, baseType: !7, size: 32, offset: 96)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "in_deferred_pragma", scope: !415, file: !241, line: 220, baseType: !142, size: 8, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pragma_allow_expansion", scope: !415, file: !241, line: 223, baseType: !142, size: 8, offset: 136)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "line_table", scope: !343, file: !241, line: 334, baseType: !432, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !153, line: 74, size: 448, elements: !434)
!434 = !{!435, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !433, file: !153, line: 75, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !153, line: 61, size: 192, elements: !438)
!438 = !{!439, !440, !442, !443, !444, !445, !446}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !437, file: !153, line: 62, baseType: !232, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !437, file: !153, line: 63, baseType: !441, size: 32, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !153, line: 39, baseType: !7)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !437, file: !153, line: 64, baseType: !152, size: 32, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !437, file: !153, line: 65, baseType: !146, size: 32, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !437, file: !153, line: 66, baseType: !7, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !437, file: !153, line: 68, baseType: !142, size: 8, offset: 168)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !437, file: !153, line: 70, baseType: !7, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !433, file: !153, line: 76, baseType: !7, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !433, file: !153, line: 77, baseType: !7, size: 32, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !433, file: !153, line: 79, baseType: !7, size: 32, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !433, file: !153, line: 84, baseType: !146, size: 32, offset: 160)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !433, file: !153, line: 87, baseType: !7, size: 32, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !433, file: !153, line: 90, baseType: !142, size: 8, offset: 224)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !433, file: !153, line: 93, baseType: !152, size: 32, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !433, file: !153, line: 96, baseType: !152, size: 32, offset: 288)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !433, file: !153, line: 100, baseType: !7, size: 32, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !433, file: !153, line: 104, baseType: !457, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !153, line: 47, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!144, !144, !237}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "directive_line", scope: !343, file: !241, line: 337, baseType: !152, size: 32, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "a_buff", scope: !343, file: !241, line: 340, baseType: !260, size: 64, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "u_buff", scope: !343, file: !241, line: 341, baseType: !260, size: 64, offset: 512)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffs", scope: !343, file: !241, line: 342, baseType: !260, size: 64, offset: 576)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "base_context", scope: !343, file: !241, line: 345, baseType: !466, size: 448, offset: 640)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_context", file: !241, line: 142, size: 448, elements: !467)
!467 = !{!468, !471, !472, !490, !491, !492}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !466, file: !241, line: 145, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_context", file: !241, line: 141, baseType: !466)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !466, file: !241, line: 145, baseType: !469, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !466, file: !241, line: 164, baseType: !473, size: 128, offset: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !241, line: 147, size: 128, elements: !474)
!474 = !{!475, !485}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "iso", scope: !473, file: !241, line: 156, baseType: !476, size: 128)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !473, file: !241, line: 152, size: 128, elements: !477)
!477 = !{!478, !484}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !476, file: !241, line: 154, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "utoken", file: !241, line: 121, size: 64, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !479, file: !241, line: 123, baseType: !314, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ptoken", scope: !479, file: !241, line: 124, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !476, file: !241, line: 155, baseType: !479, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "trad", scope: !473, file: !241, line: 163, baseType: !486, size: 128)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !473, file: !241, line: 159, size: 128, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !486, file: !241, line: 161, baseType: !172, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !486, file: !241, line: 162, baseType: !172, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !466, file: !241, line: 168, baseType: !260, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !466, file: !241, line: 171, baseType: !163, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "direct_p", scope: !466, file: !241, line: 174, baseType: !142, size: 8, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !343, file: !241, line: 346, baseType: !494, size: 64, offset: 1088)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !343, file: !241, line: 349, baseType: !496, size: 64, offset: 1152)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "directive", file: !241, line: 40, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "directive_result", scope: !343, file: !241, line: 352, baseType: !148, size: 192, offset: 1216)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "invocation_location", scope: !343, file: !241, line: 356, baseType: !152, size: 32, offset: 1408)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "set_invocation_location", scope: !343, file: !241, line: 360, baseType: !142, size: 8, offset: 1440)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "quote_include", scope: !343, file: !241, line: 363, baseType: !377, size: 64, offset: 1472)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "bracket_include", scope: !343, file: !241, line: 364, baseType: !377, size: 64, offset: 1536)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "no_search_path", scope: !343, file: !241, line: 365, baseType: !374, size: 512, offset: 1600)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "all_files", scope: !343, file: !241, line: 368, baseType: !362, size: 64, offset: 2112)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "main_file", scope: !343, file: !241, line: 370, baseType: !362, size: 64, offset: 2176)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash", scope: !343, file: !241, line: 373, baseType: !508, size: 64, offset: 2240)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !241, line: 373, flags: DIFlagFwdDecl)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash", scope: !343, file: !241, line: 374, baseType: !508, size: 64, offset: 2304)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash_entries", scope: !343, file: !241, line: 375, baseType: !512, size: 64, offset: 2368)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_hash_entry_pool", file: !241, line: 375, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_hash", scope: !343, file: !241, line: 378, baseType: !508, size: 64, offset: 2432)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_ob", scope: !343, file: !241, line: 379, baseType: !516, size: 704, offset: 2496)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !517, line: 164, size: 704, elements: !518)
!517 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!518 = !{!519, !520, !530, !531, !532, !533, !534, !535, !539, !543, !544, !545, !546}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !516, file: !517, line: 166, baseType: !231, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !516, file: !517, line: 167, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !517, line: 157, size: 192, elements: !523)
!523 = !{!524, !525, !526}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !522, file: !517, line: 159, baseType: !236, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !522, file: !517, line: 160, baseType: !521, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !522, file: !517, line: 161, baseType: !527, size: 32, offset: 128)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 32, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 4)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !516, file: !517, line: 168, baseType: !236, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !516, file: !517, line: 169, baseType: !236, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !516, file: !517, line: 170, baseType: !236, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !516, file: !517, line: 171, baseType: !231, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !516, file: !517, line: 172, baseType: !146, size: 32, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !516, file: !517, line: 176, baseType: !536, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!521, !144, !231}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !516, file: !517, line: 177, baseType: !540, size: 64, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !144, !521}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !516, file: !517, line: 178, baseType: !144, size: 64, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !516, file: !517, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !516, file: !517, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !516, file: !517, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "quote_ignores_source_dir", scope: !343, file: !241, line: 383, baseType: !142, size: 8, offset: 3200)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "seen_once_only", scope: !343, file: !241, line: 387, baseType: !142, size: 8, offset: 3208)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mi_cmacro", scope: !343, file: !241, line: 390, baseType: !550, size: 64, offset: 3264)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mi_ind_cmacro", scope: !343, file: !241, line: 391, baseType: !550, size: 64, offset: 3328)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "mi_valid", scope: !343, file: !241, line: 392, baseType: !142, size: 8, offset: 3392)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "cur_token", scope: !343, file: !241, line: 395, baseType: !147, size: 64, offset: 3456)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "base_run", scope: !343, file: !241, line: 396, baseType: !247, size: 256, offset: 3520)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "cur_run", scope: !343, file: !241, line: 396, baseType: !246, size: 64, offset: 3776)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lookaheads", scope: !343, file: !241, line: 397, baseType: !7, size: 32, offset: 3840)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "keep_tokens", scope: !343, file: !241, line: 400, baseType: !7, size: 32, offset: 3872)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer", scope: !343, file: !241, line: 403, baseType: !235, size: 64, offset: 3904)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer_len", scope: !343, file: !241, line: 404, baseType: !7, size: 32, offset: 3968)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_cset_desc", scope: !343, file: !241, line: 408, baseType: !400, size: 192, offset: 4032)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_cset_desc", scope: !343, file: !241, line: 412, baseType: !400, size: 192, offset: 4224)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "char16_cset_desc", scope: !343, file: !241, line: 416, baseType: !400, size: 192, offset: 4416)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "char32_cset_desc", scope: !343, file: !241, line: 420, baseType: !400, size: 192, offset: 4608)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "wide_cset_desc", scope: !343, file: !241, line: 424, baseType: !400, size: 192, offset: 4800)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !343, file: !241, line: 427, baseType: !172, size: 64, offset: 4992)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !343, file: !241, line: 428, baseType: !172, size: 64, offset: 5056)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_paste", scope: !343, file: !241, line: 431, baseType: !148, size: 192, offset: 5120)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !343, file: !241, line: 432, baseType: !148, size: 192, offset: 5312)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !343, file: !241, line: 435, baseType: !571, size: 64, offset: 5504)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !6, line: 685, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "hash_ob", scope: !343, file: !241, line: 439, baseType: !516, size: 704, offset: 5568)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_ob", scope: !343, file: !241, line: 443, baseType: !516, size: 704, offset: 6272)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "pragmas", scope: !343, file: !241, line: 447, baseType: !576, size: 64, offset: 6976)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "pragma_entry", file: !241, line: 447, flags: DIFlagFwdDecl)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !343, file: !241, line: 450, baseType: !579, size: 1088, offset: 7040)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !6, line: 472, size: 1088, elements: !580)
!580 = !{!581, !585, !591, !595, !599, !603, !604, !611, !615, !619, !623, !629, !633, !648, !649, !650, !652}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !579, file: !6, line: 475, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !341, !314, !146}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !579, file: !6, line: 481, baseType: !586, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !341, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !579, file: !6, line: 483, baseType: !592, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !341, !232}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !579, file: !6, line: 484, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !341, !7, !172, !232, !146, !483}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !579, file: !6, line: 486, baseType: !600, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !341, !7, !163}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !579, file: !6, line: 487, baseType: !600, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !579, file: !6, line: 488, baseType: !605, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !341, !7, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !6, line: 35, baseType: !219)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !579, file: !6, line: 489, baseType: !612, size: 64, offset: 448)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !341, !7}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !579, file: !6, line: 490, baseType: !616, size: 64, offset: 512)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!146, !341, !232, !146}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !579, file: !6, line: 491, baseType: !620, size: 64, offset: 576)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !341, !232, !146, !232}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !579, file: !6, line: 492, baseType: !624, size: 64, offset: 640)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !6, line: 469, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!232, !341, !232, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !579, file: !6, line: 496, baseType: !630, size: 64, offset: 704)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!163, !341, !314}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !579, file: !6, line: 500, baseType: !634, size: 64, offset: 768)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!142, !341, !146, !152, !7, !232, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !639, line: 14, baseType: !640)
!639 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 81, baseType: !641)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 192, elements: !213)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 81, size: 192, elements: !643)
!643 = !{!644, !645, !646, !647}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !642, file: !3, line: 81, baseType: !7, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !642, file: !3, line: 81, baseType: !7, size: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !642, file: !3, line: 81, baseType: !144, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !642, file: !3, line: 81, baseType: !144, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !579, file: !6, line: 506, baseType: !600, size: 64, offset: 832)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !579, file: !6, line: 507, baseType: !600, size: 64, offset: 896)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !579, file: !6, line: 510, baseType: !651, size: 64, offset: 960)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !579, file: !6, line: 513, baseType: !653, size: 64, offset: 1024)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !341, !152, !163}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !343, file: !241, line: 453, baseType: !657, size: 64, offset: 8128)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht", file: !169, line: 46, size: 1152, elements: !659)
!659 = !{!660, !661, !665, !671, !675, !676, !677, !679, !680, !681}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !658, file: !169, line: 49, baseType: !516, size: 704)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !658, file: !169, line: 51, baseType: !662, size: 64, offset: 704)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashnode", file: !169, line: 41, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_node", scope: !658, file: !169, line: 53, baseType: !666, size: 64, offset: 768)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!663, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !169, line: 40, baseType: !658)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_subobject", scope: !658, file: !169, line: 56, baseType: !672, size: 64, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!144, !237}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !658, file: !169, line: 58, baseType: !7, size: 32, offset: 896)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !658, file: !169, line: 59, baseType: !7, size: 32, offset: 928)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !658, file: !169, line: 62, baseType: !678, size: 64, offset: 960)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !658, file: !169, line: 65, baseType: !7, size: 32, offset: 1024)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !658, file: !169, line: 66, baseType: !7, size: 32, offset: 1056)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !658, file: !169, line: 69, baseType: !142, size: 8, offset: 1088)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "op_stack", scope: !343, file: !241, line: 456, baseType: !683, size: 64, offset: 8192)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !241, line: 42, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "op_limit", scope: !343, file: !241, line: 456, baseType: !683, size: 64, offset: 8256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !343, file: !241, line: 459, baseType: !687, size: 1024, offset: 8320)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !6, line: 279, size: 1024, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !687, file: !6, line: 282, baseType: !7, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !687, file: !6, line: 285, baseType: !19, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !687, file: !6, line: 288, baseType: !142, size: 8, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !687, file: !6, line: 291, baseType: !142, size: 8, offset: 72)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !687, file: !6, line: 296, baseType: !142, size: 8, offset: 80)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !687, file: !6, line: 299, baseType: !142, size: 8, offset: 88)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !687, file: !6, line: 303, baseType: !142, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !687, file: !6, line: 306, baseType: !142, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !687, file: !6, line: 309, baseType: !142, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !687, file: !6, line: 312, baseType: !142, size: 8, offset: 120)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !687, file: !6, line: 315, baseType: !142, size: 8, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !687, file: !6, line: 318, baseType: !142, size: 8, offset: 136)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !687, file: !6, line: 321, baseType: !142, size: 8, offset: 144)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !687, file: !6, line: 324, baseType: !142, size: 8, offset: 152)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !687, file: !6, line: 328, baseType: !142, size: 8, offset: 160)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !687, file: !6, line: 331, baseType: !142, size: 8, offset: 168)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !687, file: !6, line: 334, baseType: !142, size: 8, offset: 176)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !687, file: !6, line: 338, baseType: !142, size: 8, offset: 184)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !687, file: !6, line: 341, baseType: !142, size: 8, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !687, file: !6, line: 344, baseType: !142, size: 8, offset: 200)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !687, file: !6, line: 348, baseType: !142, size: 8, offset: 208)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !687, file: !6, line: 352, baseType: !142, size: 8, offset: 216)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !687, file: !6, line: 356, baseType: !142, size: 8, offset: 224)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !687, file: !6, line: 360, baseType: !142, size: 8, offset: 232)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !687, file: !6, line: 363, baseType: !142, size: 8, offset: 240)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !687, file: !6, line: 366, baseType: !142, size: 8, offset: 248)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !687, file: !6, line: 370, baseType: !142, size: 8, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !687, file: !6, line: 373, baseType: !142, size: 8, offset: 264)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !687, file: !6, line: 376, baseType: !142, size: 8, offset: 272)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !687, file: !6, line: 379, baseType: !142, size: 8, offset: 280)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !687, file: !6, line: 382, baseType: !142, size: 8, offset: 288)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !687, file: !6, line: 385, baseType: !142, size: 8, offset: 296)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !687, file: !6, line: 389, baseType: !142, size: 8, offset: 304)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !687, file: !6, line: 392, baseType: !142, size: 8, offset: 312)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !687, file: !6, line: 395, baseType: !142, size: 8, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !687, file: !6, line: 398, baseType: !142, size: 8, offset: 328)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !687, file: !6, line: 401, baseType: !142, size: 8, offset: 336)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !687, file: !6, line: 404, baseType: !232, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !687, file: !6, line: 407, baseType: !232, size: 64, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !687, file: !6, line: 410, baseType: !232, size: 64, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !687, file: !6, line: 414, baseType: !31, size: 32, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !687, file: !6, line: 417, baseType: !142, size: 8, offset: 608)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !687, file: !6, line: 420, baseType: !142, size: 8, offset: 616)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !687, file: !6, line: 441, baseType: !733, size: 64, offset: 640)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !687, file: !6, line: 423, size: 64, elements: !734)
!734 = !{!735, !736, !737, !738, !739}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !733, file: !6, line: 426, baseType: !37, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !733, file: !6, line: 429, baseType: !142, size: 8, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !733, file: !6, line: 433, baseType: !142, size: 8, offset: 40)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !733, file: !6, line: 436, baseType: !142, size: 8, offset: 48)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !733, file: !6, line: 440, baseType: !142, size: 8, offset: 56)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !687, file: !6, line: 447, baseType: !237, size: 64, offset: 704)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !687, file: !6, line: 447, baseType: !237, size: 64, offset: 768)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !687, file: !6, line: 447, baseType: !237, size: 64, offset: 832)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !687, file: !6, line: 447, baseType: !237, size: 64, offset: 896)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !687, file: !6, line: 450, baseType: !142, size: 8, offset: 960)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !687, file: !6, line: 450, baseType: !142, size: 8, offset: 968)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !687, file: !6, line: 454, baseType: !142, size: 8, offset: 976)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !687, file: !6, line: 457, baseType: !142, size: 8, offset: 984)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !687, file: !6, line: 460, baseType: !142, size: 8, offset: 992)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "spec_nodes", scope: !343, file: !241, line: 463, baseType: !750, size: 256, offset: 9344)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spec_nodes", file: !241, line: 227, size: 256, elements: !751)
!751 = !{!752, !753, !754, !755}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "n_defined", scope: !750, file: !241, line: 229, baseType: !163, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "n_true", scope: !750, file: !241, line: 230, baseType: !163, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "n_false", scope: !750, file: !241, line: 231, baseType: !163, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "n__VA_ARGS__", scope: !750, file: !241, line: 232, baseType: !163, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "our_hashtable", scope: !343, file: !241, line: 466, baseType: !142, size: 8, offset: 9600)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !343, file: !241, line: 475, baseType: !758, size: 256, offset: 9664)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !343, file: !241, line: 469, size: 256, elements: !759)
!759 = !{!760, !761, !762, !763}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !758, file: !241, line: 471, baseType: !235, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !758, file: !241, line: 472, baseType: !235, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !758, file: !241, line: 473, baseType: !235, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !758, file: !241, line: 474, baseType: !152, size: 32, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cur", scope: !343, file: !241, line: 478, baseType: !172, size: 64, offset: 9920)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "saved_rlimit", scope: !343, file: !241, line: 478, baseType: !172, size: 64, offset: 9984)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "saved_line_base", scope: !343, file: !241, line: 478, baseType: !172, size: 64, offset: 10048)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "savedstate", scope: !343, file: !241, line: 482, baseType: !768, size: 64, offset: 10112)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_savedstate", file: !241, line: 482, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !343, file: !241, line: 485, baseType: !7, size: 32, offset: 10176)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "comments", scope: !343, file: !241, line: 488, baseType: !772, size: 128, offset: 10240)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment_table", file: !6, line: 901, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 891, size: 128, elements: !774)
!774 = !{!775, !776, !777}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !773, file: !6, line: 894, baseType: !254, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !773, file: !6, line: 897, baseType: !146, size: 32, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !773, file: !6, line: 900, baseType: !146, size: 32, offset: 96)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "pushed_macros", scope: !343, file: !241, line: 491, baseType: !779, size: 64, offset: 10368)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_pragma_macro", file: !241, line: 310, size: 192, elements: !781)
!781 = !{!782, !783, !784}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !780, file: !241, line: 312, baseType: !779, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !780, file: !241, line: 314, baseType: !236, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !780, file: !241, line: 316, baseType: !185, size: 64, offset: 128)
!785 = !{!786, !787, !788, !789, !790, !791, !792, !795}
!786 = !DILocalVariable(name: "pfile", arg: 1, scope: !338, file: !3, line: 103, type: !341)
!787 = !DILocalVariable(name: "buffer", scope: !338, file: !3, line: 105, type: !346)
!788 = !DILocalVariable(name: "s", scope: !338, file: !3, line: 106, type: !138)
!789 = !DILocalVariable(name: "c", scope: !338, file: !3, line: 107, type: !140)
!790 = !DILocalVariable(name: "d", scope: !338, file: !3, line: 107, type: !143)
!791 = !DILocalVariable(name: "p", scope: !338, file: !3, line: 107, type: !143)
!792 = !DILocalVariable(name: "pbackslash", scope: !793, file: !3, line: 117, type: !138)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 116, column: 5)
!794 = distinct !DILexicalBlock(scope: !338, file: !3, line: 115, column: 7)
!795 = !DILabel(scope: !338, name: "done", file: !3, line: 229)
!796 = !DILocation(line: 0, scope: !338)
!797 = !DILocation(line: 109, column: 19, scope: !338)
!798 = !DILocation(line: 110, column: 30, scope: !338)
!799 = !DILocation(line: 110, column: 41, scope: !338)
!800 = !DILocation(line: 110, column: 11, scope: !338)
!801 = !DILocation(line: 110, column: 20, scope: !338)
!802 = !DILocation(line: 111, column: 45, scope: !338)
!803 = !DILocation(line: 111, column: 25, scope: !338)
!804 = !DILocation(line: 111, column: 35, scope: !338)
!805 = !DILocation(line: 111, column: 15, scope: !338)
!806 = !DILocation(line: 112, column: 11, scope: !338)
!807 = !DILocation(line: 112, column: 21, scope: !338)
!808 = !DILocation(line: 113, column: 15, scope: !338)
!809 = !DILocation(line: 113, column: 25, scope: !338)
!810 = !DILocation(line: 115, column: 16, scope: !794)
!811 = !DILocation(line: 115, column: 8, scope: !794)
!812 = !DILocation(line: 115, column: 7, scope: !338)
!813 = !DILocation(line: 219, column: 7, scope: !814)
!814 = distinct !DILexicalBlock(scope: !794, file: !3, line: 218, column: 5)
!815 = !DILocation(line: 0, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 168, column: 12)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 164, column: 6)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 161, column: 13)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 159, column: 8)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 123, column: 2)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 122, column: 7)
!822 = distinct !DILexicalBlock(scope: !793, file: !3, line: 122, column: 7)
!823 = !DILocation(line: 122, column: 7, scope: !822)
!824 = !DILocation(line: 0, scope: !793)
!825 = !DILocation(line: 124, column: 8, scope: !820)
!826 = !DILocation(line: 125, column: 8, scope: !827)
!827 = distinct !DILexicalBlock(scope: !820, file: !3, line: 125, column: 8)
!828 = !DILocation(line: 126, column: 11, scope: !827)
!829 = !DILocation(line: 126, column: 8, scope: !827)
!830 = !DILocation(line: 130, column: 12, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 130, column: 12)
!832 = distinct !DILexicalBlock(scope: !827, file: !3, line: 127, column: 6)
!833 = !DILocation(line: 130, column: 12, scope: !832)
!834 = !DILocation(line: 135, column: 5, scope: !835)
!835 = distinct !DILexicalBlock(scope: !832, file: !3, line: 134, column: 12)
!836 = !DILocation(line: 135, column: 8, scope: !835)
!837 = !DILocation(line: 135, column: 13, scope: !835)
!838 = !DILocation(line: 134, column: 12, scope: !832)
!839 = !DILocation(line: 138, column: 11, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 138, column: 9)
!841 = distinct !DILexicalBlock(scope: !835, file: !3, line: 136, column: 3)
!842 = !DILocation(line: 138, column: 9, scope: !841)
!843 = !DILocation(line: 0, scope: !820)
!844 = !DILocation(line: 142, column: 12, scope: !845)
!845 = distinct !DILexicalBlock(scope: !832, file: !3, line: 142, column: 12)
!846 = !DILocation(line: 142, column: 12, scope: !832)
!847 = !DILocation(line: 147, column: 8, scope: !832)
!848 = !DILocation(line: 147, column: 15, scope: !832)
!849 = !DILocation(line: 148, column: 4, scope: !832)
!850 = distinct !{!850, !847, !849}
!851 = !DILocation(line: 149, column: 18, scope: !852)
!852 = distinct !DILexicalBlock(scope: !832, file: !3, line: 149, column: 12)
!853 = !DILocation(line: 149, column: 12, scope: !832)
!854 = !DILocation(line: 154, column: 40, scope: !832)
!855 = !DILocation(line: 154, column: 38, scope: !832)
!856 = !DILocation(line: 154, column: 8, scope: !832)
!857 = !DILocation(line: 155, column: 14, scope: !832)
!858 = !DILocation(line: 156, column: 26, scope: !832)
!859 = !DILocation(line: 157, column: 8, scope: !832)
!860 = !DILocation(line: 159, column: 8, scope: !819)
!861 = !DILocation(line: 159, column: 8, scope: !820)
!862 = !DILocation(line: 161, column: 13, scope: !818)
!863 = !DILocation(line: 162, column: 6, scope: !818)
!864 = !DILocation(line: 162, column: 9, scope: !818)
!865 = !DILocation(line: 163, column: 6, scope: !818)
!866 = !DILocation(line: 163, column: 27, scope: !818)
!867 = !DILocation(line: 163, column: 9, scope: !818)
!868 = !DILocation(line: 161, column: 13, scope: !819)
!869 = !DILocation(line: 167, column: 34, scope: !817)
!870 = !DILocation(line: 167, column: 8, scope: !817)
!871 = !DILocation(line: 168, column: 12, scope: !816)
!872 = !DILocation(line: 168, column: 12, scope: !817)
!873 = !DILocation(line: 173, column: 28, scope: !874)
!874 = distinct !DILexicalBlock(scope: !816, file: !3, line: 169, column: 3)
!875 = !DILocation(line: 173, column: 10, scope: !874)
!876 = !DILocation(line: 173, column: 8, scope: !874)
!877 = !DILocation(line: 175, column: 5, scope: !874)
!878 = !DILocation(line: 122, column: 7, scope: !821)
!879 = distinct !{!879, !823, !880}
!880 = !DILocation(line: 178, column: 2, scope: !822)
!881 = !DILocation(line: 0, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 189, column: 12)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 187, column: 6)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 186, column: 8)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 182, column: 2)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 181, column: 7)
!887 = distinct !DILexicalBlock(scope: !793, file: !3, line: 181, column: 7)
!888 = !DILocation(line: 181, column: 7, scope: !793)
!889 = !DILocation(line: 183, column: 9, scope: !885)
!890 = !DILocation(line: 183, column: 8, scope: !885)
!891 = !DILocation(line: 184, column: 9, scope: !885)
!892 = !DILocation(line: 186, column: 10, scope: !884)
!893 = !DILocation(line: 186, column: 23, scope: !884)
!894 = !DILocation(line: 186, column: 18, scope: !884)
!895 = !DILocation(line: 189, column: 22, scope: !882)
!896 = !DILocation(line: 191, column: 25, scope: !897)
!897 = distinct !DILexicalBlock(scope: !883, file: !3, line: 191, column: 12)
!898 = !DILocation(line: 189, column: 38, scope: !882)
!899 = !DILocation(line: 189, column: 27, scope: !882)
!900 = !DILocation(line: 189, column: 45, scope: !882)
!901 = !DILocation(line: 189, column: 48, scope: !882)
!902 = !DILocation(line: 189, column: 53, scope: !882)
!903 = !DILocation(line: 189, column: 12, scope: !883)
!904 = !DILocation(line: 0, scope: !885)
!905 = !DILocation(line: 191, column: 14, scope: !897)
!906 = !DILocation(line: 191, column: 12, scope: !883)
!907 = !DILocation(line: 0, scope: !883)
!908 = !DILocation(line: 196, column: 8, scope: !883)
!909 = !DILocation(line: 196, column: 17, scope: !883)
!910 = !DILocation(line: 196, column: 38, scope: !883)
!911 = !DILocation(line: 196, column: 41, scope: !883)
!912 = !DILocation(line: 197, column: 4, scope: !883)
!913 = distinct !{!913, !908, !912}
!914 = !DILocation(line: 198, column: 35, scope: !915)
!915 = distinct !DILexicalBlock(scope: !883, file: !3, line: 198, column: 12)
!916 = !DILocation(line: 198, column: 38, scope: !915)
!917 = !DILocation(line: 198, column: 44, scope: !915)
!918 = !DILocation(line: 198, column: 12, scope: !883)
!919 = !DILocation(line: 201, column: 40, scope: !883)
!920 = !DILocation(line: 201, column: 38, scope: !883)
!921 = !DILocation(line: 201, column: 8, scope: !883)
!922 = !DILocation(line: 202, column: 14, scope: !883)
!923 = !DILocation(line: 203, column: 26, scope: !883)
!924 = !DILocation(line: 204, column: 6, scope: !883)
!925 = !DILocation(line: 205, column: 15, scope: !926)
!926 = distinct !DILexicalBlock(scope: !884, file: !3, line: 205, column: 13)
!927 = !DILocation(line: 205, column: 22, scope: !926)
!928 = !DILocation(line: 205, column: 25, scope: !926)
!929 = !DILocation(line: 205, column: 30, scope: !926)
!930 = !DILocation(line: 205, column: 37, scope: !926)
!931 = !DILocation(line: 205, column: 58, scope: !926)
!932 = !DILocation(line: 205, column: 40, scope: !926)
!933 = !DILocation(line: 205, column: 13, scope: !884)
!934 = !DILocation(line: 208, column: 34, scope: !935)
!935 = distinct !DILexicalBlock(scope: !926, file: !3, line: 206, column: 6)
!936 = !DILocation(line: 208, column: 8, scope: !935)
!937 = !DILocation(line: 209, column: 12, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 209, column: 12)
!939 = !DILocation(line: 209, column: 12, scope: !935)
!940 = !DILocation(line: 211, column: 28, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !3, line: 210, column: 3)
!942 = !DILocation(line: 211, column: 10, scope: !941)
!943 = !DILocation(line: 211, column: 8, scope: !941)
!944 = !DILocation(line: 213, column: 3, scope: !941)
!945 = !DILocation(line: 0, scope: !884)
!946 = !DILocation(line: 181, column: 7, scope: !886)
!947 = distinct !{!947, !948, !949}
!948 = !DILocation(line: 181, column: 7, scope: !887)
!949 = !DILocation(line: 215, column: 2, scope: !887)
!950 = !DILocation(line: 220, column: 3, scope: !814)
!951 = !DILocation(line: 221, column: 14, scope: !814)
!952 = !DILocation(line: 221, column: 17, scope: !814)
!953 = !DILocation(line: 221, column: 31, scope: !814)
!954 = !DILocation(line: 221, column: 25, scope: !814)
!955 = distinct !{!955, !813, !956}
!956 = !DILocation(line: 221, column: 38, scope: !814)
!957 = !DILocation(line: 225, column: 14, scope: !958)
!958 = distinct !DILexicalBlock(scope: !814, file: !3, line: 225, column: 11)
!959 = !DILocation(line: 225, column: 22, scope: !958)
!960 = !DILocation(line: 225, column: 38, scope: !958)
!961 = !DILocation(line: 225, column: 27, scope: !958)
!962 = !DILocation(line: 225, column: 45, scope: !958)
!963 = !DILocation(line: 225, column: 48, scope: !958)
!964 = !DILocation(line: 225, column: 53, scope: !958)
!965 = !DILocation(line: 225, column: 11, scope: !814)
!966 = !DILocation(line: 230, column: 6, scope: !338)
!967 = !DILocation(line: 0, scope: !794)
!968 = !DILocation(line: 229, column: 2, scope: !338)
!969 = !DILocation(line: 232, column: 28, scope: !338)
!970 = !DILocation(line: 232, column: 3, scope: !338)
!971 = !DILocation(line: 233, column: 25, scope: !338)
!972 = !DILocation(line: 233, column: 21, scope: !338)
!973 = !DILocation(line: 234, column: 1, scope: !338)
!974 = distinct !DISubprogram(name: "add_line_note", scope: !3, file: !3, line: 86, type: !975, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !977)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !346, !138, !7}
!977 = !{!978, !979, !980}
!978 = !DILocalVariable(name: "buffer", arg: 1, scope: !974, file: !3, line: 86, type: !346)
!979 = !DILocalVariable(name: "pos", arg: 2, scope: !974, file: !3, line: 86, type: !138)
!980 = !DILocalVariable(name: "type", arg: 3, scope: !974, file: !3, line: 86, type: !7)
!981 = !DILocation(line: 0, scope: !974)
!982 = !DILocation(line: 88, column: 15, scope: !983)
!983 = distinct !DILexicalBlock(scope: !974, file: !3, line: 88, column: 7)
!984 = !DILocation(line: 88, column: 37, scope: !983)
!985 = !DILocation(line: 88, column: 26, scope: !983)
!986 = !DILocation(line: 88, column: 7, scope: !974)
!987 = !DILocation(line: 95, column: 11, scope: !974)
!988 = !DILocation(line: 90, column: 45, scope: !989)
!989 = distinct !DILexicalBlock(scope: !983, file: !3, line: 89, column: 5)
!990 = !DILocation(line: 90, column: 49, scope: !989)
!991 = !DILocation(line: 90, column: 25, scope: !989)
!992 = !DILocation(line: 91, column: 23, scope: !989)
!993 = !DILocation(line: 91, column: 21, scope: !989)
!994 = !DILocation(line: 93, column: 5, scope: !989)
!995 = !DILocation(line: 95, column: 25, scope: !974)
!996 = !DILocation(line: 95, column: 3, scope: !974)
!997 = !DILocation(line: 95, column: 37, scope: !974)
!998 = !DILocation(line: 95, column: 41, scope: !974)
!999 = !DILocation(line: 96, column: 11, scope: !974)
!1000 = !DILocation(line: 96, column: 25, scope: !974)
!1001 = !DILocation(line: 96, column: 3, scope: !974)
!1002 = !DILocation(line: 96, column: 37, scope: !974)
!1003 = !DILocation(line: 96, column: 42, scope: !974)
!1004 = !DILocation(line: 97, column: 21, scope: !974)
!1005 = !DILocation(line: 98, column: 1, scope: !974)
!1006 = distinct !DISubprogram(name: "_cpp_process_line_notes", scope: !3, file: !3, line: 267, type: !1007, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{null, !341, !146}
!1009 = !{!1010, !1011, !1012, !1013, !1017, !1018, !1024, !1025}
!1010 = !DILocalVariable(name: "pfile", arg: 1, scope: !1006, file: !3, line: 267, type: !341)
!1011 = !DILocalVariable(name: "in_comment", arg: 2, scope: !1006, file: !3, line: 267, type: !146)
!1012 = !DILocalVariable(name: "buffer", scope: !1006, file: !3, line: 269, type: !346)
!1013 = !DILocalVariable(name: "note", scope: !1014, file: !3, line: 273, type: !239)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 272, column: 5)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 271, column: 3)
!1016 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 271, column: 3)
!1017 = !DILocalVariable(name: "col", scope: !1014, file: !3, line: 274, type: !7)
!1018 = !DILocalVariable(name: "line_table", scope: !1019, file: !3, line: 297, type: !1022)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 297, column: 4)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 283, column: 2)
!1021 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 282, column: 11)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!1024 = !DILocalVariable(name: "map", scope: !1019, file: !3, line: 297, type: !589)
!1025 = !DILocalVariable(name: "line", scope: !1019, file: !3, line: 297, type: !441)
!1026 = !DILocation(line: 0, scope: !1006)
!1027 = !DILocation(line: 269, column: 31, scope: !1006)
!1028 = !DILocation(line: 0, scope: !1014)
!1029 = !DILocation(line: 0, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 276, column: 11)
!1031 = !DILocation(line: 0, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 301, column: 8)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 300, column: 2)
!1034 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 299, column: 16)
!1035 = !DILocation(line: 0, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 304, column: 12)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 303, column: 6)
!1038 = !DILocation(line: 0, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 284, column: 8)
!1040 = !DILocation(line: 0, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 288, column: 8)
!1042 = !DILocation(line: 0, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 289, column: 6)
!1044 = !DILocation(line: 271, column: 3, scope: !1006)
!1045 = !DILocation(line: 273, column: 39, scope: !1014)
!1046 = !DILocation(line: 273, column: 53, scope: !1014)
!1047 = !DILocation(line: 273, column: 31, scope: !1014)
!1048 = !DILocation(line: 276, column: 17, scope: !1030)
!1049 = !DILocation(line: 276, column: 31, scope: !1030)
!1050 = !DILocation(line: 276, column: 21, scope: !1030)
!1051 = !DILocation(line: 276, column: 11, scope: !1014)
!1052 = !DILocation(line: 279, column: 23, scope: !1014)
!1053 = !DILocation(line: 280, column: 13, scope: !1014)
!1054 = !DILocation(line: 282, column: 17, scope: !1021)
!1055 = !DILocation(line: 282, column: 22, scope: !1021)
!1056 = !DILocation(line: 282, column: 30, scope: !1021)
!1057 = !DILocation(line: 282, column: 44, scope: !1021)
!1058 = !DILocation(line: 282, column: 11, scope: !1014)
!1059 = !DILocation(line: 284, column: 19, scope: !1039)
!1060 = !DILocation(line: 284, column: 26, scope: !1039)
!1061 = !DILocation(line: 285, column: 57, scope: !1039)
!1062 = !DILocation(line: 285, column: 69, scope: !1039)
!1063 = !DILocation(line: 285, column: 6, scope: !1039)
!1064 = !DILocation(line: 288, column: 16, scope: !1041)
!1065 = !DILocation(line: 288, column: 36, scope: !1041)
!1066 = !DILocation(line: 288, column: 26, scope: !1041)
!1067 = !DILocation(line: 288, column: 8, scope: !1020)
!1068 = !DILocation(line: 290, column: 59, scope: !1043)
!1069 = !DILocation(line: 290, column: 71, scope: !1043)
!1070 = !DILocation(line: 290, column: 8, scope: !1043)
!1071 = !DILocation(line: 293, column: 36, scope: !1043)
!1072 = !DILocation(line: 293, column: 26, scope: !1043)
!1073 = !DILocation(line: 294, column: 6, scope: !1043)
!1074 = !DILocation(line: 296, column: 30, scope: !1020)
!1075 = !DILocation(line: 296, column: 22, scope: !1020)
!1076 = !DILocation(line: 297, column: 4, scope: !1019)
!1077 = !DILocation(line: 0, scope: !1019)
!1078 = !DILocation(line: 298, column: 2, scope: !1020)
!1079 = !DILocation(line: 299, column: 16, scope: !1034)
!1080 = !DILocation(line: 299, column: 16, scope: !1021)
!1081 = !DILocation(line: 301, column: 8, scope: !1032)
!1082 = !DILocation(line: 302, column: 8, scope: !1032)
!1083 = !DILocation(line: 302, column: 24, scope: !1032)
!1084 = !DILocation(line: 302, column: 27, scope: !1032)
!1085 = !DILocation(line: 301, column: 8, scope: !1033)
!1086 = !DILocation(line: 304, column: 12, scope: !1036)
!1087 = !DILocation(line: 304, column: 12, scope: !1037)
!1088 = !DILocation(line: 308, column: 16, scope: !1036)
!1089 = !DILocation(line: 308, column: 10, scope: !1036)
!1090 = !DILocation(line: 305, column: 3, scope: !1036)
!1091 = !DILocation(line: 311, column: 5, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 310, column: 3)
!1093 = !DILocation(line: 318, column: 27, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 318, column: 16)
!1095 = !DILocation(line: 318, column: 16, scope: !1034)
!1096 = !DILocation(line: 321, column: 2, scope: !1094)
!1097 = distinct !{!1097, !1098, !1099}
!1098 = !DILocation(line: 271, column: 3, scope: !1016)
!1099 = !DILocation(line: 322, column: 5, scope: !1016)
!1100 = !DILocation(line: 323, column: 1, scope: !1006)
!1101 = distinct !DISubprogram(name: "warn_in_comment", scope: !3, file: !3, line: 239, type: !1102, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1104)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!142, !341, !239}
!1104 = !{!1105, !1106, !1107}
!1105 = !DILocalVariable(name: "pfile", arg: 1, scope: !1101, file: !3, line: 239, type: !341)
!1106 = !DILocalVariable(name: "note", arg: 2, scope: !1101, file: !3, line: 239, type: !239)
!1107 = !DILocalVariable(name: "p", scope: !1101, file: !3, line: 241, type: !138)
!1108 = !DILocation(line: 0, scope: !1101)
!1109 = !DILocation(line: 246, column: 13, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 246, column: 7)
!1111 = !DILocation(line: 246, column: 18, scope: !1110)
!1112 = !DILocation(line: 246, column: 7, scope: !1101)
!1113 = !DILocation(line: 251, column: 7, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 251, column: 7)
!1115 = !DILocation(line: 251, column: 7, scope: !1101)
!1116 = !DILocation(line: 252, column: 20, scope: !1114)
!1117 = !DILocation(line: 252, column: 33, scope: !1114)
!1118 = !DILocation(line: 252, column: 24, scope: !1114)
!1119 = !DILocation(line: 252, column: 12, scope: !1114)
!1120 = !DILocation(line: 252, column: 5, scope: !1114)
!1121 = !DILocation(line: 255, column: 13, scope: !1101)
!1122 = !DILocation(line: 255, column: 17, scope: !1101)
!1123 = !DILocation(line: 256, column: 3, scope: !1101)
!1124 = !DILocation(line: 256, column: 10, scope: !1101)
!1125 = !DILocation(line: 257, column: 6, scope: !1101)
!1126 = distinct !{!1126, !1123, !1125}
!1127 = !DILocation(line: 261, column: 14, scope: !1101)
!1128 = !DILocation(line: 261, column: 22, scope: !1101)
!1129 = !DILocation(line: 261, column: 37, scope: !1101)
!1130 = !DILocation(line: 261, column: 27, scope: !1101)
!1131 = !DILocation(line: 261, column: 3, scope: !1101)
!1132 = !DILocation(line: 262, column: 1, scope: !1101)
!1133 = distinct !DISubprogram(name: "_cpp_skip_block_comment", scope: !3, file: !3, line: 331, type: !1134, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1136)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!142, !341}
!1136 = !{!1137, !1138, !1139, !1140, !1141, !1148, !1150, !1151}
!1137 = !DILocalVariable(name: "pfile", arg: 1, scope: !1133, file: !3, line: 331, type: !341)
!1138 = !DILocalVariable(name: "buffer", scope: !1133, file: !3, line: 333, type: !346)
!1139 = !DILocalVariable(name: "cur", scope: !1133, file: !3, line: 334, type: !138)
!1140 = !DILocalVariable(name: "c", scope: !1133, file: !3, line: 335, type: !140)
!1141 = !DILocalVariable(name: "cols", scope: !1142, file: !3, line: 366, type: !7)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 365, column: 2)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 364, column: 16)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 347, column: 11)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 342, column: 5)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 341, column: 3)
!1147 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 341, column: 3)
!1148 = !DILocalVariable(name: "line_table", scope: !1149, file: !3, line: 374, type: !1022)
!1149 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 374, column: 4)
!1150 = !DILocalVariable(name: "map", scope: !1149, file: !3, line: 374, type: !589)
!1151 = !DILocalVariable(name: "line", scope: !1149, file: !3, line: 374, type: !441)
!1152 = !DILocation(line: 0, scope: !1133)
!1153 = !DILocation(line: 333, column: 31, scope: !1133)
!1154 = !DILocation(line: 334, column: 30, scope: !1133)
!1155 = !DILocation(line: 337, column: 6, scope: !1133)
!1156 = !DILocation(line: 338, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 338, column: 7)
!1158 = !DILocation(line: 338, column: 12, scope: !1157)
!1159 = !DILocation(line: 339, column: 8, scope: !1157)
!1160 = !DILocation(line: 338, column: 7, scope: !1133)
!1161 = !DILocation(line: 0, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 369, column: 8)
!1163 = !DILocation(line: 0, scope: !1142)
!1164 = !DILocation(line: 0, scope: !1149)
!1165 = !DILocation(line: 0, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 355, column: 8)
!1167 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 348, column: 2)
!1168 = !DILocation(line: 341, column: 3, scope: !1133)
!1169 = !DILocation(line: 345, column: 15, scope: !1145)
!1170 = !DILocation(line: 345, column: 11, scope: !1145)
!1171 = !DILocation(line: 347, column: 13, scope: !1144)
!1172 = !DILocation(line: 347, column: 11, scope: !1145)
!1173 = !DILocation(line: 349, column: 8, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 349, column: 8)
!1175 = !DILocation(line: 349, column: 16, scope: !1174)
!1176 = !DILocation(line: 349, column: 8, scope: !1167)
!1177 = !DILocation(line: 355, column: 8, scope: !1166)
!1178 = !DILocation(line: 356, column: 8, scope: !1166)
!1179 = !DILocation(line: 356, column: 11, scope: !1166)
!1180 = !DILocation(line: 356, column: 18, scope: !1166)
!1181 = !DILocation(line: 356, column: 25, scope: !1166)
!1182 = !DILocation(line: 356, column: 28, scope: !1166)
!1183 = !DILocation(line: 356, column: 35, scope: !1166)
!1184 = !DILocation(line: 355, column: 8, scope: !1167)
!1185 = !DILocation(line: 358, column: 20, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 357, column: 6)
!1187 = !DILocation(line: 360, column: 15, scope: !1186)
!1188 = !DILocation(line: 360, column: 27, scope: !1186)
!1189 = !DILocation(line: 360, column: 41, scope: !1186)
!1190 = !DILocation(line: 359, column: 8, scope: !1186)
!1191 = !DILocation(line: 362, column: 6, scope: !1186)
!1192 = !DILocation(line: 364, column: 18, scope: !1143)
!1193 = !DILocation(line: 364, column: 16, scope: !1144)
!1194 = !DILocation(line: 367, column: 16, scope: !1142)
!1195 = !DILocation(line: 368, column: 4, scope: !1142)
!1196 = !DILocation(line: 369, column: 16, scope: !1162)
!1197 = !DILocation(line: 369, column: 37, scope: !1162)
!1198 = !DILocation(line: 369, column: 26, scope: !1162)
!1199 = !DILocation(line: 369, column: 8, scope: !1142)
!1200 = !DILocation(line: 371, column: 4, scope: !1142)
!1201 = !DILocation(line: 373, column: 19, scope: !1142)
!1202 = !DILocation(line: 373, column: 39, scope: !1142)
!1203 = !DILocation(line: 373, column: 29, scope: !1142)
!1204 = !DILocation(line: 373, column: 11, scope: !1142)
!1205 = !DILocation(line: 374, column: 4, scope: !1149)
!1206 = !DILocation(line: 376, column: 18, scope: !1142)
!1207 = !DILocation(line: 377, column: 2, scope: !1143)
!1208 = !DILocation(line: 0, scope: !1145)
!1209 = !DILocation(line: 341, column: 3, scope: !1146)
!1210 = distinct !{!1210, !1211, !1212}
!1211 = !DILocation(line: 341, column: 3, scope: !1147)
!1212 = !DILocation(line: 378, column: 5, scope: !1147)
!1213 = !DILocation(line: 380, column: 15, scope: !1133)
!1214 = !DILocation(line: 381, column: 3, scope: !1133)
!1215 = !DILocation(line: 382, column: 3, scope: !1133)
!1216 = !DILocation(line: 383, column: 1, scope: !1133)
!1217 = distinct !DISubprogram(name: "_cpp_lex_identifier", scope: !3, file: !3, line: 560, type: !1218, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1220)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!163, !341, !232}
!1220 = !{!1221, !1222, !1223}
!1221 = !DILocalVariable(name: "pfile", arg: 1, scope: !1217, file: !3, line: 560, type: !341)
!1222 = !DILocalVariable(name: "name", arg: 2, scope: !1217, file: !3, line: 560, type: !232)
!1223 = !DILocalVariable(name: "result", scope: !1217, file: !3, line: 562, type: !163)
!1224 = !DILocation(line: 0, scope: !1217)
!1225 = !DILocation(line: 563, column: 12, scope: !1217)
!1226 = !DILocation(line: 564, column: 3, scope: !1217)
!1227 = distinct !DISubprogram(name: "lex_identifier_intern", scope: !3, file: !3, line: 512, type: !1228, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1230)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!163, !341, !138}
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236}
!1231 = !DILocalVariable(name: "pfile", arg: 1, scope: !1227, file: !3, line: 512, type: !341)
!1232 = !DILocalVariable(name: "base", arg: 2, scope: !1227, file: !3, line: 512, type: !138)
!1233 = !DILocalVariable(name: "result", scope: !1227, file: !3, line: 514, type: !163)
!1234 = !DILocalVariable(name: "cur", scope: !1227, file: !3, line: 515, type: !138)
!1235 = !DILocalVariable(name: "len", scope: !1227, file: !3, line: 516, type: !7)
!1236 = !DILocalVariable(name: "hash", scope: !1227, file: !3, line: 517, type: !7)
!1237 = !DILocation(line: 0, scope: !1227)
!1238 = !DILocation(line: 517, column: 23, scope: !1227)
!1239 = !DILocation(line: 520, column: 3, scope: !1227)
!1240 = !DILocation(line: 520, column: 10, scope: !1227)
!1241 = !DILocation(line: 522, column: 14, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 521, column: 5)
!1243 = distinct !{!1243, !1239, !1244}
!1244 = !DILocation(line: 524, column: 5, scope: !1227)
!1245 = !DILocation(line: 525, column: 13, scope: !1227)
!1246 = !DILocation(line: 525, column: 9, scope: !1227)
!1247 = !DILocation(line: 526, column: 10, scope: !1227)
!1248 = !DILocation(line: 527, column: 12, scope: !1227)
!1249 = !DILocation(line: 531, column: 7, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 531, column: 7)
!1251 = !DILocation(line: 531, column: 7, scope: !1227)
!1252 = !DILocation(line: 535, column: 26, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 535, column: 11)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 533, column: 5)
!1255 = !DILocation(line: 535, column: 43, scope: !1253)
!1256 = !DILocation(line: 535, column: 60, scope: !1253)
!1257 = !DILocation(line: 535, column: 47, scope: !1253)
!1258 = !DILocation(line: 535, column: 11, scope: !1254)
!1259 = !DILocation(line: 537, column: 6, scope: !1253)
!1260 = !DILocation(line: 536, column: 2, scope: !1253)
!1261 = !DILocation(line: 541, column: 39, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 541, column: 11)
!1263 = !DILocation(line: 541, column: 18, scope: !1262)
!1264 = !DILocation(line: 542, column: 4, scope: !1262)
!1265 = !DILocation(line: 542, column: 21, scope: !1262)
!1266 = !DILocation(line: 542, column: 8, scope: !1262)
!1267 = !DILocation(line: 541, column: 11, scope: !1254)
!1268 = !DILocation(line: 543, column: 2, scope: !1262)
!1269 = !DILocation(line: 548, column: 19, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 548, column: 11)
!1271 = !DILocation(line: 548, column: 25, scope: !1270)
!1272 = !DILocation(line: 548, column: 11, scope: !1254)
!1273 = !DILocation(line: 551, column: 6, scope: !1270)
!1274 = !DILocation(line: 549, column: 2, scope: !1270)
!1275 = !DILocation(line: 554, column: 3, scope: !1227)
!1276 = distinct !DISubprogram(name: "cpp_get_comments", scope: !3, file: !3, line: 1045, type: !1277, scopeLine: 1046, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1280)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!1279, !341}
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!1280 = !{!1281}
!1281 = !DILocalVariable(name: "pfile", arg: 1, scope: !1276, file: !3, line: 1045, type: !341)
!1282 = !DILocation(line: 0, scope: !1276)
!1283 = !DILocation(line: 1047, column: 18, scope: !1276)
!1284 = !DILocation(line: 1047, column: 3, scope: !1276)
!1285 = distinct !DISubprogram(name: "_cpp_init_tokenrun", scope: !3, file: !3, line: 1133, type: !1286, scopeLine: 1134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1288)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !246, !7}
!1288 = !{!1289, !1290}
!1289 = !DILocalVariable(name: "run", arg: 1, scope: !1285, file: !3, line: 1133, type: !246)
!1290 = !DILocalVariable(name: "count", arg: 2, scope: !1285, file: !3, line: 1133, type: !7)
!1291 = !DILocation(line: 0, scope: !1285)
!1292 = !DILocation(line: 1135, column: 15, scope: !1285)
!1293 = !DILocation(line: 1135, column: 8, scope: !1285)
!1294 = !DILocation(line: 1135, column: 13, scope: !1285)
!1295 = !DILocation(line: 1136, column: 21, scope: !1285)
!1296 = !DILocation(line: 1136, column: 26, scope: !1285)
!1297 = !DILocation(line: 1136, column: 8, scope: !1285)
!1298 = !DILocation(line: 1136, column: 14, scope: !1285)
!1299 = !DILocation(line: 1137, column: 8, scope: !1285)
!1300 = !DILocation(line: 1137, column: 13, scope: !1285)
!1301 = !DILocation(line: 1138, column: 1, scope: !1285)
!1302 = distinct !DISubprogram(name: "cpp_peek_token", scope: !3, file: !3, line: 1156, type: !1303, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!314, !341, !146}
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1311}
!1306 = !DILocalVariable(name: "pfile", arg: 1, scope: !1302, file: !3, line: 1156, type: !341)
!1307 = !DILocalVariable(name: "index", arg: 2, scope: !1302, file: !3, line: 1156, type: !146)
!1308 = !DILocalVariable(name: "context", scope: !1302, file: !3, line: 1158, type: !469)
!1309 = !DILocalVariable(name: "peektok", scope: !1302, file: !3, line: 1159, type: !314)
!1310 = !DILocalVariable(name: "count", scope: !1302, file: !3, line: 1160, type: !146)
!1311 = !DILocalVariable(name: "sz", scope: !1312, file: !3, line: 1165, type: !229)
!1312 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 1164, column: 5)
!1313 = !DILocation(line: 0, scope: !1302)
!1314 = !DILocation(line: 1158, column: 33, scope: !1302)
!1315 = !DILocation(line: 1163, column: 3, scope: !1302)
!1316 = !DILocation(line: 1158, column: 16, scope: !1302)
!1317 = !DILocation(line: 1163, column: 19, scope: !1302)
!1318 = !DILocation(line: 1165, column: 32, scope: !1312)
!1319 = !DILocation(line: 1165, column: 23, scope: !1312)
!1320 = !DILocation(line: 0, scope: !1312)
!1321 = !DILocation(line: 1166, column: 40, scope: !1312)
!1322 = !DILocation(line: 1166, column: 64, scope: !1312)
!1323 = !DILocation(line: 1166, column: 46, scope: !1312)
!1324 = !DILocation(line: 1167, column: 40, scope: !1312)
!1325 = !DILocation(line: 1167, column: 49, scope: !1312)
!1326 = !DILocation(line: 1167, column: 65, scope: !1312)
!1327 = !DILocation(line: 1167, column: 47, scope: !1312)
!1328 = !DILocation(line: 1169, column: 19, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 1169, column: 11)
!1330 = !DILocation(line: 1169, column: 17, scope: !1329)
!1331 = !DILocation(line: 1169, column: 11, scope: !1312)
!1332 = !DILocation(line: 1170, column: 17, scope: !1329)
!1333 = !DILocation(line: 1171, column: 41, scope: !1329)
!1334 = !DILocation(line: 1172, column: 44, scope: !1329)
!1335 = !DILocation(line: 1172, column: 19, scope: !1329)
!1336 = !DILocation(line: 1174, column: 13, scope: !1312)
!1337 = !DILocation(line: 1176, column: 5, scope: !1302)
!1338 = distinct !{!1338, !1315, !1337}
!1339 = !DILocation(line: 1181, column: 10, scope: !1302)
!1340 = !DILocation(line: 1181, column: 21, scope: !1302)
!1341 = !DILocation(line: 1183, column: 3, scope: !1302)
!1342 = !DILocation(line: 1185, column: 17, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 1184, column: 5)
!1344 = !DILocation(line: 1186, column: 20, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1186, column: 11)
!1346 = !DILocation(line: 1186, column: 25, scope: !1345)
!1347 = !DILocation(line: 1186, column: 11, scope: !1343)
!1348 = !DILocation(line: 1189, column: 15, scope: !1302)
!1349 = !DILocation(line: 1188, column: 5, scope: !1343)
!1350 = distinct !{!1350, !1341, !1351}
!1351 = !DILocation(line: 1189, column: 17, scope: !1302)
!1352 = !DILocation(line: 1191, column: 43, scope: !1302)
!1353 = !DILocation(line: 1191, column: 3, scope: !1302)
!1354 = !DILocation(line: 1192, column: 21, scope: !1302)
!1355 = !DILocation(line: 1194, column: 3, scope: !1302)
!1356 = !DILocation(line: 1195, column: 1, scope: !1302)
!1357 = distinct !DISubprogram(name: "_cpp_lex_token", scope: !3, file: !3, line: 1243, type: !1358, scopeLine: 1244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1360)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!314, !341}
!1360 = !{!1361, !1362}
!1361 = !DILocalVariable(name: "pfile", arg: 1, scope: !1357, file: !3, line: 1243, type: !341)
!1362 = !DILocalVariable(name: "result", scope: !1357, file: !3, line: 1245, type: !147)
!1363 = !DILocation(line: 0, scope: !1357)
!1364 = !DILocation(line: 0, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 1249, column: 11)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 1248, column: 5)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 1247, column: 3)
!1368 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 1247, column: 3)
!1369 = !DILocation(line: 0, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 1250, column: 2)
!1371 = !DILocation(line: 0, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 1260, column: 11)
!1373 = !DILocation(line: 0, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 1272, column: 8)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 1269, column: 2)
!1376 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 1268, column: 11)
!1377 = !DILocation(line: 0, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 1280, column: 9)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 1279, column: 3)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 1278, column: 12)
!1381 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 1277, column: 6)
!1382 = !DILocation(line: 0, scope: !1379)
!1383 = !DILocation(line: 0, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 1285, column: 13)
!1385 = !DILocation(line: 0, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 1288, column: 8)
!1387 = !DILocation(line: 0, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 1293, column: 11)
!1389 = !DILocation(line: 0, scope: !1366)
!1390 = !DILocation(line: 1247, column: 3, scope: !1357)
!1391 = !DILocation(line: 1249, column: 18, scope: !1365)
!1392 = !DILocation(line: 1249, column: 38, scope: !1365)
!1393 = !DILocation(line: 1249, column: 47, scope: !1365)
!1394 = !DILocation(line: 1249, column: 28, scope: !1365)
!1395 = !DILocation(line: 1249, column: 11, scope: !1366)
!1396 = !DILocation(line: 1251, column: 21, scope: !1370)
!1397 = !DILocation(line: 1251, column: 19, scope: !1370)
!1398 = !DILocation(line: 1252, column: 39, scope: !1370)
!1399 = !DILocation(line: 1252, column: 21, scope: !1370)
!1400 = !DILocation(line: 1253, column: 2, scope: !1370)
!1401 = !DILocation(line: 1256, column: 37, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 1256, column: 11)
!1403 = !DILocation(line: 1256, column: 18, scope: !1402)
!1404 = !DILocation(line: 1256, column: 46, scope: !1402)
!1405 = !DILocation(line: 1256, column: 28, scope: !1402)
!1406 = !DILocation(line: 1257, column: 4, scope: !1402)
!1407 = !DILocation(line: 1257, column: 43, scope: !1402)
!1408 = !DILocation(line: 1257, column: 24, scope: !1402)
!1409 = !DILocation(line: 1256, column: 11, scope: !1366)
!1410 = !DILocation(line: 1258, column: 2, scope: !1402)
!1411 = !DILocation(line: 1260, column: 18, scope: !1372)
!1412 = !DILocation(line: 1260, column: 11, scope: !1372)
!1413 = !DILocation(line: 1260, column: 11, scope: !1366)
!1414 = !DILocation(line: 1262, column: 21, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 1261, column: 2)
!1416 = !DILocation(line: 1263, column: 29, scope: !1415)
!1417 = !DILocation(line: 1264, column: 2, scope: !1415)
!1418 = !DILocation(line: 1266, column: 11, scope: !1372)
!1419 = !DILocation(line: 1268, column: 19, scope: !1376)
!1420 = !DILocation(line: 1268, column: 25, scope: !1376)
!1421 = !DILocation(line: 1268, column: 11, scope: !1366)
!1422 = !DILocation(line: 1272, column: 16, scope: !1374)
!1423 = !DILocation(line: 1272, column: 21, scope: !1374)
!1424 = !DILocation(line: 1276, column: 8, scope: !1374)
!1425 = !DILocation(line: 1276, column: 24, scope: !1374)
!1426 = !DILocation(line: 1276, column: 37, scope: !1374)
!1427 = !DILocation(line: 1272, column: 8, scope: !1375)
!1428 = !DILocation(line: 1278, column: 56, scope: !1380)
!1429 = !DILocation(line: 1278, column: 12, scope: !1380)
!1430 = !DILocation(line: 1278, column: 12, scope: !1381)
!1431 = !DILocation(line: 1280, column: 33, scope: !1378)
!1432 = !DILocation(line: 1280, column: 38, scope: !1378)
!1433 = !DILocation(line: 1280, column: 9, scope: !1379)
!1434 = distinct !{!1434, !1435, !1436}
!1435 = !DILocation(line: 1247, column: 3, scope: !1368)
!1436 = !DILocation(line: 1303, column: 5, scope: !1368)
!1437 = !DILocation(line: 1283, column: 3, scope: !1379)
!1438 = !DILocation(line: 1285, column: 26, scope: !1384)
!1439 = !DILocation(line: 1285, column: 13, scope: !1384)
!1440 = !DILocation(line: 1285, column: 13, scope: !1374)
!1441 = !DILocation(line: 1288, column: 18, scope: !1386)
!1442 = !DILocation(line: 1288, column: 8, scope: !1386)
!1443 = !DILocation(line: 1288, column: 30, scope: !1386)
!1444 = !DILocation(line: 1288, column: 47, scope: !1386)
!1445 = !DILocation(line: 1288, column: 34, scope: !1386)
!1446 = !DILocation(line: 1288, column: 8, scope: !1375)
!1447 = !DILocation(line: 1289, column: 57, scope: !1386)
!1448 = !DILocation(line: 1289, column: 44, scope: !1386)
!1449 = !DILocation(line: 1289, column: 6, scope: !1386)
!1450 = !DILocation(line: 1293, column: 24, scope: !1388)
!1451 = !DILocation(line: 1293, column: 11, scope: !1388)
!1452 = !DILocation(line: 1293, column: 37, scope: !1388)
!1453 = !DILocation(line: 1293, column: 53, scope: !1388)
!1454 = !DILocation(line: 1293, column: 40, scope: !1388)
!1455 = !DILocation(line: 1293, column: 11, scope: !1366)
!1456 = !DILocation(line: 1299, column: 23, scope: !1366)
!1457 = !DILocation(line: 1301, column: 25, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 1301, column: 11)
!1459 = !DILocation(line: 1301, column: 12, scope: !1458)
!1460 = !DILocation(line: 1301, column: 34, scope: !1458)
!1461 = !DILocation(line: 1301, column: 45, scope: !1458)
!1462 = !DILocation(line: 1301, column: 50, scope: !1458)
!1463 = !DILocation(line: 1301, column: 11, scope: !1366)
!1464 = !DILocation(line: 1305, column: 3, scope: !1357)
!1465 = distinct !DISubprogram(name: "_cpp_temp_token", scope: !3, file: !3, line: 1202, type: !1466, scopeLine: 1203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!147, !341}
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474}
!1469 = !DILocalVariable(name: "pfile", arg: 1, scope: !1465, file: !3, line: 1202, type: !341)
!1470 = !DILocalVariable(name: "old", scope: !1465, file: !3, line: 1204, type: !147)
!1471 = !DILocalVariable(name: "result", scope: !1465, file: !3, line: 1204, type: !147)
!1472 = !DILocalVariable(name: "sz", scope: !1465, file: !3, line: 1205, type: !229)
!1473 = !DILocalVariable(name: "la", scope: !1465, file: !3, line: 1206, type: !229)
!1474 = !DILocalVariable(name: "next", scope: !1475, file: !3, line: 1214, type: !246)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 1213, column: 9)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 1212, column: 11)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 1211, column: 5)
!1478 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 1210, column: 7)
!1479 = !DILocation(line: 0, scope: !1465)
!1480 = !DILocation(line: 1205, column: 25, scope: !1465)
!1481 = !DILocation(line: 1205, column: 34, scope: !1465)
!1482 = !DILocation(line: 1205, column: 49, scope: !1465)
!1483 = !DILocation(line: 1205, column: 40, scope: !1465)
!1484 = !DILocation(line: 1206, column: 37, scope: !1465)
!1485 = !DILocation(line: 1206, column: 18, scope: !1465)
!1486 = !DILocation(line: 1208, column: 16, scope: !1465)
!1487 = !DILocation(line: 1210, column: 7, scope: !1478)
!1488 = !DILocation(line: 1210, column: 7, scope: !1465)
!1489 = !DILocation(line: 1212, column: 14, scope: !1476)
!1490 = !DILocation(line: 1212, column: 11, scope: !1477)
!1491 = !DILocation(line: 1214, column: 28, scope: !1475)
!1492 = !DILocation(line: 0, scope: !1475)
!1493 = !DILocation(line: 1216, column: 18, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 1216, column: 15)
!1495 = !DILocation(line: 1216, column: 15, scope: !1475)
!1496 = !DILocation(line: 1217, column: 28, scope: !1494)
!1497 = !DILocation(line: 1217, column: 33, scope: !1494)
!1498 = !DILocation(line: 1217, column: 22, scope: !1494)
!1499 = !DILocation(line: 1217, column: 44, scope: !1494)
!1500 = !DILocation(line: 1218, column: 26, scope: !1494)
!1501 = !DILocation(line: 1218, column: 32, scope: !1494)
!1502 = !DILocation(line: 1217, column: 13, scope: !1494)
!1503 = !DILocation(line: 1220, column: 17, scope: !1475)
!1504 = !DILocation(line: 1220, column: 34, scope: !1475)
!1505 = !DILocation(line: 1220, column: 43, scope: !1475)
!1506 = !DILocation(line: 1220, column: 27, scope: !1475)
!1507 = !DILocation(line: 1221, column: 9, scope: !1475)
!1508 = !DILocation(line: 1223, column: 14, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 1223, column: 11)
!1510 = !DILocation(line: 1223, column: 11, scope: !1477)
!1511 = !DILocation(line: 1224, column: 25, scope: !1509)
!1512 = !DILocation(line: 1224, column: 35, scope: !1509)
!1513 = !DILocation(line: 1224, column: 18, scope: !1509)
!1514 = !DILocation(line: 1224, column: 47, scope: !1509)
!1515 = !DILocation(line: 1225, column: 18, scope: !1509)
!1516 = !DILocation(line: 1225, column: 35, scope: !1509)
!1517 = !DILocation(line: 1224, column: 9, scope: !1509)
!1518 = !DILocation(line: 1228, column: 8, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 1228, column: 7)
!1520 = !DILocation(line: 1228, column: 11, scope: !1519)
!1521 = !DILocation(line: 1234, column: 28, scope: !1465)
!1522 = !DILocation(line: 1228, column: 21, scope: !1519)
!1523 = !DILocation(line: 1228, column: 41, scope: !1519)
!1524 = !DILocation(line: 1228, column: 50, scope: !1519)
!1525 = !DILocation(line: 1228, column: 31, scope: !1519)
!1526 = !DILocation(line: 1228, column: 7, scope: !1465)
!1527 = !DILocation(line: 1230, column: 24, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 1229, column: 5)
!1529 = !DILocation(line: 1230, column: 22, scope: !1528)
!1530 = !DILocation(line: 1231, column: 42, scope: !1528)
!1531 = !DILocation(line: 1231, column: 24, scope: !1528)
!1532 = !DILocation(line: 1232, column: 5, scope: !1528)
!1533 = !DILocation(line: 1235, column: 26, scope: !1465)
!1534 = !DILocation(line: 1235, column: 11, scope: !1465)
!1535 = !DILocation(line: 1235, column: 19, scope: !1465)
!1536 = !DILocation(line: 1236, column: 3, scope: !1465)
!1537 = distinct !DISubprogram(name: "next_tokenrun", scope: !3, file: !3, line: 1142, type: !1538, scopeLine: 1143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1540)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!246, !246}
!1540 = !{!1541}
!1541 = !DILocalVariable(name: "run", arg: 1, scope: !1537, file: !3, line: 1142, type: !246)
!1542 = !DILocation(line: 0, scope: !1537)
!1543 = !DILocation(line: 1144, column: 12, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 1144, column: 7)
!1545 = !DILocation(line: 1144, column: 17, scope: !1544)
!1546 = !DILocation(line: 1144, column: 7, scope: !1537)
!1547 = !DILocation(line: 1146, column: 19, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 1145, column: 5)
!1549 = !DILocation(line: 1146, column: 17, scope: !1548)
!1550 = !DILocation(line: 1147, column: 18, scope: !1548)
!1551 = !DILocation(line: 1147, column: 23, scope: !1548)
!1552 = !DILocation(line: 1148, column: 32, scope: !1548)
!1553 = !DILocation(line: 1148, column: 7, scope: !1548)
!1554 = !DILocation(line: 1151, column: 15, scope: !1537)
!1555 = !DILocation(line: 1149, column: 5, scope: !1548)
!1556 = !DILocation(line: 1151, column: 3, scope: !1537)
!1557 = distinct !DISubprogram(name: "_cpp_lex_direct", scope: !3, file: !3, line: 1372, type: !1466, scopeLine: 1373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1558)
!1558 = !{!1559, !1560, !1562, !1563, !1564, !1565, !1567, !1568, !1571, !1575, !1576, !1577, !1584, !1586, !1589, !1591, !1592, !1593, !1594}
!1559 = !DILocalVariable(name: "pfile", arg: 1, scope: !1557, file: !3, line: 1372, type: !341)
!1560 = !DILocalVariable(name: "c", scope: !1557, file: !3, line: 1374, type: !1561)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "cppchar_t", file: !6, line: 258, baseType: !7)
!1562 = !DILocalVariable(name: "buffer", scope: !1557, file: !3, line: 1375, type: !346)
!1563 = !DILocalVariable(name: "comment_start", scope: !1557, file: !3, line: 1376, type: !172)
!1564 = !DILocalVariable(name: "result", scope: !1557, file: !3, line: 1377, type: !147)
!1565 = !DILocalVariable(name: "to_column", scope: !1566, file: !3, line: 1426, type: !7)
!1566 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 1426, column: 3)
!1567 = !DILocalVariable(name: "set", scope: !1566, file: !3, line: 1426, type: !432)
!1568 = !DILocalVariable(name: "r", scope: !1569, file: !3, line: 1426, type: !152)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 1426, column: 3)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 1426, column: 3)
!1571 = !DILocalVariable(name: "line_table", scope: !1572, file: !3, line: 1438, type: !1022)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 1438, column: 2)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1437, column: 11)
!1574 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 1430, column: 5)
!1575 = !DILocalVariable(name: "map", scope: !1572, file: !3, line: 1438, type: !589)
!1576 = !DILocalVariable(name: "line", scope: !1572, file: !3, line: 1438, type: !441)
!1577 = !DILocalVariable(name: "nst", scope: !1578, file: !3, line: 1445, type: !1579)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1444, column: 7)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "normalize_state", file: !241, line: 641, size: 96, elements: !1580)
!1580 = !{!1581, !1582, !1583}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1579, file: !241, line: 644, baseType: !1561, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "prev_class", scope: !1579, file: !241, line: 646, baseType: !142, size: 8, offset: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1579, file: !241, line: 648, baseType: !31, size: 32, offset: 64)
!1584 = !DILocalVariable(name: "nst", scope: !1585, file: !3, line: 1490, type: !1579)
!1585 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1489, column: 7)
!1586 = !DILocalVariable(name: "nst", scope: !1587, file: !3, line: 1630, type: !1579)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 1629, column: 2)
!1588 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1628, column: 11)
!1589 = !DILocalVariable(name: "base", scope: !1590, file: !3, line: 1715, type: !138)
!1590 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1714, column: 7)
!1591 = !DILocalVariable(name: "nst", scope: !1590, file: !3, line: 1716, type: !1579)
!1592 = !DILabel(scope: !1557, name: "fresh_line", file: !3, line: 1379)
!1593 = !DILabel(scope: !1557, name: "update_tokens_line", file: !3, line: 1414)
!1594 = !DILabel(scope: !1557, name: "skipped_white", file: !3, line: 1417)
!1595 = !DILocation(line: 0, scope: !1557)
!1596 = !DILocation(line: 1377, column: 30, scope: !1557)
!1597 = !DILocation(line: 1377, column: 39, scope: !1557)
!1598 = !DILocation(line: 0, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 1384, column: 11)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 1383, column: 5)
!1601 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 1382, column: 7)
!1602 = !DILocation(line: 0, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 1403, column: 11)
!1604 = !DILocation(line: 0, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 1404, column: 2)
!1606 = !DILocation(line: 0, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 1410, column: 11)
!1608 = !DILocation(line: 0, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 1418, column: 7)
!1610 = !DILocation(line: 0, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 1519, column: 16)
!1612 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1514, column: 11)
!1613 = !DILocation(line: 0, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 1524, column: 8)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 1521, column: 2)
!1616 = !DILocation(line: 0, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 1534, column: 8)
!1618 = !DILocation(line: 0, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1549, column: 11)
!1620 = !DILocation(line: 1377, column: 3, scope: !1557)
!1621 = !DILocation(line: 1377, column: 14, scope: !1557)
!1622 = !DILocation(line: 1379, column: 2, scope: !1557)
!1623 = !DILocation(line: 1380, column: 11, scope: !1557)
!1624 = !DILocation(line: 1380, column: 17, scope: !1557)
!1625 = !DILocation(line: 1381, column: 19, scope: !1557)
!1626 = !DILocation(line: 1382, column: 15, scope: !1601)
!1627 = !DILocation(line: 1382, column: 7, scope: !1601)
!1628 = !DILocation(line: 1382, column: 7, scope: !1557)
!1629 = !DILocation(line: 1384, column: 24, scope: !1599)
!1630 = !DILocation(line: 1384, column: 11, scope: !1599)
!1631 = !DILocation(line: 1384, column: 11, scope: !1600)
!1632 = !DILocation(line: 1386, column: 12, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 1385, column: 2)
!1634 = !DILocation(line: 1386, column: 17, scope: !1633)
!1635 = !DILocation(line: 1387, column: 36, scope: !1633)
!1636 = !DILocation(line: 1388, column: 22, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 1388, column: 8)
!1638 = !DILocation(line: 1388, column: 9, scope: !1637)
!1639 = !DILocation(line: 1388, column: 8, scope: !1633)
!1640 = !DILocation(line: 1389, column: 19, scope: !1637)
!1641 = !DILocation(line: 1389, column: 36, scope: !1637)
!1642 = !DILocation(line: 1389, column: 6, scope: !1637)
!1643 = !DILocation(line: 1392, column: 12, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 1392, column: 11)
!1645 = !DILocation(line: 1392, column: 11, scope: !1600)
!1646 = !DILocation(line: 1394, column: 12, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 1393, column: 2)
!1648 = !DILocation(line: 1394, column: 17, scope: !1647)
!1649 = !DILocation(line: 1395, column: 22, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 1395, column: 8)
!1651 = !DILocation(line: 1395, column: 9, scope: !1650)
!1652 = !DILocation(line: 1395, column: 8, scope: !1647)
!1653 = !DILocation(line: 1398, column: 33, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 1396, column: 6)
!1655 = !DILocation(line: 1398, column: 45, scope: !1654)
!1656 = !DILocation(line: 1398, column: 16, scope: !1654)
!1657 = !DILocation(line: 1398, column: 24, scope: !1654)
!1658 = !DILocation(line: 1399, column: 22, scope: !1654)
!1659 = !DILocation(line: 1400, column: 6, scope: !1654)
!1660 = !DILocation(line: 1403, column: 19, scope: !1603)
!1661 = !DILocation(line: 1403, column: 12, scope: !1603)
!1662 = !DILocation(line: 1403, column: 11, scope: !1600)
!1663 = !DILocation(line: 1405, column: 19, scope: !1605)
!1664 = !DILocation(line: 1406, column: 29, scope: !1605)
!1665 = !DILocation(line: 1407, column: 30, scope: !1605)
!1666 = !DILocation(line: 1407, column: 21, scope: !1605)
!1667 = !DILocation(line: 1408, column: 2, scope: !1605)
!1668 = !DILocation(line: 1409, column: 15, scope: !1600)
!1669 = !DILocation(line: 1409, column: 21, scope: !1600)
!1670 = !DILocation(line: 1410, column: 24, scope: !1607)
!1671 = !DILocation(line: 1410, column: 37, scope: !1607)
!1672 = !DILocation(line: 1410, column: 11, scope: !1600)
!1673 = !DILocation(line: 1411, column: 16, scope: !1607)
!1674 = !DILocation(line: 1411, column: 2, scope: !1607)
!1675 = !DILocation(line: 1413, column: 19, scope: !1557)
!1676 = !DILocation(line: 0, scope: !1566)
!1677 = !DILocation(line: 0, scope: !1574)
!1678 = !DILocation(line: 1413, column: 3, scope: !1557)
!1679 = !DILocation(line: 1414, column: 2, scope: !1557)
!1680 = !DILocation(line: 1415, column: 28, scope: !1557)
!1681 = !DILocation(line: 1415, column: 40, scope: !1557)
!1682 = !DILocation(line: 1415, column: 19, scope: !1557)
!1683 = !DILocation(line: 1415, column: 3, scope: !1557)
!1684 = !DILocation(line: 1417, column: 2, scope: !1557)
!1685 = !DILocation(line: 1418, column: 15, scope: !1609)
!1686 = !DILocation(line: 1418, column: 30, scope: !1609)
!1687 = !DILocation(line: 1418, column: 44, scope: !1609)
!1688 = !DILocation(line: 1418, column: 22, scope: !1609)
!1689 = !DILocation(line: 1418, column: 54, scope: !1609)
!1690 = !DILocation(line: 1418, column: 19, scope: !1609)
!1691 = !DILocation(line: 1419, column: 7, scope: !1609)
!1692 = !DILocation(line: 1419, column: 18, scope: !1609)
!1693 = !DILocation(line: 1419, column: 11, scope: !1609)
!1694 = !DILocation(line: 1418, column: 7, scope: !1557)
!1695 = !DILocation(line: 1421, column: 7, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 1420, column: 5)
!1697 = !DILocation(line: 1422, column: 32, scope: !1696)
!1698 = !DILocation(line: 1422, column: 44, scope: !1696)
!1699 = !DILocation(line: 1422, column: 23, scope: !1696)
!1700 = !DILocation(line: 1424, column: 19, scope: !1557)
!1701 = !DILocation(line: 1423, column: 5, scope: !1696)
!1702 = !DILocation(line: 1424, column: 7, scope: !1557)
!1703 = !DILocation(line: 1426, column: 3, scope: !1566)
!1704 = !DILocation(line: 1426, column: 3, scope: !1570)
!1705 = !DILocation(line: 1426, column: 3, scope: !1569)
!1706 = !DILocation(line: 0, scope: !1569)
!1707 = !DILocation(line: 1426, column: 3, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 1426, column: 3)
!1709 = !DILocation(line: 0, scope: !1570)
!1710 = !DILocation(line: 1429, column: 3, scope: !1557)
!1711 = !DILocation(line: 1432, column: 21, scope: !1574)
!1712 = !DILocation(line: 1433, column: 7, scope: !1574)
!1713 = !DILocation(line: 1434, column: 7, scope: !1574)
!1714 = !DILocation(line: 1437, column: 19, scope: !1573)
!1715 = !DILocation(line: 1437, column: 33, scope: !1573)
!1716 = !DILocation(line: 1437, column: 23, scope: !1573)
!1717 = !DILocation(line: 1437, column: 11, scope: !1574)
!1718 = !DILocation(line: 1438, column: 2, scope: !1572)
!1719 = !DILocation(line: 0, scope: !1572)
!1720 = !DILocation(line: 1439, column: 15, scope: !1574)
!1721 = !DILocation(line: 1439, column: 25, scope: !1574)
!1722 = !DILocation(line: 1440, column: 7, scope: !1574)
!1723 = !DILocation(line: 1445, column: 2, scope: !1578)
!1724 = !DILocation(line: 1445, column: 25, scope: !1578)
!1725 = !DILocation(line: 1446, column: 10, scope: !1578)
!1726 = !DILocation(line: 1446, column: 15, scope: !1578)
!1727 = !DILocation(line: 1447, column: 34, scope: !1578)
!1728 = !DILocation(line: 0, scope: !1578)
!1729 = !DILocation(line: 1447, column: 2, scope: !1578)
!1730 = !DILocation(line: 1448, column: 2, scope: !1578)
!1731 = !DILocation(line: 1450, column: 7, scope: !1574)
!1732 = !DILocation(line: 1458, column: 13, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1458, column: 11)
!1734 = !DILocation(line: 1458, column: 20, scope: !1733)
!1735 = !DILocation(line: 1458, column: 23, scope: !1733)
!1736 = !DILocation(line: 1458, column: 11, scope: !1574)
!1737 = !DILocation(line: 1460, column: 18, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 1460, column: 8)
!1739 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 1459, column: 2)
!1740 = !DILocation(line: 1460, column: 9, scope: !1738)
!1741 = !DILocation(line: 1460, column: 22, scope: !1738)
!1742 = !DILocation(line: 1460, column: 35, scope: !1738)
!1743 = !DILocation(line: 1460, column: 30, scope: !1738)
!1744 = !DILocation(line: 1461, column: 24, scope: !1738)
!1745 = !DILocation(line: 1462, column: 8, scope: !1738)
!1746 = !DILocation(line: 1462, column: 25, scope: !1738)
!1747 = !DILocation(line: 1463, column: 5, scope: !1738)
!1748 = !DILocation(line: 1464, column: 8, scope: !1738)
!1749 = !DILocation(line: 1464, column: 23, scope: !1738)
!1750 = !DILocation(line: 1465, column: 5, scope: !1738)
!1751 = !DILocation(line: 1465, column: 8, scope: !1738)
!1752 = !DILocation(line: 1466, column: 8, scope: !1738)
!1753 = !DILocation(line: 1466, column: 25, scope: !1738)
!1754 = !DILocation(line: 1467, column: 10, scope: !1738)
!1755 = !DILocation(line: 1467, column: 5, scope: !1738)
!1756 = !DILocation(line: 1468, column: 9, scope: !1738)
!1757 = !DILocation(line: 1468, column: 24, scope: !1738)
!1758 = !DILocation(line: 1469, column: 9, scope: !1738)
!1759 = !DILocation(line: 1469, column: 28, scope: !1738)
!1760 = !DILocation(line: 1469, column: 35, scope: !1738)
!1761 = !DILocation(line: 1469, column: 38, scope: !1738)
!1762 = !DILocation(line: 1469, column: 53, scope: !1738)
!1763 = !DILocation(line: 1460, column: 8, scope: !1739)
!1764 = !DILocation(line: 1471, column: 47, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 1470, column: 6)
!1766 = !DILocation(line: 1471, column: 8, scope: !1765)
!1767 = !DILocation(line: 1472, column: 8, scope: !1765)
!1768 = !DILocation(line: 1488, column: 15, scope: !1574)
!1769 = !DILocation(line: 1488, column: 20, scope: !1574)
!1770 = !DILocation(line: 1490, column: 2, scope: !1585)
!1771 = !DILocation(line: 1490, column: 25, scope: !1585)
!1772 = !DILocation(line: 1491, column: 57, scope: !1585)
!1773 = !DILocation(line: 1491, column: 61, scope: !1585)
!1774 = !DILocation(line: 0, scope: !1585)
!1775 = !DILocation(line: 1491, column: 26, scope: !1585)
!1776 = !DILocation(line: 1491, column: 10, scope: !1585)
!1777 = !DILocation(line: 1491, column: 19, scope: !1585)
!1778 = !DILocation(line: 1491, column: 24, scope: !1585)
!1779 = !DILocation(line: 1493, column: 2, scope: !1585)
!1780 = !DILocation(line: 1494, column: 7, scope: !1574)
!1781 = !DILocation(line: 1497, column: 28, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1497, column: 11)
!1783 = !DILocation(line: 1497, column: 34, scope: !1782)
!1784 = !DILocation(line: 1497, column: 40, scope: !1782)
!1785 = !DILocation(line: 1497, column: 11, scope: !1574)
!1786 = !DILocation(line: 1499, column: 18, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 1498, column: 2)
!1788 = !DILocation(line: 1500, column: 59, scope: !1787)
!1789 = !DILocation(line: 1500, column: 17, scope: !1787)
!1790 = !DILocation(line: 1501, column: 2, scope: !1787)
!1791 = !DILocation(line: 1506, column: 42, scope: !1574)
!1792 = !DILocation(line: 1506, column: 46, scope: !1574)
!1793 = !DILocation(line: 1506, column: 7, scope: !1574)
!1794 = !DILocation(line: 1507, column: 7, scope: !1574)
!1795 = !DILocation(line: 1511, column: 31, scope: !1574)
!1796 = !DILocation(line: 1512, column: 11, scope: !1574)
!1797 = !DILocation(line: 1514, column: 11, scope: !1574)
!1798 = !DILocation(line: 1516, column: 8, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 1516, column: 8)
!1800 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 1515, column: 2)
!1801 = !DILocation(line: 1516, column: 8, scope: !1800)
!1802 = !DILocation(line: 1517, column: 6, scope: !1799)
!1803 = !DILocation(line: 1519, column: 29, scope: !1611)
!1804 = !DILocation(line: 1520, column: 8, scope: !1611)
!1805 = !DILocation(line: 1520, column: 11, scope: !1611)
!1806 = !DILocation(line: 1519, column: 16, scope: !1612)
!1807 = !DILocation(line: 1524, column: 8, scope: !1614)
!1808 = !DILocation(line: 1524, column: 33, scope: !1614)
!1809 = !DILocation(line: 1524, column: 47, scope: !1614)
!1810 = !DILocation(line: 1524, column: 50, scope: !1614)
!1811 = !DILocation(line: 1525, column: 8, scope: !1614)
!1812 = !DILocation(line: 1525, column: 21, scope: !1614)
!1813 = !DILocation(line: 1525, column: 13, scope: !1614)
!1814 = !DILocation(line: 1524, column: 8, scope: !1615)
!1815 = !DILocation(line: 1527, column: 8, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 1526, column: 6)
!1817 = !DILocation(line: 1529, column: 8, scope: !1816)
!1818 = !DILocation(line: 1531, column: 42, scope: !1816)
!1819 = !DILocation(line: 1532, column: 6, scope: !1816)
!1820 = !DILocation(line: 1534, column: 8, scope: !1617)
!1821 = !DILocation(line: 1534, column: 34, scope: !1617)
!1822 = !DILocation(line: 1534, column: 37, scope: !1617)
!1823 = !DILocation(line: 1534, column: 8, scope: !1615)
!1824 = !DILocation(line: 1535, column: 6, scope: !1617)
!1825 = !DILocation(line: 1537, column: 16, scope: !1611)
!1826 = !DILocation(line: 1539, column: 12, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 1538, column: 2)
!1828 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 1537, column: 16)
!1829 = !DILocation(line: 1539, column: 15, scope: !1827)
!1830 = !DILocation(line: 1540, column: 12, scope: !1827)
!1831 = !DILocation(line: 1540, column: 17, scope: !1827)
!1832 = !DILocation(line: 1541, column: 4, scope: !1827)
!1833 = !DILocation(line: 1545, column: 12, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 1544, column: 2)
!1835 = !DILocation(line: 1545, column: 17, scope: !1834)
!1836 = !DILocation(line: 1546, column: 4, scope: !1834)
!1837 = !DILocation(line: 1549, column: 25, scope: !1619)
!1838 = !DILocation(line: 1549, column: 12, scope: !1619)
!1839 = !DILocation(line: 1549, column: 11, scope: !1574)
!1840 = !DILocation(line: 1551, column: 18, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 1550, column: 2)
!1842 = !DILocation(line: 1552, column: 4, scope: !1841)
!1843 = !DILocation(line: 1556, column: 7, scope: !1574)
!1844 = !DILocation(line: 1557, column: 7, scope: !1574)
!1845 = !DILocation(line: 1560, column: 24, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1560, column: 11)
!1847 = !DILocation(line: 1560, column: 11, scope: !1846)
!1848 = !DILocation(line: 1560, column: 11, scope: !1574)
!1849 = !DILocation(line: 1562, column: 39, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 1561, column: 2)
!1851 = !DILocation(line: 1562, column: 43, scope: !1850)
!1852 = !DILocation(line: 1562, column: 4, scope: !1850)
!1853 = !DILocation(line: 1563, column: 16, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 1563, column: 8)
!1855 = !DILocation(line: 1563, column: 21, scope: !1854)
!1856 = !DILocation(line: 1563, column: 8, scope: !1850)
!1857 = !DILocation(line: 1567, column: 15, scope: !1574)
!1858 = !DILocation(line: 1567, column: 20, scope: !1574)
!1859 = !DILocation(line: 1568, column: 20, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1568, column: 11)
!1861 = !DILocation(line: 1568, column: 11, scope: !1860)
!1862 = !DILocation(line: 1568, column: 24, scope: !1860)
!1863 = !DILocation(line: 1568, column: 11, scope: !1574)
!1864 = !DILocation(line: 1569, column: 13, scope: !1860)
!1865 = !DILocation(line: 1569, column: 30, scope: !1860)
!1866 = !DILocation(line: 1569, column: 2, scope: !1860)
!1867 = !DILocation(line: 1570, column: 29, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 1570, column: 16)
!1869 = !DILocation(line: 1570, column: 16, scope: !1860)
!1870 = !DILocation(line: 1572, column: 15, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 1571, column: 2)
!1872 = !DILocation(line: 1573, column: 4, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 1573, column: 4)
!1874 = !DILocation(line: 1573, column: 4, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 1573, column: 4)
!1876 = !DILocation(line: 1575, column: 16, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 1575, column: 16)
!1878 = !DILocation(line: 1575, column: 16, scope: !1868)
!1879 = !DILocation(line: 1577, column: 21, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 1577, column: 8)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 1576, column: 2)
!1882 = !DILocation(line: 1577, column: 8, scope: !1881)
!1883 = !DILocation(line: 1579, column: 19, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 1578, column: 6)
!1885 = !DILocation(line: 1580, column: 22, scope: !1884)
!1886 = !DILocation(line: 1581, column: 21, scope: !1884)
!1887 = !DILocation(line: 1582, column: 6, scope: !1884)
!1888 = !DILocation(line: 1583, column: 26, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 1583, column: 13)
!1890 = !DILocation(line: 1583, column: 13, scope: !1880)
!1891 = !DILocation(line: 1585, column: 19, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 1584, column: 6)
!1893 = !DILocation(line: 1586, column: 22, scope: !1892)
!1894 = !DILocation(line: 1587, column: 21, scope: !1892)
!1895 = !DILocation(line: 1588, column: 6, scope: !1892)
!1896 = !DILocation(line: 1593, column: 15, scope: !1574)
!1897 = !DILocation(line: 1593, column: 20, scope: !1574)
!1898 = !DILocation(line: 1594, column: 20, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1594, column: 11)
!1900 = !DILocation(line: 1594, column: 11, scope: !1899)
!1901 = !DILocation(line: 1594, column: 24, scope: !1899)
!1902 = !DILocation(line: 1594, column: 11, scope: !1574)
!1903 = !DILocation(line: 1595, column: 13, scope: !1899)
!1904 = !DILocation(line: 1595, column: 30, scope: !1899)
!1905 = !DILocation(line: 1595, column: 2, scope: !1899)
!1906 = !DILocation(line: 1596, column: 29, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 1596, column: 16)
!1908 = !DILocation(line: 1596, column: 16, scope: !1899)
!1909 = !DILocation(line: 1598, column: 15, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 1597, column: 2)
!1911 = !DILocation(line: 1599, column: 4, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 1599, column: 4)
!1913 = !DILocation(line: 1599, column: 4, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 1599, column: 4)
!1915 = !DILocation(line: 1604, column: 15, scope: !1574)
!1916 = !DILocation(line: 1604, column: 20, scope: !1574)
!1917 = !DILocation(line: 1605, column: 20, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1605, column: 11)
!1919 = !DILocation(line: 1605, column: 11, scope: !1918)
!1920 = !DILocation(line: 1605, column: 24, scope: !1918)
!1921 = !DILocation(line: 1605, column: 11, scope: !1574)
!1922 = !DILocation(line: 1606, column: 13, scope: !1918)
!1923 = !DILocation(line: 1606, column: 30, scope: !1918)
!1924 = !DILocation(line: 1606, column: 2, scope: !1918)
!1925 = !DILocation(line: 1607, column: 16, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 1607, column: 16)
!1927 = !DILocation(line: 1607, column: 16, scope: !1918)
!1928 = !DILocation(line: 1609, column: 21, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 1609, column: 8)
!1930 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 1608, column: 2)
!1931 = !DILocation(line: 1609, column: 8, scope: !1930)
!1932 = !DILocation(line: 1611, column: 19, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 1610, column: 6)
!1934 = !DILocation(line: 1612, column: 22, scope: !1933)
!1935 = !DILocation(line: 1613, column: 21, scope: !1933)
!1936 = !DILocation(line: 1614, column: 21, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 1614, column: 12)
!1938 = !DILocation(line: 1614, column: 12, scope: !1937)
!1939 = !DILocation(line: 1614, column: 25, scope: !1937)
!1940 = !DILocation(line: 1614, column: 32, scope: !1937)
!1941 = !DILocation(line: 1614, column: 35, scope: !1937)
!1942 = !DILocation(line: 1614, column: 50, scope: !1937)
!1943 = !DILocation(line: 1614, column: 12, scope: !1933)
!1944 = !DILocation(line: 1615, column: 15, scope: !1937)
!1945 = !DILocation(line: 1615, column: 34, scope: !1937)
!1946 = !DILocation(line: 1615, column: 59, scope: !1937)
!1947 = !DILocation(line: 1615, column: 68, scope: !1937)
!1948 = !DILocation(line: 1615, column: 3, scope: !1937)
!1949 = !DILocation(line: 1617, column: 26, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 1617, column: 13)
!1951 = !DILocation(line: 1617, column: 13, scope: !1929)
!1952 = !DILocation(line: 1619, column: 19, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 1618, column: 6)
!1954 = !DILocation(line: 1620, column: 22, scope: !1953)
!1955 = !DILocation(line: 1621, column: 21, scope: !1953)
!1956 = !DILocation(line: 1622, column: 6, scope: !1953)
!1957 = !DILocation(line: 1627, column: 15, scope: !1574)
!1958 = !DILocation(line: 1627, column: 20, scope: !1574)
!1959 = !DILocation(line: 1628, column: 11, scope: !1588)
!1960 = !DILocation(line: 1628, column: 11, scope: !1574)
!1961 = !DILocation(line: 1630, column: 4, scope: !1587)
!1962 = !DILocation(line: 1630, column: 27, scope: !1587)
!1963 = !DILocation(line: 1631, column: 17, scope: !1587)
!1964 = !DILocation(line: 1632, column: 36, scope: !1587)
!1965 = !DILocation(line: 0, scope: !1587)
!1966 = !DILocation(line: 1632, column: 4, scope: !1587)
!1967 = !DILocation(line: 1633, column: 4, scope: !1587)
!1968 = !DILocation(line: 1634, column: 2, scope: !1588)
!1969 = !DILocation(line: 1634, column: 2, scope: !1587)
!1970 = !DILocation(line: 1635, column: 29, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 1635, column: 16)
!1972 = !DILocation(line: 1635, column: 36, scope: !1971)
!1973 = !DILocation(line: 1635, column: 39, scope: !1971)
!1974 = !DILocation(line: 1635, column: 54, scope: !1971)
!1975 = !DILocation(line: 1635, column: 16, scope: !1588)
!1976 = !DILocation(line: 1636, column: 14, scope: !1971)
!1977 = !DILocation(line: 1636, column: 33, scope: !1971)
!1978 = !DILocation(line: 1636, column: 2, scope: !1971)
!1979 = !DILocation(line: 1637, column: 29, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1637, column: 16)
!1981 = !DILocation(line: 1637, column: 36, scope: !1980)
!1982 = !DILocation(line: 1637, column: 39, scope: !1980)
!1983 = !DILocation(line: 1637, column: 16, scope: !1971)
!1984 = !DILocation(line: 1638, column: 13, scope: !1980)
!1985 = !DILocation(line: 1638, column: 30, scope: !1980)
!1986 = !DILocation(line: 1638, column: 2, scope: !1980)
!1987 = !DILocation(line: 1642, column: 15, scope: !1574)
!1988 = !DILocation(line: 1642, column: 20, scope: !1574)
!1989 = !DILocation(line: 1643, column: 20, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1643, column: 11)
!1991 = !DILocation(line: 1643, column: 11, scope: !1990)
!1992 = !DILocation(line: 1643, column: 24, scope: !1990)
!1993 = !DILocation(line: 1643, column: 11, scope: !1574)
!1994 = !DILocation(line: 1644, column: 13, scope: !1990)
!1995 = !DILocation(line: 1644, column: 30, scope: !1990)
!1996 = !DILocation(line: 1644, column: 2, scope: !1990)
!1997 = !DILocation(line: 1645, column: 29, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 1645, column: 16)
!1999 = !DILocation(line: 1645, column: 16, scope: !1990)
!2000 = !DILocation(line: 1646, column: 13, scope: !1998)
!2001 = !DILocation(line: 1646, column: 30, scope: !1998)
!2002 = !DILocation(line: 1646, column: 2, scope: !1998)
!2003 = !DILocation(line: 1650, column: 15, scope: !1574)
!2004 = !DILocation(line: 1650, column: 20, scope: !1574)
!2005 = !DILocation(line: 1651, column: 20, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1651, column: 11)
!2007 = !DILocation(line: 1651, column: 11, scope: !2006)
!2008 = !DILocation(line: 1651, column: 24, scope: !2006)
!2009 = !DILocation(line: 1651, column: 11, scope: !1574)
!2010 = !DILocation(line: 1653, column: 15, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 1652, column: 2)
!2012 = !DILocation(line: 1654, column: 17, scope: !2011)
!2013 = !DILocation(line: 1655, column: 17, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 1655, column: 8)
!2015 = !DILocation(line: 1655, column: 8, scope: !2014)
!2016 = !DILocation(line: 1655, column: 21, scope: !2014)
!2017 = !DILocation(line: 1655, column: 28, scope: !2014)
!2018 = !DILocation(line: 1655, column: 31, scope: !2014)
!2019 = !DILocation(line: 1655, column: 8, scope: !2011)
!2020 = !DILocation(line: 1656, column: 17, scope: !2014)
!2021 = !DILocation(line: 1656, column: 34, scope: !2014)
!2022 = !DILocation(line: 1656, column: 6, scope: !2014)
!2023 = !DILocation(line: 1658, column: 29, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 1658, column: 16)
!2025 = !DILocation(line: 1658, column: 16, scope: !2006)
!2026 = !DILocation(line: 1659, column: 13, scope: !2024)
!2027 = !DILocation(line: 1659, column: 30, scope: !2024)
!2028 = !DILocation(line: 1659, column: 2, scope: !2024)
!2029 = !DILocation(line: 1660, column: 29, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 1660, column: 16)
!2031 = !DILocation(line: 1660, column: 16, scope: !2024)
!2032 = !DILocation(line: 1661, column: 13, scope: !2030)
!2033 = !DILocation(line: 1661, column: 30, scope: !2030)
!2034 = !DILocation(line: 1661, column: 2, scope: !2030)
!2035 = !DILocation(line: 1665, column: 15, scope: !1574)
!2036 = !DILocation(line: 1665, column: 20, scope: !1574)
!2037 = !DILocation(line: 1666, column: 20, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1666, column: 11)
!2039 = !DILocation(line: 1666, column: 11, scope: !2038)
!2040 = !DILocation(line: 1666, column: 24, scope: !2038)
!2041 = !DILocation(line: 1666, column: 11, scope: !1574)
!2042 = !DILocation(line: 1667, column: 13, scope: !2038)
!2043 = !DILocation(line: 1667, column: 30, scope: !2038)
!2044 = !DILocation(line: 1667, column: 2, scope: !2038)
!2045 = !DILocation(line: 1668, column: 29, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 1668, column: 16)
!2047 = !DILocation(line: 1668, column: 16, scope: !2038)
!2048 = !DILocation(line: 1669, column: 13, scope: !2046)
!2049 = !DILocation(line: 1669, column: 30, scope: !2046)
!2050 = !DILocation(line: 1669, column: 2, scope: !2046)
!2051 = !DILocation(line: 1673, column: 15, scope: !1574)
!2052 = !DILocation(line: 1673, column: 20, scope: !1574)
!2053 = !DILocation(line: 1674, column: 20, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1674, column: 11)
!2055 = !DILocation(line: 1674, column: 11, scope: !2054)
!2056 = !DILocation(line: 1674, column: 24, scope: !2054)
!2057 = !DILocation(line: 1674, column: 11, scope: !1574)
!2058 = !DILocation(line: 1675, column: 13, scope: !2054)
!2059 = !DILocation(line: 1675, column: 30, scope: !2054)
!2060 = !DILocation(line: 1675, column: 2, scope: !2054)
!2061 = !DILocation(line: 1676, column: 29, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 1676, column: 16)
!2063 = !DILocation(line: 1676, column: 16, scope: !2054)
!2064 = !DILocation(line: 1677, column: 13, scope: !2062)
!2065 = !DILocation(line: 1677, column: 30, scope: !2062)
!2066 = !DILocation(line: 1677, column: 2, scope: !2062)
!2067 = !DILocation(line: 1681, column: 15, scope: !1574)
!2068 = !DILocation(line: 1681, column: 20, scope: !1574)
!2069 = !DILocation(line: 1682, column: 20, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1682, column: 11)
!2071 = !DILocation(line: 1682, column: 11, scope: !2070)
!2072 = !DILocation(line: 1682, column: 24, scope: !2070)
!2073 = !DILocation(line: 1682, column: 31, scope: !2070)
!2074 = !DILocation(line: 1682, column: 34, scope: !2070)
!2075 = !DILocation(line: 1682, column: 11, scope: !1574)
!2076 = !DILocation(line: 1683, column: 13, scope: !2070)
!2077 = !DILocation(line: 1683, column: 30, scope: !2070)
!2078 = !DILocation(line: 1683, column: 2, scope: !2070)
!2079 = !DILocation(line: 1684, column: 29, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 1684, column: 16)
!2081 = !DILocation(line: 1684, column: 36, scope: !2080)
!2082 = !DILocation(line: 1684, column: 39, scope: !2080)
!2083 = !DILocation(line: 1684, column: 16, scope: !2070)
!2084 = !DILocation(line: 1686, column: 15, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 1685, column: 2)
!2086 = !DILocation(line: 1687, column: 18, scope: !2085)
!2087 = !DILocation(line: 1688, column: 17, scope: !2085)
!2088 = !DILocation(line: 1689, column: 2, scope: !2085)
!2089 = !DILocation(line: 1692, column: 15, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1692, column: 15)
!2091 = !DILocation(line: 1692, column: 15, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 1692, column: 15)
!2093 = !DILocation(line: 1693, column: 15, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1693, column: 15)
!2095 = !DILocation(line: 1693, column: 15, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 1693, column: 15)
!2097 = !DILocation(line: 1694, column: 15, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1694, column: 15)
!2099 = !DILocation(line: 1694, column: 15, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 1694, column: 15)
!2101 = !DILocation(line: 1695, column: 15, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1695, column: 15)
!2103 = !DILocation(line: 1695, column: 15, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 1695, column: 15)
!2105 = !DILocation(line: 1696, column: 15, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1696, column: 15)
!2107 = !DILocation(line: 1696, column: 15, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 1696, column: 15)
!2109 = !DILocation(line: 1696, column: 66, scope: !1574)
!2110 = !DILocation(line: 1696, column: 75, scope: !1574)
!2111 = !DILocation(line: 1696, column: 80, scope: !1574)
!2112 = !DILocation(line: 1698, column: 23, scope: !1574)
!2113 = !DILocation(line: 1698, column: 28, scope: !1574)
!2114 = !DILocation(line: 1698, column: 41, scope: !1574)
!2115 = !DILocation(line: 1699, column: 23, scope: !1574)
!2116 = !DILocation(line: 1699, column: 28, scope: !1574)
!2117 = !DILocation(line: 1699, column: 41, scope: !1574)
!2118 = !DILocation(line: 1700, column: 23, scope: !1574)
!2119 = !DILocation(line: 1700, column: 28, scope: !1574)
!2120 = !DILocation(line: 1700, column: 41, scope: !1574)
!2121 = !DILocation(line: 1701, column: 23, scope: !1574)
!2122 = !DILocation(line: 1701, column: 28, scope: !1574)
!2123 = !DILocation(line: 1701, column: 46, scope: !1574)
!2124 = !DILocation(line: 1702, column: 23, scope: !1574)
!2125 = !DILocation(line: 1702, column: 28, scope: !1574)
!2126 = !DILocation(line: 1702, column: 47, scope: !1574)
!2127 = !DILocation(line: 1703, column: 23, scope: !1574)
!2128 = !DILocation(line: 1703, column: 28, scope: !1574)
!2129 = !DILocation(line: 1703, column: 47, scope: !1574)
!2130 = !DILocation(line: 1704, column: 23, scope: !1574)
!2131 = !DILocation(line: 1704, column: 28, scope: !1574)
!2132 = !DILocation(line: 1704, column: 48, scope: !1574)
!2133 = !DILocation(line: 1705, column: 23, scope: !1574)
!2134 = !DILocation(line: 1705, column: 28, scope: !1574)
!2135 = !DILocation(line: 1705, column: 46, scope: !1574)
!2136 = !DILocation(line: 1706, column: 23, scope: !1574)
!2137 = !DILocation(line: 1706, column: 28, scope: !1574)
!2138 = !DILocation(line: 1706, column: 47, scope: !1574)
!2139 = !DILocation(line: 1707, column: 23, scope: !1574)
!2140 = !DILocation(line: 1707, column: 28, scope: !1574)
!2141 = !DILocation(line: 1707, column: 45, scope: !1574)
!2142 = !DILocation(line: 1710, column: 23, scope: !1574)
!2143 = !DILocation(line: 1710, column: 28, scope: !1574)
!2144 = !DILocation(line: 1710, column: 42, scope: !1574)
!2145 = !DILocation(line: 1715, column: 22, scope: !1590)
!2146 = !DILocation(line: 0, scope: !1590)
!2147 = !DILocation(line: 1716, column: 2, scope: !1590)
!2148 = !DILocation(line: 1716, column: 25, scope: !1590)
!2149 = !DILocation(line: 1718, column: 6, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 1718, column: 6)
!2151 = !DILocation(line: 1718, column: 6, scope: !1590)
!2152 = !DILocation(line: 1720, column: 14, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 1719, column: 4)
!2154 = !DILocation(line: 1720, column: 19, scope: !2153)
!2155 = !DILocation(line: 1721, column: 30, scope: !2153)
!2156 = !DILocation(line: 1721, column: 14, scope: !2153)
!2157 = !DILocation(line: 1721, column: 23, scope: !2153)
!2158 = !DILocation(line: 1721, column: 28, scope: !2153)
!2159 = !DILocation(line: 1722, column: 6, scope: !2153)
!2160 = !DILocation(line: 1723, column: 6, scope: !2153)
!2161 = !DILocation(line: 1725, column: 13, scope: !1590)
!2162 = !DILocation(line: 1726, column: 7, scope: !1574)
!2163 = !DILocation(line: 1729, column: 46, scope: !1574)
!2164 = !DILocation(line: 1729, column: 50, scope: !1574)
!2165 = !DILocation(line: 1729, column: 7, scope: !1574)
!2166 = !DILocation(line: 1730, column: 7, scope: !1574)
!2167 = !DILocation(line: 1734, column: 1, scope: !1557)
!2168 = distinct !DISubprogram(name: "_cpp_get_fresh_line", scope: !3, file: !3, line: 1310, type: !1134, scopeLine: 1311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2169)
!2169 = !{!2170, !2171, !2172}
!2170 = !DILocalVariable(name: "pfile", arg: 1, scope: !2168, file: !3, line: 1310, type: !341)
!2171 = !DILocalVariable(name: "return_at_eof", scope: !2168, file: !3, line: 1312, type: !146)
!2172 = !DILocalVariable(name: "buffer", scope: !2173, file: !3, line: 1320, type: !346)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 1319, column: 5)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 1318, column: 3)
!2175 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1318, column: 3)
!2176 = !DILocation(line: 0, scope: !2168)
!2177 = !DILocation(line: 1315, column: 20, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1315, column: 7)
!2179 = !DILocation(line: 1315, column: 7, scope: !2178)
!2180 = !DILocation(line: 1315, column: 7, scope: !2168)
!2181 = !DILocation(line: 0, scope: !2173)
!2182 = !DILocation(line: 0, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 1332, column: 11)
!2184 = !DILocation(line: 1318, column: 3, scope: !2175)
!2185 = !DILocation(line: 1320, column: 35, scope: !2173)
!2186 = !DILocation(line: 1322, column: 20, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 1322, column: 11)
!2188 = !DILocation(line: 1322, column: 12, scope: !2187)
!2189 = !DILocation(line: 1322, column: 11, scope: !2173)
!2190 = !DILocation(line: 1325, column: 19, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 1325, column: 11)
!2192 = !DILocation(line: 1325, column: 39, scope: !2191)
!2193 = !DILocation(line: 1325, column: 29, scope: !2191)
!2194 = !DILocation(line: 1325, column: 11, scope: !2173)
!2195 = !DILocation(line: 1327, column: 4, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 1326, column: 2)
!2197 = !DILocation(line: 1328, column: 4, scope: !2196)
!2198 = !DILocation(line: 1332, column: 24, scope: !2183)
!2199 = !DILocation(line: 1332, column: 11, scope: !2183)
!2200 = !DILocation(line: 1332, column: 11, scope: !2173)
!2201 = !DILocation(line: 1336, column: 19, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 1336, column: 11)
!2203 = !DILocation(line: 1336, column: 23, scope: !2202)
!2204 = !DILocation(line: 1337, column: 4, scope: !2202)
!2205 = !DILocation(line: 1337, column: 25, scope: !2202)
!2206 = !DILocation(line: 1338, column: 4, scope: !2202)
!2207 = !DILocation(line: 1338, column: 16, scope: !2202)
!2208 = !DILocation(line: 1338, column: 8, scope: !2202)
!2209 = !DILocation(line: 1336, column: 11, scope: !2173)
!2210 = !DILocation(line: 1341, column: 22, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 1339, column: 2)
!2212 = !DILocation(line: 1342, column: 2, scope: !2211)
!2213 = !DILocation(line: 1344, column: 31, scope: !2173)
!2214 = !DILocation(line: 1345, column: 7, scope: !2173)
!2215 = !DILocation(line: 1346, column: 18, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 1346, column: 11)
!2217 = !DILocation(line: 1346, column: 25, scope: !2216)
!2218 = !DILocation(line: 1346, column: 36, scope: !2216)
!2219 = !DILocation(line: 1346, column: 33, scope: !2216)
!2220 = distinct !{!2220, !2184, !2221}
!2221 = !DILocation(line: 1348, column: 5, scope: !2175)
!2222 = !DILocation(line: 1349, column: 1, scope: !2168)
!2223 = distinct !DISubprogram(name: "skip_whitespace", scope: !3, file: !3, line: 403, type: !2224, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2226)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !341, !1561}
!2226 = !{!2227, !2228, !2229, !2230}
!2227 = !DILocalVariable(name: "pfile", arg: 1, scope: !2223, file: !3, line: 403, type: !341)
!2228 = !DILocalVariable(name: "c", arg: 2, scope: !2223, file: !3, line: 403, type: !1561)
!2229 = !DILocalVariable(name: "buffer", scope: !2223, file: !3, line: 405, type: !346)
!2230 = !DILocalVariable(name: "saw_NUL", scope: !2223, file: !3, line: 406, type: !142)
!2231 = !DILocation(line: 0, scope: !2223)
!2232 = !DILocation(line: 405, column: 31, scope: !2223)
!2233 = !DILocation(line: 0, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 416, column: 16)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 414, column: 16)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 411, column: 11)
!2237 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 409, column: 5)
!2238 = !DILocation(line: 0, scope: !2237)
!2239 = !DILocation(line: 408, column: 3, scope: !2223)
!2240 = !DILocation(line: 406, column: 8, scope: !2223)
!2241 = !DILocation(line: 411, column: 20, scope: !2236)
!2242 = !DILocation(line: 416, column: 29, scope: !2234)
!2243 = !DILocation(line: 416, column: 16, scope: !2234)
!2244 = !DILocation(line: 416, column: 42, scope: !2234)
!2245 = !DILocation(line: 416, column: 45, scope: !2234)
!2246 = !DILocation(line: 416, column: 16, scope: !2235)
!2247 = !DILocation(line: 417, column: 53, scope: !2234)
!2248 = !DILocation(line: 417, column: 65, scope: !2234)
!2249 = !DILocation(line: 418, column: 9, scope: !2234)
!2250 = !DILocation(line: 420, column: 11, scope: !2234)
!2251 = !DILocation(line: 420, column: 9, scope: !2234)
!2252 = !DILocation(line: 417, column: 2, scope: !2234)
!2253 = !DILocation(line: 422, column: 23, scope: !2237)
!2254 = !DILocation(line: 422, column: 11, scope: !2237)
!2255 = !DILocation(line: 425, column: 10, scope: !2223)
!2256 = !DILocation(line: 423, column: 5, scope: !2237)
!2257 = distinct !{!2257, !2239, !2258}
!2258 = !DILocation(line: 425, column: 24, scope: !2223)
!2259 = !DILocation(line: 427, column: 7, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 427, column: 7)
!2261 = !DILocation(line: 427, column: 7, scope: !2223)
!2262 = !DILocation(line: 428, column: 5, scope: !2260)
!2263 = !DILocation(line: 430, column: 14, scope: !2223)
!2264 = !DILocation(line: 431, column: 1, scope: !2223)
!2265 = distinct !DISubprogram(name: "lex_number", scope: !3, file: !3, line: 636, type: !2266, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2270)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{null, !341, !2268, !2269}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!2270 = !{!2271, !2272, !2273, !2274, !2275, !2276}
!2271 = !DILocalVariable(name: "pfile", arg: 1, scope: !2265, file: !3, line: 636, type: !341)
!2272 = !DILocalVariable(name: "number", arg: 2, scope: !2265, file: !3, line: 636, type: !2268)
!2273 = !DILocalVariable(name: "nst", arg: 3, scope: !2265, file: !3, line: 637, type: !2269)
!2274 = !DILocalVariable(name: "cur", scope: !2265, file: !3, line: 639, type: !138)
!2275 = !DILocalVariable(name: "base", scope: !2265, file: !3, line: 640, type: !138)
!2276 = !DILocalVariable(name: "dest", scope: !2265, file: !3, line: 641, type: !143)
!2277 = !DILocation(line: 0, scope: !2265)
!2278 = !DILocation(line: 643, column: 17, scope: !2265)
!2279 = !DILocation(line: 643, column: 25, scope: !2265)
!2280 = !DILocation(line: 0, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 645, column: 5)
!2282 = !DILocation(line: 0, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 650, column: 2)
!2284 = !DILocation(line: 644, column: 3, scope: !2265)
!2285 = !DILocation(line: 646, column: 28, scope: !2281)
!2286 = !DILocation(line: 649, column: 7, scope: !2281)
!2287 = !DILocation(line: 649, column: 14, scope: !2281)
!2288 = !DILocation(line: 649, column: 29, scope: !2281)
!2289 = !DILocation(line: 649, column: 37, scope: !2281)
!2290 = !DILocation(line: 649, column: 44, scope: !2281)
!2291 = !DILocation(line: 649, column: 47, scope: !2281)
!2292 = !DILocation(line: 651, column: 7, scope: !2283)
!2293 = !DILocation(line: 652, column: 4, scope: !2283)
!2294 = distinct !{!2294, !2286, !2295}
!2295 = !DILocation(line: 653, column: 2, scope: !2281)
!2296 = !DILocation(line: 655, column: 14, scope: !2281)
!2297 = !DILocation(line: 655, column: 22, scope: !2281)
!2298 = !DILocation(line: 655, column: 26, scope: !2281)
!2299 = !DILocation(line: 657, column: 10, scope: !2265)
!2300 = !DILocation(line: 656, column: 5, scope: !2281)
!2301 = distinct !{!2301, !2284, !2302}
!2302 = !DILocation(line: 657, column: 48, scope: !2265)
!2303 = !DILocation(line: 646, column: 20, scope: !2281)
!2304 = !DILocation(line: 643, column: 29, scope: !2265)
!2305 = !DILocation(line: 659, column: 21, scope: !2265)
!2306 = !DILocation(line: 659, column: 17, scope: !2265)
!2307 = !DILocation(line: 659, column: 11, scope: !2265)
!2308 = !DILocation(line: 659, column: 15, scope: !2265)
!2309 = !DILocation(line: 660, column: 51, scope: !2265)
!2310 = !DILocation(line: 660, column: 39, scope: !2265)
!2311 = !DILocation(line: 660, column: 10, scope: !2265)
!2312 = !DILocation(line: 661, column: 31, scope: !2265)
!2313 = !DILocation(line: 661, column: 23, scope: !2265)
!2314 = !DILocation(line: 661, column: 3, scope: !2265)
!2315 = !DILocation(line: 662, column: 16, scope: !2265)
!2316 = !DILocation(line: 662, column: 3, scope: !2265)
!2317 = !DILocation(line: 662, column: 21, scope: !2265)
!2318 = !DILocation(line: 663, column: 11, scope: !2265)
!2319 = !DILocation(line: 663, column: 16, scope: !2265)
!2320 = !DILocation(line: 664, column: 1, scope: !2265)
!2321 = distinct !DISubprogram(name: "warn_about_normalization", scope: !3, file: !3, line: 450, type: !2322, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2326)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !341, !314, !2324}
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1579)
!2326 = !{!2327, !2328, !2329, !2330, !2333}
!2327 = !DILocalVariable(name: "pfile", arg: 1, scope: !2321, file: !3, line: 450, type: !341)
!2328 = !DILocalVariable(name: "token", arg: 2, scope: !2321, file: !3, line: 451, type: !314)
!2329 = !DILocalVariable(name: "s", arg: 3, scope: !2321, file: !3, line: 452, type: !2324)
!2330 = !DILocalVariable(name: "buf", scope: !2331, file: !3, line: 459, type: !235)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 456, column: 5)
!2332 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 454, column: 7)
!2333 = !DILocalVariable(name: "sz", scope: !2331, file: !3, line: 460, type: !237)
!2334 = !DILocation(line: 0, scope: !2321)
!2335 = !DILocation(line: 454, column: 7, scope: !2332)
!2336 = !DILocation(line: 454, column: 44, scope: !2332)
!2337 = !DILocation(line: 454, column: 42, scope: !2332)
!2338 = !DILocation(line: 455, column: 7, scope: !2332)
!2339 = !DILocation(line: 455, column: 24, scope: !2332)
!2340 = !DILocation(line: 455, column: 11, scope: !2332)
!2341 = !DILocation(line: 454, column: 7, scope: !2321)
!2342 = !DILocation(line: 459, column: 28, scope: !2331)
!2343 = !DILocation(line: 0, scope: !2331)
!2344 = !DILocation(line: 462, column: 12, scope: !2331)
!2345 = !DILocation(line: 462, column: 55, scope: !2331)
!2346 = !DILocation(line: 463, column: 11, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 463, column: 11)
!2348 = !DILocation(line: 463, column: 38, scope: !2347)
!2349 = !DILocation(line: 0, scope: !2347)
!2350 = !DILocation(line: 463, column: 11, scope: !2331)
!2351 = !DILocation(line: 464, column: 2, scope: !2347)
!2352 = !DILocation(line: 467, column: 2, scope: !2347)
!2353 = !DILocation(line: 470, column: 1, scope: !2321)
!2354 = distinct !DISubprogram(name: "lex_string", scope: !3, file: !3, line: 969, type: !2355, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !341, !147, !138}
!2357 = !{!2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365}
!2358 = !DILocalVariable(name: "pfile", arg: 1, scope: !2354, file: !3, line: 969, type: !341)
!2359 = !DILocalVariable(name: "token", arg: 2, scope: !2354, file: !3, line: 969, type: !147)
!2360 = !DILocalVariable(name: "base", arg: 3, scope: !2354, file: !3, line: 969, type: !138)
!2361 = !DILocalVariable(name: "saw_NUL", scope: !2354, file: !3, line: 971, type: !142)
!2362 = !DILocalVariable(name: "cur", scope: !2354, file: !3, line: 972, type: !138)
!2363 = !DILocalVariable(name: "terminator", scope: !2354, file: !3, line: 973, type: !1561)
!2364 = !DILocalVariable(name: "type", scope: !2354, file: !3, line: 974, type: !42)
!2365 = !DILocalVariable(name: "c", scope: !2366, file: !3, line: 1005, type: !1561)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 1004, column: 5)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 1003, column: 3)
!2368 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 1003, column: 3)
!2369 = !DILocation(line: 0, scope: !2354)
!2370 = !DILocation(line: 977, column: 20, scope: !2354)
!2371 = !DILocation(line: 977, column: 16, scope: !2354)
!2372 = !DILocation(line: 978, column: 25, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 978, column: 7)
!2374 = !DILocation(line: 979, column: 22, scope: !2373)
!2375 = !DILocation(line: 979, column: 18, scope: !2373)
!2376 = !DILocation(line: 979, column: 5, scope: !2373)
!2377 = !DILocation(line: 982, column: 24, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !3, line: 981, column: 5)
!2379 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 980, column: 12)
!2380 = !DILocation(line: 982, column: 20, scope: !2378)
!2381 = !DILocation(line: 983, column: 22, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 983, column: 11)
!2383 = !DILocation(line: 983, column: 11, scope: !2378)
!2384 = !DILocation(line: 984, column: 19, scope: !2382)
!2385 = !DILocation(line: 984, column: 15, scope: !2382)
!2386 = !DILocation(line: 984, column: 2, scope: !2382)
!2387 = !DILocation(line: 0, scope: !2373)
!2388 = !DILocation(line: 986, column: 7, scope: !2354)
!2389 = !DILocation(line: 988, column: 7, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 987, column: 5)
!2391 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 986, column: 7)
!2392 = !DILocation(line: 989, column: 7, scope: !2390)
!2393 = !DILocation(line: 992, column: 19, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 991, column: 7)
!2395 = !DILocation(line: 992, column: 13, scope: !2394)
!2396 = !DILocation(line: 993, column: 12, scope: !2394)
!2397 = !DILocation(line: 993, column: 6, scope: !2394)
!2398 = !DILocation(line: 994, column: 12, scope: !2394)
!2399 = !DILocation(line: 994, column: 6, scope: !2394)
!2400 = !DILocation(line: 994, column: 22, scope: !2394)
!2401 = !DILocation(line: 994, column: 30, scope: !2394)
!2402 = !DILocation(line: 997, column: 19, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 996, column: 12)
!2404 = !DILocation(line: 997, column: 13, scope: !2403)
!2405 = !DILocation(line: 998, column: 12, scope: !2403)
!2406 = !DILocation(line: 998, column: 6, scope: !2403)
!2407 = !DILocation(line: 999, column: 12, scope: !2403)
!2408 = !DILocation(line: 999, column: 6, scope: !2403)
!2409 = !DILocation(line: 979, column: 16, scope: !2373)
!2410 = !DILocation(line: 0, scope: !2394)
!2411 = !DILocation(line: 0, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 1008, column: 11)
!2413 = !DILocation(line: 0, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 1018, column: 8)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 1013, column: 2)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1012, column: 16)
!2417 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 1010, column: 16)
!2418 = !DILocation(line: 0, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 1019, column: 6)
!2420 = !DILocation(line: 1003, column: 3, scope: !2354)
!2421 = !DILocation(line: 971, column: 8, scope: !2354)
!2422 = !DILocation(line: 1005, column: 25, scope: !2366)
!2423 = !DILocation(line: 1005, column: 21, scope: !2366)
!2424 = !DILocation(line: 0, scope: !2366)
!2425 = !DILocation(line: 1008, column: 13, scope: !2412)
!2426 = !DILocation(line: 1008, column: 21, scope: !2412)
!2427 = !DILocation(line: 1008, column: 38, scope: !2412)
!2428 = !DILocation(line: 1008, column: 25, scope: !2412)
!2429 = !DILocation(line: 1008, column: 53, scope: !2412)
!2430 = !DILocation(line: 1008, column: 56, scope: !2412)
!2431 = !DILocation(line: 1008, column: 61, scope: !2412)
!2432 = !DILocation(line: 1008, column: 11, scope: !2366)
!2433 = !DILocation(line: 1009, column: 5, scope: !2412)
!2434 = !DILocation(line: 1009, column: 2, scope: !2412)
!2435 = !DILocation(line: 1010, column: 18, scope: !2417)
!2436 = !DILocation(line: 1010, column: 16, scope: !2412)
!2437 = !DILocation(line: 1012, column: 16, scope: !2417)
!2438 = !DILocation(line: 1027, column: 2, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 1026, column: 16)
!2440 = !DILocation(line: 1020, column: 20, scope: !2419)
!2441 = !DILocation(line: 1021, column: 8, scope: !2419)
!2442 = distinct !{!2442, !2443, !2444}
!2443 = !DILocation(line: 1003, column: 3, scope: !2368)
!2444 = !DILocation(line: 1028, column: 5, scope: !2368)
!2445 = !DILocation(line: 1040, column: 1, scope: !2354)
!2446 = !DILocation(line: 1030, column: 7, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 1030, column: 7)
!2448 = !DILocation(line: 992, column: 10, scope: !2394)
!2449 = !DILocation(line: 1018, column: 8, scope: !2415)
!2450 = !DILocation(line: 1030, column: 15, scope: !2447)
!2451 = !DILocation(line: 1030, column: 32, scope: !2447)
!2452 = !DILocation(line: 1030, column: 19, scope: !2447)
!2453 = !DILocation(line: 1030, column: 7, scope: !2354)
!2454 = !DILocation(line: 1031, column: 5, scope: !2447)
!2455 = !DILocation(line: 1034, column: 12, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 1034, column: 7)
!2457 = !DILocation(line: 1034, column: 25, scope: !2456)
!2458 = !DILocation(line: 1034, column: 28, scope: !2456)
!2459 = !DILocation(line: 1034, column: 53, scope: !2456)
!2460 = !DILocation(line: 1034, column: 7, scope: !2354)
!2461 = !DILocation(line: 1035, column: 5, scope: !2456)
!2462 = !DILocation(line: 1038, column: 10, scope: !2354)
!2463 = !DILocation(line: 1038, column: 18, scope: !2354)
!2464 = !DILocation(line: 1038, column: 22, scope: !2354)
!2465 = !DILocation(line: 1039, column: 43, scope: !2354)
!2466 = !DILocation(line: 1039, column: 39, scope: !2354)
!2467 = !DILocation(line: 1039, column: 3, scope: !2354)
!2468 = distinct !DISubprogram(name: "lex_identifier", scope: !3, file: !3, line: 569, type: !2469, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2471)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!163, !341, !138, !142, !2269}
!2471 = !{!2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479}
!2472 = !DILocalVariable(name: "pfile", arg: 1, scope: !2468, file: !3, line: 569, type: !341)
!2473 = !DILocalVariable(name: "base", arg: 2, scope: !2468, file: !3, line: 569, type: !138)
!2474 = !DILocalVariable(name: "starts_ucn", arg: 3, scope: !2468, file: !3, line: 569, type: !142)
!2475 = !DILocalVariable(name: "nst", arg: 4, scope: !2468, file: !3, line: 570, type: !2269)
!2476 = !DILocalVariable(name: "result", scope: !2468, file: !3, line: 572, type: !163)
!2477 = !DILocalVariable(name: "cur", scope: !2468, file: !3, line: 573, type: !138)
!2478 = !DILocalVariable(name: "len", scope: !2468, file: !3, line: 574, type: !7)
!2479 = !DILocalVariable(name: "hash", scope: !2468, file: !3, line: 575, type: !7)
!2480 = !DILocation(line: 0, scope: !2468)
!2481 = !DILocation(line: 575, column: 23, scope: !2468)
!2482 = !DILocation(line: 577, column: 16, scope: !2468)
!2483 = !DILocation(line: 577, column: 24, scope: !2468)
!2484 = !DILocation(line: 578, column: 9, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 578, column: 7)
!2486 = !DILocation(line: 578, column: 7, scope: !2468)
!2487 = !DILocation(line: 579, column: 5, scope: !2485)
!2488 = !DILocation(line: 579, column: 12, scope: !2485)
!2489 = !DILocation(line: 581, column: 9, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 580, column: 7)
!2491 = !DILocation(line: 582, column: 5, scope: !2490)
!2492 = distinct !{!2492, !2487, !2493}
!2493 = !DILocation(line: 583, column: 7, scope: !2485)
!2494 = !DILocation(line: 584, column: 10, scope: !2468)
!2495 = !DILocation(line: 577, column: 7, scope: !2468)
!2496 = !DILocation(line: 575, column: 16, scope: !2468)
!2497 = !DILocation(line: 584, column: 22, scope: !2468)
!2498 = !DILocation(line: 585, column: 18, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 585, column: 7)
!2500 = !DILocation(line: 585, column: 21, scope: !2499)
!2501 = !DILocation(line: 585, column: 7, scope: !2468)
!2502 = !DILocation(line: 0, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 590, column: 4)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 588, column: 10)
!2505 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 586, column: 5)
!2506 = !DILocation(line: 588, column: 7, scope: !2505)
!2507 = !DILocation(line: 589, column: 2, scope: !2504)
!2508 = !DILocation(line: 589, column: 9, scope: !2504)
!2509 = !DILocation(line: 591, column: 24, scope: !2503)
!2510 = !DILocation(line: 592, column: 6, scope: !2503)
!2511 = distinct !{!2511, !2507, !2512}
!2512 = !DILocation(line: 593, column: 4, scope: !2504)
!2513 = !DILocation(line: 594, column: 16, scope: !2505)
!2514 = !DILocation(line: 594, column: 7, scope: !2504)
!2515 = distinct !{!2515, !2506, !2516}
!2516 = !DILocation(line: 594, column: 54, scope: !2505)
!2517 = !DILocation(line: 596, column: 15, scope: !2505)
!2518 = !DILocation(line: 596, column: 23, scope: !2505)
!2519 = !DILocation(line: 596, column: 27, scope: !2505)
!2520 = !DILocation(line: 595, column: 16, scope: !2505)
!2521 = !DILocation(line: 597, column: 5, scope: !2505)
!2522 = !DILocation(line: 600, column: 17, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 599, column: 5)
!2524 = !DILocation(line: 600, column: 13, scope: !2523)
!2525 = !DILocation(line: 601, column: 14, scope: !2523)
!2526 = !DILocation(line: 603, column: 16, scope: !2523)
!2527 = !DILocation(line: 0, scope: !2499)
!2528 = !DILocation(line: 608, column: 7, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 608, column: 7)
!2530 = !DILocation(line: 608, column: 7, scope: !2468)
!2531 = !DILocation(line: 612, column: 26, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 612, column: 11)
!2533 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 610, column: 5)
!2534 = !DILocation(line: 612, column: 43, scope: !2532)
!2535 = !DILocation(line: 612, column: 60, scope: !2532)
!2536 = !DILocation(line: 612, column: 47, scope: !2532)
!2537 = !DILocation(line: 612, column: 11, scope: !2533)
!2538 = !DILocation(line: 614, column: 6, scope: !2532)
!2539 = !DILocation(line: 613, column: 2, scope: !2532)
!2540 = !DILocation(line: 618, column: 39, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 618, column: 11)
!2542 = !DILocation(line: 618, column: 18, scope: !2541)
!2543 = !DILocation(line: 619, column: 4, scope: !2541)
!2544 = !DILocation(line: 619, column: 21, scope: !2541)
!2545 = !DILocation(line: 619, column: 8, scope: !2541)
!2546 = !DILocation(line: 618, column: 11, scope: !2533)
!2547 = !DILocation(line: 620, column: 2, scope: !2541)
!2548 = !DILocation(line: 625, column: 19, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 625, column: 11)
!2550 = !DILocation(line: 625, column: 25, scope: !2549)
!2551 = !DILocation(line: 625, column: 11, scope: !2533)
!2552 = !DILocation(line: 628, column: 6, scope: !2549)
!2553 = !DILocation(line: 626, column: 2, scope: !2549)
!2554 = !DILocation(line: 631, column: 3, scope: !2468)
!2555 = distinct !DISubprogram(name: "cpp_in_system_header", scope: !241, file: !241, line: 525, type: !2556, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2558)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!146, !341}
!2558 = !{!2559}
!2559 = !DILocalVariable(name: "pfile", arg: 1, scope: !2555, file: !241, line: 525, type: !341)
!2560 = !DILocation(line: 0, scope: !2555)
!2561 = !DILocation(line: 527, column: 17, scope: !2555)
!2562 = !DILocation(line: 527, column: 10, scope: !2555)
!2563 = !DILocation(line: 527, column: 41, scope: !2555)
!2564 = !DILocation(line: 527, column: 26, scope: !2555)
!2565 = !DILocation(line: 527, column: 3, scope: !2555)
!2566 = distinct !DISubprogram(name: "skip_line_comment", scope: !3, file: !3, line: 389, type: !2556, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2567)
!2567 = !{!2568, !2569, !2570}
!2568 = !DILocalVariable(name: "pfile", arg: 1, scope: !2566, file: !3, line: 389, type: !341)
!2569 = !DILocalVariable(name: "buffer", scope: !2566, file: !3, line: 391, type: !346)
!2570 = !DILocalVariable(name: "orig_line", scope: !2566, file: !3, line: 392, type: !152)
!2571 = !DILocation(line: 0, scope: !2566)
!2572 = !DILocation(line: 391, column: 31, scope: !2566)
!2573 = !DILocation(line: 392, column: 38, scope: !2566)
!2574 = !DILocation(line: 392, column: 50, scope: !2566)
!2575 = !DILocation(line: 394, column: 19, scope: !2566)
!2576 = !DILocation(line: 394, column: 3, scope: !2566)
!2577 = !DILocation(line: 394, column: 10, scope: !2566)
!2578 = !DILocation(line: 394, column: 23, scope: !2566)
!2579 = !DILocation(line: 395, column: 16, scope: !2566)
!2580 = distinct !{!2580, !2576, !2579}
!2581 = !DILocation(line: 397, column: 3, scope: !2566)
!2582 = !DILocation(line: 398, column: 30, scope: !2566)
!2583 = !DILocation(line: 398, column: 42, scope: !2566)
!2584 = !DILocation(line: 398, column: 20, scope: !2566)
!2585 = !DILocation(line: 398, column: 3, scope: !2566)
!2586 = distinct !DISubprogram(name: "save_comment", scope: !3, file: !3, line: 1089, type: !2587, scopeLine: 1091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{null, !341, !147, !172, !1561}
!2589 = !{!2590, !2591, !2592, !2593, !2594, !2595, !2596}
!2590 = !DILocalVariable(name: "pfile", arg: 1, scope: !2586, file: !3, line: 1089, type: !341)
!2591 = !DILocalVariable(name: "token", arg: 2, scope: !2586, file: !3, line: 1089, type: !147)
!2592 = !DILocalVariable(name: "from", arg: 3, scope: !2586, file: !3, line: 1089, type: !172)
!2593 = !DILocalVariable(name: "type", arg: 4, scope: !2586, file: !3, line: 1090, type: !1561)
!2594 = !DILocalVariable(name: "buffer", scope: !2586, file: !3, line: 1092, type: !235)
!2595 = !DILocalVariable(name: "len", scope: !2586, file: !3, line: 1093, type: !7)
!2596 = !DILocalVariable(name: "clen", scope: !2586, file: !3, line: 1093, type: !7)
!2597 = !DILocation(line: 0, scope: !2586)
!2598 = !DILocation(line: 1095, column: 16, scope: !2586)
!2599 = !DILocation(line: 1095, column: 24, scope: !2586)
!2600 = !DILocation(line: 1095, column: 28, scope: !2586)
!2601 = !DILocation(line: 1095, column: 9, scope: !2586)
!2602 = !DILocation(line: 1099, column: 7, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1099, column: 7)
!2604 = !DILocation(line: 1099, column: 7, scope: !2586)
!2605 = !DILocation(line: 1108, column: 24, scope: !2586)
!2606 = !DILocation(line: 1108, column: 11, scope: !2586)
!2607 = !DILocation(line: 1108, column: 45, scope: !2586)
!2608 = !DILocation(line: 1108, column: 37, scope: !2586)
!2609 = !DILocation(line: 1110, column: 41, scope: !2586)
!2610 = !DILocation(line: 1110, column: 12, scope: !2586)
!2611 = !DILocation(line: 1112, column: 10, scope: !2586)
!2612 = !DILocation(line: 1112, column: 15, scope: !2586)
!2613 = !DILocation(line: 1113, column: 18, scope: !2586)
!2614 = !DILocation(line: 1113, column: 22, scope: !2586)
!2615 = !DILocation(line: 1114, column: 18, scope: !2586)
!2616 = !DILocation(line: 1114, column: 23, scope: !2586)
!2617 = !DILocation(line: 1116, column: 13, scope: !2586)
!2618 = !DILocation(line: 1117, column: 18, scope: !2586)
!2619 = !DILocation(line: 1117, column: 33, scope: !2586)
!2620 = !DILocation(line: 1117, column: 29, scope: !2586)
!2621 = !DILocation(line: 1117, column: 3, scope: !2586)
!2622 = !DILocation(line: 1120, column: 20, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1120, column: 7)
!2624 = !DILocation(line: 1120, column: 7, scope: !2623)
!2625 = !DILocation(line: 1120, column: 33, scope: !2623)
!2626 = !DILocation(line: 1122, column: 17, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 1121, column: 5)
!2628 = !DILocation(line: 1123, column: 19, scope: !2627)
!2629 = !DILocation(line: 1123, column: 7, scope: !2627)
!2630 = !DILocation(line: 1123, column: 24, scope: !2627)
!2631 = !DILocation(line: 1124, column: 19, scope: !2627)
!2632 = !DILocation(line: 1124, column: 7, scope: !2627)
!2633 = !DILocation(line: 1124, column: 24, scope: !2627)
!2634 = !DILocation(line: 1125, column: 5, scope: !2627)
!2635 = !DILocation(line: 1128, column: 3, scope: !2586)
!2636 = !DILocation(line: 1129, column: 1, scope: !2586)
!2637 = distinct !DISubprogram(name: "forms_identifier_p", scope: !3, file: !3, line: 475, type: !2638, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!142, !341, !146, !2269}
!2640 = !{!2641, !2642, !2643, !2644}
!2641 = !DILocalVariable(name: "pfile", arg: 1, scope: !2637, file: !3, line: 475, type: !341)
!2642 = !DILocalVariable(name: "first", arg: 2, scope: !2637, file: !3, line: 475, type: !146)
!2643 = !DILocalVariable(name: "state", arg: 3, scope: !2637, file: !3, line: 476, type: !2269)
!2644 = !DILocalVariable(name: "buffer", scope: !2637, file: !3, line: 478, type: !346)
!2645 = !DILocation(line: 0, scope: !2637)
!2646 = !DILocation(line: 478, column: 31, scope: !2637)
!2647 = !DILocation(line: 480, column: 16, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 480, column: 7)
!2649 = !DILocation(line: 480, column: 7, scope: !2648)
!2650 = !DILocation(line: 480, column: 20, scope: !2648)
!2651 = !DILocation(line: 480, column: 7, scope: !2637)
!2652 = !DILocation(line: 482, column: 12, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 482, column: 11)
!2654 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 481, column: 5)
!2655 = !DILocation(line: 482, column: 11, scope: !2654)
!2656 = !DILocation(line: 485, column: 18, scope: !2654)
!2657 = !DILocation(line: 486, column: 11, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 486, column: 11)
!2659 = !DILocation(line: 486, column: 44, scope: !2658)
!2660 = !DILocation(line: 486, column: 61, scope: !2658)
!2661 = !DILocation(line: 486, column: 48, scope: !2658)
!2662 = !DILocation(line: 486, column: 11, scope: !2654)
!2663 = !DILocation(line: 488, column: 37, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 487, column: 2)
!2665 = !DILocation(line: 489, column: 4, scope: !2664)
!2666 = !DILocation(line: 490, column: 2, scope: !2664)
!2667 = !DILocation(line: 496, column: 7, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 496, column: 7)
!2669 = !DILocation(line: 497, column: 7, scope: !2668)
!2670 = !DILocation(line: 497, column: 23, scope: !2668)
!2671 = !DILocation(line: 498, column: 7, scope: !2668)
!2672 = !DILocation(line: 498, column: 11, scope: !2668)
!2673 = !DILocation(line: 498, column: 26, scope: !2668)
!2674 = !DILocation(line: 498, column: 33, scope: !2668)
!2675 = !DILocation(line: 498, column: 51, scope: !2668)
!2676 = !DILocation(line: 496, column: 7, scope: !2637)
!2677 = !DILocation(line: 500, column: 19, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 499, column: 5)
!2679 = !DILocation(line: 501, column: 56, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 501, column: 11)
!2681 = !DILocation(line: 501, column: 68, scope: !2680)
!2682 = !DILocation(line: 501, column: 66, scope: !2680)
!2683 = !DILocation(line: 501, column: 11, scope: !2680)
!2684 = !DILocation(line: 501, column: 11, scope: !2678)
!2685 = !DILocation(line: 504, column: 19, scope: !2678)
!2686 = !DILocation(line: 505, column: 5, scope: !2678)
!2687 = !DILocation(line: 508, column: 1, scope: !2637)
!2688 = distinct !DISubprogram(name: "create_literal", scope: !3, file: !3, line: 668, type: !2689, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2691)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{null, !341, !147, !138, !7, !42}
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2697}
!2692 = !DILocalVariable(name: "pfile", arg: 1, scope: !2688, file: !3, line: 668, type: !341)
!2693 = !DILocalVariable(name: "token", arg: 2, scope: !2688, file: !3, line: 668, type: !147)
!2694 = !DILocalVariable(name: "base", arg: 3, scope: !2688, file: !3, line: 668, type: !138)
!2695 = !DILocalVariable(name: "len", arg: 4, scope: !2688, file: !3, line: 669, type: !7)
!2696 = !DILocalVariable(name: "type", arg: 5, scope: !2688, file: !3, line: 669, type: !42)
!2697 = !DILocalVariable(name: "dest", scope: !2688, file: !3, line: 671, type: !143)
!2698 = !DILocation(line: 0, scope: !2688)
!2699 = !DILocation(line: 671, column: 50, scope: !2688)
!2700 = !DILocation(line: 671, column: 46, scope: !2688)
!2701 = !DILocation(line: 671, column: 17, scope: !2688)
!2702 = !DILocation(line: 673, column: 23, scope: !2688)
!2703 = !DILocation(line: 673, column: 3, scope: !2688)
!2704 = !DILocation(line: 674, column: 3, scope: !2688)
!2705 = !DILocation(line: 674, column: 13, scope: !2688)
!2706 = !DILocation(line: 675, column: 10, scope: !2688)
!2707 = !DILocation(line: 675, column: 15, scope: !2688)
!2708 = !DILocation(line: 676, column: 18, scope: !2688)
!2709 = !DILocation(line: 676, column: 22, scope: !2688)
!2710 = !DILocation(line: 677, column: 18, scope: !2688)
!2711 = !DILocation(line: 677, column: 23, scope: !2688)
!2712 = !DILocation(line: 678, column: 1, scope: !2688)
!2713 = distinct !DISubprogram(name: "cpp_token_len", scope: !3, file: !3, line: 1739, type: !2714, scopeLine: 1740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!7, !314}
!2716 = !{!2717, !2718}
!2717 = !DILocalVariable(name: "token", arg: 1, scope: !2713, file: !3, line: 1739, type: !314)
!2718 = !DILocalVariable(name: "len", scope: !2713, file: !3, line: 1741, type: !7)
!2719 = !DILocation(line: 0, scope: !2713)
!2720 = !DILocation(line: 1743, column: 11, scope: !2713)
!2721 = !DILocation(line: 1743, column: 3, scope: !2713)
!2722 = !DILocation(line: 1746, column: 46, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 1744, column: 5)
!2724 = !DILocation(line: 1746, column: 52, scope: !2723)
!2725 = !DILocation(line: 1747, column: 29, scope: !2723)
!2726 = !DILocation(line: 1747, column: 61, scope: !2723)
!2727 = !DILocation(line: 1747, column: 67, scope: !2723)
!2728 = !DILocation(line: 0, scope: !2723)
!2729 = !DILocation(line: 1750, column: 3, scope: !2713)
!2730 = distinct !DISubprogram(name: "cpp_spell_token", scope: !3, file: !3, line: 1802, type: !2731, scopeLine: 1804, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!235, !341, !314, !235, !142}
!2733 = !{!2734, !2735, !2736, !2737, !2738, !2741, !2742, !2745, !2746}
!2734 = !DILocalVariable(name: "pfile", arg: 1, scope: !2730, file: !3, line: 1802, type: !341)
!2735 = !DILocalVariable(name: "token", arg: 2, scope: !2730, file: !3, line: 1802, type: !314)
!2736 = !DILocalVariable(name: "buffer", arg: 3, scope: !2730, file: !3, line: 1803, type: !235)
!2737 = !DILocalVariable(name: "forstring", arg: 4, scope: !2730, file: !3, line: 1803, type: !142)
!2738 = !DILocalVariable(name: "spelling", scope: !2739, file: !3, line: 1809, type: !172)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 1808, column: 7)
!2740 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1806, column: 5)
!2741 = !DILocalVariable(name: "c", scope: !2739, file: !3, line: 1810, type: !142)
!2742 = !DILocalVariable(name: "i", scope: !2743, file: !3, line: 1834, type: !237)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1833, column: 2)
!2744 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 1826, column: 11)
!2745 = !DILocalVariable(name: "name", scope: !2743, file: !3, line: 1835, type: !172)
!2746 = !DILabel(scope: !2740, name: "spell_ident", file: !3, line: 1824)
!2747 = !DILocation(line: 0, scope: !2730)
!2748 = !DILocation(line: 1805, column: 11, scope: !2730)
!2749 = !DILocation(line: 1805, column: 3, scope: !2730)
!2750 = !DILocation(line: 1812, column: 13, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 1812, column: 6)
!2752 = !DILocation(line: 1812, column: 19, scope: !2751)
!2753 = !DILocation(line: 1812, column: 6, scope: !2739)
!2754 = !DILocation(line: 1813, column: 40, scope: !2751)
!2755 = !DILocation(line: 1813, column: 15, scope: !2751)
!2756 = !DILocation(line: 0, scope: !2739)
!2757 = !DILocation(line: 1813, column: 4, scope: !2751)
!2758 = !DILocation(line: 1814, column: 24, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 1814, column: 11)
!2760 = !DILocation(line: 1814, column: 11, scope: !2751)
!2761 = !DILocation(line: 1817, column: 15, scope: !2759)
!2762 = !DILocation(line: 0, scope: !2751)
!2763 = !DILocation(line: 1819, column: 2, scope: !2739)
!2764 = !DILocation(line: 1819, column: 14, scope: !2739)
!2765 = !DILocation(line: 1819, column: 27, scope: !2739)
!2766 = !DILocation(line: 1819, column: 23, scope: !2739)
!2767 = !DILocation(line: 1820, column: 11, scope: !2739)
!2768 = !DILocation(line: 1820, column: 14, scope: !2739)
!2769 = distinct !{!2769, !2763, !2770}
!2770 = !DILocation(line: 1820, column: 16, scope: !2739)
!2771 = !DILocation(line: 1826, column: 11, scope: !2744)
!2772 = !DILocation(line: 0, scope: !2744)
!2773 = !DILocation(line: 1826, column: 11, scope: !2740)
!2774 = !DILocation(line: 1837, column: 4, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 1837, column: 4)
!2776 = !DILocation(line: 1829, column: 5, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1827, column: 2)
!2778 = !DILocation(line: 1828, column: 4, scope: !2777)
!2779 = !DILocation(line: 1830, column: 14, scope: !2777)
!2780 = !DILocation(line: 1830, column: 11, scope: !2777)
!2781 = !DILocation(line: 1831, column: 2, scope: !2777)
!2782 = !DILocation(line: 1837, column: 20, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 1837, column: 4)
!2784 = !DILocation(line: 0, scope: !2775)
!2785 = !DILocation(line: 0, scope: !2743)
!2786 = !DILocation(line: 1837, column: 18, scope: !2783)
!2787 = !DILocation(line: 1838, column: 10, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 1838, column: 10)
!2789 = !DILocation(line: 1838, column: 18, scope: !2788)
!2790 = !DILocation(line: 1838, column: 10, scope: !2783)
!2791 = !DILocation(line: 1840, column: 8, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 1839, column: 8)
!2793 = !DILocation(line: 1840, column: 39, scope: !2792)
!2794 = !DILocation(line: 1840, column: 5, scope: !2792)
!2795 = !DILocation(line: 1841, column: 10, scope: !2792)
!2796 = !DILocation(line: 1842, column: 8, scope: !2792)
!2797 = !DILocation(line: 1844, column: 20, scope: !2788)
!2798 = !DILocation(line: 1844, column: 15, scope: !2788)
!2799 = !DILocation(line: 1844, column: 18, scope: !2788)
!2800 = !DILocation(line: 0, scope: !2788)
!2801 = !DILocation(line: 1837, column: 54, scope: !2783)
!2802 = !DILocation(line: 1837, column: 4, scope: !2783)
!2803 = distinct !{!2803, !2774, !2804}
!2804 = !DILocation(line: 1844, column: 54, scope: !2775)
!2805 = !DILocation(line: 1849, column: 38, scope: !2740)
!2806 = !DILocation(line: 1849, column: 59, scope: !2740)
!2807 = !DILocation(line: 1849, column: 44, scope: !2740)
!2808 = !DILocation(line: 1849, column: 7, scope: !2740)
!2809 = !DILocation(line: 1850, column: 32, scope: !2740)
!2810 = !DILocation(line: 1850, column: 14, scope: !2740)
!2811 = !DILocation(line: 1851, column: 7, scope: !2740)
!2812 = !DILocation(line: 1855, column: 28, scope: !2740)
!2813 = !DILocation(line: 1854, column: 7, scope: !2740)
!2814 = !DILocation(line: 1856, column: 7, scope: !2740)
!2815 = !DILocation(line: 1859, column: 3, scope: !2730)
!2816 = distinct !DISubprogram(name: "cpp_digraph2name", scope: !3, file: !3, line: 1790, type: !2817, scopeLine: 1791, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!172, !42}
!2819 = !{!2820}
!2820 = !DILocalVariable(name: "type", arg: 1, scope: !2816, file: !3, line: 1790, type: !42)
!2821 = !DILocation(line: 0, scope: !2816)
!2822 = !DILocation(line: 1792, column: 39, scope: !2816)
!2823 = !DILocation(line: 1792, column: 10, scope: !2816)
!2824 = !DILocation(line: 1792, column: 3, scope: !2816)
!2825 = distinct !DISubprogram(name: "utf8_to_ucn", scope: !3, file: !3, line: 1758, type: !2826, scopeLine: 1759, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2828)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!237, !235, !172}
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834, !2835}
!2829 = !DILocalVariable(name: "buffer", arg: 1, scope: !2825, file: !3, line: 1758, type: !235)
!2830 = !DILocalVariable(name: "name", arg: 2, scope: !2825, file: !3, line: 1758, type: !172)
!2831 = !DILocalVariable(name: "j", scope: !2825, file: !3, line: 1760, type: !146)
!2832 = !DILocalVariable(name: "ucn_len", scope: !2825, file: !3, line: 1761, type: !146)
!2833 = !DILocalVariable(name: "ucn_len_c", scope: !2825, file: !3, line: 1762, type: !146)
!2834 = !DILocalVariable(name: "t", scope: !2825, file: !3, line: 1763, type: !7)
!2835 = !DILocalVariable(name: "utf32", scope: !2825, file: !3, line: 1764, type: !238)
!2836 = !DILocation(line: 0, scope: !2825)
!2837 = !DILocation(line: 1767, column: 12, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 1767, column: 3)
!2839 = !DILocation(line: 1767, column: 8, scope: !2838)
!2840 = !DILocation(line: 0, scope: !2838)
!2841 = !DILocation(line: 1767, column: 3, scope: !2838)
!2842 = !DILocation(line: 1768, column: 12, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1767, column: 3)
!2844 = !DILocation(line: 1767, column: 31, scope: !2843)
!2845 = !DILocation(line: 1767, column: 3, scope: !2843)
!2846 = distinct !{!2846, !2841, !2847}
!2847 = !DILocation(line: 1768, column: 12, scope: !2838)
!2848 = !DILocation(line: 1770, column: 25, scope: !2825)
!2849 = !DILocation(line: 1770, column: 17, scope: !2825)
!2850 = !DILocation(line: 1770, column: 11, scope: !2825)
!2851 = !DILocation(line: 1771, column: 8, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 1771, column: 3)
!2853 = !DILocation(line: 0, scope: !2852)
!2854 = !DILocation(line: 1771, column: 33, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 1771, column: 3)
!2856 = !DILocation(line: 1771, column: 3, scope: !2852)
!2857 = !DILocation(line: 1773, column: 32, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 1772, column: 5)
!2859 = !DILocation(line: 1776, column: 12, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 1776, column: 11)
!2861 = !DILocation(line: 1776, column: 18, scope: !2860)
!2862 = !DILocation(line: 1776, column: 27, scope: !2860)
!2863 = !DILocation(line: 1776, column: 11, scope: !2858)
!2864 = !DILocation(line: 1777, column: 2, scope: !2860)
!2865 = !DILocation(line: 1773, column: 22, scope: !2858)
!2866 = !DILocation(line: 1773, column: 39, scope: !2858)
!2867 = !DILocation(line: 1773, column: 30, scope: !2858)
!2868 = !DILocation(line: 1773, column: 28, scope: !2858)
!2869 = !DILocation(line: 1771, column: 53, scope: !2855)
!2870 = !DILocation(line: 1771, column: 3, scope: !2855)
!2871 = distinct !{!2871, !2856, !2872}
!2872 = !DILocation(line: 1778, column: 5, scope: !2852)
!2873 = !DILocation(line: 1780, column: 10, scope: !2825)
!2874 = !DILocation(line: 1780, column: 13, scope: !2825)
!2875 = !DILocation(line: 1781, column: 10, scope: !2825)
!2876 = !DILocation(line: 1781, column: 13, scope: !2825)
!2877 = !DILocation(line: 1782, column: 8, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 1782, column: 3)
!2879 = !DILocation(line: 0, scope: !2878)
!2880 = !DILocation(line: 1782, column: 17, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 1782, column: 3)
!2882 = !DILocation(line: 1782, column: 3, scope: !2878)
!2883 = !DILocation(line: 1783, column: 49, scope: !2881)
!2884 = !DILocation(line: 1783, column: 43, scope: !2881)
!2885 = !DILocation(line: 1783, column: 55, scope: !2881)
!2886 = !DILocation(line: 1783, column: 17, scope: !2881)
!2887 = !DILocation(line: 1783, column: 12, scope: !2881)
!2888 = !DILocation(line: 1783, column: 15, scope: !2881)
!2889 = !DILocation(line: 1782, column: 24, scope: !2881)
!2890 = !DILocation(line: 1782, column: 3, scope: !2881)
!2891 = distinct !{!2891, !2882, !2892}
!2892 = !DILocation(line: 1783, column: 60, scope: !2878)
!2893 = !DILocation(line: 1784, column: 10, scope: !2825)
!2894 = !DILocation(line: 1784, column: 3, scope: !2825)
!2895 = distinct !DISubprogram(name: "cpp_token_as_text", scope: !3, file: !3, line: 1865, type: !2896, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!235, !341, !314}
!2898 = !{!2899, !2900, !2901, !2902, !2903}
!2899 = !DILocalVariable(name: "pfile", arg: 1, scope: !2895, file: !3, line: 1865, type: !341)
!2900 = !DILocalVariable(name: "token", arg: 2, scope: !2895, file: !3, line: 1865, type: !314)
!2901 = !DILocalVariable(name: "len", scope: !2895, file: !3, line: 1867, type: !7)
!2902 = !DILocalVariable(name: "start", scope: !2895, file: !3, line: 1868, type: !235)
!2903 = !DILocalVariable(name: "end", scope: !2895, file: !3, line: 1868, type: !235)
!2904 = !DILocation(line: 0, scope: !2895)
!2905 = !DILocation(line: 1867, column: 22, scope: !2895)
!2906 = !DILocation(line: 1867, column: 44, scope: !2895)
!2907 = !DILocation(line: 1868, column: 55, scope: !2895)
!2908 = !DILocation(line: 1868, column: 26, scope: !2895)
!2909 = !DILocation(line: 1870, column: 9, scope: !2895)
!2910 = !DILocation(line: 1871, column: 10, scope: !2895)
!2911 = !DILocation(line: 1873, column: 3, scope: !2895)
!2912 = distinct !DISubprogram(name: "_cpp_unaligned_alloc", scope: !3, file: !3, line: 2215, type: !2913, scopeLine: 2216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2915)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!235, !341, !237}
!2915 = !{!2916, !2917, !2918, !2919}
!2916 = !DILocalVariable(name: "pfile", arg: 1, scope: !2912, file: !3, line: 2215, type: !341)
!2917 = !DILocalVariable(name: "len", arg: 2, scope: !2912, file: !3, line: 2215, type: !237)
!2918 = !DILocalVariable(name: "buff", scope: !2912, file: !3, line: 2217, type: !260)
!2919 = !DILocalVariable(name: "result", scope: !2912, file: !3, line: 2218, type: !235)
!2920 = !DILocation(line: 0, scope: !2912)
!2921 = !DILocation(line: 2217, column: 28, scope: !2912)
!2922 = !DILocation(line: 2218, column: 33, scope: !2912)
!2923 = !DILocation(line: 2220, column: 29, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 2220, column: 7)
!2925 = !DILocation(line: 2220, column: 35, scope: !2924)
!2926 = !DILocation(line: 2220, column: 11, scope: !2924)
!2927 = !DILocation(line: 2220, column: 7, scope: !2912)
!2928 = !DILocation(line: 2222, column: 14, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 2221, column: 5)
!2930 = !DILocation(line: 2223, column: 27, scope: !2929)
!2931 = !DILocation(line: 2223, column: 18, scope: !2929)
!2932 = !DILocation(line: 2224, column: 21, scope: !2929)
!2933 = !DILocation(line: 2225, column: 22, scope: !2929)
!2934 = !DILocation(line: 2226, column: 5, scope: !2929)
!2935 = !DILocation(line: 2228, column: 22, scope: !2912)
!2936 = !DILocation(line: 2228, column: 9, scope: !2912)
!2937 = !DILocation(line: 2228, column: 13, scope: !2912)
!2938 = !DILocation(line: 2229, column: 3, scope: !2912)
!2939 = distinct !DISubprogram(name: "cpp_type2name", scope: !3, file: !3, line: 1880, type: !2940, scopeLine: 1881, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!232, !42, !142}
!2942 = !{!2943, !2944}
!2943 = !DILocalVariable(name: "type", arg: 1, scope: !2939, file: !3, line: 1880, type: !42)
!2944 = !DILocalVariable(name: "flags", arg: 2, scope: !2939, file: !3, line: 1880, type: !142)
!2945 = !DILocation(line: 0, scope: !2939)
!2946 = !DILocation(line: 1882, column: 13, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1882, column: 7)
!2948 = !DILocation(line: 1882, column: 7, scope: !2939)
!2949 = !DILocation(line: 1883, column: 27, scope: !2947)
!2950 = !DILocation(line: 1883, column: 5, scope: !2947)
!2951 = !DILocation(line: 1884, column: 18, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 1884, column: 12)
!2953 = !DILocation(line: 1884, column: 12, scope: !2947)
!2954 = !DILocation(line: 1885, column: 12, scope: !2952)
!2955 = !DILocation(line: 1885, column: 5, scope: !2952)
!2956 = !DILocation(line: 1887, column: 25, scope: !2939)
!2957 = !DILocation(line: 1887, column: 47, scope: !2939)
!2958 = !DILocation(line: 1887, column: 3, scope: !2939)
!2959 = !DILocation(line: 1888, column: 1, scope: !2939)
!2960 = distinct !DISubprogram(name: "cpp_output_token", scope: !3, file: !3, line: 1894, type: !2961, scopeLine: 1895, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3014)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{null, !314, !2963}
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2965, line: 7, baseType: !2966)
!2965 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2967, line: 49, size: 1728, elements: !2968)
!2967 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2984, !2986, !2987, !2988, !2990, !2991, !2993, !2995, !2998, !3000, !3003, !3006, !3007, !3008, !3009, !3010}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2966, file: !2967, line: 51, baseType: !146, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2966, file: !2967, line: 54, baseType: !236, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2966, file: !2967, line: 55, baseType: !236, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2966, file: !2967, line: 56, baseType: !236, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2966, file: !2967, line: 57, baseType: !236, size: 64, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2966, file: !2967, line: 58, baseType: !236, size: 64, offset: 320)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2966, file: !2967, line: 59, baseType: !236, size: 64, offset: 384)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2966, file: !2967, line: 60, baseType: !236, size: 64, offset: 448)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2966, file: !2967, line: 61, baseType: !236, size: 64, offset: 512)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2966, file: !2967, line: 64, baseType: !236, size: 64, offset: 576)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2966, file: !2967, line: 65, baseType: !236, size: 64, offset: 640)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2966, file: !2967, line: 66, baseType: !236, size: 64, offset: 704)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2966, file: !2967, line: 68, baseType: !2982, size: 64, offset: 768)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2967, line: 36, flags: DIFlagFwdDecl)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2966, file: !2967, line: 70, baseType: !2985, size: 64, offset: 832)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2966, file: !2967, line: 72, baseType: !146, size: 32, offset: 896)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2966, file: !2967, line: 73, baseType: !146, size: 32, offset: 928)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2966, file: !2967, line: 74, baseType: !2989, size: 64, offset: 960)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !395, line: 152, baseType: !231)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2966, file: !2967, line: 77, baseType: !145, size: 16, offset: 1024)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2966, file: !2967, line: 78, baseType: !2992, size: 8, offset: 1040)
!2992 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2966, file: !2967, line: 79, baseType: !2994, size: 8, offset: 1048)
!2994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 8, elements: !213)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2966, file: !2967, line: 81, baseType: !2996, size: 64, offset: 1088)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2967, line: 43, baseType: null)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2966, file: !2967, line: 89, baseType: !2999, size: 64, offset: 1152)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !395, line: 153, baseType: !231)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2966, file: !2967, line: 91, baseType: !3001, size: 64, offset: 1216)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2967, line: 37, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2966, file: !2967, line: 92, baseType: !3004, size: 64, offset: 1280)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2967, line: 38, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2966, file: !2967, line: 93, baseType: !2985, size: 64, offset: 1344)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2966, file: !2967, line: 94, baseType: !144, size: 64, offset: 1408)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2966, file: !2967, line: 95, baseType: !237, size: 64, offset: 1472)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2966, file: !2967, line: 96, baseType: !146, size: 32, offset: 1536)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2966, file: !2967, line: 98, baseType: !3011, size: 160, offset: 1568)
!3011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 160, elements: !3012)
!3012 = !{!3013}
!3013 = !DISubrange(count: 20)
!3014 = !{!3015, !3016, !3017, !3020, !3021, !3023, !3024, !3032}
!3015 = !DILocalVariable(name: "token", arg: 1, scope: !2960, file: !3, line: 1894, type: !314)
!3016 = !DILocalVariable(name: "fp", arg: 2, scope: !2960, file: !3, line: 1894, type: !2963)
!3017 = !DILocalVariable(name: "spelling", scope: !3018, file: !3, line: 1900, type: !172)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 1899, column: 7)
!3019 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 1897, column: 5)
!3020 = !DILocalVariable(name: "c", scope: !3018, file: !3, line: 1901, type: !146)
!3021 = !DILocalVariable(name: "i", scope: !3022, file: !3, line: 1920, type: !237)
!3022 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 1919, column: 7)
!3023 = !DILocalVariable(name: "name", scope: !3022, file: !3, line: 1921, type: !172)
!3024 = !DILocalVariable(name: "buffer", scope: !3025, file: !3, line: 1926, type: !3029)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1925, column: 6)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 1924, column: 8)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 1923, column: 2)
!3028 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 1923, column: 2)
!3029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 80, elements: !3030)
!3030 = !{!3031}
!3031 = !DISubrange(count: 10)
!3032 = !DILabel(scope: !3019, name: "spell_ident", file: !3, line: 1917)
!3033 = !DILocation(line: 0, scope: !2960)
!3034 = !DILocation(line: 1896, column: 11, scope: !2960)
!3035 = !DILocation(line: 1896, column: 3, scope: !2960)
!3036 = !DILocation(line: 1903, column: 13, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1903, column: 6)
!3038 = !DILocation(line: 1903, column: 19, scope: !3037)
!3039 = !DILocation(line: 1903, column: 6, scope: !3018)
!3040 = !DILocation(line: 1904, column: 40, scope: !3037)
!3041 = !DILocation(line: 1904, column: 15, scope: !3037)
!3042 = !DILocation(line: 0, scope: !3018)
!3043 = !DILocation(line: 1904, column: 4, scope: !3037)
!3044 = !DILocation(line: 1905, column: 24, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 1905, column: 11)
!3046 = !DILocation(line: 1905, column: 11, scope: !3037)
!3047 = !DILocation(line: 1908, column: 15, scope: !3045)
!3048 = !DILocation(line: 0, scope: !3037)
!3049 = !DILocation(line: 1910, column: 6, scope: !3018)
!3050 = !DILocation(line: 1911, column: 2, scope: !3018)
!3051 = !DILocation(line: 1912, column: 4, scope: !3018)
!3052 = !DILocation(line: 1913, column: 15, scope: !3018)
!3053 = !DILocation(line: 1913, column: 14, scope: !3018)
!3054 = !DILocation(line: 1913, column: 27, scope: !3018)
!3055 = distinct !{!3055, !3050, !3056}
!3056 = !DILocation(line: 1913, column: 34, scope: !3018)
!3057 = !DILocation(line: 1921, column: 31, scope: !3022)
!3058 = !DILocation(line: 0, scope: !3022)
!3059 = !DILocation(line: 0, scope: !3025)
!3060 = !DILocation(line: 1923, column: 7, scope: !3028)
!3061 = !DILocation(line: 1923, column: 18, scope: !3027)
!3062 = !DILocation(line: 0, scope: !3028)
!3063 = !DILocation(line: 1923, column: 16, scope: !3027)
!3064 = !DILocation(line: 1923, column: 2, scope: !3028)
!3065 = !DILocation(line: 1924, column: 8, scope: !3026)
!3066 = !DILocation(line: 1924, column: 16, scope: !3026)
!3067 = !DILocation(line: 1924, column: 8, scope: !3027)
!3068 = !DILocation(line: 1926, column: 8, scope: !3025)
!3069 = !DILocation(line: 1926, column: 22, scope: !3025)
!3070 = !DILocation(line: 1927, column: 13, scope: !3025)
!3071 = !DILocation(line: 1927, column: 44, scope: !3025)
!3072 = !DILocation(line: 1927, column: 10, scope: !3025)
!3073 = !DILocation(line: 1928, column: 8, scope: !3025)
!3074 = !DILocation(line: 1929, column: 6, scope: !3026)
!3075 = !DILocation(line: 1929, column: 6, scope: !3025)
!3076 = !DILocation(line: 1931, column: 13, scope: !3026)
!3077 = !DILocation(line: 1931, column: 6, scope: !3026)
!3078 = !DILocation(line: 1923, column: 52, scope: !3027)
!3079 = !DILocation(line: 1923, column: 2, scope: !3027)
!3080 = distinct !{!3080, !3064, !3081}
!3081 = !DILocation(line: 1931, column: 52, scope: !3028)
!3082 = !DILocation(line: 1936, column: 30, scope: !3019)
!3083 = !DILocation(line: 1936, column: 54, scope: !3019)
!3084 = !DILocation(line: 1936, column: 39, scope: !3019)
!3085 = !DILocation(line: 1936, column: 7, scope: !3019)
!3086 = !DILocation(line: 1937, column: 7, scope: !3019)
!3087 = !DILocation(line: 1943, column: 1, scope: !2960)
!3088 = distinct !DISubprogram(name: "_cpp_equiv_tokens", scope: !3, file: !3, line: 1947, type: !3089, scopeLine: 1948, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!146, !314, !314}
!3091 = !{!3092, !3093}
!3092 = !DILocalVariable(name: "a", arg: 1, scope: !3088, file: !3, line: 1947, type: !314)
!3093 = !DILocalVariable(name: "b", arg: 2, scope: !3088, file: !3, line: 1947, type: !314)
!3094 = !DILocation(line: 0, scope: !3088)
!3095 = !DILocation(line: 1949, column: 10, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 1949, column: 7)
!3097 = !DILocation(line: 1949, column: 21, scope: !3096)
!3098 = !DILocation(line: 1949, column: 15, scope: !3096)
!3099 = !DILocation(line: 1949, column: 26, scope: !3096)
!3100 = !DILocation(line: 1949, column: 32, scope: !3096)
!3101 = !DILocation(line: 1949, column: 44, scope: !3096)
!3102 = !DILocation(line: 1949, column: 38, scope: !3096)
!3103 = !DILocation(line: 1949, column: 7, scope: !3088)
!3104 = !DILocation(line: 1950, column: 13, scope: !3096)
!3105 = !DILocation(line: 1950, column: 5, scope: !3096)
!3106 = !DILocation(line: 1956, column: 18, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 1951, column: 7)
!3108 = !DILocation(line: 1956, column: 31, scope: !3107)
!3109 = !DILocation(line: 1956, column: 41, scope: !3107)
!3110 = !DILocation(line: 1956, column: 60, scope: !3107)
!3111 = !DILocation(line: 1956, column: 50, scope: !3107)
!3112 = !DILocation(line: 1956, column: 2, scope: !3107)
!3113 = !DILocation(line: 1958, column: 18, scope: !3107)
!3114 = !DILocation(line: 1959, column: 3, scope: !3107)
!3115 = !DILocation(line: 1959, column: 23, scope: !3107)
!3116 = !DILocation(line: 1959, column: 50, scope: !3107)
!3117 = !DILocation(line: 1959, column: 30, scope: !3107)
!3118 = !DILocation(line: 1958, column: 2, scope: !3107)
!3119 = !DILocation(line: 1961, column: 12, scope: !3107)
!3120 = !DILocation(line: 1961, column: 21, scope: !3107)
!3121 = !DILocation(line: 1961, column: 32, scope: !3107)
!3122 = !DILocation(line: 1961, column: 41, scope: !3107)
!3123 = !DILocation(line: 1961, column: 26, scope: !3107)
!3124 = !DILocation(line: 1961, column: 2, scope: !3107)
!3125 = !DILocation(line: 1963, column: 21, scope: !3107)
!3126 = !DILocation(line: 1963, column: 39, scope: !3107)
!3127 = !DILocation(line: 1963, column: 25, scope: !3107)
!3128 = !DILocation(line: 1964, column: 3, scope: !3107)
!3129 = !DILocation(line: 1964, column: 26, scope: !3107)
!3130 = !DILocation(line: 1964, column: 43, scope: !3107)
!3131 = !DILocation(line: 1965, column: 8, scope: !3107)
!3132 = !DILocation(line: 1964, column: 7, scope: !3107)
!3133 = !DILocation(line: 1964, column: 6, scope: !3107)
!3134 = !DILocation(line: 0, scope: !3107)
!3135 = !DILocation(line: 1963, column: 2, scope: !3107)
!3136 = !DILocation(line: 1969, column: 1, scope: !3088)
!3137 = distinct !DISubprogram(name: "cpp_avoid_paste", scope: !3, file: !3, line: 1976, type: !3138, scopeLine: 1978, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!146, !341, !314, !314}
!3140 = !{!3141, !3142, !3143, !3144, !3145, !3146}
!3141 = !DILocalVariable(name: "pfile", arg: 1, scope: !3137, file: !3, line: 1976, type: !341)
!3142 = !DILocalVariable(name: "token1", arg: 2, scope: !3137, file: !3, line: 1976, type: !314)
!3143 = !DILocalVariable(name: "token2", arg: 3, scope: !3137, file: !3, line: 1977, type: !314)
!3144 = !DILocalVariable(name: "a", scope: !3137, file: !3, line: 1979, type: !42)
!3145 = !DILocalVariable(name: "b", scope: !3137, file: !3, line: 1979, type: !42)
!3146 = !DILocalVariable(name: "c", scope: !3137, file: !3, line: 1980, type: !1561)
!3147 = !DILocation(line: 0, scope: !3137)
!3148 = !DILocation(line: 1979, column: 30, scope: !3137)
!3149 = !DILocation(line: 1979, column: 48, scope: !3137)
!3150 = !DILocation(line: 1982, column: 15, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1982, column: 7)
!3152 = !DILocation(line: 1982, column: 21, scope: !3151)
!3153 = !DILocation(line: 1982, column: 7, scope: !3137)
!3154 = !DILocation(line: 1984, column: 15, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1984, column: 7)
!3156 = !DILocation(line: 1984, column: 21, scope: !3155)
!3157 = !DILocation(line: 1984, column: 7, scope: !3137)
!3158 = !DILocation(line: 1988, column: 21, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1988, column: 7)
!3160 = !DILocation(line: 1988, column: 7, scope: !3137)
!3161 = !DILocation(line: 1989, column: 35, scope: !3159)
!3162 = !DILocation(line: 1989, column: 9, scope: !3159)
!3163 = !DILocation(line: 1989, column: 5, scope: !3159)
!3164 = !DILocation(line: 1990, column: 12, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 1990, column: 12)
!3166 = !DILocation(line: 1990, column: 31, scope: !3165)
!3167 = !DILocation(line: 1990, column: 40, scope: !3165)
!3168 = !DILocation(line: 1990, column: 12, scope: !3159)
!3169 = !DILocation(line: 1991, column: 28, scope: !3165)
!3170 = !DILocation(line: 1991, column: 9, scope: !3165)
!3171 = !DILocation(line: 1991, column: 5, scope: !3165)
!3172 = !DILocation(line: 0, scope: !3159)
!3173 = !DILocation(line: 1994, column: 15, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1994, column: 7)
!3175 = !DILocation(line: 1994, column: 41, scope: !3174)
!3176 = !DILocation(line: 1994, column: 36, scope: !3174)
!3177 = !DILocation(line: 1997, column: 3, scope: !3137)
!3178 = !DILocation(line: 1999, column: 32, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1998, column: 5)
!3180 = !DILocation(line: 1999, column: 23, scope: !3179)
!3181 = !DILocation(line: 2000, column: 36, scope: !3179)
!3182 = !DILocation(line: 2000, column: 48, scope: !3179)
!3183 = !DILocation(line: 2000, column: 20, scope: !3179)
!3184 = !DILocation(line: 2001, column: 29, scope: !3179)
!3185 = !DILocation(line: 2001, column: 20, scope: !3179)
!3186 = !DILocation(line: 2002, column: 30, scope: !3179)
!3187 = !DILocation(line: 2002, column: 42, scope: !3179)
!3188 = !DILocation(line: 2002, column: 37, scope: !3179)
!3189 = !DILocation(line: 2002, column: 21, scope: !3179)
!3190 = !DILocation(line: 2003, column: 28, scope: !3179)
!3191 = !DILocation(line: 2003, column: 40, scope: !3179)
!3192 = !DILocation(line: 2003, column: 35, scope: !3179)
!3193 = !DILocation(line: 2003, column: 19, scope: !3179)
!3194 = !DILocation(line: 2004, column: 35, scope: !3179)
!3195 = !DILocation(line: 2004, column: 19, scope: !3179)
!3196 = !DILocation(line: 2005, column: 28, scope: !3179)
!3197 = !DILocation(line: 2005, column: 19, scope: !3179)
!3198 = !DILocation(line: 2006, column: 27, scope: !3179)
!3199 = !DILocation(line: 2006, column: 18, scope: !3179)
!3200 = !DILocation(line: 2007, column: 37, scope: !3179)
!3201 = !DILocation(line: 2007, column: 21, scope: !3179)
!3202 = !DILocation(line: 2008, column: 30, scope: !3179)
!3203 = !DILocation(line: 2008, column: 21, scope: !3179)
!3204 = !DILocation(line: 2009, column: 35, scope: !3179)
!3205 = !DILocation(line: 2009, column: 52, scope: !3179)
!3206 = !DILocation(line: 2009, column: 47, scope: !3179)
!3207 = !DILocation(line: 2009, column: 19, scope: !3179)
!3208 = !DILocation(line: 2010, column: 29, scope: !3179)
!3209 = !DILocation(line: 2010, column: 41, scope: !3179)
!3210 = !DILocation(line: 2010, column: 36, scope: !3179)
!3211 = !DILocation(line: 2010, column: 20, scope: !3179)
!3212 = !DILocation(line: 2012, column: 6, scope: !3179)
!3213 = !DILocation(line: 2012, column: 37, scope: !3179)
!3214 = !DILocation(line: 2012, column: 9, scope: !3179)
!3215 = !DILocation(line: 2013, column: 5, scope: !3179)
!3216 = !DILocation(line: 2014, column: 27, scope: !3179)
!3217 = !DILocation(line: 2014, column: 22, scope: !3179)
!3218 = !DILocation(line: 2011, column: 20, scope: !3179)
!3219 = !DILocation(line: 2015, column: 46, scope: !3179)
!3220 = !DILocation(line: 2016, column: 17, scope: !3179)
!3221 = !DILocation(line: 2016, column: 29, scope: !3179)
!3222 = !DILocation(line: 2015, column: 22, scope: !3179)
!3223 = !DILocation(line: 2018, column: 46, scope: !3179)
!3224 = !DILocation(line: 2018, column: 30, scope: !3179)
!3225 = !DILocation(line: 2018, column: 54, scope: !3179)
!3226 = !DILocation(line: 2019, column: 11, scope: !3179)
!3227 = !DILocation(line: 2019, column: 6, scope: !3179)
!3228 = !DILocation(line: 2020, column: 9, scope: !3179)
!3229 = !DILocation(line: 2021, column: 9, scope: !3179)
!3230 = !DILocation(line: 2021, column: 36, scope: !3179)
!3231 = !DILocation(line: 2022, column: 9, scope: !3179)
!3232 = !DILocation(line: 2022, column: 27, scope: !3179)
!3233 = !DILocation(line: 2018, column: 21, scope: !3179)
!3234 = !DILocation(line: 2027, column: 1, scope: !3137)
!3235 = distinct !DISubprogram(name: "name_p", scope: !3, file: !3, line: 436, type: !3236, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3238)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!146, !341, !608}
!3238 = !{!3239, !3240, !3241}
!3239 = !DILocalVariable(name: "pfile", arg: 1, scope: !3235, file: !3, line: 436, type: !341)
!3240 = !DILocalVariable(name: "string", arg: 2, scope: !3235, file: !3, line: 436, type: !608)
!3241 = !DILocalVariable(name: "i", scope: !3235, file: !3, line: 438, type: !7)
!3242 = !DILocation(line: 0, scope: !3235)
!3243 = !DILocation(line: 441, column: 10, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 441, column: 9)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !3, line: 440, column: 3)
!3246 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 440, column: 3)
!3247 = !DILocation(line: 0, scope: !3245)
!3248 = !DILocation(line: 440, column: 17, scope: !3245)
!3249 = !DILocation(line: 440, column: 8, scope: !3246)
!3250 = !DILocation(line: 0, scope: !3246)
!3251 = !DILocation(line: 440, column: 3, scope: !3246)
!3252 = !DILocation(line: 441, column: 9, scope: !3245)
!3253 = !DILocation(line: 440, column: 33, scope: !3245)
!3254 = !DILocation(line: 440, column: 3, scope: !3245)
!3255 = distinct !{!3255, !3251, !3256}
!3256 = !DILocation(line: 442, column: 14, scope: !3246)
!3257 = !DILocation(line: 445, column: 1, scope: !3235)
!3258 = distinct !DISubprogram(name: "cpp_output_line", scope: !3, file: !3, line: 2033, type: !3259, scopeLine: 2034, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{null, !341, !2963}
!3261 = !{!3262, !3263, !3264}
!3262 = !DILocalVariable(name: "pfile", arg: 1, scope: !3258, file: !3, line: 2033, type: !341)
!3263 = !DILocalVariable(name: "fp", arg: 2, scope: !3258, file: !3, line: 2033, type: !2963)
!3264 = !DILocalVariable(name: "token", scope: !3258, file: !3, line: 2035, type: !314)
!3265 = !DILocation(line: 0, scope: !3258)
!3266 = !DILocation(line: 2037, column: 11, scope: !3258)
!3267 = !DILocation(line: 2038, column: 3, scope: !3258)
!3268 = !DILocation(line: 2038, column: 17, scope: !3258)
!3269 = !DILocation(line: 2038, column: 22, scope: !3258)
!3270 = !DILocation(line: 2040, column: 7, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 2039, column: 5)
!3272 = !DILocation(line: 2041, column: 15, scope: !3271)
!3273 = !DILocation(line: 2042, column: 18, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 2042, column: 11)
!3275 = !DILocation(line: 2042, column: 24, scope: !3274)
!3276 = !DILocation(line: 2042, column: 11, scope: !3271)
!3277 = !DILocation(line: 2043, column: 2, scope: !3274)
!3278 = distinct !{!3278, !3267, !3279}
!3279 = !DILocation(line: 2044, column: 5, scope: !3258)
!3280 = !DILocation(line: 2046, column: 3, scope: !3258)
!3281 = !DILocation(line: 2047, column: 1, scope: !3258)
!3282 = distinct !DISubprogram(name: "cpp_output_line_to_string", scope: !3, file: !3, line: 2053, type: !3283, scopeLine: 2054, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3285)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!235, !341, !172}
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291, !3292, !3294}
!3286 = !DILocalVariable(name: "pfile", arg: 1, scope: !3282, file: !3, line: 2053, type: !341)
!3287 = !DILocalVariable(name: "dir_name", arg: 2, scope: !3282, file: !3, line: 2053, type: !172)
!3288 = !DILocalVariable(name: "token", scope: !3282, file: !3, line: 2055, type: !314)
!3289 = !DILocalVariable(name: "out", scope: !3282, file: !3, line: 2056, type: !7)
!3290 = !DILocalVariable(name: "alloced", scope: !3282, file: !3, line: 2057, type: !7)
!3291 = !DILocalVariable(name: "result", scope: !3282, file: !3, line: 2058, type: !235)
!3292 = !DILocalVariable(name: "last", scope: !3293, file: !3, line: 2070, type: !235)
!3293 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 2069, column: 5)
!3294 = !DILocalVariable(name: "len", scope: !3293, file: !3, line: 2072, type: !7)
!3295 = !DILocation(line: 0, scope: !3282)
!3296 = !DILocation(line: 2056, column: 22, scope: !3282)
!3297 = !DILocation(line: 2056, column: 33, scope: !3282)
!3298 = !DILocation(line: 2057, column: 30, scope: !3282)
!3299 = !DILocation(line: 2058, column: 54, scope: !3282)
!3300 = !DILocation(line: 2058, column: 45, scope: !3282)
!3301 = !DILocation(line: 2061, column: 7, scope: !3282)
!3302 = !DILocation(line: 2063, column: 7, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 2062, column: 5)
!3304 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 2061, column: 7)
!3305 = !DILocation(line: 2064, column: 11, scope: !3303)
!3306 = !DILocation(line: 2065, column: 5, scope: !3303)
!3307 = !DILocation(line: 2067, column: 11, scope: !3282)
!3308 = !DILocation(line: 2068, column: 3, scope: !3282)
!3309 = !DILocation(line: 2068, column: 17, scope: !3282)
!3310 = !DILocation(line: 2068, column: 22, scope: !3282)
!3311 = !DILocation(line: 2072, column: 26, scope: !3293)
!3312 = !DILocation(line: 2072, column: 48, scope: !3293)
!3313 = !DILocation(line: 0, scope: !3293)
!3314 = !DILocation(line: 2074, column: 15, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 2074, column: 11)
!3316 = !DILocation(line: 2074, column: 21, scope: !3315)
!3317 = !DILocation(line: 2074, column: 11, scope: !3293)
!3318 = !DILocation(line: 2076, column: 12, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 2075, column: 2)
!3320 = !DILocation(line: 2077, column: 18, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3319, file: !3, line: 2077, column: 8)
!3322 = !DILocation(line: 2077, column: 8, scope: !3319)
!3323 = !DILocation(line: 2079, column: 49, scope: !3319)
!3324 = !DILocation(line: 2079, column: 31, scope: !3319)
!3325 = !DILocation(line: 2080, column: 2, scope: !3319)
!3326 = !DILocation(line: 2082, column: 46, scope: !3293)
!3327 = !DILocation(line: 2082, column: 14, scope: !3293)
!3328 = !DILocation(line: 2083, column: 18, scope: !3293)
!3329 = !DILocation(line: 2083, column: 13, scope: !3293)
!3330 = !DILocation(line: 2085, column: 15, scope: !3293)
!3331 = !DILocation(line: 2086, column: 18, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 2086, column: 11)
!3333 = !DILocation(line: 2086, column: 24, scope: !3332)
!3334 = !DILocation(line: 2086, column: 11, scope: !3293)
!3335 = !DILocation(line: 2087, column: 12, scope: !3332)
!3336 = !DILocation(line: 2087, column: 2, scope: !3332)
!3337 = !DILocation(line: 2087, column: 16, scope: !3332)
!3338 = distinct !{!3338, !3308, !3339}
!3339 = !DILocation(line: 2088, column: 5, scope: !3282)
!3340 = !DILocation(line: 2090, column: 3, scope: !3282)
!3341 = !DILocation(line: 2090, column: 15, scope: !3282)
!3342 = !DILocation(line: 2091, column: 3, scope: !3282)
!3343 = distinct !DISubprogram(name: "ustrlen", scope: !241, file: !241, line: 705, type: !3344, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!237, !172}
!3346 = !{!3347}
!3347 = !DILocalVariable(name: "s1", arg: 1, scope: !3343, file: !241, line: 705, type: !172)
!3348 = !DILocation(line: 0, scope: !3343)
!3349 = !DILocation(line: 707, column: 10, scope: !3343)
!3350 = !DILocation(line: 707, column: 3, scope: !3343)
!3351 = distinct !DISubprogram(name: "_cpp_release_buff", scope: !3, file: !3, line: 2132, type: !3352, scopeLine: 2133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3354)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{null, !341, !260}
!3354 = !{!3355, !3356, !3357}
!3355 = !DILocalVariable(name: "pfile", arg: 1, scope: !3351, file: !3, line: 2132, type: !341)
!3356 = !DILocalVariable(name: "buff", arg: 2, scope: !3351, file: !3, line: 2132, type: !260)
!3357 = !DILocalVariable(name: "end", scope: !3351, file: !3, line: 2134, type: !260)
!3358 = !DILocation(line: 0, scope: !3351)
!3359 = !DILocation(line: 2136, column: 3, scope: !3351)
!3360 = !DILocation(line: 2136, column: 15, scope: !3351)
!3361 = distinct !{!3361, !3359, !3362}
!3362 = !DILocation(line: 2137, column: 16, scope: !3351)
!3363 = !DILocation(line: 2138, column: 22, scope: !3351)
!3364 = !DILocation(line: 2138, column: 13, scope: !3351)
!3365 = !DILocation(line: 2139, column: 21, scope: !3351)
!3366 = !DILocation(line: 2140, column: 1, scope: !3351)
!3367 = distinct !DISubprogram(name: "_cpp_get_buff", scope: !3, file: !3, line: 2144, type: !3368, scopeLine: 2145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3370)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!260, !341, !237}
!3370 = !{!3371, !3372, !3373, !3374, !3376}
!3371 = !DILocalVariable(name: "pfile", arg: 1, scope: !3367, file: !3, line: 2144, type: !341)
!3372 = !DILocalVariable(name: "min_size", arg: 2, scope: !3367, file: !3, line: 2144, type: !237)
!3373 = !DILocalVariable(name: "result", scope: !3367, file: !3, line: 2146, type: !260)
!3374 = !DILocalVariable(name: "p", scope: !3367, file: !3, line: 2146, type: !3375)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!3376 = !DILocalVariable(name: "size", scope: !3377, file: !3, line: 2150, type: !237)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 2149, column: 5)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 2148, column: 3)
!3379 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 2148, column: 3)
!3380 = !DILocation(line: 0, scope: !3367)
!3381 = !DILocation(line: 2148, column: 20, scope: !3379)
!3382 = !DILocation(line: 0, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 2158, column: 11)
!3384 = !DILocation(line: 2148, column: 8, scope: !3379)
!3385 = !DILocation(line: 0, scope: !3379)
!3386 = !DILocation(line: 2152, column: 11, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 2152, column: 11)
!3388 = !DILocation(line: 2152, column: 14, scope: !3387)
!3389 = !DILocation(line: 2152, column: 11, scope: !3377)
!3390 = !DILocation(line: 2153, column: 9, scope: !3387)
!3391 = !DILocation(line: 2153, column: 2, scope: !3387)
!3392 = !DILocation(line: 2155, column: 22, scope: !3377)
!3393 = !DILocation(line: 2155, column: 38, scope: !3377)
!3394 = !DILocation(line: 2155, column: 28, scope: !3377)
!3395 = !DILocation(line: 0, scope: !3377)
!3396 = !DILocation(line: 2158, column: 16, scope: !3383)
!3397 = !DILocation(line: 2158, column: 28, scope: !3383)
!3398 = !DILocation(line: 2158, column: 36, scope: !3383)
!3399 = !DILocation(line: 2158, column: 11, scope: !3377)
!3400 = !DILocation(line: 2160, column: 5, scope: !3378)
!3401 = !DILocation(line: 2148, column: 39, scope: !3378)
!3402 = !DILocation(line: 2148, column: 44, scope: !3378)
!3403 = !DILocation(line: 2148, column: 3, scope: !3378)
!3404 = distinct !{!3404, !3405, !3406}
!3405 = !DILocation(line: 2148, column: 3, scope: !3379)
!3406 = !DILocation(line: 2160, column: 5, scope: !3379)
!3407 = !DILocation(line: 2162, column: 16, scope: !3367)
!3408 = !DILocation(line: 2162, column: 6, scope: !3367)
!3409 = !DILocation(line: 2163, column: 11, scope: !3367)
!3410 = !DILocation(line: 2163, column: 16, scope: !3367)
!3411 = !DILocation(line: 2164, column: 25, scope: !3367)
!3412 = !DILocation(line: 2164, column: 11, scope: !3367)
!3413 = !DILocation(line: 2164, column: 15, scope: !3367)
!3414 = !DILocation(line: 2165, column: 3, scope: !3367)
!3415 = !DILocation(line: 2166, column: 1, scope: !3367)
!3416 = distinct !DISubprogram(name: "new_buff", scope: !3, file: !3, line: 2112, type: !3417, scopeLine: 2113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!260, !237}
!3419 = !{!3420, !3421, !3422}
!3420 = !DILocalVariable(name: "len", arg: 1, scope: !3416, file: !3, line: 2112, type: !237)
!3421 = !DILocalVariable(name: "result", scope: !3416, file: !3, line: 2114, type: !260)
!3422 = !DILocalVariable(name: "base", scope: !3416, file: !3, line: 2115, type: !235)
!3423 = !DILocation(line: 0, scope: !3416)
!3424 = !DILocation(line: 2117, column: 7, scope: !3416)
!3425 = !DILocation(line: 2119, column: 9, scope: !3416)
!3426 = !DILocation(line: 2121, column: 10, scope: !3416)
!3427 = !DILocation(line: 2122, column: 32, scope: !3416)
!3428 = !DILocation(line: 2122, column: 12, scope: !3416)
!3429 = !DILocation(line: 2123, column: 11, scope: !3416)
!3430 = !DILocation(line: 2123, column: 16, scope: !3416)
!3431 = !DILocation(line: 2124, column: 11, scope: !3416)
!3432 = !DILocation(line: 2124, column: 15, scope: !3416)
!3433 = !DILocation(line: 2125, column: 11, scope: !3416)
!3434 = !DILocation(line: 2125, column: 17, scope: !3416)
!3435 = !DILocation(line: 2126, column: 11, scope: !3416)
!3436 = !DILocation(line: 2126, column: 16, scope: !3416)
!3437 = !DILocation(line: 2127, column: 3, scope: !3416)
!3438 = distinct !DISubprogram(name: "_cpp_append_extend_buff", scope: !3, file: !3, line: 2173, type: !3439, scopeLine: 2174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3441)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!260, !341, !260, !237}
!3441 = !{!3442, !3443, !3444, !3445, !3446}
!3442 = !DILocalVariable(name: "pfile", arg: 1, scope: !3438, file: !3, line: 2173, type: !341)
!3443 = !DILocalVariable(name: "buff", arg: 2, scope: !3438, file: !3, line: 2173, type: !260)
!3444 = !DILocalVariable(name: "min_extra", arg: 3, scope: !3438, file: !3, line: 2173, type: !237)
!3445 = !DILocalVariable(name: "size", scope: !3438, file: !3, line: 2175, type: !237)
!3446 = !DILocalVariable(name: "new_buff", scope: !3438, file: !3, line: 2176, type: !260)
!3447 = !DILocation(line: 0, scope: !3438)
!3448 = !DILocation(line: 2175, column: 17, scope: !3438)
!3449 = !DILocation(line: 2176, column: 25, scope: !3438)
!3450 = !DILocation(line: 2178, column: 9, scope: !3438)
!3451 = !DILocation(line: 2178, column: 14, scope: !3438)
!3452 = !DILocation(line: 2179, column: 21, scope: !3438)
!3453 = !DILocation(line: 2179, column: 33, scope: !3438)
!3454 = !DILocation(line: 2179, column: 38, scope: !3438)
!3455 = !DILocation(line: 2179, column: 3, scope: !3438)
!3456 = !DILocation(line: 2180, column: 3, scope: !3438)
!3457 = distinct !DISubprogram(name: "_cpp_extend_buff", scope: !3, file: !3, line: 2189, type: !3458, scopeLine: 2190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3460)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{null, !341, !3375, !237}
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466}
!3461 = !DILocalVariable(name: "pfile", arg: 1, scope: !3457, file: !3, line: 2189, type: !341)
!3462 = !DILocalVariable(name: "pbuff", arg: 2, scope: !3457, file: !3, line: 2189, type: !3375)
!3463 = !DILocalVariable(name: "min_extra", arg: 3, scope: !3457, file: !3, line: 2189, type: !237)
!3464 = !DILocalVariable(name: "new_buff", scope: !3457, file: !3, line: 2191, type: !260)
!3465 = !DILocalVariable(name: "old_buff", scope: !3457, file: !3, line: 2191, type: !260)
!3466 = !DILocalVariable(name: "size", scope: !3457, file: !3, line: 2192, type: !237)
!3467 = !DILocation(line: 0, scope: !3457)
!3468 = !DILocation(line: 2191, column: 36, scope: !3457)
!3469 = !DILocation(line: 2192, column: 17, scope: !3457)
!3470 = !DILocation(line: 2194, column: 14, scope: !3457)
!3471 = !DILocation(line: 2195, column: 21, scope: !3457)
!3472 = !DILocation(line: 2195, column: 37, scope: !3457)
!3473 = !DILocation(line: 2195, column: 42, scope: !3457)
!3474 = !DILocation(line: 2195, column: 3, scope: !3457)
!3475 = !DILocation(line: 2196, column: 13, scope: !3457)
!3476 = !DILocation(line: 2196, column: 18, scope: !3457)
!3477 = !DILocation(line: 2197, column: 10, scope: !3457)
!3478 = !DILocation(line: 2198, column: 1, scope: !3457)
!3479 = distinct !DISubprogram(name: "_cpp_free_buff", scope: !3, file: !3, line: 2202, type: !3480, scopeLine: 2203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{null, !260}
!3482 = !{!3483, !3484}
!3483 = !DILocalVariable(name: "buff", arg: 1, scope: !3479, file: !3, line: 2202, type: !260)
!3484 = !DILocalVariable(name: "next", scope: !3479, file: !3, line: 2204, type: !260)
!3485 = !DILocation(line: 0, scope: !3479)
!3486 = !DILocation(line: 2206, column: 3, scope: !3479)
!3487 = !DILocation(line: 2206, column: 3, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 2206, column: 3)
!3489 = !DILocation(line: 2208, column: 20, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !3, line: 2207, column: 5)
!3491 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 2206, column: 3)
!3492 = !DILocation(line: 2209, column: 19, scope: !3490)
!3493 = !DILocation(line: 2209, column: 7, scope: !3490)
!3494 = !DILocation(line: 2206, column: 3, scope: !3491)
!3495 = distinct !{!3495, !3487, !3496}
!3496 = !DILocation(line: 2210, column: 5, scope: !3488)
!3497 = !DILocation(line: 2211, column: 1, scope: !3479)
!3498 = distinct !DISubprogram(name: "_cpp_aligned_alloc", scope: !3, file: !3, line: 2243, type: !2913, scopeLine: 2244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3499)
!3499 = !{!3500, !3501, !3502, !3503}
!3500 = !DILocalVariable(name: "pfile", arg: 1, scope: !3498, file: !3, line: 2243, type: !341)
!3501 = !DILocalVariable(name: "len", arg: 2, scope: !3498, file: !3, line: 2243, type: !237)
!3502 = !DILocalVariable(name: "buff", scope: !3498, file: !3, line: 2245, type: !260)
!3503 = !DILocalVariable(name: "result", scope: !3498, file: !3, line: 2246, type: !235)
!3504 = !DILocation(line: 0, scope: !3498)
!3505 = !DILocation(line: 2245, column: 28, scope: !3498)
!3506 = !DILocation(line: 2246, column: 33, scope: !3498)
!3507 = !DILocation(line: 2248, column: 29, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 2248, column: 7)
!3509 = !DILocation(line: 2248, column: 35, scope: !3508)
!3510 = !DILocation(line: 2248, column: 11, scope: !3508)
!3511 = !DILocation(line: 2248, column: 7, scope: !3498)
!3512 = !DILocation(line: 2250, column: 14, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 2249, column: 5)
!3514 = !DILocation(line: 2251, column: 27, scope: !3513)
!3515 = !DILocation(line: 2251, column: 18, scope: !3513)
!3516 = !DILocation(line: 2252, column: 21, scope: !3513)
!3517 = !DILocation(line: 2253, column: 22, scope: !3513)
!3518 = !DILocation(line: 2254, column: 5, scope: !3513)
!3519 = !DILocation(line: 2256, column: 22, scope: !3498)
!3520 = !DILocation(line: 2256, column: 9, scope: !3498)
!3521 = !DILocation(line: 2256, column: 13, scope: !3498)
!3522 = !DILocation(line: 2257, column: 3, scope: !3498)
!3523 = distinct !DISubprogram(name: "cpp_token_val_index", scope: !3, file: !3, line: 2263, type: !3524, scopeLine: 2264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3526)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!122, !147}
!3526 = !{!3527}
!3527 = !DILocalVariable(name: "tok", arg: 1, scope: !3523, file: !3, line: 2263, type: !147)
!3528 = !DILocation(line: 0, scope: !3523)
!3529 = !DILocation(line: 2265, column: 11, scope: !3523)
!3530 = !DILocation(line: 2265, column: 3, scope: !3523)
!3531 = !DILocation(line: 2270, column: 7, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 2266, column: 5)
!3533 = !DILocation(line: 2272, column: 21, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 2272, column: 11)
!3535 = !DILocation(line: 0, scope: !3534)
!3536 = !DILocation(line: 2277, column: 21, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 2277, column: 11)
!3538 = !DILocation(line: 2277, column: 11, scope: !3532)
!3539 = !DILocation(line: 2279, column: 26, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 2279, column: 16)
!3541 = !DILocation(line: 2279, column: 16, scope: !3537)
!3542 = !DILocation(line: 2281, column: 26, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 2281, column: 16)
!3544 = !DILocation(line: 2281, column: 16, scope: !3540)
!3545 = !DILocation(line: 2285, column: 7, scope: !3532)
!3546 = !DILocation(line: 0, scope: !3532)
!3547 = !DILocation(line: 2287, column: 1, scope: !3523)
!3548 = distinct !DISubprogram(name: "lex_raw_string", scope: !3, file: !3, line: 718, type: !3549, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3551)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{null, !341, !147, !138, !138}
!3551 = !{!3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3567, !3571, !3578, !3584, !3585, !3586, !3589, !3592, !3593, !3596, !3599, !3600}
!3552 = !DILocalVariable(name: "pfile", arg: 1, scope: !3548, file: !3, line: 718, type: !341)
!3553 = !DILocalVariable(name: "token", arg: 2, scope: !3548, file: !3, line: 718, type: !147)
!3554 = !DILocalVariable(name: "base", arg: 3, scope: !3548, file: !3, line: 718, type: !138)
!3555 = !DILocalVariable(name: "cur", arg: 4, scope: !3548, file: !3, line: 719, type: !138)
!3556 = !DILocalVariable(name: "saw_NUL", scope: !3548, file: !3, line: 721, type: !152)
!3557 = !DILocalVariable(name: "raw_prefix", scope: !3548, file: !3, line: 722, type: !138)
!3558 = !DILocalVariable(name: "raw_prefix_len", scope: !3548, file: !3, line: 723, type: !7)
!3559 = !DILocalVariable(name: "type", scope: !3548, file: !3, line: 724, type: !42)
!3560 = !DILocalVariable(name: "total_len", scope: !3548, file: !3, line: 725, type: !237)
!3561 = !DILocalVariable(name: "first_buff", scope: !3548, file: !3, line: 726, type: !260)
!3562 = !DILocalVariable(name: "last_buff", scope: !3548, file: !3, line: 726, type: !260)
!3563 = !DILocalVariable(name: "note", scope: !3548, file: !3, line: 727, type: !239)
!3564 = !DILocalVariable(name: "col", scope: !3565, file: !3, line: 768, type: !146)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 767, column: 5)
!3566 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 766, column: 7)
!3567 = !DILocalVariable(name: "c", scope: !3568, file: !3, line: 792, type: !1561)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 784, column: 5)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 783, column: 3)
!3570 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 783, column: 3)
!3571 = !DILocalVariable(name: "type", scope: !3572, file: !3, line: 832, type: !140)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 828, column: 3)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 827, column: 12)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 801, column: 6)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 799, column: 2)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 798, column: 7)
!3577 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 798, column: 7)
!3578 = !DILocalVariable(name: "line_table", scope: !3579, file: !3, line: 903, type: !1022)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 903, column: 6)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !3, line: 902, column: 8)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !3, line: 888, column: 2)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 887, column: 16)
!3583 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 879, column: 11)
!3584 = !DILocalVariable(name: "map", scope: !3579, file: !3, line: 903, type: !589)
!3585 = !DILocalVariable(name: "line", scope: !3579, file: !3, line: 903, type: !441)
!3586 = !DILocalVariable(name: "src_loc", scope: !3587, file: !3, line: 910, type: !152)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !3, line: 909, column: 6)
!3588 = distinct !DILexicalBlock(scope: !3581, file: !3, line: 908, column: 8)
!3589 = !DILocalVariable(name: "to_column", scope: !3590, file: !3, line: 926, type: !7)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 926, column: 2)
!3591 = distinct !DILexicalBlock(scope: !3582, file: !3, line: 925, column: 16)
!3592 = !DILocalVariable(name: "set", scope: !3590, file: !3, line: 926, type: !432)
!3593 = !DILocalVariable(name: "r", scope: !3594, file: !3, line: 926, type: !152)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 926, column: 2)
!3595 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 926, column: 2)
!3596 = !DILocalVariable(name: "dest", scope: !3597, file: !3, line: 940, type: !143)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 939, column: 5)
!3598 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 936, column: 7)
!3599 = !DILabel(scope: !3574, name: "after_backslash", file: !3, line: 808)
!3600 = !DILabel(scope: !3548, name: "break_outer_loop", file: !3, line: 929)
!3601 = !DILocation(line: 0, scope: !3548)
!3602 = !DILocation(line: 726, column: 3, scope: !3548)
!3603 = !DILocation(line: 726, column: 14, scope: !3548)
!3604 = !DILocation(line: 726, column: 34, scope: !3548)
!3605 = !DILocation(line: 727, column: 34, scope: !3548)
!3606 = !DILocation(line: 727, column: 42, scope: !3548)
!3607 = !DILocation(line: 727, column: 63, scope: !3548)
!3608 = !DILocation(line: 727, column: 27, scope: !3548)
!3609 = !DILocation(line: 729, column: 11, scope: !3548)
!3610 = !DILocation(line: 729, column: 17, scope: !3548)
!3611 = !DILocation(line: 730, column: 10, scope: !3548)
!3612 = !DILocation(line: 730, column: 4, scope: !3548)
!3613 = !DILocation(line: 731, column: 10, scope: !3548)
!3614 = !DILocation(line: 731, column: 4, scope: !3548)
!3615 = !DILocation(line: 731, column: 20, scope: !3548)
!3616 = !DILocation(line: 731, column: 28, scope: !3548)
!3617 = !DILocation(line: 734, column: 20, scope: !3548)
!3618 = !DILocation(line: 735, column: 3, scope: !3548)
!3619 = !DILocation(line: 735, column: 25, scope: !3548)
!3620 = !DILocation(line: 0, scope: !3566)
!3621 = !DILocation(line: 766, column: 7, scope: !3566)
!3622 = !DILocation(line: 737, column: 15, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 736, column: 5)
!3624 = !DILocation(line: 737, column: 7, scope: !3623)
!3625 = !DILocation(line: 760, column: 18, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 738, column: 2)
!3627 = !DILocation(line: 761, column: 4, scope: !3626)
!3628 = distinct !{!3628, !3618, !3629}
!3629 = !DILocation(line: 764, column: 5, scope: !3548)
!3630 = !DILocation(line: 766, column: 34, scope: !3566)
!3631 = !DILocation(line: 766, column: 7, scope: !3548)
!3632 = !DILocation(line: 768, column: 17, scope: !3565)
!3633 = !DILocation(line: 0, scope: !3565)
!3634 = !DILocation(line: 770, column: 26, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 770, column: 11)
!3636 = !DILocation(line: 0, scope: !3635)
!3637 = !DILocation(line: 770, column: 11, scope: !3565)
!3638 = !DILocation(line: 771, column: 2, scope: !3635)
!3639 = !DILocation(line: 776, column: 9, scope: !3635)
!3640 = !DILocation(line: 774, column: 2, scope: !3635)
!3641 = !DILocation(line: 777, column: 14, scope: !3565)
!3642 = !DILocation(line: 777, column: 22, scope: !3565)
!3643 = !DILocation(line: 777, column: 26, scope: !3565)
!3644 = !DILocation(line: 778, column: 58, scope: !3565)
!3645 = !DILocation(line: 778, column: 43, scope: !3565)
!3646 = !DILocation(line: 778, column: 7, scope: !3565)
!3647 = !DILocation(line: 782, column: 37, scope: !3548)
!3648 = !DILocation(line: 0, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 835, column: 9)
!3650 = !DILocation(line: 0, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 856, column: 14)
!3652 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 846, column: 9)
!3653 = !DILocation(line: 0, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 861, column: 7)
!3655 = !DILocation(line: 0, scope: !3590)
!3656 = !DILocation(line: 0, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3581, file: !3, line: 889, column: 8)
!3658 = !DILocation(line: 0, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 892, column: 6)
!3660 = !DILocation(line: 0, scope: !3587)
!3661 = !DILocation(line: 783, column: 3, scope: !3548)
!3662 = !DILocation(line: 729, column: 8, scope: !3548)
!3663 = !DILocation(line: 721, column: 19, scope: !3548)
!3664 = !DILocation(line: 782, column: 7, scope: !3548)
!3665 = !DILocation(line: 796, column: 7, scope: !3568)
!3666 = !DILocation(line: 796, column: 20, scope: !3568)
!3667 = !DILocation(line: 796, column: 24, scope: !3568)
!3668 = !DILocation(line: 798, column: 7, scope: !3577)
!3669 = !DILocation(line: 797, column: 2, scope: !3568)
!3670 = distinct !{!3670, !3665, !3671}
!3671 = !DILocation(line: 797, column: 4, scope: !3568)
!3672 = !DILocation(line: 798, column: 20, scope: !3576)
!3673 = !DILocation(line: 798, column: 24, scope: !3576)
!3674 = !DILocation(line: 800, column: 18, scope: !3575)
!3675 = !DILocation(line: 800, column: 4, scope: !3575)
!3676 = !DILocation(line: 805, column: 8, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 805, column: 8)
!3678 = !DILocation(line: 807, column: 8, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 807, column: 8)
!3680 = !DILocation(line: 0, scope: !3574)
!3681 = !DILocation(line: 808, column: 6, scope: !3574)
!3682 = !DILocation(line: 809, column: 18, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 809, column: 12)
!3684 = !DILocation(line: 809, column: 23, scope: !3683)
!3685 = !DILocation(line: 809, column: 12, scope: !3574)
!3686 = !DILocation(line: 816, column: 5, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 816, column: 5)
!3688 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 810, column: 3)
!3689 = !DILocation(line: 817, column: 3, scope: !3688)
!3690 = !DILocation(line: 819, column: 8, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 819, column: 8)
!3692 = !DILocation(line: 820, column: 8, scope: !3574)
!3693 = !DILocation(line: 827, column: 12, scope: !3573)
!3694 = !DILocation(line: 827, column: 12, scope: !3574)
!3695 = !DILocation(line: 0, scope: !3572)
!3696 = !DILocation(line: 832, column: 5, scope: !3572)
!3697 = !DILocation(line: 832, column: 18, scope: !3572)
!3698 = !DILocation(line: 832, column: 11, scope: !3572)
!3699 = !DILocation(line: 833, column: 16, scope: !3572)
!3700 = !DILocation(line: 835, column: 10, scope: !3649)
!3701 = !DILocation(line: 835, column: 9, scope: !3572)
!3702 = !DILocation(line: 840, column: 5, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 840, column: 5)
!3704 = !DILocation(line: 842, column: 5, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 842, column: 5)
!3706 = !DILocation(line: 846, column: 9, scope: !3652)
!3707 = !DILocation(line: 846, column: 14, scope: !3652)
!3708 = !DILocation(line: 846, column: 21, scope: !3652)
!3709 = !DILocation(line: 846, column: 32, scope: !3652)
!3710 = !DILocation(line: 846, column: 36, scope: !3652)
!3711 = !DILocation(line: 846, column: 9, scope: !3572)
!3712 = !DILocation(line: 848, column: 21, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 848, column: 13)
!3714 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 847, column: 7)
!3715 = !DILocation(line: 848, column: 26, scope: !3713)
!3716 = !DILocation(line: 849, column: 6, scope: !3713)
!3717 = !DILocation(line: 849, column: 22, scope: !3713)
!3718 = !DILocation(line: 848, column: 13, scope: !3714)
!3719 = !DILocation(line: 850, column: 4, scope: !3713)
!3720 = !DILocation(line: 851, column: 9, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 851, column: 9)
!3722 = !DILocation(line: 852, column: 9, scope: !3714)
!3723 = !DILocation(line: 853, column: 9, scope: !3714)
!3724 = !DILocation(line: 856, column: 19, scope: !3651)
!3725 = !DILocation(line: 857, column: 7, scope: !3651)
!3726 = !DILocation(line: 857, column: 37, scope: !3651)
!3727 = !DILocation(line: 857, column: 10, scope: !3651)
!3728 = !DILocation(line: 859, column: 28, scope: !3651)
!3729 = !DILocation(line: 860, column: 7, scope: !3651)
!3730 = !DILocation(line: 860, column: 10, scope: !3651)
!3731 = !DILocation(line: 860, column: 32, scope: !3651)
!3732 = !DILocation(line: 856, column: 14, scope: !3652)
!3733 = !DILocation(line: 862, column: 13, scope: !3654)
!3734 = !DILocation(line: 863, column: 9, scope: !3654)
!3735 = !DILocation(line: 868, column: 16, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 866, column: 7)
!3737 = !DILocation(line: 869, column: 9, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3736, file: !3, line: 869, column: 9)
!3739 = !DILocation(line: 871, column: 3, scope: !3573)
!3740 = !DILocation(line: 873, column: 3, scope: !3573)
!3741 = !DILocation(line: 798, column: 32, scope: !3576)
!3742 = !DILocation(line: 0, scope: !3576)
!3743 = !DILocation(line: 798, column: 7, scope: !3576)
!3744 = distinct !{!3744, !3668, !3745}
!3745 = !DILocation(line: 876, column: 2, scope: !3577)
!3746 = !DILocation(line: 877, column: 15, scope: !3568)
!3747 = !DILocation(line: 877, column: 11, scope: !3568)
!3748 = !DILocation(line: 0, scope: !3568)
!3749 = !DILocation(line: 880, column: 4, scope: !3583)
!3750 = !DILocation(line: 880, column: 7, scope: !3583)
!3751 = !DILocation(line: 881, column: 25, scope: !3583)
!3752 = !DILocation(line: 882, column: 4, scope: !3583)
!3753 = !DILocation(line: 882, column: 7, scope: !3583)
!3754 = !DILocation(line: 882, column: 27, scope: !3583)
!3755 = !DILocation(line: 879, column: 11, scope: !3568)
!3756 = !DILocation(line: 884, column: 8, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 883, column: 2)
!3758 = !DILocation(line: 885, column: 4, scope: !3757)
!3759 = !DILocation(line: 887, column: 16, scope: !3583)
!3760 = !DILocation(line: 889, column: 21, scope: !3657)
!3761 = !DILocation(line: 889, column: 8, scope: !3657)
!3762 = !DILocation(line: 890, column: 8, scope: !3657)
!3763 = !DILocation(line: 890, column: 24, scope: !3657)
!3764 = !DILocation(line: 890, column: 11, scope: !3657)
!3765 = !DILocation(line: 891, column: 8, scope: !3657)
!3766 = !DILocation(line: 891, column: 24, scope: !3657)
!3767 = !DILocation(line: 891, column: 11, scope: !3657)
!3768 = !DILocation(line: 889, column: 8, scope: !3581)
!3769 = !DILocation(line: 895, column: 57, scope: !3659)
!3770 = !DILocation(line: 895, column: 8, scope: !3659)
!3771 = !DILocation(line: 897, column: 8, scope: !3659)
!3772 = !DILocation(line: 900, column: 4, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3581, file: !3, line: 900, column: 4)
!3774 = !DILocation(line: 902, column: 15, scope: !3580)
!3775 = !DILocation(line: 902, column: 23, scope: !3580)
!3776 = !DILocation(line: 902, column: 44, scope: !3580)
!3777 = !DILocation(line: 902, column: 27, scope: !3580)
!3778 = !DILocation(line: 902, column: 8, scope: !3581)
!3779 = !DILocation(line: 903, column: 6, scope: !3579)
!3780 = !DILocation(line: 0, scope: !3579)
!3781 = !DILocation(line: 904, column: 11, scope: !3581)
!3782 = !DILocation(line: 904, column: 19, scope: !3581)
!3783 = !DILocation(line: 904, column: 29, scope: !3581)
!3784 = !DILocation(line: 906, column: 11, scope: !3581)
!3785 = !DILocation(line: 906, column: 19, scope: !3581)
!3786 = !DILocation(line: 906, column: 23, scope: !3581)
!3787 = !DILocation(line: 907, column: 4, scope: !3581)
!3788 = !DILocation(line: 908, column: 9, scope: !3588)
!3789 = !DILocation(line: 908, column: 8, scope: !3581)
!3790 = !DILocation(line: 910, column: 41, scope: !3587)
!3791 = !DILocation(line: 911, column: 20, scope: !3587)
!3792 = !DILocation(line: 913, column: 32, scope: !3587)
!3793 = !DILocation(line: 913, column: 44, scope: !3587)
!3794 = !DILocation(line: 913, column: 23, scope: !3587)
!3795 = !DILocation(line: 914, column: 21, scope: !3587)
!3796 = !DILocation(line: 915, column: 12, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3587, file: !3, line: 915, column: 12)
!3798 = !DILocation(line: 915, column: 23, scope: !3797)
!3799 = !DILocation(line: 915, column: 12, scope: !3587)
!3800 = !DILocation(line: 916, column: 3, scope: !3797)
!3801 = !DILocation(line: 917, column: 8, scope: !3587)
!3802 = !DILocation(line: 922, column: 24, scope: !3581)
!3803 = !DILocation(line: 922, column: 32, scope: !3581)
!3804 = !DILocation(line: 923, column: 27, scope: !3581)
!3805 = !DILocation(line: 923, column: 48, scope: !3581)
!3806 = !DILocation(line: 923, column: 12, scope: !3581)
!3807 = !DILocation(line: 924, column: 2, scope: !3581)
!3808 = !DILocation(line: 925, column: 30, scope: !3591)
!3809 = !DILocation(line: 925, column: 16, scope: !3582)
!3810 = !DILocation(line: 926, column: 2, scope: !3590)
!3811 = !DILocation(line: 926, column: 2, scope: !3595)
!3812 = !DILocation(line: 926, column: 2, scope: !3594)
!3813 = !DILocation(line: 0, scope: !3594)
!3814 = !DILocation(line: 926, column: 2, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 926, column: 2)
!3816 = distinct !{!3816, !3817, !3818}
!3817 = !DILocation(line: 783, column: 3, scope: !3570)
!3818 = !DILocation(line: 928, column: 5, scope: !3570)
!3819 = !DILocation(line: 929, column: 2, scope: !3548)
!3820 = !DILocation(line: 931, column: 7, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 931, column: 7)
!3822 = !DILocation(line: 931, column: 15, scope: !3821)
!3823 = !DILocation(line: 931, column: 32, scope: !3821)
!3824 = !DILocation(line: 931, column: 19, scope: !3821)
!3825 = !DILocation(line: 931, column: 7, scope: !3548)
!3826 = !DILocation(line: 932, column: 5, scope: !3821)
!3827 = !DILocation(line: 935, column: 10, scope: !3548)
!3828 = !DILocation(line: 935, column: 18, scope: !3548)
!3829 = !DILocation(line: 935, column: 22, scope: !3548)
!3830 = !DILocation(line: 936, column: 7, scope: !3598)
!3831 = !DILocation(line: 936, column: 18, scope: !3598)
!3832 = !DILocation(line: 0, scope: !3598)
!3833 = !DILocation(line: 936, column: 7, scope: !3548)
!3834 = !DILocation(line: 937, column: 41, scope: !3598)
!3835 = !DILocation(line: 937, column: 5, scope: !3598)
!3836 = !DILocation(line: 940, column: 60, scope: !3597)
!3837 = !DILocation(line: 940, column: 75, scope: !3597)
!3838 = !DILocation(line: 940, column: 21, scope: !3597)
!3839 = !DILocation(line: 0, scope: !3597)
!3840 = !DILocation(line: 942, column: 19, scope: !3597)
!3841 = !DILocation(line: 943, column: 28, scope: !3597)
!3842 = !DILocation(line: 943, column: 22, scope: !3597)
!3843 = !DILocation(line: 943, column: 26, scope: !3597)
!3844 = !DILocation(line: 944, column: 22, scope: !3597)
!3845 = !DILocation(line: 944, column: 27, scope: !3597)
!3846 = !DILocation(line: 945, column: 19, scope: !3597)
!3847 = !DILocation(line: 945, column: 17, scope: !3597)
!3848 = !DILocation(line: 946, column: 7, scope: !3597)
!3849 = !DILocation(line: 946, column: 14, scope: !3597)
!3850 = !DILocation(line: 946, column: 24, scope: !3597)
!3851 = !DILocation(line: 948, column: 29, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 947, column: 2)
!3853 = !DILocation(line: 949, column: 5, scope: !3852)
!3854 = !DILocation(line: 949, column: 41, scope: !3852)
!3855 = !DILocation(line: 949, column: 28, scope: !3852)
!3856 = !DILocation(line: 948, column: 4, scope: !3852)
!3857 = !DILocation(line: 950, column: 12, scope: !3852)
!3858 = !DILocation(line: 950, column: 48, scope: !3852)
!3859 = !DILocation(line: 950, column: 35, scope: !3852)
!3860 = !DILocation(line: 950, column: 9, scope: !3852)
!3861 = !DILocation(line: 951, column: 16, scope: !3852)
!3862 = !DILocation(line: 951, column: 27, scope: !3852)
!3863 = !DILocation(line: 951, column: 14, scope: !3852)
!3864 = distinct !{!3864, !3848, !3865}
!3865 = !DILocation(line: 952, column: 2, scope: !3597)
!3866 = !DILocation(line: 953, column: 33, scope: !3597)
!3867 = !DILocation(line: 953, column: 7, scope: !3597)
!3868 = !DILocation(line: 954, column: 7, scope: !3597)
!3869 = !DILocation(line: 955, column: 7, scope: !3597)
!3870 = !DILocation(line: 955, column: 24, scope: !3597)
!3871 = !DILocation(line: 957, column: 1, scope: !3548)
!3872 = distinct !DISubprogram(name: "bufring_append", scope: !3, file: !3, line: 684, type: !3873, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !341, !138, !237, !3375, !3375}
!3875 = !{!3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883}
!3876 = !DILocalVariable(name: "pfile", arg: 1, scope: !3872, file: !3, line: 684, type: !341)
!3877 = !DILocalVariable(name: "base", arg: 2, scope: !3872, file: !3, line: 684, type: !138)
!3878 = !DILocalVariable(name: "len", arg: 3, scope: !3872, file: !3, line: 684, type: !237)
!3879 = !DILocalVariable(name: "first_buff_p", arg: 4, scope: !3872, file: !3, line: 685, type: !3375)
!3880 = !DILocalVariable(name: "last_buff_p", arg: 5, scope: !3872, file: !3, line: 685, type: !3375)
!3881 = !DILocalVariable(name: "first_buff", scope: !3872, file: !3, line: 687, type: !260)
!3882 = !DILocalVariable(name: "last_buff", scope: !3872, file: !3, line: 688, type: !260)
!3883 = !DILocalVariable(name: "room", scope: !3884, file: !3, line: 694, type: !237)
!3884 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 693, column: 5)
!3885 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 692, column: 12)
!3886 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 690, column: 7)
!3887 = !DILocation(line: 0, scope: !3872)
!3888 = !DILocation(line: 687, column: 27, scope: !3872)
!3889 = !DILocation(line: 688, column: 26, scope: !3872)
!3890 = !DILocation(line: 690, column: 18, scope: !3886)
!3891 = !DILocation(line: 690, column: 7, scope: !3872)
!3892 = !DILocation(line: 691, column: 30, scope: !3886)
!3893 = !DILocation(line: 691, column: 5, scope: !3886)
!3894 = !DILocation(line: 692, column: 18, scope: !3885)
!3895 = !DILocation(line: 692, column: 16, scope: !3885)
!3896 = !DILocation(line: 692, column: 12, scope: !3886)
!3897 = !DILocation(line: 0, scope: !3884)
!3898 = !DILocation(line: 695, column: 15, scope: !3884)
!3899 = !DILocation(line: 695, column: 7, scope: !3884)
!3900 = !DILocation(line: 696, column: 30, scope: !3884)
!3901 = !DILocation(line: 697, column: 12, scope: !3884)
!3902 = !DILocation(line: 698, column: 11, scope: !3884)
!3903 = !DILocation(line: 699, column: 19, scope: !3884)
!3904 = !DILocation(line: 700, column: 5, scope: !3884)
!3905 = !DILocation(line: 0, scope: !3886)
!3906 = !DILocation(line: 702, column: 11, scope: !3872)
!3907 = !DILocation(line: 702, column: 3, scope: !3872)
!3908 = !DILocation(line: 703, column: 26, scope: !3872)
!3909 = !DILocation(line: 705, column: 17, scope: !3872)
!3910 = !DILocation(line: 706, column: 16, scope: !3872)
!3911 = !DILocation(line: 707, column: 1, scope: !3872)
!3912 = distinct !DISubprogram(name: "store_comment", scope: !3, file: !3, line: 1052, type: !3913, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3915)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{null, !341, !147}
!3915 = !{!3916, !3917, !3918}
!3916 = !DILocalVariable(name: "pfile", arg: 1, scope: !3912, file: !3, line: 1052, type: !341)
!3917 = !DILocalVariable(name: "token", arg: 2, scope: !3912, file: !3, line: 1052, type: !147)
!3918 = !DILocalVariable(name: "len", scope: !3912, file: !3, line: 1054, type: !146)
!3919 = !DILocation(line: 0, scope: !3912)
!3920 = !DILocation(line: 1056, column: 23, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 1056, column: 7)
!3922 = !DILocation(line: 1056, column: 33, scope: !3921)
!3923 = !DILocation(line: 1056, column: 7, scope: !3912)
!3924 = !DILocation(line: 1058, column: 33, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3921, file: !3, line: 1057, column: 5)
!3926 = !DILocation(line: 1059, column: 49, scope: !3925)
!3927 = !DILocation(line: 1059, column: 23, scope: !3925)
!3928 = !DILocation(line: 1059, column: 31, scope: !3925)
!3929 = !DILocation(line: 1063, column: 48, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 1063, column: 7)
!3931 = !DILocation(line: 1061, column: 5, scope: !3925)
!3932 = !DILocation(line: 1063, column: 23, scope: !3930)
!3933 = !DILocation(line: 1063, column: 29, scope: !3930)
!3934 = !DILocation(line: 1063, column: 7, scope: !3912)
!3935 = !DILocation(line: 1065, column: 33, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3930, file: !3, line: 1064, column: 5)
!3937 = !DILocation(line: 1067, column: 19, scope: !3936)
!3938 = !DILocation(line: 1068, column: 3, scope: !3936)
!3939 = !DILocation(line: 1068, column: 29, scope: !3936)
!3940 = !DILocation(line: 1066, column: 49, scope: !3936)
!3941 = !DILocation(line: 1066, column: 31, scope: !3936)
!3942 = !DILocation(line: 1069, column: 5, scope: !3936)
!3943 = !DILocation(line: 1071, column: 24, scope: !3912)
!3944 = !DILocation(line: 1075, column: 44, scope: !3912)
!3945 = !DILocation(line: 1075, column: 39, scope: !3912)
!3946 = !DILocation(line: 1075, column: 14, scope: !3912)
!3947 = !DILocation(line: 1074, column: 19, scope: !3912)
!3948 = !DILocation(line: 1074, column: 43, scope: !3912)
!3949 = !DILocation(line: 1074, column: 3, scope: !3912)
!3950 = !DILocation(line: 1074, column: 50, scope: !3912)
!3951 = !DILocation(line: 1074, column: 58, scope: !3912)
!3952 = !DILocation(line: 1076, column: 27, scope: !3912)
!3953 = !DILocation(line: 1076, column: 51, scope: !3912)
!3954 = !DILocation(line: 1076, column: 11, scope: !3912)
!3955 = !DILocation(line: 1076, column: 58, scope: !3912)
!3956 = !DILocation(line: 1077, column: 19, scope: !3912)
!3957 = !DILocation(line: 1077, column: 25, scope: !3912)
!3958 = !DILocation(line: 1076, column: 3, scope: !3912)
!3959 = !DILocation(line: 1078, column: 19, scope: !3912)
!3960 = !DILocation(line: 1078, column: 43, scope: !3912)
!3961 = !DILocation(line: 1078, column: 3, scope: !3912)
!3962 = !DILocation(line: 1078, column: 50, scope: !3912)
!3963 = !DILocation(line: 1078, column: 63, scope: !3912)
!3964 = !DILocation(line: 1081, column: 64, scope: !3912)
!3965 = !DILocation(line: 1081, column: 19, scope: !3912)
!3966 = !DILocation(line: 1081, column: 43, scope: !3912)
!3967 = !DILocation(line: 1081, column: 3, scope: !3912)
!3968 = !DILocation(line: 1081, column: 50, scope: !3912)
!3969 = !DILocation(line: 1081, column: 55, scope: !3912)
!3970 = !DILocation(line: 1084, column: 24, scope: !3912)
!3971 = !DILocation(line: 1085, column: 1, scope: !3912)
