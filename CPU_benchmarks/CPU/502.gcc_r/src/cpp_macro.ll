; ModuleID = 'cpp_macro.bc'
source_filename = "cpp_macro.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.ht_identifier = type { i8*, i32, i32 }
%struct.op = type opaque
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i8*, i8*, i32, i8, i8, %struct.anon.1, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i8, i8, i8, i8 }
%struct.spec_nodes = type { %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode* }
%struct.anon.2 = type { i8*, i8*, i8*, i32 }
%struct.cpp_savedstate = type opaque
%struct.cpp_comment_table = type { %struct.cpp_comment*, i32, i32 }
%struct.cpp_comment = type { i8*, i32 }
%struct.def_pragma_macro = type { %struct.def_pragma_macro*, i8*, %struct.cpp_macro* }
%struct.cpp_macro = type { %struct.cpp_hashnode**, %union.cpp_macro_u, i32, i32, i16, i8 }
%union.cpp_macro_u = type { %struct.cpp_token* }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%union._cpp_hashnode_value = type { %struct.cpp_macro* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.macro_arg = type { %struct.cpp_token**, %struct.cpp_token**, %struct.cpp_token*, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"macro \22%s\22 is not used\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid built-in macro \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"could not determine file timestamp\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\22??? ??? ?? ??:??:?? ????\22\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\22%s %2d %4d\22\00", align 1
@monthnames = internal unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0)], align 16, !dbg !0
@.str.5 = private unnamed_addr constant [17 x i8] c"\22%02d:%02d:%02d\22\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"could not determine date and time\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"\22??? ?? ????\22\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"\22??:??:??\22\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"__COUNTER__ expanded inside directive with -fdirectives-only\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"ISO C99 requires rest arguments to be used\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"macro \22%s\22 requires %u arguments, but only %u given\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"macro \22%s\22 passed %u arguments, but takes just %u\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"duplicate macro parameter \22%s\22\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"\22%s\22 redefined\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"this is the location of the previous definition\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"__STDC_\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"__STDC_FORMAT_MACROS\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"__STDC_LIMIT_MACROS\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"__STDC_CONSTANT_MACROS\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"invalid hash type %d in cpp_macro_definition\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"Jan\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"Feb\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"Mar\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"Apr\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"Jun\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"Jul\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"Aug\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"Sep\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"Oct\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"Nov\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"Dec\00", align 1
@.str.34 = private unnamed_addr constant [64 x i8] c"pasting \22%s\22 and \22%s\22 does not give a valid preprocessing token\00", align 1
@.str.35 = private unnamed_addr constant [70 x i8] c"function-like macro \22%s\22 must be used with arguments in traditional C\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"unterminated argument list invoking macro \22%s\22\00", align 1
@.str.37 = private unnamed_addr constant [92 x i8] c"invoking macro %s argument %d: empty macro arguments are undefined in ISO C90 and ISO C++98\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"invalid string literal, ignoring final '\5C'\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"'##' cannot appear at either end of a macro expansion\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"ISO C99 requires whitespace after the macro name\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"!\22#%&'()*+,-./:;<=>?[\5C]^{|}~\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"missing whitespace after the macro name\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"'#' is not followed by a macro parameter\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"\22%s\22 may not appear in macro parameter list\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"macro parameters must be comma-separated\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"parameter name missing\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"anonymous variadic macros were introduced in C99\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"ISO C does not permit named variadic macros\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"missing ')' in macro parameter list\00", align 1
@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@.str.50 = private unnamed_addr constant [58 x i8] c"macro argument \22%s\22 would be stringified in traditional C\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !204 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !210, metadata !DIExpression()), !dbg !211
  %__c.off = add i32 %__c, 128, !dbg !212
  %0 = icmp ult i32 %__c.off, 384, !dbg !212
  br i1 %0, label %cond.true, label %cond.end, !dbg !212

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #9, !dbg !213
  %1 = load i32*, i32** %call, align 8, !dbg !214
  %idxprom = sext i32 %__c to i64, !dbg !215
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !215
  %2 = load i32, i32* %arrayidx, align 4, !dbg !215
  br label %cond.end, !dbg !216

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !216
  ret i32 %cond, !dbg !217
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !218 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !220, metadata !DIExpression()), !dbg !221
  %__c.off = add i32 %__c, 128, !dbg !222
  %0 = icmp ult i32 %__c.off, 384, !dbg !222
  br i1 %0, label %cond.true, label %cond.end, !dbg !222

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #9, !dbg !223
  %1 = load i32*, i32** %call, align 8, !dbg !224
  %idxprom = sext i32 %__c to i64, !dbg !225
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !225
  %2 = load i32, i32* %arrayidx, align 4, !dbg !225
  br label %cond.end, !dbg !226

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !226
  ret i32 %cond, !dbg !227
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @_cpp_warn_if_unused_macro(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, i8* %v) local_unnamed_addr #2 !dbg !228 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !670, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !671, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i8* %v, metadata !672, metadata !DIExpression()), !dbg !676
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 3, !dbg !677
  %bf.load = load i16, i16* %type, align 2, !dbg !677
  %bf.clear = and i16 %bf.load, 63, !dbg !677
  %cmp = icmp eq i16 %bf.clear, 1, !dbg !678
  br i1 %cmp, label %land.lhs.true, label %if.end14, !dbg !679

land.lhs.true:                                    ; preds = %entry
  %0 = and i16 %bf.load, 256, !dbg !680
  %tobool = icmp eq i16 %0, 0, !dbg !680
  br i1 %tobool, label %if.then, label %if.end14, !dbg !681

if.then:                                          ; preds = %land.lhs.true
  %macro3 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 4, i32 0, !dbg !682
  %1 = load %struct.cpp_macro*, %struct.cpp_macro** %macro3, align 8, !dbg !682
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %1, metadata !673, metadata !DIExpression()), !dbg !683
  %used = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %1, i64 0, i32 5, !dbg !684
  %bf.load4 = load i8, i8* %used, align 2, !dbg !684
  %bf.clear6 = and i8 %bf.load4, 8, !dbg !684
  %tobool8 = icmp eq i8 %bf.clear6, 0, !dbg !686
  br i1 %tobool8, label %land.lhs.true9, label %if.end14, !dbg !687

land.lhs.true9:                                   ; preds = %if.then
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !688
  %2 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !688
  %line = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %1, i64 0, i32 2, !dbg !688
  %3 = load i32, i32* %line, align 8, !dbg !688
  %call = tail call %struct.line_map* @linemap_lookup(%struct.line_maps* %2, i32 %3) #9, !dbg !688
  %included_from = getelementptr inbounds %struct.line_map, %struct.line_map* %call, i64 0, i32 3, !dbg !688
  %4 = load i32, i32* %included_from, align 8, !dbg !688
  %cmp10 = icmp slt i32 %4, 0, !dbg !688
  br i1 %cmp10, label %if.then11, label %if.end14, !dbg !689

if.then11:                                        ; preds = %land.lhs.true9
  %5 = load i32, i32* %line, align 8, !dbg !690
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !691
  %6 = load i8*, i8** %str, align 8, !dbg !691
  %call13 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 0, i32 %5, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %6) #9, !dbg !692
  br label %if.end14, !dbg !692

if.end14:                                         ; preds = %if.then, %land.lhs.true, %land.lhs.true9, %if.then11, %entry
  ret i32 1, !dbg !693
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local %struct.line_map* @linemap_lookup(%struct.line_maps*, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @cpp_error_with_line(%struct.cpp_reader*, i32, i32, i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i8* @_cpp_builtin_macro_text(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) local_unnamed_addr #2 !dbg !694 {
entry:
  %tt = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !698, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !699, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i8* null, metadata !701, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i32 1, metadata !702, metadata !DIExpression()), !dbg !775
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 4, !dbg !776
  %builtin = bitcast %union._cpp_hashnode_value* %value to i32*, !dbg !777
  %0 = load i32, i32* %builtin, align 8, !dbg !777
  switch i32 %0, label %sw.default [
    i32 8, label %sw.bb
    i32 2, label %sw.bb23
    i32 3, label %sw.bb23
    i32 4, label %sw.bb43
    i32 0, label %sw.bb45
    i32 6, label %sw.bb59
    i32 1, label %sw.bb65
    i32 5, label %sw.bb65
    i32 9, label %sw.bb107
  ], !dbg !778

sw.default:                                       ; preds = %entry
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !779
  %1 = load i8*, i8** %str, align 8, !dbg !779
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %1) #9, !dbg !780
  br label %sw.epilog, !dbg !781

sw.bb:                                            ; preds = %entry
  %call1 = tail call %struct.cpp_buffer* @cpp_get_buffer(%struct.cpp_reader* %pfile) #9, !dbg !782
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %call1, metadata !703, metadata !DIExpression()), !dbg !783
  %timestamp = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %call1, i64 0, i32 11, !dbg !784
  %2 = load i8*, i8** %timestamp, align 8, !dbg !784
  %cmp = icmp eq i8* %2, null, !dbg !785
  br i1 %cmp, label %if.then, label %if.end21, !dbg !786

if.then:                                          ; preds = %sw.bb
  %call2 = tail call %struct._cpp_file* @cpp_get_file(%struct.cpp_buffer* %call1) #9, !dbg !787
  call void @llvm.dbg.value(metadata %struct._cpp_file* %call2, metadata !706, metadata !DIExpression()), !dbg !788
  %tobool = icmp eq %struct._cpp_file* %call2, null, !dbg !789
  br i1 %tobool, label %if.then.if.end21_crit_edge, label %if.then3, !dbg !790

if.then.if.end21_crit_edge:                       ; preds = %if.then
  %.pre1 = load i8*, i8** %timestamp, align 8, !dbg !791
  br label %if.end21, !dbg !790

if.then3:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct.tm* null, metadata !709, metadata !DIExpression()), !dbg !792
  %call4 = tail call %struct.stat* @_cpp_get_file_stat(%struct._cpp_file* nonnull %call2) #9, !dbg !793
  call void @llvm.dbg.value(metadata %struct.stat* %call4, metadata !727, metadata !DIExpression()), !dbg !792
  %tobool5 = icmp eq %struct.stat* %call4, null, !dbg !794
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !796

if.then6:                                         ; preds = %if.then3
  %st_mtime = getelementptr inbounds %struct.stat, %struct.stat* %call4, i64 0, i32 13, !dbg !797
  %call7 = tail call %struct.tm* @localtime(i64* nonnull %st_mtime) #9, !dbg !798
  call void @llvm.dbg.value(metadata %struct.tm* %call7, metadata !709, metadata !DIExpression()), !dbg !792
  br label %if.end, !dbg !799

if.end:                                           ; preds = %if.then3, %if.then6
  %tb.0 = phi %struct.tm* [ %call7, %if.then6 ], [ null, %if.then3 ], !dbg !792
  call void @llvm.dbg.value(metadata %struct.tm* %tb.0, metadata !709, metadata !DIExpression()), !dbg !792
  %tobool8 = icmp eq %struct.tm* %tb.0, null, !dbg !800
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !801

if.then9:                                         ; preds = %if.end
  %call11 = tail call i8* @asctime(%struct.tm* nonnull %tb.0) #9, !dbg !802
  call void @llvm.dbg.value(metadata i8* %call11, metadata !762, metadata !DIExpression()), !dbg !803
  %call12 = tail call i64 @strlen(i8* %call11) #10, !dbg !804
  call void @llvm.dbg.value(metadata i64 %call12, metadata !765, metadata !DIExpression()), !dbg !803
  %add = add i64 %call12, 2, !dbg !805
  %call13 = tail call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %pfile, i64 %add) #9, !dbg !806
  call void @llvm.dbg.value(metadata i8* %call13, metadata !766, metadata !DIExpression()), !dbg !803
  store i8 34, i8* %call13, align 1, !dbg !807
  %add.ptr = getelementptr inbounds i8, i8* %call13, i64 1, !dbg !808
  %call14 = tail call i8* @strcpy(i8* nonnull %add.ptr, i8* %call11) #9, !dbg !809
  %arrayidx15 = getelementptr inbounds i8, i8* %call13, i64 %call12, !dbg !810
  store i8 34, i8* %arrayidx15, align 1, !dbg !811
  store i8* %call13, i8** %timestamp, align 8, !dbg !812
  br label %if.end21, !dbg !813

if.else:                                          ; preds = %if.end
  %call17 = tail call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !814
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %timestamp, align 8, !dbg !816
  br label %if.end21

if.end21:                                         ; preds = %if.then.if.end21_crit_edge, %if.else, %if.then9, %sw.bb
  %3 = phi i8* [ %.pre1, %if.then.if.end21_crit_edge ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), %if.else ], [ %call13, %if.then9 ], [ %2, %sw.bb ], !dbg !791
  call void @llvm.dbg.value(metadata i8* %3, metadata !701, metadata !DIExpression()), !dbg !775
  br label %sw.epilog, !dbg !817

sw.bb23:                                          ; preds = %entry, %entry
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !818
  %4 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !818
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %4, i64 0, i32 8, !dbg !819
  %5 = load i32, i32* %highest_line, align 4, !dbg !819
  %call27 = tail call %struct.line_map* @linemap_lookup(%struct.line_maps* %4, i32 %5) #9, !dbg !820
  call void @llvm.dbg.value(metadata %struct.line_map* %call27, metadata !700, metadata !DIExpression()), !dbg !775
  %6 = load i32, i32* %builtin, align 8, !dbg !821
  %cmp30 = icmp eq i32 %6, 3, !dbg !823
  br i1 %cmp30, label %while.cond.preheader, label %if.end36, !dbg !824

while.cond.preheader:                             ; preds = %sw.bb23
  br label %while.cond, !dbg !825

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %map.0 = phi %struct.line_map* [ %arrayidx35, %while.body ], [ %call27, %while.cond.preheader ], !dbg !826
  call void @llvm.dbg.value(metadata %struct.line_map* %map.0, metadata !700, metadata !DIExpression()), !dbg !775
  %included_from = getelementptr inbounds %struct.line_map, %struct.line_map* %map.0, i64 0, i32 3, !dbg !827
  %7 = load i32, i32* %included_from, align 8, !dbg !827
  %cmp32 = icmp sgt i32 %7, -1, !dbg !827
  br i1 %cmp32, label %while.body, label %if.end36.loopexit, !dbg !825

while.body:                                       ; preds = %while.cond
  %8 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !828
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %8, i64 0, i32 0, !dbg !828
  %9 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !828
  %idxprom = sext i32 %7 to i64, !dbg !828
  %arrayidx35 = getelementptr inbounds %struct.line_map, %struct.line_map* %9, i64 %idxprom, !dbg !828
  call void @llvm.dbg.value(metadata %struct.line_map* %arrayidx35, metadata !700, metadata !DIExpression()), !dbg !775
  br label %while.cond, !dbg !825, !llvm.loop !829

if.end36.loopexit:                                ; preds = %while.cond
  %map.0.lcssa = phi %struct.line_map* [ %map.0, %while.cond ], !dbg !826
  call void @llvm.dbg.value(metadata %struct.line_map* %map.0.lcssa, metadata !700, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata %struct.line_map* %map.0.lcssa, metadata !700, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata %struct.line_map* %map.0.lcssa, metadata !700, metadata !DIExpression()), !dbg !775
  br label %if.end36, !dbg !830

if.end36:                                         ; preds = %if.end36.loopexit, %sw.bb23
  %map.1 = phi %struct.line_map* [ %call27, %sw.bb23 ], [ %map.0.lcssa, %if.end36.loopexit ], !dbg !831
  call void @llvm.dbg.value(metadata %struct.line_map* %map.1, metadata !700, metadata !DIExpression()), !dbg !775
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %map.1, i64 0, i32 0, !dbg !830
  %10 = load i8*, i8** %to_file, align 8, !dbg !830
  call void @llvm.dbg.value(metadata i8* %10, metadata !769, metadata !DIExpression()), !dbg !826
  %call37 = tail call i64 @strlen(i8* %10) #10, !dbg !832
  %conv = trunc i64 %call37 to i32, !dbg !832
  call void @llvm.dbg.value(metadata i32 %conv, metadata !767, metadata !DIExpression()), !dbg !826
  %mul = shl i64 %call37, 1, !dbg !833
  %add38 = add i64 %mul, 3, !dbg !834
  %conv39 = and i64 %add38, 4294967295, !dbg !835
  %call40 = tail call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %pfile, i64 %conv39) #9, !dbg !836
  call void @llvm.dbg.value(metadata i8* %call40, metadata !770, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i8* %call40, metadata !701, metadata !DIExpression()), !dbg !775
  store i8 34, i8* %call40, align 1, !dbg !837
  %add.ptr41 = getelementptr inbounds i8, i8* %call40, i64 1, !dbg !838
  %call42 = tail call i8* @cpp_quote_string(i8* nonnull %add.ptr41, i8* %10, i32 %conv) #11, !dbg !839
  call void @llvm.dbg.value(metadata i8* %call42, metadata !770, metadata !DIExpression()), !dbg !826
  %incdec.ptr = getelementptr inbounds i8, i8* %call42, i64 1, !dbg !840
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !770, metadata !DIExpression()), !dbg !826
  store i8 34, i8* %call42, align 1, !dbg !841
  store i8 0, i8* %incdec.ptr, align 1, !dbg !842
  br label %sw.epilog, !dbg !843

sw.bb43:                                          ; preds = %entry
  %line_table44 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !844
  %11 = load %struct.line_maps*, %struct.line_maps** %line_table44, align 8, !dbg !844
  %depth = getelementptr inbounds %struct.line_maps, %struct.line_maps* %11, i64 0, i32 5, !dbg !845
  %12 = load i32, i32* %depth, align 8, !dbg !845
  %sub = add i32 %12, -1, !dbg !846
  call void @llvm.dbg.value(metadata i32 %sub, metadata !702, metadata !DIExpression()), !dbg !775
  br label %sw.epilog, !dbg !847

sw.bb45:                                          ; preds = %entry
  %line_table46 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !848
  %13 = load %struct.line_maps*, %struct.line_maps** %line_table46, align 8, !dbg !848
  %maps47 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %13, i64 0, i32 0, !dbg !849
  %14 = load %struct.line_map*, %struct.line_map** %maps47, align 8, !dbg !849
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %13, i64 0, i32 2, !dbg !850
  %15 = load i32, i32* %used, align 4, !dbg !850
  %sub49 = add i32 %15, -1, !dbg !851
  %idxprom50 = zext i32 %sub49 to i64, !dbg !852
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !700, metadata !DIExpression()), !dbg !775
  %traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !853
  %16 = load i8, i8* %traditional, align 2, !dbg !853
  %tobool53 = icmp eq i8 %16, 0, !dbg !853
  br i1 %tobool53, label %cond.false, label %cond.true, !dbg !853

cond.true:                                        ; preds = %sw.bb45
  %highest_line55 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %13, i64 0, i32 8, !dbg !853
  br label %cond.end, !dbg !853

cond.false:                                       ; preds = %sw.bb45
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !853
  %17 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !853
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %17, i64 -1, i32 0, !dbg !853
  br label %cond.end, !dbg !853

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32* [ %highest_line55, %cond.true ], [ %src_loc, %cond.false ]
  %cond = load i32, i32* %cond.in, align 4, !dbg !853
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %14, i64 %idxprom50, i32 2, !dbg !853
  %18 = load i32, i32* %start_location, align 4, !dbg !853
  %sub57 = sub i32 %cond, %18, !dbg !853
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %14, i64 %idxprom50, i32 6, !dbg !853
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !853
  %bf.cast = zext i8 %bf.load to i32, !dbg !853
  %shr = lshr i32 %sub57, %bf.cast, !dbg !853
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %14, i64 %idxprom50, i32 1, !dbg !853
  %19 = load i32, i32* %to_line, align 8, !dbg !853
  %add58 = add i32 %shr, %19, !dbg !853
  call void @llvm.dbg.value(metadata i32 %add58, metadata !702, metadata !DIExpression()), !dbg !775
  br label %sw.epilog, !dbg !854

sw.bb59:                                          ; preds = %entry
  %call60 = tail call fastcc i32 @cpp_in_system_header(%struct.cpp_reader* %pfile) #11, !dbg !855
  %tobool61 = icmp eq i32 %call60, 0, !dbg !855
  %. = zext i1 %tobool61 to i32
  call void @llvm.dbg.value(metadata i32 %., metadata !702, metadata !DIExpression()), !dbg !775
  br label %sw.epilog, !dbg !857

sw.bb65:                                          ; preds = %entry, %entry
  %date = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 41, !dbg !858
  %20 = load i8*, i8** %date, align 8, !dbg !858
  %cmp66 = icmp eq i8* %20, null, !dbg !859
  br i1 %cmp66, label %if.then68, label %if.end97, !dbg !860

if.then68:                                        ; preds = %sw.bb65
  %21 = bitcast i64* %tt to i8*, !dbg !861
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #12, !dbg !861
  call void @llvm.dbg.value(metadata %struct.tm* null, metadata !774, metadata !DIExpression()), !dbg !862
  %call70 = tail call i32* @__errno_location() #13, !dbg !863
  store i32 0, i32* %call70, align 4, !dbg !864
  %call71 = tail call i64 @time(i64* null) #9, !dbg !865
  call void @llvm.dbg.value(metadata i64 %call71, metadata !771, metadata !DIExpression()), !dbg !862
  store i64 %call71, i64* %tt, align 8, !dbg !866
  call void @llvm.dbg.value(metadata i64 %call71, metadata !771, metadata !DIExpression()), !dbg !862
  %cmp72 = icmp eq i64 %call71, -1, !dbg !867
  br i1 %cmp72, label %lor.lhs.false, label %if.then77, !dbg !869

lor.lhs.false:                                    ; preds = %if.then68
  %22 = load i32, i32* %call70, align 4, !dbg !870
  %cmp75 = icmp eq i32 %22, 0, !dbg !871
  br i1 %cmp75, label %if.then77, label %if.end79, !dbg !872

if.then77:                                        ; preds = %if.then68, %lor.lhs.false
  call void @llvm.dbg.value(metadata i64* %tt, metadata !771, metadata !DIExpression(DW_OP_deref)), !dbg !862
  %call78 = call %struct.tm* @localtime(i64* nonnull %tt) #9, !dbg !873
  call void @llvm.dbg.value(metadata %struct.tm* %call78, metadata !774, metadata !DIExpression()), !dbg !862
  br label %if.end79, !dbg !874

if.end79:                                         ; preds = %if.then77, %lor.lhs.false
  %tb69.0 = phi %struct.tm* [ %call78, %if.then77 ], [ null, %lor.lhs.false ], !dbg !862
  call void @llvm.dbg.value(metadata %struct.tm* %tb69.0, metadata !774, metadata !DIExpression()), !dbg !862
  %tobool80 = icmp eq %struct.tm* %tb69.0, null, !dbg !875
  br i1 %tobool80, label %if.else92, label %if.then81, !dbg !877

if.then81:                                        ; preds = %if.end79
  %call82 = call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %pfile, i64 14) #9, !dbg !878
  store i8* %call82, i8** %date, align 8, !dbg !880
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %tb69.0, i64 0, i32 4, !dbg !881
  %23 = load i32, i32* %tm_mon, align 8, !dbg !881
  %idxprom85 = sext i32 %23 to i64, !dbg !882
  %arrayidx86 = getelementptr inbounds [12 x i8*], [12 x i8*]* @monthnames, i64 0, i64 %idxprom85, !dbg !882
  %24 = load i8*, i8** %arrayidx86, align 8, !dbg !882
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %tb69.0, i64 0, i32 3, !dbg !883
  %25 = load i32, i32* %tm_mday, align 4, !dbg !883
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %tb69.0, i64 0, i32 5, !dbg !884
  %26 = load i32, i32* %tm_year, align 4, !dbg !884
  %add87 = add nsw i32 %26, 1900, !dbg !885
  %call88 = call i32 (i8*, i8*, ...) @sprintf(i8* %call82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %24, i32 %25, i32 %add87) #9, !dbg !886
  %call89 = call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %pfile, i64 11) #9, !dbg !887
  %time = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 42, !dbg !888
  store i8* %call89, i8** %time, align 8, !dbg !889
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %tb69.0, i64 0, i32 2, !dbg !890
  %27 = load i32, i32* %tm_hour, align 8, !dbg !890
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %tb69.0, i64 0, i32 1, !dbg !891
  %28 = load i32, i32* %tm_min, align 4, !dbg !891
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %tb69.0, i64 0, i32 0, !dbg !892
  %29 = load i32, i32* %tm_sec, align 8, !dbg !892
  %call91 = call i32 (i8*, i8*, ...) @sprintf(i8* %call89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %27, i32 %28, i32 %29) #9, !dbg !893
  br label %if.end96, !dbg !894

if.else92:                                        ; preds = %if.end79
  %call93 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !895
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %date, align 8, !dbg !897
  %time95 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 42, !dbg !898
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %time95, align 8, !dbg !899
  br label %if.end96

if.end96:                                         ; preds = %if.else92, %if.then81
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #12, !dbg !900
  %.pre = load i32, i32* %builtin, align 8, !dbg !901
  br label %if.end97, !dbg !903

if.end97:                                         ; preds = %if.end96, %sw.bb65
  %30 = phi i32 [ %.pre, %if.end96 ], [ %0, %sw.bb65 ], !dbg !901
  %cmp100 = icmp eq i32 %30, 1, !dbg !904
  br i1 %cmp100, label %if.then102, label %if.else104, !dbg !905

if.then102:                                       ; preds = %if.end97
  %31 = load i8*, i8** %date, align 8, !dbg !906
  call void @llvm.dbg.value(metadata i8* %31, metadata !701, metadata !DIExpression()), !dbg !775
  br label %sw.epilog, !dbg !907

if.else104:                                       ; preds = %if.end97
  %time105 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 42, !dbg !908
  %32 = load i8*, i8** %time105, align 8, !dbg !908
  call void @llvm.dbg.value(metadata i8* %32, metadata !701, metadata !DIExpression()), !dbg !775
  br label %sw.epilog

sw.bb107:                                         ; preds = %entry
  %directives_only = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 52, !dbg !909
  %33 = load i8, i8* %directives_only, align 4, !dbg !909
  %tobool110 = icmp eq i8 %33, 0, !dbg !909
  br i1 %tobool110, label %if.end115, label %land.lhs.true, !dbg !911

land.lhs.true:                                    ; preds = %sw.bb107
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !912
  %34 = load i8, i8* %in_directive, align 8, !dbg !912
  %tobool112 = icmp eq i8 %34, 0, !dbg !913
  br i1 %tobool112, label %if.end115, label %if.then113, !dbg !914

if.then113:                                       ; preds = %land.lhs.true
  %call114 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !915
  br label %if.end115, !dbg !915

if.end115:                                        ; preds = %land.lhs.true, %sw.bb107, %if.then113
  %counter = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 61, !dbg !916
  %35 = load i32, i32* %counter, align 8, !dbg !917
  %inc = add i32 %35, 1, !dbg !917
  store i32 %inc, i32* %counter, align 8, !dbg !917
  call void @llvm.dbg.value(metadata i32 %35, metadata !702, metadata !DIExpression()), !dbg !775
  br label %sw.epilog, !dbg !918

sw.epilog:                                        ; preds = %if.then102, %if.else104, %if.end115, %sw.bb59, %cond.end, %sw.bb43, %if.end36, %if.end21, %sw.default
  %number.1 = phi i32 [ 1, %sw.default ], [ %35, %if.end115 ], [ %., %sw.bb59 ], [ %add58, %cond.end ], [ %sub, %sw.bb43 ], [ 1, %if.end36 ], [ 1, %if.end21 ], [ 1, %if.else104 ], [ 1, %if.then102 ], !dbg !775
  %result.1 = phi i8* [ null, %sw.default ], [ null, %if.end115 ], [ null, %sw.bb59 ], [ null, %cond.end ], [ null, %sw.bb43 ], [ %call40, %if.end36 ], [ %3, %if.end21 ], [ %32, %if.else104 ], [ %31, %if.then102 ], !dbg !775
  call void @llvm.dbg.value(metadata i8* %result.1, metadata !701, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata i32 %number.1, metadata !702, metadata !DIExpression()), !dbg !775
  %cmp116 = icmp eq i8* %result.1, null, !dbg !919
  br i1 %cmp116, label %if.then118, label %if.end121, !dbg !921

if.then118:                                       ; preds = %sw.epilog
  %call119 = call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %pfile, i64 21) #9, !dbg !922
  call void @llvm.dbg.value(metadata i8* %call119, metadata !701, metadata !DIExpression()), !dbg !775
  %call120 = call i32 (i8*, i8*, ...) @sprintf(i8* %call119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %number.1) #9, !dbg !924
  br label %if.end121, !dbg !925

if.end121:                                        ; preds = %if.then118, %sw.epilog
  %result.2 = phi i8* [ %call119, %if.then118 ], [ %result.1, %sw.epilog ], !dbg !775
  call void @llvm.dbg.value(metadata i8* %result.2, metadata !701, metadata !DIExpression()), !dbg !775
  ret i8* %result.2, !dbg !926
}

declare dso_local zeroext i8 @cpp_error(%struct.cpp_reader*, i32, i8*, ...) local_unnamed_addr #1

declare dso_local %struct.cpp_buffer* @cpp_get_buffer(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local %struct._cpp_file* @cpp_get_file(%struct.cpp_buffer*) local_unnamed_addr #1

declare dso_local %struct.stat* @_cpp_get_file_stat(%struct._cpp_file*) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64*) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i8* @asctime(%struct.tm*) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) local_unnamed_addr #5

declare dso_local i8* @_cpp_unaligned_alloc(%struct.cpp_reader*, i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #4

declare dso_local zeroext i8 @cpp_errno(%struct.cpp_reader*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @cpp_quote_string(i8* %dest, i8* %src, i32 %len) local_unnamed_addr #2 !dbg !927 {
entry:
  call void @llvm.dbg.value(metadata i8* %dest, metadata !931, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i8* %src, metadata !932, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i32 %len, metadata !933, metadata !DIExpression()), !dbg !936
  br label %while.cond, !dbg !937

while.cond:                                       ; preds = %if.end, %entry
  %len.addr.0 = phi i32 [ %len, %entry ], [ %dec, %if.end ]
  %src.addr.0 = phi i8* [ %src, %entry ], [ %incdec.ptr, %if.end ]
  %dest.addr.0 = phi i8* [ %dest, %entry ], [ %dest.addr.1, %if.end ]
  call void @llvm.dbg.value(metadata i8* %dest.addr.0, metadata !931, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i8* %src.addr.0, metadata !932, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i32 %len.addr.0, metadata !933, metadata !DIExpression()), !dbg !936
  %dec = add i32 %len.addr.0, -1, !dbg !938
  call void @llvm.dbg.value(metadata i32 %dec, metadata !933, metadata !DIExpression()), !dbg !936
  %tobool = icmp eq i32 %len.addr.0, 0, !dbg !937
  br i1 %tobool, label %while.end, label %while.body, !dbg !937

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %src.addr.0, i64 1, !dbg !939
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !932, metadata !DIExpression()), !dbg !936
  %0 = load i8, i8* %src.addr.0, align 1, !dbg !940
  call void @llvm.dbg.value(metadata i8 %0, metadata !934, metadata !DIExpression()), !dbg !941
  %cmp = icmp eq i8 %0, 92, !dbg !942
  %cmp3 = icmp eq i8 %0, 34, !dbg !944
  %or.cond = or i1 %cmp, %cmp3, !dbg !945
  %incdec.ptr5 = getelementptr inbounds i8, i8* %dest.addr.0, i64 1, !dbg !946
  call void @llvm.dbg.value(metadata i8* %incdec.ptr5, metadata !931, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i8* %incdec.ptr5, metadata !931, metadata !DIExpression()), !dbg !936
  br i1 %or.cond, label %if.then, label %if.else, !dbg !945

if.then:                                          ; preds = %while.body
  store i8 92, i8* %dest.addr.0, align 1, !dbg !947
  %incdec.ptr6 = getelementptr inbounds i8, i8* %dest.addr.0, i64 2, !dbg !949
  call void @llvm.dbg.value(metadata i8* %incdec.ptr6, metadata !931, metadata !DIExpression()), !dbg !936
  store i8 %0, i8* %incdec.ptr5, align 1, !dbg !950
  br label %if.end, !dbg !951

if.else:                                          ; preds = %while.body
  store i8 %0, i8* %dest.addr.0, align 1, !dbg !952
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dest.addr.1 = phi i8* [ %incdec.ptr6, %if.then ], [ %incdec.ptr5, %if.else ], !dbg !946
  call void @llvm.dbg.value(metadata i8* %dest.addr.1, metadata !931, metadata !DIExpression()), !dbg !936
  br label %while.cond, !dbg !937, !llvm.loop !953

while.end:                                        ; preds = %while.cond
  %dest.addr.0.lcssa = phi i8* [ %dest.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata i8* %dest.addr.0.lcssa, metadata !931, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i8* %dest.addr.0.lcssa, metadata !931, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i8* %dest.addr.0.lcssa, metadata !931, metadata !DIExpression()), !dbg !936
  ret i8* %dest.addr.0.lcssa, !dbg !955
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @cpp_in_system_header(%struct.cpp_reader* %pfile) unnamed_addr #0 !dbg !956 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !960, metadata !DIExpression()), !dbg !961
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !962
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !962
  %tobool = icmp eq %struct.cpp_buffer* %0, null, !dbg !963
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !963

cond.true:                                        ; preds = %entry
  %sysp = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 15, !dbg !964
  %1 = load i8, i8* %sysp, align 2, !dbg !964
  %conv = zext i8 %1 to i32, !dbg !965
  br label %cond.end, !dbg !963

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %entry ], !dbg !963
  ret i32 %cond, !dbg !966
}

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() local_unnamed_addr #6

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_arguments_ok(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro, %struct.cpp_hashnode* %node, i32 %argc) local_unnamed_addr #2 !dbg !967 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !971, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !972, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !973, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i32 %argc, metadata !974, metadata !DIExpression()), !dbg !975
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 4, !dbg !976
  %0 = load i16, i16* %paramc, align 8, !dbg !976
  %conv = zext i16 %0 to i32, !dbg !978
  %cmp = icmp eq i32 %conv, %argc, !dbg !979
  br i1 %cmp, label %return, label %if.end, !dbg !980

if.end:                                           ; preds = %entry
  %cmp4 = icmp ugt i32 %conv, %argc, !dbg !981
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !983

if.then6:                                         ; preds = %if.end
  %add = add i32 %argc, 1, !dbg !984
  %cmp9 = icmp eq i32 %add, %conv, !dbg !987
  br i1 %cmp9, label %land.lhs.true, label %if.end22, !dbg !988

land.lhs.true:                                    ; preds = %if.then6
  %variadic = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 5, !dbg !989
  %bf.load = load i8, i8* %variadic, align 2, !dbg !989
  %bf.clear = and i8 %bf.load, 2, !dbg !989
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !990
  br i1 %tobool, label %if.end22, label %if.then11, !dbg !991

if.then11:                                        ; preds = %land.lhs.true
  %pedantic = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !992
  %1 = load i8, i8* %pedantic, align 1, !dbg !992
  %tobool13 = icmp eq i8 %1, 0, !dbg !992
  br i1 %tobool13, label %return, label %land.lhs.true14, !dbg !995

land.lhs.true14:                                  ; preds = %if.then11
  %bf.clear17 = and i8 %bf.load, 4, !dbg !996
  %tobool19 = icmp eq i8 %bf.clear17, 0, !dbg !997
  br i1 %tobool19, label %if.then20, label %return, !dbg !998

if.then20:                                        ; preds = %land.lhs.true14
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !999
  br label %return, !dbg !999

if.end22:                                         ; preds = %land.lhs.true, %if.then6
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !1000
  %2 = load i8*, i8** %str, align 8, !dbg !1000
  %call25 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0), i8* %2, i32 %conv, i32 %argc) #9, !dbg !1001
  br label %return, !dbg !1002

if.else:                                          ; preds = %if.end
  %str27 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !1003
  %3 = load i8*, i8** %str27, align 8, !dbg !1003
  %call30 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i8* %3, i32 %argc, i32 %conv) #9, !dbg !1004
  br label %return

return:                                           ; preds = %land.lhs.true14, %if.then11, %if.end22, %if.else, %if.then20, %entry
  %retval.0 = phi i8 [ 1, %entry ], [ 1, %if.then20 ], [ 1, %land.lhs.true14 ], [ 1, %if.then11 ], [ 0, %if.else ], [ 0, %if.end22 ], !dbg !975
  ret i8 %retval.0, !dbg !1005
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_push_token_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %macro, %struct.cpp_token* %first, i32 %count) local_unnamed_addr #2 !dbg !1006 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1010, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %macro, metadata !1011, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata %struct.cpp_token* %first, metadata !1012, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i32 %count, metadata !1013, metadata !DIExpression()), !dbg !1015
  %call = tail call fastcc %struct.cpp_context* @next_context(%struct.cpp_reader* %pfile) #11, !dbg !1016
  call void @llvm.dbg.value(metadata %struct.cpp_context* %call, metadata !1014, metadata !DIExpression()), !dbg !1015
  %direct_p = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 5, !dbg !1017
  store i8 1, i8* %direct_p, align 8, !dbg !1018
  %macro1 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 4, !dbg !1019
  store %struct.cpp_hashnode* %macro, %struct.cpp_hashnode** %macro1, align 8, !dbg !1020
  %buff = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 3, !dbg !1021
  store %struct._cpp_buff* null, %struct._cpp_buff** %buff, align 8, !dbg !1022
  %token = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 2, i32 0, i32 0, i32 0, !dbg !1023
  store %struct.cpp_token* %first, %struct.cpp_token** %token, align 8, !dbg !1024
  %idx.ext = zext i32 %count to i64, !dbg !1025
  %add.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %first, i64 %idx.ext, !dbg !1025
  %token5 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 2, i32 0, i32 1, i32 0, !dbg !1026
  store %struct.cpp_token* %add.ptr, %struct.cpp_token** %token5, align 8, !dbg !1027
  ret void, !dbg !1028
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_context* @next_context(%struct.cpp_reader* %pfile) unnamed_addr #2 !dbg !1029 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1033, metadata !DIExpression()), !dbg !1035
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1036
  %0 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !1036
  %next = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 0, !dbg !1037
  %1 = load %struct.cpp_context*, %struct.cpp_context** %next, align 8, !dbg !1037
  call void @llvm.dbg.value(metadata %struct.cpp_context* %1, metadata !1034, metadata !DIExpression()), !dbg !1035
  %cmp = icmp eq %struct.cpp_context* %1, null, !dbg !1038
  br i1 %cmp, label %if.then, label %if.end, !dbg !1040

if.then:                                          ; preds = %entry
  %call = tail call i8* @xmalloc(i64 56) #9, !dbg !1041
  %2 = bitcast i8* %call to %struct.cpp_context*, !dbg !1041
  call void @llvm.dbg.value(metadata %struct.cpp_context* %2, metadata !1034, metadata !DIExpression()), !dbg !1035
  %3 = bitcast %struct.cpp_context** %context to i64*, !dbg !1043
  %4 = load i64, i64* %3, align 8, !dbg !1043
  %prev = getelementptr inbounds i8, i8* %call, i64 8, !dbg !1044
  %5 = bitcast i8* %prev to i64*, !dbg !1045
  store i64 %4, i64* %5, align 8, !dbg !1045
  %next2 = bitcast i8* %call to %struct.cpp_context**, !dbg !1046
  store %struct.cpp_context* null, %struct.cpp_context** %next2, align 8, !dbg !1047
  %6 = bitcast %struct.cpp_context** %context to i8***, !dbg !1048
  %7 = load i8**, i8*** %6, align 8, !dbg !1048
  store i8* %call, i8** %7, align 8, !dbg !1049
  br label %if.end, !dbg !1050

if.end:                                           ; preds = %if.then, %entry
  %result.0 = phi %struct.cpp_context* [ %2, %if.then ], [ %1, %entry ], !dbg !1035
  call void @llvm.dbg.value(metadata %struct.cpp_context* %result.0, metadata !1034, metadata !DIExpression()), !dbg !1035
  store %struct.cpp_context* %result.0, %struct.cpp_context** %context, align 8, !dbg !1051
  ret %struct.cpp_context* %result.0, !dbg !1052
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_push_text_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %macro, i8* %start, i64 %len) local_unnamed_addr #2 !dbg !1053 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1057, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %macro, metadata !1058, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i8* %start, metadata !1059, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %len, metadata !1060, metadata !DIExpression()), !dbg !1062
  %call = tail call fastcc %struct.cpp_context* @next_context(%struct.cpp_reader* %pfile) #11, !dbg !1063
  call void @llvm.dbg.value(metadata %struct.cpp_context* %call, metadata !1061, metadata !DIExpression()), !dbg !1062
  %direct_p = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 5, !dbg !1064
  store i8 1, i8* %direct_p, align 8, !dbg !1065
  %macro1 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 4, !dbg !1066
  store %struct.cpp_hashnode* %macro, %struct.cpp_hashnode** %macro1, align 8, !dbg !1067
  %buff = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 3, !dbg !1068
  store %struct._cpp_buff* null, %struct._cpp_buff** %buff, align 8, !dbg !1069
  %u = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 2, !dbg !1070
  %cur = bitcast %union.anon* %u to i8**, !dbg !1070
  store i8* %start, i8** %cur, align 8, !dbg !1071
  %add.ptr = getelementptr inbounds i8, i8* %start, i64 %len, !dbg !1072
  %rlimit = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 2, i32 0, i32 1, !dbg !1073
  %0 = bitcast %union.utoken* %rlimit to i8**, !dbg !1073
  store i8* %add.ptr, i8** %0, align 8, !dbg !1074
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %macro, i64 0, i32 3, !dbg !1075
  %bf.load = load i16, i16* %flags, align 2, !dbg !1076
  %bf.lshr = and i16 %bf.load, -2112, !dbg !1076
  %1 = or i16 %bf.lshr, 2048, !dbg !1076
  %bf.clear = and i16 %bf.load, 63, !dbg !1076
  %bf.set = or i16 %bf.clear, %1, !dbg !1076
  store i16 %bf.set, i16* %flags, align 2, !dbg !1076
  ret void, !dbg !1077
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_pop_context(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !1078 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1080, metadata !DIExpression()), !dbg !1082
  %context1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1083
  %0 = load %struct.cpp_context*, %struct.cpp_context** %context1, align 8, !dbg !1083
  call void @llvm.dbg.value(metadata %struct.cpp_context* %0, metadata !1081, metadata !DIExpression()), !dbg !1082
  %macro = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 4, !dbg !1084
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %macro, align 8, !dbg !1084
  %tobool = icmp eq %struct.cpp_hashnode* %1, null, !dbg !1086
  br i1 %tobool, label %if.end, label %if.then, !dbg !1087

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %1, i64 0, i32 3, !dbg !1088
  %bf.load = load i16, i16* %flags, align 2, !dbg !1089
  %bf.set = and i16 %bf.load, -2049, !dbg !1089
  store i16 %bf.set, i16* %flags, align 2, !dbg !1089
  br label %if.end, !dbg !1090

if.end:                                           ; preds = %entry, %if.then
  %buff = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 3, !dbg !1091
  %2 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8, !dbg !1091
  %tobool4 = icmp eq %struct._cpp_buff* %2, null, !dbg !1093
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !1094

if.then5:                                         ; preds = %if.end
  tail call void @_cpp_release_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* nonnull %2) #9, !dbg !1095
  br label %if.end7, !dbg !1095

if.end7:                                          ; preds = %if.end, %if.then5
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 1, !dbg !1096
  %3 = bitcast %struct.cpp_context** %prev to i64*, !dbg !1096
  %4 = load i64, i64* %3, align 8, !dbg !1096
  %5 = bitcast %struct.cpp_context** %context1 to i64*, !dbg !1097
  store i64 %4, i64* %5, align 8, !dbg !1097
  ret void, !dbg !1098
}

declare dso_local void @_cpp_release_buff(%struct.cpp_reader*, %struct._cpp_buff*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !1099 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1103, metadata !DIExpression()), !dbg !1122
  %set_invocation_location = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 13, !dbg !1123
  %0 = load i8, i8* %set_invocation_location, align 4, !dbg !1123
  call void @llvm.dbg.value(metadata i8 %0, metadata !1105, metadata !DIExpression()), !dbg !1122
  store i8 0, i8* %set_invocation_location, align 4, !dbg !1124
  %context2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1125
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !1126
  %avoid_paste = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 43, !dbg !1133
  %tobool68 = icmp eq i8 %0, 0, !dbg !1135
  %invocation_location = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 12, !dbg !1135
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !1137
  %macro_to_expand = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 11, !dbg !1139
  br label %for.cond, !dbg !1140

for.cond:                                         ; preds = %cleanup154, %entry
  %result.0 = phi %struct.cpp_token* [ undef, %entry ], [ %result.4, %cleanup154 ]
  %retval.0 = phi %struct.cpp_token* [ undef, %entry ], [ %retval.3, %cleanup154 ]
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.0, metadata !1104, metadata !DIExpression()), !dbg !1122
  %1 = load %struct.cpp_context*, %struct.cpp_context** %context2, align 8, !dbg !1141
  call void @llvm.dbg.value(metadata %struct.cpp_context* %1, metadata !1110, metadata !DIExpression()), !dbg !1125
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %1, i64 0, i32 1, !dbg !1142
  %2 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8, !dbg !1142
  %tobool = icmp eq %struct.cpp_context* %2, null, !dbg !1143
  br i1 %tobool, label %if.then, label %if.else, !dbg !1144

if.then:                                          ; preds = %for.cond
  %call = tail call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %pfile) #9, !dbg !1145
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !1104, metadata !DIExpression()), !dbg !1122
  br label %if.end32, !dbg !1146

if.else:                                          ; preds = %for.cond
  %token = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %1, i64 0, i32 2, i32 0, i32 0, i32 0, !dbg !1147
  %3 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8, !dbg !1147
  %token5 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %1, i64 0, i32 2, i32 0, i32 1, i32 0, !dbg !1148
  %4 = load %struct.cpp_token*, %struct.cpp_token** %token5, align 8, !dbg !1148
  %cmp = icmp eq %struct.cpp_token* %3, %4, !dbg !1149
  %5 = bitcast %struct.cpp_token* %3 to %struct.cpp_token**, !dbg !1150
  br i1 %cmp, label %if.else25, label %if.then6, !dbg !1150

if.then6:                                         ; preds = %if.else
  %direct_p = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %1, i64 0, i32 5, !dbg !1151
  %6 = load i8, i8* %direct_p, align 8, !dbg !1151
  %tobool7 = icmp eq i8 %6, 0, !dbg !1153
  %first11 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %1, i64 0, i32 2, i32 0, i32 0, !dbg !1154
  br i1 %tobool7, label %if.else13, label %if.then8, !dbg !1155

if.then8:                                         ; preds = %if.then6
  %token12 = getelementptr inbounds %union.utoken, %union.utoken* %first11, i64 0, i32 0, !dbg !1156
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i64 1, !dbg !1157
  store %struct.cpp_token* %incdec.ptr, %struct.cpp_token** %token12, align 8, !dbg !1157
  call void @llvm.dbg.value(metadata %struct.cpp_token* %3, metadata !1104, metadata !DIExpression()), !dbg !1122
  br label %if.end, !dbg !1158

if.else13:                                        ; preds = %if.then6
  %incdec.ptr17 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i64 0, i32 3, !dbg !1159
  %7 = bitcast %union.utoken* %first11 to %union.cpp_token_u**, !dbg !1159
  store %union.cpp_token_u* %incdec.ptr17, %union.cpp_token_u** %7, align 8, !dbg !1159
  %8 = load %struct.cpp_token*, %struct.cpp_token** %5, align 8, !dbg !1160
  call void @llvm.dbg.value(metadata %struct.cpp_token* %8, metadata !1104, metadata !DIExpression()), !dbg !1122
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then8
  %result.1 = phi %struct.cpp_token* [ %3, %if.then8 ], [ %8, %if.else13 ], !dbg !1154
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.1, metadata !1104, metadata !DIExpression()), !dbg !1122
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.1, i64 0, i32 2, !dbg !1161
  %9 = load i16, i16* %flags, align 2, !dbg !1161
  %10 = and i16 %9, 8, !dbg !1162
  %tobool18 = icmp eq i16 %10, 0, !dbg !1162
  br i1 %tobool18, label %if.end32, label %if.then19, !dbg !1163

if.then19:                                        ; preds = %if.end
  tail call fastcc void @paste_all_tokens(%struct.cpp_reader* %pfile, %struct.cpp_token* %result.1) #11, !dbg !1164
  %11 = load i8, i8* %in_directive, align 8, !dbg !1165
  %tobool20 = icmp eq i8 %11, 0, !dbg !1166
  br i1 %tobool20, label %if.end22, label %cleanup154, !dbg !1167, !llvm.loop !1168

if.end22:                                         ; preds = %if.then19
  %call23 = tail call fastcc %struct.cpp_token* @padding_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %result.1) #11, !dbg !1171
  br label %cleanup154, !dbg !1172

if.else25:                                        ; preds = %if.else
  tail call void @_cpp_pop_context(%struct.cpp_reader* %pfile) #11, !dbg !1173
  %12 = load i8, i8* %in_directive, align 8, !dbg !1174
  %tobool28 = icmp ne i8 %12, 0, !dbg !1176
  %spec.select = select i1 %tobool28, i32 3, i32 1, !dbg !1177
  %spec.select1 = select i1 %tobool28, %struct.cpp_token* %retval.0, %struct.cpp_token* %avoid_paste, !dbg !1177
  br label %cleanup154, !dbg !1177

if.end32:                                         ; preds = %if.end, %if.then
  %result.2 = phi %struct.cpp_token* [ %call, %if.then ], [ %result.1, %if.end ], !dbg !1178
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.2, metadata !1104, metadata !DIExpression()), !dbg !1122
  %13 = load i8, i8* %in_directive, align 8, !dbg !1179
  %tobool36 = icmp eq i8 %13, 0, !dbg !1181
  br i1 %tobool36, label %if.end32.if.end40_crit_edge, label %land.lhs.true, !dbg !1182

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  %type41.phi.trans.insert = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2, i64 0, i32 1, !dbg !1183
  %bf.load42.pre = load i8, i8* %type41.phi.trans.insert, align 4, !dbg !1185
  br label %if.end40, !dbg !1182

land.lhs.true:                                    ; preds = %if.end32
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2, i64 0, i32 1, !dbg !1186
  %bf.load = load i8, i8* %type, align 4, !dbg !1186
  %cmp37 = icmp eq i8 %bf.load, 68, !dbg !1187
  br i1 %cmp37, label %cleanup154, label %if.end40, !dbg !1188, !llvm.loop !1168

if.end40:                                         ; preds = %if.end32.if.end40_crit_edge, %land.lhs.true
  %bf.load42 = phi i8 [ %bf.load42.pre, %if.end32.if.end40_crit_edge ], [ %bf.load, %land.lhs.true ], !dbg !1185
  %type41 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2, i64 0, i32 1, !dbg !1185
  %cmp44 = icmp eq i8 %bf.load42, 53, !dbg !1189
  br i1 %cmp44, label %if.end47, label %cleanup154, !dbg !1190

if.end47:                                         ; preds = %if.end40
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2, i64 0, i32 3, !dbg !1191
  %node49 = bitcast %union.cpp_token_u* %val to %struct.cpp_hashnode**, !dbg !1192
  %14 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node49, align 8, !dbg !1192
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %14, metadata !1106, metadata !DIExpression()), !dbg !1125
  %type50 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %14, i64 0, i32 3, !dbg !1193
  %bf.load51 = load i16, i16* %type50, align 2, !dbg !1193
  %bf.clear = and i16 %bf.load51, 63, !dbg !1193
  %cmp53 = icmp eq i16 %bf.clear, 1, !dbg !1195
  br i1 %cmp53, label %lor.lhs.false, label %cleanup154, !dbg !1196

lor.lhs.false:                                    ; preds = %if.end47
  %flags55 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2, i64 0, i32 2, !dbg !1197
  %15 = load i16, i16* %flags55, align 2, !dbg !1197
  %16 = and i16 %15, 32, !dbg !1198
  %tobool58 = icmp eq i16 %16, 0, !dbg !1198
  br i1 %tobool58, label %if.end60, label %cleanup154, !dbg !1199

if.end60:                                         ; preds = %lor.lhs.false
  %17 = and i16 %bf.load51, 2048, !dbg !1200
  %tobool65 = icmp eq i16 %17, 0, !dbg !1200
  br i1 %tobool65, label %if.then66, label %if.else141, !dbg !1201

if.then66:                                        ; preds = %if.end60
  call void @llvm.dbg.value(metadata i32 0, metadata !1111, metadata !DIExpression()), !dbg !1202
  br i1 %tobool68, label %if.end72, label %land.lhs.true69, !dbg !1203

land.lhs.true69:                                  ; preds = %if.then66
  %macro = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %1, i64 0, i32 4, !dbg !1204
  %18 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %macro, align 8, !dbg !1204
  %tobool70 = icmp eq %struct.cpp_hashnode* %18, null, !dbg !1205
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !1206

if.then71:                                        ; preds = %land.lhs.true69
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result.2, i64 0, i32 0, !dbg !1207
  %19 = load i32, i32* %src_loc, align 8, !dbg !1207
  store i32 %19, i32* %invocation_location, align 8, !dbg !1208
  br label %if.end72, !dbg !1209

if.end72:                                         ; preds = %land.lhs.true69, %if.then66, %if.then71
  %20 = load i8, i8* %prevent_expansion, align 8, !dbg !1210
  %tobool74 = icmp eq i8 %20, 0, !dbg !1211
  br i1 %tobool74, label %if.end76, label %cleanup, !dbg !1212

if.end76:                                         ; preds = %if.end72
  %bf.load78 = load i16, i16* %type50, align 2, !dbg !1213
  %21 = and i16 %bf.load78, 16384, !dbg !1214
  %cmp82 = icmp eq i16 %21, 0, !dbg !1215
  br i1 %cmp82, label %if.else125, label %if.then84, !dbg !1216

if.then84:                                        ; preds = %if.end76
  %22 = load %struct.cpp_hashnode* (%struct.cpp_reader*, %struct.cpp_token*)*, %struct.cpp_hashnode* (%struct.cpp_reader*, %struct.cpp_token*)** %macro_to_expand, align 8, !dbg !1217
  %tobool85 = icmp eq %struct.cpp_hashnode* (%struct.cpp_reader*, %struct.cpp_token*)* %22, null, !dbg !1218
  br i1 %tobool85, label %if.end127, label %if.then86, !dbg !1219

if.then86:                                        ; preds = %if.then84
  %call87 = tail call %struct.cpp_token* @cpp_peek_token(%struct.cpp_reader* %pfile, i32 0) #9, !dbg !1220
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call87, metadata !1119, metadata !DIExpression()), !dbg !1221
  %type88 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call87, i64 0, i32 1, !dbg !1222
  %bf.load89 = load i8, i8* %type88, align 4, !dbg !1222
  %cmp91 = icmp eq i8 %bf.load89, 72, !dbg !1223
  br i1 %cmp91, label %lor.end, label %lor.rhs, !dbg !1224

lor.rhs:                                          ; preds = %if.then86
  %flags93 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call87, i64 0, i32 2, !dbg !1225
  %23 = load i16, i16* %flags93, align 2, !dbg !1225
  %24 = and i16 %23, 1, !dbg !1226
  %tobool96 = icmp ne i16 %24, 0, !dbg !1224
  br label %lor.end, !dbg !1224

lor.end:                                          ; preds = %lor.rhs, %if.then86
  %25 = phi i1 [ true, %if.then86 ], [ %tobool96, %lor.rhs ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1114, metadata !DIExpression()), !dbg !1221
  %26 = load %struct.cpp_hashnode* (%struct.cpp_reader*, %struct.cpp_token*)*, %struct.cpp_hashnode* (%struct.cpp_reader*, %struct.cpp_token*)** %macro_to_expand, align 8, !dbg !1227
  %call100 = tail call %struct.cpp_hashnode* %26(%struct.cpp_reader* %pfile, %struct.cpp_token* %result.2) #9, !dbg !1228
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call100, metadata !1106, metadata !DIExpression()), !dbg !1125
  %tobool101 = icmp eq %struct.cpp_hashnode* %call100, null, !dbg !1229
  br i1 %tobool101, label %if.else104, label %if.then102, !dbg !1231

if.then102:                                       ; preds = %lor.end
  %call103 = tail call fastcc i32 @enter_macro_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* nonnull %call100, %struct.cpp_token* %result.2) #11, !dbg !1232
  call void @llvm.dbg.value(metadata i32 %call103, metadata !1111, metadata !DIExpression()), !dbg !1202
  br label %if.end127, !dbg !1233

if.else104:                                       ; preds = %lor.end
  call void @llvm.dbg.value(metadata i1 %25, metadata !1114, metadata !DIExpression()), !dbg !1221
  br i1 %25, label %if.then106, label %if.end127, !dbg !1234

if.then106:                                       ; preds = %if.else104
  %call107 = tail call %struct.cpp_token* @cpp_peek_token(%struct.cpp_reader* %pfile, i32 0) #9, !dbg !1235
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call107, metadata !1119, metadata !DIExpression()), !dbg !1221
  %type108 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call107, i64 0, i32 1, !dbg !1238
  %bf.load109 = load i8, i8* %type108, align 4, !dbg !1238
  %cmp111 = icmp eq i8 %bf.load109, 72, !dbg !1240
  br i1 %cmp111, label %if.end127, label %land.lhs.true113, !dbg !1241

land.lhs.true113:                                 ; preds = %if.then106
  %flags114 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call107, i64 0, i32 2, !dbg !1242
  %27 = load i16, i16* %flags114, align 2, !dbg !1242
  %28 = and i16 %27, 1, !dbg !1243
  %cmp117 = icmp eq i16 %28, 0, !dbg !1244
  br i1 %cmp117, label %if.then119, label %if.end127, !dbg !1245

if.then119:                                       ; preds = %land.lhs.true113
  %call120 = tail call fastcc %struct.cpp_token* @padding_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %call107) #11, !dbg !1246
  tail call void @_cpp_push_token_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* null, %struct.cpp_token* %call120, i32 1) #11, !dbg !1247
  br label %if.end127, !dbg !1247

if.else125:                                       ; preds = %if.end76
  %call126 = tail call fastcc i32 @enter_macro_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %14, %struct.cpp_token* %result.2) #11, !dbg !1248
  call void @llvm.dbg.value(metadata i32 %call126, metadata !1111, metadata !DIExpression()), !dbg !1202
  br label %if.end127

if.end127:                                        ; preds = %if.then106, %if.then84, %if.else104, %if.then119, %land.lhs.true113, %if.then102, %if.else125
  %ret.2 = phi i32 [ %call126, %if.else125 ], [ 0, %if.then84 ], [ %call103, %if.then102 ], [ 0, %if.then106 ], [ 0, %land.lhs.true113 ], [ 0, %if.then119 ], [ 0, %if.else104 ], !dbg !1249
  call void @llvm.dbg.value(metadata i32 %ret.2, metadata !1111, metadata !DIExpression()), !dbg !1202
  %tobool128 = icmp eq i32 %ret.2, 0, !dbg !1250
  br i1 %tobool128, label %cleanup, label %if.then129, !dbg !1252

if.then129:                                       ; preds = %if.end127
  %29 = load i8, i8* %in_directive, align 8, !dbg !1253
  %tobool133 = icmp ne i8 %29, 0, !dbg !1256
  %cmp135 = icmp eq i32 %ret.2, 2, !dbg !1257
  %or.cond = or i1 %tobool133, %cmp135, !dbg !1258
  br i1 %or.cond, label %cleanup, label %if.end138, !dbg !1258, !llvm.loop !1168

if.end138:                                        ; preds = %if.then129
  %call139 = tail call fastcc %struct.cpp_token* @padding_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %result.2) #11, !dbg !1259
  br label %cleanup, !dbg !1260

cleanup:                                          ; preds = %if.end127, %if.end72, %if.then129, %if.end138
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.end138 ], [ 2, %if.end72 ], [ 3, %if.then129 ], [ 0, %if.end127 ]
  %retval.1 = phi %struct.cpp_token* [ %call139, %if.end138 ], [ %retval.0, %if.end72 ], [ %retval.0, %if.then129 ], [ %retval.0, %if.end127 ]
  %cond = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond, label %if.end153, label %cleanup154

if.else141:                                       ; preds = %if.end60
  %call142 = tail call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %pfile) #9, !dbg !1261
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call142, metadata !1120, metadata !DIExpression()), !dbg !1262
  %bf.load1442 = load i8, i8* %type41, align 4, !dbg !1263
  %type146 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call142, i64 0, i32 1, !dbg !1264
  store i8 %bf.load1442, i8* %type146, align 4, !dbg !1265
  %30 = load i16, i16* %flags55, align 2, !dbg !1266
  %31 = or i16 %30, 32, !dbg !1267
  %flags150 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call142, i64 0, i32 2, !dbg !1268
  store i16 %31, i16* %flags150, align 2, !dbg !1269
  %val151 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call142, i64 0, i32 3, !dbg !1270
  %32 = bitcast %union.cpp_token_u* %val151 to i8*, !dbg !1271
  %33 = bitcast %union.cpp_token_u* %val to i8*, !dbg !1271
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %32, i8* nonnull align 8 %33, i64 16, i1 false), !dbg !1271
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call142, metadata !1104, metadata !DIExpression()), !dbg !1122
  br label %if.end153

if.end153:                                        ; preds = %cleanup, %if.else141
  %result.3 = phi %struct.cpp_token* [ %call142, %if.else141 ], [ %result.2, %cleanup ], !dbg !1125
  %retval.2 = phi %struct.cpp_token* [ %retval.0, %if.else141 ], [ %retval.1, %cleanup ]
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.3, metadata !1104, metadata !DIExpression()), !dbg !1122
  br label %cleanup154, !dbg !1272

cleanup154:                                       ; preds = %if.then19, %lor.lhs.false, %if.end47, %if.end40, %if.else25, %land.lhs.true, %cleanup, %if.end153, %if.end22
  %cleanup.dest.slot.1 = phi i32 [ 1, %if.end22 ], [ 2, %if.end153 ], [ %cleanup.dest.slot.0, %cleanup ], [ 3, %if.then19 ], [ 3, %land.lhs.true ], [ 2, %if.end40 ], [ 2, %lor.lhs.false ], [ 2, %if.end47 ], [ %spec.select, %if.else25 ]
  %result.4 = phi %struct.cpp_token* [ %result.1, %if.end22 ], [ %result.3, %if.end153 ], [ %result.2, %cleanup ], [ %result.1, %if.then19 ], [ %result.2, %land.lhs.true ], [ %result.2, %if.end40 ], [ %result.2, %lor.lhs.false ], [ %result.2, %if.end47 ], [ %result.0, %if.else25 ]
  %retval.3 = phi %struct.cpp_token* [ %call23, %if.end22 ], [ %retval.2, %if.end153 ], [ %retval.1, %cleanup ], [ %retval.0, %if.then19 ], [ %retval.0, %land.lhs.true ], [ %retval.0, %if.end40 ], [ %retval.0, %lor.lhs.false ], [ %retval.0, %if.end47 ], [ %spec.select1, %if.else25 ]
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4, metadata !1104, metadata !DIExpression()), !dbg !1122
  switch i32 %cleanup.dest.slot.1, label %cleanup157.loopexit [
    i32 3, label %for.cond
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup154
  %result.4.lcssa9 = phi %struct.cpp_token* [ %result.4, %cleanup154 ]
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa9, metadata !1104, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa9, metadata !1104, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result.4.lcssa9, metadata !1104, metadata !DIExpression()), !dbg !1122
  br label %cleanup157, !dbg !1273

cleanup157.loopexit:                              ; preds = %cleanup154
  %retval.3.lcssa = phi %struct.cpp_token* [ %retval.3, %cleanup154 ]
  br label %cleanup157, !dbg !1274

cleanup157:                                       ; preds = %cleanup157.loopexit, %for.end
  %retval.4 = phi %struct.cpp_token* [ %result.4.lcssa9, %for.end ], [ %retval.3.lcssa, %cleanup157.loopexit ]
  ret %struct.cpp_token* %retval.4, !dbg !1274
}

declare dso_local %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @paste_all_tokens(%struct.cpp_reader* %pfile, %struct.cpp_token* %lhs) unnamed_addr #2 !dbg !1275 {
entry:
  %lhs.addr = alloca %struct.cpp_token*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1279, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.value(metadata %struct.cpp_token* %lhs, metadata !1280, metadata !DIExpression()), !dbg !1283
  store %struct.cpp_token* %lhs, %struct.cpp_token** %lhs.addr, align 8
  %context1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1284
  %0 = load %struct.cpp_context*, %struct.cpp_context** %context1, align 8, !dbg !1284
  call void @llvm.dbg.value(metadata %struct.cpp_context* %0, metadata !1282, metadata !DIExpression()), !dbg !1283
  %direct_p = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 5, !dbg !1285
  %first = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 2, i32 0, i32 0, !dbg !1285
  %token = getelementptr inbounds %union.utoken, %union.utoken* %first, i64 0, i32 0, !dbg !1285
  %ptoken = bitcast %union.utoken* %first to %struct.cpp_token***, !dbg !1285
  br label %do.body, !dbg !1288

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i8, i8* %direct_p, align 8, !dbg !1289
  %tobool = icmp eq i8 %1, 0, !dbg !1290
  br i1 %tobool, label %if.else, label %if.then, !dbg !1291

if.then:                                          ; preds = %do.body
  %2 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8, !dbg !1292
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %2, i64 1, !dbg !1292
  store %struct.cpp_token* %incdec.ptr, %struct.cpp_token** %token, align 8, !dbg !1292
  call void @llvm.dbg.value(metadata %struct.cpp_token* %2, metadata !1281, metadata !DIExpression()), !dbg !1283
  br label %if.end, !dbg !1293

if.else:                                          ; preds = %do.body
  %3 = load %struct.cpp_token**, %struct.cpp_token*** %ptoken, align 8, !dbg !1294
  %incdec.ptr5 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %3, i64 1, !dbg !1294
  store %struct.cpp_token** %incdec.ptr5, %struct.cpp_token*** %ptoken, align 8, !dbg !1294
  %4 = load %struct.cpp_token*, %struct.cpp_token** %3, align 8, !dbg !1295
  call void @llvm.dbg.value(metadata %struct.cpp_token* %4, metadata !1281, metadata !DIExpression()), !dbg !1283
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rhs.0 = phi %struct.cpp_token* [ %2, %if.then ], [ %4, %if.else ], !dbg !1285
  call void @llvm.dbg.value(metadata %struct.cpp_token* %rhs.0, metadata !1281, metadata !DIExpression()), !dbg !1283
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %rhs.0, i64 0, i32 1, !dbg !1296
  %bf.load = load i8, i8* %type, align 4, !dbg !1296
  %cmp = icmp eq i8 %bf.load, 72, !dbg !1298
  br i1 %cmp, label %if.then6, label %if.end10, !dbg !1299

if.then6:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %rhs.0, i64 0, i32 2, !dbg !1300
  %5 = load i16, i16* %flags, align 2, !dbg !1300
  %6 = and i16 %5, 8, !dbg !1303
  %tobool7 = icmp eq i16 %6, 0, !dbg !1303
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !1304

if.then8:                                         ; preds = %if.then6
  call void @abort() #14, !dbg !1305
  unreachable, !dbg !1305

if.end10:                                         ; preds = %if.then6, %if.end
  call void @llvm.dbg.value(metadata %struct.cpp_token** %lhs.addr, metadata !1280, metadata !DIExpression(DW_OP_deref)), !dbg !1283
  %call = call fastcc zeroext i8 @paste_tokens(%struct.cpp_reader* %pfile, %struct.cpp_token** nonnull %lhs.addr, %struct.cpp_token* %rhs.0) #11, !dbg !1306
  %tobool11 = icmp eq i8 %call, 0, !dbg !1306
  br i1 %tobool11, label %do.end, label %do.cond, !dbg !1308

do.cond:                                          ; preds = %if.end10
  %flags14 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %rhs.0, i64 0, i32 2, !dbg !1309
  %7 = load i16, i16* %flags14, align 2, !dbg !1309
  %8 = and i16 %7, 8, !dbg !1310
  %tobool17 = icmp eq i16 %8, 0, !dbg !1311
  br i1 %tobool17, label %do.end, label %do.body, !dbg !1311, !llvm.loop !1312

do.end:                                           ; preds = %do.cond, %if.end10
  %9 = load %struct.cpp_token*, %struct.cpp_token** %lhs.addr, align 8, !dbg !1314
  call void @llvm.dbg.value(metadata %struct.cpp_token* %9, metadata !1280, metadata !DIExpression()), !dbg !1283
  call void @_cpp_push_token_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* null, %struct.cpp_token* %9, i32 1) #11, !dbg !1315
  ret void, !dbg !1316
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_token* @padding_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %source) unnamed_addr #2 !dbg !1317 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1321, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata %struct.cpp_token* %source, metadata !1322, metadata !DIExpression()), !dbg !1324
  %call = tail call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %pfile) #9, !dbg !1325
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !1323, metadata !DIExpression()), !dbg !1324
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !1326
  store i8 72, i8* %type, align 4, !dbg !1327
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, !dbg !1328
  %source1 = bitcast %union.cpp_token_u* %val to %struct.cpp_token**, !dbg !1329
  store %struct.cpp_token* %source, %struct.cpp_token** %source1, align 8, !dbg !1330
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 2, !dbg !1331
  store i16 0, i16* %flags, align 2, !dbg !1332
  ret %struct.cpp_token* %call, !dbg !1333
}

declare dso_local %struct.cpp_token* @cpp_peek_token(%struct.cpp_reader*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @enter_macro_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, %struct.cpp_token* %result) unnamed_addr #2 !dbg !1334 {
entry:
  %pragma_buff = alloca %struct._cpp_buff*, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1338, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !1339, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata %struct.cpp_token* %result, metadata !1340, metadata !DIExpression()), !dbg !1352
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 28, !dbg !1353
  store i8 0, i8* %mi_valid, align 8, !dbg !1354
  %angled_headers = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 3, !dbg !1355
  store i8 0, i8* %angled_headers, align 1, !dbg !1356
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 3, !dbg !1357
  %bf.load = load i16, i16* %flags, align 2, !dbg !1357
  %0 = and i16 %bf.load, 256, !dbg !1359
  %tobool = icmp eq i16 %0, 0, !dbg !1359
  br i1 %tobool, label %if.end16, label %land.lhs.true, !dbg !1360

land.lhs.true:                                    ; preds = %entry
  %1 = and i16 %bf.load, 8192, !dbg !1361
  %tobool6 = icmp eq i16 %1, 0, !dbg !1361
  br i1 %tobool6, label %if.then, label %if.end16, !dbg !1362

if.then:                                          ; preds = %land.lhs.true
  %bf.lshr9 = and i16 %bf.load, -8256, !dbg !1363
  %2 = or i16 %bf.lshr9, 8192, !dbg !1363
  %bf.clear = and i16 %bf.load, 63, !dbg !1363
  %bf.set = or i16 %bf.clear, %2, !dbg !1363
  store i16 %bf.set, i16* %flags, align 2, !dbg !1363
  %used_define = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 13, !dbg !1365
  %3 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %used_define, align 8, !dbg !1365
  %tobool12 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %3, null, !dbg !1367
  br i1 %tobool12, label %if.end16, label %if.then13, !dbg !1368

if.then13:                                        ; preds = %if.then
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !1369
  %4 = load i32, i32* %directive_line, align 8, !dbg !1369
  tail call void %3(%struct.cpp_reader* %pfile, i32 %4, %struct.cpp_hashnode* %node) #9, !dbg !1370
  %bf.load18.pre = load i16, i16* %flags, align 2, !dbg !1371
  br label %if.end16, !dbg !1370

if.end16:                                         ; preds = %if.then, %land.lhs.true, %entry, %if.then13
  %bf.load18 = phi i16 [ %bf.set, %if.then ], [ %bf.load, %land.lhs.true ], [ %bf.load, %entry ], [ %bf.load18.pre, %if.then13 ], !dbg !1371
  %5 = and i16 %bf.load18, 256, !dbg !1372
  %tobool22 = icmp eq i16 %5, 0, !dbg !1372
  br i1 %tobool22, label %if.then23, label %if.end133, !dbg !1373

if.then23:                                        ; preds = %if.end16
  %macro24 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 4, i32 0, !dbg !1374
  %6 = load %struct.cpp_macro*, %struct.cpp_macro** %macro24, align 8, !dbg !1374
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %6, metadata !1341, metadata !DIExpression()), !dbg !1375
  %7 = bitcast %struct._cpp_buff** %pragma_buff to i8*, !dbg !1376
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12, !dbg !1376
  call void @llvm.dbg.value(metadata %struct._cpp_buff* null, metadata !1344, metadata !DIExpression()), !dbg !1375
  store %struct._cpp_buff* null, %struct._cpp_buff** %pragma_buff, align 8, !dbg !1377
  %fun_like = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %6, i64 0, i32 5, !dbg !1378
  %bf.load25 = load i8, i8* %fun_like, align 2, !dbg !1378
  %bf.clear26 = and i8 %bf.load25, 1, !dbg !1378
  %tobool28 = icmp eq i8 %bf.clear26, 0, !dbg !1379
  br i1 %tobool28, label %if.end61, label %if.then29, !dbg !1380

if.then29:                                        ; preds = %if.then23
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !1381
  %8 = load i8, i8* %prevent_expansion, align 8, !dbg !1382
  %inc = add i8 %8, 1, !dbg !1382
  store i8 %inc, i8* %prevent_expansion, align 8, !dbg !1382
  %keep_tokens = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 33, !dbg !1383
  %9 = load i32, i32* %keep_tokens, align 4, !dbg !1384
  %inc31 = add i32 %9, 1, !dbg !1384
  store i32 %inc31, i32* %keep_tokens, align 4, !dbg !1384
  %parsing_args = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 9, !dbg !1385
  store i8 1, i8* %parsing_args, align 1, !dbg !1386
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %pragma_buff, metadata !1344, metadata !DIExpression(DW_OP_deref)), !dbg !1375
  %call = call fastcc %struct._cpp_buff* @funlike_invocation_p(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, %struct._cpp_buff** nonnull %pragma_buff) #11, !dbg !1387
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call, metadata !1345, metadata !DIExpression()), !dbg !1388
  store i8 0, i8* %parsing_args, align 1, !dbg !1389
  %10 = load i32, i32* %keep_tokens, align 4, !dbg !1390
  %dec = add i32 %10, -1, !dbg !1390
  store i32 %dec, i32* %keep_tokens, align 4, !dbg !1390
  %11 = load i8, i8* %prevent_expansion, align 8, !dbg !1391
  %dec38 = add i8 %11, -1, !dbg !1391
  store i8 %dec38, i8* %prevent_expansion, align 8, !dbg !1391
  %cmp = icmp eq %struct._cpp_buff* %call, null, !dbg !1392
  br i1 %cmp, label %if.then39, label %if.end55, !dbg !1394

if.then39:                                        ; preds = %if.then29
  %warn_traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 17, !dbg !1395
  %12 = load i8, i8* %warn_traditional, align 1, !dbg !1395
  %tobool40 = icmp eq i8 %12, 0, !dbg !1395
  br i1 %tobool40, label %if.end51, label %land.lhs.true41, !dbg !1398

land.lhs.true41:                                  ; preds = %if.then39
  %13 = load %struct.cpp_macro*, %struct.cpp_macro** %macro24, align 8, !dbg !1399
  %syshdr = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %13, i64 0, i32 5, !dbg !1400
  %bf.load44 = load i8, i8* %syshdr, align 2, !dbg !1400
  %bf.clear46 = and i8 %bf.load44, 4, !dbg !1400
  %tobool48 = icmp eq i8 %bf.clear46, 0, !dbg !1401
  br i1 %tobool48, label %if.then49, label %if.end51, !dbg !1402

if.then49:                                        ; preds = %land.lhs.true41
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !1403
  %14 = load i8*, i8** %str, align 8, !dbg !1403
  %call50 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.35, i64 0, i64 0), i8* %14) #9, !dbg !1404
  br label %if.end51, !dbg !1404

if.end51:                                         ; preds = %land.lhs.true41, %if.then39, %if.then49
  %15 = load %struct._cpp_buff*, %struct._cpp_buff** %pragma_buff, align 8, !dbg !1405
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %15, metadata !1344, metadata !DIExpression()), !dbg !1375
  %tobool52 = icmp eq %struct._cpp_buff* %15, null, !dbg !1405
  br i1 %tobool52, label %cleanup, label %if.then53, !dbg !1407

if.then53:                                        ; preds = %if.end51
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %15, metadata !1344, metadata !DIExpression()), !dbg !1375
  call void @_cpp_release_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* nonnull %15) #9, !dbg !1408
  br label %cleanup, !dbg !1408

if.end55:                                         ; preds = %if.then29
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %6, i64 0, i32 4, !dbg !1409
  %16 = load i16, i16* %paramc, align 8, !dbg !1409
  %cmp57 = icmp eq i16 %16, 0, !dbg !1411
  br i1 %cmp57, label %if.end60, label %if.then59, !dbg !1412

if.then59:                                        ; preds = %if.end55
  %base = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %call, i64 0, i32 1, !dbg !1413
  %17 = bitcast i8** %base to %struct.macro_arg**, !dbg !1413
  %18 = load %struct.macro_arg*, %struct.macro_arg** %17, align 8, !dbg !1413
  call fastcc void @replace_args(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, %struct.cpp_macro* %6, %struct.macro_arg* %18) #11, !dbg !1414
  br label %if.end60, !dbg !1414

if.end60:                                         ; preds = %if.end55, %if.then59
  call void @_cpp_release_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* nonnull %call) #9, !dbg !1415
  br label %cleanup, !dbg !1416

cleanup:                                          ; preds = %if.end51, %if.then53, %if.end60
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end60 ], [ false, %if.then53 ], [ false, %if.end51 ]
  br i1 %cleanup.dest.slot.0, label %cleanup.if.end61_crit_edge, label %cleanup131

cleanup.if.end61_crit_edge:                       ; preds = %cleanup
  %bf.load63.pre = load i16, i16* %flags, align 2, !dbg !1417
  br label %if.end61

if.end61:                                         ; preds = %cleanup.if.end61_crit_edge, %if.then23
  %bf.load63 = phi i16 [ %bf.load63.pre, %cleanup.if.end61_crit_edge ], [ %bf.load18, %if.then23 ], !dbg !1417
  %bf.lshr64 = and i16 %bf.load63, -2112, !dbg !1417
  %19 = or i16 %bf.lshr64, 2048, !dbg !1417
  %bf.clear70 = and i16 %bf.load63, 63, !dbg !1417
  %bf.set71 = or i16 %bf.clear70, %19, !dbg !1417
  store i16 %bf.set71, i16* %flags, align 2, !dbg !1417
  %20 = and i16 %bf.load63, 8192, !dbg !1418
  %tobool78 = icmp eq i16 %20, 0, !dbg !1418
  br i1 %tobool78, label %if.then79, label %if.end99, !dbg !1420

if.then79:                                        ; preds = %if.end61
  %21 = or i16 %bf.lshr64, 10240, !dbg !1421
  %bf.set89 = or i16 %bf.clear70, %21, !dbg !1421
  store i16 %bf.set89, i16* %flags, align 2, !dbg !1421
  %used_define92 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 13, !dbg !1423
  %22 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %used_define92, align 8, !dbg !1423
  %tobool93 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %22, null, !dbg !1425
  br i1 %tobool93, label %if.end99, label %if.then94, !dbg !1426

if.then94:                                        ; preds = %if.then79
  %directive_line97 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !1427
  %23 = load i32, i32* %directive_line97, align 8, !dbg !1427
  call void %22(%struct.cpp_reader* %pfile, i32 %23, %struct.cpp_hashnode* %node) #9, !dbg !1428
  br label %if.end99, !dbg !1428

if.end99:                                         ; preds = %if.then79, %if.end61, %if.then94
  %used = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 16, !dbg !1429
  %24 = load void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)** %used, align 8, !dbg !1429
  %tobool101 = icmp eq void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* %24, null, !dbg !1431
  br i1 %tobool101, label %if.end105, label %if.then102, !dbg !1432

if.then102:                                       ; preds = %if.end99
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %result, i64 0, i32 0, !dbg !1433
  %25 = load i32, i32* %src_loc, align 8, !dbg !1433
  call void %24(%struct.cpp_reader* %pfile, i32 %25, %struct.cpp_hashnode* %node) #9, !dbg !1434
  br label %if.end105, !dbg !1434

if.end105:                                        ; preds = %if.end99, %if.then102
  %bf.load107 = load i8, i8* %fun_like, align 2, !dbg !1435
  %bf.set109 = or i8 %bf.load107, 8, !dbg !1435
  store i8 %bf.set109, i8* %fun_like, align 2, !dbg !1435
  %paramc110 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %6, i64 0, i32 4, !dbg !1436
  %26 = load i16, i16* %paramc110, align 8, !dbg !1436
  %cmp112 = icmp eq i16 %26, 0, !dbg !1438
  br i1 %cmp112, label %if.then114, label %if.end116, !dbg !1439

if.then114:                                       ; preds = %if.end105
  %tokens = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %6, i64 0, i32 1, i32 0, !dbg !1440
  %27 = load %struct.cpp_token*, %struct.cpp_token** %tokens, align 8, !dbg !1440
  %call115 = call fastcc i32 @macro_real_token_count(%struct.cpp_macro* %6) #11, !dbg !1441
  call void @_cpp_push_token_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, %struct.cpp_token* %27, i32 %call115) #11, !dbg !1442
  br label %if.end116, !dbg !1442

if.end116:                                        ; preds = %if.then114, %if.end105
  %28 = load %struct._cpp_buff*, %struct._cpp_buff** %pragma_buff, align 8, !dbg !1443
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %28, metadata !1344, metadata !DIExpression()), !dbg !1375
  %tobool117 = icmp eq %struct._cpp_buff* %28, null, !dbg !1443
  %29 = bitcast %struct._cpp_buff* %28 to i64*, !dbg !1444
  br i1 %tobool117, label %cleanup131, label %if.then118, !dbg !1444

if.then118:                                       ; preds = %if.end116
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !1445
  %30 = load i8, i8* %in_directive, align 8, !dbg !1445
  %tobool120 = icmp eq i8 %30, 0, !dbg !1447
  br i1 %tobool120, label %if.then121, label %if.then118.if.end123_crit_edge, !dbg !1448

if.then118.if.end123_crit_edge:                   ; preds = %if.then118
  br label %if.end123, !dbg !1448

if.then121:                                       ; preds = %if.then118
  %call122 = call fastcc %struct.cpp_token* @padding_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %result) #11, !dbg !1449
  call void @_cpp_push_token_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* null, %struct.cpp_token* %call122, i32 1) #11, !dbg !1450
  %.phi.trans.insert = bitcast %struct._cpp_buff** %pragma_buff to i64**, !dbg !1451
  %.pre.pre = load i64*, i64** %.phi.trans.insert, align 8, !dbg !1452
  br label %if.end123, !dbg !1450

if.end123:                                        ; preds = %if.then118.if.end123_crit_edge, %if.then121
  %.pre = phi i64* [ %29, %if.then118.if.end123_crit_edge ], [ %.pre.pre, %if.then121 ], !dbg !1452
  %31 = bitcast %struct._cpp_buff** %pragma_buff to i64*, !dbg !1451
  br label %do.body, !dbg !1453

do.body:                                          ; preds = %do.body, %if.end123
  %32 = phi i64* [ %41, %do.body ], [ %.pre, %if.end123 ], !dbg !1452
  %33 = load i64, i64* %32, align 8, !dbg !1454
  call void @llvm.dbg.value(metadata i64* %32, metadata !1344, metadata !DIExpression()), !dbg !1375
  %next124 = bitcast i64* %32 to %struct._cpp_buff**, !dbg !1455
  store %struct._cpp_buff* null, %struct._cpp_buff** %next124, align 8, !dbg !1456
  %34 = load %struct._cpp_buff*, %struct._cpp_buff** %pragma_buff, align 8, !dbg !1457
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %34, metadata !1344, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %34, metadata !1344, metadata !DIExpression()), !dbg !1375
  %base125 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %34, i64 0, i32 1, !dbg !1458
  %35 = bitcast i8** %base125 to %struct.cpp_token***, !dbg !1458
  %36 = load %struct.cpp_token**, %struct.cpp_token*** %35, align 8, !dbg !1458
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %34, metadata !1344, metadata !DIExpression()), !dbg !1375
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %34, i64 0, i32 2, !dbg !1459
  %37 = bitcast i8** %cur to i64*, !dbg !1459
  %38 = load i64, i64* %37, align 8, !dbg !1459
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %34, metadata !1344, metadata !DIExpression()), !dbg !1375
  %39 = ptrtoint %struct.cpp_token** %36 to i64, !dbg !1460
  %sub.ptr.sub = sub i64 %38, %39, !dbg !1461
  %40 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1461
  %conv127 = trunc i64 %40 to i32, !dbg !1462
  call fastcc void @push_ptoken_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* null, %struct._cpp_buff* %34, %struct.cpp_token** %36, i32 %conv127) #11, !dbg !1463
  store i64 %33, i64* %31, align 8, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %33, metadata !1344, metadata !DIExpression()), !dbg !1375
  %cmp128 = icmp eq i64 %33, 0, !dbg !1465
  %41 = inttoptr i64 %33 to i64*, !dbg !1466
  br i1 %cmp128, label %cleanup131.loopexit, label %do.body, !dbg !1466, !llvm.loop !1467

cleanup131.loopexit:                              ; preds = %do.body
  br label %cleanup131, !dbg !1469

cleanup131:                                       ; preds = %cleanup131.loopexit, %if.end116, %cleanup
  %retval.1 = phi i32 [ 0, %cleanup ], [ 1, %if.end116 ], [ 2, %cleanup131.loopexit ], !dbg !1375
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12, !dbg !1469
  br label %return

if.end133:                                        ; preds = %if.end16
  %call134 = tail call fastcc i32 @builtin_macro(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) #11, !dbg !1470
  br label %return, !dbg !1471

return:                                           ; preds = %if.end133, %cleanup131
  %retval.2 = phi i32 [ %call134, %if.end133 ], [ %retval.1, %cleanup131 ], !dbg !1352
  ret i32 %retval.2, !dbg !1472
}

declare dso_local %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_token* @cpp_get_token_with_location(%struct.cpp_reader* %pfile, i32* %loc) local_unnamed_addr #2 !dbg !1473 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1478, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i32* %loc, metadata !1479, metadata !DIExpression()), !dbg !1481
  %set_invocation_location = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 13, !dbg !1482
  store i8 1, i8* %set_invocation_location, align 4, !dbg !1483
  %call = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #11, !dbg !1484
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !1480, metadata !DIExpression()), !dbg !1481
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1485
  %0 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !1485
  %macro = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 4, !dbg !1487
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %macro, align 8, !dbg !1487
  %tobool = icmp eq %struct.cpp_hashnode* %1, null, !dbg !1488
  br i1 %tobool, label %if.else, label %if.then, !dbg !1489

if.then:                                          ; preds = %entry
  %invocation_location = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 12, !dbg !1490
  br label %if.end, !dbg !1491

if.else:                                          ; preds = %entry
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 0, !dbg !1492
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge.in = phi i32* [ %src_loc, %if.else ], [ %invocation_location, %if.then ]
  %storemerge = load i32, i32* %storemerge.in, align 8, !dbg !1493
  store i32 %storemerge, i32* %loc, align 4, !dbg !1493
  ret %struct.cpp_token* %call, !dbg !1494
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cpp_sys_macro_p(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !1495 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1497, metadata !DIExpression()), !dbg !1499
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1500
  %0 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !1500
  %macro = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 4, !dbg !1501
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %macro, align 8, !dbg !1501
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %1, metadata !1498, metadata !DIExpression()), !dbg !1499
  %tobool = icmp eq %struct.cpp_hashnode* %1, null, !dbg !1502
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !1503

land.lhs.true:                                    ; preds = %entry
  %macro1 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %1, i64 0, i32 4, i32 0, !dbg !1504
  %2 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8, !dbg !1504
  %tobool2 = icmp eq %struct.cpp_macro* %2, null, !dbg !1505
  br i1 %tobool2, label %land.end, label %land.rhs, !dbg !1506

land.rhs:                                         ; preds = %land.lhs.true
  %syshdr = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %2, i64 0, i32 5, !dbg !1507
  %bf.load = load i8, i8* %syshdr, align 2, !dbg !1507
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !1507
  %bf.clear = and i8 %bf.lshr, 1, !dbg !1507
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1507
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry, %land.rhs
  %3 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %bf.cast, %land.rhs ]
  ret i32 %3, !dbg !1508
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_scan_nooutput(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !1509 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1511, metadata !DIExpression()), !dbg !1512
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1513
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !1513
  %return_at_eof = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 14, !dbg !1514
  %bf.load = load i8, i8* %return_at_eof, align 1, !dbg !1515
  %bf.set = or i8 %bf.load, 4, !dbg !1515
  store i8 %bf.set, i8* %return_at_eof, align 1, !dbg !1515
  %discarding_output = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 10, !dbg !1516
  %1 = load i8, i8* %discarding_output, align 2, !dbg !1517
  %inc = add i8 %1, 1, !dbg !1517
  store i8 %inc, i8* %discarding_output, align 2, !dbg !1517
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !1518
  %2 = load i8, i8* %prevent_expansion, align 8, !dbg !1519
  %inc2 = add i8 %2, 1, !dbg !1519
  store i8 %inc2, i8* %prevent_expansion, align 8, !dbg !1519
  %traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !1520
  %3 = load i8, i8* %traditional, align 2, !dbg !1520
  %tobool = icmp eq i8 %3, 0, !dbg !1520
  br i1 %tobool, label %while.cond4.preheader, label %while.cond.preheader, !dbg !1522

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !1523

while.cond4.preheader:                            ; preds = %entry
  br label %while.cond4, !dbg !1524

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %call = tail call zeroext i8 @_cpp_read_logical_line_trad(%struct.cpp_reader* %pfile) #9, !dbg !1525
  %tobool3 = icmp eq i8 %call, 0, !dbg !1523
  br i1 %tobool3, label %if.end.loopexit1, label %while.cond, !dbg !1523, !llvm.loop !1526

while.cond4:                                      ; preds = %while.cond4.preheader, %while.cond4
  %call5 = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #11, !dbg !1528
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call5, i64 0, i32 1, !dbg !1529
  %bf.load6 = load i8, i8* %type, align 4, !dbg !1529
  %cmp = icmp eq i8 %bf.load6, 22, !dbg !1530
  br i1 %cmp, label %if.end.loopexit, label %while.cond4, !dbg !1524, !llvm.loop !1531

if.end.loopexit:                                  ; preds = %while.cond4
  br label %if.end, !dbg !1533

if.end.loopexit1:                                 ; preds = %while.cond
  br label %if.end, !dbg !1533

if.end:                                           ; preds = %if.end.loopexit1, %if.end.loopexit
  %4 = load i8, i8* %discarding_output, align 2, !dbg !1534
  %dec = add i8 %4, -1, !dbg !1534
  store i8 %dec, i8* %discarding_output, align 2, !dbg !1534
  %5 = load i8, i8* %prevent_expansion, align 8, !dbg !1535
  %dec13 = add i8 %5, -1, !dbg !1535
  store i8 %dec13, i8* %prevent_expansion, align 8, !dbg !1535
  ret void, !dbg !1536
}

declare dso_local zeroext i8 @_cpp_read_logical_line_trad(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_backup_tokens_direct(%struct.cpp_reader* %pfile, i32 %count) local_unnamed_addr #2 !dbg !1537 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1539, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i32 %count, metadata !1540, metadata !DIExpression()), !dbg !1541
  %lookaheads = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 32, !dbg !1542
  %0 = load i32, i32* %lookaheads, align 8, !dbg !1543
  %add = add i32 %0, %count, !dbg !1543
  store i32 %add, i32* %lookaheads, align 8, !dbg !1543
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !1544
  %cur_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 31, !dbg !1546
  %1 = bitcast %struct.tokenrun** %cur_run to i64*, !dbg !1548
  %2 = bitcast %struct.cpp_token** %cur_token to i64*, !dbg !1548
  br label %while.cond, !dbg !1550

while.cond:                                       ; preds = %if.end, %entry
  %count.addr.0 = phi i32 [ %count, %entry ], [ %dec, %if.end ]
  call void @llvm.dbg.value(metadata i32 %count.addr.0, metadata !1540, metadata !DIExpression()), !dbg !1541
  %dec = add i32 %count.addr.0, -1, !dbg !1551
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1540, metadata !DIExpression()), !dbg !1541
  %tobool = icmp eq i32 %count.addr.0, 0, !dbg !1550
  br i1 %tobool, label %while.end, label %while.body, !dbg !1550

while.body:                                       ; preds = %while.cond
  %3 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !1552
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i64 -1, !dbg !1552
  store %struct.cpp_token* %incdec.ptr, %struct.cpp_token** %cur_token, align 8, !dbg !1552
  %4 = load %struct.tokenrun*, %struct.tokenrun** %cur_run, align 8, !dbg !1553
  %base = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %4, i64 0, i32 2, !dbg !1554
  %5 = load %struct.cpp_token*, %struct.cpp_token** %base, align 8, !dbg !1554
  %cmp = icmp eq %struct.cpp_token* %incdec.ptr, %5, !dbg !1555
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1556

land.lhs.true:                                    ; preds = %while.body
  %prev = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %4, i64 0, i32 1, !dbg !1557
  %6 = load %struct.tokenrun*, %struct.tokenrun** %prev, align 8, !dbg !1557
  %cmp3 = icmp eq %struct.tokenrun* %6, null, !dbg !1558
  br i1 %cmp3, label %if.end, label %if.then, !dbg !1559

if.then:                                          ; preds = %land.lhs.true
  %7 = ptrtoint %struct.tokenrun* %6 to i64, !dbg !1559
  store i64 %7, i64* %1, align 8, !dbg !1560
  %limit = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %6, i64 0, i32 3, !dbg !1561
  %8 = bitcast %struct.cpp_token** %limit to i64*, !dbg !1561
  %9 = load i64, i64* %8, align 8, !dbg !1561
  store i64 %9, i64* %2, align 8, !dbg !1562
  br label %if.end, !dbg !1563

if.end:                                           ; preds = %land.lhs.true, %if.then, %while.body
  br label %while.cond, !dbg !1550, !llvm.loop !1564

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1566
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 %count) local_unnamed_addr #2 !dbg !1567 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1569, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i32 %count, metadata !1570, metadata !DIExpression()), !dbg !1571
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1572
  %0 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !1572
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 1, !dbg !1574
  %1 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8, !dbg !1574
  %cmp = icmp eq %struct.cpp_context* %1, null, !dbg !1575
  br i1 %cmp, label %if.then, label %if.else, !dbg !1576

if.then:                                          ; preds = %entry
  tail call void @_cpp_backup_tokens_direct(%struct.cpp_reader* %pfile, i32 %count) #11, !dbg !1577
  br label %if.end13, !dbg !1577

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %count, 1, !dbg !1578
  br i1 %cmp1, label %if.end, label %if.then2, !dbg !1581

if.then2:                                         ; preds = %if.else
  tail call void @abort() #14, !dbg !1582
  unreachable, !dbg !1582

if.end:                                           ; preds = %if.else
  %direct_p = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 5, !dbg !1583
  %2 = load i8, i8* %direct_p, align 8, !dbg !1583
  %tobool = icmp eq i8 %2, 0, !dbg !1585
  %first = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 2, i32 0, i32 0, !dbg !1586
  br i1 %tobool, label %if.else6, label %if.then4, !dbg !1587

if.then4:                                         ; preds = %if.end
  %token = getelementptr inbounds %union.utoken, %union.utoken* %first, i64 0, i32 0, !dbg !1588
  %3 = load %struct.cpp_token*, %struct.cpp_token** %token, align 8, !dbg !1589
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i64 -1, !dbg !1589
  store %struct.cpp_token* %incdec.ptr, %struct.cpp_token** %token, align 8, !dbg !1589
  br label %if.end13, !dbg !1590

if.else6:                                         ; preds = %if.end
  %ptoken = bitcast %union.utoken* %first to %struct.cpp_token***, !dbg !1591
  %4 = load %struct.cpp_token**, %struct.cpp_token*** %ptoken, align 8, !dbg !1592
  %incdec.ptr11 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %4, i64 -1, !dbg !1592
  store %struct.cpp_token** %incdec.ptr11, %struct.cpp_token*** %ptoken, align 8, !dbg !1592
  br label %if.end13

if.end13:                                         ; preds = %if.then4, %if.else6, %if.then
  ret void, !dbg !1593
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_free_definition(%struct.cpp_hashnode* %h) local_unnamed_addr #2 !dbg !1594 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %h, metadata !1598, metadata !DIExpression()), !dbg !1599
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %h, i64 0, i32 3, !dbg !1600
  %bf.load = load i16, i16* %type, align 2, !dbg !1601
  %0 = and i16 %bf.load, -10560, !dbg !1602
  store i16 %0, i16* %type, align 2, !dbg !1602
  ret void, !dbg !1603
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_save_parameter(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro, %struct.cpp_hashnode* %node) local_unnamed_addr #2 !dbg !1604 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1608, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !1609, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !1610, metadata !DIExpression()), !dbg !1612
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 3, !dbg !1613
  %bf.load = load i16, i16* %flags, align 2, !dbg !1613
  %0 = and i16 %bf.load, 4096, !dbg !1615
  %tobool = icmp eq i16 %0, 0, !dbg !1615
  br i1 %tobool, label %if.end, label %if.then, !dbg !1616

if.then:                                          ; preds = %entry
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !1617
  %1 = load i8*, i8** %str, align 8, !dbg !1617
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i8* %1) #9, !dbg !1619
  br label %cleanup, !dbg !1620

if.end:                                           ; preds = %entry
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 5, !dbg !1621
  %2 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !1621
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %2, i64 0, i32 3, !dbg !1621
  %3 = bitcast i8** %limit to i64*, !dbg !1621
  %4 = load i64, i64* %3, align 8, !dbg !1621
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %2, i64 0, i32 2, !dbg !1621
  %5 = bitcast i8** %cur to i64*, !dbg !1621
  %6 = load i64, i64* %5, align 8, !dbg !1621
  %sub.ptr.sub = sub i64 %4, %6, !dbg !1621
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 4, !dbg !1623
  %7 = load i16, i16* %paramc, align 8, !dbg !1623
  %conv = zext i16 %7 to i64, !dbg !1624
  %add = shl nuw nsw i64 %conv, 3, !dbg !1625
  %mul = add nuw nsw i64 %add, 8, !dbg !1625
  %cmp = icmp ult i64 %sub.ptr.sub, %mul, !dbg !1626
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !1627

if.then4:                                         ; preds = %if.end
  tail call void @_cpp_extend_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff** nonnull %a_buff, i64 8) #9, !dbg !1628
  %.pre = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !1629
  %.pre1 = load i16, i16* %paramc, align 8, !dbg !1630
  %.pre4 = zext i16 %.pre1 to i64, !dbg !1631
  br label %if.end6, !dbg !1628

if.end6:                                          ; preds = %if.then4, %if.end
  %idxprom.pre-phi = phi i64 [ %.pre4, %if.then4 ], [ %conv, %if.end ], !dbg !1631
  %8 = phi i16 [ %.pre1, %if.then4 ], [ %7, %if.end ], !dbg !1630
  %9 = phi %struct._cpp_buff* [ %.pre, %if.then4 ], [ %2, %if.end ], !dbg !1629
  %cur8 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %9, i64 0, i32 2, !dbg !1629
  %10 = bitcast i8** %cur8 to %struct.cpp_hashnode***, !dbg !1629
  %11 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %10, align 8, !dbg !1629
  %inc = add i16 %8, 1, !dbg !1630
  store i16 %inc, i16* %paramc, align 8, !dbg !1630
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %11, i64 %idxprom.pre-phi, !dbg !1631
  store %struct.cpp_hashnode* %node, %struct.cpp_hashnode** %arrayidx, align 8, !dbg !1632
  %bf.load11 = load i16, i16* %flags, align 2, !dbg !1633
  %bf.lshr12 = and i16 %bf.load11, -4160, !dbg !1633
  %12 = or i16 %bf.lshr12, 4096, !dbg !1633
  %bf.clear = and i16 %bf.load11, 63, !dbg !1633
  %bf.set = or i16 %bf.clear, %12, !dbg !1633
  store i16 %bf.set, i16* %flags, align 2, !dbg !1633
  %13 = load i16, i16* %paramc, align 8, !dbg !1634
  %conv16 = zext i16 %13 to i32, !dbg !1635
  %mul17 = shl nuw nsw i32 %conv16, 3, !dbg !1636
  call void @llvm.dbg.value(metadata i32 %mul17, metadata !1611, metadata !DIExpression()), !dbg !1612
  %macro_buffer_len = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 35, !dbg !1637
  %14 = load i32, i32* %macro_buffer_len, align 8, !dbg !1637
  %cmp19 = icmp ugt i32 %mul17, %14, !dbg !1639
  br i1 %cmp19, label %if.then21, label %if.end6.if.end27_crit_edge, !dbg !1640

if.end6.if.end27_crit_edge:                       ; preds = %if.end6
  %macro_buffer28.phi.trans.insert = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 34, !dbg !1612
  %.phi.trans.insert = bitcast i8** %macro_buffer28.phi.trans.insert to %union._cpp_hashnode_value**, !dbg !1612
  %.pre2 = load %union._cpp_hashnode_value*, %union._cpp_hashnode_value** %.phi.trans.insert, align 8, !dbg !1641
  br label %if.end27, !dbg !1640

if.then21:                                        ; preds = %if.end6
  %macro_buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 34, !dbg !1642
  %15 = load i8*, i8** %macro_buffer, align 8, !dbg !1642
  %conv22 = zext i32 %mul17 to i64, !dbg !1642
  %call24 = tail call i8* @xrealloc(i8* %15, i64 %conv22) #9, !dbg !1642
  store i8* %call24, i8** %macro_buffer, align 8, !dbg !1644
  store i32 %mul17, i32* %macro_buffer_len, align 8, !dbg !1645
  %16 = bitcast i8* %call24 to %union._cpp_hashnode_value*, !dbg !1646
  %.pre3 = load i16, i16* %paramc, align 8, !dbg !1647
  br label %if.end27, !dbg !1646

if.end27:                                         ; preds = %if.end6.if.end27_crit_edge, %if.then21
  %17 = phi i16 [ %13, %if.end6.if.end27_crit_edge ], [ %.pre3, %if.then21 ], !dbg !1647
  %18 = phi %union._cpp_hashnode_value* [ %.pre2, %if.end6.if.end27_crit_edge ], [ %16, %if.then21 ], !dbg !1641
  %conv30 = zext i16 %17 to i64, !dbg !1648
  %sub = add nsw i64 %conv30, -1, !dbg !1649
  %arrayidx32 = getelementptr inbounds %union._cpp_hashnode_value, %union._cpp_hashnode_value* %18, i64 %sub, !dbg !1650
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 4, !dbg !1651
  %19 = bitcast %union._cpp_hashnode_value* %value to i64*, !dbg !1651
  %20 = bitcast %union._cpp_hashnode_value* %arrayidx32 to i64*, !dbg !1651
  %21 = load i64, i64* %19, align 8, !dbg !1651
  store i64 %21, i64* %20, align 8, !dbg !1651
  %22 = load i16, i16* %paramc, align 8, !dbg !1652
  %arg_index = bitcast %union._cpp_hashnode_value* %value to i16*, !dbg !1653
  store i16 %22, i16* %arg_index, align 8, !dbg !1654
  br label %cleanup, !dbg !1655

cleanup:                                          ; preds = %if.end27, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.end27 ], !dbg !1612
  ret i8 %retval.0, !dbg !1656
}

declare dso_local void @_cpp_extend_buff(%struct.cpp_reader*, %struct._cpp_buff**, i64) local_unnamed_addr #1

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_create_definition(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) local_unnamed_addr #2 !dbg !1657 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1661, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !1662, metadata !DIExpression()), !dbg !1676
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 50, !dbg !1677
  %0 = load %struct.ht*, %struct.ht** %hash_table, align 8, !dbg !1677
  %alloc_subobject = getelementptr inbounds %struct.ht, %struct.ht* %0, i64 0, i32 3, !dbg !1679
  %1 = load i8* (i64)*, i8* (i64)** %alloc_subobject, align 8, !dbg !1679
  %tobool = icmp eq i8* (i64)* %1, null, !dbg !1680
  br i1 %tobool, label %if.else, label %if.then, !dbg !1681

if.then:                                          ; preds = %entry
  %call = tail call i8* %1(i64 32) #9, !dbg !1682
  call void @llvm.dbg.value(metadata i8* %call, metadata !1663, metadata !DIExpression()), !dbg !1676
  br label %if.end, !dbg !1683

if.else:                                          ; preds = %entry
  %call3 = tail call i8* @_cpp_aligned_alloc(%struct.cpp_reader* %pfile, i64 32) #9, !dbg !1684
  call void @llvm.dbg.value(metadata i8* %call3, metadata !1663, metadata !DIExpression()), !dbg !1676
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %macro.0.in = phi i8* [ %call, %if.then ], [ %call3, %if.else ]
  %macro.0 = bitcast i8* %macro.0.in to %struct.cpp_macro*, !dbg !1685
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro.0, metadata !1663, metadata !DIExpression()), !dbg !1676
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !1686
  %2 = load i32, i32* %directive_line, align 8, !dbg !1686
  %line = getelementptr inbounds i8, i8* %macro.0.in, i64 16, !dbg !1687
  %3 = bitcast i8* %line to i32*, !dbg !1687
  store i32 %2, i32* %3, align 8, !dbg !1688
  %params = bitcast i8* %macro.0.in to %struct.cpp_hashnode***, !dbg !1689
  store %struct.cpp_hashnode** null, %struct.cpp_hashnode*** %params, align 8, !dbg !1690
  %paramc = getelementptr inbounds i8, i8* %macro.0.in, i64 24, !dbg !1691
  %4 = bitcast i8* %paramc to i16*, !dbg !1691
  store i16 0, i16* %4, align 8, !dbg !1692
  %5 = getelementptr inbounds i8, i8* %macro.0.in, i64 26, !dbg !1693
  %bf.load = load i8, i8* %5, align 2, !dbg !1694
  %bf.clear = and i8 %bf.load, -3, !dbg !1694
  store i8 %bf.clear, i8* %5, align 2, !dbg !1694
  %warn_unused_macros = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 28, !dbg !1695
  %6 = load i8, i8* %warn_unused_macros, align 2, !dbg !1695
  %tobool4 = icmp eq i8 %6, 0, !dbg !1696
  %7 = zext i1 %tobool4 to i8, !dbg !1697
  %bf.shl = shl nuw nsw i8 %7, 3, !dbg !1697
  %bf.clear6 = and i8 %bf.load, -44, !dbg !1697
  %bf.set = or i8 %bf.clear6, %bf.shl, !dbg !1697
  %count = getelementptr inbounds i8, i8* %macro.0.in, i64 20, !dbg !1698
  %8 = bitcast i8* %count to i32*, !dbg !1698
  store i32 0, i32* %8, align 4, !dbg !1699
  store i8 %bf.set, i8* %5, align 2, !dbg !1700
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1701
  %9 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !1701
  %tobool11 = icmp eq %struct.cpp_buffer* %9, null, !dbg !1702
  br i1 %tobool11, label %land.end, label %land.rhs, !dbg !1703

land.rhs:                                         ; preds = %if.end
  %sysp = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %9, i64 0, i32 15, !dbg !1704
  %10 = load i8, i8* %sysp, align 2, !dbg !1704
  %cmp = icmp ne i8 %10, 0, !dbg !1705
  %phitmp = zext i1 %cmp to i8
  %phitmp1 = shl nuw nsw i8 %phitmp, 2
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %11 = phi i8 [ 0, %if.end ], [ %phitmp1, %land.rhs ]
  %bf.clear17 = and i8 %bf.set, -40, !dbg !1706
  %bf.set18 = or i8 %bf.clear17, %11, !dbg !1706
  store i8 %bf.set18, i8* %5, align 2, !dbg !1706
  %traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !1707
  %12 = load i8, i8* %traditional, align 2, !dbg !1707
  %tobool21 = icmp eq i8 %12, 0, !dbg !1707
  br i1 %tobool21, label %if.else24, label %if.then22, !dbg !1709

if.then22:                                        ; preds = %land.end
  %call23 = tail call zeroext i8 @_cpp_create_trad_definition(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro.0) #9, !dbg !1710
  call void @llvm.dbg.value(metadata i8 %call23, metadata !1665, metadata !DIExpression()), !dbg !1676
  br label %if.end26, !dbg !1711

if.else24:                                        ; preds = %land.end
  %call25 = tail call fastcc zeroext i8 @create_iso_definition(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro.0) #11, !dbg !1712
  call void @llvm.dbg.value(metadata i8 %call25, metadata !1665, metadata !DIExpression()), !dbg !1676
  %va_args_ok = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 6, !dbg !1714
  store i8 0, i8* %va_args_ok, align 2, !dbg !1715
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then22
  %ok.0 = phi i8 [ %call23, %if.then22 ], [ %call25, %if.else24 ], !dbg !1716
  call void @llvm.dbg.value(metadata i8 %ok.0, metadata !1665, metadata !DIExpression()), !dbg !1676
  %13 = load i16, i16* %4, align 8, !dbg !1717
  call void @llvm.dbg.value(metadata i16 %13, metadata !1664, metadata !DIExpression()), !dbg !1676
  %macro_buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 34, !dbg !1718
  %14 = bitcast i8** %macro_buffer to %union._cpp_hashnode_value**, !dbg !1718
  %15 = zext i16 %13 to i64, !dbg !1719
  br label %for.cond, !dbg !1719

for.cond:                                         ; preds = %for.body, %if.end26
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %15, %if.end26 ], !dbg !1720
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1664, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 undef, metadata !1664, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1676
  %cmp29 = icmp eq i64 %indvars.iv, 0, !dbg !1721
  br i1 %cmp29, label %for.end, label %for.body, !dbg !1722

for.body:                                         ; preds = %for.cond
  %dec = add nuw nsw i64 %indvars.iv, 4294967295, !dbg !1723
  %16 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params, align 8, !dbg !1724
  %idxprom = and i64 %dec, 4294967295, !dbg !1725
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %16, i64 %idxprom, !dbg !1725
  %17 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx, align 8, !dbg !1725
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %17, metadata !1666, metadata !DIExpression()), !dbg !1718
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %17, i64 0, i32 3, !dbg !1726
  %bf.load33 = load i16, i16* %flags, align 2, !dbg !1727
  %bf.set38 = and i16 %bf.load33, -4097, !dbg !1727
  store i16 %bf.set38, i16* %flags, align 2, !dbg !1727
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %17, i64 0, i32 4, !dbg !1728
  %18 = load %union._cpp_hashnode_value*, %union._cpp_hashnode_value** %14, align 8, !dbg !1729
  %arrayidx41 = getelementptr inbounds %union._cpp_hashnode_value, %union._cpp_hashnode_value* %18, i64 %idxprom, !dbg !1730
  %19 = bitcast %union._cpp_hashnode_value* %arrayidx41 to i64*, !dbg !1730
  %20 = bitcast %union._cpp_hashnode_value* %value to i64*, !dbg !1730
  %21 = load i64, i64* %19, align 8, !dbg !1730
  store i64 %21, i64* %20, align 8, !dbg !1730
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1723
  br label %for.cond, !dbg !1731, !llvm.loop !1732

for.end:                                          ; preds = %for.cond
  %tobool42 = icmp eq i8 %ok.0, 0, !dbg !1734
  br i1 %tobool42, label %cleanup, label %if.end44, !dbg !1736

if.end44:                                         ; preds = %for.end
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 3, !dbg !1737
  %bf.load45 = load i16, i16* %type, align 2, !dbg !1737
  %bf.clear46 = and i16 %bf.load45, 63, !dbg !1737
  %cmp48 = icmp eq i16 %bf.clear46, 1, !dbg !1738
  br i1 %cmp48, label %if.then50, label %if.end84, !dbg !1739

if.then50:                                        ; preds = %if.end44
  %22 = load i8, i8* %warn_unused_macros, align 2, !dbg !1740
  %tobool53 = icmp eq i8 %22, 0, !dbg !1740
  br i1 %tobool53, label %if.end56, label %if.then54, !dbg !1742

if.then54:                                        ; preds = %if.then50
  %call55 = tail call i32 @_cpp_warn_if_unused_macro(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, i8* null) #11, !dbg !1743
  br label %if.end56, !dbg !1743

if.end56:                                         ; preds = %if.then50, %if.then54
  %call57 = tail call fastcc zeroext i8 @warn_of_redefinition(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, %struct.cpp_macro* %macro.0) #11, !dbg !1744
  %tobool58 = icmp eq i8 %call57, 0, !dbg !1744
  br i1 %tobool58, label %if.end84, label %if.then59, !dbg !1745

if.then59:                                        ; preds = %if.end56
  %23 = load i32, i32* %directive_line, align 8, !dbg !1746
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !1747
  %24 = load i8*, i8** %str, align 8, !dbg !1747
  %call61 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 2, i32 %23, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* %24) #9, !dbg !1748
  call void @llvm.dbg.value(metadata i8 %call61, metadata !1671, metadata !DIExpression()), !dbg !1749
  %tobool63 = icmp eq i8 %call61, 0, !dbg !1750
  br i1 %tobool63, label %if.end84, label %land.lhs.true, !dbg !1752

land.lhs.true:                                    ; preds = %if.then59
  %bf.load65 = load i16, i16* %type, align 2, !dbg !1753
  %bf.clear66 = and i16 %bf.load65, 63, !dbg !1753
  %cmp68 = icmp eq i16 %bf.clear66, 1, !dbg !1754
  br i1 %cmp68, label %land.lhs.true70, label %if.end84, !dbg !1755

land.lhs.true70:                                  ; preds = %land.lhs.true
  %25 = and i16 %bf.load65, 256, !dbg !1756
  %tobool76 = icmp eq i16 %25, 0, !dbg !1756
  br i1 %tobool76, label %if.then77, label %if.end84, !dbg !1757

if.then77:                                        ; preds = %land.lhs.true70
  %macro79 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 4, i32 0, !dbg !1758
  %26 = load %struct.cpp_macro*, %struct.cpp_macro** %macro79, align 8, !dbg !1758
  %line80 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %26, i64 0, i32 2, !dbg !1759
  %27 = load i32, i32* %line80, align 8, !dbg !1759
  %call81 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 5, i32 %27, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !1760
  br label %if.end84, !dbg !1760

if.end84:                                         ; preds = %land.lhs.true70, %if.then59, %if.end56, %if.then77, %land.lhs.true, %if.end44
  %bf.load86 = load i16, i16* %type, align 2, !dbg !1761
  %bf.clear87 = and i16 %bf.load86, 63, !dbg !1761
  %cmp89 = icmp eq i16 %bf.clear87, 0, !dbg !1763
  br i1 %cmp89, label %if.end92, label %if.then91, !dbg !1764

if.then91:                                        ; preds = %if.end84
  tail call void @_cpp_free_definition(%struct.cpp_hashnode* %node) #11, !dbg !1765
  %bf.load94.pre = load i16, i16* %type, align 2, !dbg !1766
  br label %if.end92, !dbg !1765

if.end92:                                         ; preds = %if.end84, %if.then91
  %bf.load94 = phi i16 [ %bf.load86, %if.end84 ], [ %bf.load94.pre, %if.then91 ], !dbg !1766
  %bf.clear95 = and i16 %bf.load94, -64, !dbg !1766
  %bf.set96 = or i16 %bf.clear95, 1, !dbg !1766
  store i16 %bf.set96, i16* %type, align 2, !dbg !1766
  %macro98 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 4, i32 0, !dbg !1767
  %28 = bitcast %struct.cpp_macro** %macro98 to i8**, !dbg !1768
  store i8* %macro.0.in, i8** %28, align 8, !dbg !1768
  %str100 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !1769
  %29 = load i8*, i8** %str100, align 8, !dbg !1769
  %call101 = tail call fastcc i32 @ustrncmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7) #11, !dbg !1771
  %tobool102 = icmp eq i32 %call101, 0, !dbg !1771
  br i1 %tobool102, label %land.lhs.true103, label %if.end129, !dbg !1772

land.lhs.true103:                                 ; preds = %if.end92
  %30 = load i8*, i8** %str100, align 8, !dbg !1773
  %call106 = tail call fastcc i32 @ustrcmp(i8* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0)) #11, !dbg !1774
  %tobool107 = icmp eq i32 %call106, 0, !dbg !1774
  br i1 %tobool107, label %if.end129, label %land.lhs.true108, !dbg !1775

land.lhs.true108:                                 ; preds = %land.lhs.true103
  %31 = load i8*, i8** %str100, align 8, !dbg !1776
  %call111 = tail call fastcc i32 @ustrcmp(i8* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !1777
  %tobool112 = icmp eq i32 %call111, 0, !dbg !1777
  br i1 %tobool112, label %if.end129, label %land.lhs.true113, !dbg !1778

land.lhs.true113:                                 ; preds = %land.lhs.true108
  %32 = load i8*, i8** %str100, align 8, !dbg !1779
  %call116 = tail call fastcc i32 @ustrcmp(i8* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0)) #11, !dbg !1780
  %tobool117 = icmp eq i32 %call116, 0, !dbg !1780
  br i1 %tobool117, label %if.end129, label %if.then118, !dbg !1781

if.then118:                                       ; preds = %land.lhs.true113
  %bf.load120 = load i16, i16* %type, align 2, !dbg !1782
  %bf.lshr121 = and i16 %bf.load120, -1088, !dbg !1782
  %33 = or i16 %bf.lshr121, 1024, !dbg !1782
  %bf.clear126 = and i16 %bf.load120, 63, !dbg !1782
  %bf.set127 = or i16 %bf.clear126, %33, !dbg !1782
  store i16 %bf.set127, i16* %type, align 2, !dbg !1782
  br label %if.end129, !dbg !1783

if.end129:                                        ; preds = %land.lhs.true113, %land.lhs.true108, %land.lhs.true103, %if.end92, %if.then118
  %bf.load131 = load i16, i16* %type, align 2, !dbg !1784
  %bf.set139 = and i16 %bf.load131, -16385, !dbg !1784
  store i16 %bf.set139, i16* %type, align 2, !dbg !1784
  br label %cleanup, !dbg !1785

cleanup:                                          ; preds = %for.end, %if.end129
  ret i8 %ok.0, !dbg !1786
}

declare dso_local i8* @_cpp_aligned_alloc(%struct.cpp_reader*, i64) local_unnamed_addr #1

declare dso_local zeroext i8 @_cpp_create_trad_definition(%struct.cpp_reader*, %struct.cpp_macro*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @create_iso_definition(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) unnamed_addr #2 !dbg !1787 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1791, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !1792, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8 0, metadata !1795, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i64 0, i64 0), metadata !1796, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i32 0, metadata !1797, metadata !DIExpression()), !dbg !1817
  %call = tail call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %pfile) #9, !dbg !1818
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !1794, metadata !DIExpression()), !dbg !1817
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !1819
  %bf.load = load i8, i8* %type, align 4, !dbg !1819
  %cmp = icmp eq i8 %bf.load, 20, !dbg !1820
  br i1 %cmp, label %land.lhs.true, label %if.else23, !dbg !1821

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 2, !dbg !1822
  %0 = load i16, i16* %flags, align 2, !dbg !1822
  %1 = and i16 %0, 1, !dbg !1823
  %tobool = icmp eq i16 %1, 0, !dbg !1823
  br i1 %tobool, label %if.then, label %if.else23, !dbg !1824

if.then:                                          ; preds = %land.lhs.true
  %call1 = tail call fastcc zeroext i8 @parse_params(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) #11, !dbg !1825
  call void @llvm.dbg.value(metadata i8 %call1, metadata !1798, metadata !DIExpression()), !dbg !1826
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 5, !dbg !1827
  %2 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !1827
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %2, i64 0, i32 2, !dbg !1827
  %3 = bitcast i8** %cur to i64*, !dbg !1827
  %4 = load i64, i64* %3, align 8, !dbg !1827
  %5 = bitcast %struct.cpp_macro* %macro to i64*, !dbg !1828
  store i64 %4, i64* %5, align 8, !dbg !1828
  %tobool2 = icmp eq i8 %call1, 0, !dbg !1829
  %6 = inttoptr i64 %4 to %struct.cpp_hashnode**, !dbg !1831
  br i1 %tobool2, label %cleanup, label %if.end, !dbg !1831

if.end:                                           ; preds = %if.then
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 50, !dbg !1832
  %7 = load %struct.ht*, %struct.ht** %hash_table, align 8, !dbg !1832
  %alloc_subobject = getelementptr inbounds %struct.ht, %struct.ht* %7, i64 0, i32 3, !dbg !1833
  %8 = load i8* (i64)*, i8* (i64)** %alloc_subobject, align 8, !dbg !1833
  %tobool4 = icmp eq i8* (i64)* %8, null, !dbg !1834
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !1835

if.then5:                                         ; preds = %if.end
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 4, !dbg !1836
  %9 = load i16, i16* %paramc, align 8, !dbg !1836
  %conv9 = zext i16 %9 to i64, !dbg !1837
  %mul = shl nuw nsw i64 %conv9, 3, !dbg !1838
  %call10 = tail call i8* %8(i64 %mul) #9, !dbg !1839
  call void @llvm.dbg.value(metadata i8* %call10, metadata !1801, metadata !DIExpression()), !dbg !1840
  %10 = bitcast %struct.cpp_macro* %macro to i8**, !dbg !1841
  %11 = load i8*, i8** %10, align 8, !dbg !1841
  %12 = load i16, i16* %paramc, align 8, !dbg !1842
  %conv13 = zext i16 %12 to i64, !dbg !1843
  %mul14 = shl nuw nsw i64 %conv13, 3, !dbg !1844
  %call15 = tail call i8* @memcpy(i8* %call10, i8* %11, i64 %mul14) #9, !dbg !1845
  store i8* %call10, i8** %10, align 8, !dbg !1846
  br label %if.end21, !dbg !1847

if.else:                                          ; preds = %if.end
  %paramc18 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 4, !dbg !1848
  %13 = load i16, i16* %paramc18, align 8, !dbg !1848
  %idxprom = zext i16 %13 to i64, !dbg !1849
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %6, i64 %idxprom, !dbg !1849
  %14 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !1850
  %cur20 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %14, i64 0, i32 2, !dbg !1850
  %15 = bitcast i8** %cur20 to %struct.cpp_hashnode***, !dbg !1851
  store %struct.cpp_hashnode** %arrayidx, %struct.cpp_hashnode*** %15, align 8, !dbg !1851
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then5
  %fun_like = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 5, !dbg !1852
  %bf.load22 = load i8, i8* %fun_like, align 2, !dbg !1853
  %bf.set = or i8 %bf.load22, 1, !dbg !1853
  store i8 %bf.set, i8* %fun_like, align 2, !dbg !1853
  br label %cleanup, !dbg !1854

cleanup:                                          ; preds = %if.then, %if.end21
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end21 ], [ false, %if.then ]
  br i1 %cleanup.dest.slot.0, label %if.end53, label %cleanup285

if.else23:                                        ; preds = %land.lhs.true, %entry
  %cmp27 = icmp eq i8 %bf.load, 22, !dbg !1855
  br i1 %cmp27, label %if.end53, label %land.lhs.true29, !dbg !1856

land.lhs.true29:                                  ; preds = %if.else23
  %flags30 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 2, !dbg !1857
  %16 = load i16, i16* %flags30, align 2, !dbg !1857
  %17 = and i16 %16, 1, !dbg !1858
  %tobool33 = icmp eq i16 %17, 0, !dbg !1858
  br i1 %tobool33, label %if.then34, label %if.end53, !dbg !1859

if.then34:                                        ; preds = %land.lhs.true29
  %c99 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 29, !dbg !1860
  %18 = load i8, i8* %c99, align 1, !dbg !1860
  %tobool35 = icmp eq i8 %18, 0, !dbg !1860
  br i1 %tobool35, label %if.else38, label %if.then36, !dbg !1861

if.then36:                                        ; preds = %if.then34
  %call37 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.40, i64 0, i64 0)) #9, !dbg !1862
  br label %if.end53, !dbg !1862

if.else38:                                        ; preds = %if.then34
  call void @llvm.dbg.value(metadata i32 0, metadata !1804, metadata !DIExpression()), !dbg !1863
  %bf.cast41 = zext i8 %bf.load to i32, !dbg !1864
  %19 = add nsw i32 %bf.cast41, -52, !dbg !1865
  %20 = lshr i32 %19, 1, !dbg !1865
  %21 = shl i32 %19, 31, !dbg !1865
  %22 = or i32 %20, %21, !dbg !1865
  switch i32 %22, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.epilog
    i32 7, label %sw.epilog
    i32 4, label %sw.bb42
  ], !dbg !1865

sw.bb42:                                          ; preds = %if.else38
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 1, !dbg !1866
  %23 = load i8*, i8** %text, align 8, !dbg !1866
  %24 = load i8, i8* %23, align 1, !dbg !1869
  %conv44 = zext i8 %24 to i32, !dbg !1869
  %call45 = tail call i8* @strchr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i64 0, i64 0), i32 %conv44) #10, !dbg !1870
  %cmp46 = icmp eq i8* %call45, null, !dbg !1871
  %spec.select = select i1 %cmp46, i32 2, i32 0, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1804, metadata !DIExpression()), !dbg !1863
  br label %sw.epilog, !dbg !1873

sw.default:                                       ; preds = %if.else38
  br label %sw.epilog, !dbg !1874

sw.epilog:                                        ; preds = %if.else38, %if.else38, %if.else38, %sw.default, %sw.bb42
  %warntype.1 = phi i32 [ 0, %sw.default ], [ %spec.select, %sw.bb42 ], [ 2, %if.else38 ], [ 2, %if.else38 ], [ 2, %if.else38 ], !dbg !1863
  call void @llvm.dbg.value(metadata i32 %warntype.1, metadata !1804, metadata !DIExpression()), !dbg !1863
  %call50 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 %warntype.1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0)) #9, !dbg !1875
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true29, %if.else23, %sw.epilog, %if.then36, %cleanup
  %fun_like54 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 5, !dbg !1876
  %bf.load55 = load i8, i8* %fun_like54, align 2, !dbg !1876
  %bf.clear56 = and i8 %bf.load55, 1, !dbg !1876
  %tobool58 = icmp eq i8 %bf.clear56, 0, !dbg !1878
  br i1 %tobool58, label %if.else61, label %if.then59, !dbg !1879

if.then59:                                        ; preds = %if.end53
  %call60 = tail call fastcc %struct.cpp_token* @lex_expansion_token(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) #11, !dbg !1880
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call60, metadata !1793, metadata !DIExpression()), !dbg !1817
  br label %if.end63, !dbg !1881

if.else61:                                        ; preds = %if.end53
  %call62 = tail call fastcc %struct.cpp_token* @alloc_expansion_token(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) #11, !dbg !1882
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call62, metadata !1793, metadata !DIExpression()), !dbg !1817
  %25 = bitcast %struct.cpp_token* %call62 to i8*, !dbg !1884
  %26 = bitcast %struct.cpp_token* %call to i8*, !dbg !1884
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 24, i1 false), !dbg !1884
  br label %if.end63

if.end63:                                         ; preds = %if.else61, %if.then59
  %token.0 = phi %struct.cpp_token* [ %call60, %if.then59 ], [ %call62, %if.else61 ], !dbg !1885
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token.0, metadata !1793, metadata !DIExpression()), !dbg !1817
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 3, !dbg !1886
  %lang = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 1, !dbg !1891
  br label %for.cond, !dbg !1895

for.cond:                                         ; preds = %if.end199, %if.end63
  %num_extra_tokens.0 = phi i32 [ 0, %if.end63 ], [ %num_extra_tokens.2, %if.end199 ], !dbg !1817
  %following_paste_op.0 = phi i8 [ 0, %if.end63 ], [ %conv205, %if.end199 ], !dbg !1817
  %token.1 = phi %struct.cpp_token* [ %token.0, %if.end63 ], [ %call206, %if.end199 ], !dbg !1817
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token.1, metadata !1793, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8 %following_paste_op.0, metadata !1795, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i32 %num_extra_tokens.0, metadata !1797, metadata !DIExpression()), !dbg !1817
  %27 = load i32, i32* %count, align 4, !dbg !1896
  %cmp64 = icmp ugt i32 %27, 1, !dbg !1897
  br i1 %cmp64, label %land.lhs.true66, label %if.end133, !dbg !1898

land.lhs.true66:                                  ; preds = %for.cond
  %type68 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.1, i64 -1, i32 1, !dbg !1899
  %bf.load69 = load i8, i8* %type68, align 4, !dbg !1899
  %cmp71 = icmp eq i8 %bf.load69, 37, !dbg !1900
  br i1 %cmp71, label %land.lhs.true73, label %if.end133, !dbg !1901

land.lhs.true73:                                  ; preds = %land.lhs.true66
  %bf.load75 = load i8, i8* %fun_like54, align 2, !dbg !1902
  %bf.clear76 = and i8 %bf.load75, 1, !dbg !1902
  %tobool78 = icmp eq i8 %bf.clear76, 0, !dbg !1903
  br i1 %tobool78, label %if.end133, label %if.then79, !dbg !1904

if.then79:                                        ; preds = %land.lhs.true73
  %type80 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.1, i64 0, i32 1, !dbg !1905
  %bf.load81 = load i8, i8* %type80, align 4, !dbg !1905
  %cmp83 = icmp eq i8 %bf.load81, 69, !dbg !1906
  br i1 %cmp83, label %if.then85, label %if.else125, !dbg !1907

if.then85:                                        ; preds = %if.then79
  %flags86 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.1, i64 0, i32 2, !dbg !1908
  %28 = load i16, i16* %flags86, align 2, !dbg !1908
  %29 = and i16 %28, 1, !dbg !1911
  %tobool89 = icmp eq i16 %29, 0, !dbg !1911
  br i1 %tobool89, label %if.end94, label %if.then90, !dbg !1912

if.then90:                                        ; preds = %if.then85
  %30 = or i16 %28, 512, !dbg !1913
  store i16 %30, i16* %flags86, align 2, !dbg !1913
  br label %if.end94, !dbg !1914

if.end94:                                         ; preds = %if.then85, %if.then90
  %31 = phi i16 [ %28, %if.then85 ], [ %30, %if.then90 ]
  %flags96 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.1, i64 -1, i32 2, !dbg !1915
  %32 = load i16, i16* %flags96, align 2, !dbg !1915
  %33 = and i16 %32, 2, !dbg !1917
  %tobool99 = icmp eq i16 %33, 0, !dbg !1917
  br i1 %tobool99, label %if.end105, label %if.then100, !dbg !1918

if.then100:                                       ; preds = %if.end94
  %34 = or i16 %31, 256, !dbg !1919
  store i16 %34, i16* %flags86, align 2, !dbg !1919
  br label %if.end105, !dbg !1920

if.end105:                                        ; preds = %if.end94, %if.then100
  %35 = phi i16 [ %31, %if.end94 ], [ %34, %if.then100 ], !dbg !1921
  %36 = and i16 %35, -6, !dbg !1921
  %37 = and i16 %32, 1, !dbg !1922
  %38 = or i16 %36, %37, !dbg !1923
  %or1201 = or i16 %38, 4, !dbg !1923
  store i16 %or1201, i16* %flags86, align 2, !dbg !1923
  %arrayidx122 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.1, i64 -1, !dbg !1924
  %39 = bitcast %struct.cpp_token* %arrayidx122 to i8*, !dbg !1925
  %40 = bitcast %struct.cpp_token* %token.1 to i8*, !dbg !1925
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %39, i8* align 8 %40, i64 24, i1 false), !dbg !1925
  %41 = load i32, i32* %count, align 4, !dbg !1926
  %dec = add i32 %41, -1, !dbg !1926
  store i32 %dec, i32* %count, align 4, !dbg !1926
  br label %if.end133, !dbg !1927

if.else125:                                       ; preds = %if.then79
  %42 = load i32, i32* %lang, align 4, !dbg !1928
  %cmp127 = icmp eq i32 %42, 9, !dbg !1929
  br i1 %cmp127, label %if.end133, label %if.then129, !dbg !1930

if.then129:                                       ; preds = %if.else125
  %call130 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.43, i64 0, i64 0)) #9, !dbg !1931
  br label %cleanup285, !dbg !1933

if.end133:                                        ; preds = %if.else125, %land.lhs.true73, %if.end105, %land.lhs.true66, %for.cond
  %43 = phi i32 [ %27, %if.else125 ], [ %27, %land.lhs.true73 ], [ %dec, %if.end105 ], [ %27, %land.lhs.true66 ], [ %27, %for.cond ]
  %type134 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.1, i64 0, i32 1, !dbg !1934
  %bf.load135 = load i8, i8* %type134, align 4, !dbg !1934
  %cmp137 = icmp eq i8 %bf.load135, 22, !dbg !1936
  br i1 %cmp137, label %if.then139, label %if.end144, !dbg !1937

if.then139:                                       ; preds = %if.end133
  %.lcssa = phi i32 [ %43, %if.end133 ]
  %num_extra_tokens.0.lcssa14 = phi i32 [ %num_extra_tokens.0, %if.end133 ], !dbg !1817
  %following_paste_op.0.lcssa12 = phi i8 [ %following_paste_op.0, %if.end133 ], !dbg !1817
  call void @llvm.dbg.value(metadata i32 %num_extra_tokens.0.lcssa14, metadata !1797, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8 %following_paste_op.0.lcssa12, metadata !1795, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i32 %num_extra_tokens.0.lcssa14, metadata !1797, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8 %following_paste_op.0.lcssa12, metadata !1795, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i32 %num_extra_tokens.0.lcssa14, metadata !1797, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8 %following_paste_op.0.lcssa12, metadata !1795, metadata !DIExpression()), !dbg !1817
  %tobool140 = icmp eq i8 %following_paste_op.0.lcssa12, 0, !dbg !1938
  br i1 %tobool140, label %for.end, label %if.then141, !dbg !1941

if.then141:                                       ; preds = %if.then139
  %call142 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i64 0, i64 0)) #9, !dbg !1942
  br label %cleanup285, !dbg !1944

if.end144:                                        ; preds = %if.end133
  %cmp148 = icmp eq i8 %bf.load135, 38, !dbg !1945
  br i1 %cmp148, label %if.then150, label %if.end199, !dbg !1947

if.then150:                                       ; preds = %if.end144
  %cmp152 = icmp eq i32 %43, 1, !dbg !1948
  br i1 %cmp152, label %if.then154, label %if.end156, !dbg !1951

if.then154:                                       ; preds = %if.then150
  %call155 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.39, i64 0, i64 0)) #9, !dbg !1952
  br label %cleanup285, !dbg !1954

if.end156:                                        ; preds = %if.then150
  %flags158 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.1, i64 -1, i32 2, !dbg !1955
  %44 = load i16, i16* %flags158, align 2, !dbg !1955
  %45 = and i16 %44, 8, !dbg !1957
  %tobool161 = icmp eq i16 %45, 0, !dbg !1957
  br i1 %tobool161, label %if.else168, label %if.then162, !dbg !1958

if.then162:                                       ; preds = %if.end156
  %bf.load163 = load i8, i8* %fun_like54, align 2, !dbg !1959
  %bf.set165 = or i8 %bf.load163, 32, !dbg !1959
  store i8 %bf.set165, i8* %fun_like54, align 2, !dbg !1959
  %inc = add i32 %num_extra_tokens.0, 1, !dbg !1961
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1797, metadata !DIExpression()), !dbg !1817
  %sub = add i32 %43, -1, !dbg !1962
  %token_no = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.1, i64 0, i32 3, i32 0, i32 0, !dbg !1963
  store i32 %sub, i32* %token_no, align 8, !dbg !1964
  br label %if.end199, !dbg !1965

if.else168:                                       ; preds = %if.end156
  %dec170 = add i32 %43, -1, !dbg !1966
  store i32 %dec170, i32* %count, align 4, !dbg !1966
  %46 = load i16, i16* %flags158, align 2, !dbg !1968
  %47 = or i16 %46, 8, !dbg !1968
  store i16 %47, i16* %flags158, align 2, !dbg !1968
  %flags176 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.1, i64 0, i32 2, !dbg !1969
  %48 = load i16, i16* %flags176, align 2, !dbg !1969
  %49 = and i16 %48, 2, !dbg !1971
  %tobool179 = icmp eq i16 %49, 0, !dbg !1971
  br i1 %tobool179, label %if.end186, label %if.then180, !dbg !1972

if.then180:                                       ; preds = %if.else168
  %50 = or i16 %46, 264, !dbg !1973
  store i16 %50, i16* %flags158, align 2, !dbg !1973
  br label %if.end186, !dbg !1974

if.end186:                                        ; preds = %if.else168, %if.then180
  %51 = phi i16 [ %47, %if.else168 ], [ %50, %if.then180 ]
  %52 = and i16 %48, 1, !dbg !1975
  %tobool190 = icmp eq i16 %52, 0, !dbg !1975
  br i1 %tobool190, label %if.end199, label %if.then191, !dbg !1977

if.then191:                                       ; preds = %if.end186
  %53 = or i16 %51, 512, !dbg !1978
  store i16 %53, i16* %flags158, align 2, !dbg !1978
  br label %if.end199, !dbg !1979

if.end199:                                        ; preds = %if.end186, %if.then162, %if.then191, %if.end144
  %num_extra_tokens.2 = phi i32 [ %num_extra_tokens.0, %if.end144 ], [ %inc, %if.then162 ], [ %num_extra_tokens.0, %if.then191 ], [ %num_extra_tokens.0, %if.end186 ], !dbg !1817
  call void @llvm.dbg.value(metadata i32 %num_extra_tokens.2, metadata !1797, metadata !DIExpression()), !dbg !1817
  %bf.load201 = load i8, i8* %type134, align 4, !dbg !1980
  %cmp203 = icmp eq i8 %bf.load201, 38, !dbg !1981
  %conv205 = zext i1 %cmp203 to i8, !dbg !1982
  call void @llvm.dbg.value(metadata i8 %conv205, metadata !1795, metadata !DIExpression()), !dbg !1817
  %call206 = tail call fastcc %struct.cpp_token* @lex_expansion_token(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) #11, !dbg !1983
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call206, metadata !1793, metadata !DIExpression()), !dbg !1817
  br label %for.cond, !dbg !1984, !llvm.loop !1985

for.end:                                          ; preds = %if.then139
  %a_buff207 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 5, !dbg !1988
  %54 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff207, align 8, !dbg !1988
  %cur208 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %54, i64 0, i32 2, !dbg !1988
  %55 = bitcast i8** %cur208 to i64*, !dbg !1988
  %56 = load i64, i64* %55, align 8, !dbg !1988
  %exp = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 1, !dbg !1989
  %57 = bitcast %union.cpp_macro_u* %exp to i64*, !dbg !1990
  store i64 %56, i64* %57, align 8, !dbg !1990
  %bf.load209 = load i8, i8* %fun_like54, align 2, !dbg !1991
  %bf.clear210 = and i8 %bf.load209, -17, !dbg !1991
  store i8 %bf.clear210, i8* %fun_like54, align 2, !dbg !1991
  %dec212 = add i32 %.lcssa, -1, !dbg !1992
  store i32 %dec212, i32* %count, align 4, !dbg !1992
  %tobool214 = icmp eq i32 %dec212, 0, !dbg !1993
  br i1 %tobool214, label %if.end223, label %if.then215, !dbg !1995

if.then215:                                       ; preds = %for.end
  %58 = inttoptr i64 %56 to %struct.cpp_token*, !dbg !1995
  %flags219 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %58, i64 0, i32 2, !dbg !1996
  %59 = load i16, i16* %flags219, align 2, !dbg !1997
  %60 = and i16 %59, -2, !dbg !1997
  store i16 %60, i16* %flags219, align 2, !dbg !1997
  br label %if.end223, !dbg !1998

if.end223:                                        ; preds = %for.end, %if.then215
  %hash_table224 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 50, !dbg !1999
  %61 = load %struct.ht*, %struct.ht** %hash_table224, align 8, !dbg !1999
  %alloc_subobject225 = getelementptr inbounds %struct.ht, %struct.ht* %61, i64 0, i32 3, !dbg !2000
  %62 = load i8* (i64)*, i8* (i64)** %alloc_subobject225, align 8, !dbg !2000
  %tobool226 = icmp eq i8* (i64)* %62, null, !dbg !2001
  br i1 %tobool226, label %if.else276, label %if.then227, !dbg !2002

if.then227:                                       ; preds = %if.end223
  %63 = load i32, i32* %count, align 4, !dbg !2003
  %conv231 = zext i32 %63 to i64, !dbg !2004
  %mul232 = mul nuw nsw i64 %conv231, 24, !dbg !2005
  %call233 = tail call i8* %62(i64 %mul232) #9, !dbg !2006
  %64 = bitcast i8* %call233 to %struct.cpp_token*, !dbg !2007
  call void @llvm.dbg.value(metadata %struct.cpp_token* %64, metadata !1809, metadata !DIExpression()), !dbg !2008
  %tobool234 = icmp eq i32 %num_extra_tokens.0.lcssa14, 0, !dbg !2009
  br i1 %tobool234, label %if.else266, label %if.then235, !dbg !2010

if.then235:                                       ; preds = %if.then227
  call void @llvm.dbg.value(metadata %struct.cpp_token* %64, metadata !1812, metadata !DIExpression()), !dbg !2011
  %65 = load i32, i32* %count, align 4, !dbg !2012
  %idx.ext = zext i32 %65 to i64, !dbg !2013
  %add.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %64, i64 %idx.ext, !dbg !2013
  %idx.ext237 = zext i32 %num_extra_tokens.0.lcssa14 to i64, !dbg !2014
  %idx.neg = sub nsw i64 0, %idx.ext237, !dbg !2014
  %add.ptr238 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %add.ptr, i64 %idx.neg, !dbg !2014
  call void @llvm.dbg.value(metadata %struct.cpp_token* %add.ptr238, metadata !1815, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32 0, metadata !1816, metadata !DIExpression()), !dbg !2011
  %tokens244 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 1, i32 0, !dbg !2015
  br label %for.cond239, !dbg !2020

for.cond239:                                      ; preds = %for.inc, %if.then235
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then235 ], !dbg !2021
  %66 = phi i32 [ %.pre, %for.inc ], [ %65, %if.then235 ], !dbg !2021
  %normal_dest.0 = phi %struct.cpp_token* [ %normal_dest.1, %for.inc ], [ %64, %if.then235 ], !dbg !2022
  %extra_dest.0 = phi %struct.cpp_token* [ %extra_dest.1, %for.inc ], [ %add.ptr238, %if.then235 ], !dbg !2011
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1816, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata %struct.cpp_token* %extra_dest.0, metadata !1815, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata %struct.cpp_token* %normal_dest.0, metadata !1812, metadata !DIExpression()), !dbg !2011
  %67 = zext i32 %66 to i64, !dbg !2023
  %cmp241 = icmp ult i64 %indvars.iv, %67, !dbg !2023
  br i1 %cmp241, label %for.body, label %if.end273.loopexit, !dbg !2024

for.body:                                         ; preds = %for.cond239
  %68 = load %struct.cpp_token*, %struct.cpp_token** %tokens244, align 8, !dbg !2025
  %type247 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %68, i64 %indvars.iv, i32 1, !dbg !2026
  %bf.load248 = load i8, i8* %type247, align 4, !dbg !2026
  %cmp250 = icmp eq i8 %bf.load248, 38, !dbg !2027
  br i1 %cmp250, label %if.then252, label %if.else257, !dbg !2028

if.then252:                                       ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %extra_dest.0, i64 1, !dbg !2029
  call void @llvm.dbg.value(metadata %struct.cpp_token* %incdec.ptr, metadata !1815, metadata !DIExpression()), !dbg !2011
  %arrayidx256 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %68, i64 %indvars.iv, !dbg !2030
  %69 = bitcast %struct.cpp_token* %extra_dest.0 to i8*, !dbg !2030
  %70 = bitcast %struct.cpp_token* %arrayidx256 to i8*, !dbg !2030
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 24, i1 false), !dbg !2030
  br label %for.inc, !dbg !2031

if.else257:                                       ; preds = %for.body
  %incdec.ptr258 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %normal_dest.0, i64 1, !dbg !2032
  call void @llvm.dbg.value(metadata %struct.cpp_token* %incdec.ptr258, metadata !1812, metadata !DIExpression()), !dbg !2011
  %arrayidx262 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %68, i64 %indvars.iv, !dbg !2033
  %71 = bitcast %struct.cpp_token* %normal_dest.0 to i8*, !dbg !2033
  %72 = bitcast %struct.cpp_token* %arrayidx262 to i8*, !dbg !2033
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 24, i1 false), !dbg !2033
  br label %for.inc

for.inc:                                          ; preds = %if.then252, %if.else257
  %normal_dest.1 = phi %struct.cpp_token* [ %normal_dest.0, %if.then252 ], [ %incdec.ptr258, %if.else257 ], !dbg !2011
  %extra_dest.1 = phi %struct.cpp_token* [ %incdec.ptr, %if.then252 ], [ %extra_dest.0, %if.else257 ], !dbg !2011
  call void @llvm.dbg.value(metadata %struct.cpp_token* %extra_dest.1, metadata !1815, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata %struct.cpp_token* %normal_dest.1, metadata !1812, metadata !DIExpression()), !dbg !2011
  %.pre = load i32, i32* %count, align 4, !dbg !2021
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2034
  br label %for.cond239, !dbg !2035, !llvm.loop !2036

if.else266:                                       ; preds = %if.then227
  %tokens268 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 1, i32 0, !dbg !2038
  %73 = bitcast %struct.cpp_token** %tokens268 to i8**, !dbg !2038
  %74 = load i8*, i8** %73, align 8, !dbg !2038
  %75 = load i32, i32* %count, align 4, !dbg !2039
  %conv270 = zext i32 %75 to i64, !dbg !2040
  %mul271 = mul nuw nsw i64 %conv270, 24, !dbg !2041
  %call272 = tail call i8* @memcpy(i8* %call233, i8* %74, i64 %mul271) #9, !dbg !2042
  br label %if.end273

if.end273.loopexit:                               ; preds = %for.cond239
  %.pre6 = bitcast %struct.cpp_token** %tokens244 to i8**, !dbg !2043
  br label %if.end273, !dbg !2044

if.end273:                                        ; preds = %if.end273.loopexit, %if.else266
  %.pre-phi = phi i8** [ %.pre6, %if.end273.loopexit ], [ %73, %if.else266 ], !dbg !2043
  store i8* %call233, i8** %.pre-phi, align 8, !dbg !2043
  br label %cleanup285, !dbg !2045

if.else276:                                       ; preds = %if.end223
  %tokens278 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 1, i32 0, !dbg !2046
  %76 = load %struct.cpp_token*, %struct.cpp_token** %tokens278, align 8, !dbg !2046
  %77 = load i32, i32* %count, align 4, !dbg !2047
  %idxprom280 = zext i32 %77 to i64, !dbg !2048
  %arrayidx281 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %76, i64 %idxprom280, !dbg !2048
  %78 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff207, align 8, !dbg !2049
  %cur283 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %78, i64 0, i32 2, !dbg !2049
  %79 = bitcast i8** %cur283 to %struct.cpp_token**, !dbg !2050
  store %struct.cpp_token* %arrayidx281, %struct.cpp_token** %79, align 8, !dbg !2050
  br label %cleanup285

cleanup285:                                       ; preds = %if.end273, %if.else276, %cleanup, %if.then154, %if.then141, %if.then129
  %retval.1 = phi i8 [ 0, %if.then141 ], [ 0, %if.then154 ], [ 0, %if.then129 ], [ 0, %cleanup ], [ 1, %if.else276 ], [ 1, %if.end273 ]
  ret i8 %retval.1, !dbg !2051
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @warn_of_redefinition(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, %struct.cpp_macro* %macro2) unnamed_addr #2 !dbg !2052 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2058, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !2059, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro2, metadata !2060, metadata !DIExpression()), !dbg !2063
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 3, !dbg !2064
  %bf.load = load i16, i16* %flags, align 2, !dbg !2064
  %0 = and i16 %bf.load, 1024, !dbg !2066
  %tobool = icmp eq i16 %0, 0, !dbg !2066
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2067

if.end:                                           ; preds = %entry
  %1 = and i16 %bf.load, 256, !dbg !2068
  %tobool6 = icmp eq i16 %1, 0, !dbg !2068
  br i1 %tobool6, label %if.end8, label %cleanup, !dbg !2070

if.end8:                                          ; preds = %if.end
  %2 = and i16 %bf.load, 16384, !dbg !2071
  %tobool14 = icmp eq i16 %2, 0, !dbg !2071
  br i1 %tobool14, label %if.end16, label %cleanup, !dbg !2073

if.end16:                                         ; preds = %if.end8
  %macro = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 4, i32 0, !dbg !2074
  %3 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8, !dbg !2074
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %3, metadata !2061, metadata !DIExpression()), !dbg !2063
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %3, i64 0, i32 4, !dbg !2075
  %4 = load i16, i16* %paramc, align 8, !dbg !2075
  %paramc17 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro2, i64 0, i32 4, !dbg !2077
  %5 = load i16, i16* %paramc17, align 8, !dbg !2077
  %cmp = icmp eq i16 %4, %5, !dbg !2078
  br i1 %cmp, label %lor.lhs.false, label %cleanup, !dbg !2079

lor.lhs.false:                                    ; preds = %if.end16
  %fun_like = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %3, i64 0, i32 5, !dbg !2080
  %bf.load20 = load i8, i8* %fun_like, align 2, !dbg !2080
  %fun_like22 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro2, i64 0, i32 5, !dbg !2081
  %bf.load23 = load i8, i8* %fun_like22, align 2, !dbg !2081
  %6 = xor i8 %bf.load20, %bf.load23, !dbg !2082
  %7 = and i8 %6, 1, !dbg !2082
  %cmp26 = icmp eq i8 %7, 0, !dbg !2082
  br i1 %cmp26, label %lor.lhs.false28, label %cleanup, !dbg !2083

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %8 = and i8 %6, 2, !dbg !2084
  %cmp38 = icmp eq i8 %8, 0, !dbg !2084
  br i1 %cmp38, label %for.cond.preheader, label %cleanup, !dbg !2085

for.cond.preheader:                               ; preds = %lor.lhs.false28
  %conv43 = zext i16 %4 to i32, !dbg !2086
  %params = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %3, i64 0, i32 0, !dbg !2089
  %params46 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro2, i64 0, i32 0, !dbg !2089
  %9 = zext i32 %conv43 to i64, !dbg !2091
  br label %for.cond, !dbg !2091

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv3 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next4, %for.inc ], !dbg !2092
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !2062, metadata !DIExpression()), !dbg !2063
  %exitcond = icmp eq i64 %indvars.iv3, %9, !dbg !2093
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2091

for.body:                                         ; preds = %for.cond
  %10 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params, align 8, !dbg !2094
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %10, i64 %indvars.iv3, !dbg !2095
  %11 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx, align 8, !dbg !2095
  %12 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params46, align 8, !dbg !2096
  %arrayidx48 = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %12, i64 %indvars.iv3, !dbg !2097
  %13 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx48, align 8, !dbg !2097
  %cmp49 = icmp eq %struct.cpp_hashnode* %11, %13, !dbg !2098
  br i1 %cmp49, label %for.inc, label %cleanup.loopexit2, !dbg !2099

for.inc:                                          ; preds = %for.body
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !2100
  call void @llvm.dbg.value(metadata i32 undef, metadata !2062, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2063
  br label %for.cond, !dbg !2101, !llvm.loop !2102

for.end:                                          ; preds = %for.cond
  %traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !2104
  %14 = load i8, i8* %traditional, align 2, !dbg !2104
  %tobool53 = icmp eq i8 %14, 0, !dbg !2104
  br i1 %tobool53, label %if.end55, label %if.then54, !dbg !2106

if.then54:                                        ; preds = %for.end
  %call = tail call zeroext i8 @_cpp_expansions_different_trad(%struct.cpp_macro* %3, %struct.cpp_macro* %macro2) #9, !dbg !2107
  br label %cleanup, !dbg !2108

if.end55:                                         ; preds = %for.end
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %3, i64 0, i32 3, !dbg !2109
  %15 = load i32, i32* %count, align 4, !dbg !2109
  %count56 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro2, i64 0, i32 3, !dbg !2111
  %16 = load i32, i32* %count56, align 4, !dbg !2111
  %cmp57 = icmp eq i32 %15, %16, !dbg !2112
  br i1 %cmp57, label %for.cond61.preheader, label %cleanup, !dbg !2113

for.cond61.preheader:                             ; preds = %if.end55
  %tokens = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %3, i64 0, i32 1, i32 0, !dbg !2114
  %tokens69 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro2, i64 0, i32 1, i32 0, !dbg !2118
  br label %for.cond61, !dbg !2119

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc76
  %indvars.iv = phi i64 [ 0, %for.cond61.preheader ], [ %indvars.iv.next, %for.inc76 ], !dbg !2120
  %17 = phi i32 [ %15, %for.cond61.preheader ], [ %.pre, %for.inc76 ], !dbg !2120
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2062, metadata !DIExpression()), !dbg !2063
  %18 = zext i32 %17 to i64, !dbg !2121
  %cmp63 = icmp ult i64 %indvars.iv, %18, !dbg !2121
  br i1 %cmp63, label %for.body65, label %cleanup.loopexit, !dbg !2119

for.body65:                                       ; preds = %for.cond61
  %19 = load %struct.cpp_token*, %struct.cpp_token** %tokens, align 8, !dbg !2114
  %arrayidx67 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %19, i64 %indvars.iv, !dbg !2122
  %20 = load %struct.cpp_token*, %struct.cpp_token** %tokens69, align 8, !dbg !2123
  %arrayidx71 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %20, i64 %indvars.iv, !dbg !2124
  %call72 = tail call i32 @_cpp_equiv_tokens(%struct.cpp_token* %arrayidx67, %struct.cpp_token* %arrayidx71) #9, !dbg !2125
  %tobool73 = icmp eq i32 %call72, 0, !dbg !2125
  br i1 %tobool73, label %cleanup.loopexit, label %for.inc76, !dbg !2126

for.inc76:                                        ; preds = %for.body65
  %.pre = load i32, i32* %count, align 4, !dbg !2120
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2127
  br label %for.cond61, !dbg !2128, !llvm.loop !2129

cleanup.loopexit:                                 ; preds = %for.cond61, %for.body65
  %retval.0.ph = phi i8 [ 0, %for.cond61 ], [ 1, %for.body65 ]
  br label %cleanup, !dbg !2131

cleanup.loopexit2:                                ; preds = %for.body
  br label %cleanup, !dbg !2131

cleanup:                                          ; preds = %cleanup.loopexit2, %cleanup.loopexit, %if.end55, %lor.lhs.false28, %lor.lhs.false, %if.end16, %if.end8, %if.end, %entry, %if.then54
  %retval.0 = phi i8 [ %call, %if.then54 ], [ 1, %entry ], [ 0, %if.end ], [ 0, %if.end8 ], [ 1, %lor.lhs.false28 ], [ 1, %lor.lhs.false ], [ 1, %if.end16 ], [ 1, %if.end55 ], [ %retval.0.ph, %cleanup.loopexit ], [ 1, %cleanup.loopexit2 ], !dbg !2063
  ret i8 %retval.0, !dbg !2131
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ustrncmp(i8* %s1, i8* %s2, i64 %n) unnamed_addr #0 !dbg !2132 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !2136, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 7, metadata !2138, metadata !DIExpression()), !dbg !2139
  %call = tail call i32 @strncmp(i8* %s1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7) #10, !dbg !2140
  ret i32 %call, !dbg !2141
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ustrcmp(i8* %s1, i8* %s2) unnamed_addr #0 !dbg !2142 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !2146, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8* %s2, metadata !2147, metadata !DIExpression()), !dbg !2148
  %call = tail call i32 @strcmp(i8* %s1, i8* %s2) #10, !dbg !2149
  ret i32 %call, !dbg !2150
}

; Function Attrs: nounwind uwtable
define dso_local i8* @cpp_macro_definition(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) local_unnamed_addr #2 !dbg !2151 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2155, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !2156, metadata !DIExpression()), !dbg !2182
  %macro1 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 4, i32 0, !dbg !2183
  %0 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8, !dbg !2183
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %0, metadata !2159, metadata !DIExpression()), !dbg !2182
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 3, !dbg !2184
  %bf.load = load i16, i16* %type, align 2, !dbg !2184
  %bf.clear = and i16 %bf.load, 63, !dbg !2184
  %cmp = icmp eq i16 %bf.clear, 1, !dbg !2186
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !2187

lor.lhs.false:                                    ; preds = %entry
  %1 = and i16 %bf.load, 256, !dbg !2188
  %tobool = icmp eq i16 %1, 0, !dbg !2188
  br i1 %tobool, label %if.end, label %if.then, !dbg !2189

if.then:                                          ; preds = %lor.lhs.false, %entry
  %bf.cast7 = zext i16 %bf.clear to i32, !dbg !2190
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i32 %bf.cast7) #9, !dbg !2192
  br label %cleanup, !dbg !2193

if.end:                                           ; preds = %lor.lhs.false
  %len8 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 1, !dbg !2194
  %2 = load i32, i32* %len8, align 8, !dbg !2194
  %add = add i32 %2, 2, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %add, metadata !2158, metadata !DIExpression()), !dbg !2182
  %fun_like = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %0, i64 0, i32 5, !dbg !2196
  %bf.load9 = load i8, i8* %fun_like, align 2, !dbg !2196
  %bf.clear10 = and i8 %bf.load9, 1, !dbg !2196
  %tobool12 = icmp eq i8 %bf.clear10, 0, !dbg !2198
  br i1 %tobool12, label %if.end21, label %if.then13, !dbg !2199

if.then13:                                        ; preds = %if.end
  %add14 = add i32 %2, 6, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %add14, metadata !2158, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 0, metadata !2157, metadata !DIExpression()), !dbg !2182
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %0, i64 0, i32 4, !dbg !2202
  %3 = load i16, i16* %paramc, align 8, !dbg !2202
  %params = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %0, i64 0, i32 0, !dbg !2202
  %wide.trip.count13 = zext i16 %3 to i64, !dbg !2205
  br label %for.cond, !dbg !2206

for.cond:                                         ; preds = %for.body, %if.then13
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.body ], [ 0, %if.then13 ], !dbg !2207
  %len.0 = phi i32 [ %add20, %for.body ], [ %add14, %if.then13 ], !dbg !2207
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !2157, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !2158, metadata !DIExpression()), !dbg !2182
  %exitcond14 = icmp eq i64 %indvars.iv11, %wide.trip.count13, !dbg !2205
  br i1 %exitcond14, label %if.end21.loopexit, label %for.body, !dbg !2208

for.body:                                         ; preds = %for.cond
  %4 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params, align 8, !dbg !2209
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %4, i64 %indvars.iv11, !dbg !2209
  %5 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx, align 8, !dbg !2209
  %len18 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %5, i64 0, i32 0, i32 1, !dbg !2209
  %6 = load i32, i32* %len18, align 8, !dbg !2209
  %add19 = add i32 %6, 1, !dbg !2210
  %add20 = add i32 %len.0, %add19, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %add20, metadata !2158, metadata !DIExpression()), !dbg !2182
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i32 undef, metadata !2157, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2182
  br label %for.cond, !dbg !2213, !llvm.loop !2214

if.end21.loopexit:                                ; preds = %for.cond
  %len.0.lcssa = phi i32 [ %len.0, %for.cond ], !dbg !2207
  call void @llvm.dbg.value(metadata i32 %len.0.lcssa, metadata !2158, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 %len.0.lcssa, metadata !2158, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 %len.0.lcssa, metadata !2158, metadata !DIExpression()), !dbg !2182
  br label %if.end21, !dbg !2216

if.end21:                                         ; preds = %if.end21.loopexit, %if.end
  %len.1 = phi i32 [ %add, %if.end ], [ %len.0.lcssa, %if.end21.loopexit ], !dbg !2182
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !2158, metadata !DIExpression()), !dbg !2182
  %traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !2216
  %7 = load i8, i8* %traditional, align 2, !dbg !2216
  %tobool22 = icmp eq i8 %7, 0, !dbg !2216
  br i1 %tobool22, label %if.else, label %if.then23, !dbg !2217

if.then23:                                        ; preds = %if.end21
  %call24 = tail call i64 @_cpp_replacement_text_len(%struct.cpp_macro* %0) #9, !dbg !2218
  %8 = trunc i64 %call24 to i32, !dbg !2219
  %conv27 = add i32 %len.1, %8, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %conv27, metadata !2158, metadata !DIExpression()), !dbg !2182
  br label %if.end75, !dbg !2220

if.else:                                          ; preds = %if.end21
  %call28 = tail call fastcc i32 @macro_real_token_count(%struct.cpp_macro* %0) #11, !dbg !2221
  call void @llvm.dbg.value(metadata i32 %call28, metadata !2161, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 0, metadata !2157, metadata !DIExpression()), !dbg !2182
  %tokens = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %0, i64 0, i32 1, i32 0, !dbg !2223
  %params41 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %0, i64 0, i32 0, !dbg !2224
  %wide.trip.count9 = zext i32 %call28 to i64, !dbg !2226
  br label %for.cond29, !dbg !2227

for.cond29:                                       ; preds = %if.end50, %if.else
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %if.end50 ], [ 0, %if.else ], !dbg !2182
  %len.2 = phi i32 [ %spec.select1, %if.end50 ], [ %len.1, %if.else ], !dbg !2182
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !2157, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 %len.2, metadata !2158, metadata !DIExpression()), !dbg !2182
  %exitcond10 = icmp eq i64 %indvars.iv7, %wide.trip.count9, !dbg !2226
  br i1 %exitcond10, label %if.end75.loopexit, label %for.body32, !dbg !2228

for.body32:                                       ; preds = %for.cond29
  %9 = load %struct.cpp_token*, %struct.cpp_token** %tokens, align 8, !dbg !2229
  call void @llvm.dbg.value(metadata %struct.cpp_token* undef, metadata !2164, metadata !DIExpression()), !dbg !2223
  %type35 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i64 %indvars.iv7, i32 1, !dbg !2230
  %bf.load36 = load i8, i8* %type35, align 4, !dbg !2230
  %cmp38 = icmp eq i8 %bf.load36, 69, !dbg !2231
  br i1 %cmp38, label %if.then40, label %if.else47, !dbg !2232

if.then40:                                        ; preds = %for.body32
  %10 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params41, align 8, !dbg !2233
  %arg_no = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i64 %indvars.iv7, i32 3, i32 0, i32 0, !dbg !2233
  %11 = load i32, i32* %arg_no, align 8, !dbg !2233
  %sub = add i32 %11, -1, !dbg !2233
  %idxprom42 = zext i32 %sub to i64, !dbg !2233
  %arrayidx43 = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %10, i64 %idxprom42, !dbg !2233
  %12 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx43, align 8, !dbg !2233
  %len45 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %12, i64 0, i32 0, i32 1, !dbg !2233
  %13 = load i32, i32* %len45, align 8, !dbg !2233
  br label %if.end50, !dbg !2234

if.else47:                                        ; preds = %for.body32
  %arrayidx34 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i64 %indvars.iv7, !dbg !2235
  call void @llvm.dbg.value(metadata %struct.cpp_token* %arrayidx34, metadata !2164, metadata !DIExpression()), !dbg !2223
  %call48 = tail call i32 @cpp_token_len(%struct.cpp_token* %arrayidx34) #9, !dbg !2236
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then40
  %.pn = phi i32 [ %13, %if.then40 ], [ %call48, %if.else47 ]
  %len.3 = add i32 %len.2, %.pn, !dbg !2224
  call void @llvm.dbg.value(metadata i32 %len.3, metadata !2158, metadata !DIExpression()), !dbg !2182
  %flags51 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i64 %indvars.iv7, i32 2, !dbg !2237
  %14 = load i16, i16* %flags51, align 2, !dbg !2237
  %15 = lshr i16 %14, 2, !dbg !2239
  %.lobit = and i16 %15, 1, !dbg !2239
  %16 = zext i16 %.lobit to i32, !dbg !2239
  %spec.select = add i32 %len.3, %16, !dbg !2239
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2158, metadata !DIExpression()), !dbg !2182
  %17 = and i16 %14, 8, !dbg !2240
  %tobool61 = icmp eq i16 %17, 0, !dbg !2240
  %add63 = add i32 %spec.select, 3, !dbg !2242
  %len.5 = select i1 %tobool61, i32 %spec.select, i32 %add63, !dbg !2242
  call void @llvm.dbg.value(metadata i32 %len.5, metadata !2158, metadata !DIExpression()), !dbg !2182
  %18 = and i16 %14, 1, !dbg !2243
  %19 = zext i16 %18 to i32, !dbg !2245
  %spec.select1 = add i32 %len.5, %19, !dbg !2245
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !2158, metadata !DIExpression()), !dbg !2182
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !2246
  br label %for.cond29, !dbg !2247, !llvm.loop !2248

if.end75.loopexit:                                ; preds = %for.cond29
  %len.2.lcssa = phi i32 [ %len.2, %for.cond29 ], !dbg !2182
  call void @llvm.dbg.value(metadata i32 %len.2.lcssa, metadata !2158, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 %len.2.lcssa, metadata !2158, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 %len.2.lcssa, metadata !2158, metadata !DIExpression()), !dbg !2182
  br label %if.end75, !dbg !2250

if.end75:                                         ; preds = %if.end75.loopexit, %if.then23
  %len.7 = phi i32 [ %conv27, %if.then23 ], [ %len.2.lcssa, %if.end75.loopexit ], !dbg !2182
  call void @llvm.dbg.value(metadata i32 %len.7, metadata !2158, metadata !DIExpression()), !dbg !2182
  %macro_buffer_len = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 35, !dbg !2250
  %20 = load i32, i32* %macro_buffer_len, align 8, !dbg !2250
  %cmp76 = icmp ugt i32 %len.7, %20, !dbg !2252
  br i1 %cmp76, label %if.then78, label %if.end75.if.end83_crit_edge, !dbg !2253

if.end75.if.end83_crit_edge:                      ; preds = %if.end75
  %macro_buffer84.phi.trans.insert = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 34, !dbg !2182
  %.pre = load i8*, i8** %macro_buffer84.phi.trans.insert, align 8, !dbg !2254
  br label %if.end83, !dbg !2253

if.then78:                                        ; preds = %if.end75
  %macro_buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 34, !dbg !2255
  %21 = load i8*, i8** %macro_buffer, align 8, !dbg !2255
  %conv79 = zext i32 %len.7 to i64, !dbg !2255
  %call80 = tail call i8* @xrealloc(i8* %21, i64 %conv79) #9, !dbg !2255
  store i8* %call80, i8** %macro_buffer, align 8, !dbg !2257
  store i32 %len.7, i32* %macro_buffer_len, align 8, !dbg !2258
  br label %if.end83, !dbg !2259

if.end83:                                         ; preds = %if.end75.if.end83_crit_edge, %if.then78
  %22 = phi i8* [ %.pre, %if.end75.if.end83_crit_edge ], [ %call80, %if.then78 ], !dbg !2254
  %macro_buffer84 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 34, !dbg !2254
  call void @llvm.dbg.value(metadata i8* %22, metadata !2160, metadata !DIExpression()), !dbg !2182
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !2260
  %23 = load i8*, i8** %str, align 8, !dbg !2260
  %24 = load i32, i32* %len8, align 8, !dbg !2261
  %conv88 = zext i32 %24 to i64, !dbg !2261
  %call89 = tail call i8* @memcpy(i8* %22, i8* %23, i64 %conv88) #9, !dbg !2262
  %25 = load i32, i32* %len8, align 8, !dbg !2263
  %idx.ext = zext i32 %25 to i64, !dbg !2264
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %idx.ext, !dbg !2264
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2160, metadata !DIExpression()), !dbg !2182
  %bf.load93 = load i8, i8* %fun_like, align 2, !dbg !2265
  %bf.clear94 = and i8 %bf.load93, 1, !dbg !2265
  %tobool96 = icmp eq i8 %bf.clear94, 0, !dbg !2266
  br i1 %tobool96, label %if.end144, label %if.then97, !dbg !2267

if.then97:                                        ; preds = %if.end83
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !2268
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2160, metadata !DIExpression()), !dbg !2182
  store i8 40, i8* %add.ptr, align 1, !dbg !2269
  call void @llvm.dbg.value(metadata i32 0, metadata !2157, metadata !DIExpression()), !dbg !2182
  %paramc99 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %0, i64 0, i32 4, !dbg !2270
  %params104 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %0, i64 0, i32 0, !dbg !2271
  %n__VA_ARGS__ = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 54, i32 3, !dbg !2272
  br label %for.cond98, !dbg !2274

for.cond98:                                       ; preds = %for.inc140, %if.then97
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc140 ], [ 0, %if.then97 ], !dbg !2275
  %buffer.0 = phi i8* [ %buffer.3, %for.inc140 ], [ %incdec.ptr, %if.then97 ], !dbg !2276
  call void @llvm.dbg.value(metadata i8* %buffer.0, metadata !2160, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !2157, metadata !DIExpression()), !dbg !2182
  %26 = load i16, i16* %paramc99, align 8, !dbg !2277
  %27 = zext i16 %26 to i64, !dbg !2278
  %cmp101 = icmp ult i64 %indvars.iv5, %27, !dbg !2278
  br i1 %cmp101, label %for.body103, label %for.end142, !dbg !2279

for.body103:                                      ; preds = %for.cond98
  %28 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params104, align 8, !dbg !2280
  %arrayidx106 = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %28, i64 %indvars.iv5, !dbg !2281
  %29 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx106, align 8, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %29, metadata !2168, metadata !DIExpression()), !dbg !2271
  %30 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n__VA_ARGS__, align 8, !dbg !2282
  %cmp107 = icmp eq %struct.cpp_hashnode* %29, %30, !dbg !2283
  br i1 %cmp107, label %if.end120, label %if.then109, !dbg !2284

if.then109:                                       ; preds = %for.body103
  %str111 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %29, i64 0, i32 0, i32 0, !dbg !2285
  %31 = load i8*, i8** %str111, align 8, !dbg !2285
  %len113 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %29, i64 0, i32 0, i32 1, !dbg !2287
  %32 = load i32, i32* %len113, align 8, !dbg !2287
  %conv114 = zext i32 %32 to i64, !dbg !2287
  %call115 = tail call i8* @memcpy(i8* %buffer.0, i8* %31, i64 %conv114) #9, !dbg !2288
  %33 = load i32, i32* %len113, align 8, !dbg !2289
  %idx.ext118 = zext i32 %33 to i64, !dbg !2290
  %add.ptr119 = getelementptr inbounds i8, i8* %buffer.0, i64 %idx.ext118, !dbg !2290
  call void @llvm.dbg.value(metadata i8* %add.ptr119, metadata !2160, metadata !DIExpression()), !dbg !2182
  %.pre2 = load i16, i16* %paramc99, align 8, !dbg !2291
  br label %if.end120, !dbg !2293

if.end120:                                        ; preds = %for.body103, %if.then109
  %conv123.pre-phi.in = phi i16 [ %26, %for.body103 ], [ %.pre2, %if.then109 ]
  %buffer.1 = phi i8* [ %buffer.0, %for.body103 ], [ %add.ptr119, %if.then109 ], !dbg !2276
  call void @llvm.dbg.value(metadata i8* %buffer.1, metadata !2160, metadata !DIExpression()), !dbg !2182
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !2294
  %34 = zext i16 %conv123.pre-phi.in to i64, !dbg !2295
  %cmp124 = icmp ult i64 %indvars.iv.next6, %34, !dbg !2295
  br i1 %cmp124, label %if.then126, label %if.else128, !dbg !2296

if.then126:                                       ; preds = %if.end120
  %incdec.ptr127 = getelementptr inbounds i8, i8* %buffer.1, i64 1, !dbg !2297
  call void @llvm.dbg.value(metadata i8* %incdec.ptr127, metadata !2160, metadata !DIExpression()), !dbg !2182
  store i8 44, i8* %buffer.1, align 1, !dbg !2298
  br label %for.inc140, !dbg !2299

if.else128:                                       ; preds = %if.end120
  %bf.load129 = load i8, i8* %fun_like, align 2, !dbg !2300
  %bf.clear131 = and i8 %bf.load129, 2, !dbg !2300
  %tobool133 = icmp eq i8 %bf.clear131, 0, !dbg !2302
  br i1 %tobool133, label %for.inc140, label %if.then134, !dbg !2303

if.then134:                                       ; preds = %if.else128
  %incdec.ptr135 = getelementptr inbounds i8, i8* %buffer.1, i64 1, !dbg !2304
  call void @llvm.dbg.value(metadata i8* %incdec.ptr135, metadata !2160, metadata !DIExpression()), !dbg !2182
  store i8 46, i8* %buffer.1, align 1, !dbg !2305
  %incdec.ptr136 = getelementptr inbounds i8, i8* %buffer.1, i64 2, !dbg !2306
  call void @llvm.dbg.value(metadata i8* %incdec.ptr136, metadata !2160, metadata !DIExpression()), !dbg !2182
  store i8 46, i8* %incdec.ptr135, align 1, !dbg !2307
  %incdec.ptr137 = getelementptr inbounds i8, i8* %buffer.1, i64 3, !dbg !2308
  call void @llvm.dbg.value(metadata i8* %incdec.ptr137, metadata !2160, metadata !DIExpression()), !dbg !2182
  store i8 46, i8* %incdec.ptr136, align 1, !dbg !2309
  br label %for.inc140, !dbg !2310

for.inc140:                                       ; preds = %if.else128, %if.then126, %if.then134
  %buffer.3 = phi i8* [ %incdec.ptr127, %if.then126 ], [ %incdec.ptr137, %if.then134 ], [ %buffer.1, %if.else128 ], !dbg !2311
  call void @llvm.dbg.value(metadata i8* %buffer.3, metadata !2160, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 undef, metadata !2157, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2182
  br label %for.cond98, !dbg !2312, !llvm.loop !2313

for.end142:                                       ; preds = %for.cond98
  %buffer.0.lcssa = phi i8* [ %buffer.0, %for.cond98 ], !dbg !2276
  call void @llvm.dbg.value(metadata i8* %buffer.0.lcssa, metadata !2160, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8* %buffer.0.lcssa, metadata !2160, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8* %buffer.0.lcssa, metadata !2160, metadata !DIExpression()), !dbg !2182
  %incdec.ptr143 = getelementptr inbounds i8, i8* %buffer.0.lcssa, i64 1, !dbg !2315
  call void @llvm.dbg.value(metadata i8* %incdec.ptr143, metadata !2160, metadata !DIExpression()), !dbg !2182
  store i8 41, i8* %buffer.0.lcssa, align 1, !dbg !2316
  br label %if.end144, !dbg !2317

if.end144:                                        ; preds = %if.end83, %for.end142
  %buffer.4 = phi i8* [ %incdec.ptr143, %for.end142 ], [ %add.ptr, %if.end83 ], !dbg !2182
  call void @llvm.dbg.value(metadata i8* %buffer.4, metadata !2160, metadata !DIExpression()), !dbg !2182
  %incdec.ptr145 = getelementptr inbounds i8, i8* %buffer.4, i64 1, !dbg !2318
  call void @llvm.dbg.value(metadata i8* %incdec.ptr145, metadata !2160, metadata !DIExpression()), !dbg !2182
  store i8 32, i8* %buffer.4, align 1, !dbg !2319
  %35 = load i8, i8* %traditional, align 2, !dbg !2320
  %tobool148 = icmp eq i8 %35, 0, !dbg !2320
  br i1 %tobool148, label %if.else151, label %if.then149, !dbg !2321

if.then149:                                       ; preds = %if.end144
  %call150 = tail call i8* @_cpp_copy_replacement_text(%struct.cpp_macro* %0, i8* nonnull %incdec.ptr145) #9, !dbg !2322
  call void @llvm.dbg.value(metadata i8* %call150, metadata !2160, metadata !DIExpression()), !dbg !2182
  br label %if.end233, !dbg !2323

if.else151:                                       ; preds = %if.end144
  %count152 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %0, i64 0, i32 3, !dbg !2324
  %36 = load i32, i32* %count152, align 4, !dbg !2324
  %tobool153 = icmp eq i32 %36, 0, !dbg !2325
  br i1 %tobool153, label %if.end233, label %if.then154, !dbg !2326

if.then154:                                       ; preds = %if.else151
  %call156 = tail call fastcc i32 @macro_real_token_count(%struct.cpp_macro* %0) #11, !dbg !2327
  call void @llvm.dbg.value(metadata i32 %call156, metadata !2174, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i32 0, metadata !2157, metadata !DIExpression()), !dbg !2182
  %tokens163 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %0, i64 0, i32 1, i32 0, !dbg !2329
  %params186 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %0, i64 0, i32 0, !dbg !2330
  %wide.trip.count = zext i32 %call156 to i64, !dbg !2333
  br label %for.cond157, !dbg !2334

for.cond157:                                      ; preds = %for.inc229, %if.then154
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc229 ], [ 0, %if.then154 ], !dbg !2335
  %buffer.5 = phi i8* [ %buffer.9, %for.inc229 ], [ %incdec.ptr145, %if.then154 ], !dbg !2182
  call void @llvm.dbg.value(metadata i8* %buffer.5, metadata !2160, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2157, metadata !DIExpression()), !dbg !2182
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2333
  br i1 %exitcond, label %if.end233.loopexit, label %for.body160, !dbg !2336

for.body160:                                      ; preds = %for.cond157
  %37 = load %struct.cpp_token*, %struct.cpp_token** %tokens163, align 8, !dbg !2337
  %arrayidx165 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %37, i64 %indvars.iv, !dbg !2338
  call void @llvm.dbg.value(metadata %struct.cpp_token* %arrayidx165, metadata !2178, metadata !DIExpression()), !dbg !2329
  %flags166 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %37, i64 %indvars.iv, i32 2, !dbg !2339
  %38 = load i16, i16* %flags166, align 2, !dbg !2339
  %39 = and i16 %38, 1, !dbg !2341
  %tobool169 = icmp eq i16 %39, 0, !dbg !2341
  br i1 %tobool169, label %if.end172, label %if.then170, !dbg !2342

if.then170:                                       ; preds = %for.body160
  %incdec.ptr171 = getelementptr inbounds i8, i8* %buffer.5, i64 1, !dbg !2343
  call void @llvm.dbg.value(metadata i8* %incdec.ptr171, metadata !2160, metadata !DIExpression()), !dbg !2182
  store i8 32, i8* %buffer.5, align 1, !dbg !2344
  %.pre3 = load i16, i16* %flags166, align 2, !dbg !2345
  br label %if.end172, !dbg !2347

if.end172:                                        ; preds = %for.body160, %if.then170
  %40 = phi i16 [ %.pre3, %if.then170 ], [ %38, %for.body160 ], !dbg !2345
  %buffer.6 = phi i8* [ %incdec.ptr171, %if.then170 ], [ %buffer.5, %for.body160 ], !dbg !2182
  call void @llvm.dbg.value(metadata i8* %buffer.6, metadata !2160, metadata !DIExpression()), !dbg !2182
  %41 = and i16 %40, 4, !dbg !2348
  %tobool176 = icmp eq i16 %41, 0, !dbg !2348
  br i1 %tobool176, label %if.end179, label %if.then177, !dbg !2349

if.then177:                                       ; preds = %if.end172
  %incdec.ptr178 = getelementptr inbounds i8, i8* %buffer.6, i64 1, !dbg !2350
  call void @llvm.dbg.value(metadata i8* %incdec.ptr178, metadata !2160, metadata !DIExpression()), !dbg !2182
  store i8 35, i8* %buffer.6, align 1, !dbg !2351
  br label %if.end179, !dbg !2352

if.end179:                                        ; preds = %if.end172, %if.then177
  %buffer.7 = phi i8* [ %incdec.ptr178, %if.then177 ], [ %buffer.6, %if.end172 ], !dbg !2329
  call void @llvm.dbg.value(metadata i8* %buffer.7, metadata !2160, metadata !DIExpression()), !dbg !2182
  %type180 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %37, i64 %indvars.iv, i32 1, !dbg !2353
  %bf.load181 = load i8, i8* %type180, align 4, !dbg !2353
  %cmp183 = icmp eq i8 %bf.load181, 69, !dbg !2354
  br i1 %cmp183, label %if.then185, label %if.else217, !dbg !2355

if.then185:                                       ; preds = %if.end179
  %42 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params186, align 8, !dbg !2356
  %arg_no189 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %37, i64 %indvars.iv, i32 3, i32 0, i32 0, !dbg !2356
  %43 = load i32, i32* %arg_no189, align 8, !dbg !2356
  %sub190 = add i32 %43, -1, !dbg !2356
  %idxprom191 = zext i32 %sub190 to i64, !dbg !2356
  %arrayidx192 = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %42, i64 %idxprom191, !dbg !2356
  %44 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx192, align 8, !dbg !2356
  %str194 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %44, i64 0, i32 0, i32 0, !dbg !2356
  %45 = load i8*, i8** %str194, align 8, !dbg !2356
  %len203 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %44, i64 0, i32 0, i32 1, !dbg !2357
  %46 = load i32, i32* %len203, align 8, !dbg !2357
  %conv204 = zext i32 %46 to i64, !dbg !2357
  %call205 = tail call i8* @memcpy(i8* %buffer.7, i8* %45, i64 %conv204) #9, !dbg !2358
  %47 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params186, align 8, !dbg !2359
  %48 = load i32, i32* %arg_no189, align 8, !dbg !2359
  %sub210 = add i32 %48, -1, !dbg !2359
  %idxprom211 = zext i32 %sub210 to i64, !dbg !2359
  %arrayidx212 = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %47, i64 %idxprom211, !dbg !2359
  %49 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx212, align 8, !dbg !2359
  %len214 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %49, i64 0, i32 0, i32 1, !dbg !2359
  %50 = load i32, i32* %len214, align 8, !dbg !2359
  %idx.ext215 = zext i32 %50 to i64, !dbg !2360
  %add.ptr216 = getelementptr inbounds i8, i8* %buffer.7, i64 %idx.ext215, !dbg !2360
  call void @llvm.dbg.value(metadata i8* %add.ptr216, metadata !2160, metadata !DIExpression()), !dbg !2182
  br label %if.end219, !dbg !2361

if.else217:                                       ; preds = %if.end179
  %call218 = tail call i8* @cpp_spell_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %arrayidx165, i8* %buffer.7, i8 zeroext 0) #9, !dbg !2362
  call void @llvm.dbg.value(metadata i8* %call218, metadata !2160, metadata !DIExpression()), !dbg !2182
  br label %if.end219

if.end219:                                        ; preds = %if.else217, %if.then185
  %buffer.8 = phi i8* [ %add.ptr216, %if.then185 ], [ %call218, %if.else217 ], !dbg !2363
  call void @llvm.dbg.value(metadata i8* %buffer.8, metadata !2160, metadata !DIExpression()), !dbg !2182
  %51 = load i16, i16* %flags166, align 2, !dbg !2364
  %52 = and i16 %51, 8, !dbg !2366
  %tobool223 = icmp eq i16 %52, 0, !dbg !2366
  br i1 %tobool223, label %for.inc229, label %if.then224, !dbg !2367

if.then224:                                       ; preds = %if.end219
  %incdec.ptr225 = getelementptr inbounds i8, i8* %buffer.8, i64 1, !dbg !2368
  call void @llvm.dbg.value(metadata i8* %incdec.ptr225, metadata !2160, metadata !DIExpression()), !dbg !2182
  store i8 32, i8* %buffer.8, align 1, !dbg !2370
  %incdec.ptr226 = getelementptr inbounds i8, i8* %buffer.8, i64 2, !dbg !2371
  call void @llvm.dbg.value(metadata i8* %incdec.ptr226, metadata !2160, metadata !DIExpression()), !dbg !2182
  store i8 35, i8* %incdec.ptr225, align 1, !dbg !2372
  %incdec.ptr227 = getelementptr inbounds i8, i8* %buffer.8, i64 3, !dbg !2373
  call void @llvm.dbg.value(metadata i8* %incdec.ptr227, metadata !2160, metadata !DIExpression()), !dbg !2182
  store i8 35, i8* %incdec.ptr226, align 1, !dbg !2374
  br label %for.inc229, !dbg !2375

for.inc229:                                       ; preds = %if.end219, %if.then224
  %buffer.9 = phi i8* [ %incdec.ptr227, %if.then224 ], [ %buffer.8, %if.end219 ], !dbg !2329
  call void @llvm.dbg.value(metadata i8* %buffer.9, metadata !2160, metadata !DIExpression()), !dbg !2182
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2376
  br label %for.cond157, !dbg !2377, !llvm.loop !2378

if.end233.loopexit:                               ; preds = %for.cond157
  %buffer.5.lcssa = phi i8* [ %buffer.5, %for.cond157 ], !dbg !2182
  call void @llvm.dbg.value(metadata i8* %buffer.5.lcssa, metadata !2160, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8* %buffer.5.lcssa, metadata !2160, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8* %buffer.5.lcssa, metadata !2160, metadata !DIExpression()), !dbg !2182
  br label %if.end233, !dbg !2380

if.end233:                                        ; preds = %if.end233.loopexit, %if.else151, %if.then149
  %buffer.11 = phi i8* [ %call150, %if.then149 ], [ %incdec.ptr145, %if.else151 ], [ %buffer.5.lcssa, %if.end233.loopexit ], !dbg !2182
  call void @llvm.dbg.value(metadata i8* %buffer.11, metadata !2160, metadata !DIExpression()), !dbg !2182
  store i8 0, i8* %buffer.11, align 1, !dbg !2380
  %53 = load i8*, i8** %macro_buffer84, align 8, !dbg !2381
  br label %cleanup, !dbg !2382

cleanup:                                          ; preds = %if.end233, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %53, %if.end233 ], !dbg !2182
  ret i8* %retval.0, !dbg !2383
}

declare dso_local i64 @_cpp_replacement_text_len(%struct.cpp_macro*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @macro_real_token_count(%struct.cpp_macro* %macro) unnamed_addr #0 !dbg !2384 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !2388, metadata !DIExpression()), !dbg !2390
  %extra_tokens = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 5, !dbg !2391
  %bf.load = load i8, i8* %extra_tokens, align 2, !dbg !2391
  %bf.clear = and i8 %bf.load, 32, !dbg !2391
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !2391
  br i1 %tobool, label %if.then, label %for.cond.preheader, !dbg !2393

for.cond.preheader:                               ; preds = %entry
  %count1 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 3, !dbg !2394
  %0 = load i32, i32* %count1, align 4, !dbg !2394
  %tokens = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 1, i32 0, !dbg !2397
  br label %for.cond, !dbg !2399

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 3, !dbg !2400
  %1 = load i32, i32* %count, align 4, !dbg !2400
  br label %cleanup, !dbg !2401

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ], !dbg !2402
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2389, metadata !DIExpression()), !dbg !2390
  %exitcond = icmp eq i32 %i.0, %0, !dbg !2403
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2399

for.body:                                         ; preds = %for.cond
  %2 = load %struct.cpp_token*, %struct.cpp_token** %tokens, align 8, !dbg !2404
  %idxprom = zext i32 %i.0 to i64, !dbg !2405
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %2, i64 %idxprom, i32 1, !dbg !2406
  %bf.load2 = load i8, i8* %type, align 4, !dbg !2406
  %cmp4 = icmp eq i8 %bf.load2, 38, !dbg !2407
  br i1 %cmp4, label %cleanup.loopexit, label %for.inc, !dbg !2408

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.0, 1, !dbg !2409
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2389, metadata !DIExpression()), !dbg !2390
  br label %for.cond, !dbg !2410, !llvm.loop !2411

for.end:                                          ; preds = %for.cond
  tail call void @abort() #14, !dbg !2413
  unreachable, !dbg !2413

cleanup.loopexit:                                 ; preds = %for.body
  %i.0.lcssa3 = phi i32 [ %i.0, %for.body ], !dbg !2402
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa3, metadata !2389, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa3, metadata !2389, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa3, metadata !2389, metadata !DIExpression()), !dbg !2390
  br label %cleanup, !dbg !2414

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %i.0.lcssa3, %cleanup.loopexit ], !dbg !2390
  ret i32 %retval.0, !dbg !2414
}

declare dso_local i32 @cpp_token_len(%struct.cpp_token*) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

declare dso_local i8* @_cpp_copy_replacement_text(%struct.cpp_macro*, i8*) local_unnamed_addr #1

declare dso_local i8* @cpp_spell_token(%struct.cpp_reader*, %struct.cpp_token*, i8*, i8 zeroext) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @paste_tokens(%struct.cpp_reader* %pfile, %struct.cpp_token** %plhs, %struct.cpp_token* %rhs) unnamed_addr #2 !dbg !2415 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2419, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.cpp_token** %plhs, metadata !2420, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.cpp_token* %rhs, metadata !2421, metadata !DIExpression()), !dbg !2430
  %0 = load %struct.cpp_token*, %struct.cpp_token** %plhs, align 8, !dbg !2431
  %call = tail call i32 @cpp_token_len(%struct.cpp_token* %0) #9, !dbg !2432
  %call1 = tail call i32 @cpp_token_len(%struct.cpp_token* %rhs) #9, !dbg !2433
  %add = add i32 %call, %call1, !dbg !2434
  %add2 = add i32 %add, 1, !dbg !2435
  call void @llvm.dbg.value(metadata i32 %add2, metadata !2426, metadata !DIExpression()), !dbg !2430
  %conv = zext i32 %add2 to i64, !dbg !2436
  %1 = alloca i8, i64 %conv, align 16, !dbg !2436
  call void @llvm.dbg.value(metadata i8* %1, metadata !2422, metadata !DIExpression()), !dbg !2430
  %2 = load %struct.cpp_token*, %struct.cpp_token** %plhs, align 8, !dbg !2437
  %call3 = call i8* @cpp_spell_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %2, i8* nonnull %1, i8 zeroext 0) #9, !dbg !2438
  call void @llvm.dbg.value(metadata i8* %call3, metadata !2424, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8* %call3, metadata !2423, metadata !DIExpression()), !dbg !2430
  %3 = load %struct.cpp_token*, %struct.cpp_token** %plhs, align 8, !dbg !2439
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %3, i64 0, i32 1, !dbg !2441
  %bf.load = load i8, i8* %type, align 4, !dbg !2441
  %cmp = icmp eq i8 %bf.load, 7, !dbg !2442
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2443

land.lhs.true:                                    ; preds = %entry
  %type5 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %rhs, i64 0, i32 1, !dbg !2444
  %bf.load6 = load i8, i8* %type5, align 4, !dbg !2444
  %cmp8 = icmp eq i8 %bf.load6, 0, !dbg !2445
  br i1 %cmp8, label %if.end, label %if.then, !dbg !2446

if.then:                                          ; preds = %land.lhs.true
  %incdec.ptr = getelementptr inbounds i8, i8* %call3, i64 1, !dbg !2447
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2423, metadata !DIExpression()), !dbg !2430
  store i8 32, i8* %call3, align 1, !dbg !2448
  br label %if.end, !dbg !2449

if.end:                                           ; preds = %land.lhs.true, %if.then, %entry
  %end.0 = phi i8* [ %incdec.ptr, %if.then ], [ %call3, %land.lhs.true ], [ %call3, %entry ], !dbg !2430
  call void @llvm.dbg.value(metadata i8* %end.0, metadata !2423, metadata !DIExpression()), !dbg !2430
  %type10 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %rhs, i64 0, i32 1, !dbg !2450
  %bf.load11 = load i8, i8* %type10, align 4, !dbg !2450
  %cmp13 = icmp eq i8 %bf.load11, 72, !dbg !2452
  br i1 %cmp13, label %if.end17, label %if.then15, !dbg !2453

if.then15:                                        ; preds = %if.end
  %call16 = call i8* @cpp_spell_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %rhs, i8* %end.0, i8 zeroext 0) #9, !dbg !2454
  call void @llvm.dbg.value(metadata i8* %call16, metadata !2423, metadata !DIExpression()), !dbg !2430
  br label %if.end17, !dbg !2455

if.end17:                                         ; preds = %if.end, %if.then15
  %end.1 = phi i8* [ %call16, %if.then15 ], [ %end.0, %if.end ], !dbg !2430
  call void @llvm.dbg.value(metadata i8* %end.1, metadata !2423, metadata !DIExpression()), !dbg !2430
  store i8 10, i8* %end.1, align 1, !dbg !2456
  %sub.ptr.lhs.cast = ptrtoint i8* %end.1 to i64, !dbg !2457
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64, !dbg !2457
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2457
  %call18 = call %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader* %pfile, i8* nonnull %1, i64 %sub.ptr.sub, i32 1) #9, !dbg !2458
  call void @_cpp_clean_line(%struct.cpp_reader* %pfile) #9, !dbg !2459
  %call19 = call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %pfile) #9, !dbg !2460
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !2461
  store %struct.cpp_token* %call19, %struct.cpp_token** %cur_token, align 8, !dbg !2462
  %call20 = call %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %pfile) #9, !dbg !2463
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call20, metadata !2425, metadata !DIExpression()), !dbg !2430
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2464
  %4 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !2464
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %4, i64 0, i32 0, !dbg !2465
  %5 = load i8*, i8** %cur, align 8, !dbg !2465
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %4, i64 0, i32 4, !dbg !2466
  %6 = load i8*, i8** %rlimit, align 8, !dbg !2466
  %cmp22 = icmp eq i8* %5, %6, !dbg !2467
  br i1 %cmp22, label %if.end34, label %if.then24, !dbg !2468

if.then24:                                        ; preds = %if.end17
  %src_loc = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call20, i64 0, i32 0, !dbg !2469
  %7 = load i32, i32* %src_loc, align 8, !dbg !2469
  call void @llvm.dbg.value(metadata i32 %7, metadata !2427, metadata !DIExpression()), !dbg !2470
  call void @_cpp_pop_buffer(%struct.cpp_reader* %pfile) #9, !dbg !2471
  call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 1) #11, !dbg !2472
  store i8 0, i8* %call3, align 1, !dbg !2473
  %8 = bitcast %struct.cpp_token** %plhs to i8**, !dbg !2474
  %9 = load i8*, i8** %8, align 8, !dbg !2474
  %10 = bitcast %struct.cpp_token* %call20 to i8*, !dbg !2475
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %9, i64 24, i1 false), !dbg !2475
  store %struct.cpp_token* %call20, %struct.cpp_token** %plhs, align 8, !dbg !2476
  store i32 %7, i32* %src_loc, align 8, !dbg !2477
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call20, i64 0, i32 2, !dbg !2478
  %11 = load i16, i16* %flags, align 2, !dbg !2479
  %12 = and i16 %11, -9, !dbg !2479
  store i16 %12, i16* %flags, align 2, !dbg !2479
  %lang = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 1, !dbg !2480
  %13 = load i32, i32* %lang, align 4, !dbg !2480
  %cmp28 = icmp eq i32 %13, 9, !dbg !2482
  br i1 %cmp28, label %cleanup, label %if.then30, !dbg !2483

if.then30:                                        ; preds = %if.then24
  %call31 = call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %rhs) #9, !dbg !2484
  %call32 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.34, i64 0, i64 0), i8* nonnull %1, i8* %call31) #9, !dbg !2485
  br label %cleanup, !dbg !2485

if.end34:                                         ; preds = %if.end17
  store %struct.cpp_token* %call20, %struct.cpp_token** %plhs, align 8, !dbg !2486
  call void @_cpp_pop_buffer(%struct.cpp_reader* %pfile) #9, !dbg !2487
  br label %cleanup, !dbg !2488

cleanup:                                          ; preds = %if.then24, %if.then30, %if.end34
  %retval.0 = phi i8 [ 1, %if.end34 ], [ 0, %if.then30 ], [ 0, %if.then24 ], !dbg !2430
  ret i8 %retval.0, !dbg !2489
}

declare dso_local %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader*, i8*, i64, i32) local_unnamed_addr #1

declare dso_local void @_cpp_clean_line(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local void @_cpp_pop_buffer(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local i8* @cpp_token_as_text(%struct.cpp_reader*, %struct.cpp_token*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct._cpp_buff* @funlike_invocation_p(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, %struct._cpp_buff** %pragma_buff) unnamed_addr #2 !dbg !2490 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2495, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !2496, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %pragma_buff, metadata !2497, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.cpp_token* null, metadata !2499, metadata !DIExpression()), !dbg !2500
  br label %for.cond, !dbg !2501

for.cond:                                         ; preds = %if.end5, %entry
  %padding.0 = phi %struct.cpp_token* [ null, %entry ], [ %padding.1, %if.end5 ], !dbg !2500
  call void @llvm.dbg.value(metadata %struct.cpp_token* %padding.0, metadata !2499, metadata !DIExpression()), !dbg !2500
  %call = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #11, !dbg !2502
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !2498, metadata !DIExpression()), !dbg !2500
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !2506
  %bf.load = load i8, i8* %type, align 4, !dbg !2506
  %cmp = icmp eq i8 %bf.load, 72, !dbg !2508
  br i1 %cmp, label %if.end, label %for.end, !dbg !2509

if.end:                                           ; preds = %for.cond
  %cmp1 = icmp eq %struct.cpp_token* %padding.0, null, !dbg !2510
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !2512

lor.lhs.false:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %padding.0, i64 0, i32 2, !dbg !2513
  %0 = load i16, i16* %flags, align 2, !dbg !2513
  %1 = and i16 %0, 1, !dbg !2514
  %tobool = icmp eq i16 %1, 0, !dbg !2514
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !2515

land.lhs.true:                                    ; preds = %lor.lhs.false
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, !dbg !2516
  %source = bitcast %union.cpp_token_u* %val to %struct.cpp_token**, !dbg !2517
  %2 = load %struct.cpp_token*, %struct.cpp_token** %source, align 8, !dbg !2517
  %cmp2 = icmp eq %struct.cpp_token* %2, null, !dbg !2518
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !2519

if.then4:                                         ; preds = %land.lhs.true, %if.end
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !2499, metadata !DIExpression()), !dbg !2500
  br label %if.end5, !dbg !2520

if.end5:                                          ; preds = %lor.lhs.false, %if.then4, %land.lhs.true
  %padding.1 = phi %struct.cpp_token* [ %call, %if.then4 ], [ %padding.0, %lor.lhs.false ], [ %padding.0, %land.lhs.true ], !dbg !2500
  call void @llvm.dbg.value(metadata %struct.cpp_token* %padding.1, metadata !2499, metadata !DIExpression()), !dbg !2500
  br label %for.cond, !dbg !2521, !llvm.loop !2522

for.end:                                          ; preds = %for.cond
  %padding.0.lcssa = phi %struct.cpp_token* [ %padding.0, %for.cond ], !dbg !2500
  %call.lcssa = phi %struct.cpp_token* [ %call, %for.cond ], !dbg !2502
  %bf.load.lcssa = phi i8 [ %bf.load, %for.cond ], !dbg !2506
  call void @llvm.dbg.value(metadata %struct.cpp_token* %padding.0.lcssa, metadata !2499, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.cpp_token* %padding.0.lcssa, metadata !2499, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata %struct.cpp_token* %padding.0.lcssa, metadata !2499, metadata !DIExpression()), !dbg !2500
  %cmp9 = icmp eq i8 %bf.load.lcssa, 20, !dbg !2525
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !2527

if.then11:                                        ; preds = %for.end
  %parsing_args = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 9, !dbg !2528
  store i8 2, i8* %parsing_args, align 1, !dbg !2530
  %call12 = tail call fastcc %struct._cpp_buff* @collect_args(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, %struct._cpp_buff** %pragma_buff) #11, !dbg !2531
  br label %cleanup, !dbg !2532

if.end13:                                         ; preds = %for.end
  %cmp17 = icmp ne i8 %bf.load.lcssa, 22, !dbg !2533
  %eof = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 44, !dbg !2535
  %cmp20 = icmp eq %struct.cpp_token* %call.lcssa, %eof, !dbg !2536
  %or.cond = or i1 %cmp17, %cmp20, !dbg !2537
  br i1 %or.cond, label %if.then22, label %cleanup, !dbg !2537

if.then22:                                        ; preds = %if.end13
  tail call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 1) #11, !dbg !2538
  %tobool23 = icmp eq %struct.cpp_token* %padding.0.lcssa, null, !dbg !2540
  br i1 %tobool23, label %cleanup, label %if.then24, !dbg !2542

if.then24:                                        ; preds = %if.then22
  tail call void @_cpp_push_token_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* null, %struct.cpp_token* nonnull %padding.0.lcssa, i32 1) #11, !dbg !2543
  br label %cleanup, !dbg !2543

cleanup:                                          ; preds = %if.then22, %if.end13, %if.then24, %if.then11
  %retval.0 = phi %struct._cpp_buff* [ %call12, %if.then11 ], [ null, %if.then22 ], [ null, %if.then24 ], [ null, %if.end13 ], !dbg !2500
  ret %struct._cpp_buff* %retval.0, !dbg !2544
}

; Function Attrs: nounwind uwtable
define internal fastcc void @replace_args(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, %struct.cpp_macro* %macro, %struct.macro_arg* %args) unnamed_addr #2 !dbg !2545 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2549, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !2550, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !2551, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.macro_arg* %args, metadata !2552, metadata !DIExpression()), !dbg !2571
  %call = tail call fastcc i32 @macro_real_token_count(%struct.cpp_macro* %macro) #11, !dbg !2572
  call void @llvm.dbg.value(metadata i32 %call, metadata !2561, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %call, metadata !2554, metadata !DIExpression()), !dbg !2571
  %tokens = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 1, i32 0, !dbg !2573
  %0 = load %struct.cpp_token*, %struct.cpp_token** %tokens, align 8, !dbg !2573
  %idx.ext = zext i32 %call to i64, !dbg !2574
  %add.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %0, i64 %idx.ext, !dbg !2574
  call void @llvm.dbg.value(metadata %struct.cpp_token* %add.ptr, metadata !2556, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.cpp_token* %0, metadata !2555, metadata !DIExpression()), !dbg !2571
  br label %for.cond, !dbg !2575

for.cond:                                         ; preds = %for.inc, %entry
  %src.0 = phi %struct.cpp_token* [ %0, %entry ], [ %incdec.ptr, %for.inc ], !dbg !2577
  %total.0 = phi i32 [ %call, %entry ], [ %total.3, %for.inc ], !dbg !2571
  call void @llvm.dbg.value(metadata i32 %total.0, metadata !2554, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.cpp_token* %src.0, metadata !2555, metadata !DIExpression()), !dbg !2571
  %cmp = icmp ult %struct.cpp_token* %src.0, %add.ptr, !dbg !2578
  br i1 %cmp, label %for.body, label %for.end, !dbg !2580

for.body:                                         ; preds = %for.cond
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %src.0, i64 0, i32 1, !dbg !2581
  %bf.load = load i8, i8* %type, align 4, !dbg !2581
  %cmp3 = icmp eq i8 %bf.load, 69, !dbg !2583
  br i1 %cmp3, label %if.then, label %for.inc, !dbg !2584

if.then:                                          ; preds = %for.body
  %add = add i32 %total.0, 2, !dbg !2585
  call void @llvm.dbg.value(metadata i32 %add, metadata !2554, metadata !DIExpression()), !dbg !2571
  %arg_no = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %src.0, i64 0, i32 3, i32 0, i32 0, !dbg !2587
  %1 = load i32, i32* %arg_no, align 8, !dbg !2587
  %sub = add i32 %1, -1, !dbg !2588
  %idxprom = zext i32 %sub to i64, !dbg !2589
  %arrayidx = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %args, i64 %idxprom, !dbg !2589
  call void @llvm.dbg.value(metadata %struct.macro_arg* %arrayidx, metadata !2559, metadata !DIExpression()), !dbg !2571
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %src.0, i64 0, i32 2, !dbg !2590
  %2 = load i16, i16* %flags, align 2, !dbg !2590
  %3 = and i16 %2, 4, !dbg !2592
  %tobool = icmp eq i16 %3, 0, !dbg !2592
  br i1 %tobool, label %if.else, label %if.then4, !dbg !2593

if.then4:                                         ; preds = %if.then
  %stringified = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %args, i64 %idxprom, i32 2, !dbg !2594
  %4 = load %struct.cpp_token*, %struct.cpp_token** %stringified, align 8, !dbg !2594
  %tobool5 = icmp eq %struct.cpp_token* %4, null, !dbg !2597
  br i1 %tobool5, label %if.then6, label %for.inc, !dbg !2598

if.then6:                                         ; preds = %if.then4
  %call7 = tail call fastcc %struct.cpp_token* @stringify_arg(%struct.cpp_reader* %pfile, %struct.macro_arg* %arrayidx) #11, !dbg !2599
  store %struct.cpp_token* %call7, %struct.cpp_token** %stringified, align 8, !dbg !2600
  br label %for.inc, !dbg !2601

if.else:                                          ; preds = %if.then
  %5 = and i16 %2, 8, !dbg !2602
  %tobool12 = icmp eq i16 %5, 0, !dbg !2602
  br i1 %tobool12, label %lor.lhs.false, label %if.then22, !dbg !2604

lor.lhs.false:                                    ; preds = %if.else
  %6 = load %struct.cpp_token*, %struct.cpp_token** %tokens, align 8, !dbg !2605
  %cmp15 = icmp ugt %struct.cpp_token* %src.0, %6, !dbg !2606
  br i1 %cmp15, label %land.lhs.true, label %if.else26, !dbg !2607

land.lhs.true:                                    ; preds = %lor.lhs.false
  %flags18 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %src.0, i64 -1, i32 2, !dbg !2608
  %7 = load i16, i16* %flags18, align 2, !dbg !2608
  %8 = and i16 %7, 8, !dbg !2609
  %tobool21 = icmp eq i16 %8, 0, !dbg !2609
  br i1 %tobool21, label %if.else26, label %if.then22, !dbg !2610

if.then22:                                        ; preds = %land.lhs.true, %if.else
  %count23 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %args, i64 %idxprom, i32 3, !dbg !2611
  %9 = load i32, i32* %count23, align 8, !dbg !2611
  %sub24 = add i32 %9, -1, !dbg !2612
  %add25 = add i32 %add, %sub24, !dbg !2613
  call void @llvm.dbg.value(metadata i32 %add25, metadata !2554, metadata !DIExpression()), !dbg !2571
  br label %for.inc, !dbg !2614

if.else26:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %expanded = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %args, i64 %idxprom, i32 1, !dbg !2615
  %10 = load %struct.cpp_token**, %struct.cpp_token*** %expanded, align 8, !dbg !2615
  %tobool27 = icmp eq %struct.cpp_token** %10, null, !dbg !2618
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !2619

if.then28:                                        ; preds = %if.else26
  tail call fastcc void @expand_arg(%struct.cpp_reader* %pfile, %struct.macro_arg* %arrayidx) #11, !dbg !2620
  br label %if.end29, !dbg !2620

if.end29:                                         ; preds = %if.else26, %if.then28
  %expanded_count = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %args, i64 %idxprom, i32 4, !dbg !2621
  %11 = load i32, i32* %expanded_count, align 4, !dbg !2621
  %sub30 = add i32 %11, -1, !dbg !2622
  %add31 = add i32 %add, %sub30, !dbg !2623
  call void @llvm.dbg.value(metadata i32 %add31, metadata !2554, metadata !DIExpression()), !dbg !2571
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body, %if.then22, %if.end29, %if.then6
  %total.3 = phi i32 [ %total.0, %for.body ], [ %add, %if.then6 ], [ %add, %if.then4 ], [ %add25, %if.then22 ], [ %add31, %if.end29 ], !dbg !2571
  call void @llvm.dbg.value(metadata i32 %total.3, metadata !2554, metadata !DIExpression()), !dbg !2571
  %incdec.ptr = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %src.0, i64 1, !dbg !2624
  call void @llvm.dbg.value(metadata %struct.cpp_token* %incdec.ptr, metadata !2555, metadata !DIExpression()), !dbg !2571
  br label %for.cond, !dbg !2625, !llvm.loop !2626

for.end:                                          ; preds = %for.cond
  %total.0.lcssa = phi i32 [ %total.0, %for.cond ], !dbg !2571
  call void @llvm.dbg.value(metadata i32 %total.0.lcssa, metadata !2554, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %total.0.lcssa, metadata !2554, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %total.0.lcssa, metadata !2554, metadata !DIExpression()), !dbg !2571
  %conv35 = zext i32 %total.0.lcssa to i64, !dbg !2628
  %mul = shl nuw nsw i64 %conv35, 3, !dbg !2629
  %call36 = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 %mul) #9, !dbg !2630
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call36, metadata !2560, metadata !DIExpression()), !dbg !2571
  %base = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %call36, i64 0, i32 1, !dbg !2631
  %12 = bitcast i8** %base to %struct.cpp_token***, !dbg !2631
  %13 = load %struct.cpp_token**, %struct.cpp_token*** %12, align 8, !dbg !2631
  call void @llvm.dbg.value(metadata %struct.cpp_token** %13, metadata !2558, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.cpp_token** %13, metadata !2557, metadata !DIExpression()), !dbg !2571
  %14 = load %struct.cpp_token*, %struct.cpp_token** %tokens, align 8, !dbg !2632
  call void @llvm.dbg.value(metadata %struct.cpp_token* %14, metadata !2555, metadata !DIExpression()), !dbg !2571
  %variadic = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 5, !dbg !2633
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 4, !dbg !2633
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !2641
  %directive_wants_padding = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 1, !dbg !2641
  %pedantic = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !2643
  %c99 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 29, !dbg !2643
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !2646
  %avoid_paste = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 43, !dbg !2648
  br label %for.cond39, !dbg !2650

for.cond39:                                       ; preds = %cleanup, %for.end
  %dest.0 = phi %struct.cpp_token** [ %13, %for.end ], [ %dest.10, %cleanup ], !dbg !2571
  %src.1 = phi %struct.cpp_token* [ %14, %for.end ], [ %incdec.ptr224, %cleanup ], !dbg !2651
  call void @llvm.dbg.value(metadata %struct.cpp_token* %src.1, metadata !2555, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.cpp_token** %dest.0, metadata !2557, metadata !DIExpression()), !dbg !2571
  %cmp40 = icmp ult %struct.cpp_token* %src.1, %add.ptr, !dbg !2652
  br i1 %cmp40, label %for.body42, label %for.cond226.preheader, !dbg !2653

for.cond226.preheader:                            ; preds = %for.cond39
  %dest.0.lcssa = phi %struct.cpp_token** [ %dest.0, %for.cond39 ], !dbg !2571
  call void @llvm.dbg.value(metadata %struct.cpp_token** %dest.0.lcssa, metadata !2557, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.cpp_token** %dest.0.lcssa, metadata !2557, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %struct.cpp_token** %dest.0.lcssa, metadata !2557, metadata !DIExpression()), !dbg !2571
  br label %for.cond226, !dbg !2654

for.body42:                                       ; preds = %for.cond39
  %type44 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %src.1, i64 0, i32 1, !dbg !2656
  %bf.load45 = load i8, i8* %type44, align 4, !dbg !2656
  %cmp47 = icmp eq i8 %bf.load45, 69, !dbg !2658
  br i1 %cmp47, label %if.end51, label %if.then49, !dbg !2659

if.then49:                                        ; preds = %for.body42
  %incdec.ptr50 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %dest.0, i64 1, !dbg !2660
  call void @llvm.dbg.value(metadata %struct.cpp_token** %incdec.ptr50, metadata !2557, metadata !DIExpression()), !dbg !2571
  store %struct.cpp_token* %src.1, %struct.cpp_token** %dest.0, align 8, !dbg !2662
  br label %cleanup, !dbg !2663

if.end51:                                         ; preds = %for.body42
  call void @llvm.dbg.value(metadata %struct.cpp_token** null, metadata !2567, metadata !DIExpression()), !dbg !2664
  %arg_no54 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %src.1, i64 0, i32 3, i32 0, i32 0, !dbg !2665
  %15 = load i32, i32* %arg_no54, align 8, !dbg !2665
  %sub55 = add i32 %15, -1, !dbg !2666
  %idxprom56 = zext i32 %sub55 to i64, !dbg !2667
  %arrayidx57 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %args, i64 %idxprom56, !dbg !2667
  call void @llvm.dbg.value(metadata %struct.macro_arg* %arrayidx57, metadata !2559, metadata !DIExpression()), !dbg !2571
  %flags58 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %src.1, i64 0, i32 2, !dbg !2668
  %16 = load i16, i16* %flags58, align 2, !dbg !2668
  %17 = and i16 %16, 4, !dbg !2669
  %tobool61 = icmp eq i16 %17, 0, !dbg !2669
  br i1 %tobool61, label %if.else64, label %if.then62, !dbg !2670

if.then62:                                        ; preds = %if.end51
  call void @llvm.dbg.value(metadata i32 1, metadata !2562, metadata !DIExpression()), !dbg !2664
  %stringified63 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %args, i64 %idxprom56, i32 2, !dbg !2671
  call void @llvm.dbg.value(metadata %struct.cpp_token** %stringified63, metadata !2566, metadata !DIExpression()), !dbg !2664
  br label %if.end127, !dbg !2672

if.else64:                                        ; preds = %if.end51
  %18 = and i16 %16, 8, !dbg !2673
  %tobool68 = icmp eq i16 %18, 0, !dbg !2673
  br i1 %tobool68, label %if.else72, label %if.then69, !dbg !2674

if.then69:                                        ; preds = %if.else64
  %count70 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %args, i64 %idxprom56, i32 3, !dbg !2675
  %19 = load i32, i32* %count70, align 8, !dbg !2675
  call void @llvm.dbg.value(metadata i32 %19, metadata !2562, metadata !DIExpression()), !dbg !2664
  %first71 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %arrayidx57, i64 0, i32 0, !dbg !2676
  %20 = load %struct.cpp_token**, %struct.cpp_token*** %first71, align 8, !dbg !2676
  call void @llvm.dbg.value(metadata %struct.cpp_token** %20, metadata !2566, metadata !DIExpression()), !dbg !2664
  br label %if.end127, !dbg !2677

if.else72:                                        ; preds = %if.else64
  %21 = load %struct.cpp_token*, %struct.cpp_token** %tokens, align 8, !dbg !2678
  %cmp75 = icmp eq %struct.cpp_token* %src.1, %21, !dbg !2679
  br i1 %cmp75, label %if.else122, label %land.lhs.true77, !dbg !2680

land.lhs.true77:                                  ; preds = %if.else72
  %flags79 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %src.1, i64 -1, i32 2, !dbg !2681
  %22 = load i16, i16* %flags79, align 2, !dbg !2681
  %23 = and i16 %22, 8, !dbg !2682
  %tobool82 = icmp eq i16 %23, 0, !dbg !2682
  br i1 %tobool82, label %if.else122, label %if.then83, !dbg !2683

if.then83:                                        ; preds = %land.lhs.true77
  %count84 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %args, i64 %idxprom56, i32 3, !dbg !2684
  %24 = load i32, i32* %count84, align 8, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %24, metadata !2562, metadata !DIExpression()), !dbg !2664
  %first85 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %arrayidx57, i64 0, i32 0, !dbg !2685
  %25 = load %struct.cpp_token**, %struct.cpp_token*** %first85, align 8, !dbg !2685
  call void @llvm.dbg.value(metadata %struct.cpp_token** %25, metadata !2566, metadata !DIExpression()), !dbg !2664
  %cmp86 = icmp eq %struct.cpp_token** %dest.0, %13, !dbg !2686
  br i1 %cmp86, label %if.end127, label %if.then88, !dbg !2687

if.then88:                                        ; preds = %if.then83
  %arrayidx89 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %dest.0, i64 -1, !dbg !2688
  %26 = load %struct.cpp_token*, %struct.cpp_token** %arrayidx89, align 8, !dbg !2688
  %type90 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %26, i64 0, i32 1, !dbg !2689
  %bf.load91 = load i8, i8* %type90, align 4, !dbg !2689
  %cmp93 = icmp eq i8 %bf.load91, 19, !dbg !2690
  br i1 %cmp93, label %land.lhs.true95, label %if.else114, !dbg !2691

land.lhs.true95:                                  ; preds = %if.then88
  %bf.load96 = load i8, i8* %variadic, align 2, !dbg !2692
  %bf.clear = and i8 %bf.load96, 2, !dbg !2692
  %tobool98 = icmp eq i8 %bf.clear, 0, !dbg !2693
  br i1 %tobool98, label %if.else114, label %land.lhs.true99, !dbg !2694

land.lhs.true99:                                  ; preds = %land.lhs.true95
  %27 = load i16, i16* %paramc, align 8, !dbg !2695
  %conv103 = zext i16 %27 to i32, !dbg !2696
  %cmp104 = icmp eq i32 %15, %conv103, !dbg !2697
  br i1 %cmp104, label %if.then106, label %if.else114, !dbg !2698

if.then106:                                       ; preds = %land.lhs.true99
  %cmp107 = icmp eq %struct.cpp_token** %25, null, !dbg !2699
  %dest.1 = select i1 %cmp107, %struct.cpp_token** %arrayidx89, %struct.cpp_token** %dest.0, !dbg !2702
  %paste_flag.0 = select i1 %cmp107, %struct.cpp_token** null, %struct.cpp_token** %arrayidx89, !dbg !2702
  br label %if.end127, !dbg !2702

if.else114:                                       ; preds = %land.lhs.true95, %land.lhs.true99, %if.then88
  %cmp115 = icmp eq i32 %24, 0, !dbg !2703
  %spec.select = select i1 %cmp115, %struct.cpp_token** %arrayidx89, %struct.cpp_token** null, !dbg !2705
  call void @llvm.dbg.value(metadata %struct.cpp_token** %spec.select, metadata !2567, metadata !DIExpression()), !dbg !2664
  br label %if.end127

if.else122:                                       ; preds = %land.lhs.true77, %if.else72
  %expanded_count123 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %args, i64 %idxprom56, i32 4, !dbg !2706
  %28 = load i32, i32* %expanded_count123, align 4, !dbg !2706
  call void @llvm.dbg.value(metadata i32 %28, metadata !2562, metadata !DIExpression()), !dbg !2664
  %expanded124 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %args, i64 %idxprom56, i32 1, !dbg !2707
  %29 = load %struct.cpp_token**, %struct.cpp_token*** %expanded124, align 8, !dbg !2707
  call void @llvm.dbg.value(metadata %struct.cpp_token** %29, metadata !2566, metadata !DIExpression()), !dbg !2664
  br label %if.end127

if.end127:                                        ; preds = %if.then83, %if.then69, %if.then106, %if.else114, %if.else122, %if.then62
  %dest.6 = phi %struct.cpp_token** [ %dest.0, %if.then62 ], [ %dest.0, %if.then69 ], [ %dest.0, %if.else122 ], [ %13, %if.then83 ], [ %dest.0, %if.else114 ], [ %dest.1, %if.then106 ], !dbg !2708
  %count43.2 = phi i32 [ 1, %if.then62 ], [ %19, %if.then69 ], [ %28, %if.else122 ], [ %24, %if.then83 ], [ %24, %if.else114 ], [ %24, %if.then106 ], !dbg !2709
  %from.2 = phi %struct.cpp_token** [ %stringified63, %if.then62 ], [ %20, %if.then69 ], [ %29, %if.else122 ], [ %25, %if.then83 ], [ %25, %if.else114 ], [ %25, %if.then106 ], !dbg !2709
  %paste_flag.6 = phi %struct.cpp_token** [ null, %if.then62 ], [ null, %if.then69 ], [ null, %if.else122 ], [ null, %if.then83 ], [ %spec.select, %if.else114 ], [ %paste_flag.0, %if.then106 ], !dbg !2710
  call void @llvm.dbg.value(metadata %struct.cpp_token** %paste_flag.6, metadata !2567, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata %struct.cpp_token** %from.2, metadata !2566, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 %count43.2, metadata !2562, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata %struct.cpp_token** %dest.6, metadata !2557, metadata !DIExpression()), !dbg !2571
  %30 = load i8, i8* %in_directive, align 8, !dbg !2711
  %tobool128 = icmp eq i8 %30, 0, !dbg !2712
  br i1 %tobool128, label %land.lhs.true133, label %lor.lhs.false129, !dbg !2713

lor.lhs.false129:                                 ; preds = %if.end127
  %31 = load i8, i8* %directive_wants_padding, align 1, !dbg !2714
  %tobool132 = icmp eq i8 %31, 0, !dbg !2715
  br i1 %tobool132, label %if.end147, label %land.lhs.true133, !dbg !2716

land.lhs.true133:                                 ; preds = %lor.lhs.false129, %if.end127
  %32 = load %struct.cpp_token*, %struct.cpp_token** %tokens, align 8, !dbg !2717
  %cmp136 = icmp eq %struct.cpp_token* %src.1, %32, !dbg !2718
  br i1 %cmp136, label %if.end147, label %land.lhs.true138, !dbg !2719

land.lhs.true138:                                 ; preds = %land.lhs.true133
  %flags140 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %src.1, i64 -1, i32 2, !dbg !2720
  %33 = load i16, i16* %flags140, align 2, !dbg !2720
  %34 = and i16 %33, 8, !dbg !2721
  %tobool143 = icmp eq i16 %34, 0, !dbg !2721
  br i1 %tobool143, label %if.then144, label %if.end147, !dbg !2722

if.then144:                                       ; preds = %land.lhs.true138
  %call145 = tail call fastcc %struct.cpp_token* @padding_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %src.1) #11, !dbg !2723
  %incdec.ptr146 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %dest.6, i64 1, !dbg !2724
  call void @llvm.dbg.value(metadata %struct.cpp_token** %incdec.ptr146, metadata !2557, metadata !DIExpression()), !dbg !2571
  store %struct.cpp_token* %call145, %struct.cpp_token** %dest.6, align 8, !dbg !2725
  br label %if.end147, !dbg !2726

if.end147:                                        ; preds = %lor.lhs.false129, %land.lhs.true138, %land.lhs.true133, %if.then144
  %dest.7 = phi %struct.cpp_token** [ %dest.6, %land.lhs.true138 ], [ %incdec.ptr146, %if.then144 ], [ %dest.6, %land.lhs.true133 ], [ %dest.6, %lor.lhs.false129 ], !dbg !2571
  call void @llvm.dbg.value(metadata %struct.cpp_token** %dest.7, metadata !2557, metadata !DIExpression()), !dbg !2571
  %tobool148 = icmp eq i32 %count43.2, 0, !dbg !2727
  br i1 %tobool148, label %if.else162, label %if.then149, !dbg !2728

if.then149:                                       ; preds = %if.end147
  %35 = bitcast %struct.cpp_token** %dest.7 to i8*, !dbg !2729
  %36 = bitcast %struct.cpp_token** %from.2 to i8*, !dbg !2731
  %conv150 = zext i32 %count43.2 to i64, !dbg !2732
  %mul151 = shl nuw nsw i64 %conv150, 3, !dbg !2733
  %call152 = tail call i8* @memcpy(i8* %35, i8* %36, i64 %mul151) #9, !dbg !2734
  %add.ptr154 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %dest.7, i64 %conv150, !dbg !2735
  call void @llvm.dbg.value(metadata %struct.cpp_token** %add.ptr154, metadata !2557, metadata !DIExpression()), !dbg !2571
  %37 = load i16, i16* %flags58, align 2, !dbg !2736
  %38 = and i16 %37, 8, !dbg !2738
  %tobool158 = icmp eq i16 %38, 0, !dbg !2738
  %add.ptr160 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %add.ptr154, i64 -1, !dbg !2739
  %spec.select1 = select i1 %tobool158, %struct.cpp_token** %paste_flag.6, %struct.cpp_token** %add.ptr160, !dbg !2740
  call void @llvm.dbg.value(metadata %struct.cpp_token** %spec.select1, metadata !2567, metadata !DIExpression()), !dbg !2664
  br label %if.end183, !dbg !2741

if.else162:                                       ; preds = %if.end147
  %39 = load i8, i8* %pedantic, align 1, !dbg !2742
  %tobool164 = icmp eq i8 %39, 0, !dbg !2742
  br i1 %tobool164, label %if.end183, label %land.lhs.true165, !dbg !2743

land.lhs.true165:                                 ; preds = %if.else162
  %bf.load166 = load i8, i8* %variadic, align 2, !dbg !2744
  %bf.clear168 = and i8 %bf.load166, 4, !dbg !2744
  %tobool170 = icmp eq i8 %bf.clear168, 0, !dbg !2745
  br i1 %tobool170, label %land.lhs.true171, label %if.end183, !dbg !2746

land.lhs.true171:                                 ; preds = %land.lhs.true165
  %40 = load i8, i8* %c99, align 1, !dbg !2747
  %tobool173 = icmp eq i8 %40, 0, !dbg !2747
  br i1 %tobool173, label %land.lhs.true174, label %if.end183, !dbg !2748

land.lhs.true174:                                 ; preds = %land.lhs.true171
  %call175 = tail call fastcc i32 @cpp_in_system_header(%struct.cpp_reader* %pfile) #11, !dbg !2749
  %tobool176 = icmp eq i32 %call175, 0, !dbg !2749
  br i1 %tobool176, label %if.then177, label %if.end183, !dbg !2750

if.then177:                                       ; preds = %land.lhs.true174
  %41 = load i8*, i8** %str, align 8, !dbg !2751
  %42 = load i32, i32* %arg_no54, align 8, !dbg !2752
  %call181 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.37, i64 0, i64 0), i8* %41, i32 %42) #9, !dbg !2753
  br label %if.end183, !dbg !2754

if.end183:                                        ; preds = %land.lhs.true174, %land.lhs.true171, %land.lhs.true165, %if.else162, %if.then177, %if.then149
  %dest.8 = phi %struct.cpp_token** [ %add.ptr154, %if.then149 ], [ %dest.7, %if.then177 ], [ %dest.7, %land.lhs.true174 ], [ %dest.7, %land.lhs.true171 ], [ %dest.7, %land.lhs.true165 ], [ %dest.7, %if.else162 ], !dbg !2571
  %paste_flag.8 = phi %struct.cpp_token** [ %spec.select1, %if.then149 ], [ %paste_flag.6, %if.then177 ], [ %paste_flag.6, %land.lhs.true174 ], [ %paste_flag.6, %land.lhs.true171 ], [ %paste_flag.6, %land.lhs.true165 ], [ %paste_flag.6, %if.else162 ], !dbg !2664
  call void @llvm.dbg.value(metadata %struct.cpp_token** %paste_flag.8, metadata !2567, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata %struct.cpp_token** %dest.8, metadata !2557, metadata !DIExpression()), !dbg !2571
  %43 = load i8, i8* %in_directive, align 8, !dbg !2755
  %tobool186 = icmp eq i8 %43, 0, !dbg !2756
  br i1 %tobool186, label %land.lhs.true187, label %if.end194, !dbg !2757

land.lhs.true187:                                 ; preds = %if.end183
  %44 = load i16, i16* %flags58, align 2, !dbg !2758
  %45 = and i16 %44, 8, !dbg !2759
  %tobool191 = icmp eq i16 %45, 0, !dbg !2759
  br i1 %tobool191, label %if.then192, label %if.end194, !dbg !2760

if.then192:                                       ; preds = %land.lhs.true187
  %incdec.ptr193 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %dest.8, i64 1, !dbg !2761
  call void @llvm.dbg.value(metadata %struct.cpp_token** %incdec.ptr193, metadata !2557, metadata !DIExpression()), !dbg !2571
  store %struct.cpp_token* %avoid_paste, %struct.cpp_token** %dest.8, align 8, !dbg !2762
  br label %if.end194, !dbg !2763

if.end194:                                        ; preds = %land.lhs.true187, %if.end183, %if.then192
  %dest.9 = phi %struct.cpp_token** [ %dest.8, %if.end183 ], [ %dest.8, %land.lhs.true187 ], [ %incdec.ptr193, %if.then192 ], !dbg !2664
  call void @llvm.dbg.value(metadata %struct.cpp_token** %dest.9, metadata !2557, metadata !DIExpression()), !dbg !2571
  %tobool195 = icmp eq %struct.cpp_token** %paste_flag.8, null, !dbg !2764
  br i1 %tobool195, label %cleanup, label %if.then196, !dbg !2765

if.then196:                                       ; preds = %if.end194
  %call197 = tail call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %pfile) #9, !dbg !2766
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call197, metadata !2568, metadata !DIExpression()), !dbg !2767
  %46 = load %struct.cpp_token*, %struct.cpp_token** %paste_flag.8, align 8, !dbg !2768
  %type198 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %46, i64 0, i32 1, !dbg !2769
  %bf.load1992 = load i8, i8* %type198, align 4, !dbg !2769
  %type201 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call197, i64 0, i32 1, !dbg !2770
  store i8 %bf.load1992, i8* %type201, align 4, !dbg !2771
  %val202 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call197, i64 0, i32 3, !dbg !2772
  %47 = load %struct.cpp_token*, %struct.cpp_token** %paste_flag.8, align 8, !dbg !2773
  %val203 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %47, i64 0, i32 3, !dbg !2774
  %48 = bitcast %union.cpp_token_u* %val202 to i8*, !dbg !2774
  %49 = bitcast %union.cpp_token_u* %val203 to i8*, !dbg !2774
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %48, i8* nonnull align 8 %49, i64 16, i1 false), !dbg !2774
  %50 = load i16, i16* %flags58, align 2, !dbg !2775
  %51 = and i16 %50, 8, !dbg !2777
  %tobool207 = icmp eq i16 %51, 0, !dbg !2777
  %52 = load %struct.cpp_token*, %struct.cpp_token** %paste_flag.8, align 8, !dbg !2778
  %flags209 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %52, i64 0, i32 2, !dbg !2778
  %53 = load i16, i16* %flags209, align 2, !dbg !2778
  br i1 %tobool207, label %if.else213, label %if.then208, !dbg !2779

if.then208:                                       ; preds = %if.then196
  %54 = or i16 %53, 8, !dbg !2780
  %flags212 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call197, i64 0, i32 2, !dbg !2781
  store i16 %54, i16* %flags212, align 2, !dbg !2782
  br label %if.end219, !dbg !2783

if.else213:                                       ; preds = %if.then196
  %and216 = and i16 %53, -9, !dbg !2784
  %flags218 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call197, i64 0, i32 2, !dbg !2785
  store i16 %and216, i16* %flags218, align 2, !dbg !2786
  br label %if.end219

if.end219:                                        ; preds = %if.else213, %if.then208
  store %struct.cpp_token* %call197, %struct.cpp_token** %paste_flag.8, align 8, !dbg !2787
  br label %cleanup, !dbg !2788

cleanup:                                          ; preds = %if.end194, %if.end219, %if.then49
  %dest.10 = phi %struct.cpp_token** [ %incdec.ptr50, %if.then49 ], [ %dest.9, %if.end219 ], [ %dest.9, %if.end194 ], !dbg !2664
  call void @llvm.dbg.value(metadata %struct.cpp_token** %dest.10, metadata !2557, metadata !DIExpression()), !dbg !2571
  %incdec.ptr224 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %src.1, i64 1, !dbg !2789
  call void @llvm.dbg.value(metadata %struct.cpp_token* %incdec.ptr224, metadata !2555, metadata !DIExpression()), !dbg !2571
  br label %for.cond39, !dbg !2790, !llvm.loop !2791

for.cond226:                                      ; preds = %for.cond226.preheader, %for.inc241
  %indvars.iv = phi i64 [ 0, %for.cond226.preheader ], [ %indvars.iv.next, %for.inc241 ], !dbg !2793
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2553, metadata !DIExpression()), !dbg !2571
  %55 = load i16, i16* %paramc, align 8, !dbg !2794
  %56 = zext i16 %55 to i64, !dbg !2796
  %cmp229 = icmp ult i64 %indvars.iv, %56, !dbg !2796
  br i1 %cmp229, label %for.body231, label %for.end242, !dbg !2654

for.body231:                                      ; preds = %for.cond226
  %expanded234 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %args, i64 %indvars.iv, i32 1, !dbg !2797
  %57 = load %struct.cpp_token**, %struct.cpp_token*** %expanded234, align 8, !dbg !2797
  %tobool235 = icmp eq %struct.cpp_token** %57, null, !dbg !2799
  br i1 %tobool235, label %for.inc241, label %if.then236, !dbg !2800

if.then236:                                       ; preds = %for.body231
  %58 = bitcast %struct.cpp_token** %57 to i8*, !dbg !2800
  tail call void @free(i8* nonnull %58) #9, !dbg !2801
  br label %for.inc241, !dbg !2801

for.inc241:                                       ; preds = %for.body231, %if.then236
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2802
  call void @llvm.dbg.value(metadata i32 undef, metadata !2553, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2571
  br label %for.cond226, !dbg !2803, !llvm.loop !2804

for.end242:                                       ; preds = %for.cond226
  %sub.ptr.lhs.cast = ptrtoint %struct.cpp_token** %dest.0.lcssa to i64, !dbg !2806
  %sub.ptr.rhs.cast = ptrtoint %struct.cpp_token** %13 to i64, !dbg !2806
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2806
  %59 = lshr exact i64 %sub.ptr.sub, 3, !dbg !2806
  %conv243 = trunc i64 %59 to i32, !dbg !2807
  tail call fastcc void @push_ptoken_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, %struct._cpp_buff* %call36, %struct.cpp_token** %13, i32 %conv243) #11, !dbg !2808
  ret void, !dbg !2809
}

; Function Attrs: nounwind uwtable
define internal fastcc void @push_ptoken_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %macro, %struct._cpp_buff* %buff, %struct.cpp_token** %first, i32 %count) unnamed_addr #2 !dbg !2810 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2814, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %macro, metadata !2815, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff, metadata !2816, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata %struct.cpp_token** %first, metadata !2817, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i32 %count, metadata !2818, metadata !DIExpression()), !dbg !2820
  %call = tail call fastcc %struct.cpp_context* @next_context(%struct.cpp_reader* %pfile) #11, !dbg !2821
  call void @llvm.dbg.value(metadata %struct.cpp_context* %call, metadata !2819, metadata !DIExpression()), !dbg !2820
  %direct_p = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 5, !dbg !2822
  store i8 0, i8* %direct_p, align 8, !dbg !2823
  %macro1 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 4, !dbg !2824
  store %struct.cpp_hashnode* %macro, %struct.cpp_hashnode** %macro1, align 8, !dbg !2825
  %buff2 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 3, !dbg !2826
  store %struct._cpp_buff* %buff, %struct._cpp_buff** %buff2, align 8, !dbg !2827
  %first3 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 2, i32 0, i32 0, !dbg !2828
  %ptoken = bitcast %union.utoken* %first3 to %struct.cpp_token***, !dbg !2829
  store %struct.cpp_token** %first, %struct.cpp_token*** %ptoken, align 8, !dbg !2830
  %idx.ext = zext i32 %count to i64, !dbg !2831
  %add.ptr = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %first, i64 %idx.ext, !dbg !2831
  %last = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %call, i64 0, i32 2, i32 0, i32 1, !dbg !2832
  %ptoken6 = bitcast %union.utoken* %last to %struct.cpp_token***, !dbg !2833
  store %struct.cpp_token** %add.ptr, %struct.cpp_token*** %ptoken6, align 8, !dbg !2834
  ret void, !dbg !2835
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @builtin_macro(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) unnamed_addr #2 !dbg !2836 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2840, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !2841, metadata !DIExpression()), !dbg !2845
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 4, !dbg !2846
  %builtin = bitcast %union._cpp_hashnode_value* %value to i32*, !dbg !2848
  %0 = load i32, i32* %builtin, align 8, !dbg !2848
  %cmp = icmp eq i32 %0, 7, !dbg !2849
  br i1 %cmp, label %if.then, label %if.end2, !dbg !2850

if.then:                                          ; preds = %entry
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !2851
  %1 = load i8, i8* %in_directive, align 8, !dbg !2851
  %tobool = icmp eq i8 %1, 0, !dbg !2854
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2855

if.end:                                           ; preds = %if.then
  %call = tail call i32 @_cpp_do__Pragma(%struct.cpp_reader* %pfile) #9, !dbg !2856
  br label %cleanup, !dbg !2857

if.end2:                                          ; preds = %entry
  %call3 = tail call i8* @_cpp_builtin_macro_text(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) #11, !dbg !2858
  call void @llvm.dbg.value(metadata i8* %call3, metadata !2842, metadata !DIExpression()), !dbg !2845
  %call4 = tail call fastcc i64 @ustrlen(i8* %call3) #11, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %call4, metadata !2843, metadata !DIExpression()), !dbg !2845
  %add = add i64 %call4, 1, !dbg !2860
  %2 = alloca i8, i64 %add, align 16, !dbg !2860
  call void @llvm.dbg.value(metadata i8* %2, metadata !2844, metadata !DIExpression()), !dbg !2845
  %call5 = call i8* @memcpy(i8* nonnull %2, i8* %call3, i64 %call4) #9, !dbg !2861
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %call4, !dbg !2862
  store i8 10, i8* %arrayidx, align 1, !dbg !2863
  %call6 = call %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader* %pfile, i8* nonnull %2, i64 %call4, i32 1) #9, !dbg !2864
  call void @_cpp_clean_line(%struct.cpp_reader* %pfile) #9, !dbg !2865
  %call7 = call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %pfile) #9, !dbg !2866
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !2867
  store %struct.cpp_token* %call7, %struct.cpp_token** %cur_token, align 8, !dbg !2868
  %call8 = call %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %pfile) #9, !dbg !2869
  call void @_cpp_push_token_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* null, %struct.cpp_token* %call8, i32 1) #11, !dbg !2870
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2871
  %3 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !2871
  %cur = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %3, i64 0, i32 0, !dbg !2873
  %4 = load i8*, i8** %cur, align 8, !dbg !2873
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %3, i64 0, i32 4, !dbg !2874
  %5 = load i8*, i8** %rlimit, align 8, !dbg !2874
  %cmp10 = icmp eq i8* %4, %5, !dbg !2875
  br i1 %cmp10, label %if.end13, label %if.then11, !dbg !2876

if.then11:                                        ; preds = %if.end2
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !2877
  %6 = load i8*, i8** %str, align 8, !dbg !2877
  %call12 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %6) #9, !dbg !2878
  br label %if.end13, !dbg !2878

if.end13:                                         ; preds = %if.end2, %if.then11
  call void @_cpp_pop_buffer(%struct.cpp_reader* %pfile) #9, !dbg !2879
  br label %cleanup, !dbg !2880

cleanup:                                          ; preds = %if.then, %if.end13, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %if.end13 ], [ 0, %if.then ], !dbg !2845
  ret i32 %retval.0, !dbg !2881
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._cpp_buff* @collect_args(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, %struct._cpp_buff** %pragma_buff) unnamed_addr #2 !dbg !2882 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2886, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !2887, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff** %pragma_buff, metadata !2888, metadata !DIExpression()), !dbg !2914
  %macro1 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 4, i32 0, !dbg !2915
  %0 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8, !dbg !2915
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %0, metadata !2891, metadata !DIExpression()), !dbg !2914
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %0, i64 0, i32 4, !dbg !2916
  %1 = load i16, i16* %paramc, align 8, !dbg !2916
  %tobool = icmp eq i16 %1, 0, !dbg !2918
  br i1 %tobool, label %if.end, label %if.then, !dbg !2919

if.then:                                          ; preds = %entry
  %phitmp = zext i16 %1 to i64, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %phitmp, metadata !2895, metadata !DIExpression()), !dbg !2914
  br label %if.end, !dbg !2920

if.end:                                           ; preds = %entry, %if.then
  %argc.0 = phi i64 [ %phitmp, %if.then ], [ 1, %entry ]
  %mul = mul nuw nsw i64 %argc.0, 432, !dbg !2921
  %call = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 %mul) #9, !dbg !2922
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call, metadata !2890, metadata !DIExpression()), !dbg !2914
  %base = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %call, i64 0, i32 1, !dbg !2923
  %2 = bitcast i8** %base to %struct.macro_arg**, !dbg !2923
  %3 = load %struct.macro_arg*, %struct.macro_arg** %2, align 8, !dbg !2923
  call void @llvm.dbg.value(metadata %struct.macro_arg* %3, metadata !2892, metadata !DIExpression()), !dbg !2914
  %4 = bitcast %struct.macro_arg* %3 to i8*, !dbg !2924
  %mul5 = shl nuw nsw i64 %argc.0, 5, !dbg !2925
  %call6 = tail call i8* @memset(i8* %4, i32 0, i64 %mul5) #9, !dbg !2926
  %arrayidx = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %3, i64 %argc.0, !dbg !2927
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %call, i64 0, i32 2, !dbg !2928
  %5 = bitcast i8** %cur to %struct.macro_arg**, !dbg !2929
  store %struct.macro_arg* %arrayidx, %struct.macro_arg** %5, align 8, !dbg !2929
  call void @llvm.dbg.value(metadata %struct.macro_arg* %3, metadata !2893, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 0, metadata !2895, metadata !DIExpression()), !dbg !2914
  %parsing_args = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 9, !dbg !2930
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !2930
  %variadic = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %0, i64 0, i32 5, !dbg !2931
  %eof = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 44, !dbg !2934
  br label %do.body, !dbg !2935

do.body:                                          ; preds = %do.cond174, %if.end
  %arg.0 = phi %struct.macro_arg* [ %3, %if.end ], [ %arg.2, %do.cond174 ], !dbg !2914
  %argc.1 = phi i32 [ 0, %if.end ], [ %inc, %do.cond174 ], !dbg !2914
  %buff.0 = phi %struct._cpp_buff* [ %call, %if.end ], [ %buff.215, %do.cond174 ], !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.0, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 %argc.1, metadata !2895, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct.macro_arg* %arg.0, metadata !2893, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 0, metadata !2896, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 0, metadata !2898, metadata !DIExpression()), !dbg !2934
  %inc = add i32 %argc.1, 1, !dbg !2936
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2895, metadata !DIExpression()), !dbg !2914
  %cur7 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %buff.0, i64 0, i32 2, !dbg !2937
  %6 = bitcast i8** %cur7 to i64*, !dbg !2937
  %7 = load i64, i64* %6, align 8, !dbg !2937
  %8 = bitcast %struct.macro_arg* %arg.0 to i64*, !dbg !2938
  store i64 %7, i64* %8, align 8, !dbg !2938
  %first8 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %arg.0, i64 0, i32 0, !dbg !2939
  br label %for.cond.outer, !dbg !2941

for.cond.outer:                                   ; preds = %if.end138, %do.body
  %buff.1.ph = phi %struct._cpp_buff* [ %buff.214, %if.end138 ], [ %buff.0, %do.body ]
  %paren_depth.0.ph = phi i32 [ %paren_depth.3, %if.end138 ], [ 0, %do.body ]
  %ntokens.0.ph = phi i32 [ %inc140, %if.end138 ], [ 0, %do.body ]
  %add = add i32 %ntokens.0.ph, 2, !dbg !2939
  %idxprom9 = zext i32 %add to i64, !dbg !2939
  %cmp21 = icmp eq i32 %ntokens.0.ph, 0, !dbg !2942
  br i1 %cmp21, label %for.cond.outer.split.us, label %for.cond.outer.for.cond.outer.split_crit_edge, !dbg !2945

for.cond.outer.for.cond.outer.split_crit_edge:    ; preds = %for.cond.outer
  br label %for.cond, !dbg !2945

for.cond.outer.split.us:                          ; preds = %for.cond.outer
  br label %for.cond.us, !dbg !2945

for.cond.us:                                      ; preds = %for.cond.backedge.us, %for.cond.outer.split.us
  %buff.1.us = phi %struct._cpp_buff* [ %buff.1.ph, %for.cond.outer.split.us ], [ %buff.2.us, %for.cond.backedge.us ], !dbg !2914
  call void @llvm.dbg.value(metadata i32 %ntokens.0.ph, metadata !2898, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %paren_depth.0.ph, metadata !2896, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.1.us, metadata !2889, metadata !DIExpression()), !dbg !2914
  %9 = load %struct.cpp_token**, %struct.cpp_token*** %first8, align 8, !dbg !2946
  %arrayidx10.us = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %9, i64 %idxprom9, !dbg !2947
  %10 = bitcast %struct.cpp_token** %arrayidx10.us to i8*, !dbg !2948
  %limit.us = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %buff.1.us, i64 0, i32 3, !dbg !2949
  %11 = load i8*, i8** %limit.us, align 8, !dbg !2949
  %cmp.us = icmp ult i8* %11, %10, !dbg !2950
  br i1 %cmp.us, label %if.then12.us, label %if.end16.us, !dbg !2945

if.then12.us:                                     ; preds = %for.cond.us
  %call13.us = tail call %struct._cpp_buff* @_cpp_append_extend_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* %buff.1.us, i64 8000) #9, !dbg !2951
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call13.us, metadata !2889, metadata !DIExpression()), !dbg !2914
  %cur14.us = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %call13.us, i64 0, i32 2, !dbg !2953
  %12 = bitcast i8** %cur14.us to i64*, !dbg !2953
  %13 = load i64, i64* %12, align 8, !dbg !2953
  store i64 %13, i64* %8, align 8, !dbg !2954
  br label %if.end16.us, !dbg !2955

if.end16.us:                                      ; preds = %if.then12.us, %for.cond.us
  %buff.2.us = phi %struct._cpp_buff* [ %call13.us, %if.then12.us ], [ %buff.1.us, %for.cond.us ], !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us, metadata !2889, metadata !DIExpression()), !dbg !2914
  %call17.us = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #11, !dbg !2956
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call17.us, metadata !2894, metadata !DIExpression()), !dbg !2914
  %type.us = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call17.us, i64 0, i32 1, !dbg !2957
  %bf.load.us = load i8, i8* %type.us, align 4, !dbg !2957
  %cmp18.us = icmp eq i8 %bf.load.us, 72, !dbg !2958
  br i1 %cmp18.us, label %if.then20.us, label %if.else25.us, !dbg !2959

if.else25.us:                                     ; preds = %if.end16.us
  %cmp29.us = icmp eq i8 %bf.load.us, 20, !dbg !2960
  br i1 %cmp29.us, label %if.then31.us-lcssa.us, label %if.else33.us, !dbg !2961

if.else33.us:                                     ; preds = %if.else25.us
  %cmp37.us = icmp eq i8 %bf.load.us, 21, !dbg !2962
  br i1 %cmp37.us, label %if.then39.us-lcssa.us, label %if.else44.us, !dbg !2963

if.else44.us:                                     ; preds = %if.else33.us
  %cmp48.us = icmp eq i8 %bf.load.us, 19, !dbg !2964
  br i1 %cmp48.us, label %if.then50.us-lcssa.us, label %if.else63.us, !dbg !2965

if.else63.us:                                     ; preds = %if.else44.us
  %cmp67.us = icmp eq i8 %bf.load.us, 22, !dbg !2966
  br i1 %cmp67.us, label %for.end.loopexit.us-lcssa.us, label %lor.lhs.false.us, !dbg !2967

lor.lhs.false.us:                                 ; preds = %if.else63.us
  %cmp72.us = icmp eq i8 %bf.load.us, 37, !dbg !2968
  br i1 %cmp72.us, label %land.lhs.true74.us, label %if.else78.us, !dbg !2969

land.lhs.true74.us:                               ; preds = %lor.lhs.false.us
  %flags.us = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call17.us, i64 0, i32 2, !dbg !2970
  %14 = load i16, i16* %flags.us, align 2, !dbg !2970
  %15 = and i16 %14, 64, !dbg !2971
  %tobool76.us = icmp eq i16 %15, 0, !dbg !2971
  br i1 %tobool76.us, label %if.else78.us, label %for.end.loopexit.us-lcssa.us, !dbg !2972

if.else78.us:                                     ; preds = %land.lhs.true74.us, %lor.lhs.false.us
  %cmp82.us = icmp eq i8 %bf.load.us, 70, !dbg !2973
  br i1 %cmp82.us, label %if.then84.us, label %if.end138.loopexit.us-lcssa.us, !dbg !2974

if.then84.us:                                     ; preds = %if.else78.us
  %call85.us = tail call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %pfile) #9, !dbg !2975
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call85.us, metadata !2899, metadata !DIExpression()), !dbg !2930
  %16 = bitcast %struct.cpp_token* %call85.us to i8*, !dbg !2976
  %17 = bitcast %struct.cpp_token* %call17.us to i8*, !dbg !2976
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false), !dbg !2976
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call85.us, metadata !2894, metadata !DIExpression()), !dbg !2914
  br label %do.body86.us, !dbg !2977

do.body86.us:                                     ; preds = %if.end118.us, %if.then84.us
  %token.0.us = phi %struct.cpp_token* [ %call85.us, %if.then84.us ], [ %call119.us, %if.end118.us ], !dbg !2930
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token.0.us, metadata !2894, metadata !DIExpression()), !dbg !2914
  %18 = load %struct._cpp_buff*, %struct._cpp_buff** %pragma_buff, align 8, !dbg !2978
  %cmp87.us = icmp eq %struct._cpp_buff* %18, null, !dbg !2979
  %19 = ptrtoint %struct._cpp_buff* %18 to i64, !dbg !2980
  br i1 %cmp87.us, label %if.then94.us, label %lor.lhs.false89.us, !dbg !2980

lor.lhs.false89.us:                               ; preds = %do.body86.us
  %limit90.us = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %18, i64 0, i32 3, !dbg !2981
  %20 = bitcast i8** %limit90.us to i64*, !dbg !2981
  %21 = load i64, i64* %20, align 8, !dbg !2981
  %cur91.us = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %18, i64 0, i32 2, !dbg !2981
  %22 = bitcast i8** %cur91.us to i64*, !dbg !2981
  %23 = load i64, i64* %22, align 8, !dbg !2981
  %sub.ptr.sub.us = sub i64 %21, %23, !dbg !2981
  %cmp92.us = icmp ult i64 %sub.ptr.sub.us, 8, !dbg !2982
  br i1 %cmp92.us, label %if.then94.us, label %if.end109.us, !dbg !2983

if.then94.us:                                     ; preds = %lor.lhs.false89.us, %do.body86.us
  br i1 %cmp87.us, label %if.then97.us, label %if.else99.us, !dbg !2984

if.else99.us:                                     ; preds = %if.then94.us
  %cur100.us = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %18, i64 0, i32 2, !dbg !2985
  %24 = bitcast i8** %cur100.us to i64*, !dbg !2985
  %25 = load i64, i64* %24, align 8, !dbg !2985
  %base101.us = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %18, i64 0, i32 1, !dbg !2988
  %26 = bitcast i8** %base101.us to i64*, !dbg !2988
  %27 = load i64, i64* %26, align 8, !dbg !2988
  %sub.ptr.sub104.us = sub i64 %25, %27, !dbg !2989
  %mul105.us = shl nsw i64 %sub.ptr.sub104.us, 1, !dbg !2990
  %call106.us = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 %mul105.us) #9, !dbg !2991
  store %struct._cpp_buff* %call106.us, %struct._cpp_buff** %pragma_buff, align 8, !dbg !2992
  %28 = bitcast %struct._cpp_buff* %call106.us to i64*, !dbg !2993
  store i64 %19, i64* %28, align 8, !dbg !2993
  %.pre19 = load %struct._cpp_buff*, %struct._cpp_buff** %pragma_buff, align 8, !dbg !2994
  br label %if.end109.us

if.then97.us:                                     ; preds = %if.then94.us
  %call98.us = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 256) #9, !dbg !2995
  store %struct._cpp_buff* %call98.us, %struct._cpp_buff** %pragma_buff, align 8, !dbg !2996
  br label %if.end109.us, !dbg !2997

if.end109.us:                                     ; preds = %if.then97.us, %if.else99.us, %lor.lhs.false89.us
  %29 = phi %struct._cpp_buff* [ %call98.us, %if.then97.us ], [ %.pre19, %if.else99.us ], [ %18, %lor.lhs.false89.us ], !dbg !2994
  %cur110.us = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %29, i64 0, i32 2, !dbg !2994
  %30 = bitcast i8** %cur110.us to %struct.cpp_token***, !dbg !2994
  %31 = load %struct.cpp_token**, %struct.cpp_token*** %30, align 8, !dbg !2994
  store %struct.cpp_token* %token.0.us, %struct.cpp_token** %31, align 8, !dbg !2998
  %32 = load %struct._cpp_buff*, %struct._cpp_buff** %pragma_buff, align 8, !dbg !2999
  %cur111.us = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %32, i64 0, i32 2, !dbg !2999
  %33 = load i8*, i8** %cur111.us, align 8, !dbg !3000
  %add.ptr.us = getelementptr inbounds i8, i8* %33, i64 8, !dbg !3000
  store i8* %add.ptr.us, i8** %cur111.us, align 8, !dbg !3000
  %type112.us = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.0.us, i64 0, i32 1, !dbg !3001
  %bf.load113.us = load i8, i8* %type112.us, align 4, !dbg !3001
  %cmp115.us = icmp eq i8 %bf.load113.us, 71, !dbg !3003
  br i1 %cmp115.us, label %do.end.us, label %if.end118.us, !dbg !3004

if.end118.us:                                     ; preds = %if.end109.us
  %call119.us = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #11, !dbg !3005
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call119.us, metadata !2894, metadata !DIExpression()), !dbg !2914
  %type120.us = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call119.us, i64 0, i32 1, !dbg !3006
  %bf.load121.us = load i8, i8* %type120.us, align 4, !dbg !3006
  %cmp123.us = icmp eq i8 %bf.load121.us, 22, !dbg !3007
  br i1 %cmp123.us, label %do.end.us, label %do.body86.us, !dbg !3008, !llvm.loop !3009

do.end.us:                                        ; preds = %if.end118.us, %if.end109.us
  %token.1.us = phi %struct.cpp_token* [ %call119.us, %if.end118.us ], [ %token.0.us, %if.end109.us ], !dbg !2930
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token.1.us, metadata !2894, metadata !DIExpression()), !dbg !2914
  store i8 2, i8* %parsing_args, align 1, !dbg !3011
  store i8 1, i8* %prevent_expansion, align 8, !dbg !3012
  %type126.us = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.1.us, i64 0, i32 1, !dbg !3013
  %bf.load127.us = load i8, i8* %type126.us, align 4, !dbg !3013
  %cmp129.us = icmp eq i8 %bf.load127.us, 22, !dbg !3015
  br i1 %cmp129.us, label %for.end.loopexit.us-lcssa.us, label %for.cond.backedge.us

if.then20.us:                                     ; preds = %if.end16.us
  br label %for.cond.backedge.us, !dbg !3016

for.cond.backedge.us:                             ; preds = %if.then20.us, %do.end.us
  br label %for.cond.us, !dbg !2934, !llvm.loop !3017

if.then31.us-lcssa.us:                            ; preds = %if.else25.us
  %buff.2.us.lcssa = phi %struct._cpp_buff* [ %buff.2.us, %if.else25.us ], !dbg !2914
  %call17.us.lcssa = phi %struct.cpp_token* [ %call17.us, %if.else25.us ], !dbg !2956
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us.lcssa, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us.lcssa, metadata !2889, metadata !DIExpression()), !dbg !2914
  br label %if.then31, !dbg !3020

if.then39.us-lcssa.us:                            ; preds = %if.else33.us
  %buff.2.us.lcssa68 = phi %struct._cpp_buff* [ %buff.2.us, %if.else33.us ], !dbg !2914
  %call17.us.lcssa64 = phi %struct.cpp_token* [ %call17.us, %if.else33.us ], !dbg !2956
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us.lcssa68, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us.lcssa68, metadata !2889, metadata !DIExpression()), !dbg !2914
  br label %if.then39, !dbg !3021

if.then50.us-lcssa.us:                            ; preds = %if.else44.us
  %buff.2.us.lcssa69 = phi %struct._cpp_buff* [ %buff.2.us, %if.else44.us ], !dbg !2914
  %call17.us.lcssa65 = phi %struct.cpp_token* [ %call17.us, %if.else44.us ], !dbg !2956
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us.lcssa69, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us.lcssa69, metadata !2889, metadata !DIExpression()), !dbg !2914
  br label %if.then50, !dbg !3024

for.end.loopexit.us-lcssa.us:                     ; preds = %do.end.us, %land.lhs.true74.us, %if.else63.us
  %ntokens.0.ph.lcssa72 = phi i32 [ %ntokens.0.ph, %do.end.us ], [ %ntokens.0.ph, %land.lhs.true74.us ], [ %ntokens.0.ph, %if.else63.us ]
  %buff.2.us.lcssa70 = phi %struct._cpp_buff* [ %buff.2.us, %do.end.us ], [ %buff.2.us, %land.lhs.true74.us ], [ %buff.2.us, %if.else63.us ], !dbg !2914
  %token.2.ph.ph.us = phi %struct.cpp_token* [ %token.1.us, %do.end.us ], [ %call17.us, %land.lhs.true74.us ], [ %call17.us, %if.else63.us ]
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us.lcssa70, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us.lcssa70, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us.lcssa70, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us.lcssa70, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us.lcssa70, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us.lcssa70, metadata !2889, metadata !DIExpression()), !dbg !2914
  br label %for.end.loopexit, !dbg !3025

if.end138.loopexit.us-lcssa.us:                   ; preds = %if.else78.us
  %buff.2.us.lcssa71 = phi %struct._cpp_buff* [ %buff.2.us, %if.else78.us ], !dbg !2914
  %call17.us.lcssa67 = phi %struct.cpp_token* [ %call17.us, %if.else78.us ], !dbg !2956
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us.lcssa71, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.us.lcssa71, metadata !2889, metadata !DIExpression()), !dbg !2914
  br label %if.end138.loopexit, !dbg !3026

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.outer.for.cond.outer.split_crit_edge
  %buff.1 = phi %struct._cpp_buff* [ %buff.1.ph, %for.cond.outer.for.cond.outer.split_crit_edge ], [ %buff.2, %for.cond.backedge ], !dbg !2914
  call void @llvm.dbg.value(metadata i32 %ntokens.0.ph, metadata !2898, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %paren_depth.0.ph, metadata !2896, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.1, metadata !2889, metadata !DIExpression()), !dbg !2914
  %34 = load %struct.cpp_token**, %struct.cpp_token*** %first8, align 8, !dbg !2946
  %arrayidx10 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %34, i64 %idxprom9, !dbg !2947
  %35 = bitcast %struct.cpp_token** %arrayidx10 to i8*, !dbg !2948
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %buff.1, i64 0, i32 3, !dbg !2949
  %36 = load i8*, i8** %limit, align 8, !dbg !2949
  %cmp = icmp ult i8* %36, %35, !dbg !2950
  br i1 %cmp, label %if.then12, label %if.end16, !dbg !2945

if.then12:                                        ; preds = %for.cond
  %call13 = tail call %struct._cpp_buff* @_cpp_append_extend_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* %buff.1, i64 8000) #9, !dbg !2951
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call13, metadata !2889, metadata !DIExpression()), !dbg !2914
  %cur14 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %call13, i64 0, i32 2, !dbg !2953
  %37 = bitcast i8** %cur14 to i64*, !dbg !2953
  %38 = load i64, i64* %37, align 8, !dbg !2953
  store i64 %38, i64* %8, align 8, !dbg !2954
  br label %if.end16, !dbg !2955

if.end16:                                         ; preds = %if.then12, %for.cond
  %buff.2 = phi %struct._cpp_buff* [ %call13, %if.then12 ], [ %buff.1, %for.cond ], !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2, metadata !2889, metadata !DIExpression()), !dbg !2914
  %call17 = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #11, !dbg !2956
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call17, metadata !2894, metadata !DIExpression()), !dbg !2914
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call17, i64 0, i32 1, !dbg !2957
  %bf.load = load i8, i8* %type, align 4, !dbg !2957
  %cmp18 = icmp eq i8 %bf.load, 72, !dbg !2958
  br i1 %cmp18, label %if.then20, label %if.else25, !dbg !2959

if.then20:                                        ; preds = %if.end16
  %buff.2.lcssa57 = phi %struct._cpp_buff* [ %buff.2, %if.end16 ], !dbg !2914
  %call17.lcssa50 = phi %struct.cpp_token* [ %call17, %if.end16 ], !dbg !2956
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa57, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa57, metadata !2889, metadata !DIExpression()), !dbg !2914
  br label %if.end138.loopexit.us-lcssa, !dbg !3016

for.cond.backedge:                                ; preds = %do.end
  br label %for.cond, !dbg !2934, !llvm.loop !3017

if.else25:                                        ; preds = %if.end16
  %cmp29 = icmp eq i8 %bf.load, 20, !dbg !2960
  br i1 %cmp29, label %if.then31.us-lcssa, label %if.else33, !dbg !2961

if.then31.us-lcssa:                               ; preds = %if.else25
  %buff.2.lcssa58 = phi %struct._cpp_buff* [ %buff.2, %if.else25 ], !dbg !2914
  %call17.lcssa51 = phi %struct.cpp_token* [ %call17, %if.else25 ], !dbg !2956
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa58, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa58, metadata !2889, metadata !DIExpression()), !dbg !2914
  br label %if.then31, !dbg !3020

if.then31:                                        ; preds = %if.then31.us-lcssa.us, %if.then31.us-lcssa
  %buff.2.lcssa = phi %struct._cpp_buff* [ %buff.2.lcssa58, %if.then31.us-lcssa ], [ %buff.2.us.lcssa, %if.then31.us-lcssa.us ], !dbg !2914
  %call17.lcssa = phi %struct.cpp_token* [ %call17.lcssa51, %if.then31.us-lcssa ], [ %call17.us.lcssa, %if.then31.us-lcssa.us ], !dbg !2956
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa, metadata !2889, metadata !DIExpression()), !dbg !2914
  %inc32 = add i32 %paren_depth.0.ph, 1, !dbg !3020
  call void @llvm.dbg.value(metadata i32 %inc32, metadata !2896, metadata !DIExpression()), !dbg !2934
  br label %if.end138, !dbg !3027

if.else33:                                        ; preds = %if.else25
  %cmp37 = icmp eq i8 %bf.load, 21, !dbg !2962
  br i1 %cmp37, label %if.then39.us-lcssa, label %if.else44, !dbg !2963

if.then39.us-lcssa:                               ; preds = %if.else33
  %buff.2.lcssa59 = phi %struct._cpp_buff* [ %buff.2, %if.else33 ], !dbg !2914
  %call17.lcssa52 = phi %struct.cpp_token* [ %call17, %if.else33 ], !dbg !2956
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa59, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa59, metadata !2889, metadata !DIExpression()), !dbg !2914
  br label %if.then39, !dbg !3021

if.then39:                                        ; preds = %if.then39.us-lcssa.us, %if.then39.us-lcssa
  %buff.2.lcssa10 = phi %struct._cpp_buff* [ %buff.2.lcssa59, %if.then39.us-lcssa ], [ %buff.2.us.lcssa68, %if.then39.us-lcssa.us ], !dbg !2914
  %call17.lcssa4 = phi %struct.cpp_token* [ %call17.lcssa52, %if.then39.us-lcssa ], [ %call17.us.lcssa64, %if.then39.us-lcssa.us ], !dbg !2956
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa10, metadata !2889, metadata !DIExpression()), !dbg !2914
  %dec = add i32 %paren_depth.0.ph, -1, !dbg !3021
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2896, metadata !DIExpression()), !dbg !2934
  %cmp40 = icmp eq i32 %paren_depth.0.ph, 0, !dbg !3028
  br i1 %cmp40, label %for.end.loopexit3, label %if.end138, !dbg !3029

if.else44:                                        ; preds = %if.else33
  %cmp48 = icmp eq i8 %bf.load, 19, !dbg !2964
  br i1 %cmp48, label %if.then50.us-lcssa, label %if.else63, !dbg !2965

if.then50.us-lcssa:                               ; preds = %if.else44
  %buff.2.lcssa60 = phi %struct._cpp_buff* [ %buff.2, %if.else44 ], !dbg !2914
  %call17.lcssa53 = phi %struct.cpp_token* [ %call17, %if.else44 ], !dbg !2956
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa60, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa60, metadata !2889, metadata !DIExpression()), !dbg !2914
  br label %if.then50, !dbg !3024

if.then50:                                        ; preds = %if.then50.us-lcssa.us, %if.then50.us-lcssa
  %buff.2.lcssa11 = phi %struct._cpp_buff* [ %buff.2.lcssa60, %if.then50.us-lcssa ], [ %buff.2.us.lcssa69, %if.then50.us-lcssa.us ], !dbg !2914
  %call17.lcssa5 = phi %struct.cpp_token* [ %call17.lcssa53, %if.then50.us-lcssa ], [ %call17.us.lcssa65, %if.then50.us-lcssa.us ], !dbg !2956
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa11, metadata !2889, metadata !DIExpression()), !dbg !2914
  %cmp51 = icmp eq i32 %paren_depth.0.ph, 0, !dbg !3024
  br i1 %cmp51, label %land.lhs.true, label %if.end138, !dbg !3030

land.lhs.true:                                    ; preds = %if.then50
  %bf.load53 = load i8, i8* %variadic, align 2, !dbg !3031
  %bf.clear = and i8 %bf.load53, 2, !dbg !3031
  %tobool55 = icmp eq i8 %bf.clear, 0, !dbg !3032
  br i1 %tobool55, label %for.end.loopexit3, label %land.lhs.true56, !dbg !3033

land.lhs.true56:                                  ; preds = %land.lhs.true
  %39 = load i16, i16* %paramc, align 8, !dbg !3034
  %conv58 = zext i16 %39 to i32, !dbg !3035
  %cmp59 = icmp eq i32 %inc, %conv58, !dbg !3036
  br i1 %cmp59, label %if.end138, label %for.end.loopexit3, !dbg !3037

if.else63:                                        ; preds = %if.else44
  %cmp67 = icmp eq i8 %bf.load, 22, !dbg !2966
  br i1 %cmp67, label %for.end.loopexit.us-lcssa, label %lor.lhs.false, !dbg !2967

lor.lhs.false:                                    ; preds = %if.else63
  %cmp72 = icmp eq i8 %bf.load, 37, !dbg !2968
  br i1 %cmp72, label %land.lhs.true74, label %if.else78, !dbg !2969

land.lhs.true74:                                  ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call17, i64 0, i32 2, !dbg !2970
  %40 = load i16, i16* %flags, align 2, !dbg !2970
  %41 = and i16 %40, 64, !dbg !2971
  %tobool76 = icmp eq i16 %41, 0, !dbg !2971
  br i1 %tobool76, label %if.else78, label %for.end.loopexit.us-lcssa, !dbg !2972

if.else78:                                        ; preds = %land.lhs.true74, %lor.lhs.false
  %cmp82 = icmp eq i8 %bf.load, 70, !dbg !2973
  br i1 %cmp82, label %if.then84, label %if.end138.loopexit.us-lcssa.loopexit, !dbg !2974

if.then84:                                        ; preds = %if.else78
  %call85 = tail call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %pfile) #9, !dbg !2975
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call85, metadata !2899, metadata !DIExpression()), !dbg !2930
  %42 = bitcast %struct.cpp_token* %call85 to i8*, !dbg !2976
  %43 = bitcast %struct.cpp_token* %call17 to i8*, !dbg !2976
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 24, i1 false), !dbg !2976
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call85, metadata !2894, metadata !DIExpression()), !dbg !2914
  br label %do.body86, !dbg !2977

do.body86:                                        ; preds = %if.end118, %if.then84
  %token.0 = phi %struct.cpp_token* [ %call85, %if.then84 ], [ %call119, %if.end118 ], !dbg !2930
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token.0, metadata !2894, metadata !DIExpression()), !dbg !2914
  %44 = load %struct._cpp_buff*, %struct._cpp_buff** %pragma_buff, align 8, !dbg !2978
  %cmp87 = icmp eq %struct._cpp_buff* %44, null, !dbg !2979
  %45 = ptrtoint %struct._cpp_buff* %44 to i64, !dbg !2980
  br i1 %cmp87, label %if.then94, label %lor.lhs.false89, !dbg !2980

lor.lhs.false89:                                  ; preds = %do.body86
  %limit90 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %44, i64 0, i32 3, !dbg !2981
  %46 = bitcast i8** %limit90 to i64*, !dbg !2981
  %47 = load i64, i64* %46, align 8, !dbg !2981
  %cur91 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %44, i64 0, i32 2, !dbg !2981
  %48 = bitcast i8** %cur91 to i64*, !dbg !2981
  %49 = load i64, i64* %48, align 8, !dbg !2981
  %sub.ptr.sub = sub i64 %47, %49, !dbg !2981
  %cmp92 = icmp ult i64 %sub.ptr.sub, 8, !dbg !2982
  br i1 %cmp92, label %if.then94, label %if.end109, !dbg !2983

if.then94:                                        ; preds = %lor.lhs.false89, %do.body86
  br i1 %cmp87, label %if.then97, label %if.else99, !dbg !2984

if.then97:                                        ; preds = %if.then94
  %call98 = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 256) #9, !dbg !2995
  store %struct._cpp_buff* %call98, %struct._cpp_buff** %pragma_buff, align 8, !dbg !2996
  br label %if.end109, !dbg !2997

if.else99:                                        ; preds = %if.then94
  %cur100 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %44, i64 0, i32 2, !dbg !2985
  %50 = bitcast i8** %cur100 to i64*, !dbg !2985
  %51 = load i64, i64* %50, align 8, !dbg !2985
  %base101 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %44, i64 0, i32 1, !dbg !2988
  %52 = bitcast i8** %base101 to i64*, !dbg !2988
  %53 = load i64, i64* %52, align 8, !dbg !2988
  %sub.ptr.sub104 = sub i64 %51, %53, !dbg !2989
  %mul105 = shl nsw i64 %sub.ptr.sub104, 1, !dbg !2990
  %call106 = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 %mul105) #9, !dbg !2991
  store %struct._cpp_buff* %call106, %struct._cpp_buff** %pragma_buff, align 8, !dbg !2992
  %54 = bitcast %struct._cpp_buff* %call106 to i64*, !dbg !2993
  store i64 %45, i64* %54, align 8, !dbg !2993
  %.pre = load %struct._cpp_buff*, %struct._cpp_buff** %pragma_buff, align 8, !dbg !2994
  br label %if.end109

if.end109:                                        ; preds = %if.then97, %if.else99, %lor.lhs.false89
  %55 = phi %struct._cpp_buff* [ %call98, %if.then97 ], [ %.pre, %if.else99 ], [ %44, %lor.lhs.false89 ], !dbg !2994
  %cur110 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %55, i64 0, i32 2, !dbg !2994
  %56 = bitcast i8** %cur110 to %struct.cpp_token***, !dbg !2994
  %57 = load %struct.cpp_token**, %struct.cpp_token*** %56, align 8, !dbg !2994
  store %struct.cpp_token* %token.0, %struct.cpp_token** %57, align 8, !dbg !2998
  %58 = load %struct._cpp_buff*, %struct._cpp_buff** %pragma_buff, align 8, !dbg !2999
  %cur111 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %58, i64 0, i32 2, !dbg !2999
  %59 = load i8*, i8** %cur111, align 8, !dbg !3000
  %add.ptr = getelementptr inbounds i8, i8* %59, i64 8, !dbg !3000
  store i8* %add.ptr, i8** %cur111, align 8, !dbg !3000
  %type112 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.0, i64 0, i32 1, !dbg !3001
  %bf.load113 = load i8, i8* %type112, align 4, !dbg !3001
  %cmp115 = icmp eq i8 %bf.load113, 71, !dbg !3003
  br i1 %cmp115, label %do.end, label %if.end118, !dbg !3004

if.end118:                                        ; preds = %if.end109
  %call119 = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #11, !dbg !3005
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call119, metadata !2894, metadata !DIExpression()), !dbg !2914
  %type120 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call119, i64 0, i32 1, !dbg !3006
  %bf.load121 = load i8, i8* %type120, align 4, !dbg !3006
  %cmp123 = icmp eq i8 %bf.load121, 22, !dbg !3007
  br i1 %cmp123, label %do.end, label %do.body86, !dbg !3008, !llvm.loop !3009

do.end:                                           ; preds = %if.end118, %if.end109
  %token.1 = phi %struct.cpp_token* [ %call119, %if.end118 ], [ %token.0, %if.end109 ], !dbg !2930
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token.1, metadata !2894, metadata !DIExpression()), !dbg !2914
  store i8 2, i8* %parsing_args, align 1, !dbg !3011
  store i8 1, i8* %prevent_expansion, align 8, !dbg !3012
  %type126 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.1, i64 0, i32 1, !dbg !3013
  %bf.load127 = load i8, i8* %type126, align 4, !dbg !3013
  %cmp129 = icmp eq i8 %bf.load127, 22, !dbg !3015
  br i1 %cmp129, label %for.end.loopexit.us-lcssa, label %for.cond.backedge

if.end138.loopexit.us-lcssa.loopexit:             ; preds = %if.else78
  %buff.2.lcssa62 = phi %struct._cpp_buff* [ %buff.2, %if.else78 ], !dbg !2914
  %call17.lcssa55 = phi %struct.cpp_token* [ %call17, %if.else78 ], !dbg !2956
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa62, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa62, metadata !2889, metadata !DIExpression()), !dbg !2914
  br label %if.end138.loopexit.us-lcssa, !dbg !3026

if.end138.loopexit.us-lcssa:                      ; preds = %if.end138.loopexit.us-lcssa.loopexit, %if.then20
  %buff.263 = phi %struct._cpp_buff* [ %buff.2.lcssa62, %if.end138.loopexit.us-lcssa.loopexit ], [ %buff.2.lcssa57, %if.then20 ]
  %call1756 = phi %struct.cpp_token* [ %call17.lcssa55, %if.end138.loopexit.us-lcssa.loopexit ], [ %call17.lcssa50, %if.then20 ]
  br label %if.end138.loopexit, !dbg !3026

if.end138.loopexit:                               ; preds = %if.end138.loopexit.us-lcssa.us, %if.end138.loopexit.us-lcssa
  %buff.2.lcssa13 = phi %struct._cpp_buff* [ %buff.263, %if.end138.loopexit.us-lcssa ], [ %buff.2.us.lcssa71, %if.end138.loopexit.us-lcssa.us ], !dbg !2914
  %call17.lcssa7 = phi %struct.cpp_token* [ %call1756, %if.end138.loopexit.us-lcssa ], [ %call17.us.lcssa67, %if.end138.loopexit.us-lcssa.us ], !dbg !2956
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa13, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa13, metadata !2889, metadata !DIExpression()), !dbg !2914
  br label %if.end138, !dbg !3026

if.end138:                                        ; preds = %if.end138.loopexit, %if.then31, %land.lhs.true56, %if.then50, %if.then39
  %buff.214 = phi %struct._cpp_buff* [ %buff.2.lcssa, %if.then31 ], [ %buff.2.lcssa10, %if.then39 ], [ %buff.2.lcssa11, %if.then50 ], [ %buff.2.lcssa11, %land.lhs.true56 ], [ %buff.2.lcssa13, %if.end138.loopexit ]
  %call179 = phi %struct.cpp_token* [ %call17.lcssa, %if.then31 ], [ %call17.lcssa4, %if.then39 ], [ %call17.lcssa5, %if.then50 ], [ %call17.lcssa5, %land.lhs.true56 ], [ %call17.lcssa7, %if.end138.loopexit ]
  %paren_depth.3 = phi i32 [ %inc32, %if.then31 ], [ %dec, %if.then39 ], [ %paren_depth.0.ph, %if.then50 ], [ 0, %land.lhs.true56 ], [ %paren_depth.0.ph, %if.end138.loopexit ], !dbg !2934
  call void @llvm.dbg.value(metadata i32 %paren_depth.3, metadata !2896, metadata !DIExpression()), !dbg !2934
  %60 = load %struct.cpp_token**, %struct.cpp_token*** %first8, align 8, !dbg !3026
  %inc140 = add i32 %ntokens.0.ph, 1, !dbg !3038
  call void @llvm.dbg.value(metadata i32 %inc140, metadata !2898, metadata !DIExpression()), !dbg !2934
  %idxprom141 = zext i32 %ntokens.0.ph to i64, !dbg !3039
  %arrayidx142 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %60, i64 %idxprom141, !dbg !3039
  store %struct.cpp_token* %call179, %struct.cpp_token** %arrayidx142, align 8, !dbg !3040
  br label %for.cond.outer, !dbg !3041, !llvm.loop !3017

for.end.loopexit.us-lcssa:                        ; preds = %land.lhs.true74, %do.end, %if.else63
  %ntokens.0.ph.lcssa = phi i32 [ %ntokens.0.ph, %land.lhs.true74 ], [ %ntokens.0.ph, %do.end ], [ %ntokens.0.ph, %if.else63 ]
  %buff.2.lcssa61 = phi %struct._cpp_buff* [ %buff.2, %land.lhs.true74 ], [ %buff.2, %do.end ], [ %buff.2, %if.else63 ], !dbg !2914
  %token.2.ph.ph = phi %struct.cpp_token* [ %token.1, %do.end ], [ %call17, %land.lhs.true74 ], [ %call17, %if.else63 ]
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa61, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa61, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa61, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa61, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa61, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa61, metadata !2889, metadata !DIExpression()), !dbg !2914
  br label %for.end.loopexit, !dbg !3025

for.end.loopexit:                                 ; preds = %for.end.loopexit.us-lcssa.us, %for.end.loopexit.us-lcssa
  %ntokens.0.ph75 = phi i32 [ %ntokens.0.ph.lcssa, %for.end.loopexit.us-lcssa ], [ %ntokens.0.ph.lcssa72, %for.end.loopexit.us-lcssa.us ]
  %buff.2.lcssa12 = phi %struct._cpp_buff* [ %buff.2.lcssa61, %for.end.loopexit.us-lcssa ], [ %buff.2.us.lcssa70, %for.end.loopexit.us-lcssa.us ], !dbg !2914
  %token.2.ph = phi %struct.cpp_token* [ %token.2.ph.ph, %for.end.loopexit.us-lcssa ], [ %token.2.ph.ph.us, %for.end.loopexit.us-lcssa.us ]
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa12, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa12, metadata !2889, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %buff.2.lcssa12, metadata !2889, metadata !DIExpression()), !dbg !2914
  br label %for.end, !dbg !3025

for.end.loopexit3:                                ; preds = %if.then39, %land.lhs.true56, %land.lhs.true
  %ntokens.0.ph.lcssa73 = phi i32 [ %ntokens.0.ph, %if.then39 ], [ %ntokens.0.ph, %land.lhs.true56 ], [ %ntokens.0.ph, %land.lhs.true ]
  %buff.216 = phi %struct._cpp_buff* [ %buff.2.lcssa10, %if.then39 ], [ %buff.2.lcssa11, %land.lhs.true56 ], [ %buff.2.lcssa11, %land.lhs.true ]
  %call178 = phi %struct.cpp_token* [ %call17.lcssa4, %if.then39 ], [ %call17.lcssa5, %land.lhs.true56 ], [ %call17.lcssa5, %land.lhs.true ]
  br label %for.end, !dbg !3025

for.end:                                          ; preds = %for.end.loopexit3, %for.end.loopexit
  %ntokens.0.ph74 = phi i32 [ %ntokens.0.ph75, %for.end.loopexit ], [ %ntokens.0.ph.lcssa73, %for.end.loopexit3 ]
  %buff.215 = phi %struct._cpp_buff* [ %buff.2.lcssa12, %for.end.loopexit ], [ %buff.216, %for.end.loopexit3 ]
  %token.2 = phi %struct.cpp_token* [ %token.2.ph, %for.end.loopexit ], [ %call178, %for.end.loopexit3 ], !dbg !3042
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token.2, metadata !2894, metadata !DIExpression()), !dbg !2914
  %61 = zext i32 %ntokens.0.ph74 to i64, !dbg !3043
  br label %while.cond, !dbg !3043

while.cond:                                       ; preds = %while.body, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ %61, %for.end ], !dbg !2934
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2898, metadata !DIExpression()), !dbg !2934
  %cmp143 = icmp eq i64 %indvars.iv, 0, !dbg !3044
  br i1 %cmp143, label %while.cond.while.end_crit_edge, label %land.rhs, !dbg !3045

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %while.cond ], !dbg !2934
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa, metadata !2898, metadata !DIExpression()), !dbg !2934
  %.pre20 = load %struct.cpp_token**, %struct.cpp_token*** %first8, align 8, !dbg !3046
  br label %while.end, !dbg !3045

land.rhs:                                         ; preds = %while.cond
  %62 = load %struct.cpp_token**, %struct.cpp_token*** %first8, align 8, !dbg !3025
  %sub = add nuw nsw i64 %indvars.iv, 4294967295, !dbg !3047
  %idxprom146 = and i64 %sub, 4294967295, !dbg !3048
  %arrayidx147 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %62, i64 %idxprom146, !dbg !3048
  %63 = load %struct.cpp_token*, %struct.cpp_token** %arrayidx147, align 8, !dbg !3048
  %type148 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %63, i64 0, i32 1, !dbg !3049
  %bf.load149 = load i8, i8* %type148, align 4, !dbg !3049
  %cmp151 = icmp eq i8 %bf.load149, 72, !dbg !3050
  br i1 %cmp151, label %while.body, label %while.end.loopexit, !dbg !3043

while.body:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2898, metadata !DIExpression()), !dbg !2934
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3047
  br label %while.cond, !dbg !3043, !llvm.loop !3051

while.end.loopexit:                               ; preds = %land.rhs
  %.lcssa = phi %struct.cpp_token** [ %62, %land.rhs ], !dbg !3025
  %indvars.iv.lcssa76 = phi i64 [ %indvars.iv, %land.rhs ], !dbg !2934
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa76, metadata !2898, metadata !DIExpression()), !dbg !2934
  br label %while.end, !dbg !3053

while.end:                                        ; preds = %while.end.loopexit, %while.cond.while.end_crit_edge
  %indvars.iv77 = phi i64 [ %indvars.iv.lcssa, %while.cond.while.end_crit_edge ], [ %indvars.iv.lcssa76, %while.end.loopexit ]
  %64 = phi %struct.cpp_token** [ %.pre20, %while.cond.while.end_crit_edge ], [ %.lcssa, %while.end.loopexit ], !dbg !3046
  %ntokens.148 = trunc i64 %indvars.iv77 to i32, !dbg !2934
  call void @llvm.dbg.value(metadata i32 %ntokens.148, metadata !2898, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %ntokens.148, metadata !2898, metadata !DIExpression()), !dbg !2934
  %count = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %arg.0, i64 0, i32 3, !dbg !3053
  store i32 %ntokens.148, i32* %count, align 8, !dbg !3054
  %idxprom155 = and i64 %indvars.iv77, 4294967295, !dbg !3055
  %arrayidx156 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %64, i64 %idxprom155, !dbg !3055
  store %struct.cpp_token* %eof, %struct.cpp_token** %arrayidx156, align 8, !dbg !3056
  %65 = load i16, i16* %paramc, align 8, !dbg !3057
  %conv158 = zext i16 %65 to i32, !dbg !3059
  %cmp159 = icmp ugt i32 %inc, %conv158, !dbg !3060
  br i1 %cmp159, label %do.cond174, label %if.then161, !dbg !3061

if.then161:                                       ; preds = %while.end
  %66 = load %struct.cpp_token**, %struct.cpp_token*** %first8, align 8, !dbg !3062
  %add163 = add i64 %indvars.iv77, 1, !dbg !3064
  %idxprom164 = and i64 %add163, 4294967295, !dbg !3065
  %arrayidx165 = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %66, i64 %idxprom164, !dbg !3065
  %cur166 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %buff.215, i64 0, i32 2, !dbg !3066
  %67 = bitcast i8** %cur166 to %struct.cpp_token***, !dbg !3067
  store %struct.cpp_token** %arrayidx165, %struct.cpp_token*** %67, align 8, !dbg !3067
  %68 = load i16, i16* %paramc, align 8, !dbg !3068
  %conv168 = zext i16 %68 to i32, !dbg !3070
  %cmp169 = icmp eq i32 %inc, %conv168, !dbg !3071
  %incdec.ptr = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %arg.0, i64 1, !dbg !3072
  %spec.select = select i1 %cmp169, %struct.macro_arg* %arg.0, %struct.macro_arg* %incdec.ptr, !dbg !3073
  call void @llvm.dbg.value(metadata %struct.macro_arg* %spec.select, metadata !2893, metadata !DIExpression()), !dbg !2914
  br label %do.cond174, !dbg !3074

do.cond174:                                       ; preds = %while.end, %if.then161
  %69 = phi i16 [ %68, %if.then161 ], [ %65, %while.end ]
  %arg.2 = phi %struct.macro_arg* [ %spec.select, %if.then161 ], [ %arg.0, %while.end ], !dbg !2914
  call void @llvm.dbg.value(metadata %struct.macro_arg* %arg.2, metadata !2893, metadata !DIExpression()), !dbg !2914
  %type175 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token.2, i64 0, i32 1, !dbg !3075
  %bf.load176 = load i8, i8* %type175, align 4, !dbg !3075
  %70 = add i8 %bf.load176, -21, !dbg !3076
  %71 = icmp ult i8 %70, 2, !dbg !3076
  br i1 %71, label %do.end187, label %do.body, !dbg !3076, !llvm.loop !3077

do.end187:                                        ; preds = %do.cond174
  %.lcssa78 = phi i16 [ %69, %do.cond174 ]
  %bf.load176.lcssa = phi i8 [ %bf.load176, %do.cond174 ], !dbg !3075
  %argc.1.lcssa = phi i32 [ %argc.1, %do.cond174 ], !dbg !2914
  %inc.lcssa = phi i32 [ %inc, %do.cond174 ], !dbg !2936
  call void @llvm.dbg.value(metadata i32 %argc.1.lcssa, metadata !2895, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 %argc.1.lcssa, metadata !2895, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token.2, metadata !2894, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token.2, metadata !2894, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 %argc.1.lcssa, metadata !2895, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 %argc.1.lcssa, metadata !2895, metadata !DIExpression()), !dbg !2914
  %cmp191 = icmp eq i8 %bf.load176.lcssa, 22, !dbg !3079
  br i1 %cmp191, label %if.then193, label %if.else202, !dbg !3081

if.then193:                                       ; preds = %do.end187
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !3082
  %72 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !3082
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %72, i64 0, i32 1, !dbg !3085
  %73 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8, !dbg !3085
  %tobool194 = icmp eq %struct.cpp_context* %73, null, !dbg !3086
  br i1 %tobool194, label %lor.lhs.false195, label %if.then199, !dbg !3087

lor.lhs.false195:                                 ; preds = %if.then193
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !3088
  %74 = load i8, i8* %in_directive, align 8, !dbg !3088
  %tobool198 = icmp eq i8 %74, 0, !dbg !3089
  br i1 %tobool198, label %if.end200, label %if.then199, !dbg !3090

if.then199:                                       ; preds = %lor.lhs.false195, %if.then193
  tail call void @_cpp_backup_tokens(%struct.cpp_reader* %pfile, i32 1) #11, !dbg !3091
  br label %if.end200, !dbg !3091

if.end200:                                        ; preds = %lor.lhs.false195, %if.then199
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !3092
  %75 = load i8*, i8** %str, align 8, !dbg !3092
  %call201 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i64 0, i64 0), i8* %75) #9, !dbg !3093
  br label %if.end250, !dbg !3094

if.else202:                                       ; preds = %do.end187
  %cmp203 = icmp eq i32 %argc.1.lcssa, 0, !dbg !3095
  br i1 %cmp203, label %land.lhs.true205, label %if.end216, !dbg !3098

land.lhs.true205:                                 ; preds = %if.else202
  %cmp208 = icmp eq i16 %.lcssa78, 0, !dbg !3099
  br i1 %cmp208, label %land.lhs.true210, label %if.end216, !dbg !3100

land.lhs.true210:                                 ; preds = %land.lhs.true205
  %count212 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %3, i64 0, i32 3, !dbg !3101
  %76 = load i32, i32* %count212, align 8, !dbg !3101
  %cmp213 = icmp eq i32 %76, 0, !dbg !3102
  %spec.select1 = select i1 %cmp213, i32 0, i32 %inc.lcssa, !dbg !3103
  br label %if.end216, !dbg !3103

if.end216:                                        ; preds = %land.lhs.true210, %land.lhs.true205, %if.else202
  %argc.2 = phi i32 [ %inc.lcssa, %land.lhs.true205 ], [ %inc.lcssa, %if.else202 ], [ %spec.select1, %land.lhs.true210 ], !dbg !2914
  call void @llvm.dbg.value(metadata i32 %argc.2, metadata !2895, metadata !DIExpression()), !dbg !2914
  %call217 = tail call zeroext i8 @_cpp_arguments_ok(%struct.cpp_reader* %pfile, %struct.cpp_macro* %0, %struct.cpp_hashnode* %node, i32 %argc.2) #11, !dbg !3104
  %tobool218 = icmp eq i8 %call217, 0, !dbg !3104
  br i1 %tobool218, label %if.end250, label %if.then219, !dbg !3106

if.then219:                                       ; preds = %if.end216
  %bf.load221 = load i8, i8* %variadic, align 2, !dbg !3107
  %bf.clear223 = and i8 %bf.load221, 2, !dbg !3107
  %tobool225 = icmp eq i8 %bf.clear223, 0, !dbg !3110
  br i1 %tobool225, label %cleanup251, label %land.lhs.true226, !dbg !3111

land.lhs.true226:                                 ; preds = %if.then219
  %77 = load i16, i16* %paramc, align 8, !dbg !3112
  %conv228 = zext i16 %77 to i32, !dbg !3113
  %cmp229 = icmp ult i32 %argc.2, %conv228, !dbg !3114
  br i1 %cmp229, label %if.then241, label %lor.lhs.false231, !dbg !3115

lor.lhs.false231:                                 ; preds = %land.lhs.true226
  %cmp232 = icmp eq i32 %argc.2, 1, !dbg !3116
  br i1 %cmp232, label %land.lhs.true234, label %cleanup251, !dbg !3117

land.lhs.true234:                                 ; preds = %lor.lhs.false231
  %count236 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %3, i64 0, i32 3, !dbg !3118
  %78 = load i32, i32* %count236, align 8, !dbg !3118
  %cmp237 = icmp eq i32 %78, 0, !dbg !3119
  br i1 %cmp237, label %land.lhs.true239, label %cleanup251, !dbg !3120

land.lhs.true239:                                 ; preds = %land.lhs.true234
  %std = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 30, !dbg !3121
  %79 = load i8, i8* %std, align 4, !dbg !3121
  %tobool240 = icmp eq i8 %79, 0, !dbg !3121
  br i1 %tobool240, label %if.then241, label %cleanup251, !dbg !3122

if.then241:                                       ; preds = %land.lhs.true239, %land.lhs.true226
  %conv243 = zext i16 %77 to i64, !dbg !3123
  %sub244 = add nsw i64 %conv243, -1, !dbg !3124
  %first247 = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %3, i64 %sub244, i32 0, !dbg !3125
  store %struct.cpp_token** null, %struct.cpp_token*** %first247, align 8, !dbg !3126
  br label %cleanup251, !dbg !3127

if.end250:                                        ; preds = %if.end216, %if.end200
  tail call void @_cpp_release_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* %call) #9, !dbg !3128
  br label %cleanup251, !dbg !3129

cleanup251:                                       ; preds = %land.lhs.true239, %if.then219, %lor.lhs.false231, %land.lhs.true234, %if.then241, %if.end250
  %retval.0 = phi %struct._cpp_buff* [ null, %if.end250 ], [ %call, %if.then241 ], [ %call, %land.lhs.true239 ], [ %call, %land.lhs.true234 ], [ %call, %lor.lhs.false231 ], [ %call, %if.then219 ], !dbg !2914
  ret %struct._cpp_buff* %retval.0, !dbg !3130
}

declare dso_local %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader*, i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #4

declare dso_local %struct._cpp_buff* @_cpp_append_extend_buff(%struct.cpp_reader*, %struct._cpp_buff*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_token* @stringify_arg(%struct.cpp_reader* %pfile, %struct.macro_arg* %arg) unnamed_addr #2 !dbg !3131 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3135, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata %struct.macro_arg* %arg, metadata !3136, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i32 0, metadata !3140, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata %struct.cpp_token* null, metadata !3141, metadata !DIExpression()), !dbg !3154
  %u_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 6, !dbg !3155
  %0 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff, align 8, !dbg !3155
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %0, i64 0, i32 3, !dbg !3155
  %1 = bitcast i8** %limit to i64*, !dbg !3155
  %2 = load i64, i64* %1, align 8, !dbg !3155
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %0, i64 0, i32 2, !dbg !3155
  %3 = bitcast i8** %cur to i64*, !dbg !3155
  %4 = load i64, i64* %3, align 8, !dbg !3155
  %sub.ptr.sub = sub i64 %2, %4, !dbg !3155
  %cmp = icmp ult i64 %sub.ptr.sub, 3, !dbg !3157
  %5 = inttoptr i64 %4 to i8*, !dbg !3158
  br i1 %cmp, label %if.then, label %if.end, !dbg !3158

if.then:                                          ; preds = %entry
  tail call void @_cpp_extend_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff** nonnull %u_buff, i64 3) #9, !dbg !3159
  %.pre = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff, align 8, !dbg !3160
  %cur4.phi.trans.insert = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %.pre, i64 0, i32 2, !dbg !3154
  %.pre3 = load i8*, i8** %cur4.phi.trans.insert, align 8, !dbg !3160
  br label %if.end, !dbg !3159

if.end:                                           ; preds = %if.then, %entry
  %6 = phi i8* [ %.pre3, %if.then ], [ %5, %entry ], !dbg !3160
  call void @llvm.dbg.value(metadata i8* %6, metadata !3137, metadata !DIExpression()), !dbg !3154
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3161
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !3137, metadata !DIExpression()), !dbg !3154
  store i8 34, i8* %6, align 1, !dbg !3162
  call void @llvm.dbg.value(metadata i32 0, metadata !3138, metadata !DIExpression()), !dbg !3154
  %count = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %arg, i64 0, i32 3, !dbg !3163
  %first = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %arg, i64 0, i32 0, !dbg !3164
  br label %for.cond, !dbg !3165

for.cond:                                         ; preds = %cleanup, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %if.end ], !dbg !3166
  %backslash_count.0 = phi i32 [ %backslash_count.2, %cleanup ], [ 0, %if.end ], !dbg !3166
  %source.0 = phi %struct.cpp_token* [ %source.3, %cleanup ], [ null, %if.end ], !dbg !3154
  %dest.0 = phi i8* [ %dest.5, %cleanup ], [ %incdec.ptr, %if.end ], !dbg !3161
  call void @llvm.dbg.value(metadata i8* %dest.0, metadata !3137, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3138, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata %struct.cpp_token* %source.0, metadata !3141, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i32 %backslash_count.0, metadata !3140, metadata !DIExpression()), !dbg !3154
  %7 = load i32, i32* %count, align 8, !dbg !3167
  %8 = zext i32 %7 to i64, !dbg !3168
  %cmp5 = icmp ult i64 %indvars.iv, %8, !dbg !3168
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3169

for.body:                                         ; preds = %for.cond
  %9 = load %struct.cpp_token**, %struct.cpp_token*** %first, align 8, !dbg !3170
  %arrayidx = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %9, i64 %indvars.iv, !dbg !3171
  %10 = load %struct.cpp_token*, %struct.cpp_token** %arrayidx, align 8, !dbg !3171
  call void @llvm.dbg.value(metadata %struct.cpp_token* %10, metadata !3143, metadata !DIExpression()), !dbg !3164
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %10, i64 0, i32 1, !dbg !3172
  %bf.load = load i8, i8* %type, align 4, !dbg !3172
  %cmp6 = icmp eq i8 %bf.load, 72, !dbg !3174
  br i1 %cmp6, label %if.then7, label %if.end16, !dbg !3175

if.then7:                                         ; preds = %for.body
  %cmp8 = icmp eq %struct.cpp_token* %source.0, null, !dbg !3176
  br i1 %cmp8, label %if.then7.if.then12_crit_edge, label %lor.lhs.false, !dbg !3179

if.then7.if.then12_crit_edge:                     ; preds = %if.then7
  %val13.phi.trans.insert = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %10, i64 0, i32 3, !dbg !3180
  %source14.phi.trans.insert = bitcast %union.cpp_token_u* %val13.phi.trans.insert to %struct.cpp_token**, !dbg !3180
  %.pre5 = load %struct.cpp_token*, %struct.cpp_token** %source14.phi.trans.insert, align 8, !dbg !3181
  br label %if.then12, !dbg !3179

lor.lhs.false:                                    ; preds = %if.then7
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %source.0, i64 0, i32 2, !dbg !3182
  %11 = load i16, i16* %flags, align 2, !dbg !3182
  %12 = and i16 %11, 1, !dbg !3183
  %tobool = icmp eq i16 %12, 0, !dbg !3183
  br i1 %tobool, label %land.lhs.true, label %cleanup, !dbg !3184

land.lhs.true:                                    ; preds = %lor.lhs.false
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %10, i64 0, i32 3, !dbg !3185
  %source9 = bitcast %union.cpp_token_u* %val to %struct.cpp_token**, !dbg !3186
  %13 = load %struct.cpp_token*, %struct.cpp_token** %source9, align 8, !dbg !3186
  %cmp10 = icmp eq %struct.cpp_token* %13, null, !dbg !3187
  br i1 %cmp10, label %if.then12, label %cleanup, !dbg !3188

if.then12:                                        ; preds = %if.then7.if.then12_crit_edge, %land.lhs.true
  %14 = phi %struct.cpp_token* [ %.pre5, %if.then7.if.then12_crit_edge ], [ null, %land.lhs.true ], !dbg !3181
  call void @llvm.dbg.value(metadata %struct.cpp_token* %14, metadata !3141, metadata !DIExpression()), !dbg !3154
  br label %cleanup, !dbg !3189

if.end16:                                         ; preds = %for.body
  %cmp20 = icmp eq i8 %bf.load, 61, !dbg !3190
  br i1 %cmp20, label %lor.end, label %lor.lhs.false22, !dbg !3191

lor.lhs.false22:                                  ; preds = %if.end16
  %cmp26 = icmp eq i8 %bf.load, 56, !dbg !3192
  br i1 %cmp26, label %lor.end, label %lor.lhs.false28, !dbg !3193

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %cmp32 = icmp eq i8 %bf.load, 62, !dbg !3194
  br i1 %cmp32, label %lor.end, label %lor.lhs.false34, !dbg !3195

lor.lhs.false34:                                  ; preds = %lor.lhs.false28
  %cmp38 = icmp eq i8 %bf.load, 57, !dbg !3196
  br i1 %cmp38, label %lor.end, label %lor.lhs.false40, !dbg !3197

lor.lhs.false40:                                  ; preds = %lor.lhs.false34
  %cmp44 = icmp eq i8 %bf.load, 64, !dbg !3198
  br i1 %cmp44, label %lor.end, label %lor.lhs.false46, !dbg !3199

lor.lhs.false46:                                  ; preds = %lor.lhs.false40
  %cmp50 = icmp eq i8 %bf.load, 59, !dbg !3200
  br i1 %cmp50, label %lor.end, label %lor.lhs.false52, !dbg !3201

lor.lhs.false52:                                  ; preds = %lor.lhs.false46
  %cmp56 = icmp eq i8 %bf.load, 63, !dbg !3202
  br i1 %cmp56, label %lor.end, label %lor.lhs.false58, !dbg !3203

lor.lhs.false58:                                  ; preds = %lor.lhs.false52
  %cmp62 = icmp eq i8 %bf.load, 58, !dbg !3204
  br i1 %cmp62, label %lor.end, label %lor.rhs, !dbg !3205

lor.rhs:                                          ; preds = %lor.lhs.false58
  %cmp67 = icmp eq i8 %bf.load, 65, !dbg !3206
  br label %lor.end, !dbg !3205

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false58, %lor.lhs.false52, %lor.lhs.false46, %lor.lhs.false40, %lor.lhs.false34, %lor.lhs.false28, %lor.lhs.false22, %if.end16
  %15 = phi i1 [ true, %lor.lhs.false58 ], [ true, %lor.lhs.false52 ], [ true, %lor.lhs.false46 ], [ true, %lor.lhs.false40 ], [ true, %lor.lhs.false34 ], [ true, %lor.lhs.false28 ], [ true, %lor.lhs.false22 ], [ true, %if.end16 ], [ %cmp67, %lor.rhs ]
  call void @llvm.dbg.value(metadata i1 %15, metadata !3139, metadata !DIExpression()), !dbg !3154
  %call = tail call i32 @cpp_token_len(%struct.cpp_token* %10) #9, !dbg !3207
  %conv69 = zext i32 %call to i64, !dbg !3207
  call void @llvm.dbg.value(metadata i64 %conv69, metadata !3142, metadata !DIExpression()), !dbg !3154
  %mul = shl nuw nsw i64 %conv69, 2, !dbg !3208
  %spec.select = select i1 %15, i64 %mul, i64 %conv69, !dbg !3210
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !3142, metadata !DIExpression()), !dbg !3154
  %add = add nuw nsw i64 %spec.select, 3, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %add, metadata !3142, metadata !DIExpression()), !dbg !3154
  %16 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff, align 8, !dbg !3212
  %limit74 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %16, i64 0, i32 3, !dbg !3212
  %17 = bitcast i8** %limit74 to i64*, !dbg !3212
  %18 = load i64, i64* %17, align 8, !dbg !3212
  %sub.ptr.rhs.cast76 = ptrtoint i8* %dest.0 to i64, !dbg !3213
  %sub.ptr.sub77 = sub i64 %18, %sub.ptr.rhs.cast76, !dbg !3213
  %cmp78 = icmp ult i64 %sub.ptr.sub77, %add, !dbg !3214
  br i1 %cmp78, label %if.then80, label %lor.end.if.end89_crit_edge, !dbg !3215

lor.end.if.end89_crit_edge:                       ; preds = %lor.end
  %cur92.phi.trans.insert = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %16, i64 0, i32 2, !dbg !3216
  %.pre4 = load i8*, i8** %cur92.phi.trans.insert, align 8, !dbg !3218
  br label %if.end89, !dbg !3215

if.then80:                                        ; preds = %lor.end
  %cur82 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %16, i64 0, i32 2, !dbg !3219
  %19 = bitcast i8** %cur82 to i64*, !dbg !3219
  %20 = load i64, i64* %19, align 8, !dbg !3219
  %sub.ptr.sub85 = sub i64 %sub.ptr.rhs.cast76, %20, !dbg !3220
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub85, metadata !3147, metadata !DIExpression()), !dbg !3221
  tail call void @_cpp_extend_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff** nonnull %u_buff, i64 %add) #9, !dbg !3222
  %21 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff, align 8, !dbg !3223
  %cur88 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %21, i64 0, i32 2, !dbg !3223
  %22 = load i8*, i8** %cur88, align 8, !dbg !3223
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %sub.ptr.sub85, !dbg !3224
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !3137, metadata !DIExpression()), !dbg !3154
  br label %if.end89, !dbg !3225

if.end89:                                         ; preds = %lor.end.if.end89_crit_edge, %if.then80
  %23 = phi i8* [ %22, %if.then80 ], [ %.pre4, %lor.end.if.end89_crit_edge ], !dbg !3218
  %dest.1 = phi i8* [ %add.ptr, %if.then80 ], [ %dest.0, %lor.end.if.end89_crit_edge ], !dbg !3154
  call void @llvm.dbg.value(metadata i8* %dest.1, metadata !3137, metadata !DIExpression()), !dbg !3154
  %add.ptr90 = getelementptr inbounds i8, i8* %dest.1, i64 -1, !dbg !3226
  %cmp93 = icmp eq i8* %add.ptr90, %23, !dbg !3227
  br i1 %cmp93, label %if.end107, label %if.then95, !dbg !3228

if.then95:                                        ; preds = %if.end89
  %cmp96 = icmp eq %struct.cpp_token* %source.0, null, !dbg !3229
  %spec.select1 = select i1 %cmp96, %struct.cpp_token* %10, %struct.cpp_token* %source.0, !dbg !3232
  call void @llvm.dbg.value(metadata %struct.cpp_token* %spec.select1, metadata !3141, metadata !DIExpression()), !dbg !3154
  %flags100 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %spec.select1, i64 0, i32 2, !dbg !3233
  %24 = load i16, i16* %flags100, align 2, !dbg !3233
  %25 = and i16 %24, 1, !dbg !3235
  %tobool103 = icmp eq i16 %25, 0, !dbg !3235
  br i1 %tobool103, label %if.end107, label %if.then104, !dbg !3236

if.then104:                                       ; preds = %if.then95
  %incdec.ptr105 = getelementptr inbounds i8, i8* %dest.1, i64 1, !dbg !3237
  call void @llvm.dbg.value(metadata i8* %incdec.ptr105, metadata !3137, metadata !DIExpression()), !dbg !3154
  store i8 32, i8* %dest.1, align 1, !dbg !3238
  br label %if.end107, !dbg !3239

if.end107:                                        ; preds = %if.then95, %if.end89, %if.then104
  %dest.3 = phi i8* [ %dest.1, %if.end89 ], [ %incdec.ptr105, %if.then104 ], [ %dest.1, %if.then95 ], !dbg !3164
  call void @llvm.dbg.value(metadata i8* %dest.3, metadata !3137, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata %struct.cpp_token* null, metadata !3141, metadata !DIExpression()), !dbg !3154
  br i1 %15, label %if.then109, label %if.else, !dbg !3240

if.then109:                                       ; preds = %if.end107
  %call110 = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 %add) #9, !dbg !3241
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call110, metadata !3150, metadata !DIExpression()), !dbg !3242
  %cur111 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %call110, i64 0, i32 2, !dbg !3243
  %26 = load i8*, i8** %cur111, align 8, !dbg !3243
  call void @llvm.dbg.value(metadata i8* %26, metadata !3153, metadata !DIExpression()), !dbg !3242
  %call112 = tail call i8* @cpp_spell_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %10, i8* %26, i8 zeroext 1) #9, !dbg !3244
  %sub.ptr.lhs.cast113 = ptrtoint i8* %call112 to i64, !dbg !3245
  %sub.ptr.rhs.cast114 = ptrtoint i8* %26 to i64, !dbg !3245
  %sub.ptr.sub115 = sub i64 %sub.ptr.lhs.cast113, %sub.ptr.rhs.cast114, !dbg !3245
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub115, metadata !3142, metadata !DIExpression()), !dbg !3154
  %conv116 = trunc i64 %sub.ptr.sub115 to i32, !dbg !3246
  %call117 = tail call i8* @cpp_quote_string(i8* %dest.3, i8* %26, i32 %conv116) #11, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %call117, metadata !3137, metadata !DIExpression()), !dbg !3154
  tail call void @_cpp_release_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* %call110) #9, !dbg !3248
  br label %if.end119, !dbg !3249

if.else:                                          ; preds = %if.end107
  %call118 = tail call i8* @cpp_spell_token(%struct.cpp_reader* %pfile, %struct.cpp_token* %10, i8* %dest.3, i8 zeroext 1) #9, !dbg !3250
  call void @llvm.dbg.value(metadata i8* %call118, metadata !3137, metadata !DIExpression()), !dbg !3154
  br label %if.end119

if.end119:                                        ; preds = %if.else, %if.then109
  %dest.4 = phi i8* [ %call117, %if.then109 ], [ %call118, %if.else ], !dbg !3251
  call void @llvm.dbg.value(metadata i8* %dest.4, metadata !3137, metadata !DIExpression()), !dbg !3154
  %bf.load121 = load i8, i8* %type, align 4, !dbg !3252
  %cmp123 = icmp eq i8 %bf.load121, 60, !dbg !3254
  br i1 %cmp123, label %land.lhs.true125, label %cleanup, !dbg !3255

land.lhs.true125:                                 ; preds = %if.end119
  %text = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %10, i64 0, i32 3, i32 0, i32 1, !dbg !3256
  %27 = load i8*, i8** %text, align 8, !dbg !3256
  %28 = load i8, i8* %27, align 1, !dbg !3257
  %cmp129 = icmp eq i8 %28, 92, !dbg !3258
  %inc = add i32 %backslash_count.0, 1, !dbg !3259
  %spec.select2 = select i1 %cmp129, i32 %inc, i32 0, !dbg !3260
  br label %cleanup, !dbg !3260

cleanup:                                          ; preds = %lor.lhs.false, %land.lhs.true125, %if.end119, %land.lhs.true, %if.then12
  %backslash_count.2 = phi i32 [ %backslash_count.0, %if.then12 ], [ %backslash_count.0, %land.lhs.true ], [ %backslash_count.0, %lor.lhs.false ], [ 0, %if.end119 ], [ %spec.select2, %land.lhs.true125 ], !dbg !3154
  %source.3 = phi %struct.cpp_token* [ %14, %if.then12 ], [ %source.0, %land.lhs.true ], [ %source.0, %lor.lhs.false ], [ null, %if.end119 ], [ null, %land.lhs.true125 ], !dbg !3164
  %dest.5 = phi i8* [ %dest.0, %if.then12 ], [ %dest.0, %land.lhs.true ], [ %dest.0, %lor.lhs.false ], [ %dest.4, %if.end119 ], [ %dest.4, %land.lhs.true125 ], !dbg !3154
  call void @llvm.dbg.value(metadata i8* %dest.5, metadata !3137, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata %struct.cpp_token* %source.3, metadata !3141, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i32 %backslash_count.2, metadata !3140, metadata !DIExpression()), !dbg !3154
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3261
  br label %for.cond, !dbg !3262, !llvm.loop !3263

for.end:                                          ; preds = %for.cond
  %backslash_count.0.lcssa = phi i32 [ %backslash_count.0, %for.cond ], !dbg !3166
  %dest.0.lcssa = phi i8* [ %dest.0, %for.cond ], !dbg !3161
  call void @llvm.dbg.value(metadata i32 %backslash_count.0.lcssa, metadata !3140, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !3137, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i32 %backslash_count.0.lcssa, metadata !3140, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !3137, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i32 %backslash_count.0.lcssa, metadata !3140, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i8* %dest.0.lcssa, metadata !3137, metadata !DIExpression()), !dbg !3154
  %and135 = and i32 %backslash_count.0.lcssa, 1, !dbg !3265
  %tobool136 = icmp eq i32 %and135, 0, !dbg !3265
  br i1 %tobool136, label %if.end140, label %if.then137, !dbg !3267

if.then137:                                       ; preds = %for.end
  %call138 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.38, i64 0, i64 0)) #9, !dbg !3268
  %incdec.ptr139 = getelementptr inbounds i8, i8* %dest.0.lcssa, i64 -1, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %incdec.ptr139, metadata !3137, metadata !DIExpression()), !dbg !3154
  br label %if.end140, !dbg !3271

if.end140:                                        ; preds = %for.end, %if.then137
  %dest.6 = phi i8* [ %incdec.ptr139, %if.then137 ], [ %dest.0.lcssa, %for.end ], !dbg !3154
  call void @llvm.dbg.value(metadata i8* %dest.6, metadata !3137, metadata !DIExpression()), !dbg !3154
  %incdec.ptr141 = getelementptr inbounds i8, i8* %dest.6, i64 1, !dbg !3272
  call void @llvm.dbg.value(metadata i8* %incdec.ptr141, metadata !3137, metadata !DIExpression()), !dbg !3154
  store i8 34, i8* %dest.6, align 1, !dbg !3273
  %29 = load %struct._cpp_buff*, %struct._cpp_buff** %u_buff, align 8, !dbg !3274
  %cur143 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %29, i64 0, i32 2, !dbg !3274
  %30 = bitcast i8** %cur143 to i64*, !dbg !3274
  %31 = load i64, i64* %30, align 8, !dbg !3274
  %sub.ptr.lhs.cast144 = ptrtoint i8* %incdec.ptr141 to i64, !dbg !3275
  %sub.ptr.sub146 = sub i64 %sub.ptr.lhs.cast144, %31, !dbg !3275
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub146, metadata !3142, metadata !DIExpression()), !dbg !3154
  %add.ptr147 = getelementptr inbounds i8, i8* %dest.6, i64 2, !dbg !3276
  store i8* %add.ptr147, i8** %cur143, align 8, !dbg !3277
  %idx.neg = sub i64 0, %sub.ptr.sub146, !dbg !3278
  %add.ptr150 = getelementptr inbounds i8, i8* %incdec.ptr141, i64 %idx.neg, !dbg !3278
  %conv151 = trunc i64 %sub.ptr.sub146 to i32, !dbg !3279
  %call152 = tail call fastcc %struct.cpp_token* @new_string_token(%struct.cpp_reader* %pfile, i8* nonnull %add.ptr150, i32 %conv151) #11, !dbg !3280
  ret %struct.cpp_token* %call152, !dbg !3281
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_arg(%struct.cpp_reader* %pfile, %struct.macro_arg* %arg) unnamed_addr #2 !dbg !3282 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3286, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata %struct.macro_arg* %arg, metadata !3287, metadata !DIExpression()), !dbg !3294
  %count = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %arg, i64 0, i32 3, !dbg !3295
  %0 = load i32, i32* %count, align 8, !dbg !3295
  %cmp = icmp eq i32 %0, 0, !dbg !3297
  br i1 %cmp, label %cleanup.cont27, label %if.end, !dbg !3298

if.end:                                           ; preds = %entry
  %warn_traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 17, !dbg !3299
  %1 = load i8, i8* %warn_traditional, align 1, !dbg !3299
  call void @llvm.dbg.value(metadata i8 %1, metadata !3289, metadata !DIExpression()), !dbg !3294
  store i8 0, i8* %warn_traditional, align 1, !dbg !3300
  call void @llvm.dbg.value(metadata i32 256, metadata !3288, metadata !DIExpression()), !dbg !3294
  %call = tail call i8* @xmalloc(i64 2048) #9, !dbg !3301
  %expanded = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %arg, i64 0, i32 1, !dbg !3302
  %2 = bitcast %struct.cpp_token*** %expanded to i8**, !dbg !3303
  store i8* %call, i8** %2, align 8, !dbg !3303
  %first = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %arg, i64 0, i32 0, !dbg !3304
  %3 = load %struct.cpp_token**, %struct.cpp_token*** %first, align 8, !dbg !3304
  %4 = load i32, i32* %count, align 8, !dbg !3305
  %add = add i32 %4, 1, !dbg !3306
  tail call fastcc void @push_ptoken_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* null, %struct._cpp_buff* null, %struct.cpp_token** %3, i32 %add) #11, !dbg !3307
  %expanded_count = getelementptr inbounds %struct.macro_arg, %struct.macro_arg* %arg, i64 0, i32 4, !dbg !3308
  br label %for.cond, !dbg !3310

for.cond:                                         ; preds = %cleanup, %if.end
  %capacity.0 = phi i32 [ 256, %if.end ], [ %capacity.1, %cleanup ], !dbg !3294
  call void @llvm.dbg.value(metadata i32 %capacity.0, metadata !3288, metadata !DIExpression()), !dbg !3294
  %5 = load i32, i32* %expanded_count, align 4, !dbg !3311
  %add4 = add i32 %5, 1, !dbg !3312
  %cmp5 = icmp ult i32 %add4, %capacity.0, !dbg !3313
  br i1 %cmp5, label %if.end14, label %if.then7, !dbg !3314

if.then7:                                         ; preds = %for.cond
  %mul8 = shl i32 %capacity.0, 1, !dbg !3315
  call void @llvm.dbg.value(metadata i32 %mul8, metadata !3288, metadata !DIExpression()), !dbg !3294
  %6 = load i8*, i8** %2, align 8, !dbg !3317
  %conv10 = zext i32 %mul8 to i64, !dbg !3317
  %mul11 = shl nuw nsw i64 %conv10, 3, !dbg !3317
  %call12 = tail call i8* @xrealloc(i8* %6, i64 %mul11) #9, !dbg !3317
  store i8* %call12, i8** %2, align 8, !dbg !3318
  br label %if.end14, !dbg !3319

if.end14:                                         ; preds = %for.cond, %if.then7
  %capacity.1 = phi i32 [ %mul8, %if.then7 ], [ %capacity.0, %for.cond ], !dbg !3294
  call void @llvm.dbg.value(metadata i32 %capacity.1, metadata !3288, metadata !DIExpression()), !dbg !3294
  %call15 = tail call %struct.cpp_token* @cpp_get_token(%struct.cpp_reader* %pfile) #11, !dbg !3320
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call15, metadata !3290, metadata !DIExpression()), !dbg !3321
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call15, i64 0, i32 1, !dbg !3322
  %bf.load = load i8, i8* %type, align 4, !dbg !3322
  %cmp16 = icmp eq i8 %bf.load, 22, !dbg !3324
  br i1 %cmp16, label %cleanup, label %if.end19, !dbg !3325

if.end19:                                         ; preds = %if.end14
  %7 = load %struct.cpp_token**, %struct.cpp_token*** %expanded, align 8, !dbg !3326
  %8 = load i32, i32* %expanded_count, align 4, !dbg !3327
  %inc = add i32 %8, 1, !dbg !3327
  store i32 %inc, i32* %expanded_count, align 4, !dbg !3327
  %idxprom = zext i32 %8 to i64, !dbg !3328
  %arrayidx = getelementptr inbounds %struct.cpp_token*, %struct.cpp_token** %7, i64 %idxprom, !dbg !3328
  store %struct.cpp_token* %call15, %struct.cpp_token** %arrayidx, align 8, !dbg !3329
  br label %cleanup, !dbg !3330

cleanup:                                          ; preds = %if.end14, %if.end19
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end19 ], [ false, %if.end14 ]
  br i1 %cleanup.dest.slot.0, label %for.cond, label %for.end, !llvm.loop !3331

for.end:                                          ; preds = %cleanup
  tail call void @_cpp_pop_context(%struct.cpp_reader* %pfile) #11, !dbg !3334
  store i8 %1, i8* %warn_traditional, align 1, !dbg !3335
  br label %cleanup.cont27, !dbg !3336

cleanup.cont27:                                   ; preds = %for.end, %entry
  ret void, !dbg !3336
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_token* @new_string_token(%struct.cpp_reader* %pfile, i8* %text, i32 %len) unnamed_addr #2 !dbg !3337 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3341, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i8* %text, metadata !3342, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i32 %len, metadata !3343, metadata !DIExpression()), !dbg !3345
  %call = tail call %struct.cpp_token* @_cpp_temp_token(%struct.cpp_reader* %pfile) #9, !dbg !3346
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !3344, metadata !DIExpression()), !dbg !3345
  %idxprom = zext i32 %len to i64, !dbg !3347
  %arrayidx = getelementptr inbounds i8, i8* %text, i64 %idxprom, !dbg !3347
  store i8 0, i8* %arrayidx, align 1, !dbg !3348
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !3349
  store i8 61, i8* %type, align 4, !dbg !3350
  %len1 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 0, !dbg !3351
  store i32 %len, i32* %len1, align 8, !dbg !3352
  %text4 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, i32 0, i32 1, !dbg !3353
  store i8* %text, i8** %text4, align 8, !dbg !3354
  %flags = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 2, !dbg !3355
  store i16 0, i16* %flags, align 2, !dbg !3356
  ret %struct.cpp_token* %call, !dbg !3357
}

declare dso_local i32 @_cpp_do__Pragma(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ustrlen(i8* %s1) unnamed_addr #0 !dbg !3358 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !3362, metadata !DIExpression()), !dbg !3363
  %call = tail call i64 @strlen(i8* %s1) #10, !dbg !3364
  ret i64 %call, !dbg !3365
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @parse_params(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) unnamed_addr #2 !dbg !3366 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3368, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !3369, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i32 0, metadata !3370, metadata !DIExpression()), !dbg !3375
  %variadic = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 5, !dbg !3376
  %pedantic45 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !3378
  %warn_variadic_macros50 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 21, !dbg !3378
  %n__VA_ARGS__ = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 54, i32 3, !dbg !3381
  %va_args_ok = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 6, !dbg !3381
  %c99 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 29, !dbg !3383
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 4, !dbg !3385
  %discard_comments_in_macro_exp = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 6, !dbg !3387
  br label %for.cond, !dbg !3389

for.cond:                                         ; preds = %cleanup, %entry
  %prev_ident.0 = phi i32 [ 0, %entry ], [ %prev_ident.1, %cleanup ], !dbg !3390
  %retval.0 = phi i8 [ undef, %entry ], [ %retval.1, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %prev_ident.0, metadata !3370, metadata !DIExpression()), !dbg !3375
  %call = tail call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %pfile) #9, !dbg !3391
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call, metadata !3371, metadata !DIExpression()), !dbg !3392
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 1, !dbg !3393
  %bf.load1 = load i8, i8* %type, align 4, !dbg !3393
  switch i8 %bf.load1, label %sw.default [
    i8 53, label %sw.bb
    i8 21, label %sw.bb15
    i8 19, label %sw.bb21
    i8 44, label %sw.bb26
    i8 22, label %sw.bb65
  ], !dbg !3394

sw.default:                                       ; preds = %for.cond
  %cmp = icmp eq i8 %bf.load1, 68, !dbg !3395
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3396

land.lhs.true:                                    ; preds = %sw.default
  %0 = load i8, i8* %discard_comments_in_macro_exp, align 4, !dbg !3397
  %tobool = icmp eq i8 %0, 0, !dbg !3397
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3398, !llvm.loop !3399

if.end:                                           ; preds = %land.lhs.true, %sw.default
  %call4 = tail call i8* @cpp_token_as_text(%struct.cpp_reader* %pfile, %struct.cpp_token* %call) #9, !dbg !3402
  %call5 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i64 0, i64 0), i8* %call4) #9, !dbg !3403
  br label %cleanup, !dbg !3404

sw.bb:                                            ; preds = %for.cond
  %tobool6 = icmp eq i32 %prev_ident.0, 0, !dbg !3405
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !3407

if.then7:                                         ; preds = %sw.bb
  %call8 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i64 0, i64 0)) #9, !dbg !3408
  br label %cleanup, !dbg !3410

if.end9:                                          ; preds = %sw.bb
  call void @llvm.dbg.value(metadata i32 1, metadata !3370, metadata !DIExpression()), !dbg !3375
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call, i64 0, i32 3, !dbg !3411
  %node10 = bitcast %union.cpp_token_u* %val to %struct.cpp_hashnode**, !dbg !3413
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node10, align 8, !dbg !3413
  %call11 = tail call zeroext i8 @_cpp_save_parameter(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro, %struct.cpp_hashnode* %1) #11, !dbg !3414
  %tobool12 = icmp ne i8 %call11, 0, !dbg !3414
  %. = select i1 %tobool12, i32 1, i32 3, !dbg !3376
  %.retval.0 = select i1 %tobool12, i8 0, i8 %retval.0, !dbg !3376
  br label %cleanup, !dbg !3376

sw.bb15:                                          ; preds = %for.cond
  %tobool16 = icmp eq i32 %prev_ident.0, 0, !dbg !3415
  br i1 %tobool16, label %lor.lhs.false, label %cleanup, !dbg !3416

lor.lhs.false:                                    ; preds = %sw.bb15
  %2 = load i16, i16* %paramc, align 8, !dbg !3417
  %cmp17 = icmp eq i16 %2, 0, !dbg !3418
  br i1 %cmp17, label %cleanup, label %sw.bb21, !dbg !3419

sw.bb21:                                          ; preds = %lor.lhs.false, %for.cond
  %tobool22 = icmp eq i32 %prev_ident.0, 0, !dbg !3420
  br i1 %tobool22, label %if.then23, label %cleanup, !dbg !3422, !llvm.loop !3399

if.then23:                                        ; preds = %sw.bb21
  %call24 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0)) #9, !dbg !3423
  br label %cleanup, !dbg !3425

sw.bb26:                                          ; preds = %for.cond
  %bf.load27 = load i8, i8* %variadic, align 2, !dbg !3426
  %bf.set = or i8 %bf.load27, 2, !dbg !3426
  store i8 %bf.set, i8* %variadic, align 2, !dbg !3426
  %tobool28 = icmp eq i32 %prev_ident.0, 0, !dbg !3427
  br i1 %tobool28, label %if.then29, label %if.else, !dbg !3428

if.then29:                                        ; preds = %sw.bb26
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n__VA_ARGS__, align 8, !dbg !3429
  %call30 = tail call zeroext i8 @_cpp_save_parameter(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro, %struct.cpp_hashnode* %3) #11, !dbg !3430
  store i8 1, i8* %va_args_ok, align 2, !dbg !3431
  %4 = load i8, i8* %c99, align 1, !dbg !3432
  %tobool32 = icmp eq i8 %4, 0, !dbg !3432
  br i1 %tobool32, label %land.lhs.true33, label %if.end56, !dbg !3433

land.lhs.true33:                                  ; preds = %if.then29
  %5 = load i8, i8* %pedantic45, align 1, !dbg !3434
  %tobool36 = icmp eq i8 %5, 0, !dbg !3434
  br i1 %tobool36, label %if.end56, label %land.lhs.true37, !dbg !3435

land.lhs.true37:                                  ; preds = %land.lhs.true33
  %6 = load i8, i8* %warn_variadic_macros50, align 1, !dbg !3436
  %tobool40 = icmp eq i8 %6, 0, !dbg !3436
  br i1 %tobool40, label %if.end56, label %if.then41, !dbg !3437

if.then41:                                        ; preds = %land.lhs.true37
  %call42 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.47, i64 0, i64 0)) #9, !dbg !3438
  br label %if.end56, !dbg !3438

if.else:                                          ; preds = %sw.bb26
  %7 = load i8, i8* %pedantic45, align 1, !dbg !3439
  %tobool47 = icmp eq i8 %7, 0, !dbg !3439
  br i1 %tobool47, label %if.end56, label %land.lhs.true48, !dbg !3440

land.lhs.true48:                                  ; preds = %if.else
  %8 = load i8, i8* %warn_variadic_macros50, align 1, !dbg !3441
  %tobool52 = icmp eq i8 %8, 0, !dbg !3441
  br i1 %tobool52, label %if.end56, label %if.then53, !dbg !3442

if.then53:                                        ; preds = %land.lhs.true48
  %call54 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i64 0, i64 0)) #9, !dbg !3443
  br label %if.end56, !dbg !3443

if.end56:                                         ; preds = %land.lhs.true48, %if.else, %land.lhs.true37, %land.lhs.true33, %if.then29, %if.then53, %if.then41
  %call57 = tail call %struct.cpp_token* @_cpp_lex_token(%struct.cpp_reader* %pfile) #9, !dbg !3444
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call57, metadata !3371, metadata !DIExpression()), !dbg !3392
  %type58 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call57, i64 0, i32 1, !dbg !3445
  %bf.load59 = load i8, i8* %type58, align 4, !dbg !3445
  %cmp61 = icmp eq i8 %bf.load59, 21, !dbg !3447
  br i1 %cmp61, label %cleanup, label %sw.bb65, !dbg !3448

sw.bb65:                                          ; preds = %if.end56, %for.cond
  %call66 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i64 0, i64 0)) #9, !dbg !3449
  br label %cleanup, !dbg !3450

cleanup:                                          ; preds = %land.lhs.true, %sw.bb15, %sw.bb21, %if.end56, %lor.lhs.false, %if.end9, %sw.bb65, %if.then23, %if.then7, %if.end
  %prev_ident.1 = phi i32 [ %prev_ident.0, %if.end ], [ %prev_ident.0, %sw.bb65 ], [ 0, %if.then23 ], [ %prev_ident.0, %if.then7 ], [ %prev_ident.0, %land.lhs.true ], [ 1, %if.end9 ], [ 0, %lor.lhs.false ], [ %prev_ident.0, %sw.bb15 ], [ 0, %sw.bb21 ], [ %prev_ident.0, %if.end56 ], !dbg !3375
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.end ], [ 1, %sw.bb65 ], [ 1, %if.then23 ], [ 1, %if.then7 ], [ 3, %land.lhs.true ], [ %., %if.end9 ], [ 1, %lor.lhs.false ], [ 1, %sw.bb15 ], [ 3, %sw.bb21 ], [ 1, %if.end56 ]
  %retval.1 = phi i8 [ 0, %if.end ], [ 0, %sw.bb65 ], [ 0, %if.then23 ], [ 0, %if.then7 ], [ %retval.0, %land.lhs.true ], [ %.retval.0, %if.end9 ], [ 1, %lor.lhs.false ], [ 1, %sw.bb15 ], [ %retval.0, %sw.bb21 ], [ 1, %if.end56 ]
  call void @llvm.dbg.value(metadata i32 %prev_ident.1, metadata !3370, metadata !DIExpression()), !dbg !3375
  %cond = icmp eq i32 %cleanup.dest.slot.0, 3
  br i1 %cond, label %for.cond, label %cleanup67

cleanup67:                                        ; preds = %cleanup
  %retval.1.lcssa = phi i8 [ %retval.1, %cleanup ]
  ret i8 %retval.1.lcssa, !dbg !3451
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_token* @lex_expansion_token(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) unnamed_addr #2 !dbg !3452 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3456, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !3457, metadata !DIExpression()), !dbg !3460
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !3461
  %0 = bitcast %struct.cpp_token** %cur_token to i64*, !dbg !3461
  %1 = load i64, i64* %0, align 8, !dbg !3461
  %call = tail call fastcc %struct.cpp_token* @alloc_expansion_token(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) #11, !dbg !3462
  store %struct.cpp_token* %call, %struct.cpp_token** %cur_token, align 8, !dbg !3463
  %call2 = tail call %struct.cpp_token* @_cpp_lex_direct(%struct.cpp_reader* %pfile) #9, !dbg !3464
  call void @llvm.dbg.value(metadata %struct.cpp_token* %call2, metadata !3458, metadata !DIExpression()), !dbg !3460
  store i64 %1, i64* %0, align 8, !dbg !3465
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call2, i64 0, i32 1, !dbg !3466
  %bf.load = load i8, i8* %type, align 4, !dbg !3466
  %cmp = icmp eq i8 %bf.load, 53, !dbg !3468
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !3469

land.lhs.true:                                    ; preds = %entry
  %val = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call2, i64 0, i32 3, !dbg !3470
  %node4 = bitcast %union.cpp_token_u* %val to %struct.cpp_hashnode**, !dbg !3471
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node4, align 8, !dbg !3471
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i64 0, i32 3, !dbg !3472
  %bf.load5 = load i16, i16* %flags, align 2, !dbg !3472
  %3 = and i16 %bf.load5, 4096, !dbg !3473
  %cmp7 = icmp eq i16 %3, 0, !dbg !3474
  br i1 %cmp7, label %if.else, label %if.then, !dbg !3475

if.then:                                          ; preds = %land.lhs.true
  store i8 69, i8* %type, align 4, !dbg !3476
  %value = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i64 0, i32 4, !dbg !3478
  %arg_index = bitcast %union._cpp_hashnode_value* %value to i16*, !dbg !3479
  %4 = load i16, i16* %arg_index, align 8, !dbg !3479
  %conv = zext i16 %4 to i32, !dbg !3480
  %arg_no = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call2, i64 0, i32 3, i32 0, i32 0, !dbg !3481
  store i32 %conv, i32* %arg_no, align 8, !dbg !3482
  br label %if.end31, !dbg !3483

if.else:                                          ; preds = %land.lhs.true, %entry
  %warn_traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 17, !dbg !3484
  %5 = load i8, i8* %warn_traditional, align 1, !dbg !3484
  %tobool = icmp eq i8 %5, 0, !dbg !3484
  br i1 %tobool, label %if.end31, label %land.lhs.true14, !dbg !3486

land.lhs.true14:                                  ; preds = %if.else
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 4, !dbg !3487
  %6 = load i16, i16* %paramc, align 8, !dbg !3487
  %cmp16 = icmp eq i16 %6, 0, !dbg !3488
  br i1 %cmp16, label %if.end31, label %land.lhs.true18, !dbg !3489

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %cmp22 = icmp eq i8 %bf.load, 61, !dbg !3490
  br i1 %cmp22, label %if.then29, label %lor.lhs.false, !dbg !3491

lor.lhs.false:                                    ; preds = %land.lhs.true18
  %cmp27 = icmp eq i8 %bf.load, 56, !dbg !3492
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !3493

if.then29:                                        ; preds = %lor.lhs.false, %land.lhs.true18
  %str = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %call2, i64 0, i32 3, i32 0, !dbg !3494
  tail call fastcc void @check_trad_stringification(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro, %struct.cpp_string* nonnull %str) #11, !dbg !3495
  br label %if.end31, !dbg !3495

if.end31:                                         ; preds = %land.lhs.true14, %if.else, %lor.lhs.false, %if.then29, %if.then
  ret %struct.cpp_token* %call2, !dbg !3496
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_token* @alloc_expansion_token(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) unnamed_addr #2 !dbg !3497 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3499, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !3500, metadata !DIExpression()), !dbg !3501
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 5, !dbg !3502
  %0 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !3502
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %0, i64 0, i32 3, !dbg !3502
  %1 = bitcast i8** %limit to i64*, !dbg !3502
  %2 = load i64, i64* %1, align 8, !dbg !3502
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %0, i64 0, i32 2, !dbg !3502
  %3 = bitcast i8** %cur to i64*, !dbg !3502
  %4 = load i64, i64* %3, align 8, !dbg !3502
  %sub.ptr.sub = sub i64 %2, %4, !dbg !3502
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 3, !dbg !3504
  %5 = load i32, i32* %count, align 4, !dbg !3504
  %add = add i32 %5, 1, !dbg !3505
  %conv = zext i32 %add to i64, !dbg !3506
  %mul = mul nuw nsw i64 %conv, 24, !dbg !3507
  %cmp = icmp ult i64 %sub.ptr.sub, %mul, !dbg !3508
  br i1 %cmp, label %if.then, label %if.end, !dbg !3509

if.then:                                          ; preds = %entry
  tail call void @_cpp_extend_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff** nonnull %a_buff, i64 24) #9, !dbg !3510
  %.pre = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !3511
  %.pre1 = load i32, i32* %count, align 4, !dbg !3512
  %.pre2 = add i32 %.pre1, 1, !dbg !3512
  br label %if.end, !dbg !3510

if.end:                                           ; preds = %if.then, %entry
  %inc.pre-phi = phi i32 [ %.pre2, %if.then ], [ %add, %entry ], !dbg !3512
  %6 = phi i32 [ %.pre1, %if.then ], [ %5, %entry ], !dbg !3512
  %7 = phi %struct._cpp_buff* [ %.pre, %if.then ], [ %0, %entry ], !dbg !3511
  %cur5 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %7, i64 0, i32 2, !dbg !3511
  %8 = bitcast i8** %cur5 to %struct.cpp_token**, !dbg !3511
  %9 = load %struct.cpp_token*, %struct.cpp_token** %8, align 8, !dbg !3511
  store i32 %inc.pre-phi, i32* %count, align 4, !dbg !3512
  %idxprom = zext i32 %6 to i64, !dbg !3513
  %arrayidx = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %9, i64 %idxprom, !dbg !3513
  ret %struct.cpp_token* %arrayidx, !dbg !3514
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_trad_stringification(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro, %struct.cpp_string* %string) unnamed_addr #2 !dbg !3515 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !3519, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !3520, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata %struct.cpp_string* %string, metadata !3521, metadata !DIExpression()), !dbg !3534
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %string, i64 0, i32 1, !dbg !3535
  %0 = load i8*, i8** %text, align 8, !dbg !3535
  %len1 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %string, i64 0, i32 0, !dbg !3536
  %1 = load i32, i32* %len1, align 8, !dbg !3536
  %idx.ext = zext i32 %1 to i64, !dbg !3537
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext, !dbg !3537
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 -1, !dbg !3538
  call void @llvm.dbg.value(metadata i8* %add.ptr2, metadata !3526, metadata !DIExpression()), !dbg !3534
  %add.ptr4 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3539
  call void @llvm.dbg.value(metadata i8* %add.ptr4, metadata !3524, metadata !DIExpression()), !dbg !3534
  %dollars_in_ident = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 24, !dbg !3540
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 4, !dbg !3541
  %params = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 0, !dbg !3542
  br label %for.cond, !dbg !3543

for.cond:                                         ; preds = %for.inc58, %entry
  %p.0 = phi i8* [ %add.ptr4, %entry ], [ %q.0.lcssa, %for.inc58 ], !dbg !3544
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !3524, metadata !DIExpression()), !dbg !3534
  %cmp = icmp ult i8* %p.0, %add.ptr2, !dbg !3545
  br i1 %cmp, label %while.cond.preheader, label %for.end59, !dbg !3546

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !3547

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %p.1 = phi i8* [ %incdec.ptr, %while.body ], [ %p.0, %while.cond.preheader ], !dbg !3544
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !3524, metadata !DIExpression()), !dbg !3534
  %cmp5 = icmp ult i8* %p.1, %add.ptr2, !dbg !3548
  br i1 %cmp5, label %land.rhs, label %while.end, !dbg !3549

land.rhs:                                         ; preds = %while.cond
  %2 = load i8, i8* %p.1, align 1, !dbg !3550
  %idxprom = zext i8 %2 to i64, !dbg !3550
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !3550
  %3 = load i16, i16* %arrayidx, align 2, !dbg !3550
  %4 = and i16 %3, 512, !dbg !3550
  %tobool = icmp eq i16 %4, 0, !dbg !3550
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3550

lor.rhs:                                          ; preds = %land.rhs
  %cmp9 = icmp eq i8 %2, 36, !dbg !3550
  br i1 %cmp9, label %land.rhs11, label %lor.end, !dbg !3550

land.rhs11:                                       ; preds = %lor.rhs
  %5 = load i8, i8* %dollars_in_ident, align 2, !dbg !3550
  %tobool13 = icmp ne i8 %5, 0, !dbg !3550
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %lor.rhs, %land.rhs11
  %6 = phi i1 [ true, %land.rhs ], [ false, %lor.rhs ], [ %tobool13, %land.rhs11 ]
  br i1 %6, label %while.end, label %while.body, !dbg !3547

while.body:                                       ; preds = %lor.end
  %incdec.ptr = getelementptr inbounds i8, i8* %p.1, i64 1, !dbg !3551
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !3524, metadata !DIExpression()), !dbg !3534
  br label %while.cond, !dbg !3547, !llvm.loop !3552

while.end:                                        ; preds = %lor.end, %while.cond
  %p.1.lcssa = phi i8* [ %p.1, %lor.end ], [ %p.1, %while.cond ], !dbg !3544
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !3524, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !3524, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !3524, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !3524, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !3524, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !3524, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !3525, metadata !DIExpression()), !dbg !3534
  br label %while.cond15, !dbg !3553

while.cond15:                                     ; preds = %while.body38, %while.end
  %q.0 = phi i8* [ %p.1.lcssa, %while.end ], [ %incdec.ptr39, %while.body38 ], !dbg !3540
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !3525, metadata !DIExpression()), !dbg !3534
  %cmp16 = icmp ult i8* %q.0, %add.ptr2, !dbg !3554
  br i1 %cmp16, label %land.rhs18, label %while.end40, !dbg !3555

land.rhs18:                                       ; preds = %while.cond15
  %7 = load i8, i8* %q.0, align 1, !dbg !3556
  %idxprom21 = zext i8 %7 to i64, !dbg !3556
  %arrayidx22 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom21, !dbg !3556
  %8 = load i16, i16* %arrayidx22, align 2, !dbg !3556
  %9 = and i16 %8, 516, !dbg !3556
  %tobool25 = icmp eq i16 %9, 0, !dbg !3556
  br i1 %tobool25, label %lor.rhs26, label %while.body38, !dbg !3556

lor.rhs26:                                        ; preds = %land.rhs18
  %cmp28 = icmp eq i8 %7, 36, !dbg !3556
  br i1 %cmp28, label %land.rhs30, label %while.end40, !dbg !3556

land.rhs30:                                       ; preds = %lor.rhs26
  %10 = load i8, i8* %dollars_in_ident, align 2, !dbg !3556
  %tobool34 = icmp eq i8 %10, 0, !dbg !3556
  br i1 %tobool34, label %while.end40, label %while.body38, !dbg !3553

while.body38:                                     ; preds = %land.rhs30, %land.rhs18
  %incdec.ptr39 = getelementptr inbounds i8, i8* %q.0, i64 1, !dbg !3557
  call void @llvm.dbg.value(metadata i8* %incdec.ptr39, metadata !3525, metadata !DIExpression()), !dbg !3534
  br label %while.cond15, !dbg !3553, !llvm.loop !3558

while.end40:                                      ; preds = %land.rhs30, %lor.rhs26, %while.cond15
  %q.0.lcssa = phi i8* [ %q.0, %land.rhs30 ], [ %q.0, %lor.rhs26 ], [ %q.0, %while.cond15 ], !dbg !3540
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !3525, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !3525, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !3525, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !3525, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !3525, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !3525, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !3525, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !3525, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !3525, metadata !DIExpression()), !dbg !3534
  %sub.ptr.lhs.cast = ptrtoint i8* %q.0.lcssa to i64, !dbg !3559
  %sub.ptr.rhs.cast = ptrtoint i8* %p.1.lcssa to i64, !dbg !3559
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3559
  %conv41 = trunc i64 %sub.ptr.sub to i32, !dbg !3560
  call void @llvm.dbg.value(metadata i32 %conv41, metadata !3523, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i32 0, metadata !3522, metadata !DIExpression()), !dbg !3534
  %conv53 = and i64 %sub.ptr.sub, 4294967295, !dbg !3561
  br label %for.cond42, !dbg !3563

for.cond42:                                       ; preds = %for.inc, %while.end40
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %while.end40 ], !dbg !3564
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3522, metadata !DIExpression()), !dbg !3534
  %11 = load i16, i16* %paramc, align 8, !dbg !3565
  %12 = zext i16 %11 to i64, !dbg !3566
  %cmp44 = icmp ult i64 %indvars.iv, %12, !dbg !3566
  br i1 %cmp44, label %for.body46, label %for.inc58, !dbg !3567

for.body46:                                       ; preds = %for.cond42
  %13 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params, align 8, !dbg !3568
  %arrayidx48 = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %13, i64 %indvars.iv, !dbg !3569
  %14 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx48, align 8, !dbg !3569
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %14, metadata !3527, metadata !DIExpression()), !dbg !3542
  %len49 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %14, i64 0, i32 0, i32 1, !dbg !3570
  %15 = load i32, i32* %len49, align 8, !dbg !3570
  %cmp50 = icmp eq i32 %15, %conv41, !dbg !3571
  br i1 %cmp50, label %land.lhs.true, label %cleanup, !dbg !3572

land.lhs.true:                                    ; preds = %for.body46
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %14, i64 0, i32 0, i32 0, !dbg !3573
  %16 = load i8*, i8** %str, align 8, !dbg !3573
  %call = tail call i32 @memcmp(i8* %p.1.lcssa, i8* %16, i64 %conv53) #10, !dbg !3574
  %tobool54 = icmp eq i32 %call, 0, !dbg !3574
  br i1 %tobool54, label %if.then, label %cleanup, !dbg !3575

if.then:                                          ; preds = %land.lhs.true
  %call57 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.50, i64 0, i64 0), i8* %16) #9, !dbg !3576
  br label %cleanup, !dbg !3578

cleanup:                                          ; preds = %land.lhs.true, %for.body46, %if.then
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then ], [ true, %land.lhs.true ], [ true, %for.body46 ]
  br i1 %cleanup.dest.slot.0, label %for.inc, label %for.inc58

for.inc:                                          ; preds = %cleanup
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3579
  call void @llvm.dbg.value(metadata i32 undef, metadata !3522, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3534
  br label %for.cond42, !dbg !3580, !llvm.loop !3581

for.inc58:                                        ; preds = %for.cond42, %cleanup
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !3524, metadata !DIExpression()), !dbg !3534
  br label %for.cond, !dbg !3583, !llvm.loop !3584

for.end59:                                        ; preds = %for.cond
  ret void, !dbg !3586
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #5

declare dso_local zeroext i8 @_cpp_expansions_different_trad(%struct.cpp_macro*, %struct.cpp_macro*) local_unnamed_addr #1

declare dso_local i32 @_cpp_equiv_tokens(%struct.cpp_token*, %struct.cpp_token*) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone speculatable }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nobuiltin nounwind readonly }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin nounwind readnone }
attributes #14 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!200, !201, !202}
!llvm.ident = !{!203}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "monthnames", scope: !2, file: !3, line: 109, type: !196, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !195, nameTableKind: None)
!3 = !DIFile(filename: "cpp_macro.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!42 = !{!43, !44, !46, !49, !54, !57, !139, !140, !78, !141, !144, !88, !183, !164, !192, !193, !97}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !50, line: 7, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !52, line: 160, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!53 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 46, baseType: !56)
!55 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_hashnode", file: !6, line: 36, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_hashnode", file: !6, line: 644, size: 256, elements: !61)
!61 = !{!62, !69, !70, !71, !72, !73, !74}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !60, file: !6, line: 645, baseType: !63, size: 128)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !64, line: 31, size: 128, elements: !65)
!64 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!65 = !{!66, !67, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !63, file: !64, line: 32, baseType: !46, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !63, file: !64, line: 33, baseType: !7, size: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !63, file: !64, line: 34, baseType: !7, size: 32, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !60, file: !6, line: 646, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !60, file: !6, line: 647, baseType: !7, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !60, file: !6, line: 650, baseType: !48, size: 8, offset: 136)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !60, file: !6, line: 651, baseType: !7, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !6, line: 652, baseType: !7, size: 10, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !60, file: !6, line: 654, baseType: !75, size: 64, offset: 192)
!75 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_cpp_hashnode_value", file: !6, line: 633, size: 64, elements: !76)
!76 = !{!77, !127, !137, !138}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !75, file: !6, line: 635, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_macro", file: !6, line: 37, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro", file: !81, line: 36, size: 256, elements: !82)
!81 = !DIFile(filename: "./cpp-id-data.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!82 = !{!83, !84, !118, !119, !120, !121, !122, !123, !124, !125, !126}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !80, file: !81, line: 42, baseType: !57, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !80, file: !81, line: 51, baseType: !85, size: 64, offset: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_macro_u", file: !81, line: 47, size: 64, elements: !86)
!86 = !{!87, !117}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "tokens", scope: !85, file: !81, line: 49, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !6, line: 34, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !6, line: 212, size: 192, elements: !91)
!91 = !{!92, !95, !96, !98}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !90, file: !6, line: 213, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !94, line: 44, baseType: !7)
!94 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!95 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !6, line: 214, baseType: !7, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !6, line: 215, baseType: !97, size: 16, offset: 48)
!97 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !90, file: !6, line: 237, baseType: !99, size: 128, offset: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_token_u", file: !6, line: 217, size: 128, elements: !100)
!100 = !{!101, !105, !106, !111, !115, !116}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !99, file: !6, line: 220, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_identifier", file: !6, line: 201, size: 64, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !102, file: !6, line: 207, baseType: !58, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !99, file: !6, line: 223, baseType: !88, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !99, file: !6, line: 226, baseType: !107, size: 128)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !6, line: 162, size: 128, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !107, file: !6, line: 163, baseType: !7, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !107, file: !6, line: 164, baseType: !46, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !99, file: !6, line: 229, baseType: !112, size: 32)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !6, line: 195, size: 32, elements: !113)
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !112, file: !6, line: 197, baseType: !7, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !99, file: !6, line: 233, baseType: !7, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !99, file: !6, line: 236, baseType: !7, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !85, file: !81, line: 50, baseType: !46, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !80, file: !81, line: 54, baseType: !93, size: 32, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !80, file: !81, line: 57, baseType: !7, size: 32, offset: 160)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "paramc", scope: !80, file: !81, line: 60, baseType: !97, size: 16, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "fun_like", scope: !80, file: !81, line: 63, baseType: !7, size: 1, offset: 208, flags: DIFlagBitField, extraData: i64 208)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "variadic", scope: !80, file: !81, line: 66, baseType: !7, size: 1, offset: 209, flags: DIFlagBitField, extraData: i64 208)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "syshdr", scope: !80, file: !81, line: 69, baseType: !7, size: 1, offset: 210, flags: DIFlagBitField, extraData: i64 208)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !80, file: !81, line: 72, baseType: !7, size: 1, offset: 211, flags: DIFlagBitField, extraData: i64 208)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !80, file: !81, line: 75, baseType: !7, size: 1, offset: 212, flags: DIFlagBitField, extraData: i64 208)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "extra_tokens", scope: !80, file: !81, line: 80, baseType: !7, size: 1, offset: 213, flags: DIFlagBitField, extraData: i64 208)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "answers", scope: !75, file: !6, line: 637, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !81, line: 28, size: 320, elements: !130)
!130 = !{!131, !132, !133}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !129, file: !81, line: 29, baseType: !128, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !129, file: !81, line: 30, baseType: !7, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !129, file: !81, line: 31, baseType: !134, size: 192, offset: 128)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 192, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 1)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !75, file: !6, line: 639, baseType: !5, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !75, file: !6, line: 641, baseType: !97, size: 16)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !81, line: 22, baseType: !48)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_context", file: !146, line: 141, baseType: !147)
!146 = !DIFile(filename: "./internal.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_context", file: !146, line: 142, size: 448, elements: !148)
!148 = !{!149, !150, !151, !171, !181, !182}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !146, line: 145, baseType: !144, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !147, file: !146, line: 145, baseType: !144, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !147, file: !146, line: 164, baseType: !152, size: 128, offset: 128)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !146, line: 147, size: 128, elements: !153)
!153 = !{!154, !166}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "iso", scope: !152, file: !146, line: 156, baseType: !155, size: 128)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !146, line: 152, size: 128, elements: !156)
!156 = !{!157, !165}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !155, file: !146, line: 154, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "utoken", file: !146, line: 121, size: 64, elements: !159)
!159 = !{!160, !163}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !158, file: !146, line: 123, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ptoken", scope: !158, file: !146, line: 124, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !155, file: !146, line: 155, baseType: !158, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "trad", scope: !152, file: !146, line: 163, baseType: !167, size: 128)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !146, line: 159, size: 128, elements: !168)
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !167, file: !146, line: 161, baseType: !46, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !167, file: !146, line: 162, baseType: !46, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !147, file: !146, line: 168, baseType: !172, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_buff", file: !146, line: 99, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_buff", file: !146, line: 100, size: 256, elements: !175)
!175 = !{!176, !178, !179, !180}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !174, file: !146, line: 102, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !174, file: !146, line: 103, baseType: !139, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !174, file: !146, line: 103, baseType: !139, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !174, file: !146, line: 103, baseType: !139, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !147, file: !146, line: 171, baseType: !58, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "direct_p", scope: !147, file: !146, line: 174, baseType: !48, size: 8, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "macro_arg", file: !3, line: 33, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macro_arg", file: !3, line: 34, size: 256, elements: !186)
!186 = !{!187, !188, !189, !190, !191}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !185, file: !3, line: 36, baseType: !164, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "expanded", scope: !185, file: !3, line: 37, baseType: !164, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "stringified", scope: !185, file: !3, line: 38, baseType: !161, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !185, file: !3, line: 39, baseType: !7, size: 32, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "expanded_count", scope: !185, file: !3, line: 40, baseType: !7, size: 32, offset: 224)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!195 = !{!0}
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 768, elements: !198)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!198 = !{!199}
!199 = !DISubrange(count: 12)
!200 = !{i32 2, !"Dwarf Version", i32 4}
!201 = !{i32 2, !"Debug Info Version", i32 3}
!202 = !{i32 1, !"wchar_size", i32 4}
!203 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!204 = distinct !DISubprogram(name: "tolower", scope: !205, file: !205, line: 207, type: !206, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !209)
!205 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !208}
!208 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!209 = !{!210}
!210 = !DILocalVariable(name: "__c", arg: 1, scope: !204, file: !205, line: 207, type: !208)
!211 = !DILocation(line: 0, scope: !204)
!212 = !DILocation(line: 209, column: 22, scope: !204)
!213 = !DILocation(line: 209, column: 39, scope: !204)
!214 = !DILocation(line: 209, column: 38, scope: !204)
!215 = !DILocation(line: 209, column: 37, scope: !204)
!216 = !DILocation(line: 209, column: 10, scope: !204)
!217 = !DILocation(line: 209, column: 3, scope: !204)
!218 = distinct !DISubprogram(name: "toupper", scope: !205, file: !205, line: 213, type: !206, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !219)
!219 = !{!220}
!220 = !DILocalVariable(name: "__c", arg: 1, scope: !218, file: !205, line: 213, type: !208)
!221 = !DILocation(line: 0, scope: !218)
!222 = !DILocation(line: 215, column: 22, scope: !218)
!223 = !DILocation(line: 215, column: 39, scope: !218)
!224 = !DILocation(line: 215, column: 38, scope: !218)
!225 = !DILocation(line: 215, column: 37, scope: !218)
!226 = !DILocation(line: 215, column: 10, scope: !218)
!227 = !DILocation(line: 215, column: 3, scope: !218)
!228 = distinct !DISubprogram(name: "_cpp_warn_if_unused_macro", scope: !3, file: !3, line: 78, type: !229, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !669)
!229 = !DISubroutineType(types: !230)
!230 = !{!208, !231, !58, !43}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !6, line: 31, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !146, line: 322, size: 10432, elements: !234)
!234 = !{!235, !308, !309, !326, !356, !357, !358, !359, !360, !361, !363, !367, !368, !369, !370, !371, !372, !373, !374, !375, !378, !379, !382, !383, !415, !416, !417, !420, !421, !422, !423, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !449, !450, !451, !454, !534, !560, !563, !564, !627, !634, !635, !642, !643, !644, !645, !648, !649, !662}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !233, file: !146, line: 325, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_buffer", file: !6, line: 32, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_buffer", file: !146, line: 249, size: 1536, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !252, !253, !254, !255, !257, !260, !261, !264, !265, !266, !267, !268, !269, !294}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !238, file: !146, line: 251, baseType: !46, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "line_base", scope: !238, file: !146, line: 252, baseType: !46, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !238, file: !146, line: 253, baseType: !46, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !238, file: !146, line: 255, baseType: !46, size: 64, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !238, file: !146, line: 256, baseType: !46, size: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !238, file: !146, line: 258, baseType: !246, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_line_note", file: !146, line: 235, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_line_note", file: !146, line: 236, size: 128, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !248, file: !146, line: 239, baseType: !46, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !248, file: !146, line: 245, baseType: !7, size: 32, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "cur_note", scope: !238, file: !146, line: 259, baseType: !7, size: 32, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "notes_used", scope: !238, file: !146, line: 260, baseType: !7, size: 32, offset: 416)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "notes_cap", scope: !238, file: !146, line: 261, baseType: !7, size: 32, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !238, file: !146, line: 263, baseType: !256, size: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !238, file: !146, line: 267, baseType: !258, size: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_file", file: !6, line: 42, flags: DIFlagFwdDecl)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !238, file: !146, line: 271, baseType: !46, size: 64, offset: 640)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "if_stack", scope: !238, file: !146, line: 275, baseType: !262, size: 64, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DICompositeType(tag: DW_TAG_structure_type, name: "if_stack", file: !146, line: 275, flags: DIFlagFwdDecl)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "need_line", scope: !238, file: !146, line: 278, baseType: !48, size: 8, offset: 768)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "warned_cplusplus_comments", scope: !238, file: !146, line: 284, baseType: !7, size: 1, offset: 776, flags: DIFlagBitField, extraData: i64 776)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "from_stage3", scope: !238, file: !146, line: 289, baseType: !7, size: 1, offset: 777, flags: DIFlagBitField, extraData: i64 776)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "return_at_eof", scope: !238, file: !146, line: 294, baseType: !7, size: 1, offset: 778, flags: DIFlagBitField, extraData: i64 776)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !238, file: !146, line: 298, baseType: !48, size: 8, offset: 784)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !238, file: !146, line: 302, baseType: !270, size: 512, offset: 832)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !6, line: 523, size: 512, elements: !271)
!271 = !{!272, !274, !275, !276, !277, !278, !279, !281, !287, !291}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !6, line: 526, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !270, file: !6, line: 529, baseType: !44, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !270, file: !6, line: 530, baseType: !7, size: 32, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !270, file: !6, line: 534, baseType: !48, size: 8, offset: 160)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !270, file: !6, line: 537, baseType: !48, size: 8, offset: 168)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !270, file: !6, line: 541, baseType: !44, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !270, file: !6, line: 545, baseType: !280, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !270, file: !6, line: 551, baseType: !282, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!44, !193, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !6, line: 39, baseType: !270)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !270, file: !6, line: 555, baseType: !288, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !289, line: 47, baseType: !290)
!289 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !52, line: 148, baseType: !56)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !270, file: !6, line: 556, baseType: !292, size: 64, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !289, line: 59, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !52, line: 145, baseType: !56)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "input_cset_desc", scope: !238, file: !146, line: 306, baseType: !295, size: 192, offset: 1344)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cset_converter", file: !146, line: 47, size: 192, elements: !296)
!296 = !{!297, !306, !307}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !295, file: !146, line: 49, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "convert_f", file: !146, line: 45, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!48, !302, !46, !54, !304}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !303, line: 29, baseType: !43)
!303 = !DIFile(filename: "/usr/include/iconv.h", directory: "")
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_strbuf", file: !146, line: 43, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !295, file: !146, line: 50, baseType: !302, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !295, file: !146, line: 51, baseType: !208, size: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "overlaid_buffer", scope: !233, file: !146, line: 328, baseType: !236, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !233, file: !146, line: 331, baseType: !310, size: 160, offset: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lexer_state", file: !146, line: 177, size: 160, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "in_directive", scope: !310, file: !146, line: 180, baseType: !48, size: 8)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "directive_wants_padding", scope: !310, file: !146, line: 185, baseType: !48, size: 8, offset: 8)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "skipping", scope: !310, file: !146, line: 188, baseType: !48, size: 8, offset: 16)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "angled_headers", scope: !310, file: !146, line: 191, baseType: !48, size: 8, offset: 24)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "in_expression", scope: !310, file: !146, line: 194, baseType: !48, size: 8, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "save_comments", scope: !310, file: !146, line: 198, baseType: !48, size: 8, offset: 40)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "va_args_ok", scope: !310, file: !146, line: 201, baseType: !48, size: 8, offset: 48)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned_ok", scope: !310, file: !146, line: 204, baseType: !48, size: 8, offset: 56)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_expansion", scope: !310, file: !146, line: 207, baseType: !48, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "parsing_args", scope: !310, file: !146, line: 210, baseType: !48, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "discarding_output", scope: !310, file: !146, line: 214, baseType: !48, size: 8, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "skip_eval", scope: !310, file: !146, line: 217, baseType: !7, size: 32, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "in_deferred_pragma", scope: !310, file: !146, line: 220, baseType: !48, size: 8, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pragma_allow_expansion", scope: !310, file: !146, line: 223, baseType: !48, size: 8, offset: 136)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "line_table", scope: !233, file: !146, line: 334, baseType: !327, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !94, line: 74, size: 448, elements: !329)
!329 = !{!330, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !328, file: !94, line: 75, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !94, line: 61, size: 192, elements: !333)
!333 = !{!334, !335, !337, !338, !339, !340, !341}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !332, file: !94, line: 62, baseType: !193, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !332, file: !94, line: 63, baseType: !336, size: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !94, line: 39, baseType: !7)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !332, file: !94, line: 64, baseType: !93, size: 32, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !332, file: !94, line: 65, baseType: !208, size: 32, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !332, file: !94, line: 66, baseType: !7, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !332, file: !94, line: 68, baseType: !48, size: 8, offset: 168)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !332, file: !94, line: 70, baseType: !7, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !328, file: !94, line: 76, baseType: !7, size: 32, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !328, file: !94, line: 77, baseType: !7, size: 32, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !328, file: !94, line: 79, baseType: !7, size: 32, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !328, file: !94, line: 84, baseType: !208, size: 32, offset: 160)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !328, file: !94, line: 87, baseType: !7, size: 32, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !328, file: !94, line: 90, baseType: !48, size: 8, offset: 224)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !328, file: !94, line: 93, baseType: !93, size: 32, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !328, file: !94, line: 96, baseType: !93, size: 32, offset: 288)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !328, file: !94, line: 100, baseType: !7, size: 32, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !328, file: !94, line: 104, baseType: !352, size: 64, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !94, line: 47, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!43, !43, !54}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "directive_line", scope: !233, file: !146, line: 337, baseType: !93, size: 32, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "a_buff", scope: !233, file: !146, line: 340, baseType: !172, size: 64, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "u_buff", scope: !233, file: !146, line: 341, baseType: !172, size: 64, offset: 512)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffs", scope: !233, file: !146, line: 342, baseType: !172, size: 64, offset: 576)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "base_context", scope: !233, file: !146, line: 345, baseType: !147, size: 448, offset: 640)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !233, file: !146, line: 346, baseType: !362, size: 64, offset: 1088)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !233, file: !146, line: 349, baseType: !364, size: 64, offset: 1152)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "directive", file: !146, line: 40, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "directive_result", scope: !233, file: !146, line: 352, baseType: !89, size: 192, offset: 1216)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "invocation_location", scope: !233, file: !146, line: 356, baseType: !93, size: 32, offset: 1408)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "set_invocation_location", scope: !233, file: !146, line: 360, baseType: !48, size: 8, offset: 1440)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "quote_include", scope: !233, file: !146, line: 363, baseType: !273, size: 64, offset: 1472)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "bracket_include", scope: !233, file: !146, line: 364, baseType: !273, size: 64, offset: 1536)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "no_search_path", scope: !233, file: !146, line: 365, baseType: !270, size: 512, offset: 1600)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "all_files", scope: !233, file: !146, line: 368, baseType: !258, size: 64, offset: 2112)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "main_file", scope: !233, file: !146, line: 370, baseType: !258, size: 64, offset: 2176)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash", scope: !233, file: !146, line: 373, baseType: !376, size: 64, offset: 2240)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !146, line: 373, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash", scope: !233, file: !146, line: 374, baseType: !376, size: 64, offset: 2304)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash_entries", scope: !233, file: !146, line: 375, baseType: !380, size: 64, offset: 2368)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_hash_entry_pool", file: !146, line: 375, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_hash", scope: !233, file: !146, line: 378, baseType: !376, size: 64, offset: 2432)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_ob", scope: !233, file: !146, line: 379, baseType: !384, size: 704, offset: 2496)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !385, line: 164, size: 704, elements: !386)
!385 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !{!387, !388, !398, !399, !400, !401, !402, !403, !407, !411, !412, !413, !414}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !384, file: !385, line: 166, baseType: !53, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !384, file: !385, line: 167, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !385, line: 157, size: 192, elements: !391)
!391 = !{!392, !393, !394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !390, file: !385, line: 159, baseType: !44, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !390, file: !385, line: 160, baseType: !389, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !390, file: !385, line: 161, baseType: !395, size: 32, offset: 128)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 4)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !384, file: !385, line: 168, baseType: !44, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !384, file: !385, line: 169, baseType: !44, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !384, file: !385, line: 170, baseType: !44, size: 64, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !384, file: !385, line: 171, baseType: !53, size: 64, offset: 320)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !384, file: !385, line: 172, baseType: !208, size: 32, offset: 384)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !384, file: !385, line: 176, baseType: !404, size: 64, offset: 448)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!389, !43, !53}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !384, file: !385, line: 177, baseType: !408, size: 64, offset: 512)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !43, !389}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !384, file: !385, line: 178, baseType: !43, size: 64, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !384, file: !385, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !384, file: !385, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !384, file: !385, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "quote_ignores_source_dir", scope: !233, file: !146, line: 383, baseType: !48, size: 8, offset: 3200)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "seen_once_only", scope: !233, file: !146, line: 387, baseType: !48, size: 8, offset: 3208)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mi_cmacro", scope: !233, file: !146, line: 390, baseType: !418, size: 64, offset: 3264)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mi_ind_cmacro", scope: !233, file: !146, line: 391, baseType: !418, size: 64, offset: 3328)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mi_valid", scope: !233, file: !146, line: 392, baseType: !48, size: 8, offset: 3392)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "cur_token", scope: !233, file: !146, line: 395, baseType: !88, size: 64, offset: 3456)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "base_run", scope: !233, file: !146, line: 396, baseType: !424, size: 256, offset: 3520)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "tokenrun", file: !146, line: 128, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenrun", file: !146, line: 129, size: 256, elements: !426)
!426 = !{!427, !429, !430, !431}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !146, line: 131, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !425, file: !146, line: 131, baseType: !428, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !425, file: !146, line: 132, baseType: !88, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !425, file: !146, line: 132, baseType: !88, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "cur_run", scope: !233, file: !146, line: 396, baseType: !428, size: 64, offset: 3776)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lookaheads", scope: !233, file: !146, line: 397, baseType: !7, size: 32, offset: 3840)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "keep_tokens", scope: !233, file: !146, line: 400, baseType: !7, size: 32, offset: 3872)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer", scope: !233, file: !146, line: 403, baseType: !139, size: 64, offset: 3904)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer_len", scope: !233, file: !146, line: 404, baseType: !7, size: 32, offset: 3968)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_cset_desc", scope: !233, file: !146, line: 408, baseType: !295, size: 192, offset: 4032)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_cset_desc", scope: !233, file: !146, line: 412, baseType: !295, size: 192, offset: 4224)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "char16_cset_desc", scope: !233, file: !146, line: 416, baseType: !295, size: 192, offset: 4416)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "char32_cset_desc", scope: !233, file: !146, line: 420, baseType: !295, size: 192, offset: 4608)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "wide_cset_desc", scope: !233, file: !146, line: 424, baseType: !295, size: 192, offset: 4800)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !233, file: !146, line: 427, baseType: !46, size: 64, offset: 4992)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !233, file: !146, line: 428, baseType: !46, size: 64, offset: 5056)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_paste", scope: !233, file: !146, line: 431, baseType: !89, size: 192, offset: 5120)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !233, file: !146, line: 432, baseType: !89, size: 192, offset: 5312)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !233, file: !146, line: 435, baseType: !447, size: 64, offset: 5504)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !6, line: 685, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "hash_ob", scope: !233, file: !146, line: 439, baseType: !384, size: 704, offset: 5568)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_ob", scope: !233, file: !146, line: 443, baseType: !384, size: 704, offset: 6272)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pragmas", scope: !233, file: !146, line: 447, baseType: !452, size: 64, offset: 6976)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "pragma_entry", file: !146, line: 447, flags: DIFlagFwdDecl)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !233, file: !146, line: 450, baseType: !455, size: 1088, offset: 7040)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !6, line: 472, size: 1088, elements: !456)
!456 = !{!457, !461, !467, !471, !475, !479, !480, !487, !491, !495, !499, !505, !509, !524, !525, !526, !530}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !455, file: !6, line: 475, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !231, !161, !208}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !455, file: !6, line: 481, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !231, !465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !455, file: !6, line: 483, baseType: !468, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !231, !193}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !455, file: !6, line: 484, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !231, !7, !46, !193, !208, !164}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !455, file: !6, line: 486, baseType: !476, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !231, !7, !58}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !455, file: !6, line: 487, baseType: !476, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !455, file: !6, line: 488, baseType: !481, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !231, !7, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !6, line: 35, baseType: !107)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !455, file: !6, line: 489, baseType: !488, size: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !231, !7}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !455, file: !6, line: 490, baseType: !492, size: 64, offset: 512)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!208, !231, !193, !208}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !455, file: !6, line: 491, baseType: !496, size: 64, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !231, !193, !208, !193}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !455, file: !6, line: 492, baseType: !500, size: 64, offset: 640)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !6, line: 469, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!193, !231, !193, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !455, file: !6, line: 496, baseType: !506, size: 64, offset: 704)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!58, !231, !161}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !455, file: !6, line: 500, baseType: !510, size: 64, offset: 768)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!48, !231, !208, !93, !7, !193, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !515, line: 14, baseType: !516)
!515 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 216, baseType: !517)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 192, elements: !135)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 216, size: 192, elements: !519)
!519 = !{!520, !521, !522, !523}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !518, file: !3, line: 216, baseType: !7, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !518, file: !3, line: 216, baseType: !7, size: 32, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !518, file: !3, line: 216, baseType: !43, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !518, file: !3, line: 216, baseType: !43, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !455, file: !6, line: 506, baseType: !476, size: 64, offset: 832)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !455, file: !6, line: 507, baseType: !476, size: 64, offset: 896)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !455, file: !6, line: 510, baseType: !527, size: 64, offset: 960)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !231}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !455, file: !6, line: 513, baseType: !531, size: 64, offset: 1024)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !231, !93, !58}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !233, file: !146, line: 453, baseType: !535, size: 64, offset: 8128)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht", file: !64, line: 46, size: 1152, elements: !537)
!537 = !{!538, !539, !543, !549, !553, !554, !555, !557, !558, !559}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !536, file: !64, line: 49, baseType: !384, size: 704)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !536, file: !64, line: 51, baseType: !540, size: 64, offset: 704)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashnode", file: !64, line: 41, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_node", scope: !536, file: !64, line: 53, baseType: !544, size: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!541, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !64, line: 40, baseType: !536)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_subobject", scope: !536, file: !64, line: 56, baseType: !550, size: 64, offset: 832)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!43, !54}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !536, file: !64, line: 58, baseType: !7, size: 32, offset: 896)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !536, file: !64, line: 59, baseType: !7, size: 32, offset: 928)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !536, file: !64, line: 62, baseType: !556, size: 64, offset: 960)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !536, file: !64, line: 65, baseType: !7, size: 32, offset: 1024)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !536, file: !64, line: 66, baseType: !7, size: 32, offset: 1056)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !536, file: !64, line: 69, baseType: !48, size: 8, offset: 1088)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "op_stack", scope: !233, file: !146, line: 456, baseType: !561, size: 64, offset: 8192)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !146, line: 42, flags: DIFlagFwdDecl)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "op_limit", scope: !233, file: !146, line: 456, baseType: !561, size: 64, offset: 8256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !233, file: !146, line: 459, baseType: !565, size: 1024, offset: 8320)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !6, line: 279, size: 1024, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !618, !619, !620, !621, !622, !623, !624, !625, !626}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !565, file: !6, line: 282, baseType: !7, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !565, file: !6, line: 285, baseType: !19, size: 32, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !565, file: !6, line: 288, baseType: !48, size: 8, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !565, file: !6, line: 291, baseType: !48, size: 8, offset: 72)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !565, file: !6, line: 296, baseType: !48, size: 8, offset: 80)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !565, file: !6, line: 299, baseType: !48, size: 8, offset: 88)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !565, file: !6, line: 303, baseType: !48, size: 8, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !565, file: !6, line: 306, baseType: !48, size: 8, offset: 104)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !565, file: !6, line: 309, baseType: !48, size: 8, offset: 112)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !565, file: !6, line: 312, baseType: !48, size: 8, offset: 120)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !565, file: !6, line: 315, baseType: !48, size: 8, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !565, file: !6, line: 318, baseType: !48, size: 8, offset: 136)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !565, file: !6, line: 321, baseType: !48, size: 8, offset: 144)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !565, file: !6, line: 324, baseType: !48, size: 8, offset: 152)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !565, file: !6, line: 328, baseType: !48, size: 8, offset: 160)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !565, file: !6, line: 331, baseType: !48, size: 8, offset: 168)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !565, file: !6, line: 334, baseType: !48, size: 8, offset: 176)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !565, file: !6, line: 338, baseType: !48, size: 8, offset: 184)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !565, file: !6, line: 341, baseType: !48, size: 8, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !565, file: !6, line: 344, baseType: !48, size: 8, offset: 200)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !565, file: !6, line: 348, baseType: !48, size: 8, offset: 208)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !565, file: !6, line: 352, baseType: !48, size: 8, offset: 216)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !565, file: !6, line: 356, baseType: !48, size: 8, offset: 224)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !565, file: !6, line: 360, baseType: !48, size: 8, offset: 232)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !565, file: !6, line: 363, baseType: !48, size: 8, offset: 240)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !565, file: !6, line: 366, baseType: !48, size: 8, offset: 248)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !565, file: !6, line: 370, baseType: !48, size: 8, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !565, file: !6, line: 373, baseType: !48, size: 8, offset: 264)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !565, file: !6, line: 376, baseType: !48, size: 8, offset: 272)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !565, file: !6, line: 379, baseType: !48, size: 8, offset: 280)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !565, file: !6, line: 382, baseType: !48, size: 8, offset: 288)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !565, file: !6, line: 385, baseType: !48, size: 8, offset: 296)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !565, file: !6, line: 389, baseType: !48, size: 8, offset: 304)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !565, file: !6, line: 392, baseType: !48, size: 8, offset: 312)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !565, file: !6, line: 395, baseType: !48, size: 8, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !565, file: !6, line: 398, baseType: !48, size: 8, offset: 328)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !565, file: !6, line: 401, baseType: !48, size: 8, offset: 336)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !565, file: !6, line: 404, baseType: !193, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !565, file: !6, line: 407, baseType: !193, size: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !565, file: !6, line: 410, baseType: !193, size: 64, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !565, file: !6, line: 414, baseType: !31, size: 32, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !565, file: !6, line: 417, baseType: !48, size: 8, offset: 608)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !565, file: !6, line: 420, baseType: !48, size: 8, offset: 616)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !565, file: !6, line: 441, baseType: !611, size: 64, offset: 640)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !565, file: !6, line: 423, size: 64, elements: !612)
!612 = !{!613, !614, !615, !616, !617}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !611, file: !6, line: 426, baseType: !37, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !611, file: !6, line: 429, baseType: !48, size: 8, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !611, file: !6, line: 433, baseType: !48, size: 8, offset: 40)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !611, file: !6, line: 436, baseType: !48, size: 8, offset: 48)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !611, file: !6, line: 440, baseType: !48, size: 8, offset: 56)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !565, file: !6, line: 447, baseType: !54, size: 64, offset: 704)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !565, file: !6, line: 447, baseType: !54, size: 64, offset: 768)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !565, file: !6, line: 447, baseType: !54, size: 64, offset: 832)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !565, file: !6, line: 447, baseType: !54, size: 64, offset: 896)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !565, file: !6, line: 450, baseType: !48, size: 8, offset: 960)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !565, file: !6, line: 450, baseType: !48, size: 8, offset: 968)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !565, file: !6, line: 454, baseType: !48, size: 8, offset: 976)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !565, file: !6, line: 457, baseType: !48, size: 8, offset: 984)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !565, file: !6, line: 460, baseType: !48, size: 8, offset: 992)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "spec_nodes", scope: !233, file: !146, line: 463, baseType: !628, size: 256, offset: 9344)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spec_nodes", file: !146, line: 227, size: 256, elements: !629)
!629 = !{!630, !631, !632, !633}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "n_defined", scope: !628, file: !146, line: 229, baseType: !58, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "n_true", scope: !628, file: !146, line: 230, baseType: !58, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "n_false", scope: !628, file: !146, line: 231, baseType: !58, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "n__VA_ARGS__", scope: !628, file: !146, line: 232, baseType: !58, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "our_hashtable", scope: !233, file: !146, line: 466, baseType: !48, size: 8, offset: 9600)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !233, file: !146, line: 475, baseType: !636, size: 256, offset: 9664)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !233, file: !146, line: 469, size: 256, elements: !637)
!637 = !{!638, !639, !640, !641}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !636, file: !146, line: 471, baseType: !139, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !636, file: !146, line: 472, baseType: !139, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !636, file: !146, line: 473, baseType: !139, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !636, file: !146, line: 474, baseType: !93, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cur", scope: !233, file: !146, line: 478, baseType: !46, size: 64, offset: 9920)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "saved_rlimit", scope: !233, file: !146, line: 478, baseType: !46, size: 64, offset: 9984)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "saved_line_base", scope: !233, file: !146, line: 478, baseType: !46, size: 64, offset: 10048)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "savedstate", scope: !233, file: !146, line: 482, baseType: !646, size: 64, offset: 10112)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_savedstate", file: !146, line: 482, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !233, file: !146, line: 485, baseType: !7, size: 32, offset: 10176)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "comments", scope: !233, file: !146, line: 488, baseType: !650, size: 128, offset: 10240)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment_table", file: !6, line: 901, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 891, size: 128, elements: !652)
!652 = !{!653, !660, !661}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !651, file: !6, line: 894, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment", file: !6, line: 887, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 880, size: 128, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !656, file: !6, line: 883, baseType: !44, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sloc", scope: !656, file: !6, line: 886, baseType: !93, size: 32, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !651, file: !6, line: 897, baseType: !208, size: 32, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !651, file: !6, line: 900, baseType: !208, size: 32, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pushed_macros", scope: !233, file: !146, line: 491, baseType: !663, size: 64, offset: 10368)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_pragma_macro", file: !146, line: 310, size: 192, elements: !665)
!665 = !{!666, !667, !668}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !664, file: !146, line: 312, baseType: !663, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !664, file: !146, line: 314, baseType: !44, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !664, file: !146, line: 316, baseType: !78, size: 64, offset: 128)
!669 = !{!670, !671, !672, !673}
!670 = !DILocalVariable(name: "pfile", arg: 1, scope: !228, file: !3, line: 78, type: !231)
!671 = !DILocalVariable(name: "node", arg: 2, scope: !228, file: !3, line: 78, type: !58)
!672 = !DILocalVariable(name: "v", arg: 3, scope: !228, file: !3, line: 79, type: !43)
!673 = !DILocalVariable(name: "macro", scope: !674, file: !3, line: 83, type: !78)
!674 = distinct !DILexicalBlock(scope: !675, file: !3, line: 82, column: 5)
!675 = distinct !DILexicalBlock(scope: !228, file: !3, line: 81, column: 7)
!676 = !DILocation(line: 0, scope: !228)
!677 = !DILocation(line: 81, column: 13, scope: !675)
!678 = !DILocation(line: 81, column: 18, scope: !675)
!679 = !DILocation(line: 81, column: 30, scope: !675)
!680 = !DILocation(line: 81, column: 47, scope: !675)
!681 = !DILocation(line: 81, column: 7, scope: !228)
!682 = !DILocation(line: 83, column: 38, scope: !674)
!683 = !DILocation(line: 0, scope: !674)
!684 = !DILocation(line: 85, column: 19, scope: !685)
!685 = distinct !DILexicalBlock(scope: !674, file: !3, line: 85, column: 11)
!686 = !DILocation(line: 85, column: 12, scope: !685)
!687 = !DILocation(line: 86, column: 4, scope: !685)
!688 = !DILocation(line: 86, column: 7, scope: !685)
!689 = !DILocation(line: 85, column: 11, scope: !674)
!690 = !DILocation(line: 87, column: 53, scope: !685)
!691 = !DILocation(line: 88, column: 37, scope: !685)
!692 = !DILocation(line: 87, column: 2, scope: !685)
!693 = !DILocation(line: 91, column: 3, scope: !228)
!694 = distinct !DISubprogram(name: "_cpp_builtin_macro_text", scope: !3, file: !3, line: 118, type: !695, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{!46, !231, !58}
!697 = !{!698, !699, !700, !701, !702, !703, !706, !709, !727, !762, !765, !766, !767, !769, !770, !771, !774}
!698 = !DILocalVariable(name: "pfile", arg: 1, scope: !694, file: !3, line: 118, type: !231)
!699 = !DILocalVariable(name: "node", arg: 2, scope: !694, file: !3, line: 118, type: !58)
!700 = !DILocalVariable(name: "map", scope: !694, file: !3, line: 120, type: !465)
!701 = !DILocalVariable(name: "result", scope: !694, file: !3, line: 121, type: !141)
!702 = !DILocalVariable(name: "number", scope: !694, file: !3, line: 122, type: !336)
!703 = !DILocalVariable(name: "pbuffer", scope: !704, file: !3, line: 133, type: !236)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 132, column: 7)
!705 = distinct !DILexicalBlock(scope: !694, file: !3, line: 125, column: 5)
!706 = !DILocalVariable(name: "file", scope: !707, file: !3, line: 137, type: !258)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 135, column: 4)
!708 = distinct !DILexicalBlock(scope: !704, file: !3, line: 134, column: 6)
!709 = !DILocalVariable(name: "tb", scope: !710, file: !3, line: 144, type: !712)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 139, column: 8)
!711 = distinct !DILexicalBlock(scope: !707, file: !3, line: 138, column: 10)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !714, line: 7, size: 448, elements: !715)
!714 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "")
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !713, file: !714, line: 9, baseType: !208, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !713, file: !714, line: 10, baseType: !208, size: 32, offset: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !713, file: !714, line: 11, baseType: !208, size: 32, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !713, file: !714, line: 12, baseType: !208, size: 32, offset: 96)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !713, file: !714, line: 13, baseType: !208, size: 32, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !713, file: !714, line: 14, baseType: !208, size: 32, offset: 160)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !713, file: !714, line: 15, baseType: !208, size: 32, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !713, file: !714, line: 16, baseType: !208, size: 32, offset: 224)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !713, file: !714, line: 17, baseType: !208, size: 32, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !713, file: !714, line: 23, baseType: !53, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !713, file: !714, line: 24, baseType: !193, size: 64, offset: 384)
!727 = !DILocalVariable(name: "st", scope: !710, file: !3, line: 145, type: !728)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !730, line: 46, size: 1152, elements: !731)
!730 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!731 = !{!732, !733, !734, !736, !738, !740, !742, !743, !744, !746, !748, !750, !751, !753, !754, !755, !756, !757}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !729, file: !730, line: 48, baseType: !293, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !729, file: !730, line: 53, baseType: !290, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !729, file: !730, line: 61, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !52, line: 151, baseType: !56)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !729, file: !730, line: 62, baseType: !737, size: 32, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !52, line: 150, baseType: !7)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !729, file: !730, line: 64, baseType: !739, size: 32, offset: 224)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !52, line: 146, baseType: !7)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !729, file: !730, line: 65, baseType: !741, size: 32, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !52, line: 147, baseType: !7)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !729, file: !730, line: 67, baseType: !208, size: 32, offset: 288)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !729, file: !730, line: 69, baseType: !293, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !729, file: !730, line: 74, baseType: !745, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !52, line: 152, baseType: !53)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !729, file: !730, line: 78, baseType: !747, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !52, line: 174, baseType: !53)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !729, file: !730, line: 80, baseType: !749, size: 64, offset: 512)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !52, line: 179, baseType: !53)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "st_atime", scope: !729, file: !730, line: 98, baseType: !51, size: 64, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimensec", scope: !729, file: !730, line: 99, baseType: !752, size: 64, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_ulong_t", file: !52, line: 198, baseType: !56)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtime", scope: !729, file: !730, line: 100, baseType: !51, size: 64, offset: 704)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimensec", scope: !729, file: !730, line: 101, baseType: !752, size: 64, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctime", scope: !729, file: !730, line: 102, baseType: !51, size: 64, offset: 832)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimensec", scope: !729, file: !730, line: 103, baseType: !752, size: 64, offset: 896)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !729, file: !730, line: 106, baseType: !758, size: 192, offset: 960)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, size: 192, elements: !760)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !52, line: 196, baseType: !53)
!760 = !{!761}
!761 = !DISubrange(count: 3)
!762 = !DILocalVariable(name: "str", scope: !763, file: !3, line: 150, type: !44)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 149, column: 5)
!764 = distinct !DILexicalBlock(scope: !710, file: !3, line: 148, column: 7)
!765 = !DILocalVariable(name: "len", scope: !763, file: !3, line: 151, type: !54)
!766 = !DILocalVariable(name: "buf", scope: !763, file: !3, line: 152, type: !139)
!767 = !DILocalVariable(name: "len", scope: !768, file: !3, line: 172, type: !7)
!768 = distinct !DILexicalBlock(scope: !705, file: !3, line: 171, column: 7)
!769 = !DILocalVariable(name: "name", scope: !768, file: !3, line: 173, type: !193)
!770 = !DILocalVariable(name: "buf", scope: !768, file: !3, line: 174, type: !192)
!771 = !DILocalVariable(name: "tt", scope: !772, file: !3, line: 230, type: !49)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 225, column: 2)
!773 = distinct !DILexicalBlock(scope: !705, file: !3, line: 224, column: 11)
!774 = !DILocalVariable(name: "tb", scope: !772, file: !3, line: 231, type: !712)
!775 = !DILocation(line: 0, scope: !694)
!776 = !DILocation(line: 124, column: 17, scope: !694)
!777 = !DILocation(line: 124, column: 23, scope: !694)
!778 = !DILocation(line: 124, column: 3, scope: !694)
!779 = !DILocation(line: 128, column: 4, scope: !705)
!780 = !DILocation(line: 127, column: 7, scope: !705)
!781 = !DILocation(line: 129, column: 7, scope: !705)
!782 = !DILocation(line: 133, column: 24, scope: !704)
!783 = !DILocation(line: 0, scope: !704)
!784 = !DILocation(line: 134, column: 15, scope: !708)
!785 = !DILocation(line: 134, column: 25, scope: !708)
!786 = !DILocation(line: 134, column: 6, scope: !704)
!787 = !DILocation(line: 137, column: 38, scope: !707)
!788 = !DILocation(line: 0, scope: !707)
!789 = !DILocation(line: 138, column: 10, scope: !711)
!790 = !DILocation(line: 138, column: 10, scope: !707)
!791 = !DILocation(line: 166, column: 20, scope: !704)
!792 = !DILocation(line: 0, scope: !710)
!793 = !DILocation(line: 145, column: 21, scope: !710)
!794 = !DILocation(line: 146, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !710, file: !3, line: 146, column: 7)
!796 = !DILocation(line: 146, column: 7, scope: !710)
!797 = !DILocation(line: 147, column: 26, scope: !795)
!798 = !DILocation(line: 147, column: 10, scope: !795)
!799 = !DILocation(line: 147, column: 5, scope: !795)
!800 = !DILocation(line: 148, column: 7, scope: !764)
!801 = !DILocation(line: 148, column: 7, scope: !710)
!802 = !DILocation(line: 150, column: 19, scope: !763)
!803 = !DILocation(line: 0, scope: !763)
!804 = !DILocation(line: 151, column: 20, scope: !763)
!805 = !DILocation(line: 152, column: 61, scope: !763)
!806 = !DILocation(line: 152, column: 28, scope: !763)
!807 = !DILocation(line: 153, column: 14, scope: !763)
!808 = !DILocation(line: 154, column: 28, scope: !763)
!809 = !DILocation(line: 154, column: 7, scope: !763)
!810 = !DILocation(line: 155, column: 7, scope: !763)
!811 = !DILocation(line: 155, column: 16, scope: !763)
!812 = !DILocation(line: 156, column: 26, scope: !763)
!813 = !DILocation(line: 157, column: 5, scope: !763)
!814 = !DILocation(line: 160, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !764, file: !3, line: 159, column: 5)
!816 = !DILocation(line: 162, column: 26, scope: !815)
!817 = !DILocation(line: 168, column: 7, scope: !705)
!818 = !DILocation(line: 175, column: 31, scope: !768)
!819 = !DILocation(line: 175, column: 62, scope: !768)
!820 = !DILocation(line: 175, column: 8, scope: !768)
!821 = !DILocation(line: 177, column: 18, scope: !822)
!822 = distinct !DILexicalBlock(scope: !768, file: !3, line: 177, column: 6)
!823 = !DILocation(line: 177, column: 26, scope: !822)
!824 = !DILocation(line: 177, column: 6, scope: !768)
!825 = !DILocation(line: 178, column: 4, scope: !822)
!826 = !DILocation(line: 0, scope: !768)
!827 = !DILocation(line: 178, column: 13, scope: !822)
!828 = !DILocation(line: 179, column: 12, scope: !822)
!829 = distinct !{!829, !825, !828}
!830 = !DILocation(line: 181, column: 14, scope: !768)
!831 = !DILocation(line: 175, column: 6, scope: !768)
!832 = !DILocation(line: 182, column: 8, scope: !768)
!833 = !DILocation(line: 183, column: 41, scope: !768)
!834 = !DILocation(line: 183, column: 45, scope: !768)
!835 = !DILocation(line: 183, column: 37, scope: !768)
!836 = !DILocation(line: 183, column: 8, scope: !768)
!837 = !DILocation(line: 185, column: 7, scope: !768)
!838 = !DILocation(line: 186, column: 30, scope: !768)
!839 = !DILocation(line: 186, column: 8, scope: !768)
!840 = !DILocation(line: 187, column: 6, scope: !768)
!841 = !DILocation(line: 187, column: 9, scope: !768)
!842 = !DILocation(line: 188, column: 7, scope: !768)
!843 = !DILocation(line: 190, column: 7, scope: !705)
!844 = !DILocation(line: 196, column: 23, scope: !705)
!845 = !DILocation(line: 196, column: 35, scope: !705)
!846 = !DILocation(line: 196, column: 41, scope: !705)
!847 = !DILocation(line: 197, column: 7, scope: !705)
!848 = !DILocation(line: 200, column: 21, scope: !705)
!849 = !DILocation(line: 200, column: 33, scope: !705)
!850 = !DILocation(line: 200, column: 57, scope: !705)
!851 = !DILocation(line: 200, column: 61, scope: !705)
!852 = !DILocation(line: 200, column: 14, scope: !705)
!853 = !DILocation(line: 204, column: 16, scope: !705)
!854 = !DILocation(line: 208, column: 7, scope: !705)
!855 = !DILocation(line: 216, column: 11, scope: !856)
!856 = distinct !DILexicalBlock(scope: !705, file: !3, line: 216, column: 11)
!857 = !DILocation(line: 220, column: 7, scope: !705)
!858 = !DILocation(line: 224, column: 18, scope: !773)
!859 = !DILocation(line: 224, column: 23, scope: !773)
!860 = !DILocation(line: 224, column: 11, scope: !705)
!861 = !DILocation(line: 230, column: 4, scope: !772)
!862 = !DILocation(line: 0, scope: !772)
!863 = !DILocation(line: 236, column: 4, scope: !772)
!864 = !DILocation(line: 236, column: 10, scope: !772)
!865 = !DILocation(line: 237, column: 9, scope: !772)
!866 = !DILocation(line: 237, column: 7, scope: !772)
!867 = !DILocation(line: 238, column: 11, scope: !868)
!868 = distinct !DILexicalBlock(scope: !772, file: !3, line: 238, column: 8)
!869 = !DILocation(line: 238, column: 25, scope: !868)
!870 = !DILocation(line: 238, column: 28, scope: !868)
!871 = !DILocation(line: 238, column: 34, scope: !868)
!872 = !DILocation(line: 238, column: 8, scope: !772)
!873 = !DILocation(line: 239, column: 11, scope: !868)
!874 = !DILocation(line: 239, column: 6, scope: !868)
!875 = !DILocation(line: 241, column: 8, scope: !876)
!876 = distinct !DILexicalBlock(scope: !772, file: !3, line: 241, column: 8)
!877 = !DILocation(line: 241, column: 8, scope: !772)
!878 = !DILocation(line: 243, column: 22, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !3, line: 242, column: 6)
!880 = !DILocation(line: 243, column: 20, scope: !879)
!881 = !DILocation(line: 246, column: 25, scope: !879)
!882 = !DILocation(line: 246, column: 10, scope: !879)
!883 = !DILocation(line: 246, column: 38, scope: !879)
!884 = !DILocation(line: 247, column: 14, scope: !879)
!885 = !DILocation(line: 247, column: 22, scope: !879)
!886 = !DILocation(line: 245, column: 8, scope: !879)
!887 = !DILocation(line: 249, column: 22, scope: !879)
!888 = !DILocation(line: 249, column: 15, scope: !879)
!889 = !DILocation(line: 249, column: 20, scope: !879)
!890 = !DILocation(line: 252, column: 14, scope: !879)
!891 = !DILocation(line: 252, column: 27, scope: !879)
!892 = !DILocation(line: 252, column: 39, scope: !879)
!893 = !DILocation(line: 251, column: 8, scope: !879)
!894 = !DILocation(line: 253, column: 6, scope: !879)
!895 = !DILocation(line: 256, column: 8, scope: !896)
!896 = distinct !DILexicalBlock(scope: !876, file: !3, line: 255, column: 6)
!897 = !DILocation(line: 259, column: 20, scope: !896)
!898 = !DILocation(line: 260, column: 15, scope: !896)
!899 = !DILocation(line: 260, column: 20, scope: !896)
!900 = !DILocation(line: 262, column: 2, scope: !773)
!901 = !DILocation(line: 264, column: 23, scope: !902)
!902 = distinct !DILexicalBlock(scope: !705, file: !3, line: 264, column: 11)
!903 = !DILocation(line: 262, column: 2, scope: !772)
!904 = !DILocation(line: 264, column: 31, scope: !902)
!905 = !DILocation(line: 264, column: 11, scope: !705)
!906 = !DILocation(line: 265, column: 18, scope: !902)
!907 = !DILocation(line: 265, column: 2, scope: !902)
!908 = !DILocation(line: 267, column: 18, scope: !902)
!909 = !DILocation(line: 271, column: 11, scope: !910)
!910 = distinct !DILexicalBlock(scope: !705, file: !3, line: 271, column: 11)
!911 = !DILocation(line: 271, column: 47, scope: !910)
!912 = !DILocation(line: 271, column: 63, scope: !910)
!913 = !DILocation(line: 271, column: 50, scope: !910)
!914 = !DILocation(line: 271, column: 11, scope: !705)
!915 = !DILocation(line: 272, column: 2, scope: !910)
!916 = !DILocation(line: 274, column: 23, scope: !705)
!917 = !DILocation(line: 274, column: 30, scope: !705)
!918 = !DILocation(line: 275, column: 7, scope: !705)
!919 = !DILocation(line: 278, column: 14, scope: !920)
!920 = distinct !DILexicalBlock(scope: !694, file: !3, line: 278, column: 7)
!921 = !DILocation(line: 278, column: 7, scope: !694)
!922 = !DILocation(line: 281, column: 16, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !3, line: 279, column: 5)
!924 = !DILocation(line: 282, column: 7, scope: !923)
!925 = !DILocation(line: 283, column: 5, scope: !923)
!926 = !DILocation(line: 285, column: 3, scope: !694)
!927 = distinct !DISubprogram(name: "cpp_quote_string", scope: !3, file: !3, line: 333, type: !928, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !930)
!928 = !DISubroutineType(types: !929)
!929 = !{!139, !192, !141, !7}
!930 = !{!931, !932, !933, !934}
!931 = !DILocalVariable(name: "dest", arg: 1, scope: !927, file: !3, line: 333, type: !192)
!932 = !DILocalVariable(name: "src", arg: 2, scope: !927, file: !3, line: 333, type: !141)
!933 = !DILocalVariable(name: "len", arg: 3, scope: !927, file: !3, line: 333, type: !7)
!934 = !DILocalVariable(name: "c", scope: !935, file: !3, line: 337, type: !143)
!935 = distinct !DILexicalBlock(scope: !927, file: !3, line: 336, column: 5)
!936 = !DILocation(line: 0, scope: !927)
!937 = !DILocation(line: 335, column: 3, scope: !927)
!938 = !DILocation(line: 335, column: 13, scope: !927)
!939 = !DILocation(line: 337, column: 21, scope: !935)
!940 = !DILocation(line: 337, column: 17, scope: !935)
!941 = !DILocation(line: 0, scope: !935)
!942 = !DILocation(line: 339, column: 13, scope: !943)
!943 = distinct !DILexicalBlock(scope: !935, file: !3, line: 339, column: 11)
!944 = !DILocation(line: 339, column: 26, scope: !943)
!945 = !DILocation(line: 339, column: 21, scope: !943)
!946 = !DILocation(line: 0, scope: !943)
!947 = !DILocation(line: 341, column: 12, scope: !948)
!948 = distinct !DILexicalBlock(scope: !943, file: !3, line: 340, column: 2)
!949 = !DILocation(line: 342, column: 9, scope: !948)
!950 = !DILocation(line: 342, column: 12, scope: !948)
!951 = !DILocation(line: 343, column: 2, scope: !948)
!952 = !DILocation(line: 345, column: 12, scope: !943)
!953 = distinct !{!953, !937, !954}
!954 = !DILocation(line: 346, column: 5, scope: !927)
!955 = !DILocation(line: 348, column: 3, scope: !927)
!956 = distinct !DISubprogram(name: "cpp_in_system_header", scope: !146, file: !146, line: 525, type: !957, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !959)
!957 = !DISubroutineType(types: !958)
!958 = !{!208, !231}
!959 = !{!960}
!960 = !DILocalVariable(name: "pfile", arg: 1, scope: !956, file: !146, line: 525, type: !231)
!961 = !DILocation(line: 0, scope: !956)
!962 = !DILocation(line: 527, column: 17, scope: !956)
!963 = !DILocation(line: 527, column: 10, scope: !956)
!964 = !DILocation(line: 527, column: 41, scope: !956)
!965 = !DILocation(line: 527, column: 26, scope: !956)
!966 = !DILocation(line: 527, column: 3, scope: !956)
!967 = distinct !DISubprogram(name: "_cpp_arguments_ok", scope: !3, file: !3, line: 547, type: !968, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!48, !231, !78, !418, !7}
!970 = !{!971, !972, !973, !974}
!971 = !DILocalVariable(name: "pfile", arg: 1, scope: !967, file: !3, line: 547, type: !231)
!972 = !DILocalVariable(name: "macro", arg: 2, scope: !967, file: !3, line: 547, type: !78)
!973 = !DILocalVariable(name: "node", arg: 3, scope: !967, file: !3, line: 547, type: !418)
!974 = !DILocalVariable(name: "argc", arg: 4, scope: !967, file: !3, line: 547, type: !7)
!975 = !DILocation(line: 0, scope: !967)
!976 = !DILocation(line: 549, column: 22, scope: !977)
!977 = distinct !DILexicalBlock(scope: !967, file: !3, line: 549, column: 7)
!978 = !DILocation(line: 549, column: 15, scope: !977)
!979 = !DILocation(line: 549, column: 12, scope: !977)
!980 = !DILocation(line: 549, column: 7, scope: !967)
!981 = !DILocation(line: 552, column: 12, scope: !982)
!982 = distinct !DILexicalBlock(scope: !967, file: !3, line: 552, column: 7)
!983 = !DILocation(line: 552, column: 7, scope: !967)
!984 = !DILocation(line: 562, column: 16, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !3, line: 562, column: 11)
!986 = distinct !DILexicalBlock(scope: !982, file: !3, line: 553, column: 5)
!987 = !DILocation(line: 562, column: 20, scope: !985)
!988 = !DILocation(line: 562, column: 37, scope: !985)
!989 = !DILocation(line: 562, column: 47, scope: !985)
!990 = !DILocation(line: 562, column: 40, scope: !985)
!991 = !DILocation(line: 562, column: 11, scope: !986)
!992 = !DILocation(line: 564, column: 8, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 564, column: 8)
!994 = distinct !DILexicalBlock(scope: !985, file: !3, line: 563, column: 2)
!995 = !DILocation(line: 564, column: 29, scope: !993)
!996 = !DILocation(line: 564, column: 41, scope: !993)
!997 = !DILocation(line: 564, column: 34, scope: !993)
!998 = !DILocation(line: 564, column: 8, scope: !994)
!999 = !DILocation(line: 565, column: 6, scope: !993)
!1000 = !DILocation(line: 572, column: 4, scope: !986)
!1001 = !DILocation(line: 570, column: 7, scope: !986)
!1002 = !DILocation(line: 573, column: 5, scope: !986)
!1003 = !DILocation(line: 577, column: 9, scope: !982)
!1004 = !DILocation(line: 575, column: 5, scope: !982)
!1005 = !DILocation(line: 580, column: 1, scope: !967)
!1006 = distinct !DISubprogram(name: "_cpp_push_token_context", scope: !3, file: !3, line: 1122, type: !1007, scopeLine: 1124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{null, !231, !58, !161, !7}
!1009 = !{!1010, !1011, !1012, !1013, !1014}
!1010 = !DILocalVariable(name: "pfile", arg: 1, scope: !1006, file: !3, line: 1122, type: !231)
!1011 = !DILocalVariable(name: "macro", arg: 2, scope: !1006, file: !3, line: 1122, type: !58)
!1012 = !DILocalVariable(name: "first", arg: 3, scope: !1006, file: !3, line: 1123, type: !161)
!1013 = !DILocalVariable(name: "count", arg: 4, scope: !1006, file: !3, line: 1123, type: !7)
!1014 = !DILocalVariable(name: "context", scope: !1006, file: !3, line: 1125, type: !144)
!1015 = !DILocation(line: 0, scope: !1006)
!1016 = !DILocation(line: 1125, column: 26, scope: !1006)
!1017 = !DILocation(line: 1127, column: 12, scope: !1006)
!1018 = !DILocation(line: 1127, column: 21, scope: !1006)
!1019 = !DILocation(line: 1128, column: 12, scope: !1006)
!1020 = !DILocation(line: 1128, column: 18, scope: !1006)
!1021 = !DILocation(line: 1129, column: 12, scope: !1006)
!1022 = !DILocation(line: 1129, column: 17, scope: !1006)
!1023 = !DILocation(line: 1130, column: 19, scope: !1006)
!1024 = !DILocation(line: 1130, column: 25, scope: !1006)
!1025 = !DILocation(line: 1131, column: 32, scope: !1006)
!1026 = !DILocation(line: 1131, column: 18, scope: !1006)
!1027 = !DILocation(line: 1131, column: 24, scope: !1006)
!1028 = !DILocation(line: 1132, column: 1, scope: !1006)
!1029 = distinct !DISubprogram(name: "next_context", scope: !3, file: !3, line: 1090, type: !1030, scopeLine: 1091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!144, !231}
!1032 = !{!1033, !1034}
!1033 = !DILocalVariable(name: "pfile", arg: 1, scope: !1029, file: !3, line: 1090, type: !231)
!1034 = !DILocalVariable(name: "result", scope: !1029, file: !3, line: 1092, type: !144)
!1035 = !DILocation(line: 0, scope: !1029)
!1036 = !DILocation(line: 1092, column: 32, scope: !1029)
!1037 = !DILocation(line: 1092, column: 41, scope: !1029)
!1038 = !DILocation(line: 1094, column: 14, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 1094, column: 7)
!1040 = !DILocation(line: 1094, column: 7, scope: !1029)
!1041 = !DILocation(line: 1096, column: 16, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 1095, column: 5)
!1043 = !DILocation(line: 1097, column: 29, scope: !1042)
!1044 = !DILocation(line: 1097, column: 15, scope: !1042)
!1045 = !DILocation(line: 1097, column: 20, scope: !1042)
!1046 = !DILocation(line: 1098, column: 15, scope: !1042)
!1047 = !DILocation(line: 1098, column: 20, scope: !1042)
!1048 = !DILocation(line: 1099, column: 14, scope: !1042)
!1049 = !DILocation(line: 1099, column: 28, scope: !1042)
!1050 = !DILocation(line: 1100, column: 5, scope: !1042)
!1051 = !DILocation(line: 1102, column: 18, scope: !1029)
!1052 = !DILocation(line: 1103, column: 3, scope: !1029)
!1053 = distinct !DISubprogram(name: "_cpp_push_text_context", scope: !3, file: !3, line: 1136, type: !1054, scopeLine: 1138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !231, !58, !141, !54}
!1056 = !{!1057, !1058, !1059, !1060, !1061}
!1057 = !DILocalVariable(name: "pfile", arg: 1, scope: !1053, file: !3, line: 1136, type: !231)
!1058 = !DILocalVariable(name: "macro", arg: 2, scope: !1053, file: !3, line: 1136, type: !58)
!1059 = !DILocalVariable(name: "start", arg: 3, scope: !1053, file: !3, line: 1137, type: !141)
!1060 = !DILocalVariable(name: "len", arg: 4, scope: !1053, file: !3, line: 1137, type: !54)
!1061 = !DILocalVariable(name: "context", scope: !1053, file: !3, line: 1139, type: !144)
!1062 = !DILocation(line: 0, scope: !1053)
!1063 = !DILocation(line: 1139, column: 26, scope: !1053)
!1064 = !DILocation(line: 1141, column: 12, scope: !1053)
!1065 = !DILocation(line: 1141, column: 21, scope: !1053)
!1066 = !DILocation(line: 1142, column: 12, scope: !1053)
!1067 = !DILocation(line: 1142, column: 18, scope: !1053)
!1068 = !DILocation(line: 1143, column: 12, scope: !1053)
!1069 = !DILocation(line: 1143, column: 17, scope: !1053)
!1070 = !DILocation(line: 1144, column: 3, scope: !1053)
!1071 = !DILocation(line: 1144, column: 17, scope: !1053)
!1072 = !DILocation(line: 1145, column: 28, scope: !1053)
!1073 = !DILocation(line: 1145, column: 3, scope: !1053)
!1074 = !DILocation(line: 1145, column: 20, scope: !1053)
!1075 = !DILocation(line: 1146, column: 10, scope: !1053)
!1076 = !DILocation(line: 1146, column: 16, scope: !1053)
!1077 = !DILocation(line: 1147, column: 1, scope: !1053)
!1078 = distinct !DISubprogram(name: "_cpp_pop_context", scope: !3, file: !3, line: 1201, type: !528, scopeLine: 1202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1079)
!1079 = !{!1080, !1081}
!1080 = !DILocalVariable(name: "pfile", arg: 1, scope: !1078, file: !3, line: 1201, type: !231)
!1081 = !DILocalVariable(name: "context", scope: !1078, file: !3, line: 1203, type: !144)
!1082 = !DILocation(line: 0, scope: !1078)
!1083 = !DILocation(line: 1203, column: 33, scope: !1078)
!1084 = !DILocation(line: 1205, column: 16, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 1205, column: 7)
!1086 = !DILocation(line: 1205, column: 7, scope: !1085)
!1087 = !DILocation(line: 1205, column: 7, scope: !1078)
!1088 = !DILocation(line: 1206, column: 21, scope: !1085)
!1089 = !DILocation(line: 1206, column: 27, scope: !1085)
!1090 = !DILocation(line: 1206, column: 5, scope: !1085)
!1091 = !DILocation(line: 1208, column: 16, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 1208, column: 7)
!1093 = !DILocation(line: 1208, column: 7, scope: !1092)
!1094 = !DILocation(line: 1208, column: 7, scope: !1078)
!1095 = !DILocation(line: 1209, column: 5, scope: !1092)
!1096 = !DILocation(line: 1211, column: 29, scope: !1078)
!1097 = !DILocation(line: 1211, column: 18, scope: !1078)
!1098 = !DILocation(line: 1212, column: 1, scope: !1078)
!1099 = distinct !DISubprogram(name: "cpp_get_token", scope: !3, file: !3, line: 1226, type: !1100, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1102)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!161, !231}
!1102 = !{!1103, !1104, !1105, !1106, !1110, !1111, !1114, !1119, !1120}
!1103 = !DILocalVariable(name: "pfile", arg: 1, scope: !1099, file: !3, line: 1226, type: !231)
!1104 = !DILocalVariable(name: "result", scope: !1099, file: !3, line: 1228, type: !161)
!1105 = !DILocalVariable(name: "can_set", scope: !1099, file: !3, line: 1229, type: !48)
!1106 = !DILocalVariable(name: "node", scope: !1107, file: !3, line: 1234, type: !58)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 1233, column: 5)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 1232, column: 3)
!1109 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 1232, column: 3)
!1110 = !DILocalVariable(name: "context", scope: !1107, file: !3, line: 1235, type: !144)
!1111 = !DILocalVariable(name: "ret", scope: !1112, file: !3, line: 1276, type: !208)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 1275, column: 2)
!1113 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1274, column: 11)
!1114 = !DILocalVariable(name: "whitespace_after", scope: !1115, file: !3, line: 1290, type: !48)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 1289, column: 3)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 1288, column: 12)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 1287, column: 6)
!1118 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 1286, column: 8)
!1119 = !DILocalVariable(name: "peek_tok", scope: !1115, file: !3, line: 1291, type: !161)
!1120 = !DILocalVariable(name: "t", scope: !1121, file: !3, line: 1326, type: !88)
!1121 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 1323, column: 2)
!1122 = !DILocation(line: 0, scope: !1099)
!1123 = !DILocation(line: 1229, column: 25, scope: !1099)
!1124 = !DILocation(line: 1230, column: 34, scope: !1099)
!1125 = !DILocation(line: 0, scope: !1107)
!1126 = !DILocation(line: 0, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 1250, column: 12)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 1248, column: 6)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 1247, column: 8)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 1241, column: 2)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 1240, column: 16)
!1132 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1238, column: 11)
!1133 = !DILocation(line: 0, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 1256, column: 2)
!1135 = !DILocation(line: 0, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 1279, column: 8)
!1137 = !DILocation(line: 0, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 1281, column: 8)
!1139 = !DILocation(line: 0, scope: !1116)
!1140 = !DILocation(line: 1232, column: 3, scope: !1099)
!1141 = !DILocation(line: 1235, column: 37, scope: !1107)
!1142 = !DILocation(line: 1238, column: 21, scope: !1132)
!1143 = !DILocation(line: 1238, column: 12, scope: !1132)
!1144 = !DILocation(line: 1238, column: 11, scope: !1107)
!1145 = !DILocation(line: 1239, column: 11, scope: !1132)
!1146 = !DILocation(line: 1239, column: 2, scope: !1132)
!1147 = !DILocation(line: 1240, column: 32, scope: !1131)
!1148 = !DILocation(line: 1240, column: 56, scope: !1131)
!1149 = !DILocation(line: 1240, column: 38, scope: !1131)
!1150 = !DILocation(line: 1240, column: 16, scope: !1132)
!1151 = !DILocation(line: 1242, column: 17, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 1242, column: 8)
!1153 = !DILocation(line: 1242, column: 8, scope: !1152)
!1154 = !DILocation(line: 0, scope: !1152)
!1155 = !DILocation(line: 1242, column: 8, scope: !1130)
!1156 = !DILocation(line: 1243, column: 31, scope: !1152)
!1157 = !DILocation(line: 1243, column: 36, scope: !1152)
!1158 = !DILocation(line: 1243, column: 6, scope: !1152)
!1159 = !DILocation(line: 1245, column: 38, scope: !1152)
!1160 = !DILocation(line: 1245, column: 15, scope: !1152)
!1161 = !DILocation(line: 1247, column: 16, scope: !1129)
!1162 = !DILocation(line: 1247, column: 22, scope: !1129)
!1163 = !DILocation(line: 1247, column: 8, scope: !1130)
!1164 = !DILocation(line: 1249, column: 8, scope: !1128)
!1165 = !DILocation(line: 1250, column: 25, scope: !1127)
!1166 = !DILocation(line: 1250, column: 12, scope: !1127)
!1167 = !DILocation(line: 1250, column: 12, scope: !1128)
!1168 = distinct !{!1168, !1169, !1170}
!1169 = !DILocation(line: 1232, column: 3, scope: !1109)
!1170 = !DILocation(line: 1334, column: 5, scope: !1109)
!1171 = !DILocation(line: 1252, column: 15, scope: !1128)
!1172 = !DILocation(line: 1252, column: 8, scope: !1128)
!1173 = !DILocation(line: 1257, column: 4, scope: !1134)
!1174 = !DILocation(line: 1258, column: 21, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1258, column: 8)
!1176 = !DILocation(line: 1258, column: 8, scope: !1175)
!1177 = !DILocation(line: 1258, column: 8, scope: !1134)
!1178 = !DILocation(line: 0, scope: !1132)
!1179 = !DILocation(line: 1263, column: 24, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1263, column: 11)
!1181 = !DILocation(line: 1263, column: 11, scope: !1180)
!1182 = !DILocation(line: 1263, column: 37, scope: !1180)
!1183 = !DILocation(line: 0, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1266, column: 11)
!1185 = !DILocation(line: 1266, column: 19, scope: !1184)
!1186 = !DILocation(line: 1263, column: 48, scope: !1180)
!1187 = !DILocation(line: 1263, column: 53, scope: !1180)
!1188 = !DILocation(line: 1263, column: 11, scope: !1107)
!1189 = !DILocation(line: 1266, column: 24, scope: !1184)
!1190 = !DILocation(line: 1266, column: 11, scope: !1107)
!1191 = !DILocation(line: 1269, column: 22, scope: !1107)
!1192 = !DILocation(line: 1269, column: 31, scope: !1107)
!1193 = !DILocation(line: 1271, column: 17, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1271, column: 11)
!1195 = !DILocation(line: 1271, column: 22, scope: !1194)
!1196 = !DILocation(line: 1271, column: 34, scope: !1194)
!1197 = !DILocation(line: 1271, column: 46, scope: !1194)
!1198 = !DILocation(line: 1271, column: 52, scope: !1194)
!1199 = !DILocation(line: 1271, column: 11, scope: !1107)
!1200 = !DILocation(line: 1274, column: 25, scope: !1113)
!1201 = !DILocation(line: 1274, column: 11, scope: !1107)
!1202 = !DILocation(line: 0, scope: !1112)
!1203 = !DILocation(line: 1279, column: 16, scope: !1136)
!1204 = !DILocation(line: 1279, column: 29, scope: !1136)
!1205 = !DILocation(line: 1279, column: 20, scope: !1136)
!1206 = !DILocation(line: 1279, column: 8, scope: !1112)
!1207 = !DILocation(line: 1280, column: 43, scope: !1136)
!1208 = !DILocation(line: 1280, column: 33, scope: !1136)
!1209 = !DILocation(line: 1280, column: 6, scope: !1136)
!1210 = !DILocation(line: 1281, column: 21, scope: !1138)
!1211 = !DILocation(line: 1281, column: 8, scope: !1138)
!1212 = !DILocation(line: 1281, column: 8, scope: !1112)
!1213 = !DILocation(line: 1286, column: 15, scope: !1118)
!1214 = !DILocation(line: 1286, column: 21, scope: !1118)
!1215 = !DILocation(line: 1286, column: 41, scope: !1118)
!1216 = !DILocation(line: 1286, column: 8, scope: !1112)
!1217 = !DILocation(line: 1288, column: 22, scope: !1116)
!1218 = !DILocation(line: 1288, column: 12, scope: !1116)
!1219 = !DILocation(line: 1288, column: 12, scope: !1117)
!1220 = !DILocation(line: 1291, column: 33, scope: !1115)
!1221 = !DILocation(line: 0, scope: !1115)
!1222 = !DILocation(line: 1293, column: 35, scope: !1115)
!1223 = !DILocation(line: 1293, column: 40, scope: !1115)
!1224 = !DILocation(line: 1294, column: 11, scope: !1115)
!1225 = !DILocation(line: 1294, column: 25, scope: !1115)
!1226 = !DILocation(line: 1294, column: 31, scope: !1115)
!1227 = !DILocation(line: 1295, column: 22, scope: !1115)
!1228 = !DILocation(line: 1295, column: 12, scope: !1115)
!1229 = !DILocation(line: 1296, column: 9, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 1296, column: 9)
!1231 = !DILocation(line: 1296, column: 9, scope: !1115)
!1232 = !DILocation(line: 1297, column: 13, scope: !1230)
!1233 = !DILocation(line: 1297, column: 7, scope: !1230)
!1234 = !DILocation(line: 1298, column: 14, scope: !1230)
!1235 = !DILocation(line: 1304, column: 20, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1299, column: 7)
!1237 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 1298, column: 14)
!1238 = !DILocation(line: 1305, column: 23, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 1305, column: 13)
!1240 = !DILocation(line: 1305, column: 28, scope: !1239)
!1241 = !DILocation(line: 1306, column: 6, scope: !1239)
!1242 = !DILocation(line: 1306, column: 20, scope: !1239)
!1243 = !DILocation(line: 1306, column: 26, scope: !1239)
!1244 = !DILocation(line: 1306, column: 40, scope: !1239)
!1245 = !DILocation(line: 1305, column: 13, scope: !1236)
!1246 = !DILocation(line: 1308, column: 8, scope: !1239)
!1247 = !DILocation(line: 1307, column: 4, scope: !1239)
!1248 = !DILocation(line: 1314, column: 12, scope: !1118)
!1249 = !DILocation(line: 0, scope: !1118)
!1250 = !DILocation(line: 1315, column: 8, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 1315, column: 8)
!1252 = !DILocation(line: 1315, column: 8, scope: !1112)
!1253 = !DILocation(line: 1317, column: 25, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1317, column: 12)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1316, column: 7)
!1256 = !DILocation(line: 1317, column: 12, scope: !1254)
!1257 = !DILocation(line: 1317, column: 45, scope: !1254)
!1258 = !DILocation(line: 1317, column: 38, scope: !1254)
!1259 = !DILocation(line: 1319, column: 15, scope: !1255)
!1260 = !DILocation(line: 1319, column: 8, scope: !1255)
!1261 = !DILocation(line: 1326, column: 19, scope: !1121)
!1262 = !DILocation(line: 0, scope: !1121)
!1263 = !DILocation(line: 1327, column: 22, scope: !1121)
!1264 = !DILocation(line: 1327, column: 7, scope: !1121)
!1265 = !DILocation(line: 1327, column: 12, scope: !1121)
!1266 = !DILocation(line: 1328, column: 23, scope: !1121)
!1267 = !DILocation(line: 1328, column: 29, scope: !1121)
!1268 = !DILocation(line: 1328, column: 7, scope: !1121)
!1269 = !DILocation(line: 1328, column: 13, scope: !1121)
!1270 = !DILocation(line: 1329, column: 7, scope: !1121)
!1271 = !DILocation(line: 1329, column: 21, scope: !1121)
!1272 = !DILocation(line: 1333, column: 7, scope: !1107)
!1273 = !DILocation(line: 1336, column: 3, scope: !1099)
!1274 = !DILocation(line: 1337, column: 1, scope: !1099)
!1275 = distinct !DISubprogram(name: "paste_all_tokens", scope: !3, file: !3, line: 509, type: !1276, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1278)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !231, !161}
!1278 = !{!1279, !1280, !1281, !1282}
!1279 = !DILocalVariable(name: "pfile", arg: 1, scope: !1275, file: !3, line: 509, type: !231)
!1280 = !DILocalVariable(name: "lhs", arg: 2, scope: !1275, file: !3, line: 509, type: !161)
!1281 = !DILocalVariable(name: "rhs", scope: !1275, file: !3, line: 511, type: !161)
!1282 = !DILocalVariable(name: "context", scope: !1275, file: !3, line: 512, type: !144)
!1283 = !DILocation(line: 0, scope: !1275)
!1284 = !DILocation(line: 512, column: 33, scope: !1275)
!1285 = !DILocation(line: 0, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 521, column: 11)
!1287 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 515, column: 5)
!1288 = !DILocation(line: 514, column: 3, scope: !1275)
!1289 = !DILocation(line: 521, column: 20, scope: !1286)
!1290 = !DILocation(line: 521, column: 11, scope: !1286)
!1291 = !DILocation(line: 521, column: 11, scope: !1287)
!1292 = !DILocation(line: 522, column: 29, scope: !1286)
!1293 = !DILocation(line: 522, column: 2, scope: !1286)
!1294 = !DILocation(line: 524, column: 31, scope: !1286)
!1295 = !DILocation(line: 524, column: 8, scope: !1286)
!1296 = !DILocation(line: 526, column: 16, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 526, column: 11)
!1298 = !DILocation(line: 526, column: 21, scope: !1297)
!1299 = !DILocation(line: 526, column: 11, scope: !1287)
!1300 = !DILocation(line: 528, column: 13, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 528, column: 8)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 527, column: 2)
!1303 = !DILocation(line: 528, column: 19, scope: !1301)
!1304 = !DILocation(line: 528, column: 8, scope: !1302)
!1305 = !DILocation(line: 529, column: 6, scope: !1301)
!1306 = !DILocation(line: 531, column: 12, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 531, column: 11)
!1308 = !DILocation(line: 531, column: 11, scope: !1287)
!1309 = !DILocation(line: 534, column: 15, scope: !1275)
!1310 = !DILocation(line: 534, column: 21, scope: !1275)
!1311 = !DILocation(line: 533, column: 5, scope: !1287)
!1312 = distinct !{!1312, !1288, !1313}
!1313 = !DILocation(line: 534, column: 33, scope: !1275)
!1314 = !DILocation(line: 537, column: 41, scope: !1275)
!1315 = !DILocation(line: 537, column: 3, scope: !1275)
!1316 = !DILocation(line: 538, column: 1, scope: !1275)
!1317 = distinct !DISubprogram(name: "padding_token", scope: !3, file: !3, line: 1074, type: !1318, scopeLine: 1075, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1320)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!161, !231, !161}
!1320 = !{!1321, !1322, !1323}
!1321 = !DILocalVariable(name: "pfile", arg: 1, scope: !1317, file: !3, line: 1074, type: !231)
!1322 = !DILocalVariable(name: "source", arg: 2, scope: !1317, file: !3, line: 1074, type: !161)
!1323 = !DILocalVariable(name: "result", scope: !1317, file: !3, line: 1076, type: !88)
!1324 = !DILocation(line: 0, scope: !1317)
!1325 = !DILocation(line: 1076, column: 23, scope: !1317)
!1326 = !DILocation(line: 1078, column: 11, scope: !1317)
!1327 = !DILocation(line: 1078, column: 16, scope: !1317)
!1328 = !DILocation(line: 1082, column: 11, scope: !1317)
!1329 = !DILocation(line: 1082, column: 15, scope: !1317)
!1330 = !DILocation(line: 1082, column: 22, scope: !1317)
!1331 = !DILocation(line: 1083, column: 11, scope: !1317)
!1332 = !DILocation(line: 1083, column: 17, scope: !1317)
!1333 = !DILocation(line: 1084, column: 3, scope: !1317)
!1334 = distinct !DISubprogram(name: "enter_macro_context", scope: !3, file: !3, line: 828, type: !1335, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!208, !231, !58, !161}
!1337 = !{!1338, !1339, !1340, !1341, !1344, !1345, !1348}
!1338 = !DILocalVariable(name: "pfile", arg: 1, scope: !1334, file: !3, line: 828, type: !231)
!1339 = !DILocalVariable(name: "node", arg: 2, scope: !1334, file: !3, line: 828, type: !58)
!1340 = !DILocalVariable(name: "result", arg: 3, scope: !1334, file: !3, line: 829, type: !161)
!1341 = !DILocalVariable(name: "macro", scope: !1342, file: !3, line: 846, type: !78)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 845, column: 5)
!1343 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 844, column: 7)
!1344 = !DILocalVariable(name: "pragma_buff", scope: !1342, file: !3, line: 847, type: !172)
!1345 = !DILocalVariable(name: "buff", scope: !1346, file: !3, line: 851, type: !172)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 850, column: 2)
!1347 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 849, column: 11)
!1348 = !DILocalVariable(name: "tail", scope: !1349, file: !3, line: 905, type: !172)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 904, column: 6)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 899, column: 2)
!1351 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 898, column: 11)
!1352 = !DILocation(line: 0, scope: !1334)
!1353 = !DILocation(line: 832, column: 10, scope: !1334)
!1354 = !DILocation(line: 832, column: 19, scope: !1334)
!1355 = !DILocation(line: 834, column: 16, scope: !1334)
!1356 = !DILocation(line: 834, column: 31, scope: !1334)
!1357 = !DILocation(line: 836, column: 14, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 836, column: 7)
!1359 = !DILocation(line: 836, column: 20, scope: !1358)
!1360 = !DILocation(line: 836, column: 36, scope: !1358)
!1361 = !DILocation(line: 836, column: 53, scope: !1358)
!1362 = !DILocation(line: 836, column: 7, scope: !1334)
!1363 = !DILocation(line: 838, column: 19, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 837, column: 5)
!1365 = !DILocation(line: 839, column: 21, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 839, column: 11)
!1367 = !DILocation(line: 839, column: 11, scope: !1366)
!1368 = !DILocation(line: 839, column: 11, scope: !1364)
!1369 = !DILocation(line: 840, column: 39, scope: !1366)
!1370 = !DILocation(line: 840, column: 2, scope: !1366)
!1371 = !DILocation(line: 844, column: 16, scope: !1343)
!1372 = !DILocation(line: 844, column: 22, scope: !1343)
!1373 = !DILocation(line: 844, column: 7, scope: !1334)
!1374 = !DILocation(line: 846, column: 38, scope: !1342)
!1375 = !DILocation(line: 0, scope: !1342)
!1376 = !DILocation(line: 847, column: 7, scope: !1342)
!1377 = !DILocation(line: 847, column: 18, scope: !1342)
!1378 = !DILocation(line: 849, column: 18, scope: !1347)
!1379 = !DILocation(line: 849, column: 11, scope: !1347)
!1380 = !DILocation(line: 849, column: 11, scope: !1342)
!1381 = !DILocation(line: 853, column: 17, scope: !1346)
!1382 = !DILocation(line: 853, column: 34, scope: !1346)
!1383 = !DILocation(line: 854, column: 11, scope: !1346)
!1384 = !DILocation(line: 854, column: 22, scope: !1346)
!1385 = !DILocation(line: 855, column: 17, scope: !1346)
!1386 = !DILocation(line: 855, column: 30, scope: !1346)
!1387 = !DILocation(line: 856, column: 11, scope: !1346)
!1388 = !DILocation(line: 0, scope: !1346)
!1389 = !DILocation(line: 857, column: 30, scope: !1346)
!1390 = !DILocation(line: 858, column: 22, scope: !1346)
!1391 = !DILocation(line: 859, column: 34, scope: !1346)
!1392 = !DILocation(line: 861, column: 13, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 861, column: 8)
!1394 = !DILocation(line: 861, column: 8, scope: !1346)
!1395 = !DILocation(line: 863, column: 12, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 863, column: 12)
!1397 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 862, column: 6)
!1398 = !DILocation(line: 863, column: 37, scope: !1396)
!1399 = !DILocation(line: 863, column: 54, scope: !1396)
!1400 = !DILocation(line: 863, column: 61, scope: !1396)
!1401 = !DILocation(line: 863, column: 42, scope: !1396)
!1402 = !DILocation(line: 863, column: 12, scope: !1397)
!1403 = !DILocation(line: 866, column: 7, scope: !1396)
!1404 = !DILocation(line: 864, column: 3, scope: !1396)
!1405 = !DILocation(line: 868, column: 12, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 868, column: 12)
!1407 = !DILocation(line: 868, column: 12, scope: !1397)
!1408 = !DILocation(line: 869, column: 3, scope: !1406)
!1409 = !DILocation(line: 874, column: 15, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 874, column: 8)
!1411 = !DILocation(line: 874, column: 22, scope: !1410)
!1412 = !DILocation(line: 874, column: 8, scope: !1346)
!1413 = !DILocation(line: 875, column: 60, scope: !1410)
!1414 = !DILocation(line: 875, column: 6, scope: !1410)
!1415 = !DILocation(line: 876, column: 4, scope: !1346)
!1416 = !DILocation(line: 877, column: 2, scope: !1347)
!1417 = !DILocation(line: 880, column: 19, scope: !1342)
!1418 = !DILocation(line: 882, column: 25, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 882, column: 11)
!1420 = !DILocation(line: 882, column: 11, scope: !1342)
!1421 = !DILocation(line: 884, column: 16, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 883, column: 2)
!1423 = !DILocation(line: 885, column: 18, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 885, column: 8)
!1425 = !DILocation(line: 885, column: 8, scope: !1424)
!1426 = !DILocation(line: 885, column: 8, scope: !1422)
!1427 = !DILocation(line: 886, column: 43, scope: !1424)
!1428 = !DILocation(line: 886, column: 6, scope: !1424)
!1429 = !DILocation(line: 889, column: 21, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 889, column: 11)
!1431 = !DILocation(line: 889, column: 11, scope: !1430)
!1432 = !DILocation(line: 889, column: 11, scope: !1342)
!1433 = !DILocation(line: 890, column: 33, scope: !1430)
!1434 = !DILocation(line: 890, column: 2, scope: !1430)
!1435 = !DILocation(line: 892, column: 19, scope: !1342)
!1436 = !DILocation(line: 894, column: 18, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 894, column: 11)
!1438 = !DILocation(line: 894, column: 25, scope: !1437)
!1439 = !DILocation(line: 894, column: 11, scope: !1342)
!1440 = !DILocation(line: 895, column: 51, scope: !1437)
!1441 = !DILocation(line: 896, column: 6, scope: !1437)
!1442 = !DILocation(line: 895, column: 2, scope: !1437)
!1443 = !DILocation(line: 898, column: 11, scope: !1351)
!1444 = !DILocation(line: 898, column: 11, scope: !1342)
!1445 = !DILocation(line: 900, column: 22, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 900, column: 8)
!1447 = !DILocation(line: 900, column: 9, scope: !1446)
!1448 = !DILocation(line: 900, column: 8, scope: !1350)
!1449 = !DILocation(line: 902, column: 10, scope: !1446)
!1450 = !DILocation(line: 901, column: 6, scope: !1446)
!1451 = !DILocation(line: 0, scope: !1349)
!1452 = !DILocation(line: 905, column: 26, scope: !1349)
!1453 = !DILocation(line: 903, column: 4, scope: !1350)
!1454 = !DILocation(line: 905, column: 39, scope: !1349)
!1455 = !DILocation(line: 906, column: 21, scope: !1349)
!1456 = !DILocation(line: 906, column: 26, scope: !1349)
!1457 = !DILocation(line: 907, column: 42, scope: !1349)
!1458 = !DILocation(line: 908, column: 42, scope: !1349)
!1459 = !DILocation(line: 909, column: 30, scope: !1349)
!1460 = !DILocation(line: 910, column: 45, scope: !1349)
!1461 = !DILocation(line: 910, column: 9, scope: !1349)
!1462 = !DILocation(line: 909, column: 8, scope: !1349)
!1463 = !DILocation(line: 907, column: 8, scope: !1349)
!1464 = !DILocation(line: 911, column: 20, scope: !1349)
!1465 = !DILocation(line: 913, column: 23, scope: !1350)
!1466 = !DILocation(line: 912, column: 6, scope: !1349)
!1467 = distinct !{!1467, !1453, !1468}
!1468 = !DILocation(line: 913, column: 30, scope: !1350)
!1469 = !DILocation(line: 918, column: 5, scope: !1343)
!1470 = !DILocation(line: 921, column: 10, scope: !1334)
!1471 = !DILocation(line: 921, column: 3, scope: !1334)
!1472 = !DILocation(line: 922, column: 1, scope: !1334)
!1473 = distinct !DISubprogram(name: "cpp_get_token_with_location", scope: !3, file: !3, line: 1346, type: !1474, scopeLine: 1347, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1477)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!161, !231, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!1477 = !{!1478, !1479, !1480}
!1478 = !DILocalVariable(name: "pfile", arg: 1, scope: !1473, file: !3, line: 1346, type: !231)
!1479 = !DILocalVariable(name: "loc", arg: 2, scope: !1473, file: !3, line: 1346, type: !1476)
!1480 = !DILocalVariable(name: "result", scope: !1473, file: !3, line: 1348, type: !161)
!1481 = !DILocation(line: 0, scope: !1473)
!1482 = !DILocation(line: 1350, column: 10, scope: !1473)
!1483 = !DILocation(line: 1350, column: 34, scope: !1473)
!1484 = !DILocation(line: 1351, column: 12, scope: !1473)
!1485 = !DILocation(line: 1352, column: 14, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 1352, column: 7)
!1487 = !DILocation(line: 1352, column: 23, scope: !1486)
!1488 = !DILocation(line: 1352, column: 7, scope: !1486)
!1489 = !DILocation(line: 1352, column: 7, scope: !1473)
!1490 = !DILocation(line: 1353, column: 19, scope: !1486)
!1491 = !DILocation(line: 1353, column: 5, scope: !1486)
!1492 = !DILocation(line: 1355, column: 20, scope: !1486)
!1493 = !DILocation(line: 0, scope: !1486)
!1494 = !DILocation(line: 1357, column: 3, scope: !1473)
!1495 = distinct !DISubprogram(name: "cpp_sys_macro_p", scope: !3, file: !3, line: 1364, type: !957, scopeLine: 1365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1496)
!1496 = !{!1497, !1498}
!1497 = !DILocalVariable(name: "pfile", arg: 1, scope: !1495, file: !3, line: 1364, type: !231)
!1498 = !DILocalVariable(name: "node", scope: !1495, file: !3, line: 1366, type: !58)
!1499 = !DILocation(line: 0, scope: !1495)
!1500 = !DILocation(line: 1366, column: 31, scope: !1495)
!1501 = !DILocation(line: 1366, column: 40, scope: !1495)
!1502 = !DILocation(line: 1368, column: 10, scope: !1495)
!1503 = !DILocation(line: 1368, column: 15, scope: !1495)
!1504 = !DILocation(line: 1368, column: 30, scope: !1495)
!1505 = !DILocation(line: 1368, column: 18, scope: !1495)
!1506 = !DILocation(line: 1368, column: 36, scope: !1495)
!1507 = !DILocation(line: 1368, column: 58, scope: !1495)
!1508 = !DILocation(line: 1368, column: 3, scope: !1495)
!1509 = distinct !DISubprogram(name: "cpp_scan_nooutput", scope: !3, file: !3, line: 1374, type: !528, scopeLine: 1375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1510)
!1510 = !{!1511}
!1511 = !DILocalVariable(name: "pfile", arg: 1, scope: !1509, file: !3, line: 1374, type: !231)
!1512 = !DILocation(line: 0, scope: !1509)
!1513 = !DILocation(line: 1378, column: 10, scope: !1509)
!1514 = !DILocation(line: 1378, column: 18, scope: !1509)
!1515 = !DILocation(line: 1378, column: 32, scope: !1509)
!1516 = !DILocation(line: 1380, column: 16, scope: !1509)
!1517 = !DILocation(line: 1380, column: 33, scope: !1509)
!1518 = !DILocation(line: 1381, column: 16, scope: !1509)
!1519 = !DILocation(line: 1381, column: 33, scope: !1509)
!1520 = !DILocation(line: 1383, column: 7, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 1383, column: 7)
!1522 = !DILocation(line: 1383, column: 7, scope: !1509)
!1523 = !DILocation(line: 1384, column: 5, scope: !1521)
!1524 = !DILocation(line: 1387, column: 5, scope: !1521)
!1525 = !DILocation(line: 1384, column: 12, scope: !1521)
!1526 = distinct !{!1526, !1523, !1527}
!1527 = !DILocation(line: 1385, column: 7, scope: !1521)
!1528 = !DILocation(line: 1387, column: 12, scope: !1521)
!1529 = !DILocation(line: 1387, column: 35, scope: !1521)
!1530 = !DILocation(line: 1387, column: 40, scope: !1521)
!1531 = distinct !{!1531, !1524, !1532}
!1532 = !DILocation(line: 1388, column: 7, scope: !1521)
!1533 = !DILocation(line: 1390, column: 16, scope: !1509)
!1534 = !DILocation(line: 1390, column: 33, scope: !1509)
!1535 = !DILocation(line: 1391, column: 33, scope: !1509)
!1536 = !DILocation(line: 1392, column: 1, scope: !1509)
!1537 = distinct !DISubprogram(name: "_cpp_backup_tokens_direct", scope: !3, file: !3, line: 1396, type: !489, scopeLine: 1397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1538)
!1538 = !{!1539, !1540}
!1539 = !DILocalVariable(name: "pfile", arg: 1, scope: !1537, file: !3, line: 1396, type: !231)
!1540 = !DILocalVariable(name: "count", arg: 2, scope: !1537, file: !3, line: 1396, type: !7)
!1541 = !DILocation(line: 0, scope: !1537)
!1542 = !DILocation(line: 1398, column: 10, scope: !1537)
!1543 = !DILocation(line: 1398, column: 21, scope: !1537)
!1544 = !DILocation(line: 0, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 1400, column: 5)
!1546 = !DILocation(line: 0, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 1402, column: 11)
!1548 = !DILocation(line: 0, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 1405, column: 9)
!1550 = !DILocation(line: 1399, column: 3, scope: !1537)
!1551 = !DILocation(line: 1399, column: 15, scope: !1537)
!1552 = !DILocation(line: 1401, column: 23, scope: !1545)
!1553 = !DILocation(line: 1402, column: 38, scope: !1547)
!1554 = !DILocation(line: 1402, column: 47, scope: !1547)
!1555 = !DILocation(line: 1402, column: 28, scope: !1547)
!1556 = !DILocation(line: 1404, column: 11, scope: !1547)
!1557 = !DILocation(line: 1404, column: 30, scope: !1547)
!1558 = !DILocation(line: 1404, column: 35, scope: !1547)
!1559 = !DILocation(line: 1402, column: 11, scope: !1545)
!1560 = !DILocation(line: 1406, column: 26, scope: !1549)
!1561 = !DILocation(line: 1407, column: 46, scope: !1549)
!1562 = !DILocation(line: 1407, column: 28, scope: !1549)
!1563 = !DILocation(line: 1408, column: 9, scope: !1549)
!1564 = distinct !{!1564, !1550, !1565}
!1565 = !DILocation(line: 1409, column: 5, scope: !1537)
!1566 = !DILocation(line: 1410, column: 1, scope: !1537)
!1567 = distinct !DISubprogram(name: "_cpp_backup_tokens", scope: !3, file: !3, line: 1415, type: !489, scopeLine: 1416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1568)
!1568 = !{!1569, !1570}
!1569 = !DILocalVariable(name: "pfile", arg: 1, scope: !1567, file: !3, line: 1415, type: !231)
!1570 = !DILocalVariable(name: "count", arg: 2, scope: !1567, file: !3, line: 1415, type: !7)
!1571 = !DILocation(line: 0, scope: !1567)
!1572 = !DILocation(line: 1417, column: 14, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 1417, column: 7)
!1574 = !DILocation(line: 1417, column: 23, scope: !1573)
!1575 = !DILocation(line: 1417, column: 28, scope: !1573)
!1576 = !DILocation(line: 1417, column: 7, scope: !1567)
!1577 = !DILocation(line: 1418, column: 5, scope: !1573)
!1578 = !DILocation(line: 1421, column: 17, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1421, column: 11)
!1580 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 1420, column: 5)
!1581 = !DILocation(line: 1421, column: 11, scope: !1580)
!1582 = !DILocation(line: 1422, column: 2, scope: !1579)
!1583 = !DILocation(line: 1423, column: 27, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1423, column: 11)
!1585 = !DILocation(line: 1423, column: 11, scope: !1584)
!1586 = !DILocation(line: 0, scope: !1584)
!1587 = !DILocation(line: 1423, column: 11, scope: !1580)
!1588 = !DILocation(line: 1424, column: 25, scope: !1584)
!1589 = !DILocation(line: 1424, column: 30, scope: !1584)
!1590 = !DILocation(line: 1424, column: 2, scope: !1584)
!1591 = !DILocation(line: 1426, column: 25, scope: !1584)
!1592 = !DILocation(line: 1426, column: 31, scope: !1584)
!1593 = !DILocation(line: 1428, column: 1, scope: !1567)
!1594 = distinct !DISubprogram(name: "_cpp_free_definition", scope: !3, file: !3, line: 1485, type: !1595, scopeLine: 1486, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1597)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !58}
!1597 = !{!1598}
!1598 = !DILocalVariable(name: "h", arg: 1, scope: !1594, file: !3, line: 1485, type: !58)
!1599 = !DILocation(line: 0, scope: !1594)
!1600 = !DILocation(line: 1488, column: 6, scope: !1594)
!1601 = !DILocation(line: 1488, column: 11, scope: !1594)
!1602 = !DILocation(line: 1490, column: 12, scope: !1594)
!1603 = !DILocation(line: 1491, column: 1, scope: !1594)
!1604 = distinct !DISubprogram(name: "_cpp_save_parameter", scope: !3, file: !3, line: 1496, type: !1605, scopeLine: 1497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1607)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!48, !231, !78, !58}
!1607 = !{!1608, !1609, !1610, !1611}
!1608 = !DILocalVariable(name: "pfile", arg: 1, scope: !1604, file: !3, line: 1496, type: !231)
!1609 = !DILocalVariable(name: "macro", arg: 2, scope: !1604, file: !3, line: 1496, type: !78)
!1610 = !DILocalVariable(name: "node", arg: 3, scope: !1604, file: !3, line: 1496, type: !58)
!1611 = !DILocalVariable(name: "len", scope: !1604, file: !3, line: 1498, type: !7)
!1612 = !DILocation(line: 0, scope: !1604)
!1613 = !DILocation(line: 1500, column: 13, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 1500, column: 7)
!1615 = !DILocation(line: 1500, column: 19, scope: !1614)
!1616 = !DILocation(line: 1500, column: 7, scope: !1604)
!1617 = !DILocation(line: 1503, column: 4, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 1501, column: 5)
!1619 = !DILocation(line: 1502, column: 7, scope: !1618)
!1620 = !DILocation(line: 1504, column: 7, scope: !1618)
!1621 = !DILocation(line: 1507, column: 7, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 1507, column: 7)
!1623 = !DILocation(line: 1508, column: 17, scope: !1622)
!1624 = !DILocation(line: 1508, column: 10, scope: !1622)
!1625 = !DILocation(line: 1508, column: 29, scope: !1622)
!1626 = !DILocation(line: 1508, column: 7, scope: !1622)
!1627 = !DILocation(line: 1507, column: 7, scope: !1604)
!1628 = !DILocation(line: 1509, column: 5, scope: !1622)
!1629 = !DILocation(line: 1511, column: 22, scope: !1604)
!1630 = !DILocation(line: 1511, column: 63, scope: !1604)
!1631 = !DILocation(line: 1511, column: 3, scope: !1604)
!1632 = !DILocation(line: 1511, column: 67, scope: !1604)
!1633 = !DILocation(line: 1512, column: 15, scope: !1604)
!1634 = !DILocation(line: 1513, column: 16, scope: !1604)
!1635 = !DILocation(line: 1513, column: 9, scope: !1604)
!1636 = !DILocation(line: 1513, column: 23, scope: !1604)
!1637 = !DILocation(line: 1514, column: 20, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 1514, column: 7)
!1639 = !DILocation(line: 1514, column: 11, scope: !1638)
!1640 = !DILocation(line: 1514, column: 7, scope: !1604)
!1641 = !DILocation(line: 1520, column: 41, scope: !1604)
!1642 = !DILocation(line: 1516, column: 29, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 1515, column: 5)
!1644 = !DILocation(line: 1516, column: 27, scope: !1643)
!1645 = !DILocation(line: 1518, column: 31, scope: !1643)
!1646 = !DILocation(line: 1519, column: 5, scope: !1643)
!1647 = !DILocation(line: 1520, column: 62, scope: !1604)
!1648 = !DILocation(line: 1520, column: 55, scope: !1604)
!1649 = !DILocation(line: 1520, column: 69, scope: !1604)
!1650 = !DILocation(line: 1520, column: 3, scope: !1604)
!1651 = !DILocation(line: 1521, column: 13, scope: !1604)
!1652 = !DILocation(line: 1523, column: 35, scope: !1604)
!1653 = !DILocation(line: 1523, column: 15, scope: !1604)
!1654 = !DILocation(line: 1523, column: 26, scope: !1604)
!1655 = !DILocation(line: 1524, column: 3, scope: !1604)
!1656 = !DILocation(line: 1525, column: 1, scope: !1604)
!1657 = distinct !DISubprogram(name: "_cpp_create_definition", scope: !3, file: !3, line: 1843, type: !1658, scopeLine: 1844, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!48, !231, !58}
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1671}
!1661 = !DILocalVariable(name: "pfile", arg: 1, scope: !1657, file: !3, line: 1843, type: !231)
!1662 = !DILocalVariable(name: "node", arg: 2, scope: !1657, file: !3, line: 1843, type: !58)
!1663 = !DILocalVariable(name: "macro", scope: !1657, file: !3, line: 1845, type: !78)
!1664 = !DILocalVariable(name: "i", scope: !1657, file: !3, line: 1846, type: !7)
!1665 = !DILocalVariable(name: "ok", scope: !1657, file: !3, line: 1847, type: !48)
!1666 = !DILocalVariable(name: "node", scope: !1667, file: !3, line: 1883, type: !1670)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 1882, column: 5)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 1881, column: 3)
!1669 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 1881, column: 3)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!1671 = !DILocalVariable(name: "warned", scope: !1672, file: !3, line: 1898, type: !48)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 1897, column: 2)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 1896, column: 11)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 1892, column: 5)
!1675 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 1891, column: 7)
!1676 = !DILocation(line: 0, scope: !1657)
!1677 = !DILocation(line: 1849, column: 14, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 1849, column: 7)
!1679 = !DILocation(line: 1849, column: 26, scope: !1678)
!1680 = !DILocation(line: 1849, column: 7, scope: !1678)
!1681 = !DILocation(line: 1849, column: 7, scope: !1657)
!1682 = !DILocation(line: 1850, column: 27, scope: !1678)
!1683 = !DILocation(line: 1850, column: 5, scope: !1678)
!1684 = !DILocation(line: 1853, column: 27, scope: !1678)
!1685 = !DILocation(line: 0, scope: !1678)
!1686 = !DILocation(line: 1854, column: 24, scope: !1657)
!1687 = !DILocation(line: 1854, column: 10, scope: !1657)
!1688 = !DILocation(line: 1854, column: 15, scope: !1657)
!1689 = !DILocation(line: 1855, column: 10, scope: !1657)
!1690 = !DILocation(line: 1855, column: 17, scope: !1657)
!1691 = !DILocation(line: 1856, column: 10, scope: !1657)
!1692 = !DILocation(line: 1856, column: 17, scope: !1657)
!1693 = !DILocation(line: 1857, column: 10, scope: !1657)
!1694 = !DILocation(line: 1857, column: 19, scope: !1657)
!1695 = !DILocation(line: 1858, column: 18, scope: !1657)
!1696 = !DILocation(line: 1858, column: 17, scope: !1657)
!1697 = !DILocation(line: 1858, column: 15, scope: !1657)
!1698 = !DILocation(line: 1859, column: 10, scope: !1657)
!1699 = !DILocation(line: 1859, column: 16, scope: !1657)
!1700 = !DILocation(line: 1861, column: 23, scope: !1657)
!1701 = !DILocation(line: 1863, column: 26, scope: !1657)
!1702 = !DILocation(line: 1863, column: 19, scope: !1657)
!1703 = !DILocation(line: 1863, column: 33, scope: !1657)
!1704 = !DILocation(line: 1863, column: 51, scope: !1657)
!1705 = !DILocation(line: 1863, column: 56, scope: !1657)
!1706 = !DILocation(line: 1863, column: 17, scope: !1657)
!1707 = !DILocation(line: 1865, column: 7, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 1865, column: 7)
!1709 = !DILocation(line: 1865, column: 7, scope: !1657)
!1710 = !DILocation(line: 1866, column: 10, scope: !1708)
!1711 = !DILocation(line: 1866, column: 5, scope: !1708)
!1712 = !DILocation(line: 1869, column: 12, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 1868, column: 5)
!1714 = !DILocation(line: 1877, column: 20, scope: !1713)
!1715 = !DILocation(line: 1877, column: 31, scope: !1713)
!1716 = !DILocation(line: 0, scope: !1708)
!1717 = !DILocation(line: 1881, column: 19, scope: !1669)
!1718 = !DILocation(line: 0, scope: !1667)
!1719 = !DILocation(line: 1881, column: 8, scope: !1669)
!1720 = !DILocation(line: 0, scope: !1669)
!1721 = !DILocation(line: 1881, column: 31, scope: !1668)
!1722 = !DILocation(line: 1881, column: 3, scope: !1669)
!1723 = !DILocation(line: 1881, column: 28, scope: !1668)
!1724 = !DILocation(line: 1883, column: 42, scope: !1667)
!1725 = !DILocation(line: 1883, column: 35, scope: !1667)
!1726 = !DILocation(line: 1884, column: 13, scope: !1667)
!1727 = !DILocation(line: 1884, column: 19, scope: !1667)
!1728 = !DILocation(line: 1885, column: 13, scope: !1667)
!1729 = !DILocation(line: 1885, column: 59, scope: !1667)
!1730 = !DILocation(line: 1885, column: 21, scope: !1667)
!1731 = !DILocation(line: 1881, column: 3, scope: !1668)
!1732 = distinct !{!1732, !1722, !1733}
!1733 = !DILocation(line: 1886, column: 5, scope: !1669)
!1734 = !DILocation(line: 1888, column: 8, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 1888, column: 7)
!1736 = !DILocation(line: 1888, column: 7, scope: !1657)
!1737 = !DILocation(line: 1891, column: 13, scope: !1675)
!1738 = !DILocation(line: 1891, column: 18, scope: !1675)
!1739 = !DILocation(line: 1891, column: 7, scope: !1657)
!1740 = !DILocation(line: 1893, column: 11, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 1893, column: 11)
!1742 = !DILocation(line: 1893, column: 11, scope: !1674)
!1743 = !DILocation(line: 1894, column: 2, scope: !1741)
!1744 = !DILocation(line: 1896, column: 11, scope: !1673)
!1745 = !DILocation(line: 1896, column: 11, scope: !1674)
!1746 = !DILocation(line: 1900, column: 13, scope: !1672)
!1747 = !DILocation(line: 1901, column: 26, scope: !1672)
!1748 = !DILocation(line: 1899, column: 13, scope: !1672)
!1749 = !DILocation(line: 0, scope: !1672)
!1750 = !DILocation(line: 1903, column: 8, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 1903, column: 8)
!1752 = !DILocation(line: 1903, column: 15, scope: !1751)
!1753 = !DILocation(line: 1903, column: 24, scope: !1751)
!1754 = !DILocation(line: 1903, column: 29, scope: !1751)
!1755 = !DILocation(line: 1903, column: 41, scope: !1751)
!1756 = !DILocation(line: 1903, column: 58, scope: !1751)
!1757 = !DILocation(line: 1903, column: 8, scope: !1672)
!1758 = !DILocation(line: 1905, column: 18, scope: !1751)
!1759 = !DILocation(line: 1905, column: 25, scope: !1751)
!1760 = !DILocation(line: 1904, column: 6, scope: !1751)
!1761 = !DILocation(line: 1910, column: 13, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 1910, column: 7)
!1763 = !DILocation(line: 1910, column: 18, scope: !1762)
!1764 = !DILocation(line: 1910, column: 7, scope: !1657)
!1765 = !DILocation(line: 1911, column: 5, scope: !1762)
!1766 = !DILocation(line: 1914, column: 14, scope: !1657)
!1767 = !DILocation(line: 1915, column: 15, scope: !1657)
!1768 = !DILocation(line: 1915, column: 21, scope: !1657)
!1769 = !DILocation(line: 1916, column: 19, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 1916, column: 7)
!1771 = !DILocation(line: 1916, column: 9, scope: !1770)
!1772 = !DILocation(line: 1917, column: 7, scope: !1770)
!1773 = !DILocation(line: 1917, column: 19, scope: !1770)
!1774 = !DILocation(line: 1917, column: 10, scope: !1770)
!1775 = !DILocation(line: 1922, column: 7, scope: !1770)
!1776 = !DILocation(line: 1922, column: 19, scope: !1770)
!1777 = !DILocation(line: 1922, column: 10, scope: !1770)
!1778 = !DILocation(line: 1923, column: 7, scope: !1770)
!1779 = !DILocation(line: 1923, column: 19, scope: !1770)
!1780 = !DILocation(line: 1923, column: 10, scope: !1770)
!1781 = !DILocation(line: 1916, column: 7, scope: !1657)
!1782 = !DILocation(line: 1924, column: 17, scope: !1770)
!1783 = !DILocation(line: 1924, column: 5, scope: !1770)
!1784 = !DILocation(line: 1928, column: 15, scope: !1657)
!1785 = !DILocation(line: 1930, column: 3, scope: !1657)
!1786 = !DILocation(line: 1931, column: 1, scope: !1657)
!1787 = distinct !DISubprogram(name: "create_iso_definition", scope: !3, file: !3, line: 1647, type: !1788, scopeLine: 1648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!48, !231, !78}
!1790 = !{!1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1801, !1804, !1809, !1812, !1815, !1816}
!1791 = !DILocalVariable(name: "pfile", arg: 1, scope: !1787, file: !3, line: 1647, type: !231)
!1792 = !DILocalVariable(name: "macro", arg: 2, scope: !1787, file: !3, line: 1647, type: !78)
!1793 = !DILocalVariable(name: "token", scope: !1787, file: !3, line: 1649, type: !88)
!1794 = !DILocalVariable(name: "ctoken", scope: !1787, file: !3, line: 1650, type: !161)
!1795 = !DILocalVariable(name: "following_paste_op", scope: !1787, file: !3, line: 1651, type: !48)
!1796 = !DILocalVariable(name: "paste_op_error_msg", scope: !1787, file: !3, line: 1652, type: !193)
!1797 = !DILocalVariable(name: "num_extra_tokens", scope: !1787, file: !3, line: 1654, type: !7)
!1798 = !DILocalVariable(name: "ok", scope: !1799, file: !3, line: 1662, type: !48)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 1661, column: 5)
!1800 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1660, column: 7)
!1801 = !DILocalVariable(name: "params", scope: !1802, file: !3, line: 1670, type: !57)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 1669, column: 2)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 1668, column: 11)
!1804 = !DILocalVariable(name: "warntype", scope: !1805, file: !3, line: 1691, type: !208)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 1690, column: 2)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 1686, column: 11)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 1682, column: 5)
!1808 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 1681, column: 12)
!1809 = !DILocalVariable(name: "tokns", scope: !1810, file: !3, line: 1809, type: !88)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 1808, column: 5)
!1811 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1807, column: 7)
!1812 = !DILocalVariable(name: "normal_dest", scope: !1813, file: !3, line: 1820, type: !88)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 1813, column: 2)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 1812, column: 11)
!1815 = !DILocalVariable(name: "extra_dest", scope: !1813, file: !3, line: 1821, type: !88)
!1816 = !DILocalVariable(name: "i", scope: !1813, file: !3, line: 1822, type: !7)
!1817 = !DILocation(line: 0, scope: !1787)
!1818 = !DILocation(line: 1658, column: 12, scope: !1787)
!1819 = !DILocation(line: 1660, column: 15, scope: !1800)
!1820 = !DILocation(line: 1660, column: 20, scope: !1800)
!1821 = !DILocation(line: 1660, column: 38, scope: !1800)
!1822 = !DILocation(line: 1660, column: 51, scope: !1800)
!1823 = !DILocation(line: 1660, column: 57, scope: !1800)
!1824 = !DILocation(line: 1660, column: 7, scope: !1787)
!1825 = !DILocation(line: 1662, column: 17, scope: !1799)
!1826 = !DILocation(line: 0, scope: !1799)
!1827 = !DILocation(line: 1663, column: 41, scope: !1799)
!1828 = !DILocation(line: 1663, column: 21, scope: !1799)
!1829 = !DILocation(line: 1664, column: 12, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 1664, column: 11)
!1831 = !DILocation(line: 1664, column: 11, scope: !1799)
!1832 = !DILocation(line: 1668, column: 18, scope: !1803)
!1833 = !DILocation(line: 1668, column: 30, scope: !1803)
!1834 = !DILocation(line: 1668, column: 11, scope: !1803)
!1835 = !DILocation(line: 1668, column: 11, scope: !1799)
!1836 = !DILocation(line: 1672, column: 47, scope: !1802)
!1837 = !DILocation(line: 1672, column: 40, scope: !1802)
!1838 = !DILocation(line: 1672, column: 38, scope: !1802)
!1839 = !DILocation(line: 1671, column: 31, scope: !1802)
!1840 = !DILocation(line: 0, scope: !1802)
!1841 = !DILocation(line: 1673, column: 27, scope: !1802)
!1842 = !DILocation(line: 1674, column: 38, scope: !1802)
!1843 = !DILocation(line: 1674, column: 31, scope: !1802)
!1844 = !DILocation(line: 1674, column: 29, scope: !1802)
!1845 = !DILocation(line: 1673, column: 4, scope: !1802)
!1846 = !DILocation(line: 1675, column: 18, scope: !1802)
!1847 = !DILocation(line: 1676, column: 2, scope: !1802)
!1848 = !DILocation(line: 1678, column: 63, scope: !1803)
!1849 = !DILocation(line: 1678, column: 42, scope: !1803)
!1850 = !DILocation(line: 1678, column: 2, scope: !1803)
!1851 = !DILocation(line: 1678, column: 29, scope: !1803)
!1852 = !DILocation(line: 1679, column: 14, scope: !1799)
!1853 = !DILocation(line: 1679, column: 23, scope: !1799)
!1854 = !DILocation(line: 1680, column: 5, scope: !1800)
!1855 = !DILocation(line: 1681, column: 25, scope: !1808)
!1856 = !DILocation(line: 1681, column: 36, scope: !1808)
!1857 = !DILocation(line: 1681, column: 49, scope: !1808)
!1858 = !DILocation(line: 1681, column: 55, scope: !1808)
!1859 = !DILocation(line: 1681, column: 12, scope: !1800)
!1860 = !DILocation(line: 1686, column: 11, scope: !1806)
!1861 = !DILocation(line: 1686, column: 11, scope: !1807)
!1862 = !DILocation(line: 1687, column: 2, scope: !1806)
!1863 = !DILocation(line: 0, scope: !1805)
!1864 = !DILocation(line: 1692, column: 20, scope: !1805)
!1865 = !DILocation(line: 1692, column: 4, scope: !1805)
!1866 = !DILocation(line: 1703, column: 22, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 1702, column: 12)
!1868 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1693, column: 6)
!1869 = !DILocation(line: 1703, column: 6, scope: !1867)
!1870 = !DILocation(line: 1702, column: 12, scope: !1867)
!1871 = !DILocation(line: 1703, column: 31, scope: !1867)
!1872 = !DILocation(line: 1702, column: 12, scope: !1868)
!1873 = !DILocation(line: 1705, column: 8, scope: !1868)
!1874 = !DILocation(line: 1709, column: 8, scope: !1868)
!1875 = !DILocation(line: 1711, column: 4, scope: !1805)
!1876 = !DILocation(line: 1716, column: 14, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1716, column: 7)
!1878 = !DILocation(line: 1716, column: 7, scope: !1877)
!1879 = !DILocation(line: 1716, column: 7, scope: !1787)
!1880 = !DILocation(line: 1717, column: 13, scope: !1877)
!1881 = !DILocation(line: 1717, column: 5, scope: !1877)
!1882 = !DILocation(line: 1720, column: 15, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 1719, column: 5)
!1884 = !DILocation(line: 1721, column: 16, scope: !1883)
!1885 = !DILocation(line: 0, scope: !1877)
!1886 = !DILocation(line: 0, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 1728, column: 11)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 1725, column: 5)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 1724, column: 3)
!1890 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1724, column: 3)
!1891 = !DILocation(line: 0, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 1743, column: 13)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 1730, column: 8)
!1894 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 1729, column: 2)
!1895 = !DILocation(line: 1724, column: 3, scope: !1787)
!1896 = !DILocation(line: 1728, column: 18, scope: !1887)
!1897 = !DILocation(line: 1728, column: 24, scope: !1887)
!1898 = !DILocation(line: 1728, column: 28, scope: !1887)
!1899 = !DILocation(line: 1728, column: 41, scope: !1887)
!1900 = !DILocation(line: 1728, column: 46, scope: !1887)
!1901 = !DILocation(line: 1728, column: 58, scope: !1887)
!1902 = !DILocation(line: 1728, column: 68, scope: !1887)
!1903 = !DILocation(line: 1728, column: 61, scope: !1887)
!1904 = !DILocation(line: 1728, column: 11, scope: !1888)
!1905 = !DILocation(line: 1730, column: 15, scope: !1893)
!1906 = !DILocation(line: 1730, column: 20, scope: !1893)
!1907 = !DILocation(line: 1730, column: 8, scope: !1894)
!1908 = !DILocation(line: 1732, column: 19, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 1732, column: 12)
!1910 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 1731, column: 6)
!1911 = !DILocation(line: 1732, column: 25, scope: !1909)
!1912 = !DILocation(line: 1732, column: 12, scope: !1910)
!1913 = !DILocation(line: 1733, column: 16, scope: !1909)
!1914 = !DILocation(line: 1733, column: 3, scope: !1909)
!1915 = !DILocation(line: 1734, column: 22, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 1734, column: 12)
!1917 = !DILocation(line: 1734, column: 28, scope: !1916)
!1918 = !DILocation(line: 1734, column: 12, scope: !1910)
!1919 = !DILocation(line: 1735, column: 16, scope: !1916)
!1920 = !DILocation(line: 1735, column: 3, scope: !1916)
!1921 = !DILocation(line: 1736, column: 21, scope: !1910)
!1922 = !DILocation(line: 1738, column: 40, scope: !1910)
!1923 = !DILocation(line: 1738, column: 21, scope: !1910)
!1924 = !DILocation(line: 1739, column: 8, scope: !1910)
!1925 = !DILocation(line: 1739, column: 20, scope: !1910)
!1926 = !DILocation(line: 1740, column: 20, scope: !1910)
!1927 = !DILocation(line: 1741, column: 6, scope: !1910)
!1928 = !DILocation(line: 1743, column: 13, scope: !1892)
!1929 = !DILocation(line: 1743, column: 38, scope: !1892)
!1930 = !DILocation(line: 1743, column: 13, scope: !1893)
!1931 = !DILocation(line: 1745, column: 8, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 1744, column: 6)
!1933 = !DILocation(line: 1747, column: 8, scope: !1932)
!1934 = !DILocation(line: 1751, column: 18, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 1751, column: 11)
!1936 = !DILocation(line: 1751, column: 23, scope: !1935)
!1937 = !DILocation(line: 1751, column: 11, scope: !1888)
!1938 = !DILocation(line: 1756, column: 8, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 1756, column: 8)
!1940 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 1752, column: 2)
!1941 = !DILocation(line: 1756, column: 8, scope: !1940)
!1942 = !DILocation(line: 1758, column: 8, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 1757, column: 6)
!1944 = !DILocation(line: 1759, column: 8, scope: !1943)
!1945 = !DILocation(line: 1765, column: 23, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 1765, column: 11)
!1947 = !DILocation(line: 1765, column: 11, scope: !1888)
!1948 = !DILocation(line: 1769, column: 21, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 1769, column: 8)
!1950 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 1766, column: 2)
!1951 = !DILocation(line: 1769, column: 8, scope: !1950)
!1952 = !DILocation(line: 1771, column: 8, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 1770, column: 6)
!1954 = !DILocation(line: 1772, column: 8, scope: !1953)
!1955 = !DILocation(line: 1775, column: 18, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 1775, column: 8)
!1957 = !DILocation(line: 1775, column: 24, scope: !1956)
!1958 = !DILocation(line: 1775, column: 8, scope: !1950)
!1959 = !DILocation(line: 1777, column: 28, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 1776, column: 6)
!1961 = !DILocation(line: 1778, column: 24, scope: !1960)
!1962 = !DILocation(line: 1779, column: 43, scope: !1960)
!1963 = !DILocation(line: 1779, column: 19, scope: !1960)
!1964 = !DILocation(line: 1779, column: 28, scope: !1960)
!1965 = !DILocation(line: 1780, column: 6, scope: !1960)
!1966 = !DILocation(line: 1783, column: 8, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 1782, column: 6)
!1968 = !DILocation(line: 1784, column: 24, scope: !1967)
!1969 = !DILocation(line: 1785, column: 19, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 1785, column: 12)
!1971 = !DILocation(line: 1785, column: 25, scope: !1970)
!1972 = !DILocation(line: 1785, column: 12, scope: !1967)
!1973 = !DILocation(line: 1786, column: 19, scope: !1970)
!1974 = !DILocation(line: 1786, column: 3, scope: !1970)
!1975 = !DILocation(line: 1787, column: 25, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 1787, column: 12)
!1977 = !DILocation(line: 1787, column: 12, scope: !1967)
!1978 = !DILocation(line: 1788, column: 19, scope: !1976)
!1979 = !DILocation(line: 1788, column: 3, scope: !1976)
!1980 = !DILocation(line: 1792, column: 36, scope: !1888)
!1981 = !DILocation(line: 1792, column: 41, scope: !1888)
!1982 = !DILocation(line: 1792, column: 28, scope: !1888)
!1983 = !DILocation(line: 1793, column: 15, scope: !1888)
!1984 = !DILocation(line: 1724, column: 3, scope: !1889)
!1985 = distinct !{!1985, !1986, !1987}
!1986 = !DILocation(line: 1724, column: 3, scope: !1890)
!1987 = !DILocation(line: 1794, column: 5, scope: !1890)
!1988 = !DILocation(line: 1796, column: 37, scope: !1787)
!1989 = !DILocation(line: 1796, column: 10, scope: !1787)
!1990 = !DILocation(line: 1796, column: 21, scope: !1787)
!1991 = !DILocation(line: 1797, column: 22, scope: !1787)
!1992 = !DILocation(line: 1800, column: 15, scope: !1787)
!1993 = !DILocation(line: 1803, column: 7, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1803, column: 7)
!1995 = !DILocation(line: 1803, column: 7, scope: !1787)
!1996 = !DILocation(line: 1804, column: 26, scope: !1994)
!1997 = !DILocation(line: 1804, column: 32, scope: !1994)
!1998 = !DILocation(line: 1804, column: 5, scope: !1994)
!1999 = !DILocation(line: 1807, column: 14, scope: !1811)
!2000 = !DILocation(line: 1807, column: 26, scope: !1811)
!2001 = !DILocation(line: 1807, column: 7, scope: !1811)
!2002 = !DILocation(line: 1807, column: 7, scope: !1787)
!2003 = !DILocation(line: 1811, column: 68, scope: !1810)
!2004 = !DILocation(line: 1811, column: 61, scope: !1810)
!2005 = !DILocation(line: 1811, column: 59, scope: !1810)
!2006 = !DILocation(line: 1810, column: 23, scope: !1810)
!2007 = !DILocation(line: 1810, column: 9, scope: !1810)
!2008 = !DILocation(line: 0, scope: !1810)
!2009 = !DILocation(line: 1812, column: 11, scope: !1814)
!2010 = !DILocation(line: 1812, column: 11, scope: !1810)
!2011 = !DILocation(line: 0, scope: !1813)
!2012 = !DILocation(line: 1821, column: 43, scope: !1813)
!2013 = !DILocation(line: 1821, column: 34, scope: !1813)
!2014 = !DILocation(line: 1821, column: 49, scope: !1813)
!2015 = !DILocation(line: 0, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 1825, column: 12)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 1824, column: 6)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 1823, column: 4)
!2019 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 1823, column: 4)
!2020 = !DILocation(line: 1823, column: 9, scope: !2019)
!2021 = !DILocation(line: 1823, column: 27, scope: !2018)
!2022 = !DILocation(line: 1820, column: 15, scope: !1813)
!2023 = !DILocation(line: 1823, column: 18, scope: !2018)
!2024 = !DILocation(line: 1823, column: 4, scope: !2019)
!2025 = !DILocation(line: 1825, column: 23, scope: !2016)
!2026 = !DILocation(line: 1825, column: 33, scope: !2016)
!2027 = !DILocation(line: 1825, column: 38, scope: !2016)
!2028 = !DILocation(line: 1825, column: 12, scope: !2017)
!2029 = !DILocation(line: 1826, column: 14, scope: !2016)
!2030 = !DILocation(line: 1826, column: 19, scope: !2016)
!2031 = !DILocation(line: 1826, column: 3, scope: !2016)
!2032 = !DILocation(line: 1828, column: 15, scope: !2016)
!2033 = !DILocation(line: 1828, column: 20, scope: !2016)
!2034 = !DILocation(line: 1823, column: 35, scope: !2018)
!2035 = !DILocation(line: 1823, column: 4, scope: !2018)
!2036 = distinct !{!2036, !2024, !2037}
!2037 = !DILocation(line: 1829, column: 6, scope: !2019)
!2038 = !DILocation(line: 1832, column: 28, scope: !1814)
!2039 = !DILocation(line: 1832, column: 64, scope: !1814)
!2040 = !DILocation(line: 1832, column: 57, scope: !1814)
!2041 = !DILocation(line: 1832, column: 55, scope: !1814)
!2042 = !DILocation(line: 1832, column: 2, scope: !1814)
!2043 = !DILocation(line: 1833, column: 25, scope: !1810)
!2044 = !DILocation(line: 1833, column: 18, scope: !1810)
!2045 = !DILocation(line: 1834, column: 5, scope: !1810)
!2046 = !DILocation(line: 1836, column: 56, scope: !1811)
!2047 = !DILocation(line: 1836, column: 70, scope: !1811)
!2048 = !DILocation(line: 1836, column: 45, scope: !1811)
!2049 = !DILocation(line: 1836, column: 5, scope: !1811)
!2050 = !DILocation(line: 1836, column: 32, scope: !1811)
!2051 = !DILocation(line: 1839, column: 1, scope: !1787)
!2052 = distinct !DISubprogram(name: "warn_of_redefinition", scope: !3, file: !3, line: 1434, type: !2053, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2057)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!48, !231, !418, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!2057 = !{!2058, !2059, !2060, !2061, !2062}
!2058 = !DILocalVariable(name: "pfile", arg: 1, scope: !2052, file: !3, line: 1434, type: !231)
!2059 = !DILocalVariable(name: "node", arg: 2, scope: !2052, file: !3, line: 1434, type: !418)
!2060 = !DILocalVariable(name: "macro2", arg: 3, scope: !2052, file: !3, line: 1435, type: !2055)
!2061 = !DILocalVariable(name: "macro1", scope: !2052, file: !3, line: 1437, type: !2055)
!2062 = !DILocalVariable(name: "i", scope: !2052, file: !3, line: 1438, type: !7)
!2063 = !DILocation(line: 0, scope: !2052)
!2064 = !DILocation(line: 1441, column: 13, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 1441, column: 7)
!2066 = !DILocation(line: 1441, column: 19, scope: !2065)
!2067 = !DILocation(line: 1441, column: 7, scope: !2052)
!2068 = !DILocation(line: 1445, column: 19, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 1445, column: 7)
!2070 = !DILocation(line: 1445, column: 7, scope: !2052)
!2071 = !DILocation(line: 1450, column: 19, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 1450, column: 7)
!2073 = !DILocation(line: 1450, column: 7, scope: !2052)
!2074 = !DILocation(line: 1455, column: 24, scope: !2052)
!2075 = !DILocation(line: 1459, column: 15, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 1459, column: 7)
!2077 = !DILocation(line: 1459, column: 33, scope: !2076)
!2078 = !DILocation(line: 1459, column: 22, scope: !2076)
!2079 = !DILocation(line: 1460, column: 7, scope: !2076)
!2080 = !DILocation(line: 1460, column: 18, scope: !2076)
!2081 = !DILocation(line: 1460, column: 38, scope: !2076)
!2082 = !DILocation(line: 1460, column: 27, scope: !2076)
!2083 = !DILocation(line: 1461, column: 7, scope: !2076)
!2084 = !DILocation(line: 1461, column: 27, scope: !2076)
!2085 = !DILocation(line: 1459, column: 7, scope: !2052)
!2086 = !DILocation(line: 0, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 1465, column: 3)
!2088 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 1465, column: 3)
!2089 = !DILocation(line: 0, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 1466, column: 9)
!2091 = !DILocation(line: 1465, column: 3, scope: !2088)
!2092 = !DILocation(line: 0, scope: !2088)
!2093 = !DILocation(line: 1465, column: 17, scope: !2087)
!2094 = !DILocation(line: 1466, column: 17, scope: !2090)
!2095 = !DILocation(line: 1466, column: 9, scope: !2090)
!2096 = !DILocation(line: 1466, column: 38, scope: !2090)
!2097 = !DILocation(line: 1466, column: 30, scope: !2090)
!2098 = !DILocation(line: 1466, column: 27, scope: !2090)
!2099 = !DILocation(line: 1466, column: 9, scope: !2087)
!2100 = !DILocation(line: 1465, column: 36, scope: !2087)
!2101 = !DILocation(line: 1465, column: 3, scope: !2087)
!2102 = distinct !{!2102, !2091, !2103}
!2103 = !DILocation(line: 1467, column: 14, scope: !2088)
!2104 = !DILocation(line: 1470, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 1470, column: 7)
!2106 = !DILocation(line: 1470, column: 7, scope: !2052)
!2107 = !DILocation(line: 1471, column: 12, scope: !2105)
!2108 = !DILocation(line: 1471, column: 5, scope: !2105)
!2109 = !DILocation(line: 1473, column: 15, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 1473, column: 7)
!2111 = !DILocation(line: 1473, column: 32, scope: !2110)
!2112 = !DILocation(line: 1473, column: 21, scope: !2110)
!2113 = !DILocation(line: 1473, column: 7, scope: !2052)
!2114 = !DILocation(line: 1477, column: 42, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 1477, column: 9)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 1476, column: 3)
!2117 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 1476, column: 3)
!2118 = !DILocation(line: 0, scope: !2115)
!2119 = !DILocation(line: 1476, column: 3, scope: !2117)
!2120 = !DILocation(line: 1476, column: 27, scope: !2116)
!2121 = !DILocation(line: 1476, column: 17, scope: !2116)
!2122 = !DILocation(line: 1477, column: 30, scope: !2115)
!2123 = !DILocation(line: 1477, column: 66, scope: !2115)
!2124 = !DILocation(line: 1477, column: 54, scope: !2115)
!2125 = !DILocation(line: 1477, column: 10, scope: !2115)
!2126 = !DILocation(line: 1477, column: 9, scope: !2116)
!2127 = !DILocation(line: 1476, column: 35, scope: !2116)
!2128 = !DILocation(line: 1476, column: 3, scope: !2116)
!2129 = distinct !{!2129, !2119, !2130}
!2130 = !DILocation(line: 1478, column: 14, scope: !2117)
!2131 = !DILocation(line: 1481, column: 1, scope: !2052)
!2132 = distinct !DISubprogram(name: "ustrncmp", scope: !146, file: !146, line: 693, type: !2133, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!208, !46, !46, !54}
!2135 = !{!2136, !2137, !2138}
!2136 = !DILocalVariable(name: "s1", arg: 1, scope: !2132, file: !146, line: 693, type: !46)
!2137 = !DILocalVariable(name: "s2", arg: 2, scope: !2132, file: !146, line: 693, type: !46)
!2138 = !DILocalVariable(name: "n", arg: 3, scope: !2132, file: !146, line: 693, type: !54)
!2139 = !DILocation(line: 0, scope: !2132)
!2140 = !DILocation(line: 695, column: 10, scope: !2132)
!2141 = !DILocation(line: 695, column: 3, scope: !2132)
!2142 = distinct !DISubprogram(name: "ustrcmp", scope: !146, file: !146, line: 687, type: !2143, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!208, !46, !46}
!2145 = !{!2146, !2147}
!2146 = !DILocalVariable(name: "s1", arg: 1, scope: !2142, file: !146, line: 687, type: !46)
!2147 = !DILocalVariable(name: "s2", arg: 2, scope: !2142, file: !146, line: 687, type: !46)
!2148 = !DILocation(line: 0, scope: !2142)
!2149 = !DILocation(line: 689, column: 10, scope: !2142)
!2150 = !DILocation(line: 689, column: 3, scope: !2142)
!2151 = distinct !DISubprogram(name: "cpp_macro_definition", scope: !3, file: !3, line: 1981, type: !2152, scopeLine: 1982, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2154)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!46, !231, !418}
!2154 = !{!2155, !2156, !2157, !2158, !2159, !2160, !2161, !2164, !2168, !2174, !2178}
!2155 = !DILocalVariable(name: "pfile", arg: 1, scope: !2151, file: !3, line: 1981, type: !231)
!2156 = !DILocalVariable(name: "node", arg: 2, scope: !2151, file: !3, line: 1981, type: !418)
!2157 = !DILocalVariable(name: "i", scope: !2151, file: !3, line: 1983, type: !7)
!2158 = !DILocalVariable(name: "len", scope: !2151, file: !3, line: 1983, type: !7)
!2159 = !DILocalVariable(name: "macro", scope: !2151, file: !3, line: 1984, type: !2055)
!2160 = !DILocalVariable(name: "buffer", scope: !2151, file: !3, line: 1985, type: !139)
!2161 = !DILocalVariable(name: "count", scope: !2162, file: !3, line: 2009, type: !7)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 2008, column: 5)
!2163 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 2005, column: 7)
!2164 = !DILocalVariable(name: "token", scope: !2165, file: !3, line: 2012, type: !88)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 2011, column: 2)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 2010, column: 7)
!2167 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 2010, column: 7)
!2168 = !DILocalVariable(name: "param", scope: !2169, file: !3, line: 2046, type: !58)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 2045, column: 2)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 2044, column: 7)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 2044, column: 7)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 2042, column: 5)
!2173 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 2041, column: 7)
!2174 = !DILocalVariable(name: "count", scope: !2175, file: !3, line: 2074, type: !7)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 2073, column: 5)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 2071, column: 12)
!2177 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 2069, column: 7)
!2178 = !DILocalVariable(name: "token", scope: !2179, file: !3, line: 2077, type: !88)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 2076, column: 2)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 2075, column: 7)
!2181 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 2075, column: 7)
!2182 = !DILocation(line: 0, scope: !2151)
!2183 = !DILocation(line: 1984, column: 40, scope: !2151)
!2184 = !DILocation(line: 1987, column: 13, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 1987, column: 7)
!2186 = !DILocation(line: 1987, column: 18, scope: !2185)
!2187 = !DILocation(line: 1987, column: 30, scope: !2185)
!2188 = !DILocation(line: 1987, column: 46, scope: !2185)
!2189 = !DILocation(line: 1987, column: 7, scope: !2151)
!2190 = !DILocation(line: 1990, column: 58, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 1988, column: 5)
!2192 = !DILocation(line: 1989, column: 7, scope: !2191)
!2193 = !DILocation(line: 1991, column: 7, scope: !2191)
!2194 = !DILocation(line: 1995, column: 9, scope: !2151)
!2195 = !DILocation(line: 1995, column: 25, scope: !2151)
!2196 = !DILocation(line: 1996, column: 14, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 1996, column: 7)
!2198 = !DILocation(line: 1996, column: 7, scope: !2197)
!2199 = !DILocation(line: 1996, column: 7, scope: !2151)
!2200 = !DILocation(line: 1998, column: 11, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2197, file: !3, line: 1997, column: 5)
!2202 = !DILocation(line: 0, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 2000, column: 7)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 2000, column: 7)
!2205 = !DILocation(line: 2000, column: 21, scope: !2203)
!2206 = !DILocation(line: 2000, column: 12, scope: !2204)
!2207 = !DILocation(line: 0, scope: !2201)
!2208 = !DILocation(line: 2000, column: 7, scope: !2204)
!2209 = !DILocation(line: 2001, column: 9, scope: !2203)
!2210 = !DILocation(line: 2001, column: 37, scope: !2203)
!2211 = !DILocation(line: 2001, column: 6, scope: !2203)
!2212 = !DILocation(line: 2000, column: 39, scope: !2203)
!2213 = !DILocation(line: 2000, column: 7, scope: !2203)
!2214 = distinct !{!2214, !2208, !2215}
!2215 = !DILocation(line: 2001, column: 39, scope: !2204)
!2216 = !DILocation(line: 2005, column: 7, scope: !2163)
!2217 = !DILocation(line: 2005, column: 7, scope: !2151)
!2218 = !DILocation(line: 2006, column: 12, scope: !2163)
!2219 = !DILocation(line: 2006, column: 9, scope: !2163)
!2220 = !DILocation(line: 2006, column: 5, scope: !2163)
!2221 = !DILocation(line: 2009, column: 28, scope: !2162)
!2222 = !DILocation(line: 0, scope: !2162)
!2223 = !DILocation(line: 0, scope: !2165)
!2224 = !DILocation(line: 0, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 2014, column: 8)
!2226 = !DILocation(line: 2010, column: 21, scope: !2166)
!2227 = !DILocation(line: 2010, column: 12, scope: !2167)
!2228 = !DILocation(line: 2010, column: 7, scope: !2167)
!2229 = !DILocation(line: 2012, column: 35, scope: !2165)
!2230 = !DILocation(line: 2014, column: 15, scope: !2225)
!2231 = !DILocation(line: 2014, column: 20, scope: !2225)
!2232 = !DILocation(line: 2014, column: 8, scope: !2165)
!2233 = !DILocation(line: 2015, column: 13, scope: !2225)
!2234 = !DILocation(line: 2015, column: 6, scope: !2225)
!2235 = !DILocation(line: 2012, column: 24, scope: !2165)
!2236 = !DILocation(line: 2017, column: 13, scope: !2225)
!2237 = !DILocation(line: 2019, column: 15, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 2019, column: 8)
!2239 = !DILocation(line: 2019, column: 8, scope: !2165)
!2240 = !DILocation(line: 2021, column: 21, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 2021, column: 8)
!2242 = !DILocation(line: 2021, column: 8, scope: !2165)
!2243 = !DILocation(line: 2023, column: 21, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 2023, column: 8)
!2245 = !DILocation(line: 2023, column: 8, scope: !2165)
!2246 = !DILocation(line: 2010, column: 31, scope: !2166)
!2247 = !DILocation(line: 2010, column: 7, scope: !2166)
!2248 = distinct !{!2248, !2228, !2249}
!2249 = !DILocation(line: 2025, column: 2, scope: !2167)
!2250 = !DILocation(line: 2028, column: 20, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 2028, column: 7)
!2252 = !DILocation(line: 2028, column: 11, scope: !2251)
!2253 = !DILocation(line: 2028, column: 7, scope: !2151)
!2254 = !DILocation(line: 2036, column: 19, scope: !2151)
!2255 = !DILocation(line: 2030, column: 29, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 2029, column: 5)
!2257 = !DILocation(line: 2030, column: 27, scope: !2256)
!2258 = !DILocation(line: 2032, column: 31, scope: !2256)
!2259 = !DILocation(line: 2033, column: 5, scope: !2256)
!2260 = !DILocation(line: 2037, column: 19, scope: !2151)
!2261 = !DILocation(line: 2037, column: 37, scope: !2151)
!2262 = !DILocation(line: 2037, column: 3, scope: !2151)
!2263 = !DILocation(line: 2038, column: 13, scope: !2151)
!2264 = !DILocation(line: 2038, column: 10, scope: !2151)
!2265 = !DILocation(line: 2041, column: 14, scope: !2173)
!2266 = !DILocation(line: 2041, column: 7, scope: !2173)
!2267 = !DILocation(line: 2041, column: 7, scope: !2151)
!2268 = !DILocation(line: 2043, column: 14, scope: !2172)
!2269 = !DILocation(line: 2043, column: 17, scope: !2172)
!2270 = !DILocation(line: 0, scope: !2170)
!2271 = !DILocation(line: 0, scope: !2169)
!2272 = !DILocation(line: 0, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 2048, column: 8)
!2274 = !DILocation(line: 2044, column: 12, scope: !2171)
!2275 = !DILocation(line: 0, scope: !2171)
!2276 = !DILocation(line: 0, scope: !2172)
!2277 = !DILocation(line: 2044, column: 30, scope: !2170)
!2278 = !DILocation(line: 2044, column: 21, scope: !2170)
!2279 = !DILocation(line: 2044, column: 7, scope: !2171)
!2280 = !DILocation(line: 2046, column: 33, scope: !2169)
!2281 = !DILocation(line: 2046, column: 26, scope: !2169)
!2282 = !DILocation(line: 2048, column: 35, scope: !2273)
!2283 = !DILocation(line: 2048, column: 14, scope: !2273)
!2284 = !DILocation(line: 2048, column: 8, scope: !2169)
!2285 = !DILocation(line: 2050, column: 24, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 2049, column: 6)
!2287 = !DILocation(line: 2050, column: 43, scope: !2286)
!2288 = !DILocation(line: 2050, column: 8, scope: !2286)
!2289 = !DILocation(line: 2051, column: 18, scope: !2286)
!2290 = !DILocation(line: 2051, column: 15, scope: !2286)
!2291 = !DILocation(line: 2054, column: 23, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 2054, column: 8)
!2293 = !DILocation(line: 2052, column: 6, scope: !2286)
!2294 = !DILocation(line: 2054, column: 10, scope: !2292)
!2295 = !DILocation(line: 2054, column: 14, scope: !2292)
!2296 = !DILocation(line: 2054, column: 8, scope: !2169)
!2297 = !DILocation(line: 2058, column: 13, scope: !2292)
!2298 = !DILocation(line: 2058, column: 16, scope: !2292)
!2299 = !DILocation(line: 2058, column: 6, scope: !2292)
!2300 = !DILocation(line: 2059, column: 20, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 2059, column: 13)
!2302 = !DILocation(line: 2059, column: 13, scope: !2301)
!2303 = !DILocation(line: 2059, column: 13, scope: !2292)
!2304 = !DILocation(line: 2060, column: 13, scope: !2301)
!2305 = !DILocation(line: 2060, column: 16, scope: !2301)
!2306 = !DILocation(line: 2060, column: 30, scope: !2301)
!2307 = !DILocation(line: 2060, column: 33, scope: !2301)
!2308 = !DILocation(line: 2060, column: 47, scope: !2301)
!2309 = !DILocation(line: 2060, column: 50, scope: !2301)
!2310 = !DILocation(line: 2060, column: 6, scope: !2301)
!2311 = !DILocation(line: 0, scope: !2292)
!2312 = !DILocation(line: 2044, column: 7, scope: !2170)
!2313 = distinct !{!2313, !2279, !2314}
!2314 = !DILocation(line: 2061, column: 2, scope: !2171)
!2315 = !DILocation(line: 2062, column: 14, scope: !2172)
!2316 = !DILocation(line: 2062, column: 17, scope: !2172)
!2317 = !DILocation(line: 2063, column: 5, scope: !2172)
!2318 = !DILocation(line: 2067, column: 10, scope: !2151)
!2319 = !DILocation(line: 2067, column: 13, scope: !2151)
!2320 = !DILocation(line: 2069, column: 7, scope: !2177)
!2321 = !DILocation(line: 2069, column: 7, scope: !2151)
!2322 = !DILocation(line: 2070, column: 14, scope: !2177)
!2323 = !DILocation(line: 2070, column: 5, scope: !2177)
!2324 = !DILocation(line: 2071, column: 19, scope: !2176)
!2325 = !DILocation(line: 2071, column: 12, scope: !2176)
!2326 = !DILocation(line: 2071, column: 12, scope: !2177)
!2327 = !DILocation(line: 2074, column: 28, scope: !2175)
!2328 = !DILocation(line: 0, scope: !2175)
!2329 = !DILocation(line: 0, scope: !2179)
!2330 = !DILocation(line: 0, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 2085, column: 6)
!2332 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 2084, column: 8)
!2333 = !DILocation(line: 2075, column: 21, scope: !2180)
!2334 = !DILocation(line: 2075, column: 12, scope: !2181)
!2335 = !DILocation(line: 0, scope: !2181)
!2336 = !DILocation(line: 2075, column: 7, scope: !2181)
!2337 = !DILocation(line: 2077, column: 35, scope: !2179)
!2338 = !DILocation(line: 2077, column: 24, scope: !2179)
!2339 = !DILocation(line: 2079, column: 15, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 2079, column: 8)
!2341 = !DILocation(line: 2079, column: 21, scope: !2340)
!2342 = !DILocation(line: 2079, column: 8, scope: !2179)
!2343 = !DILocation(line: 2080, column: 13, scope: !2340)
!2344 = !DILocation(line: 2080, column: 16, scope: !2340)
!2345 = !DILocation(line: 2081, column: 15, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 2081, column: 8)
!2347 = !DILocation(line: 2080, column: 6, scope: !2340)
!2348 = !DILocation(line: 2081, column: 21, scope: !2346)
!2349 = !DILocation(line: 2081, column: 8, scope: !2179)
!2350 = !DILocation(line: 2082, column: 13, scope: !2346)
!2351 = !DILocation(line: 2082, column: 16, scope: !2346)
!2352 = !DILocation(line: 2082, column: 6, scope: !2346)
!2353 = !DILocation(line: 2084, column: 15, scope: !2332)
!2354 = !DILocation(line: 2084, column: 20, scope: !2332)
!2355 = !DILocation(line: 2084, column: 8, scope: !2179)
!2356 = !DILocation(line: 2087, column: 9, scope: !2331)
!2357 = !DILocation(line: 2088, column: 9, scope: !2331)
!2358 = !DILocation(line: 2086, column: 8, scope: !2331)
!2359 = !DILocation(line: 2089, column: 18, scope: !2331)
!2360 = !DILocation(line: 2089, column: 15, scope: !2331)
!2361 = !DILocation(line: 2090, column: 6, scope: !2331)
!2362 = !DILocation(line: 2092, column: 15, scope: !2332)
!2363 = !DILocation(line: 0, scope: !2332)
!2364 = !DILocation(line: 2094, column: 15, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 2094, column: 8)
!2366 = !DILocation(line: 2094, column: 21, scope: !2365)
!2367 = !DILocation(line: 2094, column: 8, scope: !2179)
!2368 = !DILocation(line: 2096, column: 15, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 2095, column: 6)
!2370 = !DILocation(line: 2096, column: 18, scope: !2369)
!2371 = !DILocation(line: 2097, column: 15, scope: !2369)
!2372 = !DILocation(line: 2097, column: 18, scope: !2369)
!2373 = !DILocation(line: 2098, column: 15, scope: !2369)
!2374 = !DILocation(line: 2098, column: 18, scope: !2369)
!2375 = !DILocation(line: 2100, column: 6, scope: !2369)
!2376 = !DILocation(line: 2075, column: 31, scope: !2180)
!2377 = !DILocation(line: 2075, column: 7, scope: !2180)
!2378 = distinct !{!2378, !2336, !2379}
!2379 = !DILocation(line: 2101, column: 2, scope: !2181)
!2380 = !DILocation(line: 2104, column: 11, scope: !2151)
!2381 = !DILocation(line: 2105, column: 17, scope: !2151)
!2382 = !DILocation(line: 2105, column: 3, scope: !2151)
!2383 = !DILocation(line: 2106, column: 1, scope: !2151)
!2384 = distinct !DISubprogram(name: "macro_real_token_count", scope: !3, file: !3, line: 809, type: !2385, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!7, !2055}
!2387 = !{!2388, !2389}
!2388 = !DILocalVariable(name: "macro", arg: 1, scope: !2384, file: !3, line: 809, type: !2055)
!2389 = !DILocalVariable(name: "i", scope: !2384, file: !3, line: 811, type: !7)
!2390 = !DILocation(line: 0, scope: !2384)
!2391 = !DILocation(line: 812, column: 7, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 812, column: 7)
!2393 = !DILocation(line: 812, column: 7, scope: !2384)
!2394 = !DILocation(line: 0, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 814, column: 3)
!2396 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 814, column: 3)
!2397 = !DILocation(line: 0, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 815, column: 9)
!2399 = !DILocation(line: 814, column: 3, scope: !2396)
!2400 = !DILocation(line: 813, column: 19, scope: !2392)
!2401 = !DILocation(line: 813, column: 5, scope: !2392)
!2402 = !DILocation(line: 0, scope: !2396)
!2403 = !DILocation(line: 814, column: 17, scope: !2395)
!2404 = !DILocation(line: 815, column: 20, scope: !2398)
!2405 = !DILocation(line: 815, column: 9, scope: !2398)
!2406 = !DILocation(line: 815, column: 30, scope: !2398)
!2407 = !DILocation(line: 815, column: 35, scope: !2398)
!2408 = !DILocation(line: 815, column: 9, scope: !2395)
!2409 = !DILocation(line: 814, column: 34, scope: !2395)
!2410 = !DILocation(line: 814, column: 3, scope: !2395)
!2411 = distinct !{!2411, !2399, !2412}
!2412 = !DILocation(line: 816, column: 14, scope: !2396)
!2413 = !DILocation(line: 817, column: 3, scope: !2384)
!2414 = !DILocation(line: 818, column: 1, scope: !2384)
!2415 = distinct !DISubprogram(name: "paste_tokens", scope: !3, file: !3, line: 446, type: !2416, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2418)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!48, !231, !164, !161}
!2418 = !{!2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427}
!2419 = !DILocalVariable(name: "pfile", arg: 1, scope: !2415, file: !3, line: 446, type: !231)
!2420 = !DILocalVariable(name: "plhs", arg: 2, scope: !2415, file: !3, line: 446, type: !164)
!2421 = !DILocalVariable(name: "rhs", arg: 3, scope: !2415, file: !3, line: 446, type: !161)
!2422 = !DILocalVariable(name: "buf", scope: !2415, file: !3, line: 448, type: !139)
!2423 = !DILocalVariable(name: "end", scope: !2415, file: !3, line: 448, type: !139)
!2424 = !DILocalVariable(name: "lhsend", scope: !2415, file: !3, line: 448, type: !139)
!2425 = !DILocalVariable(name: "lhs", scope: !2415, file: !3, line: 449, type: !88)
!2426 = !DILocalVariable(name: "len", scope: !2415, file: !3, line: 450, type: !7)
!2427 = !DILocalVariable(name: "saved_loc", scope: !2428, file: !3, line: 475, type: !93)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 474, column: 5)
!2429 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 473, column: 7)
!2430 = !DILocation(line: 0, scope: !2415)
!2431 = !DILocation(line: 452, column: 24, scope: !2415)
!2432 = !DILocation(line: 452, column: 9, scope: !2415)
!2433 = !DILocation(line: 452, column: 33, scope: !2415)
!2434 = !DILocation(line: 452, column: 31, scope: !2415)
!2435 = !DILocation(line: 452, column: 53, scope: !2415)
!2436 = !DILocation(line: 453, column: 27, scope: !2415)
!2437 = !DILocation(line: 454, column: 42, scope: !2415)
!2438 = !DILocation(line: 454, column: 18, scope: !2415)
!2439 = !DILocation(line: 460, column: 8, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 460, column: 7)
!2441 = !DILocation(line: 460, column: 16, scope: !2440)
!2442 = !DILocation(line: 460, column: 21, scope: !2440)
!2443 = !DILocation(line: 460, column: 32, scope: !2440)
!2444 = !DILocation(line: 460, column: 40, scope: !2440)
!2445 = !DILocation(line: 460, column: 45, scope: !2440)
!2446 = !DILocation(line: 460, column: 7, scope: !2415)
!2447 = !DILocation(line: 461, column: 9, scope: !2440)
!2448 = !DILocation(line: 461, column: 12, scope: !2440)
!2449 = !DILocation(line: 461, column: 5, scope: !2440)
!2450 = !DILocation(line: 463, column: 12, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 463, column: 7)
!2452 = !DILocation(line: 463, column: 17, scope: !2451)
!2453 = !DILocation(line: 463, column: 7, scope: !2415)
!2454 = !DILocation(line: 464, column: 11, scope: !2451)
!2455 = !DILocation(line: 464, column: 5, scope: !2451)
!2456 = !DILocation(line: 465, column: 8, scope: !2415)
!2457 = !DILocation(line: 467, column: 36, scope: !2415)
!2458 = !DILocation(line: 467, column: 3, scope: !2415)
!2459 = !DILocation(line: 468, column: 3, scope: !2415)
!2460 = !DILocation(line: 471, column: 22, scope: !2415)
!2461 = !DILocation(line: 471, column: 10, scope: !2415)
!2462 = !DILocation(line: 471, column: 20, scope: !2415)
!2463 = !DILocation(line: 472, column: 9, scope: !2415)
!2464 = !DILocation(line: 473, column: 14, scope: !2429)
!2465 = !DILocation(line: 473, column: 22, scope: !2429)
!2466 = !DILocation(line: 473, column: 44, scope: !2429)
!2467 = !DILocation(line: 473, column: 26, scope: !2429)
!2468 = !DILocation(line: 473, column: 7, scope: !2415)
!2469 = !DILocation(line: 475, column: 40, scope: !2428)
!2470 = !DILocation(line: 0, scope: !2428)
!2471 = !DILocation(line: 477, column: 7, scope: !2428)
!2472 = !DILocation(line: 478, column: 7, scope: !2428)
!2473 = !DILocation(line: 479, column: 15, scope: !2428)
!2474 = !DILocation(line: 483, column: 15, scope: !2428)
!2475 = !DILocation(line: 483, column: 14, scope: !2428)
!2476 = !DILocation(line: 484, column: 13, scope: !2428)
!2477 = !DILocation(line: 485, column: 20, scope: !2428)
!2478 = !DILocation(line: 486, column: 12, scope: !2428)
!2479 = !DILocation(line: 486, column: 18, scope: !2428)
!2480 = !DILocation(line: 489, column: 11, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 489, column: 11)
!2482 = !DILocation(line: 489, column: 36, scope: !2481)
!2483 = !DILocation(line: 489, column: 11, scope: !2428)
!2484 = !DILocation(line: 492, column: 11, scope: !2481)
!2485 = !DILocation(line: 490, column: 2, scope: !2481)
!2486 = !DILocation(line: 496, column: 9, scope: !2415)
!2487 = !DILocation(line: 497, column: 3, scope: !2415)
!2488 = !DILocation(line: 498, column: 3, scope: !2415)
!2489 = !DILocation(line: 499, column: 1, scope: !2415)
!2490 = distinct !DISubprogram(name: "funlike_invocation_p", scope: !3, file: !3, line: 771, type: !2491, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2494)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!172, !231, !58, !2493}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!2494 = !{!2495, !2496, !2497, !2498, !2499}
!2495 = !DILocalVariable(name: "pfile", arg: 1, scope: !2490, file: !3, line: 771, type: !231)
!2496 = !DILocalVariable(name: "node", arg: 2, scope: !2490, file: !3, line: 771, type: !58)
!2497 = !DILocalVariable(name: "pragma_buff", arg: 3, scope: !2490, file: !3, line: 772, type: !2493)
!2498 = !DILocalVariable(name: "token", scope: !2490, file: !3, line: 774, type: !161)
!2499 = !DILocalVariable(name: "padding", scope: !2490, file: !3, line: 774, type: !161)
!2500 = !DILocation(line: 0, scope: !2490)
!2501 = !DILocation(line: 776, column: 3, scope: !2490)
!2502 = !DILocation(line: 778, column: 15, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 777, column: 5)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 776, column: 3)
!2505 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 776, column: 3)
!2506 = !DILocation(line: 779, column: 18, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 779, column: 11)
!2508 = !DILocation(line: 779, column: 23, scope: !2507)
!2509 = !DILocation(line: 779, column: 11, scope: !2503)
!2510 = !DILocation(line: 781, column: 19, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 781, column: 11)
!2512 = !DILocation(line: 782, column: 4, scope: !2511)
!2513 = !DILocation(line: 782, column: 19, scope: !2511)
!2514 = !DILocation(line: 782, column: 25, scope: !2511)
!2515 = !DILocation(line: 782, column: 39, scope: !2511)
!2516 = !DILocation(line: 782, column: 49, scope: !2511)
!2517 = !DILocation(line: 782, column: 53, scope: !2511)
!2518 = !DILocation(line: 782, column: 60, scope: !2511)
!2519 = !DILocation(line: 781, column: 11, scope: !2503)
!2520 = !DILocation(line: 783, column: 2, scope: !2511)
!2521 = !DILocation(line: 776, column: 3, scope: !2504)
!2522 = distinct !{!2522, !2523, !2524}
!2523 = !DILocation(line: 776, column: 3, scope: !2505)
!2524 = !DILocation(line: 784, column: 5, scope: !2505)
!2525 = !DILocation(line: 786, column: 19, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 786, column: 7)
!2527 = !DILocation(line: 786, column: 7, scope: !2490)
!2528 = !DILocation(line: 788, column: 20, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 787, column: 5)
!2530 = !DILocation(line: 788, column: 33, scope: !2529)
!2531 = !DILocation(line: 789, column: 14, scope: !2529)
!2532 = !DILocation(line: 789, column: 7, scope: !2529)
!2533 = !DILocation(line: 794, column: 19, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 794, column: 7)
!2535 = !DILocation(line: 794, column: 50, scope: !2534)
!2536 = !DILocation(line: 794, column: 39, scope: !2534)
!2537 = !DILocation(line: 794, column: 30, scope: !2534)
!2538 = !DILocation(line: 799, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 795, column: 5)
!2540 = !DILocation(line: 800, column: 11, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 800, column: 11)
!2542 = !DILocation(line: 800, column: 11, scope: !2539)
!2543 = !DILocation(line: 801, column: 2, scope: !2541)
!2544 = !DILocation(line: 805, column: 1, scope: !2490)
!2545 = distinct !DISubprogram(name: "replace_args", scope: !3, file: !3, line: 929, type: !2546, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !231, !58, !78, !183}
!2548 = !{!2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2566, !2567, !2568}
!2549 = !DILocalVariable(name: "pfile", arg: 1, scope: !2545, file: !3, line: 929, type: !231)
!2550 = !DILocalVariable(name: "node", arg: 2, scope: !2545, file: !3, line: 929, type: !58)
!2551 = !DILocalVariable(name: "macro", arg: 3, scope: !2545, file: !3, line: 929, type: !78)
!2552 = !DILocalVariable(name: "args", arg: 4, scope: !2545, file: !3, line: 929, type: !183)
!2553 = !DILocalVariable(name: "i", scope: !2545, file: !3, line: 931, type: !7)
!2554 = !DILocalVariable(name: "total", scope: !2545, file: !3, line: 931, type: !7)
!2555 = !DILocalVariable(name: "src", scope: !2545, file: !3, line: 932, type: !161)
!2556 = !DILocalVariable(name: "limit", scope: !2545, file: !3, line: 932, type: !161)
!2557 = !DILocalVariable(name: "dest", scope: !2545, file: !3, line: 933, type: !164)
!2558 = !DILocalVariable(name: "first", scope: !2545, file: !3, line: 933, type: !164)
!2559 = !DILocalVariable(name: "arg", scope: !2545, file: !3, line: 934, type: !183)
!2560 = !DILocalVariable(name: "buff", scope: !2545, file: !3, line: 935, type: !172)
!2561 = !DILocalVariable(name: "count", scope: !2545, file: !3, line: 936, type: !7)
!2562 = !DILocalVariable(name: "count", scope: !2563, file: !3, line: 980, type: !7)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 979, column: 5)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 978, column: 3)
!2565 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 978, column: 3)
!2566 = !DILocalVariable(name: "from", scope: !2563, file: !3, line: 981, type: !164)
!2567 = !DILocalVariable(name: "paste_flag", scope: !2563, file: !3, line: 981, type: !164)
!2568 = !DILocalVariable(name: "token", scope: !2569, file: !3, line: 1053, type: !88)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 1052, column: 2)
!2570 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1051, column: 11)
!2571 = !DILocation(line: 0, scope: !2545)
!2572 = !DILocation(line: 942, column: 11, scope: !2545)
!2573 = !DILocation(line: 944, column: 22, scope: !2545)
!2574 = !DILocation(line: 944, column: 29, scope: !2545)
!2575 = !DILocation(line: 946, column: 8, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 946, column: 3)
!2577 = !DILocation(line: 0, scope: !2576)
!2578 = !DILocation(line: 946, column: 37, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 946, column: 3)
!2580 = !DILocation(line: 946, column: 3, scope: !2576)
!2581 = !DILocation(line: 947, column: 14, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 947, column: 9)
!2583 = !DILocation(line: 947, column: 19, scope: !2582)
!2584 = !DILocation(line: 947, column: 9, scope: !2579)
!2585 = !DILocation(line: 950, column: 8, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 948, column: 7)
!2587 = !DILocation(line: 954, column: 33, scope: !2586)
!2588 = !DILocation(line: 954, column: 40, scope: !2586)
!2589 = !DILocation(line: 954, column: 9, scope: !2586)
!2590 = !DILocation(line: 956, column: 11, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 956, column: 6)
!2592 = !DILocation(line: 956, column: 17, scope: !2591)
!2593 = !DILocation(line: 956, column: 6, scope: !2586)
!2594 = !DILocation(line: 958, column: 16, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 958, column: 10)
!2596 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 957, column: 4)
!2597 = !DILocation(line: 958, column: 11, scope: !2595)
!2598 = !DILocation(line: 958, column: 10, scope: !2596)
!2599 = !DILocation(line: 959, column: 27, scope: !2595)
!2600 = !DILocation(line: 959, column: 25, scope: !2595)
!2601 = !DILocation(line: 959, column: 8, scope: !2595)
!2602 = !DILocation(line: 961, column: 23, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 961, column: 11)
!2604 = !DILocation(line: 962, column: 4, scope: !2603)
!2605 = !DILocation(line: 962, column: 25, scope: !2603)
!2606 = !DILocation(line: 962, column: 12, scope: !2603)
!2607 = !DILocation(line: 962, column: 32, scope: !2603)
!2608 = !DILocation(line: 962, column: 44, scope: !2603)
!2609 = !DILocation(line: 962, column: 50, scope: !2603)
!2610 = !DILocation(line: 961, column: 11, scope: !2591)
!2611 = !DILocation(line: 963, column: 18, scope: !2603)
!2612 = !DILocation(line: 963, column: 24, scope: !2603)
!2613 = !DILocation(line: 963, column: 10, scope: !2603)
!2614 = !DILocation(line: 963, column: 4, scope: !2603)
!2615 = !DILocation(line: 966, column: 16, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 966, column: 10)
!2617 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 965, column: 4)
!2618 = !DILocation(line: 966, column: 11, scope: !2616)
!2619 = !DILocation(line: 966, column: 10, scope: !2617)
!2620 = !DILocation(line: 967, column: 8, scope: !2616)
!2621 = !DILocation(line: 968, column: 20, scope: !2617)
!2622 = !DILocation(line: 968, column: 35, scope: !2617)
!2623 = !DILocation(line: 968, column: 12, scope: !2617)
!2624 = !DILocation(line: 946, column: 49, scope: !2579)
!2625 = !DILocation(line: 946, column: 3, scope: !2579)
!2626 = distinct !{!2626, !2580, !2627}
!2627 = !DILocation(line: 970, column: 7, scope: !2576)
!2628 = !DILocation(line: 974, column: 32, scope: !2545)
!2629 = !DILocation(line: 974, column: 38, scope: !2545)
!2630 = !DILocation(line: 974, column: 10, scope: !2545)
!2631 = !DILocation(line: 975, column: 38, scope: !2545)
!2632 = !DILocation(line: 978, column: 25, scope: !2565)
!2633 = !DILocation(line: 0, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 1000, column: 12)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 999, column: 6)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 998, column: 8)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 996, column: 2)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 995, column: 16)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 993, column: 16)
!2640 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 991, column: 11)
!2641 = !DILocation(line: 0, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1020, column: 11)
!2643 = !DILocation(line: 0, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 1034, column: 16)
!2645 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1024, column: 11)
!2646 = !DILocation(line: 0, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 1037, column: 2)
!2648 = !DILocation(line: 0, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1047, column: 11)
!2650 = !DILocation(line: 978, column: 8, scope: !2565)
!2651 = !DILocation(line: 0, scope: !2565)
!2652 = !DILocation(line: 978, column: 37, scope: !2564)
!2653 = !DILocation(line: 978, column: 3, scope: !2565)
!2654 = !DILocation(line: 1065, column: 3, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 1065, column: 3)
!2656 = !DILocation(line: 983, column: 16, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 983, column: 11)
!2658 = !DILocation(line: 983, column: 21, scope: !2657)
!2659 = !DILocation(line: 983, column: 11, scope: !2563)
!2660 = !DILocation(line: 985, column: 9, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 984, column: 2)
!2662 = !DILocation(line: 985, column: 12, scope: !2661)
!2663 = !DILocation(line: 986, column: 4, scope: !2661)
!2664 = !DILocation(line: 0, scope: !2563)
!2665 = !DILocation(line: 990, column: 38, scope: !2563)
!2666 = !DILocation(line: 990, column: 45, scope: !2563)
!2667 = !DILocation(line: 990, column: 14, scope: !2563)
!2668 = !DILocation(line: 991, column: 16, scope: !2640)
!2669 = !DILocation(line: 991, column: 22, scope: !2640)
!2670 = !DILocation(line: 991, column: 11, scope: !2563)
!2671 = !DILocation(line: 992, column: 26, scope: !2640)
!2672 = !DILocation(line: 992, column: 2, scope: !2640)
!2673 = !DILocation(line: 993, column: 27, scope: !2639)
!2674 = !DILocation(line: 993, column: 16, scope: !2640)
!2675 = !DILocation(line: 994, column: 15, scope: !2639)
!2676 = !DILocation(line: 994, column: 34, scope: !2639)
!2677 = !DILocation(line: 994, column: 2, scope: !2639)
!2678 = !DILocation(line: 995, column: 34, scope: !2638)
!2679 = !DILocation(line: 995, column: 20, scope: !2638)
!2680 = !DILocation(line: 995, column: 41, scope: !2638)
!2681 = !DILocation(line: 995, column: 53, scope: !2638)
!2682 = !DILocation(line: 995, column: 59, scope: !2638)
!2683 = !DILocation(line: 995, column: 16, scope: !2639)
!2684 = !DILocation(line: 997, column: 17, scope: !2637)
!2685 = !DILocation(line: 997, column: 36, scope: !2637)
!2686 = !DILocation(line: 998, column: 13, scope: !2636)
!2687 = !DILocation(line: 998, column: 8, scope: !2637)
!2688 = !DILocation(line: 1000, column: 12, scope: !2634)
!2689 = !DILocation(line: 1000, column: 22, scope: !2634)
!2690 = !DILocation(line: 1000, column: 27, scope: !2634)
!2691 = !DILocation(line: 1001, column: 5, scope: !2634)
!2692 = !DILocation(line: 1001, column: 15, scope: !2634)
!2693 = !DILocation(line: 1001, column: 8, scope: !2634)
!2694 = !DILocation(line: 1002, column: 5, scope: !2634)
!2695 = !DILocation(line: 1002, column: 44, scope: !2634)
!2696 = !DILocation(line: 1002, column: 37, scope: !2634)
!2697 = !DILocation(line: 1002, column: 34, scope: !2634)
!2698 = !DILocation(line: 1000, column: 12, scope: !2635)
!2699 = !DILocation(line: 1006, column: 14, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 1006, column: 9)
!2701 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 1003, column: 3)
!2702 = !DILocation(line: 1006, column: 9, scope: !2701)
!2703 = !DILocation(line: 1012, column: 23, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 1012, column: 17)
!2705 = !DILocation(line: 1012, column: 17, scope: !2634)
!2706 = !DILocation(line: 1017, column: 15, scope: !2638)
!2707 = !DILocation(line: 1017, column: 43, scope: !2638)
!2708 = !DILocation(line: 976, column: 8, scope: !2545)
!2709 = !DILocation(line: 0, scope: !2640)
!2710 = !DILocation(line: 989, column: 18, scope: !2563)
!2711 = !DILocation(line: 1020, column: 26, scope: !2642)
!2712 = !DILocation(line: 1020, column: 13, scope: !2642)
!2713 = !DILocation(line: 1020, column: 39, scope: !2642)
!2714 = !DILocation(line: 1020, column: 55, scope: !2642)
!2715 = !DILocation(line: 1020, column: 42, scope: !2642)
!2716 = !DILocation(line: 1021, column: 4, scope: !2642)
!2717 = !DILocation(line: 1021, column: 25, scope: !2642)
!2718 = !DILocation(line: 1021, column: 11, scope: !2642)
!2719 = !DILocation(line: 1021, column: 32, scope: !2642)
!2720 = !DILocation(line: 1021, column: 45, scope: !2642)
!2721 = !DILocation(line: 1021, column: 51, scope: !2642)
!2722 = !DILocation(line: 1020, column: 11, scope: !2563)
!2723 = !DILocation(line: 1022, column: 12, scope: !2642)
!2724 = !DILocation(line: 1022, column: 7, scope: !2642)
!2725 = !DILocation(line: 1022, column: 10, scope: !2642)
!2726 = !DILocation(line: 1022, column: 2, scope: !2642)
!2727 = !DILocation(line: 1024, column: 11, scope: !2645)
!2728 = !DILocation(line: 1024, column: 11, scope: !2563)
!2729 = !DILocation(line: 1026, column: 12, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 1025, column: 2)
!2731 = !DILocation(line: 1026, column: 18, scope: !2730)
!2732 = !DILocation(line: 1026, column: 24, scope: !2730)
!2733 = !DILocation(line: 1026, column: 30, scope: !2730)
!2734 = !DILocation(line: 1026, column: 4, scope: !2730)
!2735 = !DILocation(line: 1027, column: 9, scope: !2730)
!2736 = !DILocation(line: 1031, column: 13, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1031, column: 8)
!2738 = !DILocation(line: 1031, column: 19, scope: !2737)
!2739 = !DILocation(line: 1032, column: 24, scope: !2737)
!2740 = !DILocation(line: 1031, column: 8, scope: !2730)
!2741 = !DILocation(line: 1033, column: 2, scope: !2730)
!2742 = !DILocation(line: 1034, column: 16, scope: !2644)
!2743 = !DILocation(line: 1034, column: 37, scope: !2644)
!2744 = !DILocation(line: 1034, column: 49, scope: !2644)
!2745 = !DILocation(line: 1034, column: 42, scope: !2644)
!2746 = !DILocation(line: 1035, column: 9, scope: !2644)
!2747 = !DILocation(line: 1035, column: 14, scope: !2644)
!2748 = !DILocation(line: 1036, column: 9, scope: !2644)
!2749 = !DILocation(line: 1036, column: 14, scope: !2644)
!2750 = !DILocation(line: 1034, column: 16, scope: !2645)
!2751 = !DILocation(line: 1042, column: 8, scope: !2647)
!2752 = !DILocation(line: 1043, column: 27, scope: !2647)
!2753 = !DILocation(line: 1038, column: 4, scope: !2647)
!2754 = !DILocation(line: 1044, column: 2, scope: !2647)
!2755 = !DILocation(line: 1047, column: 25, scope: !2649)
!2756 = !DILocation(line: 1047, column: 12, scope: !2649)
!2757 = !DILocation(line: 1047, column: 38, scope: !2649)
!2758 = !DILocation(line: 1047, column: 48, scope: !2649)
!2759 = !DILocation(line: 1047, column: 54, scope: !2649)
!2760 = !DILocation(line: 1047, column: 11, scope: !2563)
!2761 = !DILocation(line: 1048, column: 7, scope: !2649)
!2762 = !DILocation(line: 1048, column: 10, scope: !2649)
!2763 = !DILocation(line: 1048, column: 2, scope: !2649)
!2764 = !DILocation(line: 1051, column: 11, scope: !2570)
!2765 = !DILocation(line: 1051, column: 11, scope: !2563)
!2766 = !DILocation(line: 1053, column: 23, scope: !2569)
!2767 = !DILocation(line: 0, scope: !2569)
!2768 = !DILocation(line: 1054, column: 19, scope: !2569)
!2769 = !DILocation(line: 1054, column: 33, scope: !2569)
!2770 = !DILocation(line: 1054, column: 11, scope: !2569)
!2771 = !DILocation(line: 1054, column: 16, scope: !2569)
!2772 = !DILocation(line: 1055, column: 11, scope: !2569)
!2773 = !DILocation(line: 1055, column: 18, scope: !2569)
!2774 = !DILocation(line: 1055, column: 32, scope: !2569)
!2775 = !DILocation(line: 1056, column: 13, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 1056, column: 8)
!2777 = !DILocation(line: 1056, column: 19, scope: !2776)
!2778 = !DILocation(line: 0, scope: !2776)
!2779 = !DILocation(line: 1056, column: 8, scope: !2569)
!2780 = !DILocation(line: 1057, column: 42, scope: !2776)
!2781 = !DILocation(line: 1057, column: 13, scope: !2776)
!2782 = !DILocation(line: 1057, column: 19, scope: !2776)
!2783 = !DILocation(line: 1057, column: 6, scope: !2776)
!2784 = !DILocation(line: 1059, column: 42, scope: !2776)
!2785 = !DILocation(line: 1059, column: 13, scope: !2776)
!2786 = !DILocation(line: 1059, column: 19, scope: !2776)
!2787 = !DILocation(line: 1060, column: 16, scope: !2569)
!2788 = !DILocation(line: 1061, column: 2, scope: !2569)
!2789 = !DILocation(line: 978, column: 49, scope: !2564)
!2790 = !DILocation(line: 978, column: 3, scope: !2564)
!2791 = distinct !{!2791, !2653, !2792}
!2792 = !DILocation(line: 1062, column: 5, scope: !2565)
!2793 = !DILocation(line: 0, scope: !2655)
!2794 = !DILocation(line: 1065, column: 26, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 1065, column: 3)
!2796 = !DILocation(line: 1065, column: 17, scope: !2795)
!2797 = !DILocation(line: 1066, column: 17, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 1066, column: 9)
!2799 = !DILocation(line: 1066, column: 9, scope: !2798)
!2800 = !DILocation(line: 1066, column: 9, scope: !2795)
!2801 = !DILocation(line: 1067, column: 7, scope: !2798)
!2802 = !DILocation(line: 1065, column: 35, scope: !2795)
!2803 = !DILocation(line: 1065, column: 3, scope: !2795)
!2804 = distinct !{!2804, !2654, !2805}
!2805 = !DILocation(line: 1067, column: 29, scope: !2655)
!2806 = !DILocation(line: 1069, column: 55, scope: !2545)
!2807 = !DILocation(line: 1069, column: 50, scope: !2545)
!2808 = !DILocation(line: 1069, column: 3, scope: !2545)
!2809 = !DILocation(line: 1070, column: 1, scope: !2545)
!2810 = distinct !DISubprogram(name: "push_ptoken_context", scope: !3, file: !3, line: 1108, type: !2811, scopeLine: 1110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{null, !231, !58, !172, !164, !7}
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2819}
!2814 = !DILocalVariable(name: "pfile", arg: 1, scope: !2810, file: !3, line: 1108, type: !231)
!2815 = !DILocalVariable(name: "macro", arg: 2, scope: !2810, file: !3, line: 1108, type: !58)
!2816 = !DILocalVariable(name: "buff", arg: 3, scope: !2810, file: !3, line: 1108, type: !172)
!2817 = !DILocalVariable(name: "first", arg: 4, scope: !2810, file: !3, line: 1109, type: !164)
!2818 = !DILocalVariable(name: "count", arg: 5, scope: !2810, file: !3, line: 1109, type: !7)
!2819 = !DILocalVariable(name: "context", scope: !2810, file: !3, line: 1111, type: !144)
!2820 = !DILocation(line: 0, scope: !2810)
!2821 = !DILocation(line: 1111, column: 26, scope: !2810)
!2822 = !DILocation(line: 1113, column: 12, scope: !2810)
!2823 = !DILocation(line: 1113, column: 21, scope: !2810)
!2824 = !DILocation(line: 1114, column: 12, scope: !2810)
!2825 = !DILocation(line: 1114, column: 18, scope: !2810)
!2826 = !DILocation(line: 1115, column: 12, scope: !2810)
!2827 = !DILocation(line: 1115, column: 17, scope: !2810)
!2828 = !DILocation(line: 1116, column: 3, scope: !2810)
!2829 = !DILocation(line: 1116, column: 19, scope: !2810)
!2830 = !DILocation(line: 1116, column: 26, scope: !2810)
!2831 = !DILocation(line: 1117, column: 33, scope: !2810)
!2832 = !DILocation(line: 1117, column: 3, scope: !2810)
!2833 = !DILocation(line: 1117, column: 18, scope: !2810)
!2834 = !DILocation(line: 1117, column: 25, scope: !2810)
!2835 = !DILocation(line: 1118, column: 1, scope: !2810)
!2836 = distinct !DISubprogram(name: "builtin_macro", scope: !3, file: !3, line: 293, type: !2837, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!208, !231, !58}
!2839 = !{!2840, !2841, !2842, !2843, !2844}
!2840 = !DILocalVariable(name: "pfile", arg: 1, scope: !2836, file: !3, line: 293, type: !231)
!2841 = !DILocalVariable(name: "node", arg: 2, scope: !2836, file: !3, line: 293, type: !58)
!2842 = !DILocalVariable(name: "buf", scope: !2836, file: !3, line: 295, type: !141)
!2843 = !DILocalVariable(name: "len", scope: !2836, file: !3, line: 296, type: !54)
!2844 = !DILocalVariable(name: "nbuf", scope: !2836, file: !3, line: 297, type: !44)
!2845 = !DILocation(line: 0, scope: !2836)
!2846 = !DILocation(line: 299, column: 13, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 299, column: 7)
!2848 = !DILocation(line: 299, column: 19, scope: !2847)
!2849 = !DILocation(line: 299, column: 27, scope: !2847)
!2850 = !DILocation(line: 299, column: 7, scope: !2836)
!2851 = !DILocation(line: 303, column: 24, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 303, column: 11)
!2853 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 300, column: 5)
!2854 = !DILocation(line: 303, column: 11, scope: !2852)
!2855 = !DILocation(line: 303, column: 11, scope: !2853)
!2856 = !DILocation(line: 306, column: 14, scope: !2853)
!2857 = !DILocation(line: 306, column: 7, scope: !2853)
!2858 = !DILocation(line: 309, column: 9, scope: !2836)
!2859 = !DILocation(line: 310, column: 9, scope: !2836)
!2860 = !DILocation(line: 311, column: 19, scope: !2836)
!2861 = !DILocation(line: 312, column: 3, scope: !2836)
!2862 = !DILocation(line: 313, column: 3, scope: !2836)
!2863 = !DILocation(line: 313, column: 12, scope: !2836)
!2864 = !DILocation(line: 315, column: 3, scope: !2836)
!2865 = !DILocation(line: 316, column: 3, scope: !2836)
!2866 = !DILocation(line: 319, column: 22, scope: !2836)
!2867 = !DILocation(line: 319, column: 10, scope: !2836)
!2868 = !DILocation(line: 319, column: 20, scope: !2836)
!2869 = !DILocation(line: 320, column: 41, scope: !2836)
!2870 = !DILocation(line: 320, column: 3, scope: !2836)
!2871 = !DILocation(line: 321, column: 14, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 321, column: 7)
!2873 = !DILocation(line: 321, column: 22, scope: !2872)
!2874 = !DILocation(line: 321, column: 44, scope: !2872)
!2875 = !DILocation(line: 321, column: 26, scope: !2872)
!2876 = !DILocation(line: 321, column: 7, scope: !2836)
!2877 = !DILocation(line: 323, column: 9, scope: !2872)
!2878 = !DILocation(line: 322, column: 5, scope: !2872)
!2879 = !DILocation(line: 324, column: 3, scope: !2836)
!2880 = !DILocation(line: 326, column: 3, scope: !2836)
!2881 = !DILocation(line: 327, column: 1, scope: !2836)
!2882 = distinct !DISubprogram(name: "collect_args", scope: !3, file: !3, line: 590, type: !2883, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!172, !231, !418, !2493}
!2885 = !{!2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2898, !2899, !2910}
!2886 = !DILocalVariable(name: "pfile", arg: 1, scope: !2882, file: !3, line: 590, type: !231)
!2887 = !DILocalVariable(name: "node", arg: 2, scope: !2882, file: !3, line: 590, type: !418)
!2888 = !DILocalVariable(name: "pragma_buff", arg: 3, scope: !2882, file: !3, line: 591, type: !2493)
!2889 = !DILocalVariable(name: "buff", scope: !2882, file: !3, line: 593, type: !172)
!2890 = !DILocalVariable(name: "base_buff", scope: !2882, file: !3, line: 593, type: !172)
!2891 = !DILocalVariable(name: "macro", scope: !2882, file: !3, line: 594, type: !78)
!2892 = !DILocalVariable(name: "args", scope: !2882, file: !3, line: 595, type: !183)
!2893 = !DILocalVariable(name: "arg", scope: !2882, file: !3, line: 595, type: !183)
!2894 = !DILocalVariable(name: "token", scope: !2882, file: !3, line: 596, type: !161)
!2895 = !DILocalVariable(name: "argc", scope: !2882, file: !3, line: 597, type: !7)
!2896 = !DILocalVariable(name: "paren_depth", scope: !2897, file: !3, line: 617, type: !7)
!2897 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 616, column: 5)
!2898 = !DILocalVariable(name: "ntokens", scope: !2897, file: !3, line: 618, type: !7)
!2899 = !DILocalVariable(name: "newtok", scope: !2900, file: !3, line: 661, type: !88)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 660, column: 6)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 659, column: 13)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 656, column: 13)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 648, column: 13)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 643, column: 13)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 641, column: 13)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 635, column: 8)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 624, column: 2)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 623, column: 7)
!2909 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 623, column: 7)
!2910 = !DILocalVariable(name: "next", scope: !2911, file: !3, line: 672, type: !172)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 671, column: 7)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 669, column: 9)
!2913 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 668, column: 3)
!2914 = !DILocation(line: 0, scope: !2882)
!2915 = !DILocation(line: 599, column: 23, scope: !2882)
!2916 = !DILocation(line: 600, column: 14, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 600, column: 7)
!2918 = !DILocation(line: 600, column: 7, scope: !2917)
!2919 = !DILocation(line: 600, column: 7, scope: !2882)
!2920 = !DILocation(line: 601, column: 5, scope: !2917)
!2921 = !DILocation(line: 604, column: 37, scope: !2882)
!2922 = !DILocation(line: 604, column: 10, scope: !2882)
!2923 = !DILocation(line: 607, column: 30, scope: !2882)
!2924 = !DILocation(line: 608, column: 11, scope: !2882)
!2925 = !DILocation(line: 608, column: 25, scope: !2882)
!2926 = !DILocation(line: 608, column: 3, scope: !2882)
!2927 = !DILocation(line: 609, column: 34, scope: !2882)
!2928 = !DILocation(line: 609, column: 9, scope: !2882)
!2929 = !DILocation(line: 609, column: 13, scope: !2882)
!2930 = !DILocation(line: 0, scope: !2900)
!2931 = !DILocation(line: 0, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 652, column: 12)
!2933 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 649, column: 6)
!2934 = !DILocation(line: 0, scope: !2897)
!2935 = !DILocation(line: 615, column: 3, scope: !2882)
!2936 = !DILocation(line: 620, column: 11, scope: !2897)
!2937 = !DILocation(line: 621, column: 47, scope: !2897)
!2938 = !DILocation(line: 621, column: 18, scope: !2897)
!2939 = !DILocation(line: 0, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 626, column: 8)
!2941 = !DILocation(line: 623, column: 7, scope: !2897)
!2942 = !DILocation(line: 0, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 638, column: 12)
!2944 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 636, column: 6)
!2945 = !DILocation(line: 626, column: 8, scope: !2907)
!2946 = !DILocation(line: 626, column: 32, scope: !2940)
!2947 = !DILocation(line: 626, column: 27, scope: !2940)
!2948 = !DILocation(line: 626, column: 8, scope: !2940)
!2949 = !DILocation(line: 626, column: 59, scope: !2940)
!2950 = !DILocation(line: 626, column: 51, scope: !2940)
!2951 = !DILocation(line: 628, column: 15, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 627, column: 6)
!2953 = !DILocation(line: 630, column: 48, scope: !2952)
!2954 = !DILocation(line: 630, column: 19, scope: !2952)
!2955 = !DILocation(line: 631, column: 6, scope: !2952)
!2956 = !DILocation(line: 633, column: 12, scope: !2907)
!2957 = !DILocation(line: 635, column: 15, scope: !2906)
!2958 = !DILocation(line: 635, column: 20, scope: !2906)
!2959 = !DILocation(line: 635, column: 8, scope: !2907)
!2960 = !DILocation(line: 641, column: 25, scope: !2905)
!2961 = !DILocation(line: 641, column: 13, scope: !2906)
!2962 = !DILocation(line: 643, column: 25, scope: !2904)
!2963 = !DILocation(line: 643, column: 13, scope: !2905)
!2964 = !DILocation(line: 648, column: 25, scope: !2903)
!2965 = !DILocation(line: 648, column: 13, scope: !2904)
!2966 = !DILocation(line: 656, column: 25, scope: !2902)
!2967 = !DILocation(line: 657, column: 6, scope: !2902)
!2968 = !DILocation(line: 657, column: 22, scope: !2902)
!2969 = !DILocation(line: 657, column: 34, scope: !2902)
!2970 = !DILocation(line: 657, column: 44, scope: !2902)
!2971 = !DILocation(line: 657, column: 50, scope: !2902)
!2972 = !DILocation(line: 656, column: 13, scope: !2903)
!2973 = !DILocation(line: 659, column: 25, scope: !2901)
!2974 = !DILocation(line: 659, column: 13, scope: !2902)
!2975 = !DILocation(line: 661, column: 28, scope: !2900)
!2976 = !DILocation(line: 665, column: 18, scope: !2900)
!2977 = !DILocation(line: 667, column: 8, scope: !2900)
!2978 = !DILocation(line: 669, column: 9, scope: !2912)
!2979 = !DILocation(line: 669, column: 22, scope: !2912)
!2980 = !DILocation(line: 670, column: 9, scope: !2912)
!2981 = !DILocation(line: 670, column: 12, scope: !2912)
!2982 = !DILocation(line: 670, column: 37, scope: !2912)
!2983 = !DILocation(line: 669, column: 9, scope: !2913)
!2984 = !DILocation(line: 673, column: 13, scope: !2911)
!2985 = !DILocation(line: 681, column: 12, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 677, column: 4)
!2987 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 673, column: 13)
!2988 = !DILocation(line: 682, column: 30, scope: !2986)
!2989 = !DILocation(line: 682, column: 12, scope: !2986)
!2990 = !DILocation(line: 682, column: 36, scope: !2986)
!2991 = !DILocation(line: 680, column: 10, scope: !2986)
!2992 = !DILocation(line: 680, column: 8, scope: !2986)
!2993 = !DILocation(line: 683, column: 27, scope: !2986)
!2994 = !DILocation(line: 686, column: 27, scope: !2913)
!2995 = !DILocation(line: 675, column: 8, scope: !2987)
!2996 = !DILocation(line: 675, column: 6, scope: !2987)
!2997 = !DILocation(line: 674, column: 4, scope: !2987)
!2998 = !DILocation(line: 686, column: 53, scope: !2913)
!2999 = !DILocation(line: 687, column: 5, scope: !2913)
!3000 = !DILocation(line: 687, column: 31, scope: !2913)
!3001 = !DILocation(line: 688, column: 16, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2913, file: !3, line: 688, column: 9)
!3003 = !DILocation(line: 688, column: 21, scope: !3002)
!3004 = !DILocation(line: 688, column: 9, scope: !2913)
!3005 = !DILocation(line: 690, column: 13, scope: !2913)
!3006 = !DILocation(line: 692, column: 22, scope: !2900)
!3007 = !DILocation(line: 692, column: 27, scope: !2900)
!3008 = !DILocation(line: 691, column: 3, scope: !2913)
!3009 = distinct !{!3009, !2977, !3010}
!3010 = !DILocation(line: 692, column: 37, scope: !2900)
!3011 = !DILocation(line: 696, column: 34, scope: !2900)
!3012 = !DILocation(line: 697, column: 39, scope: !2900)
!3013 = !DILocation(line: 699, column: 19, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 699, column: 12)
!3015 = !DILocation(line: 699, column: 24, scope: !3014)
!3016 = !DILocation(line: 638, column: 12, scope: !2944)
!3017 = distinct !{!3017, !3018, !3019}
!3018 = !DILocation(line: 623, column: 7, scope: !2909)
!3019 = !DILocation(line: 706, column: 2, scope: !2909)
!3020 = !DILocation(line: 642, column: 17, scope: !2905)
!3021 = !DILocation(line: 645, column: 23, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 645, column: 12)
!3023 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 644, column: 6)
!3024 = !DILocation(line: 652, column: 24, scope: !2932)
!3025 = !DILocation(line: 709, column: 34, scope: !2897)
!3026 = !DILocation(line: 705, column: 9, scope: !2907)
!3027 = !DILocation(line: 642, column: 6, scope: !2905)
!3028 = !DILocation(line: 645, column: 26, scope: !3022)
!3029 = !DILocation(line: 645, column: 12, scope: !3023)
!3030 = !DILocation(line: 653, column: 5, scope: !2932)
!3031 = !DILocation(line: 653, column: 18, scope: !2932)
!3032 = !DILocation(line: 653, column: 11, scope: !2932)
!3033 = !DILocation(line: 653, column: 27, scope: !2932)
!3034 = !DILocation(line: 653, column: 45, scope: !2932)
!3035 = !DILocation(line: 653, column: 38, scope: !2932)
!3036 = !DILocation(line: 653, column: 35, scope: !2932)
!3037 = !DILocation(line: 652, column: 12, scope: !2933)
!3038 = !DILocation(line: 705, column: 22, scope: !2907)
!3039 = !DILocation(line: 705, column: 4, scope: !2907)
!3040 = !DILocation(line: 705, column: 26, scope: !2907)
!3041 = !DILocation(line: 623, column: 7, scope: !2908)
!3042 = !DILocation(line: 0, scope: !2907)
!3043 = !DILocation(line: 709, column: 7, scope: !2897)
!3044 = !DILocation(line: 709, column: 22, scope: !2897)
!3045 = !DILocation(line: 709, column: 26, scope: !2897)
!3046 = !DILocation(line: 713, column: 12, scope: !2897)
!3047 = !DILocation(line: 709, column: 48, scope: !2897)
!3048 = !DILocation(line: 709, column: 29, scope: !2897)
!3049 = !DILocation(line: 709, column: 54, scope: !2897)
!3050 = !DILocation(line: 709, column: 59, scope: !2897)
!3051 = distinct !{!3051, !3043, !3052}
!3052 = !DILocation(line: 710, column: 9, scope: !2897)
!3053 = !DILocation(line: 712, column: 12, scope: !2897)
!3054 = !DILocation(line: 712, column: 18, scope: !2897)
!3055 = !DILocation(line: 713, column: 7, scope: !2897)
!3056 = !DILocation(line: 713, column: 27, scope: !2897)
!3057 = !DILocation(line: 717, column: 26, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 717, column: 11)
!3059 = !DILocation(line: 717, column: 19, scope: !3058)
!3060 = !DILocation(line: 717, column: 16, scope: !3058)
!3061 = !DILocation(line: 717, column: 11, scope: !2897)
!3062 = !DILocation(line: 719, column: 40, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 718, column: 2)
!3064 = !DILocation(line: 719, column: 54, scope: !3063)
!3065 = !DILocation(line: 719, column: 35, scope: !3063)
!3066 = !DILocation(line: 719, column: 10, scope: !3063)
!3067 = !DILocation(line: 719, column: 14, scope: !3063)
!3068 = !DILocation(line: 720, column: 23, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 720, column: 8)
!3070 = !DILocation(line: 720, column: 16, scope: !3069)
!3071 = !DILocation(line: 720, column: 13, scope: !3069)
!3072 = !DILocation(line: 721, column: 9, scope: !3069)
!3073 = !DILocation(line: 720, column: 8, scope: !3063)
!3074 = !DILocation(line: 722, column: 2, scope: !3063)
!3075 = !DILocation(line: 724, column: 17, scope: !2882)
!3076 = !DILocation(line: 724, column: 41, scope: !2882)
!3077 = distinct !{!3077, !2935, !3078}
!3078 = !DILocation(line: 724, column: 66, scope: !2882)
!3079 = !DILocation(line: 726, column: 19, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 726, column: 7)
!3081 = !DILocation(line: 726, column: 7, scope: !2882)
!3082 = !DILocation(line: 732, column: 18, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 732, column: 11)
!3084 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 727, column: 5)
!3085 = !DILocation(line: 732, column: 27, scope: !3083)
!3086 = !DILocation(line: 732, column: 11, scope: !3083)
!3087 = !DILocation(line: 732, column: 32, scope: !3083)
!3088 = !DILocation(line: 732, column: 48, scope: !3083)
!3089 = !DILocation(line: 732, column: 35, scope: !3083)
!3090 = !DILocation(line: 732, column: 11, scope: !3084)
!3091 = !DILocation(line: 733, column: 2, scope: !3083)
!3092 = !DILocation(line: 736, column: 4, scope: !3084)
!3093 = !DILocation(line: 734, column: 7, scope: !3084)
!3094 = !DILocation(line: 737, column: 5, scope: !3084)
!3095 = !DILocation(line: 741, column: 16, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 741, column: 11)
!3097 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 739, column: 5)
!3098 = !DILocation(line: 741, column: 21, scope: !3096)
!3099 = !DILocation(line: 741, column: 38, scope: !3096)
!3100 = !DILocation(line: 741, column: 43, scope: !3096)
!3101 = !DILocation(line: 741, column: 54, scope: !3096)
!3102 = !DILocation(line: 741, column: 60, scope: !3096)
!3103 = !DILocation(line: 741, column: 11, scope: !3097)
!3104 = !DILocation(line: 743, column: 11, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 743, column: 11)
!3106 = !DILocation(line: 743, column: 11, scope: !3097)
!3107 = !DILocation(line: 752, column: 15, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 752, column: 8)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 744, column: 2)
!3110 = !DILocation(line: 752, column: 8, scope: !3108)
!3111 = !DILocation(line: 752, column: 24, scope: !3108)
!3112 = !DILocation(line: 752, column: 42, scope: !3108)
!3113 = !DILocation(line: 752, column: 35, scope: !3108)
!3114 = !DILocation(line: 752, column: 33, scope: !3108)
!3115 = !DILocation(line: 753, column: 7, scope: !3108)
!3116 = !DILocation(line: 753, column: 16, scope: !3108)
!3117 = !DILocation(line: 753, column: 21, scope: !3108)
!3118 = !DILocation(line: 753, column: 32, scope: !3108)
!3119 = !DILocation(line: 753, column: 38, scope: !3108)
!3120 = !DILocation(line: 754, column: 11, scope: !3108)
!3121 = !DILocation(line: 754, column: 15, scope: !3108)
!3122 = !DILocation(line: 752, column: 8, scope: !3109)
!3123 = !DILocation(line: 755, column: 11, scope: !3108)
!3124 = !DILocation(line: 755, column: 25, scope: !3108)
!3125 = !DILocation(line: 755, column: 30, scope: !3108)
!3126 = !DILocation(line: 755, column: 36, scope: !3108)
!3127 = !DILocation(line: 755, column: 6, scope: !3108)
!3128 = !DILocation(line: 761, column: 3, scope: !2882)
!3129 = !DILocation(line: 762, column: 3, scope: !2882)
!3130 = !DILocation(line: 763, column: 1, scope: !2882)
!3131 = distinct !DISubprogram(name: "stringify_arg", scope: !3, file: !3, line: 354, type: !3132, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!161, !231, !183}
!3134 = !{!3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3147, !3150, !3153}
!3135 = !DILocalVariable(name: "pfile", arg: 1, scope: !3131, file: !3, line: 354, type: !231)
!3136 = !DILocalVariable(name: "arg", arg: 2, scope: !3131, file: !3, line: 354, type: !183)
!3137 = !DILocalVariable(name: "dest", scope: !3131, file: !3, line: 356, type: !139)
!3138 = !DILocalVariable(name: "i", scope: !3131, file: !3, line: 357, type: !7)
!3139 = !DILocalVariable(name: "escape_it", scope: !3131, file: !3, line: 357, type: !7)
!3140 = !DILocalVariable(name: "backslash_count", scope: !3131, file: !3, line: 357, type: !7)
!3141 = !DILocalVariable(name: "source", scope: !3131, file: !3, line: 358, type: !161)
!3142 = !DILocalVariable(name: "len", scope: !3131, file: !3, line: 359, type: !54)
!3143 = !DILocalVariable(name: "token", scope: !3144, file: !3, line: 369, type: !161)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 368, column: 5)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 367, column: 3)
!3146 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 367, column: 3)
!3147 = !DILocalVariable(name: "len_so_far", scope: !3148, file: !3, line: 395, type: !54)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 394, column: 2)
!3149 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 393, column: 11)
!3150 = !DILocalVariable(name: "buff", scope: !3151, file: !3, line: 412, type: !172)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 411, column: 2)
!3152 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 410, column: 11)
!3153 = !DILocalVariable(name: "buf", scope: !3151, file: !3, line: 413, type: !139)
!3154 = !DILocation(line: 0, scope: !3131)
!3155 = !DILocation(line: 361, column: 7, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 361, column: 7)
!3157 = !DILocation(line: 361, column: 33, scope: !3156)
!3158 = !DILocation(line: 361, column: 7, scope: !3131)
!3159 = !DILocation(line: 362, column: 5, scope: !3156)
!3160 = !DILocation(line: 363, column: 10, scope: !3131)
!3161 = !DILocation(line: 364, column: 8, scope: !3131)
!3162 = !DILocation(line: 364, column: 11, scope: !3131)
!3163 = !DILocation(line: 0, scope: !3145)
!3164 = !DILocation(line: 0, scope: !3144)
!3165 = !DILocation(line: 367, column: 8, scope: !3146)
!3166 = !DILocation(line: 357, column: 30, scope: !3131)
!3167 = !DILocation(line: 367, column: 24, scope: !3145)
!3168 = !DILocation(line: 367, column: 17, scope: !3145)
!3169 = !DILocation(line: 367, column: 3, scope: !3146)
!3170 = !DILocation(line: 369, column: 37, scope: !3144)
!3171 = !DILocation(line: 369, column: 32, scope: !3144)
!3172 = !DILocation(line: 371, column: 18, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 371, column: 11)
!3174 = !DILocation(line: 371, column: 23, scope: !3173)
!3175 = !DILocation(line: 371, column: 11, scope: !3144)
!3176 = !DILocation(line: 373, column: 15, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 373, column: 8)
!3178 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 372, column: 2)
!3179 = !DILocation(line: 374, column: 8, scope: !3177)
!3180 = !DILocation(line: 0, scope: !3177)
!3181 = !DILocation(line: 376, column: 26, scope: !3177)
!3182 = !DILocation(line: 374, column: 22, scope: !3177)
!3183 = !DILocation(line: 374, column: 28, scope: !3177)
!3184 = !DILocation(line: 375, column: 5, scope: !3177)
!3185 = !DILocation(line: 375, column: 15, scope: !3177)
!3186 = !DILocation(line: 375, column: 19, scope: !3177)
!3187 = !DILocation(line: 375, column: 26, scope: !3177)
!3188 = !DILocation(line: 373, column: 8, scope: !3178)
!3189 = !DILocation(line: 376, column: 6, scope: !3177)
!3190 = !DILocation(line: 380, column: 32, scope: !3144)
!3191 = !DILocation(line: 380, column: 46, scope: !3144)
!3192 = !DILocation(line: 380, column: 61, scope: !3144)
!3193 = !DILocation(line: 381, column: 6, scope: !3144)
!3194 = !DILocation(line: 381, column: 21, scope: !3144)
!3195 = !DILocation(line: 381, column: 36, scope: !3144)
!3196 = !DILocation(line: 381, column: 51, scope: !3144)
!3197 = !DILocation(line: 382, column: 6, scope: !3144)
!3198 = !DILocation(line: 382, column: 21, scope: !3144)
!3199 = !DILocation(line: 382, column: 37, scope: !3144)
!3200 = !DILocation(line: 382, column: 52, scope: !3144)
!3201 = !DILocation(line: 383, column: 6, scope: !3144)
!3202 = !DILocation(line: 383, column: 21, scope: !3144)
!3203 = !DILocation(line: 383, column: 37, scope: !3144)
!3204 = !DILocation(line: 383, column: 52, scope: !3144)
!3205 = !DILocation(line: 384, column: 6, scope: !3144)
!3206 = !DILocation(line: 384, column: 21, scope: !3144)
!3207 = !DILocation(line: 388, column: 13, scope: !3144)
!3208 = !DILocation(line: 390, column: 6, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 389, column: 11)
!3210 = !DILocation(line: 389, column: 11, scope: !3144)
!3211 = !DILocation(line: 391, column: 11, scope: !3144)
!3212 = !DILocation(line: 393, column: 21, scope: !3149)
!3213 = !DILocation(line: 393, column: 48, scope: !3149)
!3214 = !DILocation(line: 393, column: 56, scope: !3149)
!3215 = !DILocation(line: 393, column: 11, scope: !3144)
!3216 = !DILocation(line: 0, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 401, column: 11)
!3218 = !DILocation(line: 401, column: 23, scope: !3217)
!3219 = !DILocation(line: 395, column: 31, scope: !3148)
!3220 = !DILocation(line: 395, column: 29, scope: !3148)
!3221 = !DILocation(line: 0, scope: !3148)
!3222 = !DILocation(line: 396, column: 4, scope: !3148)
!3223 = !DILocation(line: 397, column: 11, scope: !3148)
!3224 = !DILocation(line: 397, column: 38, scope: !3148)
!3225 = !DILocation(line: 398, column: 2, scope: !3148)
!3226 = !DILocation(line: 401, column: 16, scope: !3217)
!3227 = !DILocation(line: 401, column: 20, scope: !3217)
!3228 = !DILocation(line: 401, column: 11, scope: !3144)
!3229 = !DILocation(line: 403, column: 15, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 403, column: 8)
!3231 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 402, column: 2)
!3232 = !DILocation(line: 403, column: 8, scope: !3231)
!3233 = !DILocation(line: 405, column: 16, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 405, column: 8)
!3235 = !DILocation(line: 405, column: 22, scope: !3234)
!3236 = !DILocation(line: 405, column: 8, scope: !3231)
!3237 = !DILocation(line: 406, column: 11, scope: !3234)
!3238 = !DILocation(line: 406, column: 14, scope: !3234)
!3239 = !DILocation(line: 406, column: 6, scope: !3234)
!3240 = !DILocation(line: 410, column: 11, scope: !3144)
!3241 = !DILocation(line: 412, column: 22, scope: !3151)
!3242 = !DILocation(line: 0, scope: !3151)
!3243 = !DILocation(line: 413, column: 25, scope: !3151)
!3244 = !DILocation(line: 414, column: 10, scope: !3151)
!3245 = !DILocation(line: 414, column: 52, scope: !3151)
!3246 = !DILocation(line: 415, column: 40, scope: !3151)
!3247 = !DILocation(line: 415, column: 11, scope: !3151)
!3248 = !DILocation(line: 416, column: 4, scope: !3151)
!3249 = !DILocation(line: 417, column: 2, scope: !3151)
!3250 = !DILocation(line: 419, column: 9, scope: !3152)
!3251 = !DILocation(line: 0, scope: !3152)
!3252 = !DILocation(line: 421, column: 18, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 421, column: 11)
!3254 = !DILocation(line: 421, column: 23, scope: !3253)
!3255 = !DILocation(line: 421, column: 36, scope: !3253)
!3256 = !DILocation(line: 421, column: 54, scope: !3253)
!3257 = !DILocation(line: 421, column: 39, scope: !3253)
!3258 = !DILocation(line: 421, column: 62, scope: !3253)
!3259 = !DILocation(line: 422, column: 17, scope: !3253)
!3260 = !DILocation(line: 421, column: 11, scope: !3144)
!3261 = !DILocation(line: 367, column: 32, scope: !3145)
!3262 = !DILocation(line: 367, column: 3, scope: !3145)
!3263 = distinct !{!3263, !3169, !3264}
!3264 = !DILocation(line: 425, column: 5, scope: !3146)
!3265 = !DILocation(line: 428, column: 23, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 428, column: 7)
!3267 = !DILocation(line: 428, column: 7, scope: !3131)
!3268 = !DILocation(line: 430, column: 7, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 429, column: 5)
!3270 = !DILocation(line: 432, column: 11, scope: !3269)
!3271 = !DILocation(line: 433, column: 5, scope: !3269)
!3272 = !DILocation(line: 436, column: 8, scope: !3131)
!3273 = !DILocation(line: 436, column: 11, scope: !3131)
!3274 = !DILocation(line: 437, column: 16, scope: !3131)
!3275 = !DILocation(line: 437, column: 14, scope: !3131)
!3276 = !DILocation(line: 438, column: 37, scope: !3131)
!3277 = !DILocation(line: 438, column: 30, scope: !3131)
!3278 = !DILocation(line: 439, column: 40, scope: !3131)
!3279 = !DILocation(line: 439, column: 47, scope: !3131)
!3280 = !DILocation(line: 439, column: 10, scope: !3131)
!3281 = !DILocation(line: 439, column: 3, scope: !3131)
!3282 = distinct !DISubprogram(name: "expand_arg", scope: !3, file: !3, line: 1156, type: !3283, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3285)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{null, !231, !183}
!3285 = !{!3286, !3287, !3288, !3289, !3290}
!3286 = !DILocalVariable(name: "pfile", arg: 1, scope: !3282, file: !3, line: 1156, type: !231)
!3287 = !DILocalVariable(name: "arg", arg: 2, scope: !3282, file: !3, line: 1156, type: !183)
!3288 = !DILocalVariable(name: "capacity", scope: !3282, file: !3, line: 1158, type: !7)
!3289 = !DILocalVariable(name: "saved_warn_trad", scope: !3282, file: !3, line: 1159, type: !48)
!3290 = !DILocalVariable(name: "token", scope: !3291, file: !3, line: 1175, type: !161)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 1174, column: 5)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 1173, column: 3)
!3293 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 1173, column: 3)
!3294 = !DILocation(line: 0, scope: !3282)
!3295 = !DILocation(line: 1161, column: 12, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 1161, column: 7)
!3297 = !DILocation(line: 1161, column: 18, scope: !3296)
!3298 = !DILocation(line: 1161, column: 7, scope: !3282)
!3299 = !DILocation(line: 1165, column: 21, scope: !3282)
!3300 = !DILocation(line: 1166, column: 28, scope: !3282)
!3301 = !DILocation(line: 1170, column: 19, scope: !3282)
!3302 = !DILocation(line: 1170, column: 8, scope: !3282)
!3303 = !DILocation(line: 1170, column: 17, scope: !3282)
!3304 = !DILocation(line: 1172, column: 48, scope: !3282)
!3305 = !DILocation(line: 1172, column: 60, scope: !3282)
!3306 = !DILocation(line: 1172, column: 66, scope: !3282)
!3307 = !DILocation(line: 1172, column: 3, scope: !3282)
!3308 = !DILocation(line: 0, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 1177, column: 11)
!3310 = !DILocation(line: 1173, column: 3, scope: !3282)
!3311 = !DILocation(line: 1177, column: 16, scope: !3309)
!3312 = !DILocation(line: 1177, column: 31, scope: !3309)
!3313 = !DILocation(line: 1177, column: 35, scope: !3309)
!3314 = !DILocation(line: 1177, column: 11, scope: !3291)
!3315 = !DILocation(line: 1179, column: 13, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 1178, column: 2)
!3317 = !DILocation(line: 1180, column: 20, scope: !3316)
!3318 = !DILocation(line: 1180, column: 18, scope: !3316)
!3319 = !DILocation(line: 1182, column: 2, scope: !3316)
!3320 = !DILocation(line: 1184, column: 15, scope: !3291)
!3321 = !DILocation(line: 0, scope: !3291)
!3322 = !DILocation(line: 1186, column: 18, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3291, file: !3, line: 1186, column: 11)
!3324 = !DILocation(line: 1186, column: 23, scope: !3323)
!3325 = !DILocation(line: 1186, column: 11, scope: !3291)
!3326 = !DILocation(line: 1189, column: 12, scope: !3291)
!3327 = !DILocation(line: 1189, column: 40, scope: !3291)
!3328 = !DILocation(line: 1189, column: 7, scope: !3291)
!3329 = !DILocation(line: 1189, column: 44, scope: !3291)
!3330 = !DILocation(line: 1190, column: 5, scope: !3292)
!3331 = distinct !{!3331, !3332, !3333}
!3332 = !DILocation(line: 1173, column: 3, scope: !3293)
!3333 = !DILocation(line: 1190, column: 5, scope: !3293)
!3334 = !DILocation(line: 1192, column: 3, scope: !3282)
!3335 = !DILocation(line: 1194, column: 28, scope: !3282)
!3336 = !DILocation(line: 1195, column: 1, scope: !3282)
!3337 = distinct !DISubprogram(name: "new_string_token", scope: !3, file: !3, line: 97, type: !3338, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3340)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!161, !231, !139, !7}
!3340 = !{!3341, !3342, !3343, !3344}
!3341 = !DILocalVariable(name: "pfile", arg: 1, scope: !3337, file: !3, line: 97, type: !231)
!3342 = !DILocalVariable(name: "text", arg: 2, scope: !3337, file: !3, line: 97, type: !139)
!3343 = !DILocalVariable(name: "len", arg: 3, scope: !3337, file: !3, line: 97, type: !7)
!3344 = !DILocalVariable(name: "token", scope: !3337, file: !3, line: 99, type: !88)
!3345 = !DILocation(line: 0, scope: !3337)
!3346 = !DILocation(line: 99, column: 22, scope: !3337)
!3347 = !DILocation(line: 101, column: 3, scope: !3337)
!3348 = !DILocation(line: 101, column: 13, scope: !3337)
!3349 = !DILocation(line: 102, column: 10, scope: !3337)
!3350 = !DILocation(line: 102, column: 15, scope: !3337)
!3351 = !DILocation(line: 103, column: 18, scope: !3337)
!3352 = !DILocation(line: 103, column: 22, scope: !3337)
!3353 = !DILocation(line: 104, column: 18, scope: !3337)
!3354 = !DILocation(line: 104, column: 23, scope: !3337)
!3355 = !DILocation(line: 105, column: 10, scope: !3337)
!3356 = !DILocation(line: 105, column: 16, scope: !3337)
!3357 = !DILocation(line: 106, column: 3, scope: !3337)
!3358 = distinct !DISubprogram(name: "ustrlen", scope: !146, file: !146, line: 705, type: !3359, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!54, !46}
!3361 = !{!3362}
!3362 = !DILocalVariable(name: "s1", arg: 1, scope: !3358, file: !146, line: 705, type: !46)
!3363 = !DILocation(line: 0, scope: !3358)
!3364 = !DILocation(line: 707, column: 10, scope: !3358)
!3365 = !DILocation(line: 707, column: 3, scope: !3358)
!3366 = distinct !DISubprogram(name: "parse_params", scope: !3, file: !3, line: 1530, type: !1788, scopeLine: 1531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3367)
!3367 = !{!3368, !3369, !3370, !3371}
!3368 = !DILocalVariable(name: "pfile", arg: 1, scope: !3366, file: !3, line: 1530, type: !231)
!3369 = !DILocalVariable(name: "macro", arg: 2, scope: !3366, file: !3, line: 1530, type: !78)
!3370 = !DILocalVariable(name: "prev_ident", scope: !3366, file: !3, line: 1532, type: !7)
!3371 = !DILocalVariable(name: "token", scope: !3372, file: !3, line: 1536, type: !161)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 1535, column: 5)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 1534, column: 3)
!3374 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 1534, column: 3)
!3375 = !DILocation(line: 0, scope: !3366)
!3376 = !DILocation(line: 0, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 1539, column: 2)
!3378 = !DILocation(line: 0, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1592, column: 13)
!3380 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 1581, column: 8)
!3381 = !DILocation(line: 0, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1582, column: 6)
!3383 = !DILocation(line: 0, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 1586, column: 12)
!3385 = !DILocation(line: 0, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 1566, column: 8)
!3387 = !DILocation(line: 0, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 1543, column: 8)
!3389 = !DILocation(line: 1534, column: 3, scope: !3366)
!3390 = !DILocation(line: 1532, column: 16, scope: !3366)
!3391 = !DILocation(line: 1536, column: 32, scope: !3372)
!3392 = !DILocation(line: 0, scope: !3372)
!3393 = !DILocation(line: 1538, column: 22, scope: !3372)
!3394 = !DILocation(line: 1538, column: 7, scope: !3372)
!3395 = !DILocation(line: 1543, column: 20, scope: !3388)
!3396 = !DILocation(line: 1544, column: 8, scope: !3388)
!3397 = !DILocation(line: 1544, column: 13, scope: !3388)
!3398 = !DILocation(line: 1543, column: 8, scope: !3377)
!3399 = distinct !{!3399, !3400, !3401}
!3400 = !DILocation(line: 1534, column: 3, scope: !3374)
!3401 = !DILocation(line: 1607, column: 5, scope: !3374)
!3402 = !DILocation(line: 1549, column: 8, scope: !3377)
!3403 = !DILocation(line: 1547, column: 4, scope: !3377)
!3404 = !DILocation(line: 1550, column: 4, scope: !3377)
!3405 = !DILocation(line: 1553, column: 8, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 1553, column: 8)
!3407 = !DILocation(line: 1553, column: 8, scope: !3377)
!3408 = !DILocation(line: 1555, column: 8, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 1554, column: 6)
!3410 = !DILocation(line: 1557, column: 8, scope: !3409)
!3411 = !DILocation(line: 1561, column: 50, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 1561, column: 8)
!3413 = !DILocation(line: 1561, column: 59, scope: !3412)
!3414 = !DILocation(line: 1561, column: 8, scope: !3412)
!3415 = !DILocation(line: 1566, column: 8, scope: !3386)
!3416 = !DILocation(line: 1566, column: 19, scope: !3386)
!3417 = !DILocation(line: 1566, column: 29, scope: !3386)
!3418 = !DILocation(line: 1566, column: 36, scope: !3386)
!3419 = !DILocation(line: 1566, column: 8, scope: !3377)
!3420 = !DILocation(line: 1571, column: 9, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 1571, column: 8)
!3422 = !DILocation(line: 1571, column: 8, scope: !3377)
!3423 = !DILocation(line: 1573, column: 8, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 1572, column: 6)
!3425 = !DILocation(line: 1574, column: 8, scope: !3424)
!3426 = !DILocation(line: 1580, column: 20, scope: !3377)
!3427 = !DILocation(line: 1581, column: 9, scope: !3380)
!3428 = !DILocation(line: 1581, column: 8, scope: !3377)
!3429 = !DILocation(line: 1584, column: 26, scope: !3382)
!3430 = !DILocation(line: 1583, column: 8, scope: !3382)
!3431 = !DILocation(line: 1585, column: 32, scope: !3382)
!3432 = !DILocation(line: 1586, column: 14, scope: !3384)
!3433 = !DILocation(line: 1587, column: 5, scope: !3384)
!3434 = !DILocation(line: 1587, column: 8, scope: !3384)
!3435 = !DILocation(line: 1588, column: 5, scope: !3384)
!3436 = !DILocation(line: 1588, column: 8, scope: !3384)
!3437 = !DILocation(line: 1586, column: 12, scope: !3382)
!3438 = !DILocation(line: 1589, column: 3, scope: !3384)
!3439 = !DILocation(line: 1592, column: 13, scope: !3379)
!3440 = !DILocation(line: 1593, column: 6, scope: !3379)
!3441 = !DILocation(line: 1593, column: 9, scope: !3379)
!3442 = !DILocation(line: 1592, column: 13, scope: !3380)
!3443 = !DILocation(line: 1594, column: 6, scope: !3379)
!3444 = !DILocation(line: 1598, column: 12, scope: !3377)
!3445 = !DILocation(line: 1599, column: 15, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 1599, column: 8)
!3447 = !DILocation(line: 1599, column: 20, scope: !3446)
!3448 = !DILocation(line: 1599, column: 8, scope: !3377)
!3449 = !DILocation(line: 1604, column: 4, scope: !3377)
!3450 = !DILocation(line: 1605, column: 4, scope: !3377)
!3451 = !DILocation(line: 1608, column: 1, scope: !3366)
!3452 = distinct !DISubprogram(name: "lex_expansion_token", scope: !3, file: !3, line: 1623, type: !3453, scopeLine: 1624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!88, !231, !78}
!3455 = !{!3456, !3457, !3458, !3459}
!3456 = !DILocalVariable(name: "pfile", arg: 1, scope: !3452, file: !3, line: 1623, type: !231)
!3457 = !DILocalVariable(name: "macro", arg: 2, scope: !3452, file: !3, line: 1623, type: !78)
!3458 = !DILocalVariable(name: "token", scope: !3452, file: !3, line: 1625, type: !88)
!3459 = !DILocalVariable(name: "saved_cur_token", scope: !3452, file: !3, line: 1625, type: !88)
!3460 = !DILocation(line: 0, scope: !3452)
!3461 = !DILocation(line: 1627, column: 28, scope: !3452)
!3462 = !DILocation(line: 1628, column: 22, scope: !3452)
!3463 = !DILocation(line: 1628, column: 20, scope: !3452)
!3464 = !DILocation(line: 1629, column: 11, scope: !3452)
!3465 = !DILocation(line: 1630, column: 20, scope: !3452)
!3466 = !DILocation(line: 1633, column: 14, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 1633, column: 7)
!3468 = !DILocation(line: 1633, column: 19, scope: !3467)
!3469 = !DILocation(line: 1634, column: 7, scope: !3467)
!3470 = !DILocation(line: 1634, column: 18, scope: !3467)
!3471 = !DILocation(line: 1634, column: 27, scope: !3467)
!3472 = !DILocation(line: 1634, column: 33, scope: !3467)
!3473 = !DILocation(line: 1634, column: 39, scope: !3467)
!3474 = !DILocation(line: 1634, column: 57, scope: !3467)
!3475 = !DILocation(line: 1633, column: 7, scope: !3452)
!3476 = !DILocation(line: 1636, column: 19, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 1635, column: 5)
!3478 = !DILocation(line: 1637, column: 59, scope: !3477)
!3479 = !DILocation(line: 1637, column: 65, scope: !3477)
!3480 = !DILocation(line: 1637, column: 37, scope: !3477)
!3481 = !DILocation(line: 1637, column: 28, scope: !3477)
!3482 = !DILocation(line: 1637, column: 35, scope: !3477)
!3483 = !DILocation(line: 1638, column: 5, scope: !3477)
!3484 = !DILocation(line: 1639, column: 12, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 1639, column: 12)
!3486 = !DILocation(line: 1639, column: 37, scope: !3485)
!3487 = !DILocation(line: 1639, column: 47, scope: !3485)
!3488 = !DILocation(line: 1639, column: 54, scope: !3485)
!3489 = !DILocation(line: 1640, column: 5, scope: !3485)
!3490 = !DILocation(line: 1640, column: 21, scope: !3485)
!3491 = !DILocation(line: 1640, column: 35, scope: !3485)
!3492 = !DILocation(line: 1640, column: 50, scope: !3485)
!3493 = !DILocation(line: 1639, column: 12, scope: !3467)
!3494 = !DILocation(line: 1641, column: 59, scope: !3485)
!3495 = !DILocation(line: 1641, column: 5, scope: !3485)
!3496 = !DILocation(line: 1643, column: 3, scope: !3452)
!3497 = distinct !DISubprogram(name: "alloc_expansion_token", scope: !3, file: !3, line: 1612, type: !3453, scopeLine: 1613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3498)
!3498 = !{!3499, !3500}
!3499 = !DILocalVariable(name: "pfile", arg: 1, scope: !3497, file: !3, line: 1612, type: !231)
!3500 = !DILocalVariable(name: "macro", arg: 2, scope: !3497, file: !3, line: 1612, type: !78)
!3501 = !DILocation(line: 0, scope: !3497)
!3502 = !DILocation(line: 1614, column: 7, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1614, column: 7)
!3504 = !DILocation(line: 1614, column: 43, scope: !3503)
!3505 = !DILocation(line: 1614, column: 49, scope: !3503)
!3506 = !DILocation(line: 1614, column: 35, scope: !3503)
!3507 = !DILocation(line: 1614, column: 54, scope: !3503)
!3508 = !DILocation(line: 1614, column: 33, scope: !3503)
!3509 = !DILocation(line: 1614, column: 7, scope: !3497)
!3510 = !DILocation(line: 1615, column: 5, scope: !3503)
!3511 = !DILocation(line: 1617, column: 26, scope: !3497)
!3512 = !DILocation(line: 1617, column: 66, scope: !3497)
!3513 = !DILocation(line: 1617, column: 11, scope: !3497)
!3514 = !DILocation(line: 1617, column: 3, scope: !3497)
!3515 = distinct !DISubprogram(name: "check_trad_stringification", scope: !3, file: !3, line: 1936, type: !3516, scopeLine: 1938, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3518)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{null, !231, !2055, !484}
!3518 = !{!3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527}
!3519 = !DILocalVariable(name: "pfile", arg: 1, scope: !3515, file: !3, line: 1936, type: !231)
!3520 = !DILocalVariable(name: "macro", arg: 2, scope: !3515, file: !3, line: 1936, type: !2055)
!3521 = !DILocalVariable(name: "string", arg: 3, scope: !3515, file: !3, line: 1937, type: !484)
!3522 = !DILocalVariable(name: "i", scope: !3515, file: !3, line: 1939, type: !7)
!3523 = !DILocalVariable(name: "len", scope: !3515, file: !3, line: 1939, type: !7)
!3524 = !DILocalVariable(name: "p", scope: !3515, file: !3, line: 1940, type: !141)
!3525 = !DILocalVariable(name: "q", scope: !3515, file: !3, line: 1940, type: !141)
!3526 = !DILocalVariable(name: "limit", scope: !3515, file: !3, line: 1940, type: !141)
!3527 = !DILocalVariable(name: "node", scope: !3528, file: !3, line: 1961, type: !418)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 1960, column: 2)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 1959, column: 7)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 1959, column: 7)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 1945, column: 5)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 1944, column: 3)
!3533 = distinct !DILexicalBlock(scope: !3515, file: !3, line: 1944, column: 3)
!3534 = !DILocation(line: 0, scope: !3515)
!3535 = !DILocation(line: 1943, column: 19, scope: !3515)
!3536 = !DILocation(line: 1943, column: 34, scope: !3515)
!3537 = !DILocation(line: 1943, column: 24, scope: !3515)
!3538 = !DILocation(line: 1943, column: 38, scope: !3515)
!3539 = !DILocation(line: 1944, column: 25, scope: !3533)
!3540 = !DILocation(line: 0, scope: !3531)
!3541 = !DILocation(line: 0, scope: !3529)
!3542 = !DILocation(line: 0, scope: !3528)
!3543 = !DILocation(line: 1944, column: 8, scope: !3533)
!3544 = !DILocation(line: 0, scope: !3533)
!3545 = !DILocation(line: 1944, column: 32, scope: !3532)
!3546 = !DILocation(line: 1944, column: 3, scope: !3533)
!3547 = !DILocation(line: 1947, column: 7, scope: !3531)
!3548 = !DILocation(line: 1947, column: 16, scope: !3531)
!3549 = !DILocation(line: 1947, column: 24, scope: !3531)
!3550 = !DILocation(line: 1947, column: 28, scope: !3531)
!3551 = !DILocation(line: 1948, column: 3, scope: !3531)
!3552 = distinct !{!3552, !3547, !3551}
!3553 = !DILocation(line: 1952, column: 7, scope: !3531)
!3554 = !DILocation(line: 1952, column: 16, scope: !3531)
!3555 = !DILocation(line: 1952, column: 24, scope: !3531)
!3556 = !DILocation(line: 1952, column: 27, scope: !3531)
!3557 = !DILocation(line: 1953, column: 3, scope: !3531)
!3558 = distinct !{!3558, !3553, !3557}
!3559 = !DILocation(line: 1955, column: 15, scope: !3531)
!3560 = !DILocation(line: 1955, column: 13, scope: !3531)
!3561 = !DILocation(line: 0, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 1963, column: 8)
!3563 = !DILocation(line: 1959, column: 12, scope: !3530)
!3564 = !DILocation(line: 0, scope: !3530)
!3565 = !DILocation(line: 1959, column: 30, scope: !3529)
!3566 = !DILocation(line: 1959, column: 21, scope: !3529)
!3567 = !DILocation(line: 1959, column: 7, scope: !3530)
!3568 = !DILocation(line: 1961, column: 38, scope: !3528)
!3569 = !DILocation(line: 1961, column: 31, scope: !3528)
!3570 = !DILocation(line: 1963, column: 8, scope: !3562)
!3571 = !DILocation(line: 1963, column: 24, scope: !3562)
!3572 = !DILocation(line: 1964, column: 8, scope: !3562)
!3573 = !DILocation(line: 1964, column: 23, scope: !3562)
!3574 = !DILocation(line: 1964, column: 12, scope: !3562)
!3575 = !DILocation(line: 1963, column: 8, scope: !3528)
!3576 = !DILocation(line: 1966, column: 8, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3562, file: !3, line: 1965, column: 6)
!3578 = !DILocation(line: 1969, column: 8, scope: !3577)
!3579 = !DILocation(line: 1959, column: 39, scope: !3529)
!3580 = !DILocation(line: 1959, column: 7, scope: !3529)
!3581 = distinct !{!3581, !3567, !3582}
!3582 = !DILocation(line: 1971, column: 2, scope: !3530)
!3583 = !DILocation(line: 1944, column: 3, scope: !3532)
!3584 = distinct !{!3584, !3546, !3585}
!3585 = !DILocation(line: 1972, column: 5, scope: !3533)
!3586 = !DILocation(line: 1973, column: 1, scope: !3515)
