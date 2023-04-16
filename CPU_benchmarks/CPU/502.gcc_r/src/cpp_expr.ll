; ModuleID = 'cpp_expr.bc'
source_filename = "cpp_expr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_operator = type { i8, i8 }
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
%struct.op = type { %struct.cpp_token*, %struct.cpp_num, i32, i32 }
%struct.cpp_num = type { i64, i64, i8, i8 }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i8*, i8*, i32, i8, i8, %struct.anon.1, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i8, i8, i8, i8 }
%struct.spec_nodes = type { %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode* }
%struct.anon.2 = type { i8*, i8*, i8*, i32 }
%struct.cpp_savedstate = type opaque
%struct.cpp_comment_table = type { %struct.cpp_comment*, i32, i32 }
%struct.cpp_comment = type { i8*, i32 }
%struct.def_pragma_macro = type { %struct.def_pragma_macro*, i8*, %struct.cpp_macro* }

@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@_hex_value = external dso_local local_unnamed_addr constant [256 x i8], align 16
@.str = private unnamed_addr constant [34 x i8] c"too many decimal points in number\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"fixed-point constants are a GCC extension\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"invalid digit \22%c\22 in binary constant\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"invalid digit \22%c\22 in octal constant\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"invalid prefix \220b\22 for floating constant\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"no digits in hexadecimal floating constant\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"use of C99 hexadecimal floating constant\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"exponent has no digits\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"hexadecimal floating constants require an exponent\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"invalid suffix \22%.*s\22 on floating constant\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"traditional C rejects the \22%.*s\22 suffix\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"suffix for double constant is a GCC extension\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"invalid suffix \22%.*s\22 with hexadecimal floating constant\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"decimal float constants are a GCC extension\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"invalid suffix \22%.*s\22 on integer constant\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"use of C++0x long long integer constant\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"use of C99 long long integer constant\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"imaginary constants are a GCC extension\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"binary constants are a GCC extension\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"integer constant is too large for its type\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"integer constant is so large that it is unsigned\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"missing binary operator before token \22%s\22\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"token \22%s\22 is not valid in preprocessor expressions\00", align 1
@optab = internal unnamed_addr constant [29 x %struct.cpp_operator] [%struct.cpp_operator zeroinitializer, %struct.cpp_operator { i8 16, i8 1 }, %struct.cpp_operator { i8 12, i8 6 }, %struct.cpp_operator { i8 12, i8 6 }, %struct.cpp_operator { i8 14, i8 6 }, %struct.cpp_operator { i8 14, i8 6 }, %struct.cpp_operator { i8 15, i8 6 }, %struct.cpp_operator { i8 15, i8 6 }, %struct.cpp_operator { i8 15, i8 6 }, %struct.cpp_operator { i8 9, i8 6 }, %struct.cpp_operator { i8 7, i8 6 }, %struct.cpp_operator { i8 8, i8 6 }, %struct.cpp_operator { i8 13, i8 2 }, %struct.cpp_operator { i8 13, i8 2 }, %struct.cpp_operator { i8 16, i8 1 }, %struct.cpp_operator { i8 6, i8 2 }, %struct.cpp_operator { i8 5, i8 2 }, %struct.cpp_operator { i8 4, i8 0 }, %struct.cpp_operator { i8 4, i8 6 }, %struct.cpp_operator { i8 4, i8 2 }, %struct.cpp_operator { i8 1, i8 1 }, %struct.cpp_operator zeroinitializer, %struct.cpp_operator zeroinitializer, %struct.cpp_operator { i8 11, i8 2 }, %struct.cpp_operator { i8 11, i8 2 }, %struct.cpp_operator { i8 12, i8 6 }, %struct.cpp_operator { i8 12, i8 6 }, %struct.cpp_operator { i8 16, i8 1 }, %struct.cpp_operator { i8 16, i8 1 }], align 16, !dbg !0
@.str.23 = private unnamed_addr constant [39 x i8] c"missing expression between '(' and ')'\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"%s with no expression\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"#if\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"#elif\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"operator '%s' has no right operand\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"operator '%s' has no left operand\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c" ':' without preceding '?'\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"unbalanced stack in %s\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"floating constant in preprocessor expression\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"imaginary number in preprocessor expression\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"\22%s\22 is not defined\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"assertions are a GCC extension\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"assertions are a deprecated extension\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"missing ')' after \22defined\22\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"operator \22defined\22 requires an identifier\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"(\22%s\22 is an alternative token for \22%s\22 in C++)\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"this use of \22defined\22 may not be portable\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"impossible operator '%u'\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"missing ')' in expression\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"'?' without following ':'\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"integer overflow in preprocessor expression\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"missing '(' in expression\00", align 1
@.str.45 = private unnamed_addr constant [52 x i8] c"the left operand of \22%s\22 changes sign when promoted\00", align 1
@.str.46 = private unnamed_addr constant [53 x i8] c"the right operand of \22%s\22 changes sign when promoted\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"traditional C rejects the unary plus operator\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"comma operator in operand of #if\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"division by zero in #if\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !758 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !763, metadata !DIExpression()), !dbg !764
  %__c.off = add i32 %__c, 128, !dbg !765
  %0 = icmp ult i32 %__c.off, 384, !dbg !765
  br i1 %0, label %cond.true, label %cond.end, !dbg !765

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !766
  %1 = load i32*, i32** %call, align 8, !dbg !767
  %idxprom = sext i32 %__c to i64, !dbg !768
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !768
  %2 = load i32, i32* %arrayidx, align 4, !dbg !768
  br label %cond.end, !dbg !769

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !769
  ret i32 %cond, !dbg !770
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !771 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !773, metadata !DIExpression()), !dbg !774
  %__c.off = add i32 %__c, 128, !dbg !775
  %0 = icmp ult i32 %__c.off, 384, !dbg !775
  br i1 %0, label %cond.true, label %cond.end, !dbg !775

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !776
  %1 = load i32*, i32** %call, align 8, !dbg !777
  %idxprom = sext i32 %__c to i64, !dbg !778
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !778
  %2 = load i32, i32* %arrayidx, align 4, !dbg !778
  br label %cond.end, !dbg !779

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !779
  ret i32 %cond, !dbg !780
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @cpp_classify_number(%struct.cpp_reader* %pfile, %struct.cpp_token* %token) local_unnamed_addr #3 !dbg !123 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !715, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !716, metadata !DIExpression()), !dbg !781
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 1, !dbg !782
  %0 = load i8*, i8** %text, align 8, !dbg !782
  call void @llvm.dbg.value(metadata i8* %0, metadata !717, metadata !DIExpression()), !dbg !781
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 0, !dbg !783
  %1 = load i32, i32* %len, align 8, !dbg !783
  %cmp = icmp eq i32 %1, 1, !dbg !785
  br i1 %cmp, label %cleanup408, label %if.end, !dbg !786

if.end:                                           ; preds = %entry
  %idx.ext = zext i32 %1 to i64, !dbg !787
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext, !dbg !787
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !721, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 0, metadata !725, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 0, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 10, metadata !724, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 0, metadata !726, metadata !DIExpression()), !dbg !781
  %2 = load i8, i8* %0, align 1, !dbg !788
  %cmp7 = icmp eq i8 %2, 48, !dbg !790
  br i1 %cmp7, label %if.then9, label %if.end48, !dbg !791

if.then9:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 8, metadata !724, metadata !DIExpression()), !dbg !781
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !792
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !717, metadata !DIExpression()), !dbg !781
  %3 = load i8, i8* %incdec.ptr, align 1, !dbg !794
  %cmp11 = icmp eq i8 %3, 120, !dbg !796
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false, !dbg !797

lor.lhs.false:                                    ; preds = %if.then9
  %cmp14 = icmp eq i8 %3, 88, !dbg !798
  br i1 %cmp14, label %land.lhs.true, label %if.else, !dbg !799

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then9
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 2, !dbg !800
  %4 = load i8, i8* %arrayidx, align 1, !dbg !800
  %cmp17 = icmp eq i8 %4, 46, !dbg !801
  br i1 %cmp17, label %if.then25, label %lor.lhs.false19, !dbg !802

lor.lhs.false19:                                  ; preds = %land.lhs.true
  %idxprom = zext i8 %4 to i64, !dbg !803
  %arrayidx22 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !803
  %5 = load i16, i16* %arrayidx22, align 2, !dbg !803
  %6 = and i16 %5, 256, !dbg !803
  %tobool = icmp eq i16 %6, 0, !dbg !803
  br i1 %tobool, label %if.else, label %if.then25, !dbg !804

if.then25:                                        ; preds = %lor.lhs.false19, %land.lhs.true
  call void @llvm.dbg.value(metadata i32 16, metadata !724, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8* %arrayidx, metadata !717, metadata !DIExpression()), !dbg !781
  br label %if.end48, !dbg !805

if.else:                                          ; preds = %lor.lhs.false19, %lor.lhs.false
  %cmp28 = icmp eq i8 %3, 98, !dbg !807
  br i1 %cmp28, label %land.lhs.true34, label %lor.lhs.false30, !dbg !809

lor.lhs.false30:                                  ; preds = %if.else
  %cmp32 = icmp eq i8 %3, 66, !dbg !810
  br i1 %cmp32, label %land.lhs.true34, label %if.end48, !dbg !811

land.lhs.true34:                                  ; preds = %lor.lhs.false30, %if.else
  %arrayidx35 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !812
  %7 = load i8, i8* %arrayidx35, align 1, !dbg !812
  %cmp37 = icmp eq i8 %7, 48, !dbg !813
  br i1 %cmp37, label %if.then44, label %lor.lhs.false39, !dbg !814

lor.lhs.false39:                                  ; preds = %land.lhs.true34
  %cmp42 = icmp eq i8 %7, 49, !dbg !815
  br i1 %cmp42, label %if.then44, label %if.end48, !dbg !816

if.then44:                                        ; preds = %lor.lhs.false39, %land.lhs.true34
  call void @llvm.dbg.value(metadata i32 2, metadata !724, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8* %arrayidx35, metadata !717, metadata !DIExpression()), !dbg !781
  br label %if.end48, !dbg !817

if.end48:                                         ; preds = %if.then25, %if.then44, %lor.lhs.false39, %lor.lhs.false30, %if.end
  %radix.2 = phi i32 [ 10, %if.end ], [ 16, %if.then25 ], [ 2, %if.then44 ], [ 8, %lor.lhs.false39 ], [ 8, %lor.lhs.false30 ], !dbg !781
  %str.2 = phi i8* [ %0, %if.end ], [ %arrayidx, %if.then25 ], [ %arrayidx35, %if.then44 ], [ %incdec.ptr, %lor.lhs.false39 ], [ %incdec.ptr, %lor.lhs.false30 ], !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.2, metadata !717, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %radix.2, metadata !724, metadata !DIExpression()), !dbg !781
  %cmp65 = icmp eq i32 %radix.2, 16, !dbg !819
  %cmp86 = icmp ult i32 %radix.2, 11, !dbg !821
  br i1 %cmp65, label %if.end48.split.us, label %if.end48.if.end48.split_crit_edge, !dbg !824

if.end48.if.end48.split_crit_edge:                ; preds = %if.end48
  br i1 %cmp86, label %if.end48.split.split.us, label %if.end48.split.if.end48.split.split_crit_edge, !dbg !824

if.end48.split.us:                                ; preds = %if.end48
  br i1 %cmp86, label %if.end48.split.us.split.us, label %if.end48.split.us.if.end48.split.us.split_crit_edge, !dbg !824

if.end48.split.us.if.end48.split.us.split_crit_edge: ; preds = %if.end48.split.us
  br label %for.cond.us, !dbg !824

if.end48.split.us.split.us:                       ; preds = %if.end48.split.us
  br label %for.cond.us.us, !dbg !824

for.cond.us.us:                                   ; preds = %cleanup.us.us, %if.end48.split.us.split.us
  %float_flag.0.us.us = phi i32 [ 0, %if.end48.split.us.split.us ], [ %float_flag.2.us.us, %cleanup.us.us ], !dbg !825
  %max_digit.0.us.us = phi i32 [ 0, %if.end48.split.us.split.us ], [ %max_digit.3.us.us, %cleanup.us.us ], !dbg !781
  %seen_digit.0.us.us = phi i8 [ 0, %if.end48.split.us.split.us ], [ %seen_digit.2.us.us, %cleanup.us.us ], !dbg !781
  %str.3.us.us = phi i8* [ %str.2, %if.end48.split.us.split.us ], [ %str.4.us.us, %cleanup.us.us ], !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.3.us.us, metadata !717, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.0.us.us, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.0.us.us, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %float_flag.0.us.us, metadata !725, metadata !DIExpression()), !dbg !781
  %incdec.ptr49.us.us = getelementptr inbounds i8, i8* %str.3.us.us, i64 1, !dbg !826
  call void @llvm.dbg.value(metadata i8* %incdec.ptr49.us.us, metadata !717, metadata !DIExpression()), !dbg !781
  %8 = load i8, i8* %str.3.us.us, align 1, !dbg !827
  call void @llvm.dbg.value(metadata i8 %8, metadata !727, metadata !DIExpression()), !dbg !828
  %idxprom52.us.us = zext i8 %8 to i64, !dbg !829
  %arrayidx53.us.us = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom52.us.us, !dbg !829
  %9 = load i16, i16* %arrayidx53.us.us, align 2, !dbg !829
  %10 = and i16 %9, 4, !dbg !829
  %tobool56.us.us = icmp eq i16 %10, 0, !dbg !829
  br i1 %tobool56.us.us, label %lor.lhs.false57.us.us, label %if.then67.us.us, !dbg !830

lor.lhs.false57.us.us:                            ; preds = %for.cond.us.us
  %11 = and i16 %9, 256, !dbg !831
  %tobool63.us.us = icmp eq i16 %11, 0, !dbg !831
  br i1 %tobool63.us.us, label %if.else76.us.us, label %if.then67.us.us, !dbg !832

if.else76.us.us:                                  ; preds = %lor.lhs.false57.us.us
  %cmp77.us.us = icmp eq i8 %8, 46, !dbg !833
  br i1 %cmp77.us.us, label %if.then79.us.us, label %if.else85.us.us, !dbg !834

if.else85.us.us:                                  ; preds = %if.else76.us.us
  switch i8 %8, label %lor.lhs.false94.us.us [
    i8 101, label %cleanup.us.us
    i8 69, label %cleanup.us.us
  ], !dbg !835

lor.lhs.false94.us.us:                            ; preds = %if.else85.us.us
  br i1 true, label %land.lhs.true97.us.us, label %lor.lhs.false94.us.us.if.else104.us.us_crit_edge, !dbg !836

lor.lhs.false94.us.us.if.else104.us.us_crit_edge: ; preds = %lor.lhs.false94.us.us
  br label %if.else104.us.us, !dbg !836

land.lhs.true97.us.us:                            ; preds = %lor.lhs.false94.us.us
  switch i8 %8, label %if.else104.us.us [
    i8 112, label %cleanup.us.us
    i8 80, label %cleanup.us.us
  ], !dbg !837

if.else104.us.us:                                 ; preds = %lor.lhs.false94.us.us.if.else104.us.us_crit_edge, %land.lhs.true97.us.us
  call void @llvm.dbg.value(metadata i8* %str.3.us.us, metadata !717, metadata !DIExpression()), !dbg !781
  br label %cleanup.us.us, !dbg !838

if.then79.us.us:                                  ; preds = %if.else76.us.us
  %cmp80.us.us = icmp eq i32 %float_flag.0.us.us, 0, !dbg !840
  br i1 %cmp80.us.us, label %cleanup.us.us, label %do.body.us.us, !dbg !843

do.body.us.us:                                    ; preds = %if.then79.us.us
  %call.us.us = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #6, !dbg !844
  br label %cleanup.us.us, !dbg !844

if.then67.us.us:                                  ; preds = %lor.lhs.false57.us.us, %for.cond.us.us
  call void @llvm.dbg.value(metadata i8 1, metadata !726, metadata !DIExpression()), !dbg !781
  %arrayidx70.us.us = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i64 0, i64 %idxprom52.us.us, !dbg !846
  %12 = load i8, i8* %arrayidx70.us.us, align 1, !dbg !846
  %conv71.us.us = zext i8 %12 to i32, !dbg !846
  call void @llvm.dbg.value(metadata i32 %conv71.us.us, metadata !727, metadata !DIExpression()), !dbg !828
  %cmp72.us.us = icmp ult i32 %max_digit.0.us.us, %conv71.us.us, !dbg !848
  %spec.select.us.us = select i1 %cmp72.us.us, i32 %conv71.us.us, i32 %max_digit.0.us.us, !dbg !850
  call void @llvm.dbg.value(metadata i32 %spec.select.us.us, metadata !722, metadata !DIExpression()), !dbg !781
  br label %cleanup.us.us, !dbg !851

cleanup.us.us:                                    ; preds = %if.then67.us.us, %do.body.us.us, %if.then79.us.us, %if.else104.us.us, %land.lhs.true97.us.us, %land.lhs.true97.us.us, %if.else85.us.us, %if.else85.us.us
  %float_flag.2.us.us = phi i32 [ %float_flag.0.us.us, %do.body.us.us ], [ %float_flag.0.us.us, %if.else104.us.us ], [ 2, %land.lhs.true97.us.us ], [ 2, %land.lhs.true97.us.us ], [ 2, %if.else85.us.us ], [ 2, %if.else85.us.us ], [ %float_flag.0.us.us, %if.then67.us.us ], [ 1, %if.then79.us.us ], !dbg !781
  %max_digit.3.us.us = phi i32 [ %max_digit.0.us.us, %do.body.us.us ], [ %max_digit.0.us.us, %if.else104.us.us ], [ %max_digit.0.us.us, %land.lhs.true97.us.us ], [ %max_digit.0.us.us, %land.lhs.true97.us.us ], [ %max_digit.0.us.us, %if.else85.us.us ], [ %max_digit.0.us.us, %if.else85.us.us ], [ %spec.select.us.us, %if.then67.us.us ], [ %max_digit.0.us.us, %if.then79.us.us ], !dbg !781
  %seen_digit.2.us.us = phi i8 [ %seen_digit.0.us.us, %do.body.us.us ], [ %seen_digit.0.us.us, %if.else104.us.us ], [ %seen_digit.0.us.us, %land.lhs.true97.us.us ], [ %seen_digit.0.us.us, %land.lhs.true97.us.us ], [ %seen_digit.0.us.us, %if.else85.us.us ], [ %seen_digit.0.us.us, %if.else85.us.us ], [ 1, %if.then67.us.us ], [ %seen_digit.0.us.us, %if.then79.us.us ], !dbg !781
  %str.4.us.us = phi i8* [ %incdec.ptr49.us.us, %do.body.us.us ], [ %str.3.us.us, %if.else104.us.us ], [ %incdec.ptr49.us.us, %land.lhs.true97.us.us ], [ %incdec.ptr49.us.us, %land.lhs.true97.us.us ], [ %incdec.ptr49.us.us, %if.else85.us.us ], [ %incdec.ptr49.us.us, %if.else85.us.us ], [ %incdec.ptr49.us.us, %if.then67.us.us ], [ %incdec.ptr49.us.us, %if.then79.us.us ], !dbg !828
  %cleanup.dest.slot.0.us.us = phi i32 [ 6, %do.body.us.us ], [ 2, %if.else104.us.us ], [ 2, %land.lhs.true97.us.us ], [ 2, %land.lhs.true97.us.us ], [ 2, %if.else85.us.us ], [ 2, %if.else85.us.us ], [ 0, %if.then67.us.us ], [ 0, %if.then79.us.us ]
  call void @llvm.dbg.value(metadata i8* %str.4.us.us, metadata !717, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.2.us.us, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.3.us.us, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %float_flag.2.us.us, metadata !725, metadata !DIExpression()), !dbg !781
  switch i32 %cleanup.dest.slot.0.us.us, label %cleanup408.loopexit.us-lcssa.us.us-lcssa.us [
    i32 0, label %for.cond.us.us
    i32 2, label %for.end.us-lcssa.us.us-lcssa.us
  ], !llvm.loop !852

cleanup408.loopexit.us-lcssa.us.us-lcssa.us:      ; preds = %cleanup.us.us
  br label %cleanup408.loopexit.us-lcssa.us, !dbg !855

for.end.us-lcssa.us.us-lcssa.us:                  ; preds = %cleanup.us.us
  %float_flag.2.us.us.lcssa68 = phi i32 [ %float_flag.2.us.us, %cleanup.us.us ], !dbg !781
  %max_digit.3.us.us.lcssa67 = phi i32 [ %max_digit.3.us.us, %cleanup.us.us ], !dbg !781
  %seen_digit.2.us.us.lcssa66 = phi i8 [ %seen_digit.2.us.us, %cleanup.us.us ], !dbg !781
  %str.4.us.us.lcssa65 = phi i8* [ %str.4.us.us, %cleanup.us.us ], !dbg !828
  call void @llvm.dbg.value(metadata i32 %float_flag.2.us.us.lcssa68, metadata !725, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.3.us.us.lcssa67, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.2.us.us.lcssa66, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.4.us.us.lcssa65, metadata !717, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %float_flag.2.us.us.lcssa68, metadata !725, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.3.us.us.lcssa67, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.2.us.us.lcssa66, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.4.us.us.lcssa65, metadata !717, metadata !DIExpression()), !dbg !781
  br label %for.end.us-lcssa.us, !dbg !856

for.cond.us:                                      ; preds = %cleanup.us, %if.end48.split.us.if.end48.split.us.split_crit_edge
  %float_flag.0.us = phi i32 [ 0, %if.end48.split.us.if.end48.split.us.split_crit_edge ], [ %float_flag.2.us, %cleanup.us ], !dbg !825
  %max_digit.0.us = phi i32 [ 0, %if.end48.split.us.if.end48.split.us.split_crit_edge ], [ %max_digit.3.us, %cleanup.us ], !dbg !781
  %seen_digit.0.us = phi i8 [ 0, %if.end48.split.us.if.end48.split.us.split_crit_edge ], [ %seen_digit.2.us, %cleanup.us ], !dbg !781
  %str.3.us = phi i8* [ %str.2, %if.end48.split.us.if.end48.split.us.split_crit_edge ], [ %str.4.us, %cleanup.us ], !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.3.us, metadata !717, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.0.us, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.0.us, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %float_flag.0.us, metadata !725, metadata !DIExpression()), !dbg !781
  %incdec.ptr49.us = getelementptr inbounds i8, i8* %str.3.us, i64 1, !dbg !826
  call void @llvm.dbg.value(metadata i8* %incdec.ptr49.us, metadata !717, metadata !DIExpression()), !dbg !781
  %13 = load i8, i8* %str.3.us, align 1, !dbg !827
  call void @llvm.dbg.value(metadata i8 %13, metadata !727, metadata !DIExpression()), !dbg !828
  %idxprom52.us = zext i8 %13 to i64, !dbg !829
  %arrayidx53.us = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom52.us, !dbg !829
  %14 = load i16, i16* %arrayidx53.us, align 2, !dbg !829
  %15 = and i16 %14, 4, !dbg !829
  %tobool56.us = icmp eq i16 %15, 0, !dbg !829
  br i1 %tobool56.us, label %lor.lhs.false57.us, label %if.then67.us, !dbg !830

lor.lhs.false57.us:                               ; preds = %for.cond.us
  %16 = and i16 %14, 256, !dbg !831
  %tobool63.us = icmp eq i16 %16, 0, !dbg !831
  br i1 %tobool63.us, label %if.else76.us, label %if.then67.us, !dbg !832

if.else76.us:                                     ; preds = %lor.lhs.false57.us
  %cmp77.us = icmp eq i8 %13, 46, !dbg !833
  br i1 %cmp77.us, label %if.then79.us, label %if.else85.us, !dbg !834

if.else85.us:                                     ; preds = %if.else76.us
  br i1 true, label %land.lhs.true97.us, label %if.else85.us.if.else104.us_crit_edge, !dbg !836

if.else85.us.if.else104.us_crit_edge:             ; preds = %if.else85.us
  br label %if.else104.us, !dbg !836

land.lhs.true97.us:                               ; preds = %if.else85.us
  switch i8 %13, label %if.else104.us [
    i8 112, label %cleanup.us
    i8 80, label %cleanup.us
  ], !dbg !837

if.else104.us:                                    ; preds = %if.else85.us.if.else104.us_crit_edge, %land.lhs.true97.us
  call void @llvm.dbg.value(metadata i8* %str.3.us, metadata !717, metadata !DIExpression()), !dbg !781
  br label %cleanup.us, !dbg !838

if.then79.us:                                     ; preds = %if.else76.us
  %cmp80.us = icmp eq i32 %float_flag.0.us, 0, !dbg !840
  br i1 %cmp80.us, label %cleanup.us, label %do.body.us, !dbg !843

do.body.us:                                       ; preds = %if.then79.us
  %call.us = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #6, !dbg !844
  br label %cleanup.us, !dbg !844

if.then67.us:                                     ; preds = %lor.lhs.false57.us, %for.cond.us
  call void @llvm.dbg.value(metadata i8 1, metadata !726, metadata !DIExpression()), !dbg !781
  %arrayidx70.us = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i64 0, i64 %idxprom52.us, !dbg !846
  %17 = load i8, i8* %arrayidx70.us, align 1, !dbg !846
  %conv71.us = zext i8 %17 to i32, !dbg !846
  call void @llvm.dbg.value(metadata i32 %conv71.us, metadata !727, metadata !DIExpression()), !dbg !828
  %cmp72.us = icmp ult i32 %max_digit.0.us, %conv71.us, !dbg !848
  %spec.select.us = select i1 %cmp72.us, i32 %conv71.us, i32 %max_digit.0.us, !dbg !850
  call void @llvm.dbg.value(metadata i32 %spec.select.us, metadata !722, metadata !DIExpression()), !dbg !781
  br label %cleanup.us, !dbg !851

cleanup.us:                                       ; preds = %if.then67.us, %do.body.us, %if.then79.us, %if.else104.us, %land.lhs.true97.us, %land.lhs.true97.us
  %float_flag.2.us = phi i32 [ %float_flag.0.us, %do.body.us ], [ %float_flag.0.us, %if.else104.us ], [ 2, %land.lhs.true97.us ], [ 2, %land.lhs.true97.us ], [ %float_flag.0.us, %if.then67.us ], [ 1, %if.then79.us ], !dbg !781
  %max_digit.3.us = phi i32 [ %max_digit.0.us, %do.body.us ], [ %max_digit.0.us, %if.else104.us ], [ %max_digit.0.us, %land.lhs.true97.us ], [ %max_digit.0.us, %land.lhs.true97.us ], [ %spec.select.us, %if.then67.us ], [ %max_digit.0.us, %if.then79.us ], !dbg !781
  %seen_digit.2.us = phi i8 [ %seen_digit.0.us, %do.body.us ], [ %seen_digit.0.us, %if.else104.us ], [ %seen_digit.0.us, %land.lhs.true97.us ], [ %seen_digit.0.us, %land.lhs.true97.us ], [ 1, %if.then67.us ], [ %seen_digit.0.us, %if.then79.us ], !dbg !781
  %str.4.us = phi i8* [ %incdec.ptr49.us, %do.body.us ], [ %str.3.us, %if.else104.us ], [ %incdec.ptr49.us, %land.lhs.true97.us ], [ %incdec.ptr49.us, %land.lhs.true97.us ], [ %incdec.ptr49.us, %if.then67.us ], [ %incdec.ptr49.us, %if.then79.us ], !dbg !828
  %cleanup.dest.slot.0.us = phi i32 [ 6, %do.body.us ], [ 2, %if.else104.us ], [ 2, %land.lhs.true97.us ], [ 2, %land.lhs.true97.us ], [ 0, %if.then67.us ], [ 0, %if.then79.us ]
  call void @llvm.dbg.value(metadata i8* %str.4.us, metadata !717, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.2.us, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.3.us, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %float_flag.2.us, metadata !725, metadata !DIExpression()), !dbg !781
  switch i32 %cleanup.dest.slot.0.us, label %cleanup408.loopexit.us-lcssa.us.us-lcssa [
    i32 0, label %for.cond.us
    i32 2, label %for.end.us-lcssa.us.us-lcssa
  ], !llvm.loop !852

cleanup408.loopexit.us-lcssa.us.us-lcssa:         ; preds = %cleanup.us
  br label %cleanup408.loopexit.us-lcssa.us, !dbg !855

cleanup408.loopexit.us-lcssa.us:                  ; preds = %cleanup408.loopexit.us-lcssa.us.us-lcssa.us, %cleanup408.loopexit.us-lcssa.us.us-lcssa
  br label %cleanup408.loopexit, !dbg !855

for.end.us-lcssa.us.us-lcssa:                     ; preds = %cleanup.us
  %float_flag.2.us.lcssa72 = phi i32 [ %float_flag.2.us, %cleanup.us ], !dbg !781
  %max_digit.3.us.lcssa71 = phi i32 [ %max_digit.3.us, %cleanup.us ], !dbg !781
  %seen_digit.2.us.lcssa70 = phi i8 [ %seen_digit.2.us, %cleanup.us ], !dbg !781
  %str.4.us.lcssa69 = phi i8* [ %str.4.us, %cleanup.us ], !dbg !828
  call void @llvm.dbg.value(metadata i32 %float_flag.2.us.lcssa72, metadata !725, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.3.us.lcssa71, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.2.us.lcssa70, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.4.us.lcssa69, metadata !717, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %float_flag.2.us.lcssa72, metadata !725, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.3.us.lcssa71, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.2.us.lcssa70, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.4.us.lcssa69, metadata !717, metadata !DIExpression()), !dbg !781
  br label %for.end.us-lcssa.us, !dbg !856

for.end.us-lcssa.us:                              ; preds = %for.end.us-lcssa.us.us-lcssa.us, %for.end.us-lcssa.us.us-lcssa
  %float_flag.2.lcssa10.ph.us = phi i32 [ %float_flag.2.us.lcssa72, %for.end.us-lcssa.us.us-lcssa ], [ %float_flag.2.us.us.lcssa68, %for.end.us-lcssa.us.us-lcssa.us ]
  %max_digit.3.lcssa9.ph.us = phi i32 [ %max_digit.3.us.lcssa71, %for.end.us-lcssa.us.us-lcssa ], [ %max_digit.3.us.us.lcssa67, %for.end.us-lcssa.us.us-lcssa.us ]
  %seen_digit.2.lcssa8.ph.us = phi i8 [ %seen_digit.2.us.lcssa70, %for.end.us-lcssa.us.us-lcssa ], [ %seen_digit.2.us.us.lcssa66, %for.end.us-lcssa.us.us-lcssa.us ]
  %str.4.lcssa6.ph.us = phi i8* [ %str.4.us.lcssa69, %for.end.us-lcssa.us.us-lcssa ], [ %str.4.us.us.lcssa65, %for.end.us-lcssa.us.us-lcssa.us ]
  br label %for.end, !dbg !856

if.end48.split.if.end48.split.split_crit_edge:    ; preds = %if.end48.if.end48.split_crit_edge
  br label %for.cond, !dbg !824

if.end48.split.split.us:                          ; preds = %if.end48.if.end48.split_crit_edge
  br label %for.cond.us11, !dbg !824

for.cond.us11:                                    ; preds = %cleanup.us38, %if.end48.split.split.us
  %float_flag.0.us12 = phi i32 [ 0, %if.end48.split.split.us ], [ %float_flag.2.us39, %cleanup.us38 ], !dbg !825
  %max_digit.0.us13 = phi i32 [ 0, %if.end48.split.split.us ], [ %max_digit.3.us40, %cleanup.us38 ], !dbg !781
  %seen_digit.0.us14 = phi i8 [ 0, %if.end48.split.split.us ], [ %seen_digit.2.us41, %cleanup.us38 ], !dbg !781
  %str.3.us15 = phi i8* [ %str.2, %if.end48.split.split.us ], [ %str.4.us42, %cleanup.us38 ], !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.3.us15, metadata !717, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.0.us14, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.0.us13, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %float_flag.0.us12, metadata !725, metadata !DIExpression()), !dbg !781
  %incdec.ptr49.us16 = getelementptr inbounds i8, i8* %str.3.us15, i64 1, !dbg !826
  call void @llvm.dbg.value(metadata i8* %incdec.ptr49.us16, metadata !717, metadata !DIExpression()), !dbg !781
  %18 = load i8, i8* %str.3.us15, align 1, !dbg !827
  call void @llvm.dbg.value(metadata i8 %18, metadata !727, metadata !DIExpression()), !dbg !828
  %idxprom52.us17 = zext i8 %18 to i64, !dbg !829
  %arrayidx53.us18 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom52.us17, !dbg !829
  %19 = load i16, i16* %arrayidx53.us18, align 2, !dbg !829
  %20 = and i16 %19, 4, !dbg !829
  %tobool56.us19 = icmp eq i16 %20, 0, !dbg !829
  br i1 %tobool56.us19, label %lor.lhs.false57.us20, label %if.then67.us32, !dbg !830

lor.lhs.false57.us20:                             ; preds = %for.cond.us11
  %cmp77.us22 = icmp eq i8 %18, 46, !dbg !833
  br i1 %cmp77.us22, label %if.then79.us28, label %if.else85.us23, !dbg !834

if.else85.us23:                                   ; preds = %lor.lhs.false57.us20
  switch i8 %18, label %lor.lhs.false94.us25 [
    i8 101, label %cleanup.us38
    i8 69, label %cleanup.us38
  ], !dbg !835

lor.lhs.false94.us25:                             ; preds = %if.else85.us23
  br i1 false, label %land.lhs.true97.us26, label %if.else104.us27, !dbg !836

land.lhs.true97.us26:                             ; preds = %lor.lhs.false94.us25
  switch i8 %18, label %land.lhs.true97.us26.if.else104.us27_crit_edge [
    i8 112, label %land.lhs.true97.us26.cleanup.us38_crit_edge
    i8 80, label %land.lhs.true97.us26.cleanup.us38_crit_edge48
  ], !dbg !837

land.lhs.true97.us26.cleanup.us38_crit_edge48:    ; preds = %land.lhs.true97.us26
  br label %cleanup.us38, !dbg !837

land.lhs.true97.us26.cleanup.us38_crit_edge:      ; preds = %land.lhs.true97.us26
  br label %cleanup.us38, !dbg !837

land.lhs.true97.us26.if.else104.us27_crit_edge:   ; preds = %land.lhs.true97.us26
  br label %if.else104.us27, !dbg !837

if.else104.us27:                                  ; preds = %land.lhs.true97.us26.if.else104.us27_crit_edge, %lor.lhs.false94.us25
  call void @llvm.dbg.value(metadata i8* %str.3.us15, metadata !717, metadata !DIExpression()), !dbg !781
  br label %cleanup.us38, !dbg !838

if.then79.us28:                                   ; preds = %lor.lhs.false57.us20
  %cmp80.us29 = icmp eq i32 %float_flag.0.us12, 0, !dbg !840
  br i1 %cmp80.us29, label %cleanup.us38, label %do.body.us30, !dbg !843

do.body.us30:                                     ; preds = %if.then79.us28
  %call.us31 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #6, !dbg !844
  br label %cleanup.us38, !dbg !844

if.then67.us32:                                   ; preds = %for.cond.us11
  call void @llvm.dbg.value(metadata i8 1, metadata !726, metadata !DIExpression()), !dbg !781
  %arrayidx70.us34 = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i64 0, i64 %idxprom52.us17, !dbg !846
  %21 = load i8, i8* %arrayidx70.us34, align 1, !dbg !846
  %conv71.us35 = zext i8 %21 to i32, !dbg !846
  call void @llvm.dbg.value(metadata i32 %conv71.us35, metadata !727, metadata !DIExpression()), !dbg !828
  %cmp72.us36 = icmp ult i32 %max_digit.0.us13, %conv71.us35, !dbg !848
  %spec.select.us37 = select i1 %cmp72.us36, i32 %conv71.us35, i32 %max_digit.0.us13, !dbg !850
  call void @llvm.dbg.value(metadata i32 %spec.select.us37, metadata !722, metadata !DIExpression()), !dbg !781
  br label %cleanup.us38, !dbg !851

cleanup.us38:                                     ; preds = %land.lhs.true97.us26.cleanup.us38_crit_edge48, %land.lhs.true97.us26.cleanup.us38_crit_edge, %if.then67.us32, %do.body.us30, %if.then79.us28, %if.else104.us27, %if.else85.us23, %if.else85.us23
  %float_flag.2.us39 = phi i32 [ %float_flag.0.us12, %do.body.us30 ], [ %float_flag.0.us12, %if.else104.us27 ], [ undef, %land.lhs.true97.us26.cleanup.us38_crit_edge ], [ undef, %land.lhs.true97.us26.cleanup.us38_crit_edge48 ], [ 2, %if.else85.us23 ], [ 2, %if.else85.us23 ], [ %float_flag.0.us12, %if.then67.us32 ], [ 1, %if.then79.us28 ], !dbg !781
  %max_digit.3.us40 = phi i32 [ %max_digit.0.us13, %do.body.us30 ], [ %max_digit.0.us13, %if.else104.us27 ], [ undef, %land.lhs.true97.us26.cleanup.us38_crit_edge ], [ undef, %land.lhs.true97.us26.cleanup.us38_crit_edge48 ], [ %max_digit.0.us13, %if.else85.us23 ], [ %max_digit.0.us13, %if.else85.us23 ], [ %spec.select.us37, %if.then67.us32 ], [ %max_digit.0.us13, %if.then79.us28 ], !dbg !781
  %seen_digit.2.us41 = phi i8 [ %seen_digit.0.us14, %do.body.us30 ], [ %seen_digit.0.us14, %if.else104.us27 ], [ undef, %land.lhs.true97.us26.cleanup.us38_crit_edge ], [ undef, %land.lhs.true97.us26.cleanup.us38_crit_edge48 ], [ %seen_digit.0.us14, %if.else85.us23 ], [ %seen_digit.0.us14, %if.else85.us23 ], [ 1, %if.then67.us32 ], [ %seen_digit.0.us14, %if.then79.us28 ], !dbg !781
  %str.4.us42 = phi i8* [ %incdec.ptr49.us16, %do.body.us30 ], [ %str.3.us15, %if.else104.us27 ], [ undef, %land.lhs.true97.us26.cleanup.us38_crit_edge ], [ undef, %land.lhs.true97.us26.cleanup.us38_crit_edge48 ], [ %incdec.ptr49.us16, %if.else85.us23 ], [ %incdec.ptr49.us16, %if.else85.us23 ], [ %incdec.ptr49.us16, %if.then67.us32 ], [ %incdec.ptr49.us16, %if.then79.us28 ], !dbg !828
  %cleanup.dest.slot.0.us43 = phi i32 [ 6, %do.body.us30 ], [ 2, %if.else104.us27 ], [ undef, %land.lhs.true97.us26.cleanup.us38_crit_edge ], [ undef, %land.lhs.true97.us26.cleanup.us38_crit_edge48 ], [ 2, %if.else85.us23 ], [ 2, %if.else85.us23 ], [ 0, %if.then67.us32 ], [ 0, %if.then79.us28 ]
  call void @llvm.dbg.value(metadata i8* %str.4.us42, metadata !717, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.2.us41, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.3.us40, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %float_flag.2.us39, metadata !725, metadata !DIExpression()), !dbg !781
  switch i32 %cleanup.dest.slot.0.us43, label %cleanup408.loopexit.us-lcssa.us-lcssa.us [
    i32 0, label %for.cond.us11
    i32 2, label %for.end.us-lcssa.us-lcssa.us
  ], !llvm.loop !852

cleanup408.loopexit.us-lcssa.us-lcssa.us:         ; preds = %cleanup.us38
  br label %cleanup408.loopexit.us-lcssa, !dbg !855

for.end.us-lcssa.us-lcssa.us:                     ; preds = %cleanup.us38
  %float_flag.2.us39.lcssa76 = phi i32 [ %float_flag.2.us39, %cleanup.us38 ], !dbg !781
  %max_digit.3.us40.lcssa75 = phi i32 [ %max_digit.3.us40, %cleanup.us38 ], !dbg !781
  %seen_digit.2.us41.lcssa74 = phi i8 [ %seen_digit.2.us41, %cleanup.us38 ], !dbg !781
  %str.4.us42.lcssa73 = phi i8* [ %str.4.us42, %cleanup.us38 ], !dbg !828
  call void @llvm.dbg.value(metadata i32 %float_flag.2.us39.lcssa76, metadata !725, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.3.us40.lcssa75, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.2.us41.lcssa74, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.4.us42.lcssa73, metadata !717, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %float_flag.2.us39.lcssa76, metadata !725, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.3.us40.lcssa75, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.2.us41.lcssa74, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.4.us42.lcssa73, metadata !717, metadata !DIExpression()), !dbg !781
  br label %for.end.us-lcssa, !dbg !856

for.cond:                                         ; preds = %cleanup, %if.end48.split.if.end48.split.split_crit_edge
  %float_flag.0 = phi i32 [ 0, %if.end48.split.if.end48.split.split_crit_edge ], [ %float_flag.2, %cleanup ], !dbg !825
  %max_digit.0 = phi i32 [ 0, %if.end48.split.if.end48.split.split_crit_edge ], [ %max_digit.3, %cleanup ], !dbg !781
  %seen_digit.0 = phi i8 [ 0, %if.end48.split.if.end48.split.split_crit_edge ], [ %seen_digit.2, %cleanup ], !dbg !781
  %str.3 = phi i8* [ %str.2, %if.end48.split.if.end48.split.split_crit_edge ], [ %str.4, %cleanup ], !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.3, metadata !717, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.0, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.0, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %float_flag.0, metadata !725, metadata !DIExpression()), !dbg !781
  %incdec.ptr49 = getelementptr inbounds i8, i8* %str.3, i64 1, !dbg !826
  call void @llvm.dbg.value(metadata i8* %incdec.ptr49, metadata !717, metadata !DIExpression()), !dbg !781
  %22 = load i8, i8* %str.3, align 1, !dbg !827
  call void @llvm.dbg.value(metadata i8 %22, metadata !727, metadata !DIExpression()), !dbg !828
  %idxprom52 = zext i8 %22 to i64, !dbg !829
  %arrayidx53 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom52, !dbg !829
  %23 = load i16, i16* %arrayidx53, align 2, !dbg !829
  %24 = and i16 %23, 4, !dbg !829
  %tobool56 = icmp eq i16 %24, 0, !dbg !829
  br i1 %tobool56, label %lor.lhs.false57, label %if.then67, !dbg !830

lor.lhs.false57:                                  ; preds = %for.cond
  %cmp77 = icmp eq i8 %22, 46, !dbg !833
  br i1 %cmp77, label %if.then79, label %if.else85, !dbg !834

if.then67:                                        ; preds = %for.cond
  call void @llvm.dbg.value(metadata i8 1, metadata !726, metadata !DIExpression()), !dbg !781
  %arrayidx70 = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i64 0, i64 %idxprom52, !dbg !846
  %25 = load i8, i8* %arrayidx70, align 1, !dbg !846
  %conv71 = zext i8 %25 to i32, !dbg !846
  call void @llvm.dbg.value(metadata i32 %conv71, metadata !727, metadata !DIExpression()), !dbg !828
  %cmp72 = icmp ult i32 %max_digit.0, %conv71, !dbg !848
  %spec.select = select i1 %cmp72, i32 %conv71, i32 %max_digit.0, !dbg !850
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !722, metadata !DIExpression()), !dbg !781
  br label %cleanup, !dbg !851

if.then79:                                        ; preds = %lor.lhs.false57
  %cmp80 = icmp eq i32 %float_flag.0, 0, !dbg !840
  br i1 %cmp80, label %cleanup, label %do.body, !dbg !843

do.body:                                          ; preds = %if.then79
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #6, !dbg !844
  br label %cleanup, !dbg !844

if.else85:                                        ; preds = %lor.lhs.false57
  br i1 false, label %land.lhs.true97, label %if.else104, !dbg !836

land.lhs.true97:                                  ; preds = %if.else85
  switch i8 %22, label %land.lhs.true97.if.else104_crit_edge [
    i8 112, label %land.lhs.true97.cleanup_crit_edge
    i8 80, label %land.lhs.true97.cleanup_crit_edge47
  ], !dbg !837

land.lhs.true97.cleanup_crit_edge47:              ; preds = %land.lhs.true97
  br label %cleanup, !dbg !837

land.lhs.true97.cleanup_crit_edge:                ; preds = %land.lhs.true97
  br label %cleanup, !dbg !837

land.lhs.true97.if.else104_crit_edge:             ; preds = %land.lhs.true97
  br label %if.else104, !dbg !837

if.else104:                                       ; preds = %land.lhs.true97.if.else104_crit_edge, %if.else85
  call void @llvm.dbg.value(metadata i8* %str.3, metadata !717, metadata !DIExpression()), !dbg !781
  br label %cleanup, !dbg !838

cleanup:                                          ; preds = %land.lhs.true97.cleanup_crit_edge47, %land.lhs.true97.cleanup_crit_edge, %if.then67, %if.then79, %do.body, %if.else104
  %float_flag.2 = phi i32 [ %float_flag.0, %do.body ], [ %float_flag.0, %if.else104 ], [ undef, %land.lhs.true97.cleanup_crit_edge ], [ undef, %land.lhs.true97.cleanup_crit_edge47 ], [ %float_flag.0, %if.then67 ], [ 1, %if.then79 ], !dbg !781
  %max_digit.3 = phi i32 [ %max_digit.0, %do.body ], [ %max_digit.0, %if.else104 ], [ undef, %land.lhs.true97.cleanup_crit_edge ], [ undef, %land.lhs.true97.cleanup_crit_edge47 ], [ %spec.select, %if.then67 ], [ %max_digit.0, %if.then79 ], !dbg !781
  %seen_digit.2 = phi i8 [ %seen_digit.0, %do.body ], [ %seen_digit.0, %if.else104 ], [ undef, %land.lhs.true97.cleanup_crit_edge ], [ undef, %land.lhs.true97.cleanup_crit_edge47 ], [ 1, %if.then67 ], [ %seen_digit.0, %if.then79 ], !dbg !781
  %str.4 = phi i8* [ %incdec.ptr49, %do.body ], [ %str.3, %if.else104 ], [ undef, %land.lhs.true97.cleanup_crit_edge ], [ undef, %land.lhs.true97.cleanup_crit_edge47 ], [ %incdec.ptr49, %if.then67 ], [ %incdec.ptr49, %if.then79 ], !dbg !828
  %cleanup.dest.slot.0 = phi i32 [ 6, %do.body ], [ 2, %if.else104 ], [ undef, %land.lhs.true97.cleanup_crit_edge ], [ undef, %land.lhs.true97.cleanup_crit_edge47 ], [ 0, %if.then67 ], [ 0, %if.then79 ]
  call void @llvm.dbg.value(metadata i8* %str.4, metadata !717, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.2, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.3, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %float_flag.2, metadata !725, metadata !DIExpression()), !dbg !781
  switch i32 %cleanup.dest.slot.0, label %cleanup408.loopexit.us-lcssa.us-lcssa [
    i32 0, label %for.cond
    i32 2, label %for.end.us-lcssa.us-lcssa
  ], !llvm.loop !852

for.end.us-lcssa.us-lcssa:                        ; preds = %cleanup
  %float_flag.2.lcssa80 = phi i32 [ %float_flag.2, %cleanup ], !dbg !781
  %max_digit.3.lcssa79 = phi i32 [ %max_digit.3, %cleanup ], !dbg !781
  %seen_digit.2.lcssa78 = phi i8 [ %seen_digit.2, %cleanup ], !dbg !781
  %str.4.lcssa77 = phi i8* [ %str.4, %cleanup ], !dbg !828
  call void @llvm.dbg.value(metadata i32 %float_flag.2.lcssa80, metadata !725, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.3.lcssa79, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.2.lcssa78, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.4.lcssa77, metadata !717, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %float_flag.2.lcssa80, metadata !725, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.3.lcssa79, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.2.lcssa78, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.4.lcssa77, metadata !717, metadata !DIExpression()), !dbg !781
  br label %for.end.us-lcssa, !dbg !856

for.end.us-lcssa:                                 ; preds = %for.end.us-lcssa.us-lcssa.us, %for.end.us-lcssa.us-lcssa
  %float_flag.2.lcssa10.ph = phi i32 [ %float_flag.2.lcssa80, %for.end.us-lcssa.us-lcssa ], [ %float_flag.2.us39.lcssa76, %for.end.us-lcssa.us-lcssa.us ]
  %max_digit.3.lcssa9.ph = phi i32 [ %max_digit.3.lcssa79, %for.end.us-lcssa.us-lcssa ], [ %max_digit.3.us40.lcssa75, %for.end.us-lcssa.us-lcssa.us ]
  %seen_digit.2.lcssa8.ph = phi i8 [ %seen_digit.2.lcssa78, %for.end.us-lcssa.us-lcssa ], [ %seen_digit.2.us41.lcssa74, %for.end.us-lcssa.us-lcssa.us ]
  %str.4.lcssa6.ph = phi i8* [ %str.4.lcssa77, %for.end.us-lcssa.us-lcssa ], [ %str.4.us42.lcssa73, %for.end.us-lcssa.us-lcssa.us ]
  br label %for.end, !dbg !856

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %float_flag.2.lcssa10 = phi i32 [ %float_flag.2.lcssa10.ph, %for.end.us-lcssa ], [ %float_flag.2.lcssa10.ph.us, %for.end.us-lcssa.us ], !dbg !781
  %max_digit.3.lcssa9 = phi i32 [ %max_digit.3.lcssa9.ph, %for.end.us-lcssa ], [ %max_digit.3.lcssa9.ph.us, %for.end.us-lcssa.us ], !dbg !781
  %seen_digit.2.lcssa8 = phi i8 [ %seen_digit.2.lcssa8.ph, %for.end.us-lcssa ], [ %seen_digit.2.lcssa8.ph.us, %for.end.us-lcssa.us ], !dbg !781
  %str.4.lcssa6 = phi i8* [ %str.4.lcssa6.ph, %for.end.us-lcssa ], [ %str.4.lcssa6.ph.us, %for.end.us-lcssa.us ], !dbg !828
  call void @llvm.dbg.value(metadata i32 %float_flag.2.lcssa10, metadata !725, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %max_digit.3.lcssa9, metadata !722, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8 %seen_digit.2.lcssa8, metadata !726, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.4.lcssa6, metadata !717, metadata !DIExpression()), !dbg !781
  %cmp108 = icmp ne i32 %radix.2, 16, !dbg !856
  %cmp111 = icmp eq i32 %float_flag.2.lcssa10, 0, !dbg !858
  %or.cond1 = and i1 %cmp108, %cmp111, !dbg !859
  br i1 %or.cond1, label %if.then113, label %if.end131, !dbg !859

if.then113:                                       ; preds = %for.end
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64, !dbg !860
  %sub.ptr.rhs.cast = ptrtoint i8* %str.4.lcssa6 to i64, !dbg !860
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !860
  %call114 = tail call fastcc i32 @interpret_float_suffix(i8* %str.4.lcssa6, i64 %sub.ptr.sub) #7, !dbg !862
  call void @llvm.dbg.value(metadata i32 %call114, metadata !723, metadata !DIExpression()), !dbg !781
  %26 = and i32 %call114, 3145728, !dbg !863
  %27 = icmp eq i32 %26, 0, !dbg !863
  br i1 %27, label %if.end131, label %if.then120, !dbg !863

if.then120:                                       ; preds = %if.then113
  %or = or i32 %call114, 2, !dbg !865
  call void @llvm.dbg.value(metadata i32 %or, metadata !723, metadata !DIExpression()), !dbg !781
  %cmp121 = icmp eq i32 %radix.2, 8, !dbg !867
  %spec.select3 = select i1 %cmp121, i32 10, i32 %radix.2, !dbg !869
  call void @llvm.dbg.value(metadata i32 %spec.select3, metadata !724, metadata !DIExpression()), !dbg !781
  %pedantic = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !870
  %28 = load i8, i8* %pedantic, align 1, !dbg !870
  %tobool125 = icmp eq i8 %28, 0, !dbg !870
  br i1 %tobool125, label %syntax_ok, label %if.then126, !dbg !872

if.then126:                                       ; preds = %if.then120
  %call127 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !873
  br label %syntax_ok, !dbg !873

if.end131:                                        ; preds = %if.then113, %for.end
  %cmp132 = icmp ne i32 %float_flag.2.lcssa10, 0, !dbg !874
  %cmp135 = icmp eq i32 %radix.2, 8, !dbg !876
  %or.cond4 = and i1 %cmp132, %cmp135, !dbg !877
  %radix.4 = select i1 %or.cond4, i32 10, i32 %radix.2, !dbg !877
  call void @llvm.dbg.value(metadata i32 %radix.4, metadata !724, metadata !DIExpression()), !dbg !781
  %cmp139 = icmp ult i32 %max_digit.3.lcssa9, %radix.4, !dbg !878
  br i1 %cmp139, label %if.end156, label %if.then141, !dbg !880

if.then141:                                       ; preds = %if.end131
  %cmp142 = icmp eq i32 %radix.4, 2, !dbg !881
  %add = add i32 %max_digit.3.lcssa9, 48, !dbg !884
  br i1 %cmp142, label %do.body145, label %do.body150, !dbg !885

do.body145:                                       ; preds = %if.then141
  %call146 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %add) #6, !dbg !886
  br label %cleanup408, !dbg !886

do.body150:                                       ; preds = %if.then141
  %call152 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %add) #6, !dbg !888
  br label %cleanup408, !dbg !888

if.end156:                                        ; preds = %if.end131
  br i1 %cmp111, label %if.else307, label %if.then159, !dbg !890

if.then159:                                       ; preds = %if.end156
  switch i32 %radix.4, label %if.end187 [
    i32 2, label %if.then162
    i32 16, label %land.lhs.true167
  ], !dbg !891

if.then162:                                       ; preds = %if.then159
  %call163 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !893
  br label %cleanup408, !dbg !896

land.lhs.true167:                                 ; preds = %if.then159
  %tobool168 = icmp eq i8 %seen_digit.2.lcssa8, 0, !dbg !897
  br i1 %tobool168, label %do.body170, label %if.end174, !dbg !899

do.body170:                                       ; preds = %land.lhs.true167
  %call171 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !900
  br label %cleanup408, !dbg !900

if.end174:                                        ; preds = %land.lhs.true167
  br i1 true, label %land.lhs.true177, label %if.end174.if.end187_crit_edge, !dbg !902

if.end174.if.end187_crit_edge:                    ; preds = %if.end174
  br label %if.end187, !dbg !902

land.lhs.true177:                                 ; preds = %if.end174
  %pedantic179 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !904
  %29 = load i8, i8* %pedantic179, align 1, !dbg !904
  %tobool181 = icmp eq i8 %29, 0, !dbg !904
  br i1 %tobool181, label %if.end187, label %land.lhs.true182, !dbg !905

land.lhs.true182:                                 ; preds = %land.lhs.true177
  %c99 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 29, !dbg !906
  %30 = load i8, i8* %c99, align 1, !dbg !906
  %tobool184 = icmp eq i8 %30, 0, !dbg !906
  br i1 %tobool184, label %if.then185, label %if.end187, !dbg !907

if.then185:                                       ; preds = %land.lhs.true182
  %call186 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !908
  br label %if.end187, !dbg !908

if.end187:                                        ; preds = %if.end174.if.end187_crit_edge, %land.lhs.true182, %land.lhs.true177, %if.then159, %if.then185
  %cmp188 = icmp eq i32 %float_flag.2.lcssa10, 2, !dbg !909
  br i1 %cmp188, label %if.then190, label %if.else225, !dbg !911

if.then190:                                       ; preds = %if.end187
  %31 = load i8, i8* %str.4.lcssa6, align 1, !dbg !912
  %cmp192 = icmp eq i8 %31, 43, !dbg !915
  br i1 %cmp192, label %if.then198, label %lor.lhs.false194, !dbg !916

lor.lhs.false194:                                 ; preds = %if.then190
  %cmp196 = icmp eq i8 %31, 45, !dbg !917
  br i1 %cmp196, label %if.then198, label %if.end200, !dbg !918

if.then198:                                       ; preds = %lor.lhs.false194, %if.then190
  %incdec.ptr199 = getelementptr inbounds i8, i8* %str.4.lcssa6, i64 1, !dbg !919
  call void @llvm.dbg.value(metadata i8* %incdec.ptr199, metadata !717, metadata !DIExpression()), !dbg !781
  %.pre = load i8, i8* %incdec.ptr199, align 1, !dbg !920
  br label %if.end200, !dbg !922

if.end200:                                        ; preds = %if.then198, %lor.lhs.false194
  %32 = phi i8 [ %.pre, %if.then198 ], [ %31, %lor.lhs.false194 ], !dbg !920
  %str.5 = phi i8* [ %incdec.ptr199, %if.then198 ], [ %str.4.lcssa6, %lor.lhs.false194 ], !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.5, metadata !717, metadata !DIExpression()), !dbg !781
  %idxprom203 = zext i8 %32 to i64, !dbg !920
  %arrayidx204 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom203, !dbg !920
  %33 = load i16, i16* %arrayidx204, align 2, !dbg !920
  %34 = and i16 %33, 4, !dbg !920
  %tobool207 = icmp eq i16 %34, 0, !dbg !920
  br i1 %tobool207, label %do.body209, label %do.body214.preheader, !dbg !923

do.body214.preheader:                             ; preds = %if.end200
  br label %do.body214, !dbg !924

do.body209:                                       ; preds = %if.end200
  %call210 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !925
  br label %cleanup408, !dbg !925

do.body214:                                       ; preds = %do.body214.preheader, %do.body214
  %str.6 = phi i8* [ %incdec.ptr215, %do.body214 ], [ %str.5, %do.body214.preheader ], !dbg !927
  call void @llvm.dbg.value(metadata i8* %str.6, metadata !717, metadata !DIExpression()), !dbg !781
  %incdec.ptr215 = getelementptr inbounds i8, i8* %str.6, i64 1, !dbg !928
  call void @llvm.dbg.value(metadata i8* %incdec.ptr215, metadata !717, metadata !DIExpression()), !dbg !781
  %35 = load i8, i8* %incdec.ptr215, align 1, !dbg !929
  %idxprom219 = zext i8 %35 to i64, !dbg !929
  %arrayidx220 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom219, !dbg !929
  %36 = load i16, i16* %arrayidx220, align 2, !dbg !929
  %37 = and i16 %36, 4, !dbg !929
  %tobool223 = icmp eq i16 %37, 0, !dbg !930
  br i1 %tobool223, label %if.end234.loopexit, label %do.body214, !dbg !930, !llvm.loop !931

if.else225:                                       ; preds = %if.end187
  %cmp226 = icmp eq i32 %radix.4, 16, !dbg !933
  br i1 %cmp226, label %do.body229, label %if.end234, !dbg !935

do.body229:                                       ; preds = %if.else225
  %call230 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !936
  br label %cleanup408, !dbg !936

if.end234.loopexit:                               ; preds = %do.body214
  %incdec.ptr215.lcssa = phi i8* [ %incdec.ptr215, %do.body214 ], !dbg !928
  br label %if.end234, !dbg !938

if.end234:                                        ; preds = %if.end234.loopexit, %if.else225
  %str.7 = phi i8* [ %str.4.lcssa6, %if.else225 ], [ %incdec.ptr215.lcssa, %if.end234.loopexit ], !dbg !781
  call void @llvm.dbg.value(metadata i8* %str.7, metadata !717, metadata !DIExpression()), !dbg !781
  %sub.ptr.lhs.cast235 = ptrtoint i8* %add.ptr to i64, !dbg !938
  %sub.ptr.rhs.cast236 = ptrtoint i8* %str.7 to i64, !dbg !938
  %sub.ptr.sub237 = sub i64 %sub.ptr.lhs.cast235, %sub.ptr.rhs.cast236, !dbg !938
  %call238 = tail call fastcc i32 @interpret_float_suffix(i8* %str.7, i64 %sub.ptr.sub237) #7, !dbg !939
  call void @llvm.dbg.value(metadata i32 %call238, metadata !723, metadata !DIExpression()), !dbg !781
  %cmp239 = icmp eq i32 %call238, 0, !dbg !940
  br i1 %cmp239, label %if.then241, label %if.end247, !dbg !942

if.then241:                                       ; preds = %if.end234
  %conv245 = trunc i64 %sub.ptr.sub237 to i32, !dbg !943
  %call246 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %conv245, i8* %str.7) #6, !dbg !945
  br label %cleanup408, !dbg !946

if.end247:                                        ; preds = %if.end234
  %cmp248 = icmp eq i8* %add.ptr, %str.7, !dbg !947
  br i1 %cmp248, label %if.end263, label %land.lhs.true250, !dbg !949

land.lhs.true250:                                 ; preds = %if.end247
  %warn_traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 17, !dbg !950
  %38 = load i8, i8* %warn_traditional, align 1, !dbg !950
  %tobool253 = icmp eq i8 %38, 0, !dbg !950
  br i1 %tobool253, label %if.end263, label %land.lhs.true254, !dbg !951

land.lhs.true254:                                 ; preds = %land.lhs.true250
  %call255 = tail call i32 @cpp_sys_macro_p(%struct.cpp_reader* %pfile) #6, !dbg !952
  %tobool256 = icmp eq i32 %call255, 0, !dbg !952
  br i1 %tobool256, label %if.then257, label %if.end263, !dbg !953

if.then257:                                       ; preds = %land.lhs.true254
  %conv261 = trunc i64 %sub.ptr.sub237 to i32, !dbg !954
  %call262 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %conv261, i8* %str.7) #6, !dbg !955
  br label %if.end263, !dbg !955

if.end263:                                        ; preds = %land.lhs.true254, %land.lhs.true250, %if.end247, %if.then257
  %cmp264 = icmp eq i32 %call238, 32, !dbg !956
  br i1 %cmp264, label %land.lhs.true266, label %if.end273, !dbg !958

land.lhs.true266:                                 ; preds = %if.end263
  %pedantic268 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !959
  %39 = load i8, i8* %pedantic268, align 1, !dbg !959
  %tobool270 = icmp eq i8 %39, 0, !dbg !959
  br i1 %tobool270, label %if.end273, label %if.then271, !dbg !960

if.then271:                                       ; preds = %land.lhs.true266
  %call272 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !961
  br label %if.end273, !dbg !961

if.end273:                                        ; preds = %land.lhs.true266, %if.then271, %if.end263
  %and274 = and i32 %call238, 16384, !dbg !962
  %tobool275 = icmp ne i32 %and274, 0, !dbg !962
  %cmp277 = icmp ne i32 %radix.4, 10, !dbg !964
  %or.cond5 = and i1 %tobool275, %cmp277, !dbg !965
  br i1 %or.cond5, label %if.then279, label %if.end285, !dbg !965

if.then279:                                       ; preds = %if.end273
  %conv283 = trunc i64 %sub.ptr.sub237 to i32, !dbg !966
  %call284 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0), i32 %conv283, i8* %str.7) #6, !dbg !968
  br label %cleanup408, !dbg !969

if.end285:                                        ; preds = %if.end273
  %and286 = and i32 %call238, 3145728, !dbg !970
  %tobool287 = icmp eq i32 %and286, 0, !dbg !970
  br i1 %tobool287, label %if.end295, label %land.lhs.true288, !dbg !972

land.lhs.true288:                                 ; preds = %if.end285
  %pedantic290 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !973
  %40 = load i8, i8* %pedantic290, align 1, !dbg !973
  %tobool292 = icmp eq i8 %40, 0, !dbg !973
  br i1 %tobool292, label %if.end295, label %if.then293, !dbg !974

if.then293:                                       ; preds = %land.lhs.true288
  %call294 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !975
  br label %if.end295, !dbg !975

if.end295:                                        ; preds = %land.lhs.true288, %if.end285, %if.then293
  %tobool297 = icmp eq i32 %and274, 0, !dbg !976
  br i1 %tobool297, label %if.end305, label %land.lhs.true298, !dbg !978

land.lhs.true298:                                 ; preds = %if.end295
  %pedantic300 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !979
  %41 = load i8, i8* %pedantic300, align 1, !dbg !979
  %tobool302 = icmp eq i8 %41, 0, !dbg !979
  br i1 %tobool302, label %if.end305, label %if.then303, !dbg !980

if.then303:                                       ; preds = %land.lhs.true298
  %call304 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !981
  br label %if.end305, !dbg !981

if.end305:                                        ; preds = %land.lhs.true298, %if.end295, %if.then303
  %or306 = or i32 %call238, 2, !dbg !982
  call void @llvm.dbg.value(metadata i32 %or306, metadata !723, metadata !DIExpression()), !dbg !781
  br label %syntax_ok, !dbg !983

if.else307:                                       ; preds = %if.end156
  %sub.ptr.lhs.cast308 = ptrtoint i8* %add.ptr to i64, !dbg !984
  %sub.ptr.rhs.cast309 = ptrtoint i8* %str.4.lcssa6 to i64, !dbg !984
  %sub.ptr.sub310 = sub i64 %sub.ptr.lhs.cast308, %sub.ptr.rhs.cast309, !dbg !984
  %call311 = tail call fastcc i32 @interpret_int_suffix(i8* %str.4.lcssa6, i64 %sub.ptr.sub310) #7, !dbg !985
  call void @llvm.dbg.value(metadata i32 %call311, metadata !723, metadata !DIExpression()), !dbg !781
  %cmp312 = icmp eq i32 %call311, 0, !dbg !986
  br i1 %cmp312, label %if.then314, label %if.end320, !dbg !988

if.then314:                                       ; preds = %if.else307
  %conv318 = trunc i64 %sub.ptr.sub310 to i32, !dbg !989
  %call319 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %conv318, i8* %str.4.lcssa6) #6, !dbg !991
  br label %cleanup408, !dbg !992

if.end320:                                        ; preds = %if.else307
  %warn_traditional322 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 17, !dbg !993
  %42 = load i8, i8* %warn_traditional322, align 1, !dbg !993
  %tobool324 = icmp eq i8 %42, 0, !dbg !993
  br i1 %tobool324, label %if.end347, label %land.lhs.true325, !dbg !994

land.lhs.true325:                                 ; preds = %if.end320
  %call326 = tail call i32 @cpp_sys_macro_p(%struct.cpp_reader* %pfile) #6, !dbg !995
  %tobool327 = icmp eq i32 %call326, 0, !dbg !995
  br i1 %tobool327, label %if.then328, label %if.end347, !dbg !996

if.then328:                                       ; preds = %land.lhs.true325
  %and329 = and i32 %call311, 12288, !dbg !997
  call void @llvm.dbg.value(metadata i32 %and329, metadata !731, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i1 undef, metadata !736, metadata !DIExpression()), !dbg !998
  %tobool333 = icmp eq i32 %and329, 0, !dbg !999
  br i1 %tobool333, label %lor.lhs.false334, label %if.then340, !dbg !1001

lor.lhs.false334:                                 ; preds = %if.then328
  %and330 = and i32 %call311, 240, !dbg !1002
  %cmp331 = icmp eq i32 %and330, 64, !dbg !1003
  call void @llvm.dbg.value(metadata i1 %cmp331, metadata !736, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i1 %cmp331, metadata !736, metadata !DIExpression()), !dbg !998
  br i1 %cmp331, label %land.lhs.true336, label %if.end347, !dbg !1004

land.lhs.true336:                                 ; preds = %lor.lhs.false334
  %warn_long_long = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 18, !dbg !1005
  %43 = load i8, i8* %warn_long_long, align 8, !dbg !1005
  %tobool339 = icmp eq i8 %43, 0, !dbg !1005
  br i1 %tobool339, label %if.end347, label %if.then340, !dbg !1006

if.then340:                                       ; preds = %land.lhs.true336, %if.then328
  %conv344 = trunc i64 %sub.ptr.sub310 to i32, !dbg !1007
  %call345 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %conv344, i8* %str.4.lcssa6) #6, !dbg !1008
  br label %if.end347, !dbg !1008

if.end347:                                        ; preds = %land.lhs.true336, %land.lhs.true325, %if.end320, %lor.lhs.false334, %if.then340
  %and348 = and i32 %call311, 240, !dbg !1009
  %cmp349 = icmp eq i32 %and348, 64, !dbg !1011
  br i1 %cmp349, label %land.lhs.true351, label %if.end366, !dbg !1012

land.lhs.true351:                                 ; preds = %if.end347
  %warn_long_long353 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 18, !dbg !1013
  %44 = load i8, i8* %warn_long_long353, align 8, !dbg !1013
  %tobool355 = icmp eq i8 %44, 0, !dbg !1013
  br i1 %tobool355, label %if.end366, label %if.then356, !dbg !1014

if.then356:                                       ; preds = %land.lhs.true351
  %c99358 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 29, !dbg !1015
  %45 = load i8, i8* %c99358, align 1, !dbg !1015
  %tobool360 = icmp eq i8 %45, 0, !dbg !1015
  %cond = select i1 %tobool360, i32 2, i32 0, !dbg !1015
  %cplusplus = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 2, !dbg !1016
  %46 = load i8, i8* %cplusplus, align 8, !dbg !1016
  %tobool363 = icmp eq i8 %46, 0, !dbg !1016
  %cond364 = select i1 %tobool363, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), !dbg !1016
  %call365 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 %cond, i8* %cond364) #6, !dbg !1017
  br label %if.end366, !dbg !1017

if.end366:                                        ; preds = %land.lhs.true351, %if.then356, %if.end347
  %or367 = or i32 %call311, 1, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %or367, metadata !723, metadata !DIExpression()), !dbg !781
  br label %syntax_ok

syntax_ok:                                        ; preds = %if.then120, %if.end305, %if.end366, %if.then126
  %radix.5 = phi i32 [ %spec.select3, %if.then126 ], [ %spec.select3, %if.then120 ], [ %radix.4, %if.end366 ], [ %radix.4, %if.end305 ], !dbg !781
  %result.1 = phi i32 [ %or, %if.then126 ], [ %or, %if.then120 ], [ %or367, %if.end366 ], [ %or306, %if.end305 ], !dbg !781
  call void @llvm.dbg.value(metadata i32 %result.1, metadata !723, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %radix.5, metadata !724, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.label(metadata !737), !dbg !1019
  %and369 = and i32 %result.1, 8192, !dbg !1020
  %tobool370 = icmp eq i32 %and369, 0, !dbg !1020
  br i1 %tobool370, label %if.end378, label %land.lhs.true371, !dbg !1022

land.lhs.true371:                                 ; preds = %syntax_ok
  %pedantic373 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !1023
  %47 = load i8, i8* %pedantic373, align 1, !dbg !1023
  %tobool375 = icmp eq i8 %47, 0, !dbg !1023
  br i1 %tobool375, label %if.end378, label %if.then376, !dbg !1024

if.then376:                                       ; preds = %land.lhs.true371
  %call377 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !1025
  br label %if.end378, !dbg !1025

if.end378:                                        ; preds = %land.lhs.true371, %syntax_ok, %if.then376
  switch i32 %radix.5, label %if.else403 [
    i32 2, label %land.lhs.true381
    i32 10, label %if.then391
    i32 16, label %if.then396
  ], !dbg !1026

land.lhs.true381:                                 ; preds = %if.end378
  %pedantic383 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !1028
  %48 = load i8, i8* %pedantic383, align 1, !dbg !1028
  %tobool385 = icmp eq i8 %48, 0, !dbg !1028
  br i1 %tobool385, label %if.end388, label %if.then386, !dbg !1029

if.then386:                                       ; preds = %land.lhs.true381
  %call387 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !1030
  br label %if.end388, !dbg !1030

if.end388:                                        ; preds = %land.lhs.true381, %if.then386
  switch i32 2, label %if.else403 [
    i32 10, label %if.then391
    i32 16, label %if.then396
    i32 2, label %if.then401
  ], !dbg !1031

if.then391:                                       ; preds = %if.end378, %if.end388
  %or392 = or i32 %result.1, 256, !dbg !1032
  call void @llvm.dbg.value(metadata i32 %or392, metadata !723, metadata !DIExpression()), !dbg !781
  br label %cleanup408, !dbg !1034

if.then396:                                       ; preds = %if.end378, %if.end388
  %or397 = or i32 %result.1, 512, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %or397, metadata !723, metadata !DIExpression()), !dbg !781
  br label %cleanup408, !dbg !1037

if.then401:                                       ; preds = %if.end388
  %or402 = or i32 %result.1, 2048, !dbg !1038
  call void @llvm.dbg.value(metadata i32 %or402, metadata !723, metadata !DIExpression()), !dbg !781
  br label %cleanup408, !dbg !1040

if.else403:                                       ; preds = %if.end378, %if.end388
  %or404 = or i32 %result.1, 1024, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %or404, metadata !723, metadata !DIExpression()), !dbg !781
  br label %cleanup408

cleanup408.loopexit.us-lcssa.us-lcssa:            ; preds = %cleanup
  br label %cleanup408.loopexit.us-lcssa, !dbg !855

cleanup408.loopexit.us-lcssa:                     ; preds = %cleanup408.loopexit.us-lcssa.us-lcssa.us, %cleanup408.loopexit.us-lcssa.us-lcssa
  br label %cleanup408.loopexit, !dbg !855

cleanup408.loopexit:                              ; preds = %cleanup408.loopexit.us-lcssa.us, %cleanup408.loopexit.us-lcssa
  br label %cleanup408, !dbg !855

cleanup408:                                       ; preds = %cleanup408.loopexit, %do.body145, %do.body150, %do.body170, %do.body209, %do.body229, %if.then391, %if.then401, %if.else403, %if.then396, %entry, %if.then314, %if.then279, %if.then241, %if.then162
  %retval.0 = phi i32 [ 0, %if.then162 ], [ 0, %if.then241 ], [ 0, %if.then279 ], [ 0, %if.then314 ], [ 273, %entry ], [ %or392, %if.then391 ], [ %or397, %if.then396 ], [ %or402, %if.then401 ], [ %or404, %if.else403 ], [ 0, %do.body229 ], [ 0, %do.body209 ], [ 0, %do.body170 ], [ 0, %do.body150 ], [ 0, %do.body145 ], [ 0, %cleanup408.loopexit ]
  ret i32 %retval.0, !dbg !855
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare dso_local zeroext i8 @cpp_error(%struct.cpp_reader*, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @interpret_float_suffix(i8* %s, i64 %len) unnamed_addr #3 !dbg !1042 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !1046, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %len, metadata !1047, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 0, metadata !1048, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 0, metadata !1054, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 0, metadata !1053, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 0, metadata !1052, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 0, metadata !1051, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 0, metadata !1050, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 0, metadata !1049, metadata !DIExpression()), !dbg !1058
  %cmp = icmp eq i64 %len, 2, !dbg !1059
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1060

land.lhs.true:                                    ; preds = %entry
  %0 = load i8, i8* %s, align 1, !dbg !1061
  %cmp1 = icmp eq i8 %0, 100, !dbg !1062
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !1063

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp4 = icmp eq i8 %0, 68, !dbg !1064
  br i1 %cmp4, label %if.then, label %if.end, !dbg !1065

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %cmp7 = icmp eq i8 %0, 68, !dbg !1066
  call void @llvm.dbg.value(metadata i1 %cmp7, metadata !1055, metadata !DIExpression()), !dbg !1067
  %arrayidx = getelementptr inbounds i8, i8* %s, i64 1, !dbg !1068
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1068
  switch i8 %1, label %cleanup [
    i8 102, label %sw.bb
    i8 70, label %sw.bb11
    i8 100, label %sw.bb15
    i8 68, label %sw.bb19
    i8 108, label %sw.bb23
    i8 76, label %sw.bb27
  ], !dbg !1069

sw.bb:                                            ; preds = %if.then
  call void @llvm.dbg.value(metadata i1 %cmp7, metadata !1055, metadata !DIExpression()), !dbg !1067
  %cond = select i1 %cmp7, i32 0, i32 16400, !dbg !1070
  br label %cleanup, !dbg !1072

sw.bb11:                                          ; preds = %if.then
  %cond14 = select i1 %cmp7, i32 16400, i32 0, !dbg !1073
  br label %cleanup, !dbg !1074

sw.bb15:                                          ; preds = %if.then
  %cond18 = select i1 %cmp7, i32 0, i32 16416, !dbg !1075
  br label %cleanup, !dbg !1076

sw.bb19:                                          ; preds = %if.then
  %cond22 = select i1 %cmp7, i32 16416, i32 0, !dbg !1077
  br label %cleanup, !dbg !1078

sw.bb23:                                          ; preds = %if.then
  %cond26 = select i1 %cmp7, i32 0, i32 16448, !dbg !1079
  br label %cleanup, !dbg !1080

sw.bb27:                                          ; preds = %if.then
  %cond30 = select i1 %cmp7, i32 16448, i32 0, !dbg !1081
  br label %cleanup, !dbg !1082

cleanup:                                          ; preds = %if.then, %sw.bb27, %sw.bb23, %sw.bb19, %sw.bb15, %sw.bb11, %sw.bb
  %cleanup.dest.slot.0 = phi i1 [ false, %sw.bb27 ], [ false, %sw.bb23 ], [ false, %sw.bb19 ], [ false, %sw.bb15 ], [ false, %sw.bb11 ], [ false, %sw.bb ], [ true, %if.then ]
  %retval.0 = phi i32 [ %cond30, %sw.bb27 ], [ %cond26, %sw.bb23 ], [ %cond22, %sw.bb19 ], [ %cond18, %sw.bb15 ], [ %cond14, %sw.bb11 ], [ %cond, %sw.bb ], [ undef, %if.then ]
  br i1 %cleanup.dest.slot.0, label %if.end, label %cleanup155

if.end:                                           ; preds = %cleanup, %lor.lhs.false, %entry
  %sub = add i64 %len, -1, !dbg !1083
  %arrayidx31 = getelementptr inbounds i8, i8* %s, i64 %sub, !dbg !1084
  %2 = load i8, i8* %arrayidx31, align 1, !dbg !1084
  switch i8 %2, label %sw.default35 [
    i8 107, label %sw.epilog36
    i8 75, label %sw.epilog36
    i8 114, label %sw.bb34
    i8 82, label %sw.bb34
  ], !dbg !1085

sw.bb34:                                          ; preds = %if.end, %if.end
  call void @llvm.dbg.value(metadata i64 1048576, metadata !1048, metadata !DIExpression()), !dbg !1058
  br label %sw.epilog36, !dbg !1086

sw.default35:                                     ; preds = %if.end
  br label %sw.epilog36, !dbg !1088

sw.epilog36:                                      ; preds = %if.end, %if.end, %sw.default35, %sw.bb34
  %flags.0 = phi i64 [ 0, %sw.default35 ], [ 1048576, %sw.bb34 ], [ 2097152, %if.end ], [ 2097152, %if.end ], !dbg !1058
  call void @llvm.dbg.value(metadata i64 %flags.0, metadata !1048, metadata !DIExpression()), !dbg !1058
  %tobool37 = icmp eq i64 %flags.0, 0, !dbg !1089
  br i1 %tobool37, label %while.cond.preheader, label %if.then38, !dbg !1091

while.cond.preheader:                             ; preds = %sw.epilog36
  br label %while.cond, !dbg !1092

if.then38:                                        ; preds = %sw.epilog36
  %cmp39 = icmp eq i64 %len, 1, !dbg !1093
  br i1 %cmp39, label %if.then41, label %if.end43, !dbg !1096

if.then41:                                        ; preds = %if.then38
  %conv42 = trunc i64 %flags.0 to i32, !dbg !1097
  br label %cleanup155, !dbg !1098

if.end43:                                         ; preds = %if.then38
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1047, metadata !DIExpression()), !dbg !1058
  %3 = load i8, i8* %s, align 1, !dbg !1099
  %cmp45 = icmp eq i8 %3, 117, !dbg !1101
  br i1 %cmp45, label %if.then51, label %lor.lhs.false47, !dbg !1102

lor.lhs.false47:                                  ; preds = %if.end43
  %cmp49 = icmp eq i8 %3, 85, !dbg !1103
  br i1 %cmp49, label %if.then51, label %if.end58, !dbg !1104

if.then51:                                        ; preds = %lor.lhs.false47, %if.end43
  %or = or i64 %flags.0, 4096, !dbg !1105
  call void @llvm.dbg.value(metadata i64 %or, metadata !1048, metadata !DIExpression()), !dbg !1058
  %cmp52 = icmp eq i64 %sub, 1, !dbg !1107
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !1109

if.then54:                                        ; preds = %if.then51
  %conv55 = trunc i64 %or to i32, !dbg !1110
  br label %cleanup155, !dbg !1111

if.end56:                                         ; preds = %if.then51
  %dec57 = add i64 %len, -2, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %dec57, metadata !1047, metadata !DIExpression()), !dbg !1058
  %incdec.ptr = getelementptr inbounds i8, i8* %s, i64 1, !dbg !1113
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1046, metadata !DIExpression()), !dbg !1058
  %.pre = load i8, i8* %incdec.ptr, align 1, !dbg !1114
  br label %if.end58, !dbg !1115

if.end58:                                         ; preds = %if.end56, %lor.lhs.false47
  %4 = phi i8 [ %.pre, %if.end56 ], [ %3, %lor.lhs.false47 ], !dbg !1114
  %flags.1 = phi i64 [ %or, %if.end56 ], [ %flags.0, %lor.lhs.false47 ], !dbg !1058
  %len.addr.0 = phi i64 [ %dec57, %if.end56 ], [ %sub, %lor.lhs.false47 ], !dbg !1116
  %s.addr.0 = phi i8* [ %incdec.ptr, %if.end56 ], [ %s, %lor.lhs.false47 ]
  call void @llvm.dbg.value(metadata i8* %s.addr.0, metadata !1046, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %len.addr.0, metadata !1047, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %flags.1, metadata !1048, metadata !DIExpression()), !dbg !1058
  %conv59 = zext i8 %4 to i32, !dbg !1114
  %5 = add nsw i32 %conv59, -72, !dbg !1117
  %6 = lshr i32 %5, 2, !dbg !1117
  %7 = shl i32 %5, 30, !dbg !1117
  %8 = or i32 %6, %7, !dbg !1117
  switch i32 %8, label %cleanup155 [
    i32 8, label %sw.bb60
    i32 0, label %sw.bb60
    i32 9, label %sw.bb67
    i32 1, label %sw.bb85
  ], !dbg !1117

sw.bb60:                                          ; preds = %if.end58, %if.end58
  %cmp61 = icmp eq i64 %len.addr.0, 1, !dbg !1118
  br i1 %cmp61, label %if.then63, label %cleanup155, !dbg !1121

if.then63:                                        ; preds = %sw.bb60
  call void @llvm.dbg.value(metadata i64 %flags.1, metadata !1048, metadata !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value)), !dbg !1058
  %9 = trunc i64 %flags.1 to i32, !dbg !1122
  %conv65 = or i32 %9, 16, !dbg !1122
  br label %cleanup155, !dbg !1123

sw.bb67:                                          ; preds = %if.end58
  switch i64 %len.addr.0, label %cleanup155 [
    i64 1, label %if.then70
    i64 2, label %land.lhs.true76
  ], !dbg !1124

if.then70:                                        ; preds = %sw.bb67
  call void @llvm.dbg.value(metadata i64 %flags.1, metadata !1048, metadata !DIExpression(DW_OP_constu, 32, DW_OP_or, DW_OP_stack_value)), !dbg !1058
  %10 = trunc i64 %flags.1 to i32, !dbg !1125
  %conv72 = or i32 %10, 32, !dbg !1125
  br label %cleanup155, !dbg !1127

land.lhs.true76:                                  ; preds = %sw.bb67
  %arrayidx77 = getelementptr inbounds i8, i8* %s.addr.0, i64 1, !dbg !1128
  %11 = load i8, i8* %arrayidx77, align 1, !dbg !1128
  %cmp79 = icmp eq i8 %11, 108, !dbg !1130
  br i1 %cmp79, label %if.then81, label %cleanup155, !dbg !1131

if.then81:                                        ; preds = %land.lhs.true76
  call void @llvm.dbg.value(metadata i64 %flags.1, metadata !1048, metadata !DIExpression(DW_OP_constu, 64, DW_OP_or, DW_OP_stack_value)), !dbg !1058
  %12 = trunc i64 %flags.1 to i32, !dbg !1132
  %conv83 = or i32 %12, 64, !dbg !1132
  br label %cleanup155, !dbg !1133

sw.bb85:                                          ; preds = %if.end58
  switch i64 %len.addr.0, label %cleanup155 [
    i64 1, label %if.then88
    i64 2, label %land.lhs.true94
  ], !dbg !1134

if.then88:                                        ; preds = %sw.bb85
  call void @llvm.dbg.value(metadata i64 %flags.1, metadata !1048, metadata !DIExpression(DW_OP_constu, 32, DW_OP_or, DW_OP_stack_value)), !dbg !1058
  %13 = trunc i64 %flags.1 to i32, !dbg !1135
  %conv90 = or i32 %13, 32, !dbg !1135
  br label %cleanup155, !dbg !1137

land.lhs.true94:                                  ; preds = %sw.bb85
  %arrayidx95 = getelementptr inbounds i8, i8* %s.addr.0, i64 1, !dbg !1138
  %14 = load i8, i8* %arrayidx95, align 1, !dbg !1138
  %cmp97 = icmp eq i8 %14, 76, !dbg !1140
  br i1 %cmp97, label %if.then99, label %cleanup155, !dbg !1141

if.then99:                                        ; preds = %land.lhs.true94
  call void @llvm.dbg.value(metadata i64 %flags.1, metadata !1048, metadata !DIExpression(DW_OP_constu, 64, DW_OP_or, DW_OP_stack_value)), !dbg !1058
  %15 = trunc i64 %flags.1 to i32, !dbg !1142
  %conv101 = or i32 %15, 64, !dbg !1142
  br label %cleanup155, !dbg !1143

while.cond:                                       ; preds = %while.cond.preheader, %sw.epilog122
  %i.0 = phi i64 [ %i.1, %sw.epilog122 ], [ 0, %while.cond.preheader ], !dbg !1058
  %q.0 = phi i64 [ %q.1, %sw.epilog122 ], [ 0, %while.cond.preheader ], !dbg !1144
  %w.0 = phi i64 [ %w.1, %sw.epilog122 ], [ 0, %while.cond.preheader ], !dbg !1145
  %l.0 = phi i64 [ %l.1, %sw.epilog122 ], [ 0, %while.cond.preheader ], !dbg !1146
  %d.0 = phi i64 [ %d.1, %sw.epilog122 ], [ 0, %while.cond.preheader ], !dbg !1147
  %f.0 = phi i64 [ %f.1, %sw.epilog122 ], [ 0, %while.cond.preheader ], !dbg !1148
  %len.addr.1 = phi i64 [ %dec106, %sw.epilog122 ], [ %len, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %len.addr.1, metadata !1047, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %f.0, metadata !1049, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %d.0, metadata !1050, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %l.0, metadata !1051, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %w.0, metadata !1052, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %q.0, metadata !1053, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1054, metadata !DIExpression()), !dbg !1058
  %dec106 = add i64 %len.addr.1, -1, !dbg !1149
  call void @llvm.dbg.value(metadata i64 %dec106, metadata !1047, metadata !DIExpression()), !dbg !1058
  %tobool107 = icmp eq i64 %len.addr.1, 0, !dbg !1092
  br i1 %tobool107, label %while.end, label %while.body, !dbg !1092

while.body:                                       ; preds = %while.cond
  %arrayidx108 = getelementptr inbounds i8, i8* %s, i64 %dec106, !dbg !1150
  %16 = load i8, i8* %arrayidx108, align 1, !dbg !1150
  switch i8 %16, label %cleanup155.loopexit [
    i8 102, label %sw.bb110
    i8 70, label %sw.bb110
    i8 100, label %sw.bb111
    i8 68, label %sw.bb111
    i8 108, label %sw.bb113
    i8 76, label %sw.bb113
    i8 119, label %sw.bb115
    i8 87, label %sw.bb115
    i8 113, label %sw.bb117
    i8 81, label %sw.bb117
    i8 105, label %sw.bb119
    i8 73, label %sw.bb119
    i8 106, label %sw.bb119
    i8 74, label %sw.bb119
  ], !dbg !1151

sw.bb110:                                         ; preds = %while.body, %while.body
  %inc = add i64 %f.0, 1, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1049, metadata !DIExpression()), !dbg !1058
  br label %sw.epilog122, !dbg !1154

sw.bb111:                                         ; preds = %while.body, %while.body
  %inc112 = add i64 %d.0, 1, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %inc112, metadata !1050, metadata !DIExpression()), !dbg !1058
  br label %sw.epilog122, !dbg !1156

sw.bb113:                                         ; preds = %while.body, %while.body
  %inc114 = add i64 %l.0, 1, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %inc114, metadata !1051, metadata !DIExpression()), !dbg !1058
  br label %sw.epilog122, !dbg !1158

sw.bb115:                                         ; preds = %while.body, %while.body
  %inc116 = add i64 %w.0, 1, !dbg !1159
  call void @llvm.dbg.value(metadata i64 %inc116, metadata !1052, metadata !DIExpression()), !dbg !1058
  br label %sw.epilog122, !dbg !1160

sw.bb117:                                         ; preds = %while.body, %while.body
  %inc118 = add i64 %q.0, 1, !dbg !1161
  call void @llvm.dbg.value(metadata i64 %inc118, metadata !1053, metadata !DIExpression()), !dbg !1058
  br label %sw.epilog122, !dbg !1162

sw.bb119:                                         ; preds = %while.body, %while.body, %while.body, %while.body
  %inc120 = add i64 %i.0, 1, !dbg !1163
  call void @llvm.dbg.value(metadata i64 %inc120, metadata !1054, metadata !DIExpression()), !dbg !1058
  br label %sw.epilog122, !dbg !1164

sw.epilog122:                                     ; preds = %sw.bb119, %sw.bb117, %sw.bb115, %sw.bb113, %sw.bb111, %sw.bb110
  %i.1 = phi i64 [ %inc120, %sw.bb119 ], [ %i.0, %sw.bb117 ], [ %i.0, %sw.bb115 ], [ %i.0, %sw.bb113 ], [ %i.0, %sw.bb111 ], [ %i.0, %sw.bb110 ], !dbg !1058
  %q.1 = phi i64 [ %q.0, %sw.bb119 ], [ %inc118, %sw.bb117 ], [ %q.0, %sw.bb115 ], [ %q.0, %sw.bb113 ], [ %q.0, %sw.bb111 ], [ %q.0, %sw.bb110 ], !dbg !1058
  %w.1 = phi i64 [ %w.0, %sw.bb119 ], [ %w.0, %sw.bb117 ], [ %inc116, %sw.bb115 ], [ %w.0, %sw.bb113 ], [ %w.0, %sw.bb111 ], [ %w.0, %sw.bb110 ], !dbg !1058
  %l.1 = phi i64 [ %l.0, %sw.bb119 ], [ %l.0, %sw.bb117 ], [ %l.0, %sw.bb115 ], [ %inc114, %sw.bb113 ], [ %l.0, %sw.bb111 ], [ %l.0, %sw.bb110 ], !dbg !1058
  %d.1 = phi i64 [ %d.0, %sw.bb119 ], [ %d.0, %sw.bb117 ], [ %d.0, %sw.bb115 ], [ %d.0, %sw.bb113 ], [ %inc112, %sw.bb111 ], [ %d.0, %sw.bb110 ], !dbg !1058
  %f.1 = phi i64 [ %f.0, %sw.bb119 ], [ %f.0, %sw.bb117 ], [ %f.0, %sw.bb115 ], [ %f.0, %sw.bb113 ], [ %f.0, %sw.bb111 ], [ %inc, %sw.bb110 ], !dbg !1058
  call void @llvm.dbg.value(metadata i64 %f.1, metadata !1049, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %d.1, metadata !1050, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %l.1, metadata !1051, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %w.1, metadata !1052, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %q.1, metadata !1053, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1054, metadata !DIExpression()), !dbg !1058
  br label %while.cond, !dbg !1092, !llvm.loop !1165

while.end:                                        ; preds = %while.cond
  %i.0.lcssa = phi i64 [ %i.0, %while.cond ], !dbg !1058
  %q.0.lcssa = phi i64 [ %q.0, %while.cond ], !dbg !1144
  %w.0.lcssa = phi i64 [ %w.0, %while.cond ], !dbg !1145
  %l.0.lcssa = phi i64 [ %l.0, %while.cond ], !dbg !1146
  %d.0.lcssa = phi i64 [ %d.0, %while.cond ], !dbg !1147
  %f.0.lcssa = phi i64 [ %f.0, %while.cond ], !dbg !1148
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa, metadata !1054, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %q.0.lcssa, metadata !1053, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %w.0.lcssa, metadata !1052, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %l.0.lcssa, metadata !1051, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %d.0.lcssa, metadata !1050, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %f.0.lcssa, metadata !1049, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa, metadata !1054, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %q.0.lcssa, metadata !1053, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %w.0.lcssa, metadata !1052, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %l.0.lcssa, metadata !1051, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %d.0.lcssa, metadata !1050, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %f.0.lcssa, metadata !1049, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa, metadata !1054, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %q.0.lcssa, metadata !1053, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %w.0.lcssa, metadata !1052, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %l.0.lcssa, metadata !1051, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %d.0.lcssa, metadata !1050, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i64 %f.0.lcssa, metadata !1049, metadata !DIExpression()), !dbg !1058
  %add = add i64 %f.0.lcssa, %d.0.lcssa, !dbg !1167
  %add123 = add i64 %add, %l.0.lcssa, !dbg !1169
  %add124 = add i64 %add123, %w.0.lcssa, !dbg !1170
  %add125 = add i64 %add124, %q.0.lcssa, !dbg !1171
  %17 = or i64 %add125, %i.0.lcssa, !dbg !1172
  %18 = icmp ugt i64 %17, 1, !dbg !1172
  br i1 %18, label %cleanup155, label %if.end132, !dbg !1172

if.end132:                                        ; preds = %while.end
  %tobool133 = icmp eq i64 %i.0.lcssa, 0, !dbg !1173
  %cond134 = select i1 %tobool133, i32 0, i32 8192, !dbg !1173
  %tobool135 = icmp eq i64 %f.0.lcssa, 0, !dbg !1174
  br i1 %tobool135, label %cond.false, label %cond.end152, !dbg !1174

cond.false:                                       ; preds = %if.end132
  %tobool136 = icmp eq i64 %d.0.lcssa, 0, !dbg !1175
  br i1 %tobool136, label %cond.false138, label %cond.end152, !dbg !1175

cond.false138:                                    ; preds = %cond.false
  %tobool139 = icmp eq i64 %l.0.lcssa, 0, !dbg !1176
  br i1 %tobool139, label %cond.false141, label %cond.end152, !dbg !1176

cond.false141:                                    ; preds = %cond.false138
  %tobool142 = icmp eq i64 %w.0.lcssa, 0, !dbg !1177
  br i1 %tobool142, label %cond.false144, label %cond.end152, !dbg !1177

cond.false144:                                    ; preds = %cond.false141
  %tobool145 = icmp eq i64 %q.0.lcssa, 0, !dbg !1178
  %cond146 = select i1 %tobool145, i32 32768, i32 131072, !dbg !1178
  br label %cond.end152, !dbg !1177

cond.end152:                                      ; preds = %cond.false141, %cond.false138, %cond.false, %if.end132, %cond.false144
  %cond153 = phi i32 [ 16, %if.end132 ], [ 32, %cond.false ], [ 64, %cond.false138 ], [ %cond146, %cond.false144 ], [ 65536, %cond.false141 ], !dbg !1174
  %or154 = or i32 %cond134, %cond153, !dbg !1179
  br label %cleanup155, !dbg !1180

cleanup155.loopexit:                              ; preds = %while.body
  br label %cleanup155, !dbg !1181

cleanup155:                                       ; preds = %cleanup155.loopexit, %while.end, %sw.bb60, %sw.bb67, %land.lhs.true76, %sw.bb85, %land.lhs.true94, %if.end58, %cleanup, %cond.end152, %if.then99, %if.then88, %if.then81, %if.then70, %if.then63, %if.then54, %if.then41
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %conv42, %if.then41 ], [ %conv55, %if.then54 ], [ %conv90, %if.then88 ], [ %conv101, %if.then99 ], [ %conv72, %if.then70 ], [ %conv83, %if.then81 ], [ %conv65, %if.then63 ], [ %or154, %cond.end152 ], [ 0, %if.end58 ], [ 0, %land.lhs.true94 ], [ 0, %sw.bb85 ], [ 0, %land.lhs.true76 ], [ 0, %sw.bb67 ], [ 0, %sw.bb60 ], [ 0, %while.end ], [ 0, %cleanup155.loopexit ]
  ret i32 %retval.1, !dbg !1181
}

declare dso_local i32 @cpp_sys_macro_p(%struct.cpp_reader*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @interpret_int_suffix(i8* %s, i64 %len) unnamed_addr #3 !dbg !1182 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !1184, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %len, metadata !1185, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 0, metadata !1188, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 0, metadata !1187, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 0, metadata !1186, metadata !DIExpression()), !dbg !1189
  br label %while.cond, !dbg !1190

while.cond:                                       ; preds = %sw.epilog, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %i.1, %sw.epilog ], !dbg !1191
  %l.0 = phi i64 [ 0, %entry ], [ %l.1, %sw.epilog ], !dbg !1189
  %u.0 = phi i64 [ 0, %entry ], [ %u.1, %sw.epilog ], !dbg !1192
  %len.addr.0 = phi i64 [ %len, %entry ], [ %dec, %sw.epilog ]
  call void @llvm.dbg.value(metadata i64 %len.addr.0, metadata !1185, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %u.0, metadata !1186, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %l.0, metadata !1187, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1188, metadata !DIExpression()), !dbg !1189
  %dec = add i64 %len.addr.0, -1, !dbg !1193
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1185, metadata !DIExpression()), !dbg !1189
  %tobool = icmp eq i64 %len.addr.0, 0, !dbg !1190
  br i1 %tobool, label %while.end, label %while.body, !dbg !1190

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds i8, i8* %s, i64 %dec, !dbg !1194
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1194
  switch i8 %0, label %cleanup.loopexit [
    i8 117, label %sw.bb
    i8 85, label %sw.bb
    i8 105, label %sw.bb1
    i8 73, label %sw.bb1
    i8 106, label %sw.bb1
    i8 74, label %sw.bb1
    i8 108, label %sw.bb3
    i8 76, label %sw.bb3
  ], !dbg !1195

sw.bb:                                            ; preds = %while.body, %while.body
  %inc = add i64 %u.0, 1, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1186, metadata !DIExpression()), !dbg !1189
  br label %sw.epilog, !dbg !1198

sw.bb1:                                           ; preds = %while.body, %while.body, %while.body, %while.body
  %inc2 = add i64 %i.0, 1, !dbg !1199
  call void @llvm.dbg.value(metadata i64 %inc2, metadata !1188, metadata !DIExpression()), !dbg !1189
  br label %sw.epilog, !dbg !1200

sw.bb3:                                           ; preds = %while.body, %while.body
  %inc4 = add i64 %l.0, 1, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %inc4, metadata !1187, metadata !DIExpression()), !dbg !1189
  %cmp = icmp eq i64 %inc4, 2, !dbg !1202
  br i1 %cmp, label %land.lhs.true, label %sw.epilog, !dbg !1204

land.lhs.true:                                    ; preds = %sw.bb3
  %arrayidx8 = getelementptr inbounds i8, i8* %s, i64 %len.addr.0, !dbg !1205
  %1 = load i8, i8* %arrayidx8, align 1, !dbg !1205
  %cmp10 = icmp eq i8 %0, %1, !dbg !1206
  br i1 %cmp10, label %sw.epilog, label %cleanup.loopexit, !dbg !1207

sw.epilog:                                        ; preds = %land.lhs.true, %sw.bb3, %sw.bb1, %sw.bb
  %i.1 = phi i64 [ %inc2, %sw.bb1 ], [ %i.0, %sw.bb ], [ %i.0, %land.lhs.true ], [ %i.0, %sw.bb3 ], !dbg !1189
  %l.1 = phi i64 [ %l.0, %sw.bb1 ], [ %l.0, %sw.bb ], [ 2, %land.lhs.true ], [ %inc4, %sw.bb3 ], !dbg !1189
  %u.1 = phi i64 [ %u.0, %sw.bb1 ], [ %inc, %sw.bb ], [ %u.0, %land.lhs.true ], [ %u.0, %sw.bb3 ], !dbg !1189
  call void @llvm.dbg.value(metadata i64 %u.1, metadata !1186, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %l.1, metadata !1187, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1188, metadata !DIExpression()), !dbg !1189
  br label %while.cond, !dbg !1190, !llvm.loop !1208

while.end:                                        ; preds = %while.cond
  %i.0.lcssa = phi i64 [ %i.0, %while.cond ], !dbg !1191
  %l.0.lcssa = phi i64 [ %l.0, %while.cond ], !dbg !1189
  %u.0.lcssa = phi i64 [ %u.0, %while.cond ], !dbg !1192
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa, metadata !1188, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %l.0.lcssa, metadata !1187, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %u.0.lcssa, metadata !1186, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa, metadata !1188, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %l.0.lcssa, metadata !1187, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %u.0.lcssa, metadata !1186, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa, metadata !1188, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %l.0.lcssa, metadata !1187, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %u.0.lcssa, metadata !1186, metadata !DIExpression()), !dbg !1189
  %cmp12 = icmp ugt i64 %l.0.lcssa, 2, !dbg !1210
  %2 = or i64 %u.0.lcssa, %i.0.lcssa, !dbg !1212
  %3 = icmp ugt i64 %2, 1, !dbg !1212
  %4 = or i1 %3, %cmp12, !dbg !1212
  br i1 %4, label %cleanup, label %if.end20, !dbg !1212

if.end20:                                         ; preds = %while.end
  %tobool21 = icmp eq i64 %i.0.lcssa, 0, !dbg !1213
  %cond = select i1 %tobool21, i32 0, i32 8192, !dbg !1213
  %tobool22 = icmp eq i64 %u.0.lcssa, 0, !dbg !1214
  %cond23 = select i1 %tobool22, i32 0, i32 4096, !dbg !1214
  %or = or i32 %cond, %cond23, !dbg !1215
  %cmp24 = icmp eq i64 %l.0.lcssa, 0, !dbg !1216
  br i1 %cmp24, label %cond.end, label %cond.false, !dbg !1217

cond.false:                                       ; preds = %if.end20
  %cmp26 = icmp eq i64 %l.0.lcssa, 1, !dbg !1218
  %cond28 = select i1 %cmp26, i32 32, i32 64, !dbg !1219
  br label %cond.end, !dbg !1217

cond.end:                                         ; preds = %if.end20, %cond.false
  %cond29 = phi i32 [ %cond28, %cond.false ], [ 16, %if.end20 ], !dbg !1217
  %or30 = or i32 %or, %cond29, !dbg !1220
  br label %cleanup, !dbg !1221

cleanup.loopexit:                                 ; preds = %while.body, %land.lhs.true
  br label %cleanup, !dbg !1222

cleanup:                                          ; preds = %cleanup.loopexit, %while.end, %cond.end
  %retval.0 = phi i32 [ %or30, %cond.end ], [ 0, %while.end ], [ 0, %cleanup.loopexit ], !dbg !1189
  ret i32 %retval.0, !dbg !1222
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local void @cpp_interpret_integer(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_reader* %pfile, %struct.cpp_token* %token, i32 %type) local_unnamed_addr #3 !dbg !1223 {
entry:
  %tmp = alloca %struct.cpp_num, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1227, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !1228, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i32 %type, metadata !1229, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %agg.result, metadata !1232, metadata !DIExpression()), !dbg !1241
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 1, !dbg !1242
  store i64 0, i64* %low, align 8, !dbg !1243
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 0, !dbg !1244
  store i64 0, i64* %high, align 8, !dbg !1245
  %and = lshr i32 %type, 12, !dbg !1246
  %0 = trunc i32 %and to i8, !dbg !1246
  %1 = and i8 %0, 1, !dbg !1246
  %unsignedp = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 2, !dbg !1247
  store i8 %1, i8* %unsignedp, align 8, !dbg !1248
  %overflow = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 3, !dbg !1249
  store i8 0, i8* %overflow, align 1, !dbg !1250
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 1, !dbg !1251
  %2 = load i8*, i8** %text, align 8, !dbg !1251
  call void @llvm.dbg.value(metadata i8* %2, metadata !1230, metadata !DIExpression()), !dbg !1240
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 0, !dbg !1252
  %3 = load i32, i32* %len, align 8, !dbg !1252
  %idx.ext = zext i32 %3 to i64, !dbg !1253
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1231, metadata !DIExpression()), !dbg !1240
  %cmp = icmp eq i32 %3, 1, !dbg !1254
  br i1 %cmp, label %if.then, label %if.else, !dbg !1255

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %2, align 1, !dbg !1256
  %conv8 = zext i8 %4 to i64, !dbg !1256
  %sub = add nsw i64 %conv8, -48, !dbg !1257
  store i64 %sub, i64* %low, align 8, !dbg !1258
  br label %if.end106, !dbg !1259

if.else:                                          ; preds = %entry
  %precision11 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 44, !dbg !1260
  %5 = load i64, i64* %precision11, align 8, !dbg !1260
  call void @llvm.dbg.value(metadata i64 %5, metadata !1236, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 10, metadata !1237, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 0, metadata !1238, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8 0, metadata !1239, metadata !DIExpression()), !dbg !1261
  %and13 = and i32 %type, 3840, !dbg !1262
  %cmp14 = icmp eq i32 %and13, 1024, !dbg !1264
  br i1 %cmp14, label %if.then16, label %if.else17, !dbg !1265

if.then16:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 8, metadata !1237, metadata !DIExpression()), !dbg !1261
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1266
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1230, metadata !DIExpression()), !dbg !1240
  br label %if.end30, !dbg !1268

if.else17:                                        ; preds = %if.else
  %cmp19 = icmp eq i32 %and13, 512, !dbg !1269
  br i1 %cmp19, label %if.then21, label %if.else23, !dbg !1271

if.then21:                                        ; preds = %if.else17
  call void @llvm.dbg.value(metadata i32 16, metadata !1237, metadata !DIExpression()), !dbg !1261
  %add.ptr22 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !1272
  call void @llvm.dbg.value(metadata i8* %add.ptr22, metadata !1230, metadata !DIExpression()), !dbg !1240
  br label %if.end30, !dbg !1274

if.else23:                                        ; preds = %if.else17
  %cmp25 = icmp eq i32 %and13, 2048, !dbg !1275
  %add.ptr28 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !1277
  %spec.select = select i1 %cmp25, i8* %add.ptr28, i8* %2, !dbg !1279
  %spec.select1 = select i1 %cmp25, i32 2, i32 10, !dbg !1279
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !1237, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !1230, metadata !DIExpression()), !dbg !1240
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %if.else23, %if.then16
  %p.2 = phi i8* [ %incdec.ptr, %if.then16 ], [ %add.ptr22, %if.then21 ], [ %spec.select, %if.else23 ], !dbg !1280
  %base.2 = phi i32 [ 8, %if.then16 ], [ 16, %if.then21 ], [ %spec.select1, %if.else23 ], !dbg !1280
  call void @llvm.dbg.value(metadata i32 %base.2, metadata !1237, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8* %p.2, metadata !1230, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 -1, metadata !1233, metadata !DIExpression()), !dbg !1261
  %cmp31 = icmp ult i64 %5, 64, !dbg !1281
  %sub34 = sub i64 64, %5, !dbg !1283
  %shr = lshr i64 -1, %sub34, !dbg !1283
  %max.0 = select i1 %cmp31, i64 %shr, i64 -1, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %max.0, metadata !1233, metadata !DIExpression()), !dbg !1261
  %conv36 = zext i32 %base.2 to i64, !dbg !1284
  %sub37 = sub i64 %max.0, %conv36, !dbg !1285
  %add = add i64 %sub37, 1, !dbg !1286
  %div = udiv i64 %add, %conv36, !dbg !1287
  %add39 = add i64 %div, 1, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %add39, metadata !1233, metadata !DIExpression()), !dbg !1261
  %cmp48 = icmp eq i32 %base.2, 16, !dbg !1289
  %6 = bitcast %struct.cpp_num* %tmp to i8*, !dbg !1294
  %7 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !1294
  br i1 %cmp48, label %if.end30.split.us, label %if.end30.if.end30.split_crit_edge, !dbg !1297

if.end30.if.end30.split_crit_edge:                ; preds = %if.end30
  br label %for.cond, !dbg !1297

if.end30.split.us:                                ; preds = %if.end30
  br label %for.cond.us, !dbg !1297

for.cond.us:                                      ; preds = %for.inc.us, %if.end30.split.us
  %max.1.us = phi i64 [ %add39, %if.end30.split.us ], [ %max.2.us, %for.inc.us ], !dbg !1298
  %p.3.us = phi i8* [ %p.2, %if.end30.split.us ], [ %incdec.ptr78.us, %for.inc.us ], !dbg !1261
  %overflow12.0.us = phi i8 [ 0, %if.end30.split.us ], [ %overflow12.1.us, %for.inc.us ], !dbg !1299
  call void @llvm.dbg.value(metadata i8 %overflow12.0.us, metadata !1239, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8* %p.3.us, metadata !1230, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %max.1.us, metadata !1233, metadata !DIExpression()), !dbg !1261
  %cmp40.us = icmp ult i8* %p.3.us, %add.ptr, !dbg !1300
  br i1 %cmp40.us, label %for.body.us, label %for.end.us-lcssa.us, !dbg !1301

for.body.us:                                      ; preds = %for.cond.us
  %8 = load i8, i8* %p.3.us, align 1, !dbg !1302
  call void @llvm.dbg.value(metadata i8 %8, metadata !1238, metadata !DIExpression()), !dbg !1261
  %idxprom.us = zext i8 %8 to i64, !dbg !1303
  %arrayidx44.us = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom.us, !dbg !1303
  %9 = load i16, i16* %arrayidx44.us, align 2, !dbg !1303
  %10 = and i16 %9, 4, !dbg !1303
  %tobool47.us = icmp eq i16 %10, 0, !dbg !1303
  br i1 %tobool47.us, label %lor.lhs.false.us, label %if.then56.us, !dbg !1304

lor.lhs.false.us:                                 ; preds = %for.body.us
  %11 = and i16 %9, 256, !dbg !1305
  %tobool55.us = icmp eq i16 %11, 0, !dbg !1305
  br i1 %tobool55.us, label %for.end.us-lcssa.us, label %if.then56.us, !dbg !1306

if.then56.us:                                     ; preds = %lor.lhs.false.us, %for.body.us
  %arrayidx59.us = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i64 0, i64 %idxprom.us, !dbg !1307
  %12 = load i8, i8* %arrayidx59.us, align 1, !dbg !1307
  call void @llvm.dbg.value(metadata i8 %12, metadata !1238, metadata !DIExpression()), !dbg !1261
  %13 = load i64, i64* %low, align 8, !dbg !1308
  %cmp64.us = icmp ult i64 %13, %max.1.us, !dbg !1309
  br i1 %cmp64.us, label %if.then66.us, label %if.else72.us, !dbg !1310

if.else72.us:                                     ; preds = %if.then56.us
  %conv60.us = zext i8 %12 to i32, !dbg !1307
  call void @llvm.dbg.value(metadata i32 %conv60.us, metadata !1238, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !1311
  call fastcc void @append_digit(%struct.cpp_num* nonnull sret %tmp, %struct.cpp_num* byval(%struct.cpp_num) align 8 %agg.result, i32 %conv60.us, i32 16, i64 %5) #7, !dbg !1311
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !1311
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !1311
  %14 = load i8, i8* %overflow, align 1, !dbg !1312
  %or2.us = or i8 %overflow12.0.us, %14, !dbg !1313
  call void @llvm.dbg.value(metadata i8 %or2.us, metadata !1239, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i64 0, metadata !1233, metadata !DIExpression()), !dbg !1261
  br label %for.inc.us

if.then66.us:                                     ; preds = %if.then56.us
  %mul.us = mul i64 %13, %conv36, !dbg !1314
  %conv69.us = zext i8 %12 to i64, !dbg !1315
  %add70.us = add i64 %mul.us, %conv69.us, !dbg !1316
  store i64 %add70.us, i64* %low, align 8, !dbg !1317
  br label %for.inc.us, !dbg !1318

for.inc.us:                                       ; preds = %if.then66.us, %if.else72.us
  %max.2.us = phi i64 [ %max.1.us, %if.then66.us ], [ 0, %if.else72.us ], !dbg !1261
  %overflow12.1.us = phi i8 [ %overflow12.0.us, %if.then66.us ], [ %or2.us, %if.else72.us ], !dbg !1261
  call void @llvm.dbg.value(metadata i8 %overflow12.1.us, metadata !1239, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i64 %max.2.us, metadata !1233, metadata !DIExpression()), !dbg !1261
  %incdec.ptr78.us = getelementptr inbounds i8, i8* %p.3.us, i64 1, !dbg !1319
  call void @llvm.dbg.value(metadata i8* %incdec.ptr78.us, metadata !1230, metadata !DIExpression()), !dbg !1240
  br label %for.cond.us, !dbg !1320, !llvm.loop !1321

for.end.us-lcssa.us:                              ; preds = %lor.lhs.false.us, %for.cond.us
  %overflow12.0.us.lcssa = phi i8 [ %overflow12.0.us, %lor.lhs.false.us ], [ %overflow12.0.us, %for.cond.us ], !dbg !1299
  call void @llvm.dbg.value(metadata i8 %overflow12.0.us.lcssa, metadata !1239, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %overflow12.0.us.lcssa, metadata !1239, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %overflow12.0.us.lcssa, metadata !1239, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %overflow12.0.us.lcssa, metadata !1239, metadata !DIExpression()), !dbg !1261
  br label %for.end, !dbg !1323

for.cond:                                         ; preds = %for.inc, %if.end30.if.end30.split_crit_edge
  %max.1 = phi i64 [ %add39, %if.end30.if.end30.split_crit_edge ], [ %max.2, %for.inc ], !dbg !1298
  %p.3 = phi i8* [ %p.2, %if.end30.if.end30.split_crit_edge ], [ %incdec.ptr78, %for.inc ], !dbg !1261
  %overflow12.0 = phi i8 [ 0, %if.end30.if.end30.split_crit_edge ], [ %overflow12.1, %for.inc ], !dbg !1299
  call void @llvm.dbg.value(metadata i8 %overflow12.0, metadata !1239, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8* %p.3, metadata !1230, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %max.1, metadata !1233, metadata !DIExpression()), !dbg !1261
  %cmp40 = icmp ult i8* %p.3, %add.ptr, !dbg !1300
  br i1 %cmp40, label %for.body, label %for.end.us-lcssa.loopexit, !dbg !1301

for.body:                                         ; preds = %for.cond
  %15 = load i8, i8* %p.3, align 1, !dbg !1302
  call void @llvm.dbg.value(metadata i8 %15, metadata !1238, metadata !DIExpression()), !dbg !1261
  %idxprom = zext i8 %15 to i64, !dbg !1303
  %arrayidx44 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !1303
  %16 = load i16, i16* %arrayidx44, align 2, !dbg !1303
  %17 = and i16 %16, 4, !dbg !1303
  %tobool47 = icmp eq i16 %17, 0, !dbg !1303
  br i1 %tobool47, label %lor.lhs.false, label %if.then56, !dbg !1304

lor.lhs.false:                                    ; preds = %for.body
  %overflow12.0.lcssa7 = phi i8 [ %overflow12.0, %for.body ], !dbg !1299
  call void @llvm.dbg.value(metadata i8 %overflow12.0.lcssa7, metadata !1239, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %overflow12.0.lcssa7, metadata !1239, metadata !DIExpression()), !dbg !1261
  br label %for.end.us-lcssa, !dbg !1325

if.then56:                                        ; preds = %for.body
  %arrayidx59 = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i64 0, i64 %idxprom, !dbg !1307
  %18 = load i8, i8* %arrayidx59, align 1, !dbg !1307
  call void @llvm.dbg.value(metadata i8 %18, metadata !1238, metadata !DIExpression()), !dbg !1261
  %19 = load i64, i64* %low, align 8, !dbg !1308
  %cmp64 = icmp ult i64 %19, %max.1, !dbg !1309
  br i1 %cmp64, label %if.then66, label %if.else72, !dbg !1310

if.then66:                                        ; preds = %if.then56
  %mul = mul i64 %19, %conv36, !dbg !1314
  %conv69 = zext i8 %18 to i64, !dbg !1315
  %add70 = add i64 %mul, %conv69, !dbg !1316
  store i64 %add70, i64* %low, align 8, !dbg !1317
  br label %for.inc, !dbg !1318

if.else72:                                        ; preds = %if.then56
  %conv60 = zext i8 %18 to i32, !dbg !1307
  call void @llvm.dbg.value(metadata i32 %conv60, metadata !1238, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !1311
  call fastcc void @append_digit(%struct.cpp_num* nonnull sret %tmp, %struct.cpp_num* byval(%struct.cpp_num) align 8 %agg.result, i32 %conv60, i32 %base.2, i64 %5) #7, !dbg !1311
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !1311
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !1311
  %20 = load i8, i8* %overflow, align 1, !dbg !1312
  %or2 = or i8 %overflow12.0, %20, !dbg !1313
  call void @llvm.dbg.value(metadata i8 %or2, metadata !1239, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i64 0, metadata !1233, metadata !DIExpression()), !dbg !1261
  br label %for.inc

for.inc:                                          ; preds = %if.then66, %if.else72
  %max.2 = phi i64 [ %max.1, %if.then66 ], [ 0, %if.else72 ], !dbg !1261
  %overflow12.1 = phi i8 [ %overflow12.0, %if.then66 ], [ %or2, %if.else72 ], !dbg !1261
  call void @llvm.dbg.value(metadata i8 %overflow12.1, metadata !1239, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i64 %max.2, metadata !1233, metadata !DIExpression()), !dbg !1261
  %incdec.ptr78 = getelementptr inbounds i8, i8* %p.3, i64 1, !dbg !1319
  call void @llvm.dbg.value(metadata i8* %incdec.ptr78, metadata !1230, metadata !DIExpression()), !dbg !1240
  br label %for.cond, !dbg !1320, !llvm.loop !1321

for.end.us-lcssa.loopexit:                        ; preds = %for.cond
  %overflow12.0.lcssa6 = phi i8 [ %overflow12.0, %for.cond ], !dbg !1299
  call void @llvm.dbg.value(metadata i8 %overflow12.0.lcssa6, metadata !1239, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %overflow12.0.lcssa6, metadata !1239, metadata !DIExpression()), !dbg !1261
  br label %for.end.us-lcssa, !dbg !1323

for.end.us-lcssa:                                 ; preds = %for.end.us-lcssa.loopexit, %lor.lhs.false
  %overflow12.08 = phi i8 [ %overflow12.0.lcssa6, %for.end.us-lcssa.loopexit ], [ %overflow12.0.lcssa7, %lor.lhs.false ]
  br label %for.end, !dbg !1323

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %overflow12.0.lcssa = phi i8 [ %overflow12.08, %for.end.us-lcssa ], [ %overflow12.0.us.lcssa, %for.end.us-lcssa.us ], !dbg !1299
  call void @llvm.dbg.value(metadata i8 %overflow12.0.lcssa, metadata !1239, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %overflow12.0.lcssa, metadata !1239, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8 %overflow12.0.lcssa, metadata !1239, metadata !DIExpression()), !dbg !1261
  %tobool79 = icmp eq i8 %overflow12.0.lcssa, 0, !dbg !1323
  br i1 %tobool79, label %if.else81, label %if.then80, !dbg !1326

if.then80:                                        ; preds = %for.end
  %call = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !1327
  br label %if.end106, !dbg !1327

if.else81:                                        ; preds = %for.end
  %21 = load i8, i8* %unsignedp, align 8, !dbg !1328
  %tobool83 = icmp eq i8 %21, 0, !dbg !1330
  br i1 %tobool83, label %land.lhs.true84, label %if.end106, !dbg !1331

land.lhs.true84:                                  ; preds = %if.else81
  %traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !1332
  %22 = load i8, i8* %traditional, align 2, !dbg !1332
  %tobool87 = icmp eq i8 %22, 0, !dbg !1332
  br i1 %tobool87, label %land.lhs.true91, label %land.lhs.true88, !dbg !1333

land.lhs.true88:                                  ; preds = %land.lhs.true84
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !1334
  %23 = load i8, i8* %in_directive, align 8, !dbg !1334
  %tobool90 = icmp eq i8 %23, 0, !dbg !1335
  br i1 %tobool90, label %land.lhs.true91, label %if.end106, !dbg !1336

land.lhs.true91:                                  ; preds = %land.lhs.true88, %land.lhs.true84
  %call92 = call fastcc zeroext i8 @num_positive(%struct.cpp_num* byval(%struct.cpp_num) align 8 %agg.result, i64 %5) #7, !dbg !1337
  %tobool93 = icmp eq i8 %call92, 0, !dbg !1337
  br i1 %tobool93, label %if.then94, label %if.end106, !dbg !1338

if.then94:                                        ; preds = %land.lhs.true91
  %cmp95 = icmp eq i32 %base.2, 10, !dbg !1339
  br i1 %cmp95, label %if.then97, label %if.end102, !dbg !1342

if.then97:                                        ; preds = %if.then94
  %c99 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 29, !dbg !1343
  %24 = load i8, i8* %c99, align 1, !dbg !1343
  %tobool100 = icmp eq i8 %24, 0, !dbg !1343
  %cond = select i1 %tobool100, i32 0, i32 2, !dbg !1343
  %call101 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 %cond, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !1344
  br label %if.end102, !dbg !1344

if.end102:                                        ; preds = %if.then97, %if.then94
  store i8 1, i8* %unsignedp, align 8, !dbg !1345
  br label %if.end106, !dbg !1346

if.end106:                                        ; preds = %land.lhs.true88, %land.lhs.true91, %if.else81, %if.then80, %if.end102, %if.then
  ret void, !dbg !1347
}

; Function Attrs: nounwind uwtable
define internal fastcc void @append_digit(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_num* byval(%struct.cpp_num) align 8 %num, i32 %digit, i32 %base, i64 %precision) unnamed_addr #3 !dbg !1348 {
entry:
  %tmp = alloca %struct.cpp_num, align 8
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %num, metadata !1352, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i32 %digit, metadata !1353, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i32 %base, metadata !1354, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %precision, metadata !1355, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %agg.result, metadata !1356, metadata !DIExpression()), !dbg !1363
  %switch.selectcmp = icmp eq i32 %base, 16, !dbg !1364
  %switch.select = select i1 %switch.selectcmp, i32 4, i32 3, !dbg !1364
  %switch.selectcmp1 = icmp eq i32 %base, 2, !dbg !1364
  %switch.select2 = select i1 %switch.selectcmp1, i32 1, i32 %switch.select, !dbg !1364
  call void @llvm.dbg.value(metadata i32 %switch.select2, metadata !1357, metadata !DIExpression()), !dbg !1362
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !1365
  %0 = load i64, i64* %high, align 8, !dbg !1365
  %narrow = sub nuw nsw i32 64, %switch.select2, !dbg !1366
  %sub = zext i32 %narrow to i64, !dbg !1366
  %shr = lshr i64 %0, %sub, !dbg !1367
  %tobool = icmp ne i64 %shr, 0, !dbg !1368
  call void @llvm.dbg.value(metadata i1 %tobool, metadata !1358, metadata !DIExpression()), !dbg !1362
  %sh_prom = zext i32 %switch.select2 to i64, !dbg !1369
  %shl = shl i64 %0, %sh_prom, !dbg !1369
  %high5 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 0, !dbg !1370
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !1371
  %1 = load i64, i64* %low, align 8, !dbg !1371
  %shl7 = shl i64 %1, %sh_prom, !dbg !1372
  %low8 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 1, !dbg !1373
  store i64 %shl7, i64* %low8, align 8, !dbg !1374
  %shr12 = lshr i64 %1, %sub, !dbg !1375
  %or = or i64 %shl, %shr12, !dbg !1376
  store i64 %or, i64* %high5, align 8, !dbg !1376
  %unsignedp = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 2, !dbg !1377
  %2 = load i8, i8* %unsignedp, align 8, !dbg !1377
  %unsignedp14 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 2, !dbg !1378
  store i8 %2, i8* %unsignedp14, align 8, !dbg !1379
  %cmp = icmp eq i32 %base, 10, !dbg !1380
  br i1 %cmp, label %if.then, label %if.end, !dbg !1382

if.then:                                          ; preds = %entry
  %shl17 = shl i64 %1, 1, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %shl17, metadata !1360, metadata !DIExpression()), !dbg !1362
  %shl19 = shl i64 %0, 1, !dbg !1385
  %shr21 = lshr i64 %1, 63, !dbg !1386
  %add = or i64 %shl19, %shr21, !dbg !1387
  call void @llvm.dbg.value(metadata i64 %add, metadata !1359, metadata !DIExpression()), !dbg !1362
  br label %if.end, !dbg !1388

if.end:                                           ; preds = %entry, %if.then
  %add_high.0 = phi i64 [ %add, %if.then ], [ 0, %entry ], !dbg !1389
  %add_low.0 = phi i64 [ %shl17, %if.then ], [ 0, %entry ], !dbg !1389
  call void @llvm.dbg.value(metadata i64 %add_low.0, metadata !1360, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i64 %add_high.0, metadata !1359, metadata !DIExpression()), !dbg !1362
  %conv22 = sext i32 %digit to i64, !dbg !1390
  %3 = xor i64 %add_low.0, -1, !dbg !1392
  %cmp24 = icmp ult i64 %3, %conv22, !dbg !1392
  %inc = zext i1 %cmp24 to i64, !dbg !1393
  %spec.select = add i64 %add_high.0, %inc, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1359, metadata !DIExpression()), !dbg !1362
  %add29 = add i64 %add_low.0, %conv22, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %add29, metadata !1360, metadata !DIExpression()), !dbg !1362
  %4 = xor i64 %shl7, -1, !dbg !1395
  %cmp33 = icmp ugt i64 %add29, %4, !dbg !1395
  %inc36 = zext i1 %cmp33 to i64, !dbg !1397
  %add_high.2 = add i64 %spec.select, %inc36, !dbg !1397
  call void @llvm.dbg.value(metadata i64 %add_high.2, metadata !1359, metadata !DIExpression()), !dbg !1362
  %5 = xor i64 %or, -1, !dbg !1398
  %cmp41 = icmp ugt i64 %add_high.2, %5, !dbg !1398
  %narrow5 = or i1 %cmp41, %tobool, !dbg !1400
  %spec.select3 = zext i1 %narrow5 to i8, !dbg !1400
  call void @llvm.dbg.value(metadata i8 %spec.select3, metadata !1358, metadata !DIExpression()), !dbg !1362
  %add46 = add i64 %shl7, %add29, !dbg !1401
  store i64 %add46, i64* %low8, align 8, !dbg !1401
  %add48 = add i64 %or, %add_high.2, !dbg !1402
  store i64 %add48, i64* %high5, align 8, !dbg !1402
  %overflow49 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 3, !dbg !1403
  store i8 %spec.select3, i8* %overflow49, align 1, !dbg !1404
  store i64 %add46, i64* %low, align 8, !dbg !1405
  store i64 %add48, i64* %high, align 8, !dbg !1406
  %6 = bitcast %struct.cpp_num* %tmp to i8*, !dbg !1407
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !1407
  call fastcc void @num_trim(%struct.cpp_num* nonnull sret %tmp, %struct.cpp_num* byval(%struct.cpp_num) align 8 %agg.result, i64 %precision) #7, !dbg !1407
  %7 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !1407
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !1407
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !1407
  %8 = load i64, i64* %low8, align 8, !dbg !1408
  %cmp56 = icmp eq i64 %8, %add46, !dbg !1408
  br i1 %cmp56, label %land.lhs.true, label %if.then62, !dbg !1408

land.lhs.true:                                    ; preds = %if.end
  %9 = load i64, i64* %high5, align 8, !dbg !1408
  %cmp60 = icmp eq i64 %9, %add48, !dbg !1408
  br i1 %cmp60, label %if.end64, label %if.then62, !dbg !1410

if.then62:                                        ; preds = %land.lhs.true, %if.end
  store i8 1, i8* %overflow49, align 1, !dbg !1411
  br label %if.end64, !dbg !1412

if.end64:                                         ; preds = %if.then62, %land.lhs.true
  ret void, !dbg !1413
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @num_positive(%struct.cpp_num* byval(%struct.cpp_num) align 8 %num, i64 %precision) unnamed_addr #3 !dbg !1414 {
entry:
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %num, metadata !1418, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %precision, metadata !1419, metadata !DIExpression()), !dbg !1421
  %cmp = icmp ugt i64 %precision, 64, !dbg !1422
  br i1 %cmp, label %if.then, label %if.end, !dbg !1424

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i64 %precision, metadata !1419, metadata !DIExpression(DW_OP_constu, 64, DW_OP_minus, DW_OP_stack_value)), !dbg !1421
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !1425
  %0 = load i64, i64* %high, align 8, !dbg !1425
  %sub1 = add i64 %precision, -65, !dbg !1427
  %shl = shl i64 1, %sub1, !dbg !1428
  %and = and i64 %0, %shl, !dbg !1429
  br label %return, !dbg !1430

if.end:                                           ; preds = %entry
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !1431
  %1 = load i64, i64* %low, align 8, !dbg !1431
  %sub4 = add i64 %precision, -1, !dbg !1432
  %shl5 = shl i64 1, %sub4, !dbg !1433
  %and6 = and i64 %1, %shl5, !dbg !1434
  br label %return, !dbg !1435

return:                                           ; preds = %if.end, %if.then
  %retval.0.in.in = phi i64 [ %and, %if.then ], [ %and6, %if.end ]
  %retval.0.in = icmp eq i64 %retval.0.in.in, 0, !dbg !1421
  %retval.0 = zext i1 %retval.0.in to i8, !dbg !1421
  ret i8 %retval.0, !dbg !1436
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_parse_expr(%struct.cpp_reader* %pfile, i8 zeroext %is_if) local_unnamed_addr #3 !dbg !1437 {
entry:
  %tmp = alloca %struct.cpp_num, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1441, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %is_if, metadata !1442, metadata !DIExpression()), !dbg !1454
  %op_stack = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 51, !dbg !1455
  %0 = load %struct.op*, %struct.op** %op_stack, align 8, !dbg !1455
  call void @llvm.dbg.value(metadata %struct.op* %0, metadata !1443, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 1, metadata !1446, metadata !DIExpression()), !dbg !1454
  %skip_eval = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 11, !dbg !1456
  store i32 0, i32* %skip_eval, align 4, !dbg !1457
  %mi_ind_cmacro = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 27, !dbg !1458
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %mi_ind_cmacro, align 8, !dbg !1459
  call void @llvm.dbg.value(metadata i8 0, metadata !1445, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i32 0, metadata !1444, metadata !DIExpression()), !dbg !1454
  %op = getelementptr inbounds %struct.op, %struct.op* %0, i64 0, i32 3, !dbg !1460
  store i32 22, i32* %op, align 4, !dbg !1461
  %1 = bitcast %struct.cpp_num* %tmp to i8*, !dbg !1462
  %op_limit = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 52, !dbg !1464
  %tobool73 = icmp eq i8 %is_if, 0, !dbg !1466
  %cond = select i1 %tobool73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), !dbg !1466
  br label %for.cond, !dbg !1472

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %saw_leading_not.0 = phi i8 [ 0, %entry ], [ %saw_leading_not.2, %for.cond.backedge ], !dbg !1473
  %lex_count.0 = phi i32 [ 0, %entry ], [ %inc, %for.cond.backedge ], !dbg !1454
  %top.0 = phi %struct.op* [ %0, %entry ], [ %top.2, %for.cond.backedge ], !dbg !1474
  %want_value.0 = phi i8 [ 1, %entry ], [ %want_value.1, %for.cond.backedge ], !dbg !1475
  call void @llvm.dbg.value(metadata i8 %want_value.0, metadata !1446, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata %struct.op* %top.0, metadata !1443, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i32 %lex_count.0, metadata !1444, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %saw_leading_not.0, metadata !1445, metadata !DIExpression()), !dbg !1454
  %inc = add i32 %lex_count.0, 1, !dbg !1476
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1444, metadata !DIExpression()), !dbg !1454
  %call = call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #6, !dbg !1477
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !1478
  %bf.load = load i8, i8* %type, align 4, !dbg !1478
  %bf.cast = zext i8 %bf.load to i32, !dbg !1478
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 0, !dbg !1479
  %2 = ptrtoint %struct.cpp_token* %call to i64, !dbg !1480
  switch i8 %bf.load, label %sw.default [
    i8 55, label %sw.bb
    i8 56, label %sw.bb
    i8 57, label %sw.bb
    i8 58, label %sw.bb
    i8 59, label %sw.bb
    i8 53, label %sw.bb
    i8 37, label %sw.bb
    i8 1, label %sw.bb10
    i8 4, label %sw.bb12
    i8 5, label %sw.bb17
  ], !dbg !1480

sw.bb:                                            ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond, %for.cond
  %tobool = icmp eq i8 %want_value.0, 0, !dbg !1481
  br i1 %tobool, label %do.body, label %if.end, !dbg !1483

do.body:                                          ; preds = %sw.bb
  %call7 = call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %call) #6, !dbg !1484
  %call8 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i8* %call7) #6, !dbg !1484
  br label %cleanup, !dbg !1484

if.end:                                           ; preds = %sw.bb
  call void @llvm.dbg.value(metadata i8 0, metadata !1446, metadata !DIExpression()), !dbg !1454
  %value = getelementptr inbounds %struct.op, %struct.op* %top.0, i64 0, i32 1, !dbg !1486
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !1487
  call fastcc void @eval_token(%struct.cpp_num* nonnull sret %tmp, %struct.cpp_reader* %pfile, %struct.cpp_token* %call) #7, !dbg !1487
  %3 = bitcast %struct.cpp_num* %value to i8*, !dbg !1487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !1487
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !1487
  br label %cleanup, !dbg !1488, !llvm.loop !1489

sw.bb10:                                          ; preds = %for.cond
  %cmp = icmp eq i32 %lex_count.0, 0, !dbg !1492
  %conv11 = zext i1 %cmp to i8, !dbg !1493
  call void @llvm.dbg.value(metadata i8 %conv11, metadata !1445, metadata !DIExpression()), !dbg !1454
  br label %sw.epilog, !dbg !1494

sw.bb12:                                          ; preds = %for.cond
  %tobool13 = icmp eq i8 %want_value.0, 0, !dbg !1495
  br i1 %tobool13, label %sw.epilog, label %if.then14, !dbg !1497

if.then14:                                        ; preds = %sw.bb12
  br label %sw.epilog, !dbg !1498

sw.bb17:                                          ; preds = %for.cond
  %tobool18 = icmp eq i8 %want_value.0, 0, !dbg !1499
  br i1 %tobool18, label %sw.epilog, label %if.then19, !dbg !1501

if.then19:                                        ; preds = %sw.bb17
  br label %sw.epilog, !dbg !1502

sw.default:                                       ; preds = %for.cond
  %cmp23 = icmp eq i8 %bf.load, 0, !dbg !1503
  br i1 %cmp23, label %do.body29, label %lor.lhs.false, !dbg !1505

lor.lhs.false:                                    ; preds = %sw.default
  %cmp26 = icmp ugt i8 %bf.load, 26, !dbg !1506
  br i1 %cmp26, label %do.body29, label %sw.epilog, !dbg !1507

do.body29:                                        ; preds = %sw.default, %lor.lhs.false
  %call31 = call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %call) #6, !dbg !1508
  %call32 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.22, i64 0, i64 0), i8* %call31) #6, !dbg !1508
  br label %cleanup, !dbg !1508

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb17, %lor.lhs.false, %if.then19, %if.then14, %sw.bb10
  %4 = phi i32 [ %bf.cast, %sw.bb10 ], [ 27, %if.then14 ], [ %bf.cast, %sw.bb12 ], [ 28, %if.then19 ], [ %bf.cast, %sw.bb17 ], [ %bf.cast, %lor.lhs.false ], !dbg !1510
  %saw_leading_not.1 = phi i8 [ %conv11, %sw.bb10 ], [ %saw_leading_not.0, %if.then14 ], [ %saw_leading_not.0, %sw.bb12 ], [ %saw_leading_not.0, %if.then19 ], [ %saw_leading_not.0, %sw.bb17 ], [ %saw_leading_not.0, %lor.lhs.false ], !dbg !1454
  call void @llvm.dbg.value(metadata i8 %saw_leading_not.1, metadata !1445, metadata !DIExpression()), !dbg !1454
  %idxprom = zext i32 %4 to i64, !dbg !1511
  %5 = lshr i64 403718146, %idxprom, !dbg !1512
  %6 = and i64 %5, 1, !dbg !1512
  %tobool38 = icmp eq i64 %6, 0, !dbg !1512
  %tobool40 = icmp ne i8 %want_value.0, 0, !dbg !1513
  br i1 %tobool38, label %if.else, label %if.then39, !dbg !1514

if.then39:                                        ; preds = %sw.epilog
  br i1 %tobool40, label %if.end111, label %do.body42, !dbg !1515

do.body42:                                        ; preds = %if.then39
  %call44 = call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %call) #6, !dbg !1517
  %call45 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i8* %call44) #6, !dbg !1517
  br label %cleanup, !dbg !1517

if.else:                                          ; preds = %sw.epilog
  br i1 %tobool40, label %if.then50, label %if.end111, !dbg !1520

if.then50:                                        ; preds = %if.else
  %cmp52 = icmp eq i32 %4, 21, !dbg !1521
  br i1 %cmp52, label %land.lhs.true, label %if.end62, !dbg !1523

land.lhs.true:                                    ; preds = %if.then50
  %op54 = getelementptr inbounds %struct.op, %struct.op* %top.0, i64 0, i32 3, !dbg !1524
  %7 = load i32, i32* %op54, align 4, !dbg !1524
  %cmp55 = icmp eq i32 %7, 20, !dbg !1525
  br i1 %cmp55, label %do.body58, label %if.end62, !dbg !1526

do.body58:                                        ; preds = %land.lhs.true
  %call59 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !1527
  br label %cleanup, !dbg !1527

if.end62:                                         ; preds = %land.lhs.true, %if.then50
  %cmp64 = icmp eq i32 %4, 22, !dbg !1529
  br i1 %cmp64, label %land.lhs.true66, label %if.end62.if.end77_crit_edge, !dbg !1530

if.end62.if.end77_crit_edge:                      ; preds = %if.end62
  %op78.phi.trans.insert = getelementptr inbounds %struct.op, %struct.op* %top.0, i64 0, i32 3, !dbg !1531
  %.pre = load i32, i32* %op78.phi.trans.insert, align 4, !dbg !1533
  br label %if.end77, !dbg !1530

land.lhs.true66:                                  ; preds = %if.end62
  %op67 = getelementptr inbounds %struct.op, %struct.op* %top.0, i64 0, i32 3, !dbg !1534
  %8 = load i32, i32* %op67, align 4, !dbg !1534
  %cmp68 = icmp eq i32 %8, 22, !dbg !1535
  br i1 %cmp68, label %do.body71, label %if.end77, !dbg !1536

do.body71:                                        ; preds = %land.lhs.true66
  %call74 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i8* %cond) #6, !dbg !1537
  br label %cleanup, !dbg !1537

if.end77:                                         ; preds = %if.end62.if.end77_crit_edge, %land.lhs.true66
  %9 = phi i32 [ %.pre, %if.end62.if.end77_crit_edge ], [ %8, %land.lhs.true66 ], !dbg !1533
  %cmp79 = icmp eq i32 %9, 22, !dbg !1538
  br i1 %cmp79, label %if.else92, label %land.lhs.true81, !dbg !1539

land.lhs.true81:                                  ; preds = %if.end77
  %cmp83 = icmp eq i32 %9, 20, !dbg !1540
  br i1 %cmp83, label %if.else92, label %do.body86, !dbg !1541

do.body86:                                        ; preds = %land.lhs.true81
  %token87 = getelementptr inbounds %struct.op, %struct.op* %top.0, i64 0, i32 0, !dbg !1542
  %10 = load %struct.cpp_token*, %struct.cpp_token** %token87, align 8, !dbg !1542
  %call88 = call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %10) #6, !dbg !1542
  %call89 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i8* %call88) #6, !dbg !1542
  br label %cleanup, !dbg !1542

if.else92:                                        ; preds = %land.lhs.true81, %if.end77
  br i1 %cmp52, label %if.end111, label %lor.lhs.false96, !dbg !1544

lor.lhs.false96:                                  ; preds = %if.else92
  br i1 %cmp64, label %if.end111, label %do.body102, !dbg !1546

do.body102:                                       ; preds = %lor.lhs.false96
  %call104 = call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %call) #6, !dbg !1547
  %call105 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0), i8* %call104) #6, !dbg !1547
  br label %cleanup, !dbg !1547

if.end111:                                        ; preds = %if.else, %lor.lhs.false96, %if.else92, %if.then39
  %call113 = call fastcc %struct.op* @reduce(%struct.cpp_reader* %pfile, %struct.op* %top.0, i32 %4) #7, !dbg !1549
  call void @llvm.dbg.value(metadata %struct.op* %call113, metadata !1443, metadata !DIExpression()), !dbg !1454
  %tobool114 = icmp eq %struct.op* %call113, null, !dbg !1550
  br i1 %tobool114, label %cleanup, label %if.end116, !dbg !1552

if.end116:                                        ; preds = %if.end111
  %cmp118 = icmp eq i32 %4, 22, !dbg !1553
  br i1 %cmp118, label %cleanup, label %if.end121, !dbg !1555

if.end121:                                        ; preds = %if.end116
  %trunc = trunc i32 %4 to i8, !dbg !1556
  switch i8 %trunc, label %sw.epilog175 [
    i8 21, label %cleanup
    i8 16, label %sw.bb124
    i8 15, label %sw.bb134
    i8 17, label %sw.bb134
    i8 18, label %sw.bb147
  ], !dbg !1556, !llvm.loop !1489

sw.bb124:                                         ; preds = %if.end121
  %low = getelementptr inbounds %struct.op, %struct.op* %call113, i64 0, i32 1, i32 1, !dbg !1557
  %11 = load i64, i64* %low, align 8, !dbg !1557
  %high = getelementptr inbounds %struct.op, %struct.op* %call113, i64 0, i32 1, i32 0, !dbg !1557
  %12 = load i64, i64* %high, align 8, !dbg !1557
  %or = or i64 %11, %12, !dbg !1557
  %cmp127 = icmp eq i64 %or, 0, !dbg !1557
  br i1 %cmp127, label %sw.epilog175, label %if.then129, !dbg !1560

if.then129:                                       ; preds = %sw.bb124
  %13 = load i32, i32* %skip_eval, align 4, !dbg !1561
  %inc132 = add i32 %13, 1, !dbg !1561
  store i32 %inc132, i32* %skip_eval, align 4, !dbg !1561
  br label %sw.epilog175, !dbg !1562

sw.bb134:                                         ; preds = %if.end121, %if.end121
  %low136 = getelementptr inbounds %struct.op, %struct.op* %call113, i64 0, i32 1, i32 1, !dbg !1563
  %14 = load i64, i64* %low136, align 8, !dbg !1563
  %high138 = getelementptr inbounds %struct.op, %struct.op* %call113, i64 0, i32 1, i32 0, !dbg !1563
  %15 = load i64, i64* %high138, align 8, !dbg !1563
  %or139 = or i64 %14, %15, !dbg !1563
  %cmp140 = icmp eq i64 %or139, 0, !dbg !1563
  br i1 %cmp140, label %if.then142, label %sw.epilog175, !dbg !1565

if.then142:                                       ; preds = %sw.bb134
  %16 = load i32, i32* %skip_eval, align 4, !dbg !1566
  %inc145 = add i32 %16, 1, !dbg !1566
  store i32 %inc145, i32* %skip_eval, align 4, !dbg !1566
  br label %sw.epilog175, !dbg !1567

sw.bb147:                                         ; preds = %if.end121
  %op148 = getelementptr inbounds %struct.op, %struct.op* %call113, i64 0, i32 3, !dbg !1568
  %17 = load i32, i32* %op148, align 4, !dbg !1568
  %cmp149 = icmp eq i32 %17, 17, !dbg !1570
  br i1 %cmp149, label %if.end156, label %do.body152, !dbg !1571

do.body152:                                       ; preds = %sw.bb147
  %call153 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !1572
  br label %cleanup, !dbg !1572

if.end156:                                        ; preds = %sw.bb147
  %low159 = getelementptr inbounds %struct.op, %struct.op* %call113, i64 -1, i32 1, i32 1, !dbg !1574
  %18 = load i64, i64* %low159, align 8, !dbg !1574
  %high162 = getelementptr inbounds %struct.op, %struct.op* %call113, i64 -1, i32 1, i32 0, !dbg !1574
  %19 = load i64, i64* %high162, align 8, !dbg !1574
  %or163 = or i64 %18, %19, !dbg !1574
  %cmp164 = icmp eq i64 %or163, 0, !dbg !1574
  %20 = load i32, i32* %skip_eval, align 4, !dbg !1576
  br i1 %cmp164, label %if.else170, label %if.then166, !dbg !1577

if.then166:                                       ; preds = %if.end156
  %inc169 = add i32 %20, 1, !dbg !1578
  store i32 %inc169, i32* %skip_eval, align 4, !dbg !1578
  br label %sw.epilog175, !dbg !1579

if.else170:                                       ; preds = %if.end156
  %dec = add i32 %20, -1, !dbg !1580
  store i32 %dec, i32* %skip_eval, align 4, !dbg !1580
  br label %sw.epilog175

sw.epilog175:                                     ; preds = %if.end121, %if.else170, %if.then166, %sw.bb134, %if.then142, %sw.bb124, %if.then129
  call void @llvm.dbg.value(metadata i8 1, metadata !1446, metadata !DIExpression()), !dbg !1454
  %incdec.ptr = getelementptr inbounds %struct.op, %struct.op* %call113, i64 1, !dbg !1581
  call void @llvm.dbg.value(metadata %struct.op* %incdec.ptr, metadata !1443, metadata !DIExpression()), !dbg !1454
  %21 = load %struct.op*, %struct.op** %op_limit, align 8, !dbg !1582
  %cmp176 = icmp eq %struct.op* %incdec.ptr, %21, !dbg !1583
  br i1 %cmp176, label %if.then178, label %if.end180, !dbg !1584

if.then178:                                       ; preds = %sw.epilog175
  %call179 = call %struct.op* @_cpp_expand_op_stack(%struct.cpp_reader* %pfile) #7, !dbg !1585
  call void @llvm.dbg.value(metadata %struct.op* %call179, metadata !1443, metadata !DIExpression()), !dbg !1454
  br label %if.end180, !dbg !1586

if.end180:                                        ; preds = %if.then178, %sw.epilog175
  %top.1 = phi %struct.op* [ %call179, %if.then178 ], [ %incdec.ptr, %sw.epilog175 ], !dbg !1464
  call void @llvm.dbg.value(metadata %struct.op* %top.1, metadata !1443, metadata !DIExpression()), !dbg !1454
  %op182 = getelementptr inbounds %struct.op, %struct.op* %top.1, i64 0, i32 3, !dbg !1587
  store i32 %4, i32* %op182, align 4, !dbg !1588
  %22 = bitcast %struct.op* %top.1 to i64*, !dbg !1589
  store i64 %2, i64* %22, align 8, !dbg !1589
  %23 = load i32, i32* %src_loc, align 8, !dbg !1590
  %loc187 = getelementptr inbounds %struct.op, %struct.op* %top.1, i64 0, i32 2, !dbg !1591
  store i32 %23, i32* %loc187, align 8, !dbg !1592
  br label %cleanup, !dbg !1593

cleanup:                                          ; preds = %if.end111, %if.end121, %if.end116, %do.body152, %do.body102, %do.body86, %do.body71, %do.body58, %do.body42, %do.body29, %do.body, %if.end180, %if.end
  %saw_leading_not.2 = phi i8 [ %saw_leading_not.0, %do.body29 ], [ %saw_leading_not.1, %if.end180 ], [ %saw_leading_not.1, %do.body152 ], [ %saw_leading_not.1, %do.body42 ], [ %saw_leading_not.1, %do.body58 ], [ %saw_leading_not.1, %do.body71 ], [ %saw_leading_not.1, %do.body86 ], [ %saw_leading_not.1, %do.body102 ], [ %saw_leading_not.0, %if.end ], [ %saw_leading_not.0, %do.body ], [ %saw_leading_not.1, %if.end111 ], [ %saw_leading_not.1, %if.end116 ], [ %saw_leading_not.1, %if.end121 ], !dbg !1473
  %top.2 = phi %struct.op* [ %top.0, %do.body29 ], [ %top.1, %if.end180 ], [ %call113, %do.body152 ], [ %top.0, %do.body42 ], [ %top.0, %do.body58 ], [ %top.0, %do.body71 ], [ %top.0, %do.body86 ], [ %top.0, %do.body102 ], [ %top.0, %if.end ], [ %top.0, %do.body ], [ null, %if.end111 ], [ %call113, %if.end116 ], [ %call113, %if.end121 ], !dbg !1454
  %want_value.1 = phi i8 [ %want_value.0, %do.body29 ], [ 1, %if.end180 ], [ %want_value.0, %do.body152 ], [ 0, %do.body42 ], [ %want_value.0, %do.body58 ], [ %want_value.0, %do.body71 ], [ %want_value.0, %do.body86 ], [ %want_value.0, %do.body102 ], [ 0, %if.end ], [ 0, %do.body ], [ %want_value.0, %if.end111 ], [ %want_value.0, %if.end116 ], [ %want_value.0, %if.end121 ], !dbg !1454
  %cleanup.dest.slot.0 = phi i32 [ 7, %do.body29 ], [ 0, %if.end180 ], [ 7, %do.body152 ], [ 7, %do.body42 ], [ 7, %do.body58 ], [ 7, %do.body71 ], [ 7, %do.body86 ], [ 7, %do.body102 ], [ 3, %if.end ], [ 7, %do.body ], [ 7, %if.end111 ], [ 2, %if.end116 ], [ 3, %if.end121 ]
  call void @llvm.dbg.value(metadata i8 %want_value.1, metadata !1446, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata %struct.op* %top.2, metadata !1443, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %saw_leading_not.2, metadata !1445, metadata !DIExpression()), !dbg !1454
  switch i32 %cleanup.dest.slot.0, label %cleanup216.loopexit [
    i32 0, label %for.cond.backedge
    i32 3, label %for.cond.backedge
    i32 2, label %for.end
  ]

for.cond.backedge:                                ; preds = %cleanup, %cleanup
  br label %for.cond, !dbg !1454, !llvm.loop !1489

for.end:                                          ; preds = %cleanup
  %saw_leading_not.2.lcssa9 = phi i8 [ %saw_leading_not.2, %cleanup ], !dbg !1473
  %top.2.lcssa8 = phi %struct.op* [ %top.2, %cleanup ], !dbg !1454
  %inc.lcssa7 = phi i32 [ %inc, %cleanup ], !dbg !1476
  call void @llvm.dbg.value(metadata i8 %saw_leading_not.2.lcssa9, metadata !1445, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata %struct.op* %top.2.lcssa8, metadata !1443, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %saw_leading_not.2.lcssa9, metadata !1445, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata %struct.op* %top.2.lcssa8, metadata !1443, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i8 %saw_leading_not.2.lcssa9, metadata !1445, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata %struct.op* %top.2.lcssa8, metadata !1443, metadata !DIExpression()), !dbg !1454
  %24 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %mi_ind_cmacro, align 8, !dbg !1594
  %tobool189 = icmp eq %struct.cpp_hashnode* %24, null, !dbg !1596
  br i1 %tobool189, label %if.end198, label %land.lhs.true190, !dbg !1597

land.lhs.true190:                                 ; preds = %for.end
  %tobool192 = icmp ne i8 %saw_leading_not.2.lcssa9, 0, !dbg !1598
  %cmp194 = icmp eq i32 %inc.lcssa7, 3, !dbg !1599
  %or.cond = and i1 %tobool192, %cmp194, !dbg !1600
  br i1 %or.cond, label %if.end198, label %if.then196, !dbg !1600

if.then196:                                       ; preds = %land.lhs.true190
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %mi_ind_cmacro, align 8, !dbg !1601
  br label %if.end198, !dbg !1602

if.end198:                                        ; preds = %for.end, %land.lhs.true190, %if.then196
  %25 = load %struct.op*, %struct.op** %op_stack, align 8, !dbg !1603
  %cmp200 = icmp eq %struct.op* %top.2.lcssa8, %25, !dbg !1604
  br i1 %cmp200, label %if.end207, label %if.then202, !dbg !1605

if.then202:                                       ; preds = %if.end198
  %call206 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i8* %cond) #6, !dbg !1606
  br label %cleanup216, !dbg !1606

if.end207:                                        ; preds = %if.end198
  %low209 = getelementptr inbounds %struct.op, %struct.op* %top.2.lcssa8, i64 0, i32 1, i32 1, !dbg !1607
  %26 = load i64, i64* %low209, align 8, !dbg !1607
  %high211 = getelementptr inbounds %struct.op, %struct.op* %top.2.lcssa8, i64 0, i32 1, i32 0, !dbg !1607
  %27 = load i64, i64* %high211, align 8, !dbg !1607
  %or212 = or i64 %26, %27, !dbg !1607
  %cmp213 = icmp ne i64 %or212, 0, !dbg !1607
  %conv215 = zext i1 %cmp213 to i8, !dbg !1608
  br label %cleanup216, !dbg !1609

cleanup216.loopexit:                              ; preds = %cleanup
  br label %cleanup216, !dbg !1610

cleanup216:                                       ; preds = %cleanup216.loopexit, %if.then202, %if.end207
  %retval.0 = phi i8 [ %conv215, %if.end207 ], [ 0, %if.then202 ], [ 0, %cleanup216.loopexit ]
  ret i8 %retval.0, !dbg !1610
}

declare dso_local %struct.cpp_token* @cpp_get_token(%struct.cpp_reader*) local_unnamed_addr #2

declare dso_local i8* @cpp_token_as_text(%struct.cpp_reader*, %struct.cpp_token*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @eval_token(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_reader* %pfile, %struct.cpp_token* %token) unnamed_addr #3 !dbg !1611 {
entry:
  %result = alloca %struct.cpp_num, align 8
  %temp = alloca i32, align 4
  %unsignedp = alloca i32, align 4
  %tmp = alloca %struct.cpp_num, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1615, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !1616, metadata !DIExpression()), !dbg !1624
  %0 = bitcast %struct.cpp_num* %result to i8*, !dbg !1625
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !1625
  %1 = bitcast i32* %temp to i8*, !dbg !1626
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !1626
  %2 = bitcast i32* %unsignedp to i8*, !dbg !1627
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8, !dbg !1627
  call void @llvm.dbg.value(metadata i32 0, metadata !1619, metadata !DIExpression()), !dbg !1624
  store i32 0, i32* %unsignedp, align 4, !dbg !1628
  %unsignedp1 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 2, !dbg !1629
  store i8 0, i8* %unsignedp1, align 8, !dbg !1630
  %overflow = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 3, !dbg !1631
  store i8 0, i8* %overflow, align 1, !dbg !1632
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 1, !dbg !1633
  %bf.load1 = load i8, i8* %type, align 4, !dbg !1633
  switch i8 %bf.load1, label %sw.default [
    i8 55, label %sw.bb
    i8 57, label %sw.bb7
    i8 56, label %sw.bb7
    i8 58, label %sw.bb7
    i8 59, label %sw.bb7
    i8 53, label %sw.bb17
    i8 37, label %sw.bb65
  ], !dbg !1634

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @cpp_classify_number(%struct.cpp_reader* %pfile, %struct.cpp_token* %token) #7, !dbg !1635
  call void @llvm.dbg.value(metadata i32 %call, metadata !1618, metadata !DIExpression()), !dbg !1624
  store i32 %call, i32* %temp, align 4, !dbg !1636
  call void @llvm.dbg.value(metadata i32 %call, metadata !1618, metadata !DIExpression()), !dbg !1624
  %and = and i32 %call, 15, !dbg !1637
  switch i32 %and, label %sw.epilog [
    i32 2, label %sw.bb2
    i32 1, label %sw.bb4
  ], !dbg !1638

sw.bb2:                                           ; preds = %sw.bb
  %call3 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !1639
  br label %sw.epilog, !dbg !1641

sw.bb4:                                           ; preds = %sw.bb
  call void @llvm.dbg.value(metadata i32 %call, metadata !1618, metadata !DIExpression()), !dbg !1624
  %and5 = and i32 %call, 8192, !dbg !1642
  %tobool = icmp eq i32 %and5, 0, !dbg !1642
  br i1 %tobool, label %if.then, label %if.end, !dbg !1644

if.then:                                          ; preds = %sw.bb4
  call void @llvm.dbg.value(metadata i32 %call, metadata !1618, metadata !DIExpression()), !dbg !1624
  tail call void @cpp_interpret_integer(%struct.cpp_num* sret %agg.result, %struct.cpp_reader* %pfile, %struct.cpp_token* %token, i32 %call) #7, !dbg !1645
  br label %cleanup, !dbg !1646

if.end:                                           ; preds = %sw.bb4
  %call6 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !1647
  br label %sw.epilog, !dbg !1648

sw.epilog:                                        ; preds = %sw.bb, %if.end, %sw.bb2
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 1, !dbg !1649
  store i64 0, i64* %low, align 8, !dbg !1650
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 0, !dbg !1651
  store i64 0, i64* %high, align 8, !dbg !1652
  br label %sw.epilog85, !dbg !1653

sw.bb7:                                           ; preds = %entry, %entry, %entry, %entry
  call void @llvm.dbg.value(metadata i32* %temp, metadata !1618, metadata !DIExpression(DW_OP_deref)), !dbg !1624
  call void @llvm.dbg.value(metadata i32* %unsignedp, metadata !1619, metadata !DIExpression(DW_OP_deref)), !dbg !1624
  %call8 = call i32 @cpp_interpret_charconst(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i32* nonnull %temp, i32* nonnull %unsignedp) #6, !dbg !1654
  call void @llvm.dbg.value(metadata i32 %call8, metadata !1620, metadata !DIExpression()), !dbg !1655
  %high9 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 0, !dbg !1656
  store i64 0, i64* %high9, align 8, !dbg !1657
  %conv = zext i32 %call8 to i64, !dbg !1658
  %low10 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 1, !dbg !1659
  store i64 %conv, i64* %low10, align 8, !dbg !1660
  %3 = load i32, i32* %unsignedp, align 4, !dbg !1661
  call void @llvm.dbg.value(metadata i32 %3, metadata !1619, metadata !DIExpression()), !dbg !1624
  %tobool11 = icmp eq i32 %3, 0, !dbg !1661
  %cmp = icmp slt i32 %call8, 0, !dbg !1663
  %or.cond = and i1 %tobool11, %cmp, !dbg !1664
  br i1 %or.cond, label %if.then13, label %sw.epilog85, !dbg !1664

if.then13:                                        ; preds = %sw.bb7
  %or = or i64 %conv, -4294967296, !dbg !1665
  store i64 %or, i64* %low10, align 8, !dbg !1665
  store i64 -1, i64* %high9, align 8, !dbg !1668
  %4 = bitcast %struct.cpp_num* %tmp to i8*, !dbg !1669
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !1669
  %precision = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 44, !dbg !1670
  %5 = load i64, i64* %precision, align 8, !dbg !1670
  call void @llvm.dbg.value(metadata %struct.cpp_num* %result, metadata !1617, metadata !DIExpression(DW_OP_deref)), !dbg !1624
  call fastcc void @num_trim(%struct.cpp_num* nonnull sret %tmp, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %result, i64 %5) #7, !dbg !1669
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !1669
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !1669
  br label %sw.epilog85, !dbg !1671

sw.bb17:                                          ; preds = %entry
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, !dbg !1672
  %node18 = bitcast %union.cpp_token_u* %val to %struct.cpp_hashnode**, !dbg !1674
  %6 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node18, align 8, !dbg !1674
  %n_defined = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 54, i32 0, !dbg !1675
  %7 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n_defined, align 8, !dbg !1675
  %cmp19 = icmp eq %struct.cpp_hashnode* %6, %7, !dbg !1676
  br i1 %cmp19, label %if.then21, label %if.else, !dbg !1677

if.then21:                                        ; preds = %sw.bb17
  tail call fastcc void @parse_defined(%struct.cpp_num* sret %agg.result, %struct.cpp_reader* %pfile) #7, !dbg !1678
  br label %cleanup, !dbg !1679

if.else:                                          ; preds = %sw.bb17
  %cplusplus = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 2, !dbg !1680
  %8 = load i8, i8* %cplusplus, align 8, !dbg !1680
  %tobool24 = icmp eq i8 %8, 0, !dbg !1680
  br i1 %tobool24, label %if.else49, label %land.lhs.true25, !dbg !1682

land.lhs.true25:                                  ; preds = %if.else
  %n_true = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 54, i32 1, !dbg !1683
  %9 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n_true, align 8, !dbg !1683
  %cmp30 = icmp eq %struct.cpp_hashnode* %6, %9, !dbg !1684
  br i1 %cmp30, label %if.then38, label %lor.lhs.false, !dbg !1685

lor.lhs.false:                                    ; preds = %land.lhs.true25
  %n_false = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 54, i32 2, !dbg !1686
  %10 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n_false, align 8, !dbg !1686
  %cmp36 = icmp eq %struct.cpp_hashnode* %6, %10, !dbg !1687
  br i1 %cmp36, label %if.then38, label %if.else49, !dbg !1688

if.then38:                                        ; preds = %lor.lhs.false, %land.lhs.true25
  %high39 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 0, !dbg !1689
  store i64 0, i64* %high39, align 8, !dbg !1691
  %conv47 = zext i1 %cmp30 to i64, !dbg !1692
  %low48 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 1, !dbg !1693
  store i64 %conv47, i64* %low48, align 8, !dbg !1694
  br label %sw.epilog85, !dbg !1695

if.else49:                                        ; preds = %if.else, %lor.lhs.false
  %high50 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 0, !dbg !1696
  store i64 0, i64* %high50, align 8, !dbg !1698
  %low51 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 1, !dbg !1699
  store i64 0, i64* %low51, align 8, !dbg !1700
  %warn_undef = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 27, !dbg !1701
  %11 = load i8, i8* %warn_undef, align 1, !dbg !1701
  %tobool54 = icmp eq i8 %11, 0, !dbg !1701
  br i1 %tobool54, label %sw.epilog85, label %land.lhs.true55, !dbg !1703

land.lhs.true55:                                  ; preds = %if.else49
  %skip_eval = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 11, !dbg !1704
  %12 = load i32, i32* %skip_eval, align 4, !dbg !1704
  %tobool56 = icmp eq i32 %12, 0, !dbg !1705
  br i1 %tobool56, label %if.then57, label %sw.epilog85, !dbg !1706

if.then57:                                        ; preds = %land.lhs.true55
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %6, i64 0, i32 0, i32 0, !dbg !1707
  %13 = load i8*, i8** %str, align 8, !dbg !1707
  %call61 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i8* %13) #6, !dbg !1708
  br label %sw.epilog85, !dbg !1708

sw.bb65:                                          ; preds = %entry
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !1709
  %14 = load i8, i8* %skipping, align 2, !dbg !1709
  %tobool67 = icmp eq i8 %14, 0, !dbg !1711
  br i1 %tobool67, label %if.then68, label %if.end80, !dbg !1712

if.then68:                                        ; preds = %sw.bb65
  %pedantic = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !1713
  %15 = load i8, i8* %pedantic, align 1, !dbg !1713
  %tobool70 = icmp eq i8 %15, 0, !dbg !1713
  br i1 %tobool70, label %if.else73, label %if.then71, !dbg !1716

if.then71:                                        ; preds = %if.then68
  %call72 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !1717
  br label %if.end80, !dbg !1717

if.else73:                                        ; preds = %if.then68
  %warn_deprecated = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 12, !dbg !1718
  %16 = load i8, i8* %warn_deprecated, align 2, !dbg !1718
  %tobool75 = icmp eq i8 %16, 0, !dbg !1718
  br i1 %tobool75, label %if.end80, label %if.then76, !dbg !1720

if.then76:                                        ; preds = %if.else73
  %call77 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.35, i64 0, i64 0)) #6, !dbg !1721
  br label %if.end80, !dbg !1721

if.end80:                                         ; preds = %if.else73, %sw.bb65, %if.then71, %if.then76
  call void @llvm.dbg.value(metadata i32* %temp, metadata !1618, metadata !DIExpression(DW_OP_deref)), !dbg !1624
  %call81 = call i32 @_cpp_test_assertion(%struct.cpp_reader* %pfile, i32* nonnull %temp) #6, !dbg !1722
  %high82 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 0, !dbg !1723
  store i64 0, i64* %high82, align 8, !dbg !1724
  %17 = load i32, i32* %temp, align 4, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %17, metadata !1618, metadata !DIExpression()), !dbg !1624
  %conv83 = zext i32 %17 to i64, !dbg !1725
  %low84 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 1, !dbg !1726
  store i64 %conv83, i64* %low84, align 8, !dbg !1727
  br label %sw.epilog85, !dbg !1728

sw.default:                                       ; preds = %entry
  tail call void @abort() #9, !dbg !1729
  unreachable, !dbg !1729

sw.epilog85:                                      ; preds = %land.lhs.true55, %if.else49, %if.then57, %if.then38, %if.then13, %sw.bb7, %if.end80, %sw.epilog
  %18 = load i32, i32* %unsignedp, align 4, !dbg !1730
  call void @llvm.dbg.value(metadata i32 %18, metadata !1619, metadata !DIExpression()), !dbg !1624
  %tobool86 = icmp ne i32 %18, 0, !dbg !1731
  %conv88 = zext i1 %tobool86 to i8, !dbg !1732
  store i8 %conv88, i8* %unsignedp1, align 8, !dbg !1733
  %19 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !1734
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* nonnull align 8 %0, i64 24, i1 false), !dbg !1734
  br label %cleanup, !dbg !1735

cleanup:                                          ; preds = %sw.epilog85, %if.then21, %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8, !dbg !1736
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !1736
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !1736
  ret void, !dbg !1736
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.op* @reduce(%struct.cpp_reader* %pfile, %struct.op* %top, i32 %op) unnamed_addr #3 !dbg !1737 {
entry:
  %tmp = alloca %struct.cpp_num, align 8
  %tmp40 = alloca %struct.cpp_num, align 8
  %tmp51 = alloca %struct.cpp_num, align 8
  %tmp62 = alloca %struct.cpp_num, align 8
  %tmp73 = alloca %struct.cpp_num, align 8
  %tmp84 = alloca %struct.cpp_num, align 8
  %tmp94 = alloca %struct.cpp_num, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1741, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata %struct.op* %top, metadata !1742, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i32 %op, metadata !1743, metadata !DIExpression()), !dbg !1748
  %op1 = getelementptr inbounds %struct.op, %struct.op* %top, i64 0, i32 3, !dbg !1749
  %0 = load i32, i32* %op1, align 4, !dbg !1749
  %cmp = icmp eq i32 %0, 0, !dbg !1750
  br i1 %cmp, label %bad_op, label %lor.lhs.false, !dbg !1751

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp ugt i32 %0, 28, !dbg !1752
  br i1 %cmp3, label %bad_op, label %if.end, !dbg !1753

bad_op.loopexit:                                  ; preds = %if.end30
  %.lcssa = phi i32 [ %18, %if.end30 ], !dbg !1754
  br label %bad_op, !dbg !1756

bad_op:                                           ; preds = %bad_op.loopexit, %entry, %lor.lhs.false
  %1 = phi i32 [ %0, %lor.lhs.false ], [ 0, %entry ], [ %.lcssa, %bad_op.loopexit ], !dbg !1756
  call void @llvm.dbg.label(metadata !1745), !dbg !1757
  %call = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0), i32 %1) #6, !dbg !1758
  br label %cleanup, !dbg !1759

if.end:                                           ; preds = %lor.lhs.false
  %cmp5 = icmp eq i32 %op, 20, !dbg !1760
  br i1 %cmp5, label %cleanup, label %if.end7, !dbg !1762

if.end7:                                          ; preds = %if.end
  %idxprom = zext i32 %op to i64, !dbg !1763
  %prio8 = getelementptr inbounds [29 x %struct.cpp_operator], [29 x %struct.cpp_operator]* @optab, i64 0, i64 %idxprom, i32 0, !dbg !1764
  %2 = load i8, i8* %prio8, align 2, !dbg !1764
  %conv = zext i8 %2 to i32, !dbg !1763
  %3 = lshr i64 126730236, %idxprom, !dbg !1765
  %4 = trunc i64 %3 to i32, !dbg !1765
  %5 = and i32 %4, 1, !dbg !1765
  %sub = sub nsw i32 %conv, %5, !dbg !1766
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1744, metadata !DIExpression()), !dbg !1748
  %warn_num_sign_change = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 20, !dbg !1767
  %skip_eval202 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 11, !dbg !1769
  %6 = bitcast %struct.cpp_num* %tmp94 to i8*, !dbg !1773
  %7 = bitcast %struct.cpp_num* %tmp84 to i8*, !dbg !1773
  %8 = bitcast %struct.cpp_num* %tmp73 to i8*, !dbg !1773
  %9 = bitcast %struct.cpp_num* %tmp62 to i8*, !dbg !1773
  %10 = bitcast %struct.cpp_num* %tmp51 to i8*, !dbg !1773
  %11 = bitcast %struct.cpp_num* %tmp40 to i8*, !dbg !1773
  %12 = bitcast %struct.cpp_num* %tmp to i8*, !dbg !1773
  br label %while.cond, !dbg !1774

while.cond:                                       ; preds = %while.cond.backedge, %if.end7
  %13 = phi i32 [ %0, %if.end7 ], [ %.pre, %while.cond.backedge ], !dbg !1775
  %top.addr.1 = phi %struct.op* [ %top, %if.end7 ], [ %top.addr.1.be, %while.cond.backedge ]
  call void @llvm.dbg.value(metadata %struct.op* %top.addr.1, metadata !1742, metadata !DIExpression()), !dbg !1748
  %op14 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 3, !dbg !1775
  %idxprom15 = zext i32 %13 to i64, !dbg !1776
  %prio17 = getelementptr inbounds [29 x %struct.cpp_operator], [29 x %struct.cpp_operator]* @optab, i64 0, i64 %idxprom15, i32 0, !dbg !1777
  %14 = load i8, i8* %prio17, align 2, !dbg !1777
  %conv18 = zext i8 %14 to i32, !dbg !1776
  %cmp19 = icmp ult i32 %sub, %conv18, !dbg !1778
  br i1 %cmp19, label %while.body, label %while.end, !dbg !1774

while.body:                                       ; preds = %while.cond
  %15 = load i8, i8* %warn_num_sign_change, align 2, !dbg !1779
  %tobool = icmp eq i8 %15, 0, !dbg !1779
  br i1 %tobool, label %if.end30, label %land.lhs.true, !dbg !1780

land.lhs.true:                                    ; preds = %while.body
  %16 = lshr i64 100929532, %idxprom15, !dbg !1781
  %17 = and i64 %16, 1, !dbg !1781
  %tobool28 = icmp eq i64 %17, 0, !dbg !1781
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !1782

if.then29:                                        ; preds = %land.lhs.true
  call fastcc void @check_promotion(%struct.cpp_reader* %pfile, %struct.op* %top.addr.1) #7, !dbg !1783
  %.pre4 = load i32, i32* %op14, align 4, !dbg !1754
  br label %if.end30, !dbg !1783

if.end30:                                         ; preds = %land.lhs.true, %while.body, %if.then29
  %18 = phi i32 [ %13, %land.lhs.true ], [ %13, %while.body ], [ %.pre4, %if.then29 ], !dbg !1754
  switch i32 %18, label %bad_op.loopexit [
    i32 27, label %sw.bb
    i32 28, label %sw.bb
    i32 1, label %sw.bb
    i32 14, label %sw.bb
    i32 4, label %sw.bb37
    i32 5, label %sw.bb37
    i32 12, label %sw.bb37
    i32 13, label %sw.bb37
    i32 19, label %sw.bb37
    i32 2, label %sw.bb48
    i32 3, label %sw.bb48
    i32 25, label %sw.bb48
    i32 26, label %sw.bb48
    i32 23, label %sw.bb59
    i32 24, label %sw.bb59
    i32 9, label %sw.bb70
    i32 10, label %sw.bb70
    i32 11, label %sw.bb70
    i32 6, label %sw.bb81
    i32 7, label %sw.bb91
    i32 8, label %sw.bb91
    i32 16, label %sw.bb103
    i32 15, label %sw.bb136
    i32 20, label %sw.bb179
    i32 18, label %sw.bb192
    i32 17, label %sw.bb233
  ], !dbg !1784

sw.bb:                                            ; preds = %if.end30, %if.end30, %if.end30, %if.end30
  %value = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, !dbg !1785
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #8, !dbg !1786
  %value33 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 1, !dbg !1787
  call fastcc void @num_unary_op(%struct.cpp_num* nonnull sret %tmp, %struct.cpp_reader* %pfile, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value33, i32 %18) #7, !dbg !1786
  %19 = bitcast %struct.cpp_num* %value to i8*, !dbg !1786
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %19, i8* nonnull align 8 %12, i64 24, i1 false), !dbg !1786
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #8, !dbg !1786
  %loc = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 2, !dbg !1788
  %20 = load i32, i32* %loc, align 8, !dbg !1788
  %loc36 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 2, !dbg !1789
  store i32 %20, i32* %loc36, align 8, !dbg !1790
  br label %sw.epilog, !dbg !1791

sw.bb37:                                          ; preds = %if.end30, %if.end30, %if.end30, %if.end30, %if.end30
  %value39 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, !dbg !1792
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #8, !dbg !1793
  %value43 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 1, !dbg !1794
  call fastcc void @num_binary_op(%struct.cpp_num* nonnull sret %tmp40, %struct.cpp_reader* %pfile, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value39, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value43, i32 %18) #7, !dbg !1793
  %21 = bitcast %struct.cpp_num* %value39 to i8*, !dbg !1793
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %21, i8* nonnull align 8 %11, i64 24, i1 false), !dbg !1793
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #8, !dbg !1793
  %loc45 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 2, !dbg !1795
  %22 = load i32, i32* %loc45, align 8, !dbg !1795
  %loc47 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 2, !dbg !1796
  store i32 %22, i32* %loc47, align 8, !dbg !1797
  br label %sw.epilog, !dbg !1798

sw.bb48:                                          ; preds = %if.end30, %if.end30, %if.end30, %if.end30
  %value50 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, !dbg !1799
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #8, !dbg !1800
  %value54 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 1, !dbg !1801
  call fastcc void @num_inequality_op(%struct.cpp_num* nonnull sret %tmp51, %struct.cpp_reader* %pfile, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value50, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value54, i32 %18) #7, !dbg !1800
  %23 = bitcast %struct.cpp_num* %value50 to i8*, !dbg !1800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %23, i8* nonnull align 8 %10, i64 24, i1 false), !dbg !1800
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #8, !dbg !1800
  %loc56 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 2, !dbg !1802
  %24 = load i32, i32* %loc56, align 8, !dbg !1802
  %loc58 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 2, !dbg !1803
  store i32 %24, i32* %loc58, align 8, !dbg !1804
  br label %sw.epilog, !dbg !1805

sw.bb59:                                          ; preds = %if.end30, %if.end30
  %value61 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, !dbg !1806
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #8, !dbg !1807
  %value65 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 1, !dbg !1808
  call fastcc void @num_equality_op(%struct.cpp_num* nonnull sret %tmp62, %struct.cpp_reader* %pfile, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value61, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value65, i32 %18) #7, !dbg !1807
  %25 = bitcast %struct.cpp_num* %value61 to i8*, !dbg !1807
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %25, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !1807
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #8, !dbg !1807
  %loc67 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 2, !dbg !1809
  %26 = load i32, i32* %loc67, align 8, !dbg !1809
  %loc69 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 2, !dbg !1810
  store i32 %26, i32* %loc69, align 8, !dbg !1811
  br label %sw.epilog, !dbg !1812

sw.bb70:                                          ; preds = %if.end30, %if.end30, %if.end30
  %value72 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, !dbg !1813
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8, !dbg !1814
  %value76 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 1, !dbg !1815
  call fastcc void @num_bitwise_op(%struct.cpp_num* nonnull sret %tmp73, %struct.cpp_reader* %pfile, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value72, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value76, i32 %18) #7, !dbg !1814
  %27 = bitcast %struct.cpp_num* %value72 to i8*, !dbg !1814
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %27, i8* nonnull align 8 %8, i64 24, i1 false), !dbg !1814
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8, !dbg !1814
  %loc78 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 2, !dbg !1816
  %28 = load i32, i32* %loc78, align 8, !dbg !1816
  %loc80 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 2, !dbg !1817
  store i32 %28, i32* %loc80, align 8, !dbg !1818
  br label %sw.epilog, !dbg !1819

sw.bb81:                                          ; preds = %if.end30
  %value83 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, !dbg !1820
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #8, !dbg !1821
  %value87 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 1, !dbg !1822
  call fastcc void @num_mul(%struct.cpp_num* nonnull sret %tmp84, %struct.cpp_reader* %pfile, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value83, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value87) #7, !dbg !1821
  %29 = bitcast %struct.cpp_num* %value83 to i8*, !dbg !1821
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %29, i8* nonnull align 8 %7, i64 24, i1 false), !dbg !1821
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8, !dbg !1821
  %loc88 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 2, !dbg !1823
  %30 = load i32, i32* %loc88, align 8, !dbg !1823
  %loc90 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 2, !dbg !1824
  store i32 %30, i32* %loc90, align 8, !dbg !1825
  br label %sw.epilog, !dbg !1826

sw.bb91:                                          ; preds = %if.end30, %if.end30
  %value93 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, !dbg !1827
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !1828
  %value97 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 1, !dbg !1829
  %loc99 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 2, !dbg !1830
  %31 = load i32, i32* %loc99, align 8, !dbg !1830
  call fastcc void @num_div_op(%struct.cpp_num* nonnull sret %tmp94, %struct.cpp_reader* %pfile, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value93, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value97, i32 %18, i32 %31) #7, !dbg !1828
  %32 = bitcast %struct.cpp_num* %value93 to i8*, !dbg !1828
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %32, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !1828
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !1828
  %33 = load i32, i32* %loc99, align 8, !dbg !1831
  %loc102 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 2, !dbg !1832
  store i32 %33, i32* %loc102, align 8, !dbg !1833
  br label %sw.epilog, !dbg !1834

sw.bb103:                                         ; preds = %if.end30
  %incdec.ptr = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, !dbg !1835
  call void @llvm.dbg.value(metadata %struct.op* %incdec.ptr, metadata !1742, metadata !DIExpression()), !dbg !1748
  %low = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, i32 1, !dbg !1836
  %34 = load i64, i64* %low, align 8, !dbg !1836
  %high = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, i32 0, !dbg !1836
  %35 = load i64, i64* %high, align 8, !dbg !1836
  %or = or i64 %34, %35, !dbg !1836
  %cmp106 = icmp eq i64 %or, 0, !dbg !1836
  br i1 %cmp106, label %if.end109, label %if.then108, !dbg !1838

if.then108:                                       ; preds = %sw.bb103
  %36 = load i32, i32* %skip_eval202, align 4, !dbg !1839
  %dec = add i32 %36, -1, !dbg !1839
  store i32 %dec, i32* %skip_eval202, align 4, !dbg !1839
  %.pre7 = load i64, i64* %low, align 8, !dbg !1840
  %.pre8 = load i64, i64* %high, align 8, !dbg !1840
  br label %if.end109, !dbg !1841

if.end109:                                        ; preds = %if.then108, %sw.bb103
  %37 = phi i64 [ %.pre8, %if.then108 ], [ %35, %sw.bb103 ], !dbg !1840
  %38 = phi i64 [ %.pre7, %if.then108 ], [ %34, %sw.bb103 ], !dbg !1840
  %or114 = or i64 %38, %37, !dbg !1840
  %cmp115 = icmp eq i64 %or114, 0, !dbg !1840
  br i1 %cmp115, label %lor.rhs, label %lor.end, !dbg !1842

lor.rhs:                                          ; preds = %if.end109
  %low119 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 1, i32 1, !dbg !1843
  %39 = load i64, i64* %low119, align 8, !dbg !1843
  %high122 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 1, i32 0, !dbg !1843
  %40 = load i64, i64* %high122, align 8, !dbg !1843
  %or123 = or i64 %39, %40, !dbg !1843
  %cmp124 = icmp ne i64 %or123, 0, !dbg !1843
  br label %lor.end, !dbg !1842

lor.end:                                          ; preds = %lor.rhs, %if.end109
  %41 = phi i1 [ true, %if.end109 ], [ %cmp124, %lor.rhs ]
  %conv126 = zext i1 %41 to i64, !dbg !1844
  store i64 %conv126, i64* %low, align 8, !dbg !1845
  store i64 0, i64* %high, align 8, !dbg !1846
  %unsignedp = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, i32 2, !dbg !1847
  store i8 0, i8* %unsignedp, align 8, !dbg !1848
  %overflow = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, i32 3, !dbg !1849
  store i8 0, i8* %overflow, align 1, !dbg !1850
  %loc134 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 2, !dbg !1851
  %42 = load i32, i32* %loc134, align 8, !dbg !1851
  %loc135 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 2, !dbg !1852
  store i32 %42, i32* %loc135, align 8, !dbg !1853
  br label %while.cond.backedge, !dbg !1854

while.cond.backedge:                              ; preds = %lor.end, %land.end, %lor.end228, %if.end253
  %top.addr.1.be = phi %struct.op* [ %add.ptr, %lor.end228 ], [ %incdec.ptr137, %land.end ], [ %incdec.ptr, %lor.end ], [ %incdec.ptr242, %if.end253 ]
  %op14.phi.trans.insert = getelementptr inbounds %struct.op, %struct.op* %top.addr.1.be, i64 0, i32 3, !dbg !1748
  %.pre = load i32, i32* %op14.phi.trans.insert, align 4, !dbg !1775
  br label %while.cond, !dbg !1748, !llvm.loop !1855

sw.bb136:                                         ; preds = %if.end30
  %incdec.ptr137 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, !dbg !1857
  call void @llvm.dbg.value(metadata %struct.op* %incdec.ptr137, metadata !1742, metadata !DIExpression()), !dbg !1748
  %low139 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, i32 1, !dbg !1858
  %43 = load i64, i64* %low139, align 8, !dbg !1858
  %high141 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, i32 0, !dbg !1858
  %44 = load i64, i64* %high141, align 8, !dbg !1858
  %or142 = or i64 %43, %44, !dbg !1858
  %cmp143 = icmp eq i64 %or142, 0, !dbg !1858
  br i1 %cmp143, label %if.then145, label %if.end149, !dbg !1860

if.then145:                                       ; preds = %sw.bb136
  %45 = load i32, i32* %skip_eval202, align 4, !dbg !1861
  %dec148 = add i32 %45, -1, !dbg !1861
  store i32 %dec148, i32* %skip_eval202, align 4, !dbg !1861
  %.pre5 = load i64, i64* %low139, align 8, !dbg !1862
  %.pre6 = load i64, i64* %high141, align 8, !dbg !1862
  %.pre9 = or i64 %.pre5, %.pre6, !dbg !1862
  br label %if.end149, !dbg !1863

if.end149:                                        ; preds = %if.then145, %sw.bb136
  %or154.pre-phi = phi i64 [ %.pre9, %if.then145 ], [ %or142, %sw.bb136 ], !dbg !1862
  %cmp155 = icmp eq i64 %or154.pre-phi, 0, !dbg !1862
  br i1 %cmp155, label %land.end, label %land.rhs, !dbg !1864

land.rhs:                                         ; preds = %if.end149
  %low159 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 1, i32 1, !dbg !1865
  %46 = load i64, i64* %low159, align 8, !dbg !1865
  %high162 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 1, i32 0, !dbg !1865
  %47 = load i64, i64* %high162, align 8, !dbg !1865
  %or163 = or i64 %46, %47, !dbg !1865
  %cmp164 = icmp ne i64 %or163, 0, !dbg !1865
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end149
  %48 = phi i1 [ false, %if.end149 ], [ %cmp164, %land.rhs ], !dbg !1773
  %conv167 = zext i1 %48 to i64, !dbg !1866
  store i64 %conv167, i64* %low139, align 8, !dbg !1867
  store i64 0, i64* %high141, align 8, !dbg !1868
  %unsignedp173 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, i32 2, !dbg !1869
  store i8 0, i8* %unsignedp173, align 8, !dbg !1870
  %overflow175 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, i32 3, !dbg !1871
  store i8 0, i8* %overflow175, align 1, !dbg !1872
  %loc177 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 2, !dbg !1873
  %49 = load i32, i32* %loc177, align 8, !dbg !1873
  %loc178 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 2, !dbg !1874
  store i32 %49, i32* %loc178, align 8, !dbg !1875
  br label %while.cond.backedge, !dbg !1876

sw.bb179:                                         ; preds = %if.end30
  %top.addr.1.lcssa16 = phi %struct.op* [ %top.addr.1, %if.end30 ]
  call void @llvm.dbg.value(metadata %struct.op* %top.addr.1.lcssa16, metadata !1742, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata %struct.op* %top.addr.1.lcssa16, metadata !1742, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata %struct.op* %top.addr.1.lcssa16, metadata !1742, metadata !DIExpression()), !dbg !1748
  %cmp180 = icmp eq i32 %op, 21, !dbg !1877
  br i1 %cmp180, label %if.end184, label %if.then182, !dbg !1879

if.then182:                                       ; preds = %sw.bb179
  %token = getelementptr inbounds %struct.op, %struct.op* %top.addr.1.lcssa16, i64 0, i32 0, !dbg !1880
  %50 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8, !dbg !1880
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %50, i64 0, i32 0, !dbg !1882
  %51 = load i32, i32* %src_loc, align 8, !dbg !1882
  %call183 = call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %51, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !1883
  br label %cleanup, !dbg !1884

if.end184:                                        ; preds = %sw.bb179
  %incdec.ptr185 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1.lcssa16, i64 -1, !dbg !1885
  call void @llvm.dbg.value(metadata %struct.op* %incdec.ptr185, metadata !1742, metadata !DIExpression()), !dbg !1748
  %value186 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1.lcssa16, i64 -1, i32 1, !dbg !1886
  %value188 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1.lcssa16, i64 0, i32 1, !dbg !1887
  %52 = bitcast %struct.cpp_num* %value186 to i8*, !dbg !1887
  %53 = bitcast %struct.cpp_num* %value188 to i8*, !dbg !1887
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %52, i8* nonnull align 8 %53, i64 24, i1 false), !dbg !1887
  %loc190 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1.lcssa16, i64 0, i32 2, !dbg !1888
  %54 = load i32, i32* %loc190, align 8, !dbg !1888
  %loc191 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1.lcssa16, i64 -1, i32 2, !dbg !1889
  store i32 %54, i32* %loc191, align 8, !dbg !1890
  br label %cleanup, !dbg !1891

sw.bb192:                                         ; preds = %if.end30
  %add.ptr = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -2, !dbg !1892
  call void @llvm.dbg.value(metadata %struct.op* %add.ptr, metadata !1742, metadata !DIExpression()), !dbg !1748
  %low194 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -2, i32 1, i32 1, !dbg !1893
  %55 = load i64, i64* %low194, align 8, !dbg !1893
  %high196 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -2, i32 1, i32 0, !dbg !1893
  %56 = load i64, i64* %high196, align 8, !dbg !1893
  %or197 = or i64 %55, %56, !dbg !1893
  %cmp198 = icmp eq i64 %or197, 0, !dbg !1893
  br i1 %cmp198, label %if.else, label %if.then200, !dbg !1894

if.then200:                                       ; preds = %sw.bb192
  %57 = load i32, i32* %skip_eval202, align 4, !dbg !1895
  %dec203 = add i32 %57, -1, !dbg !1895
  store i32 %dec203, i32* %skip_eval202, align 4, !dbg !1895
  %value204 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -2, i32 1, !dbg !1896
  %value206 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, !dbg !1897
  %58 = bitcast %struct.cpp_num* %value204 to i8*, !dbg !1897
  %59 = bitcast %struct.cpp_num* %value206 to i8*, !dbg !1897
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %58, i8* nonnull align 8 %59, i64 24, i1 false), !dbg !1897
  %loc208 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 2, !dbg !1898
  %60 = load i32, i32* %loc208, align 8, !dbg !1898
  %loc209 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -2, i32 2, !dbg !1899
  store i32 %60, i32* %loc209, align 8, !dbg !1900
  br label %if.end216, !dbg !1901

if.else:                                          ; preds = %sw.bb192
  %value210 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -2, i32 1, !dbg !1902
  %value212 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 1, !dbg !1904
  %61 = bitcast %struct.cpp_num* %value210 to i8*, !dbg !1904
  %62 = bitcast %struct.cpp_num* %value212 to i8*, !dbg !1904
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %61, i8* nonnull align 8 %62, i64 24, i1 false), !dbg !1904
  %loc214 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 2, !dbg !1905
  %63 = load i32, i32* %loc214, align 8, !dbg !1905
  %loc215 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -2, i32 2, !dbg !1906
  store i32 %63, i32* %loc215, align 8, !dbg !1907
  br label %if.end216

if.end216:                                        ; preds = %if.else, %if.then200
  %unsignedp219 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, i32 2, !dbg !1908
  %64 = load i8, i8* %unsignedp219, align 8, !dbg !1908
  %tobool221 = icmp eq i8 %64, 0, !dbg !1909
  br i1 %tobool221, label %lor.rhs222, label %lor.end228, !dbg !1910

lor.rhs222:                                       ; preds = %if.end216
  %unsignedp225 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 0, i32 1, i32 2, !dbg !1911
  %65 = load i8, i8* %unsignedp225, align 8, !dbg !1911
  %tobool227 = icmp ne i8 %65, 0, !dbg !1910
  br label %lor.end228, !dbg !1910

lor.end228:                                       ; preds = %if.end216, %lor.rhs222
  %66 = phi i1 [ true, %if.end216 ], [ %tobool227, %lor.rhs222 ]
  %conv230 = zext i1 %66 to i8, !dbg !1912
  %unsignedp232 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -2, i32 1, i32 2, !dbg !1913
  store i8 %conv230, i8* %unsignedp232, align 8, !dbg !1914
  br label %while.cond.backedge, !dbg !1915

sw.bb233:                                         ; preds = %if.end30
  %top.addr.1.lcssa17 = phi %struct.op* [ %top.addr.1, %if.end30 ]
  call void @llvm.dbg.value(metadata %struct.op* %top.addr.1.lcssa17, metadata !1742, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata %struct.op* %top.addr.1.lcssa17, metadata !1742, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata %struct.op* %top.addr.1.lcssa17, metadata !1742, metadata !DIExpression()), !dbg !1748
  %67 = and i32 %op, -2, !dbg !1916
  %switch = icmp eq i32 %67, 18, !dbg !1916
  br i1 %switch, label %cleanup, label %if.end240, !dbg !1916

if.end240:                                        ; preds = %sw.bb233
  %call241 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0)) #6, !dbg !1918
  br label %cleanup, !dbg !1919

sw.epilog:                                        ; preds = %sw.bb91, %sw.bb81, %sw.bb70, %sw.bb59, %sw.bb48, %sw.bb37, %sw.bb
  %incdec.ptr242 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, !dbg !1920
  call void @llvm.dbg.value(metadata %struct.op* %incdec.ptr242, metadata !1742, metadata !DIExpression()), !dbg !1748
  %overflow244 = getelementptr inbounds %struct.op, %struct.op* %top.addr.1, i64 -1, i32 1, i32 3, !dbg !1921
  %68 = load i8, i8* %overflow244, align 1, !dbg !1921
  %tobool246 = icmp eq i8 %68, 0, !dbg !1923
  br i1 %tobool246, label %if.end253, label %land.lhs.true247, !dbg !1924

land.lhs.true247:                                 ; preds = %sw.epilog
  %69 = load i32, i32* %skip_eval202, align 4, !dbg !1925
  %tobool250 = icmp eq i32 %69, 0, !dbg !1926
  br i1 %tobool250, label %if.then251, label %if.end253, !dbg !1927

if.then251:                                       ; preds = %land.lhs.true247
  %call252 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.43, i64 0, i64 0)) #6, !dbg !1928
  br label %if.end253, !dbg !1928

if.end253:                                        ; preds = %land.lhs.true247, %sw.epilog, %if.then251
  br label %while.cond.backedge, !dbg !1774

while.end:                                        ; preds = %while.cond
  %top.addr.1.lcssa = phi %struct.op* [ %top.addr.1, %while.cond ]
  call void @llvm.dbg.value(metadata %struct.op* %top.addr.1.lcssa, metadata !1742, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata %struct.op* %top.addr.1.lcssa, metadata !1742, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata %struct.op* %top.addr.1.lcssa, metadata !1742, metadata !DIExpression()), !dbg !1748
  %cmp254 = icmp eq i32 %op, 21, !dbg !1929
  br i1 %cmp254, label %if.then256, label %cleanup, !dbg !1931

if.then256:                                       ; preds = %while.end
  %call257 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0)) #6, !dbg !1932
  br label %cleanup, !dbg !1934

cleanup:                                          ; preds = %sw.bb233, %while.end, %if.end, %if.then256, %if.end240, %if.end184, %if.then182, %bad_op
  %retval.0 = phi %struct.op* [ null, %bad_op ], [ null, %if.end240 ], [ null, %if.then182 ], [ %incdec.ptr185, %if.end184 ], [ null, %if.then256 ], [ %top, %if.end ], [ %top.addr.1.lcssa17, %sw.bb233 ], [ %top.addr.1.lcssa, %while.end ], !dbg !1748
  ret %struct.op* %retval.0, !dbg !1935
}

; Function Attrs: nounwind uwtable
define dso_local %struct.op* @_cpp_expand_op_stack(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !1936 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1940, metadata !DIExpression()), !dbg !1943
  %op_limit = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 52, !dbg !1944
  %0 = bitcast %struct.op** %op_limit to i64*, !dbg !1944
  %1 = load i64, i64* %0, align 8, !dbg !1944
  %op_stack = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 51, !dbg !1945
  %2 = bitcast %struct.op** %op_stack to i64*, !dbg !1945
  %3 = load i64, i64* %2, align 8, !dbg !1945
  %sub.ptr.sub = sub i64 %1, %3, !dbg !1946
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %sub.ptr.div, metadata !1941, metadata !DIExpression()), !dbg !1943
  %mul = shl nsw i64 %sub.ptr.div, 1, !dbg !1947
  %add = add nsw i64 %mul, 20, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %add, metadata !1942, metadata !DIExpression()), !dbg !1943
  %4 = bitcast %struct.op** %op_stack to i8**, !dbg !1949
  %5 = inttoptr i64 %3 to i8*, !dbg !1949
  %mul2 = mul i64 %add, 40, !dbg !1949
  %call = tail call i8* @xrealloc(i8* %5, i64 %mul2) #6, !dbg !1949
  store i8* %call, i8** %4, align 8, !dbg !1950
  %.cast = bitcast i8* %call to %struct.op*, !dbg !1951
  %add.ptr = getelementptr inbounds %struct.op, %struct.op* %.cast, i64 %add, !dbg !1952
  store %struct.op* %add.ptr, %struct.op** %op_limit, align 8, !dbg !1953
  %add.ptr7 = getelementptr inbounds %struct.op, %struct.op* %.cast, i64 %sub.ptr.div, !dbg !1954
  ret %struct.op* %add.ptr7, !dbg !1955
}

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cpp_num_sign_extend(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_num* byval(%struct.cpp_num) align 8 %num, i64 %precision) local_unnamed_addr #3 !dbg !1956 {
entry:
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %num, metadata !1960, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %precision, metadata !1961, metadata !DIExpression()), !dbg !1963
  %unsignedp = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 2, !dbg !1964
  %0 = load i8, i8* %unsignedp, align 8, !dbg !1964
  %tobool = icmp eq i8 %0, 0, !dbg !1966
  br i1 %tobool, label %if.then, label %if.end24, !dbg !1967

if.then:                                          ; preds = %entry
  %cmp = icmp ugt i64 %precision, 64, !dbg !1968
  br i1 %cmp, label %if.then1, label %if.else, !dbg !1971

if.then1:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i64 %precision, metadata !1961, metadata !DIExpression(DW_OP_constu, 64, DW_OP_minus, DW_OP_stack_value)), !dbg !1963
  %1 = and i64 %precision, -64, !dbg !1972
  %cmp2 = icmp eq i64 %1, 64, !dbg !1972
  br i1 %cmp2, label %land.lhs.true, label %if.end24, !dbg !1975

land.lhs.true:                                    ; preds = %if.then1
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !1976
  %2 = load i64, i64* %high, align 8, !dbg !1976
  %sub3 = add i64 %precision, -65, !dbg !1977
  %shl = shl i64 1, %sub3, !dbg !1978
  %and = and i64 %2, %shl, !dbg !1979
  %tobool4 = icmp eq i64 %and, 0, !dbg !1979
  br i1 %tobool4, label %if.end24, label %if.then5, !dbg !1980

if.then5:                                         ; preds = %land.lhs.true
  %sub6 = sub i64 128, %precision, !dbg !1981
  %shr = lshr i64 -1, %sub6, !dbg !1982
  %neg = xor i64 %shr, -1, !dbg !1983
  %or = or i64 %2, %neg, !dbg !1984
  store i64 %or, i64* %high, align 8, !dbg !1984
  br label %if.end24, !dbg !1985

if.else:                                          ; preds = %if.then
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !1986
  %3 = load i64, i64* %low, align 8, !dbg !1986
  %sub8 = add i64 %precision, -1, !dbg !1988
  %shl9 = shl i64 1, %sub8, !dbg !1989
  %and10 = and i64 %3, %shl9, !dbg !1990
  %tobool11 = icmp eq i64 %and10, 0, !dbg !1990
  br i1 %tobool11, label %if.end24, label %if.then12, !dbg !1991

if.then12:                                        ; preds = %if.else
  %cmp13 = icmp ult i64 %precision, 64, !dbg !1992
  br i1 %cmp13, label %if.then14, label %if.end20, !dbg !1995

if.then14:                                        ; preds = %if.then12
  %sub15 = sub i64 64, %precision, !dbg !1996
  %shr16 = lshr i64 -1, %sub15, !dbg !1997
  %neg17 = xor i64 %shr16, -1, !dbg !1998
  %or19 = or i64 %3, %neg17, !dbg !1999
  store i64 %or19, i64* %low, align 8, !dbg !1999
  br label %if.end20, !dbg !2000

if.end20:                                         ; preds = %if.then14, %if.then12
  %high21 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2001
  store i64 -1, i64* %high21, align 8, !dbg !2002
  br label %if.end24, !dbg !2003

if.end24:                                         ; preds = %land.lhs.true, %if.else, %entry, %if.then5, %if.then1, %if.end20
  %4 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2004
  %5 = bitcast %struct.cpp_num* %num to i8*, !dbg !2004
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !2004
  ret void, !dbg !2005
}

; Function Attrs: nounwind uwtable
define internal fastcc void @num_trim(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_num* byval(%struct.cpp_num) align 8 %num, i64 %precision) unnamed_addr #3 !dbg !2006 {
entry:
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %num, metadata !2008, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i64 %precision, metadata !2009, metadata !DIExpression()), !dbg !2011
  %cmp = icmp ugt i64 %precision, 64, !dbg !2012
  br i1 %cmp, label %if.then, label %if.else, !dbg !2014

if.then:                                          ; preds = %entry
  %sub = add i64 %precision, -64, !dbg !2015
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2009, metadata !DIExpression()), !dbg !2011
  %cmp1 = icmp ult i64 %sub, 64, !dbg !2017
  br i1 %cmp1, label %if.then2, label %if.end11, !dbg !2019

if.then2:                                         ; preds = %if.then
  %notmask1 = shl nsw i64 -1, %sub, !dbg !2020
  %sub3 = xor i64 %notmask1, -1, !dbg !2020
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2021
  %0 = load i64, i64* %high, align 8, !dbg !2022
  %and = and i64 %0, %sub3, !dbg !2022
  store i64 %and, i64* %high, align 8, !dbg !2022
  br label %if.end11, !dbg !2023

if.else:                                          ; preds = %entry
  %cmp4 = icmp eq i64 %precision, 64, !dbg !2024
  br i1 %cmp4, label %if.end9, label %if.then5, !dbg !2027

if.then5:                                         ; preds = %if.else
  %notmask = shl nsw i64 -1, %precision, !dbg !2028
  %sub7 = xor i64 %notmask, -1, !dbg !2028
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !2029
  %1 = load i64, i64* %low, align 8, !dbg !2030
  %and8 = and i64 %1, %sub7, !dbg !2030
  store i64 %and8, i64* %low, align 8, !dbg !2030
  br label %if.end9, !dbg !2031

if.end9:                                          ; preds = %if.else, %if.then5
  %high10 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2032
  store i64 0, i64* %high10, align 8, !dbg !2033
  br label %if.end11

if.end11:                                         ; preds = %if.then, %if.then2, %if.end9
  %2 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2034
  %3 = bitcast %struct.cpp_num* %num to i8*, !dbg !2034
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* nonnull align 8 %3, i64 24, i1 false), !dbg !2034
  ret void, !dbg !2035
}

declare dso_local i32 @cpp_interpret_charconst(%struct.cpp_reader*, %struct.cpp_token*, i32*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_defined(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_reader* %pfile) unnamed_addr #3 !dbg !2036 {
entry:
  %op = alloca %struct.cpp_token, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2040, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %agg.result, metadata !2041, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 0, metadata !2042, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* null, metadata !2043, metadata !DIExpression()), !dbg !2051
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !2053
  %0 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !2053
  call void @llvm.dbg.value(metadata %struct.cpp_context* %0, metadata !2045, metadata !DIExpression()), !dbg !2051
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !2054
  %1 = load i8, i8* %prevent_expansion, align 8, !dbg !2055
  %inc = add i8 %1, 1, !dbg !2055
  store i8 %inc, i8* %prevent_expansion, align 8, !dbg !2055
  %call = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #6, !dbg !2056
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !2044, metadata !DIExpression()), !dbg !2051
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !2057
  %bf.load = load i8, i8* %type, align 4, !dbg !2057
  %cmp = icmp eq i8 %bf.load, 20, !dbg !2059
  br i1 %cmp, label %if.then, label %if.end, !dbg !2060

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !2042, metadata !DIExpression()), !dbg !2051
  %call1 = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #6, !dbg !2061
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call1, metadata !2044, metadata !DIExpression()), !dbg !2051
  %type2.phi.trans.insert = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call1, i64 0, i32 1, !dbg !2063
  %bf.load3.pre = load i8, i8* %type2.phi.trans.insert, align 4, !dbg !2064
  br label %if.end, !dbg !2065

if.end:                                           ; preds = %if.then, %entry
  %bf.load3 = phi i8 [ %bf.load3.pre, %if.then ], [ %bf.load, %entry ], !dbg !2064
  %paren.0 = phi i32 [ 1, %if.then ], [ 0, %entry ], !dbg !2051
  %token.0 = phi %struct.cpp_token* [ %call1, %if.then ], [ %call, %entry ], !dbg !2051
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token.0, metadata !2044, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i32 %paren.0, metadata !2042, metadata !DIExpression()), !dbg !2051
  %type2 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.0, i64 0, i32 1, !dbg !2064
  %cmp5 = icmp eq i8 %bf.load3, 53, !dbg !2066
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !2067

if.then6:                                         ; preds = %if.end
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.0, i64 0, i32 3, !dbg !2068
  %node8 = bitcast %union.cpp_token_u* %val to %struct.cpp_hashnode**, !dbg !2070
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node8, align 8, !dbg !2070
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %2, metadata !2043, metadata !DIExpression()), !dbg !2051
  %tobool = icmp eq i32 %paren.0, 0, !dbg !2071
  br i1 %tobool, label %if.end29, label %land.lhs.true, !dbg !2073

land.lhs.true:                                    ; preds = %if.then6
  %call9 = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #6, !dbg !2074
  %type10 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call9, i64 0, i32 1, !dbg !2075
  %bf.load11 = load i8, i8* %type10, align 4, !dbg !2075
  %cmp13 = icmp eq i8 %bf.load11, 21, !dbg !2076
  br i1 %cmp13, label %if.end29, label %if.then14, !dbg !2077

if.then14:                                        ; preds = %land.lhs.true
  %call15 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0)) #6, !dbg !2078
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* null, metadata !2043, metadata !DIExpression()), !dbg !2051
  br label %if.end29, !dbg !2080

if.else:                                          ; preds = %if.end
  %call17 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0)) #6, !dbg !2081
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.0, i64 0, i32 2, !dbg !2082
  %3 = load i16, i16* %flags, align 2, !dbg !2082
  %4 = and i16 %3, 16, !dbg !2083
  %tobool18 = icmp eq i16 %4, 0, !dbg !2083
  br i1 %tobool18, label %if.end29, label %if.then19, !dbg !2084

if.then19:                                        ; preds = %if.else
  %5 = bitcast %struct.cpp_token* %op to i8*, !dbg !2085
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8, !dbg !2085
  %flags20 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %op, i64 0, i32 2, !dbg !2086
  store i16 0, i16* %flags20, align 2, !dbg !2087
  %bf.load222 = load i8, i8* %type2, align 4, !dbg !2088
  %type24 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %op, i64 0, i32 1, !dbg !2089
  store i8 %bf.load222, i8* %type24, align 4, !dbg !2090
  %call25 = tail call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %token.0) #6, !dbg !2091
  call void @llvm.dbg.value(metadata %struct.cpp_token* %op, metadata !2046, metadata !DIExpression(DW_OP_deref)), !dbg !2092
  %call26 = call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* nonnull %op) #6, !dbg !2093
  %call27 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.38, i64 0, i64 0), i8* %call25, i8* %call26) #6, !dbg !2094
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8, !dbg !2095
  br label %if.end29, !dbg !2096

if.end29:                                         ; preds = %land.lhs.true, %if.then6, %if.else, %if.then19, %if.then14
  %node.1 = phi %struct.cpp_hashnode* [ null, %if.then14 ], [ %2, %land.lhs.true ], [ %2, %if.then6 ], [ null, %if.then19 ], [ null, %if.else ], !dbg !2051
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node.1, metadata !2043, metadata !DIExpression()), !dbg !2051
  %tobool30 = icmp eq %struct.cpp_hashnode* %node.1, null, !dbg !2097
  br i1 %tobool30, label %if.end93, label %if.then31, !dbg !2099

if.then31:                                        ; preds = %if.end29
  %6 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !2100
  %cmp33 = icmp eq %struct.cpp_context* %6, %0, !dbg !2103
  br i1 %cmp33, label %do.body, label %land.lhs.true35, !dbg !2104

land.lhs.true35:                                  ; preds = %if.then31
  %pedantic = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !2105
  %7 = load i8, i8* %pedantic, align 1, !dbg !2105
  %tobool37 = icmp eq i8 %7, 0, !dbg !2105
  br i1 %tobool37, label %do.body, label %if.then38, !dbg !2106

if.then38:                                        ; preds = %land.lhs.true35
  %call39 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !2107
  br label %do.body, !dbg !2107

do.body:                                          ; preds = %land.lhs.true35, %if.then31, %if.then38
  %type41 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node.1, i64 0, i32 3, !dbg !2108
  %bf.load42 = load i16, i16* %type41, align 2, !dbg !2108
  %bf.clear = and i16 %bf.load42, 63, !dbg !2108
  %cmp44 = icmp eq i16 %bf.clear, 1, !dbg !2108
  br i1 %cmp44, label %land.lhs.true46, label %do.end, !dbg !2108

land.lhs.true46:                                  ; preds = %do.body
  %8 = and i16 %bf.load42, 256, !dbg !2108
  %tobool51 = icmp eq i16 %8, 0, !dbg !2108
  br i1 %tobool51, label %if.then52, label %do.end, !dbg !2111

if.then52:                                        ; preds = %land.lhs.true46
  %macro = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node.1, i64 0, i32 4, i32 0, !dbg !2108
  %9 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8, !dbg !2108
  %used = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %9, i64 0, i32 5, !dbg !2108
  %bf.load53 = load i8, i8* %used, align 2, !dbg !2108
  %bf.set = or i8 %bf.load53, 8, !dbg !2108
  store i8 %bf.set, i8* %used, align 2, !dbg !2108
  %bf.load57.pre = load i16, i16* %type41, align 2, !dbg !2112
  br label %do.end, !dbg !2108

do.end:                                           ; preds = %land.lhs.true46, %if.then52, %do.body
  %bf.load64 = phi i16 [ %bf.load42, %land.lhs.true46 ], [ %bf.load57.pre, %if.then52 ], [ %bf.load42, %do.body ], !dbg !2112
  %10 = and i16 %bf.load64, 8192, !dbg !2114
  %tobool61 = icmp eq i16 %10, 0, !dbg !2114
  br i1 %tobool61, label %if.then62, label %if.end92, !dbg !2115

if.then62:                                        ; preds = %do.end
  %bf.lshr65 = and i16 %bf.load64, -8256, !dbg !2116
  %11 = or i16 %bf.lshr65, 8192, !dbg !2116
  %bf.clear68 = and i16 %bf.load64, 63, !dbg !2116
  %bf.set69 = or i16 %bf.clear68, %11, !dbg !2116
  store i16 %bf.set69, i16* %type41, align 2, !dbg !2116
  %cmp75 = icmp eq i16 %bf.clear68, 1, !dbg !2118
  br i1 %cmp75, label %if.then77, label %if.else83, !dbg !2120

if.then77:                                        ; preds = %if.then62
  %used_define = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 13, !dbg !2121
  %12 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %used_define, align 8, !dbg !2121
  %tobool78 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %12, null, !dbg !2124
  br i1 %tobool78, label %if.end92, label %if.then79, !dbg !2125

if.then79:                                        ; preds = %if.then77
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !2126
  %13 = load i32, i32* %directive_line, align 8, !dbg !2126
  call void %12(%struct.cpp_reader* %pfile, i32 %13, %struct.cpp_hashnode* nonnull %node.1) #6, !dbg !2127
  br label %if.end92, !dbg !2127

if.else83:                                        ; preds = %if.then62
  %used_undef = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 14, !dbg !2128
  %14 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %used_undef, align 8, !dbg !2128
  %tobool85 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %14, null, !dbg !2131
  br i1 %tobool85, label %if.end92, label %if.then86, !dbg !2132

if.then86:                                        ; preds = %if.else83
  %directive_line89 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !2133
  %15 = load i32, i32* %directive_line89, align 8, !dbg !2133
  call void %14(%struct.cpp_reader* %pfile, i32 %15, %struct.cpp_hashnode* nonnull %node.1) #6, !dbg !2134
  br label %if.end92, !dbg !2134

if.end92:                                         ; preds = %if.then77, %if.else83, %do.end, %if.then79, %if.then86
  %mi_ind_cmacro = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 27, !dbg !2135
  store %struct.cpp_hashnode* %node.1, %struct.cpp_hashnode** %mi_ind_cmacro, align 8, !dbg !2136
  br label %if.end93, !dbg !2137

if.end93:                                         ; preds = %if.end29, %if.end92
  %16 = load i8, i8* %prevent_expansion, align 8, !dbg !2138
  %dec = add i8 %16, -1, !dbg !2138
  store i8 %dec, i8* %prevent_expansion, align 8, !dbg !2138
  %unsignedp = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 2, !dbg !2139
  store i8 0, i8* %unsignedp, align 8, !dbg !2140
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 0, !dbg !2141
  store i64 0, i64* %high, align 8, !dbg !2142
  %overflow = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 3, !dbg !2143
  store i8 0, i8* %overflow, align 1, !dbg !2144
  br i1 %tobool30, label %land.end, label %land.rhs, !dbg !2145

land.rhs:                                         ; preds = %if.end93
  %type97 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node.1, i64 0, i32 3, !dbg !2146
  %bf.load98 = load i16, i16* %type97, align 2, !dbg !2146
  %bf.clear99 = and i16 %bf.load98, 63, !dbg !2146
  %cmp101 = icmp eq i16 %bf.clear99, 1, !dbg !2147
  %phitmp1 = zext i1 %cmp101 to i64
  br label %land.end

land.end:                                         ; preds = %if.end93, %land.rhs
  %17 = phi i64 [ 0, %if.end93 ], [ %phitmp1, %land.rhs ]
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 1, !dbg !2148
  store i64 %17, i64* %low, align 8, !dbg !2149
  ret void, !dbg !2150
}

declare dso_local i32 @_cpp_test_assertion(%struct.cpp_reader*, i32*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @check_promotion(%struct.cpp_reader* %pfile, %struct.op* %op) unnamed_addr #3 !dbg !2151 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2157, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata %struct.op* %op, metadata !2158, metadata !DIExpression()), !dbg !2159
  %unsignedp = getelementptr inbounds %struct.op, %struct.op* %op, i64 0, i32 1, i32 2, !dbg !2160
  %0 = load i8, i8* %unsignedp, align 8, !dbg !2160
  %unsignedp2 = getelementptr inbounds %struct.op, %struct.op* %op, i64 -1, i32 1, i32 2, !dbg !2162
  %1 = load i8, i8* %unsignedp2, align 8, !dbg !2162
  %cmp = icmp eq i8 %0, %1, !dbg !2163
  br i1 %cmp, label %if.end27, label %if.end, !dbg !2164

if.end:                                           ; preds = %entry
  %tobool = icmp eq i8 %0, 0, !dbg !2165
  br i1 %tobool, label %if.else, label %if.then7, !dbg !2167

if.then7:                                         ; preds = %if.end
  %value9 = getelementptr inbounds %struct.op, %struct.op* %op, i64 -1, i32 1, !dbg !2168
  %precision = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 44, !dbg !2171
  %2 = load i64, i64* %precision, align 8, !dbg !2171
  %call = tail call fastcc zeroext i8 @num_positive(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value9, i64 %2) #7, !dbg !2172
  %tobool10 = icmp eq i8 %call, 0, !dbg !2172
  br i1 %tobool10, label %if.then11, label %if.end27, !dbg !2173

if.then11:                                        ; preds = %if.then7
  %loc = getelementptr inbounds %struct.op, %struct.op* %op, i64 -1, i32 2, !dbg !2174
  %3 = load i32, i32* %loc, align 8, !dbg !2174
  %token = getelementptr inbounds %struct.op, %struct.op* %op, i64 0, i32 0, !dbg !2175
  %4 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8, !dbg !2175
  %call13 = tail call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %4) #6, !dbg !2176
  %call14 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 0, i32 %3, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.45, i64 0, i64 0), i8* %call13) #6, !dbg !2177
  br label %if.end27, !dbg !2177

if.else:                                          ; preds = %if.end
  %value16 = getelementptr inbounds %struct.op, %struct.op* %op, i64 0, i32 1, !dbg !2178
  %precision18 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 44, !dbg !2180
  %5 = load i64, i64* %precision18, align 8, !dbg !2180
  %call19 = tail call fastcc zeroext i8 @num_positive(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %value16, i64 %5) #7, !dbg !2181
  %tobool20 = icmp eq i8 %call19, 0, !dbg !2181
  br i1 %tobool20, label %if.then21, label %if.end27, !dbg !2182

if.then21:                                        ; preds = %if.else
  %loc22 = getelementptr inbounds %struct.op, %struct.op* %op, i64 0, i32 2, !dbg !2183
  %6 = load i32, i32* %loc22, align 8, !dbg !2183
  %token23 = getelementptr inbounds %struct.op, %struct.op* %op, i64 0, i32 0, !dbg !2184
  %7 = load %struct.cpp_token*, %struct.cpp_token** %token23, align 8, !dbg !2184
  %call24 = tail call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %7) #6, !dbg !2185
  %call25 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 0, i32 %6, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.46, i64 0, i64 0), i8* %call24) #6, !dbg !2186
  br label %if.end27, !dbg !2186

if.end27:                                         ; preds = %if.then7, %if.else, %if.then21, %if.then11, %entry
  ret void, !dbg !2187
}

; Function Attrs: nounwind uwtable
define internal fastcc void @num_unary_op(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_reader* %pfile, %struct.cpp_num* byval(%struct.cpp_num) align 8 %num, i32 %op) unnamed_addr #3 !dbg !2188 {
entry:
  %tmp = alloca %struct.cpp_num, align 8
  %tmp8 = alloca %struct.cpp_num, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2192, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %num, metadata !2193, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 %op, metadata !2194, metadata !DIExpression()), !dbg !2195
  switch i32 %op, label %sw.default [
    i32 27, label %sw.bb
    i32 28, label %sw.bb2
    i32 14, label %sw.bb4
  ], !dbg !2197

sw.bb:                                            ; preds = %entry
  %warn_traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 17, !dbg !2198
  %0 = load i8, i8* %warn_traditional, align 1, !dbg !2198
  %tobool = icmp eq i8 %0, 0, !dbg !2198
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2201

land.lhs.true:                                    ; preds = %sw.bb
  %skip_eval = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 11, !dbg !2202
  %1 = load i32, i32* %skip_eval, align 4, !dbg !2202
  %tobool1 = icmp eq i32 %1, 0, !dbg !2203
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2204

if.then:                                          ; preds = %land.lhs.true
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.47, i64 0, i64 0)) #6, !dbg !2205
  br label %if.end, !dbg !2205

if.end:                                           ; preds = %land.lhs.true, %sw.bb, %if.then
  %overflow = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 3, !dbg !2206
  store i8 0, i8* %overflow, align 1, !dbg !2207
  br label %sw.epilog, !dbg !2208

sw.bb2:                                           ; preds = %entry
  %2 = bitcast %struct.cpp_num* %tmp to i8*, !dbg !2209
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !2209
  %precision = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 44, !dbg !2210
  %3 = load i64, i64* %precision, align 8, !dbg !2210
  call fastcc void @num_negate(%struct.cpp_num* nonnull sret %tmp, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %num, i64 %3) #7, !dbg !2209
  %4 = bitcast %struct.cpp_num* %num to i8*, !dbg !2209
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !2209
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !2209
  br label %sw.epilog, !dbg !2211

sw.bb4:                                           ; preds = %entry
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2212
  %5 = load i64, i64* %high, align 8, !dbg !2212
  %neg = xor i64 %5, -1, !dbg !2213
  store i64 %neg, i64* %high, align 8, !dbg !2214
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !2215
  %6 = load i64, i64* %low, align 8, !dbg !2215
  %neg6 = xor i64 %6, -1, !dbg !2216
  store i64 %neg6, i64* %low, align 8, !dbg !2217
  %7 = bitcast %struct.cpp_num* %tmp8 to i8*, !dbg !2218
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2218
  %precision10 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 44, !dbg !2219
  %8 = load i64, i64* %precision10, align 8, !dbg !2219
  call fastcc void @num_trim(%struct.cpp_num* nonnull sret %tmp8, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %num, i64 %8) #7, !dbg !2218
  %9 = bitcast %struct.cpp_num* %num to i8*, !dbg !2218
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %7, i64 24, i1 false), !dbg !2218
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2218
  %overflow11 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 3, !dbg !2220
  store i8 0, i8* %overflow11, align 1, !dbg !2221
  br label %sw.epilog, !dbg !2222

sw.default:                                       ; preds = %entry
  %low12 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !2223
  %10 = load i64, i64* %low12, align 8, !dbg !2223
  %high13 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2223
  %11 = load i64, i64* %high13, align 8, !dbg !2223
  %or = or i64 %10, %11, !dbg !2223
  %cmp = icmp eq i64 %or, 0, !dbg !2223
  %conv15 = zext i1 %cmp to i64, !dbg !2223
  store i64 %conv15, i64* %low12, align 8, !dbg !2224
  store i64 0, i64* %high13, align 8, !dbg !2225
  %overflow18 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 3, !dbg !2226
  store i8 0, i8* %overflow18, align 1, !dbg !2227
  %unsignedp = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 2, !dbg !2228
  store i8 0, i8* %unsignedp, align 8, !dbg !2229
  br label %sw.epilog, !dbg !2230

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb2, %if.end
  %12 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2231
  %13 = bitcast %struct.cpp_num* %num to i8*, !dbg !2231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* nonnull align 8 %13, i64 24, i1 false), !dbg !2231
  ret void, !dbg !2232
}

; Function Attrs: nounwind uwtable
define internal fastcc void @num_binary_op(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_reader* %pfile, %struct.cpp_num* byval(%struct.cpp_num) align 8 %lhs, %struct.cpp_num* byval(%struct.cpp_num) align 8 %rhs, i32 %op) unnamed_addr #3 !dbg !2233 {
entry:
  %result = alloca %struct.cpp_num, align 8
  %tmp = alloca %struct.cpp_num, align 8
  %tmp11 = alloca %struct.cpp_num, align 8
  %tmp13 = alloca %struct.cpp_num, align 8
  %tmp16 = alloca %struct.cpp_num, align 8
  %tmp38 = alloca %struct.cpp_num, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2237, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %lhs, metadata !2238, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %rhs, metadata !2239, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i32 %op, metadata !2240, metadata !DIExpression()), !dbg !2248
  %0 = bitcast %struct.cpp_num* %result to i8*, !dbg !2251
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2251
  %precision1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 44, !dbg !2252
  %1 = load i64, i64* %precision1, align 8, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %1, metadata !2242, metadata !DIExpression()), !dbg !2248
  switch i32 %op, label %sw.default [
    i32 13, label %sw.bb
    i32 12, label %sw.bb
    i32 5, label %sw.bb15
    i32 4, label %sw.bb17
  ], !dbg !2253

sw.bb:                                            ; preds = %entry, %entry
  %unsignedp = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 2, !dbg !2254
  %2 = load i8, i8* %unsignedp, align 8, !dbg !2254
  %tobool = icmp eq i8 %2, 0, !dbg !2256
  br i1 %tobool, label %land.lhs.true, label %if.end4, !dbg !2257

land.lhs.true:                                    ; preds = %sw.bb
  %call = tail call fastcc zeroext i8 @num_positive(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %rhs, i64 %1) #7, !dbg !2258
  %tobool2 = icmp eq i8 %call, 0, !dbg !2258
  br i1 %tobool2, label %if.then, label %if.end4, !dbg !2259

if.then:                                          ; preds = %land.lhs.true
  %cmp = icmp eq i32 %op, 13, !dbg !2260
  %. = select i1 %cmp, i32 12, i32 13
  call void @llvm.dbg.value(metadata i32 %., metadata !2240, metadata !DIExpression()), !dbg !2248
  %3 = bitcast %struct.cpp_num* %tmp to i8*, !dbg !2263
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2263
  call fastcc void @num_negate(%struct.cpp_num* nonnull sret %tmp, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %rhs, i64 %1) #7, !dbg !2263
  %4 = bitcast %struct.cpp_num* %rhs to i8*, !dbg !2263
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %3, i64 24, i1 false), !dbg !2263
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2263
  br label %if.end4, !dbg !2264

if.end4:                                          ; preds = %land.lhs.true, %sw.bb, %if.then
  %op.addr.1 = phi i32 [ %op, %sw.bb ], [ %op, %land.lhs.true ], [ %., %if.then ]
  call void @llvm.dbg.value(metadata i32 %op.addr.1, metadata !2240, metadata !DIExpression()), !dbg !2248
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 0, !dbg !2265
  %5 = load i64, i64* %high, align 8, !dbg !2265
  %tobool5 = icmp eq i64 %5, 0, !dbg !2267
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 1, !dbg !2268
  %6 = load i64, i64* %low, align 8, !dbg !2268
  %n.0 = select i1 %tobool5, i64 %6, i64 -1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %n.0, metadata !2243, metadata !DIExpression()), !dbg !2248
  %cmp9 = icmp eq i32 %op.addr.1, 13, !dbg !2269
  br i1 %cmp9, label %if.then10, label %if.else12, !dbg !2271

if.then10:                                        ; preds = %if.end4
  %7 = bitcast %struct.cpp_num* %tmp11 to i8*, !dbg !2272
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2272
  call fastcc void @num_lshift(%struct.cpp_num* nonnull sret %tmp11, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %lhs, i64 %1, i64 %n.0) #7, !dbg !2272
  %8 = bitcast %struct.cpp_num* %lhs to i8*, !dbg !2272
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %7, i64 24, i1 false), !dbg !2272
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2272
  br label %sw.epilog, !dbg !2273

if.else12:                                        ; preds = %if.end4
  %9 = bitcast %struct.cpp_num* %tmp13 to i8*, !dbg !2274
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #8, !dbg !2274
  call fastcc void @num_rshift(%struct.cpp_num* nonnull sret %tmp13, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %lhs, i64 %1, i64 %n.0) #7, !dbg !2274
  %10 = bitcast %struct.cpp_num* %lhs to i8*, !dbg !2274
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %10, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !2274
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #8, !dbg !2274
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %11 = bitcast %struct.cpp_num* %tmp16 to i8*, !dbg !2275
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #8, !dbg !2275
  call fastcc void @num_negate(%struct.cpp_num* nonnull sret %tmp16, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %rhs, i64 %1) #7, !dbg !2275
  %12 = bitcast %struct.cpp_num* %rhs to i8*, !dbg !2275
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %12, i8* nonnull align 8 %11, i64 24, i1 false), !dbg !2275
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #8, !dbg !2275
  br label %sw.bb17, !dbg !2276

sw.bb17:                                          ; preds = %entry, %sw.bb15
  %low18 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 1, !dbg !2277
  %13 = load i64, i64* %low18, align 8, !dbg !2277
  %low19 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 1, !dbg !2278
  %14 = load i64, i64* %low19, align 8, !dbg !2278
  %add = add i64 %13, %14, !dbg !2279
  %low20 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 1, !dbg !2280
  store i64 %add, i64* %low20, align 8, !dbg !2281
  %high21 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 0, !dbg !2282
  %15 = load i64, i64* %high21, align 8, !dbg !2282
  %high22 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 0, !dbg !2283
  %16 = load i64, i64* %high22, align 8, !dbg !2283
  %add23 = add i64 %15, %16, !dbg !2284
  %high24 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 0, !dbg !2285
  %cmp27 = icmp ult i64 %add, %13, !dbg !2286
  br i1 %cmp27, label %if.then28, label %if.end30, !dbg !2288

if.then28:                                        ; preds = %sw.bb17
  %inc = add i64 %add23, 1, !dbg !2289
  br label %if.end30, !dbg !2290

if.end30:                                         ; preds = %if.then28, %sw.bb17
  %storemerge = phi i64 [ %inc, %if.then28 ], [ %add23, %sw.bb17 ], !dbg !2291
  store i64 %storemerge, i64* %high24, align 8, !dbg !2291
  %unsignedp31 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 2, !dbg !2292
  %17 = load i8, i8* %unsignedp31, align 8, !dbg !2292
  %unsignedp33 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 2, !dbg !2293
  %18 = load i8, i8* %unsignedp33, align 8, !dbg !2293
  %19 = or i8 %18, %17, !dbg !2293
  %20 = icmp ne i8 %19, 0, !dbg !2293
  %conv36 = zext i1 %20 to i8, !dbg !2294
  %unsignedp37 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 2, !dbg !2295
  store i8 %conv36, i8* %unsignedp37, align 8, !dbg !2296
  %overflow = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 3, !dbg !2297
  store i8 0, i8* %overflow, align 1, !dbg !2298
  %21 = bitcast %struct.cpp_num* %tmp38 to i8*, !dbg !2299
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %21) #8, !dbg !2299
  call void @llvm.dbg.value(metadata %struct.cpp_num* %result, metadata !2241, metadata !DIExpression(DW_OP_deref)), !dbg !2248
  call fastcc void @num_trim(%struct.cpp_num* nonnull sret %tmp38, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %result, i64 %1) #7, !dbg !2299
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %21, i64 24, i1 false), !dbg !2299
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %21) #8, !dbg !2299
  %22 = load i8, i8* %unsignedp37, align 8, !dbg !2300
  %tobool40 = icmp eq i8 %22, 0, !dbg !2301
  br i1 %tobool40, label %if.then41, label %if.end55, !dbg !2302

if.then41:                                        ; preds = %if.end30
  %call42 = call fastcc zeroext i8 @num_positive(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %lhs, i64 %1) #7, !dbg !2303
  call void @llvm.dbg.value(metadata i8 %call42, metadata !2244, metadata !DIExpression()), !dbg !2304
  %call44 = call fastcc zeroext i8 @num_positive(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %rhs, i64 %1) #7, !dbg !2305
  %cmp46 = icmp eq i8 %call42, %call44, !dbg !2306
  br i1 %cmp46, label %land.rhs, label %land.end, !dbg !2307

land.rhs:                                         ; preds = %if.then41
  call void @llvm.dbg.value(metadata %struct.cpp_num* %result, metadata !2241, metadata !DIExpression(DW_OP_deref)), !dbg !2248
  %call49 = call fastcc zeroext i8 @num_positive(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %result, i64 %1) #7, !dbg !2308
  %cmp51 = icmp ne i8 %call42, %call49, !dbg !2309
  %phitmp = zext i1 %cmp51 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then41
  %23 = phi i8 [ 0, %if.then41 ], [ %phitmp, %land.rhs ]
  store i8 %23, i8* %overflow, align 1, !dbg !2310
  br label %if.end55, !dbg !2311

if.end55:                                         ; preds = %if.end30, %land.end
  %24 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* nonnull align 8 %0, i64 24, i1 false), !dbg !2312
  br label %cleanup, !dbg !2313

sw.default:                                       ; preds = %entry
  %pedantic = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !2314
  %25 = load i8, i8* %pedantic, align 1, !dbg !2314
  %tobool58 = icmp eq i8 %25, 0, !dbg !2314
  br i1 %tobool58, label %if.end65, label %land.lhs.true59, !dbg !2316

land.lhs.true59:                                  ; preds = %sw.default
  %c99 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 29, !dbg !2317
  %26 = load i8, i8* %c99, align 1, !dbg !2317
  %tobool61 = icmp eq i8 %26, 0, !dbg !2317
  br i1 %tobool61, label %if.then63, label %lor.lhs.false, !dbg !2318

lor.lhs.false:                                    ; preds = %land.lhs.true59
  %skip_eval = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 11, !dbg !2319
  %27 = load i32, i32* %skip_eval, align 4, !dbg !2319
  %tobool62 = icmp eq i32 %27, 0, !dbg !2320
  br i1 %tobool62, label %if.then63, label %if.end65, !dbg !2321

if.then63:                                        ; preds = %lor.lhs.false, %land.lhs.true59
  %call64 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i64 0, i64 0)) #6, !dbg !2322
  br label %if.end65, !dbg !2322

if.end65:                                         ; preds = %lor.lhs.false, %sw.default, %if.then63
  %28 = bitcast %struct.cpp_num* %lhs to i8*, !dbg !2323
  %29 = bitcast %struct.cpp_num* %rhs to i8*, !dbg !2323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %28, i8* nonnull align 8 %29, i64 24, i1 false), !dbg !2323
  br label %sw.epilog, !dbg !2324

sw.epilog:                                        ; preds = %if.then10, %if.else12, %if.end65
  %.pre-phi = phi i8* [ %8, %if.then10 ], [ %10, %if.else12 ], [ %28, %if.end65 ], !dbg !2325
  %30 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* nonnull align 8 %.pre-phi, i64 24, i1 false), !dbg !2325
  br label %cleanup, !dbg !2326

cleanup:                                          ; preds = %sw.epilog, %if.end55
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2327
  ret void, !dbg !2327
}

; Function Attrs: nounwind uwtable
define internal fastcc void @num_inequality_op(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_reader* %pfile, %struct.cpp_num* byval(%struct.cpp_num) align 8 %lhs, %struct.cpp_num* byval(%struct.cpp_num) align 8 %rhs, i32 %op) unnamed_addr #3 !dbg !2328 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2330, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %lhs, metadata !2331, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %rhs, metadata !2332, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i32 %op, metadata !2333, metadata !DIExpression()), !dbg !2335
  %precision = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 44, !dbg !2338
  %0 = load i64, i64* %precision, align 8, !dbg !2338
  %call = tail call fastcc zeroext i8 @num_greater_eq(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %lhs, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %rhs, i64 %0) #7, !dbg !2339
  call void @llvm.dbg.value(metadata i8 %call, metadata !2334, metadata !DIExpression()), !dbg !2335
  switch i32 %op, label %if.else25 [
    i32 25, label %if.then
    i32 3, label %if.then3
    i32 2, label %if.then9
  ], !dbg !2340

if.then:                                          ; preds = %entry
  %conv = zext i8 %call to i64, !dbg !2341
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 1, !dbg !2343
  store i64 %conv, i64* %low, align 8, !dbg !2344
  br label %if.end41, !dbg !2345

if.then3:                                         ; preds = %entry
  %tobool = icmp eq i8 %call, 0, !dbg !2346
  %conv4 = zext i1 %tobool to i64, !dbg !2346
  %low5 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 1, !dbg !2348
  store i64 %conv4, i64* %low5, align 8, !dbg !2349
  br label %if.end41, !dbg !2350

if.then9:                                         ; preds = %entry
  %tobool11 = icmp eq i8 %call, 0, !dbg !2351
  br i1 %tobool11, label %land.end22, label %land.rhs, !dbg !2353

land.rhs:                                         ; preds = %if.then9
  %low12 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 1, !dbg !2354
  %1 = load i64, i64* %low12, align 8, !dbg !2354
  %low13 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 1, !dbg !2354
  %2 = load i64, i64* %low13, align 8, !dbg !2354
  %cmp14 = icmp eq i64 %1, %2, !dbg !2354
  br i1 %cmp14, label %land.rhs16, label %land.end, !dbg !2354

land.rhs16:                                       ; preds = %land.rhs
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 0, !dbg !2354
  %3 = load i64, i64* %high, align 8, !dbg !2354
  %high17 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 0, !dbg !2354
  %4 = load i64, i64* %high17, align 8, !dbg !2354
  %cmp18 = icmp ne i64 %3, %4, !dbg !2354
  %phitmp2 = zext i1 %cmp18 to i64
  br label %land.end

land.end:                                         ; preds = %land.rhs16, %land.rhs
  %5 = phi i64 [ 1, %land.rhs ], [ %phitmp2, %land.rhs16 ]
  br label %land.end22

land.end22:                                       ; preds = %if.then9, %land.end
  %6 = phi i64 [ 0, %if.then9 ], [ %5, %land.end ]
  %low24 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 1, !dbg !2355
  store i64 %6, i64* %low24, align 8, !dbg !2356
  br label %if.end41, !dbg !2357

if.else25:                                        ; preds = %entry
  %tobool26 = icmp eq i8 %call, 0, !dbg !2358
  br i1 %tobool26, label %lor.end, label %lor.rhs, !dbg !2359

lor.rhs:                                          ; preds = %if.else25
  %low27 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 1, !dbg !2360
  %7 = load i64, i64* %low27, align 8, !dbg !2360
  %low28 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 1, !dbg !2360
  %8 = load i64, i64* %low28, align 8, !dbg !2360
  %cmp29 = icmp eq i64 %7, %8, !dbg !2360
  br i1 %cmp29, label %land.rhs31, label %lor.end, !dbg !2360

land.rhs31:                                       ; preds = %lor.rhs
  %high32 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 0, !dbg !2360
  %9 = load i64, i64* %high32, align 8, !dbg !2360
  %high33 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 0, !dbg !2360
  %10 = load i64, i64* %high33, align 8, !dbg !2360
  %cmp34 = icmp eq i64 %9, %10, !dbg !2360
  %phitmp3 = zext i1 %cmp34 to i64
  br label %lor.end

lor.end:                                          ; preds = %if.else25, %lor.rhs, %land.rhs31
  %11 = phi i64 [ 1, %if.else25 ], [ 0, %lor.rhs ], [ %phitmp3, %land.rhs31 ]
  %low39 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 1, !dbg !2361
  store i64 %11, i64* %low39, align 8, !dbg !2362
  br label %if.end41

if.end41:                                         ; preds = %if.then3, %lor.end, %land.end22, %if.then
  %high42 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 0, !dbg !2363
  store i64 0, i64* %high42, align 8, !dbg !2364
  %overflow = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 3, !dbg !2365
  store i8 0, i8* %overflow, align 1, !dbg !2366
  %unsignedp = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 2, !dbg !2367
  store i8 0, i8* %unsignedp, align 8, !dbg !2368
  %12 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2369
  %13 = bitcast %struct.cpp_num* %lhs to i8*, !dbg !2369
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* nonnull align 8 %13, i64 24, i1 false), !dbg !2369
  ret void, !dbg !2370
}

; Function Attrs: nounwind uwtable
define internal fastcc void @num_equality_op(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_reader* %pfile, %struct.cpp_num* byval(%struct.cpp_num) align 8 %lhs, %struct.cpp_num* byval(%struct.cpp_num) align 8 %rhs, i32 %op) unnamed_addr #3 !dbg !2371 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2373, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %lhs, metadata !2374, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %rhs, metadata !2375, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i32 %op, metadata !2376, metadata !DIExpression()), !dbg !2378
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 1, !dbg !2381
  %0 = load i64, i64* %low, align 8, !dbg !2381
  %low1 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 1, !dbg !2381
  %1 = load i64, i64* %low1, align 8, !dbg !2381
  %cmp = icmp eq i64 %0, %1, !dbg !2381
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2381

land.rhs:                                         ; preds = %entry
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 0, !dbg !2381
  %2 = load i64, i64* %high, align 8, !dbg !2381
  %high2 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 0, !dbg !2381
  %3 = load i64, i64* %high2, align 8, !dbg !2381
  %cmp3 = icmp eq i64 %2, %3, !dbg !2381
  %phitmp = zext i1 %cmp3 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  call void @llvm.dbg.value(metadata i8 %4, metadata !2377, metadata !DIExpression()), !dbg !2378
  %cmp4 = icmp eq i32 %op, 24, !dbg !2382
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2384

if.then:                                          ; preds = %land.end
  %5 = xor i8 %4, 1, !dbg !2385
  call void @llvm.dbg.value(metadata i8 %5, metadata !2377, metadata !DIExpression()), !dbg !2378
  br label %if.end, !dbg !2386

if.end:                                           ; preds = %if.then, %land.end
  %eq.0 = phi i8 [ %5, %if.then ], [ %4, %land.end ], !dbg !2378
  call void @llvm.dbg.value(metadata i8 %eq.0, metadata !2377, metadata !DIExpression()), !dbg !2378
  %conv7 = zext i8 %eq.0 to i64, !dbg !2387
  store i64 %conv7, i64* %low, align 8, !dbg !2388
  %high9 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 0, !dbg !2389
  store i64 0, i64* %high9, align 8, !dbg !2390
  %overflow = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 3, !dbg !2391
  store i8 0, i8* %overflow, align 1, !dbg !2392
  %unsignedp = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 2, !dbg !2393
  store i8 0, i8* %unsignedp, align 8, !dbg !2394
  %6 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2395
  %7 = bitcast %struct.cpp_num* %lhs to i8*, !dbg !2395
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* nonnull align 8 %7, i64 24, i1 false), !dbg !2395
  ret void, !dbg !2396
}

; Function Attrs: nounwind uwtable
define internal fastcc void @num_bitwise_op(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_reader* %pfile, %struct.cpp_num* byval(%struct.cpp_num) align 8 %lhs, %struct.cpp_num* byval(%struct.cpp_num) align 8 %rhs, i32 %op) unnamed_addr #3 !dbg !2397 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2399, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %lhs, metadata !2400, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %rhs, metadata !2401, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 %op, metadata !2402, metadata !DIExpression()), !dbg !2403
  %overflow = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 3, !dbg !2406
  store i8 0, i8* %overflow, align 1, !dbg !2407
  %unsignedp = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 2, !dbg !2408
  %0 = load i8, i8* %unsignedp, align 8, !dbg !2408
  %unsignedp1 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 2, !dbg !2409
  %1 = load i8, i8* %unsignedp1, align 8, !dbg !2409
  %2 = or i8 %1, %0, !dbg !2409
  %3 = icmp ne i8 %2, 0, !dbg !2409
  %conv4 = zext i1 %3 to i8, !dbg !2410
  store i8 %conv4, i8* %unsignedp, align 8, !dbg !2411
  switch i32 %op, label %if.else18 [
    i32 9, label %if.then
    i32 10, label %if.then12
  ], !dbg !2412

if.then:                                          ; preds = %entry
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 1, !dbg !2413
  %4 = load i64, i64* %low, align 8, !dbg !2413
  %low7 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 1, !dbg !2416
  %5 = load i64, i64* %low7, align 8, !dbg !2417
  %and = and i64 %5, %4, !dbg !2417
  store i64 %and, i64* %low7, align 8, !dbg !2417
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 0, !dbg !2418
  %6 = load i64, i64* %high, align 8, !dbg !2418
  %high8 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 0, !dbg !2419
  %7 = load i64, i64* %high8, align 8, !dbg !2420
  %and9 = and i64 %7, %6, !dbg !2420
  store i64 %and9, i64* %high8, align 8, !dbg !2420
  br label %if.end24, !dbg !2421

if.then12:                                        ; preds = %entry
  %low13 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 1, !dbg !2422
  %8 = load i64, i64* %low13, align 8, !dbg !2422
  %low14 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 1, !dbg !2425
  %9 = load i64, i64* %low14, align 8, !dbg !2426
  %or = or i64 %9, %8, !dbg !2426
  store i64 %or, i64* %low14, align 8, !dbg !2426
  %high15 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 0, !dbg !2427
  %10 = load i64, i64* %high15, align 8, !dbg !2427
  %high16 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 0, !dbg !2428
  %11 = load i64, i64* %high16, align 8, !dbg !2429
  %or17 = or i64 %11, %10, !dbg !2429
  store i64 %or17, i64* %high16, align 8, !dbg !2429
  br label %if.end24, !dbg !2430

if.else18:                                        ; preds = %entry
  %low19 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 1, !dbg !2431
  %12 = load i64, i64* %low19, align 8, !dbg !2431
  %low20 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 1, !dbg !2433
  %13 = load i64, i64* %low20, align 8, !dbg !2434
  %xor = xor i64 %13, %12, !dbg !2434
  store i64 %xor, i64* %low20, align 8, !dbg !2434
  %high21 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 0, !dbg !2435
  %14 = load i64, i64* %high21, align 8, !dbg !2435
  %high22 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 0, !dbg !2436
  %15 = load i64, i64* %high22, align 8, !dbg !2437
  %xor23 = xor i64 %15, %14, !dbg !2437
  store i64 %xor23, i64* %high22, align 8, !dbg !2437
  br label %if.end24

if.end24:                                         ; preds = %if.then12, %if.else18, %if.then
  %16 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2438
  %17 = bitcast %struct.cpp_num* %lhs to i8*, !dbg !2438
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* nonnull align 8 %17, i64 24, i1 false), !dbg !2438
  ret void, !dbg !2439
}

; Function Attrs: nounwind uwtable
define internal fastcc void @num_mul(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_reader* %pfile, %struct.cpp_num* byval(%struct.cpp_num) align 8 %lhs, %struct.cpp_num* byval(%struct.cpp_num) align 8 %rhs) unnamed_addr #3 !dbg !2440 {
entry:
  %temp = alloca %struct.cpp_num, align 8
  %tmp = alloca %struct.cpp_num, align 8
  %tmp19 = alloca %struct.cpp_num, align 8
  %tmp26 = alloca %struct.cpp_num, align 8
  %tmp28 = alloca %struct.cpp_num, align 8
  %tmp37 = alloca %struct.cpp_num, align 8
  %tmp51 = alloca %struct.cpp_num, align 8
  %tmp63 = alloca %struct.cpp_num, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2444, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %lhs, metadata !2445, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %rhs, metadata !2446, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %agg.result, metadata !2447, metadata !DIExpression()), !dbg !2456
  %0 = bitcast %struct.cpp_num* %temp to i8*, !dbg !2457
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2457
  %unsignedp1 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 2, !dbg !2458
  %1 = load i8, i8* %unsignedp1, align 8, !dbg !2458
  %unsignedp2 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 2, !dbg !2459
  %2 = load i8, i8* %unsignedp2, align 8, !dbg !2459
  %3 = or i8 %2, %1, !dbg !2459
  %4 = icmp ne i8 %3, 0, !dbg !2459
  %conv5 = zext i1 %4 to i8, !dbg !2460
  call void @llvm.dbg.value(metadata i8 %conv5, metadata !2449, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 0, metadata !2451, metadata !DIExpression()), !dbg !2453
  %precision6 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 44, !dbg !2461
  %5 = load i64, i64* %precision6, align 8, !dbg !2461
  call void @llvm.dbg.value(metadata i64 %5, metadata !2452, metadata !DIExpression()), !dbg !2453
  br i1 %4, label %if.end21, label %if.then, !dbg !2462

if.then:                                          ; preds = %entry
  %call = tail call fastcc zeroext i8 @num_positive(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %lhs, i64 %5) #7, !dbg !2463
  %tobool8 = icmp eq i8 %call, 0, !dbg !2463
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !2467

if.then9:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i8 1, metadata !2451, metadata !DIExpression()), !dbg !2453
  %6 = bitcast %struct.cpp_num* %tmp to i8*, !dbg !2468
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !2468
  call fastcc void @num_negate(%struct.cpp_num* nonnull sret %tmp, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %lhs, i64 %5) #7, !dbg !2468
  %7 = bitcast %struct.cpp_num* %lhs to i8*, !dbg !2468
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !2468
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !2468
  br label %if.end, !dbg !2469

if.end:                                           ; preds = %if.then, %if.then9
  %negate.0 = phi i8 [ 0, %if.then ], [ 1, %if.then9 ], !dbg !2453
  call void @llvm.dbg.value(metadata i8 %negate.0, metadata !2451, metadata !DIExpression()), !dbg !2453
  %call12 = call fastcc zeroext i8 @num_positive(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %rhs, i64 %5) #7, !dbg !2470
  %tobool13 = icmp eq i8 %call12, 0, !dbg !2470
  br i1 %tobool13, label %if.then14, label %if.end21, !dbg !2472

if.then14:                                        ; preds = %if.end
  %8 = xor i8 %negate.0, 1, !dbg !2473
  call void @llvm.dbg.value(metadata i8 %8, metadata !2451, metadata !DIExpression()), !dbg !2453
  %9 = bitcast %struct.cpp_num* %tmp19 to i8*, !dbg !2474
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #8, !dbg !2474
  call fastcc void @num_negate(%struct.cpp_num* nonnull sret %tmp19, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %rhs, i64 %5) #7, !dbg !2474
  %10 = bitcast %struct.cpp_num* %rhs to i8*, !dbg !2474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %10, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !2474
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #8, !dbg !2474
  br label %if.end21, !dbg !2475

if.end21:                                         ; preds = %if.end, %if.then14, %entry
  %negate.2 = phi i8 [ 0, %entry ], [ %negate.0, %if.end ], [ %8, %if.then14 ], !dbg !2476
  call void @llvm.dbg.value(metadata i8 %negate.2, metadata !2451, metadata !DIExpression()), !dbg !2453
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 0, !dbg !2477
  %11 = load i64, i64* %high, align 8, !dbg !2477
  %high23 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 0, !dbg !2478
  %12 = load i64, i64* %high23, align 8, !dbg !2478
  call void @llvm.dbg.value(metadata i1 undef, metadata !2450, metadata !DIExpression()), !dbg !2453
  %13 = bitcast %struct.cpp_num* %tmp26 to i8*, !dbg !2479
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #8, !dbg !2479
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 1, !dbg !2480
  %14 = load i64, i64* %low, align 8, !dbg !2480
  %low27 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 1, !dbg !2481
  %15 = load i64, i64* %low27, align 8, !dbg !2481
  call fastcc void @num_part_mul(%struct.cpp_num* nonnull sret %tmp26, i64 %14, i64 %15) #7, !dbg !2479
  %16 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2479
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* nonnull align 8 %13, i64 24, i1 false), !dbg !2479
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #8, !dbg !2479
  %17 = bitcast %struct.cpp_num* %tmp28 to i8*, !dbg !2482
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %17) #8, !dbg !2482
  %18 = load i64, i64* %high, align 8, !dbg !2483
  %19 = load i64, i64* %low27, align 8, !dbg !2484
  call fastcc void @num_part_mul(%struct.cpp_num* nonnull sret %tmp28, i64 %18, i64 %19) #7, !dbg !2482
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %17, i64 24, i1 false), !dbg !2482
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %17) #8, !dbg !2482
  %low31 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %temp, i64 0, i32 1, !dbg !2485
  %20 = load i64, i64* %low31, align 8, !dbg !2485
  %high32 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 0, !dbg !2486
  %21 = load i64, i64* %high32, align 8, !dbg !2487
  %add = add i64 %21, %20, !dbg !2487
  %high33 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %temp, i64 0, i32 0, !dbg !2488
  %22 = load i64, i64* %high33, align 8, !dbg !2488
  call void @llvm.dbg.value(metadata i1 undef, metadata !2450, metadata !DIExpression()), !dbg !2453
  %23 = bitcast %struct.cpp_num* %tmp37 to i8*, !dbg !2490
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %23) #8, !dbg !2490
  %24 = load i64, i64* %low, align 8, !dbg !2491
  %25 = load i64, i64* %high23, align 8, !dbg !2492
  call fastcc void @num_part_mul(%struct.cpp_num* nonnull sret %tmp37, i64 %24, i64 %25) #7, !dbg !2490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %23, i64 24, i1 false), !dbg !2490
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %23) #8, !dbg !2490
  %26 = load i64, i64* %low31, align 8, !dbg !2493
  %add42 = add i64 %add, %26, !dbg !2494
  store i64 %add42, i64* %high32, align 8, !dbg !2494
  %27 = load i64, i64* %high33, align 8, !dbg !2495
  call void @llvm.dbg.value(metadata i8 undef, metadata !2450, metadata !DIExpression()), !dbg !2453
  %low47 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 1, !dbg !2497
  %28 = load i64, i64* %low47, align 8, !dbg !2497
  store i64 %28, i64* %low31, align 8, !dbg !2498
  store i64 %add42, i64* %high33, align 8, !dbg !2499
  %29 = bitcast %struct.cpp_num* %tmp51 to i8*, !dbg !2500
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %29) #8, !dbg !2500
  call fastcc void @num_trim(%struct.cpp_num* nonnull sret %tmp51, %struct.cpp_num* byval(%struct.cpp_num) align 8 %agg.result, i64 %5) #7, !dbg !2500
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* nonnull align 8 %29, i64 24, i1 false), !dbg !2500
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %29) #8, !dbg !2500
  %30 = load i64, i64* %low47, align 8, !dbg !2501
  %cmp = icmp eq i64 %30, %28, !dbg !2501
  br i1 %cmp, label %land.lhs.true, label %if.then59, !dbg !2501

land.lhs.true:                                    ; preds = %if.end21
  %tobool24 = icmp ne i64 %12, 0, !dbg !2478
  %tobool22 = icmp ne i64 %11, 0, !dbg !2503
  %31 = and i1 %tobool24, %tobool22, !dbg !2478
  call void @llvm.dbg.value(metadata i1 %31, metadata !2450, metadata !DIExpression()), !dbg !2453
  %32 = or i64 %22, %27, !dbg !2504
  %33 = icmp ne i64 %32, 0, !dbg !2504
  %34 = or i1 %33, %31, !dbg !2504
  %overflow.1 = zext i1 %34 to i32, !dbg !2504
  call void @llvm.dbg.value(metadata i1 %34, metadata !2450, metadata !DIExpression()), !dbg !2453
  %35 = load i64, i64* %high32, align 8, !dbg !2501
  %cmp57 = icmp eq i64 %35, %add42, !dbg !2501
  br i1 %cmp57, label %if.end60, label %if.then59, !dbg !2505

if.then59:                                        ; preds = %land.lhs.true, %if.end21
  call void @llvm.dbg.value(metadata i8 1, metadata !2450, metadata !DIExpression()), !dbg !2453
  br label %if.end60, !dbg !2506

if.end60:                                         ; preds = %if.then59, %land.lhs.true
  %overflow.2 = phi i32 [ %overflow.1, %land.lhs.true ], [ 1, %if.then59 ], !dbg !2453
  %tobool61 = icmp eq i8 %negate.2, 0, !dbg !2507
  br i1 %tobool61, label %if.end64, label %if.then62, !dbg !2509

if.then62:                                        ; preds = %if.end60
  %36 = bitcast %struct.cpp_num* %tmp63 to i8*, !dbg !2510
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %36) #8, !dbg !2510
  call fastcc void @num_negate(%struct.cpp_num* nonnull sret %tmp63, %struct.cpp_num* byval(%struct.cpp_num) align 8 %agg.result, i64 %5) #7, !dbg !2510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* nonnull align 8 %36, i64 24, i1 false), !dbg !2510
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %36) #8, !dbg !2510
  br label %if.end64, !dbg !2511

if.end64:                                         ; preds = %if.end60, %if.then62
  br i1 %4, label %if.then66, label %if.else, !dbg !2512

if.then66:                                        ; preds = %if.end64
  %overflow67 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 3, !dbg !2513
  store i8 0, i8* %overflow67, align 1, !dbg !2515
  br label %if.end90, !dbg !2516

if.else:                                          ; preds = %if.end64
  %tobool69 = icmp eq i32 %overflow.2, 0, !dbg !2517
  br i1 %tobool69, label %lor.rhs70, label %lor.end86, !dbg !2518

lor.rhs70:                                        ; preds = %if.else
  %call71 = call fastcc zeroext i8 @num_positive(%struct.cpp_num* byval(%struct.cpp_num) align 8 %agg.result, i64 %5) #7, !dbg !2519
  %conv72 = zext i8 %call71 to i32, !dbg !2519
  %lnot.ext75 = zext i1 %tobool61 to i32, !dbg !2520
  %tobool76 = icmp eq i32 %conv72, %lnot.ext75, !dbg !2521
  br i1 %tobool76, label %lor.end86, label %land.rhs77, !dbg !2522

land.rhs77:                                       ; preds = %lor.rhs70
  %37 = load i64, i64* %low47, align 8, !dbg !2523
  %38 = load i64, i64* %high32, align 8, !dbg !2523
  %or = or i64 %37, %38, !dbg !2523
  %cmp80 = icmp ne i64 %or, 0, !dbg !2523
  %phitmp = zext i1 %cmp80 to i8
  br label %lor.end86

lor.end86:                                        ; preds = %lor.rhs70, %if.else, %land.rhs77
  %39 = phi i8 [ 1, %if.else ], [ 0, %lor.rhs70 ], [ %phitmp, %land.rhs77 ]
  %overflow89 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 3, !dbg !2524
  store i8 %39, i8* %overflow89, align 1, !dbg !2525
  br label %if.end90

if.end90:                                         ; preds = %lor.end86, %if.then66
  %unsignedp91 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 2, !dbg !2526
  store i8 %conv5, i8* %unsignedp91, align 8, !dbg !2527
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2528
  ret void, !dbg !2528
}

; Function Attrs: nounwind uwtable
define internal fastcc void @num_div_op(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_reader* %pfile, %struct.cpp_num* byval(%struct.cpp_num) align 8 %lhs, %struct.cpp_num* byval(%struct.cpp_num) align 8 %rhs, i32 %op, i32 %location) unnamed_addr #3 !dbg !2529 {
entry:
  %result = alloca %struct.cpp_num, align 8
  %sub = alloca %struct.cpp_num, align 8
  %tmp = alloca %struct.cpp_num, align 8
  %tmp19 = alloca %struct.cpp_num, align 8
  %tmp61 = alloca %struct.cpp_num, align 8
  %tmp68 = alloca %struct.cpp_num, align 8
  %tmp103 = alloca %struct.cpp_num, align 8
  %tmp126 = alloca %struct.cpp_num, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2533, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %lhs, metadata !2534, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %rhs, metadata !2535, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 %op, metadata !2536, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 %location, metadata !2537, metadata !DIExpression()), !dbg !2546
  %0 = bitcast %struct.cpp_num* %result to i8*, !dbg !2549
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2549
  %1 = bitcast %struct.cpp_num* %sub to i8*, !dbg !2549
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2549
  %unsignedp1 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 2, !dbg !2550
  %2 = load i8, i8* %unsignedp1, align 8, !dbg !2550
  %unsignedp2 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 2, !dbg !2551
  %3 = load i8, i8* %unsignedp2, align 8, !dbg !2551
  %4 = or i8 %3, %2, !dbg !2551
  %5 = icmp ne i8 %4, 0, !dbg !2551
  %conv5 = zext i1 %5 to i8, !dbg !2552
  call void @llvm.dbg.value(metadata i8 %conv5, metadata !2541, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 0, metadata !2542, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 0, metadata !2543, metadata !DIExpression()), !dbg !2546
  %precision6 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 44, !dbg !2553
  %6 = load i64, i64* %precision6, align 8, !dbg !2553
  call void @llvm.dbg.value(metadata i64 %6, metadata !2545, metadata !DIExpression()), !dbg !2546
  br i1 %5, label %if.end21, label %if.then, !dbg !2554

if.then:                                          ; preds = %entry
  %call = tail call fastcc zeroext i8 @num_positive(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %lhs, i64 %6) #7, !dbg !2555
  %tobool8 = icmp eq i8 %call, 0, !dbg !2555
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !2559

if.then9:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i8 1, metadata !2542, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 1, metadata !2543, metadata !DIExpression()), !dbg !2546
  %7 = bitcast %struct.cpp_num* %tmp to i8*, !dbg !2560
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2560
  call fastcc void @num_negate(%struct.cpp_num* nonnull sret %tmp, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %lhs, i64 %6) #7, !dbg !2560
  %8 = bitcast %struct.cpp_num* %lhs to i8*, !dbg !2560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %7, i64 24, i1 false), !dbg !2560
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8, !dbg !2560
  br label %if.end, !dbg !2561

if.end:                                           ; preds = %if.then, %if.then9
  %negate.0 = phi i8 [ 0, %if.then ], [ 1, %if.then9 ], !dbg !2546
  %lhs_neg.0 = phi i8 [ 0, %if.then ], [ 1, %if.then9 ], !dbg !2546
  call void @llvm.dbg.value(metadata i8 %lhs_neg.0, metadata !2543, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 %negate.0, metadata !2542, metadata !DIExpression()), !dbg !2546
  %call12 = call fastcc zeroext i8 @num_positive(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %rhs, i64 %6) #7, !dbg !2562
  %tobool13 = icmp eq i8 %call12, 0, !dbg !2562
  br i1 %tobool13, label %if.then14, label %if.end21, !dbg !2564

if.then14:                                        ; preds = %if.end
  %9 = xor i8 %negate.0, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i8 %9, metadata !2542, metadata !DIExpression()), !dbg !2546
  %10 = bitcast %struct.cpp_num* %tmp19 to i8*, !dbg !2566
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #8, !dbg !2566
  call fastcc void @num_negate(%struct.cpp_num* nonnull sret %tmp19, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %rhs, i64 %6) #7, !dbg !2566
  %11 = bitcast %struct.cpp_num* %rhs to i8*, !dbg !2566
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 8 %10, i64 24, i1 false), !dbg !2566
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #8, !dbg !2566
  br label %if.end21, !dbg !2567

if.end21:                                         ; preds = %if.end, %if.then14, %entry
  %negate.2 = phi i8 [ 0, %entry ], [ %negate.0, %if.end ], [ %9, %if.then14 ], !dbg !2568
  %lhs_neg.1 = phi i8 [ 0, %entry ], [ %lhs_neg.0, %if.end ], [ %lhs_neg.0, %if.then14 ], !dbg !2569
  call void @llvm.dbg.value(metadata i8 %lhs_neg.1, metadata !2543, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 %negate.2, metadata !2542, metadata !DIExpression()), !dbg !2546
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 0, !dbg !2570
  %12 = load i64, i64* %high, align 8, !dbg !2570
  %tobool22 = icmp eq i64 %12, 0, !dbg !2572
  br i1 %tobool22, label %if.else, label %if.then23, !dbg !2573

if.then23:                                        ; preds = %if.end21
  call void @llvm.dbg.value(metadata i64 %6, metadata !2544, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2546
  %sub25 = add i64 %6, -65, !dbg !2574
  %shl = shl i64 1, %sub25, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %shl, metadata !2540, metadata !DIExpression()), !dbg !2546
  br label %for.cond, !dbg !2577

for.cond:                                         ; preds = %for.inc, %if.then23
  %mask.0 = phi i64 [ %shl, %if.then23 ], [ %shr, %for.inc ], !dbg !2578
  %i.0.in = phi i64 [ %6, %if.then23 ], [ %i.0, %for.inc ]
  %i.0 = add i64 %i.0.in, -1, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2544, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %mask.0, metadata !2540, metadata !DIExpression()), !dbg !2546
  %and = and i64 %12, %mask.0, !dbg !2579
  %tobool27 = icmp eq i64 %and, 0, !dbg !2579
  br i1 %tobool27, label %for.inc, label %if.end56.loopexit1, !dbg !2583

for.inc:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2544, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2546
  %shr = lshr i64 %mask.0, 1, !dbg !2584
  call void @llvm.dbg.value(metadata i64 %shr, metadata !2540, metadata !DIExpression()), !dbg !2546
  br label %for.cond, !dbg !2585, !llvm.loop !2586

if.else:                                          ; preds = %if.end21
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %rhs, i64 0, i32 1, !dbg !2589
  %13 = load i64, i64* %low, align 8, !dbg !2589
  %tobool30 = icmp eq i64 %13, 0, !dbg !2591
  br i1 %tobool30, label %if.else50, label %if.then31, !dbg !2592

if.then31:                                        ; preds = %if.else
  %cmp = icmp ugt i64 %6, 64, !dbg !2593
  %i.1.v = select i1 %cmp, i64 -65, i64 -1, !dbg !2596
  %i.1 = add i64 %6, %i.1.v, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !2544, metadata !DIExpression()), !dbg !2546
  %shl39 = shl i64 1, %i.1, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %shl39, metadata !2540, metadata !DIExpression()), !dbg !2546
  br label %for.cond40, !dbg !2598

for.cond40:                                       ; preds = %for.inc46, %if.then31
  %mask.1 = phi i64 [ %shl39, %if.then31 ], [ %shr48, %for.inc46 ], !dbg !2599
  %i.2 = phi i64 [ %i.1, %if.then31 ], [ %dec47, %for.inc46 ], !dbg !2599
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !2544, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %mask.1, metadata !2540, metadata !DIExpression()), !dbg !2546
  %and42 = and i64 %13, %mask.1, !dbg !2600
  %tobool43 = icmp eq i64 %and42, 0, !dbg !2600
  br i1 %tobool43, label %for.inc46, label %if.end56.loopexit, !dbg !2604

for.inc46:                                        ; preds = %for.cond40
  %dec47 = add i64 %i.2, -1, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %dec47, metadata !2544, metadata !DIExpression()), !dbg !2546
  %shr48 = lshr i64 %mask.1, 1, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %shr48, metadata !2540, metadata !DIExpression()), !dbg !2546
  br label %for.cond40, !dbg !2607, !llvm.loop !2608

if.else50:                                        ; preds = %if.else
  %skip_eval = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 11, !dbg !2611
  %14 = load i32, i32* %skip_eval, align 4, !dbg !2611
  %tobool51 = icmp eq i32 %14, 0, !dbg !2614
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !2615

if.then52:                                        ; preds = %if.else50
  %call53 = call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %location, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0)) #6, !dbg !2616
  br label %if.end54, !dbg !2616

if.end54:                                         ; preds = %if.else50, %if.then52
  %15 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2617
  %16 = bitcast %struct.cpp_num* %lhs to i8*, !dbg !2617
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* nonnull align 8 %16, i64 24, i1 false), !dbg !2617
  br label %cleanup, !dbg !2618

if.end56.loopexit:                                ; preds = %for.cond40
  %i.2.lcssa = phi i64 [ %i.2, %for.cond40 ], !dbg !2599
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !2544, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !2544, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !2544, metadata !DIExpression()), !dbg !2546
  br label %if.end56, !dbg !2619

if.end56.loopexit1:                               ; preds = %for.cond
  %i.0.lcssa = phi i64 [ %i.0, %for.cond ], !dbg !2578
  br label %if.end56, !dbg !2619

if.end56:                                         ; preds = %if.end56.loopexit1, %if.end56.loopexit
  %i.3 = phi i64 [ %i.2.lcssa, %if.end56.loopexit ], [ %i.0.lcssa, %if.end56.loopexit1 ], !dbg !2620
  call void @llvm.dbg.value(metadata i64 %i.3, metadata !2544, metadata !DIExpression()), !dbg !2546
  store i8 1, i8* %unsignedp2, align 8, !dbg !2621
  store i8 1, i8* %unsignedp1, align 8, !dbg !2622
  %17 = xor i64 %i.3, -1, !dbg !2623
  %sub60 = add i64 %6, %17, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %sub60, metadata !2544, metadata !DIExpression()), !dbg !2546
  %18 = bitcast %struct.cpp_num* %tmp61 to i8*, !dbg !2624
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18) #8, !dbg !2624
  call fastcc void @num_lshift(%struct.cpp_num* nonnull sret %tmp61, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %rhs, i64 %6, i64 %sub60) #7, !dbg !2624
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %18, i64 24, i1 false), !dbg !2624
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18) #8, !dbg !2624
  %low62 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 1, !dbg !2625
  store i64 0, i64* %low62, align 8, !dbg !2626
  %high63 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 0, !dbg !2627
  store i64 0, i64* %high63, align 8, !dbg !2628
  %19 = bitcast %struct.cpp_num* %tmp68 to i8*, !dbg !2629
  %20 = bitcast %struct.cpp_num* %lhs to i8*, !dbg !2629
  %low86 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %sub, i64 0, i32 1, !dbg !2635
  %high88 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %sub, i64 0, i32 0, !dbg !2635
  br label %for.cond64, !dbg !2636

for.cond64:                                       ; preds = %if.end85, %if.end56
  %i.4 = phi i64 [ %sub60, %if.end56 ], [ %dec81, %if.end85 ], !dbg !2546
  call void @llvm.dbg.value(metadata i64 %i.4, metadata !2544, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata %struct.cpp_num* %sub, metadata !2539, metadata !DIExpression(DW_OP_deref)), !dbg !2546
  %call65 = call fastcc zeroext i8 @num_greater_eq(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %lhs, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %sub, i64 %6) #7, !dbg !2637
  %tobool66 = icmp eq i8 %call65, 0, !dbg !2637
  br i1 %tobool66, label %if.end80, label %if.then67, !dbg !2638

if.then67:                                        ; preds = %for.cond64
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %19) #8, !dbg !2639
  call void @llvm.dbg.value(metadata %struct.cpp_num* %sub, metadata !2539, metadata !DIExpression(DW_OP_deref)), !dbg !2546
  call fastcc void @num_binary_op(%struct.cpp_num* nonnull sret %tmp68, %struct.cpp_reader* %pfile, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %lhs, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %sub, i32 5) #7, !dbg !2639
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %20, i8* nonnull align 8 %19, i64 24, i1 false), !dbg !2639
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %19) #8, !dbg !2639
  %cmp69 = icmp ugt i64 %i.4, 63, !dbg !2640
  br i1 %cmp69, label %if.then71, label %if.else75, !dbg !2642

if.then71:                                        ; preds = %if.then67
  %sub72 = add i64 %i.4, -64, !dbg !2643
  %shl73 = shl i64 1, %sub72, !dbg !2644
  %21 = load i64, i64* %high63, align 8, !dbg !2645
  %or = or i64 %21, %shl73, !dbg !2645
  store i64 %or, i64* %high63, align 8, !dbg !2645
  br label %if.end80, !dbg !2646

if.else75:                                        ; preds = %if.then67
  %shl76 = shl i64 1, %i.4, !dbg !2647
  %22 = load i64, i64* %low62, align 8, !dbg !2648
  %or78 = or i64 %22, %shl76, !dbg !2648
  store i64 %or78, i64* %low62, align 8, !dbg !2648
  br label %if.end80

if.end80:                                         ; preds = %for.cond64, %if.then71, %if.else75
  call void @llvm.dbg.value(metadata i64 %i.4, metadata !2544, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2546
  %cmp82 = icmp eq i64 %i.4, 0, !dbg !2649
  br i1 %cmp82, label %for.end94, label %if.end85, !dbg !2651

if.end85:                                         ; preds = %if.end80
  %dec81 = add i64 %i.4, -1, !dbg !2652
  call void @llvm.dbg.value(metadata i64 %dec81, metadata !2544, metadata !DIExpression()), !dbg !2546
  %23 = load i64, i64* %low86, align 8, !dbg !2653
  %shr87 = lshr i64 %23, 1, !dbg !2654
  %24 = load i64, i64* %high88, align 8, !dbg !2655
  %shl89 = shl i64 %24, 63, !dbg !2656
  %or90 = or i64 %shr87, %shl89, !dbg !2657
  store i64 %or90, i64* %low86, align 8, !dbg !2658
  %shr93 = lshr i64 %24, 1, !dbg !2659
  store i64 %shr93, i64* %high88, align 8, !dbg !2659
  br label %for.cond64, !dbg !2660, !llvm.loop !2661

for.end94:                                        ; preds = %if.end80
  %cmp95 = icmp eq i32 %op, 7, !dbg !2664
  br i1 %cmp95, label %if.then97, label %if.end121, !dbg !2666

if.then97:                                        ; preds = %for.end94
  %unsignedp98 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 2, !dbg !2667
  store i8 %conv5, i8* %unsignedp98, align 8, !dbg !2669
  %overflow = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %result, i64 0, i32 3, !dbg !2670
  store i8 0, i8* %overflow, align 1, !dbg !2671
  br i1 %5, label %if.end120, label %if.then100, !dbg !2672

if.then100:                                       ; preds = %if.then97
  %tobool101 = icmp eq i8 %negate.2, 0, !dbg !2673
  br i1 %tobool101, label %if.end104, label %if.then102, !dbg !2677

if.then102:                                       ; preds = %if.then100
  %25 = bitcast %struct.cpp_num* %tmp103 to i8*, !dbg !2678
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %25) #8, !dbg !2678
  call void @llvm.dbg.value(metadata %struct.cpp_num* %result, metadata !2538, metadata !DIExpression(DW_OP_deref)), !dbg !2546
  call fastcc void @num_negate(%struct.cpp_num* nonnull sret %tmp103, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %result, i64 %6) #7, !dbg !2678
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %25, i64 24, i1 false), !dbg !2678
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %25) #8, !dbg !2678
  br label %if.end104, !dbg !2679

if.end104:                                        ; preds = %if.then100, %if.then102
  call void @llvm.dbg.value(metadata %struct.cpp_num* %result, metadata !2538, metadata !DIExpression(DW_OP_deref)), !dbg !2546
  %call105 = call fastcc zeroext i8 @num_positive(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %result, i64 %6) #7, !dbg !2680
  %conv106 = zext i8 %call105 to i32, !dbg !2680
  %lnot.ext109 = zext i1 %tobool101 to i32, !dbg !2681
  %tobool110 = icmp eq i32 %conv106, %lnot.ext109, !dbg !2682
  br i1 %tobool110, label %land.end, label %land.rhs, !dbg !2683

land.rhs:                                         ; preds = %if.end104
  %26 = load i64, i64* %low62, align 8, !dbg !2684
  %27 = load i64, i64* %high63, align 8, !dbg !2684
  %or113 = or i64 %26, %27, !dbg !2684
  %cmp114 = icmp ne i64 %or113, 0, !dbg !2684
  %phitmp = zext i1 %cmp114 to i8
  br label %land.end

land.end:                                         ; preds = %if.end104, %land.rhs
  %28 = phi i8 [ 0, %if.end104 ], [ %phitmp, %land.rhs ]
  store i8 %28, i8* %overflow, align 1, !dbg !2685
  br label %if.end120, !dbg !2686

if.end120:                                        ; preds = %land.end, %if.then97
  %29 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* nonnull align 8 %0, i64 24, i1 false), !dbg !2687
  br label %cleanup, !dbg !2688

if.end121:                                        ; preds = %for.end94
  store i8 %conv5, i8* %unsignedp1, align 8, !dbg !2689
  %overflow123 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %lhs, i64 0, i32 3, !dbg !2690
  store i8 0, i8* %overflow123, align 1, !dbg !2691
  %tobool124 = icmp eq i8 %lhs_neg.1, 0, !dbg !2692
  br i1 %tobool124, label %if.end127, label %if.then125, !dbg !2694

if.then125:                                       ; preds = %if.end121
  %30 = bitcast %struct.cpp_num* %tmp126 to i8*, !dbg !2695
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %30) #8, !dbg !2695
  call fastcc void @num_negate(%struct.cpp_num* nonnull sret %tmp126, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %lhs, i64 %6) #7, !dbg !2695
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %20, i8* nonnull align 8 %30, i64 24, i1 false), !dbg !2695
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %30) #8, !dbg !2695
  br label %if.end127, !dbg !2696

if.end127:                                        ; preds = %if.end121, %if.then125
  %31 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2697
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* nonnull align 8 %20, i64 24, i1 false), !dbg !2697
  br label %cleanup, !dbg !2698

cleanup:                                          ; preds = %if.end127, %if.end120, %if.end54
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2699
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2699
  ret void, !dbg !2699
}

declare dso_local zeroext i8 @cpp_error_with_line(%struct.cpp_reader*, i32, i32, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @num_negate(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_num* byval(%struct.cpp_num) align 8 %num, i64 %precision) unnamed_addr #3 !dbg !2700 {
entry:
  %copy = alloca %struct.cpp_num, align 8
  %tmp = alloca %struct.cpp_num, align 8
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %num, metadata !2702, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %precision, metadata !2703, metadata !DIExpression()), !dbg !2706
  %0 = bitcast %struct.cpp_num* %copy to i8*, !dbg !2707
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2707
  %1 = bitcast %struct.cpp_num* %num to i8*, !dbg !2708
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2708
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2709
  %2 = load i64, i64* %high, align 8, !dbg !2709
  %neg = xor i64 %2, -1, !dbg !2710
  store i64 %neg, i64* %high, align 8, !dbg !2711
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !2712
  %3 = load i64, i64* %low, align 8, !dbg !2712
  %inc = sub i64 0, %3, !dbg !2713
  store i64 %inc, i64* %low, align 8, !dbg !2713
  %cmp = icmp eq i64 %3, 0, !dbg !2715
  br i1 %cmp, label %if.then, label %if.end, !dbg !2716

if.then:                                          ; preds = %entry
  %inc6 = sub i64 0, %2, !dbg !2717
  store i64 %inc6, i64* %high, align 8, !dbg !2717
  br label %if.end, !dbg !2718

if.end:                                           ; preds = %if.then, %entry
  %4 = bitcast %struct.cpp_num* %tmp to i8*, !dbg !2719
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2719
  call fastcc void @num_trim(%struct.cpp_num* nonnull sret %tmp, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %num, i64 %precision) #7, !dbg !2719
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !2719
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2719
  %unsignedp = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 2, !dbg !2720
  %5 = load i8, i8* %unsignedp, align 8, !dbg !2720
  %tobool = icmp eq i8 %5, 0, !dbg !2721
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !2722

land.lhs.true:                                    ; preds = %if.end
  %6 = load i64, i64* %low, align 8, !dbg !2723
  %low8 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %copy, i64 0, i32 1, !dbg !2723
  %7 = load i64, i64* %low8, align 8, !dbg !2723
  %cmp9 = icmp eq i64 %6, %7, !dbg !2723
  br i1 %cmp9, label %land.lhs.true10, label %land.end, !dbg !2723

land.lhs.true10:                                  ; preds = %land.lhs.true
  %8 = load i64, i64* %high, align 8, !dbg !2723
  %high12 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %copy, i64 0, i32 0, !dbg !2723
  %9 = load i64, i64* %high12, align 8, !dbg !2723
  %cmp13 = icmp eq i64 %8, %9, !dbg !2723
  br i1 %cmp13, label %land.rhs, label %land.end, !dbg !2724

land.rhs:                                         ; preds = %land.lhs.true10
  %or = or i64 %6, %8, !dbg !2725
  %cmp16 = icmp ne i64 %or, 0, !dbg !2725
  %phitmp = zext i1 %cmp16 to i8
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs, %land.lhs.true10, %land.lhs.true
  %10 = phi i8 [ 0, %land.lhs.true10 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ %phitmp, %land.rhs ]
  %overflow = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 3, !dbg !2726
  store i8 %10, i8* %overflow, align 1, !dbg !2727
  %11 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2728
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2728
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2729
  ret void, !dbg !2729
}

; Function Attrs: nounwind uwtable
define internal fastcc void @num_lshift(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_num* byval(%struct.cpp_num) align 8 %num, i64 %precision, i64 %n) unnamed_addr #3 !dbg !2730 {
entry:
  %orig = alloca %struct.cpp_num, align 8
  %maybe_orig = alloca %struct.cpp_num, align 8
  %tmp = alloca %struct.cpp_num, align 8
  %tmp25 = alloca %struct.cpp_num, align 8
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %num, metadata !2734, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i64 %precision, metadata !2735, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 %n, metadata !2736, metadata !DIExpression()), !dbg !2743
  %cmp = icmp ult i64 %n, %precision, !dbg !2744
  br i1 %cmp, label %if.else, label %if.then, !dbg !2745

if.then:                                          ; preds = %entry
  %unsignedp = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 2, !dbg !2746
  %0 = load i8, i8* %unsignedp, align 8, !dbg !2746
  %tobool = icmp eq i8 %0, 0, !dbg !2748
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2749

land.rhs:                                         ; preds = %if.then
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !2750
  %1 = load i64, i64* %low, align 8, !dbg !2750
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2750
  %2 = load i64, i64* %high, align 8, !dbg !2750
  %or = or i64 %1, %2, !dbg !2750
  %cmp1 = icmp ne i64 %or, 0, !dbg !2750
  %phitmp1 = zext i1 %cmp1 to i8
  br label %land.end

land.end:                                         ; preds = %if.then, %land.rhs
  %3 = phi i8 [ 0, %if.then ], [ %phitmp1, %land.rhs ]
  %overflow = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 3, !dbg !2751
  store i8 %3, i8* %overflow, align 1, !dbg !2752
  %low2 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !2753
  store i64 0, i64* %low2, align 8, !dbg !2754
  %high3 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2755
  store i64 0, i64* %high3, align 8, !dbg !2756
  %.pre = bitcast %struct.cpp_num* %num to i8*, !dbg !2757
  br label %if.end41, !dbg !2758

if.else:                                          ; preds = %entry
  %4 = bitcast %struct.cpp_num* %orig to i8*, !dbg !2759
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2759
  %5 = bitcast %struct.cpp_num* %maybe_orig to i8*, !dbg !2759
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8, !dbg !2759
  call void @llvm.dbg.value(metadata i64 %n, metadata !2741, metadata !DIExpression()), !dbg !2760
  %6 = bitcast %struct.cpp_num* %num to i8*, !dbg !2761
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !2761
  %cmp4 = icmp ugt i64 %n, 63, !dbg !2762
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !2764

if.then6:                                         ; preds = %if.else
  %sub = add i64 %n, -64, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2741, metadata !DIExpression()), !dbg !2760
  %low7 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !2767
  %7 = load i64, i64* %low7, align 8, !dbg !2767
  %high8 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2768
  store i64 %7, i64* %high8, align 8, !dbg !2769
  store i64 0, i64* %low7, align 8, !dbg !2770
  br label %if.end, !dbg !2771

if.end:                                           ; preds = %if.then6, %if.else
  %m.0 = phi i64 [ %sub, %if.then6 ], [ %n, %if.else ], !dbg !2760
  call void @llvm.dbg.value(metadata i64 %m.0, metadata !2741, metadata !DIExpression()), !dbg !2760
  %tobool10 = icmp eq i64 %m.0, 0, !dbg !2772
  br i1 %tobool10, label %if.end19, label %if.then11, !dbg !2774

if.then11:                                        ; preds = %if.end
  %high12 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2775
  %8 = load i64, i64* %high12, align 8, !dbg !2775
  %shl = shl i64 %8, %m.0, !dbg !2777
  %low13 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !2778
  %9 = load i64, i64* %low13, align 8, !dbg !2778
  %sub14 = sub i64 64, %m.0, !dbg !2779
  %shr = lshr i64 %9, %sub14, !dbg !2780
  %or15 = or i64 %shl, %shr, !dbg !2781
  store i64 %or15, i64* %high12, align 8, !dbg !2782
  %shl18 = shl i64 %9, %m.0, !dbg !2783
  store i64 %shl18, i64* %low13, align 8, !dbg !2783
  br label %if.end19, !dbg !2784

if.end19:                                         ; preds = %if.end, %if.then11
  %10 = bitcast %struct.cpp_num* %tmp to i8*, !dbg !2785
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #8, !dbg !2785
  call fastcc void @num_trim(%struct.cpp_num* nonnull sret %tmp, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %num, i64 %precision) #7, !dbg !2785
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* nonnull align 8 %10, i64 24, i1 false), !dbg !2785
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #8, !dbg !2785
  %unsignedp20 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 2, !dbg !2786
  %11 = load i8, i8* %unsignedp20, align 8, !dbg !2786
  %tobool21 = icmp eq i8 %11, 0, !dbg !2788
  br i1 %tobool21, label %if.else24, label %if.then22, !dbg !2789

if.then22:                                        ; preds = %if.end19
  %overflow23 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 3, !dbg !2790
  store i8 0, i8* %overflow23, align 1, !dbg !2791
  br label %if.end40, !dbg !2792

if.else24:                                        ; preds = %if.end19
  %12 = bitcast %struct.cpp_num* %tmp25 to i8*, !dbg !2793
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #8, !dbg !2793
  call fastcc void @num_rshift(%struct.cpp_num* nonnull sret %tmp25, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %num, i64 %precision, i64 %n) #7, !dbg !2793
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %12, i64 24, i1 false), !dbg !2793
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #8, !dbg !2793
  %low26 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %orig, i64 0, i32 1, !dbg !2795
  %13 = load i64, i64* %low26, align 8, !dbg !2795
  %low27 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %maybe_orig, i64 0, i32 1, !dbg !2795
  %14 = load i64, i64* %low27, align 8, !dbg !2795
  %cmp28 = icmp eq i64 %13, %14, !dbg !2795
  br i1 %cmp28, label %land.rhs30, label %land.end35, !dbg !2795

land.rhs30:                                       ; preds = %if.else24
  %high31 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %orig, i64 0, i32 0, !dbg !2795
  %15 = load i64, i64* %high31, align 8, !dbg !2795
  %high32 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %maybe_orig, i64 0, i32 0, !dbg !2795
  %16 = load i64, i64* %high32, align 8, !dbg !2795
  %cmp33 = icmp ne i64 %15, %16, !dbg !2795
  %phitmp = zext i1 %cmp33 to i8
  br label %land.end35

land.end35:                                       ; preds = %land.rhs30, %if.else24
  %17 = phi i8 [ 1, %if.else24 ], [ %phitmp, %land.rhs30 ]
  %overflow39 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 3, !dbg !2796
  store i8 %17, i8* %overflow39, align 1, !dbg !2797
  br label %if.end40

if.end40:                                         ; preds = %land.end35, %if.then22
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8, !dbg !2798
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2798
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %land.end
  %.pre-phi = phi i8* [ %6, %if.end40 ], [ %.pre, %land.end ], !dbg !2757
  %18 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2757
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* nonnull align 8 %.pre-phi, i64 24, i1 false), !dbg !2757
  ret void, !dbg !2799
}

; Function Attrs: nounwind uwtable
define internal fastcc void @num_rshift(%struct.cpp_num* noalias sret %agg.result, %struct.cpp_num* byval(%struct.cpp_num) align 8 %num, i64 %precision, i64 %n) unnamed_addr #3 !dbg !2800 {
entry:
  %tmp = alloca %struct.cpp_num, align 8
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %num, metadata !2802, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %precision, metadata !2803, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i64 %n, metadata !2804, metadata !DIExpression()), !dbg !2808
  %call = tail call fastcc zeroext i8 @num_positive(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %num, i64 %precision) #7, !dbg !2809
  call void @llvm.dbg.value(metadata i8 %call, metadata !2806, metadata !DIExpression()), !dbg !2808
  %unsignedp = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 2, !dbg !2810
  %0 = load i8, i8* %unsignedp, align 8, !dbg !2810
  %1 = or i8 %0, %call, !dbg !2812
  %2 = icmp eq i8 %1, 0, !dbg !2812
  %sign_mask.0 = sext i1 %2 to i64, !dbg !2812
  call void @llvm.dbg.value(metadata i64 %sign_mask.0, metadata !2805, metadata !DIExpression()), !dbg !2808
  %cmp = icmp ult i64 %n, %precision, !dbg !2813
  br i1 %cmp, label %if.else5, label %if.then4, !dbg !2815

if.then4:                                         ; preds = %entry
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !2816
  store i64 %sign_mask.0, i64* %low, align 8, !dbg !2817
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2818
  store i64 %sign_mask.0, i64* %high, align 8, !dbg !2819
  br label %if.end43, !dbg !2820

if.else5:                                         ; preds = %entry
  %cmp6 = icmp ult i64 %precision, 64, !dbg !2821
  br i1 %cmp6, label %if.then8, label %if.else11, !dbg !2824

if.then8:                                         ; preds = %if.else5
  %high9 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2825
  store i64 %sign_mask.0, i64* %high9, align 8, !dbg !2826
  %shl = shl i64 %sign_mask.0, %precision, !dbg !2827
  %low10 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !2828
  %3 = load i64, i64* %low10, align 8, !dbg !2829
  %or = or i64 %3, %shl, !dbg !2829
  store i64 %or, i64* %low10, align 8, !dbg !2829
  br label %if.end19, !dbg !2830

if.else11:                                        ; preds = %if.else5
  %cmp12 = icmp ult i64 %precision, 128, !dbg !2831
  br i1 %cmp12, label %if.then14, label %if.end19, !dbg !2833

if.then14:                                        ; preds = %if.else11
  %sub = add i64 %precision, -64, !dbg !2834
  %shl15 = shl i64 %sign_mask.0, %sub, !dbg !2835
  %high16 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2836
  %4 = load i64, i64* %high16, align 8, !dbg !2837
  %or17 = or i64 %4, %shl15, !dbg !2837
  store i64 %or17, i64* %high16, align 8, !dbg !2837
  br label %if.end19, !dbg !2838

if.end19:                                         ; preds = %if.else11, %if.then14, %if.then8
  %cmp20 = icmp ugt i64 %n, 63, !dbg !2839
  br i1 %cmp20, label %if.then22, label %if.end27, !dbg !2841

if.then22:                                        ; preds = %if.end19
  %sub23 = add i64 %n, -64, !dbg !2842
  call void @llvm.dbg.value(metadata i64 %sub23, metadata !2804, metadata !DIExpression()), !dbg !2808
  %high24 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2844
  %5 = load i64, i64* %high24, align 8, !dbg !2844
  %low25 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !2845
  store i64 %5, i64* %low25, align 8, !dbg !2846
  store i64 %sign_mask.0, i64* %high24, align 8, !dbg !2847
  br label %if.end27, !dbg !2848

if.end27:                                         ; preds = %if.then22, %if.end19
  %n.addr.0 = phi i64 [ %sub23, %if.then22 ], [ %n, %if.end19 ]
  call void @llvm.dbg.value(metadata i64 %n.addr.0, metadata !2804, metadata !DIExpression()), !dbg !2808
  %tobool28 = icmp eq i64 %n.addr.0, 0, !dbg !2849
  br i1 %tobool28, label %if.end43, label %if.then29, !dbg !2851

if.then29:                                        ; preds = %if.end27
  %low30 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 1, !dbg !2852
  %6 = load i64, i64* %low30, align 8, !dbg !2852
  %shr = lshr i64 %6, %n.addr.0, !dbg !2854
  %high31 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 0, !dbg !2855
  %7 = load i64, i64* %high31, align 8, !dbg !2855
  %sub32 = sub i64 64, %n.addr.0, !dbg !2856
  %shl33 = shl i64 %7, %sub32, !dbg !2857
  %or34 = or i64 %shr, %shl33, !dbg !2858
  store i64 %or34, i64* %low30, align 8, !dbg !2859
  %shr37 = lshr i64 %7, %n.addr.0, !dbg !2860
  %shl39 = shl i64 %sign_mask.0, %sub32, !dbg !2861
  %or40 = or i64 %shr37, %shl39, !dbg !2862
  store i64 %or40, i64* %high31, align 8, !dbg !2863
  br label %if.end43, !dbg !2864

if.end43:                                         ; preds = %if.end27, %if.then29, %if.then4
  %8 = bitcast %struct.cpp_num* %tmp to i8*, !dbg !2865
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8, !dbg !2865
  call fastcc void @num_trim(%struct.cpp_num* nonnull sret %tmp, %struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %num, i64 %precision) #7, !dbg !2865
  %9 = bitcast %struct.cpp_num* %num to i8*, !dbg !2865
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %8, i64 24, i1 false), !dbg !2865
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8, !dbg !2865
  %overflow = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %num, i64 0, i32 3, !dbg !2866
  store i8 0, i8* %overflow, align 1, !dbg !2867
  %10 = bitcast %struct.cpp_num* %agg.result to i8*, !dbg !2868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !2868
  ret void, !dbg !2869
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @num_greater_eq(%struct.cpp_num* byval(%struct.cpp_num) align 8 %pa, %struct.cpp_num* byval(%struct.cpp_num) align 8 %pb, i64 %precision) unnamed_addr #3 !dbg !2870 {
entry:
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %pa, metadata !2874, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %pb, metadata !2875, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %precision, metadata !2876, metadata !DIExpression()), !dbg !2880
  %unsignedp1 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %pa, i64 0, i32 2, !dbg !2881
  %0 = load i8, i8* %unsignedp1, align 8, !dbg !2881
  %unsignedp2 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %pb, i64 0, i32 2, !dbg !2882
  %1 = load i8, i8* %unsignedp2, align 8, !dbg !2882
  %2 = or i8 %1, %0, !dbg !2882
  %3 = icmp eq i8 %2, 0, !dbg !2882
  call void @llvm.dbg.value(metadata i1 %3, metadata !2877, metadata !DIExpression()), !dbg !2880
  br i1 %3, label %if.then, label %if.end12, !dbg !2883

if.then:                                          ; preds = %entry
  %call = tail call fastcc zeroext i8 @num_positive(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %pa, i64 %precision) #7, !dbg !2884
  call void @llvm.dbg.value(metadata i8 %call, metadata !2877, metadata !DIExpression()), !dbg !2880
  %call8 = tail call fastcc zeroext i8 @num_positive(%struct.cpp_num* nonnull byval(%struct.cpp_num) align 8 %pb, i64 %precision) #7, !dbg !2887
  %cmp = icmp eq i8 %call, %call8, !dbg !2889
  br i1 %cmp, label %if.end12, label %cleanup, !dbg !2890

if.end12:                                         ; preds = %if.then, %entry
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %pa, i64 0, i32 0, !dbg !2891
  %4 = load i64, i64* %high, align 8, !dbg !2891
  %high13 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %pb, i64 0, i32 0, !dbg !2892
  %5 = load i64, i64* %high13, align 8, !dbg !2892
  %cmp14 = icmp ugt i64 %4, %5, !dbg !2893
  br i1 %cmp14, label %lor.end24, label %lor.rhs16, !dbg !2894

lor.rhs16:                                        ; preds = %if.end12
  %cmp19 = icmp eq i64 %4, %5, !dbg !2895
  br i1 %cmp19, label %land.rhs, label %lor.end24, !dbg !2896

land.rhs:                                         ; preds = %lor.rhs16
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %pa, i64 0, i32 1, !dbg !2897
  %6 = load i64, i64* %low, align 8, !dbg !2897
  %low21 = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %pb, i64 0, i32 1, !dbg !2898
  %7 = load i64, i64* %low21, align 8, !dbg !2898
  %cmp22 = icmp uge i64 %6, %7, !dbg !2899
  %phitmp = zext i1 %cmp22 to i8
  br label %lor.end24

lor.end24:                                        ; preds = %lor.rhs16, %land.rhs, %if.end12
  %8 = phi i8 [ 1, %if.end12 ], [ 0, %lor.rhs16 ], [ %phitmp, %land.rhs ]
  br label %cleanup, !dbg !2900

cleanup:                                          ; preds = %if.then, %lor.end24
  %retval.0 = phi i8 [ %8, %lor.end24 ], [ %call, %if.then ], !dbg !2880
  ret i8 %retval.0, !dbg !2901
}

; Function Attrs: nounwind uwtable
define internal fastcc void @num_part_mul(%struct.cpp_num* noalias sret %agg.result, i64 %lhs, i64 %rhs) unnamed_addr #3 !dbg !2902 {
entry:
  call void @llvm.dbg.value(metadata i64 %lhs, metadata !2906, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %rhs, metadata !2907, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.declare(metadata %struct.cpp_num* %agg.result, metadata !2908, metadata !DIExpression()), !dbg !2915
  %and = and i64 %lhs, 4294967295, !dbg !2916
  %and1 = and i64 %rhs, 4294967295, !dbg !2917
  %mul = mul nuw i64 %and, %and1, !dbg !2918
  %low = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 1, !dbg !2919
  %shr = lshr i64 %lhs, 32, !dbg !2920
  %shr2 = lshr i64 %rhs, 32, !dbg !2921
  %mul3 = mul nuw i64 %shr, %shr2, !dbg !2922
  %high = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 0, !dbg !2923
  store i64 %mul3, i64* %high, align 8, !dbg !2924
  %mul6 = mul nuw i64 %and, %shr2, !dbg !2925
  call void @llvm.dbg.value(metadata i64 undef, metadata !2909, metadata !DIExpression()), !dbg !2914
  %mul9 = mul nuw i64 %shr, %and1, !dbg !2926
  call void @llvm.dbg.value(metadata i64 undef, metadata !2909, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %mul, metadata !2913, metadata !DIExpression()), !dbg !2914
  %shl = shl i64 %mul6, 32, !dbg !2927
  %add = add i64 %mul, %shl, !dbg !2928
  store i64 %add, i64* %low, align 8, !dbg !2928
  %cmp = icmp ult i64 %add, %mul, !dbg !2929
  br i1 %cmp, label %if.then, label %if.end, !dbg !2931

if.then:                                          ; preds = %entry
  %inc = add i64 %mul3, 1, !dbg !2932
  store i64 %inc, i64* %high, align 8, !dbg !2932
  br label %if.end, !dbg !2933

if.end:                                           ; preds = %if.then, %entry
  %0 = phi i64 [ %inc, %if.then ], [ %mul3, %entry ]
  call void @llvm.dbg.value(metadata i64 %add, metadata !2913, metadata !DIExpression()), !dbg !2914
  %shl20 = shl i64 %mul9, 32, !dbg !2934
  %add22 = add i64 %add, %shl20, !dbg !2935
  store i64 %add22, i64* %low, align 8, !dbg !2935
  %cmp24 = icmp ult i64 %add22, %add, !dbg !2936
  br i1 %cmp24, label %if.then25, label %if.end28, !dbg !2938

if.then25:                                        ; preds = %if.end
  %inc27 = add i64 %0, 1, !dbg !2939
  store i64 %inc27, i64* %high, align 8, !dbg !2939
  br label %if.end28, !dbg !2940

if.end28:                                         ; preds = %if.then25, %if.end
  %1 = phi i64 [ %inc27, %if.then25 ], [ %0, %if.end ], !dbg !2941
  %shr30 = lshr i64 %mul6, 32, !dbg !2942
  %add32 = add i64 %1, %shr30, !dbg !2941
  %shr34 = lshr i64 %mul9, 32, !dbg !2943
  %add36 = add i64 %add32, %shr34, !dbg !2944
  store i64 %add36, i64* %high, align 8, !dbg !2944
  %unsignedp = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 2, !dbg !2945
  store i8 1, i8* %unsignedp, align 8, !dbg !2946
  %overflow = getelementptr inbounds %struct.cpp_num, %struct.cpp_num* %agg.result, i64 0, i32 3, !dbg !2947
  store i8 0, i8* %overflow, align 1, !dbg !2948
  ret void, !dbg !2949
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!754, !755, !756}
!llvm.ident = !{!757}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "optab", scope: !2, file: !3, line: 860, type: !746, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !743, globals: !745, nameTableKind: None)
!3 = !DIFile(filename: "cpp_expr.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !19, !99, !111, !117, !122}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_ttype", file: !6, line: 143, baseType: !7, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!21 = !DIEnumerator(name: "CPP_EQ", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "CPP_NOT", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "CPP_GREATER", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "CPP_LESS", value: 3, isUnsigned: true)
!25 = !DIEnumerator(name: "CPP_PLUS", value: 4, isUnsigned: true)
!26 = !DIEnumerator(name: "CPP_MINUS", value: 5, isUnsigned: true)
!27 = !DIEnumerator(name: "CPP_MULT", value: 6, isUnsigned: true)
!28 = !DIEnumerator(name: "CPP_DIV", value: 7, isUnsigned: true)
!29 = !DIEnumerator(name: "CPP_MOD", value: 8, isUnsigned: true)
!30 = !DIEnumerator(name: "CPP_AND", value: 9, isUnsigned: true)
!31 = !DIEnumerator(name: "CPP_OR", value: 10, isUnsigned: true)
!32 = !DIEnumerator(name: "CPP_XOR", value: 11, isUnsigned: true)
!33 = !DIEnumerator(name: "CPP_RSHIFT", value: 12, isUnsigned: true)
!34 = !DIEnumerator(name: "CPP_LSHIFT", value: 13, isUnsigned: true)
!35 = !DIEnumerator(name: "CPP_COMPL", value: 14, isUnsigned: true)
!36 = !DIEnumerator(name: "CPP_AND_AND", value: 15, isUnsigned: true)
!37 = !DIEnumerator(name: "CPP_OR_OR", value: 16, isUnsigned: true)
!38 = !DIEnumerator(name: "CPP_QUERY", value: 17, isUnsigned: true)
!39 = !DIEnumerator(name: "CPP_COLON", value: 18, isUnsigned: true)
!40 = !DIEnumerator(name: "CPP_COMMA", value: 19, isUnsigned: true)
!41 = !DIEnumerator(name: "CPP_OPEN_PAREN", value: 20, isUnsigned: true)
!42 = !DIEnumerator(name: "CPP_CLOSE_PAREN", value: 21, isUnsigned: true)
!43 = !DIEnumerator(name: "CPP_EOF", value: 22, isUnsigned: true)
!44 = !DIEnumerator(name: "CPP_EQ_EQ", value: 23, isUnsigned: true)
!45 = !DIEnumerator(name: "CPP_NOT_EQ", value: 24, isUnsigned: true)
!46 = !DIEnumerator(name: "CPP_GREATER_EQ", value: 25, isUnsigned: true)
!47 = !DIEnumerator(name: "CPP_LESS_EQ", value: 26, isUnsigned: true)
!48 = !DIEnumerator(name: "CPP_PLUS_EQ", value: 27, isUnsigned: true)
!49 = !DIEnumerator(name: "CPP_MINUS_EQ", value: 28, isUnsigned: true)
!50 = !DIEnumerator(name: "CPP_MULT_EQ", value: 29, isUnsigned: true)
!51 = !DIEnumerator(name: "CPP_DIV_EQ", value: 30, isUnsigned: true)
!52 = !DIEnumerator(name: "CPP_MOD_EQ", value: 31, isUnsigned: true)
!53 = !DIEnumerator(name: "CPP_AND_EQ", value: 32, isUnsigned: true)
!54 = !DIEnumerator(name: "CPP_OR_EQ", value: 33, isUnsigned: true)
!55 = !DIEnumerator(name: "CPP_XOR_EQ", value: 34, isUnsigned: true)
!56 = !DIEnumerator(name: "CPP_RSHIFT_EQ", value: 35, isUnsigned: true)
!57 = !DIEnumerator(name: "CPP_LSHIFT_EQ", value: 36, isUnsigned: true)
!58 = !DIEnumerator(name: "CPP_HASH", value: 37, isUnsigned: true)
!59 = !DIEnumerator(name: "CPP_PASTE", value: 38, isUnsigned: true)
!60 = !DIEnumerator(name: "CPP_OPEN_SQUARE", value: 39, isUnsigned: true)
!61 = !DIEnumerator(name: "CPP_CLOSE_SQUARE", value: 40, isUnsigned: true)
!62 = !DIEnumerator(name: "CPP_OPEN_BRACE", value: 41, isUnsigned: true)
!63 = !DIEnumerator(name: "CPP_CLOSE_BRACE", value: 42, isUnsigned: true)
!64 = !DIEnumerator(name: "CPP_SEMICOLON", value: 43, isUnsigned: true)
!65 = !DIEnumerator(name: "CPP_ELLIPSIS", value: 44, isUnsigned: true)
!66 = !DIEnumerator(name: "CPP_PLUS_PLUS", value: 45, isUnsigned: true)
!67 = !DIEnumerator(name: "CPP_MINUS_MINUS", value: 46, isUnsigned: true)
!68 = !DIEnumerator(name: "CPP_DEREF", value: 47, isUnsigned: true)
!69 = !DIEnumerator(name: "CPP_DOT", value: 48, isUnsigned: true)
!70 = !DIEnumerator(name: "CPP_SCOPE", value: 49, isUnsigned: true)
!71 = !DIEnumerator(name: "CPP_DEREF_STAR", value: 50, isUnsigned: true)
!72 = !DIEnumerator(name: "CPP_DOT_STAR", value: 51, isUnsigned: true)
!73 = !DIEnumerator(name: "CPP_ATSIGN", value: 52, isUnsigned: true)
!74 = !DIEnumerator(name: "CPP_NAME", value: 53, isUnsigned: true)
!75 = !DIEnumerator(name: "CPP_AT_NAME", value: 54, isUnsigned: true)
!76 = !DIEnumerator(name: "CPP_NUMBER", value: 55, isUnsigned: true)
!77 = !DIEnumerator(name: "CPP_CHAR", value: 56, isUnsigned: true)
!78 = !DIEnumerator(name: "CPP_WCHAR", value: 57, isUnsigned: true)
!79 = !DIEnumerator(name: "CPP_CHAR16", value: 58, isUnsigned: true)
!80 = !DIEnumerator(name: "CPP_CHAR32", value: 59, isUnsigned: true)
!81 = !DIEnumerator(name: "CPP_OTHER", value: 60, isUnsigned: true)
!82 = !DIEnumerator(name: "CPP_STRING", value: 61, isUnsigned: true)
!83 = !DIEnumerator(name: "CPP_WSTRING", value: 62, isUnsigned: true)
!84 = !DIEnumerator(name: "CPP_STRING16", value: 63, isUnsigned: true)
!85 = !DIEnumerator(name: "CPP_STRING32", value: 64, isUnsigned: true)
!86 = !DIEnumerator(name: "CPP_UTF8STRING", value: 65, isUnsigned: true)
!87 = !DIEnumerator(name: "CPP_OBJC_STRING", value: 66, isUnsigned: true)
!88 = !DIEnumerator(name: "CPP_HEADER_NAME", value: 67, isUnsigned: true)
!89 = !DIEnumerator(name: "CPP_COMMENT", value: 68, isUnsigned: true)
!90 = !DIEnumerator(name: "CPP_MACRO_ARG", value: 69, isUnsigned: true)
!91 = !DIEnumerator(name: "CPP_PRAGMA", value: 70, isUnsigned: true)
!92 = !DIEnumerator(name: "CPP_PRAGMA_EOL", value: 71, isUnsigned: true)
!93 = !DIEnumerator(name: "CPP_PADDING", value: 72, isUnsigned: true)
!94 = !DIEnumerator(name: "N_TTYPES", value: 73, isUnsigned: true)
!95 = !DIEnumerator(name: "CPP_LAST_EQ", value: 13, isUnsigned: true)
!96 = !DIEnumerator(name: "CPP_FIRST_DIGRAPH", value: 37, isUnsigned: true)
!97 = !DIEnumerator(name: "CPP_LAST_PUNCTUATOR", value: 52, isUnsigned: true)
!98 = !DIEnumerator(name: "CPP_LAST_CPP_OP", value: 26, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_lang", file: !6, line: 158, baseType: !7, size: 32, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109, !110}
!101 = !DIEnumerator(name: "CLK_GNUC89", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "CLK_GNUC99", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "CLK_STDC89", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "CLK_STDC94", value: 3, isUnsigned: true)
!105 = !DIEnumerator(name: "CLK_STDC99", value: 4, isUnsigned: true)
!106 = !DIEnumerator(name: "CLK_GNUCXX", value: 5, isUnsigned: true)
!107 = !DIEnumerator(name: "CLK_CXX98", value: 6, isUnsigned: true)
!108 = !DIEnumerator(name: "CLK_GNUCXX0X", value: 7, isUnsigned: true)
!109 = !DIEnumerator(name: "CLK_CXX0X", value: 8, isUnsigned: true)
!110 = !DIEnumerator(name: "CLK_ASM", value: 9, isUnsigned: true)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_normalize_level", file: !6, line: 265, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "normalized_KC", value: 0, isUnsigned: true)
!114 = !DIEnumerator(name: "normalized_C", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "normalized_identifier_C", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "normalized_none", value: 3, isUnsigned: true)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_deps_style", file: !6, line: 262, baseType: !7, size: 32, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "DEPS_NONE", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "DEPS_USER", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "DEPS_SYSTEM", value: 2, isUnsigned: true)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !123, file: !3, line: 232, baseType: !7, size: 32, elements: !739)
!123 = distinct !DISubprogram(name: "cpp_classify_number", scope: !3, file: !3, line: 227, type: !124, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !714)
!124 = !DISubroutineType(types: !125)
!125 = !{!7, !126, !298}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !6, line: 31, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !129, line: 322, size: 10432, elements: !130)
!129 = !DIFile(filename: "./internal.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!130 = !{!131, !217, !218, !235, !267, !268, !279, !280, !281, !391, !393, !397, !398, !399, !400, !401, !402, !403, !404, !405, !408, !409, !412, !413, !446, !447, !448, !451, !452, !453, !454, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !480, !481, !482, !485, !565, !591, !608, !609, !672, !679, !680, !687, !688, !689, !690, !693, !694, !707}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !128, file: !129, line: 325, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_buffer", file: !6, line: 32, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_buffer", file: !129, line: 249, size: 1536, elements: !135)
!135 = !{!136, !140, !141, !142, !143, !144, !151, !152, !153, !154, !156, !159, !160, !163, !164, !165, !166, !167, !168, !199}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !134, file: !129, line: 251, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "line_base", scope: !134, file: !129, line: 252, baseType: !137, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !134, file: !129, line: 253, baseType: !137, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !134, file: !129, line: 255, baseType: !137, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !134, file: !129, line: 256, baseType: !137, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !134, file: !129, line: 258, baseType: !145, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_line_note", file: !129, line: 235, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_line_note", file: !129, line: 236, size: 128, elements: !148)
!148 = !{!149, !150}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !147, file: !129, line: 239, baseType: !137, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !129, line: 245, baseType: !7, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cur_note", scope: !134, file: !129, line: 259, baseType: !7, size: 32, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "notes_used", scope: !134, file: !129, line: 260, baseType: !7, size: 32, offset: 416)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "notes_cap", scope: !134, file: !129, line: 261, baseType: !7, size: 32, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !129, line: 263, baseType: !155, size: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !134, file: !129, line: 267, baseType: !157, size: 64, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_file", file: !6, line: 42, flags: DIFlagFwdDecl)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !134, file: !129, line: 271, baseType: !137, size: 64, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "if_stack", scope: !134, file: !129, line: 275, baseType: !161, size: 64, offset: 704)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "if_stack", file: !129, line: 275, flags: DIFlagFwdDecl)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "need_line", scope: !134, file: !129, line: 278, baseType: !139, size: 8, offset: 768)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "warned_cplusplus_comments", scope: !134, file: !129, line: 284, baseType: !7, size: 1, offset: 776, flags: DIFlagBitField, extraData: i64 776)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "from_stage3", scope: !134, file: !129, line: 289, baseType: !7, size: 1, offset: 777, flags: DIFlagBitField, extraData: i64 776)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "return_at_eof", scope: !134, file: !129, line: 294, baseType: !7, size: 1, offset: 778, flags: DIFlagBitField, extraData: i64 776)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !134, file: !129, line: 298, baseType: !139, size: 8, offset: 784)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !134, file: !129, line: 302, baseType: !169, size: 512, offset: 832)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !6, line: 523, size: 512, elements: !170)
!170 = !{!171, !173, !176, !177, !178, !179, !180, !184, !190, !196}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !6, line: 526, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !6, line: 529, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !169, file: !6, line: 530, baseType: !7, size: 32, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !169, file: !6, line: 534, baseType: !139, size: 8, offset: 160)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !169, file: !6, line: 537, baseType: !139, size: 8, offset: 168)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !169, file: !6, line: 541, baseType: !174, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !169, file: !6, line: 545, baseType: !181, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !169, file: !6, line: 551, baseType: !185, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!174, !182, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !6, line: 39, baseType: !169)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !169, file: !6, line: 555, baseType: !191, size: 64, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !192, line: 47, baseType: !193)
!192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !194, line: 148, baseType: !195)
!194 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!195 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !169, file: !6, line: 556, baseType: !197, size: 64, offset: 448)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !192, line: 59, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !194, line: 145, baseType: !195)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "input_cset_desc", scope: !134, file: !129, line: 306, baseType: !200, size: 192, offset: 1344)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cset_converter", file: !129, line: 47, size: 192, elements: !201)
!201 = !{!202, !214, !215}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !200, file: !129, line: 49, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "convert_f", file: !129, line: 45, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!139, !207, !137, !210, !212}
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !208, line: 29, baseType: !209)
!208 = !DIFile(filename: "/usr/include/iconv.h", directory: "")
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !211, line: 46, baseType: !195)
!211 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_strbuf", file: !129, line: 43, flags: DIFlagFwdDecl)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !200, file: !129, line: 50, baseType: !207, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !200, file: !129, line: 51, baseType: !216, size: 32, offset: 128)
!216 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "overlaid_buffer", scope: !128, file: !129, line: 328, baseType: !132, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !128, file: !129, line: 331, baseType: !219, size: 160, offset: 128)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lexer_state", file: !129, line: 177, size: 160, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "in_directive", scope: !219, file: !129, line: 180, baseType: !139, size: 8)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "directive_wants_padding", scope: !219, file: !129, line: 185, baseType: !139, size: 8, offset: 8)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "skipping", scope: !219, file: !129, line: 188, baseType: !139, size: 8, offset: 16)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "angled_headers", scope: !219, file: !129, line: 191, baseType: !139, size: 8, offset: 24)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "in_expression", scope: !219, file: !129, line: 194, baseType: !139, size: 8, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "save_comments", scope: !219, file: !129, line: 198, baseType: !139, size: 8, offset: 40)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "va_args_ok", scope: !219, file: !129, line: 201, baseType: !139, size: 8, offset: 48)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned_ok", scope: !219, file: !129, line: 204, baseType: !139, size: 8, offset: 56)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_expansion", scope: !219, file: !129, line: 207, baseType: !139, size: 8, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parsing_args", scope: !219, file: !129, line: 210, baseType: !139, size: 8, offset: 72)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "discarding_output", scope: !219, file: !129, line: 214, baseType: !139, size: 8, offset: 80)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "skip_eval", scope: !219, file: !129, line: 217, baseType: !7, size: 32, offset: 96)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "in_deferred_pragma", scope: !219, file: !129, line: 220, baseType: !139, size: 8, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "pragma_allow_expansion", scope: !219, file: !129, line: 223, baseType: !139, size: 8, offset: 136)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "line_table", scope: !128, file: !129, line: 334, baseType: !236, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !238, line: 74, size: 448, elements: !239)
!238 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!239 = !{!240, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !237, file: !238, line: 75, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !238, line: 61, size: 192, elements: !243)
!243 = !{!244, !245, !247, !249, !250, !251, !252}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !242, file: !238, line: 62, baseType: !182, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !242, file: !238, line: 63, baseType: !246, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !238, line: 39, baseType: !7)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !242, file: !238, line: 64, baseType: !248, size: 32, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !238, line: 44, baseType: !7)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !242, file: !238, line: 65, baseType: !216, size: 32, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !242, file: !238, line: 66, baseType: !7, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !242, file: !238, line: 68, baseType: !139, size: 8, offset: 168)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !242, file: !238, line: 70, baseType: !7, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !237, file: !238, line: 76, baseType: !7, size: 32, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !237, file: !238, line: 77, baseType: !7, size: 32, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !237, file: !238, line: 79, baseType: !7, size: 32, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !237, file: !238, line: 84, baseType: !216, size: 32, offset: 160)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !237, file: !238, line: 87, baseType: !7, size: 32, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !237, file: !238, line: 90, baseType: !139, size: 8, offset: 224)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !237, file: !238, line: 93, baseType: !248, size: 32, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !237, file: !238, line: 96, baseType: !248, size: 32, offset: 288)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !237, file: !238, line: 100, baseType: !7, size: 32, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !237, file: !238, line: 104, baseType: !263, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !238, line: 47, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!209, !209, !210}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "directive_line", scope: !128, file: !129, line: 337, baseType: !248, size: 32, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "a_buff", scope: !128, file: !129, line: 340, baseType: !269, size: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_buff", file: !129, line: 99, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_buff", file: !129, line: 100, size: 256, elements: !272)
!272 = !{!273, !275, !277, !278}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !129, line: 102, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !271, file: !129, line: 103, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !271, file: !129, line: 103, baseType: !276, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !271, file: !129, line: 103, baseType: !276, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "u_buff", scope: !128, file: !129, line: 341, baseType: !269, size: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffs", scope: !128, file: !129, line: 342, baseType: !269, size: 64, offset: 576)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "base_context", scope: !128, file: !129, line: 345, baseType: !282, size: 448, offset: 640)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_context", file: !129, line: 142, size: 448, elements: !283)
!283 = !{!284, !287, !288, !388, !389, !390}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !282, file: !129, line: 145, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_context", file: !129, line: 141, baseType: !282)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !282, file: !129, line: 145, baseType: !285, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !282, file: !129, line: 164, baseType: !289, size: 128, offset: 128)
!289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !129, line: 147, size: 128, elements: !290)
!290 = !{!291, !383}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "iso", scope: !289, file: !129, line: 156, baseType: !292, size: 128)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !289, file: !129, line: 152, size: 128, elements: !293)
!293 = !{!294, !382}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !292, file: !129, line: 154, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "utoken", file: !129, line: 121, size: 64, elements: !296)
!296 = !{!297, !380}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !295, file: !129, line: 123, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !6, line: 34, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !6, line: 212, size: 192, elements: !302)
!302 = !{!303, !304, !305, !307}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !301, file: !6, line: 213, baseType: !248, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !301, file: !6, line: 214, baseType: !7, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !6, line: 215, baseType: !306, size: 16, offset: 48)
!306 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !301, file: !6, line: 237, baseType: !308, size: 128, offset: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_token_u", file: !6, line: 217, size: 128, elements: !309)
!309 = !{!310, !368, !369, !374, !378, !379}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !308, file: !6, line: 220, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_identifier", file: !6, line: 201, size: 64, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !311, file: !6, line: 207, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_hashnode", file: !6, line: 36, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_hashnode", file: !6, line: 644, size: 256, elements: !317)
!317 = !{!318, !325, !326, !327, !328, !329, !330}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !316, file: !6, line: 645, baseType: !319, size: 128)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !320, line: 31, size: 128, elements: !321)
!320 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!321 = !{!322, !323, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !319, file: !320, line: 32, baseType: !137, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !319, file: !320, line: 33, baseType: !7, size: 32, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !319, file: !320, line: 34, baseType: !7, size: 32, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !316, file: !6, line: 646, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !316, file: !6, line: 647, baseType: !7, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !316, file: !6, line: 650, baseType: !139, size: 8, offset: 136)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !316, file: !6, line: 651, baseType: !7, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !6, line: 652, baseType: !7, size: 10, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !316, file: !6, line: 654, baseType: !331, size: 64, offset: 192)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_cpp_hashnode_value", file: !6, line: 633, size: 64, elements: !332)
!332 = !{!333, !356, !366, !367}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !331, file: !6, line: 635, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_macro", file: !6, line: 37, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro", file: !337, line: 36, size: 256, elements: !338)
!337 = !DIFile(filename: "./cpp-id-data.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!338 = !{!339, !341, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !336, file: !337, line: 42, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !336, file: !337, line: 51, baseType: !342, size: 64, offset: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_macro_u", file: !337, line: 47, size: 64, elements: !343)
!343 = !{!344, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tokens", scope: !342, file: !337, line: 49, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !342, file: !337, line: 50, baseType: !137, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !336, file: !337, line: 54, baseType: !248, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !336, file: !337, line: 57, baseType: !7, size: 32, offset: 160)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "paramc", scope: !336, file: !337, line: 60, baseType: !306, size: 16, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "fun_like", scope: !336, file: !337, line: 63, baseType: !7, size: 1, offset: 208, flags: DIFlagBitField, extraData: i64 208)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "variadic", scope: !336, file: !337, line: 66, baseType: !7, size: 1, offset: 209, flags: DIFlagBitField, extraData: i64 208)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "syshdr", scope: !336, file: !337, line: 69, baseType: !7, size: 1, offset: 210, flags: DIFlagBitField, extraData: i64 208)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !336, file: !337, line: 72, baseType: !7, size: 1, offset: 211, flags: DIFlagBitField, extraData: i64 208)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !336, file: !337, line: 75, baseType: !7, size: 1, offset: 212, flags: DIFlagBitField, extraData: i64 208)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "extra_tokens", scope: !336, file: !337, line: 80, baseType: !7, size: 1, offset: 213, flags: DIFlagBitField, extraData: i64 208)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "answers", scope: !331, file: !6, line: 637, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !337, line: 28, size: 320, elements: !359)
!359 = !{!360, !361, !362}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !337, line: 29, baseType: !357, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !358, file: !337, line: 30, baseType: !7, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !358, file: !337, line: 31, baseType: !363, size: 192, offset: 128)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 192, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 1)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !331, file: !6, line: 639, baseType: !5, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !331, file: !6, line: 641, baseType: !306, size: 16)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !308, file: !6, line: 223, baseType: !345, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !308, file: !6, line: 226, baseType: !370, size: 128)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !6, line: 162, size: 128, elements: !371)
!371 = !{!372, !373}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !370, file: !6, line: 163, baseType: !7, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !370, file: !6, line: 164, baseType: !137, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !308, file: !6, line: 229, baseType: !375, size: 32)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !6, line: 195, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !375, file: !6, line: 197, baseType: !7, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !308, file: !6, line: 233, baseType: !7, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !308, file: !6, line: 236, baseType: !7, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ptoken", scope: !295, file: !129, line: 124, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !292, file: !129, line: 155, baseType: !295, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "trad", scope: !289, file: !129, line: 163, baseType: !384, size: 128)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !289, file: !129, line: 159, size: 128, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !384, file: !129, line: 161, baseType: !137, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !384, file: !129, line: 162, baseType: !137, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !282, file: !129, line: 168, baseType: !269, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !282, file: !129, line: 171, baseType: !314, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "direct_p", scope: !282, file: !129, line: 174, baseType: !139, size: 8, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !128, file: !129, line: 346, baseType: !392, size: 64, offset: 1088)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !128, file: !129, line: 349, baseType: !394, size: 64, offset: 1152)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "directive", file: !129, line: 40, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "directive_result", scope: !128, file: !129, line: 352, baseType: !300, size: 192, offset: 1216)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "invocation_location", scope: !128, file: !129, line: 356, baseType: !248, size: 32, offset: 1408)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "set_invocation_location", scope: !128, file: !129, line: 360, baseType: !139, size: 8, offset: 1440)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "quote_include", scope: !128, file: !129, line: 363, baseType: !172, size: 64, offset: 1472)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "bracket_include", scope: !128, file: !129, line: 364, baseType: !172, size: 64, offset: 1536)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "no_search_path", scope: !128, file: !129, line: 365, baseType: !169, size: 512, offset: 1600)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "all_files", scope: !128, file: !129, line: 368, baseType: !157, size: 64, offset: 2112)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "main_file", scope: !128, file: !129, line: 370, baseType: !157, size: 64, offset: 2176)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash", scope: !128, file: !129, line: 373, baseType: !406, size: 64, offset: 2240)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !129, line: 373, flags: DIFlagFwdDecl)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash", scope: !128, file: !129, line: 374, baseType: !406, size: 64, offset: 2304)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash_entries", scope: !128, file: !129, line: 375, baseType: !410, size: 64, offset: 2368)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_hash_entry_pool", file: !129, line: 375, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_hash", scope: !128, file: !129, line: 378, baseType: !406, size: 64, offset: 2432)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_ob", scope: !128, file: !129, line: 379, baseType: !414, size: 704, offset: 2496)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !415, line: 164, size: 704, elements: !416)
!415 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!416 = !{!417, !419, !429, !430, !431, !432, !433, !434, !438, !442, !443, !444, !445}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !414, file: !415, line: 166, baseType: !418, size: 64)
!418 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !414, file: !415, line: 167, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !415, line: 157, size: 192, elements: !422)
!422 = !{!423, !424, !425}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !421, file: !415, line: 159, baseType: !174, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !421, file: !415, line: 160, baseType: !420, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !421, file: !415, line: 161, baseType: !426, size: 32, offset: 128)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 32, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 4)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !414, file: !415, line: 168, baseType: !174, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !414, file: !415, line: 169, baseType: !174, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !414, file: !415, line: 170, baseType: !174, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !414, file: !415, line: 171, baseType: !418, size: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !414, file: !415, line: 172, baseType: !216, size: 32, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !414, file: !415, line: 176, baseType: !435, size: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!420, !209, !418}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !414, file: !415, line: 177, baseType: !439, size: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !209, !420}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !414, file: !415, line: 178, baseType: !209, size: 64, offset: 576)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !414, file: !415, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !414, file: !415, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !414, file: !415, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "quote_ignores_source_dir", scope: !128, file: !129, line: 383, baseType: !139, size: 8, offset: 3200)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "seen_once_only", scope: !128, file: !129, line: 387, baseType: !139, size: 8, offset: 3208)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mi_cmacro", scope: !128, file: !129, line: 390, baseType: !449, size: 64, offset: 3264)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mi_ind_cmacro", scope: !128, file: !129, line: 391, baseType: !449, size: 64, offset: 3328)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mi_valid", scope: !128, file: !129, line: 392, baseType: !139, size: 8, offset: 3392)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "cur_token", scope: !128, file: !129, line: 395, baseType: !345, size: 64, offset: 3456)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "base_run", scope: !128, file: !129, line: 396, baseType: !455, size: 256, offset: 3520)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "tokenrun", file: !129, line: 128, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenrun", file: !129, line: 129, size: 256, elements: !457)
!457 = !{!458, !460, !461, !462}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !129, line: 131, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !456, file: !129, line: 131, baseType: !459, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !456, file: !129, line: 132, baseType: !345, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !456, file: !129, line: 132, baseType: !345, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "cur_run", scope: !128, file: !129, line: 396, baseType: !459, size: 64, offset: 3776)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "lookaheads", scope: !128, file: !129, line: 397, baseType: !7, size: 32, offset: 3840)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "keep_tokens", scope: !128, file: !129, line: 400, baseType: !7, size: 32, offset: 3872)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer", scope: !128, file: !129, line: 403, baseType: !276, size: 64, offset: 3904)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer_len", scope: !128, file: !129, line: 404, baseType: !7, size: 32, offset: 3968)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_cset_desc", scope: !128, file: !129, line: 408, baseType: !200, size: 192, offset: 4032)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_cset_desc", scope: !128, file: !129, line: 412, baseType: !200, size: 192, offset: 4224)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "char16_cset_desc", scope: !128, file: !129, line: 416, baseType: !200, size: 192, offset: 4416)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "char32_cset_desc", scope: !128, file: !129, line: 420, baseType: !200, size: 192, offset: 4608)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "wide_cset_desc", scope: !128, file: !129, line: 424, baseType: !200, size: 192, offset: 4800)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !128, file: !129, line: 427, baseType: !137, size: 64, offset: 4992)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !128, file: !129, line: 428, baseType: !137, size: 64, offset: 5056)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_paste", scope: !128, file: !129, line: 431, baseType: !300, size: 192, offset: 5120)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !128, file: !129, line: 432, baseType: !300, size: 192, offset: 5312)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !128, file: !129, line: 435, baseType: !478, size: 64, offset: 5504)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !6, line: 685, flags: DIFlagFwdDecl)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hash_ob", scope: !128, file: !129, line: 439, baseType: !414, size: 704, offset: 5568)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_ob", scope: !128, file: !129, line: 443, baseType: !414, size: 704, offset: 6272)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pragmas", scope: !128, file: !129, line: 447, baseType: !483, size: 64, offset: 6976)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "pragma_entry", file: !129, line: 447, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !128, file: !129, line: 450, baseType: !486, size: 1088, offset: 7040)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !6, line: 472, size: 1088, elements: !487)
!487 = !{!488, !492, !498, !502, !506, !510, !511, !518, !522, !526, !530, !536, !540, !555, !556, !557, !561}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !486, file: !6, line: 475, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !126, !298, !216}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !486, file: !6, line: 481, baseType: !493, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !126, !496}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !486, file: !6, line: 483, baseType: !499, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !126, !182}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !486, file: !6, line: 484, baseType: !503, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !126, !7, !137, !182, !216, !381}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !486, file: !6, line: 486, baseType: !507, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !126, !7, !314}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !486, file: !6, line: 487, baseType: !507, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !486, file: !6, line: 488, baseType: !512, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !126, !7, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !6, line: 35, baseType: !370)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !486, file: !6, line: 489, baseType: !519, size: 64, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !126, !7}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !486, file: !6, line: 490, baseType: !523, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!216, !126, !182, !216}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !486, file: !6, line: 491, baseType: !527, size: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !126, !182, !216, !182}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !486, file: !6, line: 492, baseType: !531, size: 64, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !6, line: 469, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!182, !126, !182, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !486, file: !6, line: 496, baseType: !537, size: 64, offset: 704)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!314, !126, !298}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !486, file: !6, line: 500, baseType: !541, size: 64, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!139, !126, !216, !248, !7, !182, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !546, line: 14, baseType: !547)
!546 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 216, baseType: !548)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 192, elements: !364)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 216, size: 192, elements: !550)
!550 = !{!551, !552, !553, !554}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !549, file: !3, line: 216, baseType: !7, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !549, file: !3, line: 216, baseType: !7, size: 32, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !549, file: !3, line: 216, baseType: !209, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !549, file: !3, line: 216, baseType: !209, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !486, file: !6, line: 506, baseType: !507, size: 64, offset: 832)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !486, file: !6, line: 507, baseType: !507, size: 64, offset: 896)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !486, file: !6, line: 510, baseType: !558, size: 64, offset: 960)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !126}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !486, file: !6, line: 513, baseType: !562, size: 64, offset: 1024)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !126, !248, !314}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !128, file: !129, line: 453, baseType: !566, size: 64, offset: 8128)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht", file: !320, line: 46, size: 1152, elements: !568)
!568 = !{!569, !570, !574, !580, !584, !585, !586, !588, !589, !590}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !567, file: !320, line: 49, baseType: !414, size: 704)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !567, file: !320, line: 51, baseType: !571, size: 64, offset: 704)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashnode", file: !320, line: 41, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_node", scope: !567, file: !320, line: 53, baseType: !575, size: 64, offset: 768)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!572, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !320, line: 40, baseType: !567)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_subobject", scope: !567, file: !320, line: 56, baseType: !581, size: 64, offset: 832)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!209, !210}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !567, file: !320, line: 58, baseType: !7, size: 32, offset: 896)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !567, file: !320, line: 59, baseType: !7, size: 32, offset: 928)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !567, file: !320, line: 62, baseType: !587, size: 64, offset: 960)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !567, file: !320, line: 65, baseType: !7, size: 32, offset: 1024)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !567, file: !320, line: 66, baseType: !7, size: 32, offset: 1056)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !567, file: !320, line: 69, baseType: !139, size: 8, offset: 1088)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "op_stack", scope: !128, file: !129, line: 456, baseType: !592, size: 64, offset: 8192)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !3, line: 31, size: 320, elements: !594)
!594 = !{!595, !596, !606, !607}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !593, file: !3, line: 33, baseType: !298, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !593, file: !3, line: 34, baseType: !597, size: 192, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_num", file: !6, line: 771, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_num", file: !6, line: 772, size: 192, elements: !599)
!599 = !{!600, !603, !604, !605}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !598, file: !6, line: 774, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_num_part", file: !6, line: 770, baseType: !602)
!602 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !598, file: !6, line: 775, baseType: !601, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "unsignedp", scope: !598, file: !6, line: 776, baseType: !139, size: 8, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !598, file: !6, line: 777, baseType: !139, size: 8, offset: 136)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !593, file: !3, line: 35, baseType: !248, size: 32, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !593, file: !3, line: 36, baseType: !19, size: 32, offset: 288)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "op_limit", scope: !128, file: !129, line: 456, baseType: !592, size: 64, offset: 8256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !128, file: !129, line: 459, baseType: !610, size: 1024, offset: 8320)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !6, line: 279, size: 1024, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !610, file: !6, line: 282, baseType: !7, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !610, file: !6, line: 285, baseType: !99, size: 32, offset: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !610, file: !6, line: 288, baseType: !139, size: 8, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !610, file: !6, line: 291, baseType: !139, size: 8, offset: 72)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !610, file: !6, line: 296, baseType: !139, size: 8, offset: 80)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !610, file: !6, line: 299, baseType: !139, size: 8, offset: 88)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !610, file: !6, line: 303, baseType: !139, size: 8, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !610, file: !6, line: 306, baseType: !139, size: 8, offset: 104)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !610, file: !6, line: 309, baseType: !139, size: 8, offset: 112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !610, file: !6, line: 312, baseType: !139, size: 8, offset: 120)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !610, file: !6, line: 315, baseType: !139, size: 8, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !610, file: !6, line: 318, baseType: !139, size: 8, offset: 136)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !610, file: !6, line: 321, baseType: !139, size: 8, offset: 144)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !610, file: !6, line: 324, baseType: !139, size: 8, offset: 152)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !610, file: !6, line: 328, baseType: !139, size: 8, offset: 160)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !610, file: !6, line: 331, baseType: !139, size: 8, offset: 168)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !610, file: !6, line: 334, baseType: !139, size: 8, offset: 176)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !610, file: !6, line: 338, baseType: !139, size: 8, offset: 184)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !610, file: !6, line: 341, baseType: !139, size: 8, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !610, file: !6, line: 344, baseType: !139, size: 8, offset: 200)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !610, file: !6, line: 348, baseType: !139, size: 8, offset: 208)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !610, file: !6, line: 352, baseType: !139, size: 8, offset: 216)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !610, file: !6, line: 356, baseType: !139, size: 8, offset: 224)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !610, file: !6, line: 360, baseType: !139, size: 8, offset: 232)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !610, file: !6, line: 363, baseType: !139, size: 8, offset: 240)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !610, file: !6, line: 366, baseType: !139, size: 8, offset: 248)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !610, file: !6, line: 370, baseType: !139, size: 8, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !610, file: !6, line: 373, baseType: !139, size: 8, offset: 264)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !610, file: !6, line: 376, baseType: !139, size: 8, offset: 272)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !610, file: !6, line: 379, baseType: !139, size: 8, offset: 280)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !610, file: !6, line: 382, baseType: !139, size: 8, offset: 288)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !610, file: !6, line: 385, baseType: !139, size: 8, offset: 296)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !610, file: !6, line: 389, baseType: !139, size: 8, offset: 304)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !610, file: !6, line: 392, baseType: !139, size: 8, offset: 312)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !610, file: !6, line: 395, baseType: !139, size: 8, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !610, file: !6, line: 398, baseType: !139, size: 8, offset: 328)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !610, file: !6, line: 401, baseType: !139, size: 8, offset: 336)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !610, file: !6, line: 404, baseType: !182, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !610, file: !6, line: 407, baseType: !182, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !610, file: !6, line: 410, baseType: !182, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !610, file: !6, line: 414, baseType: !111, size: 32, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !610, file: !6, line: 417, baseType: !139, size: 8, offset: 608)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !610, file: !6, line: 420, baseType: !139, size: 8, offset: 616)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !610, file: !6, line: 441, baseType: !656, size: 64, offset: 640)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !610, file: !6, line: 423, size: 64, elements: !657)
!657 = !{!658, !659, !660, !661, !662}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !656, file: !6, line: 426, baseType: !117, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !656, file: !6, line: 429, baseType: !139, size: 8, offset: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !656, file: !6, line: 433, baseType: !139, size: 8, offset: 40)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !656, file: !6, line: 436, baseType: !139, size: 8, offset: 48)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !656, file: !6, line: 440, baseType: !139, size: 8, offset: 56)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !610, file: !6, line: 447, baseType: !210, size: 64, offset: 704)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !610, file: !6, line: 447, baseType: !210, size: 64, offset: 768)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !610, file: !6, line: 447, baseType: !210, size: 64, offset: 832)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !610, file: !6, line: 447, baseType: !210, size: 64, offset: 896)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !610, file: !6, line: 450, baseType: !139, size: 8, offset: 960)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !610, file: !6, line: 450, baseType: !139, size: 8, offset: 968)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !610, file: !6, line: 454, baseType: !139, size: 8, offset: 976)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !610, file: !6, line: 457, baseType: !139, size: 8, offset: 984)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !610, file: !6, line: 460, baseType: !139, size: 8, offset: 992)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "spec_nodes", scope: !128, file: !129, line: 463, baseType: !673, size: 256, offset: 9344)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spec_nodes", file: !129, line: 227, size: 256, elements: !674)
!674 = !{!675, !676, !677, !678}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "n_defined", scope: !673, file: !129, line: 229, baseType: !314, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "n_true", scope: !673, file: !129, line: 230, baseType: !314, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "n_false", scope: !673, file: !129, line: 231, baseType: !314, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "n__VA_ARGS__", scope: !673, file: !129, line: 232, baseType: !314, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "our_hashtable", scope: !128, file: !129, line: 466, baseType: !139, size: 8, offset: 9600)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !128, file: !129, line: 475, baseType: !681, size: 256, offset: 9664)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !128, file: !129, line: 469, size: 256, elements: !682)
!682 = !{!683, !684, !685, !686}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !681, file: !129, line: 471, baseType: !276, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !681, file: !129, line: 472, baseType: !276, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !681, file: !129, line: 473, baseType: !276, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !681, file: !129, line: 474, baseType: !248, size: 32, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cur", scope: !128, file: !129, line: 478, baseType: !137, size: 64, offset: 9920)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "saved_rlimit", scope: !128, file: !129, line: 478, baseType: !137, size: 64, offset: 9984)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "saved_line_base", scope: !128, file: !129, line: 478, baseType: !137, size: 64, offset: 10048)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "savedstate", scope: !128, file: !129, line: 482, baseType: !691, size: 64, offset: 10112)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_savedstate", file: !129, line: 482, flags: DIFlagFwdDecl)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !128, file: !129, line: 485, baseType: !7, size: 32, offset: 10176)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "comments", scope: !128, file: !129, line: 488, baseType: !695, size: 128, offset: 10240)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment_table", file: !6, line: 901, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 891, size: 128, elements: !697)
!697 = !{!698, !705, !706}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !696, file: !6, line: 894, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment", file: !6, line: 887, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 880, size: 128, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !701, file: !6, line: 883, baseType: !174, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sloc", scope: !701, file: !6, line: 886, baseType: !248, size: 32, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !696, file: !6, line: 897, baseType: !216, size: 32, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !696, file: !6, line: 900, baseType: !216, size: 32, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pushed_macros", scope: !128, file: !129, line: 491, baseType: !708, size: 64, offset: 10368)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_pragma_macro", file: !129, line: 310, size: 192, elements: !710)
!710 = !{!711, !712, !713}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !129, line: 312, baseType: !708, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !709, file: !129, line: 314, baseType: !174, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !709, file: !129, line: 316, baseType: !334, size: 64, offset: 128)
!714 = !{!715, !716, !717, !721, !722, !723, !724, !725, !726, !727, !731, !736, !737, !738}
!715 = !DILocalVariable(name: "pfile", arg: 1, scope: !123, file: !3, line: 227, type: !126)
!716 = !DILocalVariable(name: "token", arg: 2, scope: !123, file: !3, line: 227, type: !298)
!717 = !DILocalVariable(name: "str", scope: !123, file: !3, line: 229, type: !718)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !337, line: 22, baseType: !139)
!721 = !DILocalVariable(name: "limit", scope: !123, file: !3, line: 230, type: !718)
!722 = !DILocalVariable(name: "max_digit", scope: !123, file: !3, line: 231, type: !7)
!723 = !DILocalVariable(name: "result", scope: !123, file: !3, line: 231, type: !7)
!724 = !DILocalVariable(name: "radix", scope: !123, file: !3, line: 231, type: !7)
!725 = !DILocalVariable(name: "float_flag", scope: !123, file: !3, line: 232, type: !122)
!726 = !DILocalVariable(name: "seen_digit", scope: !123, file: !3, line: 233, type: !139)
!727 = !DILocalVariable(name: "c", scope: !728, file: !3, line: 269, type: !7)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 268, column: 5)
!729 = distinct !DILexicalBlock(scope: !730, file: !3, line: 267, column: 3)
!730 = distinct !DILexicalBlock(scope: !123, file: !3, line: 267, column: 3)
!731 = !DILocalVariable(name: "u_or_i", scope: !732, file: !3, line: 420, type: !216)
!732 = distinct !DILexicalBlock(scope: !733, file: !3, line: 419, column: 2)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 418, column: 11)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 406, column: 5)
!735 = distinct !DILexicalBlock(scope: !123, file: !3, line: 330, column: 7)
!736 = !DILocalVariable(name: "large", scope: !732, file: !3, line: 421, type: !216)
!737 = !DILabel(scope: !123, name: "syntax_ok", file: !3, line: 440)
!738 = !DILabel(scope: !123, name: "syntax_error", file: !3, line: 459)
!739 = !{!740, !741, !742}
!740 = !DIEnumerator(name: "NOT_FLOAT", value: 0, isUnsigned: true)
!741 = !DIEnumerator(name: "AFTER_POINT", value: 1, isUnsigned: true)
!742 = !DIEnumerator(name: "AFTER_EXPON", value: 2, isUnsigned: true)
!743 = !{!306, !7, !139, !216, !601, !19, !210, !592, !209, !744}
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "cppchar_signed_t", file: !6, line: 259, baseType: !216)
!745 = !{!0}
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 464, elements: !752)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_operator", file: !3, line: 856, size: 16, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !748, file: !3, line: 858, baseType: !720, size: 8)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !3, line: 859, baseType: !720, size: 8, offset: 8)
!752 = !{!753}
!753 = !DISubrange(count: 29)
!754 = !{i32 2, !"Dwarf Version", i32 4}
!755 = !{i32 2, !"Debug Info Version", i32 3}
!756 = !{i32 1, !"wchar_size", i32 4}
!757 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!758 = distinct !DISubprogram(name: "tolower", scope: !759, file: !759, line: 207, type: !760, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !762)
!759 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!760 = !DISubroutineType(types: !761)
!761 = !{!216, !216}
!762 = !{!763}
!763 = !DILocalVariable(name: "__c", arg: 1, scope: !758, file: !759, line: 207, type: !216)
!764 = !DILocation(line: 0, scope: !758)
!765 = !DILocation(line: 209, column: 22, scope: !758)
!766 = !DILocation(line: 209, column: 39, scope: !758)
!767 = !DILocation(line: 209, column: 38, scope: !758)
!768 = !DILocation(line: 209, column: 37, scope: !758)
!769 = !DILocation(line: 209, column: 10, scope: !758)
!770 = !DILocation(line: 209, column: 3, scope: !758)
!771 = distinct !DISubprogram(name: "toupper", scope: !759, file: !759, line: 213, type: !760, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !772)
!772 = !{!773}
!773 = !DILocalVariable(name: "__c", arg: 1, scope: !771, file: !759, line: 213, type: !216)
!774 = !DILocation(line: 0, scope: !771)
!775 = !DILocation(line: 215, column: 22, scope: !771)
!776 = !DILocation(line: 215, column: 39, scope: !771)
!777 = !DILocation(line: 215, column: 38, scope: !771)
!778 = !DILocation(line: 215, column: 37, scope: !771)
!779 = !DILocation(line: 215, column: 10, scope: !771)
!780 = !DILocation(line: 215, column: 3, scope: !771)
!781 = !DILocation(line: 0, scope: !123)
!782 = !DILocation(line: 229, column: 37, scope: !123)
!783 = !DILocation(line: 237, column: 22, scope: !784)
!784 = distinct !DILexicalBlock(scope: !123, file: !3, line: 237, column: 7)
!785 = !DILocation(line: 237, column: 26, scope: !784)
!786 = !DILocation(line: 237, column: 7, scope: !123)
!787 = !DILocation(line: 240, column: 15, scope: !123)
!788 = !DILocation(line: 247, column: 7, scope: !789)
!789 = distinct !DILexicalBlock(scope: !123, file: !3, line: 247, column: 7)
!790 = !DILocation(line: 247, column: 12, scope: !789)
!791 = !DILocation(line: 247, column: 7, scope: !123)
!792 = !DILocation(line: 250, column: 10, scope: !793)
!793 = distinct !DILexicalBlock(scope: !789, file: !3, line: 248, column: 5)
!794 = !DILocation(line: 253, column: 12, scope: !795)
!795 = distinct !DILexicalBlock(scope: !793, file: !3, line: 253, column: 11)
!796 = !DILocation(line: 253, column: 17, scope: !795)
!797 = !DILocation(line: 253, column: 24, scope: !795)
!798 = !DILocation(line: 253, column: 32, scope: !795)
!799 = !DILocation(line: 254, column: 4, scope: !795)
!800 = !DILocation(line: 254, column: 8, scope: !795)
!801 = !DILocation(line: 254, column: 15, scope: !795)
!802 = !DILocation(line: 254, column: 22, scope: !795)
!803 = !DILocation(line: 254, column: 25, scope: !795)
!804 = !DILocation(line: 253, column: 11, scope: !793)
!805 = !DILocation(line: 258, column: 2, scope: !806)
!806 = distinct !DILexicalBlock(scope: !795, file: !3, line: 255, column: 2)
!807 = !DILocation(line: 259, column: 22, scope: !808)
!808 = distinct !DILexicalBlock(scope: !795, file: !3, line: 259, column: 16)
!809 = !DILocation(line: 259, column: 29, scope: !808)
!810 = !DILocation(line: 259, column: 37, scope: !808)
!811 = !DILocation(line: 259, column: 45, scope: !808)
!812 = !DILocation(line: 259, column: 49, scope: !808)
!813 = !DILocation(line: 259, column: 56, scope: !808)
!814 = !DILocation(line: 259, column: 63, scope: !808)
!815 = !DILocation(line: 259, column: 73, scope: !808)
!816 = !DILocation(line: 259, column: 16, scope: !795)
!817 = !DILocation(line: 263, column: 2, scope: !818)
!818 = distinct !DILexicalBlock(scope: !808, file: !3, line: 260, column: 2)
!819 = !DILocation(line: 0, scope: !820)
!820 = distinct !DILexicalBlock(scope: !728, file: !3, line: 271, column: 11)
!821 = !DILocation(line: 0, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !3, line: 285, column: 16)
!823 = distinct !DILexicalBlock(scope: !820, file: !3, line: 278, column: 16)
!824 = !DILocation(line: 267, column: 3, scope: !123)
!825 = !DILocation(line: 241, column: 14, scope: !123)
!826 = !DILocation(line: 269, column: 28, scope: !728)
!827 = !DILocation(line: 269, column: 24, scope: !728)
!828 = !DILocation(line: 0, scope: !728)
!829 = !DILocation(line: 271, column: 11, scope: !820)
!830 = !DILocation(line: 271, column: 23, scope: !820)
!831 = !DILocation(line: 271, column: 27, scope: !820)
!832 = !DILocation(line: 271, column: 40, scope: !820)
!833 = !DILocation(line: 278, column: 18, scope: !823)
!834 = !DILocation(line: 278, column: 16, scope: !820)
!835 = !DILocation(line: 285, column: 42, scope: !822)
!836 = !DILocation(line: 286, column: 25, scope: !822)
!837 = !DILocation(line: 286, column: 38, scope: !822)
!838 = !DILocation(line: 295, column: 4, scope: !839)
!839 = distinct !DILexicalBlock(scope: !822, file: !3, line: 292, column: 2)
!840 = !DILocation(line: 280, column: 19, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 280, column: 8)
!842 = distinct !DILexicalBlock(scope: !823, file: !3, line: 279, column: 2)
!843 = !DILocation(line: 280, column: 8, scope: !842)
!844 = !DILocation(line: 283, column: 6, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !3, line: 283, column: 6)
!846 = !DILocation(line: 274, column: 8, scope: !847)
!847 = distinct !DILexicalBlock(scope: !820, file: !3, line: 272, column: 2)
!848 = !DILocation(line: 275, column: 10, scope: !849)
!849 = distinct !DILexicalBlock(scope: !847, file: !3, line: 275, column: 8)
!850 = !DILocation(line: 275, column: 8, scope: !847)
!851 = !DILocation(line: 277, column: 2, scope: !847)
!852 = distinct !{!852, !853, !854}
!853 = !DILocation(line: 267, column: 3, scope: !730)
!854 = !DILocation(line: 297, column: 5, scope: !730)
!855 = !DILocation(line: 461, column: 1, scope: !123)
!856 = !DILocation(line: 300, column: 13, scope: !857)
!857 = distinct !DILexicalBlock(scope: !123, file: !3, line: 300, column: 7)
!858 = !DILocation(line: 300, column: 33, scope: !857)
!859 = !DILocation(line: 300, column: 19, scope: !857)
!860 = !DILocation(line: 302, column: 51, scope: !861)
!861 = distinct !DILexicalBlock(scope: !857, file: !3, line: 301, column: 5)
!862 = !DILocation(line: 302, column: 16, scope: !861)
!863 = !DILocation(line: 303, column: 34, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !3, line: 303, column: 11)
!865 = !DILocation(line: 305, column: 11, scope: !866)
!866 = distinct !DILexicalBlock(scope: !864, file: !3, line: 304, column: 2)
!867 = !DILocation(line: 307, column: 14, scope: !868)
!868 = distinct !DILexicalBlock(scope: !866, file: !3, line: 307, column: 8)
!869 = !DILocation(line: 307, column: 8, scope: !866)
!870 = !DILocation(line: 310, column: 8, scope: !871)
!871 = distinct !DILexicalBlock(scope: !866, file: !3, line: 310, column: 8)
!872 = !DILocation(line: 310, column: 8, scope: !866)
!873 = !DILocation(line: 311, column: 6, scope: !871)
!874 = !DILocation(line: 319, column: 18, scope: !875)
!875 = distinct !DILexicalBlock(scope: !123, file: !3, line: 319, column: 7)
!876 = !DILocation(line: 319, column: 40, scope: !875)
!877 = !DILocation(line: 319, column: 31, scope: !875)
!878 = !DILocation(line: 322, column: 17, scope: !879)
!879 = distinct !DILexicalBlock(scope: !123, file: !3, line: 322, column: 7)
!880 = !DILocation(line: 322, column: 7, scope: !123)
!881 = !DILocation(line: 324, column: 17, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 324, column: 11)
!883 = distinct !DILexicalBlock(scope: !879, file: !3, line: 323, column: 5)
!884 = !DILocation(line: 0, scope: !882)
!885 = !DILocation(line: 324, column: 11, scope: !883)
!886 = !DILocation(line: 325, column: 2, scope: !887)
!887 = distinct !DILexicalBlock(scope: !882, file: !3, line: 325, column: 2)
!888 = !DILocation(line: 327, column: 2, scope: !889)
!889 = distinct !DILexicalBlock(scope: !882, file: !3, line: 327, column: 2)
!890 = !DILocation(line: 330, column: 7, scope: !123)
!891 = !DILocation(line: 332, column: 11, scope: !892)
!892 = distinct !DILexicalBlock(scope: !735, file: !3, line: 331, column: 5)
!893 = !DILocation(line: 334, column: 4, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !3, line: 333, column: 2)
!895 = distinct !DILexicalBlock(scope: !892, file: !3, line: 332, column: 11)
!896 = !DILocation(line: 336, column: 4, scope: !894)
!897 = !DILocation(line: 339, column: 27, scope: !898)
!898 = distinct !DILexicalBlock(scope: !892, file: !3, line: 339, column: 11)
!899 = !DILocation(line: 339, column: 11, scope: !892)
!900 = !DILocation(line: 340, column: 2, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !3, line: 340, column: 2)
!902 = !DILocation(line: 342, column: 23, scope: !903)
!903 = distinct !DILexicalBlock(scope: !892, file: !3, line: 342, column: 11)
!904 = !DILocation(line: 342, column: 26, scope: !903)
!905 = !DILocation(line: 342, column: 47, scope: !903)
!906 = !DILocation(line: 342, column: 51, scope: !903)
!907 = !DILocation(line: 342, column: 11, scope: !892)
!908 = !DILocation(line: 343, column: 2, scope: !903)
!909 = !DILocation(line: 346, column: 22, scope: !910)
!910 = distinct !DILexicalBlock(scope: !892, file: !3, line: 346, column: 11)
!911 = !DILocation(line: 346, column: 11, scope: !892)
!912 = !DILocation(line: 348, column: 8, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 348, column: 8)
!914 = distinct !DILexicalBlock(scope: !910, file: !3, line: 347, column: 2)
!915 = !DILocation(line: 348, column: 13, scope: !913)
!916 = !DILocation(line: 348, column: 20, scope: !913)
!917 = !DILocation(line: 348, column: 28, scope: !913)
!918 = !DILocation(line: 348, column: 8, scope: !914)
!919 = !DILocation(line: 349, column: 9, scope: !913)
!920 = !DILocation(line: 352, column: 9, scope: !921)
!921 = distinct !DILexicalBlock(scope: !914, file: !3, line: 352, column: 8)
!922 = !DILocation(line: 349, column: 6, scope: !913)
!923 = !DILocation(line: 352, column: 8, scope: !914)
!924 = !DILocation(line: 355, column: 4, scope: !914)
!925 = !DILocation(line: 353, column: 6, scope: !926)
!926 = distinct !DILexicalBlock(scope: !921, file: !3, line: 353, column: 6)
!927 = !DILocation(line: 0, scope: !914)
!928 = !DILocation(line: 356, column: 9, scope: !914)
!929 = !DILocation(line: 357, column: 11, scope: !914)
!930 = !DILocation(line: 356, column: 6, scope: !914)
!931 = distinct !{!931, !924, !932}
!932 = !DILocation(line: 357, column: 25, scope: !914)
!933 = !DILocation(line: 359, column: 22, scope: !934)
!934 = distinct !DILexicalBlock(scope: !910, file: !3, line: 359, column: 16)
!935 = !DILocation(line: 359, column: 16, scope: !910)
!936 = !DILocation(line: 360, column: 2, scope: !937)
!937 = distinct !DILexicalBlock(scope: !934, file: !3, line: 360, column: 2)
!938 = !DILocation(line: 362, column: 51, scope: !892)
!939 = !DILocation(line: 362, column: 16, scope: !892)
!940 = !DILocation(line: 363, column: 18, scope: !941)
!941 = distinct !DILexicalBlock(scope: !892, file: !3, line: 363, column: 11)
!942 = !DILocation(line: 363, column: 11, scope: !892)
!943 = !DILocation(line: 367, column: 8, scope: !944)
!944 = distinct !DILexicalBlock(scope: !941, file: !3, line: 364, column: 2)
!945 = !DILocation(line: 365, column: 4, scope: !944)
!946 = !DILocation(line: 368, column: 4, scope: !944)
!947 = !DILocation(line: 372, column: 17, scope: !948)
!948 = distinct !DILexicalBlock(scope: !892, file: !3, line: 372, column: 11)
!949 = !DILocation(line: 373, column: 4, scope: !948)
!950 = !DILocation(line: 373, column: 7, scope: !948)
!951 = !DILocation(line: 374, column: 4, scope: !948)
!952 = !DILocation(line: 374, column: 9, scope: !948)
!953 = !DILocation(line: 372, column: 11, scope: !892)
!954 = !DILocation(line: 377, column: 6, scope: !948)
!955 = !DILocation(line: 375, column: 2, scope: !948)
!956 = !DILocation(line: 382, column: 19, scope: !957)
!957 = distinct !DILexicalBlock(scope: !892, file: !3, line: 382, column: 11)
!958 = !DILocation(line: 382, column: 36, scope: !957)
!959 = !DILocation(line: 382, column: 39, scope: !957)
!960 = !DILocation(line: 382, column: 11, scope: !892)
!961 = !DILocation(line: 383, column: 2, scope: !957)
!962 = !DILocation(line: 387, column: 19, scope: !963)
!963 = distinct !DILexicalBlock(scope: !892, file: !3, line: 387, column: 11)
!964 = !DILocation(line: 387, column: 44, scope: !963)
!965 = !DILocation(line: 387, column: 35, scope: !963)
!966 = !DILocation(line: 391, column: 22, scope: !967)
!967 = distinct !DILexicalBlock(scope: !963, file: !3, line: 388, column: 9)
!968 = !DILocation(line: 389, column: 11, scope: !967)
!969 = !DILocation(line: 392, column: 11, scope: !967)
!970 = !DILocation(line: 395, column: 19, scope: !971)
!971 = distinct !DILexicalBlock(scope: !892, file: !3, line: 395, column: 11)
!972 = !DILocation(line: 395, column: 50, scope: !971)
!973 = !DILocation(line: 395, column: 53, scope: !971)
!974 = !DILocation(line: 395, column: 11, scope: !892)
!975 = !DILocation(line: 396, column: 2, scope: !971)
!976 = !DILocation(line: 399, column: 19, scope: !977)
!977 = distinct !DILexicalBlock(scope: !892, file: !3, line: 399, column: 11)
!978 = !DILocation(line: 399, column: 35, scope: !977)
!979 = !DILocation(line: 399, column: 38, scope: !977)
!980 = !DILocation(line: 399, column: 11, scope: !892)
!981 = !DILocation(line: 400, column: 2, scope: !977)
!982 = !DILocation(line: 403, column: 14, scope: !892)
!983 = !DILocation(line: 404, column: 5, scope: !892)
!984 = !DILocation(line: 407, column: 49, scope: !734)
!985 = !DILocation(line: 407, column: 16, scope: !734)
!986 = !DILocation(line: 408, column: 18, scope: !987)
!987 = distinct !DILexicalBlock(scope: !734, file: !3, line: 408, column: 11)
!988 = !DILocation(line: 408, column: 11, scope: !734)
!989 = !DILocation(line: 412, column: 8, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !3, line: 409, column: 2)
!991 = !DILocation(line: 410, column: 4, scope: !990)
!992 = !DILocation(line: 413, column: 4, scope: !990)
!993 = !DILocation(line: 418, column: 11, scope: !733)
!994 = !DILocation(line: 418, column: 36, scope: !733)
!995 = !DILocation(line: 418, column: 41, scope: !733)
!996 = !DILocation(line: 418, column: 11, scope: !734)
!997 = !DILocation(line: 420, column: 25, scope: !732)
!998 = !DILocation(line: 0, scope: !732)
!999 = !DILocation(line: 423, column: 8, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !732, file: !3, line: 423, column: 8)
!1001 = !DILocation(line: 423, column: 15, scope: !1000)
!1002 = !DILocation(line: 421, column: 24, scope: !732)
!1003 = !DILocation(line: 421, column: 39, scope: !732)
!1004 = !DILocation(line: 423, column: 25, scope: !1000)
!1005 = !DILocation(line: 423, column: 28, scope: !1000)
!1006 = !DILocation(line: 423, column: 8, scope: !732)
!1007 = !DILocation(line: 426, column: 10, scope: !1000)
!1008 = !DILocation(line: 424, column: 6, scope: !1000)
!1009 = !DILocation(line: 429, column: 19, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !734, file: !3, line: 429, column: 11)
!1011 = !DILocation(line: 429, column: 34, scope: !1010)
!1012 = !DILocation(line: 430, column: 4, scope: !1010)
!1013 = !DILocation(line: 430, column: 7, scope: !1010)
!1014 = !DILocation(line: 429, column: 11, scope: !734)
!1015 = !DILocation(line: 432, column: 6, scope: !1010)
!1016 = !DILocation(line: 433, column: 6, scope: !1010)
!1017 = !DILocation(line: 431, column: 2, scope: !1010)
!1018 = !DILocation(line: 437, column: 14, scope: !734)
!1019 = !DILocation(line: 440, column: 2, scope: !123)
!1020 = !DILocation(line: 441, column: 15, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !123, file: !3, line: 441, column: 7)
!1022 = !DILocation(line: 441, column: 34, scope: !1021)
!1023 = !DILocation(line: 441, column: 37, scope: !1021)
!1024 = !DILocation(line: 441, column: 7, scope: !123)
!1025 = !DILocation(line: 442, column: 5, scope: !1021)
!1026 = !DILocation(line: 444, column: 18, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !123, file: !3, line: 444, column: 7)
!1028 = !DILocation(line: 444, column: 21, scope: !1027)
!1029 = !DILocation(line: 444, column: 7, scope: !123)
!1030 = !DILocation(line: 445, column: 5, scope: !1027)
!1031 = !DILocation(line: 448, column: 7, scope: !123)
!1032 = !DILocation(line: 449, column: 12, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !123, file: !3, line: 448, column: 7)
!1034 = !DILocation(line: 449, column: 5, scope: !1033)
!1035 = !DILocation(line: 451, column: 12, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 450, column: 12)
!1037 = !DILocation(line: 451, column: 5, scope: !1036)
!1038 = !DILocation(line: 453, column: 12, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 452, column: 12)
!1040 = !DILocation(line: 453, column: 5, scope: !1039)
!1041 = !DILocation(line: 455, column: 12, scope: !1039)
!1042 = distinct !DISubprogram(name: "interpret_float_suffix", scope: !3, file: !3, line: 85, type: !1043, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!7, !718, !210}
!1045 = !{!1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055}
!1046 = !DILocalVariable(name: "s", arg: 1, scope: !1042, file: !3, line: 85, type: !718)
!1047 = !DILocalVariable(name: "len", arg: 2, scope: !1042, file: !3, line: 85, type: !210)
!1048 = !DILocalVariable(name: "flags", scope: !1042, file: !3, line: 87, type: !210)
!1049 = !DILocalVariable(name: "f", scope: !1042, file: !3, line: 88, type: !210)
!1050 = !DILocalVariable(name: "d", scope: !1042, file: !3, line: 88, type: !210)
!1051 = !DILocalVariable(name: "l", scope: !1042, file: !3, line: 88, type: !210)
!1052 = !DILocalVariable(name: "w", scope: !1042, file: !3, line: 88, type: !210)
!1053 = !DILocalVariable(name: "q", scope: !1042, file: !3, line: 88, type: !210)
!1054 = !DILocalVariable(name: "i", scope: !1042, file: !3, line: 88, type: !210)
!1055 = !DILocalVariable(name: "uppercase", scope: !1056, file: !3, line: 97, type: !139)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 96, column: 5)
!1057 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 95, column: 7)
!1058 = !DILocation(line: 0, scope: !1042)
!1059 = !DILocation(line: 95, column: 11, scope: !1057)
!1060 = !DILocation(line: 95, column: 16, scope: !1057)
!1061 = !DILocation(line: 95, column: 20, scope: !1057)
!1062 = !DILocation(line: 95, column: 23, scope: !1057)
!1063 = !DILocation(line: 95, column: 30, scope: !1057)
!1064 = !DILocation(line: 95, column: 36, scope: !1057)
!1065 = !DILocation(line: 95, column: 7, scope: !1042)
!1066 = !DILocation(line: 97, column: 28, scope: !1056)
!1067 = !DILocation(line: 0, scope: !1056)
!1068 = !DILocation(line: 98, column: 15, scope: !1056)
!1069 = !DILocation(line: 98, column: 7, scope: !1056)
!1070 = !DILocation(line: 100, column: 25, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 99, column: 7)
!1072 = !DILocation(line: 100, column: 17, scope: !1071)
!1073 = !DILocation(line: 101, column: 25, scope: !1071)
!1074 = !DILocation(line: 101, column: 17, scope: !1071)
!1075 = !DILocation(line: 102, column: 25, scope: !1071)
!1076 = !DILocation(line: 102, column: 17, scope: !1071)
!1077 = !DILocation(line: 103, column: 25, scope: !1071)
!1078 = !DILocation(line: 103, column: 17, scope: !1071)
!1079 = !DILocation(line: 104, column: 25, scope: !1071)
!1080 = !DILocation(line: 104, column: 17, scope: !1071)
!1081 = !DILocation(line: 105, column: 25, scope: !1071)
!1082 = !DILocation(line: 105, column: 17, scope: !1071)
!1083 = !DILocation(line: 114, column: 16, scope: !1042)
!1084 = !DILocation(line: 114, column: 11, scope: !1042)
!1085 = !DILocation(line: 114, column: 3, scope: !1042)
!1086 = !DILocation(line: 117, column: 46, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 115, column: 5)
!1088 = !DILocation(line: 118, column: 14, scope: !1087)
!1089 = !DILocation(line: 123, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 123, column: 7)
!1091 = !DILocation(line: 123, column: 7, scope: !1042)
!1092 = !DILocation(line: 164, column: 3, scope: !1042)
!1093 = !DILocation(line: 125, column: 15, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 125, column: 11)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 124, column: 5)
!1096 = !DILocation(line: 125, column: 11, scope: !1095)
!1097 = !DILocation(line: 126, column: 9, scope: !1094)
!1098 = !DILocation(line: 126, column: 2, scope: !1094)
!1099 = !DILocation(line: 129, column: 11, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 129, column: 11)
!1101 = !DILocation(line: 129, column: 14, scope: !1100)
!1102 = !DILocation(line: 129, column: 21, scope: !1100)
!1103 = !DILocation(line: 129, column: 27, scope: !1100)
!1104 = !DILocation(line: 129, column: 11, scope: !1095)
!1105 = !DILocation(line: 131, column: 10, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 130, column: 2)
!1107 = !DILocation(line: 132, column: 12, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 132, column: 8)
!1109 = !DILocation(line: 132, column: 8, scope: !1106)
!1110 = !DILocation(line: 133, column: 13, scope: !1108)
!1111 = !DILocation(line: 133, column: 6, scope: !1108)
!1112 = !DILocation(line: 134, column: 7, scope: !1106)
!1113 = !DILocation(line: 135, column: 5, scope: !1106)
!1114 = !DILocation(line: 138, column: 15, scope: !1095)
!1115 = !DILocation(line: 136, column: 9, scope: !1106)
!1116 = !DILocation(line: 0, scope: !1095)
!1117 = !DILocation(line: 138, column: 7, scope: !1095)
!1118 = !DILocation(line: 141, column: 10, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 141, column: 6)
!1120 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 139, column: 7)
!1121 = !DILocation(line: 141, column: 6, scope: !1120)
!1122 = !DILocation(line: 142, column: 11, scope: !1119)
!1123 = !DILocation(line: 142, column: 4, scope: !1119)
!1124 = !DILocation(line: 145, column: 6, scope: !1120)
!1125 = !DILocation(line: 146, column: 11, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 145, column: 6)
!1127 = !DILocation(line: 146, column: 4, scope: !1126)
!1128 = !DILocation(line: 147, column: 18, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 147, column: 6)
!1130 = !DILocation(line: 147, column: 23, scope: !1129)
!1131 = !DILocation(line: 147, column: 6, scope: !1120)
!1132 = !DILocation(line: 148, column: 11, scope: !1129)
!1133 = !DILocation(line: 148, column: 4, scope: !1129)
!1134 = !DILocation(line: 151, column: 6, scope: !1120)
!1135 = !DILocation(line: 152, column: 11, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 151, column: 6)
!1137 = !DILocation(line: 152, column: 4, scope: !1136)
!1138 = !DILocation(line: 153, column: 18, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 153, column: 6)
!1140 = !DILocation(line: 153, column: 23, scope: !1139)
!1141 = !DILocation(line: 153, column: 6, scope: !1120)
!1142 = !DILocation(line: 154, column: 11, scope: !1139)
!1143 = !DILocation(line: 154, column: 4, scope: !1139)
!1144 = !DILocation(line: 91, column: 21, scope: !1042)
!1145 = !DILocation(line: 91, column: 17, scope: !1042)
!1146 = !DILocation(line: 91, column: 13, scope: !1042)
!1147 = !DILocation(line: 91, column: 9, scope: !1042)
!1148 = !DILocation(line: 91, column: 5, scope: !1042)
!1149 = !DILocation(line: 164, column: 13, scope: !1042)
!1150 = !DILocation(line: 165, column: 13, scope: !1042)
!1151 = !DILocation(line: 165, column: 5, scope: !1042)
!1152 = !DILocation(line: 167, column: 28, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 166, column: 7)
!1154 = !DILocation(line: 167, column: 32, scope: !1153)
!1155 = !DILocation(line: 168, column: 28, scope: !1153)
!1156 = !DILocation(line: 168, column: 32, scope: !1153)
!1157 = !DILocation(line: 169, column: 28, scope: !1153)
!1158 = !DILocation(line: 169, column: 32, scope: !1153)
!1159 = !DILocation(line: 170, column: 28, scope: !1153)
!1160 = !DILocation(line: 170, column: 32, scope: !1153)
!1161 = !DILocation(line: 171, column: 28, scope: !1153)
!1162 = !DILocation(line: 171, column: 32, scope: !1153)
!1163 = !DILocation(line: 173, column: 28, scope: !1153)
!1164 = !DILocation(line: 173, column: 32, scope: !1153)
!1165 = distinct !{!1165, !1092, !1166}
!1166 = !DILocation(line: 176, column: 7, scope: !1042)
!1167 = !DILocation(line: 178, column: 9, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 178, column: 7)
!1169 = !DILocation(line: 178, column: 13, scope: !1168)
!1170 = !DILocation(line: 178, column: 17, scope: !1168)
!1171 = !DILocation(line: 178, column: 21, scope: !1168)
!1172 = !DILocation(line: 178, column: 29, scope: !1168)
!1173 = !DILocation(line: 181, column: 12, scope: !1042)
!1174 = !DILocation(line: 182, column: 7, scope: !1042)
!1175 = !DILocation(line: 183, column: 7, scope: !1042)
!1176 = !DILocation(line: 184, column: 7, scope: !1042)
!1177 = !DILocation(line: 185, column: 7, scope: !1042)
!1178 = !DILocation(line: 186, column: 7, scope: !1042)
!1179 = !DILocation(line: 182, column: 4, scope: !1042)
!1180 = !DILocation(line: 181, column: 3, scope: !1042)
!1181 = !DILocation(line: 187, column: 1, scope: !1042)
!1182 = distinct !DISubprogram(name: "interpret_int_suffix", scope: !3, file: !3, line: 193, type: !1043, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1183)
!1183 = !{!1184, !1185, !1186, !1187, !1188}
!1184 = !DILocalVariable(name: "s", arg: 1, scope: !1182, file: !3, line: 193, type: !718)
!1185 = !DILocalVariable(name: "len", arg: 2, scope: !1182, file: !3, line: 193, type: !210)
!1186 = !DILocalVariable(name: "u", scope: !1182, file: !3, line: 195, type: !210)
!1187 = !DILocalVariable(name: "l", scope: !1182, file: !3, line: 195, type: !210)
!1188 = !DILocalVariable(name: "i", scope: !1182, file: !3, line: 195, type: !210)
!1189 = !DILocation(line: 0, scope: !1182)
!1190 = !DILocation(line: 199, column: 3, scope: !1182)
!1191 = !DILocation(line: 197, column: 13, scope: !1182)
!1192 = !DILocation(line: 197, column: 5, scope: !1182)
!1193 = !DILocation(line: 199, column: 13, scope: !1182)
!1194 = !DILocation(line: 200, column: 13, scope: !1182)
!1195 = !DILocation(line: 200, column: 5, scope: !1182)
!1196 = !DILocation(line: 202, column: 28, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 201, column: 7)
!1198 = !DILocation(line: 202, column: 32, scope: !1197)
!1199 = !DILocation(line: 204, column: 28, scope: !1197)
!1200 = !DILocation(line: 204, column: 32, scope: !1197)
!1201 = !DILocation(line: 205, column: 28, scope: !1197)
!1202 = !DILocation(line: 207, column: 8, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 207, column: 6)
!1204 = !DILocation(line: 207, column: 13, scope: !1203)
!1205 = !DILocation(line: 207, column: 26, scope: !1203)
!1206 = !DILocation(line: 207, column: 23, scope: !1203)
!1207 = !DILocation(line: 207, column: 6, scope: !1197)
!1208 = distinct !{!1208, !1190, !1209}
!1209 = !DILocation(line: 212, column: 7, scope: !1182)
!1210 = !DILocation(line: 214, column: 9, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 214, column: 7)
!1212 = !DILocation(line: 214, column: 13, scope: !1211)
!1213 = !DILocation(line: 217, column: 12, scope: !1182)
!1214 = !DILocation(line: 218, column: 7, scope: !1182)
!1215 = !DILocation(line: 218, column: 4, scope: !1182)
!1216 = !DILocation(line: 219, column: 10, scope: !1182)
!1217 = !DILocation(line: 219, column: 7, scope: !1182)
!1218 = !DILocation(line: 220, column: 12, scope: !1182)
!1219 = !DILocation(line: 220, column: 9, scope: !1182)
!1220 = !DILocation(line: 219, column: 4, scope: !1182)
!1221 = !DILocation(line: 217, column: 3, scope: !1182)
!1222 = !DILocation(line: 221, column: 1, scope: !1182)
!1223 = distinct !DISubprogram(name: "cpp_interpret_integer", scope: !3, file: !3, line: 470, type: !1224, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1226)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!597, !126, !298, !7}
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1233, !1236, !1237, !1238, !1239}
!1227 = !DILocalVariable(name: "pfile", arg: 1, scope: !1223, file: !3, line: 470, type: !126)
!1228 = !DILocalVariable(name: "token", arg: 2, scope: !1223, file: !3, line: 470, type: !298)
!1229 = !DILocalVariable(name: "type", arg: 3, scope: !1223, file: !3, line: 471, type: !7)
!1230 = !DILocalVariable(name: "p", scope: !1223, file: !3, line: 473, type: !718)
!1231 = !DILocalVariable(name: "end", scope: !1223, file: !3, line: 473, type: !718)
!1232 = !DILocalVariable(name: "result", scope: !1223, file: !3, line: 474, type: !597)
!1233 = !DILocalVariable(name: "max", scope: !1234, file: !3, line: 489, type: !601)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 488, column: 5)
!1235 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 485, column: 7)
!1236 = !DILocalVariable(name: "precision", scope: !1234, file: !3, line: 490, type: !210)
!1237 = !DILocalVariable(name: "base", scope: !1234, file: !3, line: 491, type: !7)
!1238 = !DILocalVariable(name: "c", scope: !1234, file: !3, line: 491, type: !7)
!1239 = !DILocalVariable(name: "overflow", scope: !1234, file: !3, line: 492, type: !139)
!1240 = !DILocation(line: 0, scope: !1223)
!1241 = !DILocation(line: 474, column: 11, scope: !1223)
!1242 = !DILocation(line: 476, column: 10, scope: !1223)
!1243 = !DILocation(line: 476, column: 14, scope: !1223)
!1244 = !DILocation(line: 477, column: 10, scope: !1223)
!1245 = !DILocation(line: 477, column: 15, scope: !1223)
!1246 = !DILocation(line: 478, column: 22, scope: !1223)
!1247 = !DILocation(line: 478, column: 10, scope: !1223)
!1248 = !DILocation(line: 478, column: 20, scope: !1223)
!1249 = !DILocation(line: 479, column: 10, scope: !1223)
!1250 = !DILocation(line: 479, column: 19, scope: !1223)
!1251 = !DILocation(line: 481, column: 22, scope: !1223)
!1252 = !DILocation(line: 482, column: 28, scope: !1223)
!1253 = !DILocation(line: 482, column: 11, scope: !1223)
!1254 = !DILocation(line: 485, column: 26, scope: !1235)
!1255 = !DILocation(line: 485, column: 7, scope: !1223)
!1256 = !DILocation(line: 486, column: 18, scope: !1235)
!1257 = !DILocation(line: 486, column: 23, scope: !1235)
!1258 = !DILocation(line: 486, column: 16, scope: !1235)
!1259 = !DILocation(line: 486, column: 5, scope: !1235)
!1260 = !DILocation(line: 490, column: 26, scope: !1234)
!1261 = !DILocation(line: 0, scope: !1234)
!1262 = !DILocation(line: 494, column: 17, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 494, column: 11)
!1264 = !DILocation(line: 494, column: 32, scope: !1263)
!1265 = !DILocation(line: 494, column: 11, scope: !1234)
!1266 = !DILocation(line: 497, column: 5, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 495, column: 2)
!1268 = !DILocation(line: 498, column: 2, scope: !1267)
!1269 = !DILocation(line: 499, column: 37, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 499, column: 16)
!1271 = !DILocation(line: 499, column: 16, scope: !1263)
!1272 = !DILocation(line: 502, column: 6, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 500, column: 2)
!1274 = !DILocation(line: 503, column: 2, scope: !1273)
!1275 = !DILocation(line: 504, column: 37, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 504, column: 16)
!1277 = !DILocation(line: 507, column: 6, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 505, column: 2)
!1279 = !DILocation(line: 504, column: 16, scope: !1270)
!1280 = !DILocation(line: 0, scope: !1263)
!1281 = !DILocation(line: 513, column: 21, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 513, column: 11)
!1283 = !DILocation(line: 513, column: 11, scope: !1234)
!1284 = !DILocation(line: 515, column: 20, scope: !1234)
!1285 = !DILocation(line: 515, column: 18, scope: !1234)
!1286 = !DILocation(line: 515, column: 25, scope: !1234)
!1287 = !DILocation(line: 515, column: 30, scope: !1234)
!1288 = !DILocation(line: 515, column: 37, scope: !1234)
!1289 = !DILocation(line: 0, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 521, column: 8)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 518, column: 2)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 517, column: 7)
!1293 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 517, column: 7)
!1294 = !DILocation(line: 0, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 530, column: 6)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 527, column: 8)
!1297 = !DILocation(line: 517, column: 7, scope: !1234)
!1298 = !DILocation(line: 515, column: 11, scope: !1234)
!1299 = !DILocation(line: 492, column: 12, scope: !1234)
!1300 = !DILocation(line: 517, column: 16, scope: !1292)
!1301 = !DILocation(line: 517, column: 7, scope: !1293)
!1302 = !DILocation(line: 519, column: 8, scope: !1291)
!1303 = !DILocation(line: 521, column: 8, scope: !1290)
!1304 = !DILocation(line: 521, column: 20, scope: !1290)
!1305 = !DILocation(line: 521, column: 38, scope: !1290)
!1306 = !DILocation(line: 521, column: 8, scope: !1291)
!1307 = !DILocation(line: 522, column: 10, scope: !1290)
!1308 = !DILocation(line: 527, column: 15, scope: !1296)
!1309 = !DILocation(line: 527, column: 19, scope: !1296)
!1310 = !DILocation(line: 527, column: 8, scope: !1291)
!1311 = !DILocation(line: 531, column: 17, scope: !1295)
!1312 = !DILocation(line: 532, column: 27, scope: !1295)
!1313 = !DILocation(line: 532, column: 17, scope: !1295)
!1314 = !DILocation(line: 528, column: 30, scope: !1296)
!1315 = !DILocation(line: 528, column: 39, scope: !1296)
!1316 = !DILocation(line: 528, column: 37, scope: !1296)
!1317 = !DILocation(line: 528, column: 17, scope: !1296)
!1318 = !DILocation(line: 528, column: 6, scope: !1296)
!1319 = !DILocation(line: 517, column: 24, scope: !1292)
!1320 = !DILocation(line: 517, column: 7, scope: !1292)
!1321 = distinct !{!1321, !1301, !1322}
!1322 = !DILocation(line: 535, column: 2, scope: !1293)
!1323 = !DILocation(line: 537, column: 11, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 537, column: 11)
!1325 = !DILocation(line: 521, column: 35, scope: !1290)
!1326 = !DILocation(line: 537, column: 11, scope: !1234)
!1327 = !DILocation(line: 538, column: 2, scope: !1324)
!1328 = !DILocation(line: 544, column: 24, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 544, column: 16)
!1330 = !DILocation(line: 544, column: 17, scope: !1329)
!1331 = !DILocation(line: 545, column: 9, scope: !1329)
!1332 = !DILocation(line: 545, column: 14, scope: !1329)
!1333 = !DILocation(line: 546, column: 7, scope: !1329)
!1334 = !DILocation(line: 546, column: 23, scope: !1329)
!1335 = !DILocation(line: 546, column: 10, scope: !1329)
!1336 = !DILocation(line: 547, column: 9, scope: !1329)
!1337 = !DILocation(line: 547, column: 13, scope: !1329)
!1338 = !DILocation(line: 544, column: 16, scope: !1324)
!1339 = !DILocation(line: 566, column: 13, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 566, column: 8)
!1341 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 548, column: 2)
!1342 = !DILocation(line: 566, column: 8, scope: !1341)
!1343 = !DILocation(line: 567, column: 25, scope: !1340)
!1344 = !DILocation(line: 567, column: 6, scope: !1340)
!1345 = !DILocation(line: 571, column: 21, scope: !1341)
!1346 = !DILocation(line: 572, column: 2, scope: !1341)
!1347 = !DILocation(line: 576, column: 1, scope: !1223)
!1348 = distinct !DISubprogram(name: "append_digit", scope: !3, file: !3, line: 580, type: !1349, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1351)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!597, !597, !216, !216, !210}
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360}
!1352 = !DILocalVariable(name: "num", arg: 1, scope: !1348, file: !3, line: 580, type: !597)
!1353 = !DILocalVariable(name: "digit", arg: 2, scope: !1348, file: !3, line: 580, type: !216)
!1354 = !DILocalVariable(name: "base", arg: 3, scope: !1348, file: !3, line: 580, type: !216)
!1355 = !DILocalVariable(name: "precision", arg: 4, scope: !1348, file: !3, line: 580, type: !210)
!1356 = !DILocalVariable(name: "result", scope: !1348, file: !3, line: 582, type: !597)
!1357 = !DILocalVariable(name: "shift", scope: !1348, file: !3, line: 583, type: !7)
!1358 = !DILocalVariable(name: "overflow", scope: !1348, file: !3, line: 584, type: !139)
!1359 = !DILocalVariable(name: "add_high", scope: !1348, file: !3, line: 585, type: !601)
!1360 = !DILocalVariable(name: "add_low", scope: !1348, file: !3, line: 585, type: !601)
!1361 = !DILocation(line: 580, column: 23, scope: !1348)
!1362 = !DILocation(line: 0, scope: !1348)
!1363 = !DILocation(line: 582, column: 11, scope: !1348)
!1364 = !DILocation(line: 589, column: 3, scope: !1348)
!1365 = !DILocation(line: 602, column: 21, scope: !1348)
!1366 = !DILocation(line: 602, column: 45, scope: !1348)
!1367 = !DILocation(line: 602, column: 26, scope: !1348)
!1368 = !DILocation(line: 602, column: 15, scope: !1348)
!1369 = !DILocation(line: 603, column: 26, scope: !1348)
!1370 = !DILocation(line: 603, column: 10, scope: !1348)
!1371 = !DILocation(line: 604, column: 20, scope: !1348)
!1372 = !DILocation(line: 604, column: 24, scope: !1348)
!1373 = !DILocation(line: 604, column: 10, scope: !1348)
!1374 = !DILocation(line: 604, column: 14, scope: !1348)
!1375 = !DILocation(line: 605, column: 26, scope: !1348)
!1376 = !DILocation(line: 605, column: 15, scope: !1348)
!1377 = !DILocation(line: 606, column: 26, scope: !1348)
!1378 = !DILocation(line: 606, column: 10, scope: !1348)
!1379 = !DILocation(line: 606, column: 20, scope: !1348)
!1380 = !DILocation(line: 608, column: 12, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 608, column: 7)
!1382 = !DILocation(line: 608, column: 7, scope: !1348)
!1383 = !DILocation(line: 610, column: 25, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 609, column: 5)
!1385 = !DILocation(line: 611, column: 28, scope: !1384)
!1386 = !DILocation(line: 611, column: 45, scope: !1384)
!1387 = !DILocation(line: 611, column: 34, scope: !1384)
!1388 = !DILocation(line: 612, column: 5, scope: !1384)
!1389 = !DILocation(line: 0, scope: !1381)
!1390 = !DILocation(line: 616, column: 17, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 616, column: 7)
!1392 = !DILocation(line: 616, column: 23, scope: !1391)
!1393 = !DILocation(line: 616, column: 7, scope: !1348)
!1394 = !DILocation(line: 618, column: 11, scope: !1348)
!1395 = !DILocation(line: 620, column: 28, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 620, column: 7)
!1397 = !DILocation(line: 620, column: 7, scope: !1348)
!1398 = !DILocation(line: 622, column: 30, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 622, column: 7)
!1400 = !DILocation(line: 622, column: 7, scope: !1348)
!1401 = !DILocation(line: 625, column: 14, scope: !1348)
!1402 = !DILocation(line: 626, column: 15, scope: !1348)
!1403 = !DILocation(line: 627, column: 10, scope: !1348)
!1404 = !DILocation(line: 627, column: 19, scope: !1348)
!1405 = !DILocation(line: 631, column: 11, scope: !1348)
!1406 = !DILocation(line: 632, column: 12, scope: !1348)
!1407 = !DILocation(line: 633, column: 12, scope: !1348)
!1408 = !DILocation(line: 634, column: 8, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 634, column: 7)
!1410 = !DILocation(line: 634, column: 7, scope: !1348)
!1411 = !DILocation(line: 635, column: 21, scope: !1409)
!1412 = !DILocation(line: 635, column: 5, scope: !1409)
!1413 = !DILocation(line: 638, column: 1, scope: !1348)
!1414 = distinct !DISubprogram(name: "num_positive", scope: !3, file: !3, line: 1274, type: !1415, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1417)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!139, !597, !210}
!1417 = !{!1418, !1419}
!1418 = !DILocalVariable(name: "num", arg: 1, scope: !1414, file: !3, line: 1274, type: !597)
!1419 = !DILocalVariable(name: "precision", arg: 2, scope: !1414, file: !3, line: 1274, type: !210)
!1420 = !DILocation(line: 1274, column: 23, scope: !1414)
!1421 = !DILocation(line: 0, scope: !1414)
!1422 = !DILocation(line: 1276, column: 17, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 1276, column: 7)
!1424 = !DILocation(line: 1276, column: 7, scope: !1414)
!1425 = !DILocation(line: 1279, column: 19, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1277, column: 5)
!1427 = !DILocation(line: 1279, column: 57, scope: !1426)
!1428 = !DILocation(line: 1279, column: 43, scope: !1426)
!1429 = !DILocation(line: 1279, column: 24, scope: !1426)
!1430 = !DILocation(line: 1279, column: 7, scope: !1426)
!1431 = !DILocation(line: 1282, column: 15, scope: !1414)
!1432 = !DILocation(line: 1282, column: 52, scope: !1414)
!1433 = !DILocation(line: 1282, column: 38, scope: !1414)
!1434 = !DILocation(line: 1282, column: 19, scope: !1414)
!1435 = !DILocation(line: 1282, column: 3, scope: !1414)
!1436 = !DILocation(line: 1283, column: 1, scope: !1414)
!1437 = distinct !DISubprogram(name: "_cpp_parse_expr", scope: !3, file: !3, line: 908, type: !1438, scopeLine: 909, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1440)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!139, !126, !139}
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1447, !1451}
!1441 = !DILocalVariable(name: "pfile", arg: 1, scope: !1437, file: !3, line: 908, type: !126)
!1442 = !DILocalVariable(name: "is_if", arg: 2, scope: !1437, file: !3, line: 908, type: !139)
!1443 = !DILocalVariable(name: "top", scope: !1437, file: !3, line: 910, type: !592)
!1444 = !DILocalVariable(name: "lex_count", scope: !1437, file: !3, line: 911, type: !7)
!1445 = !DILocalVariable(name: "saw_leading_not", scope: !1437, file: !3, line: 912, type: !139)
!1446 = !DILocalVariable(name: "want_value", scope: !1437, file: !3, line: 912, type: !139)
!1447 = !DILocalVariable(name: "op", scope: !1448, file: !3, line: 926, type: !593)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 925, column: 5)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 924, column: 3)
!1450 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 924, column: 3)
!1451 = !DILabel(scope: !1452, name: "syntax_error", file: !3, line: 1048)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 1045, column: 5)
!1453 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 1044, column: 7)
!1454 = !DILocation(line: 0, scope: !1437)
!1455 = !DILocation(line: 910, column: 27, scope: !1437)
!1456 = !DILocation(line: 914, column: 16, scope: !1437)
!1457 = !DILocation(line: 914, column: 26, scope: !1437)
!1458 = !DILocation(line: 917, column: 10, scope: !1437)
!1459 = !DILocation(line: 917, column: 24, scope: !1437)
!1460 = !DILocation(line: 922, column: 8, scope: !1437)
!1461 = !DILocation(line: 922, column: 11, scope: !1437)
!1462 = !DILocation(line: 0, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 934, column: 2)
!1464 = !DILocation(line: 0, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1030, column: 11)
!1466 = !DILocation(line: 0, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 984, column: 7)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 983, column: 8)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 977, column: 2)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 976, column: 16)
!1471 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 970, column: 11)
!1472 = !DILocation(line: 924, column: 3, scope: !1437)
!1473 = !DILocation(line: 918, column: 19, scope: !1437)
!1474 = !DILocation(line: 910, column: 14, scope: !1437)
!1475 = !DILocation(line: 912, column: 25, scope: !1437)
!1476 = !DILocation(line: 928, column: 16, scope: !1448)
!1477 = !DILocation(line: 929, column: 18, scope: !1448)
!1478 = !DILocation(line: 930, column: 25, scope: !1448)
!1479 = !DILocation(line: 931, column: 26, scope: !1448)
!1480 = !DILocation(line: 933, column: 7, scope: !1448)
!1481 = !DILocation(line: 943, column: 9, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 943, column: 8)
!1483 = !DILocation(line: 943, column: 8, scope: !1463)
!1484 = !DILocation(line: 944, column: 6, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 944, column: 6)
!1486 = !DILocation(line: 947, column: 9, scope: !1463)
!1487 = !DILocation(line: 947, column: 17, scope: !1463)
!1488 = !DILocation(line: 948, column: 4, scope: !1463)
!1489 = distinct !{!1489, !1490, !1491}
!1490 = !DILocation(line: 924, column: 3, scope: !1450)
!1491 = !DILocation(line: 1036, column: 5, scope: !1450)
!1492 = !DILocation(line: 951, column: 32, scope: !1463)
!1493 = !DILocation(line: 951, column: 22, scope: !1463)
!1494 = !DILocation(line: 952, column: 4, scope: !1463)
!1495 = !DILocation(line: 954, column: 8, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 954, column: 8)
!1497 = !DILocation(line: 954, column: 8, scope: !1463)
!1498 = !DILocation(line: 955, column: 6, scope: !1496)
!1499 = !DILocation(line: 958, column: 8, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 958, column: 8)
!1501 = !DILocation(line: 958, column: 8, scope: !1463)
!1502 = !DILocation(line: 959, column: 6, scope: !1500)
!1503 = !DILocation(line: 963, column: 20, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 963, column: 8)
!1505 = !DILocation(line: 963, column: 36, scope: !1504)
!1506 = !DILocation(line: 963, column: 51, scope: !1504)
!1507 = !DILocation(line: 963, column: 8, scope: !1463)
!1508 = !DILocation(line: 964, column: 6, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 964, column: 6)
!1510 = !DILocation(line: 970, column: 20, scope: !1471)
!1511 = !DILocation(line: 970, column: 11, scope: !1471)
!1512 = !DILocation(line: 970, column: 30, scope: !1471)
!1513 = !DILocation(line: 0, scope: !1471)
!1514 = !DILocation(line: 970, column: 11, scope: !1448)
!1515 = !DILocation(line: 972, column: 8, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 971, column: 2)
!1517 = !DILocation(line: 973, column: 6, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 973, column: 6)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 972, column: 8)
!1520 = !DILocation(line: 976, column: 16, scope: !1471)
!1521 = !DILocation(line: 980, column: 14, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 980, column: 8)
!1523 = !DILocation(line: 980, column: 33, scope: !1522)
!1524 = !DILocation(line: 980, column: 41, scope: !1522)
!1525 = !DILocation(line: 980, column: 44, scope: !1522)
!1526 = !DILocation(line: 980, column: 8, scope: !1469)
!1527 = !DILocation(line: 981, column: 6, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 981, column: 6)
!1529 = !DILocation(line: 983, column: 14, scope: !1468)
!1530 = !DILocation(line: 983, column: 25, scope: !1468)
!1531 = !DILocation(line: 0, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 986, column: 9)
!1533 = !DILocation(line: 986, column: 14, scope: !1532)
!1534 = !DILocation(line: 983, column: 33, scope: !1468)
!1535 = !DILocation(line: 983, column: 36, scope: !1468)
!1536 = !DILocation(line: 983, column: 8, scope: !1469)
!1537 = !DILocation(line: 984, column: 7, scope: !1467)
!1538 = !DILocation(line: 986, column: 17, scope: !1532)
!1539 = !DILocation(line: 986, column: 28, scope: !1532)
!1540 = !DILocation(line: 986, column: 39, scope: !1532)
!1541 = !DILocation(line: 986, column: 9, scope: !1469)
!1542 = !DILocation(line: 987, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 987, column: 7)
!1544 = !DILocation(line: 989, column: 38, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 989, column: 13)
!1546 = !DILocation(line: 989, column: 13, scope: !1532)
!1547 = !DILocation(line: 992, column: 6, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 992, column: 6)
!1549 = !DILocation(line: 996, column: 13, scope: !1448)
!1550 = !DILocation(line: 997, column: 12, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 997, column: 11)
!1552 = !DILocation(line: 997, column: 11, scope: !1448)
!1553 = !DILocation(line: 1000, column: 17, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1000, column: 11)
!1555 = !DILocation(line: 1000, column: 11, scope: !1448)
!1556 = !DILocation(line: 1003, column: 7, scope: !1448)
!1557 = !DILocation(line: 1008, column: 9, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 1008, column: 8)
!1559 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1004, column: 2)
!1560 = !DILocation(line: 1008, column: 8, scope: !1559)
!1561 = !DILocation(line: 1009, column: 28, scope: !1558)
!1562 = !DILocation(line: 1009, column: 6, scope: !1558)
!1563 = !DILocation(line: 1013, column: 8, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 1013, column: 8)
!1565 = !DILocation(line: 1013, column: 8, scope: !1559)
!1566 = !DILocation(line: 1014, column: 28, scope: !1564)
!1567 = !DILocation(line: 1014, column: 6, scope: !1564)
!1568 = !DILocation(line: 1017, column: 13, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 1017, column: 8)
!1570 = !DILocation(line: 1017, column: 16, scope: !1569)
!1571 = !DILocation(line: 1017, column: 8, scope: !1559)
!1572 = !DILocation(line: 1018, column: 6, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 1018, column: 6)
!1574 = !DILocation(line: 1019, column: 9, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 1019, column: 8)
!1576 = !DILocation(line: 0, scope: !1575)
!1577 = !DILocation(line: 1019, column: 8, scope: !1559)
!1578 = !DILocation(line: 1020, column: 28, scope: !1575)
!1579 = !DILocation(line: 1020, column: 6, scope: !1575)
!1580 = !DILocation(line: 1022, column: 28, scope: !1575)
!1581 = !DILocation(line: 1030, column: 11, scope: !1465)
!1582 = !DILocation(line: 1030, column: 27, scope: !1465)
!1583 = !DILocation(line: 1030, column: 17, scope: !1465)
!1584 = !DILocation(line: 1030, column: 11, scope: !1448)
!1585 = !DILocation(line: 1031, column: 8, scope: !1465)
!1586 = !DILocation(line: 1031, column: 2, scope: !1465)
!1587 = !DILocation(line: 1033, column: 12, scope: !1448)
!1588 = !DILocation(line: 1033, column: 15, scope: !1448)
!1589 = !DILocation(line: 1034, column: 18, scope: !1448)
!1590 = !DILocation(line: 1035, column: 28, scope: !1448)
!1591 = !DILocation(line: 1035, column: 12, scope: !1448)
!1592 = !DILocation(line: 1035, column: 16, scope: !1448)
!1593 = !DILocation(line: 1036, column: 5, scope: !1449)
!1594 = !DILocation(line: 1041, column: 14, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 1041, column: 7)
!1596 = !DILocation(line: 1041, column: 7, scope: !1595)
!1597 = !DILocation(line: 1041, column: 28, scope: !1595)
!1598 = !DILocation(line: 1041, column: 33, scope: !1595)
!1599 = !DILocation(line: 1041, column: 62, scope: !1595)
!1600 = !DILocation(line: 1041, column: 49, scope: !1595)
!1601 = !DILocation(line: 1042, column: 26, scope: !1595)
!1602 = !DILocation(line: 1042, column: 5, scope: !1595)
!1603 = !DILocation(line: 1044, column: 21, scope: !1453)
!1604 = !DILocation(line: 1044, column: 11, scope: !1453)
!1605 = !DILocation(line: 1044, column: 7, scope: !1437)
!1606 = !DILocation(line: 1046, column: 7, scope: !1452)
!1607 = !DILocation(line: 1052, column: 11, scope: !1437)
!1608 = !DILocation(line: 1052, column: 10, scope: !1437)
!1609 = !DILocation(line: 1052, column: 3, scope: !1437)
!1610 = !DILocation(line: 1053, column: 1, scope: !1437)
!1611 = distinct !DISubprogram(name: "eval_token", scope: !3, file: !3, line: 726, type: !1612, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1614)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!597, !126, !298}
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620}
!1615 = !DILocalVariable(name: "pfile", arg: 1, scope: !1611, file: !3, line: 726, type: !126)
!1616 = !DILocalVariable(name: "token", arg: 2, scope: !1611, file: !3, line: 726, type: !298)
!1617 = !DILocalVariable(name: "result", scope: !1611, file: !3, line: 728, type: !597)
!1618 = !DILocalVariable(name: "temp", scope: !1611, file: !3, line: 729, type: !7)
!1619 = !DILocalVariable(name: "unsignedp", scope: !1611, file: !3, line: 730, type: !216)
!1620 = !DILocalVariable(name: "cc", scope: !1621, file: !3, line: 764, type: !1623)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 763, column: 7)
!1622 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 736, column: 5)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "cppchar_t", file: !6, line: 258, baseType: !7)
!1624 = !DILocation(line: 0, scope: !1611)
!1625 = !DILocation(line: 728, column: 3, scope: !1611)
!1626 = !DILocation(line: 729, column: 3, scope: !1611)
!1627 = !DILocation(line: 730, column: 3, scope: !1611)
!1628 = !DILocation(line: 730, column: 7, scope: !1611)
!1629 = !DILocation(line: 732, column: 10, scope: !1611)
!1630 = !DILocation(line: 732, column: 20, scope: !1611)
!1631 = !DILocation(line: 733, column: 10, scope: !1611)
!1632 = !DILocation(line: 733, column: 19, scope: !1611)
!1633 = !DILocation(line: 735, column: 18, scope: !1611)
!1634 = !DILocation(line: 735, column: 3, scope: !1611)
!1635 = !DILocation(line: 738, column: 14, scope: !1622)
!1636 = !DILocation(line: 738, column: 12, scope: !1622)
!1637 = !DILocation(line: 739, column: 20, scope: !1622)
!1638 = !DILocation(line: 739, column: 7, scope: !1622)
!1639 = !DILocation(line: 742, column: 4, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 740, column: 2)
!1641 = !DILocation(line: 744, column: 4, scope: !1640)
!1642 = !DILocation(line: 746, column: 15, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 746, column: 8)
!1644 = !DILocation(line: 746, column: 8, scope: !1640)
!1645 = !DILocation(line: 747, column: 13, scope: !1643)
!1646 = !DILocation(line: 747, column: 6, scope: !1643)
!1647 = !DILocation(line: 748, column: 4, scope: !1640)
!1648 = !DILocation(line: 750, column: 4, scope: !1640)
!1649 = !DILocation(line: 756, column: 28, scope: !1622)
!1650 = !DILocation(line: 756, column: 32, scope: !1622)
!1651 = !DILocation(line: 756, column: 14, scope: !1622)
!1652 = !DILocation(line: 756, column: 19, scope: !1622)
!1653 = !DILocation(line: 757, column: 7, scope: !1622)
!1654 = !DILocation(line: 764, column: 17, scope: !1621)
!1655 = !DILocation(line: 0, scope: !1621)
!1656 = !DILocation(line: 767, column: 9, scope: !1621)
!1657 = !DILocation(line: 767, column: 14, scope: !1621)
!1658 = !DILocation(line: 768, column: 15, scope: !1621)
!1659 = !DILocation(line: 768, column: 9, scope: !1621)
!1660 = !DILocation(line: 768, column: 13, scope: !1621)
!1661 = !DILocation(line: 770, column: 7, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 770, column: 6)
!1663 = !DILocation(line: 770, column: 42, scope: !1662)
!1664 = !DILocation(line: 770, column: 17, scope: !1662)
!1665 = !DILocation(line: 773, column: 19, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 772, column: 10)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 771, column: 4)
!1668 = !DILocation(line: 775, column: 18, scope: !1667)
!1669 = !DILocation(line: 776, column: 15, scope: !1667)
!1670 = !DILocation(line: 776, column: 33, scope: !1667)
!1671 = !DILocation(line: 777, column: 4, scope: !1667)
!1672 = !DILocation(line: 782, column: 18, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 782, column: 11)
!1674 = !DILocation(line: 782, column: 27, scope: !1673)
!1675 = !DILocation(line: 782, column: 53, scope: !1673)
!1676 = !DILocation(line: 782, column: 32, scope: !1673)
!1677 = !DILocation(line: 782, column: 11, scope: !1622)
!1678 = !DILocation(line: 783, column: 9, scope: !1673)
!1679 = !DILocation(line: 783, column: 2, scope: !1673)
!1680 = !DILocation(line: 784, column: 16, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 784, column: 16)
!1682 = !DILocation(line: 785, column: 9, scope: !1681)
!1683 = !DILocation(line: 785, column: 55, scope: !1681)
!1684 = !DILocation(line: 785, column: 34, scope: !1681)
!1685 = !DILocation(line: 786, column: 6, scope: !1681)
!1686 = !DILocation(line: 786, column: 51, scope: !1681)
!1687 = !DILocation(line: 786, column: 30, scope: !1681)
!1688 = !DILocation(line: 784, column: 16, scope: !1673)
!1689 = !DILocation(line: 788, column: 11, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 787, column: 2)
!1691 = !DILocation(line: 788, column: 16, scope: !1690)
!1692 = !DILocation(line: 789, column: 17, scope: !1690)
!1693 = !DILocation(line: 789, column: 11, scope: !1690)
!1694 = !DILocation(line: 789, column: 15, scope: !1690)
!1695 = !DILocation(line: 790, column: 2, scope: !1690)
!1696 = !DILocation(line: 793, column: 11, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 792, column: 2)
!1698 = !DILocation(line: 793, column: 16, scope: !1697)
!1699 = !DILocation(line: 794, column: 11, scope: !1697)
!1700 = !DILocation(line: 794, column: 15, scope: !1697)
!1701 = !DILocation(line: 795, column: 8, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 795, column: 8)
!1703 = !DILocation(line: 795, column: 39, scope: !1702)
!1704 = !DILocation(line: 795, column: 56, scope: !1702)
!1705 = !DILocation(line: 795, column: 43, scope: !1702)
!1706 = !DILocation(line: 795, column: 8, scope: !1697)
!1707 = !DILocation(line: 797, column: 10, scope: !1702)
!1708 = !DILocation(line: 796, column: 6, scope: !1702)
!1709 = !DILocation(line: 802, column: 25, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 802, column: 11)
!1711 = !DILocation(line: 802, column: 12, scope: !1710)
!1712 = !DILocation(line: 802, column: 11, scope: !1622)
!1713 = !DILocation(line: 806, column: 8, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 806, column: 8)
!1715 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 803, column: 2)
!1716 = !DILocation(line: 806, column: 8, scope: !1715)
!1717 = !DILocation(line: 807, column: 6, scope: !1714)
!1718 = !DILocation(line: 809, column: 13, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 809, column: 13)
!1720 = !DILocation(line: 809, column: 13, scope: !1714)
!1721 = !DILocation(line: 810, column: 6, scope: !1719)
!1722 = !DILocation(line: 813, column: 7, scope: !1622)
!1723 = !DILocation(line: 814, column: 14, scope: !1622)
!1724 = !DILocation(line: 814, column: 19, scope: !1622)
!1725 = !DILocation(line: 815, column: 20, scope: !1622)
!1726 = !DILocation(line: 815, column: 14, scope: !1622)
!1727 = !DILocation(line: 815, column: 18, scope: !1622)
!1728 = !DILocation(line: 816, column: 7, scope: !1622)
!1729 = !DILocation(line: 819, column: 7, scope: !1622)
!1730 = !DILocation(line: 822, column: 24, scope: !1611)
!1731 = !DILocation(line: 822, column: 23, scope: !1611)
!1732 = !DILocation(line: 822, column: 22, scope: !1611)
!1733 = !DILocation(line: 822, column: 20, scope: !1611)
!1734 = !DILocation(line: 823, column: 10, scope: !1611)
!1735 = !DILocation(line: 823, column: 3, scope: !1611)
!1736 = !DILocation(line: 824, column: 1, scope: !1611)
!1737 = distinct !DISubprogram(name: "reduce", scope: !3, file: !3, line: 1059, type: !1738, scopeLine: 1060, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!592, !126, !592, !19}
!1740 = !{!1741, !1742, !1743, !1744, !1745}
!1741 = !DILocalVariable(name: "pfile", arg: 1, scope: !1737, file: !3, line: 1059, type: !126)
!1742 = !DILocalVariable(name: "top", arg: 2, scope: !1737, file: !3, line: 1059, type: !592)
!1743 = !DILocalVariable(name: "op", arg: 3, scope: !1737, file: !3, line: 1059, type: !19)
!1744 = !DILocalVariable(name: "prio", scope: !1737, file: !3, line: 1061, type: !7)
!1745 = !DILabel(scope: !1746, name: "bad_op", file: !3, line: 1065)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 1064, column: 5)
!1747 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 1063, column: 7)
!1748 = !DILocation(line: 0, scope: !1737)
!1749 = !DILocation(line: 1063, column: 12, scope: !1747)
!1750 = !DILocation(line: 1063, column: 15, scope: !1747)
!1751 = !DILocation(line: 1063, column: 25, scope: !1747)
!1752 = !DILocation(line: 1063, column: 36, scope: !1747)
!1753 = !DILocation(line: 1063, column: 7, scope: !1737)
!1754 = !DILocation(line: 1082, column: 20, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 1077, column: 5)
!1756 = !DILocation(line: 1066, column: 70, scope: !1746)
!1757 = !DILocation(line: 1065, column: 5, scope: !1746)
!1758 = !DILocation(line: 1066, column: 7, scope: !1746)
!1759 = !DILocation(line: 1067, column: 7, scope: !1746)
!1760 = !DILocation(line: 1070, column: 10, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 1070, column: 7)
!1762 = !DILocation(line: 1070, column: 7, scope: !1737)
!1763 = !DILocation(line: 1075, column: 10, scope: !1737)
!1764 = !DILocation(line: 1075, column: 20, scope: !1737)
!1765 = !DILocation(line: 1075, column: 59, scope: !1737)
!1766 = !DILocation(line: 1075, column: 25, scope: !1737)
!1767 = !DILocation(line: 0, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 1078, column: 11)
!1769 = !DILocation(line: 0, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1178, column: 6)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1177, column: 8)
!1772 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 1083, column: 2)
!1773 = !DILocation(line: 0, scope: !1772)
!1774 = !DILocation(line: 1076, column: 3, scope: !1737)
!1775 = !DILocation(line: 1076, column: 28, scope: !1737)
!1776 = !DILocation(line: 1076, column: 17, scope: !1737)
!1777 = !DILocation(line: 1076, column: 32, scope: !1737)
!1778 = !DILocation(line: 1076, column: 15, scope: !1737)
!1779 = !DILocation(line: 1078, column: 11, scope: !1768)
!1780 = !DILocation(line: 1079, column: 4, scope: !1768)
!1781 = !DILocation(line: 1079, column: 28, scope: !1768)
!1782 = !DILocation(line: 1078, column: 11, scope: !1755)
!1783 = !DILocation(line: 1080, column: 2, scope: !1768)
!1784 = !DILocation(line: 1082, column: 7, scope: !1755)
!1785 = !DILocation(line: 1088, column: 12, scope: !1772)
!1786 = !DILocation(line: 1088, column: 20, scope: !1772)
!1787 = !DILocation(line: 1088, column: 46, scope: !1772)
!1788 = !DILocation(line: 1089, column: 23, scope: !1772)
!1789 = !DILocation(line: 1089, column: 12, scope: !1772)
!1790 = !DILocation(line: 1089, column: 16, scope: !1772)
!1791 = !DILocation(line: 1090, column: 4, scope: !1772)
!1792 = !DILocation(line: 1097, column: 12, scope: !1772)
!1793 = !DILocation(line: 1097, column: 20, scope: !1772)
!1794 = !DILocation(line: 1098, column: 12, scope: !1772)
!1795 = !DILocation(line: 1099, column: 23, scope: !1772)
!1796 = !DILocation(line: 1099, column: 12, scope: !1772)
!1797 = !DILocation(line: 1099, column: 16, scope: !1772)
!1798 = !DILocation(line: 1100, column: 4, scope: !1772)
!1799 = !DILocation(line: 1106, column: 12, scope: !1772)
!1800 = !DILocation(line: 1107, column: 8, scope: !1772)
!1801 = !DILocation(line: 1107, column: 54, scope: !1772)
!1802 = !DILocation(line: 1108, column: 23, scope: !1772)
!1803 = !DILocation(line: 1108, column: 12, scope: !1772)
!1804 = !DILocation(line: 1108, column: 16, scope: !1772)
!1805 = !DILocation(line: 1109, column: 4, scope: !1772)
!1806 = !DILocation(line: 1113, column: 12, scope: !1772)
!1807 = !DILocation(line: 1114, column: 8, scope: !1772)
!1808 = !DILocation(line: 1114, column: 52, scope: !1772)
!1809 = !DILocation(line: 1115, column: 23, scope: !1772)
!1810 = !DILocation(line: 1115, column: 12, scope: !1772)
!1811 = !DILocation(line: 1115, column: 16, scope: !1772)
!1812 = !DILocation(line: 1116, column: 4, scope: !1772)
!1813 = !DILocation(line: 1121, column: 12, scope: !1772)
!1814 = !DILocation(line: 1122, column: 8, scope: !1772)
!1815 = !DILocation(line: 1122, column: 51, scope: !1772)
!1816 = !DILocation(line: 1123, column: 23, scope: !1772)
!1817 = !DILocation(line: 1123, column: 12, scope: !1772)
!1818 = !DILocation(line: 1123, column: 16, scope: !1772)
!1819 = !DILocation(line: 1124, column: 4, scope: !1772)
!1820 = !DILocation(line: 1127, column: 12, scope: !1772)
!1821 = !DILocation(line: 1127, column: 20, scope: !1772)
!1822 = !DILocation(line: 1127, column: 56, scope: !1772)
!1823 = !DILocation(line: 1128, column: 23, scope: !1772)
!1824 = !DILocation(line: 1128, column: 12, scope: !1772)
!1825 = !DILocation(line: 1128, column: 16, scope: !1772)
!1826 = !DILocation(line: 1129, column: 4, scope: !1772)
!1827 = !DILocation(line: 1133, column: 12, scope: !1772)
!1828 = !DILocation(line: 1133, column: 20, scope: !1772)
!1829 = !DILocation(line: 1134, column: 16, scope: !1772)
!1830 = !DILocation(line: 1134, column: 37, scope: !1772)
!1831 = !DILocation(line: 1135, column: 23, scope: !1772)
!1832 = !DILocation(line: 1135, column: 12, scope: !1772)
!1833 = !DILocation(line: 1135, column: 16, scope: !1772)
!1834 = !DILocation(line: 1136, column: 4, scope: !1772)
!1835 = !DILocation(line: 1139, column: 7, scope: !1772)
!1836 = !DILocation(line: 1140, column: 9, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1140, column: 8)
!1838 = !DILocation(line: 1140, column: 8, scope: !1772)
!1839 = !DILocation(line: 1141, column: 28, scope: !1837)
!1840 = !DILocation(line: 1142, column: 23, scope: !1772)
!1841 = !DILocation(line: 1141, column: 6, scope: !1837)
!1842 = !DILocation(line: 1143, column: 8, scope: !1772)
!1843 = !DILocation(line: 1143, column: 12, scope: !1772)
!1844 = !DILocation(line: 1142, column: 21, scope: !1772)
!1845 = !DILocation(line: 1142, column: 19, scope: !1772)
!1846 = !DILocation(line: 1144, column: 20, scope: !1772)
!1847 = !DILocation(line: 1145, column: 15, scope: !1772)
!1848 = !DILocation(line: 1145, column: 25, scope: !1772)
!1849 = !DILocation(line: 1146, column: 15, scope: !1772)
!1850 = !DILocation(line: 1146, column: 24, scope: !1772)
!1851 = !DILocation(line: 1147, column: 22, scope: !1772)
!1852 = !DILocation(line: 1147, column: 9, scope: !1772)
!1853 = !DILocation(line: 1147, column: 13, scope: !1772)
!1854 = !DILocation(line: 1148, column: 4, scope: !1772)
!1855 = distinct !{!1855, !1774, !1856}
!1856 = !DILocation(line: 1207, column: 5, scope: !1737)
!1857 = !DILocation(line: 1151, column: 7, scope: !1772)
!1858 = !DILocation(line: 1152, column: 8, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1152, column: 8)
!1860 = !DILocation(line: 1152, column: 8, scope: !1772)
!1861 = !DILocation(line: 1153, column: 28, scope: !1859)
!1862 = !DILocation(line: 1154, column: 23, scope: !1772)
!1863 = !DILocation(line: 1153, column: 6, scope: !1859)
!1864 = !DILocation(line: 1155, column: 8, scope: !1772)
!1865 = !DILocation(line: 1155, column: 12, scope: !1772)
!1866 = !DILocation(line: 1154, column: 21, scope: !1772)
!1867 = !DILocation(line: 1154, column: 19, scope: !1772)
!1868 = !DILocation(line: 1156, column: 20, scope: !1772)
!1869 = !DILocation(line: 1157, column: 15, scope: !1772)
!1870 = !DILocation(line: 1157, column: 25, scope: !1772)
!1871 = !DILocation(line: 1158, column: 15, scope: !1772)
!1872 = !DILocation(line: 1158, column: 24, scope: !1772)
!1873 = !DILocation(line: 1159, column: 22, scope: !1772)
!1874 = !DILocation(line: 1159, column: 9, scope: !1772)
!1875 = !DILocation(line: 1159, column: 13, scope: !1772)
!1876 = !DILocation(line: 1160, column: 4, scope: !1772)
!1877 = !DILocation(line: 1163, column: 11, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1163, column: 8)
!1879 = !DILocation(line: 1163, column: 8, scope: !1772)
!1880 = !DILocation(line: 1166, column: 13, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 1164, column: 6)
!1882 = !DILocation(line: 1166, column: 20, scope: !1881)
!1883 = !DILocation(line: 1165, column: 8, scope: !1881)
!1884 = !DILocation(line: 1168, column: 8, scope: !1881)
!1885 = !DILocation(line: 1170, column: 7, scope: !1772)
!1886 = !DILocation(line: 1171, column: 9, scope: !1772)
!1887 = !DILocation(line: 1171, column: 24, scope: !1772)
!1888 = !DILocation(line: 1172, column: 22, scope: !1772)
!1889 = !DILocation(line: 1172, column: 9, scope: !1772)
!1890 = !DILocation(line: 1172, column: 13, scope: !1772)
!1891 = !DILocation(line: 1173, column: 4, scope: !1772)
!1892 = !DILocation(line: 1176, column: 8, scope: !1772)
!1893 = !DILocation(line: 1177, column: 9, scope: !1771)
!1894 = !DILocation(line: 1177, column: 8, scope: !1772)
!1895 = !DILocation(line: 1179, column: 30, scope: !1770)
!1896 = !DILocation(line: 1180, column: 13, scope: !1770)
!1897 = !DILocation(line: 1180, column: 28, scope: !1770)
!1898 = !DILocation(line: 1181, column: 26, scope: !1770)
!1899 = !DILocation(line: 1181, column: 13, scope: !1770)
!1900 = !DILocation(line: 1181, column: 17, scope: !1770)
!1901 = !DILocation(line: 1182, column: 6, scope: !1770)
!1902 = !DILocation(line: 1185, column: 13, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1184, column: 6)
!1904 = !DILocation(line: 1185, column: 28, scope: !1903)
!1905 = !DILocation(line: 1186, column: 26, scope: !1903)
!1906 = !DILocation(line: 1186, column: 13, scope: !1903)
!1907 = !DILocation(line: 1186, column: 17, scope: !1903)
!1908 = !DILocation(line: 1188, column: 41, scope: !1772)
!1909 = !DILocation(line: 1188, column: 28, scope: !1772)
!1910 = !DILocation(line: 1189, column: 7, scope: !1772)
!1911 = !DILocation(line: 1189, column: 23, scope: !1772)
!1912 = !DILocation(line: 1188, column: 27, scope: !1772)
!1913 = !DILocation(line: 1188, column: 15, scope: !1772)
!1914 = !DILocation(line: 1188, column: 25, scope: !1772)
!1915 = !DILocation(line: 1190, column: 4, scope: !1772)
!1916 = !DILocation(line: 1194, column: 24, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1194, column: 8)
!1918 = !DILocation(line: 1196, column: 4, scope: !1772)
!1919 = !DILocation(line: 1197, column: 4, scope: !1772)
!1920 = !DILocation(line: 1203, column: 10, scope: !1755)
!1921 = !DILocation(line: 1204, column: 22, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 1204, column: 11)
!1923 = !DILocation(line: 1204, column: 11, scope: !1922)
!1924 = !DILocation(line: 1204, column: 31, scope: !1922)
!1925 = !DILocation(line: 1204, column: 48, scope: !1922)
!1926 = !DILocation(line: 1204, column: 35, scope: !1922)
!1927 = !DILocation(line: 1204, column: 11, scope: !1755)
!1928 = !DILocation(line: 1205, column: 2, scope: !1922)
!1929 = !DILocation(line: 1209, column: 10, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 1209, column: 7)
!1931 = !DILocation(line: 1209, column: 7, scope: !1737)
!1932 = !DILocation(line: 1211, column: 7, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 1210, column: 5)
!1934 = !DILocation(line: 1212, column: 7, scope: !1933)
!1935 = !DILocation(line: 1216, column: 1, scope: !1737)
!1936 = distinct !DISubprogram(name: "_cpp_expand_op_stack", scope: !3, file: !3, line: 1220, type: !1937, scopeLine: 1221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1939)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!592, !126}
!1939 = !{!1940, !1941, !1942}
!1940 = !DILocalVariable(name: "pfile", arg: 1, scope: !1936, file: !3, line: 1220, type: !126)
!1941 = !DILocalVariable(name: "old_size", scope: !1936, file: !3, line: 1222, type: !210)
!1942 = !DILocalVariable(name: "new_size", scope: !1936, file: !3, line: 1223, type: !210)
!1943 = !DILocation(line: 0, scope: !1936)
!1944 = !DILocation(line: 1222, column: 38, scope: !1936)
!1945 = !DILocation(line: 1222, column: 56, scope: !1936)
!1946 = !DILocation(line: 1222, column: 47, scope: !1936)
!1947 = !DILocation(line: 1223, column: 30, scope: !1936)
!1948 = !DILocation(line: 1223, column: 34, scope: !1936)
!1949 = !DILocation(line: 1225, column: 21, scope: !1936)
!1950 = !DILocation(line: 1225, column: 19, scope: !1936)
!1951 = !DILocation(line: 1226, column: 28, scope: !1936)
!1952 = !DILocation(line: 1226, column: 37, scope: !1936)
!1953 = !DILocation(line: 1226, column: 19, scope: !1936)
!1954 = !DILocation(line: 1228, column: 26, scope: !1936)
!1955 = !DILocation(line: 1228, column: 3, scope: !1936)
!1956 = distinct !DISubprogram(name: "cpp_num_sign_extend", scope: !3, file: !3, line: 1288, type: !1957, scopeLine: 1289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1959)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!597, !597, !210}
!1959 = !{!1960, !1961}
!1960 = !DILocalVariable(name: "num", arg: 1, scope: !1956, file: !3, line: 1288, type: !597)
!1961 = !DILocalVariable(name: "precision", arg: 2, scope: !1956, file: !3, line: 1288, type: !210)
!1962 = !DILocation(line: 1288, column: 30, scope: !1956)
!1963 = !DILocation(line: 0, scope: !1956)
!1964 = !DILocation(line: 1290, column: 12, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 1290, column: 7)
!1966 = !DILocation(line: 1290, column: 8, scope: !1965)
!1967 = !DILocation(line: 1290, column: 7, scope: !1956)
!1968 = !DILocation(line: 1292, column: 21, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 1292, column: 11)
!1970 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 1291, column: 5)
!1971 = !DILocation(line: 1292, column: 11, scope: !1970)
!1972 = !DILocation(line: 1295, column: 18, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 1295, column: 8)
!1974 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 1293, column: 2)
!1975 = !DILocation(line: 1296, column: 8, scope: !1973)
!1976 = !DILocation(line: 1296, column: 16, scope: !1973)
!1977 = !DILocation(line: 1296, column: 54, scope: !1973)
!1978 = !DILocation(line: 1296, column: 40, scope: !1973)
!1979 = !DILocation(line: 1296, column: 21, scope: !1973)
!1980 = !DILocation(line: 1295, column: 8, scope: !1974)
!1981 = !DILocation(line: 1297, column: 57, scope: !1973)
!1982 = !DILocation(line: 1297, column: 38, scope: !1973)
!1983 = !DILocation(line: 1297, column: 18, scope: !1973)
!1984 = !DILocation(line: 1297, column: 15, scope: !1973)
!1985 = !DILocation(line: 1297, column: 6, scope: !1973)
!1986 = !DILocation(line: 1299, column: 20, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 1299, column: 16)
!1988 = !DILocation(line: 1299, column: 57, scope: !1987)
!1989 = !DILocation(line: 1299, column: 43, scope: !1987)
!1990 = !DILocation(line: 1299, column: 24, scope: !1987)
!1991 = !DILocation(line: 1299, column: 16, scope: !1969)
!1992 = !DILocation(line: 1301, column: 18, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 1301, column: 8)
!1994 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 1300, column: 2)
!1995 = !DILocation(line: 1301, column: 8, scope: !1994)
!1996 = !DILocation(line: 1302, column: 56, scope: !1993)
!1997 = !DILocation(line: 1302, column: 37, scope: !1993)
!1998 = !DILocation(line: 1302, column: 17, scope: !1993)
!1999 = !DILocation(line: 1302, column: 14, scope: !1993)
!2000 = !DILocation(line: 1302, column: 6, scope: !1993)
!2001 = !DILocation(line: 1303, column: 8, scope: !1994)
!2002 = !DILocation(line: 1303, column: 13, scope: !1994)
!2003 = !DILocation(line: 1304, column: 2, scope: !1994)
!2004 = !DILocation(line: 1307, column: 10, scope: !1956)
!2005 = !DILocation(line: 1307, column: 3, scope: !1956)
!2006 = distinct !DISubprogram(name: "num_trim", scope: !3, file: !3, line: 1254, type: !1957, scopeLine: 1255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2007)
!2007 = !{!2008, !2009}
!2008 = !DILocalVariable(name: "num", arg: 1, scope: !2006, file: !3, line: 1254, type: !597)
!2009 = !DILocalVariable(name: "precision", arg: 2, scope: !2006, file: !3, line: 1254, type: !210)
!2010 = !DILocation(line: 1254, column: 19, scope: !2006)
!2011 = !DILocation(line: 0, scope: !2006)
!2012 = !DILocation(line: 1256, column: 17, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 1256, column: 7)
!2014 = !DILocation(line: 1256, column: 7, scope: !2006)
!2015 = !DILocation(line: 1258, column: 17, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 1257, column: 5)
!2017 = !DILocation(line: 1259, column: 21, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 1259, column: 11)
!2019 = !DILocation(line: 1259, column: 11, scope: !2016)
!2020 = !DILocation(line: 1260, column: 46, scope: !2018)
!2021 = !DILocation(line: 1260, column: 6, scope: !2018)
!2022 = !DILocation(line: 1260, column: 11, scope: !2018)
!2023 = !DILocation(line: 1260, column: 2, scope: !2018)
!2024 = !DILocation(line: 1264, column: 21, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1264, column: 11)
!2026 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 1263, column: 5)
!2027 = !DILocation(line: 1264, column: 11, scope: !2026)
!2028 = !DILocation(line: 1265, column: 45, scope: !2025)
!2029 = !DILocation(line: 1265, column: 6, scope: !2025)
!2030 = !DILocation(line: 1265, column: 10, scope: !2025)
!2031 = !DILocation(line: 1265, column: 2, scope: !2025)
!2032 = !DILocation(line: 1266, column: 11, scope: !2026)
!2033 = !DILocation(line: 1266, column: 16, scope: !2026)
!2034 = !DILocation(line: 1269, column: 10, scope: !2006)
!2035 = !DILocation(line: 1269, column: 3, scope: !2006)
!2036 = distinct !DISubprogram(name: "parse_defined", scope: !3, file: !3, line: 642, type: !2037, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2039)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!597, !126}
!2039 = !{!2040, !2041, !2042, !2043, !2044, !2045, !2046}
!2040 = !DILocalVariable(name: "pfile", arg: 1, scope: !2036, file: !3, line: 642, type: !126)
!2041 = !DILocalVariable(name: "result", scope: !2036, file: !3, line: 644, type: !597)
!2042 = !DILocalVariable(name: "paren", scope: !2036, file: !3, line: 645, type: !216)
!2043 = !DILocalVariable(name: "node", scope: !2036, file: !3, line: 646, type: !314)
!2044 = !DILocalVariable(name: "token", scope: !2036, file: !3, line: 647, type: !298)
!2045 = !DILocalVariable(name: "initial_context", scope: !2036, file: !3, line: 648, type: !285)
!2046 = !DILocalVariable(name: "op", scope: !2047, file: !3, line: 675, type: !300)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 674, column: 2)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 673, column: 11)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 670, column: 5)
!2050 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 660, column: 7)
!2051 = !DILocation(line: 0, scope: !2036)
!2052 = !DILocation(line: 644, column: 11, scope: !2036)
!2053 = !DILocation(line: 648, column: 41, scope: !2036)
!2054 = !DILocation(line: 651, column: 16, scope: !2036)
!2055 = !DILocation(line: 651, column: 33, scope: !2036)
!2056 = !DILocation(line: 653, column: 11, scope: !2036)
!2057 = !DILocation(line: 654, column: 14, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 654, column: 7)
!2059 = !DILocation(line: 654, column: 19, scope: !2058)
!2060 = !DILocation(line: 654, column: 7, scope: !2036)
!2061 = !DILocation(line: 657, column: 15, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 655, column: 5)
!2063 = !DILocation(line: 0, scope: !2050)
!2064 = !DILocation(line: 660, column: 14, scope: !2050)
!2065 = !DILocation(line: 658, column: 5, scope: !2062)
!2066 = !DILocation(line: 660, column: 19, scope: !2050)
!2067 = !DILocation(line: 660, column: 7, scope: !2036)
!2068 = !DILocation(line: 662, column: 21, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 661, column: 5)
!2070 = !DILocation(line: 662, column: 30, scope: !2069)
!2071 = !DILocation(line: 663, column: 11, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 663, column: 11)
!2073 = !DILocation(line: 663, column: 17, scope: !2072)
!2074 = !DILocation(line: 663, column: 20, scope: !2072)
!2075 = !DILocation(line: 663, column: 43, scope: !2072)
!2076 = !DILocation(line: 663, column: 48, scope: !2072)
!2077 = !DILocation(line: 663, column: 11, scope: !2069)
!2078 = !DILocation(line: 665, column: 4, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 664, column: 2)
!2080 = !DILocation(line: 667, column: 2, scope: !2079)
!2081 = !DILocation(line: 671, column: 7, scope: !2049)
!2082 = !DILocation(line: 673, column: 18, scope: !2048)
!2083 = !DILocation(line: 673, column: 24, scope: !2048)
!2084 = !DILocation(line: 673, column: 11, scope: !2049)
!2085 = !DILocation(line: 675, column: 4, scope: !2047)
!2086 = !DILocation(line: 677, column: 7, scope: !2047)
!2087 = !DILocation(line: 677, column: 13, scope: !2047)
!2088 = !DILocation(line: 678, column: 21, scope: !2047)
!2089 = !DILocation(line: 678, column: 7, scope: !2047)
!2090 = !DILocation(line: 678, column: 12, scope: !2047)
!2091 = !DILocation(line: 681, column: 8, scope: !2047)
!2092 = !DILocation(line: 0, scope: !2047)
!2093 = !DILocation(line: 682, column: 8, scope: !2047)
!2094 = !DILocation(line: 679, column: 4, scope: !2047)
!2095 = !DILocation(line: 683, column: 2, scope: !2048)
!2096 = !DILocation(line: 683, column: 2, scope: !2047)
!2097 = !DILocation(line: 686, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 686, column: 7)
!2099 = !DILocation(line: 686, column: 7, scope: !2036)
!2100 = !DILocation(line: 688, column: 18, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 688, column: 11)
!2102 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 687, column: 5)
!2103 = !DILocation(line: 688, column: 26, scope: !2101)
!2104 = !DILocation(line: 688, column: 45, scope: !2101)
!2105 = !DILocation(line: 688, column: 48, scope: !2101)
!2106 = !DILocation(line: 688, column: 11, scope: !2102)
!2107 = !DILocation(line: 689, column: 2, scope: !2101)
!2108 = !DILocation(line: 692, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 692, column: 7)
!2110 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 692, column: 7)
!2111 = !DILocation(line: 692, column: 7, scope: !2110)
!2112 = !DILocation(line: 693, column: 19, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 693, column: 11)
!2114 = !DILocation(line: 693, column: 25, scope: !2113)
!2115 = !DILocation(line: 693, column: 11, scope: !2102)
!2116 = !DILocation(line: 695, column: 16, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 694, column: 2)
!2118 = !DILocation(line: 696, column: 19, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 696, column: 8)
!2120 = !DILocation(line: 696, column: 8, scope: !2117)
!2121 = !DILocation(line: 698, column: 22, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 698, column: 12)
!2123 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 697, column: 6)
!2124 = !DILocation(line: 698, column: 12, scope: !2122)
!2125 = !DILocation(line: 698, column: 12, scope: !2123)
!2126 = !DILocation(line: 699, column: 40, scope: !2122)
!2127 = !DILocation(line: 699, column: 3, scope: !2122)
!2128 = !DILocation(line: 703, column: 22, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 703, column: 12)
!2130 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 702, column: 6)
!2131 = !DILocation(line: 703, column: 12, scope: !2129)
!2132 = !DILocation(line: 703, column: 12, scope: !2130)
!2133 = !DILocation(line: 704, column: 39, scope: !2129)
!2134 = !DILocation(line: 704, column: 3, scope: !2129)
!2135 = !DILocation(line: 710, column: 14, scope: !2102)
!2136 = !DILocation(line: 710, column: 28, scope: !2102)
!2137 = !DILocation(line: 711, column: 5, scope: !2102)
!2138 = !DILocation(line: 713, column: 33, scope: !2036)
!2139 = !DILocation(line: 715, column: 10, scope: !2036)
!2140 = !DILocation(line: 715, column: 20, scope: !2036)
!2141 = !DILocation(line: 716, column: 10, scope: !2036)
!2142 = !DILocation(line: 716, column: 15, scope: !2036)
!2143 = !DILocation(line: 717, column: 10, scope: !2036)
!2144 = !DILocation(line: 717, column: 19, scope: !2036)
!2145 = !DILocation(line: 718, column: 21, scope: !2036)
!2146 = !DILocation(line: 718, column: 30, scope: !2036)
!2147 = !DILocation(line: 718, column: 35, scope: !2036)
!2148 = !DILocation(line: 718, column: 10, scope: !2036)
!2149 = !DILocation(line: 718, column: 14, scope: !2036)
!2150 = !DILocation(line: 720, column: 1, scope: !2036)
!2151 = distinct !DISubprogram(name: "check_promotion", scope: !3, file: !3, line: 1234, type: !2152, scopeLine: 1235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2156)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{null, !126, !2154}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!2156 = !{!2157, !2158}
!2157 = !DILocalVariable(name: "pfile", arg: 1, scope: !2151, file: !3, line: 1234, type: !126)
!2158 = !DILocalVariable(name: "op", arg: 2, scope: !2151, file: !3, line: 1234, type: !2154)
!2159 = !DILocation(line: 0, scope: !2151)
!2160 = !DILocation(line: 1236, column: 17, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 1236, column: 7)
!2162 = !DILocation(line: 1236, column: 43, scope: !2161)
!2163 = !DILocation(line: 1236, column: 27, scope: !2161)
!2164 = !DILocation(line: 1236, column: 7, scope: !2151)
!2165 = !DILocation(line: 1239, column: 7, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 1239, column: 7)
!2167 = !DILocation(line: 1239, column: 7, scope: !2151)
!2168 = !DILocation(line: 1241, column: 33, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 1241, column: 11)
!2170 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 1240, column: 5)
!2171 = !DILocation(line: 1241, column: 40, scope: !2169)
!2172 = !DILocation(line: 1241, column: 12, scope: !2169)
!2173 = !DILocation(line: 1241, column: 11, scope: !2170)
!2174 = !DILocation(line: 1242, column: 53, scope: !2169)
!2175 = !DILocation(line: 1244, column: 39, scope: !2169)
!2176 = !DILocation(line: 1244, column: 9, scope: !2169)
!2177 = !DILocation(line: 1242, column: 2, scope: !2169)
!2178 = !DILocation(line: 1246, column: 31, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 1246, column: 12)
!2180 = !DILocation(line: 1246, column: 38, scope: !2179)
!2181 = !DILocation(line: 1246, column: 13, scope: !2179)
!2182 = !DILocation(line: 1246, column: 12, scope: !2166)
!2183 = !DILocation(line: 1247, column: 53, scope: !2179)
!2184 = !DILocation(line: 1249, column: 39, scope: !2179)
!2185 = !DILocation(line: 1249, column: 9, scope: !2179)
!2186 = !DILocation(line: 1247, column: 5, scope: !2179)
!2187 = !DILocation(line: 1250, column: 1, scope: !2151)
!2188 = distinct !DISubprogram(name: "num_unary_op", scope: !3, file: !3, line: 1500, type: !2189, scopeLine: 1501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2191)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!597, !126, !597, !19}
!2191 = !{!2192, !2193, !2194}
!2192 = !DILocalVariable(name: "pfile", arg: 1, scope: !2188, file: !3, line: 1500, type: !126)
!2193 = !DILocalVariable(name: "num", arg: 2, scope: !2188, file: !3, line: 1500, type: !597)
!2194 = !DILocalVariable(name: "op", arg: 3, scope: !2188, file: !3, line: 1500, type: !19)
!2195 = !DILocation(line: 0, scope: !2188)
!2196 = !DILocation(line: 1500, column: 42, scope: !2188)
!2197 = !DILocation(line: 1502, column: 3, scope: !2188)
!2198 = !DILocation(line: 1505, column: 11, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 1505, column: 11)
!2200 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 1503, column: 5)
!2201 = !DILocation(line: 1505, column: 36, scope: !2199)
!2202 = !DILocation(line: 1505, column: 53, scope: !2199)
!2203 = !DILocation(line: 1505, column: 40, scope: !2199)
!2204 = !DILocation(line: 1505, column: 11, scope: !2200)
!2205 = !DILocation(line: 1506, column: 2, scope: !2199)
!2206 = !DILocation(line: 1508, column: 11, scope: !2200)
!2207 = !DILocation(line: 1508, column: 20, scope: !2200)
!2208 = !DILocation(line: 1509, column: 7, scope: !2200)
!2209 = !DILocation(line: 1512, column: 13, scope: !2200)
!2210 = !DILocation(line: 1512, column: 30, scope: !2200)
!2211 = !DILocation(line: 1513, column: 7, scope: !2200)
!2212 = !DILocation(line: 1516, column: 23, scope: !2200)
!2213 = !DILocation(line: 1516, column: 18, scope: !2200)
!2214 = !DILocation(line: 1516, column: 16, scope: !2200)
!2215 = !DILocation(line: 1517, column: 22, scope: !2200)
!2216 = !DILocation(line: 1517, column: 17, scope: !2200)
!2217 = !DILocation(line: 1517, column: 15, scope: !2200)
!2218 = !DILocation(line: 1518, column: 13, scope: !2200)
!2219 = !DILocation(line: 1518, column: 28, scope: !2200)
!2220 = !DILocation(line: 1519, column: 11, scope: !2200)
!2221 = !DILocation(line: 1519, column: 20, scope: !2200)
!2222 = !DILocation(line: 1520, column: 7, scope: !2200)
!2223 = !DILocation(line: 1523, column: 17, scope: !2200)
!2224 = !DILocation(line: 1523, column: 15, scope: !2200)
!2225 = !DILocation(line: 1524, column: 16, scope: !2200)
!2226 = !DILocation(line: 1525, column: 11, scope: !2200)
!2227 = !DILocation(line: 1525, column: 20, scope: !2200)
!2228 = !DILocation(line: 1526, column: 11, scope: !2200)
!2229 = !DILocation(line: 1526, column: 21, scope: !2200)
!2230 = !DILocation(line: 1527, column: 7, scope: !2200)
!2231 = !DILocation(line: 1530, column: 10, scope: !2188)
!2232 = !DILocation(line: 1530, column: 3, scope: !2188)
!2233 = distinct !DISubprogram(name: "num_binary_op", scope: !3, file: !3, line: 1535, type: !2234, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2236)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!597, !126, !597, !597, !19}
!2236 = !{!2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244}
!2237 = !DILocalVariable(name: "pfile", arg: 1, scope: !2233, file: !3, line: 1535, type: !126)
!2238 = !DILocalVariable(name: "lhs", arg: 2, scope: !2233, file: !3, line: 1535, type: !597)
!2239 = !DILocalVariable(name: "rhs", arg: 3, scope: !2233, file: !3, line: 1535, type: !597)
!2240 = !DILocalVariable(name: "op", arg: 4, scope: !2233, file: !3, line: 1535, type: !19)
!2241 = !DILocalVariable(name: "result", scope: !2233, file: !3, line: 1537, type: !597)
!2242 = !DILocalVariable(name: "precision", scope: !2233, file: !3, line: 1538, type: !210)
!2243 = !DILocalVariable(name: "n", scope: !2233, file: !3, line: 1539, type: !210)
!2244 = !DILocalVariable(name: "lhsp", scope: !2245, file: !3, line: 1579, type: !139)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 1578, column: 2)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 1577, column: 11)
!2247 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 1542, column: 5)
!2248 = !DILocation(line: 0, scope: !2233)
!2249 = !DILocation(line: 1535, column: 43, scope: !2233)
!2250 = !DILocation(line: 1535, column: 56, scope: !2233)
!2251 = !DILocation(line: 1537, column: 3, scope: !2233)
!2252 = !DILocation(line: 1538, column: 22, scope: !2233)
!2253 = !DILocation(line: 1541, column: 3, scope: !2233)
!2254 = !DILocation(line: 1546, column: 16, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 1546, column: 11)
!2256 = !DILocation(line: 1546, column: 12, scope: !2255)
!2257 = !DILocation(line: 1546, column: 26, scope: !2255)
!2258 = !DILocation(line: 1546, column: 30, scope: !2255)
!2259 = !DILocation(line: 1546, column: 11, scope: !2247)
!2260 = !DILocation(line: 1549, column: 11, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1549, column: 8)
!2262 = distinct !DILexicalBlock(scope: !2255, file: !3, line: 1547, column: 2)
!2263 = !DILocation(line: 1553, column: 10, scope: !2262)
!2264 = !DILocation(line: 1554, column: 2, scope: !2262)
!2265 = !DILocation(line: 1555, column: 15, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 1555, column: 11)
!2267 = !DILocation(line: 1555, column: 11, scope: !2266)
!2268 = !DILocation(line: 1555, column: 11, scope: !2247)
!2269 = !DILocation(line: 1559, column: 14, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 1559, column: 11)
!2271 = !DILocation(line: 1559, column: 11, scope: !2247)
!2272 = !DILocation(line: 1560, column: 8, scope: !2270)
!2273 = !DILocation(line: 1560, column: 2, scope: !2270)
!2274 = !DILocation(line: 1562, column: 8, scope: !2270)
!2275 = !DILocation(line: 1567, column: 13, scope: !2247)
!2276 = !DILocation(line: 1567, column: 7, scope: !2247)
!2277 = !DILocation(line: 1569, column: 24, scope: !2247)
!2278 = !DILocation(line: 1569, column: 34, scope: !2247)
!2279 = !DILocation(line: 1569, column: 28, scope: !2247)
!2280 = !DILocation(line: 1569, column: 14, scope: !2247)
!2281 = !DILocation(line: 1569, column: 18, scope: !2247)
!2282 = !DILocation(line: 1570, column: 25, scope: !2247)
!2283 = !DILocation(line: 1570, column: 36, scope: !2247)
!2284 = !DILocation(line: 1570, column: 30, scope: !2247)
!2285 = !DILocation(line: 1570, column: 14, scope: !2247)
!2286 = !DILocation(line: 1571, column: 22, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 1571, column: 11)
!2288 = !DILocation(line: 1571, column: 11, scope: !2247)
!2289 = !DILocation(line: 1572, column: 13, scope: !2287)
!2290 = !DILocation(line: 1572, column: 2, scope: !2287)
!2291 = !DILocation(line: 0, scope: !2247)
!2292 = !DILocation(line: 1573, column: 30, scope: !2247)
!2293 = !DILocation(line: 1573, column: 40, scope: !2247)
!2294 = !DILocation(line: 1573, column: 26, scope: !2247)
!2295 = !DILocation(line: 1573, column: 14, scope: !2247)
!2296 = !DILocation(line: 1573, column: 24, scope: !2247)
!2297 = !DILocation(line: 1574, column: 14, scope: !2247)
!2298 = !DILocation(line: 1574, column: 23, scope: !2247)
!2299 = !DILocation(line: 1576, column: 16, scope: !2247)
!2300 = !DILocation(line: 1577, column: 19, scope: !2246)
!2301 = !DILocation(line: 1577, column: 12, scope: !2246)
!2302 = !DILocation(line: 1577, column: 11, scope: !2247)
!2303 = !DILocation(line: 1579, column: 16, scope: !2245)
!2304 = !DILocation(line: 0, scope: !2245)
!2305 = !DILocation(line: 1580, column: 31, scope: !2245)
!2306 = !DILocation(line: 1580, column: 28, scope: !2245)
!2307 = !DILocation(line: 1581, column: 9, scope: !2245)
!2308 = !DILocation(line: 1581, column: 20, scope: !2245)
!2309 = !DILocation(line: 1581, column: 17, scope: !2245)
!2310 = !DILocation(line: 1580, column: 20, scope: !2245)
!2311 = !DILocation(line: 1582, column: 2, scope: !2245)
!2312 = !DILocation(line: 1583, column: 14, scope: !2247)
!2313 = !DILocation(line: 1583, column: 7, scope: !2247)
!2314 = !DILocation(line: 1587, column: 11, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 1587, column: 11)
!2316 = !DILocation(line: 1587, column: 32, scope: !2315)
!2317 = !DILocation(line: 1587, column: 37, scope: !2315)
!2318 = !DILocation(line: 1588, column: 8, scope: !2315)
!2319 = !DILocation(line: 1588, column: 25, scope: !2315)
!2320 = !DILocation(line: 1588, column: 12, scope: !2315)
!2321 = !DILocation(line: 1587, column: 11, scope: !2247)
!2322 = !DILocation(line: 1589, column: 2, scope: !2315)
!2323 = !DILocation(line: 1591, column: 13, scope: !2247)
!2324 = !DILocation(line: 1592, column: 7, scope: !2247)
!2325 = !DILocation(line: 1595, column: 10, scope: !2233)
!2326 = !DILocation(line: 1595, column: 3, scope: !2233)
!2327 = !DILocation(line: 1596, column: 1, scope: !2233)
!2328 = distinct !DISubprogram(name: "num_inequality_op", scope: !3, file: !3, line: 1381, type: !2234, scopeLine: 1383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2329)
!2329 = !{!2330, !2331, !2332, !2333, !2334}
!2330 = !DILocalVariable(name: "pfile", arg: 1, scope: !2328, file: !3, line: 1381, type: !126)
!2331 = !DILocalVariable(name: "lhs", arg: 2, scope: !2328, file: !3, line: 1381, type: !597)
!2332 = !DILocalVariable(name: "rhs", arg: 3, scope: !2328, file: !3, line: 1381, type: !597)
!2333 = !DILocalVariable(name: "op", arg: 4, scope: !2328, file: !3, line: 1382, type: !19)
!2334 = !DILocalVariable(name: "gte", scope: !2328, file: !3, line: 1384, type: !139)
!2335 = !DILocation(line: 0, scope: !2328)
!2336 = !DILocation(line: 1381, column: 47, scope: !2328)
!2337 = !DILocation(line: 1381, column: 60, scope: !2328)
!2338 = !DILocation(line: 1384, column: 40, scope: !2328)
!2339 = !DILocation(line: 1384, column: 14, scope: !2328)
!2340 = !DILocation(line: 1386, column: 7, scope: !2328)
!2341 = !DILocation(line: 1387, column: 15, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 1386, column: 7)
!2343 = !DILocation(line: 1387, column: 9, scope: !2342)
!2344 = !DILocation(line: 1387, column: 13, scope: !2342)
!2345 = !DILocation(line: 1387, column: 5, scope: !2342)
!2346 = !DILocation(line: 1389, column: 15, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 1388, column: 12)
!2348 = !DILocation(line: 1389, column: 9, scope: !2347)
!2349 = !DILocation(line: 1389, column: 13, scope: !2347)
!2350 = !DILocation(line: 1389, column: 5, scope: !2347)
!2351 = !DILocation(line: 1391, column: 15, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 1390, column: 12)
!2353 = !DILocation(line: 1391, column: 19, scope: !2352)
!2354 = !DILocation(line: 1391, column: 23, scope: !2352)
!2355 = !DILocation(line: 1391, column: 9, scope: !2352)
!2356 = !DILocation(line: 1391, column: 13, scope: !2352)
!2357 = !DILocation(line: 1391, column: 5, scope: !2352)
!2358 = !DILocation(line: 1393, column: 16, scope: !2352)
!2359 = !DILocation(line: 1393, column: 20, scope: !2352)
!2360 = !DILocation(line: 1393, column: 23, scope: !2352)
!2361 = !DILocation(line: 1393, column: 9, scope: !2352)
!2362 = !DILocation(line: 1393, column: 13, scope: !2352)
!2363 = !DILocation(line: 1395, column: 7, scope: !2328)
!2364 = !DILocation(line: 1395, column: 12, scope: !2328)
!2365 = !DILocation(line: 1396, column: 7, scope: !2328)
!2366 = !DILocation(line: 1396, column: 16, scope: !2328)
!2367 = !DILocation(line: 1397, column: 7, scope: !2328)
!2368 = !DILocation(line: 1397, column: 17, scope: !2328)
!2369 = !DILocation(line: 1398, column: 10, scope: !2328)
!2370 = !DILocation(line: 1399, column: 1, scope: !2328)
!2371 = distinct !DISubprogram(name: "num_equality_op", scope: !3, file: !3, line: 1403, type: !2234, scopeLine: 1405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2372)
!2372 = !{!2373, !2374, !2375, !2376, !2377}
!2373 = !DILocalVariable(name: "pfile", arg: 1, scope: !2371, file: !3, line: 1403, type: !126)
!2374 = !DILocalVariable(name: "lhs", arg: 2, scope: !2371, file: !3, line: 1404, type: !597)
!2375 = !DILocalVariable(name: "rhs", arg: 3, scope: !2371, file: !3, line: 1404, type: !597)
!2376 = !DILocalVariable(name: "op", arg: 4, scope: !2371, file: !3, line: 1404, type: !19)
!2377 = !DILocalVariable(name: "eq", scope: !2371, file: !3, line: 1407, type: !139)
!2378 = !DILocation(line: 0, scope: !2371)
!2379 = !DILocation(line: 1404, column: 12, scope: !2371)
!2380 = !DILocation(line: 1404, column: 25, scope: !2371)
!2381 = !DILocation(line: 1407, column: 13, scope: !2371)
!2382 = !DILocation(line: 1408, column: 10, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 1408, column: 7)
!2384 = !DILocation(line: 1408, column: 7, scope: !2371)
!2385 = !DILocation(line: 1409, column: 10, scope: !2383)
!2386 = !DILocation(line: 1409, column: 5, scope: !2383)
!2387 = !DILocation(line: 1410, column: 13, scope: !2371)
!2388 = !DILocation(line: 1410, column: 11, scope: !2371)
!2389 = !DILocation(line: 1411, column: 7, scope: !2371)
!2390 = !DILocation(line: 1411, column: 12, scope: !2371)
!2391 = !DILocation(line: 1412, column: 7, scope: !2371)
!2392 = !DILocation(line: 1412, column: 16, scope: !2371)
!2393 = !DILocation(line: 1413, column: 7, scope: !2371)
!2394 = !DILocation(line: 1413, column: 17, scope: !2371)
!2395 = !DILocation(line: 1414, column: 10, scope: !2371)
!2396 = !DILocation(line: 1415, column: 1, scope: !2371)
!2397 = distinct !DISubprogram(name: "num_bitwise_op", scope: !3, file: !3, line: 1352, type: !2234, scopeLine: 1354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2398)
!2398 = !{!2399, !2400, !2401, !2402}
!2399 = !DILocalVariable(name: "pfile", arg: 1, scope: !2397, file: !3, line: 1352, type: !126)
!2400 = !DILocalVariable(name: "lhs", arg: 2, scope: !2397, file: !3, line: 1353, type: !597)
!2401 = !DILocalVariable(name: "rhs", arg: 3, scope: !2397, file: !3, line: 1353, type: !597)
!2402 = !DILocalVariable(name: "op", arg: 4, scope: !2397, file: !3, line: 1353, type: !19)
!2403 = !DILocation(line: 0, scope: !2397)
!2404 = !DILocation(line: 1353, column: 11, scope: !2397)
!2405 = !DILocation(line: 1353, column: 24, scope: !2397)
!2406 = !DILocation(line: 1355, column: 7, scope: !2397)
!2407 = !DILocation(line: 1355, column: 16, scope: !2397)
!2408 = !DILocation(line: 1356, column: 23, scope: !2397)
!2409 = !DILocation(line: 1356, column: 33, scope: !2397)
!2410 = !DILocation(line: 1356, column: 19, scope: !2397)
!2411 = !DILocation(line: 1356, column: 17, scope: !2397)
!2412 = !DILocation(line: 1360, column: 7, scope: !2397)
!2413 = !DILocation(line: 1362, column: 22, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 1361, column: 5)
!2415 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 1360, column: 7)
!2416 = !DILocation(line: 1362, column: 11, scope: !2414)
!2417 = !DILocation(line: 1362, column: 15, scope: !2414)
!2418 = !DILocation(line: 1363, column: 23, scope: !2414)
!2419 = !DILocation(line: 1363, column: 11, scope: !2414)
!2420 = !DILocation(line: 1363, column: 16, scope: !2414)
!2421 = !DILocation(line: 1364, column: 5, scope: !2414)
!2422 = !DILocation(line: 1367, column: 22, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 1366, column: 5)
!2424 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 1365, column: 12)
!2425 = !DILocation(line: 1367, column: 11, scope: !2423)
!2426 = !DILocation(line: 1367, column: 15, scope: !2423)
!2427 = !DILocation(line: 1368, column: 23, scope: !2423)
!2428 = !DILocation(line: 1368, column: 11, scope: !2423)
!2429 = !DILocation(line: 1368, column: 16, scope: !2423)
!2430 = !DILocation(line: 1369, column: 5, scope: !2423)
!2431 = !DILocation(line: 1372, column: 22, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 1371, column: 5)
!2433 = !DILocation(line: 1372, column: 11, scope: !2432)
!2434 = !DILocation(line: 1372, column: 15, scope: !2432)
!2435 = !DILocation(line: 1373, column: 23, scope: !2432)
!2436 = !DILocation(line: 1373, column: 11, scope: !2432)
!2437 = !DILocation(line: 1373, column: 16, scope: !2432)
!2438 = !DILocation(line: 1376, column: 10, scope: !2397)
!2439 = !DILocation(line: 1376, column: 3, scope: !2397)
!2440 = distinct !DISubprogram(name: "num_mul", scope: !3, file: !3, line: 1632, type: !2441, scopeLine: 1633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2443)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!597, !126, !597, !597}
!2443 = !{!2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452}
!2444 = !DILocalVariable(name: "pfile", arg: 1, scope: !2440, file: !3, line: 1632, type: !126)
!2445 = !DILocalVariable(name: "lhs", arg: 2, scope: !2440, file: !3, line: 1632, type: !597)
!2446 = !DILocalVariable(name: "rhs", arg: 3, scope: !2440, file: !3, line: 1632, type: !597)
!2447 = !DILocalVariable(name: "result", scope: !2440, file: !3, line: 1634, type: !597)
!2448 = !DILocalVariable(name: "temp", scope: !2440, file: !3, line: 1634, type: !597)
!2449 = !DILocalVariable(name: "unsignedp", scope: !2440, file: !3, line: 1635, type: !139)
!2450 = !DILocalVariable(name: "overflow", scope: !2440, file: !3, line: 1636, type: !139)
!2451 = !DILocalVariable(name: "negate", scope: !2440, file: !3, line: 1636, type: !139)
!2452 = !DILocalVariable(name: "precision", scope: !2440, file: !3, line: 1637, type: !210)
!2453 = !DILocation(line: 0, scope: !2440)
!2454 = !DILocation(line: 1632, column: 37, scope: !2440)
!2455 = !DILocation(line: 1632, column: 50, scope: !2440)
!2456 = !DILocation(line: 1634, column: 11, scope: !2440)
!2457 = !DILocation(line: 1634, column: 3, scope: !2440)
!2458 = !DILocation(line: 1635, column: 24, scope: !2440)
!2459 = !DILocation(line: 1635, column: 34, scope: !2440)
!2460 = !DILocation(line: 1635, column: 20, scope: !2440)
!2461 = !DILocation(line: 1637, column: 22, scope: !2440)
!2462 = !DILocation(line: 1640, column: 7, scope: !2440)
!2463 = !DILocation(line: 1642, column: 12, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1642, column: 11)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 1641, column: 5)
!2466 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1640, column: 7)
!2467 = !DILocation(line: 1642, column: 11, scope: !2465)
!2468 = !DILocation(line: 1643, column: 26, scope: !2464)
!2469 = !DILocation(line: 1643, column: 2, scope: !2464)
!2470 = !DILocation(line: 1644, column: 12, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1644, column: 11)
!2472 = !DILocation(line: 1644, column: 11, scope: !2465)
!2473 = !DILocation(line: 1645, column: 11, scope: !2471)
!2474 = !DILocation(line: 1645, column: 26, scope: !2471)
!2475 = !DILocation(line: 1645, column: 2, scope: !2471)
!2476 = !DILocation(line: 1636, column: 18, scope: !2440)
!2477 = !DILocation(line: 1648, column: 18, scope: !2440)
!2478 = !DILocation(line: 1648, column: 23, scope: !2440)
!2479 = !DILocation(line: 1649, column: 12, scope: !2440)
!2480 = !DILocation(line: 1649, column: 30, scope: !2440)
!2481 = !DILocation(line: 1649, column: 39, scope: !2440)
!2482 = !DILocation(line: 1651, column: 10, scope: !2440)
!2483 = !DILocation(line: 1651, column: 28, scope: !2440)
!2484 = !DILocation(line: 1651, column: 38, scope: !2440)
!2485 = !DILocation(line: 1652, column: 23, scope: !2440)
!2486 = !DILocation(line: 1652, column: 10, scope: !2440)
!2487 = !DILocation(line: 1652, column: 15, scope: !2440)
!2488 = !DILocation(line: 1653, column: 12, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1653, column: 7)
!2490 = !DILocation(line: 1656, column: 10, scope: !2440)
!2491 = !DILocation(line: 1656, column: 28, scope: !2440)
!2492 = !DILocation(line: 1656, column: 37, scope: !2440)
!2493 = !DILocation(line: 1657, column: 23, scope: !2440)
!2494 = !DILocation(line: 1657, column: 15, scope: !2440)
!2495 = !DILocation(line: 1658, column: 12, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1658, column: 7)
!2497 = !DILocation(line: 1661, column: 21, scope: !2440)
!2498 = !DILocation(line: 1661, column: 12, scope: !2440)
!2499 = !DILocation(line: 1661, column: 36, scope: !2440)
!2500 = !DILocation(line: 1662, column: 12, scope: !2440)
!2501 = !DILocation(line: 1663, column: 8, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1663, column: 7)
!2503 = !DILocation(line: 1648, column: 14, scope: !2440)
!2504 = !DILocation(line: 1658, column: 7, scope: !2440)
!2505 = !DILocation(line: 1663, column: 7, scope: !2440)
!2506 = !DILocation(line: 1664, column: 5, scope: !2502)
!2507 = !DILocation(line: 1666, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1666, column: 7)
!2509 = !DILocation(line: 1666, column: 7, scope: !2440)
!2510 = !DILocation(line: 1667, column: 14, scope: !2508)
!2511 = !DILocation(line: 1667, column: 5, scope: !2508)
!2512 = !DILocation(line: 1669, column: 7, scope: !2440)
!2513 = !DILocation(line: 1670, column: 12, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1669, column: 7)
!2515 = !DILocation(line: 1670, column: 21, scope: !2514)
!2516 = !DILocation(line: 1670, column: 5, scope: !2514)
!2517 = !DILocation(line: 1672, column: 23, scope: !2514)
!2518 = !DILocation(line: 1672, column: 32, scope: !2514)
!2519 = !DILocation(line: 1672, column: 36, scope: !2514)
!2520 = !DILocation(line: 1672, column: 71, scope: !2514)
!2521 = !DILocation(line: 1672, column: 69, scope: !2514)
!2522 = !DILocation(line: 1673, column: 8, scope: !2514)
!2523 = !DILocation(line: 1673, column: 12, scope: !2514)
!2524 = !DILocation(line: 1672, column: 12, scope: !2514)
!2525 = !DILocation(line: 1672, column: 21, scope: !2514)
!2526 = !DILocation(line: 1674, column: 10, scope: !2440)
!2527 = !DILocation(line: 1674, column: 20, scope: !2440)
!2528 = !DILocation(line: 1677, column: 1, scope: !2440)
!2529 = distinct !DISubprogram(name: "num_div_op", scope: !3, file: !3, line: 1684, type: !2530, scopeLine: 1686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!597, !126, !597, !597, !19, !248}
!2532 = !{!2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545}
!2533 = !DILocalVariable(name: "pfile", arg: 1, scope: !2529, file: !3, line: 1684, type: !126)
!2534 = !DILocalVariable(name: "lhs", arg: 2, scope: !2529, file: !3, line: 1684, type: !597)
!2535 = !DILocalVariable(name: "rhs", arg: 3, scope: !2529, file: !3, line: 1684, type: !597)
!2536 = !DILocalVariable(name: "op", arg: 4, scope: !2529, file: !3, line: 1684, type: !19)
!2537 = !DILocalVariable(name: "location", arg: 5, scope: !2529, file: !3, line: 1685, type: !248)
!2538 = !DILocalVariable(name: "result", scope: !2529, file: !3, line: 1687, type: !597)
!2539 = !DILocalVariable(name: "sub", scope: !2529, file: !3, line: 1687, type: !597)
!2540 = !DILocalVariable(name: "mask", scope: !2529, file: !3, line: 1688, type: !601)
!2541 = !DILocalVariable(name: "unsignedp", scope: !2529, file: !3, line: 1689, type: !139)
!2542 = !DILocalVariable(name: "negate", scope: !2529, file: !3, line: 1690, type: !139)
!2543 = !DILocalVariable(name: "lhs_neg", scope: !2529, file: !3, line: 1690, type: !139)
!2544 = !DILocalVariable(name: "i", scope: !2529, file: !3, line: 1691, type: !210)
!2545 = !DILocalVariable(name: "precision", scope: !2529, file: !3, line: 1691, type: !210)
!2546 = !DILocation(line: 0, scope: !2529)
!2547 = !DILocation(line: 1684, column: 40, scope: !2529)
!2548 = !DILocation(line: 1684, column: 53, scope: !2529)
!2549 = !DILocation(line: 1687, column: 3, scope: !2529)
!2550 = !DILocation(line: 1689, column: 24, scope: !2529)
!2551 = !DILocation(line: 1689, column: 34, scope: !2529)
!2552 = !DILocation(line: 1689, column: 20, scope: !2529)
!2553 = !DILocation(line: 1691, column: 25, scope: !2529)
!2554 = !DILocation(line: 1694, column: 7, scope: !2529)
!2555 = !DILocation(line: 1696, column: 12, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1696, column: 11)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 1695, column: 5)
!2558 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 1694, column: 7)
!2559 = !DILocation(line: 1696, column: 11, scope: !2557)
!2560 = !DILocation(line: 1697, column: 42, scope: !2556)
!2561 = !DILocation(line: 1697, column: 2, scope: !2556)
!2562 = !DILocation(line: 1698, column: 12, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1698, column: 11)
!2564 = !DILocation(line: 1698, column: 11, scope: !2557)
!2565 = !DILocation(line: 1699, column: 11, scope: !2563)
!2566 = !DILocation(line: 1699, column: 26, scope: !2563)
!2567 = !DILocation(line: 1699, column: 2, scope: !2563)
!2568 = !DILocation(line: 1690, column: 8, scope: !2529)
!2569 = !DILocation(line: 1690, column: 24, scope: !2529)
!2570 = !DILocation(line: 1703, column: 11, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 1703, column: 7)
!2572 = !DILocation(line: 1703, column: 7, scope: !2571)
!2573 = !DILocation(line: 1703, column: 7, scope: !2529)
!2574 = !DILocation(line: 1706, column: 37, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 1704, column: 5)
!2576 = !DILocation(line: 1706, column: 31, scope: !2575)
!2577 = !DILocation(line: 1707, column: 7, scope: !2575)
!2578 = !DILocation(line: 0, scope: !2575)
!2579 = !DILocation(line: 1708, column: 15, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 1708, column: 6)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 1707, column: 7)
!2582 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 1707, column: 7)
!2583 = !DILocation(line: 1708, column: 6, scope: !2581)
!2584 = !DILocation(line: 1707, column: 26, scope: !2581)
!2585 = !DILocation(line: 1707, column: 7, scope: !2581)
!2586 = distinct !{!2586, !2587, !2588}
!2587 = !DILocation(line: 1707, column: 7, scope: !2582)
!2588 = !DILocation(line: 1709, column: 4, scope: !2582)
!2589 = !DILocation(line: 1711, column: 16, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 1711, column: 12)
!2591 = !DILocation(line: 1711, column: 12, scope: !2590)
!2592 = !DILocation(line: 1711, column: 12, scope: !2571)
!2593 = !DILocation(line: 1713, column: 21, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 1713, column: 11)
!2595 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1712, column: 5)
!2596 = !DILocation(line: 1713, column: 11, scope: !2595)
!2597 = !DILocation(line: 1717, column: 31, scope: !2595)
!2598 = !DILocation(line: 1718, column: 7, scope: !2595)
!2599 = !DILocation(line: 0, scope: !2595)
!2600 = !DILocation(line: 1719, column: 14, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 1719, column: 6)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 1718, column: 7)
!2603 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 1718, column: 7)
!2604 = !DILocation(line: 1719, column: 6, scope: !2602)
!2605 = !DILocation(line: 1718, column: 17, scope: !2602)
!2606 = !DILocation(line: 1718, column: 26, scope: !2602)
!2607 = !DILocation(line: 1718, column: 7, scope: !2602)
!2608 = distinct !{!2608, !2609, !2610}
!2609 = !DILocation(line: 1718, column: 7, scope: !2603)
!2610 = !DILocation(line: 1720, column: 4, scope: !2603)
!2611 = !DILocation(line: 1724, column: 25, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 1724, column: 11)
!2613 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1723, column: 5)
!2614 = !DILocation(line: 1724, column: 12, scope: !2612)
!2615 = !DILocation(line: 1724, column: 11, scope: !2613)
!2616 = !DILocation(line: 1725, column: 2, scope: !2612)
!2617 = !DILocation(line: 1727, column: 14, scope: !2613)
!2618 = !DILocation(line: 1727, column: 7, scope: !2613)
!2619 = !DILocation(line: 1735, column: 7, scope: !2529)
!2620 = !DILocation(line: 0, scope: !2571)
!2621 = !DILocation(line: 1735, column: 17, scope: !2529)
!2622 = !DILocation(line: 1736, column: 17, scope: !2529)
!2623 = !DILocation(line: 1737, column: 21, scope: !2529)
!2624 = !DILocation(line: 1738, column: 9, scope: !2529)
!2625 = !DILocation(line: 1740, column: 24, scope: !2529)
!2626 = !DILocation(line: 1740, column: 28, scope: !2529)
!2627 = !DILocation(line: 1740, column: 10, scope: !2529)
!2628 = !DILocation(line: 1740, column: 15, scope: !2529)
!2629 = !DILocation(line: 0, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 1744, column: 2)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1743, column: 11)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 1742, column: 5)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 1741, column: 3)
!2634 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 1741, column: 3)
!2635 = !DILocation(line: 0, scope: !2632)
!2636 = !DILocation(line: 1741, column: 3, scope: !2529)
!2637 = !DILocation(line: 1743, column: 11, scope: !2631)
!2638 = !DILocation(line: 1743, column: 11, scope: !2632)
!2639 = !DILocation(line: 1745, column: 10, scope: !2630)
!2640 = !DILocation(line: 1746, column: 10, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 1746, column: 8)
!2642 = !DILocation(line: 1746, column: 8, scope: !2630)
!2643 = !DILocation(line: 1747, column: 44, scope: !2641)
!2644 = !DILocation(line: 1747, column: 38, scope: !2641)
!2645 = !DILocation(line: 1747, column: 18, scope: !2641)
!2646 = !DILocation(line: 1747, column: 6, scope: !2641)
!2647 = !DILocation(line: 1749, column: 37, scope: !2641)
!2648 = !DILocation(line: 1749, column: 17, scope: !2641)
!2649 = !DILocation(line: 1751, column: 15, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1751, column: 11)
!2651 = !DILocation(line: 1751, column: 11, scope: !2632)
!2652 = !DILocation(line: 1751, column: 12, scope: !2650)
!2653 = !DILocation(line: 1753, column: 22, scope: !2632)
!2654 = !DILocation(line: 1753, column: 26, scope: !2632)
!2655 = !DILocation(line: 1753, column: 39, scope: !2632)
!2656 = !DILocation(line: 1753, column: 44, scope: !2632)
!2657 = !DILocation(line: 1753, column: 32, scope: !2632)
!2658 = !DILocation(line: 1753, column: 15, scope: !2632)
!2659 = !DILocation(line: 1754, column: 16, scope: !2632)
!2660 = !DILocation(line: 1741, column: 3, scope: !2633)
!2661 = distinct !{!2661, !2662, !2663}
!2662 = !DILocation(line: 1741, column: 3, scope: !2634)
!2663 = !DILocation(line: 1755, column: 5, scope: !2634)
!2664 = !DILocation(line: 1758, column: 10, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 1758, column: 7)
!2666 = !DILocation(line: 1758, column: 7, scope: !2529)
!2667 = !DILocation(line: 1760, column: 14, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1759, column: 5)
!2669 = !DILocation(line: 1760, column: 24, scope: !2668)
!2670 = !DILocation(line: 1761, column: 14, scope: !2668)
!2671 = !DILocation(line: 1761, column: 23, scope: !2668)
!2672 = !DILocation(line: 1762, column: 11, scope: !2668)
!2673 = !DILocation(line: 1764, column: 8, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 1764, column: 8)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 1763, column: 2)
!2676 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 1762, column: 11)
!2677 = !DILocation(line: 1764, column: 8, scope: !2675)
!2678 = !DILocation(line: 1765, column: 15, scope: !2674)
!2679 = !DILocation(line: 1765, column: 6, scope: !2674)
!2680 = !DILocation(line: 1766, column: 23, scope: !2675)
!2681 = !DILocation(line: 1766, column: 58, scope: !2675)
!2682 = !DILocation(line: 1766, column: 56, scope: !2675)
!2683 = !DILocation(line: 1767, column: 9, scope: !2675)
!2684 = !DILocation(line: 1767, column: 13, scope: !2675)
!2685 = !DILocation(line: 1766, column: 20, scope: !2675)
!2686 = !DILocation(line: 1768, column: 2, scope: !2675)
!2687 = !DILocation(line: 1770, column: 14, scope: !2668)
!2688 = !DILocation(line: 1770, column: 7, scope: !2668)
!2689 = !DILocation(line: 1774, column: 17, scope: !2529)
!2690 = !DILocation(line: 1775, column: 7, scope: !2529)
!2691 = !DILocation(line: 1775, column: 16, scope: !2529)
!2692 = !DILocation(line: 1776, column: 7, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 1776, column: 7)
!2694 = !DILocation(line: 1776, column: 7, scope: !2529)
!2695 = !DILocation(line: 1777, column: 11, scope: !2693)
!2696 = !DILocation(line: 1777, column: 5, scope: !2693)
!2697 = !DILocation(line: 1779, column: 10, scope: !2529)
!2698 = !DILocation(line: 1779, column: 3, scope: !2529)
!2699 = !DILocation(line: 1780, column: 1, scope: !2529)
!2700 = distinct !DISubprogram(name: "num_negate", scope: !3, file: !3, line: 1312, type: !1957, scopeLine: 1313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2701)
!2701 = !{!2702, !2703, !2704}
!2702 = !DILocalVariable(name: "num", arg: 1, scope: !2700, file: !3, line: 1312, type: !597)
!2703 = !DILocalVariable(name: "precision", arg: 2, scope: !2700, file: !3, line: 1312, type: !210)
!2704 = !DILocalVariable(name: "copy", scope: !2700, file: !3, line: 1314, type: !597)
!2705 = !DILocation(line: 1312, column: 21, scope: !2700)
!2706 = !DILocation(line: 0, scope: !2700)
!2707 = !DILocation(line: 1314, column: 3, scope: !2700)
!2708 = !DILocation(line: 1316, column: 10, scope: !2700)
!2709 = !DILocation(line: 1317, column: 19, scope: !2700)
!2710 = !DILocation(line: 1317, column: 14, scope: !2700)
!2711 = !DILocation(line: 1317, column: 12, scope: !2700)
!2712 = !DILocation(line: 1318, column: 18, scope: !2700)
!2713 = !DILocation(line: 1319, column: 7, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 1319, column: 7)
!2715 = !DILocation(line: 1319, column: 17, scope: !2714)
!2716 = !DILocation(line: 1319, column: 7, scope: !2700)
!2717 = !DILocation(line: 1320, column: 13, scope: !2714)
!2718 = !DILocation(line: 1320, column: 5, scope: !2714)
!2719 = !DILocation(line: 1321, column: 9, scope: !2700)
!2720 = !DILocation(line: 1322, column: 24, scope: !2700)
!2721 = !DILocation(line: 1322, column: 20, scope: !2700)
!2722 = !DILocation(line: 1322, column: 34, scope: !2700)
!2723 = !DILocation(line: 1322, column: 37, scope: !2700)
!2724 = !DILocation(line: 1322, column: 56, scope: !2700)
!2725 = !DILocation(line: 1322, column: 60, scope: !2700)
!2726 = !DILocation(line: 1322, column: 7, scope: !2700)
!2727 = !DILocation(line: 1322, column: 16, scope: !2700)
!2728 = !DILocation(line: 1324, column: 10, scope: !2700)
!2729 = !DILocation(line: 1325, column: 1, scope: !2700)
!2730 = distinct !DISubprogram(name: "num_lshift", scope: !3, file: !3, line: 1460, type: !2731, scopeLine: 1461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!597, !597, !210, !210}
!2733 = !{!2734, !2735, !2736, !2737, !2740, !2741}
!2734 = !DILocalVariable(name: "num", arg: 1, scope: !2730, file: !3, line: 1460, type: !597)
!2735 = !DILocalVariable(name: "precision", arg: 2, scope: !2730, file: !3, line: 1460, type: !210)
!2736 = !DILocalVariable(name: "n", arg: 3, scope: !2730, file: !3, line: 1460, type: !210)
!2737 = !DILocalVariable(name: "orig", scope: !2738, file: !3, line: 1469, type: !597)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 1468, column: 5)
!2739 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1462, column: 7)
!2740 = !DILocalVariable(name: "maybe_orig", scope: !2738, file: !3, line: 1469, type: !597)
!2741 = !DILocalVariable(name: "m", scope: !2738, file: !3, line: 1470, type: !210)
!2742 = !DILocation(line: 1460, column: 21, scope: !2730)
!2743 = !DILocation(line: 0, scope: !2730)
!2744 = !DILocation(line: 1462, column: 9, scope: !2739)
!2745 = !DILocation(line: 1462, column: 7, scope: !2730)
!2746 = !DILocation(line: 1464, column: 27, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 1463, column: 5)
!2748 = !DILocation(line: 1464, column: 23, scope: !2747)
!2749 = !DILocation(line: 1464, column: 37, scope: !2747)
!2750 = !DILocation(line: 1464, column: 41, scope: !2747)
!2751 = !DILocation(line: 1464, column: 11, scope: !2747)
!2752 = !DILocation(line: 1464, column: 20, scope: !2747)
!2753 = !DILocation(line: 1465, column: 22, scope: !2747)
!2754 = !DILocation(line: 1465, column: 26, scope: !2747)
!2755 = !DILocation(line: 1465, column: 11, scope: !2747)
!2756 = !DILocation(line: 1465, column: 16, scope: !2747)
!2757 = !DILocation(line: 1495, column: 10, scope: !2730)
!2758 = !DILocation(line: 1466, column: 5, scope: !2747)
!2759 = !DILocation(line: 1469, column: 7, scope: !2738)
!2760 = !DILocation(line: 0, scope: !2738)
!2761 = !DILocation(line: 1472, column: 14, scope: !2738)
!2762 = !DILocation(line: 1473, column: 13, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 1473, column: 11)
!2764 = !DILocation(line: 1473, column: 11, scope: !2738)
!2765 = !DILocation(line: 1475, column: 6, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1474, column: 2)
!2767 = !DILocation(line: 1476, column: 19, scope: !2766)
!2768 = !DILocation(line: 1476, column: 8, scope: !2766)
!2769 = !DILocation(line: 1476, column: 13, scope: !2766)
!2770 = !DILocation(line: 1477, column: 12, scope: !2766)
!2771 = !DILocation(line: 1478, column: 2, scope: !2766)
!2772 = !DILocation(line: 1479, column: 11, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 1479, column: 11)
!2774 = !DILocation(line: 1479, column: 11, scope: !2738)
!2775 = !DILocation(line: 1481, column: 20, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 1480, column: 2)
!2777 = !DILocation(line: 1481, column: 25, scope: !2776)
!2778 = !DILocation(line: 1481, column: 38, scope: !2776)
!2779 = !DILocation(line: 1481, column: 61, scope: !2776)
!2780 = !DILocation(line: 1481, column: 42, scope: !2776)
!2781 = !DILocation(line: 1481, column: 31, scope: !2776)
!2782 = !DILocation(line: 1481, column: 13, scope: !2776)
!2783 = !DILocation(line: 1482, column: 12, scope: !2776)
!2784 = !DILocation(line: 1483, column: 2, scope: !2776)
!2785 = !DILocation(line: 1484, column: 13, scope: !2738)
!2786 = !DILocation(line: 1486, column: 15, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 1486, column: 11)
!2788 = !DILocation(line: 1486, column: 11, scope: !2787)
!2789 = !DILocation(line: 1486, column: 11, scope: !2738)
!2790 = !DILocation(line: 1487, column: 6, scope: !2787)
!2791 = !DILocation(line: 1487, column: 15, scope: !2787)
!2792 = !DILocation(line: 1487, column: 2, scope: !2787)
!2793 = !DILocation(line: 1490, column: 17, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 1489, column: 2)
!2795 = !DILocation(line: 1491, column: 20, scope: !2794)
!2796 = !DILocation(line: 1491, column: 8, scope: !2794)
!2797 = !DILocation(line: 1491, column: 17, scope: !2794)
!2798 = !DILocation(line: 1493, column: 5, scope: !2739)
!2799 = !DILocation(line: 1495, column: 3, scope: !2730)
!2800 = distinct !DISubprogram(name: "num_rshift", scope: !3, file: !3, line: 1419, type: !2731, scopeLine: 1420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2801)
!2801 = !{!2802, !2803, !2804, !2805, !2806}
!2802 = !DILocalVariable(name: "num", arg: 1, scope: !2800, file: !3, line: 1419, type: !597)
!2803 = !DILocalVariable(name: "precision", arg: 2, scope: !2800, file: !3, line: 1419, type: !210)
!2804 = !DILocalVariable(name: "n", arg: 3, scope: !2800, file: !3, line: 1419, type: !210)
!2805 = !DILocalVariable(name: "sign_mask", scope: !2800, file: !3, line: 1421, type: !601)
!2806 = !DILocalVariable(name: "x", scope: !2800, file: !3, line: 1422, type: !139)
!2807 = !DILocation(line: 1419, column: 21, scope: !2800)
!2808 = !DILocation(line: 0, scope: !2800)
!2809 = !DILocation(line: 1422, column: 12, scope: !2800)
!2810 = !DILocation(line: 1424, column: 11, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 1424, column: 7)
!2812 = !DILocation(line: 1424, column: 21, scope: !2811)
!2813 = !DILocation(line: 1429, column: 9, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 1429, column: 7)
!2815 = !DILocation(line: 1429, column: 7, scope: !2800)
!2816 = !DILocation(line: 1430, column: 20, scope: !2814)
!2817 = !DILocation(line: 1430, column: 24, scope: !2814)
!2818 = !DILocation(line: 1430, column: 9, scope: !2814)
!2819 = !DILocation(line: 1430, column: 14, scope: !2814)
!2820 = !DILocation(line: 1430, column: 5, scope: !2814)
!2821 = !DILocation(line: 1434, column: 21, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 1434, column: 11)
!2823 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 1432, column: 5)
!2824 = !DILocation(line: 1434, column: 11, scope: !2823)
!2825 = !DILocation(line: 1435, column: 6, scope: !2822)
!2826 = !DILocation(line: 1435, column: 11, scope: !2822)
!2827 = !DILocation(line: 1435, column: 45, scope: !2822)
!2828 = !DILocation(line: 1435, column: 28, scope: !2822)
!2829 = !DILocation(line: 1435, column: 32, scope: !2822)
!2830 = !DILocation(line: 1435, column: 2, scope: !2822)
!2831 = !DILocation(line: 1436, column: 26, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 1436, column: 16)
!2833 = !DILocation(line: 1436, column: 16, scope: !2822)
!2834 = !DILocation(line: 1437, column: 38, scope: !2832)
!2835 = !DILocation(line: 1437, column: 24, scope: !2832)
!2836 = !DILocation(line: 1437, column: 6, scope: !2832)
!2837 = !DILocation(line: 1437, column: 11, scope: !2832)
!2838 = !DILocation(line: 1437, column: 2, scope: !2832)
!2839 = !DILocation(line: 1439, column: 13, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 1439, column: 11)
!2841 = !DILocation(line: 1439, column: 11, scope: !2823)
!2842 = !DILocation(line: 1441, column: 6, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 1440, column: 2)
!2844 = !DILocation(line: 1442, column: 18, scope: !2843)
!2845 = !DILocation(line: 1442, column: 8, scope: !2843)
!2846 = !DILocation(line: 1442, column: 12, scope: !2843)
!2847 = !DILocation(line: 1443, column: 13, scope: !2843)
!2848 = !DILocation(line: 1444, column: 2, scope: !2843)
!2849 = !DILocation(line: 1446, column: 11, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 1446, column: 11)
!2851 = !DILocation(line: 1446, column: 11, scope: !2823)
!2852 = !DILocation(line: 1448, column: 19, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 1447, column: 2)
!2854 = !DILocation(line: 1448, column: 23, scope: !2853)
!2855 = !DILocation(line: 1448, column: 36, scope: !2853)
!2856 = !DILocation(line: 1448, column: 60, scope: !2853)
!2857 = !DILocation(line: 1448, column: 41, scope: !2853)
!2858 = !DILocation(line: 1448, column: 29, scope: !2853)
!2859 = !DILocation(line: 1448, column: 12, scope: !2853)
!2860 = !DILocation(line: 1449, column: 25, scope: !2853)
!2861 = !DILocation(line: 1449, column: 44, scope: !2853)
!2862 = !DILocation(line: 1449, column: 31, scope: !2853)
!2863 = !DILocation(line: 1449, column: 13, scope: !2853)
!2864 = !DILocation(line: 1450, column: 2, scope: !2853)
!2865 = !DILocation(line: 1453, column: 9, scope: !2800)
!2866 = !DILocation(line: 1454, column: 7, scope: !2800)
!2867 = !DILocation(line: 1454, column: 16, scope: !2800)
!2868 = !DILocation(line: 1455, column: 10, scope: !2800)
!2869 = !DILocation(line: 1456, column: 1, scope: !2800)
!2870 = distinct !DISubprogram(name: "num_greater_eq", scope: !3, file: !3, line: 1329, type: !2871, scopeLine: 1330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!139, !597, !597, !210}
!2873 = !{!2874, !2875, !2876, !2877}
!2874 = !DILocalVariable(name: "pa", arg: 1, scope: !2870, file: !3, line: 1329, type: !597)
!2875 = !DILocalVariable(name: "pb", arg: 2, scope: !2870, file: !3, line: 1329, type: !597)
!2876 = !DILocalVariable(name: "precision", arg: 3, scope: !2870, file: !3, line: 1329, type: !210)
!2877 = !DILocalVariable(name: "unsignedp", scope: !2870, file: !3, line: 1331, type: !139)
!2878 = !DILocation(line: 1329, column: 25, scope: !2870)
!2879 = !DILocation(line: 1329, column: 37, scope: !2870)
!2880 = !DILocation(line: 0, scope: !2870)
!2881 = !DILocation(line: 1333, column: 18, scope: !2870)
!2882 = !DILocation(line: 1333, column: 28, scope: !2870)
!2883 = !DILocation(line: 1335, column: 7, scope: !2870)
!2884 = !DILocation(line: 1339, column: 19, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 1336, column: 5)
!2886 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 1335, column: 7)
!2887 = !DILocation(line: 1341, column: 24, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 1341, column: 11)
!2889 = !DILocation(line: 1341, column: 21, scope: !2888)
!2890 = !DILocation(line: 1341, column: 11, scope: !2885)
!2891 = !DILocation(line: 1347, column: 14, scope: !2870)
!2892 = !DILocation(line: 1347, column: 24, scope: !2870)
!2893 = !DILocation(line: 1347, column: 19, scope: !2870)
!2894 = !DILocation(line: 1347, column: 30, scope: !2870)
!2895 = !DILocation(line: 1347, column: 42, scope: !2870)
!2896 = !DILocation(line: 1347, column: 53, scope: !2870)
!2897 = !DILocation(line: 1347, column: 59, scope: !2870)
!2898 = !DILocation(line: 1347, column: 69, scope: !2870)
!2899 = !DILocation(line: 1347, column: 63, scope: !2870)
!2900 = !DILocation(line: 1347, column: 3, scope: !2870)
!2901 = !DILocation(line: 1348, column: 1, scope: !2870)
!2902 = distinct !DISubprogram(name: "num_part_mul", scope: !3, file: !3, line: 1601, type: !2903, scopeLine: 1602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!597, !601, !601}
!2905 = !{!2906, !2907, !2908, !2909, !2913}
!2906 = !DILocalVariable(name: "lhs", arg: 1, scope: !2902, file: !3, line: 1601, type: !601)
!2907 = !DILocalVariable(name: "rhs", arg: 2, scope: !2902, file: !3, line: 1601, type: !601)
!2908 = !DILocalVariable(name: "result", scope: !2902, file: !3, line: 1603, type: !597)
!2909 = !DILocalVariable(name: "middle", scope: !2902, file: !3, line: 1604, type: !2910)
!2910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 128, elements: !2911)
!2911 = !{!2912}
!2912 = !DISubrange(count: 2)
!2913 = !DILocalVariable(name: "temp", scope: !2902, file: !3, line: 1604, type: !601)
!2914 = !DILocation(line: 0, scope: !2902)
!2915 = !DILocation(line: 1603, column: 11, scope: !2902)
!2916 = !DILocation(line: 1606, column: 16, scope: !2902)
!2917 = !DILocation(line: 1606, column: 33, scope: !2902)
!2918 = !DILocation(line: 1606, column: 31, scope: !2902)
!2919 = !DILocation(line: 1606, column: 10, scope: !2902)
!2920 = !DILocation(line: 1607, column: 17, scope: !2902)
!2921 = !DILocation(line: 1607, column: 35, scope: !2902)
!2922 = !DILocation(line: 1607, column: 33, scope: !2902)
!2923 = !DILocation(line: 1607, column: 10, scope: !2902)
!2924 = !DILocation(line: 1607, column: 15, scope: !2902)
!2925 = !DILocation(line: 1609, column: 30, scope: !2902)
!2926 = !DILocation(line: 1610, column: 31, scope: !2902)
!2927 = !DILocation(line: 1613, column: 38, scope: !2902)
!2928 = !DILocation(line: 1613, column: 14, scope: !2902)
!2929 = !DILocation(line: 1614, column: 18, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1614, column: 7)
!2931 = !DILocation(line: 1614, column: 7, scope: !2902)
!2932 = !DILocation(line: 1615, column: 16, scope: !2930)
!2933 = !DILocation(line: 1615, column: 5, scope: !2930)
!2934 = !DILocation(line: 1618, column: 38, scope: !2902)
!2935 = !DILocation(line: 1618, column: 14, scope: !2902)
!2936 = !DILocation(line: 1619, column: 18, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1619, column: 7)
!2938 = !DILocation(line: 1619, column: 7, scope: !2902)
!2939 = !DILocation(line: 1620, column: 16, scope: !2937)
!2940 = !DILocation(line: 1620, column: 5, scope: !2937)
!2941 = !DILocation(line: 1622, column: 15, scope: !2902)
!2942 = !DILocation(line: 1622, column: 18, scope: !2902)
!2943 = !DILocation(line: 1623, column: 18, scope: !2902)
!2944 = !DILocation(line: 1623, column: 15, scope: !2902)
!2945 = !DILocation(line: 1624, column: 10, scope: !2902)
!2946 = !DILocation(line: 1624, column: 20, scope: !2902)
!2947 = !DILocation(line: 1625, column: 10, scope: !2902)
!2948 = !DILocation(line: 1625, column: 19, scope: !2902)
!2949 = !DILocation(line: 1628, column: 1, scope: !2902)
