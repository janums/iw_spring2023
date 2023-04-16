; ModuleID = 'cpp_directives.bc'
source_filename = "cpp_directives.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.directive = type { void (%struct.cpp_reader*)*, i8*, i16, i8, i8 }
%struct.cpp_reader = type { %struct.cpp_buffer*, %struct.cpp_buffer*, %struct.lexer_state, %struct.line_maps*, i32, %struct._cpp_buff*, %struct._cpp_buff*, %struct._cpp_buff*, %struct.cpp_context, %struct.cpp_context*, %struct.directive*, %struct.cpp_token, i32, i8, %struct.cpp_dir*, %struct.cpp_dir*, %struct.cpp_dir, %struct._cpp_file*, %struct._cpp_file*, %struct.htab*, %struct.htab*, %struct.file_hash_entry_pool*, %struct.htab*, %struct.obstack, i8, i8, %struct.cpp_hashnode*, %struct.cpp_hashnode*, i8, %struct.cpp_token*, %struct.tokenrun, %struct.tokenrun*, i32, i32, i8*, i32, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, i8*, i8*, %struct.cpp_token, %struct.cpp_token, %struct.deps*, %struct.obstack, %struct.obstack, %struct.pragma_entry*, %struct.cpp_callbacks, %struct.ht*, %struct.op*, %struct.op*, %struct.cpp_options, %struct.spec_nodes, i8, %struct.anon.3, i8*, i8*, i8*, %struct.cpp_savedstate*, i32, %struct.cpp_comment_table, %struct.def_pragma_macro* }
%struct.cpp_buffer = type { i8*, i8*, i8*, i8*, i8*, %struct._cpp_line_note*, i32, i32, i32, %struct.cpp_buffer*, %struct._cpp_file*, i8*, %struct.if_stack*, i8, i8, i8, %struct.cpp_dir, %struct.cset_converter }
%struct._cpp_line_note = type { i8*, i32 }
%struct.if_stack = type { %struct.if_stack*, i32, %struct.cpp_hashnode*, i8, i8, i32 }
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.line_maps = type { %struct.line_map*, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8* (i8*, i64)* }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct._cpp_buff = type { %struct._cpp_buff*, i8*, i8*, i8* }
%struct.cpp_context = type { %struct.cpp_context*, %struct.cpp_context*, %union.anon, %struct._cpp_buff*, %struct.cpp_hashnode*, i8 }
%union.anon = type { %struct.anon }
%struct.anon = type { %union.utoken, %union.utoken }
%union.utoken = type { %struct.cpp_token* }
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
%struct.pragma_entry = type { %struct.pragma_entry*, %struct.cpp_hashnode*, i8, i8, i8, i8, %union.anon.1 }
%union.anon.1 = type { void (%struct.cpp_reader*)* }
%struct.cpp_callbacks = type { void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, i8*)*, void (%struct.cpp_reader*, i32, i8*, i8*, i32, %struct.cpp_token**)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32)*, i32 (%struct.cpp_reader*, i8*, i32)*, void (%struct.cpp_reader*, i8*, i32, i8*)*, i8* (%struct.cpp_reader*, i8*, %struct.cpp_dir**)*, %struct.cpp_hashnode* (%struct.cpp_reader*, %struct.cpp_token*)*, i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i8* (i64)*, i32, i32, %struct.cpp_reader*, i32, i32, i8 }
%struct.op = type opaque
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i8*, i8*, i32, i8, i8, %struct.anon.2, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon.2 = type { i32, i8, i8, i8, i8 }
%struct.spec_nodes = type { %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode* }
%struct.anon.3 = type { i8*, i8*, i8*, i32 }
%struct.cpp_savedstate = type opaque
%struct.cpp_comment_table = type { %struct.cpp_comment*, i32, i32 }
%struct.cpp_comment = type { i8*, i32 }
%struct.def_pragma_macro = type { %struct.def_pragma_macro*, i8*, %struct.cpp_macro* }
%struct.answer = type { %struct.answer*, i32, [1 x %struct.cpp_token] }

@.str = private unnamed_addr constant [61 x i8] c"embedding a directive within macro arguments is not portable\00", align 1
@dtable = internal constant [19 x %struct.directive] [%struct.directive { void (%struct.cpp_reader*)* @do_define, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i16 6, i8 0, i8 8 }, %struct.directive { void (%struct.cpp_reader*)* @do_include, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i16 7, i8 0, i8 20 }, %struct.directive { void (%struct.cpp_reader*)* @do_endif, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i16 5, i8 0, i8 1 }, %struct.directive { void (%struct.cpp_reader*)* @do_ifdef, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i16 5, i8 0, i8 3 }, %struct.directive { void (%struct.cpp_reader*)* @do_if, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i16 2, i8 0, i8 19 }, %struct.directive { void (%struct.cpp_reader*)* @do_else, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i16 4, i8 0, i8 1 }, %struct.directive { void (%struct.cpp_reader*)* @do_ifndef, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i16 6, i8 0, i8 3 }, %struct.directive { void (%struct.cpp_reader*)* @do_undef, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i16 5, i8 0, i8 8 }, %struct.directive { void (%struct.cpp_reader*)* @do_line, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i16 4, i8 0, i8 16 }, %struct.directive { void (%struct.cpp_reader*)* @do_elif, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i16 4, i8 1, i8 17 }, %struct.directive { void (%struct.cpp_reader*)* @do_error, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i16 5, i8 1, i8 0 }, %struct.directive { void (%struct.cpp_reader*)* @do_pragma, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i16 6, i8 1, i8 8 }, %struct.directive { void (%struct.cpp_reader*)* @do_warning, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i16 7, i8 2, i8 0 }, %struct.directive { void (%struct.cpp_reader*)* @do_include_next, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i16 12, i8 2, i8 20 }, %struct.directive { void (%struct.cpp_reader*)* @do_ident, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i16 5, i8 2, i8 8 }, %struct.directive { void (%struct.cpp_reader*)* @do_import, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i16 6, i8 2, i8 20 }, %struct.directive { void (%struct.cpp_reader*)* @do_assert, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i16 6, i8 2, i8 32 }, %struct.directive { void (%struct.cpp_reader*)* @do_unassert, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i16 8, i8 2, i8 32 }, %struct.directive { void (%struct.cpp_reader*)* @do_ident, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i16 4, i8 2, i8 8 }], align 16, !dbg !0
@linemarker_dir = internal constant %struct.directive { void (%struct.cpp_reader*)* @do_linemarker, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i32 0, i32 0), i16 1, i8 0, i8 8 }, align 8, !dbg !664
@.str.1 = private unnamed_addr constant [43 x i8] c"style of line directive is a GCC extension\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid preprocessing directive #%s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"registering pragma with NULL handler\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"push_macro\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"pop_macro\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"GCC\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"poison\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"system_header\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"dependency\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"_Pragma takes a parenthesized string literal\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"__STDC_\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"unterminated #%s\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"ifdef\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"elif\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"pragma\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"include_next\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"unassert\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"sccs\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"\22defined\22 cannot be used as a macro name\00", align 1
@.str.34 = private unnamed_addr constant [64 x i8] c"\22%s\22 cannot be used as a macro name as it is an operator in C++\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"no macro name given in #%s directive\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"macro names must be identifiers\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"empty filename in #%s\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"#include nested too deeply\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"pragma dependency\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"#%s expects \22FILENAME\22 or <FILENAME>\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"missing terminating > character\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"extra tokens at end of #%s directive\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"#endif without #if\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"#else without #if\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"#else after #else\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"the conditional began here\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"undefining \22%s\22\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"unexpected end of file after #line\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"\22%s\22 after #line is not a positive integer\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"line number out of range\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"\22%s\22 is not a valid filename\00", align 1
@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@.str.52 = private unnamed_addr constant [18 x i8] c"#elif without #if\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"#elif after #else\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.55 = private unnamed_addr constant [37 x i8] c"#include_next in primary source file\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"invalid #%s directive\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"\22%s\22 re-asserted\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.59 = private unnamed_addr constant [39 x i8] c"\22%s\22 after # is not a positive integer\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"invalid flag \22%s\22 in line directive\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"#%s is a GCC extension\00", align 1
@.str.62 = private unnamed_addr constant [34 x i8] c"#%s is a deprecated GCC extension\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"suggest not using #elif in traditional C\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"traditional C ignores #%s with the # indented\00", align 1
@.str.65 = private unnamed_addr constant [57 x i8] c"suggest hiding #%s from traditional C with an indented #\00", align 1
@.str.66 = private unnamed_addr constant [69 x i8] c"registering pragmas in namespace \22%s\22 with mismatched name expansion\00", align 1
@.str.67 = private unnamed_addr constant [61 x i8] c"registering pragma \22%s\22 with name expansion and no namespace\00", align 1
@.str.68 = private unnamed_addr constant [57 x i8] c"registering \22%s\22 as both a pragma and a pragma namespace\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"#pragma %s %s is already registered\00", align 1
@.str.70 = private unnamed_addr constant [33 x i8] c"#pragma %s is already registered\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"#pragma once in main file\00", align 1
@.str.72 = private unnamed_addr constant [37 x i8] c"invalid #pragma push_macro directive\00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"invalid #pragma pop_macro directive\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"invalid #pragma GCC poison directive\00", align 1
@.str.75 = private unnamed_addr constant [30 x i8] c"poisoning existing macro \22%s\22\00", align 1
@.str.76 = private unnamed_addr constant [51 x i8] c"#pragma system_header ignored outside include file\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"cannot find source file %s\00", align 1
@.str.78 = private unnamed_addr constant [30 x i8] c"current file is older than %s\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"assertion without predicate\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c"predicate must be an identifier\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"missing '(' after predicate\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"missing ')' to complete answer\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"predicate's answer is empty\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !675 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !680, metadata !DIExpression()), !dbg !681
  %__c.off = add i32 %__c, 128, !dbg !682
  %0 = icmp ult i32 %__c.off, 384, !dbg !682
  br i1 %0, label %cond.true, label %cond.end, !dbg !682

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #8, !dbg !683
  %1 = load i32*, i32** %call, align 8, !dbg !684
  %idxprom = sext i32 %__c to i64, !dbg !685
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !685
  %2 = load i32, i32* %arrayidx, align 4, !dbg !685
  br label %cond.end, !dbg !686

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !686
  ret i32 %cond, !dbg !687
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !688 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !690, metadata !DIExpression()), !dbg !691
  %__c.off = add i32 %__c, 128, !dbg !692
  %0 = icmp ult i32 %__c.off, 384, !dbg !692
  br i1 %0, label %cond.true, label %cond.end, !dbg !692

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #8, !dbg !693
  %1 = load i32*, i32** %call, align 8, !dbg !694
  %idxprom = sext i32 %__c to i64, !dbg !695
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !695
  %2 = load i32, i32* %arrayidx, align 4, !dbg !695
  br label %cond.end, !dbg !696

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !696
  ret i32 %cond, !dbg !697
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @_cpp_handle_directive(%struct.cpp_reader* %pfile, i32 %indented) local_unnamed_addr #3 !dbg !698 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !702, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i32 %indented, metadata !703, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata %struct.directive* null, metadata !704, metadata !DIExpression()), !dbg !710
  %parsing_args = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 9, !dbg !711
  %0 = load i8, i8* %parsing_args, align 1, !dbg !711
  call void @llvm.dbg.value(metadata i8 %0, metadata !707, metadata !DIExpression()), !dbg !710
  %discarding_output = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 10, !dbg !712
  %1 = load i8, i8* %discarding_output, align 2, !dbg !712
  call void @llvm.dbg.value(metadata i8 %1, metadata !708, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i32 1, metadata !709, metadata !DIExpression()), !dbg !710
  %tobool = icmp eq i8 %1, 0, !dbg !713
  br i1 %tobool, label %if.end, label %if.then, !dbg !715

if.then:                                          ; preds = %entry
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !716
  store i8 0, i8* %prevent_expansion, align 8, !dbg !717
  br label %if.end, !dbg !718

if.end:                                           ; preds = %entry, %if.then
  %tobool3 = icmp eq i8 %0, 0, !dbg !719
  br i1 %tobool3, label %if.end12, label %if.then4, !dbg !721

if.then4:                                         ; preds = %if.end
  %pedantic = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !722
  %2 = load i8, i8* %pedantic, align 1, !dbg !722
  %tobool5 = icmp eq i8 %2, 0, !dbg !722
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !725

if.then6:                                         ; preds = %if.then4
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0)) #8, !dbg !726
  br label %if.end7, !dbg !726

if.end7:                                          ; preds = %if.then4, %if.then6
  store i8 0, i8* %parsing_args, align 1, !dbg !727
  %prevent_expansion11 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !728
  store i8 0, i8* %prevent_expansion11, align 8, !dbg !729
  br label %if.end12, !dbg !730

if.end12:                                         ; preds = %if.end, %if.end7
  tail call fastcc void @start_directive(%struct.cpp_reader* %pfile) #9, !dbg !731
  %call13 = tail call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %pfile) #8, !dbg !732
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call13, metadata !706, metadata !DIExpression()), !dbg !710
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call13, i64 0, i32 1, !dbg !733
  %bf.load = load i8, i8* %type, align 4, !dbg !733
  %cmp = icmp eq i8 %bf.load, 53, !dbg !735
  br i1 %cmp, label %if.then14, label %if.else, !dbg !736

if.then14:                                        ; preds = %if.end12
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call13, i64 0, i32 3, !dbg !737
  %node15 = bitcast %union.cpp_token_u* %val to %struct.cpp_hashnode**, !dbg !740
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node15, align 8, !dbg !740
  %is_directive = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %3, i64 0, i32 1, !dbg !741
  %bf.load16 = load i8, i8* %is_directive, align 8, !dbg !741
  %bf.clear = and i8 %bf.load16, 1, !dbg !741
  %tobool18 = icmp eq i8 %bf.clear, 0, !dbg !742
  br i1 %tobool18, label %if.end46, label %if.then19, !dbg !743

if.then19:                                        ; preds = %if.then14
  %bf.lshr = lshr i8 %bf.load16, 1, !dbg !744
  %idxprom = zext i8 %bf.lshr to i64, !dbg !745
  %arrayidx = getelementptr inbounds [19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 %idxprom, !dbg !745
  call void @llvm.dbg.value(metadata %struct.directive* %arrayidx, metadata !704, metadata !DIExpression()), !dbg !710
  br label %if.end46, !dbg !746

if.else:                                          ; preds = %if.end12
  %cmp29 = icmp eq i8 %bf.load, 55, !dbg !747
  br i1 %cmp29, label %land.lhs.true, label %if.end46, !dbg !749

land.lhs.true:                                    ; preds = %if.else
  %lang = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 1, !dbg !750
  %4 = load i32, i32* %lang, align 4, !dbg !750
  %cmp31 = icmp eq i32 %4, 9, !dbg !751
  br i1 %cmp31, label %if.end46, label %if.then32, !dbg !752

if.then32:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct.directive* @linemarker_dir, metadata !704, metadata !DIExpression()), !dbg !710
  %pedantic34 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !753
  %5 = load i8, i8* %pedantic34, align 1, !dbg !753
  %tobool35 = icmp eq i8 %5, 0, !dbg !753
  br i1 %tobool35, label %if.end46, label %land.lhs.true36, !dbg !756

land.lhs.true36:                                  ; preds = %if.then32
  %preprocessed = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 32, !dbg !757
  %6 = load i8, i8* %preprocessed, align 2, !dbg !757
  %tobool38 = icmp eq i8 %6, 0, !dbg !757
  br i1 %tobool38, label %land.lhs.true39, label %if.end46, !dbg !758

land.lhs.true39:                                  ; preds = %land.lhs.true36
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !759
  %7 = load i8, i8* %skipping, align 2, !dbg !759
  %tobool41 = icmp eq i8 %7, 0, !dbg !760
  br i1 %tobool41, label %if.then42, label %if.end46, !dbg !761

if.then42:                                        ; preds = %land.lhs.true39
  %call43 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !762
  br label %if.end46, !dbg !762

if.end46:                                         ; preds = %if.then14, %land.lhs.true39, %land.lhs.true36, %if.then32, %land.lhs.true, %if.else, %if.then42, %if.then19
  %dir.2 = phi %struct.directive* [ %arrayidx, %if.then19 ], [ null, %if.then14 ], [ null, %land.lhs.true ], [ null, %if.else ], [ @linemarker_dir, %if.then42 ], [ @linemarker_dir, %land.lhs.true39 ], [ @linemarker_dir, %land.lhs.true36 ], [ @linemarker_dir, %if.then32 ], !dbg !763
  call void @llvm.dbg.value(metadata %struct.directive* %dir.2, metadata !704, metadata !DIExpression()), !dbg !710
  %tobool47 = icmp eq %struct.directive* %dir.2, null, !dbg !764
  br i1 %tobool47, label %if.else95, label %if.then48, !dbg !766

if.then48:                                        ; preds = %if.end46
  %flags = getelementptr inbounds %struct.directive, %struct.directive* %dir.2, i64 0, i32 4, !dbg !767
  %8 = load i8, i8* %flags, align 1, !dbg !767
  %9 = and i8 %8, 2, !dbg !770
  %tobool50 = icmp eq i8 %9, 0, !dbg !770
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !771

if.then51:                                        ; preds = %if.then48
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 28, !dbg !772
  store i8 0, i8* %mi_valid, align 8, !dbg !773
  br label %if.end52, !dbg !774

if.end52:                                         ; preds = %if.then48, %if.then51
  %preprocessed54 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 32, !dbg !775
  %10 = load i8, i8* %preprocessed54, align 2, !dbg !775
  %tobool56 = icmp eq i8 %10, 0, !dbg !775
  br i1 %tobool56, label %if.else67, label %land.lhs.true57, !dbg !777

land.lhs.true57:                                  ; preds = %if.end52
  %directives_only = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 52, !dbg !778
  %11 = load i8, i8* %directives_only, align 4, !dbg !778
  %tobool59 = icmp eq i8 %11, 0, !dbg !778
  br i1 %tobool59, label %land.lhs.true60, label %if.else67, !dbg !779

land.lhs.true60:                                  ; preds = %land.lhs.true57
  %tobool61 = icmp eq i32 %indented, 0, !dbg !780
  br i1 %tobool61, label %lor.lhs.false, label %if.end118, !dbg !781

lor.lhs.false:                                    ; preds = %land.lhs.true60
  %12 = load i8, i8* %flags, align 1, !dbg !782
  %13 = and i8 %12, 8, !dbg !783
  %tobool65 = icmp eq i8 %13, 0, !dbg !783
  br i1 %tobool65, label %if.end118, label %if.else67, !dbg !784

if.else67:                                        ; preds = %lor.lhs.false, %land.lhs.true57, %if.end52
  %14 = load i8, i8* %flags, align 1, !dbg !785
  %15 = and i8 %14, 4, !dbg !787
  %angled_headers = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 3, !dbg !788
  store i8 %15, i8* %angled_headers, align 1, !dbg !789
  %16 = load i8, i8* %flags, align 1, !dbg !790
  %17 = and i8 %16, 4, !dbg !791
  %directive_wants_padding = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 1, !dbg !792
  store i8 %17, i8* %directive_wants_padding, align 1, !dbg !793
  br i1 %tobool56, label %if.then81, label %if.end82, !dbg !794

if.then81:                                        ; preds = %if.else67
  tail call fastcc void @directive_diagnostics(%struct.cpp_reader* %pfile, %struct.directive* nonnull %dir.2, i32 %indented) #9, !dbg !795
  br label %if.end82, !dbg !795

if.end82:                                         ; preds = %if.else67, %if.then81
  %skipping84 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !797
  %18 = load i8, i8* %skipping84, align 2, !dbg !797
  %tobool86 = icmp eq i8 %18, 0, !dbg !799
  br i1 %tobool86, label %if.end118, label %land.lhs.true87, !dbg !800

land.lhs.true87:                                  ; preds = %if.end82
  %19 = load i8, i8* %flags, align 1, !dbg !801
  %20 = and i8 %19, 1, !dbg !802
  %tobool91 = icmp eq i8 %20, 0, !dbg !802
  %spec.select = select i1 %tobool91, %struct.directive* null, %struct.directive* %dir.2, !dbg !803
  br label %if.end118, !dbg !803

if.else95:                                        ; preds = %if.end46
  %bf.load97 = load i8, i8* %type, align 4, !dbg !804
  %cmp99 = icmp eq i8 %bf.load97, 22, !dbg !806
  br i1 %cmp99, label %if.end118, label %if.else102, !dbg !807

if.else102:                                       ; preds = %if.else95
  %lang104 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 1, !dbg !808
  %21 = load i32, i32* %lang104, align 4, !dbg !808
  %cmp105 = icmp eq i32 %21, 9, !dbg !811
  br i1 %cmp105, label %if.end118, label %if.else108, !dbg !812

if.else108:                                       ; preds = %if.else102
  %skipping110 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !813
  %22 = load i8, i8* %skipping110, align 2, !dbg !813
  %tobool111 = icmp eq i8 %22, 0, !dbg !815
  br i1 %tobool111, label %if.then112, label %if.end118, !dbg !816

if.then112:                                       ; preds = %if.else108
  %call113 = tail call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %call13) #8, !dbg !817
  %call114 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %call113) #8, !dbg !818
  br label %if.end118, !dbg !818

if.end118:                                        ; preds = %lor.lhs.false, %land.lhs.true60, %if.end82, %if.else108, %land.lhs.true87, %if.else95, %if.then112, %if.else102
  %dir.5 = phi %struct.directive* [ null, %lor.lhs.false ], [ null, %land.lhs.true60 ], [ %dir.2, %if.end82 ], [ %spec.select, %land.lhs.true87 ], [ null, %if.else102 ], [ null, %if.then112 ], [ null, %if.else108 ], [ null, %if.else95 ], !dbg !819
  %skip.3 = phi i32 [ 0, %lor.lhs.false ], [ 0, %land.lhs.true60 ], [ 1, %if.end82 ], [ 1, %land.lhs.true87 ], [ 0, %if.else102 ], [ 1, %if.then112 ], [ 1, %if.else108 ], [ 1, %if.else95 ], !dbg !820
  call void @llvm.dbg.value(metadata i32 %skip.3, metadata !709, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata %struct.directive* %dir.5, metadata !704, metadata !DIExpression()), !dbg !710
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !821
  store %struct.directive* %dir.5, %struct.directive** %directive, align 8, !dbg !822
  %traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !823
  %23 = load i8, i8* %traditional, align 2, !dbg !823
  %tobool120 = icmp eq i8 %23, 0, !dbg !823
  br i1 %tobool120, label %if.end122, label %if.then121, !dbg !825

if.then121:                                       ; preds = %if.end118
  tail call fastcc void @prepare_directive_trad(%struct.cpp_reader* %pfile) #9, !dbg !826
  br label %if.end122, !dbg !826

if.end122:                                        ; preds = %if.end118, %if.then121
  %tobool123 = icmp eq %struct.directive* %dir.5, null, !dbg !827
  br i1 %tobool123, label %if.else126, label %if.then124, !dbg !829

if.then124:                                       ; preds = %if.end122
  %24 = load %struct.directive*, %struct.directive** %directive, align 8, !dbg !830
  %handler = getelementptr inbounds %struct.directive, %struct.directive* %24, i64 0, i32 0, !dbg !831
  %25 = load void (%struct.cpp_reader*)*, void (%struct.cpp_reader*)** %handler, align 8, !dbg !831
  tail call void %25(%struct.cpp_reader* %pfile) #8, !dbg !832
  br label %if.end131, !dbg !832

if.else126:                                       ; preds = %if.end122
  %cmp127 = icmp eq i32 %skip.3, 0, !dbg !833
  br i1 %cmp127, label %if.then129, label %if.end131, !dbg !835

if.then129:                                       ; preds = %if.else126
  tail call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 1) #8, !dbg !836
  br label %if.end131, !dbg !836

if.end131:                                        ; preds = %if.else126, %if.then129, %if.then124
  tail call fastcc void @end_directive(%struct.cpp_reader* %pfile, i32 %skip.3) #9, !dbg !837
  br i1 %tobool3, label %if.end142, label %land.lhs.true134, !dbg !838

land.lhs.true134:                                 ; preds = %if.end131
  %in_deferred_pragma = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 12, !dbg !840
  %26 = load i8, i8* %in_deferred_pragma, align 8, !dbg !840
  %tobool136 = icmp eq i8 %26, 0, !dbg !841
  br i1 %tobool136, label %if.then137, label %if.end142, !dbg !842

if.then137:                                       ; preds = %land.lhs.true134
  store i8 2, i8* %parsing_args, align 1, !dbg !843
  %prevent_expansion141 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !845
  store i8 1, i8* %prevent_expansion141, align 8, !dbg !846
  br label %if.end142, !dbg !847

if.end142:                                        ; preds = %land.lhs.true134, %if.end131, %if.then137
  br i1 %tobool, label %if.end147, label %if.then144, !dbg !848

if.then144:                                       ; preds = %if.end142
  %prevent_expansion146 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !849
  store i8 1, i8* %prevent_expansion146, align 8, !dbg !851
  br label %if.end147, !dbg !852

if.end147:                                        ; preds = %if.end142, %if.then144
  ret i32 %skip.3, !dbg !853
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare dso_local zeroext i8 @cpp_error(%struct.cpp_reader*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @start_directive(%struct.cpp_reader* %pfile) unnamed_addr #3 !dbg !854 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !856, metadata !DIExpression()), !dbg !857
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !858
  store i8 1, i8* %in_directive, align 8, !dbg !859
  %save_comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 5, !dbg !860
  store i8 0, i8* %save_comments, align 1, !dbg !861
  %type = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 11, i32 1, !dbg !862
  store i8 72, i8* %type, align 4, !dbg !863
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !864
  %0 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !864
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i64 0, i32 8, !dbg !865
  %1 = load i32, i32* %highest_line, align 4, !dbg !865
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !866
  store i32 %1, i32* %directive_line, align 8, !dbg !867
  ret void, !dbg !868
}

declare dso_local %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @directive_diagnostics(%struct.cpp_reader* %pfile, %struct.directive* %dir, i32 %indented) unnamed_addr #3 !dbg !869 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !873, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata %struct.directive* %dir, metadata !874, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.value(metadata i32 %indented, metadata !875, metadata !DIExpression()), !dbg !876
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !877
  %0 = load i8, i8* %skipping, align 2, !dbg !877
  %tobool = icmp eq i8 %0, 0, !dbg !879
  br i1 %tobool, label %if.then, label %if.end29, !dbg !880

if.then:                                          ; preds = %entry
  %origin = getelementptr inbounds %struct.directive, %struct.directive* %dir, i64 0, i32 3, !dbg !881
  %1 = load i8, i8* %origin, align 2, !dbg !881
  %cmp = icmp eq i8 %1, 2, !dbg !884
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !885

land.lhs.true:                                    ; preds = %if.then
  %cmp2 = icmp eq %struct.directive* %dir, getelementptr inbounds ([19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 15), !dbg !886
  br i1 %cmp2, label %land.lhs.true4, label %land.lhs.true7, !dbg !887

land.lhs.true4:                                   ; preds = %land.lhs.true
  %objc = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 4, !dbg !888
  %2 = load i8, i8* %objc, align 2, !dbg !888
  %tobool6 = icmp eq i8 %2, 0, !dbg !888
  br i1 %tobool6, label %land.lhs.true7, label %if.else, !dbg !889

land.lhs.true7:                                   ; preds = %land.lhs.true4, %land.lhs.true
  %pedantic = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !890
  %3 = load i8, i8* %pedantic, align 1, !dbg !890
  %tobool10 = icmp eq i8 %3, 0, !dbg !890
  br i1 %tobool10, label %if.else, label %if.then11, !dbg !891

if.then11:                                        ; preds = %land.lhs.true7
  %name = getelementptr inbounds %struct.directive, %struct.directive* %dir, i64 0, i32 1, !dbg !892
  %4 = load i8*, i8** %name, align 8, !dbg !892
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i64 0, i64 0), i8* %4) #8, !dbg !893
  br label %if.end29, !dbg !893

if.else:                                          ; preds = %land.lhs.true4, %land.lhs.true7, %if.then
  %flags = getelementptr inbounds %struct.directive, %struct.directive* %dir, i64 0, i32 4, !dbg !894
  %5 = load i8, i8* %flags, align 1, !dbg !894
  %6 = and i8 %5, 32, !dbg !896
  %cmp13 = icmp eq i8 %6, 0, !dbg !897
  br i1 %cmp13, label %lor.lhs.false, label %land.lhs.true21, !dbg !898

lor.lhs.false:                                    ; preds = %if.else
  %cmp15 = icmp eq %struct.directive* %dir, getelementptr inbounds ([19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 15), !dbg !899
  br i1 %cmp15, label %land.lhs.true17, label %if.end29, !dbg !900

land.lhs.true17:                                  ; preds = %lor.lhs.false
  %objc19 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 4, !dbg !901
  %7 = load i8, i8* %objc19, align 2, !dbg !901
  %tobool20 = icmp eq i8 %7, 0, !dbg !901
  br i1 %tobool20, label %land.lhs.true21, label %if.end29, !dbg !902

land.lhs.true21:                                  ; preds = %land.lhs.true17, %if.else
  %warn_deprecated = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 12, !dbg !903
  %8 = load i8, i8* %warn_deprecated, align 2, !dbg !903
  %tobool24 = icmp eq i8 %8, 0, !dbg !903
  br i1 %tobool24, label %if.end29, label %if.then25, !dbg !904

if.then25:                                        ; preds = %land.lhs.true21
  %name26 = getelementptr inbounds %struct.directive, %struct.directive* %dir, i64 0, i32 1, !dbg !905
  %9 = load i8*, i8** %name26, align 8, !dbg !905
  %call27 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.62, i64 0, i64 0), i8* %9) #8, !dbg !906
  br label %if.end29, !dbg !906

if.end29:                                         ; preds = %land.lhs.true21, %land.lhs.true17, %entry, %if.then11, %if.then25, %lor.lhs.false
  %warn_traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 17, !dbg !907
  %10 = load i8, i8* %warn_traditional, align 1, !dbg !907
  %tobool31 = icmp eq i8 %10, 0, !dbg !907
  br i1 %tobool31, label %if.end60, label %if.then32, !dbg !909

if.then32:                                        ; preds = %if.end29
  %cmp33 = icmp eq %struct.directive* %dir, getelementptr inbounds ([19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 9), !dbg !910
  br i1 %cmp33, label %if.then35, label %if.else37, !dbg !913

if.then35:                                        ; preds = %if.then32
  %call36 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.63, i64 0, i64 0)) #8, !dbg !914
  br label %if.end60, !dbg !914

if.else37:                                        ; preds = %if.then32
  %cond = icmp eq i32 %indented, 0, !dbg !915
  br i1 %cond, label %if.else37.land.lhs.true49_crit_edge, label %land.lhs.true39, !dbg !915

if.else37.land.lhs.true49_crit_edge:              ; preds = %if.else37
  %origin50.phi.trans.insert = getelementptr inbounds %struct.directive, %struct.directive* %dir, i64 0, i32 3, !dbg !917
  %.pre = load i8, i8* %origin50.phi.trans.insert, align 2, !dbg !919
  br label %land.lhs.true49, !dbg !915

land.lhs.true39:                                  ; preds = %if.else37
  %origin40 = getelementptr inbounds %struct.directive, %struct.directive* %dir, i64 0, i32 3, !dbg !920
  %11 = load i8, i8* %origin40, align 2, !dbg !920
  %cmp42 = icmp eq i8 %11, 0, !dbg !921
  br i1 %cmp42, label %if.then44, label %if.else47, !dbg !922

if.then44:                                        ; preds = %land.lhs.true39
  %name45 = getelementptr inbounds %struct.directive, %struct.directive* %dir, i64 0, i32 1, !dbg !923
  %12 = load i8*, i8** %name45, align 8, !dbg !923
  %call46 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0), i8* %12) #8, !dbg !924
  br label %if.end60, !dbg !924

if.else47:                                        ; preds = %land.lhs.true39
  br i1 false, label %if.else47.land.lhs.true49_crit_edge, label %if.end60, !dbg !925

if.else47.land.lhs.true49_crit_edge:              ; preds = %if.else47
  br label %land.lhs.true49, !dbg !925

land.lhs.true49:                                  ; preds = %if.else37.land.lhs.true49_crit_edge, %if.else47.land.lhs.true49_crit_edge
  %13 = phi i8 [ %.pre, %if.else37.land.lhs.true49_crit_edge ], [ %11, %if.else47.land.lhs.true49_crit_edge ], !dbg !919
  %cmp52 = icmp eq i8 %13, 0, !dbg !926
  br i1 %cmp52, label %if.end60, label %if.then54, !dbg !927

if.then54:                                        ; preds = %land.lhs.true49
  %name55 = getelementptr inbounds %struct.directive, %struct.directive* %dir, i64 0, i32 1, !dbg !928
  %14 = load i8*, i8** %name55, align 8, !dbg !928
  %call56 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.65, i64 0, i64 0), i8* %14) #8, !dbg !929
  br label %if.end60, !dbg !929

if.end60:                                         ; preds = %land.lhs.true49, %if.else47, %if.end29, %if.then35, %if.then54, %if.then44
  ret void, !dbg !930
}

declare dso_local i8* @cpp_token_as_text(%struct.cpp_reader*, %struct.cpp_token*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @prepare_directive_trad(%struct.cpp_reader* %pfile) unnamed_addr #3 !dbg !931 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !933, metadata !DIExpression()), !dbg !938
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !939
  %0 = load %struct.directive*, %struct.directive** %directive, align 8, !dbg !939
  %cmp = icmp eq %struct.directive* %0, getelementptr inbounds ([19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 0), !dbg !940
  br i1 %cmp, label %if.end33, label %if.then, !dbg !941

if.then:                                          ; preds = %entry
  %tobool = icmp eq %struct.directive* %0, null, !dbg !942
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !943

land.rhs:                                         ; preds = %if.then
  %flags = getelementptr inbounds %struct.directive, %struct.directive* %0, i64 0, i32 4, !dbg !944
  %1 = load i8, i8* %flags, align 1, !dbg !944
  %2 = lshr i8 %1, 4
  %.lobit = and i8 %2, 1
  %3 = xor i8 %.lobit, 1
  br label %land.end

land.end:                                         ; preds = %if.then, %land.rhs
  %4 = phi i8 [ 0, %if.then ], [ %3, %land.rhs ]
  call void @llvm.dbg.value(metadata i8 %4, metadata !934, metadata !DIExpression()), !dbg !945
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !946
  %5 = load i8, i8* %skipping, align 2, !dbg !946
  call void @llvm.dbg.value(metadata i8 %5, metadata !937, metadata !DIExpression()), !dbg !945
  %cmp6 = icmp eq %struct.directive* %0, getelementptr inbounds ([19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 4), !dbg !947
  br i1 %cmp6, label %lor.end, label %lor.rhs, !dbg !948

lor.rhs:                                          ; preds = %land.end
  %cmp9 = icmp eq %struct.directive* %0, getelementptr inbounds ([19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 9), !dbg !949
  %phitmp1 = zext i1 %cmp9 to i8, !dbg !948
  br label %lor.end, !dbg !948

lor.end:                                          ; preds = %lor.rhs, %land.end
  %6 = phi i8 [ 1, %land.end ], [ %phitmp1, %lor.rhs ]
  %in_expression = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 4, !dbg !950
  store i8 %6, i8* %in_expression, align 4, !dbg !951
  %tobool15 = icmp eq i8 %6, 0, !dbg !952
  br i1 %tobool15, label %if.end, label %if.then16, !dbg !954

if.then16:                                        ; preds = %lor.end
  store i8 0, i8* %skipping, align 2, !dbg !955
  br label %if.end, !dbg !956

if.end:                                           ; preds = %lor.end, %if.then16
  %tobool19 = icmp eq i8 %4, 0, !dbg !957
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !959

if.then20:                                        ; preds = %if.end
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !960
  %7 = load i8, i8* %prevent_expansion, align 8, !dbg !961
  %inc = add i8 %7, 1, !dbg !961
  store i8 %inc, i8* %prevent_expansion, align 8, !dbg !961
  br label %if.end22, !dbg !962

if.end22:                                         ; preds = %if.end, %if.then20
  %call = tail call zeroext i8 @_cpp_scan_out_logical_line(%struct.cpp_reader* %pfile, %struct.cpp_macro* null) #8, !dbg !963
  br i1 %tobool19, label %if.end27, label %if.then24, !dbg !964

if.then24:                                        ; preds = %if.end22
  %prevent_expansion26 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !965
  %8 = load i8, i8* %prevent_expansion26, align 8, !dbg !967
  %dec = add i8 %8, -1, !dbg !967
  store i8 %dec, i8* %prevent_expansion26, align 8, !dbg !967
  br label %if.end27, !dbg !968

if.end27:                                         ; preds = %if.end22, %if.then24
  store i8 %5, i8* %skipping, align 2, !dbg !969
  %base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 0, !dbg !970
  %9 = load i8*, i8** %base, align 8, !dbg !970
  %cur = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 2, !dbg !971
  %10 = bitcast i8** %cur to i64*, !dbg !971
  %11 = load i64, i64* %10, align 8, !dbg !971
  %.cast = ptrtoint i8* %9 to i64, !dbg !972
  %sub.ptr.sub = sub i64 %11, %.cast, !dbg !973
  tail call void @_cpp_overlay_buffer(%struct.cpp_reader* %pfile, i8* %9, i64 %sub.ptr.sub) #8, !dbg !974
  br label %if.end33, !dbg !975

if.end33:                                         ; preds = %entry, %if.end27
  %prevent_expansion35 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !976
  %12 = load i8, i8* %prevent_expansion35, align 8, !dbg !977
  %inc36 = add i8 %12, 1, !dbg !977
  store i8 %inc36, i8* %prevent_expansion35, align 8, !dbg !977
  ret void, !dbg !978
}

declare dso_local void @_cpp_backup_tokens(%struct.cpp_reader*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @end_directive(%struct.cpp_reader* %pfile, i32 %skip_line) unnamed_addr #3 !dbg !979 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !983, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i32 %skip_line, metadata !984, metadata !DIExpression()), !dbg !985
  %in_deferred_pragma = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 12, !dbg !986
  %0 = load i8, i8* %in_deferred_pragma, align 8, !dbg !986
  %tobool = icmp eq i8 %0, 0, !dbg !988
  br i1 %tobool, label %if.else, label %if.end14, !dbg !989

if.else:                                          ; preds = %entry
  %traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !990
  %1 = load i8, i8* %traditional, align 2, !dbg !990
  %tobool1 = icmp eq i8 %1, 0, !dbg !990
  br i1 %tobool1, label %if.else5, label %if.then2, !dbg !992

if.then2:                                         ; preds = %if.else
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !993
  %2 = load i8, i8* %prevent_expansion, align 8, !dbg !995
  %dec = add i8 %2, -1, !dbg !995
  store i8 %dec, i8* %prevent_expansion, align 8, !dbg !995
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !996
  %3 = load %struct.directive*, %struct.directive** %directive, align 8, !dbg !996
  %cmp = icmp eq %struct.directive* %3, getelementptr inbounds ([19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 0), !dbg !998
  br i1 %cmp, label %if.end14, label %if.then4, !dbg !999

if.then4:                                         ; preds = %if.then2
  tail call void @_cpp_remove_overlay(%struct.cpp_reader* %pfile) #8, !dbg !1000
  br label %if.end14, !dbg !1000

if.else5:                                         ; preds = %if.else
  %tobool6 = icmp eq i32 %skip_line, 0, !dbg !1001
  br i1 %tobool6, label %if.end14, label %if.then7, !dbg !1003

if.then7:                                         ; preds = %if.else5
  tail call fastcc void @skip_rest_of_line(%struct.cpp_reader* %pfile) #9, !dbg !1004
  %keep_tokens = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 33, !dbg !1006
  %4 = load i32, i32* %keep_tokens, align 4, !dbg !1006
  %tobool8 = icmp eq i32 %4, 0, !dbg !1008
  br i1 %tobool8, label %if.then9, label %if.end14, !dbg !1009

if.then9:                                         ; preds = %if.then7
  %base_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 30, !dbg !1010
  %cur_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 31, !dbg !1012
  store %struct.tokenrun* %base_run, %struct.tokenrun** %cur_run, align 8, !dbg !1013
  %base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 30, i32 2, !dbg !1014
  %5 = bitcast %struct.cpp_token** %base to i64*, !dbg !1014
  %6 = load i64, i64* %5, align 8, !dbg !1014
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !1015
  %7 = bitcast %struct.cpp_token** %cur_token to i64*, !dbg !1016
  store i64 %6, i64* %7, align 8, !dbg !1016
  br label %if.end14, !dbg !1017

if.end14:                                         ; preds = %if.then2, %if.then7, %if.else5, %entry, %if.then4, %if.then9
  %discard_comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 5, !dbg !1018
  %8 = load i8, i8* %discard_comments, align 1, !dbg !1018
  %tobool16 = icmp eq i8 %8, 0, !dbg !1019
  %conv = zext i1 %tobool16 to i8, !dbg !1019
  %save_comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 5, !dbg !1020
  store i8 %conv, i8* %save_comments, align 1, !dbg !1021
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !1022
  store i8 0, i8* %in_directive, align 8, !dbg !1023
  %in_expression = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 4, !dbg !1024
  store i8 0, i8* %in_expression, align 4, !dbg !1025
  %angled_headers = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 3, !dbg !1026
  store i8 0, i8* %angled_headers, align 1, !dbg !1027
  %directive21 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !1028
  store %struct.directive* null, %struct.directive** %directive21, align 8, !dbg !1029
  ret void, !dbg !1030
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @cpp_undef_all(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !1031 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1033, metadata !DIExpression()), !dbg !1034
  tail call void @cpp_forall_identifiers(%struct.cpp_reader* %pfile, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* nonnull @undefine_macros, i8* null) #8, !dbg !1035
  ret void, !dbg !1036
}

declare dso_local void @cpp_forall_identifiers(%struct.cpp_reader*, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @undefine_macros(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %h, i8* %data_p) #3 !dbg !1037 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1041, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %h, metadata !1042, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i8* %data_p, metadata !1043, metadata !DIExpression()), !dbg !1044
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %h, i64 0, i32 3, !dbg !1045
  %bf.load = load i16, i16* %type, align 2, !dbg !1046
  %0 = and i16 %bf.load, -10688, !dbg !1047
  store i16 %0, i16* %type, align 2, !dbg !1047
  ret i32 1, !dbg !1048
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_do_file_change(%struct.cpp_reader* %pfile, i32 %reason, i8* %to_file, i32 %file_line, i32 %sysp) local_unnamed_addr #3 !dbg !1049 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1053, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i32 %reason, metadata !1054, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i8* %to_file, metadata !1055, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i32 %file_line, metadata !1056, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i32 %sysp, metadata !1057, metadata !DIExpression()), !dbg !1059
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !1060
  %0 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !1060
  %call = tail call %struct.line_map* @linemap_add(%struct.line_maps* %0, i32 %reason, i32 %sysp, i8* %to_file, i32 %file_line) #8, !dbg !1061
  call void @llvm.dbg.value(metadata %struct.line_map* %call, metadata !1058, metadata !DIExpression()), !dbg !1059
  %cmp = icmp eq %struct.line_map* %call, null, !dbg !1062
  br i1 %cmp, label %if.end, label %if.then, !dbg !1064

if.then:                                          ; preds = %entry
  %1 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !1065
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %call, i64 0, i32 1, !dbg !1066
  %2 = load i32, i32* %to_line, align 8, !dbg !1066
  %call2 = tail call i32 @linemap_line_start(%struct.line_maps* %1, i32 %2, i32 127) #8, !dbg !1067
  br label %if.end, !dbg !1067

if.end:                                           ; preds = %entry, %if.then
  %file_change = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 1, !dbg !1068
  %3 = load void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, %struct.line_map*)** %file_change, align 8, !dbg !1068
  %tobool = icmp eq void (%struct.cpp_reader*, %struct.line_map*)* %3, null, !dbg !1070
  br i1 %tobool, label %if.end6, label %if.then3, !dbg !1071

if.then3:                                         ; preds = %if.end
  tail call void %3(%struct.cpp_reader* %pfile, %struct.line_map* %call) #8, !dbg !1072
  br label %if.end6, !dbg !1072

if.end6:                                          ; preds = %if.end, %if.then3
  ret void, !dbg !1073
}

declare dso_local %struct.line_map* @linemap_add(%struct.line_maps*, i32, i32, i8*, i32) local_unnamed_addr #2

declare dso_local i32 @linemap_line_start(%struct.line_maps*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cpp_register_pragma(%struct.cpp_reader* %pfile, i8* %space, i8* %name, void (%struct.cpp_reader*)* %handler, i8 zeroext %allow_expansion) local_unnamed_addr #3 !dbg !1074 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1078, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8* %space, metadata !1079, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8* %name, metadata !1080, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata void (%struct.cpp_reader*)* %handler, metadata !1081, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %allow_expansion, metadata !1082, metadata !DIExpression()), !dbg !1084
  %tobool = icmp eq void (%struct.cpp_reader*)* %handler, null, !dbg !1085
  br i1 %tobool, label %if.then, label %if.end, !dbg !1087

if.then:                                          ; preds = %entry
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1088
  br label %cleanup.cont, !dbg !1090

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc %struct.pragma_entry* @register_pragma_1(%struct.cpp_reader* %pfile, i8* %space, i8* %name, i8 zeroext 0) #9, !dbg !1091
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %call2, metadata !1083, metadata !DIExpression()), !dbg !1084
  %tobool3 = icmp eq %struct.pragma_entry* %call2, null, !dbg !1092
  br i1 %tobool3, label %cleanup.cont, label %if.then4, !dbg !1094

if.then4:                                         ; preds = %if.end
  %allow_expansion5 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call2, i64 0, i32 5, !dbg !1095
  store i8 %allow_expansion, i8* %allow_expansion5, align 1, !dbg !1097
  %handler6 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call2, i64 0, i32 6, i32 0, !dbg !1098
  store void (%struct.cpp_reader*)* %handler, void (%struct.cpp_reader*)** %handler6, align 8, !dbg !1099
  br label %cleanup.cont, !dbg !1100

cleanup.cont:                                     ; preds = %if.end, %if.then, %if.then4
  ret void, !dbg !1101
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.pragma_entry* @register_pragma_1(%struct.cpp_reader* %pfile, i8* %space, i8* %name, i8 zeroext %allow_name_expansion) unnamed_addr #3 !dbg !1102 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1106, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %space, metadata !1107, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %name, metadata !1108, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %allow_name_expansion, metadata !1109, metadata !DIExpression()), !dbg !1116
  %pragmas = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 48, !dbg !1117
  call void @llvm.dbg.value(metadata %struct.pragma_entry** %pragmas, metadata !1110, metadata !DIExpression()), !dbg !1116
  %tobool = icmp eq i8* %space, null, !dbg !1118
  br i1 %tobool, label %if.else20, label %if.then, !dbg !1120

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* nonnull %space) #10, !dbg !1121
  %conv = trunc i64 %call to i32, !dbg !1121
  %call2 = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %pfile, i8* nonnull %space, i32 %conv) #8, !dbg !1123
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call2, metadata !1113, metadata !DIExpression()), !dbg !1116
  %0 = load %struct.pragma_entry*, %struct.pragma_entry** %pragmas, align 8, !dbg !1124
  %call3 = tail call fastcc %struct.pragma_entry* @lookup_pragma_entry(%struct.pragma_entry* %0, %struct.cpp_hashnode* %call2) #9, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %call3, metadata !1112, metadata !DIExpression()), !dbg !1116
  %tobool4 = icmp eq %struct.pragma_entry* %call3, null, !dbg !1126
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !1128

if.then5:                                         ; preds = %if.then
  %call6 = tail call fastcc %struct.pragma_entry* @new_pragma_entry(%struct.cpp_reader* %pfile, %struct.pragma_entry** nonnull %pragmas) #9, !dbg !1129
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %call6, metadata !1112, metadata !DIExpression()), !dbg !1116
  %pragma = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call6, i64 0, i32 1, !dbg !1131
  store %struct.cpp_hashnode* %call2, %struct.cpp_hashnode** %pragma, align 8, !dbg !1132
  %is_nspace = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call6, i64 0, i32 2, !dbg !1133
  store i8 1, i8* %is_nspace, align 8, !dbg !1134
  %allow_expansion = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call6, i64 0, i32 5, !dbg !1135
  store i8 %allow_name_expansion, i8* %allow_expansion, align 1, !dbg !1136
  br label %if.end18, !dbg !1137

if.else:                                          ; preds = %if.then
  %is_nspace7 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call3, i64 0, i32 2, !dbg !1138
  %1 = load i8, i8* %is_nspace7, align 8, !dbg !1138
  %tobool8 = icmp eq i8 %1, 0, !dbg !1140
  br i1 %tobool8, label %clash, label %if.else10, !dbg !1141

if.else10:                                        ; preds = %if.else
  %allow_expansion11 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call3, i64 0, i32 5, !dbg !1142
  %2 = load i8, i8* %allow_expansion11, align 1, !dbg !1142
  %cmp = icmp eq i8 %2, %allow_name_expansion, !dbg !1144
  br i1 %cmp, label %if.end18, label %if.then15, !dbg !1145

if.then15:                                        ; preds = %if.else10
  %call16 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.66, i64 0, i64 0), i8* nonnull %space) #8, !dbg !1146
  br label %cleanup, !dbg !1148

if.end18:                                         ; preds = %if.else10, %if.then5
  %entry1.0 = phi %struct.pragma_entry* [ %call6, %if.then5 ], [ %call3, %if.else10 ], !dbg !1149
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %entry1.0, metadata !1112, metadata !DIExpression()), !dbg !1116
  %u = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %entry1.0, i64 0, i32 6, !dbg !1150
  %space19 = bitcast %union.anon.1* %u to %struct.pragma_entry**, !dbg !1151
  call void @llvm.dbg.value(metadata %struct.pragma_entry** %space19, metadata !1110, metadata !DIExpression()), !dbg !1116
  br label %if.end25, !dbg !1152

if.else20:                                        ; preds = %entry
  %tobool21 = icmp eq i8 %allow_name_expansion, 0, !dbg !1153
  br i1 %tobool21, label %if.end25, label %if.then22, !dbg !1155

if.then22:                                        ; preds = %if.else20
  %call23 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.67, i64 0, i64 0), i8* %name) #8, !dbg !1156
  br label %cleanup, !dbg !1158

if.end25:                                         ; preds = %if.else20, %if.end18
  %chain.0 = phi %struct.pragma_entry** [ %space19, %if.end18 ], [ %pragmas, %if.else20 ], !dbg !1116
  call void @llvm.dbg.value(metadata %struct.pragma_entry** %chain.0, metadata !1110, metadata !DIExpression()), !dbg !1116
  %call26 = tail call i64 @strlen(i8* %name) #10, !dbg !1159
  %conv27 = trunc i64 %call26 to i32, !dbg !1159
  %call28 = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %pfile, i8* %name, i32 %conv27) #8, !dbg !1160
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call28, metadata !1113, metadata !DIExpression()), !dbg !1116
  %3 = load %struct.pragma_entry*, %struct.pragma_entry** %chain.0, align 8, !dbg !1161
  %call29 = tail call fastcc %struct.pragma_entry* @lookup_pragma_entry(%struct.pragma_entry* %3, %struct.cpp_hashnode* %call28) #9, !dbg !1162
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %call29, metadata !1112, metadata !DIExpression()), !dbg !1116
  %cmp30 = icmp eq %struct.pragma_entry* %call29, null, !dbg !1163
  br i1 %cmp30, label %if.then32, label %if.end35, !dbg !1165

if.then32:                                        ; preds = %if.end25
  %call33 = tail call fastcc %struct.pragma_entry* @new_pragma_entry(%struct.cpp_reader* %pfile, %struct.pragma_entry** %chain.0) #9, !dbg !1166
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %call33, metadata !1112, metadata !DIExpression()), !dbg !1116
  %pragma34 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call33, i64 0, i32 1, !dbg !1168
  store %struct.cpp_hashnode* %call28, %struct.cpp_hashnode** %pragma34, align 8, !dbg !1169
  br label %cleanup, !dbg !1170

if.end35:                                         ; preds = %if.end25
  %is_nspace36 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call29, i64 0, i32 2, !dbg !1171
  %4 = load i8, i8* %is_nspace36, align 8, !dbg !1171
  %tobool37 = icmp eq i8 %4, 0, !dbg !1172
  br i1 %tobool37, label %if.else40, label %clash, !dbg !1173

clash:                                            ; preds = %if.else, %if.end35
  %node.0 = phi %struct.cpp_hashnode* [ %call2, %if.else ], [ %call28, %if.end35 ], !dbg !1116
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node.0, metadata !1113, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.label(metadata !1114), !dbg !1174
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node.0, i64 0, i32 0, i32 0, !dbg !1175
  %5 = load i8*, i8** %str, align 8, !dbg !1175
  %call39 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.68, i64 0, i64 0), i8* %5) #8, !dbg !1176
  br label %cleanup, !dbg !1176

if.else40:                                        ; preds = %if.end35
  br i1 %tobool, label %if.else44, label %if.then42, !dbg !1177

if.then42:                                        ; preds = %if.else40
  %call43 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.69, i64 0, i64 0), i8* nonnull %space, i8* %name) #8, !dbg !1178
  br label %cleanup, !dbg !1178

if.else44:                                        ; preds = %if.else40
  %call45 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.70, i64 0, i64 0), i8* %name) #8, !dbg !1180
  br label %cleanup

cleanup:                                          ; preds = %clash, %if.else44, %if.then42, %if.then32, %if.then22, %if.then15
  %retval.0 = phi %struct.pragma_entry* [ null, %if.then15 ], [ %call33, %if.then32 ], [ null, %if.then22 ], [ null, %if.then42 ], [ null, %if.else44 ], [ null, %clash ], !dbg !1116
  ret %struct.pragma_entry* %retval.0, !dbg !1181
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_register_deferred_pragma(%struct.cpp_reader* %pfile, i8* %space, i8* %name, i32 %ident, i8 zeroext %allow_expansion, i8 zeroext %allow_name_expansion) local_unnamed_addr #3 !dbg !1182 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1186, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8* %space, metadata !1187, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8* %name, metadata !1188, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 %ident, metadata !1189, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %allow_expansion, metadata !1190, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %allow_name_expansion, metadata !1191, metadata !DIExpression()), !dbg !1193
  %call = tail call fastcc %struct.pragma_entry* @register_pragma_1(%struct.cpp_reader* %pfile, i8* %space, i8* %name, i8 zeroext %allow_name_expansion) #9, !dbg !1194
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %call, metadata !1192, metadata !DIExpression()), !dbg !1193
  %tobool = icmp eq %struct.pragma_entry* %call, null, !dbg !1195
  br i1 %tobool, label %if.end, label %if.then, !dbg !1197

if.then:                                          ; preds = %entry
  %is_deferred = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call, i64 0, i32 4, !dbg !1198
  store i8 1, i8* %is_deferred, align 2, !dbg !1200
  %allow_expansion2 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call, i64 0, i32 5, !dbg !1201
  store i8 %allow_expansion, i8* %allow_expansion2, align 1, !dbg !1202
  %u = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call, i64 0, i32 6, !dbg !1203
  %ident3 = bitcast %union.anon.1* %u to i32*, !dbg !1204
  store i32 %ident, i32* %ident3, align 8, !dbg !1205
  br label %if.end, !dbg !1206

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1207
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_init_internal_pragmas(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !1208 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1210, metadata !DIExpression()), !dbg !1211
  tail call fastcc void @register_pragma_internal(%struct.cpp_reader* %pfile, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @do_pragma_once) #9, !dbg !1212
  tail call fastcc void @register_pragma_internal(%struct.cpp_reader* %pfile, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @do_pragma_push_macro) #9, !dbg !1213
  tail call fastcc void @register_pragma_internal(%struct.cpp_reader* %pfile, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @do_pragma_pop_macro) #9, !dbg !1214
  tail call fastcc void @register_pragma_internal(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @do_pragma_poison) #9, !dbg !1215
  tail call fastcc void @register_pragma_internal(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @do_pragma_system_header) #9, !dbg !1216
  tail call fastcc void @register_pragma_internal(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), void (%struct.cpp_reader*)* nonnull @do_pragma_dependency) #9, !dbg !1217
  ret void, !dbg !1218
}

; Function Attrs: nounwind uwtable
define internal fastcc void @register_pragma_internal(%struct.cpp_reader* %pfile, i8* %space, i8* %name, void (%struct.cpp_reader*)* %handler) unnamed_addr #3 !dbg !1219 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1223, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i8* %space, metadata !1224, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i8* %name, metadata !1225, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata void (%struct.cpp_reader*)* %handler, metadata !1226, metadata !DIExpression()), !dbg !1228
  %call = tail call fastcc %struct.pragma_entry* @register_pragma_1(%struct.cpp_reader* %pfile, i8* %space, i8* %name, i8 zeroext 0) #9, !dbg !1229
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %call, metadata !1227, metadata !DIExpression()), !dbg !1228
  %is_internal = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call, i64 0, i32 3, !dbg !1230
  store i8 1, i8* %is_internal, align 1, !dbg !1231
  %handler2 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call, i64 0, i32 6, i32 0, !dbg !1232
  store void (%struct.cpp_reader*)* %handler, void (%struct.cpp_reader*)** %handler2, align 8, !dbg !1233
  ret void, !dbg !1234
}

; Function Attrs: nounwind uwtable
define internal void @do_pragma_once(%struct.cpp_reader* %pfile) #3 !dbg !1235 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1237, metadata !DIExpression()), !dbg !1238
  %call = tail call fastcc i32 @cpp_in_primary_file(%struct.cpp_reader* %pfile) #9, !dbg !1239
  %tobool = icmp eq i32 %call, 0, !dbg !1239
  br i1 %tobool, label %if.end, label %if.then, !dbg !1241

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !1242
  br label %if.end, !dbg !1242

if.end:                                           ; preds = %entry, %if.then
  tail call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !1243
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1244
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !1244
  %file = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 10, !dbg !1245
  %1 = load %struct._cpp_file*, %struct._cpp_file** %file, align 8, !dbg !1245
  tail call void @_cpp_mark_file_once_only(%struct.cpp_reader* %pfile, %struct._cpp_file* %1) #8, !dbg !1246
  ret void, !dbg !1247
}

; Function Attrs: nounwind uwtable
define internal void @do_pragma_push_macro(%struct.cpp_reader* %pfile) #3 !dbg !1248 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1250, metadata !DIExpression()), !dbg !1260
  %call = tail call fastcc %struct.cpp_token* @get__Pragma_string(%struct.cpp_reader* %pfile) #9, !dbg !1261
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !1255, metadata !DIExpression()), !dbg !1260
  %tobool = icmp eq %struct.cpp_token* %call, null, !dbg !1262
  br i1 %tobool, label %if.then, label %if.end, !dbg !1263

if.then:                                          ; preds = %entry
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !1264
  %0 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !1264
  %src_loc1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i64 -1, i32 0, !dbg !1265
  %1 = load i32, i32* %src_loc1, align 8, !dbg !1265
  call void @llvm.dbg.value(metadata i32 %1, metadata !1257, metadata !DIExpression()), !dbg !1266
  %call2 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %1, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.72, i64 0, i64 0)) #8, !dbg !1267
  tail call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !1268
  tail call fastcc void @skip_rest_of_line(%struct.cpp_reader* %pfile) #9, !dbg !1269
  br label %cleanup.cont

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 0, !dbg !1270
  %2 = load i32, i32* %len, align 8, !dbg !1270
  %add = add i32 %2, 2, !dbg !1270
  %conv = zext i32 %add to i64, !dbg !1270
  %3 = alloca i8, i64 %conv, align 16, !dbg !1270
  call void @llvm.dbg.value(metadata i8* %3, metadata !1251, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8* %3, metadata !1252, metadata !DIExpression()), !dbg !1260
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 1, !dbg !1271
  %4 = load i8*, i8** %text, align 8, !dbg !1271
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1272
  %5 = load i8, i8* %4, align 1, !dbg !1273
  %cmp = icmp eq i8 %5, 76, !dbg !1274
  %idx.ext = zext i1 %cmp to i64, !dbg !1275
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext, !dbg !1275
  call void @llvm.dbg.value(metadata i8* %add.ptr11, metadata !1254, metadata !DIExpression()), !dbg !1260
  %idx.ext18 = zext i32 %2 to i64, !dbg !1276
  %add.ptr19 = getelementptr inbounds i8, i8* %4, i64 %idx.ext18, !dbg !1276
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr19, i64 -1, !dbg !1277
  call void @llvm.dbg.value(metadata i8* %add.ptr20, metadata !1253, metadata !DIExpression()), !dbg !1260
  br label %while.cond, !dbg !1278

while.cond:                                       ; preds = %if.end35, %if.end
  %dest.0 = phi i8* [ %3, %if.end ], [ %incdec.ptr37, %if.end35 ], !dbg !1260
  %src.0 = phi i8* [ %add.ptr11, %if.end ], [ %incdec.ptr36, %if.end35 ], !dbg !1260
  call void @llvm.dbg.value(metadata i8* %src.0, metadata !1254, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8* %dest.0, metadata !1252, metadata !DIExpression()), !dbg !1260
  %cmp21 = icmp ult i8* %src.0, %add.ptr20, !dbg !1279
  br i1 %cmp21, label %while.body, label %while.end, !dbg !1278

while.body:                                       ; preds = %while.cond
  %6 = load i8, i8* %src.0, align 1, !dbg !1280
  %cmp24 = icmp eq i8 %6, 92, !dbg !1283
  br i1 %cmp24, label %land.lhs.true, label %if.end35, !dbg !1284

land.lhs.true:                                    ; preds = %while.body
  %arrayidx26 = getelementptr inbounds i8, i8* %src.0, i64 1, !dbg !1285
  %7 = load i8, i8* %arrayidx26, align 1, !dbg !1285
  %cmp28 = icmp eq i8 %7, 92, !dbg !1286
  br i1 %cmp28, label %if.then34, label %lor.lhs.false, !dbg !1287

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp32 = icmp eq i8 %7, 34, !dbg !1288
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !1289

if.then34:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.dbg.value(metadata i8* %arrayidx26, metadata !1254, metadata !DIExpression()), !dbg !1260
  br label %if.end35, !dbg !1290

if.end35:                                         ; preds = %if.then34, %lor.lhs.false, %while.body
  %8 = phi i8 [ %7, %if.then34 ], [ 92, %lor.lhs.false ], [ %6, %while.body ], !dbg !1291
  %src.1 = phi i8* [ %arrayidx26, %if.then34 ], [ %src.0, %lor.lhs.false ], [ %src.0, %while.body ], !dbg !1260
  call void @llvm.dbg.value(metadata i8* %src.1, metadata !1254, metadata !DIExpression()), !dbg !1260
  %incdec.ptr36 = getelementptr inbounds i8, i8* %src.1, i64 1, !dbg !1292
  call void @llvm.dbg.value(metadata i8* %incdec.ptr36, metadata !1254, metadata !DIExpression()), !dbg !1260
  %incdec.ptr37 = getelementptr inbounds i8, i8* %dest.0, i64 1, !dbg !1293
  call void @llvm.dbg.value(metadata i8* %incdec.ptr37, metadata !1252, metadata !DIExpression()), !dbg !1260
  store i8 %8, i8* %dest.0, align 1, !dbg !1294
  br label %while.cond, !dbg !1278, !llvm.loop !1295

while.end:                                        ; preds = %while.cond
  %dest.0.lcssa = phi i8* [ %dest.0, %while.cond ], !dbg !1260
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !1252, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !1252, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !1252, metadata !DIExpression()), !dbg !1260
  store i8 0, i8* %dest.0.lcssa, align 1, !dbg !1297
  tail call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !1298
  tail call fastcc void @skip_rest_of_line(%struct.cpp_reader* %pfile) #9, !dbg !1299
  %call38 = tail call i8* @xmalloc(i64 24) #8, !dbg !1300
  call void @llvm.dbg.value(metadata i8* %call38, metadata !1256, metadata !DIExpression()), !dbg !1260
  %call39 = call i64 @strlen(i8* nonnull %3) #10, !dbg !1301
  %add40 = add i64 %call39, 1, !dbg !1301
  %call41 = call i8* @xmalloc(i64 %add40) #8, !dbg !1301
  %name = getelementptr inbounds i8, i8* %call38, i64 8, !dbg !1302
  %9 = bitcast i8* %name to i8**, !dbg !1302
  store i8* %call41, i8** %9, align 8, !dbg !1303
  %call43 = call i8* @strcpy(i8* %call41, i8* nonnull %3) #8, !dbg !1304
  %pushed_macros = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 63, !dbg !1305
  %10 = bitcast %struct.def_pragma_macro** %pushed_macros to i64*, !dbg !1305
  %11 = load i64, i64* %10, align 8, !dbg !1305
  %12 = bitcast i8* %call38 to i64*, !dbg !1306
  store i64 %11, i64* %12, align 8, !dbg !1306
  %13 = load i8*, i8** %9, align 8, !dbg !1307
  %call45 = call %struct.cpp_macro* @cpp_push_definition(%struct.cpp_reader* %pfile, i8* %13) #9, !dbg !1308
  %value = getelementptr inbounds i8, i8* %call38, i64 16, !dbg !1309
  %14 = bitcast i8* %value to %struct.cpp_macro**, !dbg !1309
  store %struct.cpp_macro* %call45, %struct.cpp_macro** %14, align 8, !dbg !1310
  %15 = bitcast %struct.def_pragma_macro** %pushed_macros to i8**, !dbg !1311
  store i8* %call38, i8** %15, align 8, !dbg !1311
  br label %cleanup.cont, !dbg !1312

cleanup.cont:                                     ; preds = %if.then, %while.end
  ret void, !dbg !1312
}

; Function Attrs: nounwind uwtable
define internal void @do_pragma_pop_macro(%struct.cpp_reader* %pfile) #3 !dbg !1313 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1315, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* null, metadata !1321, metadata !DIExpression()), !dbg !1326
  %pushed_macros = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 63, !dbg !1327
  %0 = load %struct.def_pragma_macro*, %struct.def_pragma_macro** %pushed_macros, align 8, !dbg !1327
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* %0, metadata !1322, metadata !DIExpression()), !dbg !1326
  %call = tail call fastcc %struct.cpp_token* @get__Pragma_string(%struct.cpp_reader* %pfile) #9, !dbg !1328
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !1320, metadata !DIExpression()), !dbg !1326
  %tobool = icmp eq %struct.cpp_token* %call, null, !dbg !1329
  br i1 %tobool, label %if.then, label %if.end, !dbg !1330

if.then:                                          ; preds = %entry
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !1331
  %1 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !1331
  %src_loc1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i64 -1, i32 0, !dbg !1332
  %2 = load i32, i32* %src_loc1, align 8, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %2, metadata !1323, metadata !DIExpression()), !dbg !1333
  %call2 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %2, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.73, i64 0, i64 0)) #8, !dbg !1334
  tail call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !1335
  tail call fastcc void @skip_rest_of_line(%struct.cpp_reader* %pfile) #9, !dbg !1336
  br label %cleanup.cont

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 0, !dbg !1337
  %3 = load i32, i32* %len, align 8, !dbg !1337
  %add = add i32 %3, 2, !dbg !1337
  %conv = zext i32 %add to i64, !dbg !1337
  %4 = alloca i8, i64 %conv, align 16, !dbg !1337
  call void @llvm.dbg.value(metadata i8* %4, metadata !1316, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %4, metadata !1317, metadata !DIExpression()), !dbg !1326
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 1, !dbg !1338
  %5 = load i8*, i8** %text, align 8, !dbg !1338
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1339
  %6 = load i8, i8* %5, align 1, !dbg !1340
  %cmp = icmp eq i8 %6, 76, !dbg !1341
  %idx.ext = zext i1 %cmp to i64, !dbg !1342
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %add.ptr11, metadata !1319, metadata !DIExpression()), !dbg !1326
  %idx.ext18 = zext i32 %3 to i64, !dbg !1343
  %add.ptr19 = getelementptr inbounds i8, i8* %5, i64 %idx.ext18, !dbg !1343
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr19, i64 -1, !dbg !1344
  call void @llvm.dbg.value(metadata i8* %add.ptr20, metadata !1318, metadata !DIExpression()), !dbg !1326
  br label %while.cond, !dbg !1345

while.cond:                                       ; preds = %if.end35, %if.end
  %src.0 = phi i8* [ %add.ptr11, %if.end ], [ %incdec.ptr36, %if.end35 ], !dbg !1326
  %dest.0 = phi i8* [ %4, %if.end ], [ %incdec.ptr37, %if.end35 ], !dbg !1326
  call void @llvm.dbg.value(metadata i8* %dest.0, metadata !1317, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %src.0, metadata !1319, metadata !DIExpression()), !dbg !1326
  %cmp21 = icmp ult i8* %src.0, %add.ptr20, !dbg !1346
  br i1 %cmp21, label %while.body, label %while.end, !dbg !1345

while.body:                                       ; preds = %while.cond
  %7 = load i8, i8* %src.0, align 1, !dbg !1347
  %cmp24 = icmp eq i8 %7, 92, !dbg !1350
  br i1 %cmp24, label %land.lhs.true, label %if.end35, !dbg !1351

land.lhs.true:                                    ; preds = %while.body
  %arrayidx26 = getelementptr inbounds i8, i8* %src.0, i64 1, !dbg !1352
  %8 = load i8, i8* %arrayidx26, align 1, !dbg !1352
  %cmp28 = icmp eq i8 %8, 92, !dbg !1353
  br i1 %cmp28, label %if.then34, label %lor.lhs.false, !dbg !1354

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp32 = icmp eq i8 %8, 34, !dbg !1355
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !1356

if.then34:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.dbg.value(metadata i8* %arrayidx26, metadata !1319, metadata !DIExpression()), !dbg !1326
  br label %if.end35, !dbg !1357

if.end35:                                         ; preds = %if.then34, %lor.lhs.false, %while.body
  %9 = phi i8 [ %8, %if.then34 ], [ 92, %lor.lhs.false ], [ %7, %while.body ], !dbg !1358
  %src.1 = phi i8* [ %arrayidx26, %if.then34 ], [ %src.0, %lor.lhs.false ], [ %src.0, %while.body ], !dbg !1326
  call void @llvm.dbg.value(metadata i8* %src.1, metadata !1319, metadata !DIExpression()), !dbg !1326
  %incdec.ptr36 = getelementptr inbounds i8, i8* %src.1, i64 1, !dbg !1359
  call void @llvm.dbg.value(metadata i8* %incdec.ptr36, metadata !1319, metadata !DIExpression()), !dbg !1326
  %incdec.ptr37 = getelementptr inbounds i8, i8* %dest.0, i64 1, !dbg !1360
  call void @llvm.dbg.value(metadata i8* %incdec.ptr37, metadata !1317, metadata !DIExpression()), !dbg !1326
  store i8 %9, i8* %dest.0, align 1, !dbg !1361
  br label %while.cond, !dbg !1345, !llvm.loop !1362

while.end:                                        ; preds = %while.cond
  %dest.0.lcssa = phi i8* [ %dest.0, %while.cond ], !dbg !1326
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !1317, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !1317, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !1317, metadata !DIExpression()), !dbg !1326
  store i8 0, i8* %dest.0.lcssa, align 1, !dbg !1364
  tail call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !1365
  tail call fastcc void @skip_rest_of_line(%struct.cpp_reader* %pfile) #9, !dbg !1366
  br label %while.cond38, !dbg !1367

while.cond38:                                     ; preds = %if.end53, %while.end
  %l.0 = phi %struct.def_pragma_macro* [ null, %while.end ], [ %c.0, %if.end53 ], !dbg !1326
  %.in = phi %struct.def_pragma_macro* [ %0, %while.end ], [ %19, %if.end53 ]
  %c.0 = phi %struct.def_pragma_macro* [ %0, %while.end ], [ %19, %if.end53 ], !dbg !1326
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* %c.0, metadata !1322, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* %l.0, metadata !1321, metadata !DIExpression()), !dbg !1326
  %cmp39 = icmp eq %struct.def_pragma_macro* %c.0, null, !dbg !1368
  br i1 %cmp39, label %cleanup.cont.loopexit, label %while.body41, !dbg !1367

while.body41:                                     ; preds = %while.cond38
  %name = getelementptr inbounds %struct.def_pragma_macro, %struct.def_pragma_macro* %c.0, i64 0, i32 1, !dbg !1369
  %10 = load i8*, i8** %name, align 8, !dbg !1369
  %call42 = call i32 @strcmp(i8* %10, i8* nonnull %4) #10, !dbg !1372
  %tobool43 = icmp eq i32 %call42, 0, !dbg !1372
  br i1 %tobool43, label %if.then44, label %if.end53, !dbg !1373

if.then44:                                        ; preds = %while.body41
  %name.lcssa = phi i8** [ %name, %while.body41 ], !dbg !1369
  %l.0.lcssa9 = phi %struct.def_pragma_macro* [ %l.0, %while.body41 ], !dbg !1326
  %.in.lcssa8 = phi %struct.def_pragma_macro* [ %.in, %while.body41 ]
  %c.0.lcssa7 = phi %struct.def_pragma_macro* [ %c.0, %while.body41 ], !dbg !1326
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* %l.0.lcssa9, metadata !1321, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* %c.0.lcssa7, metadata !1322, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* %l.0.lcssa9, metadata !1321, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* %c.0.lcssa7, metadata !1322, metadata !DIExpression()), !dbg !1326
  %11 = bitcast %struct.def_pragma_macro* %.in.lcssa8 to i64*, !dbg !1326
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* %l.0.lcssa9, metadata !1321, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* %c.0.lcssa7, metadata !1322, metadata !DIExpression()), !dbg !1326
  %tobool45 = icmp eq %struct.def_pragma_macro* %l.0.lcssa9, null, !dbg !1374
  %12 = load i64, i64* %11, align 8, !dbg !1377
  br i1 %tobool45, label %if.then46, label %if.else, !dbg !1378

if.then46:                                        ; preds = %if.then44
  %13 = bitcast %struct.def_pragma_macro** %pushed_macros to i64*, !dbg !1379
  store i64 %12, i64* %13, align 8, !dbg !1379
  br label %if.end50, !dbg !1380

if.else:                                          ; preds = %if.then44
  %14 = bitcast %struct.def_pragma_macro* %l.0.lcssa9 to i64*, !dbg !1381
  store i64 %12, i64* %14, align 8, !dbg !1381
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then46
  %15 = load i8*, i8** %name.lcssa, align 8, !dbg !1382
  %value = getelementptr inbounds %struct.def_pragma_macro, %struct.def_pragma_macro* %c.0.lcssa7, i64 0, i32 2, !dbg !1383
  %16 = load %struct.cpp_macro*, %struct.cpp_macro** %value, align 8, !dbg !1383
  call void @cpp_pop_definition(%struct.cpp_reader* %pfile, i8* %15, %struct.cpp_macro* %16) #9, !dbg !1384
  %17 = load i8*, i8** %name.lcssa, align 8, !dbg !1385
  call void @free(i8* %17) #8, !dbg !1386
  %18 = bitcast %struct.def_pragma_macro* %c.0.lcssa7 to i8*, !dbg !1387
  call void @free(i8* nonnull %18) #8, !dbg !1388
  br label %cleanup.cont, !dbg !1389

if.end53:                                         ; preds = %while.body41
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* %c.0, metadata !1321, metadata !DIExpression()), !dbg !1326
  %next54 = getelementptr inbounds %struct.def_pragma_macro, %struct.def_pragma_macro* %c.0, i64 0, i32 0, !dbg !1390
  %19 = load %struct.def_pragma_macro*, %struct.def_pragma_macro** %next54, align 8, !dbg !1390
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* %19, metadata !1322, metadata !DIExpression()), !dbg !1326
  br label %while.cond38, !dbg !1367, !llvm.loop !1391

cleanup.cont.loopexit:                            ; preds = %while.cond38
  br label %cleanup.cont, !dbg !1393

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %if.then, %if.end50
  ret void, !dbg !1393
}

; Function Attrs: nounwind uwtable
define internal void @do_pragma_poison(%struct.cpp_reader* %pfile) #3 !dbg !1394 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1396, metadata !DIExpression()), !dbg !1399
  %poisoned_ok = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 7, !dbg !1400
  store i8 1, i8* %poisoned_ok, align 1, !dbg !1401
  br label %for.cond, !dbg !1402

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %call = tail call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %pfile) #8, !dbg !1403
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !1397, metadata !DIExpression()), !dbg !1399
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !1407
  %bf.load = load i8, i8* %type, align 4, !dbg !1407
  %cmp = icmp eq i8 %bf.load, 22, !dbg !1409
  br i1 %cmp, label %for.end.loopexit, label %if.end, !dbg !1410

if.end:                                           ; preds = %for.cond
  %cmp4 = icmp eq i8 %bf.load, 53, !dbg !1411
  br i1 %cmp4, label %if.end7, label %if.then5, !dbg !1413

if.then5:                                         ; preds = %if.end
  %call6 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i64 0, i64 0)) #8, !dbg !1414
  br label %for.end, !dbg !1416

if.end7:                                          ; preds = %if.end
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, !dbg !1417
  %node8 = bitcast %union.cpp_token_u* %val to %struct.cpp_hashnode**, !dbg !1418
  %0 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node8, align 8, !dbg !1418
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %0, metadata !1398, metadata !DIExpression()), !dbg !1399
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %0, i64 0, i32 3, !dbg !1419
  %bf.load9 = load i16, i16* %flags, align 2, !dbg !1419
  %1 = trunc i16 %bf.load9 to i8, !dbg !1421
  %tobool = icmp slt i8 %1, 0, !dbg !1421
  br i1 %tobool, label %for.cond.backedge, label %if.end12, !dbg !1422

if.end12:                                         ; preds = %if.end7
  %bf.clear = and i16 %bf.load9, 63, !dbg !1423
  %cmp16 = icmp eq i16 %bf.clear, 1, !dbg !1425
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !1426

if.then17:                                        ; preds = %if.end12
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %0, i64 0, i32 0, i32 0, !dbg !1427
  %2 = load i8*, i8** %str, align 8, !dbg !1427
  %call18 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.75, i64 0, i64 0), i8* %2) #8, !dbg !1428
  br label %if.end19, !dbg !1428

if.end19:                                         ; preds = %if.then17, %if.end12
  tail call void @_cpp_free_definition(%struct.cpp_hashnode* %0) #8, !dbg !1429
  %bf.load21 = load i16, i16* %flags, align 2, !dbg !1430
  %bf.lshr22 = and i16 %bf.load21, -704, !dbg !1430
  %3 = or i16 %bf.lshr22, 640, !dbg !1430
  %bf.clear25 = and i16 %bf.load21, 63, !dbg !1430
  %bf.set = or i16 %bf.clear25, %3, !dbg !1430
  store i16 %bf.set, i16* %flags, align 2, !dbg !1430
  br label %for.cond.backedge, !dbg !1431

for.cond.backedge:                                ; preds = %if.end19, %if.end7
  br label %for.cond, !dbg !1403, !llvm.loop !1432

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !1435

for.end:                                          ; preds = %for.end.loopexit, %if.then5
  store i8 0, i8* %poisoned_ok, align 1, !dbg !1436
  ret void, !dbg !1437
}

; Function Attrs: nounwind uwtable
define internal void @do_pragma_system_header(%struct.cpp_reader* %pfile) #3 !dbg !1438 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1440, metadata !DIExpression()), !dbg !1441
  %call = tail call fastcc i32 @cpp_in_primary_file(%struct.cpp_reader* %pfile) #9, !dbg !1442
  %tobool = icmp eq i32 %call, 0, !dbg !1442
  br i1 %tobool, label %if.else, label %if.then, !dbg !1444

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.76, i64 0, i64 0)) #8, !dbg !1445
  br label %if.end, !dbg !1445

if.else:                                          ; preds = %entry
  tail call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !1446
  tail call fastcc void @skip_rest_of_line(%struct.cpp_reader* %pfile) #9, !dbg !1448
  tail call void @cpp_make_system_header(%struct.cpp_reader* %pfile, i32 1, i32 0) #8, !dbg !1449
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1450
}

; Function Attrs: nounwind uwtable
define internal void @do_pragma_dependency(%struct.cpp_reader* %pfile) #3 !dbg !1451 {
entry:
  %angle_brackets = alloca i32, align 4
  %location = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1453, metadata !DIExpression()), !dbg !1458
  %0 = bitcast i32* %angle_brackets to i8*, !dbg !1459
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !1459
  %1 = bitcast i32* %location to i8*, !dbg !1460
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7, !dbg !1460
  call void @llvm.dbg.value(metadata i32* %angle_brackets, metadata !1455, metadata !DIExpression(DW_OP_deref)), !dbg !1458
  call void @llvm.dbg.value(metadata i32* %location, metadata !1457, metadata !DIExpression(DW_OP_deref)), !dbg !1458
  %call = call fastcc i8* @parse_include(%struct.cpp_reader* %pfile, i32* nonnull %angle_brackets, %struct.cpp_token*** null, i32* nonnull %location) #9, !dbg !1461
  call void @llvm.dbg.value(metadata i8* %call, metadata !1454, metadata !DIExpression()), !dbg !1458
  %tobool = icmp eq i8* %call, null, !dbg !1462
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1464

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %angle_brackets, align 4, !dbg !1465
  call void @llvm.dbg.value(metadata i32 %2, metadata !1455, metadata !DIExpression()), !dbg !1458
  %call1 = call i32 @_cpp_compare_file_date(%struct.cpp_reader* %pfile, i8* nonnull %call, i32 %2) #8, !dbg !1466
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1456, metadata !DIExpression()), !dbg !1458
  %cmp = icmp slt i32 %call1, 0, !dbg !1467
  br i1 %cmp, label %if.then2, label %if.else, !dbg !1469

if.then2:                                         ; preds = %if.end
  %call3 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i64 0, i64 0), i8* nonnull %call) #8, !dbg !1470
  br label %if.end12, !dbg !1470

if.else:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %call1, 0, !dbg !1471
  br i1 %cmp4, label %if.end12, label %if.then5, !dbg !1473

if.then5:                                         ; preds = %if.else
  %call6 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %call) #8, !dbg !1474
  %call7 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !1476
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call7, i64 0, i32 1, !dbg !1478
  %bf.load = load i8, i8* %type, align 4, !dbg !1478
  %cmp8 = icmp eq i8 %bf.load, 22, !dbg !1479
  br i1 %cmp8, label %if.end12, label %if.then9, !dbg !1480

if.then9:                                         ; preds = %if.then5
  call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 1) #8, !dbg !1481
  call fastcc void @do_diagnostic(%struct.cpp_reader* %pfile, i32 0, i32 0) #9, !dbg !1483
  br label %if.end12, !dbg !1484

if.end12:                                         ; preds = %if.then5, %if.else, %if.then9, %if.then2
  call void @free(i8* nonnull %call) #8, !dbg !1485
  br label %cleanup, !dbg !1486

cleanup:                                          ; preds = %entry, %if.end12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7, !dbg !1486
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !1486
  ret void, !dbg !1486
}

; Function Attrs: nounwind uwtable
define dso_local i8** @_cpp_save_pragma_names(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !1487 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1491, metadata !DIExpression()), !dbg !1494
  %pragmas = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 48, !dbg !1495
  %0 = load %struct.pragma_entry*, %struct.pragma_entry** %pragmas, align 8, !dbg !1495
  %call = tail call fastcc i32 @count_registered_pragmas(%struct.pragma_entry* %0) #9, !dbg !1496
  call void @llvm.dbg.value(metadata i32 %call, metadata !1492, metadata !DIExpression()), !dbg !1494
  %conv = sext i32 %call to i64, !dbg !1497
  %mul = shl nsw i64 %conv, 3, !dbg !1497
  %call1 = tail call i8* @xmalloc(i64 %mul) #8, !dbg !1497
  %1 = bitcast i8* %call1 to i8**, !dbg !1497
  call void @llvm.dbg.value(metadata i8** %1, metadata !1493, metadata !DIExpression()), !dbg !1494
  %2 = load %struct.pragma_entry*, %struct.pragma_entry** %pragmas, align 8, !dbg !1498
  %call3 = tail call fastcc i8** @save_registered_pragmas(%struct.pragma_entry* %2, i8** %1) #9, !dbg !1499
  ret i8** %1, !dbg !1500
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @count_registered_pragmas(%struct.pragma_entry* %pe) unnamed_addr #3 !dbg !1501 {
entry:
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %pe, metadata !1505, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 0, metadata !1506, metadata !DIExpression()), !dbg !1507
  br label %for.cond, !dbg !1508

for.cond:                                         ; preds = %if.end, %entry
  %ct.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !1507
  %pe.addr.0 = phi %struct.pragma_entry* [ %pe, %entry ], [ %2, %if.end ]
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %pe.addr.0, metadata !1505, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %ct.0, metadata !1506, metadata !DIExpression()), !dbg !1507
  %cmp = icmp eq %struct.pragma_entry* %pe.addr.0, null, !dbg !1509
  br i1 %cmp, label %for.end, label %for.body, !dbg !1512

for.body:                                         ; preds = %for.cond
  %is_nspace = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %pe.addr.0, i64 0, i32 2, !dbg !1513
  %0 = load i8, i8* %is_nspace, align 8, !dbg !1513
  %tobool = icmp eq i8 %0, 0, !dbg !1516
  br i1 %tobool, label %if.end, label %if.then, !dbg !1517

if.then:                                          ; preds = %for.body
  %u = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %pe.addr.0, i64 0, i32 6, !dbg !1518
  %space = bitcast %union.anon.1* %u to %struct.pragma_entry**, !dbg !1519
  %1 = load %struct.pragma_entry*, %struct.pragma_entry** %space, align 8, !dbg !1519
  %call = tail call fastcc i32 @count_registered_pragmas(%struct.pragma_entry* %1) #9, !dbg !1520
  %add = add nsw i32 %ct.0, %call, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %add, metadata !1506, metadata !DIExpression()), !dbg !1507
  br label %if.end, !dbg !1522

if.end:                                           ; preds = %for.body, %if.then
  %ct.1 = phi i32 [ %add, %if.then ], [ %ct.0, %for.body ], !dbg !1507
  call void @llvm.dbg.value(metadata i32 %ct.1, metadata !1506, metadata !DIExpression()), !dbg !1507
  %inc = add nsw i32 %ct.1, 1, !dbg !1523
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1506, metadata !DIExpression()), !dbg !1507
  %next = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %pe.addr.0, i64 0, i32 0, !dbg !1524
  %2 = load %struct.pragma_entry*, %struct.pragma_entry** %next, align 8, !dbg !1524
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %2, metadata !1505, metadata !DIExpression()), !dbg !1507
  br label %for.cond, !dbg !1525, !llvm.loop !1526

for.end:                                          ; preds = %for.cond
  %ct.0.lcssa = phi i32 [ %ct.0, %for.cond ], !dbg !1507
  call void @llvm.dbg.value(metadata i32 %ct.0.lcssa, metadata !1506, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %ct.0.lcssa, metadata !1506, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %ct.0.lcssa, metadata !1506, metadata !DIExpression()), !dbg !1507
  ret i32 %ct.0.lcssa, !dbg !1528
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i8** @save_registered_pragmas(%struct.pragma_entry* %pe, i8** %sd) unnamed_addr #3 !dbg !1529 {
entry:
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %pe, metadata !1533, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8** %sd, metadata !1534, metadata !DIExpression()), !dbg !1535
  br label %for.cond, !dbg !1536

for.cond:                                         ; preds = %if.end, %entry
  %sd.addr.0 = phi i8** [ %sd, %entry ], [ %incdec.ptr, %if.end ]
  %pe.addr.0 = phi %struct.pragma_entry* [ %pe, %entry ], [ %5, %if.end ]
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %pe.addr.0, metadata !1533, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8** %sd.addr.0, metadata !1534, metadata !DIExpression()), !dbg !1535
  %cmp = icmp eq %struct.pragma_entry* %pe.addr.0, null, !dbg !1537
  br i1 %cmp, label %for.end, label %for.body, !dbg !1540

for.body:                                         ; preds = %for.cond
  %is_nspace = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %pe.addr.0, i64 0, i32 2, !dbg !1541
  %0 = load i8, i8* %is_nspace, align 8, !dbg !1541
  %tobool = icmp eq i8 %0, 0, !dbg !1544
  br i1 %tobool, label %if.end, label %if.then, !dbg !1545

if.then:                                          ; preds = %for.body
  %u = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %pe.addr.0, i64 0, i32 6, !dbg !1546
  %space = bitcast %union.anon.1* %u to %struct.pragma_entry**, !dbg !1547
  %1 = load %struct.pragma_entry*, %struct.pragma_entry** %space, align 8, !dbg !1547
  %call = tail call fastcc i8** @save_registered_pragmas(%struct.pragma_entry* %1, i8** %sd.addr.0) #9, !dbg !1548
  call void @llvm.dbg.value(metadata i8** %call, metadata !1534, metadata !DIExpression()), !dbg !1535
  br label %if.end, !dbg !1549

if.end:                                           ; preds = %for.body, %if.then
  %sd.addr.1 = phi i8** [ %call, %if.then ], [ %sd.addr.0, %for.body ]
  call void @llvm.dbg.value(metadata i8** %sd.addr.1, metadata !1534, metadata !DIExpression()), !dbg !1535
  %pragma = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %pe.addr.0, i64 0, i32 1, !dbg !1550
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %pragma, align 8, !dbg !1550
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i64 0, i32 0, i32 0, !dbg !1550
  %3 = load i8*, i8** %str, align 8, !dbg !1550
  %len = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i64 0, i32 0, i32 1, !dbg !1551
  %4 = load i32, i32* %len, align 8, !dbg !1551
  %conv = zext i32 %4 to i64, !dbg !1551
  %add = add i32 %4, 1, !dbg !1552
  %conv6 = zext i32 %add to i64, !dbg !1553
  %call7 = tail call i8* @xmemdup(i8* %3, i64 %conv, i64 %conv6) #8, !dbg !1554
  %incdec.ptr = getelementptr inbounds i8*, i8** %sd.addr.1, i64 1, !dbg !1555
  call void @llvm.dbg.value(metadata i8** %incdec.ptr, metadata !1534, metadata !DIExpression()), !dbg !1535
  store i8* %call7, i8** %sd.addr.1, align 8, !dbg !1556
  %next = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %pe.addr.0, i64 0, i32 0, !dbg !1557
  %5 = load %struct.pragma_entry*, %struct.pragma_entry** %next, align 8, !dbg !1557
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %5, metadata !1533, metadata !DIExpression()), !dbg !1535
  br label %for.cond, !dbg !1558, !llvm.loop !1559

for.end:                                          ; preds = %for.cond
  %sd.addr.0.lcssa = phi i8** [ %sd.addr.0, %for.cond ]
  call void @llvm.dbg.value(metadata i8** %sd.addr.0.lcssa, metadata !1534, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8** %sd.addr.0.lcssa, metadata !1534, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8** %sd.addr.0.lcssa, metadata !1534, metadata !DIExpression()), !dbg !1535
  ret i8** %sd.addr.0.lcssa, !dbg !1561
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_restore_pragma_names(%struct.cpp_reader* %pfile, i8** %saved) local_unnamed_addr #3 !dbg !1562 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1566, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i8** %saved, metadata !1567, metadata !DIExpression()), !dbg !1568
  %pragmas = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 48, !dbg !1569
  %0 = load %struct.pragma_entry*, %struct.pragma_entry** %pragmas, align 8, !dbg !1569
  %call = tail call fastcc i8** @restore_registered_pragmas(%struct.cpp_reader* %pfile, %struct.pragma_entry* %0, i8** %saved) #9, !dbg !1570
  %1 = bitcast i8** %saved to i8*, !dbg !1571
  tail call void @free(i8* %1) #8, !dbg !1572
  ret void, !dbg !1573
}

; Function Attrs: nounwind uwtable
define internal fastcc i8** @restore_registered_pragmas(%struct.cpp_reader* %pfile, %struct.pragma_entry* %pe, i8** %sd) unnamed_addr #3 !dbg !1574 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1578, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %pe, metadata !1579, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8** %sd, metadata !1580, metadata !DIExpression()), !dbg !1581
  br label %for.cond, !dbg !1582

for.cond:                                         ; preds = %if.end, %entry
  %pe.addr.0 = phi %struct.pragma_entry* [ %pe, %entry ], [ %4, %if.end ]
  %sd.addr.0 = phi i8** [ %sd, %entry ], [ %incdec.ptr, %if.end ]
  call void @llvm.dbg.value(metadata i8** %sd.addr.0, metadata !1580, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %pe.addr.0, metadata !1579, metadata !DIExpression()), !dbg !1581
  %cmp = icmp eq %struct.pragma_entry* %pe.addr.0, null, !dbg !1583
  br i1 %cmp, label %for.end, label %for.body, !dbg !1586

for.body:                                         ; preds = %for.cond
  %is_nspace = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %pe.addr.0, i64 0, i32 2, !dbg !1587
  %0 = load i8, i8* %is_nspace, align 8, !dbg !1587
  %tobool = icmp eq i8 %0, 0, !dbg !1590
  br i1 %tobool, label %if.end, label %if.then, !dbg !1591

if.then:                                          ; preds = %for.body
  %u = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %pe.addr.0, i64 0, i32 6, !dbg !1592
  %space = bitcast %union.anon.1* %u to %struct.pragma_entry**, !dbg !1593
  %1 = load %struct.pragma_entry*, %struct.pragma_entry** %space, align 8, !dbg !1593
  %call = tail call fastcc i8** @restore_registered_pragmas(%struct.cpp_reader* %pfile, %struct.pragma_entry* %1, i8** %sd.addr.0) #9, !dbg !1594
  call void @llvm.dbg.value(metadata i8** %call, metadata !1580, metadata !DIExpression()), !dbg !1581
  br label %if.end, !dbg !1595

if.end:                                           ; preds = %for.body, %if.then
  %sd.addr.1 = phi i8** [ %call, %if.then ], [ %sd.addr.0, %for.body ]
  call void @llvm.dbg.value(metadata i8** %sd.addr.1, metadata !1580, metadata !DIExpression()), !dbg !1581
  %2 = load i8*, i8** %sd.addr.1, align 8, !dbg !1596
  %call1 = tail call i64 @strlen(i8* %2) #10, !dbg !1597
  %conv = trunc i64 %call1 to i32, !dbg !1597
  %call2 = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %pfile, i8* %2, i32 %conv) #8, !dbg !1598
  %pragma = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %pe.addr.0, i64 0, i32 1, !dbg !1599
  store %struct.cpp_hashnode* %call2, %struct.cpp_hashnode** %pragma, align 8, !dbg !1600
  %3 = load i8*, i8** %sd.addr.1, align 8, !dbg !1601
  tail call void @free(i8* %3) #8, !dbg !1602
  %incdec.ptr = getelementptr inbounds i8*, i8** %sd.addr.1, i64 1, !dbg !1603
  call void @llvm.dbg.value(metadata i8** %incdec.ptr, metadata !1580, metadata !DIExpression()), !dbg !1581
  %next = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %pe.addr.0, i64 0, i32 0, !dbg !1604
  %4 = load %struct.pragma_entry*, %struct.pragma_entry** %next, align 8, !dbg !1604
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %4, metadata !1579, metadata !DIExpression()), !dbg !1581
  br label %for.cond, !dbg !1605, !llvm.loop !1606

for.end:                                          ; preds = %for.cond
  %sd.addr.0.lcssa = phi i8** [ %sd.addr.0, %for.cond ]
  call void @llvm.dbg.value(metadata i8** %sd.addr.0.lcssa, metadata !1580, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8** %sd.addr.0.lcssa, metadata !1580, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8** %sd.addr.0.lcssa, metadata !1580, metadata !DIExpression()), !dbg !1581
  ret i8** %sd.addr.0.lcssa, !dbg !1608
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @_cpp_do__Pragma(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !1609 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1613, metadata !DIExpression()), !dbg !1615
  %call = tail call fastcc %struct.cpp_token* @get__Pragma_string(%struct.cpp_reader* %pfile) #9, !dbg !1616
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !1614, metadata !DIExpression()), !dbg !1615
  %type = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 11, i32 1, !dbg !1617
  store i8 72, i8* %type, align 4, !dbg !1618
  %tobool = icmp eq %struct.cpp_token* %call, null, !dbg !1619
  br i1 %tobool, label %if.end, label %if.then, !dbg !1621

if.then:                                          ; preds = %entry
  %str = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, !dbg !1622
  tail call fastcc void @destringize_and_run(%struct.cpp_reader* %pfile, %struct.cpp_string* nonnull %str) #9, !dbg !1624
  br label %cleanup, !dbg !1625

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !1626
  br label %cleanup, !dbg !1627

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ], !dbg !1615
  ret i32 %retval.0, !dbg !1628
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_token* @get__Pragma_string(%struct.cpp_reader* %pfile) unnamed_addr #3 !dbg !1629 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1633, metadata !DIExpression()), !dbg !1636
  %call = tail call fastcc %struct.cpp_token* @get_token_no_padding(%struct.cpp_reader* %pfile) #9, !dbg !1637
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !1635, metadata !DIExpression()), !dbg !1636
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !1638
  %bf.load = load i8, i8* %type, align 4, !dbg !1638
  %cmp = icmp eq i8 %bf.load, 22, !dbg !1640
  br i1 %cmp, label %if.then, label %if.end, !dbg !1641

if.then:                                          ; preds = %entry
  tail call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 1) #8, !dbg !1642
  %bf.load2.pre = load i8, i8* %type, align 4, !dbg !1643
  br label %if.end, !dbg !1642

if.end:                                           ; preds = %if.then, %entry
  %bf.load2 = phi i8 [ %bf.load2.pre, %if.then ], [ %bf.load, %entry ], !dbg !1643
  %cmp4 = icmp eq i8 %bf.load2, 20, !dbg !1645
  br i1 %cmp4, label %if.end6, label %cleanup, !dbg !1646

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc %struct.cpp_token* @get_token_no_padding(%struct.cpp_reader* %pfile) #9, !dbg !1647
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call7, metadata !1634, metadata !DIExpression()), !dbg !1636
  %type8 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call7, i64 0, i32 1, !dbg !1648
  %bf.load9 = load i8, i8* %type8, align 4, !dbg !1648
  %cmp11 = icmp eq i8 %bf.load9, 22, !dbg !1650
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1651

if.then12:                                        ; preds = %if.end6
  tail call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 1) #8, !dbg !1652
  %bf.load15.pre = load i8, i8* %type8, align 4, !dbg !1653
  br label %if.end13, !dbg !1652

if.end13:                                         ; preds = %if.then12, %if.end6
  %bf.load34 = phi i8 [ %bf.load15.pre, %if.then12 ], [ %bf.load9, %if.end6 ], !dbg !1653
  %cmp17 = icmp eq i8 %bf.load34, 61, !dbg !1655
  br i1 %cmp17, label %if.end38, label %land.lhs.true, !dbg !1656

land.lhs.true:                                    ; preds = %if.end13
  %cmp21 = icmp eq i8 %bf.load34, 62, !dbg !1657
  br i1 %cmp21, label %if.end38, label %land.lhs.true22, !dbg !1658

land.lhs.true22:                                  ; preds = %land.lhs.true
  %cmp26 = icmp eq i8 %bf.load34, 64, !dbg !1659
  br i1 %cmp26, label %if.end38, label %land.lhs.true27, !dbg !1660

land.lhs.true27:                                  ; preds = %land.lhs.true22
  %cmp31 = icmp eq i8 %bf.load34, 63, !dbg !1661
  br i1 %cmp31, label %if.end38, label %land.lhs.true32, !dbg !1662

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %cmp36 = icmp eq i8 %bf.load34, 65, !dbg !1663
  br i1 %cmp36, label %if.end38, label %cleanup, !dbg !1664

if.end38:                                         ; preds = %land.lhs.true32, %land.lhs.true27, %land.lhs.true22, %land.lhs.true, %if.end13
  %call39 = tail call fastcc %struct.cpp_token* @get_token_no_padding(%struct.cpp_reader* %pfile) #9, !dbg !1665
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call39, metadata !1635, metadata !DIExpression()), !dbg !1636
  %type40 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call39, i64 0, i32 1, !dbg !1666
  %bf.load41 = load i8, i8* %type40, align 4, !dbg !1666
  %cmp43 = icmp eq i8 %bf.load41, 22, !dbg !1668
  br i1 %cmp43, label %if.then44, label %if.end45, !dbg !1669

if.then44:                                        ; preds = %if.end38
  tail call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 1) #8, !dbg !1670
  %bf.load47.pre = load i8, i8* %type40, align 4, !dbg !1671
  br label %if.end45, !dbg !1670

if.end45:                                         ; preds = %if.then44, %if.end38
  %bf.load47 = phi i8 [ %bf.load47.pre, %if.then44 ], [ %bf.load41, %if.end38 ], !dbg !1671
  %cmp49 = icmp eq i8 %bf.load47, 21, !dbg !1673
  %.call7 = select i1 %cmp49, %struct.cpp_token* %call7, %struct.cpp_token* null, !dbg !1636
  br label %cleanup, !dbg !1636

cleanup:                                          ; preds = %land.lhs.true32, %if.end, %if.end45
  %retval.0 = phi %struct.cpp_token* [ null, %if.end ], [ null, %land.lhs.true32 ], [ %.call7, %if.end45 ], !dbg !1636
  ret %struct.cpp_token* %retval.0, !dbg !1674
}

; Function Attrs: nounwind uwtable
define internal fastcc void @destringize_and_run(%struct.cpp_reader* %pfile, %struct.cpp_string* %in) unnamed_addr #3 !dbg !1675 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1679, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata %struct.cpp_string* %in, metadata !1680, metadata !DIExpression()), !dbg !1694
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %in, i64 0, i32 0, !dbg !1695
  %0 = load i32, i32* %len, align 8, !dbg !1695
  %sub = add i32 %0, -1, !dbg !1695
  %conv = zext i32 %sub to i64, !dbg !1695
  %1 = alloca i8, i64 %conv, align 16, !dbg !1695
  call void @llvm.dbg.value(metadata i8* %1, metadata !1684, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %1, metadata !1683, metadata !DIExpression()), !dbg !1694
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %in, i64 0, i32 1, !dbg !1696
  %2 = load i8*, i8** %text, align 8, !dbg !1696
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1697
  %3 = load i8, i8* %2, align 1, !dbg !1698
  %cmp = icmp eq i8 %3, 76, !dbg !1699
  %idx.ext = zext i1 %cmp to i64, !dbg !1700
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext, !dbg !1700
  call void @llvm.dbg.value(metadata i8* %add.ptr4, metadata !1681, metadata !DIExpression()), !dbg !1694
  %idx.ext7 = zext i32 %0 to i64, !dbg !1701
  %add.ptr8 = getelementptr inbounds i8, i8* %2, i64 %idx.ext7, !dbg !1701
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr8, i64 -1, !dbg !1702
  call void @llvm.dbg.value(metadata i8* %add.ptr9, metadata !1682, metadata !DIExpression()), !dbg !1694
  br label %while.cond, !dbg !1703

while.cond:                                       ; preds = %if.end, %entry
  %dest.0 = phi i8* [ %1, %entry ], [ %incdec.ptr24, %if.end ], !dbg !1694
  %src.0 = phi i8* [ %add.ptr4, %entry ], [ %incdec.ptr23, %if.end ], !dbg !1694
  call void @llvm.dbg.value(metadata i8* %src.0, metadata !1681, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %dest.0, metadata !1683, metadata !DIExpression()), !dbg !1694
  %cmp10 = icmp ult i8* %src.0, %add.ptr9, !dbg !1704
  br i1 %cmp10, label %while.body, label %while.end, !dbg !1703

while.body:                                       ; preds = %while.cond
  %4 = load i8, i8* %src.0, align 1, !dbg !1705
  %cmp13 = icmp eq i8 %4, 92, !dbg !1708
  br i1 %cmp13, label %land.lhs.true, label %if.end, !dbg !1709

land.lhs.true:                                    ; preds = %while.body
  %arrayidx15 = getelementptr inbounds i8, i8* %src.0, i64 1, !dbg !1710
  %5 = load i8, i8* %arrayidx15, align 1, !dbg !1710
  %cmp17 = icmp eq i8 %5, 92, !dbg !1711
  br i1 %cmp17, label %if.then, label %lor.lhs.false, !dbg !1712

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp21 = icmp eq i8 %5, 34, !dbg !1713
  br i1 %cmp21, label %if.then, label %if.end, !dbg !1714

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.dbg.value(metadata i8* %arrayidx15, metadata !1681, metadata !DIExpression()), !dbg !1694
  br label %if.end, !dbg !1715

if.end:                                           ; preds = %if.then, %lor.lhs.false, %while.body
  %6 = phi i8 [ %5, %if.then ], [ 92, %lor.lhs.false ], [ %4, %while.body ], !dbg !1716
  %src.1 = phi i8* [ %arrayidx15, %if.then ], [ %src.0, %lor.lhs.false ], [ %src.0, %while.body ], !dbg !1694
  call void @llvm.dbg.value(metadata i8* %src.1, metadata !1681, metadata !DIExpression()), !dbg !1694
  %incdec.ptr23 = getelementptr inbounds i8, i8* %src.1, i64 1, !dbg !1717
  call void @llvm.dbg.value(metadata i8* %incdec.ptr23, metadata !1681, metadata !DIExpression()), !dbg !1694
  %incdec.ptr24 = getelementptr inbounds i8, i8* %dest.0, i64 1, !dbg !1718
  call void @llvm.dbg.value(metadata i8* %incdec.ptr24, metadata !1683, metadata !DIExpression()), !dbg !1694
  store i8 %6, i8* %dest.0, align 1, !dbg !1719
  br label %while.cond, !dbg !1703, !llvm.loop !1720

while.end:                                        ; preds = %while.cond
  %dest.0.lcssa = phi i8* [ %dest.0, %while.cond ], !dbg !1694
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !1683, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !1683, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !1683, metadata !DIExpression()), !dbg !1694
  store i8 10, i8* %dest.0.lcssa, align 1, !dbg !1722
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1723
  %7 = bitcast %struct.cpp_context** %context to i64*, !dbg !1723
  %8 = load i64, i64* %7, align 8, !dbg !1723
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !1724
  %9 = bitcast %struct.cpp_token** %cur_token to i64*, !dbg !1724
  %10 = load i64, i64* %9, align 8, !dbg !1724
  %cur_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 31, !dbg !1725
  %11 = bitcast %struct.tokenrun** %cur_run to i64*, !dbg !1725
  %12 = load i64, i64* %11, align 8, !dbg !1725
  %call = tail call i8* @xmalloc(i64 56) #8, !dbg !1726
  %13 = bitcast %struct.cpp_context** %context to i8**, !dbg !1727
  store i8* %call, i8** %13, align 8, !dbg !1727
  %macro = getelementptr inbounds i8, i8* %call, i64 40, !dbg !1728
  %14 = bitcast i8* %macro to %struct.cpp_hashnode**, !dbg !1728
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %14, align 8, !dbg !1729
  %15 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !1730
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %15, i64 0, i32 1, !dbg !1731
  store %struct.cpp_context* null, %struct.cpp_context** %prev, align 8, !dbg !1732
  %16 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !1733
  %next = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %16, i64 0, i32 0, !dbg !1734
  store %struct.cpp_context* null, %struct.cpp_context** %next, align 8, !dbg !1735
  %sub.ptr.lhs.cast = ptrtoint i8* %dest.0.lcssa to i64, !dbg !1736
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64, !dbg !1736
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1736
  %call29 = call %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader* %pfile, i8* nonnull %1, i64 %sub.ptr.sub, i32 1) #9, !dbg !1737
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1738
  %17 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !1738
  %prev30 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %17, i64 0, i32 9, !dbg !1740
  %18 = load %struct.cpp_buffer*, %struct.cpp_buffer** %prev30, align 8, !dbg !1740
  %tobool = icmp eq %struct.cpp_buffer* %18, null, !dbg !1741
  br i1 %tobool, label %if.end36, label %if.then31, !dbg !1742

if.then31:                                        ; preds = %while.end
  %file = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %18, i64 0, i32 10, !dbg !1743
  %19 = bitcast %struct._cpp_file** %file to i64*, !dbg !1743
  %20 = load i64, i64* %19, align 8, !dbg !1743
  %file35 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %17, i64 0, i32 10, !dbg !1744
  %21 = bitcast %struct._cpp_file** %file35 to i64*, !dbg !1745
  store i64 %20, i64* %21, align 8, !dbg !1745
  br label %if.end36, !dbg !1746

if.end36:                                         ; preds = %while.end, %if.then31
  call fastcc void @start_directive(%struct.cpp_reader* %pfile) #9, !dbg !1747
  call void @_cpp_clean_line(%struct.cpp_reader* %pfile) #8, !dbg !1748
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !1749
  %22 = bitcast %struct.directive** %directive to i64*, !dbg !1749
  %23 = load i64, i64* %22, align 8, !dbg !1749
  store %struct.directive* getelementptr inbounds ([19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 11), %struct.directive** %directive, align 8, !dbg !1750
  call void @do_pragma(%struct.cpp_reader* %pfile) #9, !dbg !1751
  call fastcc void @end_directive(%struct.cpp_reader* %pfile, i32 1) #9, !dbg !1752
  store i64 %23, i64* %22, align 8, !dbg !1753
  %type = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 11, i32 1, !dbg !1754
  %bf.load = load i8, i8* %type, align 4, !dbg !1754
  %cmp39 = icmp eq i8 %bf.load, 70, !dbg !1755
  call void @llvm.dbg.value(metadata i32 1, metadata !1689, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i32 1, metadata !1689, metadata !DIExpression()), !dbg !1694
  br i1 %cmp39, label %if.then41, label %if.else, !dbg !1756

if.then41:                                        ; preds = %if.end36
  call void @llvm.dbg.value(metadata i32 50, metadata !1691, metadata !DIExpression()), !dbg !1757
  %call43 = call i8* @xmalloc(i64 1200) #8, !dbg !1758
  %24 = bitcast i8* %call43 to %struct.cpp_token*, !dbg !1758
  call void @llvm.dbg.value(metadata %struct.cpp_token* %24, metadata !1688, metadata !DIExpression()), !dbg !1694
  %directive_result45 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 11, !dbg !1759
  %25 = bitcast %struct.cpp_token* %directive_result45 to i8*, !dbg !1759
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call43, i8* nonnull align 8 %25, i64 24, i1 false), !dbg !1759
  br label %do.body, !dbg !1760

do.body:                                          ; preds = %if.end53, %if.then41
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end53 ], [ 1, %if.then41 ], !dbg !1757
  %26 = phi i8* [ %30, %if.end53 ], [ %call43, %if.then41 ], !dbg !1757
  %toks.0 = phi %struct.cpp_token* [ %toks.1, %if.end53 ], [ %24, %if.then41 ], !dbg !1757
  %maxcount.0 = phi i32 [ %maxcount.1, %if.end53 ], [ 50, %if.then41 ], !dbg !1757
  call void @llvm.dbg.value(metadata i32 %maxcount.0, metadata !1691, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1689, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata %struct.cpp_token* %toks.0, metadata !1688, metadata !DIExpression()), !dbg !1694
  %27 = zext i32 %maxcount.0 to i64, !dbg !1761
  %cmp46 = icmp eq i64 %indvars.iv, %27, !dbg !1761
  br i1 %cmp46, label %if.then48, label %if.end53, !dbg !1764

if.then48:                                        ; preds = %do.body
  %28 = trunc i64 %indvars.iv to i32, !dbg !1765
  %mul49 = mul nsw i32 %28, 3, !dbg !1765
  %div = sdiv i32 %mul49, 2, !dbg !1767
  call void @llvm.dbg.value(metadata i32 %div, metadata !1691, metadata !DIExpression()), !dbg !1757
  %conv50 = sext i32 %div to i64, !dbg !1768
  %mul51 = mul nsw i64 %conv50, 24, !dbg !1768
  %call52 = call i8* @xrealloc(i8* %26, i64 %mul51) #8, !dbg !1768
  %29 = bitcast i8* %call52 to %struct.cpp_token*, !dbg !1768
  call void @llvm.dbg.value(metadata %struct.cpp_token* %29, metadata !1688, metadata !DIExpression()), !dbg !1694
  br label %if.end53, !dbg !1769

if.end53:                                         ; preds = %if.then48, %do.body
  %30 = phi i8* [ %call52, %if.then48 ], [ %26, %do.body ], !dbg !1757
  %toks.1 = phi %struct.cpp_token* [ %29, %if.then48 ], [ %toks.0, %do.body ], !dbg !1757
  %maxcount.1 = phi i32 [ %div, %if.then48 ], [ %maxcount.0, %do.body ], !dbg !1757
  call void @llvm.dbg.value(metadata i32 %maxcount.1, metadata !1691, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata %struct.cpp_token* %toks.1, metadata !1688, metadata !DIExpression()), !dbg !1694
  %arrayidx54 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %toks.1, i64 %indvars.iv, !dbg !1770
  %call55 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !1771
  %31 = bitcast %struct.cpp_token* %arrayidx54 to i8*, !dbg !1772
  %32 = bitcast %struct.cpp_token* %call55 to i8*, !dbg !1772
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %31, i8* align 8 %32, i64 24, i1 false), !dbg !1772
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !1773
  call void @llvm.dbg.value(metadata i32 undef, metadata !1689, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1694
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %toks.1, i64 %indvars.iv, i32 2, !dbg !1774
  %33 = load i16, i16* %flags, align 2, !dbg !1775
  %34 = or i16 %33, 32, !dbg !1775
  store i16 %34, i16* %flags, align 2, !dbg !1775
  %type63 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %toks.1, i64 %indvars.iv, i32 1, !dbg !1776
  %bf.load64 = load i8, i8* %type63, align 4, !dbg !1776
  %cmp66 = icmp eq i8 %bf.load64, 71, !dbg !1777
  br i1 %cmp66, label %if.end77.loopexit, label %do.body, !dbg !1778, !llvm.loop !1779

if.else:                                          ; preds = %if.end36
  %call68 = call i8* @xmalloc(i64 24) #8, !dbg !1781
  %35 = bitcast i8* %call68 to %struct.cpp_token*, !dbg !1781
  call void @llvm.dbg.value(metadata %struct.cpp_token* %35, metadata !1688, metadata !DIExpression()), !dbg !1694
  %directive_result70 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 11, !dbg !1783
  %36 = bitcast %struct.cpp_token* %directive_result70 to i8*, !dbg !1783
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call68, i8* nonnull align 8 %36, i64 24, i1 false), !dbg !1783
  %line_change = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 0, !dbg !1784
  %37 = load void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.cpp_token*, i32)** %line_change, align 8, !dbg !1784
  %tobool71 = icmp eq void (%struct.cpp_reader*, %struct.cpp_token*, i32)* %37, null, !dbg !1786
  br i1 %tobool71, label %if.end77, label %if.then72, !dbg !1787

if.then72:                                        ; preds = %if.else
  %38 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !1788
  call void %37(%struct.cpp_reader* %pfile, %struct.cpp_token* %38, i32 0) #8, !dbg !1789
  br label %if.end77, !dbg !1789

if.end77.loopexit:                                ; preds = %if.end53
  %toks.1.lcssa = phi %struct.cpp_token* [ %toks.1, %if.end53 ], !dbg !1757
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %if.end53 ], !dbg !1773
  call void @llvm.dbg.value(metadata %struct.cpp_token* %toks.1.lcssa, metadata !1688, metadata !DIExpression()), !dbg !1694
  %39 = trunc i64 %indvars.iv.next.lcssa to i32, !dbg !1694
  call void @llvm.dbg.value(metadata %struct.cpp_token* %toks.1.lcssa, metadata !1688, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata %struct.cpp_token* %toks.1.lcssa, metadata !1688, metadata !DIExpression()), !dbg !1694
  br label %if.end77, !dbg !1790

if.end77:                                         ; preds = %if.end77.loopexit, %if.else, %if.then72
  %toks.2 = phi %struct.cpp_token* [ %35, %if.then72 ], [ %35, %if.else ], [ %toks.1.lcssa, %if.end77.loopexit ], !dbg !1791
  %count.1 = phi i32 [ 1, %if.then72 ], [ 1, %if.else ], [ %39, %if.end77.loopexit ], !dbg !1791
  call void @llvm.dbg.value(metadata i32 %count.1, metadata !1689, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata %struct.cpp_token* %toks.2, metadata !1688, metadata !DIExpression()), !dbg !1694
  %40 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !1790
  %file79 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %40, i64 0, i32 10, !dbg !1792
  store %struct._cpp_file* null, %struct._cpp_file** %file79, align 8, !dbg !1793
  call void @_cpp_pop_buffer(%struct.cpp_reader* %pfile) #9, !dbg !1794
  %41 = load i8*, i8** %13, align 8, !dbg !1795
  call void @free(i8* %41) #8, !dbg !1795
  store i64 %8, i64* %7, align 8, !dbg !1796
  store i64 %10, i64* %9, align 8, !dbg !1797
  store i64 %12, i64* %11, align 8, !dbg !1798
  call void @_cpp_push_token_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* null, %struct.cpp_token* %toks.2, i32 %count.1) #8, !dbg !1799
  ret void, !dbg !1800
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_cpp_test_assertion(%struct.cpp_reader* %pfile, i32* %value) local_unnamed_addr #3 !dbg !1801 {
entry:
  %answer = alloca %struct.answer*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1806, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32* %value, metadata !1807, metadata !DIExpression()), !dbg !1810
  %0 = bitcast %struct.answer** %answer to i8*, !dbg !1811
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !1811
  call void @llvm.dbg.value(metadata %struct.answer** %answer, metadata !1808, metadata !DIExpression(DW_OP_deref)), !dbg !1810
  %call = call fastcc %struct.cpp_hashnode* @parse_assertion(%struct.cpp_reader* %pfile, %struct.answer** nonnull %answer, i32 4) #9, !dbg !1812
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call, metadata !1809, metadata !DIExpression()), !dbg !1810
  store i32 0, i32* %value, align 4, !dbg !1813
  %tobool = icmp eq %struct.cpp_hashnode* %call, null, !dbg !1814
  br i1 %tobool, label %if.else, label %if.then, !dbg !1816

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 3, !dbg !1817
  %bf.load = load i16, i16* %type, align 2, !dbg !1817
  %bf.clear = and i16 %bf.load, 63, !dbg !1817
  %cmp = icmp eq i16 %bf.clear, 2, !dbg !1818
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1819

land.rhs:                                         ; preds = %if.then
  %1 = load %struct.answer*, %struct.answer** %answer, align 8, !dbg !1820
  call void @llvm.dbg.value(metadata %struct.answer* %1, metadata !1808, metadata !DIExpression()), !dbg !1810
  %cmp1 = icmp eq %struct.answer* %1, null, !dbg !1821
  br i1 %cmp1, label %land.end, label %lor.rhs, !dbg !1822

lor.rhs:                                          ; preds = %land.rhs
  call void @llvm.dbg.value(metadata %struct.answer* %1, metadata !1808, metadata !DIExpression()), !dbg !1810
  %call2 = call fastcc %struct.answer** @find_answer(%struct.cpp_hashnode* nonnull %call, %struct.answer* nonnull %1) #9, !dbg !1823
  %2 = load %struct.answer*, %struct.answer** %call2, align 8, !dbg !1824
  %cmp3 = icmp ne %struct.answer* %2, null, !dbg !1825
  %phitmp = zext i1 %cmp3 to i32, !dbg !1822
  br label %land.end, !dbg !1822

land.end:                                         ; preds = %land.rhs, %lor.rhs, %if.then
  %3 = phi i32 [ 0, %if.then ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  store i32 %3, i32* %value, align 4, !dbg !1826
  br label %if.end9, !dbg !1827

if.else:                                          ; preds = %entry
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !1828
  %4 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !1828
  %type4 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %4, i64 -1, i32 1, !dbg !1830
  %bf.load5 = load i8, i8* %type4, align 4, !dbg !1830
  %cmp7 = icmp eq i8 %bf.load5, 22, !dbg !1831
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1832

if.then8:                                         ; preds = %if.else
  call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 1) #8, !dbg !1833
  br label %if.end9, !dbg !1833

if.end9:                                          ; preds = %if.else, %if.then8, %land.end
  %conv = zext i1 %tobool to i32, !dbg !1834
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !1835
  ret i32 %conv, !dbg !1836
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_hashnode* @parse_assertion(%struct.cpp_reader* %pfile, %struct.answer** %answerp, i32 %type) unnamed_addr #3 !dbg !1837 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1842, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata %struct.answer** %answerp, metadata !1843, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 %type, metadata !1844, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* null, metadata !1845, metadata !DIExpression()), !dbg !1853
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !1854
  %0 = load i8, i8* %prevent_expansion, align 8, !dbg !1855
  %inc = add i8 %0, 1, !dbg !1855
  store i8 %inc, i8* %prevent_expansion, align 8, !dbg !1855
  store %struct.answer* null, %struct.answer** %answerp, align 8, !dbg !1856
  %call = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !1857
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !1846, metadata !DIExpression()), !dbg !1853
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !1858
  %bf.load = load i8, i8* %type1, align 4, !dbg !1858
  %cmp = icmp eq i8 %bf.load, 22, !dbg !1859
  br i1 %cmp, label %if.then, label %if.else, !dbg !1860

if.then:                                          ; preds = %entry
  %call2 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.79, i64 0, i64 0)) #8, !dbg !1861
  br label %if.end25, !dbg !1861

if.else:                                          ; preds = %entry
  %cmp6 = icmp eq i8 %bf.load, 53, !dbg !1862
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 0, !dbg !1863
  %1 = load i32, i32* %src_loc, align 8, !dbg !1863
  br i1 %cmp6, label %if.else9, label %if.then7, !dbg !1864

if.then7:                                         ; preds = %if.else
  %call8 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %1, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.80, i64 0, i64 0)) #8, !dbg !1865
  br label %if.end25, !dbg !1865

if.else9:                                         ; preds = %if.else
  %call11 = tail call fastcc i32 @parse_answer(%struct.cpp_reader* %pfile, %struct.answer** %answerp, i32 %type, i32 %1) #9, !dbg !1866
  %cmp12 = icmp eq i32 %call11, 0, !dbg !1867
  br i1 %cmp12, label %if.then13, label %if.end25, !dbg !1868

if.then13:                                        ; preds = %if.else9
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, !dbg !1869
  %node14 = bitcast %union.cpp_token_u* %val to %struct.cpp_hashnode**, !dbg !1869
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node14, align 8, !dbg !1869
  %len15 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i64 0, i32 0, i32 1, !dbg !1869
  %3 = load i32, i32* %len15, align 8, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %3, metadata !1847, metadata !DIExpression()), !dbg !1870
  %add = add i32 %3, 1, !dbg !1871
  %conv = zext i32 %add to i64, !dbg !1871
  %4 = alloca i8, i64 %conv, align 16, !dbg !1871
  call void @llvm.dbg.value(metadata i8* %4, metadata !1852, metadata !DIExpression()), !dbg !1870
  store i8 35, i8* %4, align 16, !dbg !1872
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1873
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i64 0, i32 0, i32 0, !dbg !1874
  %5 = load i8*, i8** %str, align 8, !dbg !1874
  %conv20 = zext i32 %3 to i64, !dbg !1875
  %call21 = call i8* @memcpy(i8* nonnull %add.ptr, i8* %5, i64 %conv20) #8, !dbg !1876
  %call23 = call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %pfile, i8* nonnull %4, i32 %add) #8, !dbg !1877
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call23, metadata !1845, metadata !DIExpression()), !dbg !1853
  br label %if.end25, !dbg !1878

if.end25:                                         ; preds = %if.then7, %if.then13, %if.else9, %if.then
  %result.2 = phi %struct.cpp_hashnode* [ null, %if.then ], [ null, %if.then7 ], [ %call23, %if.then13 ], [ null, %if.else9 ], !dbg !1879
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %result.2, metadata !1845, metadata !DIExpression()), !dbg !1853
  %6 = load i8, i8* %prevent_expansion, align 8, !dbg !1880
  %dec = add i8 %6, -1, !dbg !1880
  store i8 %dec, i8* %prevent_expansion, align 8, !dbg !1880
  ret %struct.cpp_hashnode* %result.2, !dbg !1881
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.answer** @find_answer(%struct.cpp_hashnode* %node, %struct.answer* %candidate) unnamed_addr #3 !dbg !1882 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !1888, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata %struct.answer* %candidate, metadata !1889, metadata !DIExpression()), !dbg !1896
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 4, !dbg !1897
  %answers = bitcast %union._cpp_hashnode_value* %value to %struct.answer**, !dbg !1898
  call void @llvm.dbg.value(metadata %struct.answer** %answers, metadata !1891, metadata !DIExpression()), !dbg !1896
  %count1 = getelementptr inbounds %struct.answer, %struct.answer* %candidate, i64 0, i32 1, !dbg !1899
  br label %for.cond, !dbg !1901

for.cond:                                         ; preds = %for.inc16, %entry
  %result.0 = phi %struct.answer** [ %answers, %entry ], [ %next, %for.inc16 ], !dbg !1902
  call void @llvm.dbg.value(metadata %struct.answer** %result.0, metadata !1891, metadata !DIExpression()), !dbg !1896
  %0 = load %struct.answer*, %struct.answer** %result.0, align 8, !dbg !1903
  %tobool = icmp eq %struct.answer* %0, null, !dbg !1904
  br i1 %tobool, label %for.end17, label %for.body, !dbg !1904

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.answer* %0, metadata !1892, metadata !DIExpression()), !dbg !1905
  %count = getelementptr inbounds %struct.answer, %struct.answer* %0, i64 0, i32 1, !dbg !1906
  %1 = load i32, i32* %count, align 8, !dbg !1906
  %2 = load i32, i32* %count1, align 8, !dbg !1907
  %cmp = icmp eq i32 %1, %2, !dbg !1908
  br i1 %cmp, label %for.cond2.preheader, label %if.end15, !dbg !1909

for.cond2.preheader:                              ; preds = %for.body
  br label %for.cond2, !dbg !1910

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !1913
  %3 = phi i32 [ %1, %for.cond2.preheader ], [ %.pre, %for.inc ], !dbg !1913
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1890, metadata !DIExpression()), !dbg !1896
  %4 = zext i32 %3 to i64, !dbg !1915
  %cmp4 = icmp ult i64 %indvars.iv, %4, !dbg !1915
  br i1 %cmp4, label %for.body5, label %for.end.loopexit, !dbg !1910

for.body5:                                        ; preds = %for.cond2
  %arrayidx = getelementptr inbounds %struct.answer, %struct.answer* %0, i64 0, i32 2, i64 %indvars.iv, !dbg !1916
  %arrayidx8 = getelementptr inbounds %struct.answer, %struct.answer* %candidate, i64 0, i32 2, i64 %indvars.iv, !dbg !1918
  %call = tail call i32 @_cpp_equiv_tokens(%struct.cpp_token* nonnull %arrayidx, %struct.cpp_token* nonnull %arrayidx8) #8, !dbg !1919
  %tobool9 = icmp eq i32 %call, 0, !dbg !1919
  br i1 %tobool9, label %for.body5.for.end_crit_edge, label %for.inc, !dbg !1920

for.body5.for.end_crit_edge:                      ; preds = %for.body5
  %indvars.iv.lcssa6 = phi i64 [ %indvars.iv, %for.body5 ], !dbg !1913
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa6, metadata !1890, metadata !DIExpression()), !dbg !1896
  %.pre1 = load i32, i32* %count, align 8, !dbg !1921
  br label %for.end, !dbg !1920

for.inc:                                          ; preds = %for.body5
  %.pre = load i32, i32* %count, align 8, !dbg !1913
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1923
  br label %for.cond2, !dbg !1924, !llvm.loop !1925

for.end.loopexit:                                 ; preds = %for.cond2
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.cond2 ], !dbg !1913
  %.lcssa = phi i32 [ %3, %for.cond2 ], !dbg !1913
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !1890, metadata !DIExpression()), !dbg !1896
  br label %for.end, !dbg !1927

for.end:                                          ; preds = %for.end.loopexit, %for.body5.for.end_crit_edge
  %indvars.iv7 = phi i64 [ %indvars.iv.lcssa6, %for.body5.for.end_crit_edge ], [ %indvars.iv.lcssa, %for.end.loopexit ]
  %5 = phi i32 [ %.pre1, %for.body5.for.end_crit_edge ], [ %.lcssa, %for.end.loopexit ], !dbg !1921
  %i.03 = trunc i64 %indvars.iv7 to i32, !dbg !1896
  call void @llvm.dbg.value(metadata i32 %i.03, metadata !1890, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i32 %i.03, metadata !1890, metadata !DIExpression()), !dbg !1896
  %cmp12 = icmp eq i32 %5, %i.03, !dbg !1927
  br i1 %cmp12, label %cleanup, label %if.end15, !dbg !1928

if.end15:                                         ; preds = %for.end, %for.body
  br label %cleanup, !dbg !1929

cleanup:                                          ; preds = %for.end, %if.end15
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end15 ], [ false, %for.end ]
  br i1 %cleanup.dest.slot.0, label %for.inc16, label %for.end17

for.inc16:                                        ; preds = %cleanup
  %6 = load %struct.answer*, %struct.answer** %result.0, align 8, !dbg !1930
  %next = getelementptr inbounds %struct.answer, %struct.answer* %6, i64 0, i32 0, !dbg !1931
  call void @llvm.dbg.value(metadata %struct.answer** %next, metadata !1891, metadata !DIExpression()), !dbg !1896
  br label %for.cond, !dbg !1932, !llvm.loop !1933

for.end17:                                        ; preds = %for.cond, %cleanup
  %result.0.lcssa = phi %struct.answer** [ %result.0, %for.cond ], [ %result.0, %cleanup ], !dbg !1902
  call void @llvm.dbg.value(metadata %struct.answer** %result.0.lcssa, metadata !1891, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata %struct.answer** %result.0.lcssa, metadata !1891, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata %struct.answer** %result.0.lcssa, metadata !1891, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata %struct.answer** %result.0.lcssa, metadata !1891, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata %struct.answer** %result.0.lcssa, metadata !1891, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata %struct.answer** %result.0.lcssa, metadata !1891, metadata !DIExpression()), !dbg !1896
  ret %struct.answer** %result.0.lcssa, !dbg !1935
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_define(%struct.cpp_reader* %pfile, i8* %str) local_unnamed_addr #3 !dbg !1936 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1938, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8* %str, metadata !1939, metadata !DIExpression()), !dbg !1943
  %call = tail call i64 @strlen(i8* %str) #10, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %call, metadata !1942, metadata !DIExpression()), !dbg !1943
  %add = add i64 %call, 3, !dbg !1945
  %0 = alloca i8, i64 %add, align 16, !dbg !1945
  call void @llvm.dbg.value(metadata i8* %0, metadata !1940, metadata !DIExpression()), !dbg !1943
  %call1 = call i8* @memcpy(i8* nonnull %0, i8* %str, i64 %call) #8, !dbg !1946
  %call2 = call i8* @strchr(i8* %str, i32 61) #10, !dbg !1947
  call void @llvm.dbg.value(metadata i8* %call2, metadata !1941, metadata !DIExpression()), !dbg !1943
  %tobool = icmp eq i8* %call2, null, !dbg !1948
  br i1 %tobool, label %if.else, label %if.then, !dbg !1950

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %call2 to i64, !dbg !1951
  %sub.ptr.rhs.cast = ptrtoint i8* %str to i64, !dbg !1951
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1951
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %sub.ptr.sub, !dbg !1952
  store i8 32, i8* %arrayidx, align 1, !dbg !1953
  br label %if.end, !dbg !1952

if.else:                                          ; preds = %entry
  %inc = add i64 %call, 1, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1942, metadata !DIExpression()), !dbg !1943
  %arrayidx3 = getelementptr inbounds i8, i8* %0, i64 %call, !dbg !1956
  store i8 32, i8* %arrayidx3, align 1, !dbg !1957
  %inc4 = add i64 %call, 2, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %inc4, metadata !1942, metadata !DIExpression()), !dbg !1943
  %arrayidx5 = getelementptr inbounds i8, i8* %0, i64 %inc, !dbg !1959
  store i8 49, i8* %arrayidx5, align 1, !dbg !1960
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %count.0 = phi i64 [ %call, %if.then ], [ %inc4, %if.else ], !dbg !1943
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !1942, metadata !DIExpression()), !dbg !1943
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %count.0, !dbg !1961
  store i8 10, i8* %arrayidx6, align 1, !dbg !1962
  call fastcc void @run_directive(%struct.cpp_reader* %pfile, i32 0, i8* nonnull %0, i64 %count.0) #9, !dbg !1963
  ret void, !dbg !1964
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @run_directive(%struct.cpp_reader* %pfile, i32 %dir_no, i8* %buf, i64 %count) unnamed_addr #3 !dbg !1965 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1969, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 %dir_no, metadata !1970, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %buf, metadata !1971, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %count, metadata !1972, metadata !DIExpression()), !dbg !1973
  %call = tail call %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader* %pfile, i8* %buf, i64 %count, i32 1) #9, !dbg !1974
  tail call fastcc void @start_directive(%struct.cpp_reader* %pfile) #9, !dbg !1975
  tail call void @_cpp_clean_line(%struct.cpp_reader* %pfile) #8, !dbg !1976
  %idxprom = sext i32 %dir_no to i64, !dbg !1977
  %arrayidx = getelementptr inbounds [19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 %idxprom, !dbg !1977
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !1978
  store %struct.directive* %arrayidx, %struct.directive** %directive, align 8, !dbg !1979
  %traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !1980
  %0 = load i8, i8* %traditional, align 2, !dbg !1980
  %tobool = icmp eq i8 %0, 0, !dbg !1980
  br i1 %tobool, label %if.end, label %if.then, !dbg !1982

if.then:                                          ; preds = %entry
  tail call fastcc void @prepare_directive_trad(%struct.cpp_reader* %pfile) #9, !dbg !1983
  %.pre = load %struct.directive*, %struct.directive** %directive, align 8, !dbg !1984
  br label %if.end, !dbg !1983

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct.directive* [ %arrayidx, %entry ], [ %.pre, %if.then ], !dbg !1984
  %handler = getelementptr inbounds %struct.directive, %struct.directive* %1, i64 0, i32 0, !dbg !1985
  %2 = load void (%struct.cpp_reader*)*, void (%struct.cpp_reader*)** %handler, align 8, !dbg !1985
  tail call void %2(%struct.cpp_reader* %pfile) #8, !dbg !1986
  tail call fastcc void @end_directive(%struct.cpp_reader* %pfile, i32 1) #9, !dbg !1987
  tail call void @_cpp_pop_buffer(%struct.cpp_reader* %pfile) #9, !dbg !1988
  ret void, !dbg !1989
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_define_formatted(%struct.cpp_reader* %pfile, i8* %fmt, ...) local_unnamed_addr #3 !dbg !1990 {
entry:
  %ptr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1994, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !1995, metadata !DIExpression()), !dbg !1998
  %0 = bitcast i8** %ptr to i8*, !dbg !1999
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !1999
  call void @llvm.dbg.value(metadata i8* null, metadata !1996, metadata !DIExpression()), !dbg !1998
  store i8* null, i8** %ptr, align 8, !dbg !2000
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2001
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2001
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !1997, metadata !DIExpression()), !dbg !2002
  call void @llvm.va_start(i8* %1), !dbg !2003
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !2004
  call void @llvm.dbg.value(metadata i8** %ptr, metadata !1996, metadata !DIExpression(DW_OP_deref)), !dbg !1998
  %call = call i32 @vasprintf(i8** nonnull %ptr, i8* %fmt, %struct.__va_list_tag* nonnull %arraydecay2) #8, !dbg !2005
  call void @llvm.va_end(i8* nonnull %1), !dbg !2006
  %2 = load i8*, i8** %ptr, align 8, !dbg !2007
  call void @llvm.dbg.value(metadata i8* %2, metadata !1996, metadata !DIExpression()), !dbg !1998
  call void @cpp_define(%struct.cpp_reader* %pfile, i8* %2) #9, !dbg !2008
  %3 = load i8*, i8** %ptr, align 8, !dbg !2009
  call void @llvm.dbg.value(metadata i8* %3, metadata !1996, metadata !DIExpression()), !dbg !1998
  call void @free(i8* %3) #8, !dbg !2010
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2011
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2011
  ret void, !dbg !2011
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare dso_local i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_define_builtin(%struct.cpp_reader* %pfile, i8* %str) local_unnamed_addr #3 !dbg !2012 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2014, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8* %str, metadata !2015, metadata !DIExpression()), !dbg !2018
  %call = tail call i64 @strlen(i8* %str) #10, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %call, metadata !2016, metadata !DIExpression()), !dbg !2018
  %add = add i64 %call, 1, !dbg !2020
  %0 = alloca i8, i64 %add, align 16, !dbg !2020
  call void @llvm.dbg.value(metadata i8* %0, metadata !2017, metadata !DIExpression()), !dbg !2018
  %call1 = call i8* @memcpy(i8* nonnull %0, i8* %str, i64 %call) #8, !dbg !2021
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %call, !dbg !2022
  store i8 10, i8* %arrayidx, align 1, !dbg !2023
  call fastcc void @run_directive(%struct.cpp_reader* %pfile, i32 0, i8* nonnull %0, i64 %call) #9, !dbg !2024
  ret void, !dbg !2025
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_undef(%struct.cpp_reader* %pfile, i8* %macro) local_unnamed_addr #3 !dbg !2026 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2028, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8* %macro, metadata !2029, metadata !DIExpression()), !dbg !2032
  %call = tail call i64 @strlen(i8* %macro) #10, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %call, metadata !2030, metadata !DIExpression()), !dbg !2032
  %add = add i64 %call, 1, !dbg !2034
  %0 = alloca i8, i64 %add, align 16, !dbg !2034
  call void @llvm.dbg.value(metadata i8* %0, metadata !2031, metadata !DIExpression()), !dbg !2032
  %call1 = call i8* @memcpy(i8* nonnull %0, i8* %macro, i64 %call) #8, !dbg !2035
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %call, !dbg !2036
  store i8 10, i8* %arrayidx, align 1, !dbg !2037
  call fastcc void @run_directive(%struct.cpp_reader* %pfile, i32 7, i8* nonnull %0, i64 %call) #9, !dbg !2038
  ret void, !dbg !2039
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_macro* @cpp_push_definition(%struct.cpp_reader* %pfile, i8* %str) local_unnamed_addr #3 !dbg !2040 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2044, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8* %str, metadata !2045, metadata !DIExpression()), !dbg !2047
  %call = tail call %struct.cpp_hashnode* @_cpp_lex_identifier(%struct.cpp_reader* %pfile, i8* %str) #8, !dbg !2048
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call, metadata !2046, metadata !DIExpression()), !dbg !2047
  %tobool = icmp eq %struct.cpp_hashnode* %call, null, !dbg !2049
  br i1 %tobool, label %cleanup, label %land.lhs.true, !dbg !2051

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 3, !dbg !2052
  %bf.load = load i16, i16* %type, align 2, !dbg !2052
  %bf.clear = and i16 %bf.load, 63, !dbg !2052
  %cmp = icmp eq i16 %bf.clear, 1, !dbg !2053
  br i1 %cmp, label %if.then, label %cleanup, !dbg !2054

if.then:                                          ; preds = %land.lhs.true
  %macro = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 4, i32 0, !dbg !2055
  %0 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8, !dbg !2055
  br label %cleanup, !dbg !2056

cleanup:                                          ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi %struct.cpp_macro* [ %0, %if.then ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !2057
  ret %struct.cpp_macro* %retval.0, !dbg !2058
}

declare dso_local %struct.cpp_hashnode* @_cpp_lex_identifier(%struct.cpp_reader*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cpp_pop_definition(%struct.cpp_reader* %pfile, i8* %str, %struct.cpp_macro* %dfn) local_unnamed_addr #3 !dbg !2059 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2063, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i8* %str, metadata !2064, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %dfn, metadata !2065, metadata !DIExpression()), !dbg !2067
  %call = tail call %struct.cpp_hashnode* @_cpp_lex_identifier(%struct.cpp_reader* %pfile, i8* %str) #8, !dbg !2068
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call, metadata !2066, metadata !DIExpression()), !dbg !2067
  %cmp = icmp eq %struct.cpp_hashnode* %call, null, !dbg !2069
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !2071

if.end:                                           ; preds = %entry
  %before_define = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 15, !dbg !2072
  %0 = load void (%struct.cpp_reader*)*, void (%struct.cpp_reader*)** %before_define, align 8, !dbg !2072
  %tobool = icmp eq void (%struct.cpp_reader*)* %0, null, !dbg !2074
  br i1 %tobool, label %if.end4, label %if.then1, !dbg !2075

if.then1:                                         ; preds = %if.end
  tail call void %0(%struct.cpp_reader* %pfile) #8, !dbg !2076
  br label %if.end4, !dbg !2076

if.end4:                                          ; preds = %if.end, %if.then1
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 3, !dbg !2077
  %bf.load = load i16, i16* %type, align 2, !dbg !2077
  %bf.clear = and i16 %bf.load, 63, !dbg !2077
  %cmp5 = icmp eq i16 %bf.clear, 1, !dbg !2079
  br i1 %cmp5, label %if.then6, label %if.end17, !dbg !2080

if.then6:                                         ; preds = %if.end4
  %undef = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 5, !dbg !2081
  %1 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %undef, align 8, !dbg !2081
  %tobool8 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %1, null, !dbg !2084
  br i1 %tobool8, label %if.end12, label %if.then9, !dbg !2085

if.then9:                                         ; preds = %if.then6
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !2086
  %2 = load i32, i32* %directive_line, align 8, !dbg !2086
  tail call void %1(%struct.cpp_reader* %pfile, i32 %2, %struct.cpp_hashnode* nonnull %call) #8, !dbg !2087
  br label %if.end12, !dbg !2087

if.end12:                                         ; preds = %if.then6, %if.then9
  %warn_unused_macros = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 28, !dbg !2088
  %3 = load i8, i8* %warn_unused_macros, align 2, !dbg !2088
  %tobool13 = icmp eq i8 %3, 0, !dbg !2088
  br i1 %tobool13, label %if.end17, label %if.then14, !dbg !2090

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 @_cpp_warn_if_unused_macro(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* nonnull %call, i8* null) #8, !dbg !2091
  br label %if.end17, !dbg !2091

if.end17:                                         ; preds = %if.end12, %if.then14, %if.end4
  %bf.load19 = load i16, i16* %type, align 2, !dbg !2092
  %bf.clear20 = and i16 %bf.load19, 63, !dbg !2092
  %cmp22 = icmp eq i16 %bf.clear20, 0, !dbg !2094
  br i1 %cmp22, label %if.end24, label %if.then23, !dbg !2095

if.then23:                                        ; preds = %if.end17
  tail call void @_cpp_free_definition(%struct.cpp_hashnode* nonnull %call) #8, !dbg !2096
  br label %if.end24, !dbg !2096

if.end24:                                         ; preds = %if.end17, %if.then23
  %tobool25 = icmp eq %struct.cpp_macro* %dfn, null, !dbg !2097
  br i1 %tobool25, label %cleanup.cont, label %if.then26, !dbg !2099

if.then26:                                        ; preds = %if.end24
  %bf.load28 = load i16, i16* %type, align 2, !dbg !2100
  %bf.clear29 = and i16 %bf.load28, -64, !dbg !2100
  %bf.set = or i16 %bf.clear29, 1, !dbg !2100
  store i16 %bf.set, i16* %type, align 2, !dbg !2100
  %macro = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 4, i32 0, !dbg !2102
  store %struct.cpp_macro* %dfn, %struct.cpp_macro** %macro, align 8, !dbg !2103
  %str30 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 0, i32 0, !dbg !2104
  %4 = load i8*, i8** %str30, align 8, !dbg !2104
  %call31 = tail call fastcc i32 @ustrncmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i64 7) #9, !dbg !2106
  %tobool32 = icmp eq i32 %call31, 0, !dbg !2106
  br i1 %tobool32, label %if.then33, label %if.end39, !dbg !2107

if.then33:                                        ; preds = %if.then26
  %bf.load34 = load i16, i16* %type, align 2, !dbg !2108
  %bf.lshr = and i16 %bf.load34, -1088, !dbg !2108
  %5 = or i16 %bf.lshr, 1024, !dbg !2108
  %bf.clear37 = and i16 %bf.load34, 63, !dbg !2108
  %bf.set38 = or i16 %bf.clear37, %5, !dbg !2108
  store i16 %bf.set38, i16* %type, align 2, !dbg !2108
  br label %if.end39, !dbg !2109

if.end39:                                         ; preds = %if.then26, %if.then33
  %define = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 4, !dbg !2110
  %6 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %define, align 8, !dbg !2110
  %tobool41 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %6, null, !dbg !2112
  br i1 %tobool41, label %cleanup.cont, label %if.then42, !dbg !2113

if.then42:                                        ; preds = %if.end39
  %directive_line45 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !2114
  %7 = load i32, i32* %directive_line45, align 8, !dbg !2114
  tail call void %6(%struct.cpp_reader* %pfile, i32 %7, %struct.cpp_hashnode* nonnull %call) #8, !dbg !2115
  br label %cleanup.cont, !dbg !2115

cleanup.cont:                                     ; preds = %if.end39, %if.end24, %entry, %if.then42
  ret void, !dbg !2116
}

declare dso_local i32 @_cpp_warn_if_unused_macro(%struct.cpp_reader*, %struct.cpp_hashnode*, i8*) local_unnamed_addr #2

declare dso_local void @_cpp_free_definition(%struct.cpp_hashnode*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ustrncmp(i8* %s1, i8* %s2, i64 %n) unnamed_addr #0 !dbg !2117 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !2121, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), metadata !2122, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i64 7, metadata !2123, metadata !DIExpression()), !dbg !2124
  %call = tail call i32 @strncmp(i8* %s1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i64 7) #10, !dbg !2125
  ret i32 %call, !dbg !2126
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_assert(%struct.cpp_reader* %pfile, i8* %str) local_unnamed_addr #3 !dbg !2127 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2129, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8* %str, metadata !2130, metadata !DIExpression()), !dbg !2131
  tail call fastcc void @handle_assertion(%struct.cpp_reader* %pfile, i8* %str, i32 16) #9, !dbg !2132
  ret void, !dbg !2133
}

; Function Attrs: nounwind uwtable
define internal fastcc void @handle_assertion(%struct.cpp_reader* %pfile, i8* %str, i32 %type) unnamed_addr #3 !dbg !2134 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2138, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8* %str, metadata !2139, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i32 %type, metadata !2140, metadata !DIExpression()), !dbg !2144
  %call = tail call i64 @strlen(i8* %str) #10, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %call, metadata !2141, metadata !DIExpression()), !dbg !2144
  %call1 = tail call i8* @strchr(i8* %str, i32 61) #10, !dbg !2146
  call void @llvm.dbg.value(metadata i8* %call1, metadata !2142, metadata !DIExpression()), !dbg !2144
  %add = add i64 %call, 2, !dbg !2147
  %0 = alloca i8, i64 %add, align 16, !dbg !2147
  call void @llvm.dbg.value(metadata i8* %0, metadata !2143, metadata !DIExpression()), !dbg !2144
  %call2 = call i8* @memcpy(i8* nonnull %0, i8* %str, i64 %call) #8, !dbg !2148
  %tobool = icmp eq i8* %call1, null, !dbg !2149
  br i1 %tobool, label %if.end, label %if.then, !dbg !2151

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint i8* %call1 to i64, !dbg !2152
  %sub.ptr.rhs.cast = ptrtoint i8* %str to i64, !dbg !2152
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2152
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %sub.ptr.sub, !dbg !2154
  store i8 40, i8* %arrayidx, align 1, !dbg !2155
  %inc = add i64 %call, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2141, metadata !DIExpression()), !dbg !2144
  %arrayidx3 = getelementptr inbounds i8, i8* %0, i64 %call, !dbg !2157
  store i8 41, i8* %arrayidx3, align 1, !dbg !2158
  br label %if.end, !dbg !2159

if.end:                                           ; preds = %entry, %if.then
  %count.0 = phi i64 [ %inc, %if.then ], [ %call, %entry ], !dbg !2144
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !2141, metadata !DIExpression()), !dbg !2144
  %arrayidx4 = getelementptr inbounds i8, i8* %0, i64 %count.0, !dbg !2160
  store i8 10, i8* %arrayidx4, align 1, !dbg !2161
  call void @llvm.dbg.value(metadata i8* %0, metadata !2139, metadata !DIExpression()), !dbg !2144
  call fastcc void @run_directive(%struct.cpp_reader* %pfile, i32 %type, i8* nonnull %0, i64 %count.0) #9, !dbg !2162
  ret void, !dbg !2163
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_unassert(%struct.cpp_reader* %pfile, i8* %str) local_unnamed_addr #3 !dbg !2164 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2166, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i8* %str, metadata !2167, metadata !DIExpression()), !dbg !2168
  tail call fastcc void @handle_assertion(%struct.cpp_reader* %pfile, i8* %str, i32 17) #9, !dbg !2169
  ret void, !dbg !2170
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !2171 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2177, metadata !DIExpression()), !dbg !2178
  %opts = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, !dbg !2179
  ret %struct.cpp_options* %opts, !dbg !2180
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_callbacks* @cpp_get_callbacks(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !2181 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2187, metadata !DIExpression()), !dbg !2188
  %cb = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, !dbg !2189
  ret %struct.cpp_callbacks* %cb, !dbg !2190
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_set_callbacks(%struct.cpp_reader* %pfile, %struct.cpp_callbacks* %cb) local_unnamed_addr #3 !dbg !2191 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2195, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata %struct.cpp_callbacks* %cb, metadata !2196, metadata !DIExpression()), !dbg !2197
  %cb1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, !dbg !2198
  %0 = bitcast %struct.cpp_callbacks* %cb1 to i8*, !dbg !2199
  %1 = bitcast %struct.cpp_callbacks* %cb to i8*, !dbg !2199
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* align 8 %1, i64 136, i1 false), !dbg !2199
  ret void, !dbg !2200
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local %struct.deps* @cpp_get_deps(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !2201 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2205, metadata !DIExpression()), !dbg !2206
  %deps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 45, !dbg !2207
  %0 = load %struct.deps*, %struct.deps** %deps, align 8, !dbg !2207
  %tobool = icmp eq %struct.deps* %0, null, !dbg !2209
  br i1 %tobool, label %if.then, label %if.end, !dbg !2210

if.then:                                          ; preds = %entry
  %call = tail call %struct.deps* @deps_init() #8, !dbg !2211
  store %struct.deps* %call, %struct.deps** %deps, align 8, !dbg !2212
  br label %if.end, !dbg !2213

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct.deps* [ %0, %entry ], [ %call, %if.then ], !dbg !2214
  ret %struct.deps* %1, !dbg !2215
}

declare dso_local %struct.deps* @deps_init() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader* %pfile, i8* %buffer, i64 %len, i32 %from_stage3) local_unnamed_addr #3 !dbg !2216 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2220, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8* %buffer, metadata !2221, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i64 %len, metadata !2222, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 %from_stage3, metadata !2223, metadata !DIExpression()), !dbg !2225
  %temp = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 5, !dbg !2226
  store i64 192, i64* %temp, align 8, !dbg !2226
  %chunk_limit = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 4, !dbg !2226
  %0 = bitcast i8** %chunk_limit to i64*, !dbg !2226
  %1 = load i64, i64* %0, align 8, !dbg !2226
  %next_free = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 3, !dbg !2226
  %2 = bitcast i8** %next_free to i64*, !dbg !2226
  %3 = load i64, i64* %2, align 8, !dbg !2226
  %sub.ptr.sub = sub i64 %1, %3, !dbg !2226
  %cmp = icmp slt i64 %sub.ptr.sub, 192, !dbg !2226
  %4 = inttoptr i64 %3 to i8*, !dbg !2226
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2226

cond.true:                                        ; preds = %entry
  %buffer_ob5 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, !dbg !2226
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %buffer_ob5, i32 192) #8, !dbg !2226
  %.pre = load i64, i64* %temp, align 8, !dbg !2226
  %.pre1 = load i8*, i8** %next_free, align 8, !dbg !2226
  br label %cond.end, !dbg !2226

cond.end:                                         ; preds = %entry, %cond.true
  %5 = phi i8* [ %4, %entry ], [ %.pre1, %cond.true ], !dbg !2226
  %6 = phi i64 [ 192, %entry ], [ %.pre, %cond.true ], !dbg !2226
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !2226
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !2226
  %object_base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 2, !dbg !2226
  %7 = load i8*, i8** %object_base, align 8, !dbg !2226
  %cmp15 = icmp eq i8* %add.ptr, %7, !dbg !2226
  %8 = ptrtoint i8* %7 to i64, !dbg !2226
  %9 = ptrtoint i8* %add.ptr to i64, !dbg !2226
  br i1 %cmp15, label %cond.true17, label %cond.end20, !dbg !2226

cond.true17:                                      ; preds = %cond.end
  %maybe_empty_object = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 10, !dbg !2226
  %bf.load = load i8, i8* %maybe_empty_object, align 8, !dbg !2226
  %bf.set = or i8 %bf.load, 2, !dbg !2226
  store i8 %bf.set, i8* %maybe_empty_object, align 8, !dbg !2226
  br label %cond.end20, !dbg !2226

cond.end20:                                       ; preds = %cond.end, %cond.true17
  %10 = bitcast i8** %object_base to i64*, !dbg !2226
  store i64 %8, i64* %temp, align 8, !dbg !2226
  %alignment_mask = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 6, !dbg !2226
  %11 = load i32, i32* %alignment_mask, align 8, !dbg !2226
  %conv33 = sext i32 %11 to i64, !dbg !2226
  %add = add nsw i64 %9, %conv33, !dbg !2226
  %neg = xor i32 %11, -1, !dbg !2226
  %conv36 = sext i32 %neg to i64, !dbg !2226
  %and = and i64 %add, %conv36, !dbg !2226
  %12 = inttoptr i64 %and to i8*, !dbg !2226
  store i8* %12, i8** %next_free, align 8, !dbg !2226
  %chunk = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 1, !dbg !2226
  %13 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !2226
  %14 = load i64, i64* %13, align 8, !dbg !2226
  %sub.ptr.sub44 = sub i64 %and, %14, !dbg !2226
  %15 = load i64, i64* %0, align 8, !dbg !2226
  %sub.ptr.sub51 = sub i64 %15, %14, !dbg !2226
  %cmp52 = icmp sgt i64 %sub.ptr.sub44, %sub.ptr.sub51, !dbg !2226
  %16 = bitcast i8* %7 to %struct.cpp_buffer*, !dbg !2226
  br i1 %cmp52, label %cond.true54, label %cond.end60, !dbg !2226

cond.true54:                                      ; preds = %cond.end20
  store i64 %15, i64* %2, align 8, !dbg !2226
  br label %cond.end60, !dbg !2226

cond.end60:                                       ; preds = %cond.end20, %cond.true54
  %17 = phi i64 [ %and, %cond.end20 ], [ %15, %cond.true54 ], !dbg !2226
  store i64 %17, i64* %10, align 8, !dbg !2226
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %16, metadata !2224, metadata !DIExpression()), !dbg !2225
  %call = tail call i8* @memset(i8* %7, i32 0, i64 192) #8, !dbg !2227
  %buf = getelementptr inbounds i8, i8* %7, i64 24, !dbg !2228
  %18 = bitcast i8* %buf to i8**, !dbg !2228
  store i8* %buffer, i8** %18, align 8, !dbg !2229
  %next_line = getelementptr inbounds i8, i8* %7, i64 16, !dbg !2230
  %19 = bitcast i8* %next_line to i8**, !dbg !2230
  store i8* %buffer, i8** %19, align 8, !dbg !2231
  %add.ptr68 = getelementptr inbounds i8, i8* %buffer, i64 %len, !dbg !2232
  %rlimit = getelementptr inbounds i8, i8* %7, i64 32, !dbg !2233
  %20 = bitcast i8* %rlimit to i8**, !dbg !2233
  store i8* %add.ptr68, i8** %20, align 8, !dbg !2234
  %21 = getelementptr inbounds i8, i8* %7, i64 97, !dbg !2235
  %22 = trunc i32 %from_stage3 to i8, !dbg !2236
  %bf.load70 = load i8, i8* %21, align 1, !dbg !2236
  %bf.value = shl i8 %22, 1, !dbg !2236
  %bf.shl = and i8 %bf.value, 2, !dbg !2236
  %bf.clear71 = and i8 %bf.load70, -3, !dbg !2236
  %bf.set72 = or i8 %bf.clear71, %bf.shl, !dbg !2236
  store i8 %bf.set72, i8* %21, align 1, !dbg !2236
  %23 = bitcast %struct.cpp_reader* %pfile to i64*, !dbg !2237
  %24 = load i64, i64* %23, align 8, !dbg !2237
  %prev = getelementptr inbounds i8, i8* %7, i64 64, !dbg !2238
  %25 = bitcast i8* %prev to i64*, !dbg !2239
  store i64 %24, i64* %25, align 8, !dbg !2239
  %26 = getelementptr inbounds i8, i8* %7, i64 96, !dbg !2240
  store i8 1, i8* %26, align 8, !dbg !2241
  %27 = bitcast %struct.cpp_reader* %pfile to i8**, !dbg !2242
  store i8* %7, i8** %27, align 8, !dbg !2242
  ret %struct.cpp_buffer* %16, !dbg !2243
}

declare dso_local void @_obstack_newchunk(%struct.obstack*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_pop_buffer(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !2244 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2246, metadata !DIExpression()), !dbg !2250
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2251
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !2251
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %0, metadata !2247, metadata !DIExpression()), !dbg !2250
  %file = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 10, !dbg !2252
  %1 = load %struct._cpp_file*, %struct._cpp_file** %file, align 8, !dbg !2252
  call void @llvm.dbg.value(metadata %struct._cpp_file* %1, metadata !2248, metadata !DIExpression()), !dbg !2250
  %if_stack = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 12, !dbg !2253
  br label %for.cond, !dbg !2255

for.cond:                                         ; preds = %for.body, %entry
  %ifs.0.in = phi %struct.if_stack** [ %if_stack, %entry ], [ %next, %for.body ]
  %ifs.0 = load %struct.if_stack*, %struct.if_stack** %ifs.0.in, align 8, !dbg !2256
  call void @llvm.dbg.value(metadata %struct.if_stack* %ifs.0, metadata !2249, metadata !DIExpression()), !dbg !2250
  %tobool = icmp eq %struct.if_stack* %ifs.0, null, !dbg !2257
  br i1 %tobool, label %for.end, label %for.body, !dbg !2257

for.body:                                         ; preds = %for.cond
  %line = getelementptr inbounds %struct.if_stack, %struct.if_stack* %ifs.0, i64 0, i32 1, !dbg !2258
  %2 = load i32, i32* %line, align 8, !dbg !2258
  %type = getelementptr inbounds %struct.if_stack, %struct.if_stack* %ifs.0, i64 0, i32 5, !dbg !2260
  %3 = load i32, i32* %type, align 4, !dbg !2260
  %idxprom = sext i32 %3 to i64, !dbg !2261
  %name = getelementptr inbounds [19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 %idxprom, i32 1, !dbg !2262
  %4 = load i8*, i8** %name, align 8, !dbg !2262
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %2, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %4) #8, !dbg !2263
  %next = getelementptr inbounds %struct.if_stack, %struct.if_stack* %ifs.0, i64 0, i32 0, !dbg !2264
  br label %for.cond, !dbg !2265, !llvm.loop !2266

for.end:                                          ; preds = %for.cond
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !2268
  store i8 0, i8* %skipping, align 2, !dbg !2269
  %prev = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 9, !dbg !2270
  %5 = bitcast %struct.cpp_buffer** %prev to i64*, !dbg !2270
  %6 = load i64, i64* %5, align 8, !dbg !2270
  %7 = bitcast %struct.cpp_reader* %pfile to i64*, !dbg !2271
  store i64 %6, i64* %7, align 8, !dbg !2271
  %notes = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 5, !dbg !2272
  %8 = bitcast %struct._cpp_line_note** %notes to i8**, !dbg !2272
  %9 = load i8*, i8** %8, align 8, !dbg !2272
  tail call void @free(i8* %9) #8, !dbg !2273
  %chunk = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 1, !dbg !2274
  %10 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !2274
  %11 = load i64, i64* %10, align 8, !dbg !2274
  %sub.ptr.lhs.cast = ptrtoint %struct.cpp_buffer* %0 to i64, !dbg !2274
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %11, !dbg !2274
  %temp = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 5, !dbg !2274
  store i64 %sub.ptr.sub, i64* %temp, align 8, !dbg !2274
  %cmp = icmp sgt i64 %sub.ptr.sub, 0, !dbg !2274
  %12 = inttoptr i64 %11 to i8*, !dbg !2274
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !2274

land.lhs.true:                                    ; preds = %for.end
  %chunk_limit = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 4, !dbg !2274
  %13 = bitcast i8** %chunk_limit to i64*, !dbg !2274
  %14 = load i64, i64* %13, align 8, !dbg !2274
  %sub.ptr.sub13 = sub i64 %14, %11, !dbg !2274
  %cmp14 = icmp slt i64 %sub.ptr.sub, %sub.ptr.sub13, !dbg !2274
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !2274

cond.true:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %sub.ptr.sub, !dbg !2274
  %object_base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 2, !dbg !2274
  store i8* %add.ptr, i8** %object_base, align 8, !dbg !2274
  %next_free = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 3, !dbg !2274
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !2274
  br label %cond.end, !dbg !2274

cond.false:                                       ; preds = %land.lhs.true, %for.end
  %buffer_ob21 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, !dbg !2274
  %add.ptr26 = getelementptr inbounds i8, i8* %12, i64 %sub.ptr.sub, !dbg !2274
  tail call void @obstack_free(%struct.obstack* nonnull %buffer_ob21, i8* %add.ptr26) #8, !dbg !2274
  br label %cond.end, !dbg !2274

cond.end:                                         ; preds = %cond.false, %cond.true
  %tobool27 = icmp eq %struct._cpp_file* %1, null, !dbg !2275
  br i1 %tobool27, label %if.end, label %if.then, !dbg !2277

if.then:                                          ; preds = %cond.end
  tail call void @_cpp_pop_file_buffer(%struct.cpp_reader* %pfile, %struct._cpp_file* nonnull %1) #8, !dbg !2278
  tail call void @_cpp_do_file_change(%struct.cpp_reader* %pfile, i32 1, i8* null, i32 0, i32 0) #9, !dbg !2280
  br label %if.end, !dbg !2281

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !2282
}

declare dso_local zeroext i8 @cpp_error_with_line(%struct.cpp_reader*, i32, i32, i32, i8*, ...) local_unnamed_addr #2

declare dso_local void @obstack_free(%struct.obstack*, i8*) local_unnamed_addr #2

declare dso_local void @_cpp_pop_file_buffer(%struct.cpp_reader*, %struct._cpp_file*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_init_directives(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !2283 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2285, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i32 0, metadata !2286, metadata !DIExpression()), !dbg !2288
  br label %for.cond, !dbg !2289

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !2291
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %entry ], !dbg !2291
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2286, metadata !DIExpression()), !dbg !2288
  %exitcond = icmp eq i64 %indvars.iv, 19, !dbg !2292
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2294

for.body:                                         ; preds = %for.cond
  %name = getelementptr inbounds [19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 %indvars.iv, i32 1, !dbg !2295
  %0 = load i8*, i8** %name, align 8, !dbg !2295
  %length = getelementptr inbounds [19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 %indvars.iv, i32 2, !dbg !2297
  %1 = load i16, i16* %length, align 8, !dbg !2297
  %conv = zext i16 %1 to i32, !dbg !2298
  %call = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %pfile, i8* %0, i32 %conv) #8, !dbg !2299
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call, metadata !2287, metadata !DIExpression()), !dbg !2288
  %directive_index = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 1, !dbg !2300
  %2 = trunc i32 %i.0 to i8, !dbg !2301
  %bf.shl = shl i8 %2, 1, !dbg !2301
  %bf.set5 = or i8 %bf.shl, 1, !dbg !2301
  store i8 %bf.set5, i8* %directive_index, align 8, !dbg !2301
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2302
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2302
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2286, metadata !DIExpression()), !dbg !2288
  br label %for.cond, !dbg !2303, !llvm.loop !2304

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2306
}

declare dso_local %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @do_define(%struct.cpp_reader* %pfile) #3 !dbg !2307 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2309, metadata !DIExpression()), !dbg !2311
  %call = tail call fastcc %struct.cpp_hashnode* @lex_macro_node(%struct.cpp_reader* %pfile, i8 zeroext 1) #9, !dbg !2312
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call, metadata !2310, metadata !DIExpression()), !dbg !2311
  %tobool = icmp eq %struct.cpp_hashnode* %call, null, !dbg !2313
  br i1 %tobool, label %if.end17, label %if.then, !dbg !2315

if.then:                                          ; preds = %entry
  %discard_comments_in_macro_exp = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 6, !dbg !2316
  %0 = load i8, i8* %discard_comments_in_macro_exp, align 4, !dbg !2316
  %tobool1 = icmp eq i8 %0, 0, !dbg !2318
  %conv = zext i1 %tobool1 to i8, !dbg !2318
  %save_comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 5, !dbg !2319
  store i8 %conv, i8* %save_comments, align 1, !dbg !2320
  %before_define = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 15, !dbg !2321
  %1 = load void (%struct.cpp_reader*)*, void (%struct.cpp_reader*)** %before_define, align 8, !dbg !2321
  %tobool2 = icmp eq void (%struct.cpp_reader*)* %1, null, !dbg !2323
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !2324

if.then3:                                         ; preds = %if.then
  tail call void %1(%struct.cpp_reader* %pfile) #8, !dbg !2325
  br label %if.end, !dbg !2325

if.end:                                           ; preds = %if.then, %if.then3
  %call6 = tail call zeroext i8 @_cpp_create_definition(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* nonnull %call) #8, !dbg !2326
  %tobool7 = icmp eq i8 %call6, 0, !dbg !2326
  br i1 %tobool7, label %if.end15, label %if.then8, !dbg !2328

if.then8:                                         ; preds = %if.end
  %define = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 4, !dbg !2329
  %2 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %define, align 8, !dbg !2329
  %tobool10 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %2, null, !dbg !2331
  br i1 %tobool10, label %if.end15, label %if.then11, !dbg !2332

if.then11:                                        ; preds = %if.then8
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !2333
  %3 = load i32, i32* %directive_line, align 8, !dbg !2333
  tail call void %2(%struct.cpp_reader* %pfile, i32 %3, %struct.cpp_hashnode* nonnull %call) #8, !dbg !2334
  br label %if.end15, !dbg !2334

if.end15:                                         ; preds = %if.then8, %if.end, %if.then11
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 3, !dbg !2335
  %bf.load = load i16, i16* %flags, align 2, !dbg !2336
  %bf.set = and i16 %bf.load, -8193, !dbg !2336
  store i16 %bf.set, i16* %flags, align 2, !dbg !2336
  br label %if.end17, !dbg !2337

if.end17:                                         ; preds = %entry, %if.end15
  ret void, !dbg !2338
}

; Function Attrs: nounwind uwtable
define internal void @do_include(%struct.cpp_reader* %pfile) #3 !dbg !2339 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2341, metadata !DIExpression()), !dbg !2342
  tail call fastcc void @do_include_common(%struct.cpp_reader* %pfile, i32 0) #9, !dbg !2343
  ret void, !dbg !2344
}

; Function Attrs: nounwind uwtable
define internal void @do_endif(%struct.cpp_reader* %pfile) #3 !dbg !2345 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2347, metadata !DIExpression()), !dbg !2350
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2351
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !2351
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %0, metadata !2348, metadata !DIExpression()), !dbg !2350
  %if_stack = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 12, !dbg !2352
  %1 = load %struct.if_stack*, %struct.if_stack** %if_stack, align 8, !dbg !2352
  call void @llvm.dbg.value(metadata %struct.if_stack* %1, metadata !2349, metadata !DIExpression()), !dbg !2350
  %cmp = icmp eq %struct.if_stack* %1, null, !dbg !2353
  br i1 %cmp, label %if.then, label %if.else, !dbg !2355

if.then:                                          ; preds = %entry
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !2356
  br label %if.end43, !dbg !2356

if.else:                                          ; preds = %entry
  %was_skipping = getelementptr inbounds %struct.if_stack, %struct.if_stack* %1, i64 0, i32 4, !dbg !2357
  %2 = load i8, i8* %was_skipping, align 1, !dbg !2357
  %tobool = icmp eq i8 %2, 0, !dbg !2360
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2361

land.lhs.true:                                    ; preds = %if.else
  %warn_endif_labels = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 19, !dbg !2362
  %3 = load i8, i8* %warn_endif_labels, align 1, !dbg !2362
  %tobool2 = icmp eq i8 %3, 0, !dbg !2362
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !2363

if.then3:                                         ; preds = %land.lhs.true
  tail call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !2364
  br label %if.end, !dbg !2364

if.end:                                           ; preds = %land.lhs.true, %if.else, %if.then3
  %next = getelementptr inbounds %struct.if_stack, %struct.if_stack* %1, i64 0, i32 0, !dbg !2365
  %4 = load %struct.if_stack*, %struct.if_stack** %next, align 8, !dbg !2365
  %cmp4 = icmp eq %struct.if_stack* %4, null, !dbg !2367
  %5 = ptrtoint %struct.if_stack* %4 to i64, !dbg !2368
  br i1 %cmp4, label %land.lhs.true6, label %if.end11, !dbg !2368

land.lhs.true6:                                   ; preds = %if.end
  %mi_cmacro = getelementptr inbounds %struct.if_stack, %struct.if_stack* %1, i64 0, i32 2, !dbg !2369
  %6 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %mi_cmacro, align 8, !dbg !2369
  %tobool7 = icmp eq %struct.cpp_hashnode* %6, null, !dbg !2370
  br i1 %tobool7, label %if.end11, label %if.then8, !dbg !2371

if.then8:                                         ; preds = %land.lhs.true6
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 28, !dbg !2372
  store i8 1, i8* %mi_valid, align 8, !dbg !2374
  %7 = bitcast %struct.cpp_hashnode** %mi_cmacro to i64*, !dbg !2375
  %8 = load i64, i64* %7, align 8, !dbg !2375
  %mi_cmacro10 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 26, !dbg !2376
  %9 = bitcast %struct.cpp_hashnode** %mi_cmacro10 to i64*, !dbg !2377
  store i64 %8, i64* %9, align 8, !dbg !2377
  %.phi.trans.insert = bitcast %struct.if_stack* %1 to i64*, !dbg !2378
  %.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !2379
  br label %if.end11, !dbg !2380

if.end11:                                         ; preds = %land.lhs.true6, %if.then8, %if.end
  %10 = phi i64 [ %5, %land.lhs.true6 ], [ %.pre, %if.then8 ], [ %5, %if.end ], !dbg !2379
  %11 = bitcast %struct.if_stack** %if_stack to i64*, !dbg !2381
  store i64 %10, i64* %11, align 8, !dbg !2381
  %12 = load i8, i8* %was_skipping, align 1, !dbg !2382
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !2383
  store i8 %12, i8* %skipping, align 2, !dbg !2384
  %chunk = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 1, !dbg !2385
  %13 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !2385
  %14 = load i64, i64* %13, align 8, !dbg !2385
  %sub.ptr.lhs.cast = ptrtoint %struct.if_stack* %1 to i64, !dbg !2385
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %14, !dbg !2385
  %temp = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 5, !dbg !2385
  store i64 %sub.ptr.sub, i64* %temp, align 8, !dbg !2385
  %cmp18 = icmp sgt i64 %sub.ptr.sub, 0, !dbg !2385
  %15 = inttoptr i64 %14 to i8*, !dbg !2385
  br i1 %cmp18, label %land.lhs.true20, label %cond.false, !dbg !2385

land.lhs.true20:                                  ; preds = %if.end11
  %chunk_limit = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 4, !dbg !2385
  %16 = bitcast i8** %chunk_limit to i64*, !dbg !2385
  %17 = load i64, i64* %16, align 8, !dbg !2385
  %sub.ptr.sub28 = sub i64 %17, %14, !dbg !2385
  %cmp29 = icmp slt i64 %sub.ptr.sub, %sub.ptr.sub28, !dbg !2385
  br i1 %cmp29, label %cond.true, label %cond.false, !dbg !2385

cond.true:                                        ; preds = %land.lhs.true20
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %sub.ptr.sub, !dbg !2385
  %object_base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 2, !dbg !2385
  store i8* %add.ptr, i8** %object_base, align 8, !dbg !2385
  %next_free = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 3, !dbg !2385
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !2385
  br label %if.end43, !dbg !2385

cond.false:                                       ; preds = %land.lhs.true20, %if.end11
  %buffer_ob37 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, !dbg !2385
  %add.ptr42 = getelementptr inbounds i8, i8* %15, i64 %sub.ptr.sub, !dbg !2385
  tail call void @obstack_free(%struct.obstack* nonnull %buffer_ob37, i8* %add.ptr42) #8, !dbg !2385
  br label %if.end43, !dbg !2385

if.end43:                                         ; preds = %cond.true, %cond.false, %if.then
  ret void, !dbg !2386
}

; Function Attrs: nounwind uwtable
define internal void @do_ifdef(%struct.cpp_reader* %pfile) #3 !dbg !2387 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2389, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 1, metadata !2390, metadata !DIExpression()), !dbg !2394
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !2395
  %0 = load i8, i8* %skipping, align 2, !dbg !2395
  %tobool = icmp eq i8 %0, 0, !dbg !2396
  br i1 %tobool, label %if.then, label %if.end59, !dbg !2397

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.cpp_hashnode* @lex_macro_node(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !2398
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call, metadata !2391, metadata !DIExpression()), !dbg !2399
  %tobool1 = icmp eq %struct.cpp_hashnode* %call, null, !dbg !2400
  br i1 %tobool1, label %if.end59, label %if.then2, !dbg !2402

if.then2:                                         ; preds = %if.then
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 3, !dbg !2403
  %bf.load = load i16, i16* %type, align 2, !dbg !2403
  %bf.clear = and i16 %bf.load, 63, !dbg !2403
  %cmp = icmp ne i16 %bf.clear, 1, !dbg !2405
  %conv = zext i1 %cmp to i32, !dbg !2405
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2390, metadata !DIExpression()), !dbg !2394
  %cmp7 = icmp eq i16 %bf.clear, 1, !dbg !2406
  br i1 %cmp7, label %land.lhs.true, label %do.end, !dbg !2406

land.lhs.true:                                    ; preds = %if.then2
  %1 = and i16 %bf.load, 256, !dbg !2406
  %tobool11 = icmp eq i16 %1, 0, !dbg !2406
  br i1 %tobool11, label %if.then12, label %do.end, !dbg !2409

if.then12:                                        ; preds = %land.lhs.true
  %macro = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 4, i32 0, !dbg !2406
  %2 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8, !dbg !2406
  %used = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %2, i64 0, i32 5, !dbg !2406
  %bf.load13 = load i8, i8* %used, align 2, !dbg !2406
  %bf.set = or i8 %bf.load13, 8, !dbg !2406
  store i8 %bf.set, i8* %used, align 2, !dbg !2406
  %bf.load16.pre = load i16, i16* %type, align 2, !dbg !2410
  br label %do.end, !dbg !2406

do.end:                                           ; preds = %land.lhs.true, %if.then12, %if.then2
  %bf.load23 = phi i16 [ %bf.load, %land.lhs.true ], [ %bf.load16.pre, %if.then12 ], [ %bf.load, %if.then2 ], !dbg !2410
  %3 = and i16 %bf.load23, 8192, !dbg !2412
  %tobool20 = icmp eq i16 %3, 0, !dbg !2412
  br i1 %tobool20, label %if.then21, label %if.end49, !dbg !2413

if.then21:                                        ; preds = %do.end
  %bf.lshr24 = and i16 %bf.load23, -8256, !dbg !2414
  %4 = or i16 %bf.lshr24, 8192, !dbg !2414
  %bf.clear27 = and i16 %bf.load23, 63, !dbg !2414
  %bf.set28 = or i16 %bf.clear27, %4, !dbg !2414
  store i16 %bf.set28, i16* %type, align 2, !dbg !2414
  %cmp33 = icmp eq i16 %bf.clear27, 1, !dbg !2416
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !2418

if.then35:                                        ; preds = %if.then21
  %used_define = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 13, !dbg !2419
  %5 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %used_define, align 8, !dbg !2419
  %tobool36 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %5, null, !dbg !2422
  br i1 %tobool36, label %if.end49, label %if.then37, !dbg !2423

if.then37:                                        ; preds = %if.then35
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !2424
  %6 = load i32, i32* %directive_line, align 8, !dbg !2424
  tail call void %5(%struct.cpp_reader* %pfile, i32 %6, %struct.cpp_hashnode* nonnull %call) #8, !dbg !2425
  br label %if.end49, !dbg !2425

if.else:                                          ; preds = %if.then21
  %used_undef = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 14, !dbg !2426
  %7 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %used_undef, align 8, !dbg !2426
  %tobool42 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %7, null, !dbg !2429
  br i1 %tobool42, label %if.end49, label %if.then43, !dbg !2430

if.then43:                                        ; preds = %if.else
  %directive_line46 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !2431
  %8 = load i32, i32* %directive_line46, align 8, !dbg !2431
  tail call void %7(%struct.cpp_reader* %pfile, i32 %8, %struct.cpp_hashnode* nonnull %call) #8, !dbg !2432
  br label %if.end49, !dbg !2432

if.end49:                                         ; preds = %if.then35, %if.else, %do.end, %if.then37, %if.then43
  %used51 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 16, !dbg !2433
  %9 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %used51, align 8, !dbg !2433
  %tobool52 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %9, null, !dbg !2435
  br i1 %tobool52, label %if.end57, label %if.then53, !dbg !2436

if.then53:                                        ; preds = %if.end49
  %directive_line56 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !2437
  %10 = load i32, i32* %directive_line56, align 8, !dbg !2437
  tail call void %9(%struct.cpp_reader* %pfile, i32 %10, %struct.cpp_hashnode* nonnull %call) #8, !dbg !2438
  br label %if.end57, !dbg !2438

if.end57:                                         ; preds = %if.end49, %if.then53
  tail call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !2439
  br label %if.end59, !dbg !2440

if.end59:                                         ; preds = %if.then, %entry, %if.end57
  %skip.1 = phi i32 [ 1, %entry ], [ %conv, %if.end57 ], [ 1, %if.then ], !dbg !2394
  call void @llvm.dbg.value(metadata i32 %skip.1, metadata !2390, metadata !DIExpression()), !dbg !2394
  tail call fastcc void @push_conditional(%struct.cpp_reader* %pfile, i32 %skip.1, i32 3, %struct.cpp_hashnode* null) #9, !dbg !2441
  ret void, !dbg !2442
}

; Function Attrs: nounwind uwtable
define internal void @do_if(%struct.cpp_reader* %pfile) #3 !dbg !2443 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2445, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i32 1, metadata !2446, metadata !DIExpression()), !dbg !2447
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !2448
  %0 = load i8, i8* %skipping, align 2, !dbg !2448
  %tobool = icmp eq i8 %0, 0, !dbg !2450
  br i1 %tobool, label %if.then, label %if.end, !dbg !2451

if.then:                                          ; preds = %entry
  %call = tail call zeroext i8 @_cpp_parse_expr(%struct.cpp_reader* %pfile, i8 zeroext 1) #8, !dbg !2452
  %cmp = icmp eq i8 %call, 0, !dbg !2453
  %conv1 = zext i1 %cmp to i32, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %conv1, metadata !2446, metadata !DIExpression()), !dbg !2447
  br label %if.end, !dbg !2454

if.end:                                           ; preds = %entry, %if.then
  %skip.0 = phi i32 [ 1, %entry ], [ %conv1, %if.then ], !dbg !2447
  call void @llvm.dbg.value(metadata i32 %skip.0, metadata !2446, metadata !DIExpression()), !dbg !2447
  %mi_ind_cmacro = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 27, !dbg !2455
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %mi_ind_cmacro, align 8, !dbg !2455
  tail call fastcc void @push_conditional(%struct.cpp_reader* %pfile, i32 %skip.0, i32 4, %struct.cpp_hashnode* %1) #9, !dbg !2456
  ret void, !dbg !2457
}

; Function Attrs: nounwind uwtable
define internal void @do_else(%struct.cpp_reader* %pfile) #3 !dbg !2458 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2460, metadata !DIExpression()), !dbg !2463
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2464
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !2464
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %0, metadata !2461, metadata !DIExpression()), !dbg !2463
  %if_stack = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 12, !dbg !2465
  %1 = load %struct.if_stack*, %struct.if_stack** %if_stack, align 8, !dbg !2465
  call void @llvm.dbg.value(metadata %struct.if_stack* %1, metadata !2462, metadata !DIExpression()), !dbg !2463
  %cmp = icmp eq %struct.if_stack* %1, null, !dbg !2466
  br i1 %cmp, label %if.then, label %if.else, !dbg !2468

if.then:                                          ; preds = %entry
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0)) #8, !dbg !2469
  br label %if.end11, !dbg !2469

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.if_stack, %struct.if_stack* %1, i64 0, i32 5, !dbg !2470
  %2 = load i32, i32* %type, align 4, !dbg !2470
  %cmp2 = icmp eq i32 %2, 5, !dbg !2473
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2474

if.then3:                                         ; preds = %if.else
  %call4 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !2475
  %line = getelementptr inbounds %struct.if_stack, %struct.if_stack* %1, i64 0, i32 1, !dbg !2477
  %3 = load i32, i32* %line, align 8, !dbg !2477
  %call5 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %3, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !2478
  br label %if.end, !dbg !2479

if.end:                                           ; preds = %if.then3, %if.else
  store i32 5, i32* %type, align 4, !dbg !2480
  %skip_elses = getelementptr inbounds %struct.if_stack, %struct.if_stack* %1, i64 0, i32 3, !dbg !2481
  %4 = load i8, i8* %skip_elses, align 8, !dbg !2481
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !2482
  store i8 %4, i8* %skipping, align 2, !dbg !2483
  store i8 1, i8* %skip_elses, align 8, !dbg !2484
  %mi_cmacro = getelementptr inbounds %struct.if_stack, %struct.if_stack* %1, i64 0, i32 2, !dbg !2485
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %mi_cmacro, align 8, !dbg !2486
  %was_skipping = getelementptr inbounds %struct.if_stack, %struct.if_stack* %1, i64 0, i32 4, !dbg !2487
  %5 = load i8, i8* %was_skipping, align 1, !dbg !2487
  %tobool = icmp eq i8 %5, 0, !dbg !2489
  br i1 %tobool, label %land.lhs.true, label %if.end11, !dbg !2490

land.lhs.true:                                    ; preds = %if.end
  %warn_endif_labels = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 19, !dbg !2491
  %6 = load i8, i8* %warn_endif_labels, align 1, !dbg !2491
  %tobool8 = icmp eq i8 %6, 0, !dbg !2491
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !2492

if.then9:                                         ; preds = %land.lhs.true
  tail call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !2493
  br label %if.end11, !dbg !2493

if.end11:                                         ; preds = %land.lhs.true, %if.end, %if.then9, %if.then
  ret void, !dbg !2494
}

; Function Attrs: nounwind uwtable
define internal void @do_ifndef(%struct.cpp_reader* %pfile) #3 !dbg !2495 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2497, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i32 1, metadata !2498, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* null, metadata !2499, metadata !DIExpression()), !dbg !2500
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !2501
  %0 = load i8, i8* %skipping, align 2, !dbg !2501
  %tobool = icmp eq i8 %0, 0, !dbg !2503
  br i1 %tobool, label %if.then, label %if.end59, !dbg !2504

if.then:                                          ; preds = %entry
  %call = tail call fastcc %struct.cpp_hashnode* @lex_macro_node(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !2505
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call, metadata !2499, metadata !DIExpression()), !dbg !2500
  %tobool1 = icmp eq %struct.cpp_hashnode* %call, null, !dbg !2507
  br i1 %tobool1, label %if.end59, label %if.then2, !dbg !2509

if.then2:                                         ; preds = %if.then
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 3, !dbg !2510
  %bf.load = load i16, i16* %type, align 2, !dbg !2510
  %bf.clear = and i16 %bf.load, 63, !dbg !2510
  %cmp = icmp eq i16 %bf.clear, 1, !dbg !2512
  %conv = zext i1 %cmp to i32, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2498, metadata !DIExpression()), !dbg !2500
  br i1 %cmp, label %land.lhs.true, label %do.end, !dbg !2513

land.lhs.true:                                    ; preds = %if.then2
  %1 = and i16 %bf.load, 256, !dbg !2513
  %tobool11 = icmp eq i16 %1, 0, !dbg !2513
  br i1 %tobool11, label %if.then12, label %do.end, !dbg !2516

if.then12:                                        ; preds = %land.lhs.true
  %macro = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 4, i32 0, !dbg !2513
  %2 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8, !dbg !2513
  %used = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %2, i64 0, i32 5, !dbg !2513
  %bf.load13 = load i8, i8* %used, align 2, !dbg !2513
  %bf.set = or i8 %bf.load13, 8, !dbg !2513
  store i8 %bf.set, i8* %used, align 2, !dbg !2513
  %bf.load16.pre = load i16, i16* %type, align 2, !dbg !2517
  br label %do.end, !dbg !2513

do.end:                                           ; preds = %land.lhs.true, %if.then12, %if.then2
  %bf.load23 = phi i16 [ %bf.load, %land.lhs.true ], [ %bf.load16.pre, %if.then12 ], [ %bf.load, %if.then2 ], !dbg !2517
  %3 = and i16 %bf.load23, 8192, !dbg !2519
  %tobool20 = icmp eq i16 %3, 0, !dbg !2519
  br i1 %tobool20, label %if.then21, label %if.end49, !dbg !2520

if.then21:                                        ; preds = %do.end
  %bf.lshr24 = and i16 %bf.load23, -8256, !dbg !2521
  %4 = or i16 %bf.lshr24, 8192, !dbg !2521
  %bf.clear27 = and i16 %bf.load23, 63, !dbg !2521
  %bf.set28 = or i16 %bf.clear27, %4, !dbg !2521
  store i16 %bf.set28, i16* %type, align 2, !dbg !2521
  %cmp33 = icmp eq i16 %bf.clear27, 1, !dbg !2523
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !2525

if.then35:                                        ; preds = %if.then21
  %used_define = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 13, !dbg !2526
  %5 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %used_define, align 8, !dbg !2526
  %tobool36 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %5, null, !dbg !2529
  br i1 %tobool36, label %if.end49, label %if.then37, !dbg !2530

if.then37:                                        ; preds = %if.then35
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !2531
  %6 = load i32, i32* %directive_line, align 8, !dbg !2531
  tail call void %5(%struct.cpp_reader* %pfile, i32 %6, %struct.cpp_hashnode* nonnull %call) #8, !dbg !2532
  br label %if.end49, !dbg !2532

if.else:                                          ; preds = %if.then21
  %used_undef = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 14, !dbg !2533
  %7 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %used_undef, align 8, !dbg !2533
  %tobool42 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %7, null, !dbg !2536
  br i1 %tobool42, label %if.end49, label %if.then43, !dbg !2537

if.then43:                                        ; preds = %if.else
  %directive_line46 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !2538
  %8 = load i32, i32* %directive_line46, align 8, !dbg !2538
  tail call void %7(%struct.cpp_reader* %pfile, i32 %8, %struct.cpp_hashnode* nonnull %call) #8, !dbg !2539
  br label %if.end49, !dbg !2539

if.end49:                                         ; preds = %if.then35, %if.else, %do.end, %if.then37, %if.then43
  %used51 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 16, !dbg !2540
  %9 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %used51, align 8, !dbg !2540
  %tobool52 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %9, null, !dbg !2542
  br i1 %tobool52, label %if.end57, label %if.then53, !dbg !2543

if.then53:                                        ; preds = %if.end49
  %directive_line56 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !2544
  %10 = load i32, i32* %directive_line56, align 8, !dbg !2544
  tail call void %9(%struct.cpp_reader* %pfile, i32 %10, %struct.cpp_hashnode* nonnull %call) #8, !dbg !2545
  br label %if.end57, !dbg !2545

if.end57:                                         ; preds = %if.end49, %if.then53
  tail call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !2546
  br label %if.end59, !dbg !2547

if.end59:                                         ; preds = %if.then, %entry, %if.end57
  %skip.1 = phi i32 [ 1, %entry ], [ %conv, %if.end57 ], [ 1, %if.then ], !dbg !2500
  %node.0 = phi %struct.cpp_hashnode* [ null, %entry ], [ %call, %if.end57 ], [ null, %if.then ], !dbg !2500
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node.0, metadata !2499, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i32 %skip.1, metadata !2498, metadata !DIExpression()), !dbg !2500
  tail call fastcc void @push_conditional(%struct.cpp_reader* %pfile, i32 %skip.1, i32 6, %struct.cpp_hashnode* %node.0) #9, !dbg !2548
  ret void, !dbg !2549
}

; Function Attrs: nounwind uwtable
define internal void @do_undef(%struct.cpp_reader* %pfile) #3 !dbg !2550 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2552, metadata !DIExpression()), !dbg !2554
  %call = tail call fastcc %struct.cpp_hashnode* @lex_macro_node(%struct.cpp_reader* %pfile, i8 zeroext 1) #9, !dbg !2555
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call, metadata !2553, metadata !DIExpression()), !dbg !2554
  %tobool = icmp eq %struct.cpp_hashnode* %call, null, !dbg !2556
  br i1 %tobool, label %if.end23, label %if.then, !dbg !2558

if.then:                                          ; preds = %entry
  %before_define = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 15, !dbg !2559
  %0 = load void (%struct.cpp_reader*)*, void (%struct.cpp_reader*)** %before_define, align 8, !dbg !2559
  %tobool1 = icmp eq void (%struct.cpp_reader*)* %0, null, !dbg !2562
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !2563

if.then2:                                         ; preds = %if.then
  tail call void %0(%struct.cpp_reader* %pfile) #8, !dbg !2564
  br label %if.end, !dbg !2564

if.end:                                           ; preds = %if.then, %if.then2
  %undef = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 5, !dbg !2565
  %1 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %undef, align 8, !dbg !2565
  %tobool6 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %1, null, !dbg !2567
  br i1 %tobool6, label %if.end10, label %if.then7, !dbg !2568

if.then7:                                         ; preds = %if.end
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !2569
  %2 = load i32, i32* %directive_line, align 8, !dbg !2569
  tail call void %1(%struct.cpp_reader* %pfile, i32 %2, %struct.cpp_hashnode* nonnull %call) #8, !dbg !2570
  br label %if.end10, !dbg !2570

if.end10:                                         ; preds = %if.end, %if.then7
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 3, !dbg !2571
  %bf.load = load i16, i16* %type, align 2, !dbg !2571
  %bf.clear = and i16 %bf.load, 63, !dbg !2571
  %cmp = icmp eq i16 %bf.clear, 1, !dbg !2573
  br i1 %cmp, label %if.then11, label %if.end23, !dbg !2574

if.then11:                                        ; preds = %if.end10
  %3 = and i16 %bf.load, 1024, !dbg !2575
  %tobool14 = icmp eq i16 %3, 0, !dbg !2575
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !2578

if.then15:                                        ; preds = %if.then11
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 0, i32 0, !dbg !2579
  %4 = load i8*, i8** %str, align 8, !dbg !2579
  %call16 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i64 0, i64 0), i8* %4) #8, !dbg !2580
  br label %if.end17, !dbg !2580

if.end17:                                         ; preds = %if.then11, %if.then15
  %warn_unused_macros = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 28, !dbg !2581
  %5 = load i8, i8* %warn_unused_macros, align 2, !dbg !2581
  %tobool18 = icmp eq i8 %5, 0, !dbg !2581
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !2583

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i32 @_cpp_warn_if_unused_macro(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* nonnull %call, i8* null) #8, !dbg !2584
  br label %if.end21, !dbg !2584

if.end21:                                         ; preds = %if.end17, %if.then19
  tail call void @_cpp_free_definition(%struct.cpp_hashnode* nonnull %call) #8, !dbg !2585
  br label %if.end23, !dbg !2586

if.end23:                                         ; preds = %entry, %if.end10, %if.end21
  tail call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !2587
  ret void, !dbg !2588
}

; Function Attrs: nounwind uwtable
define internal void @do_line(%struct.cpp_reader* %pfile) #3 !dbg !2589 {
entry:
  %new_lineno = alloca i32, align 4
  %wrapped = alloca i8, align 1
  %s = alloca %struct.cpp_string, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2591, metadata !DIExpression()), !dbg !2605
  %line_table1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !2606
  %0 = load %struct.line_maps*, %struct.line_maps** %line_table1, align 8, !dbg !2606
  call void @llvm.dbg.value(metadata %struct.line_maps* %0, metadata !2592, metadata !DIExpression()), !dbg !2605
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i64 0, i32 0, !dbg !2607
  %1 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !2607
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i64 0, i32 2, !dbg !2608
  %2 = load i32, i32* %used, align 4, !dbg !2608
  %sub = add i32 %2, -1, !dbg !2609
  %idxprom = zext i32 %sub to i64, !dbg !2610
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !2595, metadata !DIExpression()), !dbg !2605
  %sysp = getelementptr inbounds %struct.line_map, %struct.line_map* %1, i64 %idxprom, i32 5, !dbg !2611
  %3 = load i8, i8* %sysp, align 1, !dbg !2611
  call void @llvm.dbg.value(metadata i8 %3, metadata !2596, metadata !DIExpression()), !dbg !2605
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %1, i64 %idxprom, i32 0, !dbg !2612
  %4 = load i8*, i8** %to_file, align 8, !dbg !2612
  call void @llvm.dbg.value(metadata i8* %4, metadata !2598, metadata !DIExpression()), !dbg !2605
  %5 = bitcast i32* %new_lineno to i8*, !dbg !2613
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7, !dbg !2613
  %c99 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 29, !dbg !2614
  %6 = load i8, i8* %c99, align 1, !dbg !2614
  %tobool = icmp eq i8 %6, 0, !dbg !2614
  %cond = select i1 %tobool, i32 32767, i32 2147483647, !dbg !2614
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2600, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8* %wrapped, metadata !2601, metadata !DIExpression(DW_OP_deref)), !dbg !2605
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %wrapped) #7, !dbg !2615
  %call = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !2597, metadata !DIExpression()), !dbg !2605
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !2617
  %bf.load = load i8, i8* %type, align 4, !dbg !2617
  %cmp = icmp eq i8 %bf.load, 55, !dbg !2619
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !2620

lor.lhs.false:                                    ; preds = %entry
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 1, !dbg !2621
  %7 = load i8*, i8** %text, align 8, !dbg !2621
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 0, !dbg !2622
  %8 = load i32, i32* %len, align 8, !dbg !2622
  %conv5 = zext i32 %8 to i64, !dbg !2623
  call void @llvm.dbg.value(metadata i32* %new_lineno, metadata !2599, metadata !DIExpression(DW_OP_deref)), !dbg !2605
  call void @llvm.dbg.value(metadata i8* %wrapped, metadata !2601, metadata !DIExpression(DW_OP_deref)), !dbg !2605
  %call6 = call fastcc zeroext i8 @strtolinenum(i8* %7, i64 %conv5, i32* nonnull %new_lineno, i8* nonnull %wrapped) #9, !dbg !2624
  %tobool8 = icmp eq i8 %call6, 0, !dbg !2624
  br i1 %tobool8, label %if.end18, label %lor.lhs.false.if.then_crit_edge, !dbg !2625

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  %bf.load10.pre = load i8, i8* %type, align 4, !dbg !2626
  br label %if.then, !dbg !2625

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry
  %bf.load10 = phi i8 [ %bf.load10.pre, %lor.lhs.false.if.then_crit_edge ], [ %bf.load, %entry ], !dbg !2626
  %cmp12 = icmp eq i8 %bf.load10, 22, !dbg !2629
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !2630

if.then14:                                        ; preds = %if.then
  %call15 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.48, i64 0, i64 0)) #8, !dbg !2631
  br label %cleanup, !dbg !2631

if.else:                                          ; preds = %if.then
  %call16 = call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %call) #8, !dbg !2632
  %call17 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i64 0, i64 0), i8* %call16) #8, !dbg !2633
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %pedantic = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !2634
  %9 = load i8, i8* %pedantic, align 1, !dbg !2634
  %tobool21 = icmp eq i8 %9, 0, !dbg !2634
  br i1 %tobool21, label %if.end18.if.else32_crit_edge, label %land.lhs.true, !dbg !2636

if.end18.if.else32_crit_edge:                     ; preds = %if.end18
  %.pre = load i8, i8* %wrapped, align 1, !dbg !2637
  %phitmp = icmp eq i8 %.pre, 0, !dbg !2636
  br label %if.else32, !dbg !2636

land.lhs.true:                                    ; preds = %if.end18
  %10 = load i32, i32* %new_lineno, align 4, !dbg !2639
  call void @llvm.dbg.value(metadata i32 %10, metadata !2599, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 %10, metadata !2599, metadata !DIExpression()), !dbg !2605
  %11 = add i32 %10, -1, !dbg !2640
  %12 = icmp ult i32 %11, %cond, !dbg !2640
  br i1 %12, label %lor.lhs.false27, label %if.then30, !dbg !2640

lor.lhs.false27:                                  ; preds = %land.lhs.true
  %13 = load i8, i8* %wrapped, align 1, !dbg !2641
  call void @llvm.dbg.value(metadata i8 %13, metadata !2601, metadata !DIExpression()), !dbg !2605
  %tobool29 = icmp eq i8 %13, 0, !dbg !2641
  br i1 %tobool29, label %if.else32, label %if.then30, !dbg !2642

if.then30:                                        ; preds = %lor.lhs.false27, %land.lhs.true
  %call31 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i64 0, i64 0)) #8, !dbg !2643
  br label %if.end37, !dbg !2643

if.else32:                                        ; preds = %if.end18.if.else32_crit_edge, %lor.lhs.false27
  %14 = phi i1 [ %phitmp, %if.end18.if.else32_crit_edge ], [ true, %lor.lhs.false27 ]
  br i1 %14, label %if.end37, label %if.then34, !dbg !2644

if.then34:                                        ; preds = %if.else32
  %call35 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i64 0, i64 0)) #8, !dbg !2645
  br label %if.end37, !dbg !2645

if.end37:                                         ; preds = %if.else32, %if.then34, %if.then30
  %call38 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !2646
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call38, metadata !2597, metadata !DIExpression()), !dbg !2605
  %type39 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call38, i64 0, i32 1, !dbg !2647
  %bf.load40 = load i8, i8* %type39, align 4, !dbg !2647
  %cmp42 = icmp eq i8 %bf.load40, 61, !dbg !2648
  br i1 %cmp42, label %if.then44, label %if.else52, !dbg !2649

if.then44:                                        ; preds = %if.end37
  %15 = bitcast %struct.cpp_string* %s to i8*, !dbg !2650
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2650
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %15, i8 0, i64 16, i1 false), !dbg !2651
  %str46 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call38, i64 0, i32 3, i32 0, !dbg !2652
  call void @llvm.dbg.value(metadata %struct.cpp_string* %s, metadata !2602, metadata !DIExpression(DW_OP_deref)), !dbg !2654
  %call47 = call zeroext i8 @cpp_interpret_string_notranslate(%struct.cpp_reader* %pfile, %struct.cpp_string* nonnull %str46, i64 1, %struct.cpp_string* nonnull %s, i32 61) #8, !dbg !2655
  %tobool48 = icmp eq i8 %call47, 0, !dbg !2655
  %text50 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %s, i64 0, i32 1, !dbg !2656
  %16 = load i8*, i8** %text50, align 8, !dbg !2656
  %new_file.0 = select i1 %tobool48, i8* %4, i8* %16, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %new_file.0, metadata !2598, metadata !DIExpression()), !dbg !2605
  call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 1) #9, !dbg !2657
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #7, !dbg !2658
  br label %if.end62, !dbg !2659

if.else52:                                        ; preds = %if.end37
  %cmp56 = icmp eq i8 %bf.load40, 22, !dbg !2660
  br i1 %cmp56, label %if.end62, label %if.then58, !dbg !2662

if.then58:                                        ; preds = %if.else52
  %call59 = call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %call38) #8, !dbg !2663
  %call60 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0), i8* %call59) #8, !dbg !2665
  br label %cleanup, !dbg !2666

if.end62:                                         ; preds = %if.else52, %if.then44
  %new_file.1 = phi i8* [ %new_file.0, %if.then44 ], [ %4, %if.else52 ], !dbg !2605
  call void @llvm.dbg.value(metadata i8* %new_file.1, metadata !2598, metadata !DIExpression()), !dbg !2605
  call fastcc void @skip_rest_of_line(%struct.cpp_reader* %pfile) #9, !dbg !2667
  %17 = load i32, i32* %new_lineno, align 4, !dbg !2668
  call void @llvm.dbg.value(metadata i32 %17, metadata !2599, metadata !DIExpression()), !dbg !2605
  %conv63 = zext i8 %3 to i32, !dbg !2669
  call void @_cpp_do_file_change(%struct.cpp_reader* %pfile, i32 3, i8* %new_file.1, i32 %17, i32 %conv63) #9, !dbg !2670
  br label %cleanup, !dbg !2671

cleanup:                                          ; preds = %if.then14, %if.else, %if.end62, %if.then58
  call void @llvm.dbg.value(metadata i8* %wrapped, metadata !2601, metadata !DIExpression(DW_OP_deref)), !dbg !2605
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %wrapped) #7, !dbg !2671
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7, !dbg !2671
  ret void, !dbg !2671
}

; Function Attrs: nounwind uwtable
define internal void @do_elif(%struct.cpp_reader* %pfile) #3 !dbg !2672 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2674, metadata !DIExpression()), !dbg !2682
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2683
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !2683
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %0, metadata !2675, metadata !DIExpression()), !dbg !2682
  %if_stack = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 12, !dbg !2684
  %1 = load %struct.if_stack*, %struct.if_stack** %if_stack, align 8, !dbg !2684
  call void @llvm.dbg.value(metadata %struct.if_stack* %1, metadata !2676, metadata !DIExpression()), !dbg !2682
  %cmp = icmp eq %struct.if_stack* %1, null, !dbg !2685
  br i1 %cmp, label %if.then, label %if.else, !dbg !2686

if.then:                                          ; preds = %entry
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i64 0, i64 0)) #8, !dbg !2687
  br label %if.end20, !dbg !2687

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.if_stack, %struct.if_stack* %1, i64 0, i32 5, !dbg !2688
  %2 = load i32, i32* %type, align 4, !dbg !2688
  %cmp2 = icmp eq i32 %2, 5, !dbg !2690
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2691

if.then3:                                         ; preds = %if.else
  %call4 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i64 0, i64 0)) #8, !dbg !2692
  %line = getelementptr inbounds %struct.if_stack, %struct.if_stack* %1, i64 0, i32 1, !dbg !2694
  %3 = load i32, i32* %line, align 8, !dbg !2694
  %call5 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %3, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !2695
  br label %if.end, !dbg !2696

if.end:                                           ; preds = %if.then3, %if.else
  store i32 9, i32* %type, align 4, !dbg !2697
  %was_skipping = getelementptr inbounds %struct.if_stack, %struct.if_stack* %1, i64 0, i32 4, !dbg !2698
  %4 = load i8, i8* %was_skipping, align 1, !dbg !2698
  %tobool = icmp eq i8 %4, 0, !dbg !2699
  br i1 %tobool, label %if.then7, label %if.end19, !dbg !2700

if.then7:                                         ; preds = %if.end
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !2701
  store i8 0, i8* %skipping, align 2, !dbg !2702
  %call8 = tail call zeroext i8 @_cpp_parse_expr(%struct.cpp_reader* %pfile, i8 zeroext 0) #8, !dbg !2703
  call void @llvm.dbg.value(metadata i8 %call8, metadata !2677, metadata !DIExpression()), !dbg !2704
  %skip_elses = getelementptr inbounds %struct.if_stack, %struct.if_stack* %1, i64 0, i32 3, !dbg !2705
  %5 = load i8, i8* %skip_elses, align 8, !dbg !2705
  %tobool9 = icmp eq i8 %5, 0, !dbg !2707
  br i1 %tobool9, label %if.else13, label %if.then10, !dbg !2708

if.then10:                                        ; preds = %if.then7
  store i8 1, i8* %skipping, align 2, !dbg !2709
  br label %if.end19, !dbg !2710

if.else13:                                        ; preds = %if.then7
  %tobool14 = icmp eq i8 %call8, 0, !dbg !2711
  %conv = zext i1 %tobool14 to i8, !dbg !2711
  store i8 %conv, i8* %skipping, align 2, !dbg !2713
  store i8 %call8, i8* %skip_elses, align 8, !dbg !2714
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then10, %if.else13
  %mi_cmacro = getelementptr inbounds %struct.if_stack, %struct.if_stack* %1, i64 0, i32 2, !dbg !2715
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %mi_cmacro, align 8, !dbg !2716
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then
  ret void, !dbg !2717
}

; Function Attrs: nounwind uwtable
define internal void @do_error(%struct.cpp_reader* %pfile) #3 !dbg !2718 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2720, metadata !DIExpression()), !dbg !2721
  tail call fastcc void @do_diagnostic(%struct.cpp_reader* %pfile, i32 3, i32 1) #9, !dbg !2722
  ret void, !dbg !2723
}

; Function Attrs: nounwind uwtable
define internal void @do_pragma(%struct.cpp_reader* %pfile) #3 !dbg !2724 {
entry:
  %ns_token = alloca %struct.cpp_token, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2726, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata %struct.pragma_entry* null, metadata !2727, metadata !DIExpression()), !dbg !2745
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !2746
  %0 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !2746
  call void @llvm.dbg.value(metadata %struct.cpp_token* %0, metadata !2731, metadata !DIExpression()), !dbg !2745
  %1 = bitcast %struct.cpp_token* %ns_token to i8*, !dbg !2747
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2747
  call void @llvm.dbg.value(metadata i32 1, metadata !2733, metadata !DIExpression()), !dbg !2745
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !2748
  %2 = load i8, i8* %prevent_expansion, align 8, !dbg !2749
  %inc = add i8 %2, 1, !dbg !2749
  store i8 %inc, i8* %prevent_expansion, align 8, !dbg !2749
  %call = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !2750
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !2730, metadata !DIExpression()), !dbg !2745
  %3 = bitcast %struct.cpp_token* %call to i8*, !dbg !2751
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* align 8 %3, i64 24, i1 false), !dbg !2751
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !2752
  %bf.load = load i8, i8* %type, align 4, !dbg !2752
  %cmp = icmp eq i8 %bf.load, 53, !dbg !2753
  br i1 %cmp, label %if.then, label %if.end28, !dbg !2754

if.then:                                          ; preds = %entry
  %pragmas = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 48, !dbg !2755
  %4 = load %struct.pragma_entry*, %struct.pragma_entry** %pragmas, align 8, !dbg !2755
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, !dbg !2756
  %node1 = bitcast %union.cpp_token_u* %val to %struct.cpp_hashnode**, !dbg !2757
  %5 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node1, align 8, !dbg !2757
  %call2 = tail call fastcc %struct.pragma_entry* @lookup_pragma_entry(%struct.pragma_entry* %4, %struct.cpp_hashnode* %5) #9, !dbg !2758
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %call2, metadata !2727, metadata !DIExpression()), !dbg !2745
  %tobool = icmp eq %struct.pragma_entry* %call2, null, !dbg !2759
  br i1 %tobool, label %if.end28, label %land.lhs.true, !dbg !2760

land.lhs.true:                                    ; preds = %if.then
  %is_nspace = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call2, i64 0, i32 2, !dbg !2761
  %6 = load i8, i8* %is_nspace, align 8, !dbg !2761
  %tobool3 = icmp eq i8 %6, 0, !dbg !2762
  br i1 %tobool3, label %if.end28, label %if.then4, !dbg !2763

if.then4:                                         ; preds = %land.lhs.true
  %allow_expansion = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call2, i64 0, i32 5, !dbg !2764
  %7 = load i8, i8* %allow_expansion, align 1, !dbg !2764
  call void @llvm.dbg.value(metadata i8 %7, metadata !2734, metadata !DIExpression()), !dbg !2765
  %tobool5 = icmp eq i8 %7, 0, !dbg !2766
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !2768

if.then6:                                         ; preds = %if.then4
  %8 = load i8, i8* %prevent_expansion, align 8, !dbg !2769
  %dec = add i8 %8, -1, !dbg !2769
  store i8 %dec, i8* %prevent_expansion, align 8, !dbg !2769
  br label %if.end, !dbg !2770

if.end:                                           ; preds = %if.then4, %if.then6
  %call9 = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !2771
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call9, metadata !2730, metadata !DIExpression()), !dbg !2745
  %type10 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call9, i64 0, i32 1, !dbg !2772
  %bf.load11 = load i8, i8* %type10, align 4, !dbg !2772
  %cmp13 = icmp eq i8 %bf.load11, 53, !dbg !2774
  br i1 %cmp13, label %if.then15, label %if.end20, !dbg !2775

if.then15:                                        ; preds = %if.end
  %u = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %call2, i64 0, i32 6, !dbg !2776
  %space = bitcast %union.anon.1* %u to %struct.pragma_entry**, !dbg !2777
  %9 = load %struct.pragma_entry*, %struct.pragma_entry** %space, align 8, !dbg !2777
  %val16 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call9, i64 0, i32 3, !dbg !2778
  %node18 = bitcast %union.cpp_token_u* %val16 to %struct.cpp_hashnode**, !dbg !2779
  %10 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node18, align 8, !dbg !2779
  %call19 = tail call fastcc %struct.pragma_entry* @lookup_pragma_entry(%struct.pragma_entry* %9, %struct.cpp_hashnode* %10) #9, !dbg !2780
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %call19, metadata !2727, metadata !DIExpression()), !dbg !2745
  br label %if.end20, !dbg !2781

if.end20:                                         ; preds = %if.end, %if.then15
  %p.0 = phi %struct.pragma_entry* [ %call19, %if.then15 ], [ null, %if.end ], !dbg !2782
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %p.0, metadata !2727, metadata !DIExpression()), !dbg !2745
  br i1 %tobool5, label %if.end28, label %if.then22, !dbg !2783

if.then22:                                        ; preds = %if.end20
  %11 = load i8, i8* %prevent_expansion, align 8, !dbg !2784
  %inc25 = add i8 %11, 1, !dbg !2784
  store i8 %inc25, i8* %prevent_expansion, align 8, !dbg !2784
  br label %if.end28, !dbg !2786

if.end28:                                         ; preds = %if.end20, %land.lhs.true, %if.then, %if.then22, %entry
  %token.1 = phi %struct.cpp_token* [ %call, %entry ], [ %call, %land.lhs.true ], [ %call, %if.then ], [ %call9, %if.then22 ], [ %call9, %if.end20 ], !dbg !2745
  %p.2 = phi %struct.pragma_entry* [ null, %entry ], [ %call2, %land.lhs.true ], [ null, %if.then ], [ %p.0, %if.then22 ], [ %p.0, %if.end20 ], !dbg !2745
  %count.1 = phi i32 [ 1, %entry ], [ 1, %land.lhs.true ], [ 1, %if.then ], [ 2, %if.then22 ], [ 2, %if.end20 ], !dbg !2745
  call void @llvm.dbg.value(metadata i32 %count.1, metadata !2733, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %p.2, metadata !2727, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token.1, metadata !2730, metadata !DIExpression()), !dbg !2745
  %tobool29 = icmp eq %struct.pragma_entry* %p.2, null, !dbg !2787
  br i1 %tobool29, label %if.else73, label %if.then30, !dbg !2788

if.then30:                                        ; preds = %if.end28
  %is_deferred = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %p.2, i64 0, i32 4, !dbg !2789
  %12 = load i8, i8* %is_deferred, align 2, !dbg !2789
  %tobool31 = icmp eq i8 %12, 0, !dbg !2792
  br i1 %tobool31, label %if.else51, label %if.then32, !dbg !2793

if.then32:                                        ; preds = %if.then30
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i64 0, i32 0, !dbg !2794
  %13 = load i32, i32* %src_loc, align 8, !dbg !2794
  %src_loc33 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 11, i32 0, !dbg !2796
  store i32 %13, i32* %src_loc33, align 8, !dbg !2797
  %type35 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 11, i32 1, !dbg !2798
  store i8 70, i8* %type35, align 4, !dbg !2799
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i64 0, i32 2, !dbg !2800
  %14 = load i16, i16* %flags, align 2, !dbg !2800
  %flags37 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 11, i32 2, !dbg !2801
  store i16 %14, i16* %flags37, align 2, !dbg !2802
  %u38 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %p.2, i64 0, i32 6, !dbg !2803
  %ident = bitcast %union.anon.1* %u38 to i32*, !dbg !2804
  %15 = load i32, i32* %ident, align 8, !dbg !2804
  %pragma = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 11, i32 3, i32 0, i32 0, !dbg !2805
  store i32 %15, i32* %pragma, align 8, !dbg !2806
  %in_deferred_pragma = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 12, !dbg !2807
  store i8 1, i8* %in_deferred_pragma, align 8, !dbg !2808
  %allow_expansion42 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %p.2, i64 0, i32 5, !dbg !2809
  %16 = load i8, i8* %allow_expansion42, align 1, !dbg !2809
  %pragma_allow_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 13, !dbg !2810
  store i8 %16, i8* %pragma_allow_expansion, align 1, !dbg !2811
  %17 = load i8, i8* %allow_expansion42, align 1, !dbg !2812
  %tobool45 = icmp eq i8 %17, 0, !dbg !2814
  br i1 %tobool45, label %if.then46, label %if.end98, !dbg !2815

if.then46:                                        ; preds = %if.then32
  %18 = load i8, i8* %prevent_expansion, align 8, !dbg !2816
  %inc49 = add i8 %18, 1, !dbg !2816
  store i8 %inc49, i8* %prevent_expansion, align 8, !dbg !2816
  br label %if.end98, !dbg !2817

if.else51:                                        ; preds = %if.then30
  %line_change = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 0, !dbg !2818
  %19 = load void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.cpp_token*, i32)** %line_change, align 8, !dbg !2818
  %tobool52 = icmp eq void (%struct.cpp_reader*, %struct.cpp_token*, i32)* %19, null, !dbg !2821
  br i1 %tobool52, label %if.end56, label %if.then53, !dbg !2822

if.then53:                                        ; preds = %if.else51
  tail call void %19(%struct.cpp_reader* %pfile, %struct.cpp_token* %0, i32 0) #8, !dbg !2823
  br label %if.end56, !dbg !2823

if.end56:                                         ; preds = %if.else51, %if.then53
  %allow_expansion57 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %p.2, i64 0, i32 5, !dbg !2824
  %20 = load i8, i8* %allow_expansion57, align 1, !dbg !2824
  %tobool58 = icmp eq i8 %20, 0, !dbg !2826
  br i1 %tobool58, label %if.end63, label %if.then59, !dbg !2827

if.then59:                                        ; preds = %if.end56
  %21 = load i8, i8* %prevent_expansion, align 8, !dbg !2828
  %dec62 = add i8 %21, -1, !dbg !2828
  store i8 %dec62, i8* %prevent_expansion, align 8, !dbg !2828
  br label %if.end63, !dbg !2829

if.end63:                                         ; preds = %if.end56, %if.then59
  %handler = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %p.2, i64 0, i32 6, i32 0, !dbg !2830
  %22 = load void (%struct.cpp_reader*)*, void (%struct.cpp_reader*)** %handler, align 8, !dbg !2830
  tail call void %22(%struct.cpp_reader* %pfile) #8, !dbg !2831
  %23 = load i8, i8* %allow_expansion57, align 1, !dbg !2832
  %tobool66 = icmp eq i8 %23, 0, !dbg !2834
  br i1 %tobool66, label %if.end98, label %if.then67, !dbg !2835

if.then67:                                        ; preds = %if.end63
  %24 = load i8, i8* %prevent_expansion, align 8, !dbg !2836
  %inc70 = add i8 %24, 1, !dbg !2836
  store i8 %inc70, i8* %prevent_expansion, align 8, !dbg !2836
  br label %if.end98, !dbg !2837

if.else73:                                        ; preds = %if.end28
  %def_pragma = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 7, !dbg !2838
  %25 = load void (%struct.cpp_reader*, i32)*, void (%struct.cpp_reader*, i32)** %def_pragma, align 8, !dbg !2838
  %tobool75 = icmp eq void (%struct.cpp_reader*, i32)* %25, null, !dbg !2839
  br i1 %tobool75, label %if.end98, label %if.then76, !dbg !2840

if.then76:                                        ; preds = %if.else73
  %cmp77 = icmp eq i32 %count.1, 1, !dbg !2841
  br i1 %cmp77, label %if.then81, label %lor.lhs.false, !dbg !2842

lor.lhs.false:                                    ; preds = %if.then76
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !2843
  %26 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !2843
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %26, i64 0, i32 1, !dbg !2844
  %27 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8, !dbg !2844
  %cmp79 = icmp eq %struct.cpp_context* %27, null, !dbg !2845
  br i1 %cmp79, label %if.then81, label %if.else82, !dbg !2846

if.then81:                                        ; preds = %lor.lhs.false, %if.then76
  tail call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 %count.1) #8, !dbg !2847
  br label %if.end94, !dbg !2847

if.else82:                                        ; preds = %lor.lhs.false
  %call83 = tail call i8* @xmalloc(i64 48) #8, !dbg !2848
  %28 = bitcast i8* %call83 to %struct.cpp_token*, !dbg !2848
  call void @llvm.dbg.value(metadata %struct.cpp_token* %28, metadata !2739, metadata !DIExpression()), !dbg !2849
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call83, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2850
  %flags85 = getelementptr inbounds i8, i8* %call83, i64 6, !dbg !2851
  %29 = bitcast i8* %flags85 to i16*, !dbg !2851
  %30 = load i16, i16* %29, align 2, !dbg !2852
  %31 = or i16 %30, 32, !dbg !2852
  store i16 %31, i16* %29, align 2, !dbg !2852
  %arrayidx88 = getelementptr inbounds i8, i8* %call83, i64 24, !dbg !2853
  %32 = bitcast %struct.cpp_token* %token.1 to i8*, !dbg !2854
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %arrayidx88, i8* align 8 %32, i64 24, i1 false), !dbg !2854
  %flags90 = getelementptr inbounds i8, i8* %call83, i64 30, !dbg !2855
  %33 = bitcast i8* %flags90 to i16*, !dbg !2855
  %34 = load i16, i16* %33, align 2, !dbg !2856
  %35 = or i16 %34, 32, !dbg !2856
  store i16 %35, i16* %33, align 2, !dbg !2856
  tail call void @_cpp_push_token_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* null, %struct.cpp_token* %28, i32 2) #8, !dbg !2857
  br label %if.end94

if.end94:                                         ; preds = %if.else82, %if.then81
  %36 = load void (%struct.cpp_reader*, i32)*, void (%struct.cpp_reader*, i32)** %def_pragma, align 8, !dbg !2858
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !2859
  %37 = load i32, i32* %directive_line, align 8, !dbg !2859
  tail call void %36(%struct.cpp_reader* %pfile, i32 %37) #8, !dbg !2860
  br label %if.end98, !dbg !2861

if.end98:                                         ; preds = %if.then32, %if.end63, %if.else73, %if.end94, %if.then46, %if.then67
  %38 = load i8, i8* %prevent_expansion, align 8, !dbg !2862
  %dec101 = add i8 %38, -1, !dbg !2862
  store i8 %dec101, i8* %prevent_expansion, align 8, !dbg !2862
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2863
  ret void, !dbg !2863
}

; Function Attrs: nounwind uwtable
define internal void @do_warning(%struct.cpp_reader* %pfile) #3 !dbg !2864 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2866, metadata !DIExpression()), !dbg !2867
  tail call fastcc void @do_diagnostic(%struct.cpp_reader* %pfile, i32 1, i32 1) #9, !dbg !2868
  ret void, !dbg !2869
}

; Function Attrs: nounwind uwtable
define internal void @do_include_next(%struct.cpp_reader* %pfile) #3 !dbg !2870 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2872, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 1, metadata !2873, metadata !DIExpression()), !dbg !2874
  %call = tail call fastcc i32 @cpp_in_primary_file(%struct.cpp_reader* %pfile) #9, !dbg !2875
  %tobool = icmp eq i32 %call, 0, !dbg !2875
  br i1 %tobool, label %if.end, label %if.then, !dbg !2877

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.55, i64 0, i64 0)) #8, !dbg !2878
  call void @llvm.dbg.value(metadata i32 0, metadata !2873, metadata !DIExpression()), !dbg !2874
  br label %if.end, !dbg !2880

if.end:                                           ; preds = %entry, %if.then
  %type.0 = phi i32 [ 0, %if.then ], [ 1, %entry ], !dbg !2874
  call void @llvm.dbg.value(metadata i32 %type.0, metadata !2873, metadata !DIExpression()), !dbg !2874
  tail call fastcc void @do_include_common(%struct.cpp_reader* %pfile, i32 %type.0) #9, !dbg !2881
  ret void, !dbg !2882
}

; Function Attrs: nounwind uwtable
define internal void @do_ident(%struct.cpp_reader* %pfile) #3 !dbg !2883 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2885, metadata !DIExpression()), !dbg !2887
  %call = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !2888
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !2886, metadata !DIExpression()), !dbg !2887
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !2889
  %bf.load = load i8, i8* %type, align 4, !dbg !2889
  %cmp = icmp eq i8 %bf.load, 61, !dbg !2891
  br i1 %cmp, label %if.else, label %if.then, !dbg !2892

if.then:                                          ; preds = %entry
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !2893
  %0 = load %struct.directive*, %struct.directive** %directive, align 8, !dbg !2893
  %name = getelementptr inbounds %struct.directive, %struct.directive* %0, i64 0, i32 1, !dbg !2894
  %1 = load i8*, i8** %name, align 8, !dbg !2894
  %call1 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i64 0, i64 0), i8* %1) #8, !dbg !2895
  br label %if.end6, !dbg !2895

if.else:                                          ; preds = %entry
  %ident = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 6, !dbg !2896
  %2 = load void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)** %ident, align 8, !dbg !2896
  %tobool = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_string*)* %2, null, !dbg !2898
  br i1 %tobool, label %if.end6, label %if.then2, !dbg !2899

if.then2:                                         ; preds = %if.else
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !2900
  %3 = load i32, i32* %directive_line, align 8, !dbg !2900
  %str5 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, !dbg !2901
  tail call void %2(%struct.cpp_reader* %pfile, i32 %3, %struct.cpp_string* nonnull %str5) #8, !dbg !2902
  br label %if.end6, !dbg !2902

if.end6:                                          ; preds = %if.else, %if.then2, %if.then
  tail call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !2903
  ret void, !dbg !2904
}

; Function Attrs: nounwind uwtable
define internal void @do_import(%struct.cpp_reader* %pfile) #3 !dbg !2905 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2907, metadata !DIExpression()), !dbg !2908
  tail call fastcc void @do_include_common(%struct.cpp_reader* %pfile, i32 2) #9, !dbg !2909
  ret void, !dbg !2910
}

; Function Attrs: nounwind uwtable
define internal void @do_assert(%struct.cpp_reader* %pfile) #3 !dbg !2911 {
entry:
  %new_answer = alloca %struct.answer*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2913, metadata !DIExpression()), !dbg !2922
  %0 = bitcast %struct.answer** %new_answer to i8*, !dbg !2923
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2923
  call void @llvm.dbg.value(metadata %struct.answer** %new_answer, metadata !2914, metadata !DIExpression(DW_OP_deref)), !dbg !2922
  %call = call fastcc %struct.cpp_hashnode* @parse_assertion(%struct.cpp_reader* %pfile, %struct.answer** nonnull %new_answer, i32 16) #9, !dbg !2924
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call, metadata !2915, metadata !DIExpression()), !dbg !2922
  %tobool = icmp eq %struct.cpp_hashnode* %call, null, !dbg !2925
  br i1 %tobool, label %cleanup22, label %if.then, !dbg !2926

if.then:                                          ; preds = %entry
  %1 = load %struct.answer*, %struct.answer** %new_answer, align 8, !dbg !2927
  call void @llvm.dbg.value(metadata %struct.answer* %1, metadata !2914, metadata !DIExpression()), !dbg !2922
  %next = getelementptr inbounds %struct.answer, %struct.answer* %1, i64 0, i32 0, !dbg !2928
  store %struct.answer* null, %struct.answer** %next, align 8, !dbg !2929
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 3, !dbg !2930
  %bf.load = load i16, i16* %type, align 2, !dbg !2930
  %bf.clear = and i16 %bf.load, 63, !dbg !2930
  %cmp = icmp eq i16 %bf.clear, 2, !dbg !2932
  br i1 %cmp, label %if.then1, label %if.end7, !dbg !2933

if.then1:                                         ; preds = %if.then
  %2 = load %struct.answer*, %struct.answer** %new_answer, align 8, !dbg !2934
  call void @llvm.dbg.value(metadata %struct.answer* %2, metadata !2914, metadata !DIExpression()), !dbg !2922
  %call2 = call fastcc %struct.answer** @find_answer(%struct.cpp_hashnode* nonnull %call, %struct.answer* %2) #9, !dbg !2937
  %3 = load %struct.answer*, %struct.answer** %call2, align 8, !dbg !2938
  %tobool3 = icmp eq %struct.answer* %3, null, !dbg !2938
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !2939

if.then4:                                         ; preds = %if.then1
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 0, i32 0, !dbg !2940
  %4 = load i8*, i8** %str, align 8, !dbg !2940
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1, !dbg !2942
  %call5 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* nonnull %add.ptr) #8, !dbg !2943
  br label %cleanup22, !dbg !2944

if.end:                                           ; preds = %if.then1
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 4, !dbg !2945
  %5 = bitcast %union._cpp_hashnode_value* %value to i64*, !dbg !2946
  %6 = load i64, i64* %5, align 8, !dbg !2946
  %7 = bitcast %struct.answer** %new_answer to i64**, !dbg !2947
  %8 = load i64*, i64** %7, align 8, !dbg !2947
  store i64 %6, i64* %8, align 8, !dbg !2948
  br label %if.end7, !dbg !2949

if.end7:                                          ; preds = %if.end, %if.then
  %9 = load %struct.answer*, %struct.answer** %new_answer, align 8, !dbg !2950
  call void @llvm.dbg.value(metadata %struct.answer* %9, metadata !2914, metadata !DIExpression()), !dbg !2922
  %count = getelementptr inbounds %struct.answer, %struct.answer* %9, i64 0, i32 1, !dbg !2951
  %10 = load i32, i32* %count, align 8, !dbg !2951
  %sub = add i32 %10, -1, !dbg !2952
  %conv = zext i32 %sub to i64, !dbg !2953
  %mul = mul nuw nsw i64 %conv, 24, !dbg !2954
  %add = add nuw nsw i64 %mul, 40, !dbg !2955
  call void @llvm.dbg.value(metadata i64 %add, metadata !2916, metadata !DIExpression()), !dbg !2956
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 50, !dbg !2957
  %11 = load %struct.ht*, %struct.ht** %hash_table, align 8, !dbg !2957
  %alloc_subobject = getelementptr inbounds %struct.ht, %struct.ht* %11, i64 0, i32 3, !dbg !2958
  %12 = load i8* (i64)*, i8* (i64)** %alloc_subobject, align 8, !dbg !2958
  %tobool8 = icmp eq i8* (i64)* %12, null, !dbg !2959
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !2960

if.then9:                                         ; preds = %if.end7
  %13 = bitcast %struct.answer* %9 to i8*, !dbg !2960
  %14 = bitcast %struct.answer** %new_answer to i8**, !dbg !2961
  %call12 = call i8* %12(i64 %add) #8, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %call12, metadata !2914, metadata !DIExpression()), !dbg !2922
  store i8* %call12, i8** %14, align 8, !dbg !2963
  %call13 = call i8* @memcpy(i8* %call12, i8* %13, i64 %add) #8, !dbg !2964
  %.phi.trans.insert = bitcast %struct.answer** %new_answer to i64*, !dbg !2956
  %.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !2965
  br label %if.end15, !dbg !2966

if.else:                                          ; preds = %if.end7
  %15 = ptrtoint %struct.answer* %9 to i64, !dbg !2960
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 5, !dbg !2967
  %16 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !2967
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %16, i64 0, i32 2, !dbg !2967
  %17 = load i8*, i8** %cur, align 8, !dbg !2968
  %add.ptr14 = getelementptr inbounds i8, i8* %17, i64 %add, !dbg !2968
  store i8* %add.ptr14, i8** %cur, align 8, !dbg !2968
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then9
  %18 = phi i64 [ %15, %if.else ], [ %.pre, %if.then9 ], !dbg !2965
  %bf.load17 = load i16, i16* %type, align 2, !dbg !2969
  %bf.clear18 = and i16 %bf.load17, -64, !dbg !2969
  %bf.set = or i16 %bf.clear18, 2, !dbg !2969
  store i16 %bf.set, i16* %type, align 2, !dbg !2969
  %value19 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 4, !dbg !2970
  %19 = bitcast %union._cpp_hashnode_value* %value19 to i64*, !dbg !2971
  store i64 %18, i64* %19, align 8, !dbg !2971
  call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !2972
  br label %cleanup22, !dbg !2973

cleanup22:                                        ; preds = %entry, %if.then4, %if.end15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2974
  ret void, !dbg !2974
}

; Function Attrs: nounwind uwtable
define internal void @do_unassert(%struct.cpp_reader* %pfile) #3 !dbg !2975 {
entry:
  %answer = alloca %struct.answer*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2977, metadata !DIExpression()), !dbg !2986
  %0 = bitcast %struct.answer** %answer to i8*, !dbg !2987
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2987
  call void @llvm.dbg.value(metadata %struct.answer** %answer, metadata !2979, metadata !DIExpression(DW_OP_deref)), !dbg !2986
  %call = call fastcc %struct.cpp_hashnode* @parse_assertion(%struct.cpp_reader* %pfile, %struct.answer** nonnull %answer, i32 17) #9, !dbg !2988
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call, metadata !2978, metadata !DIExpression()), !dbg !2986
  %tobool = icmp eq %struct.cpp_hashnode* %call, null, !dbg !2989
  br i1 %tobool, label %if.end13, label %land.lhs.true, !dbg !2990

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 3, !dbg !2991
  %bf.load = load i16, i16* %type, align 2, !dbg !2991
  %bf.clear = and i16 %bf.load, 63, !dbg !2991
  %cmp = icmp eq i16 %bf.clear, 2, !dbg !2992
  br i1 %cmp, label %if.then, label %if.end13, !dbg !2993

if.then:                                          ; preds = %land.lhs.true
  %1 = load %struct.answer*, %struct.answer** %answer, align 8, !dbg !2994
  call void @llvm.dbg.value(metadata %struct.answer* %1, metadata !2979, metadata !DIExpression()), !dbg !2986
  %tobool1 = icmp eq %struct.answer* %1, null, !dbg !2994
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !2995

if.then2:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct.answer* %1, metadata !2979, metadata !DIExpression()), !dbg !2986
  %call3 = call fastcc %struct.answer** @find_answer(%struct.cpp_hashnode* nonnull %call, %struct.answer* nonnull %1) #9, !dbg !2996
  call void @llvm.dbg.value(metadata %struct.answer** %call3, metadata !2980, metadata !DIExpression()), !dbg !2997
  %2 = load %struct.answer*, %struct.answer** %call3, align 8, !dbg !2998
  call void @llvm.dbg.value(metadata %struct.answer* %2, metadata !2985, metadata !DIExpression()), !dbg !2997
  %tobool4 = icmp eq %struct.answer* %2, null, !dbg !2999
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !3001

if.then5:                                         ; preds = %if.then2
  %3 = bitcast %struct.answer* %2 to i64*, !dbg !3002
  %4 = load i64, i64* %3, align 8, !dbg !3002
  %5 = bitcast %struct.answer** %call3 to i64*, !dbg !3003
  store i64 %4, i64* %5, align 8, !dbg !3003
  br label %if.end, !dbg !3004

if.end:                                           ; preds = %if.then2, %if.then5
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call, i64 0, i32 4, !dbg !3005
  %answers = bitcast %union._cpp_hashnode_value* %value to %struct.answer**, !dbg !3007
  %6 = load %struct.answer*, %struct.answer** %answers, align 8, !dbg !3007
  %cmp6 = icmp eq %struct.answer* %6, null, !dbg !3008
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !3009

if.then7:                                         ; preds = %if.end
  %bf.load9 = load i16, i16* %type, align 2, !dbg !3010
  %bf.clear10 = and i16 %bf.load9, -64, !dbg !3010
  store i16 %bf.clear10, i16* %type, align 2, !dbg !3010
  br label %if.end11, !dbg !3011

if.end11:                                         ; preds = %if.then7, %if.end
  call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !3012
  br label %if.end13, !dbg !3013

if.else:                                          ; preds = %if.then
  call void @_cpp_free_definition(%struct.cpp_hashnode* nonnull %call) #8, !dbg !3014
  br label %if.end13

if.end13:                                         ; preds = %entry, %if.end11, %if.else, %land.lhs.true
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3015
  ret void, !dbg !3015
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_hashnode* @lex_macro_node(%struct.cpp_reader* %pfile, i8 zeroext %is_def_or_undef) unnamed_addr #3 !dbg !3016 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3020, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i8 %is_def_or_undef, metadata !3021, metadata !DIExpression()), !dbg !3026
  %call = tail call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %pfile) #8, !dbg !3027
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !3022, metadata !DIExpression()), !dbg !3026
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !3028
  %bf.load = load i8, i8* %type, align 4, !dbg !3028
  %cmp = icmp eq i8 %bf.load, 53, !dbg !3029
  br i1 %cmp, label %if.then, label %if.else12, !dbg !3030

if.then:                                          ; preds = %entry
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, !dbg !3031
  %node2 = bitcast %union.cpp_token_u* %val to %struct.cpp_hashnode**, !dbg !3032
  %0 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node2, align 8, !dbg !3032
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %0, metadata !3023, metadata !DIExpression()), !dbg !3033
  %tobool = icmp eq i8 %is_def_or_undef, 0, !dbg !3034
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3036

land.lhs.true:                                    ; preds = %if.then
  %n_defined = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 54, i32 0, !dbg !3037
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n_defined, align 8, !dbg !3037
  %cmp3 = icmp eq %struct.cpp_hashnode* %0, %1, !dbg !3038
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !3039

if.then5:                                         ; preds = %land.lhs.true
  %call6 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i64 0, i64 0)) #8, !dbg !3040
  br label %if.end11, !dbg !3040

if.else:                                          ; preds = %if.then, %land.lhs.true
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %0, i64 0, i32 3, !dbg !3041
  %bf.load7 = load i16, i16* %flags, align 2, !dbg !3041
  %2 = trunc i16 %bf.load7 to i8, !dbg !3043
  %tobool9 = icmp slt i8 %2, 0, !dbg !3043
  br i1 %tobool9, label %if.end11, label %cleanup, !dbg !3044

if.end11:                                         ; preds = %if.else, %if.then5
  br label %cleanup, !dbg !3045

cleanup:                                          ; preds = %if.else, %if.end11
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end11 ], [ false, %if.else ]
  br i1 %cleanup.dest.slot.0, label %if.end34, label %cleanup35

if.else12:                                        ; preds = %entry
  %flags13 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 2, !dbg !3046
  %3 = load i16, i16* %flags13, align 2, !dbg !3046
  %4 = and i16 %3, 16, !dbg !3048
  %tobool16 = icmp eq i16 %4, 0, !dbg !3048
  br i1 %tobool16, label %if.else22, label %if.then17, !dbg !3049

if.then17:                                        ; preds = %if.else12
  %val18 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, !dbg !3050
  %node20 = bitcast %union.cpp_token_u* %val18 to %struct.cpp_hashnode**, !dbg !3050
  %5 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node20, align 8, !dbg !3050
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %5, i64 0, i32 0, i32 0, !dbg !3050
  %6 = load i8*, i8** %str, align 8, !dbg !3050
  %call21 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.34, i64 0, i64 0), i8* %6) #8, !dbg !3051
  br label %if.end34, !dbg !3051

if.else22:                                        ; preds = %if.else12
  %cmp26 = icmp eq i8 %bf.load, 22, !dbg !3052
  br i1 %cmp26, label %if.then28, label %if.else30, !dbg !3054

if.then28:                                        ; preds = %if.else22
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !3055
  %7 = load %struct.directive*, %struct.directive** %directive, align 8, !dbg !3055
  %name = getelementptr inbounds %struct.directive, %struct.directive* %7, i64 0, i32 1, !dbg !3056
  %8 = load i8*, i8** %name, align 8, !dbg !3056
  %call29 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i64 0, i64 0), i8* %8) #8, !dbg !3057
  br label %if.end34, !dbg !3057

if.else30:                                        ; preds = %if.else22
  %call31 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0)) #8, !dbg !3058
  br label %if.end34

if.end34:                                         ; preds = %if.then17, %if.else30, %if.then28, %cleanup
  br label %cleanup35, !dbg !3059

cleanup35:                                        ; preds = %cleanup, %if.end34
  %retval.1 = phi %struct.cpp_hashnode* [ %0, %cleanup ], [ null, %if.end34 ]
  ret %struct.cpp_hashnode* %retval.1, !dbg !3060
}

declare dso_local zeroext i8 @_cpp_create_definition(%struct.cpp_reader*, %struct.cpp_hashnode*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @do_include_common(%struct.cpp_reader* %pfile, i32 %type) unnamed_addr #3 !dbg !3061 {
entry:
  %angle_brackets = alloca i32, align 4
  %buf = alloca %struct.cpp_token**, align 8
  %location = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3065, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i32 %type, metadata !3066, metadata !DIExpression()), !dbg !3071
  %0 = bitcast i32* %angle_brackets to i8*, !dbg !3072
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !3072
  %1 = bitcast %struct.cpp_token*** %buf to i8*, !dbg !3073
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3073
  call void @llvm.dbg.value(metadata %struct.cpp_token** null, metadata !3069, metadata !DIExpression()), !dbg !3071
  store %struct.cpp_token** null, %struct.cpp_token*** %buf, align 8, !dbg !3074
  %2 = bitcast i32* %location to i8*, !dbg !3075
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7, !dbg !3075
  %discard_comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 5, !dbg !3076
  %3 = load i8, i8* %discard_comments, align 1, !dbg !3076
  %tobool = icmp eq i8 %3, 0, !dbg !3077
  %conv = zext i1 %tobool to i8, !dbg !3077
  %save_comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 5, !dbg !3078
  store i8 %conv, i8* %save_comments, align 1, !dbg !3079
  call void @llvm.dbg.value(metadata i32* %angle_brackets, metadata !3068, metadata !DIExpression(DW_OP_deref)), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.cpp_token*** %buf, metadata !3069, metadata !DIExpression(DW_OP_deref)), !dbg !3071
  call void @llvm.dbg.value(metadata i32* %location, metadata !3070, metadata !DIExpression(DW_OP_deref)), !dbg !3071
  %call = call fastcc i8* @parse_include(%struct.cpp_reader* %pfile, i32* nonnull %angle_brackets, %struct.cpp_token*** nonnull %buf, i32* nonnull %location) #9, !dbg !3080
  call void @llvm.dbg.value(metadata i8* %call, metadata !3067, metadata !DIExpression()), !dbg !3071
  %tobool1 = icmp eq i8* %call, null, !dbg !3081
  br i1 %tobool1, label %if.then, label %if.end4, !dbg !3083

if.then:                                          ; preds = %entry
  %4 = load %struct.cpp_token**, %struct.cpp_token*** %buf, align 8, !dbg !3084
  call void @llvm.dbg.value(metadata %struct.cpp_token** %4, metadata !3069, metadata !DIExpression()), !dbg !3071
  %tobool2 = icmp eq %struct.cpp_token** %4, null, !dbg !3084
  br i1 %tobool2, label %cleanup, label %if.then3, !dbg !3087

if.then3:                                         ; preds = %if.then
  %5 = bitcast %struct.cpp_token** %4 to i8*, !dbg !3087
  call void @free(i8* nonnull %5) #8, !dbg !3088
  br label %cleanup, !dbg !3088

if.end4:                                          ; preds = %entry
  %6 = load i8, i8* %call, align 1, !dbg !3089
  %tobool5 = icmp eq i8 %6, 0, !dbg !3089
  br i1 %tobool5, label %if.then6, label %if.end11, !dbg !3091

if.then6:                                         ; preds = %if.end4
  %7 = load i32, i32* %location, align 4, !dbg !3092
  call void @llvm.dbg.value(metadata i32 %7, metadata !3070, metadata !DIExpression()), !dbg !3071
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !3094
  %8 = load %struct.directive*, %struct.directive** %directive, align 8, !dbg !3094
  %name = getelementptr inbounds %struct.directive, %struct.directive* %8, i64 0, i32 1, !dbg !3095
  %9 = load i8*, i8** %name, align 8, !dbg !3095
  %call7 = call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %7, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i8* %9) #8, !dbg !3096
  call void @free(i8* nonnull %call) #8, !dbg !3097
  %10 = load %struct.cpp_token**, %struct.cpp_token*** %buf, align 8, !dbg !3098
  call void @llvm.dbg.value(metadata %struct.cpp_token** %10, metadata !3069, metadata !DIExpression()), !dbg !3071
  %tobool8 = icmp eq %struct.cpp_token** %10, null, !dbg !3098
  br i1 %tobool8, label %cleanup, label %if.then9, !dbg !3100

if.then9:                                         ; preds = %if.then6
  %11 = bitcast %struct.cpp_token** %10 to i8*, !dbg !3100
  call void @free(i8* nonnull %11) #8, !dbg !3101
  br label %cleanup, !dbg !3101

if.end11:                                         ; preds = %if.end4
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !3102
  %12 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !3102
  %depth = getelementptr inbounds %struct.line_maps, %struct.line_maps* %12, i64 0, i32 5, !dbg !3104
  %13 = load i32, i32* %depth, align 8, !dbg !3104
  %cmp = icmp ugt i32 %13, 199, !dbg !3105
  br i1 %cmp, label %if.then13, label %if.else, !dbg !3106

if.then13:                                        ; preds = %if.end11
  %call14 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !3107
  br label %if.end23, !dbg !3107

if.else:                                          ; preds = %if.end11
  call fastcc void @skip_rest_of_line(%struct.cpp_reader* %pfile) #9, !dbg !3108
  %include = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 3, !dbg !3110
  %14 = load void (%struct.cpp_reader*, i32, i8*, i8*, i32, %struct.cpp_token**)*, void (%struct.cpp_reader*, i32, i8*, i8*, i32, %struct.cpp_token**)** %include, align 8, !dbg !3110
  %tobool15 = icmp eq void (%struct.cpp_reader*, i32, i8*, i8*, i32, %struct.cpp_token**)* %14, null, !dbg !3112
  br i1 %tobool15, label %if.end21, label %if.then16, !dbg !3113

if.then16:                                        ; preds = %if.else
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !3114
  %15 = load i32, i32* %directive_line, align 8, !dbg !3114
  %directive19 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !3115
  %16 = load %struct.directive*, %struct.directive** %directive19, align 8, !dbg !3115
  %name20 = getelementptr inbounds %struct.directive, %struct.directive* %16, i64 0, i32 1, !dbg !3116
  %17 = load i8*, i8** %name20, align 8, !dbg !3116
  %18 = load i32, i32* %angle_brackets, align 4, !dbg !3117
  call void @llvm.dbg.value(metadata i32 %18, metadata !3068, metadata !DIExpression()), !dbg !3071
  %19 = load %struct.cpp_token**, %struct.cpp_token*** %buf, align 8, !dbg !3118
  call void @llvm.dbg.value(metadata %struct.cpp_token** %19, metadata !3069, metadata !DIExpression()), !dbg !3071
  call void %14(%struct.cpp_reader* %pfile, i32 %15, i8* %17, i8* nonnull %call, i32 %18, %struct.cpp_token** %19) #8, !dbg !3119
  br label %if.end21, !dbg !3119

if.end21:                                         ; preds = %if.else, %if.then16
  %20 = load i32, i32* %angle_brackets, align 4, !dbg !3120
  call void @llvm.dbg.value(metadata i32 %20, metadata !3068, metadata !DIExpression()), !dbg !3071
  %call22 = call zeroext i8 @_cpp_stack_include(%struct.cpp_reader* %pfile, i8* nonnull %call, i32 %20, i32 %type) #8, !dbg !3121
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.then13
  call void @free(i8* nonnull %call) #8, !dbg !3122
  %21 = load %struct.cpp_token**, %struct.cpp_token*** %buf, align 8, !dbg !3123
  call void @llvm.dbg.value(metadata %struct.cpp_token** %21, metadata !3069, metadata !DIExpression()), !dbg !3071
  %tobool24 = icmp eq %struct.cpp_token** %21, null, !dbg !3123
  br i1 %tobool24, label %cleanup, label %if.then25, !dbg !3125

if.then25:                                        ; preds = %if.end23
  %22 = bitcast %struct.cpp_token** %21 to i8*, !dbg !3125
  call void @free(i8* nonnull %22) #8, !dbg !3126
  br label %cleanup, !dbg !3126

cleanup:                                          ; preds = %if.end23, %if.then6, %if.then, %if.then25, %if.then9, %if.then3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7, !dbg !3127
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3127
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !3127
  ret void, !dbg !3127
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @parse_include(%struct.cpp_reader* %pfile, i32* %pangle_brackets, %struct.cpp_token*** %buf, i32* %location) unnamed_addr #3 !dbg !3128 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3135, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i32* %pangle_brackets, metadata !3136, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata %struct.cpp_token*** %buf, metadata !3137, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i32* %location, metadata !3138, metadata !DIExpression()), !dbg !3145
  %call = tail call fastcc %struct.cpp_token* @get_token_no_padding(%struct.cpp_reader* %pfile) #9, !dbg !3146
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !3140, metadata !DIExpression()), !dbg !3145
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 0, !dbg !3147
  %0 = load i32, i32* %src_loc, align 8, !dbg !3147
  store i32 %0, i32* %location, align 4, !dbg !3148
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !3149
  %bf.load = load i8, i8* %type, align 4, !dbg !3149
  %cmp = icmp eq i8 %bf.load, 61, !dbg !3150
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3151

land.lhs.true:                                    ; preds = %entry
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 1, !dbg !3152
  %1 = load i8*, i8** %text, align 8, !dbg !3152
  %2 = load i8, i8* %1, align 1, !dbg !3153
  %cmp1 = icmp eq i8 %2, 82, !dbg !3154
  br i1 %cmp1, label %lor.lhs.false, label %if.then, !dbg !3155

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %cmp6 = icmp eq i8 %bf.load, 67, !dbg !3156
  br i1 %cmp6, label %if.then, label %if.else, !dbg !3157

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 0, !dbg !3158
  %3 = load i32, i32* %len, align 8, !dbg !3158
  %sub = add i32 %3, -1, !dbg !3158
  %conv10 = zext i32 %sub to i64, !dbg !3158
  %call11 = tail call i8* @xmalloc(i64 %conv10) #8, !dbg !3158
  call void @llvm.dbg.value(metadata i8* %call11, metadata !3139, metadata !DIExpression()), !dbg !3145
  %text14 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 1, !dbg !3160
  %4 = load i8*, i8** %text14, align 8, !dbg !3160
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1, !dbg !3161
  %5 = load i32, i32* %len, align 8, !dbg !3162
  %sub18 = add i32 %5, -2, !dbg !3163
  %conv19 = zext i32 %sub18 to i64, !dbg !3164
  %call20 = tail call i8* @memcpy(i8* %call11, i8* nonnull %add.ptr, i64 %conv19) #8, !dbg !3165
  %6 = load i32, i32* %len, align 8, !dbg !3166
  %sub24 = add i32 %6, -2, !dbg !3167
  %idxprom = zext i32 %sub24 to i64, !dbg !3168
  %arrayidx25 = getelementptr inbounds i8, i8* %call11, i64 %idxprom, !dbg !3168
  store i8 0, i8* %arrayidx25, align 1, !dbg !3169
  %bf.load27 = load i8, i8* %type, align 4, !dbg !3170
  %cmp29 = icmp eq i8 %bf.load27, 67, !dbg !3171
  %conv30 = zext i1 %cmp29 to i32, !dbg !3171
  br label %if.end46, !dbg !3172

if.else:                                          ; preds = %lor.lhs.false
  %cmp34 = icmp eq i8 %bf.load, 3, !dbg !3173
  br i1 %cmp34, label %if.then36, label %if.else38, !dbg !3174

if.then36:                                        ; preds = %if.else
  %call37 = tail call fastcc i8* @glue_header_name(%struct.cpp_reader* %pfile) #9, !dbg !3175
  call void @llvm.dbg.value(metadata i8* %call37, metadata !3139, metadata !DIExpression()), !dbg !3145
  br label %if.end46

if.else38:                                        ; preds = %if.else
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !3177
  %7 = load %struct.directive*, %struct.directive** %directive, align 8, !dbg !3177
  %cmp39 = icmp eq %struct.directive* %7, getelementptr inbounds ([19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 11), !dbg !3179
  br i1 %cmp39, label %if.end, label %if.else42, !dbg !3180

if.else42:                                        ; preds = %if.else38
  %name = getelementptr inbounds %struct.directive, %struct.directive* %7, i64 0, i32 1, !dbg !3181
  %8 = load i8*, i8** %name, align 8, !dbg !3181
  call void @llvm.dbg.value(metadata i8* %8, metadata !3141, metadata !DIExpression()), !dbg !3182
  br label %if.end

if.end:                                           ; preds = %if.else38, %if.else42
  %dir.0 = phi i8* [ %8, %if.else42 ], [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0), %if.else38 ], !dbg !3183
  call void @llvm.dbg.value(metadata i8* %dir.0, metadata !3141, metadata !DIExpression()), !dbg !3182
  %call44 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i64 0, i64 0), i8* %dir.0) #8, !dbg !3184
  br label %cleanup

if.end46:                                         ; preds = %if.then36, %if.then
  %storemerge = phi i32 [ 1, %if.then36 ], [ %conv30, %if.then ], !dbg !3185
  %fname.0 = phi i8* [ %call37, %if.then36 ], [ %call11, %if.then ], !dbg !3185
  store i32 %storemerge, i32* %pangle_brackets, align 4, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %fname.0, metadata !3139, metadata !DIExpression()), !dbg !3145
  %directive47 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !3186
  %9 = load %struct.directive*, %struct.directive** %directive47, align 8, !dbg !3186
  %cmp48 = icmp eq %struct.directive* %9, getelementptr inbounds ([19 x %struct.directive], [19 x %struct.directive]* @dtable, i64 0, i64 11), !dbg !3188
  br i1 %cmp48, label %cleanup, label %if.else51, !dbg !3189

if.else51:                                        ; preds = %if.end46
  %cmp52 = icmp eq %struct.cpp_token*** %buf, null, !dbg !3190
  br i1 %cmp52, label %if.then56, label %lor.lhs.false54, !dbg !3192

lor.lhs.false54:                                  ; preds = %if.else51
  %discard_comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 5, !dbg !3193
  %10 = load i8, i8* %discard_comments, align 1, !dbg !3193
  %tobool = icmp eq i8 %10, 0, !dbg !3193
  br i1 %tobool, label %if.else57, label %if.then56, !dbg !3194

if.then56:                                        ; preds = %lor.lhs.false54, %if.else51
  tail call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 1) #9, !dbg !3195
  br label %cleanup, !dbg !3195

if.else57:                                        ; preds = %lor.lhs.false54
  %call58 = tail call fastcc %struct.cpp_token** @check_eol_return_comments(%struct.cpp_reader* %pfile) #9, !dbg !3196
  store %struct.cpp_token** %call58, %struct.cpp_token*** %buf, align 8, !dbg !3198
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.else57, %if.then56, %if.end
  %retval.0 = phi i8* [ null, %if.end ], [ %fname.0, %if.then56 ], [ %fname.0, %if.else57 ], [ %fname.0, %if.end46 ], !dbg !3145
  ret i8* %retval.0, !dbg !3199
}

; Function Attrs: nounwind uwtable
define internal fastcc void @skip_rest_of_line(%struct.cpp_reader* %pfile) unnamed_addr #3 !dbg !3200 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3202, metadata !DIExpression()), !dbg !3203
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !3203
  br label %while.cond, !dbg !3204

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !3205
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 1, !dbg !3206
  %1 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8, !dbg !3206
  %tobool = icmp eq %struct.cpp_context* %1, null, !dbg !3204
  br i1 %tobool, label %while.end, label %while.body, !dbg !3204

while.body:                                       ; preds = %while.cond
  tail call void @_cpp_pop_context(%struct.cpp_reader* %pfile) #8, !dbg !3207
  br label %while.cond, !dbg !3204, !llvm.loop !3208

while.end:                                        ; preds = %while.cond
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !3210
  %2 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !3210
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %2, i64 -1, i32 1, !dbg !3210
  %bf.load = load i8, i8* %type, align 4, !dbg !3210
  %cmp = icmp eq i8 %bf.load, 22, !dbg !3210
  br i1 %cmp, label %if.end, label %while.cond1.preheader, !dbg !3212

while.cond1.preheader:                            ; preds = %while.end
  br label %while.cond1, !dbg !3213

while.cond1:                                      ; preds = %while.cond1.preheader, %while.cond1
  %call = tail call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %pfile) #8, !dbg !3214
  %type2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !3215
  %bf.load3 = load i8, i8* %type2, align 4, !dbg !3215
  %cmp5 = icmp eq i8 %bf.load3, 22, !dbg !3216
  br i1 %cmp5, label %if.end.loopexit, label %while.cond1, !dbg !3213, !llvm.loop !3217

if.end.loopexit:                                  ; preds = %while.cond1
  br label %if.end, !dbg !3219

if.end:                                           ; preds = %if.end.loopexit, %while.end
  ret void, !dbg !3219
}

declare dso_local zeroext i8 @_cpp_stack_include(%struct.cpp_reader*, i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_token* @get_token_no_padding(%struct.cpp_reader* %pfile) unnamed_addr #3 !dbg !3220 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3222, metadata !DIExpression()), !dbg !3227
  br label %for.cond, !dbg !3228

for.cond:                                         ; preds = %for.cond, %entry
  %retval.0 = phi %struct.cpp_token* [ undef, %entry ], [ %call.retval.0, %for.cond ]
  %call = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !3229
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !3223, metadata !DIExpression()), !dbg !3230
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !3231
  %bf.load = load i8, i8* %type, align 4, !dbg !3231
  %cmp = icmp ne i8 %bf.load, 72, !dbg !3233
  %call.retval.0 = select i1 %cmp, %struct.cpp_token* %call, %struct.cpp_token* %retval.0, !dbg !3234
  br i1 %cmp, label %return, label %for.cond

return:                                           ; preds = %for.cond
  %call.retval.0.lcssa = phi %struct.cpp_token* [ %call.retval.0, %for.cond ], !dbg !3234
  ret %struct.cpp_token* %call.retval.0.lcssa, !dbg !3235
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @glue_header_name(%struct.cpp_reader* %pfile) unnamed_addr #3 !dbg !3236 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3240, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 0, metadata !3244, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 1024, metadata !3245, metadata !DIExpression()), !dbg !3246
  %call = tail call i8* @xmalloc(i64 1024) #8, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %call, metadata !3242, metadata !DIExpression()), !dbg !3246
  br label %for.cond, !dbg !3248

for.cond:                                         ; preds = %if.end21, %entry
  %buffer.0 = phi i8* [ %call, %entry ], [ %buffer.1, %if.end21 ], !dbg !3246
  %total_len.0 = phi i64 [ 0, %entry ], [ %sub.ptr.sub, %if.end21 ], !dbg !3246
  %capacity.0 = phi i64 [ 1024, %entry ], [ %capacity.1, %if.end21 ], !dbg !3246
  call void @llvm.dbg.value(metadata i64 %capacity.0, metadata !3245, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %total_len.0, metadata !3244, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %buffer.0, metadata !3242, metadata !DIExpression()), !dbg !3246
  %call1 = tail call fastcc %struct.cpp_token* @get_token_no_padding(%struct.cpp_reader* %pfile) #9, !dbg !3249
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call1, metadata !3241, metadata !DIExpression()), !dbg !3246
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 1, !dbg !3253
  %bf.load = load i8, i8* %type, align 4, !dbg !3253
  %cmp = icmp eq i8 %bf.load, 2, !dbg !3255
  br i1 %cmp, label %for.end.loopexit, label %if.end, !dbg !3256

if.end:                                           ; preds = %for.cond
  %cmp5 = icmp eq i8 %bf.load, 22, !dbg !3257
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !3259

if.then6:                                         ; preds = %if.end
  %buffer.0.lcssa11 = phi i8* [ %buffer.0, %if.end ], !dbg !3246
  %total_len.0.lcssa9 = phi i64 [ %total_len.0, %if.end ], !dbg !3246
  call void @llvm.dbg.value(metadata i8* %buffer.0.lcssa11, metadata !3242, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %total_len.0.lcssa9, metadata !3244, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %buffer.0.lcssa11, metadata !3242, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %total_len.0.lcssa9, metadata !3244, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %buffer.0.lcssa11, metadata !3242, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %total_len.0.lcssa9, metadata !3244, metadata !DIExpression()), !dbg !3246
  %call7 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i64 0, i64 0)) #8, !dbg !3260
  br label %for.end, !dbg !3262

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @cpp_token_len(%struct.cpp_token* %call1) #8, !dbg !3263
  %add = add i32 %call9, 2, !dbg !3264
  %conv = zext i32 %add to i64, !dbg !3263
  call void @llvm.dbg.value(metadata i64 %conv, metadata !3243, metadata !DIExpression()), !dbg !3246
  %add10 = add i64 %total_len.0, %conv, !dbg !3265
  %cmp11 = icmp ugt i64 %add10, %capacity.0, !dbg !3267
  br i1 %cmp11, label %if.then13, label %if.end18, !dbg !3268

if.then13:                                        ; preds = %if.end8
  %add14 = add i64 %capacity.0, %conv, !dbg !3269
  %mul15 = shl i64 %add14, 1, !dbg !3271
  call void @llvm.dbg.value(metadata i64 %mul15, metadata !3245, metadata !DIExpression()), !dbg !3246
  %call17 = tail call i8* @xrealloc(i8* %buffer.0, i64 %mul15) #8, !dbg !3272
  call void @llvm.dbg.value(metadata i8* %call17, metadata !3242, metadata !DIExpression()), !dbg !3246
  br label %if.end18, !dbg !3273

if.end18:                                         ; preds = %if.then13, %if.end8
  %buffer.1 = phi i8* [ %call17, %if.then13 ], [ %buffer.0, %if.end8 ], !dbg !3246
  %capacity.1 = phi i64 [ %mul15, %if.then13 ], [ %capacity.0, %if.end8 ], !dbg !3246
  call void @llvm.dbg.value(metadata i64 %capacity.1, metadata !3245, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %buffer.1, metadata !3242, metadata !DIExpression()), !dbg !3246
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 2, !dbg !3274
  %0 = load i16, i16* %flags, align 2, !dbg !3274
  %1 = and i16 %0, 1, !dbg !3276
  %tobool = icmp eq i16 %1, 0, !dbg !3276
  br i1 %tobool, label %if.end21, label %if.then20, !dbg !3277

if.then20:                                        ; preds = %if.end18
  %inc = add i64 %total_len.0, 1, !dbg !3278
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3244, metadata !DIExpression()), !dbg !3246
  %arrayidx = getelementptr inbounds i8, i8* %buffer.1, i64 %total_len.0, !dbg !3279
  store i8 32, i8* %arrayidx, align 1, !dbg !3280
  br label %if.end21, !dbg !3279

if.end21:                                         ; preds = %if.end18, %if.then20
  %total_len.1 = phi i64 [ %inc, %if.then20 ], [ %total_len.0, %if.end18 ], !dbg !3246
  call void @llvm.dbg.value(metadata i64 %total_len.1, metadata !3244, metadata !DIExpression()), !dbg !3246
  %arrayidx22 = getelementptr inbounds i8, i8* %buffer.1, i64 %total_len.1, !dbg !3281
  %call23 = tail call i8* @cpp_spell_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %call1, i8* %arrayidx22, i8 zeroext 1) #8, !dbg !3282
  %sub.ptr.lhs.cast = ptrtoint i8* %call23 to i64, !dbg !3283
  %sub.ptr.rhs.cast = ptrtoint i8* %buffer.1 to i64, !dbg !3283
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !3244, metadata !DIExpression()), !dbg !3246
  br label %for.cond, !dbg !3284, !llvm.loop !3285

for.end.loopexit:                                 ; preds = %for.cond
  %buffer.0.lcssa = phi i8* [ %buffer.0, %for.cond ], !dbg !3246
  %total_len.0.lcssa = phi i64 [ %total_len.0, %for.cond ], !dbg !3246
  call void @llvm.dbg.value(metadata i8* %buffer.0.lcssa, metadata !3242, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %total_len.0.lcssa, metadata !3244, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %buffer.0.lcssa, metadata !3242, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %total_len.0.lcssa, metadata !3244, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8* %buffer.0.lcssa, metadata !3242, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %total_len.0.lcssa, metadata !3244, metadata !DIExpression()), !dbg !3246
  br label %for.end, !dbg !3288

for.end:                                          ; preds = %for.end.loopexit, %if.then6
  %buffer.012 = phi i8* [ %buffer.0.lcssa, %for.end.loopexit ], [ %buffer.0.lcssa11, %if.then6 ]
  %total_len.010 = phi i64 [ %total_len.0.lcssa, %for.end.loopexit ], [ %total_len.0.lcssa9, %if.then6 ]
  %arrayidx24 = getelementptr inbounds i8, i8* %buffer.012, i64 %total_len.010, !dbg !3288
  store i8 0, i8* %arrayidx24, align 1, !dbg !3289
  ret i8* %buffer.012, !dbg !3290
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext %expand) unnamed_addr #3 !dbg !3291 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3295, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i8 %expand, metadata !3296, metadata !DIExpression()), !dbg !3297
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !3298
  %0 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !3298
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i64 -1, i32 1, !dbg !3298
  %bf.load = load i8, i8* %type, align 4, !dbg !3298
  %cmp = icmp eq i8 %bf.load, 22, !dbg !3298
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !3300

land.lhs.true:                                    ; preds = %entry
  %tobool = icmp eq i8 %expand, 0, !dbg !3301
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3301

cond.true:                                        ; preds = %land.lhs.true
  %call = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !3302
  br label %cond.end, !dbg !3301

cond.false:                                       ; preds = %land.lhs.true
  %call1 = tail call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %pfile) #8, !dbg !3303
  br label %cond.end, !dbg !3301

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.cpp_token* [ %call, %cond.true ], [ %call1, %cond.false ], !dbg !3301
  %type2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %cond, i64 0, i32 1, !dbg !3304
  %bf.load3 = load i8, i8* %type2, align 4, !dbg !3304
  %cmp5 = icmp eq i8 %bf.load3, 22, !dbg !3305
  br i1 %cmp5, label %if.end, label %if.then, !dbg !3306

if.then:                                          ; preds = %cond.end
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !3307
  %1 = load %struct.directive*, %struct.directive** %directive, align 8, !dbg !3307
  %name = getelementptr inbounds %struct.directive, %struct.directive* %1, i64 0, i32 1, !dbg !3308
  %2 = load i8*, i8** %name, align 8, !dbg !3308
  %call7 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i64 0, i64 0), i8* %2) #8, !dbg !3309
  br label %if.end, !dbg !3309

if.end:                                           ; preds = %cond.end, %if.then, %entry
  ret void, !dbg !3310
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_token** @check_eol_return_comments(%struct.cpp_reader* %pfile) unnamed_addr #3 !dbg !3311 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3315, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 8, metadata !3317, metadata !DIExpression()), !dbg !3323
  %call = tail call i8* @xmalloc(i64 64) #8, !dbg !3324
  %0 = bitcast i8* %call to %struct.cpp_token**, !dbg !3324
  call void @llvm.dbg.value(metadata %struct.cpp_token** %0, metadata !3318, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 0, metadata !3316, metadata !DIExpression()), !dbg !3323
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !3325
  %1 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !3325
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %1, i64 -1, i32 1, !dbg !3325
  %bf.load = load i8, i8* %type, align 4, !dbg !3325
  %cmp = icmp eq i8 %bf.load, 22, !dbg !3325
  br i1 %cmp, label %if.end21, label %while.cond.preheader, !dbg !3326

while.cond.preheader:                             ; preds = %entry
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !3327
  br label %while.cond, !dbg !3329

while.cond:                                       ; preds = %while.cond.preheader, %cleanup
  %2 = phi i8* [ %7, %cleanup ], [ %call, %while.cond.preheader ], !dbg !3330
  %buf.0 = phi %struct.cpp_token** [ %buf.3, %cleanup ], [ %0, %while.cond.preheader ], !dbg !3330
  %capacity.0 = phi i64 [ %capacity.3, %cleanup ], [ 8, %while.cond.preheader ], !dbg !3331
  %c.0 = phi i64 [ %c.2, %cleanup ], [ 0, %while.cond.preheader ], !dbg !3332
  call void @llvm.dbg.value(metadata i64 %c.0, metadata !3316, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %capacity.0, metadata !3317, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata %struct.cpp_token** %buf.0, metadata !3318, metadata !DIExpression()), !dbg !3323
  %call1 = tail call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %pfile) #8, !dbg !3333
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call1, metadata !3319, metadata !DIExpression()), !dbg !3334
  %type2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 1, !dbg !3335
  %bf.load3 = load i8, i8* %type2, align 4, !dbg !3335
  %cmp5 = icmp eq i8 %bf.load3, 22, !dbg !3337
  br i1 %cmp5, label %cleanup, label %if.end, !dbg !3338

if.end:                                           ; preds = %while.cond
  %cmp10 = icmp eq i8 %bf.load3, 68, !dbg !3339
  br i1 %cmp10, label %if.else, label %if.then11, !dbg !3340

if.then11:                                        ; preds = %if.end
  %3 = load %struct.directive*, %struct.directive** %directive, align 8, !dbg !3341
  %name = getelementptr inbounds %struct.directive, %struct.directive* %3, i64 0, i32 1, !dbg !3342
  %4 = load i8*, i8** %name, align 8, !dbg !3342
  %call12 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i64 0, i64 0), i8* %4) #8, !dbg !3343
  br label %cleanup, !dbg !3343

if.else:                                          ; preds = %if.end
  %add = add i64 %c.0, 1, !dbg !3344
  %cmp13 = icmp ult i64 %add, %capacity.0, !dbg !3347
  br i1 %cmp13, label %if.end18, label %if.then14, !dbg !3348

if.then14:                                        ; preds = %if.else
  %mul15 = shl i64 %capacity.0, 1, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %mul15, metadata !3317, metadata !DIExpression()), !dbg !3323
  %mul16 = shl i64 %capacity.0, 4, !dbg !3351
  %call17 = tail call i8* @xrealloc(i8* %2, i64 %mul16) #8, !dbg !3351
  %5 = bitcast i8* %call17 to %struct.cpp_token**, !dbg !3351
  call void @llvm.dbg.value(metadata %struct.cpp_token** %5, metadata !3318, metadata !DIExpression()), !dbg !3323
  br label %if.end18, !dbg !3352

if.end18:                                         ; preds = %if.else, %if.then14
  %6 = phi i8* [ %call17, %if.then14 ], [ %2, %if.else ], !dbg !3323
  %buf.1 = phi %struct.cpp_token** [ %5, %if.then14 ], [ %buf.0, %if.else ], !dbg !3323
  %capacity.1 = phi i64 [ %mul15, %if.then14 ], [ %capacity.0, %if.else ], !dbg !3323
  call void @llvm.dbg.value(metadata i64 %capacity.1, metadata !3317, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata %struct.cpp_token** %buf.1, metadata !3318, metadata !DIExpression()), !dbg !3323
  %arrayidx19 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %buf.1, i64 %c.0, !dbg !3353
  store %struct.cpp_token* %call1, %struct.cpp_token** %arrayidx19, align 8, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %add, metadata !3316, metadata !DIExpression()), !dbg !3323
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end18, %while.cond
  %7 = phi i8* [ %2, %while.cond ], [ %2, %if.then11 ], [ %6, %if.end18 ], !dbg !3330
  %buf.3 = phi %struct.cpp_token** [ %buf.0, %while.cond ], [ %buf.0, %if.then11 ], [ %buf.1, %if.end18 ], !dbg !3330
  %capacity.3 = phi i64 [ %capacity.0, %while.cond ], [ %capacity.0, %if.then11 ], [ %capacity.1, %if.end18 ], !dbg !3331
  %c.2 = phi i64 [ %c.0, %while.cond ], [ %c.0, %if.then11 ], [ %add, %if.end18 ], !dbg !3332
  %cleanup.dest.slot.0 = phi i1 [ false, %while.cond ], [ true, %if.then11 ], [ true, %if.end18 ]
  call void @llvm.dbg.value(metadata i64 %c.2, metadata !3316, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %capacity.3, metadata !3317, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata %struct.cpp_token** %buf.3, metadata !3318, metadata !DIExpression()), !dbg !3323
  br i1 %cleanup.dest.slot.0, label %while.cond, label %if.end21.loopexit, !llvm.loop !3355

if.end21.loopexit:                                ; preds = %cleanup
  %buf.3.lcssa = phi %struct.cpp_token** [ %buf.3, %cleanup ], !dbg !3330
  %c.2.lcssa = phi i64 [ %c.2, %cleanup ], !dbg !3332
  call void @llvm.dbg.value(metadata %struct.cpp_token** %buf.3.lcssa, metadata !3318, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %c.2.lcssa, metadata !3316, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata %struct.cpp_token** %buf.3.lcssa, metadata !3318, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %c.2.lcssa, metadata !3316, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata %struct.cpp_token** %buf.3.lcssa, metadata !3318, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %c.2.lcssa, metadata !3316, metadata !DIExpression()), !dbg !3323
  br label %if.end21, !dbg !3357

if.end21:                                         ; preds = %if.end21.loopexit, %entry
  %buf.4 = phi %struct.cpp_token** [ %0, %entry ], [ %buf.3.lcssa, %if.end21.loopexit ], !dbg !3330
  %c.3 = phi i64 [ 0, %entry ], [ %c.2.lcssa, %if.end21.loopexit ], !dbg !3332
  call void @llvm.dbg.value(metadata i64 %c.3, metadata !3316, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata %struct.cpp_token** %buf.4, metadata !3318, metadata !DIExpression()), !dbg !3323
  %arrayidx22 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %buf.4, i64 %c.3, !dbg !3357
  store %struct.cpp_token* null, %struct.cpp_token** %arrayidx22, align 8, !dbg !3358
  ret %struct.cpp_token** %buf.4, !dbg !3359
}

declare dso_local %struct.cpp_token* @cpp_get_token(%struct.cpp_reader*) local_unnamed_addr #2

declare dso_local i32 @cpp_token_len(%struct.cpp_token*) local_unnamed_addr #2

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #2

declare dso_local i8* @cpp_spell_token(%struct.cpp_reader*, %struct.cpp_token*, i8*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @_cpp_pop_context(%struct.cpp_reader*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @push_conditional(%struct.cpp_reader* %pfile, i32 %skip, i32 %type, %struct.cpp_hashnode* %cmacro) unnamed_addr #3 !dbg !3360 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3364, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 %skip, metadata !3365, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i32 %type, metadata !3366, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %cmacro, metadata !3367, metadata !DIExpression()), !dbg !3370
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !3371
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !3371
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %0, metadata !3369, metadata !DIExpression()), !dbg !3370
  %temp = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 5, !dbg !3372
  store i64 32, i64* %temp, align 8, !dbg !3372
  %chunk_limit = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 4, !dbg !3372
  %1 = bitcast i8** %chunk_limit to i64*, !dbg !3372
  %2 = load i64, i64* %1, align 8, !dbg !3372
  %next_free = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 3, !dbg !3372
  %3 = bitcast i8** %next_free to i64*, !dbg !3372
  %4 = load i64, i64* %3, align 8, !dbg !3372
  %sub.ptr.sub = sub i64 %2, %4, !dbg !3372
  %cmp = icmp slt i64 %sub.ptr.sub, 32, !dbg !3372
  %5 = inttoptr i64 %4 to i8*, !dbg !3372
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3372

cond.true:                                        ; preds = %entry
  %buffer_ob6 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, !dbg !3372
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %buffer_ob6, i32 32) #8, !dbg !3372
  %.pre = load i64, i64* %temp, align 8, !dbg !3372
  %.pre1 = load i8*, i8** %next_free, align 8, !dbg !3372
  br label %cond.end, !dbg !3372

cond.end:                                         ; preds = %entry, %cond.true
  %6 = phi i8* [ %5, %entry ], [ %.pre1, %cond.true ], !dbg !3372
  %7 = phi i64 [ 32, %entry ], [ %.pre, %cond.true ], !dbg !3372
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !3372
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !3372
  %object_base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 2, !dbg !3372
  %8 = load i8*, i8** %object_base, align 8, !dbg !3372
  %cmp16 = icmp eq i8* %add.ptr, %8, !dbg !3372
  %9 = ptrtoint i8* %8 to i64, !dbg !3372
  %10 = ptrtoint i8* %add.ptr to i64, !dbg !3372
  br i1 %cmp16, label %cond.true18, label %cond.end21, !dbg !3372

cond.true18:                                      ; preds = %cond.end
  %maybe_empty_object = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 10, !dbg !3372
  %bf.load = load i8, i8* %maybe_empty_object, align 8, !dbg !3372
  %bf.set = or i8 %bf.load, 2, !dbg !3372
  store i8 %bf.set, i8* %maybe_empty_object, align 8, !dbg !3372
  br label %cond.end21, !dbg !3372

cond.end21:                                       ; preds = %cond.end, %cond.true18
  %11 = bitcast i8** %object_base to i64*, !dbg !3372
  store i64 %9, i64* %temp, align 8, !dbg !3372
  %alignment_mask = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 6, !dbg !3372
  %12 = load i32, i32* %alignment_mask, align 8, !dbg !3372
  %conv34 = sext i32 %12 to i64, !dbg !3372
  %add = add nsw i64 %10, %conv34, !dbg !3372
  %neg = xor i32 %12, -1, !dbg !3372
  %conv37 = sext i32 %neg to i64, !dbg !3372
  %and = and i64 %add, %conv37, !dbg !3372
  %13 = inttoptr i64 %and to i8*, !dbg !3372
  store i8* %13, i8** %next_free, align 8, !dbg !3372
  %chunk = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 47, i32 1, !dbg !3372
  %14 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !3372
  %15 = load i64, i64* %14, align 8, !dbg !3372
  %sub.ptr.sub45 = sub i64 %and, %15, !dbg !3372
  %16 = load i64, i64* %1, align 8, !dbg !3372
  %sub.ptr.sub52 = sub i64 %16, %15, !dbg !3372
  %cmp53 = icmp sgt i64 %sub.ptr.sub45, %sub.ptr.sub52, !dbg !3372
  br i1 %cmp53, label %cond.true55, label %cond.end61, !dbg !3372

cond.true55:                                      ; preds = %cond.end21
  store i64 %16, i64* %3, align 8, !dbg !3372
  br label %cond.end61, !dbg !3372

cond.end61:                                       ; preds = %cond.end21, %cond.true55
  %17 = phi i64 [ %and, %cond.end21 ], [ %16, %cond.true55 ], !dbg !3372
  store i64 %17, i64* %11, align 8, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %8, metadata !3368, metadata !DIExpression()), !dbg !3370
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !3373
  %18 = load i32, i32* %directive_line, align 8, !dbg !3373
  %line = getelementptr inbounds i8, i8* %8, i64 8, !dbg !3374
  %19 = bitcast i8* %line to i32*, !dbg !3374
  store i32 %18, i32* %19, align 8, !dbg !3375
  %if_stack = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 12, !dbg !3376
  %20 = bitcast %struct.if_stack** %if_stack to i64*, !dbg !3376
  %21 = load i64, i64* %20, align 8, !dbg !3376
  %22 = bitcast i8* %8 to i64*, !dbg !3377
  store i64 %21, i64* %22, align 8, !dbg !3377
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !3378
  %23 = load i8, i8* %skipping, align 2, !dbg !3378
  %tobool = icmp eq i8 %23, 0, !dbg !3379
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3380

lor.rhs:                                          ; preds = %cond.end61
  %tobool70 = icmp eq i32 %skip, 0, !dbg !3381
  %phitmp = zext i1 %tobool70 to i8, !dbg !3380
  br label %lor.end, !dbg !3380

lor.end:                                          ; preds = %cond.end61, %lor.rhs
  %24 = phi i8 [ 1, %cond.end61 ], [ %phitmp, %lor.rhs ]
  %25 = getelementptr inbounds i8, i8* %8, i64 24, !dbg !3382
  store i8 %24, i8* %25, align 8, !dbg !3383
  %26 = load i8, i8* %skipping, align 2, !dbg !3384
  %27 = getelementptr inbounds i8, i8* %8, i64 25, !dbg !3385
  store i8 %26, i8* %27, align 1, !dbg !3386
  %type74 = getelementptr inbounds i8, i8* %8, i64 28, !dbg !3387
  %28 = bitcast i8* %type74 to i32*, !dbg !3387
  store i32 %type, i32* %28, align 4, !dbg !3388
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 28, !dbg !3389
  %29 = load i8, i8* %mi_valid, align 8, !dbg !3389
  %tobool76 = icmp eq i8 %29, 0, !dbg !3391
  br i1 %tobool76, label %if.else, label %land.lhs.true, !dbg !3392

land.lhs.true:                                    ; preds = %lor.end
  %mi_cmacro = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 26, !dbg !3393
  %30 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %mi_cmacro, align 8, !dbg !3393
  %cmp77 = icmp eq %struct.cpp_hashnode* %30, null, !dbg !3394
  br i1 %cmp77, label %if.then, label %if.else, !dbg !3395

if.then:                                          ; preds = %land.lhs.true
  %mi_cmacro79 = getelementptr inbounds i8, i8* %8, i64 16, !dbg !3396
  %31 = bitcast i8* %mi_cmacro79 to %struct.cpp_hashnode**, !dbg !3396
  store %struct.cpp_hashnode* %cmacro, %struct.cpp_hashnode** %31, align 8, !dbg !3397
  br label %if.end, !dbg !3398

if.else:                                          ; preds = %lor.end, %land.lhs.true
  %mi_cmacro80 = getelementptr inbounds i8, i8* %8, i64 16, !dbg !3399
  %32 = bitcast i8* %mi_cmacro80 to %struct.cpp_hashnode**, !dbg !3399
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %32, align 8, !dbg !3400
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv81 = trunc i32 %skip to i8, !dbg !3401
  store i8 %conv81, i8* %skipping, align 2, !dbg !3402
  %33 = bitcast %struct.if_stack** %if_stack to i8**, !dbg !3403
  store i8* %8, i8** %33, align 8, !dbg !3403
  ret void, !dbg !3404
}

declare dso_local zeroext i8 @_cpp_parse_expr(%struct.cpp_reader*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @strtolinenum(i8* %str, i64 %len, i32* %nump, i8* %wrapped) unnamed_addr #3 !dbg !3405 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !3410, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %len, metadata !3411, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i32* %nump, metadata !3412, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i8* %wrapped, metadata !3413, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i32 0, metadata !3414, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i32 0, metadata !3415, metadata !DIExpression()), !dbg !3417
  store i8 0, i8* %wrapped, align 1, !dbg !3418
  br label %while.cond, !dbg !3419

while.cond:                                       ; preds = %if.end7, %entry
  %reg.0 = phi i32 [ 0, %entry ], [ %add, %if.end7 ], !dbg !3417
  %len.addr.0 = phi i64 [ %len, %entry ], [ %dec, %if.end7 ]
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %if.end7 ]
  call void @llvm.dbg.value(metadata i8* %str.addr.0, metadata !3410, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %len.addr.0, metadata !3411, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i32 %reg.0, metadata !3415, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i32 %reg.0, metadata !3414, metadata !DIExpression()), !dbg !3417
  %dec = add i64 %len.addr.0, -1, !dbg !3420
  call void @llvm.dbg.value(metadata i64 %dec, metadata !3411, metadata !DIExpression()), !dbg !3417
  %tobool = icmp eq i64 %len.addr.0, 0, !dbg !3419
  br i1 %tobool, label %while.end, label %while.body, !dbg !3419

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %str.addr.0, i64 1, !dbg !3421
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !3410, metadata !DIExpression()), !dbg !3417
  %0 = load i8, i8* %str.addr.0, align 1, !dbg !3423
  call void @llvm.dbg.value(metadata i8 %0, metadata !3416, metadata !DIExpression()), !dbg !3417
  %idxprom = zext i8 %0 to i64, !dbg !3424
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !3424
  %1 = load i16, i16* %arrayidx, align 2, !dbg !3424
  %2 = and i16 %1, 4, !dbg !3424
  %tobool3 = icmp eq i16 %2, 0, !dbg !3424
  br i1 %tobool3, label %cleanup.loopexit, label %if.end, !dbg !3426

if.end:                                           ; preds = %while.body
  %mul = mul i32 %reg.0, 10, !dbg !3427
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3414, metadata !DIExpression()), !dbg !3417
  %conv4 = zext i8 %0 to i32, !dbg !3428
  %sub = add nsw i32 %conv4, -48, !dbg !3429
  %add = add i32 %mul, %sub, !dbg !3430
  call void @llvm.dbg.value(metadata i32 %add, metadata !3414, metadata !DIExpression()), !dbg !3417
  %cmp = icmp ult i32 %add, %reg.0, !dbg !3431
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !3433

if.then6:                                         ; preds = %if.end
  store i8 1, i8* %wrapped, align 1, !dbg !3434
  br label %if.end7, !dbg !3435

if.end7:                                          ; preds = %if.then6, %if.end
  call void @llvm.dbg.value(metadata i32 %add, metadata !3415, metadata !DIExpression()), !dbg !3417
  br label %while.cond, !dbg !3419, !llvm.loop !3436

while.end:                                        ; preds = %while.cond
  %reg.0.lcssa = phi i32 [ %reg.0, %while.cond ], !dbg !3417
  call void @llvm.dbg.value(metadata i32 %reg.0.lcssa, metadata !3415, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i32 %reg.0.lcssa, metadata !3415, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i32 %reg.0.lcssa, metadata !3415, metadata !DIExpression()), !dbg !3417
  store i32 %reg.0.lcssa, i32* %nump, align 4, !dbg !3438
  br label %cleanup, !dbg !3439

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !3440

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  %retval.0 = phi i8 [ 0, %while.end ], [ 1, %cleanup.loopexit ], !dbg !3417
  ret i8 %retval.0, !dbg !3440
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local zeroext i8 @cpp_interpret_string_notranslate(%struct.cpp_reader*, %struct.cpp_string*, i64, %struct.cpp_string*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @do_diagnostic(%struct.cpp_reader* %pfile, i32 %code, i32 %print_dir) unnamed_addr #3 !dbg !3441 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3445, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i32 %code, metadata !3446, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i32 %print_dir, metadata !3447, metadata !DIExpression()), !dbg !3451
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !3452
  %0 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !3452
  %src_loc1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i64 -1, i32 0, !dbg !3453
  %1 = load i32, i32* %src_loc1, align 8, !dbg !3453
  call void @llvm.dbg.value(metadata i32 %1, metadata !3450, metadata !DIExpression()), !dbg !3451
  %tobool = icmp eq i32 %print_dir, 0, !dbg !3454
  br i1 %tobool, label %if.end, label %if.then, !dbg !3456

if.then:                                          ; preds = %entry
  %directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 10, !dbg !3457
  %2 = load %struct.directive*, %struct.directive** %directive, align 8, !dbg !3457
  %name = getelementptr inbounds %struct.directive, %struct.directive* %2, i64 0, i32 1, !dbg !3458
  %3 = load i8*, i8** %name, align 8, !dbg !3458
  call void @llvm.dbg.value(metadata i8* %3, metadata !3448, metadata !DIExpression()), !dbg !3451
  br label %if.end, !dbg !3459

if.end:                                           ; preds = %entry, %if.then
  %dir_name.0 = phi i8* [ %3, %if.then ], [ null, %entry ], !dbg !3460
  call void @llvm.dbg.value(metadata i8* %dir_name.0, metadata !3448, metadata !DIExpression()), !dbg !3451
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !3461
  %4 = load i8, i8* %prevent_expansion, align 8, !dbg !3462
  %inc = add i8 %4, 1, !dbg !3462
  store i8 %inc, i8* %prevent_expansion, align 8, !dbg !3462
  %call = tail call i8* @cpp_output_line_to_string(%struct.cpp_reader* %pfile, i8* %dir_name.0) #8, !dbg !3463
  call void @llvm.dbg.value(metadata i8* %call, metadata !3449, metadata !DIExpression()), !dbg !3451
  %5 = load i8, i8* %prevent_expansion, align 8, !dbg !3464
  %dec = add i8 %5, -1, !dbg !3464
  store i8 %dec, i8* %prevent_expansion, align 8, !dbg !3464
  %call4 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 %code, i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i8* %call) #8, !dbg !3465
  tail call void @free(i8* %call) #8, !dbg !3466
  ret void, !dbg !3467
}

declare dso_local i8* @cpp_output_line_to_string(%struct.cpp_reader*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.pragma_entry* @lookup_pragma_entry(%struct.pragma_entry* %chain, %struct.cpp_hashnode* %pragma) unnamed_addr #3 !dbg !3468 {
entry:
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %chain, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %pragma, metadata !3473, metadata !DIExpression()), !dbg !3474
  br label %while.cond, !dbg !3475

while.cond:                                       ; preds = %while.body, %entry
  %chain.addr.0 = phi %struct.pragma_entry* [ %chain, %entry ], [ %1, %while.body ]
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %chain.addr.0, metadata !3472, metadata !DIExpression()), !dbg !3474
  %tobool = icmp eq %struct.pragma_entry* %chain.addr.0, null, !dbg !3476
  br i1 %tobool, label %while.end, label %land.rhs, !dbg !3477

land.rhs:                                         ; preds = %while.cond
  %pragma1 = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %chain.addr.0, i64 0, i32 1, !dbg !3478
  %0 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %pragma1, align 8, !dbg !3478
  %cmp = icmp eq %struct.cpp_hashnode* %0, %pragma, !dbg !3479
  br i1 %cmp, label %while.end, label %while.body, !dbg !3475

while.body:                                       ; preds = %land.rhs
  %next = getelementptr inbounds %struct.pragma_entry, %struct.pragma_entry* %chain.addr.0, i64 0, i32 0, !dbg !3480
  %1 = load %struct.pragma_entry*, %struct.pragma_entry** %next, align 8, !dbg !3480
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %1, metadata !3472, metadata !DIExpression()), !dbg !3474
  br label %while.cond, !dbg !3475, !llvm.loop !3481

while.end:                                        ; preds = %land.rhs, %while.cond
  %chain.addr.0.lcssa = phi %struct.pragma_entry* [ %chain.addr.0, %land.rhs ], [ %chain.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %chain.addr.0.lcssa, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %chain.addr.0.lcssa, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %chain.addr.0.lcssa, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %chain.addr.0.lcssa, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %chain.addr.0.lcssa, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %chain.addr.0.lcssa, metadata !3472, metadata !DIExpression()), !dbg !3474
  ret %struct.pragma_entry* %chain.addr.0.lcssa, !dbg !3482
}

declare dso_local void @_cpp_push_token_context(%struct.cpp_reader*, %struct.cpp_hashnode*, %struct.cpp_token*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @cpp_in_primary_file(%struct.cpp_reader* %pfile) unnamed_addr #0 !dbg !3483 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3485, metadata !DIExpression()), !dbg !3486
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !3487
  %0 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !3487
  %depth = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i64 0, i32 5, !dbg !3488
  %1 = load i32, i32* %depth, align 8, !dbg !3488
  %cmp = icmp eq i32 %1, 1, !dbg !3489
  %conv = zext i1 %cmp to i32, !dbg !3489
  ret i32 %conv, !dbg !3490
}

; Function Attrs: nounwind uwtable
define internal void @do_linemarker(%struct.cpp_reader* %pfile) #3 !dbg !3491 {
entry:
  %new_lineno = alloca i32, align 4
  %wrapped = alloca i8, align 1
  %s = alloca %struct.cpp_string, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3493, metadata !DIExpression()), !dbg !3506
  %line_table1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !3507
  %0 = load %struct.line_maps*, %struct.line_maps** %line_table1, align 8, !dbg !3507
  call void @llvm.dbg.value(metadata %struct.line_maps* %0, metadata !3494, metadata !DIExpression()), !dbg !3506
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i64 0, i32 0, !dbg !3508
  %1 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !3508
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i64 0, i32 2, !dbg !3509
  %2 = load i32, i32* %used, align 4, !dbg !3509
  %sub = add i32 %2, -1, !dbg !3510
  %idxprom = zext i32 %sub to i64, !dbg !3511
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !3495, metadata !DIExpression()), !dbg !3506
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %1, i64 %idxprom, i32 0, !dbg !3512
  %3 = load i8*, i8** %to_file, align 8, !dbg !3512
  call void @llvm.dbg.value(metadata i8* %3, metadata !3497, metadata !DIExpression()), !dbg !3506
  %4 = bitcast i32* %new_lineno to i8*, !dbg !3513
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7, !dbg !3513
  %sysp = getelementptr inbounds %struct.line_map, %struct.line_map* %1, i64 %idxprom, i32 5, !dbg !3514
  %5 = load i8, i8* %sysp, align 1, !dbg !3514
  %conv = zext i8 %5 to i32, !dbg !3515
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3499, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i32 3, metadata !3500, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i8* %wrapped, metadata !3502, metadata !DIExpression(DW_OP_deref)), !dbg !3506
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %wrapped) #7, !dbg !3516
  tail call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 1) #8, !dbg !3517
  %call = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !3518
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !3496, metadata !DIExpression()), !dbg !3506
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !3519
  %bf.load = load i8, i8* %type, align 4, !dbg !3519
  %cmp = icmp eq i8 %bf.load, 55, !dbg !3521
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !3522

lor.lhs.false:                                    ; preds = %entry
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 1, !dbg !3523
  %6 = load i8*, i8** %text, align 8, !dbg !3523
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 0, !dbg !3524
  %7 = load i32, i32* %len, align 8, !dbg !3524
  %conv5 = zext i32 %7 to i64, !dbg !3525
  call void @llvm.dbg.value(metadata i32* %new_lineno, metadata !3498, metadata !DIExpression(DW_OP_deref)), !dbg !3506
  call void @llvm.dbg.value(metadata i8* %wrapped, metadata !3502, metadata !DIExpression(DW_OP_deref)), !dbg !3506
  %call6 = call fastcc zeroext i8 @strtolinenum(i8* %6, i64 %conv5, i32* nonnull %new_lineno, i8* nonnull %wrapped) #9, !dbg !3526
  %tobool = icmp eq i8 %call6, 0, !dbg !3526
  br i1 %tobool, label %if.end, label %if.then, !dbg !3527

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call8 = call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %call) #8, !dbg !3528
  %call9 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.59, i64 0, i64 0), i8* %call8) #8, !dbg !3530
  br label %cleanup, !dbg !3531

if.end:                                           ; preds = %lor.lhs.false
  %call10 = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !3532
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call10, metadata !3496, metadata !DIExpression()), !dbg !3506
  %type11 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call10, i64 0, i32 1, !dbg !3533
  %bf.load12 = load i8, i8* %type11, align 4, !dbg !3533
  %cmp14 = icmp eq i8 %bf.load12, 61, !dbg !3534
  br i1 %cmp14, label %if.then16, label %if.else46, !dbg !3535

if.then16:                                        ; preds = %if.end
  %8 = bitcast %struct.cpp_string* %s to i8*, !dbg !3536
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !3536
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %8, i8 0, i64 16, i1 false), !dbg !3537
  %str18 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call10, i64 0, i32 3, i32 0, !dbg !3538
  call void @llvm.dbg.value(metadata %struct.cpp_string* %s, metadata !3503, metadata !DIExpression(DW_OP_deref)), !dbg !3540
  %call19 = call zeroext i8 @cpp_interpret_string_notranslate(%struct.cpp_reader* %pfile, %struct.cpp_string* nonnull %str18, i64 1, %struct.cpp_string* nonnull %s, i32 61) #8, !dbg !3541
  %tobool20 = icmp eq i8 %call19, 0, !dbg !3541
  %text22 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %s, i64 0, i32 1, !dbg !3542
  %9 = load i8*, i8** %text22, align 8, !dbg !3542
  %new_file.0 = select i1 %tobool20, i8* %3, i8* %9, !dbg !3542
  call void @llvm.dbg.value(metadata i8* %new_file.0, metadata !3497, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i32 0, metadata !3499, metadata !DIExpression()), !dbg !3506
  %call24 = call fastcc i32 @read_flag(%struct.cpp_reader* %pfile, i32 0) #9, !dbg !3543
  call void @llvm.dbg.value(metadata i32 %call24, metadata !3501, metadata !DIExpression()), !dbg !3506
  switch i32 %call24, label %if.end34 [
    i32 1, label %if.then27
    i32 2, label %if.then31
  ], !dbg !3544

if.then27:                                        ; preds = %if.then16
  call void @llvm.dbg.value(metadata i32 0, metadata !3500, metadata !DIExpression()), !dbg !3506
  call void @_cpp_fake_include(%struct.cpp_reader* %pfile, i8* %new_file.0) #8, !dbg !3545
  %call28 = call fastcc i32 @read_flag(%struct.cpp_reader* %pfile, i32 1) #9, !dbg !3548
  call void @llvm.dbg.value(metadata i32 %call28, metadata !3501, metadata !DIExpression()), !dbg !3506
  br label %if.end34, !dbg !3549

if.then31:                                        ; preds = %if.then16
  call void @llvm.dbg.value(metadata i32 1, metadata !3500, metadata !DIExpression()), !dbg !3506
  %call32 = call fastcc i32 @read_flag(%struct.cpp_reader* %pfile, i32 2) #9, !dbg !3550
  call void @llvm.dbg.value(metadata i32 %call32, metadata !3501, metadata !DIExpression()), !dbg !3506
  br label %if.end34, !dbg !3553

if.end34:                                         ; preds = %if.then31, %if.then16, %if.then27
  %reason.1 = phi i32 [ 0, %if.then27 ], [ 1, %if.then31 ], [ 3, %if.then16 ], !dbg !3554
  %flag.1 = phi i32 [ %call28, %if.then27 ], [ %call32, %if.then31 ], [ %call24, %if.then16 ], !dbg !3554
  call void @llvm.dbg.value(metadata i32 %flag.1, metadata !3501, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i32 %reason.1, metadata !3500, metadata !DIExpression()), !dbg !3506
  %cmp35 = icmp eq i32 %flag.1, 3, !dbg !3555
  br i1 %cmp35, label %if.then37, label %if.end43, !dbg !3557

if.then37:                                        ; preds = %if.end34
  call void @llvm.dbg.value(metadata i32 1, metadata !3499, metadata !DIExpression()), !dbg !3506
  %call38 = call fastcc i32 @read_flag(%struct.cpp_reader* %pfile, i32 3) #9, !dbg !3558
  call void @llvm.dbg.value(metadata i32 %call38, metadata !3501, metadata !DIExpression()), !dbg !3506
  %cmp39 = icmp eq i32 %call38, 4, !dbg !3560
  %spec.select = select i1 %cmp39, i32 2, i32 1, !dbg !3562
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3499, metadata !DIExpression()), !dbg !3506
  br label %if.end43, !dbg !3563

if.end43:                                         ; preds = %if.then37, %if.end34
  %new_sysp.1 = phi i32 [ %spec.select, %if.then37 ], [ 0, %if.end34 ], !dbg !3540
  call void @llvm.dbg.value(metadata i32 %new_sysp.1, metadata !3499, metadata !DIExpression()), !dbg !3506
  %conv44 = trunc i32 %new_sysp.1 to i8, !dbg !3564
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !3565
  %10 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !3565
  %sysp45 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %10, i64 0, i32 15, !dbg !3566
  store i8 %conv44, i8* %sysp45, align 2, !dbg !3567
  call fastcc void @check_eol(%struct.cpp_reader* %pfile, i8 zeroext 0) #9, !dbg !3568
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !3569
  br label %if.end56, !dbg !3570

if.else46:                                        ; preds = %if.end
  %cmp50 = icmp eq i8 %bf.load12, 22, !dbg !3571
  br i1 %cmp50, label %if.end56, label %if.then52, !dbg !3573

if.then52:                                        ; preds = %if.else46
  %call53 = call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %call10) #8, !dbg !3574
  %call54 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0), i8* %call53) #8, !dbg !3576
  br label %cleanup, !dbg !3577

if.end56:                                         ; preds = %if.else46, %if.end43
  %new_sysp.2 = phi i32 [ %new_sysp.1, %if.end43 ], [ %conv, %if.else46 ], !dbg !3506
  %new_file.1 = phi i8* [ %new_file.0, %if.end43 ], [ %3, %if.else46 ], !dbg !3506
  %reason.2 = phi i32 [ %reason.1, %if.end43 ], [ 3, %if.else46 ], !dbg !3506
  call void @llvm.dbg.value(metadata i32 %reason.2, metadata !3500, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i8* %new_file.1, metadata !3497, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i32 %new_sysp.2, metadata !3499, metadata !DIExpression()), !dbg !3506
  call fastcc void @skip_rest_of_line(%struct.cpp_reader* %pfile) #9, !dbg !3578
  %11 = load %struct.line_maps*, %struct.line_maps** %line_table1, align 8, !dbg !3579
  %highest_location = getelementptr inbounds %struct.line_maps, %struct.line_maps* %11, i64 0, i32 7, !dbg !3580
  %12 = load i32, i32* %highest_location, align 8, !dbg !3581
  %dec = add i32 %12, -1, !dbg !3581
  store i32 %dec, i32* %highest_location, align 8, !dbg !3581
  %13 = load i32, i32* %new_lineno, align 4, !dbg !3582
  call void @llvm.dbg.value(metadata i32 %13, metadata !3498, metadata !DIExpression()), !dbg !3506
  call void @_cpp_do_file_change(%struct.cpp_reader* %pfile, i32 %reason.2, i8* %new_file.1, i32 %13, i32 %new_sysp.2) #9, !dbg !3583
  br label %cleanup, !dbg !3584

cleanup:                                          ; preds = %if.end56, %if.then52, %if.then
  call void @llvm.dbg.value(metadata i8* %wrapped, metadata !3502, metadata !DIExpression(DW_OP_deref)), !dbg !3506
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %wrapped) #7, !dbg !3584
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7, !dbg !3584
  ret void, !dbg !3584
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_flag(%struct.cpp_reader* %pfile, i32 %last) unnamed_addr #3 !dbg !3585 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3589, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i32 %last, metadata !3590, metadata !DIExpression()), !dbg !3595
  %call = tail call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %pfile) #8, !dbg !3596
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !3591, metadata !DIExpression()), !dbg !3595
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !3597
  %bf.load = load i8, i8* %type, align 4, !dbg !3597
  %cmp = icmp eq i8 %bf.load, 55, !dbg !3598
  br i1 %cmp, label %land.lhs.true, label %if.end21, !dbg !3599

land.lhs.true:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 0, !dbg !3600
  %0 = load i32, i32* %len, align 8, !dbg !3600
  %cmp1 = icmp eq i32 %0, 1, !dbg !3601
  br i1 %cmp1, label %if.then, label %if.end21, !dbg !3602

if.then:                                          ; preds = %land.lhs.true
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 1, !dbg !3603
  %1 = load i8*, i8** %text, align 8, !dbg !3603
  %2 = load i8, i8* %1, align 1, !dbg !3604
  %conv = zext i8 %2 to i32, !dbg !3604
  %sub = add nsw i32 %conv, -48, !dbg !3605
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3592, metadata !DIExpression()), !dbg !3606
  %cmp4 = icmp ugt i32 %sub, %last, !dbg !3607
  %cmp7 = icmp ult i32 %sub, 5, !dbg !3609
  %or.cond = and i1 %cmp4, %cmp7, !dbg !3610
  br i1 %or.cond, label %land.lhs.true9, label %if.end, !dbg !3610

land.lhs.true9:                                   ; preds = %if.then
  %cmp10 = icmp ne i32 %sub, 4, !dbg !3611
  %cmp12 = icmp eq i32 %last, 3, !dbg !3612
  %or.cond1 = or i1 %cmp10, %cmp12, !dbg !3613
  br i1 %or.cond1, label %land.lhs.true14, label %if.end, !dbg !3613

land.lhs.true14:                                  ; preds = %land.lhs.true9
  %cmp15 = icmp ne i32 %sub, 2, !dbg !3614
  %cmp18 = icmp eq i32 %last, 0, !dbg !3615
  %or.cond2 = or i1 %cmp15, %cmp18, !dbg !3616
  br i1 %or.cond2, label %cleanup, label %if.end, !dbg !3616

if.end:                                           ; preds = %land.lhs.true14, %land.lhs.true9, %if.then
  br label %cleanup, !dbg !3617

cleanup:                                          ; preds = %land.lhs.true14, %if.end
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true14 ]
  br i1 %cleanup.dest.slot.0, label %if.end21, label %cleanup31

if.end21:                                         ; preds = %cleanup, %land.lhs.true, %entry
  %cmp25 = icmp eq i8 %bf.load, 22, !dbg !3618
  br i1 %cmp25, label %cleanup31, label %if.then27, !dbg !3620

if.then27:                                        ; preds = %if.end21
  %call28 = tail call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %call) #8, !dbg !3621
  %call29 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i64 0, i64 0), i8* %call28) #8, !dbg !3622
  br label %cleanup31, !dbg !3622

cleanup31:                                        ; preds = %if.end21, %if.then27, %cleanup
  %retval.1 = phi i32 [ %sub, %cleanup ], [ 0, %if.then27 ], [ 0, %if.end21 ], !dbg !3595
  ret i32 %retval.1, !dbg !3623
}

declare dso_local void @_cpp_fake_include(%struct.cpp_reader*, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @_cpp_scan_out_logical_line(%struct.cpp_reader*, %struct.cpp_macro*) local_unnamed_addr #2

declare dso_local void @_cpp_overlay_buffer(%struct.cpp_reader*, i8*, i64) local_unnamed_addr #2

declare dso_local void @_cpp_remove_overlay(%struct.cpp_reader*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.pragma_entry* @new_pragma_entry(%struct.cpp_reader* %pfile, %struct.pragma_entry** %chain) unnamed_addr #3 !dbg !3624 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3628, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata %struct.pragma_entry** %chain, metadata !3629, metadata !DIExpression()), !dbg !3631
  %call = tail call i8* @_cpp_aligned_alloc(%struct.cpp_reader* %pfile, i64 32) #8, !dbg !3632
  %0 = bitcast i8* %call to %struct.pragma_entry*, !dbg !3633
  call void @llvm.dbg.value(metadata %struct.pragma_entry* %0, metadata !3630, metadata !DIExpression()), !dbg !3631
  %call1 = tail call i8* @memset(i8* %call, i32 0, i64 32) #8, !dbg !3634
  %1 = bitcast %struct.pragma_entry** %chain to i64*, !dbg !3635
  %2 = load i64, i64* %1, align 8, !dbg !3635
  %3 = bitcast i8* %call to i64*, !dbg !3636
  store i64 %2, i64* %3, align 8, !dbg !3636
  %4 = bitcast %struct.pragma_entry** %chain to i8**, !dbg !3637
  store i8* %call, i8** %4, align 8, !dbg !3637
  ret %struct.pragma_entry* %0, !dbg !3638
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local i8* @_cpp_aligned_alloc(%struct.cpp_reader*, i64) local_unnamed_addr #2

declare dso_local i8* @xmemdup(i8*, i64, i64) local_unnamed_addr #2

declare dso_local void @_cpp_mark_file_once_only(%struct.cpp_reader*, %struct._cpp_file*) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #6

declare dso_local void @cpp_make_system_header(%struct.cpp_reader*, i32, i32) local_unnamed_addr #2

declare dso_local i32 @_cpp_compare_file_date(%struct.cpp_reader*, i8*, i32) local_unnamed_addr #2

declare dso_local void @_cpp_clean_line(%struct.cpp_reader*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @parse_answer(%struct.cpp_reader* %pfile, %struct.answer** %answerp, i32 %type, i32 %pred_loc) unnamed_addr #3 !dbg !3639 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3643, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata %struct.answer** %answerp, metadata !3644, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i32 %type, metadata !3645, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i32 %pred_loc, metadata !3646, metadata !DIExpression()), !dbg !3656
  %call = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !3657
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !3647, metadata !DIExpression()), !dbg !3656
  %type1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !3658
  %bf.load = load i8, i8* %type1, align 4, !dbg !3658
  %cmp = icmp eq i8 %bf.load, 20, !dbg !3660
  br i1 %cmp, label %for.cond.preheader, label %if.then, !dbg !3661

for.cond.preheader:                               ; preds = %entry
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 5, !dbg !3662
  br label %for.cond, !dbg !3664

if.then:                                          ; preds = %entry
  switch i32 %type, label %if.end10 [
    i32 4, label %if.then3
    i32 17, label %land.lhs.true
  ], !dbg !3665

if.then3:                                         ; preds = %if.then
  tail call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 1) #8, !dbg !3667
  br label %cleanup50, !dbg !3670

land.lhs.true:                                    ; preds = %if.then
  %cmp8 = icmp eq i8 %bf.load, 22, !dbg !3671
  br i1 %cmp8, label %cleanup50, label %if.end10, !dbg !3673

if.end10:                                         ; preds = %if.then, %land.lhs.true
  %call11 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %pred_loc, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.81, i64 0, i64 0)) #8, !dbg !3674
  br label %cleanup50, !dbg !3675

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %acount.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !3676
  call void @llvm.dbg.value(metadata i32 %acount.0, metadata !3649, metadata !DIExpression()), !dbg !3656
  %call13 = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #8, !dbg !3677
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call13, metadata !3654, metadata !DIExpression()), !dbg !3678
  %type14 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call13, i64 0, i32 1, !dbg !3679
  %bf.load15 = load i8, i8* %type14, align 4, !dbg !3679
  %cmp17 = icmp eq i8 %bf.load15, 21, !dbg !3681
  br i1 %cmp17, label %cleanup, label %if.end19, !dbg !3682

if.end19:                                         ; preds = %for.cond
  %cmp23 = icmp eq i8 %bf.load15, 22, !dbg !3683
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !3685

if.then24:                                        ; preds = %if.end19
  %call25 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.82, i64 0, i64 0)) #8, !dbg !3686
  br label %cleanup, !dbg !3688

if.end26:                                         ; preds = %if.end19
  %conv = zext i32 %acount.0 to i64, !dbg !3689
  %mul = mul nuw nsw i64 %conv, 24, !dbg !3690
  %add = add nuw nsw i64 %mul, 40, !dbg !3691
  call void @llvm.dbg.value(metadata i64 %add, metadata !3650, metadata !DIExpression()), !dbg !3678
  %0 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !3692
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %0, i64 0, i32 3, !dbg !3692
  %1 = bitcast i8** %limit to i64*, !dbg !3692
  %2 = load i64, i64* %1, align 8, !dbg !3692
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %0, i64 0, i32 2, !dbg !3692
  %3 = bitcast i8** %cur to i64*, !dbg !3692
  %4 = load i64, i64* %3, align 8, !dbg !3692
  %sub.ptr.sub = sub i64 %2, %4, !dbg !3692
  %cmp28 = icmp ult i64 %sub.ptr.sub, %add, !dbg !3693
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !3694

if.then30:                                        ; preds = %if.end26
  tail call void @_cpp_extend_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff** nonnull %a_buff, i64 40) #8, !dbg !3695
  %.pre = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !3696
  br label %if.end32, !dbg !3695

if.end32:                                         ; preds = %if.then30, %if.end26
  %5 = phi %struct._cpp_buff* [ %.pre, %if.then30 ], [ %0, %if.end26 ], !dbg !3696
  %cur34 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %5, i64 0, i32 2, !dbg !3696
  %6 = bitcast i8** %cur34 to %struct.answer**, !dbg !3696
  %7 = load %struct.answer*, %struct.answer** %6, align 8, !dbg !3696
  %arrayidx = getelementptr inbounds %struct.answer, %struct.answer* %7, i64 0, i32 2, i64 %conv, !dbg !3697
  call void @llvm.dbg.value(metadata %struct.cpp_token* %arrayidx, metadata !3655, metadata !DIExpression()), !dbg !3678
  %8 = bitcast %struct.cpp_token* %arrayidx to i8*, !dbg !3698
  %9 = bitcast %struct.cpp_token* %call13 to i8*, !dbg !3698
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* align 8 %9, i64 24, i1 false), !dbg !3698
  %cmp35 = icmp eq i32 %acount.0, 0, !dbg !3699
  br i1 %cmp35, label %if.then37, label %cleanup, !dbg !3701

if.then37:                                        ; preds = %if.end32
  %flags = getelementptr inbounds %struct.answer, %struct.answer* %7, i64 0, i32 2, i64 %conv, i32 2, !dbg !3702
  %10 = load i16, i16* %flags, align 2, !dbg !3703
  %11 = and i16 %10, -2, !dbg !3703
  store i16 %11, i16* %flags, align 2, !dbg !3703
  br label %cleanup, !dbg !3704

cleanup:                                          ; preds = %if.end32, %if.then37, %for.cond, %if.then24
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then24 ], [ 2, %for.cond ], [ 0, %if.then37 ], [ 0, %if.end32 ]
  switch i32 %cleanup.dest.slot.0, label %cleanup50.loopexit [
    i32 0, label %for.inc
    i32 2, label %for.end
  ]

for.inc:                                          ; preds = %cleanup
  %inc = add i32 %acount.0, 1, !dbg !3705
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3649, metadata !DIExpression()), !dbg !3656
  br label %for.cond, !dbg !3706, !llvm.loop !3707

for.end:                                          ; preds = %cleanup
  %acount.0.lcssa4 = phi i32 [ %acount.0, %cleanup ], !dbg !3676
  call void @llvm.dbg.value(metadata i32 %acount.0.lcssa4, metadata !3649, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i32 %acount.0.lcssa4, metadata !3649, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i32 %acount.0.lcssa4, metadata !3649, metadata !DIExpression()), !dbg !3656
  %cmp43 = icmp eq i32 %acount.0.lcssa4, 0, !dbg !3709
  br i1 %cmp43, label %if.then45, label %if.end47, !dbg !3711

if.then45:                                        ; preds = %for.end
  %call46 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.83, i64 0, i64 0)) #8, !dbg !3712
  br label %cleanup50, !dbg !3714

if.end47:                                         ; preds = %for.end
  %12 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !3715
  %cur49 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %12, i64 0, i32 2, !dbg !3715
  %13 = bitcast i8** %cur49 to %struct.answer**, !dbg !3715
  %14 = load %struct.answer*, %struct.answer** %13, align 8, !dbg !3715
  call void @llvm.dbg.value(metadata %struct.answer* %14, metadata !3648, metadata !DIExpression()), !dbg !3656
  %count = getelementptr inbounds %struct.answer, %struct.answer* %14, i64 0, i32 1, !dbg !3716
  store i32 %acount.0.lcssa4, i32* %count, align 8, !dbg !3717
  %next = getelementptr inbounds %struct.answer, %struct.answer* %14, i64 0, i32 0, !dbg !3718
  store %struct.answer* null, %struct.answer** %next, align 8, !dbg !3719
  store %struct.answer* %14, %struct.answer** %answerp, align 8, !dbg !3720
  br label %cleanup50, !dbg !3721

cleanup50.loopexit:                               ; preds = %cleanup
  br label %cleanup50, !dbg !3722

cleanup50:                                        ; preds = %cleanup50.loopexit, %land.lhs.true, %if.end47, %if.then45, %if.end10, %if.then3
  %retval.2 = phi i32 [ 0, %if.then3 ], [ 1, %if.end10 ], [ 1, %if.then45 ], [ 0, %if.end47 ], [ 0, %land.lhs.true ], [ 1, %cleanup50.loopexit ]
  ret i32 %retval.2, !dbg !3722
}

declare dso_local void @_cpp_extend_buff(%struct.cpp_reader*, %struct._cpp_buff**, i64) local_unnamed_addr #2

declare dso_local i32 @_cpp_equiv_tokens(%struct.cpp_token*, %struct.cpp_token*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #6

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!671, !672, !673}
!llvm.ident = !{!674}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dtable", scope: !2, file: !3, line: 184, type: !668, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !56, globals: !663, nameTableKind: None)
!3 = !DIFile(filename: "cpp_directives.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !19, !31, !37, !42, !49}
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
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lc_reason", file: !43, line: 36, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "LC_ENTER", value: 0, isUnsigned: true)
!46 = !DIEnumerator(name: "LC_LEAVE", value: 1, isUnsigned: true)
!47 = !DIEnumerator(name: "LC_RENAME", value: 2, isUnsigned: true)
!48 = !DIEnumerator(name: "LC_RENAME_VERBATIM", value: 3, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "include_type", file: !50, line: 119, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./internal.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "IT_INCLUDE", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "IT_INCLUDE_NEXT", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "IT_IMPORT", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "IT_CMDLINE", value: 3, isUnsigned: true)
!56 = !{!57, !58, !59, !61, !64, !234, !7, !236, !238, !90, !201, !138, !130, !169, !241, !655, !328, !361, !319, !228}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_buffer", file: !6, line: 32, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_buffer", file: !50, line: 249, size: 1536, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !80, !81, !82, !83, !85, !88, !89, !184, !185, !186, !187, !188, !189, !218}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !66, file: !50, line: 251, baseType: !61, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "line_base", scope: !66, file: !50, line: 252, baseType: !61, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !66, file: !50, line: 253, baseType: !61, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !66, file: !50, line: 255, baseType: !61, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !66, file: !50, line: 256, baseType: !61, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !66, file: !50, line: 258, baseType: !74, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_line_note", file: !50, line: 235, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_line_note", file: !50, line: 236, size: 128, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !76, file: !50, line: 239, baseType: !61, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !50, line: 245, baseType: !7, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "cur_note", scope: !66, file: !50, line: 259, baseType: !7, size: 32, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "notes_used", scope: !66, file: !50, line: 260, baseType: !7, size: 32, offset: 416)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "notes_cap", scope: !66, file: !50, line: 261, baseType: !7, size: 32, offset: 448)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !66, file: !50, line: 263, baseType: !84, size: 64, offset: 512)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !66, file: !50, line: 267, baseType: !86, size: 64, offset: 576)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_file", file: !6, line: 42, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !66, file: !50, line: 271, baseType: !61, size: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "if_stack", scope: !66, file: !50, line: 275, baseType: !90, size: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "if_stack", file: !3, line: 33, size: 256, elements: !92)
!92 = !{!93, !94, !96, !180, !181, !182}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !3, line: 35, baseType: !90, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !91, file: !3, line: 36, baseType: !95, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !43, line: 39, baseType: !7)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "mi_cmacro", scope: !91, file: !3, line: 37, baseType: !97, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_hashnode", file: !6, line: 36, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_hashnode", file: !6, line: 644, size: 256, elements: !101)
!101 = !{!102, !109, !110, !111, !112, !113, !114}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !100, file: !6, line: 645, baseType: !103, size: 128)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !104, line: 31, size: 128, elements: !105)
!104 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!105 = !{!106, !107, !108}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !103, file: !104, line: 32, baseType: !61, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !103, file: !104, line: 33, baseType: !7, size: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !103, file: !104, line: 34, baseType: !7, size: 32, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !100, file: !6, line: 646, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !100, file: !6, line: 647, baseType: !7, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !100, file: !6, line: 650, baseType: !63, size: 8, offset: 136)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !6, line: 651, baseType: !7, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !6, line: 652, baseType: !7, size: 10, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !100, file: !6, line: 654, baseType: !115, size: 64, offset: 192)
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_cpp_hashnode_value", file: !6, line: 633, size: 64, elements: !116)
!116 = !{!117, !168, !178, !179}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !115, file: !6, line: 635, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_macro", file: !6, line: 37, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro", file: !121, line: 36, size: 256, elements: !122)
!121 = !DIFile(filename: "./cpp-id-data.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!122 = !{!123, !126, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !120, file: !121, line: 42, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !120, file: !121, line: 51, baseType: !127, size: 64, offset: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_macro_u", file: !121, line: 47, size: 64, elements: !128)
!128 = !{!129, !158}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tokens", scope: !127, file: !121, line: 49, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !6, line: 34, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !6, line: 212, size: 192, elements: !133)
!133 = !{!134, !136, !137, !139}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !132, file: !6, line: 213, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !43, line: 44, baseType: !7)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !6, line: 214, baseType: !7, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !132, file: !6, line: 215, baseType: !138, size: 16, offset: 48)
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !132, file: !6, line: 237, baseType: !140, size: 128, offset: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_token_u", file: !6, line: 217, size: 128, elements: !141)
!141 = !{!142, !146, !147, !152, !156, !157}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !140, file: !6, line: 220, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_identifier", file: !6, line: 201, size: 64, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !143, file: !6, line: 207, baseType: !125, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !140, file: !6, line: 223, baseType: !130, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !140, file: !6, line: 226, baseType: !148, size: 128)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !6, line: 162, size: 128, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !148, file: !6, line: 163, baseType: !7, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !148, file: !6, line: 164, baseType: !61, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !140, file: !6, line: 229, baseType: !153, size: 32)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !6, line: 195, size: 32, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !153, file: !6, line: 197, baseType: !7, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !140, file: !6, line: 233, baseType: !7, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !140, file: !6, line: 236, baseType: !7, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !127, file: !121, line: 50, baseType: !61, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !120, file: !121, line: 54, baseType: !135, size: 32, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !120, file: !121, line: 57, baseType: !7, size: 32, offset: 160)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "paramc", scope: !120, file: !121, line: 60, baseType: !138, size: 16, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "fun_like", scope: !120, file: !121, line: 63, baseType: !7, size: 1, offset: 208, flags: DIFlagBitField, extraData: i64 208)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "variadic", scope: !120, file: !121, line: 66, baseType: !7, size: 1, offset: 209, flags: DIFlagBitField, extraData: i64 208)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "syshdr", scope: !120, file: !121, line: 69, baseType: !7, size: 1, offset: 210, flags: DIFlagBitField, extraData: i64 208)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !120, file: !121, line: 72, baseType: !7, size: 1, offset: 211, flags: DIFlagBitField, extraData: i64 208)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !120, file: !121, line: 75, baseType: !7, size: 1, offset: 212, flags: DIFlagBitField, extraData: i64 208)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "extra_tokens", scope: !120, file: !121, line: 80, baseType: !7, size: 1, offset: 213, flags: DIFlagBitField, extraData: i64 208)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "answers", scope: !115, file: !6, line: 637, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !121, line: 28, size: 320, elements: !171)
!171 = !{!172, !173, !174}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !121, line: 29, baseType: !169, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !170, file: !121, line: 30, baseType: !7, size: 32, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !170, file: !121, line: 31, baseType: !175, size: 192, offset: 128)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 192, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 1)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !115, file: !6, line: 639, baseType: !5, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !115, file: !6, line: 641, baseType: !138, size: 16)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "skip_elses", scope: !91, file: !3, line: 38, baseType: !63, size: 8, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "was_skipping", scope: !91, file: !3, line: 39, baseType: !63, size: 8, offset: 200)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !3, line: 40, baseType: !183, size: 32, offset: 224)
!183 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "need_line", scope: !66, file: !50, line: 278, baseType: !63, size: 8, offset: 768)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "warned_cplusplus_comments", scope: !66, file: !50, line: 284, baseType: !7, size: 1, offset: 776, flags: DIFlagBitField, extraData: i64 776)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "from_stage3", scope: !66, file: !50, line: 289, baseType: !7, size: 1, offset: 777, flags: DIFlagBitField, extraData: i64 776)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "return_at_eof", scope: !66, file: !50, line: 294, baseType: !7, size: 1, offset: 778, flags: DIFlagBitField, extraData: i64 776)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !66, file: !50, line: 298, baseType: !63, size: 8, offset: 784)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !66, file: !50, line: 302, baseType: !190, size: 512, offset: 832)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !6, line: 523, size: 512, elements: !191)
!191 = !{!192, !194, !195, !196, !197, !198, !199, !203, !209, !215}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !6, line: 526, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !190, file: !6, line: 529, baseType: !59, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !190, file: !6, line: 530, baseType: !7, size: 32, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !190, file: !6, line: 534, baseType: !63, size: 8, offset: 160)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !190, file: !6, line: 537, baseType: !63, size: 8, offset: 168)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !190, file: !6, line: 541, baseType: !59, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !190, file: !6, line: 545, baseType: !200, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !190, file: !6, line: 551, baseType: !204, size: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!59, !201, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !6, line: 39, baseType: !190)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !190, file: !6, line: 555, baseType: !210, size: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !211, line: 47, baseType: !212)
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !213, line: 148, baseType: !214)
!213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!214 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !190, file: !6, line: 556, baseType: !216, size: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !211, line: 59, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !213, line: 145, baseType: !214)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "input_cset_desc", scope: !66, file: !50, line: 306, baseType: !219, size: 192, offset: 1344)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cset_converter", file: !50, line: 47, size: 192, elements: !220)
!220 = !{!221, !232, !233}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !219, file: !50, line: 49, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "convert_f", file: !50, line: 45, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!63, !226, !61, !228, !230}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !227, line: 29, baseType: !57)
!227 = !DIFile(filename: "/usr/include/iconv.h", directory: "")
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !229, line: 46, baseType: !214)
!229 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_strbuf", file: !50, line: 43, flags: DIFlagFwdDecl)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !219, file: !50, line: 50, baseType: !226, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !219, file: !50, line: 51, baseType: !183, size: 32, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !229, line: 35, baseType: !235)
!235 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !121, line: 22, baseType: !63)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pragma_entry", file: !3, line: 45, size: 256, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !3, line: 47, baseType: !241, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !242, file: !3, line: 48, baseType: !97, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "is_nspace", scope: !242, file: !3, line: 49, baseType: !63, size: 8, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "is_internal", scope: !242, file: !3, line: 50, baseType: !63, size: 8, offset: 136)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "is_deferred", scope: !242, file: !3, line: 51, baseType: !63, size: 8, offset: 144)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "allow_expansion", scope: !242, file: !3, line: 52, baseType: !63, size: 8, offset: 152)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !242, file: !3, line: 57, baseType: !251, size: 64, offset: 192)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !3, line: 53, size: 64, elements: !252)
!252 = !{!253, !661, !662}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !251, file: !3, line: 54, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "pragma_cb", file: !3, line: 44, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !6, line: 31, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !50, line: 322, size: 10432, elements: !261)
!261 = !{!262, !263, !264, !281, !310, !311, !322, !323, !324, !351, !353, !366, !367, !368, !369, !370, !371, !372, !373, !374, !377, !378, !381, !382, !414, !415, !416, !417, !418, !419, !420, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !446, !447, !448, !449, !526, !552, !555, !556, !619, !626, !627, !634, !635, !636, !637, !640, !641, !654}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !260, file: !50, line: 325, baseType: !64, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "overlaid_buffer", scope: !260, file: !50, line: 328, baseType: !64, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !260, file: !50, line: 331, baseType: !265, size: 160, offset: 128)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lexer_state", file: !50, line: 177, size: 160, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "in_directive", scope: !265, file: !50, line: 180, baseType: !63, size: 8)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "directive_wants_padding", scope: !265, file: !50, line: 185, baseType: !63, size: 8, offset: 8)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "skipping", scope: !265, file: !50, line: 188, baseType: !63, size: 8, offset: 16)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "angled_headers", scope: !265, file: !50, line: 191, baseType: !63, size: 8, offset: 24)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "in_expression", scope: !265, file: !50, line: 194, baseType: !63, size: 8, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "save_comments", scope: !265, file: !50, line: 198, baseType: !63, size: 8, offset: 40)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "va_args_ok", scope: !265, file: !50, line: 201, baseType: !63, size: 8, offset: 48)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned_ok", scope: !265, file: !50, line: 204, baseType: !63, size: 8, offset: 56)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_expansion", scope: !265, file: !50, line: 207, baseType: !63, size: 8, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "parsing_args", scope: !265, file: !50, line: 210, baseType: !63, size: 8, offset: 72)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "discarding_output", scope: !265, file: !50, line: 214, baseType: !63, size: 8, offset: 80)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "skip_eval", scope: !265, file: !50, line: 217, baseType: !7, size: 32, offset: 96)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "in_deferred_pragma", scope: !265, file: !50, line: 220, baseType: !63, size: 8, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "pragma_allow_expansion", scope: !265, file: !50, line: 223, baseType: !63, size: 8, offset: 136)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "line_table", scope: !260, file: !50, line: 334, baseType: !282, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !43, line: 74, size: 448, elements: !284)
!284 = !{!285, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !283, file: !43, line: 75, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !43, line: 61, size: 192, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !287, file: !43, line: 62, baseType: !201, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !287, file: !43, line: 63, baseType: !95, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !287, file: !43, line: 64, baseType: !135, size: 32, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !287, file: !43, line: 65, baseType: !183, size: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !287, file: !43, line: 66, baseType: !7, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !287, file: !43, line: 68, baseType: !63, size: 8, offset: 168)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !287, file: !43, line: 70, baseType: !7, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !283, file: !43, line: 76, baseType: !7, size: 32, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !283, file: !43, line: 77, baseType: !7, size: 32, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !283, file: !43, line: 79, baseType: !7, size: 32, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !283, file: !43, line: 84, baseType: !183, size: 32, offset: 160)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !283, file: !43, line: 87, baseType: !7, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !283, file: !43, line: 90, baseType: !63, size: 8, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !283, file: !43, line: 93, baseType: !135, size: 32, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !283, file: !43, line: 96, baseType: !135, size: 32, offset: 288)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !283, file: !43, line: 100, baseType: !7, size: 32, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !283, file: !43, line: 104, baseType: !306, size: 64, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !43, line: 47, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!57, !57, !228}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "directive_line", scope: !260, file: !50, line: 337, baseType: !135, size: 32, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "a_buff", scope: !260, file: !50, line: 340, baseType: !312, size: 64, offset: 448)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_buff", file: !50, line: 99, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_buff", file: !50, line: 100, size: 256, elements: !315)
!315 = !{!316, !318, !320, !321}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !50, line: 102, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !314, file: !50, line: 103, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !314, file: !50, line: 103, baseType: !319, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !314, file: !50, line: 103, baseType: !319, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "u_buff", scope: !260, file: !50, line: 341, baseType: !312, size: 64, offset: 512)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffs", scope: !260, file: !50, line: 342, baseType: !312, size: 64, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "base_context", scope: !260, file: !50, line: 345, baseType: !325, size: 448, offset: 640)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_context", file: !50, line: 142, size: 448, elements: !326)
!326 = !{!327, !330, !331, !348, !349, !350}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !50, line: 145, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_context", file: !50, line: 141, baseType: !325)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !325, file: !50, line: 145, baseType: !328, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !325, file: !50, line: 164, baseType: !332, size: 128, offset: 128)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !50, line: 147, size: 128, elements: !333)
!333 = !{!334, !343}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "iso", scope: !332, file: !50, line: 156, baseType: !335, size: 128)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !50, line: 152, size: 128, elements: !336)
!336 = !{!337, !342}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !335, file: !50, line: 154, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "utoken", file: !50, line: 121, size: 64, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !338, file: !50, line: 123, baseType: !239, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ptoken", scope: !338, file: !50, line: 124, baseType: !238, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !335, file: !50, line: 155, baseType: !338, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "trad", scope: !332, file: !50, line: 163, baseType: !344, size: 128)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !50, line: 159, size: 128, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !344, file: !50, line: 161, baseType: !61, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !344, file: !50, line: 162, baseType: !61, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !325, file: !50, line: 168, baseType: !312, size: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !325, file: !50, line: 171, baseType: !125, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "direct_p", scope: !325, file: !50, line: 174, baseType: !63, size: 8, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !260, file: !50, line: 346, baseType: !352, size: 64, offset: 1088)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !260, file: !50, line: 349, baseType: !354, size: 64, offset: 1152)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "directive", file: !3, line: 84, size: 192, elements: !357)
!357 = !{!358, !360, !363, !364, !365}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !356, file: !3, line: 86, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "directive_handler", file: !3, line: 82, baseType: !255)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !356, file: !3, line: 87, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !356, file: !3, line: 88, baseType: !138, size: 16, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !356, file: !3, line: 89, baseType: !63, size: 8, offset: 144)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !3, line: 90, baseType: !63, size: 8, offset: 152)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "directive_result", scope: !260, file: !50, line: 352, baseType: !131, size: 192, offset: 1216)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "invocation_location", scope: !260, file: !50, line: 356, baseType: !135, size: 32, offset: 1408)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "set_invocation_location", scope: !260, file: !50, line: 360, baseType: !63, size: 8, offset: 1440)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "quote_include", scope: !260, file: !50, line: 363, baseType: !193, size: 64, offset: 1472)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "bracket_include", scope: !260, file: !50, line: 364, baseType: !193, size: 64, offset: 1536)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "no_search_path", scope: !260, file: !50, line: 365, baseType: !190, size: 512, offset: 1600)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "all_files", scope: !260, file: !50, line: 368, baseType: !86, size: 64, offset: 2112)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "main_file", scope: !260, file: !50, line: 370, baseType: !86, size: 64, offset: 2176)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash", scope: !260, file: !50, line: 373, baseType: !375, size: 64, offset: 2240)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !50, line: 373, flags: DIFlagFwdDecl)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash", scope: !260, file: !50, line: 374, baseType: !375, size: 64, offset: 2304)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash_entries", scope: !260, file: !50, line: 375, baseType: !379, size: 64, offset: 2368)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_hash_entry_pool", file: !50, line: 375, flags: DIFlagFwdDecl)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_hash", scope: !260, file: !50, line: 378, baseType: !375, size: 64, offset: 2432)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_ob", scope: !260, file: !50, line: 379, baseType: !383, size: 704, offset: 2496)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !384, line: 164, size: 704, elements: !385)
!384 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!385 = !{!386, !387, !397, !398, !399, !400, !401, !402, !406, !410, !411, !412, !413}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !383, file: !384, line: 166, baseType: !235, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !383, file: !384, line: 167, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !384, line: 157, size: 192, elements: !390)
!390 = !{!391, !392, !393}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !389, file: !384, line: 159, baseType: !59, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !389, file: !384, line: 160, baseType: !388, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !389, file: !384, line: 161, baseType: !394, size: 32, offset: 128)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 4)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !383, file: !384, line: 168, baseType: !59, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !383, file: !384, line: 169, baseType: !59, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !383, file: !384, line: 170, baseType: !59, size: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !383, file: !384, line: 171, baseType: !235, size: 64, offset: 320)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !383, file: !384, line: 172, baseType: !183, size: 32, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !383, file: !384, line: 176, baseType: !403, size: 64, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!388, !57, !235}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !383, file: !384, line: 177, baseType: !407, size: 64, offset: 512)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !57, !388}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !383, file: !384, line: 178, baseType: !57, size: 64, offset: 576)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !383, file: !384, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !383, file: !384, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !383, file: !384, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "quote_ignores_source_dir", scope: !260, file: !50, line: 383, baseType: !63, size: 8, offset: 3200)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "seen_once_only", scope: !260, file: !50, line: 387, baseType: !63, size: 8, offset: 3208)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "mi_cmacro", scope: !260, file: !50, line: 390, baseType: !97, size: 64, offset: 3264)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mi_ind_cmacro", scope: !260, file: !50, line: 391, baseType: !97, size: 64, offset: 3328)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "mi_valid", scope: !260, file: !50, line: 392, baseType: !63, size: 8, offset: 3392)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "cur_token", scope: !260, file: !50, line: 395, baseType: !130, size: 64, offset: 3456)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "base_run", scope: !260, file: !50, line: 396, baseType: !421, size: 256, offset: 3520)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "tokenrun", file: !50, line: 128, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenrun", file: !50, line: 129, size: 256, elements: !423)
!423 = !{!424, !426, !427, !428}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !422, file: !50, line: 131, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !422, file: !50, line: 131, baseType: !425, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !422, file: !50, line: 132, baseType: !130, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !422, file: !50, line: 132, baseType: !130, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "cur_run", scope: !260, file: !50, line: 396, baseType: !425, size: 64, offset: 3776)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lookaheads", scope: !260, file: !50, line: 397, baseType: !7, size: 32, offset: 3840)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "keep_tokens", scope: !260, file: !50, line: 400, baseType: !7, size: 32, offset: 3872)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer", scope: !260, file: !50, line: 403, baseType: !319, size: 64, offset: 3904)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer_len", scope: !260, file: !50, line: 404, baseType: !7, size: 32, offset: 3968)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_cset_desc", scope: !260, file: !50, line: 408, baseType: !219, size: 192, offset: 4032)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_cset_desc", scope: !260, file: !50, line: 412, baseType: !219, size: 192, offset: 4224)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "char16_cset_desc", scope: !260, file: !50, line: 416, baseType: !219, size: 192, offset: 4416)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "char32_cset_desc", scope: !260, file: !50, line: 420, baseType: !219, size: 192, offset: 4608)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wide_cset_desc", scope: !260, file: !50, line: 424, baseType: !219, size: 192, offset: 4800)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !260, file: !50, line: 427, baseType: !61, size: 64, offset: 4992)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !260, file: !50, line: 428, baseType: !61, size: 64, offset: 5056)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_paste", scope: !260, file: !50, line: 431, baseType: !131, size: 192, offset: 5120)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !260, file: !50, line: 432, baseType: !131, size: 192, offset: 5312)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !260, file: !50, line: 435, baseType: !444, size: 64, offset: 5504)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !6, line: 685, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "hash_ob", scope: !260, file: !50, line: 439, baseType: !383, size: 704, offset: 5568)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_ob", scope: !260, file: !50, line: 443, baseType: !383, size: 704, offset: 6272)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "pragmas", scope: !260, file: !50, line: 447, baseType: !241, size: 64, offset: 6976)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !260, file: !50, line: 450, baseType: !450, size: 1088, offset: 7040)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !6, line: 472, size: 1088, elements: !451)
!451 = !{!452, !456, !462, !466, !470, !474, !475, !482, !486, !490, !494, !500, !504, !519, !520, !521, !522}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !450, file: !6, line: 475, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !258, !239, !183}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !450, file: !6, line: 481, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !258, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !450, file: !6, line: 483, baseType: !463, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !258, !201}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !450, file: !6, line: 484, baseType: !467, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !258, !7, !61, !201, !183, !238}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !450, file: !6, line: 486, baseType: !471, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !258, !7, !125}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !450, file: !6, line: 487, baseType: !471, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !450, file: !6, line: 488, baseType: !476, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !258, !7, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !6, line: 35, baseType: !148)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !450, file: !6, line: 489, baseType: !483, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !258, !7}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !450, file: !6, line: 490, baseType: !487, size: 64, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!183, !258, !201, !183}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !450, file: !6, line: 491, baseType: !491, size: 64, offset: 576)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !258, !201, !183, !201}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !450, file: !6, line: 492, baseType: !495, size: 64, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !6, line: 469, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!201, !258, !201, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !450, file: !6, line: 496, baseType: !501, size: 64, offset: 704)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!125, !258, !239}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !450, file: !6, line: 500, baseType: !505, size: 64, offset: 768)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!63, !258, !183, !135, !7, !201, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !510, line: 14, baseType: !511)
!510 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 216, baseType: !512)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 192, elements: !176)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 216, size: 192, elements: !514)
!514 = !{!515, !516, !517, !518}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !513, file: !3, line: 216, baseType: !7, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !513, file: !3, line: 216, baseType: !7, size: 32, offset: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !513, file: !3, line: 216, baseType: !57, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !513, file: !3, line: 216, baseType: !57, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !450, file: !6, line: 506, baseType: !471, size: 64, offset: 832)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !450, file: !6, line: 507, baseType: !471, size: 64, offset: 896)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !450, file: !6, line: 510, baseType: !255, size: 64, offset: 960)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !450, file: !6, line: 513, baseType: !523, size: 64, offset: 1024)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !258, !135, !125}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !260, file: !50, line: 453, baseType: !527, size: 64, offset: 8128)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht", file: !104, line: 46, size: 1152, elements: !529)
!529 = !{!530, !531, !535, !541, !545, !546, !547, !549, !550, !551}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !528, file: !104, line: 49, baseType: !383, size: 704)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !528, file: !104, line: 51, baseType: !532, size: 64, offset: 704)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashnode", file: !104, line: 41, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_node", scope: !528, file: !104, line: 53, baseType: !536, size: 64, offset: 768)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!533, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !104, line: 40, baseType: !528)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_subobject", scope: !528, file: !104, line: 56, baseType: !542, size: 64, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!57, !228}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !528, file: !104, line: 58, baseType: !7, size: 32, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !528, file: !104, line: 59, baseType: !7, size: 32, offset: 928)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !528, file: !104, line: 62, baseType: !548, size: 64, offset: 960)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !528, file: !104, line: 65, baseType: !7, size: 32, offset: 1024)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !528, file: !104, line: 66, baseType: !7, size: 32, offset: 1056)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !528, file: !104, line: 69, baseType: !63, size: 8, offset: 1088)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "op_stack", scope: !260, file: !50, line: 456, baseType: !553, size: 64, offset: 8192)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !50, line: 42, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "op_limit", scope: !260, file: !50, line: 456, baseType: !553, size: 64, offset: 8256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !260, file: !50, line: 459, baseType: !557, size: 1024, offset: 8320)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !6, line: 279, size: 1024, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !557, file: !6, line: 282, baseType: !7, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !557, file: !6, line: 285, baseType: !19, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !557, file: !6, line: 288, baseType: !63, size: 8, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !557, file: !6, line: 291, baseType: !63, size: 8, offset: 72)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !557, file: !6, line: 296, baseType: !63, size: 8, offset: 80)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !557, file: !6, line: 299, baseType: !63, size: 8, offset: 88)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !557, file: !6, line: 303, baseType: !63, size: 8, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !557, file: !6, line: 306, baseType: !63, size: 8, offset: 104)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !557, file: !6, line: 309, baseType: !63, size: 8, offset: 112)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !557, file: !6, line: 312, baseType: !63, size: 8, offset: 120)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !557, file: !6, line: 315, baseType: !63, size: 8, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !557, file: !6, line: 318, baseType: !63, size: 8, offset: 136)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !557, file: !6, line: 321, baseType: !63, size: 8, offset: 144)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !557, file: !6, line: 324, baseType: !63, size: 8, offset: 152)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !557, file: !6, line: 328, baseType: !63, size: 8, offset: 160)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !557, file: !6, line: 331, baseType: !63, size: 8, offset: 168)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !557, file: !6, line: 334, baseType: !63, size: 8, offset: 176)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !557, file: !6, line: 338, baseType: !63, size: 8, offset: 184)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !557, file: !6, line: 341, baseType: !63, size: 8, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !557, file: !6, line: 344, baseType: !63, size: 8, offset: 200)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !557, file: !6, line: 348, baseType: !63, size: 8, offset: 208)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !557, file: !6, line: 352, baseType: !63, size: 8, offset: 216)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !557, file: !6, line: 356, baseType: !63, size: 8, offset: 224)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !557, file: !6, line: 360, baseType: !63, size: 8, offset: 232)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !557, file: !6, line: 363, baseType: !63, size: 8, offset: 240)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !557, file: !6, line: 366, baseType: !63, size: 8, offset: 248)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !557, file: !6, line: 370, baseType: !63, size: 8, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !557, file: !6, line: 373, baseType: !63, size: 8, offset: 264)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !557, file: !6, line: 376, baseType: !63, size: 8, offset: 272)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !557, file: !6, line: 379, baseType: !63, size: 8, offset: 280)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !557, file: !6, line: 382, baseType: !63, size: 8, offset: 288)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !557, file: !6, line: 385, baseType: !63, size: 8, offset: 296)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !557, file: !6, line: 389, baseType: !63, size: 8, offset: 304)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !557, file: !6, line: 392, baseType: !63, size: 8, offset: 312)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !557, file: !6, line: 395, baseType: !63, size: 8, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !557, file: !6, line: 398, baseType: !63, size: 8, offset: 328)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !557, file: !6, line: 401, baseType: !63, size: 8, offset: 336)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !557, file: !6, line: 404, baseType: !201, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !557, file: !6, line: 407, baseType: !201, size: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !557, file: !6, line: 410, baseType: !201, size: 64, offset: 512)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !557, file: !6, line: 414, baseType: !31, size: 32, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !557, file: !6, line: 417, baseType: !63, size: 8, offset: 608)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !557, file: !6, line: 420, baseType: !63, size: 8, offset: 616)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !557, file: !6, line: 441, baseType: !603, size: 64, offset: 640)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !557, file: !6, line: 423, size: 64, elements: !604)
!604 = !{!605, !606, !607, !608, !609}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !603, file: !6, line: 426, baseType: !37, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !603, file: !6, line: 429, baseType: !63, size: 8, offset: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !603, file: !6, line: 433, baseType: !63, size: 8, offset: 40)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !603, file: !6, line: 436, baseType: !63, size: 8, offset: 48)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !603, file: !6, line: 440, baseType: !63, size: 8, offset: 56)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !557, file: !6, line: 447, baseType: !228, size: 64, offset: 704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !557, file: !6, line: 447, baseType: !228, size: 64, offset: 768)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !557, file: !6, line: 447, baseType: !228, size: 64, offset: 832)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !557, file: !6, line: 447, baseType: !228, size: 64, offset: 896)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !557, file: !6, line: 450, baseType: !63, size: 8, offset: 960)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !557, file: !6, line: 450, baseType: !63, size: 8, offset: 968)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !557, file: !6, line: 454, baseType: !63, size: 8, offset: 976)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !557, file: !6, line: 457, baseType: !63, size: 8, offset: 984)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !557, file: !6, line: 460, baseType: !63, size: 8, offset: 992)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "spec_nodes", scope: !260, file: !50, line: 463, baseType: !620, size: 256, offset: 9344)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spec_nodes", file: !50, line: 227, size: 256, elements: !621)
!621 = !{!622, !623, !624, !625}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "n_defined", scope: !620, file: !50, line: 229, baseType: !125, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "n_true", scope: !620, file: !50, line: 230, baseType: !125, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "n_false", scope: !620, file: !50, line: 231, baseType: !125, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "n__VA_ARGS__", scope: !620, file: !50, line: 232, baseType: !125, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "our_hashtable", scope: !260, file: !50, line: 466, baseType: !63, size: 8, offset: 9600)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !260, file: !50, line: 475, baseType: !628, size: 256, offset: 9664)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !260, file: !50, line: 469, size: 256, elements: !629)
!629 = !{!630, !631, !632, !633}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !628, file: !50, line: 471, baseType: !319, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !628, file: !50, line: 472, baseType: !319, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !628, file: !50, line: 473, baseType: !319, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !628, file: !50, line: 474, baseType: !135, size: 32, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cur", scope: !260, file: !50, line: 478, baseType: !61, size: 64, offset: 9920)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "saved_rlimit", scope: !260, file: !50, line: 478, baseType: !61, size: 64, offset: 9984)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "saved_line_base", scope: !260, file: !50, line: 478, baseType: !61, size: 64, offset: 10048)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "savedstate", scope: !260, file: !50, line: 482, baseType: !638, size: 64, offset: 10112)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_savedstate", file: !50, line: 482, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !260, file: !50, line: 485, baseType: !7, size: 32, offset: 10176)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "comments", scope: !260, file: !50, line: 488, baseType: !642, size: 128, offset: 10240)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment_table", file: !6, line: 901, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 891, size: 128, elements: !644)
!644 = !{!645, !652, !653}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !643, file: !6, line: 894, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment", file: !6, line: 887, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 880, size: 128, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !648, file: !6, line: 883, baseType: !59, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sloc", scope: !648, file: !6, line: 886, baseType: !135, size: 32, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !643, file: !6, line: 897, baseType: !183, size: 32, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !643, file: !6, line: 900, baseType: !183, size: 32, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pushed_macros", scope: !260, file: !50, line: 491, baseType: !655, size: 64, offset: 10368)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_pragma_macro", file: !50, line: 310, size: 192, elements: !657)
!657 = !{!658, !659, !660}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !656, file: !50, line: 312, baseType: !655, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !656, file: !50, line: 314, baseType: !59, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !656, file: !50, line: 316, baseType: !118, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !251, file: !3, line: 55, baseType: !241, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !251, file: !3, line: 56, baseType: !7, size: 32)
!663 = !{!0, !664}
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(name: "linemarker_dir", scope: !2, file: !3, line: 194, type: !666, isLocal: true, isDefinition: true)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "directive", file: !3, line: 83, baseType: !356)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 3648, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 19)
!671 = !{i32 2, !"Dwarf Version", i32 4}
!672 = !{i32 2, !"Debug Info Version", i32 3}
!673 = !{i32 1, !"wchar_size", i32 4}
!674 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!675 = distinct !DISubprogram(name: "tolower", scope: !676, file: !676, line: 207, type: !677, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !679)
!676 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!677 = !DISubroutineType(types: !678)
!678 = !{!183, !183}
!679 = !{!680}
!680 = !DILocalVariable(name: "__c", arg: 1, scope: !675, file: !676, line: 207, type: !183)
!681 = !DILocation(line: 0, scope: !675)
!682 = !DILocation(line: 209, column: 22, scope: !675)
!683 = !DILocation(line: 209, column: 39, scope: !675)
!684 = !DILocation(line: 209, column: 38, scope: !675)
!685 = !DILocation(line: 209, column: 37, scope: !675)
!686 = !DILocation(line: 209, column: 10, scope: !675)
!687 = !DILocation(line: 209, column: 3, scope: !675)
!688 = distinct !DISubprogram(name: "toupper", scope: !676, file: !676, line: 213, type: !677, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !689)
!689 = !{!690}
!690 = !DILocalVariable(name: "__c", arg: 1, scope: !688, file: !676, line: 213, type: !183)
!691 = !DILocation(line: 0, scope: !688)
!692 = !DILocation(line: 215, column: 22, scope: !688)
!693 = !DILocation(line: 215, column: 39, scope: !688)
!694 = !DILocation(line: 215, column: 38, scope: !688)
!695 = !DILocation(line: 215, column: 37, scope: !688)
!696 = !DILocation(line: 215, column: 10, scope: !688)
!697 = !DILocation(line: 215, column: 3, scope: !688)
!698 = distinct !DISubprogram(name: "_cpp_handle_directive", scope: !3, file: !3, line: 391, type: !699, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !701)
!699 = !DISubroutineType(types: !700)
!700 = !{!183, !258, !183}
!701 = !{!702, !703, !704, !706, !707, !708, !709}
!702 = !DILocalVariable(name: "pfile", arg: 1, scope: !698, file: !3, line: 391, type: !258)
!703 = !DILocalVariable(name: "indented", arg: 2, scope: !698, file: !3, line: 391, type: !183)
!704 = !DILocalVariable(name: "dir", scope: !698, file: !3, line: 393, type: !705)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!706 = !DILocalVariable(name: "dname", scope: !698, file: !3, line: 394, type: !239)
!707 = !DILocalVariable(name: "was_parsing_args", scope: !698, file: !3, line: 395, type: !63)
!708 = !DILocalVariable(name: "was_discarding_output", scope: !698, file: !3, line: 396, type: !63)
!709 = !DILocalVariable(name: "skip", scope: !698, file: !3, line: 397, type: !183)
!710 = !DILocation(line: 0, scope: !698)
!711 = !DILocation(line: 395, column: 40, scope: !698)
!712 = !DILocation(line: 396, column: 45, scope: !698)
!713 = !DILocation(line: 399, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !698, file: !3, line: 399, column: 7)
!715 = !DILocation(line: 399, column: 7, scope: !698)
!716 = !DILocation(line: 400, column: 18, scope: !714)
!717 = !DILocation(line: 400, column: 36, scope: !714)
!718 = !DILocation(line: 400, column: 5, scope: !714)
!719 = !DILocation(line: 402, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !698, file: !3, line: 402, column: 7)
!721 = !DILocation(line: 402, column: 7, scope: !698)
!722 = !DILocation(line: 404, column: 11, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !3, line: 404, column: 11)
!724 = distinct !DILexicalBlock(scope: !720, file: !3, line: 403, column: 5)
!725 = !DILocation(line: 404, column: 11, scope: !724)
!726 = !DILocation(line: 405, column: 2, scope: !723)
!727 = !DILocation(line: 407, column: 33, scope: !724)
!728 = !DILocation(line: 408, column: 20, scope: !724)
!729 = !DILocation(line: 408, column: 38, scope: !724)
!730 = !DILocation(line: 409, column: 5, scope: !724)
!731 = !DILocation(line: 410, column: 3, scope: !698)
!732 = !DILocation(line: 411, column: 11, scope: !698)
!733 = !DILocation(line: 413, column: 14, scope: !734)
!734 = distinct !DILexicalBlock(scope: !698, file: !3, line: 413, column: 7)
!735 = !DILocation(line: 413, column: 19, scope: !734)
!736 = !DILocation(line: 413, column: 7, scope: !698)
!737 = !DILocation(line: 415, column: 18, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !3, line: 415, column: 11)
!739 = distinct !DILexicalBlock(scope: !734, file: !3, line: 414, column: 5)
!740 = !DILocation(line: 415, column: 27, scope: !738)
!741 = !DILocation(line: 415, column: 33, scope: !738)
!742 = !DILocation(line: 415, column: 11, scope: !738)
!743 = !DILocation(line: 415, column: 11, scope: !739)
!744 = !DILocation(line: 416, column: 38, scope: !738)
!745 = !DILocation(line: 416, column: 9, scope: !738)
!746 = !DILocation(line: 416, column: 2, scope: !738)
!747 = !DILocation(line: 420, column: 24, scope: !748)
!748 = distinct !DILexicalBlock(scope: !734, file: !3, line: 420, column: 12)
!749 = !DILocation(line: 420, column: 38, scope: !748)
!750 = !DILocation(line: 420, column: 41, scope: !748)
!751 = !DILocation(line: 420, column: 66, scope: !748)
!752 = !DILocation(line: 420, column: 12, scope: !734)
!753 = !DILocation(line: 423, column: 11, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 423, column: 11)
!755 = distinct !DILexicalBlock(scope: !748, file: !3, line: 421, column: 5)
!756 = !DILocation(line: 423, column: 32, scope: !754)
!757 = !DILocation(line: 423, column: 37, scope: !754)
!758 = !DILocation(line: 424, column: 4, scope: !754)
!759 = !DILocation(line: 424, column: 22, scope: !754)
!760 = !DILocation(line: 424, column: 9, scope: !754)
!761 = !DILocation(line: 423, column: 11, scope: !755)
!762 = !DILocation(line: 425, column: 2, scope: !754)
!763 = !DILocation(line: 0, scope: !734)
!764 = !DILocation(line: 429, column: 7, scope: !765)
!765 = distinct !DILexicalBlock(scope: !698, file: !3, line: 429, column: 7)
!766 = !DILocation(line: 429, column: 7, scope: !698)
!767 = !DILocation(line: 433, column: 19, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 433, column: 11)
!769 = distinct !DILexicalBlock(scope: !765, file: !3, line: 430, column: 5)
!770 = !DILocation(line: 433, column: 25, scope: !768)
!771 = !DILocation(line: 433, column: 11, scope: !769)
!772 = !DILocation(line: 434, column: 9, scope: !768)
!773 = !DILocation(line: 434, column: 18, scope: !768)
!774 = !DILocation(line: 434, column: 2, scope: !768)
!775 = !DILocation(line: 449, column: 11, scope: !776)
!776 = distinct !DILexicalBlock(scope: !769, file: !3, line: 449, column: 11)
!777 = !DILocation(line: 450, column: 4, scope: !776)
!778 = !DILocation(line: 450, column: 8, scope: !776)
!779 = !DILocation(line: 451, column: 4, scope: !776)
!780 = !DILocation(line: 451, column: 8, scope: !776)
!781 = !DILocation(line: 451, column: 17, scope: !776)
!782 = !DILocation(line: 451, column: 27, scope: !776)
!783 = !DILocation(line: 451, column: 33, scope: !776)
!784 = !DILocation(line: 449, column: 11, scope: !769)
!785 = !DILocation(line: 462, column: 39, scope: !786)
!786 = distinct !DILexicalBlock(scope: !776, file: !3, line: 457, column: 2)
!787 = !DILocation(line: 462, column: 45, scope: !786)
!788 = !DILocation(line: 462, column: 17, scope: !786)
!789 = !DILocation(line: 462, column: 32, scope: !786)
!790 = !DILocation(line: 463, column: 48, scope: !786)
!791 = !DILocation(line: 463, column: 54, scope: !786)
!792 = !DILocation(line: 463, column: 17, scope: !786)
!793 = !DILocation(line: 463, column: 41, scope: !786)
!794 = !DILocation(line: 464, column: 8, scope: !786)
!795 = !DILocation(line: 465, column: 6, scope: !796)
!796 = distinct !DILexicalBlock(scope: !786, file: !3, line: 464, column: 8)
!797 = !DILocation(line: 466, column: 21, scope: !798)
!798 = distinct !DILexicalBlock(scope: !786, file: !3, line: 466, column: 8)
!799 = !DILocation(line: 466, column: 8, scope: !798)
!800 = !DILocation(line: 466, column: 30, scope: !798)
!801 = !DILocation(line: 466, column: 40, scope: !798)
!802 = !DILocation(line: 466, column: 46, scope: !798)
!803 = !DILocation(line: 466, column: 8, scope: !786)
!804 = !DILocation(line: 470, column: 19, scope: !805)
!805 = distinct !DILexicalBlock(scope: !765, file: !3, line: 470, column: 12)
!806 = !DILocation(line: 470, column: 24, scope: !805)
!807 = !DILocation(line: 470, column: 12, scope: !765)
!808 = !DILocation(line: 478, column: 11, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 478, column: 11)
!810 = distinct !DILexicalBlock(scope: !805, file: !3, line: 473, column: 5)
!811 = !DILocation(line: 478, column: 36, scope: !809)
!812 = !DILocation(line: 478, column: 11, scope: !810)
!813 = !DILocation(line: 480, column: 30, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !3, line: 480, column: 16)
!815 = !DILocation(line: 480, column: 17, scope: !814)
!816 = !DILocation(line: 480, column: 16, scope: !809)
!817 = !DILocation(line: 482, column: 6, scope: !814)
!818 = !DILocation(line: 481, column: 2, scope: !814)
!819 = !DILocation(line: 416, column: 6, scope: !738)
!820 = !DILocation(line: 397, column: 7, scope: !698)
!821 = !DILocation(line: 485, column: 10, scope: !698)
!822 = !DILocation(line: 485, column: 20, scope: !698)
!823 = !DILocation(line: 486, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !698, file: !3, line: 486, column: 7)
!825 = !DILocation(line: 486, column: 7, scope: !698)
!826 = !DILocation(line: 487, column: 5, scope: !824)
!827 = !DILocation(line: 489, column: 7, scope: !828)
!828 = distinct !DILexicalBlock(scope: !698, file: !3, line: 489, column: 7)
!829 = !DILocation(line: 489, column: 7, scope: !698)
!830 = !DILocation(line: 490, column: 12, scope: !828)
!831 = !DILocation(line: 490, column: 23, scope: !828)
!832 = !DILocation(line: 490, column: 5, scope: !828)
!833 = !DILocation(line: 491, column: 17, scope: !834)
!834 = distinct !DILexicalBlock(scope: !828, file: !3, line: 491, column: 12)
!835 = !DILocation(line: 491, column: 12, scope: !828)
!836 = !DILocation(line: 492, column: 5, scope: !834)
!837 = !DILocation(line: 494, column: 3, scope: !698)
!838 = !DILocation(line: 495, column: 24, scope: !839)
!839 = distinct !DILexicalBlock(scope: !698, file: !3, line: 495, column: 7)
!840 = !DILocation(line: 495, column: 41, scope: !839)
!841 = !DILocation(line: 495, column: 28, scope: !839)
!842 = !DILocation(line: 495, column: 7, scope: !698)
!843 = !DILocation(line: 498, column: 33, scope: !844)
!844 = distinct !DILexicalBlock(scope: !839, file: !3, line: 496, column: 5)
!845 = !DILocation(line: 499, column: 20, scope: !844)
!846 = !DILocation(line: 499, column: 38, scope: !844)
!847 = !DILocation(line: 500, column: 5, scope: !844)
!848 = !DILocation(line: 501, column: 7, scope: !698)
!849 = !DILocation(line: 502, column: 18, scope: !850)
!850 = distinct !DILexicalBlock(scope: !698, file: !3, line: 501, column: 7)
!851 = !DILocation(line: 502, column: 36, scope: !850)
!852 = !DILocation(line: 502, column: 5, scope: !850)
!853 = !DILocation(line: 503, column: 3, scope: !698)
!854 = distinct !DISubprogram(name: "start_directive", scope: !3, file: !3, line: 269, type: !256, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !855)
!855 = !{!856}
!856 = !DILocalVariable(name: "pfile", arg: 1, scope: !854, file: !3, line: 269, type: !258)
!857 = !DILocation(line: 0, scope: !854)
!858 = !DILocation(line: 272, column: 16, scope: !854)
!859 = !DILocation(line: 272, column: 29, scope: !854)
!860 = !DILocation(line: 273, column: 16, scope: !854)
!861 = !DILocation(line: 273, column: 30, scope: !854)
!862 = !DILocation(line: 274, column: 27, scope: !854)
!863 = !DILocation(line: 274, column: 32, scope: !854)
!864 = !DILocation(line: 277, column: 34, scope: !854)
!865 = !DILocation(line: 277, column: 46, scope: !854)
!866 = !DILocation(line: 277, column: 10, scope: !854)
!867 = !DILocation(line: 277, column: 25, scope: !854)
!868 = !DILocation(line: 278, column: 1, scope: !854)
!869 = distinct !DISubprogram(name: "directive_diagnostics", scope: !3, file: !3, line: 346, type: !870, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !872)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !258, !705, !183}
!872 = !{!873, !874, !875}
!873 = !DILocalVariable(name: "pfile", arg: 1, scope: !869, file: !3, line: 346, type: !258)
!874 = !DILocalVariable(name: "dir", arg: 2, scope: !869, file: !3, line: 346, type: !705)
!875 = !DILocalVariable(name: "indented", arg: 3, scope: !869, file: !3, line: 346, type: !183)
!876 = !DILocation(line: 0, scope: !869)
!877 = !DILocation(line: 350, column: 22, scope: !878)
!878 = distinct !DILexicalBlock(scope: !869, file: !3, line: 350, column: 7)
!879 = !DILocation(line: 350, column: 9, scope: !878)
!880 = !DILocation(line: 350, column: 7, scope: !869)
!881 = !DILocation(line: 352, column: 16, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 352, column: 11)
!883 = distinct !DILexicalBlock(scope: !878, file: !3, line: 351, column: 5)
!884 = !DILocation(line: 352, column: 23, scope: !882)
!885 = !DILocation(line: 353, column: 4, scope: !882)
!886 = !DILocation(line: 353, column: 13, scope: !882)
!887 = !DILocation(line: 353, column: 34, scope: !882)
!888 = !DILocation(line: 353, column: 37, scope: !882)
!889 = !DILocation(line: 354, column: 4, scope: !882)
!890 = !DILocation(line: 354, column: 7, scope: !882)
!891 = !DILocation(line: 352, column: 11, scope: !883)
!892 = !DILocation(line: 355, column: 67, scope: !882)
!893 = !DILocation(line: 355, column: 2, scope: !882)
!894 = !DILocation(line: 356, column: 23, scope: !895)
!895 = distinct !DILexicalBlock(scope: !882, file: !3, line: 356, column: 16)
!896 = !DILocation(line: 356, column: 29, scope: !895)
!897 = !DILocation(line: 356, column: 43, scope: !895)
!898 = !DILocation(line: 357, column: 3, scope: !895)
!899 = !DILocation(line: 357, column: 11, scope: !895)
!900 = !DILocation(line: 357, column: 32, scope: !895)
!901 = !DILocation(line: 357, column: 36, scope: !895)
!902 = !DILocation(line: 358, column: 9, scope: !895)
!903 = !DILocation(line: 358, column: 12, scope: !895)
!904 = !DILocation(line: 356, column: 16, scope: !882)
!905 = !DILocation(line: 360, column: 11, scope: !895)
!906 = !DILocation(line: 359, column: 2, scope: !895)
!907 = !DILocation(line: 369, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !869, file: !3, line: 369, column: 7)
!909 = !DILocation(line: 369, column: 7, scope: !869)
!910 = !DILocation(line: 371, column: 15, scope: !911)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 371, column: 11)
!912 = distinct !DILexicalBlock(scope: !908, file: !3, line: 370, column: 5)
!913 = !DILocation(line: 371, column: 11, scope: !912)
!914 = !DILocation(line: 372, column: 2, scope: !911)
!915 = !DILocation(line: 374, column: 25, scope: !916)
!916 = distinct !DILexicalBlock(scope: !911, file: !3, line: 374, column: 16)
!917 = !DILocation(line: 0, scope: !918)
!918 = distinct !DILexicalBlock(scope: !916, file: !3, line: 378, column: 16)
!919 = !DILocation(line: 378, column: 34, scope: !918)
!920 = !DILocation(line: 374, column: 33, scope: !916)
!921 = !DILocation(line: 374, column: 40, scope: !916)
!922 = !DILocation(line: 374, column: 16, scope: !911)
!923 = !DILocation(line: 377, column: 11, scope: !916)
!924 = !DILocation(line: 375, column: 2, scope: !916)
!925 = !DILocation(line: 378, column: 26, scope: !918)
!926 = !DILocation(line: 378, column: 41, scope: !918)
!927 = !DILocation(line: 378, column: 16, scope: !916)
!928 = !DILocation(line: 381, column: 11, scope: !918)
!929 = !DILocation(line: 379, column: 2, scope: !918)
!930 = !DILocation(line: 383, column: 1, scope: !869)
!931 = distinct !DISubprogram(name: "prepare_directive_trad", scope: !3, file: !3, line: 315, type: !256, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !932)
!932 = !{!933, !934, !937}
!933 = !DILocalVariable(name: "pfile", arg: 1, scope: !931, file: !3, line: 315, type: !258)
!934 = !DILocalVariable(name: "no_expand", scope: !935, file: !3, line: 319, type: !63)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 318, column: 5)
!936 = distinct !DILexicalBlock(scope: !931, file: !3, line: 317, column: 7)
!937 = !DILocalVariable(name: "was_skipping", scope: !935, file: !3, line: 321, type: !63)
!938 = !DILocation(line: 0, scope: !931)
!939 = !DILocation(line: 317, column: 14, scope: !936)
!940 = !DILocation(line: 317, column: 24, scope: !936)
!941 = !DILocation(line: 317, column: 7, scope: !931)
!942 = !DILocation(line: 319, column: 25, scope: !935)
!943 = !DILocation(line: 320, column: 4, scope: !935)
!944 = !DILocation(line: 320, column: 28, scope: !935)
!945 = !DILocation(line: 0, scope: !935)
!946 = !DILocation(line: 321, column: 40, scope: !935)
!947 = !DILocation(line: 323, column: 54, scope: !935)
!948 = !DILocation(line: 324, column: 9, scope: !935)
!949 = !DILocation(line: 324, column: 29, scope: !935)
!950 = !DILocation(line: 323, column: 20, scope: !935)
!951 = !DILocation(line: 323, column: 34, scope: !935)
!952 = !DILocation(line: 325, column: 11, scope: !953)
!953 = distinct !DILexicalBlock(scope: !935, file: !3, line: 325, column: 11)
!954 = !DILocation(line: 325, column: 11, scope: !935)
!955 = !DILocation(line: 326, column: 24, scope: !953)
!956 = !DILocation(line: 326, column: 2, scope: !953)
!957 = !DILocation(line: 328, column: 11, scope: !958)
!958 = distinct !DILexicalBlock(scope: !935, file: !3, line: 328, column: 11)
!959 = !DILocation(line: 328, column: 11, scope: !935)
!960 = !DILocation(line: 329, column: 15, scope: !958)
!961 = !DILocation(line: 329, column: 32, scope: !958)
!962 = !DILocation(line: 329, column: 2, scope: !958)
!963 = !DILocation(line: 330, column: 7, scope: !935)
!964 = !DILocation(line: 331, column: 11, scope: !935)
!965 = !DILocation(line: 332, column: 15, scope: !966)
!966 = distinct !DILexicalBlock(scope: !935, file: !3, line: 331, column: 11)
!967 = !DILocation(line: 332, column: 32, scope: !966)
!968 = !DILocation(line: 332, column: 2, scope: !966)
!969 = !DILocation(line: 334, column: 29, scope: !935)
!970 = !DILocation(line: 335, column: 46, scope: !935)
!971 = !DILocation(line: 336, column: 18, scope: !935)
!972 = !DILocation(line: 336, column: 35, scope: !935)
!973 = !DILocation(line: 336, column: 22, scope: !935)
!974 = !DILocation(line: 335, column: 7, scope: !935)
!975 = !DILocation(line: 337, column: 5, scope: !935)
!976 = !DILocation(line: 340, column: 16, scope: !931)
!977 = !DILocation(line: 340, column: 33, scope: !931)
!978 = !DILocation(line: 341, column: 1, scope: !931)
!979 = distinct !DISubprogram(name: "end_directive", scope: !3, file: !3, line: 282, type: !980, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !258, !183}
!982 = !{!983, !984}
!983 = !DILocalVariable(name: "pfile", arg: 1, scope: !979, file: !3, line: 282, type: !258)
!984 = !DILocalVariable(name: "skip_line", arg: 2, scope: !979, file: !3, line: 282, type: !183)
!985 = !DILocation(line: 0, scope: !979)
!986 = !DILocation(line: 284, column: 20, scope: !987)
!987 = distinct !DILexicalBlock(scope: !979, file: !3, line: 284, column: 7)
!988 = !DILocation(line: 284, column: 7, scope: !987)
!989 = !DILocation(line: 284, column: 7, scope: !979)
!990 = !DILocation(line: 286, column: 12, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !3, line: 286, column: 12)
!992 = !DILocation(line: 286, column: 12, scope: !987)
!993 = !DILocation(line: 289, column: 20, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !3, line: 287, column: 5)
!995 = !DILocation(line: 289, column: 37, scope: !994)
!996 = !DILocation(line: 291, column: 18, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !3, line: 291, column: 11)
!998 = !DILocation(line: 291, column: 28, scope: !997)
!999 = !DILocation(line: 291, column: 11, scope: !994)
!1000 = !DILocation(line: 292, column: 2, scope: !997)
!1001 = !DILocation(line: 295, column: 12, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !991, file: !3, line: 295, column: 12)
!1003 = !DILocation(line: 295, column: 12, scope: !991)
!1004 = !DILocation(line: 297, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 296, column: 5)
!1006 = !DILocation(line: 298, column: 19, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 298, column: 11)
!1008 = !DILocation(line: 298, column: 12, scope: !1007)
!1009 = !DILocation(line: 298, column: 11, scope: !1005)
!1010 = !DILocation(line: 300, column: 29, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 299, column: 2)
!1012 = !DILocation(line: 300, column: 11, scope: !1011)
!1013 = !DILocation(line: 300, column: 19, scope: !1011)
!1014 = !DILocation(line: 301, column: 39, scope: !1011)
!1015 = !DILocation(line: 301, column: 11, scope: !1011)
!1016 = !DILocation(line: 301, column: 21, scope: !1011)
!1017 = !DILocation(line: 302, column: 2, scope: !1011)
!1018 = !DILocation(line: 306, column: 34, scope: !979)
!1019 = !DILocation(line: 306, column: 32, scope: !979)
!1020 = !DILocation(line: 306, column: 16, scope: !979)
!1021 = !DILocation(line: 306, column: 30, scope: !979)
!1022 = !DILocation(line: 307, column: 16, scope: !979)
!1023 = !DILocation(line: 307, column: 29, scope: !979)
!1024 = !DILocation(line: 308, column: 16, scope: !979)
!1025 = !DILocation(line: 308, column: 30, scope: !979)
!1026 = !DILocation(line: 309, column: 16, scope: !979)
!1027 = !DILocation(line: 309, column: 31, scope: !979)
!1028 = !DILocation(line: 310, column: 10, scope: !979)
!1029 = !DILocation(line: 310, column: 20, scope: !979)
!1030 = !DILocation(line: 311, column: 1, scope: !979)
!1031 = distinct !DISubprogram(name: "cpp_undef_all", scope: !3, file: !3, line: 638, type: !256, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1032)
!1032 = !{!1033}
!1033 = !DILocalVariable(name: "pfile", arg: 1, scope: !1031, file: !3, line: 638, type: !258)
!1034 = !DILocation(line: 0, scope: !1031)
!1035 = !DILocation(line: 640, column: 3, scope: !1031)
!1036 = !DILocation(line: 641, column: 1, scope: !1031)
!1037 = distinct !DISubprogram(name: "undefine_macros", scope: !3, file: !3, line: 625, type: !1038, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1040)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!183, !258, !125, !57}
!1040 = !{!1041, !1042, !1043}
!1041 = !DILocalVariable(name: "pfile", arg: 1, scope: !1037, file: !3, line: 625, type: !258)
!1042 = !DILocalVariable(name: "h", arg: 2, scope: !1037, file: !3, line: 625, type: !125)
!1043 = !DILocalVariable(name: "data_p", arg: 3, scope: !1037, file: !3, line: 626, type: !57)
!1044 = !DILocation(line: 0, scope: !1037)
!1045 = !DILocation(line: 630, column: 6, scope: !1037)
!1046 = !DILocation(line: 630, column: 11, scope: !1037)
!1047 = !DILocation(line: 631, column: 12, scope: !1037)
!1048 = !DILocation(line: 632, column: 3, scope: !1037)
!1049 = distinct !DISubprogram(name: "_cpp_do_file_change", scope: !3, file: !3, line: 1033, type: !1050, scopeLine: 1036, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1052)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !258, !42, !201, !95, !7}
!1052 = !{!1053, !1054, !1055, !1056, !1057, !1058}
!1053 = !DILocalVariable(name: "pfile", arg: 1, scope: !1049, file: !3, line: 1033, type: !258)
!1054 = !DILocalVariable(name: "reason", arg: 2, scope: !1049, file: !3, line: 1033, type: !42)
!1055 = !DILocalVariable(name: "to_file", arg: 3, scope: !1049, file: !3, line: 1034, type: !201)
!1056 = !DILocalVariable(name: "file_line", arg: 4, scope: !1049, file: !3, line: 1034, type: !95)
!1057 = !DILocalVariable(name: "sysp", arg: 5, scope: !1049, file: !3, line: 1035, type: !7)
!1058 = !DILocalVariable(name: "map", scope: !1049, file: !3, line: 1037, type: !460)
!1059 = !DILocation(line: 0, scope: !1049)
!1060 = !DILocation(line: 1037, column: 52, scope: !1049)
!1061 = !DILocation(line: 1037, column: 32, scope: !1049)
!1062 = !DILocation(line: 1039, column: 11, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 1039, column: 7)
!1064 = !DILocation(line: 1039, column: 7, scope: !1049)
!1065 = !DILocation(line: 1040, column: 32, scope: !1063)
!1066 = !DILocation(line: 1040, column: 49, scope: !1063)
!1067 = !DILocation(line: 1040, column: 5, scope: !1063)
!1068 = !DILocation(line: 1042, column: 17, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 1042, column: 7)
!1070 = !DILocation(line: 1042, column: 7, scope: !1069)
!1071 = !DILocation(line: 1042, column: 7, scope: !1049)
!1072 = !DILocation(line: 1043, column: 5, scope: !1069)
!1073 = !DILocation(line: 1044, column: 1, scope: !1049)
!1074 = distinct !DISubprogram(name: "cpp_register_pragma", scope: !3, file: !3, line: 1206, type: !1075, scopeLine: 1208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !258, !201, !201, !254, !63}
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1083}
!1078 = !DILocalVariable(name: "pfile", arg: 1, scope: !1074, file: !3, line: 1206, type: !258)
!1079 = !DILocalVariable(name: "space", arg: 2, scope: !1074, file: !3, line: 1206, type: !201)
!1080 = !DILocalVariable(name: "name", arg: 3, scope: !1074, file: !3, line: 1206, type: !201)
!1081 = !DILocalVariable(name: "handler", arg: 4, scope: !1074, file: !3, line: 1207, type: !254)
!1082 = !DILocalVariable(name: "allow_expansion", arg: 5, scope: !1074, file: !3, line: 1207, type: !63)
!1083 = !DILocalVariable(name: "entry", scope: !1074, file: !3, line: 1209, type: !241)
!1084 = !DILocation(line: 0, scope: !1074)
!1085 = !DILocation(line: 1211, column: 8, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 1211, column: 7)
!1087 = !DILocation(line: 1211, column: 7, scope: !1074)
!1088 = !DILocation(line: 1213, column: 7, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 1212, column: 5)
!1090 = !DILocation(line: 1214, column: 7, scope: !1089)
!1091 = !DILocation(line: 1217, column: 11, scope: !1074)
!1092 = !DILocation(line: 1218, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 1218, column: 7)
!1094 = !DILocation(line: 1218, column: 7, scope: !1074)
!1095 = !DILocation(line: 1220, column: 14, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 1219, column: 5)
!1097 = !DILocation(line: 1220, column: 30, scope: !1096)
!1098 = !DILocation(line: 1221, column: 16, scope: !1096)
!1099 = !DILocation(line: 1221, column: 24, scope: !1096)
!1100 = !DILocation(line: 1222, column: 5, scope: !1096)
!1101 = !DILocation(line: 1223, column: 1, scope: !1074)
!1102 = distinct !DISubprogram(name: "register_pragma_1", scope: !3, file: !3, line: 1127, type: !1103, scopeLine: 1129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1105)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!241, !258, !201, !201, !63}
!1105 = !{!1106, !1107, !1108, !1109, !1110, !1112, !1113, !1114}
!1106 = !DILocalVariable(name: "pfile", arg: 1, scope: !1102, file: !3, line: 1127, type: !258)
!1107 = !DILocalVariable(name: "space", arg: 2, scope: !1102, file: !3, line: 1127, type: !201)
!1108 = !DILocalVariable(name: "name", arg: 3, scope: !1102, file: !3, line: 1127, type: !201)
!1109 = !DILocalVariable(name: "allow_name_expansion", arg: 4, scope: !1102, file: !3, line: 1128, type: !63)
!1110 = !DILocalVariable(name: "chain", scope: !1102, file: !3, line: 1130, type: !1111)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!1112 = !DILocalVariable(name: "entry", scope: !1102, file: !3, line: 1131, type: !241)
!1113 = !DILocalVariable(name: "node", scope: !1102, file: !3, line: 1132, type: !97)
!1114 = !DILabel(scope: !1115, name: "clash", file: !3, line: 1175)
!1115 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 1174, column: 7)
!1116 = !DILocation(line: 0, scope: !1102)
!1117 = !DILocation(line: 1130, column: 41, scope: !1102)
!1118 = !DILocation(line: 1134, column: 7, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 1134, column: 7)
!1120 = !DILocation(line: 1134, column: 7, scope: !1102)
!1121 = !DILocation(line: 1136, column: 43, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 1135, column: 5)
!1123 = !DILocation(line: 1136, column: 14, scope: !1122)
!1124 = !DILocation(line: 1137, column: 36, scope: !1122)
!1125 = !DILocation(line: 1137, column: 15, scope: !1122)
!1126 = !DILocation(line: 1138, column: 12, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 1138, column: 11)
!1128 = !DILocation(line: 1138, column: 11, scope: !1122)
!1129 = !DILocation(line: 1140, column: 12, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 1139, column: 2)
!1131 = !DILocation(line: 1141, column: 11, scope: !1130)
!1132 = !DILocation(line: 1141, column: 18, scope: !1130)
!1133 = !DILocation(line: 1142, column: 11, scope: !1130)
!1134 = !DILocation(line: 1142, column: 21, scope: !1130)
!1135 = !DILocation(line: 1143, column: 11, scope: !1130)
!1136 = !DILocation(line: 1143, column: 27, scope: !1130)
!1137 = !DILocation(line: 1144, column: 2, scope: !1130)
!1138 = !DILocation(line: 1145, column: 24, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 1145, column: 16)
!1140 = !DILocation(line: 1145, column: 17, scope: !1139)
!1141 = !DILocation(line: 1145, column: 16, scope: !1127)
!1142 = !DILocation(line: 1147, column: 23, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 1147, column: 16)
!1144 = !DILocation(line: 1147, column: 39, scope: !1143)
!1145 = !DILocation(line: 1147, column: 16, scope: !1139)
!1146 = !DILocation(line: 1149, column: 4, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 1148, column: 2)
!1148 = !DILocation(line: 1152, column: 4, scope: !1147)
!1149 = !DILocation(line: 0, scope: !1122)
!1150 = !DILocation(line: 1154, column: 23, scope: !1122)
!1151 = !DILocation(line: 1154, column: 25, scope: !1122)
!1152 = !DILocation(line: 1155, column: 5, scope: !1122)
!1153 = !DILocation(line: 1156, column: 12, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 1156, column: 12)
!1155 = !DILocation(line: 1156, column: 12, scope: !1119)
!1156 = !DILocation(line: 1158, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 1157, column: 5)
!1158 = !DILocation(line: 1161, column: 7, scope: !1157)
!1159 = !DILocation(line: 1165, column: 38, scope: !1102)
!1160 = !DILocation(line: 1165, column: 10, scope: !1102)
!1161 = !DILocation(line: 1166, column: 32, scope: !1102)
!1162 = !DILocation(line: 1166, column: 11, scope: !1102)
!1163 = !DILocation(line: 1167, column: 13, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 1167, column: 7)
!1165 = !DILocation(line: 1167, column: 7, scope: !1102)
!1166 = !DILocation(line: 1169, column: 15, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 1168, column: 5)
!1168 = !DILocation(line: 1170, column: 14, scope: !1167)
!1169 = !DILocation(line: 1170, column: 21, scope: !1167)
!1170 = !DILocation(line: 1171, column: 7, scope: !1167)
!1171 = !DILocation(line: 1174, column: 14, scope: !1115)
!1172 = !DILocation(line: 1174, column: 7, scope: !1115)
!1173 = !DILocation(line: 1174, column: 7, scope: !1102)
!1174 = !DILocation(line: 1175, column: 5, scope: !1115)
!1175 = !DILocation(line: 1178, column: 9, scope: !1115)
!1176 = !DILocation(line: 1176, column: 5, scope: !1115)
!1177 = !DILocation(line: 1179, column: 12, scope: !1115)
!1178 = !DILocation(line: 1180, column: 5, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 1179, column: 12)
!1180 = !DILocation(line: 1183, column: 5, scope: !1179)
!1181 = !DILocation(line: 1186, column: 1, scope: !1102)
!1182 = distinct !DISubprogram(name: "cpp_register_deferred_pragma", scope: !3, file: !3, line: 1229, type: !1183, scopeLine: 1232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !258, !201, !201, !7, !63, !63}
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192}
!1186 = !DILocalVariable(name: "pfile", arg: 1, scope: !1182, file: !3, line: 1229, type: !258)
!1187 = !DILocalVariable(name: "space", arg: 2, scope: !1182, file: !3, line: 1229, type: !201)
!1188 = !DILocalVariable(name: "name", arg: 3, scope: !1182, file: !3, line: 1230, type: !201)
!1189 = !DILocalVariable(name: "ident", arg: 4, scope: !1182, file: !3, line: 1230, type: !7)
!1190 = !DILocalVariable(name: "allow_expansion", arg: 5, scope: !1182, file: !3, line: 1231, type: !63)
!1191 = !DILocalVariable(name: "allow_name_expansion", arg: 6, scope: !1182, file: !3, line: 1231, type: !63)
!1192 = !DILocalVariable(name: "entry", scope: !1182, file: !3, line: 1233, type: !241)
!1193 = !DILocation(line: 0, scope: !1182)
!1194 = !DILocation(line: 1235, column: 11, scope: !1182)
!1195 = !DILocation(line: 1236, column: 7, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 1236, column: 7)
!1197 = !DILocation(line: 1236, column: 7, scope: !1182)
!1198 = !DILocation(line: 1238, column: 14, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 1237, column: 5)
!1200 = !DILocation(line: 1238, column: 26, scope: !1199)
!1201 = !DILocation(line: 1239, column: 14, scope: !1199)
!1202 = !DILocation(line: 1239, column: 30, scope: !1199)
!1203 = !DILocation(line: 1240, column: 14, scope: !1199)
!1204 = !DILocation(line: 1240, column: 16, scope: !1199)
!1205 = !DILocation(line: 1240, column: 22, scope: !1199)
!1206 = !DILocation(line: 1241, column: 5, scope: !1199)
!1207 = !DILocation(line: 1242, column: 1, scope: !1182)
!1208 = distinct !DISubprogram(name: "_cpp_init_internal_pragmas", scope: !3, file: !3, line: 1246, type: !256, scopeLine: 1247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1209)
!1209 = !{!1210}
!1210 = !DILocalVariable(name: "pfile", arg: 1, scope: !1208, file: !3, line: 1246, type: !258)
!1211 = !DILocation(line: 0, scope: !1208)
!1212 = !DILocation(line: 1249, column: 3, scope: !1208)
!1213 = !DILocation(line: 1250, column: 3, scope: !1208)
!1214 = !DILocation(line: 1251, column: 3, scope: !1208)
!1215 = !DILocation(line: 1254, column: 3, scope: !1208)
!1216 = !DILocation(line: 1255, column: 3, scope: !1208)
!1217 = !DILocation(line: 1257, column: 3, scope: !1208)
!1218 = !DILocation(line: 1258, column: 1, scope: !1208)
!1219 = distinct !DISubprogram(name: "register_pragma_internal", scope: !3, file: !3, line: 1190, type: !1220, scopeLine: 1192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !258, !201, !201, !254}
!1222 = !{!1223, !1224, !1225, !1226, !1227}
!1223 = !DILocalVariable(name: "pfile", arg: 1, scope: !1219, file: !3, line: 1190, type: !258)
!1224 = !DILocalVariable(name: "space", arg: 2, scope: !1219, file: !3, line: 1190, type: !201)
!1225 = !DILocalVariable(name: "name", arg: 3, scope: !1219, file: !3, line: 1191, type: !201)
!1226 = !DILocalVariable(name: "handler", arg: 4, scope: !1219, file: !3, line: 1191, type: !254)
!1227 = !DILocalVariable(name: "entry", scope: !1219, file: !3, line: 1193, type: !241)
!1228 = !DILocation(line: 0, scope: !1219)
!1229 = !DILocation(line: 1195, column: 11, scope: !1219)
!1230 = !DILocation(line: 1196, column: 10, scope: !1219)
!1231 = !DILocation(line: 1196, column: 22, scope: !1219)
!1232 = !DILocation(line: 1197, column: 12, scope: !1219)
!1233 = !DILocation(line: 1197, column: 20, scope: !1219)
!1234 = !DILocation(line: 1198, column: 1, scope: !1219)
!1235 = distinct !DISubprogram(name: "do_pragma_once", scope: !3, file: !3, line: 1422, type: !256, scopeLine: 1423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1236)
!1236 = !{!1237}
!1237 = !DILocalVariable(name: "pfile", arg: 1, scope: !1235, file: !3, line: 1422, type: !258)
!1238 = !DILocation(line: 0, scope: !1235)
!1239 = !DILocation(line: 1424, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 1424, column: 7)
!1241 = !DILocation(line: 1424, column: 7, scope: !1235)
!1242 = !DILocation(line: 1425, column: 5, scope: !1240)
!1243 = !DILocation(line: 1427, column: 3, scope: !1235)
!1244 = !DILocation(line: 1428, column: 43, scope: !1235)
!1245 = !DILocation(line: 1428, column: 51, scope: !1235)
!1246 = !DILocation(line: 1428, column: 3, scope: !1235)
!1247 = !DILocation(line: 1429, column: 1, scope: !1235)
!1248 = distinct !DISubprogram(name: "do_pragma_push_macro", scope: !3, file: !3, line: 1433, type: !256, scopeLine: 1434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257}
!1250 = !DILocalVariable(name: "pfile", arg: 1, scope: !1248, file: !3, line: 1433, type: !258)
!1251 = !DILocalVariable(name: "macroname", scope: !1248, file: !3, line: 1435, type: !59)
!1252 = !DILocalVariable(name: "dest", scope: !1248, file: !3, line: 1435, type: !59)
!1253 = !DILocalVariable(name: "limit", scope: !1248, file: !3, line: 1436, type: !201)
!1254 = !DILocalVariable(name: "src", scope: !1248, file: !3, line: 1436, type: !201)
!1255 = !DILocalVariable(name: "txt", scope: !1248, file: !3, line: 1437, type: !239)
!1256 = !DILocalVariable(name: "c", scope: !1248, file: !3, line: 1438, type: !655)
!1257 = !DILocalVariable(name: "src_loc", scope: !1258, file: !3, line: 1443, type: !135)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 1442, column: 5)
!1259 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 1441, column: 7)
!1260 = !DILocation(line: 0, scope: !1248)
!1261 = !DILocation(line: 1440, column: 9, scope: !1248)
!1262 = !DILocation(line: 1441, column: 8, scope: !1259)
!1263 = !DILocation(line: 1441, column: 7, scope: !1248)
!1264 = !DILocation(line: 1443, column: 40, scope: !1258)
!1265 = !DILocation(line: 1443, column: 54, scope: !1258)
!1266 = !DILocation(line: 0, scope: !1258)
!1267 = !DILocation(line: 1444, column: 7, scope: !1258)
!1268 = !DILocation(line: 1446, column: 7, scope: !1258)
!1269 = !DILocation(line: 1447, column: 7, scope: !1258)
!1270 = !DILocation(line: 1450, column: 31, scope: !1248)
!1271 = !DILocation(line: 1451, column: 38, scope: !1248)
!1272 = !DILocation(line: 1451, column: 43, scope: !1248)
!1273 = !DILocation(line: 1451, column: 50, scope: !1248)
!1274 = !DILocation(line: 1451, column: 71, scope: !1248)
!1275 = !DILocation(line: 1451, column: 47, scope: !1248)
!1276 = !DILocation(line: 1452, column: 45, scope: !1248)
!1277 = !DILocation(line: 1452, column: 64, scope: !1248)
!1278 = !DILocation(line: 1453, column: 3, scope: !1248)
!1279 = !DILocation(line: 1453, column: 14, scope: !1248)
!1280 = !DILocation(line: 1456, column: 11, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 1456, column: 11)
!1282 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 1454, column: 5)
!1283 = !DILocation(line: 1456, column: 16, scope: !1281)
!1284 = !DILocation(line: 1456, column: 24, scope: !1281)
!1285 = !DILocation(line: 1456, column: 28, scope: !1281)
!1286 = !DILocation(line: 1456, column: 35, scope: !1281)
!1287 = !DILocation(line: 1456, column: 43, scope: !1281)
!1288 = !DILocation(line: 1456, column: 53, scope: !1281)
!1289 = !DILocation(line: 1456, column: 11, scope: !1282)
!1290 = !DILocation(line: 1457, column: 2, scope: !1281)
!1291 = !DILocation(line: 1458, column: 17, scope: !1282)
!1292 = !DILocation(line: 1458, column: 21, scope: !1282)
!1293 = !DILocation(line: 1458, column: 12, scope: !1282)
!1294 = !DILocation(line: 1458, column: 15, scope: !1282)
!1295 = distinct !{!1295, !1278, !1296}
!1296 = !DILocation(line: 1459, column: 5, scope: !1248)
!1297 = !DILocation(line: 1460, column: 9, scope: !1248)
!1298 = !DILocation(line: 1461, column: 3, scope: !1248)
!1299 = !DILocation(line: 1462, column: 3, scope: !1248)
!1300 = !DILocation(line: 1463, column: 7, scope: !1248)
!1301 = !DILocation(line: 1464, column: 13, scope: !1248)
!1302 = !DILocation(line: 1464, column: 6, scope: !1248)
!1303 = !DILocation(line: 1464, column: 11, scope: !1248)
!1304 = !DILocation(line: 1465, column: 3, scope: !1248)
!1305 = !DILocation(line: 1466, column: 20, scope: !1248)
!1306 = !DILocation(line: 1466, column: 11, scope: !1248)
!1307 = !DILocation(line: 1467, column: 45, scope: !1248)
!1308 = !DILocation(line: 1467, column: 14, scope: !1248)
!1309 = !DILocation(line: 1467, column: 6, scope: !1248)
!1310 = !DILocation(line: 1467, column: 12, scope: !1248)
!1311 = !DILocation(line: 1468, column: 24, scope: !1248)
!1312 = !DILocation(line: 1469, column: 1, scope: !1248)
!1313 = distinct !DISubprogram(name: "do_pragma_pop_macro", scope: !3, file: !3, line: 1473, type: !256, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323}
!1315 = !DILocalVariable(name: "pfile", arg: 1, scope: !1313, file: !3, line: 1473, type: !258)
!1316 = !DILocalVariable(name: "macroname", scope: !1313, file: !3, line: 1475, type: !59)
!1317 = !DILocalVariable(name: "dest", scope: !1313, file: !3, line: 1475, type: !59)
!1318 = !DILocalVariable(name: "limit", scope: !1313, file: !3, line: 1476, type: !201)
!1319 = !DILocalVariable(name: "src", scope: !1313, file: !3, line: 1476, type: !201)
!1320 = !DILocalVariable(name: "txt", scope: !1313, file: !3, line: 1477, type: !239)
!1321 = !DILocalVariable(name: "l", scope: !1313, file: !3, line: 1478, type: !655)
!1322 = !DILocalVariable(name: "c", scope: !1313, file: !3, line: 1478, type: !655)
!1323 = !DILocalVariable(name: "src_loc", scope: !1324, file: !3, line: 1482, type: !135)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1481, column: 5)
!1325 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1480, column: 7)
!1326 = !DILocation(line: 0, scope: !1313)
!1327 = !DILocation(line: 1478, column: 50, scope: !1313)
!1328 = !DILocation(line: 1479, column: 9, scope: !1313)
!1329 = !DILocation(line: 1480, column: 8, scope: !1325)
!1330 = !DILocation(line: 1480, column: 7, scope: !1313)
!1331 = !DILocation(line: 1482, column: 40, scope: !1324)
!1332 = !DILocation(line: 1482, column: 54, scope: !1324)
!1333 = !DILocation(line: 0, scope: !1324)
!1334 = !DILocation(line: 1483, column: 7, scope: !1324)
!1335 = !DILocation(line: 1485, column: 7, scope: !1324)
!1336 = !DILocation(line: 1486, column: 7, scope: !1324)
!1337 = !DILocation(line: 1489, column: 31, scope: !1313)
!1338 = !DILocation(line: 1490, column: 38, scope: !1313)
!1339 = !DILocation(line: 1490, column: 43, scope: !1313)
!1340 = !DILocation(line: 1490, column: 50, scope: !1313)
!1341 = !DILocation(line: 1490, column: 71, scope: !1313)
!1342 = !DILocation(line: 1490, column: 47, scope: !1313)
!1343 = !DILocation(line: 1491, column: 45, scope: !1313)
!1344 = !DILocation(line: 1491, column: 64, scope: !1313)
!1345 = !DILocation(line: 1492, column: 3, scope: !1313)
!1346 = !DILocation(line: 1492, column: 14, scope: !1313)
!1347 = !DILocation(line: 1495, column: 11, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 1495, column: 11)
!1349 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1493, column: 5)
!1350 = !DILocation(line: 1495, column: 16, scope: !1348)
!1351 = !DILocation(line: 1495, column: 24, scope: !1348)
!1352 = !DILocation(line: 1495, column: 28, scope: !1348)
!1353 = !DILocation(line: 1495, column: 35, scope: !1348)
!1354 = !DILocation(line: 1495, column: 43, scope: !1348)
!1355 = !DILocation(line: 1495, column: 53, scope: !1348)
!1356 = !DILocation(line: 1495, column: 11, scope: !1349)
!1357 = !DILocation(line: 1496, column: 2, scope: !1348)
!1358 = !DILocation(line: 1497, column: 17, scope: !1349)
!1359 = !DILocation(line: 1497, column: 21, scope: !1349)
!1360 = !DILocation(line: 1497, column: 12, scope: !1349)
!1361 = !DILocation(line: 1497, column: 15, scope: !1349)
!1362 = distinct !{!1362, !1345, !1363}
!1363 = !DILocation(line: 1498, column: 5, scope: !1313)
!1364 = !DILocation(line: 1499, column: 9, scope: !1313)
!1365 = !DILocation(line: 1500, column: 3, scope: !1313)
!1366 = !DILocation(line: 1501, column: 3, scope: !1313)
!1367 = !DILocation(line: 1503, column: 3, scope: !1313)
!1368 = !DILocation(line: 1503, column: 12, scope: !1313)
!1369 = !DILocation(line: 1505, column: 23, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 1505, column: 11)
!1371 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1504, column: 5)
!1372 = !DILocation(line: 1505, column: 12, scope: !1370)
!1373 = !DILocation(line: 1505, column: 11, scope: !1371)
!1374 = !DILocation(line: 1507, column: 9, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 1507, column: 8)
!1376 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 1506, column: 2)
!1377 = !DILocation(line: 0, scope: !1375)
!1378 = !DILocation(line: 1507, column: 8, scope: !1376)
!1379 = !DILocation(line: 1508, column: 27, scope: !1375)
!1380 = !DILocation(line: 1508, column: 6, scope: !1375)
!1381 = !DILocation(line: 1510, column: 14, scope: !1375)
!1382 = !DILocation(line: 1511, column: 34, scope: !1376)
!1383 = !DILocation(line: 1511, column: 43, scope: !1376)
!1384 = !DILocation(line: 1511, column: 4, scope: !1376)
!1385 = !DILocation(line: 1512, column: 13, scope: !1376)
!1386 = !DILocation(line: 1512, column: 4, scope: !1376)
!1387 = !DILocation(line: 1513, column: 10, scope: !1376)
!1388 = !DILocation(line: 1513, column: 4, scope: !1376)
!1389 = !DILocation(line: 1514, column: 4, scope: !1376)
!1390 = !DILocation(line: 1517, column: 14, scope: !1371)
!1391 = distinct !{!1391, !1367, !1392}
!1392 = !DILocation(line: 1518, column: 5, scope: !1313)
!1393 = !DILocation(line: 1519, column: 1, scope: !1313)
!1394 = distinct !DISubprogram(name: "do_pragma_poison", scope: !3, file: !3, line: 1524, type: !256, scopeLine: 1525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1395)
!1395 = !{!1396, !1397, !1398}
!1396 = !DILocalVariable(name: "pfile", arg: 1, scope: !1394, file: !3, line: 1524, type: !258)
!1397 = !DILocalVariable(name: "tok", scope: !1394, file: !3, line: 1526, type: !239)
!1398 = !DILocalVariable(name: "hp", scope: !1394, file: !3, line: 1527, type: !125)
!1399 = !DILocation(line: 0, scope: !1394)
!1400 = !DILocation(line: 1529, column: 16, scope: !1394)
!1401 = !DILocation(line: 1529, column: 28, scope: !1394)
!1402 = !DILocation(line: 1530, column: 3, scope: !1394)
!1403 = !DILocation(line: 1532, column: 13, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 1531, column: 5)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 1530, column: 3)
!1406 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1530, column: 3)
!1407 = !DILocation(line: 1533, column: 16, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 1533, column: 11)
!1409 = !DILocation(line: 1533, column: 21, scope: !1408)
!1410 = !DILocation(line: 1533, column: 11, scope: !1404)
!1411 = !DILocation(line: 1535, column: 21, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 1535, column: 11)
!1413 = !DILocation(line: 1535, column: 11, scope: !1404)
!1414 = !DILocation(line: 1537, column: 4, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 1536, column: 2)
!1416 = !DILocation(line: 1539, column: 4, scope: !1415)
!1417 = !DILocation(line: 1542, column: 17, scope: !1404)
!1418 = !DILocation(line: 1542, column: 26, scope: !1404)
!1419 = !DILocation(line: 1543, column: 15, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 1543, column: 11)
!1421 = !DILocation(line: 1543, column: 21, scope: !1420)
!1422 = !DILocation(line: 1543, column: 11, scope: !1404)
!1423 = !DILocation(line: 1546, column: 15, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 1546, column: 11)
!1425 = !DILocation(line: 1546, column: 20, scope: !1424)
!1426 = !DILocation(line: 1546, column: 11, scope: !1404)
!1427 = !DILocation(line: 1548, column: 6, scope: !1424)
!1428 = !DILocation(line: 1547, column: 2, scope: !1424)
!1429 = !DILocation(line: 1549, column: 7, scope: !1404)
!1430 = !DILocation(line: 1550, column: 17, scope: !1404)
!1431 = !DILocation(line: 1530, column: 3, scope: !1405)
!1432 = distinct !{!1432, !1433, !1434}
!1433 = !DILocation(line: 1530, column: 3, scope: !1406)
!1434 = !DILocation(line: 1551, column: 5, scope: !1406)
!1435 = !DILocation(line: 1552, column: 16, scope: !1394)
!1436 = !DILocation(line: 1552, column: 28, scope: !1394)
!1437 = !DILocation(line: 1553, column: 1, scope: !1394)
!1438 = distinct !DISubprogram(name: "do_pragma_system_header", scope: !3, file: !3, line: 1562, type: !256, scopeLine: 1563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1439)
!1439 = !{!1440}
!1440 = !DILocalVariable(name: "pfile", arg: 1, scope: !1438, file: !3, line: 1562, type: !258)
!1441 = !DILocation(line: 0, scope: !1438)
!1442 = !DILocation(line: 1564, column: 7, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 1564, column: 7)
!1444 = !DILocation(line: 1564, column: 7, scope: !1438)
!1445 = !DILocation(line: 1565, column: 5, scope: !1443)
!1446 = !DILocation(line: 1569, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 1568, column: 5)
!1448 = !DILocation(line: 1570, column: 7, scope: !1447)
!1449 = !DILocation(line: 1571, column: 7, scope: !1447)
!1450 = !DILocation(line: 1573, column: 1, scope: !1438)
!1451 = distinct !DISubprogram(name: "do_pragma_dependency", scope: !3, file: !3, line: 1579, type: !256, scopeLine: 1580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1452)
!1452 = !{!1453, !1454, !1455, !1456, !1457}
!1453 = !DILocalVariable(name: "pfile", arg: 1, scope: !1451, file: !3, line: 1579, type: !258)
!1454 = !DILocalVariable(name: "fname", scope: !1451, file: !3, line: 1581, type: !201)
!1455 = !DILocalVariable(name: "angle_brackets", scope: !1451, file: !3, line: 1582, type: !183)
!1456 = !DILocalVariable(name: "ordering", scope: !1451, file: !3, line: 1582, type: !183)
!1457 = !DILocalVariable(name: "location", scope: !1451, file: !3, line: 1583, type: !135)
!1458 = !DILocation(line: 0, scope: !1451)
!1459 = !DILocation(line: 1582, column: 3, scope: !1451)
!1460 = !DILocation(line: 1583, column: 3, scope: !1451)
!1461 = !DILocation(line: 1585, column: 11, scope: !1451)
!1462 = !DILocation(line: 1586, column: 8, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 1586, column: 7)
!1464 = !DILocation(line: 1586, column: 7, scope: !1451)
!1465 = !DILocation(line: 1589, column: 52, scope: !1451)
!1466 = !DILocation(line: 1589, column: 14, scope: !1451)
!1467 = !DILocation(line: 1590, column: 16, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 1590, column: 7)
!1469 = !DILocation(line: 1590, column: 7, scope: !1451)
!1470 = !DILocation(line: 1591, column: 5, scope: !1468)
!1471 = !DILocation(line: 1592, column: 21, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 1592, column: 12)
!1473 = !DILocation(line: 1592, column: 12, scope: !1468)
!1474 = !DILocation(line: 1594, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 1593, column: 5)
!1476 = !DILocation(line: 1596, column: 11, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 1596, column: 11)
!1478 = !DILocation(line: 1596, column: 34, scope: !1477)
!1479 = !DILocation(line: 1596, column: 39, scope: !1477)
!1480 = !DILocation(line: 1596, column: 11, scope: !1475)
!1481 = !DILocation(line: 1598, column: 4, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 1597, column: 2)
!1483 = !DILocation(line: 1599, column: 4, scope: !1482)
!1484 = !DILocation(line: 1600, column: 2, scope: !1482)
!1485 = !DILocation(line: 1603, column: 3, scope: !1451)
!1486 = !DILocation(line: 1604, column: 1, scope: !1451)
!1487 = distinct !DISubprogram(name: "_cpp_save_pragma_names", scope: !3, file: !3, line: 1296, type: !1488, scopeLine: 1297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!58, !258}
!1490 = !{!1491, !1492, !1493}
!1491 = !DILocalVariable(name: "pfile", arg: 1, scope: !1487, file: !3, line: 1296, type: !258)
!1492 = !DILocalVariable(name: "ct", scope: !1487, file: !3, line: 1298, type: !183)
!1493 = !DILocalVariable(name: "result", scope: !1487, file: !3, line: 1299, type: !58)
!1494 = !DILocation(line: 0, scope: !1487)
!1495 = !DILocation(line: 1298, column: 45, scope: !1487)
!1496 = !DILocation(line: 1298, column: 12, scope: !1487)
!1497 = !DILocation(line: 1299, column: 19, scope: !1487)
!1498 = !DILocation(line: 1300, column: 42, scope: !1487)
!1499 = !DILocation(line: 1300, column: 10, scope: !1487)
!1500 = !DILocation(line: 1301, column: 3, scope: !1487)
!1501 = distinct !DISubprogram(name: "count_registered_pragmas", scope: !3, file: !3, line: 1263, type: !1502, scopeLine: 1264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!183, !241}
!1504 = !{!1505, !1506}
!1505 = !DILocalVariable(name: "pe", arg: 1, scope: !1501, file: !3, line: 1263, type: !241)
!1506 = !DILocalVariable(name: "ct", scope: !1501, file: !3, line: 1265, type: !183)
!1507 = !DILocation(line: 0, scope: !1501)
!1508 = !DILocation(line: 1266, column: 3, scope: !1501)
!1509 = !DILocation(line: 1266, column: 13, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 1266, column: 3)
!1511 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 1266, column: 3)
!1512 = !DILocation(line: 1266, column: 3, scope: !1511)
!1513 = !DILocation(line: 1268, column: 15, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 1268, column: 11)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 1267, column: 5)
!1516 = !DILocation(line: 1268, column: 11, scope: !1514)
!1517 = !DILocation(line: 1268, column: 11, scope: !1515)
!1518 = !DILocation(line: 1269, column: 38, scope: !1514)
!1519 = !DILocation(line: 1269, column: 40, scope: !1514)
!1520 = !DILocation(line: 1269, column: 8, scope: !1514)
!1521 = !DILocation(line: 1269, column: 5, scope: !1514)
!1522 = !DILocation(line: 1269, column: 2, scope: !1514)
!1523 = !DILocation(line: 1270, column: 9, scope: !1515)
!1524 = !DILocation(line: 1266, column: 31, scope: !1510)
!1525 = !DILocation(line: 1266, column: 3, scope: !1510)
!1526 = distinct !{!1526, !1512, !1527}
!1527 = !DILocation(line: 1271, column: 5, scope: !1511)
!1528 = !DILocation(line: 1272, column: 3, scope: !1501)
!1529 = distinct !DISubprogram(name: "save_registered_pragmas", scope: !3, file: !3, line: 1279, type: !1530, scopeLine: 1280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1532)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!58, !241, !58}
!1532 = !{!1533, !1534}
!1533 = !DILocalVariable(name: "pe", arg: 1, scope: !1529, file: !3, line: 1279, type: !241)
!1534 = !DILocalVariable(name: "sd", arg: 2, scope: !1529, file: !3, line: 1279, type: !58)
!1535 = !DILocation(line: 0, scope: !1529)
!1536 = !DILocation(line: 1281, column: 3, scope: !1529)
!1537 = !DILocation(line: 1281, column: 13, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 1281, column: 3)
!1539 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 1281, column: 3)
!1540 = !DILocation(line: 1281, column: 3, scope: !1539)
!1541 = !DILocation(line: 1283, column: 15, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 1283, column: 11)
!1543 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 1282, column: 5)
!1544 = !DILocation(line: 1283, column: 11, scope: !1542)
!1545 = !DILocation(line: 1283, column: 11, scope: !1543)
!1546 = !DILocation(line: 1284, column: 36, scope: !1542)
!1547 = !DILocation(line: 1284, column: 38, scope: !1542)
!1548 = !DILocation(line: 1284, column: 7, scope: !1542)
!1549 = !DILocation(line: 1284, column: 2, scope: !1542)
!1550 = !DILocation(line: 1285, column: 33, scope: !1543)
!1551 = !DILocation(line: 1286, column: 33, scope: !1543)
!1552 = !DILocation(line: 1287, column: 61, scope: !1543)
!1553 = !DILocation(line: 1287, column: 33, scope: !1543)
!1554 = !DILocation(line: 1285, column: 24, scope: !1543)
!1555 = !DILocation(line: 1285, column: 10, scope: !1543)
!1556 = !DILocation(line: 1285, column: 13, scope: !1543)
!1557 = !DILocation(line: 1281, column: 31, scope: !1538)
!1558 = !DILocation(line: 1281, column: 3, scope: !1538)
!1559 = distinct !{!1559, !1540, !1560}
!1560 = !DILocation(line: 1288, column: 5, scope: !1539)
!1561 = !DILocation(line: 1289, column: 3, scope: !1529)
!1562 = distinct !DISubprogram(name: "_cpp_restore_pragma_names", scope: !3, file: !3, line: 1325, type: !1563, scopeLine: 1326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !258, !58}
!1565 = !{!1566, !1567}
!1566 = !DILocalVariable(name: "pfile", arg: 1, scope: !1562, file: !3, line: 1325, type: !258)
!1567 = !DILocalVariable(name: "saved", arg: 2, scope: !1562, file: !3, line: 1325, type: !58)
!1568 = !DILocation(line: 0, scope: !1562)
!1569 = !DILocation(line: 1327, column: 52, scope: !1562)
!1570 = !DILocation(line: 1327, column: 10, scope: !1562)
!1571 = !DILocation(line: 1328, column: 9, scope: !1562)
!1572 = !DILocation(line: 1328, column: 3, scope: !1562)
!1573 = !DILocation(line: 1329, column: 1, scope: !1562)
!1574 = distinct !DISubprogram(name: "restore_registered_pragmas", scope: !3, file: !3, line: 1308, type: !1575, scopeLine: 1310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1577)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!58, !258, !241, !58}
!1577 = !{!1578, !1579, !1580}
!1578 = !DILocalVariable(name: "pfile", arg: 1, scope: !1574, file: !3, line: 1308, type: !258)
!1579 = !DILocalVariable(name: "pe", arg: 2, scope: !1574, file: !3, line: 1308, type: !241)
!1580 = !DILocalVariable(name: "sd", arg: 3, scope: !1574, file: !3, line: 1309, type: !58)
!1581 = !DILocation(line: 0, scope: !1574)
!1582 = !DILocation(line: 1311, column: 3, scope: !1574)
!1583 = !DILocation(line: 1311, column: 13, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 1311, column: 3)
!1585 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1311, column: 3)
!1586 = !DILocation(line: 1311, column: 3, scope: !1585)
!1587 = !DILocation(line: 1313, column: 15, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !3, line: 1313, column: 11)
!1589 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 1312, column: 5)
!1590 = !DILocation(line: 1313, column: 11, scope: !1588)
!1591 = !DILocation(line: 1313, column: 11, scope: !1589)
!1592 = !DILocation(line: 1314, column: 46, scope: !1588)
!1593 = !DILocation(line: 1314, column: 48, scope: !1588)
!1594 = !DILocation(line: 1314, column: 7, scope: !1588)
!1595 = !DILocation(line: 1314, column: 2, scope: !1588)
!1596 = !DILocation(line: 1315, column: 42, scope: !1589)
!1597 = !DILocation(line: 1315, column: 47, scope: !1589)
!1598 = !DILocation(line: 1315, column: 20, scope: !1589)
!1599 = !DILocation(line: 1315, column: 11, scope: !1589)
!1600 = !DILocation(line: 1315, column: 18, scope: !1589)
!1601 = !DILocation(line: 1316, column: 13, scope: !1589)
!1602 = !DILocation(line: 1316, column: 7, scope: !1589)
!1603 = !DILocation(line: 1317, column: 9, scope: !1589)
!1604 = !DILocation(line: 1311, column: 31, scope: !1584)
!1605 = !DILocation(line: 1311, column: 3, scope: !1584)
!1606 = distinct !{!1606, !1586, !1607}
!1607 = !DILocation(line: 1318, column: 5, scope: !1585)
!1608 = !DILocation(line: 1319, column: 3, scope: !1574)
!1609 = distinct !DISubprogram(name: "_cpp_do__Pragma", scope: !3, file: !3, line: 1769, type: !1610, scopeLine: 1770, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1612)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!183, !258}
!1612 = !{!1613, !1614}
!1613 = !DILocalVariable(name: "pfile", arg: 1, scope: !1609, file: !3, line: 1769, type: !258)
!1614 = !DILocalVariable(name: "string", scope: !1609, file: !3, line: 1771, type: !239)
!1615 = !DILocation(line: 0, scope: !1609)
!1616 = !DILocation(line: 1771, column: 29, scope: !1609)
!1617 = !DILocation(line: 1772, column: 27, scope: !1609)
!1618 = !DILocation(line: 1772, column: 32, scope: !1609)
!1619 = !DILocation(line: 1774, column: 7, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 1774, column: 7)
!1621 = !DILocation(line: 1774, column: 7, scope: !1609)
!1622 = !DILocation(line: 1776, column: 48, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 1775, column: 5)
!1624 = !DILocation(line: 1776, column: 7, scope: !1623)
!1625 = !DILocation(line: 1777, column: 7, scope: !1623)
!1626 = !DILocation(line: 1779, column: 3, scope: !1609)
!1627 = !DILocation(line: 1781, column: 3, scope: !1609)
!1628 = !DILocation(line: 1782, column: 1, scope: !1609)
!1629 = distinct !DISubprogram(name: "get__Pragma_string", scope: !3, file: !3, line: 1621, type: !1630, scopeLine: 1622, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1632)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!239, !258}
!1632 = !{!1633, !1634, !1635}
!1633 = !DILocalVariable(name: "pfile", arg: 1, scope: !1629, file: !3, line: 1621, type: !258)
!1634 = !DILocalVariable(name: "string", scope: !1629, file: !3, line: 1623, type: !239)
!1635 = !DILocalVariable(name: "paren", scope: !1629, file: !3, line: 1624, type: !239)
!1636 = !DILocation(line: 0, scope: !1629)
!1637 = !DILocation(line: 1626, column: 11, scope: !1629)
!1638 = !DILocation(line: 1627, column: 14, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1627, column: 7)
!1640 = !DILocation(line: 1627, column: 19, scope: !1639)
!1641 = !DILocation(line: 1627, column: 7, scope: !1629)
!1642 = !DILocation(line: 1628, column: 5, scope: !1639)
!1643 = !DILocation(line: 1629, column: 14, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1629, column: 7)
!1645 = !DILocation(line: 1629, column: 19, scope: !1644)
!1646 = !DILocation(line: 1629, column: 7, scope: !1629)
!1647 = !DILocation(line: 1632, column: 12, scope: !1629)
!1648 = !DILocation(line: 1633, column: 15, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1633, column: 7)
!1650 = !DILocation(line: 1633, column: 20, scope: !1649)
!1651 = !DILocation(line: 1633, column: 7, scope: !1629)
!1652 = !DILocation(line: 1634, column: 5, scope: !1649)
!1653 = !DILocation(line: 1635, column: 15, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1635, column: 7)
!1655 = !DILocation(line: 1635, column: 20, scope: !1654)
!1656 = !DILocation(line: 1635, column: 34, scope: !1654)
!1657 = !DILocation(line: 1635, column: 50, scope: !1654)
!1658 = !DILocation(line: 1636, column: 7, scope: !1654)
!1659 = !DILocation(line: 1636, column: 23, scope: !1654)
!1660 = !DILocation(line: 1636, column: 39, scope: !1654)
!1661 = !DILocation(line: 1636, column: 55, scope: !1654)
!1662 = !DILocation(line: 1637, column: 7, scope: !1654)
!1663 = !DILocation(line: 1637, column: 23, scope: !1654)
!1664 = !DILocation(line: 1635, column: 7, scope: !1629)
!1665 = !DILocation(line: 1640, column: 11, scope: !1629)
!1666 = !DILocation(line: 1641, column: 14, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1641, column: 7)
!1668 = !DILocation(line: 1641, column: 19, scope: !1667)
!1669 = !DILocation(line: 1641, column: 7, scope: !1629)
!1670 = !DILocation(line: 1642, column: 5, scope: !1667)
!1671 = !DILocation(line: 1643, column: 14, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1643, column: 7)
!1673 = !DILocation(line: 1643, column: 19, scope: !1672)
!1674 = !DILocation(line: 1647, column: 1, scope: !1629)
!1675 = distinct !DISubprogram(name: "destringize_and_run", scope: !3, file: !3, line: 1652, type: !1676, scopeLine: 1653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1678)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !258, !479}
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691}
!1679 = !DILocalVariable(name: "pfile", arg: 1, scope: !1675, file: !3, line: 1652, type: !258)
!1680 = !DILocalVariable(name: "in", arg: 2, scope: !1675, file: !3, line: 1652, type: !479)
!1681 = !DILocalVariable(name: "src", scope: !1675, file: !3, line: 1654, type: !61)
!1682 = !DILocalVariable(name: "limit", scope: !1675, file: !3, line: 1654, type: !61)
!1683 = !DILocalVariable(name: "dest", scope: !1675, file: !3, line: 1655, type: !59)
!1684 = !DILocalVariable(name: "result", scope: !1675, file: !3, line: 1655, type: !59)
!1685 = !DILocalVariable(name: "saved_context", scope: !1675, file: !3, line: 1656, type: !328)
!1686 = !DILocalVariable(name: "saved_cur_token", scope: !1675, file: !3, line: 1657, type: !130)
!1687 = !DILocalVariable(name: "saved_cur_run", scope: !1675, file: !3, line: 1658, type: !425)
!1688 = !DILocalVariable(name: "toks", scope: !1675, file: !3, line: 1659, type: !130)
!1689 = !DILocalVariable(name: "count", scope: !1675, file: !3, line: 1660, type: !183)
!1690 = !DILocalVariable(name: "save_directive", scope: !1675, file: !3, line: 1661, type: !354)
!1691 = !DILocalVariable(name: "maxcount", scope: !1692, file: !3, line: 1720, type: !183)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 1719, column: 5)
!1693 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 1718, column: 7)
!1694 = !DILocation(line: 0, scope: !1675)
!1695 = !DILocation(line: 1663, column: 28, scope: !1675)
!1696 = !DILocation(line: 1664, column: 13, scope: !1675)
!1697 = !DILocation(line: 1664, column: 18, scope: !1675)
!1698 = !DILocation(line: 1664, column: 25, scope: !1675)
!1699 = !DILocation(line: 1664, column: 37, scope: !1675)
!1700 = !DILocation(line: 1664, column: 22, scope: !1675)
!1701 = !DILocation(line: 1665, column: 20, scope: !1675)
!1702 = !DILocation(line: 1665, column: 30, scope: !1675)
!1703 = !DILocation(line: 1666, column: 3, scope: !1675)
!1704 = !DILocation(line: 1666, column: 14, scope: !1675)
!1705 = !DILocation(line: 1669, column: 11, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 1669, column: 11)
!1707 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 1667, column: 5)
!1708 = !DILocation(line: 1669, column: 16, scope: !1706)
!1709 = !DILocation(line: 1669, column: 24, scope: !1706)
!1710 = !DILocation(line: 1669, column: 28, scope: !1706)
!1711 = !DILocation(line: 1669, column: 35, scope: !1706)
!1712 = !DILocation(line: 1669, column: 43, scope: !1706)
!1713 = !DILocation(line: 1669, column: 53, scope: !1706)
!1714 = !DILocation(line: 1669, column: 11, scope: !1707)
!1715 = !DILocation(line: 1670, column: 2, scope: !1706)
!1716 = !DILocation(line: 1671, column: 17, scope: !1707)
!1717 = !DILocation(line: 1671, column: 21, scope: !1707)
!1718 = !DILocation(line: 1671, column: 12, scope: !1707)
!1719 = !DILocation(line: 1671, column: 15, scope: !1707)
!1720 = distinct !{!1720, !1703, !1721}
!1721 = !DILocation(line: 1672, column: 5, scope: !1675)
!1722 = !DILocation(line: 1673, column: 9, scope: !1675)
!1723 = !DILocation(line: 1683, column: 26, scope: !1675)
!1724 = !DILocation(line: 1684, column: 28, scope: !1675)
!1725 = !DILocation(line: 1685, column: 26, scope: !1675)
!1726 = !DILocation(line: 1687, column: 20, scope: !1675)
!1727 = !DILocation(line: 1687, column: 18, scope: !1675)
!1728 = !DILocation(line: 1688, column: 19, scope: !1675)
!1729 = !DILocation(line: 1688, column: 25, scope: !1675)
!1730 = !DILocation(line: 1689, column: 10, scope: !1675)
!1731 = !DILocation(line: 1689, column: 19, scope: !1675)
!1732 = !DILocation(line: 1689, column: 24, scope: !1675)
!1733 = !DILocation(line: 1690, column: 10, scope: !1675)
!1734 = !DILocation(line: 1690, column: 19, scope: !1675)
!1735 = !DILocation(line: 1690, column: 24, scope: !1675)
!1736 = !DILocation(line: 1694, column: 56, scope: !1675)
!1737 = !DILocation(line: 1694, column: 3, scope: !1675)
!1738 = !DILocation(line: 1697, column: 14, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 1697, column: 7)
!1740 = !DILocation(line: 1697, column: 22, scope: !1739)
!1741 = !DILocation(line: 1697, column: 7, scope: !1739)
!1742 = !DILocation(line: 1697, column: 7, scope: !1675)
!1743 = !DILocation(line: 1698, column: 48, scope: !1739)
!1744 = !DILocation(line: 1698, column: 20, scope: !1739)
!1745 = !DILocation(line: 1698, column: 25, scope: !1739)
!1746 = !DILocation(line: 1698, column: 5, scope: !1739)
!1747 = !DILocation(line: 1700, column: 3, scope: !1675)
!1748 = !DILocation(line: 1701, column: 3, scope: !1675)
!1749 = !DILocation(line: 1702, column: 27, scope: !1675)
!1750 = !DILocation(line: 1703, column: 20, scope: !1675)
!1751 = !DILocation(line: 1704, column: 3, scope: !1675)
!1752 = !DILocation(line: 1705, column: 3, scope: !1675)
!1753 = !DILocation(line: 1706, column: 20, scope: !1675)
!1754 = !DILocation(line: 1718, column: 31, scope: !1693)
!1755 = !DILocation(line: 1718, column: 36, scope: !1693)
!1756 = !DILocation(line: 1718, column: 7, scope: !1675)
!1757 = !DILocation(line: 0, scope: !1692)
!1758 = !DILocation(line: 1724, column: 14, scope: !1692)
!1759 = !DILocation(line: 1725, column: 24, scope: !1692)
!1760 = !DILocation(line: 1727, column: 7, scope: !1692)
!1761 = !DILocation(line: 1729, column: 14, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 1729, column: 8)
!1763 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 1728, column: 2)
!1764 = !DILocation(line: 1729, column: 8, scope: !1763)
!1765 = !DILocation(line: 1731, column: 28, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 1730, column: 6)
!1767 = !DILocation(line: 1731, column: 32, scope: !1766)
!1768 = !DILocation(line: 1732, column: 15, scope: !1766)
!1769 = !DILocation(line: 1733, column: 6, scope: !1766)
!1770 = !DILocation(line: 1734, column: 4, scope: !1763)
!1771 = !DILocation(line: 1734, column: 19, scope: !1763)
!1772 = !DILocation(line: 1734, column: 18, scope: !1763)
!1773 = !DILocation(line: 1737, column: 14, scope: !1763)
!1774 = !DILocation(line: 1737, column: 18, scope: !1763)
!1775 = !DILocation(line: 1737, column: 24, scope: !1763)
!1776 = !DILocation(line: 1739, column: 28, scope: !1692)
!1777 = !DILocation(line: 1739, column: 33, scope: !1692)
!1778 = !DILocation(line: 1738, column: 2, scope: !1763)
!1779 = distinct !{!1779, !1760, !1780}
!1780 = !DILocation(line: 1739, column: 50, scope: !1692)
!1781 = !DILocation(line: 1744, column: 14, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 1742, column: 5)
!1783 = !DILocation(line: 1745, column: 24, scope: !1782)
!1784 = !DILocation(line: 1749, column: 21, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 1749, column: 11)
!1786 = !DILocation(line: 1749, column: 11, scope: !1785)
!1787 = !DILocation(line: 1749, column: 11, scope: !1782)
!1788 = !DILocation(line: 1750, column: 39, scope: !1785)
!1789 = !DILocation(line: 1750, column: 2, scope: !1785)
!1790 = !DILocation(line: 1754, column: 10, scope: !1675)
!1791 = !DILocation(line: 0, scope: !1693)
!1792 = !DILocation(line: 1754, column: 18, scope: !1675)
!1793 = !DILocation(line: 1754, column: 23, scope: !1675)
!1794 = !DILocation(line: 1755, column: 3, scope: !1675)
!1795 = !DILocation(line: 1758, column: 3, scope: !1675)
!1796 = !DILocation(line: 1759, column: 18, scope: !1675)
!1797 = !DILocation(line: 1760, column: 20, scope: !1675)
!1798 = !DILocation(line: 1761, column: 18, scope: !1675)
!1799 = !DILocation(line: 1764, column: 3, scope: !1675)
!1800 = !DILocation(line: 1765, column: 1, scope: !1675)
!1801 = distinct !DISubprogram(name: "_cpp_test_assertion", scope: !3, file: !3, line: 2152, type: !1802, scopeLine: 2153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1805)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!183, !258, !1804}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1805 = !{!1806, !1807, !1808, !1809}
!1806 = !DILocalVariable(name: "pfile", arg: 1, scope: !1801, file: !3, line: 2152, type: !258)
!1807 = !DILocalVariable(name: "value", arg: 2, scope: !1801, file: !3, line: 2152, type: !1804)
!1808 = !DILocalVariable(name: "answer", scope: !1801, file: !3, line: 2154, type: !169)
!1809 = !DILocalVariable(name: "node", scope: !1801, file: !3, line: 2155, type: !125)
!1810 = !DILocation(line: 0, scope: !1801)
!1811 = !DILocation(line: 2154, column: 3, scope: !1801)
!1812 = !DILocation(line: 2157, column: 10, scope: !1801)
!1813 = !DILocation(line: 2161, column: 10, scope: !1801)
!1814 = !DILocation(line: 2163, column: 7, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 2163, column: 7)
!1816 = !DILocation(line: 2163, column: 7, scope: !1801)
!1817 = !DILocation(line: 2164, column: 21, scope: !1815)
!1818 = !DILocation(line: 2164, column: 26, scope: !1815)
!1819 = !DILocation(line: 2164, column: 42, scope: !1815)
!1820 = !DILocation(line: 2165, column: 9, scope: !1815)
!1821 = !DILocation(line: 2165, column: 16, scope: !1815)
!1822 = !DILocation(line: 2165, column: 21, scope: !1815)
!1823 = !DILocation(line: 2165, column: 25, scope: !1815)
!1824 = !DILocation(line: 2165, column: 24, scope: !1815)
!1825 = !DILocation(line: 2165, column: 52, scope: !1815)
!1826 = !DILocation(line: 2164, column: 12, scope: !1815)
!1827 = !DILocation(line: 2164, column: 5, scope: !1815)
!1828 = !DILocation(line: 2166, column: 19, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 2166, column: 12)
!1830 = !DILocation(line: 2166, column: 33, scope: !1829)
!1831 = !DILocation(line: 2166, column: 38, scope: !1829)
!1832 = !DILocation(line: 2166, column: 12, scope: !1815)
!1833 = !DILocation(line: 2167, column: 5, scope: !1829)
!1834 = !DILocation(line: 2170, column: 15, scope: !1801)
!1835 = !DILocation(line: 2171, column: 1, scope: !1801)
!1836 = !DILocation(line: 2170, column: 3, scope: !1801)
!1837 = distinct !DISubprogram(name: "parse_assertion", scope: !3, file: !3, line: 2092, type: !1838, scopeLine: 2093, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1841)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!125, !258, !1840, !183}
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!1841 = !{!1842, !1843, !1844, !1845, !1846, !1847, !1852}
!1842 = !DILocalVariable(name: "pfile", arg: 1, scope: !1837, file: !3, line: 2092, type: !258)
!1843 = !DILocalVariable(name: "answerp", arg: 2, scope: !1837, file: !3, line: 2092, type: !1840)
!1844 = !DILocalVariable(name: "type", arg: 3, scope: !1837, file: !3, line: 2092, type: !183)
!1845 = !DILocalVariable(name: "result", scope: !1837, file: !3, line: 2094, type: !125)
!1846 = !DILocalVariable(name: "predicate", scope: !1837, file: !3, line: 2095, type: !239)
!1847 = !DILocalVariable(name: "len", scope: !1848, file: !3, line: 2109, type: !7)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 2108, column: 5)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !3, line: 2107, column: 12)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 2104, column: 12)
!1851 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 2102, column: 7)
!1852 = !DILocalVariable(name: "sym", scope: !1848, file: !3, line: 2110, type: !319)
!1853 = !DILocation(line: 0, scope: !1837)
!1854 = !DILocation(line: 2098, column: 16, scope: !1837)
!1855 = !DILocation(line: 2098, column: 33, scope: !1837)
!1856 = !DILocation(line: 2100, column: 12, scope: !1837)
!1857 = !DILocation(line: 2101, column: 15, scope: !1837)
!1858 = !DILocation(line: 2102, column: 18, scope: !1851)
!1859 = !DILocation(line: 2102, column: 23, scope: !1851)
!1860 = !DILocation(line: 2102, column: 7, scope: !1837)
!1861 = !DILocation(line: 2103, column: 5, scope: !1851)
!1862 = !DILocation(line: 2104, column: 28, scope: !1850)
!1863 = !DILocation(line: 0, scope: !1850)
!1864 = !DILocation(line: 2104, column: 12, scope: !1851)
!1865 = !DILocation(line: 2105, column: 5, scope: !1850)
!1866 = !DILocation(line: 2107, column: 12, scope: !1849)
!1867 = !DILocation(line: 2107, column: 68, scope: !1849)
!1868 = !DILocation(line: 2107, column: 12, scope: !1850)
!1869 = !DILocation(line: 2109, column: 26, scope: !1848)
!1870 = !DILocation(line: 0, scope: !1848)
!1871 = !DILocation(line: 2110, column: 46, scope: !1848)
!1872 = !DILocation(line: 2113, column: 14, scope: !1848)
!1873 = !DILocation(line: 2114, column: 19, scope: !1848)
!1874 = !DILocation(line: 2114, column: 24, scope: !1848)
!1875 = !DILocation(line: 2114, column: 62, scope: !1848)
!1876 = !DILocation(line: 2114, column: 7, scope: !1848)
!1877 = !DILocation(line: 2115, column: 16, scope: !1848)
!1878 = !DILocation(line: 2116, column: 5, scope: !1848)
!1879 = !DILocation(line: 2094, column: 17, scope: !1837)
!1880 = !DILocation(line: 2118, column: 33, scope: !1837)
!1881 = !DILocation(line: 2119, column: 3, scope: !1837)
!1882 = distinct !DISubprogram(name: "find_answer", scope: !3, file: !3, line: 2125, type: !1883, scopeLine: 2126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1887)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!1840, !125, !1885}
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!1887 = !{!1888, !1889, !1890, !1891, !1892}
!1888 = !DILocalVariable(name: "node", arg: 1, scope: !1882, file: !3, line: 2125, type: !125)
!1889 = !DILocalVariable(name: "candidate", arg: 2, scope: !1882, file: !3, line: 2125, type: !1885)
!1890 = !DILocalVariable(name: "i", scope: !1882, file: !3, line: 2127, type: !7)
!1891 = !DILocalVariable(name: "result", scope: !1882, file: !3, line: 2128, type: !1840)
!1892 = !DILocalVariable(name: "answer", scope: !1893, file: !3, line: 2132, type: !169)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 2131, column: 5)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 2130, column: 3)
!1895 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 2130, column: 3)
!1896 = !DILocation(line: 0, scope: !1882)
!1897 = !DILocation(line: 2130, column: 24, scope: !1895)
!1898 = !DILocation(line: 2130, column: 30, scope: !1895)
!1899 = !DILocation(line: 0, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 2134, column: 11)
!1901 = !DILocation(line: 2130, column: 8, scope: !1895)
!1902 = !DILocation(line: 0, scope: !1895)
!1903 = !DILocation(line: 2130, column: 39, scope: !1894)
!1904 = !DILocation(line: 2130, column: 3, scope: !1895)
!1905 = !DILocation(line: 0, scope: !1893)
!1906 = !DILocation(line: 2134, column: 19, scope: !1900)
!1907 = !DILocation(line: 2134, column: 39, scope: !1900)
!1908 = !DILocation(line: 2134, column: 25, scope: !1900)
!1909 = !DILocation(line: 2134, column: 11, scope: !1893)
!1910 = !DILocation(line: 2136, column: 4, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 2136, column: 4)
!1912 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 2135, column: 2)
!1913 = !DILocation(line: 2136, column: 28, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 2136, column: 4)
!1915 = !DILocation(line: 2136, column: 18, scope: !1914)
!1916 = !DILocation(line: 2137, column: 32, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 2137, column: 10)
!1918 = !DILocation(line: 2137, column: 51, scope: !1917)
!1919 = !DILocation(line: 2137, column: 12, scope: !1917)
!1920 = !DILocation(line: 2137, column: 10, scope: !1914)
!1921 = !DILocation(line: 2140, column: 21, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 2140, column: 8)
!1923 = !DILocation(line: 2136, column: 36, scope: !1914)
!1924 = !DILocation(line: 2136, column: 4, scope: !1914)
!1925 = distinct !{!1925, !1910, !1926}
!1926 = !DILocation(line: 2138, column: 8, scope: !1911)
!1927 = !DILocation(line: 2140, column: 10, scope: !1922)
!1928 = !DILocation(line: 2140, column: 8, scope: !1912)
!1929 = !DILocation(line: 2143, column: 5, scope: !1894)
!1930 = !DILocation(line: 2130, column: 59, scope: !1894)
!1931 = !DILocation(line: 2130, column: 69, scope: !1894)
!1932 = !DILocation(line: 2130, column: 3, scope: !1894)
!1933 = distinct !{!1933, !1904, !1934}
!1934 = !DILocation(line: 2143, column: 5, scope: !1895)
!1935 = !DILocation(line: 2145, column: 3, scope: !1882)
!1936 = distinct !DISubprogram(name: "cpp_define", scope: !3, file: !3, line: 2258, type: !464, scopeLine: 2259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1937)
!1937 = !{!1938, !1939, !1940, !1941, !1942}
!1938 = !DILocalVariable(name: "pfile", arg: 1, scope: !1936, file: !3, line: 2258, type: !258)
!1939 = !DILocalVariable(name: "str", arg: 2, scope: !1936, file: !3, line: 2258, type: !201)
!1940 = !DILocalVariable(name: "buf", scope: !1936, file: !3, line: 2260, type: !59)
!1941 = !DILocalVariable(name: "p", scope: !1936, file: !3, line: 2261, type: !201)
!1942 = !DILocalVariable(name: "count", scope: !1936, file: !3, line: 2262, type: !228)
!1943 = !DILocation(line: 0, scope: !1936)
!1944 = !DILocation(line: 2268, column: 11, scope: !1936)
!1945 = !DILocation(line: 2269, column: 18, scope: !1936)
!1946 = !DILocation(line: 2270, column: 3, scope: !1936)
!1947 = !DILocation(line: 2272, column: 7, scope: !1936)
!1948 = !DILocation(line: 2273, column: 7, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 2273, column: 7)
!1950 = !DILocation(line: 2273, column: 7, scope: !1936)
!1951 = !DILocation(line: 2274, column: 11, scope: !1949)
!1952 = !DILocation(line: 2274, column: 5, scope: !1949)
!1953 = !DILocation(line: 2274, column: 18, scope: !1949)
!1954 = !DILocation(line: 2277, column: 16, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 2276, column: 5)
!1956 = !DILocation(line: 2277, column: 7, scope: !1955)
!1957 = !DILocation(line: 2277, column: 20, scope: !1955)
!1958 = !DILocation(line: 2278, column: 16, scope: !1955)
!1959 = !DILocation(line: 2278, column: 7, scope: !1955)
!1960 = !DILocation(line: 2278, column: 20, scope: !1955)
!1961 = !DILocation(line: 2280, column: 3, scope: !1936)
!1962 = !DILocation(line: 2280, column: 14, scope: !1936)
!1963 = !DILocation(line: 2282, column: 3, scope: !1936)
!1964 = !DILocation(line: 2283, column: 1, scope: !1936)
!1965 = distinct !DISubprogram(name: "run_directive", scope: !3, file: !3, line: 509, type: !1966, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1968)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{null, !258, !183, !201, !228}
!1968 = !{!1969, !1970, !1971, !1972}
!1969 = !DILocalVariable(name: "pfile", arg: 1, scope: !1965, file: !3, line: 509, type: !258)
!1970 = !DILocalVariable(name: "dir_no", arg: 2, scope: !1965, file: !3, line: 509, type: !183)
!1971 = !DILocalVariable(name: "buf", arg: 3, scope: !1965, file: !3, line: 509, type: !201)
!1972 = !DILocalVariable(name: "count", arg: 4, scope: !1965, file: !3, line: 509, type: !228)
!1973 = !DILocation(line: 0, scope: !1965)
!1974 = !DILocation(line: 511, column: 3, scope: !1965)
!1975 = !DILocation(line: 513, column: 3, scope: !1965)
!1976 = !DILocation(line: 517, column: 3, scope: !1965)
!1977 = !DILocation(line: 519, column: 23, scope: !1965)
!1978 = !DILocation(line: 519, column: 10, scope: !1965)
!1979 = !DILocation(line: 519, column: 20, scope: !1965)
!1980 = !DILocation(line: 520, column: 7, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 520, column: 7)
!1982 = !DILocation(line: 520, column: 7, scope: !1965)
!1983 = !DILocation(line: 521, column: 5, scope: !1981)
!1984 = !DILocation(line: 522, column: 10, scope: !1965)
!1985 = !DILocation(line: 522, column: 21, scope: !1965)
!1986 = !DILocation(line: 522, column: 3, scope: !1965)
!1987 = !DILocation(line: 523, column: 3, scope: !1965)
!1988 = !DILocation(line: 524, column: 3, scope: !1965)
!1989 = !DILocation(line: 525, column: 1, scope: !1965)
!1990 = distinct !DISubprogram(name: "cpp_define_formatted", scope: !3, file: !3, line: 2291, type: !1991, scopeLine: 2292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !258, !201, null}
!1993 = !{!1994, !1995, !1996, !1997}
!1994 = !DILocalVariable(name: "pfile", arg: 1, scope: !1990, file: !3, line: 2291, type: !258)
!1995 = !DILocalVariable(name: "fmt", arg: 2, scope: !1990, file: !3, line: 2291, type: !201)
!1996 = !DILocalVariable(name: "ptr", scope: !1990, file: !3, line: 2293, type: !59)
!1997 = !DILocalVariable(name: "ap", scope: !1990, file: !3, line: 2295, type: !509)
!1998 = !DILocation(line: 0, scope: !1990)
!1999 = !DILocation(line: 2293, column: 3, scope: !1990)
!2000 = !DILocation(line: 2293, column: 9, scope: !1990)
!2001 = !DILocation(line: 2295, column: 3, scope: !1990)
!2002 = !DILocation(line: 2295, column: 11, scope: !1990)
!2003 = !DILocation(line: 2296, column: 3, scope: !1990)
!2004 = !DILocation(line: 2297, column: 25, scope: !1990)
!2005 = !DILocation(line: 2297, column: 3, scope: !1990)
!2006 = !DILocation(line: 2298, column: 3, scope: !1990)
!2007 = !DILocation(line: 2300, column: 22, scope: !1990)
!2008 = !DILocation(line: 2300, column: 3, scope: !1990)
!2009 = !DILocation(line: 2301, column: 9, scope: !1990)
!2010 = !DILocation(line: 2301, column: 3, scope: !1990)
!2011 = !DILocation(line: 2302, column: 1, scope: !1990)
!2012 = distinct !DISubprogram(name: "_cpp_define_builtin", scope: !3, file: !3, line: 2307, type: !464, scopeLine: 2308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!2013 = !{!2014, !2015, !2016, !2017}
!2014 = !DILocalVariable(name: "pfile", arg: 1, scope: !2012, file: !3, line: 2307, type: !258)
!2015 = !DILocalVariable(name: "str", arg: 2, scope: !2012, file: !3, line: 2307, type: !201)
!2016 = !DILocalVariable(name: "len", scope: !2012, file: !3, line: 2309, type: !228)
!2017 = !DILocalVariable(name: "buf", scope: !2012, file: !3, line: 2310, type: !59)
!2018 = !DILocation(line: 0, scope: !2012)
!2019 = !DILocation(line: 2309, column: 16, scope: !2012)
!2020 = !DILocation(line: 2310, column: 24, scope: !2012)
!2021 = !DILocation(line: 2311, column: 3, scope: !2012)
!2022 = !DILocation(line: 2312, column: 3, scope: !2012)
!2023 = !DILocation(line: 2312, column: 12, scope: !2012)
!2024 = !DILocation(line: 2313, column: 3, scope: !2012)
!2025 = !DILocation(line: 2314, column: 1, scope: !2012)
!2026 = distinct !DISubprogram(name: "cpp_undef", scope: !3, file: !3, line: 2318, type: !464, scopeLine: 2319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2027)
!2027 = !{!2028, !2029, !2030, !2031}
!2028 = !DILocalVariable(name: "pfile", arg: 1, scope: !2026, file: !3, line: 2318, type: !258)
!2029 = !DILocalVariable(name: "macro", arg: 2, scope: !2026, file: !3, line: 2318, type: !201)
!2030 = !DILocalVariable(name: "len", scope: !2026, file: !3, line: 2320, type: !228)
!2031 = !DILocalVariable(name: "buf", scope: !2026, file: !3, line: 2321, type: !59)
!2032 = !DILocation(line: 0, scope: !2026)
!2033 = !DILocation(line: 2320, column: 16, scope: !2026)
!2034 = !DILocation(line: 2321, column: 24, scope: !2026)
!2035 = !DILocation(line: 2322, column: 3, scope: !2026)
!2036 = !DILocation(line: 2323, column: 3, scope: !2026)
!2037 = !DILocation(line: 2323, column: 12, scope: !2026)
!2038 = !DILocation(line: 2324, column: 3, scope: !2026)
!2039 = !DILocation(line: 2325, column: 1, scope: !2026)
!2040 = distinct !DISubprogram(name: "cpp_push_definition", scope: !3, file: !3, line: 2329, type: !2041, scopeLine: 2330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!118, !258, !201}
!2043 = !{!2044, !2045, !2046}
!2044 = !DILocalVariable(name: "pfile", arg: 1, scope: !2040, file: !3, line: 2329, type: !258)
!2045 = !DILocalVariable(name: "str", arg: 2, scope: !2040, file: !3, line: 2329, type: !201)
!2046 = !DILocalVariable(name: "node", scope: !2040, file: !3, line: 2331, type: !125)
!2047 = !DILocation(line: 0, scope: !2040)
!2048 = !DILocation(line: 2331, column: 24, scope: !2040)
!2049 = !DILocation(line: 2332, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 2332, column: 7)
!2051 = !DILocation(line: 2332, column: 12, scope: !2050)
!2052 = !DILocation(line: 2332, column: 21, scope: !2050)
!2053 = !DILocation(line: 2332, column: 26, scope: !2050)
!2054 = !DILocation(line: 2332, column: 7, scope: !2040)
!2055 = !DILocation(line: 2333, column: 24, scope: !2050)
!2056 = !DILocation(line: 2333, column: 5, scope: !2050)
!2057 = !DILocation(line: 0, scope: !2050)
!2058 = !DILocation(line: 2336, column: 1, scope: !2040)
!2059 = distinct !DISubprogram(name: "cpp_pop_definition", scope: !3, file: !3, line: 2341, type: !2060, scopeLine: 2342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2062)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !258, !201, !118}
!2062 = !{!2063, !2064, !2065, !2066}
!2063 = !DILocalVariable(name: "pfile", arg: 1, scope: !2059, file: !3, line: 2341, type: !258)
!2064 = !DILocalVariable(name: "str", arg: 2, scope: !2059, file: !3, line: 2341, type: !201)
!2065 = !DILocalVariable(name: "dfn", arg: 3, scope: !2059, file: !3, line: 2341, type: !118)
!2066 = !DILocalVariable(name: "node", scope: !2059, file: !3, line: 2343, type: !125)
!2067 = !DILocation(line: 0, scope: !2059)
!2068 = !DILocation(line: 2343, column: 24, scope: !2059)
!2069 = !DILocation(line: 2344, column: 12, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 2344, column: 7)
!2071 = !DILocation(line: 2344, column: 7, scope: !2059)
!2072 = !DILocation(line: 2347, column: 17, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 2347, column: 7)
!2074 = !DILocation(line: 2347, column: 7, scope: !2073)
!2075 = !DILocation(line: 2347, column: 7, scope: !2059)
!2076 = !DILocation(line: 2348, column: 5, scope: !2073)
!2077 = !DILocation(line: 2350, column: 13, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 2350, column: 7)
!2079 = !DILocation(line: 2350, column: 18, scope: !2078)
!2080 = !DILocation(line: 2350, column: 7, scope: !2059)
!2081 = !DILocation(line: 2352, column: 21, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 2352, column: 11)
!2083 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 2351, column: 5)
!2084 = !DILocation(line: 2352, column: 11, scope: !2082)
!2085 = !DILocation(line: 2352, column: 11, scope: !2083)
!2086 = !DILocation(line: 2353, column: 33, scope: !2082)
!2087 = !DILocation(line: 2353, column: 2, scope: !2082)
!2088 = !DILocation(line: 2354, column: 11, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 2354, column: 11)
!2090 = !DILocation(line: 2354, column: 11, scope: !2083)
!2091 = !DILocation(line: 2355, column: 2, scope: !2089)
!2092 = !DILocation(line: 2357, column: 13, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 2357, column: 7)
!2094 = !DILocation(line: 2357, column: 18, scope: !2093)
!2095 = !DILocation(line: 2357, column: 7, scope: !2059)
!2096 = !DILocation(line: 2358, column: 5, scope: !2093)
!2097 = !DILocation(line: 2360, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 2360, column: 7)
!2099 = !DILocation(line: 2360, column: 7, scope: !2059)
!2100 = !DILocation(line: 2362, column: 18, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 2361, column: 5)
!2102 = !DILocation(line: 2363, column: 19, scope: !2101)
!2103 = !DILocation(line: 2363, column: 25, scope: !2101)
!2104 = !DILocation(line: 2364, column: 23, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 2364, column: 11)
!2106 = !DILocation(line: 2364, column: 13, scope: !2105)
!2107 = !DILocation(line: 2364, column: 11, scope: !2101)
!2108 = !DILocation(line: 2365, column: 14, scope: !2105)
!2109 = !DILocation(line: 2365, column: 2, scope: !2105)
!2110 = !DILocation(line: 2367, column: 21, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 2367, column: 11)
!2112 = !DILocation(line: 2367, column: 11, scope: !2111)
!2113 = !DILocation(line: 2367, column: 11, scope: !2101)
!2114 = !DILocation(line: 2368, column: 34, scope: !2111)
!2115 = !DILocation(line: 2368, column: 2, scope: !2111)
!2116 = !DILocation(line: 2370, column: 1, scope: !2059)
!2117 = distinct !DISubprogram(name: "ustrncmp", scope: !50, file: !50, line: 693, type: !2118, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2120)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!183, !61, !61, !228}
!2120 = !{!2121, !2122, !2123}
!2121 = !DILocalVariable(name: "s1", arg: 1, scope: !2117, file: !50, line: 693, type: !61)
!2122 = !DILocalVariable(name: "s2", arg: 2, scope: !2117, file: !50, line: 693, type: !61)
!2123 = !DILocalVariable(name: "n", arg: 3, scope: !2117, file: !50, line: 693, type: !228)
!2124 = !DILocation(line: 0, scope: !2117)
!2125 = !DILocation(line: 695, column: 10, scope: !2117)
!2126 = !DILocation(line: 695, column: 3, scope: !2117)
!2127 = distinct !DISubprogram(name: "cpp_assert", scope: !3, file: !3, line: 2374, type: !464, scopeLine: 2375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2128)
!2128 = !{!2129, !2130}
!2129 = !DILocalVariable(name: "pfile", arg: 1, scope: !2127, file: !3, line: 2374, type: !258)
!2130 = !DILocalVariable(name: "str", arg: 2, scope: !2127, file: !3, line: 2374, type: !201)
!2131 = !DILocation(line: 0, scope: !2127)
!2132 = !DILocation(line: 2376, column: 3, scope: !2127)
!2133 = !DILocation(line: 2377, column: 1, scope: !2127)
!2134 = distinct !DISubprogram(name: "handle_assertion", scope: !3, file: !3, line: 2388, type: !2135, scopeLine: 2389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2137)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !258, !201, !183}
!2137 = !{!2138, !2139, !2140, !2141, !2142, !2143}
!2138 = !DILocalVariable(name: "pfile", arg: 1, scope: !2134, file: !3, line: 2388, type: !258)
!2139 = !DILocalVariable(name: "str", arg: 2, scope: !2134, file: !3, line: 2388, type: !201)
!2140 = !DILocalVariable(name: "type", arg: 3, scope: !2134, file: !3, line: 2388, type: !183)
!2141 = !DILocalVariable(name: "count", scope: !2134, file: !3, line: 2390, type: !228)
!2142 = !DILocalVariable(name: "p", scope: !2134, file: !3, line: 2391, type: !201)
!2143 = !DILocalVariable(name: "buf", scope: !2134, file: !3, line: 2395, type: !59)
!2144 = !DILocation(line: 0, scope: !2134)
!2145 = !DILocation(line: 2390, column: 18, scope: !2134)
!2146 = !DILocation(line: 2391, column: 19, scope: !2134)
!2147 = !DILocation(line: 2395, column: 24, scope: !2134)
!2148 = !DILocation(line: 2397, column: 3, scope: !2134)
!2149 = !DILocation(line: 2398, column: 7, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 2398, column: 7)
!2151 = !DILocation(line: 2398, column: 7, scope: !2134)
!2152 = !DILocation(line: 2400, column: 13, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 2399, column: 5)
!2154 = !DILocation(line: 2400, column: 7, scope: !2153)
!2155 = !DILocation(line: 2400, column: 20, scope: !2153)
!2156 = !DILocation(line: 2401, column: 16, scope: !2153)
!2157 = !DILocation(line: 2401, column: 7, scope: !2153)
!2158 = !DILocation(line: 2401, column: 20, scope: !2153)
!2159 = !DILocation(line: 2402, column: 5, scope: !2153)
!2160 = !DILocation(line: 2403, column: 3, scope: !2134)
!2161 = !DILocation(line: 2403, column: 14, scope: !2134)
!2162 = !DILocation(line: 2406, column: 3, scope: !2134)
!2163 = !DILocation(line: 2407, column: 1, scope: !2134)
!2164 = distinct !DISubprogram(name: "cpp_unassert", scope: !3, file: !3, line: 2381, type: !464, scopeLine: 2382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2165)
!2165 = !{!2166, !2167}
!2166 = !DILocalVariable(name: "pfile", arg: 1, scope: !2164, file: !3, line: 2381, type: !258)
!2167 = !DILocalVariable(name: "str", arg: 2, scope: !2164, file: !3, line: 2381, type: !201)
!2168 = !DILocation(line: 0, scope: !2164)
!2169 = !DILocation(line: 2383, column: 3, scope: !2164)
!2170 = !DILocation(line: 2384, column: 1, scope: !2164)
!2171 = distinct !DISubprogram(name: "cpp_get_options", scope: !3, file: !3, line: 2411, type: !2172, scopeLine: 2412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2176)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!2174, !258}
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_options", file: !6, line: 33, baseType: !557)
!2176 = !{!2177}
!2177 = !DILocalVariable(name: "pfile", arg: 1, scope: !2171, file: !3, line: 2411, type: !258)
!2178 = !DILocation(line: 0, scope: !2171)
!2179 = !DILocation(line: 2413, column: 18, scope: !2171)
!2180 = !DILocation(line: 2413, column: 3, scope: !2171)
!2181 = distinct !DISubprogram(name: "cpp_get_callbacks", scope: !3, file: !3, line: 2418, type: !2182, scopeLine: 2419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2186)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!2184, !258}
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_callbacks", file: !6, line: 38, baseType: !450)
!2186 = !{!2187}
!2187 = !DILocalVariable(name: "pfile", arg: 1, scope: !2181, file: !3, line: 2418, type: !258)
!2188 = !DILocation(line: 0, scope: !2181)
!2189 = !DILocation(line: 2420, column: 18, scope: !2181)
!2190 = !DILocation(line: 2420, column: 3, scope: !2181)
!2191 = distinct !DISubprogram(name: "cpp_set_callbacks", scope: !3, file: !3, line: 2425, type: !2192, scopeLine: 2426, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2194)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{null, !258, !2184}
!2194 = !{!2195, !2196}
!2195 = !DILocalVariable(name: "pfile", arg: 1, scope: !2191, file: !3, line: 2425, type: !258)
!2196 = !DILocalVariable(name: "cb", arg: 2, scope: !2191, file: !3, line: 2425, type: !2184)
!2197 = !DILocation(line: 0, scope: !2191)
!2198 = !DILocation(line: 2427, column: 10, scope: !2191)
!2199 = !DILocation(line: 2427, column: 15, scope: !2191)
!2200 = !DILocation(line: 2428, column: 1, scope: !2191)
!2201 = distinct !DISubprogram(name: "cpp_get_deps", scope: !3, file: !3, line: 2432, type: !2202, scopeLine: 2433, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2204)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!444, !258}
!2204 = !{!2205}
!2205 = !DILocalVariable(name: "pfile", arg: 1, scope: !2201, file: !3, line: 2432, type: !258)
!2206 = !DILocation(line: 0, scope: !2201)
!2207 = !DILocation(line: 2434, column: 15, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 2434, column: 7)
!2209 = !DILocation(line: 2434, column: 8, scope: !2208)
!2210 = !DILocation(line: 2434, column: 7, scope: !2201)
!2211 = !DILocation(line: 2435, column: 19, scope: !2208)
!2212 = !DILocation(line: 2435, column: 17, scope: !2208)
!2213 = !DILocation(line: 2435, column: 5, scope: !2208)
!2214 = !DILocation(line: 2436, column: 17, scope: !2201)
!2215 = !DILocation(line: 2436, column: 3, scope: !2201)
!2216 = distinct !DISubprogram(name: "cpp_push_buffer", scope: !3, file: !3, line: 2443, type: !2217, scopeLine: 2445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2219)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!64, !258, !361, !228, !183}
!2219 = !{!2220, !2221, !2222, !2223, !2224}
!2220 = !DILocalVariable(name: "pfile", arg: 1, scope: !2216, file: !3, line: 2443, type: !258)
!2221 = !DILocalVariable(name: "buffer", arg: 2, scope: !2216, file: !3, line: 2443, type: !361)
!2222 = !DILocalVariable(name: "len", arg: 3, scope: !2216, file: !3, line: 2443, type: !228)
!2223 = !DILocalVariable(name: "from_stage3", arg: 4, scope: !2216, file: !3, line: 2444, type: !183)
!2224 = !DILocalVariable(name: "new_buffer", scope: !2216, file: !3, line: 2446, type: !64)
!2225 = !DILocation(line: 0, scope: !2216)
!2226 = !DILocation(line: 2446, column: 28, scope: !2216)
!2227 = !DILocation(line: 2449, column: 3, scope: !2216)
!2228 = !DILocation(line: 2451, column: 39, scope: !2216)
!2229 = !DILocation(line: 2451, column: 43, scope: !2216)
!2230 = !DILocation(line: 2451, column: 15, scope: !2216)
!2231 = !DILocation(line: 2451, column: 25, scope: !2216)
!2232 = !DILocation(line: 2452, column: 31, scope: !2216)
!2233 = !DILocation(line: 2452, column: 15, scope: !2216)
!2234 = !DILocation(line: 2452, column: 22, scope: !2216)
!2235 = !DILocation(line: 2453, column: 15, scope: !2216)
!2236 = !DILocation(line: 2453, column: 27, scope: !2216)
!2237 = !DILocation(line: 2454, column: 29, scope: !2216)
!2238 = !DILocation(line: 2454, column: 15, scope: !2216)
!2239 = !DILocation(line: 2454, column: 20, scope: !2216)
!2240 = !DILocation(line: 2455, column: 15, scope: !2216)
!2241 = !DILocation(line: 2455, column: 25, scope: !2216)
!2242 = !DILocation(line: 2457, column: 17, scope: !2216)
!2243 = !DILocation(line: 2459, column: 3, scope: !2216)
!2244 = distinct !DISubprogram(name: "_cpp_pop_buffer", scope: !3, file: !3, line: 2465, type: !256, scopeLine: 2466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2245)
!2245 = !{!2246, !2247, !2248, !2249}
!2246 = !DILocalVariable(name: "pfile", arg: 1, scope: !2244, file: !3, line: 2465, type: !258)
!2247 = !DILocalVariable(name: "buffer", scope: !2244, file: !3, line: 2467, type: !64)
!2248 = !DILocalVariable(name: "inc", scope: !2244, file: !3, line: 2468, type: !86)
!2249 = !DILocalVariable(name: "ifs", scope: !2244, file: !3, line: 2469, type: !90)
!2250 = !DILocation(line: 0, scope: !2244)
!2251 = !DILocation(line: 2467, column: 31, scope: !2244)
!2252 = !DILocation(line: 2468, column: 35, scope: !2244)
!2253 = !DILocation(line: 2473, column: 22, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 2473, column: 3)
!2255 = !DILocation(line: 2473, column: 8, scope: !2254)
!2256 = !DILocation(line: 0, scope: !2254)
!2257 = !DILocation(line: 2473, column: 3, scope: !2254)
!2258 = !DILocation(line: 2474, column: 52, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 2473, column: 3)
!2260 = !DILocation(line: 2475, column: 37, scope: !2259)
!2261 = !DILocation(line: 2475, column: 25, scope: !2259)
!2262 = !DILocation(line: 2475, column: 43, scope: !2259)
!2263 = !DILocation(line: 2474, column: 5, scope: !2259)
!2264 = !DILocation(line: 2473, column: 48, scope: !2259)
!2265 = !DILocation(line: 2473, column: 3, scope: !2259)
!2266 = distinct !{!2266, !2257, !2267}
!2267 = !DILocation(line: 2475, column: 47, scope: !2254)
!2268 = !DILocation(line: 2478, column: 16, scope: !2244)
!2269 = !DILocation(line: 2478, column: 25, scope: !2244)
!2270 = !DILocation(line: 2481, column: 27, scope: !2244)
!2271 = !DILocation(line: 2481, column: 17, scope: !2244)
!2272 = !DILocation(line: 2483, column: 17, scope: !2244)
!2273 = !DILocation(line: 2483, column: 3, scope: !2244)
!2274 = !DILocation(line: 2487, column: 3, scope: !2244)
!2275 = !DILocation(line: 2489, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 2489, column: 7)
!2277 = !DILocation(line: 2489, column: 7, scope: !2244)
!2278 = !DILocation(line: 2491, column: 7, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 2490, column: 5)
!2280 = !DILocation(line: 2493, column: 7, scope: !2279)
!2281 = !DILocation(line: 2494, column: 5, scope: !2279)
!2282 = !DILocation(line: 2495, column: 1, scope: !2244)
!2283 = distinct !DISubprogram(name: "_cpp_init_directives", scope: !3, file: !3, line: 2499, type: !256, scopeLine: 2500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2284)
!2284 = !{!2285, !2286, !2287}
!2285 = !DILocalVariable(name: "pfile", arg: 1, scope: !2283, file: !3, line: 2499, type: !258)
!2286 = !DILocalVariable(name: "i", scope: !2283, file: !3, line: 2501, type: !7)
!2287 = !DILocalVariable(name: "node", scope: !2283, file: !3, line: 2502, type: !125)
!2288 = !DILocation(line: 0, scope: !2283)
!2289 = !DILocation(line: 2504, column: 8, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 2504, column: 3)
!2291 = !DILocation(line: 0, scope: !2290)
!2292 = !DILocation(line: 2504, column: 17, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 2504, column: 3)
!2294 = !DILocation(line: 2504, column: 3, scope: !2290)
!2295 = !DILocation(line: 2506, column: 43, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 2505, column: 5)
!2297 = !DILocation(line: 2506, column: 59, scope: !2296)
!2298 = !DILocation(line: 2506, column: 49, scope: !2296)
!2299 = !DILocation(line: 2506, column: 14, scope: !2296)
!2300 = !DILocation(line: 2508, column: 13, scope: !2296)
!2301 = !DILocation(line: 2508, column: 29, scope: !2296)
!2302 = !DILocation(line: 2504, column: 49, scope: !2293)
!2303 = !DILocation(line: 2504, column: 3, scope: !2293)
!2304 = distinct !{!2304, !2294, !2305}
!2305 = !DILocation(line: 2509, column: 5, scope: !2290)
!2306 = !DILocation(line: 2510, column: 1, scope: !2283)
!2307 = distinct !DISubprogram(name: "do_define", scope: !3, file: !3, line: 568, type: !256, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2308)
!2308 = !{!2309, !2310}
!2309 = !DILocalVariable(name: "pfile", arg: 1, scope: !2307, file: !3, line: 568, type: !258)
!2310 = !DILocalVariable(name: "node", scope: !2307, file: !3, line: 570, type: !125)
!2311 = !DILocation(line: 0, scope: !2307)
!2312 = !DILocation(line: 570, column: 24, scope: !2307)
!2313 = !DILocation(line: 572, column: 7, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 572, column: 7)
!2315 = !DILocation(line: 572, column: 7, scope: !2307)
!2316 = !DILocation(line: 577, column: 4, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 573, column: 5)
!2318 = !DILocation(line: 577, column: 2, scope: !2317)
!2319 = !DILocation(line: 576, column: 20, scope: !2317)
!2320 = !DILocation(line: 576, column: 34, scope: !2317)
!2321 = !DILocation(line: 579, column: 21, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 579, column: 11)
!2323 = !DILocation(line: 579, column: 11, scope: !2322)
!2324 = !DILocation(line: 579, column: 11, scope: !2317)
!2325 = !DILocation(line: 580, column: 2, scope: !2322)
!2326 = !DILocation(line: 582, column: 11, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 582, column: 11)
!2328 = !DILocation(line: 582, column: 11, scope: !2317)
!2329 = !DILocation(line: 583, column: 16, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 583, column: 6)
!2331 = !DILocation(line: 583, column: 6, scope: !2330)
!2332 = !DILocation(line: 583, column: 6, scope: !2327)
!2333 = !DILocation(line: 584, column: 36, scope: !2330)
!2334 = !DILocation(line: 584, column: 4, scope: !2330)
!2335 = !DILocation(line: 586, column: 13, scope: !2317)
!2336 = !DILocation(line: 586, column: 19, scope: !2317)
!2337 = !DILocation(line: 587, column: 5, scope: !2317)
!2338 = !DILocation(line: 588, column: 1, scope: !2307)
!2339 = distinct !DISubprogram(name: "do_include", scope: !3, file: !3, line: 800, type: !256, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2340)
!2340 = !{!2341}
!2341 = !DILocalVariable(name: "pfile", arg: 1, scope: !2339, file: !3, line: 800, type: !258)
!2342 = !DILocation(line: 0, scope: !2339)
!2343 = !DILocation(line: 802, column: 3, scope: !2339)
!2344 = !DILocation(line: 803, column: 1, scope: !2339)
!2345 = distinct !DISubprogram(name: "do_endif", scope: !3, file: !3, line: 1955, type: !256, scopeLine: 1956, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2346)
!2346 = !{!2347, !2348, !2349}
!2347 = !DILocalVariable(name: "pfile", arg: 1, scope: !2345, file: !3, line: 1955, type: !258)
!2348 = !DILocalVariable(name: "buffer", scope: !2345, file: !3, line: 1957, type: !64)
!2349 = !DILocalVariable(name: "ifs", scope: !2345, file: !3, line: 1958, type: !90)
!2350 = !DILocation(line: 0, scope: !2345)
!2351 = !DILocation(line: 1957, column: 31, scope: !2345)
!2352 = !DILocation(line: 1958, column: 34, scope: !2345)
!2353 = !DILocation(line: 1960, column: 11, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 1960, column: 7)
!2355 = !DILocation(line: 1960, column: 7, scope: !2345)
!2356 = !DILocation(line: 1961, column: 5, scope: !2354)
!2357 = !DILocation(line: 1965, column: 17, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 1965, column: 11)
!2359 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 1963, column: 5)
!2360 = !DILocation(line: 1965, column: 12, scope: !2358)
!2361 = !DILocation(line: 1965, column: 30, scope: !2358)
!2362 = !DILocation(line: 1965, column: 33, scope: !2358)
!2363 = !DILocation(line: 1965, column: 11, scope: !2359)
!2364 = !DILocation(line: 1966, column: 2, scope: !2358)
!2365 = !DILocation(line: 1969, column: 16, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2359, file: !3, line: 1969, column: 11)
!2367 = !DILocation(line: 1969, column: 21, scope: !2366)
!2368 = !DILocation(line: 1969, column: 26, scope: !2366)
!2369 = !DILocation(line: 1969, column: 34, scope: !2366)
!2370 = !DILocation(line: 1969, column: 29, scope: !2366)
!2371 = !DILocation(line: 1969, column: 11, scope: !2359)
!2372 = !DILocation(line: 1971, column: 11, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 1970, column: 2)
!2374 = !DILocation(line: 1971, column: 20, scope: !2373)
!2375 = !DILocation(line: 1972, column: 28, scope: !2373)
!2376 = !DILocation(line: 1972, column: 11, scope: !2373)
!2377 = !DILocation(line: 1972, column: 21, scope: !2373)
!2378 = !DILocation(line: 0, scope: !2359)
!2379 = !DILocation(line: 1975, column: 31, scope: !2359)
!2380 = !DILocation(line: 1973, column: 2, scope: !2373)
!2381 = !DILocation(line: 1975, column: 24, scope: !2359)
!2382 = !DILocation(line: 1976, column: 36, scope: !2359)
!2383 = !DILocation(line: 1976, column: 20, scope: !2359)
!2384 = !DILocation(line: 1976, column: 29, scope: !2359)
!2385 = !DILocation(line: 1977, column: 7, scope: !2359)
!2386 = !DILocation(line: 1979, column: 1, scope: !2345)
!2387 = distinct !DISubprogram(name: "do_ifdef", scope: !3, file: !3, line: 1786, type: !256, scopeLine: 1787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2388)
!2388 = !{!2389, !2390, !2391}
!2389 = !DILocalVariable(name: "pfile", arg: 1, scope: !2387, file: !3, line: 1786, type: !258)
!2390 = !DILocalVariable(name: "skip", scope: !2387, file: !3, line: 1788, type: !183)
!2391 = !DILocalVariable(name: "node", scope: !2392, file: !3, line: 1792, type: !125)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1791, column: 5)
!2393 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 1790, column: 7)
!2394 = !DILocation(line: 0, scope: !2387)
!2395 = !DILocation(line: 1790, column: 22, scope: !2393)
!2396 = !DILocation(line: 1790, column: 9, scope: !2393)
!2397 = !DILocation(line: 1790, column: 7, scope: !2387)
!2398 = !DILocation(line: 1792, column: 28, scope: !2392)
!2399 = !DILocation(line: 0, scope: !2392)
!2400 = !DILocation(line: 1794, column: 11, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1794, column: 11)
!2402 = !DILocation(line: 1794, column: 11, scope: !2392)
!2403 = !DILocation(line: 1796, column: 17, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 1795, column: 2)
!2405 = !DILocation(line: 1796, column: 22, scope: !2404)
!2406 = !DILocation(line: 1797, column: 4, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 1797, column: 4)
!2408 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 1797, column: 4)
!2409 = !DILocation(line: 1797, column: 4, scope: !2408)
!2410 = !DILocation(line: 1798, column: 16, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 1798, column: 8)
!2412 = !DILocation(line: 1798, column: 22, scope: !2411)
!2413 = !DILocation(line: 1798, column: 8, scope: !2404)
!2414 = !DILocation(line: 1800, column: 20, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 1799, column: 6)
!2416 = !DILocation(line: 1801, column: 23, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 1801, column: 12)
!2418 = !DILocation(line: 1801, column: 12, scope: !2415)
!2419 = !DILocation(line: 1803, column: 19, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 1803, column: 9)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1802, column: 3)
!2422 = !DILocation(line: 1803, column: 9, scope: !2420)
!2423 = !DILocation(line: 1803, column: 9, scope: !2421)
!2424 = !DILocation(line: 1804, column: 44, scope: !2420)
!2425 = !DILocation(line: 1804, column: 7, scope: !2420)
!2426 = !DILocation(line: 1808, column: 19, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 1808, column: 9)
!2428 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1807, column: 3)
!2429 = !DILocation(line: 1808, column: 9, scope: !2427)
!2430 = !DILocation(line: 1808, column: 9, scope: !2428)
!2431 = !DILocation(line: 1809, column: 43, scope: !2427)
!2432 = !DILocation(line: 1809, column: 7, scope: !2427)
!2433 = !DILocation(line: 1812, column: 18, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 1812, column: 8)
!2435 = !DILocation(line: 1812, column: 8, scope: !2434)
!2436 = !DILocation(line: 1812, column: 8, scope: !2404)
!2437 = !DILocation(line: 1813, column: 36, scope: !2434)
!2438 = !DILocation(line: 1813, column: 6, scope: !2434)
!2439 = !DILocation(line: 1814, column: 4, scope: !2404)
!2440 = !DILocation(line: 1815, column: 2, scope: !2404)
!2441 = !DILocation(line: 1818, column: 3, scope: !2387)
!2442 = !DILocation(line: 1819, column: 1, scope: !2387)
!2443 = distinct !DISubprogram(name: "do_if", scope: !3, file: !3, line: 1865, type: !256, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2444)
!2444 = !{!2445, !2446}
!2445 = !DILocalVariable(name: "pfile", arg: 1, scope: !2443, file: !3, line: 1865, type: !258)
!2446 = !DILocalVariable(name: "skip", scope: !2443, file: !3, line: 1867, type: !183)
!2447 = !DILocation(line: 0, scope: !2443)
!2448 = !DILocation(line: 1869, column: 22, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 1869, column: 7)
!2450 = !DILocation(line: 1869, column: 9, scope: !2449)
!2451 = !DILocation(line: 1869, column: 7, scope: !2443)
!2452 = !DILocation(line: 1870, column: 12, scope: !2449)
!2453 = !DILocation(line: 1870, column: 42, scope: !2449)
!2454 = !DILocation(line: 1870, column: 5, scope: !2449)
!2455 = !DILocation(line: 1872, column: 47, scope: !2443)
!2456 = !DILocation(line: 1872, column: 3, scope: !2443)
!2457 = !DILocation(line: 1873, column: 1, scope: !2443)
!2458 = distinct !DISubprogram(name: "do_else", scope: !3, file: !3, line: 1879, type: !256, scopeLine: 1880, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2459)
!2459 = !{!2460, !2461, !2462}
!2460 = !DILocalVariable(name: "pfile", arg: 1, scope: !2458, file: !3, line: 1879, type: !258)
!2461 = !DILocalVariable(name: "buffer", scope: !2458, file: !3, line: 1881, type: !64)
!2462 = !DILocalVariable(name: "ifs", scope: !2458, file: !3, line: 1882, type: !90)
!2463 = !DILocation(line: 0, scope: !2458)
!2464 = !DILocation(line: 1881, column: 31, scope: !2458)
!2465 = !DILocation(line: 1882, column: 34, scope: !2458)
!2466 = !DILocation(line: 1884, column: 11, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 1884, column: 7)
!2468 = !DILocation(line: 1884, column: 7, scope: !2458)
!2469 = !DILocation(line: 1885, column: 5, scope: !2467)
!2470 = !DILocation(line: 1888, column: 16, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 1888, column: 11)
!2472 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 1887, column: 5)
!2473 = !DILocation(line: 1888, column: 21, scope: !2471)
!2474 = !DILocation(line: 1888, column: 11, scope: !2472)
!2475 = !DILocation(line: 1890, column: 4, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 1889, column: 2)
!2477 = !DILocation(line: 1891, column: 51, scope: !2476)
!2478 = !DILocation(line: 1891, column: 4, scope: !2476)
!2479 = !DILocation(line: 1893, column: 2, scope: !2476)
!2480 = !DILocation(line: 1894, column: 17, scope: !2472)
!2481 = !DILocation(line: 1897, column: 36, scope: !2472)
!2482 = !DILocation(line: 1897, column: 20, scope: !2472)
!2483 = !DILocation(line: 1897, column: 29, scope: !2472)
!2484 = !DILocation(line: 1898, column: 23, scope: !2472)
!2485 = !DILocation(line: 1901, column: 12, scope: !2472)
!2486 = !DILocation(line: 1901, column: 22, scope: !2472)
!2487 = !DILocation(line: 1904, column: 17, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 1904, column: 11)
!2489 = !DILocation(line: 1904, column: 12, scope: !2488)
!2490 = !DILocation(line: 1904, column: 30, scope: !2488)
!2491 = !DILocation(line: 1904, column: 33, scope: !2488)
!2492 = !DILocation(line: 1904, column: 11, scope: !2472)
!2493 = !DILocation(line: 1905, column: 2, scope: !2488)
!2494 = !DILocation(line: 1907, column: 1, scope: !2458)
!2495 = distinct !DISubprogram(name: "do_ifndef", scope: !3, file: !3, line: 1823, type: !256, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2496)
!2496 = !{!2497, !2498, !2499}
!2497 = !DILocalVariable(name: "pfile", arg: 1, scope: !2495, file: !3, line: 1823, type: !258)
!2498 = !DILocalVariable(name: "skip", scope: !2495, file: !3, line: 1825, type: !183)
!2499 = !DILocalVariable(name: "node", scope: !2495, file: !3, line: 1826, type: !125)
!2500 = !DILocation(line: 0, scope: !2495)
!2501 = !DILocation(line: 1828, column: 22, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 1828, column: 7)
!2503 = !DILocation(line: 1828, column: 9, scope: !2502)
!2504 = !DILocation(line: 1828, column: 7, scope: !2495)
!2505 = !DILocation(line: 1830, column: 14, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 1829, column: 5)
!2507 = !DILocation(line: 1832, column: 11, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 1832, column: 11)
!2509 = !DILocation(line: 1832, column: 11, scope: !2506)
!2510 = !DILocation(line: 1834, column: 17, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 1833, column: 2)
!2512 = !DILocation(line: 1834, column: 22, scope: !2511)
!2513 = !DILocation(line: 1835, column: 4, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1835, column: 4)
!2515 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 1835, column: 4)
!2516 = !DILocation(line: 1835, column: 4, scope: !2515)
!2517 = !DILocation(line: 1836, column: 16, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 1836, column: 8)
!2519 = !DILocation(line: 1836, column: 22, scope: !2518)
!2520 = !DILocation(line: 1836, column: 8, scope: !2511)
!2521 = !DILocation(line: 1838, column: 20, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 1837, column: 6)
!2523 = !DILocation(line: 1839, column: 23, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 1839, column: 12)
!2525 = !DILocation(line: 1839, column: 12, scope: !2522)
!2526 = !DILocation(line: 1841, column: 19, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 1841, column: 9)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 1840, column: 3)
!2529 = !DILocation(line: 1841, column: 9, scope: !2527)
!2530 = !DILocation(line: 1841, column: 9, scope: !2528)
!2531 = !DILocation(line: 1842, column: 44, scope: !2527)
!2532 = !DILocation(line: 1842, column: 7, scope: !2527)
!2533 = !DILocation(line: 1846, column: 19, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1846, column: 9)
!2535 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 1845, column: 3)
!2536 = !DILocation(line: 1846, column: 9, scope: !2534)
!2537 = !DILocation(line: 1846, column: 9, scope: !2535)
!2538 = !DILocation(line: 1847, column: 43, scope: !2534)
!2539 = !DILocation(line: 1847, column: 7, scope: !2534)
!2540 = !DILocation(line: 1850, column: 18, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 1850, column: 8)
!2542 = !DILocation(line: 1850, column: 8, scope: !2541)
!2543 = !DILocation(line: 1850, column: 8, scope: !2511)
!2544 = !DILocation(line: 1851, column: 36, scope: !2541)
!2545 = !DILocation(line: 1851, column: 6, scope: !2541)
!2546 = !DILocation(line: 1852, column: 4, scope: !2511)
!2547 = !DILocation(line: 1853, column: 2, scope: !2511)
!2548 = !DILocation(line: 1856, column: 3, scope: !2495)
!2549 = !DILocation(line: 1857, column: 1, scope: !2495)
!2550 = distinct !DISubprogram(name: "do_undef", scope: !3, file: !3, line: 592, type: !256, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2551)
!2551 = !{!2552, !2553}
!2552 = !DILocalVariable(name: "pfile", arg: 1, scope: !2550, file: !3, line: 592, type: !258)
!2553 = !DILocalVariable(name: "node", scope: !2550, file: !3, line: 594, type: !125)
!2554 = !DILocation(line: 0, scope: !2550)
!2555 = !DILocation(line: 594, column: 24, scope: !2550)
!2556 = !DILocation(line: 596, column: 7, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 596, column: 7)
!2558 = !DILocation(line: 596, column: 7, scope: !2550)
!2559 = !DILocation(line: 598, column: 21, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 598, column: 11)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 597, column: 5)
!2562 = !DILocation(line: 598, column: 11, scope: !2560)
!2563 = !DILocation(line: 598, column: 11, scope: !2561)
!2564 = !DILocation(line: 599, column: 2, scope: !2560)
!2565 = !DILocation(line: 601, column: 21, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 601, column: 11)
!2567 = !DILocation(line: 601, column: 11, scope: !2566)
!2568 = !DILocation(line: 601, column: 11, scope: !2561)
!2569 = !DILocation(line: 602, column: 33, scope: !2566)
!2570 = !DILocation(line: 602, column: 2, scope: !2566)
!2571 = !DILocation(line: 606, column: 17, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 606, column: 11)
!2573 = !DILocation(line: 606, column: 22, scope: !2572)
!2574 = !DILocation(line: 606, column: 11, scope: !2561)
!2575 = !DILocation(line: 608, column: 20, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 608, column: 8)
!2577 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 607, column: 2)
!2578 = !DILocation(line: 608, column: 8, scope: !2577)
!2579 = !DILocation(line: 610, column: 31, scope: !2576)
!2580 = !DILocation(line: 609, column: 6, scope: !2576)
!2581 = !DILocation(line: 612, column: 8, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 612, column: 8)
!2583 = !DILocation(line: 612, column: 8, scope: !2577)
!2584 = !DILocation(line: 613, column: 6, scope: !2582)
!2585 = !DILocation(line: 615, column: 4, scope: !2577)
!2586 = !DILocation(line: 616, column: 2, scope: !2577)
!2587 = !DILocation(line: 619, column: 3, scope: !2550)
!2588 = !DILocation(line: 620, column: 1, scope: !2550)
!2589 = distinct !DISubprogram(name: "do_line", scope: !3, file: !3, line: 883, type: !256, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2590)
!2590 = !{!2591, !2592, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602}
!2591 = !DILocalVariable(name: "pfile", arg: 1, scope: !2589, file: !3, line: 883, type: !258)
!2592 = !DILocalVariable(name: "line_table", scope: !2589, file: !3, line: 885, type: !2593)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!2595 = !DILocalVariable(name: "map", scope: !2589, file: !3, line: 886, type: !460)
!2596 = !DILocalVariable(name: "map_sysp", scope: !2589, file: !3, line: 891, type: !63)
!2597 = !DILocalVariable(name: "token", scope: !2589, file: !3, line: 892, type: !239)
!2598 = !DILocalVariable(name: "new_file", scope: !2589, file: !3, line: 893, type: !201)
!2599 = !DILocalVariable(name: "new_lineno", scope: !2589, file: !3, line: 894, type: !95)
!2600 = !DILocalVariable(name: "cap", scope: !2589, file: !3, line: 897, type: !95)
!2601 = !DILocalVariable(name: "wrapped", scope: !2589, file: !3, line: 898, type: !63)
!2602 = !DILocalVariable(name: "s", scope: !2603, file: !3, line: 923, type: !481)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 922, column: 5)
!2604 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 921, column: 7)
!2605 = !DILocation(line: 0, scope: !2589)
!2606 = !DILocation(line: 885, column: 47, scope: !2589)
!2607 = !DILocation(line: 886, column: 45, scope: !2589)
!2608 = !DILocation(line: 886, column: 62, scope: !2589)
!2609 = !DILocation(line: 886, column: 67, scope: !2589)
!2610 = !DILocation(line: 886, column: 33, scope: !2589)
!2611 = !DILocation(line: 891, column: 33, scope: !2589)
!2612 = !DILocation(line: 893, column: 31, scope: !2589)
!2613 = !DILocation(line: 894, column: 3, scope: !2589)
!2614 = !DILocation(line: 897, column: 22, scope: !2589)
!2615 = !DILocation(line: 898, column: 3, scope: !2589)
!2616 = !DILocation(line: 901, column: 11, scope: !2589)
!2617 = !DILocation(line: 902, column: 14, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 902, column: 7)
!2619 = !DILocation(line: 902, column: 19, scope: !2618)
!2620 = !DILocation(line: 903, column: 7, scope: !2618)
!2621 = !DILocation(line: 903, column: 39, scope: !2618)
!2622 = !DILocation(line: 903, column: 60, scope: !2618)
!2623 = !DILocation(line: 903, column: 45, scope: !2618)
!2624 = !DILocation(line: 903, column: 10, scope: !2618)
!2625 = !DILocation(line: 902, column: 7, scope: !2589)
!2626 = !DILocation(line: 906, column: 18, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 906, column: 11)
!2628 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 905, column: 5)
!2629 = !DILocation(line: 906, column: 23, scope: !2627)
!2630 = !DILocation(line: 906, column: 11, scope: !2628)
!2631 = !DILocation(line: 907, column: 2, scope: !2627)
!2632 = !DILocation(line: 911, column: 6, scope: !2627)
!2633 = !DILocation(line: 909, column: 2, scope: !2627)
!2634 = !DILocation(line: 915, column: 7, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 915, column: 7)
!2636 = !DILocation(line: 915, column: 28, scope: !2635)
!2637 = !DILocation(line: 917, column: 12, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 917, column: 12)
!2639 = !DILocation(line: 915, column: 32, scope: !2635)
!2640 = !DILocation(line: 915, column: 48, scope: !2635)
!2641 = !DILocation(line: 915, column: 71, scope: !2635)
!2642 = !DILocation(line: 915, column: 7, scope: !2589)
!2643 = !DILocation(line: 916, column: 5, scope: !2635)
!2644 = !DILocation(line: 917, column: 12, scope: !2635)
!2645 = !DILocation(line: 918, column: 5, scope: !2638)
!2646 = !DILocation(line: 920, column: 11, scope: !2589)
!2647 = !DILocation(line: 921, column: 14, scope: !2604)
!2648 = !DILocation(line: 921, column: 19, scope: !2604)
!2649 = !DILocation(line: 921, column: 7, scope: !2589)
!2650 = !DILocation(line: 923, column: 7, scope: !2603)
!2651 = !DILocation(line: 923, column: 18, scope: !2603)
!2652 = !DILocation(line: 924, column: 64, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 924, column: 11)
!2654 = !DILocation(line: 0, scope: !2603)
!2655 = !DILocation(line: 924, column: 11, scope: !2653)
!2656 = !DILocation(line: 924, column: 11, scope: !2603)
!2657 = !DILocation(line: 927, column: 7, scope: !2603)
!2658 = !DILocation(line: 928, column: 5, scope: !2604)
!2659 = !DILocation(line: 928, column: 5, scope: !2603)
!2660 = !DILocation(line: 929, column: 24, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 929, column: 12)
!2662 = !DILocation(line: 929, column: 12, scope: !2604)
!2663 = !DILocation(line: 932, column: 4, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 930, column: 5)
!2665 = !DILocation(line: 931, column: 7, scope: !2664)
!2666 = !DILocation(line: 933, column: 7, scope: !2664)
!2667 = !DILocation(line: 936, column: 3, scope: !2589)
!2668 = !DILocation(line: 937, column: 61, scope: !2589)
!2669 = !DILocation(line: 938, column: 10, scope: !2589)
!2670 = !DILocation(line: 937, column: 3, scope: !2589)
!2671 = !DILocation(line: 939, column: 1, scope: !2589)
!2672 = distinct !DISubprogram(name: "do_elif", scope: !3, file: !3, line: 1912, type: !256, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2673)
!2673 = !{!2674, !2675, !2676, !2677}
!2674 = !DILocalVariable(name: "pfile", arg: 1, scope: !2672, file: !3, line: 1912, type: !258)
!2675 = !DILocalVariable(name: "buffer", scope: !2672, file: !3, line: 1914, type: !64)
!2676 = !DILocalVariable(name: "ifs", scope: !2672, file: !3, line: 1915, type: !90)
!2677 = !DILocalVariable(name: "value", scope: !2678, file: !3, line: 1931, type: !63)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 1930, column: 2)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 1929, column: 11)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 1920, column: 5)
!2681 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 1917, column: 7)
!2682 = !DILocation(line: 0, scope: !2672)
!2683 = !DILocation(line: 1914, column: 31, scope: !2672)
!2684 = !DILocation(line: 1915, column: 34, scope: !2672)
!2685 = !DILocation(line: 1917, column: 11, scope: !2681)
!2686 = !DILocation(line: 1917, column: 7, scope: !2672)
!2687 = !DILocation(line: 1918, column: 5, scope: !2681)
!2688 = !DILocation(line: 1921, column: 16, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 1921, column: 11)
!2690 = !DILocation(line: 1921, column: 21, scope: !2689)
!2691 = !DILocation(line: 1921, column: 11, scope: !2680)
!2692 = !DILocation(line: 1923, column: 4, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 1922, column: 2)
!2694 = !DILocation(line: 1924, column: 51, scope: !2693)
!2695 = !DILocation(line: 1924, column: 4, scope: !2693)
!2696 = !DILocation(line: 1926, column: 2, scope: !2693)
!2697 = !DILocation(line: 1927, column: 17, scope: !2680)
!2698 = !DILocation(line: 1929, column: 18, scope: !2679)
!2699 = !DILocation(line: 1929, column: 13, scope: !2679)
!2700 = !DILocation(line: 1929, column: 11, scope: !2680)
!2701 = !DILocation(line: 1937, column: 17, scope: !2678)
!2702 = !DILocation(line: 1937, column: 26, scope: !2678)
!2703 = !DILocation(line: 1938, column: 12, scope: !2678)
!2704 = !DILocation(line: 0, scope: !2678)
!2705 = !DILocation(line: 1939, column: 13, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 1939, column: 8)
!2707 = !DILocation(line: 1939, column: 8, scope: !2706)
!2708 = !DILocation(line: 1939, column: 8, scope: !2678)
!2709 = !DILocation(line: 1940, column: 28, scope: !2706)
!2710 = !DILocation(line: 1940, column: 6, scope: !2706)
!2711 = !DILocation(line: 1943, column: 32, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1942, column: 6)
!2713 = !DILocation(line: 1943, column: 30, scope: !2712)
!2714 = !DILocation(line: 1944, column: 24, scope: !2712)
!2715 = !DILocation(line: 1949, column: 12, scope: !2680)
!2716 = !DILocation(line: 1949, column: 22, scope: !2680)
!2717 = !DILocation(line: 1951, column: 1, scope: !2672)
!2718 = distinct !DISubprogram(name: "do_error", scope: !3, file: !3, line: 1068, type: !256, scopeLine: 1069, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2719)
!2719 = !{!2720}
!2720 = !DILocalVariable(name: "pfile", arg: 1, scope: !2718, file: !3, line: 1068, type: !258)
!2721 = !DILocation(line: 0, scope: !2718)
!2722 = !DILocation(line: 1070, column: 3, scope: !2718)
!2723 = !DILocation(line: 1071, column: 1, scope: !2718)
!2724 = distinct !DISubprogram(name: "do_pragma", scope: !3, file: !3, line: 1339, type: !256, scopeLine: 1340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2725)
!2725 = !{!2726, !2727, !2730, !2731, !2732, !2733, !2734, !2739}
!2726 = !DILocalVariable(name: "pfile", arg: 1, scope: !2724, file: !3, line: 1339, type: !258)
!2727 = !DILocalVariable(name: "p", scope: !2724, file: !3, line: 1341, type: !2728)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!2730 = !DILocalVariable(name: "token", scope: !2724, file: !3, line: 1342, type: !239)
!2731 = !DILocalVariable(name: "pragma_token", scope: !2724, file: !3, line: 1342, type: !239)
!2732 = !DILocalVariable(name: "ns_token", scope: !2724, file: !3, line: 1343, type: !131)
!2733 = !DILocalVariable(name: "count", scope: !2724, file: !3, line: 1344, type: !7)
!2734 = !DILocalVariable(name: "allow_name_expansion", scope: !2735, file: !3, line: 1355, type: !63)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1354, column: 2)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 1353, column: 11)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 1351, column: 5)
!2738 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 1350, column: 7)
!2739 = !DILocalVariable(name: "toks", scope: !2740, file: !3, line: 1407, type: !130)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1401, column: 2)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !3, line: 1398, column: 11)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 1397, column: 5)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1396, column: 12)
!2744 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 1369, column: 7)
!2745 = !DILocation(line: 0, scope: !2724)
!2746 = !DILocation(line: 1342, column: 50, scope: !2724)
!2747 = !DILocation(line: 1343, column: 3, scope: !2724)
!2748 = !DILocation(line: 1346, column: 16, scope: !2724)
!2749 = !DILocation(line: 1346, column: 33, scope: !2724)
!2750 = !DILocation(line: 1348, column: 11, scope: !2724)
!2751 = !DILocation(line: 1349, column: 14, scope: !2724)
!2752 = !DILocation(line: 1350, column: 14, scope: !2738)
!2753 = !DILocation(line: 1350, column: 19, scope: !2738)
!2754 = !DILocation(line: 1350, column: 7, scope: !2724)
!2755 = !DILocation(line: 1352, column: 39, scope: !2737)
!2756 = !DILocation(line: 1352, column: 55, scope: !2737)
!2757 = !DILocation(line: 1352, column: 64, scope: !2737)
!2758 = !DILocation(line: 1352, column: 11, scope: !2737)
!2759 = !DILocation(line: 1353, column: 11, scope: !2736)
!2760 = !DILocation(line: 1353, column: 13, scope: !2736)
!2761 = !DILocation(line: 1353, column: 19, scope: !2736)
!2762 = !DILocation(line: 1353, column: 16, scope: !2736)
!2763 = !DILocation(line: 1353, column: 11, scope: !2737)
!2764 = !DILocation(line: 1355, column: 35, scope: !2735)
!2765 = !DILocation(line: 0, scope: !2735)
!2766 = !DILocation(line: 1356, column: 8, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 1356, column: 8)
!2768 = !DILocation(line: 1356, column: 8, scope: !2735)
!2769 = !DILocation(line: 1357, column: 36, scope: !2767)
!2770 = !DILocation(line: 1357, column: 6, scope: !2767)
!2771 = !DILocation(line: 1358, column: 12, scope: !2735)
!2772 = !DILocation(line: 1359, column: 15, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 1359, column: 8)
!2774 = !DILocation(line: 1359, column: 20, scope: !2773)
!2775 = !DILocation(line: 1359, column: 8, scope: !2735)
!2776 = !DILocation(line: 1360, column: 34, scope: !2773)
!2777 = !DILocation(line: 1360, column: 36, scope: !2773)
!2778 = !DILocation(line: 1360, column: 50, scope: !2773)
!2779 = !DILocation(line: 1360, column: 59, scope: !2773)
!2780 = !DILocation(line: 1360, column: 10, scope: !2773)
!2781 = !DILocation(line: 1360, column: 6, scope: !2773)
!2782 = !DILocation(line: 0, scope: !2773)
!2783 = !DILocation(line: 1363, column: 8, scope: !2735)
!2784 = !DILocation(line: 1364, column: 36, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 1363, column: 8)
!2786 = !DILocation(line: 1364, column: 6, scope: !2785)
!2787 = !DILocation(line: 1369, column: 7, scope: !2744)
!2788 = !DILocation(line: 1369, column: 7, scope: !2724)
!2789 = !DILocation(line: 1371, column: 14, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 1371, column: 11)
!2791 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1370, column: 5)
!2792 = !DILocation(line: 1371, column: 11, scope: !2790)
!2793 = !DILocation(line: 1371, column: 11, scope: !2791)
!2794 = !DILocation(line: 1373, column: 52, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 1372, column: 2)
!2796 = !DILocation(line: 1373, column: 28, scope: !2795)
!2797 = !DILocation(line: 1373, column: 36, scope: !2795)
!2798 = !DILocation(line: 1374, column: 28, scope: !2795)
!2799 = !DILocation(line: 1374, column: 33, scope: !2795)
!2800 = !DILocation(line: 1375, column: 50, scope: !2795)
!2801 = !DILocation(line: 1375, column: 28, scope: !2795)
!2802 = !DILocation(line: 1375, column: 34, scope: !2795)
!2803 = !DILocation(line: 1376, column: 44, scope: !2795)
!2804 = !DILocation(line: 1376, column: 46, scope: !2795)
!2805 = !DILocation(line: 1376, column: 32, scope: !2795)
!2806 = !DILocation(line: 1376, column: 39, scope: !2795)
!2807 = !DILocation(line: 1377, column: 17, scope: !2795)
!2808 = !DILocation(line: 1377, column: 36, scope: !2795)
!2809 = !DILocation(line: 1378, column: 45, scope: !2795)
!2810 = !DILocation(line: 1378, column: 17, scope: !2795)
!2811 = !DILocation(line: 1378, column: 40, scope: !2795)
!2812 = !DILocation(line: 1379, column: 12, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 1379, column: 8)
!2814 = !DILocation(line: 1379, column: 9, scope: !2813)
!2815 = !DILocation(line: 1379, column: 8, scope: !2795)
!2816 = !DILocation(line: 1380, column: 36, scope: !2813)
!2817 = !DILocation(line: 1380, column: 6, scope: !2813)
!2818 = !DILocation(line: 1387, column: 18, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 1387, column: 8)
!2820 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 1383, column: 2)
!2821 = !DILocation(line: 1387, column: 8, scope: !2819)
!2822 = !DILocation(line: 1387, column: 8, scope: !2820)
!2823 = !DILocation(line: 1388, column: 6, scope: !2819)
!2824 = !DILocation(line: 1389, column: 11, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 1389, column: 8)
!2826 = !DILocation(line: 1389, column: 8, scope: !2825)
!2827 = !DILocation(line: 1389, column: 8, scope: !2820)
!2828 = !DILocation(line: 1390, column: 36, scope: !2825)
!2829 = !DILocation(line: 1390, column: 6, scope: !2825)
!2830 = !DILocation(line: 1391, column: 11, scope: !2820)
!2831 = !DILocation(line: 1391, column: 4, scope: !2820)
!2832 = !DILocation(line: 1392, column: 11, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 1392, column: 8)
!2834 = !DILocation(line: 1392, column: 8, scope: !2833)
!2835 = !DILocation(line: 1392, column: 8, scope: !2820)
!2836 = !DILocation(line: 1393, column: 36, scope: !2833)
!2837 = !DILocation(line: 1393, column: 6, scope: !2833)
!2838 = !DILocation(line: 1396, column: 22, scope: !2743)
!2839 = !DILocation(line: 1396, column: 12, scope: !2743)
!2840 = !DILocation(line: 1396, column: 12, scope: !2744)
!2841 = !DILocation(line: 1398, column: 17, scope: !2741)
!2842 = !DILocation(line: 1398, column: 22, scope: !2741)
!2843 = !DILocation(line: 1398, column: 32, scope: !2741)
!2844 = !DILocation(line: 1398, column: 41, scope: !2741)
!2845 = !DILocation(line: 1398, column: 46, scope: !2741)
!2846 = !DILocation(line: 1398, column: 11, scope: !2742)
!2847 = !DILocation(line: 1399, column: 2, scope: !2741)
!2848 = !DILocation(line: 1407, column: 22, scope: !2740)
!2849 = !DILocation(line: 0, scope: !2740)
!2850 = !DILocation(line: 1408, column: 14, scope: !2740)
!2851 = !DILocation(line: 1409, column: 12, scope: !2740)
!2852 = !DILocation(line: 1409, column: 18, scope: !2740)
!2853 = !DILocation(line: 1410, column: 4, scope: !2740)
!2854 = !DILocation(line: 1410, column: 14, scope: !2740)
!2855 = !DILocation(line: 1411, column: 12, scope: !2740)
!2856 = !DILocation(line: 1411, column: 18, scope: !2740)
!2857 = !DILocation(line: 1412, column: 4, scope: !2740)
!2858 = !DILocation(line: 1414, column: 17, scope: !2742)
!2859 = !DILocation(line: 1414, column: 43, scope: !2742)
!2860 = !DILocation(line: 1414, column: 7, scope: !2742)
!2861 = !DILocation(line: 1415, column: 5, scope: !2742)
!2862 = !DILocation(line: 1417, column: 33, scope: !2724)
!2863 = !DILocation(line: 1418, column: 1, scope: !2724)
!2864 = distinct !DISubprogram(name: "do_warning", scope: !3, file: !3, line: 1074, type: !256, scopeLine: 1075, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2865)
!2865 = !{!2866}
!2866 = !DILocalVariable(name: "pfile", arg: 1, scope: !2864, file: !3, line: 1074, type: !258)
!2867 = !DILocation(line: 0, scope: !2864)
!2868 = !DILocation(line: 1077, column: 3, scope: !2864)
!2869 = !DILocation(line: 1078, column: 1, scope: !2864)
!2870 = distinct !DISubprogram(name: "do_include_next", scope: !3, file: !3, line: 812, type: !256, scopeLine: 813, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2871)
!2871 = !{!2872, !2873}
!2872 = !DILocalVariable(name: "pfile", arg: 1, scope: !2870, file: !3, line: 812, type: !258)
!2873 = !DILocalVariable(name: "type", scope: !2870, file: !3, line: 814, type: !49)
!2874 = !DILocation(line: 0, scope: !2870)
!2875 = !DILocation(line: 818, column: 7, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 818, column: 7)
!2877 = !DILocation(line: 818, column: 7, scope: !2870)
!2878 = !DILocation(line: 820, column: 7, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 819, column: 5)
!2880 = !DILocation(line: 823, column: 5, scope: !2879)
!2881 = !DILocation(line: 824, column: 3, scope: !2870)
!2882 = !DILocation(line: 825, column: 1, scope: !2870)
!2883 = distinct !DISubprogram(name: "do_ident", scope: !3, file: !3, line: 1082, type: !256, scopeLine: 1083, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2884)
!2884 = !{!2885, !2886}
!2885 = !DILocalVariable(name: "pfile", arg: 1, scope: !2883, file: !3, line: 1082, type: !258)
!2886 = !DILocalVariable(name: "str", scope: !2883, file: !3, line: 1084, type: !239)
!2887 = !DILocation(line: 0, scope: !2883)
!2888 = !DILocation(line: 1084, column: 26, scope: !2883)
!2889 = !DILocation(line: 1086, column: 12, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1086, column: 7)
!2891 = !DILocation(line: 1086, column: 17, scope: !2890)
!2892 = !DILocation(line: 1086, column: 7, scope: !2883)
!2893 = !DILocation(line: 1088, column: 16, scope: !2890)
!2894 = !DILocation(line: 1088, column: 27, scope: !2890)
!2895 = !DILocation(line: 1087, column: 5, scope: !2890)
!2896 = !DILocation(line: 1089, column: 22, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 1089, column: 12)
!2898 = !DILocation(line: 1089, column: 12, scope: !2897)
!2899 = !DILocation(line: 1089, column: 12, scope: !2890)
!2900 = !DILocation(line: 1090, column: 36, scope: !2897)
!2901 = !DILocation(line: 1090, column: 62, scope: !2897)
!2902 = !DILocation(line: 1090, column: 5, scope: !2897)
!2903 = !DILocation(line: 1092, column: 3, scope: !2883)
!2904 = !DILocation(line: 1093, column: 1, scope: !2883)
!2905 = distinct !DISubprogram(name: "do_import", scope: !3, file: !3, line: 806, type: !256, scopeLine: 807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2906)
!2906 = !{!2907}
!2907 = !DILocalVariable(name: "pfile", arg: 1, scope: !2905, file: !3, line: 806, type: !258)
!2908 = !DILocation(line: 0, scope: !2905)
!2909 = !DILocation(line: 808, column: 3, scope: !2905)
!2910 = !DILocation(line: 809, column: 1, scope: !2905)
!2911 = distinct !DISubprogram(name: "do_assert", scope: !3, file: !3, line: 2175, type: !256, scopeLine: 2176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2912)
!2912 = !{!2913, !2914, !2915, !2916, !2919}
!2913 = !DILocalVariable(name: "pfile", arg: 1, scope: !2911, file: !3, line: 2175, type: !258)
!2914 = !DILocalVariable(name: "new_answer", scope: !2911, file: !3, line: 2177, type: !169)
!2915 = !DILocalVariable(name: "node", scope: !2911, file: !3, line: 2178, type: !125)
!2916 = !DILocalVariable(name: "answer_size", scope: !2917, file: !3, line: 2183, type: !228)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !3, line: 2182, column: 5)
!2918 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 2181, column: 7)
!2919 = !DILocalVariable(name: "temp_answer", scope: !2920, file: !3, line: 2204, type: !169)
!2920 = distinct !DILexicalBlock(scope: !2921, file: !3, line: 2203, column: 2)
!2921 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 2202, column: 11)
!2922 = !DILocation(line: 0, scope: !2911)
!2923 = !DILocation(line: 2177, column: 3, scope: !2911)
!2924 = !DILocation(line: 2180, column: 10, scope: !2911)
!2925 = !DILocation(line: 2181, column: 7, scope: !2918)
!2926 = !DILocation(line: 2181, column: 7, scope: !2911)
!2927 = !DILocation(line: 2187, column: 7, scope: !2917)
!2928 = !DILocation(line: 2187, column: 19, scope: !2917)
!2929 = !DILocation(line: 2187, column: 24, scope: !2917)
!2930 = !DILocation(line: 2188, column: 17, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 2188, column: 11)
!2932 = !DILocation(line: 2188, column: 22, scope: !2931)
!2933 = !DILocation(line: 2188, column: 11, scope: !2917)
!2934 = !DILocation(line: 2190, column: 28, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 2190, column: 8)
!2936 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 2189, column: 2)
!2937 = !DILocation(line: 2190, column: 9, scope: !2935)
!2938 = !DILocation(line: 2190, column: 8, scope: !2935)
!2939 = !DILocation(line: 2190, column: 8, scope: !2936)
!2940 = !DILocation(line: 2193, column: 5, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 2191, column: 6)
!2942 = !DILocation(line: 2193, column: 22, scope: !2941)
!2943 = !DILocation(line: 2192, column: 8, scope: !2941)
!2944 = !DILocation(line: 2194, column: 8, scope: !2941)
!2945 = !DILocation(line: 2196, column: 29, scope: !2936)
!2946 = !DILocation(line: 2196, column: 35, scope: !2936)
!2947 = !DILocation(line: 2196, column: 4, scope: !2936)
!2948 = !DILocation(line: 2196, column: 21, scope: !2936)
!2949 = !DILocation(line: 2197, column: 2, scope: !2936)
!2950 = !DILocation(line: 2199, column: 48, scope: !2917)
!2951 = !DILocation(line: 2199, column: 60, scope: !2917)
!2952 = !DILocation(line: 2199, column: 66, scope: !2917)
!2953 = !DILocation(line: 2199, column: 47, scope: !2917)
!2954 = !DILocation(line: 2200, column: 12, scope: !2917)
!2955 = !DILocation(line: 2199, column: 44, scope: !2917)
!2956 = !DILocation(line: 0, scope: !2917)
!2957 = !DILocation(line: 2202, column: 18, scope: !2921)
!2958 = !DILocation(line: 2202, column: 30, scope: !2921)
!2959 = !DILocation(line: 2202, column: 11, scope: !2921)
!2960 = !DILocation(line: 2202, column: 11, scope: !2917)
!2961 = !DILocation(line: 2204, column: 33, scope: !2920)
!2962 = !DILocation(line: 2205, column: 35, scope: !2920)
!2963 = !DILocation(line: 2205, column: 15, scope: !2920)
!2964 = !DILocation(line: 2207, column: 4, scope: !2920)
!2965 = !DILocation(line: 2213, column: 29, scope: !2917)
!2966 = !DILocation(line: 2208, column: 2, scope: !2920)
!2967 = !DILocation(line: 2210, column: 2, scope: !2921)
!2968 = !DILocation(line: 2210, column: 29, scope: !2921)
!2969 = !DILocation(line: 2212, column: 18, scope: !2917)
!2970 = !DILocation(line: 2213, column: 13, scope: !2917)
!2971 = !DILocation(line: 2213, column: 27, scope: !2917)
!2972 = !DILocation(line: 2214, column: 7, scope: !2917)
!2973 = !DILocation(line: 2215, column: 5, scope: !2918)
!2974 = !DILocation(line: 2216, column: 1, scope: !2911)
!2975 = distinct !DISubprogram(name: "do_unassert", scope: !3, file: !3, line: 2220, type: !256, scopeLine: 2221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2976)
!2976 = !{!2977, !2978, !2979, !2980, !2985}
!2977 = !DILocalVariable(name: "pfile", arg: 1, scope: !2975, file: !3, line: 2220, type: !258)
!2978 = !DILocalVariable(name: "node", scope: !2975, file: !3, line: 2222, type: !125)
!2979 = !DILocalVariable(name: "answer", scope: !2975, file: !3, line: 2223, type: !169)
!2980 = !DILocalVariable(name: "p", scope: !2981, file: !3, line: 2231, type: !1840)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 2230, column: 2)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 2229, column: 11)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 2228, column: 5)
!2984 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 2227, column: 7)
!2985 = !DILocalVariable(name: "temp", scope: !2981, file: !3, line: 2231, type: !169)
!2986 = !DILocation(line: 0, scope: !2975)
!2987 = !DILocation(line: 2223, column: 3, scope: !2975)
!2988 = !DILocation(line: 2225, column: 10, scope: !2975)
!2989 = !DILocation(line: 2227, column: 7, scope: !2984)
!2990 = !DILocation(line: 2227, column: 12, scope: !2984)
!2991 = !DILocation(line: 2227, column: 21, scope: !2984)
!2992 = !DILocation(line: 2227, column: 26, scope: !2984)
!2993 = !DILocation(line: 2227, column: 7, scope: !2975)
!2994 = !DILocation(line: 2229, column: 11, scope: !2982)
!2995 = !DILocation(line: 2229, column: 11, scope: !2983)
!2996 = !DILocation(line: 2231, column: 24, scope: !2981)
!2997 = !DILocation(line: 0, scope: !2981)
!2998 = !DILocation(line: 2234, column: 11, scope: !2981)
!2999 = !DILocation(line: 2235, column: 8, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 2235, column: 8)
!3001 = !DILocation(line: 2235, column: 8, scope: !2981)
!3002 = !DILocation(line: 2236, column: 17, scope: !3000)
!3003 = !DILocation(line: 2236, column: 9, scope: !3000)
!3004 = !DILocation(line: 2236, column: 6, scope: !3000)
!3005 = !DILocation(line: 2239, column: 14, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 2239, column: 8)
!3007 = !DILocation(line: 2239, column: 20, scope: !3006)
!3008 = !DILocation(line: 2239, column: 28, scope: !3006)
!3009 = !DILocation(line: 2239, column: 8, scope: !2981)
!3010 = !DILocation(line: 2240, column: 17, scope: !3006)
!3011 = !DILocation(line: 2240, column: 6, scope: !3006)
!3012 = !DILocation(line: 2242, column: 4, scope: !2981)
!3013 = !DILocation(line: 2243, column: 2, scope: !2981)
!3014 = !DILocation(line: 2245, column: 2, scope: !2982)
!3015 = !DILocation(line: 2249, column: 1, scope: !2975)
!3016 = distinct !DISubprogram(name: "lex_macro_node", scope: !3, file: !3, line: 532, type: !3017, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!125, !258, !63}
!3019 = !{!3020, !3021, !3022, !3023}
!3020 = !DILocalVariable(name: "pfile", arg: 1, scope: !3016, file: !3, line: 532, type: !258)
!3021 = !DILocalVariable(name: "is_def_or_undef", arg: 2, scope: !3016, file: !3, line: 532, type: !63)
!3022 = !DILocalVariable(name: "token", scope: !3016, file: !3, line: 534, type: !239)
!3023 = !DILocalVariable(name: "node", scope: !3024, file: !3, line: 545, type: !125)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 544, column: 5)
!3025 = distinct !DILexicalBlock(scope: !3016, file: !3, line: 543, column: 7)
!3026 = !DILocation(line: 0, scope: !3016)
!3027 = !DILocation(line: 534, column: 28, scope: !3016)
!3028 = !DILocation(line: 543, column: 14, scope: !3025)
!3029 = !DILocation(line: 543, column: 19, scope: !3025)
!3030 = !DILocation(line: 543, column: 7, scope: !3016)
!3031 = !DILocation(line: 545, column: 35, scope: !3024)
!3032 = !DILocation(line: 545, column: 44, scope: !3024)
!3033 = !DILocation(line: 0, scope: !3024)
!3034 = !DILocation(line: 547, column: 11, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 547, column: 11)
!3036 = !DILocation(line: 547, column: 27, scope: !3035)
!3037 = !DILocation(line: 547, column: 56, scope: !3035)
!3038 = !DILocation(line: 547, column: 35, scope: !3035)
!3039 = !DILocation(line: 547, column: 11, scope: !3024)
!3040 = !DILocation(line: 548, column: 2, scope: !3035)
!3041 = !DILocation(line: 550, column: 25, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 550, column: 16)
!3043 = !DILocation(line: 550, column: 31, scope: !3042)
!3044 = !DILocation(line: 550, column: 16, scope: !3035)
!3045 = !DILocation(line: 552, column: 5, scope: !3025)
!3046 = !DILocation(line: 553, column: 19, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 553, column: 12)
!3048 = !DILocation(line: 553, column: 25, scope: !3047)
!3049 = !DILocation(line: 553, column: 12, scope: !3025)
!3050 = !DILocation(line: 556, column: 9, scope: !3047)
!3051 = !DILocation(line: 554, column: 5, scope: !3047)
!3052 = !DILocation(line: 557, column: 24, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 557, column: 12)
!3054 = !DILocation(line: 557, column: 12, scope: !3047)
!3055 = !DILocation(line: 559, column: 16, scope: !3053)
!3056 = !DILocation(line: 559, column: 27, scope: !3053)
!3057 = !DILocation(line: 558, column: 5, scope: !3053)
!3058 = !DILocation(line: 561, column: 5, scope: !3053)
!3059 = !DILocation(line: 563, column: 3, scope: !3016)
!3060 = !DILocation(line: 564, column: 1, scope: !3016)
!3061 = distinct !DISubprogram(name: "do_include_common", scope: !3, file: !3, line: 748, type: !3062, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3064)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{null, !258, !49}
!3064 = !{!3065, !3066, !3067, !3068, !3069, !3070}
!3065 = !DILocalVariable(name: "pfile", arg: 1, scope: !3061, file: !3, line: 748, type: !258)
!3066 = !DILocalVariable(name: "type", arg: 2, scope: !3061, file: !3, line: 748, type: !49)
!3067 = !DILocalVariable(name: "fname", scope: !3061, file: !3, line: 750, type: !201)
!3068 = !DILocalVariable(name: "angle_brackets", scope: !3061, file: !3, line: 751, type: !183)
!3069 = !DILocalVariable(name: "buf", scope: !3061, file: !3, line: 752, type: !238)
!3070 = !DILocalVariable(name: "location", scope: !3061, file: !3, line: 753, type: !135)
!3071 = !DILocation(line: 0, scope: !3061)
!3072 = !DILocation(line: 751, column: 3, scope: !3061)
!3073 = !DILocation(line: 752, column: 3, scope: !3061)
!3074 = !DILocation(line: 752, column: 21, scope: !3061)
!3075 = !DILocation(line: 753, column: 3, scope: !3061)
!3076 = !DILocation(line: 757, column: 34, scope: !3061)
!3077 = !DILocation(line: 757, column: 32, scope: !3061)
!3078 = !DILocation(line: 757, column: 16, scope: !3061)
!3079 = !DILocation(line: 757, column: 30, scope: !3061)
!3080 = !DILocation(line: 759, column: 11, scope: !3061)
!3081 = !DILocation(line: 760, column: 8, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 760, column: 7)
!3083 = !DILocation(line: 760, column: 7, scope: !3061)
!3084 = !DILocation(line: 762, column: 11, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 762, column: 11)
!3086 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 761, column: 5)
!3087 = !DILocation(line: 762, column: 11, scope: !3086)
!3088 = !DILocation(line: 763, column: 2, scope: !3085)
!3089 = !DILocation(line: 767, column: 8, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 767, column: 7)
!3091 = !DILocation(line: 767, column: 7, scope: !3061)
!3092 = !DILocation(line: 769, column: 47, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 768, column: 3)
!3094 = !DILocation(line: 771, column: 12, scope: !3093)
!3095 = !DILocation(line: 771, column: 23, scope: !3093)
!3096 = !DILocation(line: 769, column: 5, scope: !3093)
!3097 = !DILocation(line: 772, column: 5, scope: !3093)
!3098 = !DILocation(line: 773, column: 9, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 773, column: 9)
!3100 = !DILocation(line: 773, column: 9, scope: !3093)
!3101 = !DILocation(line: 774, column: 7, scope: !3099)
!3102 = !DILocation(line: 779, column: 14, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 779, column: 7)
!3104 = !DILocation(line: 779, column: 26, scope: !3103)
!3105 = !DILocation(line: 779, column: 32, scope: !3103)
!3106 = !DILocation(line: 779, column: 7, scope: !3061)
!3107 = !DILocation(line: 780, column: 5, scope: !3103)
!3108 = !DILocation(line: 784, column: 7, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 782, column: 5)
!3110 = !DILocation(line: 786, column: 21, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 786, column: 11)
!3112 = !DILocation(line: 786, column: 11, scope: !3111)
!3113 = !DILocation(line: 786, column: 11, scope: !3109)
!3114 = !DILocation(line: 787, column: 35, scope: !3111)
!3115 = !DILocation(line: 788, column: 14, scope: !3111)
!3116 = !DILocation(line: 788, column: 25, scope: !3111)
!3117 = !DILocation(line: 788, column: 38, scope: !3111)
!3118 = !DILocation(line: 789, column: 7, scope: !3111)
!3119 = !DILocation(line: 787, column: 2, scope: !3111)
!3120 = !DILocation(line: 791, column: 41, scope: !3109)
!3121 = !DILocation(line: 791, column: 7, scope: !3109)
!3122 = !DILocation(line: 794, column: 3, scope: !3061)
!3123 = !DILocation(line: 795, column: 7, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 795, column: 7)
!3125 = !DILocation(line: 795, column: 7, scope: !3061)
!3126 = !DILocation(line: 796, column: 5, scope: !3124)
!3127 = !DILocation(line: 797, column: 1, scope: !3061)
!3128 = distinct !DISubprogram(name: "parse_include", scope: !3, file: !3, line: 694, type: !3129, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3134)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!201, !258, !3131, !3132, !3133}
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!3134 = !{!3135, !3136, !3137, !3138, !3139, !3140, !3141}
!3135 = !DILocalVariable(name: "pfile", arg: 1, scope: !3128, file: !3, line: 694, type: !258)
!3136 = !DILocalVariable(name: "pangle_brackets", arg: 2, scope: !3128, file: !3, line: 694, type: !3131)
!3137 = !DILocalVariable(name: "buf", arg: 3, scope: !3128, file: !3, line: 695, type: !3132)
!3138 = !DILocalVariable(name: "location", arg: 4, scope: !3128, file: !3, line: 695, type: !3133)
!3139 = !DILocalVariable(name: "fname", scope: !3128, file: !3, line: 697, type: !59)
!3140 = !DILocalVariable(name: "header", scope: !3128, file: !3, line: 698, type: !239)
!3141 = !DILocalVariable(name: "dir", scope: !3142, file: !3, line: 718, type: !61)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 717, column: 5)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 711, column: 12)
!3144 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 703, column: 7)
!3145 = !DILocation(line: 0, scope: !3128)
!3146 = !DILocation(line: 701, column: 12, scope: !3128)
!3147 = !DILocation(line: 702, column: 23, scope: !3128)
!3148 = !DILocation(line: 702, column: 13, scope: !3128)
!3149 = !DILocation(line: 703, column: 16, scope: !3144)
!3150 = !DILocation(line: 703, column: 21, scope: !3144)
!3151 = !DILocation(line: 703, column: 35, scope: !3144)
!3152 = !DILocation(line: 703, column: 54, scope: !3144)
!3153 = !DILocation(line: 703, column: 38, scope: !3144)
!3154 = !DILocation(line: 703, column: 62, scope: !3144)
!3155 = !DILocation(line: 704, column: 7, scope: !3144)
!3156 = !DILocation(line: 704, column: 23, scope: !3144)
!3157 = !DILocation(line: 703, column: 7, scope: !3128)
!3158 = !DILocation(line: 706, column: 15, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 705, column: 5)
!3160 = !DILocation(line: 707, column: 38, scope: !3159)
!3161 = !DILocation(line: 707, column: 43, scope: !3159)
!3162 = !DILocation(line: 707, column: 64, scope: !3159)
!3163 = !DILocation(line: 707, column: 68, scope: !3159)
!3164 = !DILocation(line: 707, column: 48, scope: !3159)
!3165 = !DILocation(line: 707, column: 7, scope: !3159)
!3166 = !DILocation(line: 708, column: 29, scope: !3159)
!3167 = !DILocation(line: 708, column: 33, scope: !3159)
!3168 = !DILocation(line: 708, column: 7, scope: !3159)
!3169 = !DILocation(line: 708, column: 38, scope: !3159)
!3170 = !DILocation(line: 709, column: 34, scope: !3159)
!3171 = !DILocation(line: 709, column: 39, scope: !3159)
!3172 = !DILocation(line: 710, column: 5, scope: !3159)
!3173 = !DILocation(line: 711, column: 25, scope: !3143)
!3174 = !DILocation(line: 711, column: 12, scope: !3144)
!3175 = !DILocation(line: 713, column: 15, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 712, column: 5)
!3177 = !DILocation(line: 720, column: 18, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3142, file: !3, line: 720, column: 11)
!3179 = !DILocation(line: 720, column: 28, scope: !3178)
!3180 = !DILocation(line: 720, column: 11, scope: !3142)
!3181 = !DILocation(line: 723, column: 26, scope: !3178)
!3182 = !DILocation(line: 0, scope: !3142)
!3183 = !DILocation(line: 0, scope: !3178)
!3184 = !DILocation(line: 724, column: 7, scope: !3142)
!3185 = !DILocation(line: 0, scope: !3144)
!3186 = !DILocation(line: 730, column: 14, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 730, column: 7)
!3188 = !DILocation(line: 730, column: 24, scope: !3187)
!3189 = !DILocation(line: 730, column: 7, scope: !3128)
!3190 = !DILocation(line: 734, column: 16, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 734, column: 12)
!3192 = !DILocation(line: 734, column: 24, scope: !3191)
!3193 = !DILocation(line: 734, column: 27, scope: !3191)
!3194 = !DILocation(line: 734, column: 12, scope: !3187)
!3195 = !DILocation(line: 735, column: 5, scope: !3191)
!3196 = !DILocation(line: 740, column: 14, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 737, column: 5)
!3198 = !DILocation(line: 740, column: 12, scope: !3197)
!3199 = !DILocation(line: 744, column: 1, scope: !3128)
!3200 = distinct !DISubprogram(name: "skip_rest_of_line", scope: !3, file: !3, line: 203, type: !256, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3201)
!3201 = !{!3202}
!3202 = !DILocalVariable(name: "pfile", arg: 1, scope: !3200, file: !3, line: 203, type: !258)
!3203 = !DILocation(line: 0, scope: !3200)
!3204 = !DILocation(line: 206, column: 3, scope: !3200)
!3205 = !DILocation(line: 206, column: 17, scope: !3200)
!3206 = !DILocation(line: 206, column: 26, scope: !3200)
!3207 = !DILocation(line: 207, column: 5, scope: !3200)
!3208 = distinct !{!3208, !3204, !3209}
!3209 = !DILocation(line: 207, column: 28, scope: !3200)
!3210 = !DILocation(line: 210, column: 9, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 210, column: 7)
!3212 = !DILocation(line: 210, column: 7, scope: !3200)
!3213 = !DILocation(line: 211, column: 5, scope: !3211)
!3214 = !DILocation(line: 211, column: 12, scope: !3211)
!3215 = !DILocation(line: 211, column: 36, scope: !3211)
!3216 = !DILocation(line: 211, column: 41, scope: !3211)
!3217 = distinct !{!3217, !3213, !3218}
!3218 = !DILocation(line: 212, column: 7, scope: !3211)
!3219 = !DILocation(line: 213, column: 1, scope: !3200)
!3220 = distinct !DISubprogram(name: "get_token_no_padding", scope: !3, file: !3, line: 1608, type: !1630, scopeLine: 1609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3221)
!3221 = !{!3222, !3223}
!3222 = !DILocalVariable(name: "pfile", arg: 1, scope: !3220, file: !3, line: 1608, type: !258)
!3223 = !DILocalVariable(name: "result", scope: !3224, file: !3, line: 1612, type: !239)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 1611, column: 5)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 1610, column: 3)
!3226 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 1610, column: 3)
!3227 = !DILocation(line: 0, scope: !3220)
!3228 = !DILocation(line: 1610, column: 3, scope: !3220)
!3229 = !DILocation(line: 1612, column: 33, scope: !3224)
!3230 = !DILocation(line: 0, scope: !3224)
!3231 = !DILocation(line: 1613, column: 19, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 1613, column: 11)
!3233 = !DILocation(line: 1613, column: 24, scope: !3232)
!3234 = !DILocation(line: 0, scope: !3225)
!3235 = !DILocation(line: 1616, column: 1, scope: !3220)
!3236 = distinct !DISubprogram(name: "glue_header_name", scope: !3, file: !3, line: 648, type: !3237, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3239)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!59, !258}
!3239 = !{!3240, !3241, !3242, !3243, !3244, !3245}
!3240 = !DILocalVariable(name: "pfile", arg: 1, scope: !3236, file: !3, line: 648, type: !258)
!3241 = !DILocalVariable(name: "token", scope: !3236, file: !3, line: 650, type: !239)
!3242 = !DILocalVariable(name: "buffer", scope: !3236, file: !3, line: 651, type: !59)
!3243 = !DILocalVariable(name: "len", scope: !3236, file: !3, line: 652, type: !228)
!3244 = !DILocalVariable(name: "total_len", scope: !3236, file: !3, line: 652, type: !228)
!3245 = !DILocalVariable(name: "capacity", scope: !3236, file: !3, line: 652, type: !228)
!3246 = !DILocation(line: 0, scope: !3236)
!3247 = !DILocation(line: 656, column: 12, scope: !3236)
!3248 = !DILocation(line: 657, column: 3, scope: !3236)
!3249 = !DILocation(line: 659, column: 15, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 658, column: 5)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 657, column: 3)
!3252 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 657, column: 3)
!3253 = !DILocation(line: 661, column: 18, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 661, column: 11)
!3255 = !DILocation(line: 661, column: 23, scope: !3254)
!3256 = !DILocation(line: 661, column: 11, scope: !3250)
!3257 = !DILocation(line: 663, column: 23, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 663, column: 11)
!3259 = !DILocation(line: 663, column: 11, scope: !3250)
!3260 = !DILocation(line: 665, column: 4, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 664, column: 2)
!3262 = !DILocation(line: 666, column: 4, scope: !3261)
!3263 = !DILocation(line: 669, column: 13, scope: !3250)
!3264 = !DILocation(line: 669, column: 35, scope: !3250)
!3265 = !DILocation(line: 670, column: 21, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 670, column: 11)
!3267 = !DILocation(line: 670, column: 27, scope: !3266)
!3268 = !DILocation(line: 670, column: 11, scope: !3250)
!3269 = !DILocation(line: 672, column: 25, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 671, column: 2)
!3271 = !DILocation(line: 672, column: 32, scope: !3270)
!3272 = !DILocation(line: 673, column: 13, scope: !3270)
!3273 = !DILocation(line: 674, column: 2, scope: !3270)
!3274 = !DILocation(line: 676, column: 18, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 676, column: 11)
!3276 = !DILocation(line: 676, column: 24, scope: !3275)
!3277 = !DILocation(line: 676, column: 11, scope: !3250)
!3278 = !DILocation(line: 677, column: 18, scope: !3275)
!3279 = !DILocation(line: 677, column: 2, scope: !3275)
!3280 = !DILocation(line: 677, column: 22, scope: !3275)
!3281 = !DILocation(line: 679, column: 62, scope: !3250)
!3282 = !DILocation(line: 679, column: 20, scope: !3250)
!3283 = !DILocation(line: 681, column: 6, scope: !3250)
!3284 = !DILocation(line: 657, column: 3, scope: !3251)
!3285 = distinct !{!3285, !3286, !3287}
!3286 = !DILocation(line: 657, column: 3, scope: !3252)
!3287 = !DILocation(line: 682, column: 5, scope: !3252)
!3288 = !DILocation(line: 684, column: 3, scope: !3236)
!3289 = !DILocation(line: 684, column: 21, scope: !3236)
!3290 = !DILocation(line: 685, column: 3, scope: !3236)
!3291 = distinct !DISubprogram(name: "check_eol", scope: !3, file: !3, line: 218, type: !3292, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3294)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{null, !258, !63}
!3294 = !{!3295, !3296}
!3295 = !DILocalVariable(name: "pfile", arg: 1, scope: !3291, file: !3, line: 218, type: !258)
!3296 = !DILocalVariable(name: "expand", arg: 2, scope: !3291, file: !3, line: 218, type: !63)
!3297 = !DILocation(line: 0, scope: !3291)
!3298 = !DILocation(line: 220, column: 9, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 220, column: 7)
!3300 = !DILocation(line: 220, column: 21, scope: !3299)
!3301 = !DILocation(line: 220, column: 25, scope: !3299)
!3302 = !DILocation(line: 221, column: 6, scope: !3299)
!3303 = !DILocation(line: 222, column: 6, scope: !3299)
!3304 = !DILocation(line: 222, column: 31, scope: !3299)
!3305 = !DILocation(line: 222, column: 36, scope: !3299)
!3306 = !DILocation(line: 220, column: 7, scope: !3291)
!3307 = !DILocation(line: 224, column: 16, scope: !3299)
!3308 = !DILocation(line: 224, column: 27, scope: !3299)
!3309 = !DILocation(line: 223, column: 5, scope: !3299)
!3310 = !DILocation(line: 225, column: 1, scope: !3291)
!3311 = distinct !DISubprogram(name: "check_eol_return_comments", scope: !3, file: !3, line: 230, type: !3312, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!238, !258}
!3314 = !{!3315, !3316, !3317, !3318, !3319}
!3315 = !DILocalVariable(name: "pfile", arg: 1, scope: !3311, file: !3, line: 230, type: !258)
!3316 = !DILocalVariable(name: "c", scope: !3311, file: !3, line: 232, type: !228)
!3317 = !DILocalVariable(name: "capacity", scope: !3311, file: !3, line: 233, type: !228)
!3318 = !DILocalVariable(name: "buf", scope: !3311, file: !3, line: 234, type: !238)
!3319 = !DILocalVariable(name: "tok", scope: !3320, file: !3, line: 242, type: !239)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 241, column: 2)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 239, column: 5)
!3322 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 238, column: 7)
!3323 = !DILocation(line: 0, scope: !3311)
!3324 = !DILocation(line: 236, column: 9, scope: !3311)
!3325 = !DILocation(line: 238, column: 9, scope: !3322)
!3326 = !DILocation(line: 238, column: 7, scope: !3311)
!3327 = !DILocation(line: 0, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3320, file: !3, line: 247, column: 8)
!3329 = !DILocation(line: 240, column: 7, scope: !3321)
!3330 = !DILocation(line: 236, column: 7, scope: !3311)
!3331 = !DILocation(line: 233, column: 10, scope: !3311)
!3332 = !DILocation(line: 237, column: 5, scope: !3311)
!3333 = !DILocation(line: 244, column: 10, scope: !3320)
!3334 = !DILocation(line: 0, scope: !3320)
!3335 = !DILocation(line: 245, column: 13, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3320, file: !3, line: 245, column: 8)
!3337 = !DILocation(line: 245, column: 18, scope: !3336)
!3338 = !DILocation(line: 245, column: 8, scope: !3320)
!3339 = !DILocation(line: 247, column: 18, scope: !3328)
!3340 = !DILocation(line: 247, column: 8, scope: !3320)
!3341 = !DILocation(line: 250, column: 17, scope: !3328)
!3342 = !DILocation(line: 250, column: 28, scope: !3328)
!3343 = !DILocation(line: 248, column: 6, scope: !3328)
!3344 = !DILocation(line: 253, column: 14, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 253, column: 12)
!3346 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 252, column: 6)
!3347 = !DILocation(line: 253, column: 18, scope: !3345)
!3348 = !DILocation(line: 253, column: 12, scope: !3346)
!3349 = !DILocation(line: 255, column: 14, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 254, column: 3)
!3351 = !DILocation(line: 256, column: 11, scope: !3350)
!3352 = !DILocation(line: 257, column: 3, scope: !3350)
!3353 = !DILocation(line: 258, column: 8, scope: !3346)
!3354 = !DILocation(line: 258, column: 15, scope: !3346)
!3355 = distinct !{!3355, !3329, !3356}
!3356 = !DILocation(line: 261, column: 2, scope: !3321)
!3357 = !DILocation(line: 263, column: 3, scope: !3311)
!3358 = !DILocation(line: 263, column: 10, scope: !3311)
!3359 = !DILocation(line: 264, column: 3, scope: !3311)
!3360 = distinct !DISubprogram(name: "push_conditional", scope: !3, file: !3, line: 1986, type: !3361, scopeLine: 1988, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !258, !183, !183, !97}
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3369}
!3364 = !DILocalVariable(name: "pfile", arg: 1, scope: !3360, file: !3, line: 1986, type: !258)
!3365 = !DILocalVariable(name: "skip", arg: 2, scope: !3360, file: !3, line: 1986, type: !183)
!3366 = !DILocalVariable(name: "type", arg: 3, scope: !3360, file: !3, line: 1986, type: !183)
!3367 = !DILocalVariable(name: "cmacro", arg: 4, scope: !3360, file: !3, line: 1987, type: !97)
!3368 = !DILocalVariable(name: "ifs", scope: !3360, file: !3, line: 1989, type: !90)
!3369 = !DILocalVariable(name: "buffer", scope: !3360, file: !3, line: 1990, type: !64)
!3370 = !DILocation(line: 0, scope: !3360)
!3371 = !DILocation(line: 1990, column: 31, scope: !3360)
!3372 = !DILocation(line: 1992, column: 9, scope: !3360)
!3373 = !DILocation(line: 1993, column: 22, scope: !3360)
!3374 = !DILocation(line: 1993, column: 8, scope: !3360)
!3375 = !DILocation(line: 1993, column: 13, scope: !3360)
!3376 = !DILocation(line: 1994, column: 23, scope: !3360)
!3377 = !DILocation(line: 1994, column: 13, scope: !3360)
!3378 = !DILocation(line: 1995, column: 34, scope: !3360)
!3379 = !DILocation(line: 1995, column: 21, scope: !3360)
!3380 = !DILocation(line: 1995, column: 43, scope: !3360)
!3381 = !DILocation(line: 1995, column: 46, scope: !3360)
!3382 = !DILocation(line: 1995, column: 8, scope: !3360)
!3383 = !DILocation(line: 1995, column: 19, scope: !3360)
!3384 = !DILocation(line: 1996, column: 36, scope: !3360)
!3385 = !DILocation(line: 1996, column: 8, scope: !3360)
!3386 = !DILocation(line: 1996, column: 21, scope: !3360)
!3387 = !DILocation(line: 1997, column: 8, scope: !3360)
!3388 = !DILocation(line: 1997, column: 13, scope: !3360)
!3389 = !DILocation(line: 1999, column: 14, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 1999, column: 7)
!3391 = !DILocation(line: 1999, column: 7, scope: !3390)
!3392 = !DILocation(line: 1999, column: 23, scope: !3390)
!3393 = !DILocation(line: 1999, column: 33, scope: !3390)
!3394 = !DILocation(line: 1999, column: 43, scope: !3390)
!3395 = !DILocation(line: 1999, column: 7, scope: !3360)
!3396 = !DILocation(line: 2000, column: 10, scope: !3390)
!3397 = !DILocation(line: 2000, column: 20, scope: !3390)
!3398 = !DILocation(line: 2000, column: 5, scope: !3390)
!3399 = !DILocation(line: 2002, column: 10, scope: !3390)
!3400 = !DILocation(line: 2002, column: 20, scope: !3390)
!3401 = !DILocation(line: 2004, column: 27, scope: !3360)
!3402 = !DILocation(line: 2004, column: 25, scope: !3360)
!3403 = !DILocation(line: 2005, column: 20, scope: !3360)
!3404 = !DILocation(line: 2006, column: 1, scope: !3360)
!3405 = distinct !DISubprogram(name: "strtolinenum", scope: !3, file: !3, line: 857, type: !3406, scopeLine: 858, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3409)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!63, !361, !228, !3408, !319}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!3409 = !{!3410, !3411, !3412, !3413, !3414, !3415, !3416}
!3410 = !DILocalVariable(name: "str", arg: 1, scope: !3405, file: !3, line: 857, type: !361)
!3411 = !DILocalVariable(name: "len", arg: 2, scope: !3405, file: !3, line: 857, type: !228)
!3412 = !DILocalVariable(name: "nump", arg: 3, scope: !3405, file: !3, line: 857, type: !3408)
!3413 = !DILocalVariable(name: "wrapped", arg: 4, scope: !3405, file: !3, line: 857, type: !319)
!3414 = !DILocalVariable(name: "reg", scope: !3405, file: !3, line: 859, type: !95)
!3415 = !DILocalVariable(name: "reg_prev", scope: !3405, file: !3, line: 860, type: !95)
!3416 = !DILocalVariable(name: "c", scope: !3405, file: !3, line: 862, type: !237)
!3417 = !DILocation(line: 0, scope: !3405)
!3418 = !DILocation(line: 863, column: 12, scope: !3405)
!3419 = !DILocation(line: 864, column: 3, scope: !3405)
!3420 = !DILocation(line: 864, column: 13, scope: !3405)
!3421 = !DILocation(line: 866, column: 15, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 865, column: 5)
!3423 = !DILocation(line: 866, column: 11, scope: !3422)
!3424 = !DILocation(line: 867, column: 12, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 867, column: 11)
!3426 = !DILocation(line: 867, column: 11, scope: !3422)
!3427 = !DILocation(line: 869, column: 11, scope: !3422)
!3428 = !DILocation(line: 870, column: 14, scope: !3422)
!3429 = !DILocation(line: 870, column: 16, scope: !3422)
!3430 = !DILocation(line: 870, column: 11, scope: !3422)
!3431 = !DILocation(line: 871, column: 15, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 871, column: 11)
!3433 = !DILocation(line: 871, column: 11, scope: !3422)
!3434 = !DILocation(line: 872, column: 11, scope: !3432)
!3435 = !DILocation(line: 872, column: 2, scope: !3432)
!3436 = distinct !{!3436, !3419, !3437}
!3437 = !DILocation(line: 874, column: 5, scope: !3405)
!3438 = !DILocation(line: 875, column: 9, scope: !3405)
!3439 = !DILocation(line: 876, column: 3, scope: !3405)
!3440 = !DILocation(line: 877, column: 1, scope: !3405)
!3441 = distinct !DISubprogram(name: "do_diagnostic", scope: !3, file: !3, line: 1049, type: !3442, scopeLine: 1050, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !258, !183, !183}
!3444 = !{!3445, !3446, !3447, !3448, !3449, !3450}
!3445 = !DILocalVariable(name: "pfile", arg: 1, scope: !3441, file: !3, line: 1049, type: !258)
!3446 = !DILocalVariable(name: "code", arg: 2, scope: !3441, file: !3, line: 1049, type: !183)
!3447 = !DILocalVariable(name: "print_dir", arg: 3, scope: !3441, file: !3, line: 1049, type: !183)
!3448 = !DILocalVariable(name: "dir_name", scope: !3441, file: !3, line: 1051, type: !61)
!3449 = !DILocalVariable(name: "line", scope: !3441, file: !3, line: 1052, type: !319)
!3450 = !DILocalVariable(name: "src_loc", scope: !3441, file: !3, line: 1053, type: !135)
!3451 = !DILocation(line: 0, scope: !3441)
!3452 = !DILocation(line: 1053, column: 36, scope: !3441)
!3453 = !DILocation(line: 1053, column: 50, scope: !3441)
!3454 = !DILocation(line: 1055, column: 7, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 1055, column: 7)
!3456 = !DILocation(line: 1055, column: 7, scope: !3441)
!3457 = !DILocation(line: 1056, column: 23, scope: !3455)
!3458 = !DILocation(line: 1056, column: 34, scope: !3455)
!3459 = !DILocation(line: 1056, column: 5, scope: !3455)
!3460 = !DILocation(line: 0, scope: !3455)
!3461 = !DILocation(line: 1059, column: 16, scope: !3441)
!3462 = !DILocation(line: 1059, column: 33, scope: !3441)
!3463 = !DILocation(line: 1060, column: 10, scope: !3441)
!3464 = !DILocation(line: 1061, column: 33, scope: !3441)
!3465 = !DILocation(line: 1063, column: 3, scope: !3441)
!3466 = !DILocation(line: 1064, column: 3, scope: !3441)
!3467 = !DILocation(line: 1065, column: 1, scope: !3441)
!3468 = distinct !DISubprogram(name: "lookup_pragma_entry", scope: !3, file: !3, line: 1099, type: !3469, scopeLine: 1100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!241, !241, !97}
!3471 = !{!3472, !3473}
!3472 = !DILocalVariable(name: "chain", arg: 1, scope: !3468, file: !3, line: 1099, type: !241)
!3473 = !DILocalVariable(name: "pragma", arg: 2, scope: !3468, file: !3, line: 1099, type: !97)
!3474 = !DILocation(line: 0, scope: !3468)
!3475 = !DILocation(line: 1101, column: 3, scope: !3468)
!3476 = !DILocation(line: 1101, column: 10, scope: !3468)
!3477 = !DILocation(line: 1101, column: 16, scope: !3468)
!3478 = !DILocation(line: 1101, column: 26, scope: !3468)
!3479 = !DILocation(line: 1101, column: 33, scope: !3468)
!3480 = !DILocation(line: 1102, column: 20, scope: !3468)
!3481 = distinct !{!3481, !3475, !3480}
!3482 = !DILocation(line: 1104, column: 3, scope: !3468)
!3483 = distinct !DISubprogram(name: "cpp_in_primary_file", scope: !50, file: !50, line: 534, type: !1610, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3484)
!3484 = !{!3485}
!3485 = !DILocalVariable(name: "pfile", arg: 1, scope: !3483, file: !50, line: 534, type: !258)
!3486 = !DILocation(line: 0, scope: !3483)
!3487 = !DILocation(line: 536, column: 17, scope: !3483)
!3488 = !DILocation(line: 536, column: 29, scope: !3483)
!3489 = !DILocation(line: 536, column: 35, scope: !3483)
!3490 = !DILocation(line: 536, column: 3, scope: !3483)
!3491 = distinct !DISubprogram(name: "do_linemarker", scope: !3, file: !3, line: 945, type: !256, scopeLine: 946, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3492)
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503}
!3493 = !DILocalVariable(name: "pfile", arg: 1, scope: !3491, file: !3, line: 945, type: !258)
!3494 = !DILocalVariable(name: "line_table", scope: !3491, file: !3, line: 947, type: !2593)
!3495 = !DILocalVariable(name: "map", scope: !3491, file: !3, line: 948, type: !460)
!3496 = !DILocalVariable(name: "token", scope: !3491, file: !3, line: 949, type: !239)
!3497 = !DILocalVariable(name: "new_file", scope: !3491, file: !3, line: 950, type: !201)
!3498 = !DILocalVariable(name: "new_lineno", scope: !3491, file: !3, line: 951, type: !95)
!3499 = !DILocalVariable(name: "new_sysp", scope: !3491, file: !3, line: 952, type: !7)
!3500 = !DILocalVariable(name: "reason", scope: !3491, file: !3, line: 953, type: !42)
!3501 = !DILocalVariable(name: "flag", scope: !3491, file: !3, line: 954, type: !183)
!3502 = !DILocalVariable(name: "wrapped", scope: !3491, file: !3, line: 955, type: !63)
!3503 = !DILocalVariable(name: "s", scope: !3504, file: !3, line: 979, type: !481)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 978, column: 5)
!3505 = distinct !DILexicalBlock(scope: !3491, file: !3, line: 977, column: 7)
!3506 = !DILocation(line: 0, scope: !3491)
!3507 = !DILocation(line: 947, column: 47, scope: !3491)
!3508 = !DILocation(line: 948, column: 45, scope: !3491)
!3509 = !DILocation(line: 948, column: 62, scope: !3491)
!3510 = !DILocation(line: 948, column: 67, scope: !3491)
!3511 = !DILocation(line: 948, column: 33, scope: !3491)
!3512 = !DILocation(line: 950, column: 31, scope: !3491)
!3513 = !DILocation(line: 951, column: 3, scope: !3491)
!3514 = !DILocation(line: 952, column: 32, scope: !3491)
!3515 = !DILocation(line: 952, column: 27, scope: !3491)
!3516 = !DILocation(line: 955, column: 3, scope: !3491)
!3517 = !DILocation(line: 960, column: 3, scope: !3491)
!3518 = !DILocation(line: 963, column: 11, scope: !3491)
!3519 = !DILocation(line: 964, column: 14, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3491, file: !3, line: 964, column: 7)
!3521 = !DILocation(line: 964, column: 19, scope: !3520)
!3522 = !DILocation(line: 965, column: 7, scope: !3520)
!3523 = !DILocation(line: 965, column: 39, scope: !3520)
!3524 = !DILocation(line: 965, column: 60, scope: !3520)
!3525 = !DILocation(line: 965, column: 45, scope: !3520)
!3526 = !DILocation(line: 965, column: 10, scope: !3520)
!3527 = !DILocation(line: 964, column: 7, scope: !3491)
!3528 = !DILocation(line: 972, column: 4, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3520, file: !3, line: 967, column: 5)
!3530 = !DILocation(line: 970, column: 7, scope: !3529)
!3531 = !DILocation(line: 973, column: 7, scope: !3529)
!3532 = !DILocation(line: 976, column: 11, scope: !3491)
!3533 = !DILocation(line: 977, column: 14, scope: !3505)
!3534 = !DILocation(line: 977, column: 19, scope: !3505)
!3535 = !DILocation(line: 977, column: 7, scope: !3491)
!3536 = !DILocation(line: 979, column: 7, scope: !3504)
!3537 = !DILocation(line: 979, column: 18, scope: !3504)
!3538 = !DILocation(line: 980, column: 64, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 980, column: 11)
!3540 = !DILocation(line: 0, scope: !3504)
!3541 = !DILocation(line: 980, column: 11, scope: !3539)
!3542 = !DILocation(line: 980, column: 11, scope: !3504)
!3543 = !DILocation(line: 985, column: 14, scope: !3504)
!3544 = !DILocation(line: 986, column: 11, scope: !3504)
!3545 = !DILocation(line: 990, column: 4, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 987, column: 2)
!3547 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 986, column: 11)
!3548 = !DILocation(line: 991, column: 11, scope: !3546)
!3549 = !DILocation(line: 992, column: 2, scope: !3546)
!3550 = !DILocation(line: 996, column: 11, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 994, column: 2)
!3552 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 993, column: 16)
!3553 = !DILocation(line: 997, column: 2, scope: !3551)
!3554 = !DILocation(line: 0, scope: !3547)
!3555 = !DILocation(line: 998, column: 16, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 998, column: 11)
!3557 = !DILocation(line: 998, column: 11, scope: !3504)
!3558 = !DILocation(line: 1001, column: 11, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 999, column: 2)
!3560 = !DILocation(line: 1002, column: 13, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 1002, column: 8)
!3562 = !DILocation(line: 1002, column: 8, scope: !3559)
!3563 = !DILocation(line: 1004, column: 2, scope: !3559)
!3564 = !DILocation(line: 1005, column: 29, scope: !3504)
!3565 = !DILocation(line: 1005, column: 14, scope: !3504)
!3566 = !DILocation(line: 1005, column: 22, scope: !3504)
!3567 = !DILocation(line: 1005, column: 27, scope: !3504)
!3568 = !DILocation(line: 1007, column: 7, scope: !3504)
!3569 = !DILocation(line: 1008, column: 5, scope: !3505)
!3570 = !DILocation(line: 1008, column: 5, scope: !3504)
!3571 = !DILocation(line: 1009, column: 24, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 1009, column: 12)
!3573 = !DILocation(line: 1009, column: 12, scope: !3505)
!3574 = !DILocation(line: 1012, column: 4, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 1010, column: 5)
!3576 = !DILocation(line: 1011, column: 7, scope: !3575)
!3577 = !DILocation(line: 1013, column: 7, scope: !3575)
!3578 = !DILocation(line: 1016, column: 3, scope: !3491)
!3579 = !DILocation(line: 1023, column: 10, scope: !3491)
!3580 = !DILocation(line: 1023, column: 22, scope: !3491)
!3581 = !DILocation(line: 1023, column: 38, scope: !3491)
!3582 = !DILocation(line: 1025, column: 49, scope: !3491)
!3583 = !DILocation(line: 1025, column: 3, scope: !3491)
!3584 = !DILocation(line: 1026, column: 1, scope: !3491)
!3585 = distinct !DISubprogram(name: "read_flag", scope: !3, file: !3, line: 832, type: !3586, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3588)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!7, !258, !7}
!3588 = !{!3589, !3590, !3591, !3592}
!3589 = !DILocalVariable(name: "pfile", arg: 1, scope: !3585, file: !3, line: 832, type: !258)
!3590 = !DILocalVariable(name: "last", arg: 2, scope: !3585, file: !3, line: 832, type: !7)
!3591 = !DILocalVariable(name: "token", scope: !3585, file: !3, line: 834, type: !239)
!3592 = !DILocalVariable(name: "flag", scope: !3593, file: !3, line: 838, type: !7)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 837, column: 5)
!3594 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 836, column: 7)
!3595 = !DILocation(line: 0, scope: !3585)
!3596 = !DILocation(line: 834, column: 28, scope: !3585)
!3597 = !DILocation(line: 836, column: 14, scope: !3594)
!3598 = !DILocation(line: 836, column: 19, scope: !3594)
!3599 = !DILocation(line: 836, column: 33, scope: !3594)
!3600 = !DILocation(line: 836, column: 51, scope: !3594)
!3601 = !DILocation(line: 836, column: 55, scope: !3594)
!3602 = !DILocation(line: 836, column: 7, scope: !3585)
!3603 = !DILocation(line: 838, column: 42, scope: !3593)
!3604 = !DILocation(line: 838, column: 27, scope: !3593)
!3605 = !DILocation(line: 838, column: 50, scope: !3593)
!3606 = !DILocation(line: 0, scope: !3593)
!3607 = !DILocation(line: 840, column: 16, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 840, column: 11)
!3609 = !DILocation(line: 840, column: 31, scope: !3608)
!3610 = !DILocation(line: 840, column: 23, scope: !3608)
!3611 = !DILocation(line: 841, column: 13, scope: !3608)
!3612 = !DILocation(line: 841, column: 26, scope: !3608)
!3613 = !DILocation(line: 841, column: 18, scope: !3608)
!3614 = !DILocation(line: 842, column: 13, scope: !3608)
!3615 = !DILocation(line: 842, column: 26, scope: !3608)
!3616 = !DILocation(line: 842, column: 18, scope: !3608)
!3617 = !DILocation(line: 844, column: 5, scope: !3594)
!3618 = !DILocation(line: 846, column: 19, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3585, file: !3, line: 846, column: 7)
!3620 = !DILocation(line: 846, column: 7, scope: !3585)
!3621 = !DILocation(line: 848, column: 9, scope: !3619)
!3622 = !DILocation(line: 847, column: 5, scope: !3619)
!3623 = !DILocation(line: 850, column: 1, scope: !3585)
!3624 = distinct !DISubprogram(name: "new_pragma_entry", scope: !3, file: !3, line: 1110, type: !3625, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!241, !258, !1111}
!3627 = !{!3628, !3629, !3630}
!3628 = !DILocalVariable(name: "pfile", arg: 1, scope: !3624, file: !3, line: 1110, type: !258)
!3629 = !DILocalVariable(name: "chain", arg: 2, scope: !3624, file: !3, line: 1110, type: !1111)
!3630 = !DILocalVariable(name: "new_entry", scope: !3624, file: !3, line: 1112, type: !241)
!3631 = !DILocation(line: 0, scope: !3624)
!3632 = !DILocation(line: 1115, column: 5, scope: !3624)
!3633 = !DILocation(line: 1114, column: 15, scope: !3624)
!3634 = !DILocation(line: 1117, column: 3, scope: !3624)
!3635 = !DILocation(line: 1118, column: 21, scope: !3624)
!3636 = !DILocation(line: 1118, column: 19, scope: !3624)
!3637 = !DILocation(line: 1120, column: 10, scope: !3624)
!3638 = !DILocation(line: 1121, column: 3, scope: !3624)
!3639 = distinct !DISubprogram(name: "parse_answer", scope: !3, file: !3, line: 2014, type: !3640, scopeLine: 2016, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!183, !258, !1840, !183, !135}
!3642 = !{!3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3654, !3655}
!3643 = !DILocalVariable(name: "pfile", arg: 1, scope: !3639, file: !3, line: 2014, type: !258)
!3644 = !DILocalVariable(name: "answerp", arg: 2, scope: !3639, file: !3, line: 2014, type: !1840)
!3645 = !DILocalVariable(name: "type", arg: 3, scope: !3639, file: !3, line: 2014, type: !183)
!3646 = !DILocalVariable(name: "pred_loc", arg: 4, scope: !3639, file: !3, line: 2015, type: !135)
!3647 = !DILocalVariable(name: "paren", scope: !3639, file: !3, line: 2017, type: !239)
!3648 = !DILocalVariable(name: "answer", scope: !3639, file: !3, line: 2018, type: !169)
!3649 = !DILocalVariable(name: "acount", scope: !3639, file: !3, line: 2019, type: !7)
!3650 = !DILocalVariable(name: "room_needed", scope: !3651, file: !3, line: 2047, type: !228)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 2046, column: 5)
!3652 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 2045, column: 3)
!3653 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 2045, column: 3)
!3654 = !DILocalVariable(name: "token", scope: !3651, file: !3, line: 2048, type: !239)
!3655 = !DILocalVariable(name: "dest", scope: !3651, file: !3, line: 2049, type: !130)
!3656 = !DILocation(line: 0, scope: !3639)
!3657 = !DILocation(line: 2023, column: 11, scope: !3639)
!3658 = !DILocation(line: 2026, column: 14, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 2026, column: 7)
!3660 = !DILocation(line: 2026, column: 19, scope: !3659)
!3661 = !DILocation(line: 2026, column: 7, scope: !3639)
!3662 = !DILocation(line: 0, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 2063, column: 11)
!3664 = !DILocation(line: 2045, column: 3, scope: !3653)
!3665 = !DILocation(line: 2030, column: 11, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 2027, column: 5)
!3667 = !DILocation(line: 2032, column: 4, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 2031, column: 2)
!3669 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 2030, column: 11)
!3670 = !DILocation(line: 2033, column: 4, scope: !3668)
!3671 = !DILocation(line: 2037, column: 45, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 2037, column: 11)
!3673 = !DILocation(line: 2037, column: 11, scope: !3666)
!3674 = !DILocation(line: 2040, column: 7, scope: !3666)
!3675 = !DILocation(line: 2042, column: 7, scope: !3666)
!3676 = !DILocation(line: 0, scope: !3653)
!3677 = !DILocation(line: 2048, column: 32, scope: !3651)
!3678 = !DILocation(line: 0, scope: !3651)
!3679 = !DILocation(line: 2051, column: 18, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 2051, column: 11)
!3681 = !DILocation(line: 2051, column: 23, scope: !3680)
!3682 = !DILocation(line: 2051, column: 11, scope: !3651)
!3683 = !DILocation(line: 2054, column: 23, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 2054, column: 11)
!3685 = !DILocation(line: 2054, column: 11, scope: !3651)
!3686 = !DILocation(line: 2056, column: 4, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 2055, column: 2)
!3688 = !DILocation(line: 2057, column: 4, scope: !3687)
!3689 = !DILocation(line: 2061, column: 47, scope: !3651)
!3690 = !DILocation(line: 2061, column: 54, scope: !3651)
!3691 = !DILocation(line: 2061, column: 45, scope: !3651)
!3692 = !DILocation(line: 2063, column: 11, scope: !3663)
!3693 = !DILocation(line: 2063, column: 37, scope: !3663)
!3694 = !DILocation(line: 2063, column: 11, scope: !3651)
!3695 = !DILocation(line: 2064, column: 2, scope: !3663)
!3696 = !DILocation(line: 2066, column: 34, scope: !3651)
!3697 = !DILocation(line: 2066, column: 15, scope: !3651)
!3698 = !DILocation(line: 2067, column: 15, scope: !3651)
!3699 = !DILocation(line: 2070, column: 18, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 2070, column: 11)
!3701 = !DILocation(line: 2070, column: 11, scope: !3651)
!3702 = !DILocation(line: 2071, column: 8, scope: !3700)
!3703 = !DILocation(line: 2071, column: 14, scope: !3700)
!3704 = !DILocation(line: 2071, column: 2, scope: !3700)
!3705 = !DILocation(line: 2045, column: 27, scope: !3652)
!3706 = !DILocation(line: 2045, column: 3, scope: !3652)
!3707 = distinct !{!3707, !3664, !3708}
!3708 = !DILocation(line: 2072, column: 5, scope: !3653)
!3709 = !DILocation(line: 2074, column: 14, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 2074, column: 7)
!3711 = !DILocation(line: 2074, column: 7, scope: !3639)
!3712 = !DILocation(line: 2076, column: 7, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 2075, column: 5)
!3714 = !DILocation(line: 2077, column: 7, scope: !3713)
!3715 = !DILocation(line: 2080, column: 30, scope: !3639)
!3716 = !DILocation(line: 2081, column: 11, scope: !3639)
!3717 = !DILocation(line: 2081, column: 17, scope: !3639)
!3718 = !DILocation(line: 2082, column: 11, scope: !3639)
!3719 = !DILocation(line: 2082, column: 16, scope: !3639)
!3720 = !DILocation(line: 2083, column: 12, scope: !3639)
!3721 = !DILocation(line: 2085, column: 3, scope: !3639)
!3722 = !DILocation(line: 2086, column: 1, scope: !3639)
