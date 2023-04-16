; ModuleID = 'cpp_traditional.bc'
source_filename = "cpp_traditional.c"
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
%struct.fun_macro = type { %struct._cpp_buff*, i64*, %struct.cpp_hashnode*, i64, i32, i32 }

@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@.str = private unnamed_addr constant [47 x i8] c"unterminated argument list invoking macro \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"detected recursion whilst expanding macro \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"syntax error in macro parameter list\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !158 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !164, metadata !DIExpression()), !dbg !165
  %__c.off = add i32 %__c, 128, !dbg !166
  %0 = icmp ult i32 %__c.off, 384, !dbg !166
  br i1 %0, label %cond.true, label %cond.end, !dbg !166

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #7, !dbg !167
  %1 = load i32*, i32** %call, align 8, !dbg !168
  %idxprom = sext i32 %__c to i64, !dbg !169
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !169
  %2 = load i32, i32* %arrayidx, align 4, !dbg !169
  br label %cond.end, !dbg !170

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !170
  ret i32 %cond, !dbg !171
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !172 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !174, metadata !DIExpression()), !dbg !175
  %__c.off = add i32 %__c, 128, !dbg !176
  %0 = icmp ult i32 %__c.off, 384, !dbg !176
  br i1 %0, label %cond.true, label %cond.end, !dbg !176

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #7, !dbg !177
  %1 = load i32*, i32** %call, align 8, !dbg !178
  %idxprom = sext i32 %__c to i64, !dbg !179
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !179
  %2 = load i32, i32* %arrayidx, align 4, !dbg !179
  br label %cond.end, !dbg !180

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !180
  ret i32 %cond, !dbg !181
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_overlay_buffer(%struct.cpp_reader* %pfile, i8* %start, i64 %len) local_unnamed_addr #2 !dbg !182 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !668, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i8* %start, metadata !669, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i64 %len, metadata !670, metadata !DIExpression()), !dbg !672
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !673
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !673
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %0, metadata !671, metadata !DIExpression()), !dbg !672
  %overlaid_buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 1, !dbg !674
  store %struct.cpp_buffer* %0, %struct.cpp_buffer** %overlaid_buffer, align 8, !dbg !675
  %1 = bitcast %struct.cpp_buffer* %0 to i64*, !dbg !676
  %2 = load i64, i64* %1, align 8, !dbg !676
  %saved_cur = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 57, !dbg !677
  %3 = bitcast i8** %saved_cur to i64*, !dbg !678
  store i64 %2, i64* %3, align 8, !dbg !678
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 4, !dbg !679
  %4 = bitcast i8** %rlimit to i64*, !dbg !679
  %5 = load i64, i64* %4, align 8, !dbg !679
  %saved_rlimit = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 58, !dbg !680
  %6 = bitcast i8** %saved_rlimit to i64*, !dbg !681
  store i64 %5, i64* %6, align 8, !dbg !681
  %next_line = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 2, !dbg !682
  %7 = bitcast i8** %next_line to i64*, !dbg !682
  %8 = load i64, i64* %7, align 8, !dbg !682
  %saved_line_base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 59, !dbg !683
  %9 = bitcast i8** %saved_line_base to i64*, !dbg !684
  store i64 %8, i64* %9, align 8, !dbg !684
  %need_line = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 13, !dbg !685
  store i8 0, i8* %need_line, align 8, !dbg !686
  %cur2 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 0, !dbg !687
  store i8* %start, i8** %cur2, align 8, !dbg !688
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 1, !dbg !689
  store i8* %start, i8** %line_base, align 8, !dbg !690
  %add.ptr = getelementptr inbounds i8, i8* %start, i64 %len, !dbg !691
  store i8* %add.ptr, i8** %rlimit, align 8, !dbg !692
  ret void, !dbg !693
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_remove_overlay(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !694 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !696, metadata !DIExpression()), !dbg !698
  %overlaid_buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 1, !dbg !699
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %overlaid_buffer, align 8, !dbg !699
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %0, metadata !697, metadata !DIExpression()), !dbg !698
  %saved_cur = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 57, !dbg !700
  %1 = bitcast i8** %saved_cur to i64*, !dbg !700
  %2 = load i64, i64* %1, align 8, !dbg !700
  %3 = bitcast %struct.cpp_buffer* %0 to i64*, !dbg !701
  store i64 %2, i64* %3, align 8, !dbg !701
  %saved_rlimit = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 58, !dbg !702
  %4 = bitcast i8** %saved_rlimit to i64*, !dbg !702
  %5 = load i64, i64* %4, align 8, !dbg !702
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 4, !dbg !703
  %6 = bitcast i8** %rlimit to i64*, !dbg !704
  store i64 %5, i64* %6, align 8, !dbg !704
  %saved_line_base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 59, !dbg !705
  %7 = bitcast i8** %saved_line_base to i64*, !dbg !705
  %8 = load i64, i64* %7, align 8, !dbg !705
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 1, !dbg !706
  %9 = bitcast i8** %line_base to i64*, !dbg !707
  store i64 %8, i64* %9, align 8, !dbg !707
  %need_line = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 13, !dbg !708
  store i8 1, i8* %need_line, align 8, !dbg !709
  store %struct.cpp_buffer* null, %struct.cpp_buffer** %overlaid_buffer, align 8, !dbg !710
  ret void, !dbg !711
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_read_logical_line_trad(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !712 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !716, metadata !DIExpression()), !dbg !717
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !718
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !717
  br label %do.body, !dbg !721

do.body:                                          ; preds = %do.body.backedge, %entry
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !722
  %need_line = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 13, !dbg !723
  %1 = load i8, i8* %need_line, align 8, !dbg !723
  %tobool = icmp eq i8 %1, 0, !dbg !724
  br i1 %tobool, label %do.cond, label %land.lhs.true, !dbg !725

land.lhs.true:                                    ; preds = %do.body
  %call = tail call zeroext i8 @_cpp_get_fresh_line(%struct.cpp_reader* %pfile) #7, !dbg !726
  %tobool1 = icmp eq i8 %call, 0, !dbg !726
  br i1 %tobool1, label %return.loopexit, label %do.cond, !dbg !727

do.cond:                                          ; preds = %land.lhs.true, %do.body
  %call2 = tail call zeroext i8 @_cpp_scan_out_logical_line(%struct.cpp_reader* %pfile, %struct.cpp_macro* null) #8, !dbg !728
  %tobool3 = icmp eq i8 %call2, 0, !dbg !728
  br i1 %tobool3, label %do.body.backedge, label %lor.rhs, !dbg !729

do.body.backedge:                                 ; preds = %do.cond, %lor.rhs
  br label %do.body, !dbg !722, !llvm.loop !730

lor.rhs:                                          ; preds = %do.cond
  %2 = load i8, i8* %skipping, align 2, !dbg !732
  %tobool5 = icmp eq i8 %2, 0, !dbg !729
  br i1 %tobool5, label %do.end, label %do.body.backedge, !dbg !733

do.end:                                           ; preds = %lor.rhs
  %3 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !734
  %cmp = icmp ne %struct.cpp_buffer* %3, null, !dbg !735
  %conv8 = zext i1 %cmp to i8, !dbg !736
  br label %return, !dbg !737

return.loopexit:                                  ; preds = %land.lhs.true
  br label %return, !dbg !738

return:                                           ; preds = %return.loopexit, %do.end
  %retval.0 = phi i8 [ %conv8, %do.end ], [ 0, %return.loopexit ], !dbg !717
  ret i8 %retval.0, !dbg !738
}

declare dso_local zeroext i8 @_cpp_get_fresh_line(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_scan_out_logical_line(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) local_unnamed_addr #2 !dbg !739 {
entry:
  %fmacro = alloca %struct.fun_macro, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !743, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !744, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 1, metadata !745, metadata !DIExpression()), !dbg !795
  %0 = bitcast %struct.fun_macro* %fmacro to i8*, !dbg !796
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #9, !dbg !796
  call void @llvm.dbg.value(metadata i32 0, metadata !759, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 0, metadata !761, metadata !DIExpression()), !dbg !795
  %buff = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %fmacro, i64 0, i32 0, !dbg !797
  store %struct._cpp_buff* null, %struct._cpp_buff** %buff, align 8, !dbg !798
  %args = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %fmacro, i64 0, i32 1, !dbg !799
  store i64* null, i64** %args, align 8, !dbg !800
  %node = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %fmacro, i64 0, i32 2, !dbg !801
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %node, align 8, !dbg !802
  %offset = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %fmacro, i64 0, i32 3, !dbg !803
  store i64 0, i64* %offset, align 8, !dbg !804
  %line = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %fmacro, i64 0, i32 4, !dbg !805
  store i32 0, i32* %line, align 8, !dbg !806
  %argc = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %fmacro, i64 0, i32 5, !dbg !807
  store i32 0, i32* %argc, align 4, !dbg !808
  call void @llvm.dbg.value(metadata i32 0, metadata !760, metadata !DIExpression()), !dbg !795
  %angled_headers = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 3, !dbg !809
  %1 = load i8, i8* %angled_headers, align 1, !dbg !809
  call void @llvm.dbg.value(metadata i8 %1, metadata !762, metadata !DIExpression()), !dbg !795
  %2 = bitcast %struct.cpp_reader* %pfile to i64**, !dbg !810
  %3 = load i64*, i64** %2, align 8, !dbg !810
  %4 = load i64, i64* %3, align 8, !dbg !811
  %context2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !812
  %5 = load %struct.cpp_context*, %struct.cpp_context** %context2, align 8, !dbg !812
  %u = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %5, i64 0, i32 2, !dbg !812
  %6 = bitcast %union.anon* %u to i64*, !dbg !813
  store i64 %4, i64* %6, align 8, !dbg !813
  %buffer4 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !814
  %7 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer4, align 8, !dbg !814
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %7, i64 0, i32 4, !dbg !815
  %8 = bitcast i8** %rlimit to i64*, !dbg !815
  %9 = load i64, i64* %8, align 8, !dbg !815
  %10 = load %struct.cpp_context*, %struct.cpp_context** %context2, align 8, !dbg !816
  %rlimit8 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %10, i64 0, i32 2, i32 0, i32 1, !dbg !816
  %11 = bitcast %union.utoken* %rlimit8 to i64*, !dbg !817
  store i64 %9, i64* %11, align 8, !dbg !817
  %base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 0, !dbg !818
  %12 = bitcast i8** %base to i64*, !dbg !818
  %13 = load i64, i64* %12, align 8, !dbg !818
  %cur11 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 2, !dbg !819
  %14 = bitcast i8** %cur11 to i64*, !dbg !820
  store i64 %13, i64* %14, align 8, !dbg !820
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !821
  %15 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !821
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %15, i64 0, i32 8, !dbg !822
  %16 = load i32, i32* %highest_line, align 4, !dbg !822
  %first_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 3, !dbg !823
  store i32 %16, i32* %first_line, align 8, !dbg !824
  %17 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer4, align 8, !dbg !825
  %cur14 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %17, i64 0, i32 0, !dbg !826
  %18 = load i8*, i8** %cur14, align 8, !dbg !826
  call void @llvm.dbg.value(metadata i8* %18, metadata !763, metadata !DIExpression()), !dbg !795
  %cmp114 = icmp ne %struct.cpp_macro* %macro, null, !dbg !827
  %conv115 = zext i1 %cmp114 to i32, !dbg !827
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !830
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !832
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !833
  %tobool176 = icmp eq %struct.cpp_macro* %macro, null, !dbg !835
  %in_expression = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 4, !dbg !837
  %n_defined = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 54, i32 0, !dbg !837
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 28, !dbg !840
  %lang = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 1, !dbg !842
  %dollars_in_ident = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 24, !dbg !844
  br label %new_context, !dbg !846

new_context.loopexit.loopexit:                    ; preds = %cleanup
  %quote.1.ph.lcssa661 = phi i32 [ %quote.1.ph, %cleanup ]
  %paren_depth.1.ph.lcssa652 = phi i32 [ %paren_depth.1.ph, %cleanup ]
  %header_ok.1.ph.lcssa641 = phi i8 [ %header_ok.1.ph, %cleanup ]
  %result.1.ph16.ph.lcssa619 = phi i8 [ %result.1.ph16.ph, %cleanup ]
  %lex_state.2.lcssa524 = phi i32 [ %lex_state.2, %cleanup ], !dbg !795
  call void @llvm.dbg.value(metadata i32 %lex_state.2.lcssa524, metadata !761, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %lex_state.2.lcssa524, metadata !761, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %lex_state.2.lcssa524, metadata !761, metadata !DIExpression()), !dbg !795
  br label %new_context.loopexit, !dbg !847

new_context.loopexit.loopexit20:                  ; preds = %cleanup312
  %quote.1.ph.lcssa659 = phi i32 [ %quote.1.ph, %cleanup312 ]
  %header_ok.1.ph.lcssa639 = phi i8 [ %header_ok.1.ph, %cleanup312 ]
  %result.1.ph16.ph625.lcssa = phi i8 [ %result.1.ph16.ph625, %cleanup312 ]
  br label %new_context.loopexit, !dbg !847

new_context.loopexit:                             ; preds = %new_context.loopexit.loopexit20, %new_context.loopexit.loopexit
  %quote.1.ph665 = phi i32 [ %quote.1.ph.lcssa661, %new_context.loopexit.loopexit ], [ %quote.1.ph.lcssa659, %new_context.loopexit.loopexit20 ]
  %header_ok.1.ph645 = phi i8 [ %header_ok.1.ph.lcssa641, %new_context.loopexit.loopexit ], [ %header_ok.1.ph.lcssa639, %new_context.loopexit.loopexit20 ]
  %result.1.ph16.ph624 = phi i8 [ %result.1.ph16.ph.lcssa619, %new_context.loopexit.loopexit ], [ %result.1.ph16.ph625.lcssa, %new_context.loopexit.loopexit20 ]
  %paren_depth.0.ph = phi i32 [ %paren_depth.1.ph.lcssa652, %new_context.loopexit.loopexit ], [ 0, %new_context.loopexit.loopexit20 ]
  %lex_state.0.ph = phi i32 [ %lex_state.2.lcssa524, %new_context.loopexit.loopexit ], [ 0, %new_context.loopexit.loopexit20 ]
  br label %new_context.backedge, !dbg !847

new_context:                                      ; preds = %new_context.backedge, %entry
  %quote.0 = phi i32 [ 0, %entry ], [ %quote.1.ph664, %new_context.backedge ], !dbg !848
  %paren_depth.0 = phi i32 [ 0, %entry ], [ %paren_depth.0.be, %new_context.backedge ], !dbg !795
  %lex_state.0 = phi i32 [ 0, %entry ], [ %lex_state.0.be, %new_context.backedge ], !dbg !795
  %header_ok.0 = phi i8 [ %1, %entry ], [ %header_ok.1.ph644, %new_context.backedge ], !dbg !849
  %result.0 = phi i8 [ 1, %entry ], [ %result.1.ph16.ph623, %new_context.backedge ], !dbg !850
  call void @llvm.dbg.value(metadata i8 %result.0, metadata !745, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 %header_ok.0, metadata !762, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %lex_state.0, metadata !761, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %paren_depth.0, metadata !759, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %quote.0, metadata !760, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.label(metadata !793), !dbg !851
  %19 = load %struct.cpp_context*, %struct.cpp_context** %context2, align 8, !dbg !852
  call void @llvm.dbg.value(metadata %struct.cpp_context* %19, metadata !746, metadata !DIExpression()), !dbg !795
  %u16 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %19, i64 0, i32 2, !dbg !853
  %cur18 = bitcast %union.anon* %u16 to i8**, !dbg !853
  %20 = load i8*, i8** %cur18, align 8, !dbg !853
  call void @llvm.dbg.value(metadata i8* %20, metadata !747, metadata !DIExpression()), !dbg !795
  %rlimit21 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %19, i64 0, i32 2, i32 0, i32 1, !dbg !854
  %21 = bitcast %union.utoken* %rlimit21 to i64*, !dbg !854
  %22 = load i64, i64* %21, align 8, !dbg !854
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64, !dbg !855
  %sub.ptr.sub = sub i64 %22, %sub.ptr.rhs.cast, !dbg !855
  call fastcc void @check_output_buffer(%struct.cpp_reader* %pfile, i64 %sub.ptr.sub) #8, !dbg !856
  %23 = load i8*, i8** %cur11, align 8, !dbg !857
  call void @llvm.dbg.value(metadata i8* %23, metadata !748, metadata !DIExpression()), !dbg !795
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %19, i64 0, i32 1, !dbg !858
  br label %for.cond.outer, !dbg !847

for.cond.outer:                                   ; preds = %for.cond.outer.backedge, %new_context
  %quote.1.ph = phi i32 [ %quote.0, %new_context ], [ %quote.6, %for.cond.outer.backedge ]
  %paren_depth.1.ph = phi i32 [ %paren_depth.0, %new_context ], [ %paren_depth.6, %for.cond.outer.backedge ]
  %lex_state.1.ph = phi i32 [ %lex_state.0, %new_context ], [ %lex_state.1.ph.be, %for.cond.outer.backedge ]
  %out.0.ph = phi i8* [ %23, %new_context ], [ %out.10, %for.cond.outer.backedge ]
  %cur.0.ph = phi i8* [ %20, %new_context ], [ %cur.4, %for.cond.outer.backedge ]
  %header_ok.1.ph = phi i8 [ %header_ok.0, %new_context ], [ 0, %for.cond.outer.backedge ]
  %result.1.ph = phi i8 [ %result.0, %new_context ], [ %result.4, %for.cond.outer.backedge ]
  %tobool106 = icmp eq i32 %quote.1.ph, 0, !dbg !860
  %or.cond = or i1 %tobool106, %cmp114, !dbg !832
  br label %for.cond.outer11.outer, !dbg !861

for.cond.outer11.outer:                           ; preds = %if.end425, %for.cond.outer
  %lex_state.1.ph12.ph = phi i32 [ 5, %if.end425 ], [ %lex_state.1.ph, %for.cond.outer ]
  %out.0.ph13.ph = phi i8* [ %out.9, %if.end425 ], [ %out.0.ph, %for.cond.outer ]
  %cur.0.ph14.ph = phi i8* [ %cur.3, %if.end425 ], [ %cur.0.ph, %for.cond.outer ]
  %result.1.ph16.ph = phi i8 [ %result.3, %if.end425 ], [ %result.1.ph, %for.cond.outer ]
  br label %for.cond.outer11, !dbg !861

for.cond.outer11:                                 ; preds = %for.cond.outer11.outer, %cleanup
  %lex_state.1.ph12 = phi i32 [ %lex_state.2, %cleanup ], [ %lex_state.1.ph12.ph, %for.cond.outer11.outer ]
  %out.0.ph13 = phi i8* [ %out.4, %cleanup ], [ %out.0.ph13.ph, %for.cond.outer11.outer ]
  %cur.0.ph14 = phi i8* [ %65, %cleanup ], [ %cur.0.ph14.ph, %for.cond.outer11.outer ]
  %lex_state.1.off = add i32 %lex_state.1.ph12, -1, !dbg !830
  %switch8 = icmp ult i32 %lex_state.1.off, 2, !dbg !830
  %cmp64 = icmp eq i32 %lex_state.1.ph12, 2, !dbg !862
  br i1 %tobool106, label %for.cond.outer11.split.us, label %for.cond.outer11.for.cond.outer11.split_crit_edge, !dbg !861

for.cond.outer11.for.cond.outer11.split_crit_edge: ; preds = %for.cond.outer11
  br label %for.cond, !dbg !861

for.cond.outer11.split.us:                        ; preds = %for.cond.outer11
  br label %for.cond.us, !dbg !861

for.cond.us:                                      ; preds = %for.cond.backedge.us, %for.cond.outer11.split.us
  %out.0.us = phi i8* [ %out.0.ph13, %for.cond.outer11.split.us ], [ %out.0.be.us, %for.cond.backedge.us ], !dbg !795
  %cur.0.us = phi i8* [ %cur.0.ph14, %for.cond.outer11.split.us ], [ %cur.0.be.us, %for.cond.backedge.us ], !dbg !795
  call void @llvm.dbg.value(metadata i8 %result.1.ph16.ph, metadata !745, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 %header_ok.1.ph, metadata !762, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %lex_state.1.ph12, metadata !761, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %paren_depth.1.ph, metadata !759, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %quote.1.ph, metadata !760, metadata !DIExpression()), !dbg !795
  %24 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8, !dbg !865
  %tobool.us = icmp eq %struct.cpp_context* %24, null, !dbg !866
  br i1 %tobool.us, label %land.lhs.true.us, label %if.end.us, !dbg !861

land.lhs.true.us:                                 ; preds = %for.cond.us
  %25 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer4, align 8, !dbg !867
  %notes.us = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %25, i64 0, i32 5, !dbg !868
  %26 = load %struct._cpp_line_note*, %struct._cpp_line_note** %notes.us, align 8, !dbg !868
  %cur_note.us = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %25, i64 0, i32 6, !dbg !869
  %27 = load i32, i32* %cur_note.us, align 8, !dbg !869
  %idxprom.us = zext i32 %27 to i64, !dbg !870
  %pos.us = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %26, i64 %idxprom.us, i32 0, !dbg !871
  %28 = load i8*, i8** %pos.us, align 8, !dbg !871
  %cmp.us = icmp ult i8* %cur.0.us, %28, !dbg !872
  br i1 %cmp.us, label %if.end.us, label %if.then.us, !dbg !873

if.then.us:                                       ; preds = %land.lhs.true.us
  %cur27.us = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %25, i64 0, i32 0, !dbg !874
  store i8* %cur.0.us, i8** %cur27.us, align 8, !dbg !876
  call void @_cpp_process_line_notes(%struct.cpp_reader* %pfile, i32 0) #7, !dbg !877
  br label %if.end.us, !dbg !878

if.end.us:                                        ; preds = %if.then.us, %land.lhs.true.us, %for.cond.us
  %incdec.ptr.us = getelementptr inbounds i8, i8* %cur.0.us, i64 1, !dbg !879
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.us, metadata !747, metadata !DIExpression()), !dbg !795
  %29 = load i8, i8* %cur.0.us, align 1, !dbg !880
  %incdec.ptr29.us = getelementptr inbounds i8, i8* %out.0.us, i64 1, !dbg !881
  call void @llvm.dbg.value(metadata i8* %incdec.ptr29.us, metadata !748, metadata !DIExpression()), !dbg !795
  store i8 %29, i8* %out.0.us, align 1, !dbg !882
  switch i8 %29, label %sw.epilog.loopexit.loopexit.us-lcssa.us [
    i8 32, label %sw.bb.us
    i8 9, label %sw.bb.us
    i8 12, label %sw.bb.us
    i8 11, label %sw.bb.us
    i8 0, label %sw.bb.us
    i8 10, label %sw.bb30.us
    i8 60, label %sw.bb72.us-lcssa.us
    i8 62, label %sw.bb76.us-lcssa.us
    i8 34, label %sw.bb81.us-lcssa.us
    i8 39, label %sw.bb81.us-lcssa.us
    i8 92, label %sw.bb89.us-lcssa.us
    i8 47, label %sw.bb105.us
    i8 95, label %sw.bb120.us-lcssa.us
    i8 97, label %sw.bb120.us-lcssa.us
    i8 98, label %sw.bb120.us-lcssa.us
    i8 99, label %sw.bb120.us-lcssa.us
    i8 100, label %sw.bb120.us-lcssa.us
    i8 101, label %sw.bb120.us-lcssa.us
    i8 102, label %sw.bb120.us-lcssa.us
    i8 103, label %sw.bb120.us-lcssa.us
    i8 104, label %sw.bb120.us-lcssa.us
    i8 105, label %sw.bb120.us-lcssa.us
    i8 106, label %sw.bb120.us-lcssa.us
    i8 107, label %sw.bb120.us-lcssa.us
    i8 108, label %sw.bb120.us-lcssa.us
    i8 109, label %sw.bb120.us-lcssa.us
    i8 110, label %sw.bb120.us-lcssa.us
    i8 111, label %sw.bb120.us-lcssa.us
    i8 112, label %sw.bb120.us-lcssa.us
    i8 113, label %sw.bb120.us-lcssa.us
    i8 114, label %sw.bb120.us-lcssa.us
    i8 115, label %sw.bb120.us-lcssa.us
    i8 116, label %sw.bb120.us-lcssa.us
    i8 117, label %sw.bb120.us-lcssa.us
    i8 118, label %sw.bb120.us-lcssa.us
    i8 119, label %sw.bb120.us-lcssa.us
    i8 120, label %sw.bb120.us-lcssa.us
    i8 121, label %sw.bb120.us-lcssa.us
    i8 122, label %sw.bb120.us-lcssa.us
    i8 65, label %sw.bb120.us-lcssa.us
    i8 66, label %sw.bb120.us-lcssa.us
    i8 67, label %sw.bb120.us-lcssa.us
    i8 68, label %sw.bb120.us-lcssa.us
    i8 69, label %sw.bb120.us-lcssa.us
    i8 70, label %sw.bb120.us-lcssa.us
    i8 71, label %sw.bb120.us-lcssa.us
    i8 72, label %sw.bb120.us-lcssa.us
    i8 73, label %sw.bb120.us-lcssa.us
    i8 74, label %sw.bb120.us-lcssa.us
    i8 75, label %sw.bb120.us-lcssa.us
    i8 76, label %sw.bb120.us-lcssa.us
    i8 77, label %sw.bb120.us-lcssa.us
    i8 78, label %sw.bb120.us-lcssa.us
    i8 79, label %sw.bb120.us-lcssa.us
    i8 80, label %sw.bb120.us-lcssa.us
    i8 81, label %sw.bb120.us-lcssa.us
    i8 82, label %sw.bb120.us-lcssa.us
    i8 83, label %sw.bb120.us-lcssa.us
    i8 84, label %sw.bb120.us-lcssa.us
    i8 85, label %sw.bb120.us-lcssa.us
    i8 86, label %sw.bb120.us-lcssa.us
    i8 87, label %sw.bb120.us-lcssa.us
    i8 88, label %sw.bb120.us-lcssa.us
    i8 89, label %sw.bb120.us-lcssa.us
    i8 90, label %sw.bb120.us-lcssa.us
    i8 40, label %sw.bb210.us-lcssa.us
    i8 44, label %sw.bb242.us-lcssa.us
    i8 41, label %sw.bb258.us-lcssa.us
    i8 35, label %sw.bb325.us-lcssa.us
  ], !dbg !883

sw.bb105.us:                                      ; preds = %if.end.us
  %30 = load i8, i8* %incdec.ptr.us, align 1, !dbg !884
  %cmp109.us = icmp eq i8 %30, 42, !dbg !885
  br i1 %cmp109.us, label %if.then111.us, label %sw.epilog.loopexit.loopexit.us-lcssa.us, !dbg !886

if.then111.us:                                    ; preds = %sw.bb105.us
  store i8* %incdec.ptr29.us, i8** %cur11, align 8, !dbg !887
  %call116.us = call fastcc i8* @copy_comment(%struct.cpp_reader* %pfile, i8* nonnull %incdec.ptr.us, i32 %conv115) #8, !dbg !888
  call void @llvm.dbg.value(metadata i8* %call116.us, metadata !747, metadata !DIExpression()), !dbg !795
  %31 = load i8*, i8** %cur11, align 8, !dbg !889
  call void @llvm.dbg.value(metadata i8* %31, metadata !748, metadata !DIExpression()), !dbg !795
  br label %for.cond.backedge.us, !dbg !890

sw.bb30.us:                                       ; preds = %if.end.us
  %32 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8, !dbg !891
  %tobool32.us = icmp eq %struct.cpp_context* %32, null, !dbg !893
  store i8* %out.0.us, i8** %cur11, align 8, !dbg !894
  br i1 %tobool32.us, label %if.end36.us, label %if.then33.us-lcssa.us, !dbg !895

if.end36.us:                                      ; preds = %sw.bb30.us
  %33 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer4, align 8, !dbg !896
  %cur41.us = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %33, i64 0, i32 0, !dbg !897
  store i8* %incdec.ptr.us, i8** %cur41.us, align 8, !dbg !898
  %34 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer4, align 8, !dbg !899
  %need_line.us = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %34, i64 0, i32 13, !dbg !900
  store i8 1, i8* %need_line.us, align 8, !dbg !901
  %35 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !902
  call void @llvm.dbg.value(metadata %struct.line_maps* %35, metadata !764, metadata !DIExpression()), !dbg !903
  %maps.us = getelementptr inbounds %struct.line_maps, %struct.line_maps* %35, i64 0, i32 0, !dbg !902
  %36 = load %struct.line_map*, %struct.line_map** %maps.us, align 8, !dbg !902
  %used.us = getelementptr inbounds %struct.line_maps, %struct.line_maps* %35, i64 0, i32 2, !dbg !902
  %37 = load i32, i32* %used.us, align 4, !dbg !902
  %sub.us = add i32 %37, -1, !dbg !902
  %idxprom45.us = zext i32 %sub.us to i64, !dbg !902
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !772, metadata !DIExpression()), !dbg !903
  %highest_line48.us = getelementptr inbounds %struct.line_maps, %struct.line_maps* %35, i64 0, i32 8, !dbg !902
  %38 = load i32, i32* %highest_line48.us, align 4, !dbg !902
  %start_location.us = getelementptr inbounds %struct.line_map, %struct.line_map* %36, i64 %idxprom45.us, i32 2, !dbg !902
  %39 = load i32, i32* %start_location.us, align 4, !dbg !902
  %sub49.us = sub i32 %38, %39, !dbg !902
  %column_bits.us = getelementptr inbounds %struct.line_map, %struct.line_map* %36, i64 %idxprom45.us, i32 6, !dbg !902
  %bf.load.us = load i8, i8* %column_bits.us, align 2, !dbg !902
  %bf.cast.us = zext i8 %bf.load.us to i32, !dbg !902
  %shr.us = lshr i32 %sub49.us, %bf.cast.us, !dbg !902
  %to_line.us = getelementptr inbounds %struct.line_map, %struct.line_map* %36, i64 %idxprom45.us, i32 1, !dbg !902
  %40 = load i32, i32* %to_line.us, align 8, !dbg !902
  %add.us = add i32 %shr.us, %40, !dbg !902
  call void @llvm.dbg.value(metadata i32 %add.us, metadata !773, metadata !DIExpression()), !dbg !903
  %add51.us = add i32 %add.us, 1, !dbg !902
  %call.us = call i32 @linemap_line_start(%struct.line_maps* %35, i32 %add51.us, i32 0) #7, !dbg !902
  br i1 %switch8, label %land.lhs.true56.us, label %done.loopexit.loopexit.us-lcssa.us, !dbg !904

land.lhs.true56.us:                               ; preds = %if.end36.us
  %41 = load i8, i8* %in_directive, align 8, !dbg !905
  %tobool58.us = icmp eq i8 %41, 0, !dbg !906
  br i1 %tobool58.us, label %land.lhs.true59.us, label %done.loopexit.loopexit.us-lcssa.us, !dbg !907

land.lhs.true59.us:                               ; preds = %land.lhs.true56.us
  %call60.us = call zeroext i8 @_cpp_get_fresh_line(%struct.cpp_reader* %pfile) #7, !dbg !908
  %tobool62.us = icmp eq i8 %call60.us, 0, !dbg !908
  br i1 %tobool62.us, label %done.loopexit.loopexit.us-lcssa.us, label %if.then63.us, !dbg !909

if.then63.us:                                     ; preds = %land.lhs.true59.us
  br i1 %cmp64, label %if.then66.us, label %if.end68.us, !dbg !910

if.then66.us:                                     ; preds = %if.then63.us
  store i8 32, i8* %out.0.us, align 1, !dbg !911
  br label %if.end68.us, !dbg !912

if.end68.us:                                      ; preds = %if.then66.us, %if.then63.us
  %42 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer4, align 8, !dbg !913
  %cur70.us = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %42, i64 0, i32 0, !dbg !914
  %43 = load i8*, i8** %cur70.us, align 8, !dbg !914
  call void @llvm.dbg.value(metadata i8* %43, metadata !747, metadata !DIExpression()), !dbg !795
  br label %for.cond.backedge.us, !dbg !915

sw.bb.us:                                         ; preds = %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us
  br label %for.cond.backedge.us, !dbg !916

for.cond.backedge.us:                             ; preds = %sw.bb.us, %if.end68.us, %if.then111.us
  %out.0.be.us = phi i8* [ %31, %if.then111.us ], [ %incdec.ptr29.us, %if.end68.us ], [ %incdec.ptr29.us, %sw.bb.us ]
  %cur.0.be.us = phi i8* [ %call116.us, %if.then111.us ], [ %43, %if.end68.us ], [ %incdec.ptr.us, %sw.bb.us ]
  br label %for.cond.us, !dbg !795, !llvm.loop !917

sw.epilog.loopexit.loopexit.us-lcssa.us:          ; preds = %sw.bb105.us, %if.end.us
  %result.1.ph16.ph.lcssa606 = phi i8 [ %result.1.ph16.ph, %sw.bb105.us ], [ %result.1.ph16.ph, %if.end.us ]
  %lex_state.1.ph12.lcssa569 = phi i32 [ %lex_state.1.ph12, %sw.bb105.us ], [ %lex_state.1.ph12, %if.end.us ]
  %incdec.ptr.us.lcssa = phi i8* [ %incdec.ptr.us, %sw.bb105.us ], [ %incdec.ptr.us, %if.end.us ], !dbg !879
  %incdec.ptr29.us.lcssa = phi i8* [ %incdec.ptr29.us, %sw.bb105.us ], [ %incdec.ptr29.us, %if.end.us ], !dbg !881
  br label %sw.epilog.loopexit.loopexit, !dbg !920

sw.bb72.us-lcssa.us:                              ; preds = %if.end.us
  %result.1.ph16.ph.lcssa607 = phi i8 [ %result.1.ph16.ph, %if.end.us ]
  %lex_state.1.ph12.lcssa570 = phi i32 [ %lex_state.1.ph12, %if.end.us ]
  %incdec.ptr.us.lcssa513 = phi i8* [ %incdec.ptr.us, %if.end.us ], !dbg !879
  %incdec.ptr29.us.lcssa490 = phi i8* [ %incdec.ptr29.us, %if.end.us ], !dbg !881
  br label %sw.bb72, !dbg !922

sw.bb76.us-lcssa.us:                              ; preds = %if.end.us
  %result.1.ph16.ph.lcssa608 = phi i8 [ %result.1.ph16.ph, %if.end.us ]
  %lex_state.1.ph12.lcssa571 = phi i32 [ %lex_state.1.ph12, %if.end.us ]
  %incdec.ptr.us.lcssa514 = phi i8* [ %incdec.ptr.us, %if.end.us ], !dbg !879
  %incdec.ptr29.us.lcssa491 = phi i8* [ %incdec.ptr29.us, %if.end.us ], !dbg !881
  br label %sw.bb76, !dbg !880

sw.bb81.us-lcssa.us:                              ; preds = %if.end.us, %if.end.us
  %result.1.ph16.ph.lcssa609 = phi i8 [ %result.1.ph16.ph, %if.end.us ], [ %result.1.ph16.ph, %if.end.us ]
  %lex_state.1.ph12.lcssa572 = phi i32 [ %lex_state.1.ph12, %if.end.us ], [ %lex_state.1.ph12, %if.end.us ]
  %incdec.ptr.us.lcssa515 = phi i8* [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], !dbg !879
  %.lcssa504 = phi i8 [ %29, %if.end.us ], [ %29, %if.end.us ], !dbg !880
  %incdec.ptr29.us.lcssa492 = phi i8* [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], !dbg !881
  br label %sw.bb81, !dbg !880

sw.bb89.us-lcssa.us:                              ; preds = %if.end.us
  %result.1.ph16.ph.lcssa610 = phi i8 [ %result.1.ph16.ph, %if.end.us ]
  %lex_state.1.ph12.lcssa573 = phi i32 [ %lex_state.1.ph12, %if.end.us ]
  %incdec.ptr.us.lcssa516 = phi i8* [ %incdec.ptr.us, %if.end.us ], !dbg !879
  %incdec.ptr29.us.lcssa493 = phi i8* [ %incdec.ptr29.us, %if.end.us ], !dbg !881
  %out.0.us.lcssa482 = phi i8* [ %out.0.us, %if.end.us ], !dbg !795
  %cur.0.us.lcssa471 = phi i8* [ %cur.0.us, %if.end.us ], !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa482, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa471, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa482, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa471, metadata !747, metadata !DIExpression()), !dbg !795
  br label %sw.bb89, !dbg !924

sw.bb120.us-lcssa.us:                             ; preds = %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us, %if.end.us
  %incdec.ptr.us.lcssa517 = phi i8* [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], [ %incdec.ptr.us, %if.end.us ], !dbg !879
  %incdec.ptr29.us.lcssa494 = phi i8* [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], [ %incdec.ptr29.us, %if.end.us ], !dbg !881
  %out.0.us.lcssa483 = phi i8* [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], [ %out.0.us, %if.end.us ], !dbg !795
  %cur.0.us.lcssa472 = phi i8* [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], [ %cur.0.us, %if.end.us ], !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.us.lcssa483, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa472, metadata !747, metadata !DIExpression()), !dbg !795
  br label %sw.bb120, !dbg !926

sw.bb210.us-lcssa.us:                             ; preds = %if.end.us
  %result.1.ph16.ph.lcssa611 = phi i8 [ %result.1.ph16.ph, %if.end.us ]
  %lex_state.1.ph12.lcssa574 = phi i32 [ %lex_state.1.ph12, %if.end.us ]
  %incdec.ptr.us.lcssa518 = phi i8* [ %incdec.ptr.us, %if.end.us ], !dbg !879
  %incdec.ptr29.us.lcssa495 = phi i8* [ %incdec.ptr29.us, %if.end.us ], !dbg !881
  br label %sw.bb210, !dbg !927

sw.bb242.us-lcssa.us:                             ; preds = %if.end.us
  %result.1.ph16.ph.lcssa612 = phi i8 [ %result.1.ph16.ph, %if.end.us ]
  %lex_state.1.ph12.lcssa575 = phi i32 [ %lex_state.1.ph12, %if.end.us ]
  %cmp64.lcssa542 = phi i1 [ %cmp64, %if.end.us ], !dbg !862
  %incdec.ptr.us.lcssa519 = phi i8* [ %incdec.ptr.us, %if.end.us ], !dbg !879
  %incdec.ptr29.us.lcssa496 = phi i8* [ %incdec.ptr29.us, %if.end.us ], !dbg !881
  br label %sw.bb242, !dbg !929

sw.bb258.us-lcssa.us:                             ; preds = %if.end.us
  %result.1.ph16.ph.lcssa613 = phi i8 [ %result.1.ph16.ph, %if.end.us ]
  %lex_state.1.ph12.lcssa576 = phi i32 [ %lex_state.1.ph12, %if.end.us ]
  %cmp64.lcssa543 = phi i1 [ %cmp64, %if.end.us ], !dbg !862
  %incdec.ptr.us.lcssa520 = phi i8* [ %incdec.ptr.us, %if.end.us ], !dbg !879
  %incdec.ptr29.us.lcssa497 = phi i8* [ %incdec.ptr29.us, %if.end.us ], !dbg !881
  br label %sw.bb258, !dbg !931

sw.bb325.us-lcssa.us:                             ; preds = %if.end.us
  %lex_state.1.ph12.lcssa577 = phi i32 [ %lex_state.1.ph12, %if.end.us ]
  %cmp64.lcssa544 = phi i1 [ %cmp64, %if.end.us ], !dbg !862
  %incdec.ptr.us.lcssa521 = phi i8* [ %incdec.ptr.us, %if.end.us ], !dbg !879
  %incdec.ptr29.us.lcssa498 = phi i8* [ %incdec.ptr29.us, %if.end.us ], !dbg !881
  %cur.0.us.lcssa476 = phi i8* [ %cur.0.us, %if.end.us ], !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa476, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.us.lcssa476, metadata !747, metadata !DIExpression()), !dbg !795
  br label %sw.bb325, !dbg !932

if.then33.us-lcssa.us:                            ; preds = %sw.bb30.us
  %quote.1.ph.lcssa662 = phi i32 [ %quote.1.ph, %sw.bb30.us ]
  %paren_depth.1.ph.lcssa653 = phi i32 [ %paren_depth.1.ph, %sw.bb30.us ]
  %header_ok.1.ph.lcssa642 = phi i8 [ %header_ok.1.ph, %sw.bb30.us ]
  %result.1.ph16.ph.lcssa620 = phi i8 [ %result.1.ph16.ph, %sw.bb30.us ]
  %lex_state.1.ph12.lcssa581 = phi i32 [ %lex_state.1.ph12, %sw.bb30.us ]
  br label %if.then33, !dbg !933

done.loopexit.loopexit.us-lcssa.us:               ; preds = %land.lhs.true59.us, %land.lhs.true56.us, %if.end36.us
  %result.1.ph16.ph.lcssa621 = phi i8 [ %result.1.ph16.ph, %land.lhs.true59.us ], [ %result.1.ph16.ph, %land.lhs.true56.us ], [ %result.1.ph16.ph, %if.end36.us ]
  %cmp64.lcssa549 = phi i1 [ %cmp64, %land.lhs.true59.us ], [ %cmp64, %land.lhs.true56.us ], [ %cmp64, %if.end36.us ], !dbg !862
  br label %done.loopexit.loopexit, !dbg !935

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.outer11.for.cond.outer11.split_crit_edge
  %out.0 = phi i8* [ %out.0.ph13, %for.cond.outer11.for.cond.outer11.split_crit_edge ], [ %incdec.ptr29, %for.cond.backedge ], !dbg !795
  %cur.0 = phi i8* [ %cur.0.ph14, %for.cond.outer11.for.cond.outer11.split_crit_edge ], [ %cur.0.be, %for.cond.backedge ], !dbg !795
  call void @llvm.dbg.value(metadata i8 %result.1.ph16.ph, metadata !745, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 %header_ok.1.ph, metadata !762, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %lex_state.1.ph12, metadata !761, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %paren_depth.1.ph, metadata !759, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %quote.1.ph, metadata !760, metadata !DIExpression()), !dbg !795
  %44 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8, !dbg !865
  %tobool = icmp eq %struct.cpp_context* %44, null, !dbg !866
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !861

land.lhs.true:                                    ; preds = %for.cond
  %45 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer4, align 8, !dbg !867
  %notes = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %45, i64 0, i32 5, !dbg !868
  %46 = load %struct._cpp_line_note*, %struct._cpp_line_note** %notes, align 8, !dbg !868
  %cur_note = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %45, i64 0, i32 6, !dbg !869
  %47 = load i32, i32* %cur_note, align 8, !dbg !869
  %idxprom = zext i32 %47 to i64, !dbg !870
  %pos = getelementptr inbounds %struct._cpp_line_note, %struct._cpp_line_note* %46, i64 %idxprom, i32 0, !dbg !871
  %48 = load i8*, i8** %pos, align 8, !dbg !871
  %cmp = icmp ult i8* %cur.0, %48, !dbg !872
  br i1 %cmp, label %if.end, label %if.then, !dbg !873

if.then:                                          ; preds = %land.lhs.true
  %cur27 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %45, i64 0, i32 0, !dbg !874
  store i8* %cur.0, i8** %cur27, align 8, !dbg !876
  call void @_cpp_process_line_notes(%struct.cpp_reader* %pfile, i32 0) #7, !dbg !877
  br label %if.end, !dbg !878

if.end:                                           ; preds = %land.lhs.true, %for.cond, %if.then
  %incdec.ptr = getelementptr inbounds i8, i8* %cur.0, i64 1, !dbg !879
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !747, metadata !DIExpression()), !dbg !795
  %49 = load i8, i8* %cur.0, align 1, !dbg !880
  %incdec.ptr29 = getelementptr inbounds i8, i8* %out.0, i64 1, !dbg !881
  call void @llvm.dbg.value(metadata i8* %incdec.ptr29, metadata !748, metadata !DIExpression()), !dbg !795
  store i8 %49, i8* %out.0, align 1, !dbg !882
  switch i8 %49, label %sw.epilog.loopexit.loopexit.us-lcssa.loopexit [
    i8 32, label %sw.bb
    i8 9, label %sw.bb
    i8 12, label %sw.bb
    i8 11, label %sw.bb
    i8 0, label %sw.bb
    i8 10, label %sw.bb30
    i8 60, label %sw.bb72.us-lcssa
    i8 62, label %sw.bb76.us-lcssa
    i8 34, label %sw.bb81.us-lcssa
    i8 39, label %sw.bb81.us-lcssa
    i8 92, label %sw.bb89.us-lcssa
    i8 47, label %sw.bb105
    i8 95, label %sw.bb120.us-lcssa
    i8 97, label %sw.bb120.us-lcssa
    i8 98, label %sw.bb120.us-lcssa
    i8 99, label %sw.bb120.us-lcssa
    i8 100, label %sw.bb120.us-lcssa
    i8 101, label %sw.bb120.us-lcssa
    i8 102, label %sw.bb120.us-lcssa
    i8 103, label %sw.bb120.us-lcssa
    i8 104, label %sw.bb120.us-lcssa
    i8 105, label %sw.bb120.us-lcssa
    i8 106, label %sw.bb120.us-lcssa
    i8 107, label %sw.bb120.us-lcssa
    i8 108, label %sw.bb120.us-lcssa
    i8 109, label %sw.bb120.us-lcssa
    i8 110, label %sw.bb120.us-lcssa
    i8 111, label %sw.bb120.us-lcssa
    i8 112, label %sw.bb120.us-lcssa
    i8 113, label %sw.bb120.us-lcssa
    i8 114, label %sw.bb120.us-lcssa
    i8 115, label %sw.bb120.us-lcssa
    i8 116, label %sw.bb120.us-lcssa
    i8 117, label %sw.bb120.us-lcssa
    i8 118, label %sw.bb120.us-lcssa
    i8 119, label %sw.bb120.us-lcssa
    i8 120, label %sw.bb120.us-lcssa
    i8 121, label %sw.bb120.us-lcssa
    i8 122, label %sw.bb120.us-lcssa
    i8 65, label %sw.bb120.us-lcssa
    i8 66, label %sw.bb120.us-lcssa
    i8 67, label %sw.bb120.us-lcssa
    i8 68, label %sw.bb120.us-lcssa
    i8 69, label %sw.bb120.us-lcssa
    i8 70, label %sw.bb120.us-lcssa
    i8 71, label %sw.bb120.us-lcssa
    i8 72, label %sw.bb120.us-lcssa
    i8 73, label %sw.bb120.us-lcssa
    i8 74, label %sw.bb120.us-lcssa
    i8 75, label %sw.bb120.us-lcssa
    i8 76, label %sw.bb120.us-lcssa
    i8 77, label %sw.bb120.us-lcssa
    i8 78, label %sw.bb120.us-lcssa
    i8 79, label %sw.bb120.us-lcssa
    i8 80, label %sw.bb120.us-lcssa
    i8 81, label %sw.bb120.us-lcssa
    i8 82, label %sw.bb120.us-lcssa
    i8 83, label %sw.bb120.us-lcssa
    i8 84, label %sw.bb120.us-lcssa
    i8 85, label %sw.bb120.us-lcssa
    i8 86, label %sw.bb120.us-lcssa
    i8 87, label %sw.bb120.us-lcssa
    i8 88, label %sw.bb120.us-lcssa
    i8 89, label %sw.bb120.us-lcssa
    i8 90, label %sw.bb120.us-lcssa
    i8 40, label %sw.bb210.us-lcssa
    i8 44, label %sw.bb242.us-lcssa
    i8 41, label %sw.bb258.us-lcssa
    i8 35, label %sw.bb325.us-lcssa
  ], !dbg !883

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  br label %for.cond.backedge, !dbg !916

for.cond.backedge:                                ; preds = %sw.bb, %if.end68
  %cur.0.be = phi i8* [ %61, %if.end68 ], [ %incdec.ptr, %sw.bb ]
  br label %for.cond, !dbg !795, !llvm.loop !917

sw.bb30:                                          ; preds = %if.end
  %50 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8, !dbg !891
  %tobool32 = icmp eq %struct.cpp_context* %50, null, !dbg !893
  store i8* %out.0, i8** %cur11, align 8, !dbg !894
  br i1 %tobool32, label %if.end36, label %if.then33.us-lcssa, !dbg !895

if.then33.us-lcssa:                               ; preds = %sw.bb30
  %quote.1.ph.lcssa = phi i32 [ %quote.1.ph, %sw.bb30 ]
  %paren_depth.1.ph.lcssa = phi i32 [ %paren_depth.1.ph, %sw.bb30 ]
  %header_ok.1.ph.lcssa = phi i8 [ %header_ok.1.ph, %sw.bb30 ]
  %result.1.ph16.ph.lcssa604 = phi i8 [ %result.1.ph16.ph, %sw.bb30 ]
  %lex_state.1.ph12.lcssa567 = phi i32 [ %lex_state.1.ph12, %sw.bb30 ]
  br label %if.then33, !dbg !933

if.then33:                                        ; preds = %if.then33.us-lcssa.us, %if.then33.us-lcssa
  %quote.1.ph666 = phi i32 [ %quote.1.ph.lcssa662, %if.then33.us-lcssa.us ], [ %quote.1.ph.lcssa, %if.then33.us-lcssa ]
  %paren_depth.1.ph655 = phi i32 [ %paren_depth.1.ph.lcssa653, %if.then33.us-lcssa.us ], [ %paren_depth.1.ph.lcssa, %if.then33.us-lcssa ]
  %header_ok.1.ph646 = phi i8 [ %header_ok.1.ph.lcssa642, %if.then33.us-lcssa.us ], [ %header_ok.1.ph.lcssa, %if.then33.us-lcssa ]
  %result.1.ph16.ph626 = phi i8 [ %result.1.ph16.ph.lcssa620, %if.then33.us-lcssa.us ], [ %result.1.ph16.ph.lcssa604, %if.then33.us-lcssa ]
  %lex_state.1.ph12583 = phi i32 [ %lex_state.1.ph12.lcssa581, %if.then33.us-lcssa.us ], [ %lex_state.1.ph12.lcssa567, %if.then33.us-lcssa ]
  call void @_cpp_pop_context(%struct.cpp_reader* %pfile) #7, !dbg !933
  br label %new_context.backedge, !dbg !937

new_context.backedge:                             ; preds = %if.then33, %new_context.loopexit
  %quote.1.ph664 = phi i32 [ %quote.1.ph666, %if.then33 ], [ %quote.1.ph665, %new_context.loopexit ]
  %header_ok.1.ph644 = phi i8 [ %header_ok.1.ph646, %if.then33 ], [ %header_ok.1.ph645, %new_context.loopexit ]
  %result.1.ph16.ph623 = phi i8 [ %result.1.ph16.ph626, %if.then33 ], [ %result.1.ph16.ph624, %new_context.loopexit ]
  %paren_depth.0.be = phi i32 [ %paren_depth.1.ph655, %if.then33 ], [ %paren_depth.0.ph, %new_context.loopexit ]
  %lex_state.0.be = phi i32 [ %lex_state.1.ph12583, %if.then33 ], [ %lex_state.0.ph, %new_context.loopexit ]
  br label %new_context, !dbg !795

if.end36:                                         ; preds = %sw.bb30
  %51 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer4, align 8, !dbg !896
  %cur41 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %51, i64 0, i32 0, !dbg !897
  store i8* %incdec.ptr, i8** %cur41, align 8, !dbg !898
  %52 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer4, align 8, !dbg !899
  %need_line = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %52, i64 0, i32 13, !dbg !900
  store i8 1, i8* %need_line, align 8, !dbg !901
  %53 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !902
  call void @llvm.dbg.value(metadata %struct.line_maps* %53, metadata !764, metadata !DIExpression()), !dbg !903
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %53, i64 0, i32 0, !dbg !902
  %54 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !902
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %53, i64 0, i32 2, !dbg !902
  %55 = load i32, i32* %used, align 4, !dbg !902
  %sub = add i32 %55, -1, !dbg !902
  %idxprom45 = zext i32 %sub to i64, !dbg !902
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !772, metadata !DIExpression()), !dbg !903
  %highest_line48 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %53, i64 0, i32 8, !dbg !902
  %56 = load i32, i32* %highest_line48, align 4, !dbg !902
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %54, i64 %idxprom45, i32 2, !dbg !902
  %57 = load i32, i32* %start_location, align 4, !dbg !902
  %sub49 = sub i32 %56, %57, !dbg !902
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %54, i64 %idxprom45, i32 6, !dbg !902
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !902
  %bf.cast = zext i8 %bf.load to i32, !dbg !902
  %shr = lshr i32 %sub49, %bf.cast, !dbg !902
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %54, i64 %idxprom45, i32 1, !dbg !902
  %58 = load i32, i32* %to_line, align 8, !dbg !902
  %add = add i32 %shr, %58, !dbg !902
  call void @llvm.dbg.value(metadata i32 %add, metadata !773, metadata !DIExpression()), !dbg !903
  %add51 = add i32 %add, 1, !dbg !902
  %call = call i32 @linemap_line_start(%struct.line_maps* %53, i32 %add51, i32 0) #7, !dbg !902
  br i1 %switch8, label %land.lhs.true56, label %done.loopexit.loopexit.us-lcssa, !dbg !904

land.lhs.true56:                                  ; preds = %if.end36
  %59 = load i8, i8* %in_directive, align 8, !dbg !905
  %tobool58 = icmp eq i8 %59, 0, !dbg !906
  br i1 %tobool58, label %land.lhs.true59, label %done.loopexit.loopexit.us-lcssa, !dbg !907

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %call60 = call zeroext i8 @_cpp_get_fresh_line(%struct.cpp_reader* %pfile) #7, !dbg !908
  %tobool62 = icmp eq i8 %call60, 0, !dbg !908
  br i1 %tobool62, label %done.loopexit.loopexit.us-lcssa, label %if.then63, !dbg !909

if.then63:                                        ; preds = %land.lhs.true59
  br i1 %cmp64, label %if.then66, label %if.end68, !dbg !910

if.then66:                                        ; preds = %if.then63
  store i8 32, i8* %out.0, align 1, !dbg !911
  br label %if.end68, !dbg !912

if.end68:                                         ; preds = %if.then66, %if.then63
  %60 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer4, align 8, !dbg !913
  %cur70 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %60, i64 0, i32 0, !dbg !914
  %61 = load i8*, i8** %cur70, align 8, !dbg !914
  call void @llvm.dbg.value(metadata i8* %61, metadata !747, metadata !DIExpression()), !dbg !795
  br label %for.cond.backedge, !dbg !915

sw.bb72.us-lcssa:                                 ; preds = %if.end
  %result.1.ph16.ph.lcssa596 = phi i8 [ %result.1.ph16.ph, %if.end ]
  %lex_state.1.ph12.lcssa558 = phi i32 [ %lex_state.1.ph12, %if.end ]
  %incdec.ptr.lcssa455 = phi i8* [ %incdec.ptr, %if.end ], !dbg !879
  %incdec.ptr29.lcssa428 = phi i8* [ %incdec.ptr29, %if.end ], !dbg !881
  br label %sw.bb72, !dbg !922

sw.bb72:                                          ; preds = %sw.bb72.us-lcssa.us, %sw.bb72.us-lcssa
  %result.1.ph16.ph627 = phi i8 [ %result.1.ph16.ph.lcssa596, %sw.bb72.us-lcssa ], [ %result.1.ph16.ph.lcssa607, %sw.bb72.us-lcssa.us ]
  %lex_state.1.ph12584 = phi i32 [ %lex_state.1.ph12.lcssa558, %sw.bb72.us-lcssa ], [ %lex_state.1.ph12.lcssa570, %sw.bb72.us-lcssa.us ]
  %incdec.ptr.lcssa66 = phi i8* [ %incdec.ptr.lcssa455, %sw.bb72.us-lcssa ], [ %incdec.ptr.us.lcssa513, %sw.bb72.us-lcssa.us ], !dbg !879
  %incdec.ptr29.lcssa43 = phi i8* [ %incdec.ptr29.lcssa428, %sw.bb72.us-lcssa ], [ %incdec.ptr29.us.lcssa490, %sw.bb72.us-lcssa.us ], !dbg !881
  %tobool73 = icmp eq i8 %header_ok.1.ph, 0, !dbg !922
  %spec.select = select i1 %tobool73, i32 %quote.1.ph, i32 62, !dbg !938
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !760, metadata !DIExpression()), !dbg !795
  br label %sw.epilog, !dbg !939

sw.bb76.us-lcssa:                                 ; preds = %if.end
  %result.1.ph16.ph.lcssa597 = phi i8 [ %result.1.ph16.ph, %if.end ]
  %lex_state.1.ph12.lcssa559 = phi i32 [ %lex_state.1.ph12, %if.end ]
  %incdec.ptr.lcssa456 = phi i8* [ %incdec.ptr, %if.end ], !dbg !879
  %incdec.ptr29.lcssa429 = phi i8* [ %incdec.ptr29, %if.end ], !dbg !881
  br label %sw.bb76, !dbg !880

sw.bb76:                                          ; preds = %sw.bb76.us-lcssa.us, %sw.bb76.us-lcssa
  %result.1.ph16.ph628 = phi i8 [ %result.1.ph16.ph.lcssa597, %sw.bb76.us-lcssa ], [ %result.1.ph16.ph.lcssa608, %sw.bb76.us-lcssa.us ]
  %lex_state.1.ph12585 = phi i32 [ %lex_state.1.ph12.lcssa559, %sw.bb76.us-lcssa ], [ %lex_state.1.ph12.lcssa571, %sw.bb76.us-lcssa.us ]
  %incdec.ptr.lcssa67 = phi i8* [ %incdec.ptr.lcssa456, %sw.bb76.us-lcssa ], [ %incdec.ptr.us.lcssa514, %sw.bb76.us-lcssa.us ], !dbg !879
  %incdec.ptr29.lcssa44 = phi i8* [ %incdec.ptr29.lcssa429, %sw.bb76.us-lcssa ], [ %incdec.ptr29.us.lcssa491, %sw.bb76.us-lcssa.us ], !dbg !881
  %cmp77 = icmp eq i32 %quote.1.ph, 62, !dbg !940
  %spec.select1 = select i1 %cmp77, i32 0, i32 %quote.1.ph, !dbg !942
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !760, metadata !DIExpression()), !dbg !795
  br label %sw.epilog, !dbg !943

sw.bb81.us-lcssa:                                 ; preds = %if.end, %if.end
  %result.1.ph16.ph.lcssa598 = phi i8 [ %result.1.ph16.ph, %if.end ], [ %result.1.ph16.ph, %if.end ]
  %lex_state.1.ph12.lcssa560 = phi i32 [ %lex_state.1.ph12, %if.end ], [ %lex_state.1.ph12, %if.end ]
  %incdec.ptr.lcssa457 = phi i8* [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], !dbg !879
  %.lcssa444 = phi i8 [ %49, %if.end ], [ %49, %if.end ], !dbg !880
  %incdec.ptr29.lcssa430 = phi i8* [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], !dbg !881
  br label %sw.bb81, !dbg !880

sw.bb81:                                          ; preds = %sw.bb81.us-lcssa.us, %sw.bb81.us-lcssa
  %result.1.ph16.ph629 = phi i8 [ %result.1.ph16.ph.lcssa598, %sw.bb81.us-lcssa ], [ %result.1.ph16.ph.lcssa609, %sw.bb81.us-lcssa.us ]
  %lex_state.1.ph12586 = phi i32 [ %lex_state.1.ph12.lcssa560, %sw.bb81.us-lcssa ], [ %lex_state.1.ph12.lcssa572, %sw.bb81.us-lcssa.us ]
  %.lcssa = phi i8 [ %.lcssa444, %sw.bb81.us-lcssa ], [ %.lcssa504, %sw.bb81.us-lcssa.us ]
  %incdec.ptr.lcssa68 = phi i8* [ %incdec.ptr.lcssa457, %sw.bb81.us-lcssa ], [ %incdec.ptr.us.lcssa515, %sw.bb81.us-lcssa.us ], !dbg !879
  %incdec.ptr29.lcssa45 = phi i8* [ %incdec.ptr29.lcssa430, %sw.bb81.us-lcssa ], [ %incdec.ptr29.us.lcssa492, %sw.bb81.us-lcssa.us ], !dbg !881
  %conv.le = zext i8 %.lcssa to i32, !dbg !880
  %cmp82 = icmp eq i32 %quote.1.ph, %conv.le, !dbg !944
  %spec.select2 = select i1 %tobool106, i32 %conv.le, i32 %quote.1.ph, !dbg !946
  %quote.5 = select i1 %cmp82, i32 0, i32 %spec.select2, !dbg !946
  br label %sw.epilog, !dbg !946

sw.bb89.us-lcssa:                                 ; preds = %if.end
  %result.1.ph16.ph.lcssa599 = phi i8 [ %result.1.ph16.ph, %if.end ]
  %lex_state.1.ph12.lcssa561 = phi i32 [ %lex_state.1.ph12, %if.end ]
  %incdec.ptr.lcssa458 = phi i8* [ %incdec.ptr, %if.end ], !dbg !879
  %incdec.ptr29.lcssa431 = phi i8* [ %incdec.ptr29, %if.end ], !dbg !881
  %out.0.lcssa418 = phi i8* [ %out.0, %if.end ], !dbg !795
  %cur.0.lcssa406 = phi i8* [ %cur.0, %if.end ], !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa418, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa406, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa418, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa406, metadata !747, metadata !DIExpression()), !dbg !795
  br label %sw.bb89, !dbg !924

sw.bb89:                                          ; preds = %sw.bb89.us-lcssa.us, %sw.bb89.us-lcssa
  %result.1.ph16.ph630 = phi i8 [ %result.1.ph16.ph.lcssa599, %sw.bb89.us-lcssa ], [ %result.1.ph16.ph.lcssa610, %sw.bb89.us-lcssa.us ]
  %lex_state.1.ph12587 = phi i32 [ %lex_state.1.ph12.lcssa561, %sw.bb89.us-lcssa ], [ %lex_state.1.ph12.lcssa573, %sw.bb89.us-lcssa.us ]
  %incdec.ptr.lcssa69 = phi i8* [ %incdec.ptr.lcssa458, %sw.bb89.us-lcssa ], [ %incdec.ptr.us.lcssa516, %sw.bb89.us-lcssa.us ], !dbg !879
  %incdec.ptr29.lcssa46 = phi i8* [ %incdec.ptr29.lcssa431, %sw.bb89.us-lcssa ], [ %incdec.ptr29.us.lcssa493, %sw.bb89.us-lcssa.us ], !dbg !881
  %out.0.lcssa35 = phi i8* [ %out.0.lcssa418, %sw.bb89.us-lcssa ], [ %out.0.us.lcssa482, %sw.bb89.us-lcssa.us ], !dbg !795
  %cur.0.lcssa24 = phi i8* [ %cur.0.lcssa406, %sw.bb89.us-lcssa ], [ %cur.0.us.lcssa471, %sw.bb89.us-lcssa.us ], !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa35, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa24, metadata !747, metadata !DIExpression()), !dbg !795
  %62 = load i8, i8* %incdec.ptr.lcssa69, align 1, !dbg !924
  %cmp91 = icmp eq i8 %62, 92, !dbg !947
  br i1 %cmp91, label %if.then101, label %lor.lhs.false93, !dbg !948

lor.lhs.false93:                                  ; preds = %sw.bb89
  %cmp95 = icmp eq i8 %62, 34, !dbg !949
  br i1 %cmp95, label %if.then101, label %lor.lhs.false97, !dbg !950

lor.lhs.false97:                                  ; preds = %lor.lhs.false93
  %cmp99 = icmp eq i8 %62, 39, !dbg !951
  br i1 %cmp99, label %if.then101, label %sw.epilog, !dbg !952

if.then101:                                       ; preds = %lor.lhs.false97, %lor.lhs.false93, %sw.bb89
  %result.1.ph16.ph631 = phi i8 [ %result.1.ph16.ph630, %lor.lhs.false97 ], [ %result.1.ph16.ph630, %lor.lhs.false93 ], [ %result.1.ph16.ph630, %sw.bb89 ]
  %incdec.ptr102 = getelementptr inbounds i8, i8* %cur.0.lcssa24, i64 2, !dbg !953
  call void @llvm.dbg.value(metadata i8* %incdec.ptr102, metadata !747, metadata !DIExpression()), !dbg !795
  %incdec.ptr103 = getelementptr inbounds i8, i8* %out.0.lcssa35, i64 2, !dbg !954
  call void @llvm.dbg.value(metadata i8* %incdec.ptr103, metadata !748, metadata !DIExpression()), !dbg !795
  store i8 %62, i8* %incdec.ptr29.lcssa46, align 1, !dbg !955
  br label %sw.epilog, !dbg !956

sw.bb105:                                         ; preds = %if.end
  %result.1.ph16.ph.lcssa600 = phi i8 [ %result.1.ph16.ph, %if.end ]
  %lex_state.1.ph12.lcssa562 = phi i32 [ %lex_state.1.ph12, %if.end ]
  %incdec.ptr.lcssa459 = phi i8* [ %incdec.ptr, %if.end ], !dbg !879
  %incdec.ptr29.lcssa432 = phi i8* [ %incdec.ptr29, %if.end ], !dbg !881
  br label %sw.epilog.loopexit.loopexit.us-lcssa, !dbg !957

sw.bb120.us-lcssa:                                ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %incdec.ptr.lcssa460 = phi i8* [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], [ %incdec.ptr, %if.end ], !dbg !879
  %incdec.ptr29.lcssa433 = phi i8* [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], [ %incdec.ptr29, %if.end ], !dbg !881
  %out.0.lcssa420 = phi i8* [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], [ %out.0, %if.end ], !dbg !795
  %cur.0.lcssa408 = phi i8* [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], [ %cur.0, %if.end ], !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa420, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa408, metadata !747, metadata !DIExpression()), !dbg !795
  br label %sw.bb120, !dbg !926

sw.bb120:                                         ; preds = %sw.bb120.us-lcssa.us, %sw.bb120.us-lcssa
  %incdec.ptr.lcssa70 = phi i8* [ %incdec.ptr.lcssa460, %sw.bb120.us-lcssa ], [ %incdec.ptr.us.lcssa517, %sw.bb120.us-lcssa.us ], !dbg !879
  %incdec.ptr29.lcssa47 = phi i8* [ %incdec.ptr29.lcssa433, %sw.bb120.us-lcssa ], [ %incdec.ptr29.us.lcssa494, %sw.bb120.us-lcssa.us ], !dbg !881
  %out.0.lcssa36 = phi i8* [ %out.0.lcssa420, %sw.bb120.us-lcssa ], [ %out.0.us.lcssa483, %sw.bb120.us-lcssa.us ], !dbg !795
  %cur.0.lcssa25 = phi i8* [ %cur.0.lcssa408, %sw.bb120.us-lcssa ], [ %cur.0.us.lcssa472, %sw.bb120.us-lcssa.us ], !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa25, metadata !747, metadata !DIExpression()), !dbg !795
  %63 = load i8, i8* %skipping, align 2, !dbg !926
  %tobool122 = icmp eq i8 %63, 0, !dbg !958
  br i1 %tobool122, label %land.lhs.true123, label %sw.epilog.loopexit.loopexit18.loopexit, !dbg !959

land.lhs.true123:                                 ; preds = %sw.bb120
  br i1 %or.cond, label %if.then128, label %sw.epilog.loopexit.loopexit18.loopexit, !dbg !960

if.then128:                                       ; preds = %land.lhs.true123
  call void @llvm.dbg.value(metadata i8* %out.0.lcssa36, metadata !777, metadata !DIExpression()), !dbg !961
  store i8* %out.0.lcssa36, i8** %cur11, align 8, !dbg !962
  %call134 = call fastcc %struct.cpp_hashnode* @lex_identifier(%struct.cpp_reader* %pfile, i8* %cur.0.lcssa25) #8, !dbg !963
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call134, metadata !774, metadata !DIExpression()), !dbg !961
  %64 = load i8*, i8** %cur11, align 8, !dbg !964
  call void @llvm.dbg.value(metadata i8* %64, metadata !748, metadata !DIExpression()), !dbg !795
  %65 = load i8*, i8** %cur18, align 8, !dbg !965
  call void @llvm.dbg.value(metadata i8* %65, metadata !747, metadata !DIExpression()), !dbg !795
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call134, i64 0, i32 3, !dbg !966
  %bf.load140 = load i16, i16* %type, align 2, !dbg !966
  %bf.clear = and i16 %bf.load140, 63, !dbg !966
  %cmp142 = icmp eq i16 %bf.clear, 1, !dbg !967
  %switch9 = icmp ult i32 %lex_state.1.ph12, 2, !dbg !968
  %or.cond10 = and i1 %cmp142, %switch9, !dbg !969
  br i1 %or.cond10, label %land.lhs.true150, label %if.else175, !dbg !969

land.lhs.true150:                                 ; preds = %if.then128
  %66 = load i8, i8* %prevent_expansion, align 8, !dbg !970
  %tobool152 = icmp eq i8 %66, 0, !dbg !971
  br i1 %tobool152, label %if.then153, label %if.else175, !dbg !972

if.then153:                                       ; preds = %land.lhs.true150
  store i8 0, i8* %mi_valid, align 8, !dbg !973
  %bf.load154 = load i16, i16* %type, align 2, !dbg !974
  %67 = and i16 %bf.load154, 256, !dbg !976
  %tobool156 = icmp eq i16 %67, 0, !dbg !976
  br i1 %tobool156, label %land.lhs.true157, label %if.else167, !dbg !977

land.lhs.true157:                                 ; preds = %if.then153
  %macro158 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call134, i64 0, i32 4, i32 0, !dbg !978
  %68 = load %struct.cpp_macro*, %struct.cpp_macro** %macro158, align 8, !dbg !978
  %fun_like = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %68, i64 0, i32 5, !dbg !979
  %bf.load159 = load i8, i8* %fun_like, align 2, !dbg !979
  %bf.clear160 = and i8 %bf.load159, 1, !dbg !979
  %tobool162 = icmp eq i8 %bf.clear160, 0, !dbg !980
  br i1 %tobool162, label %if.else167, label %if.then163, !dbg !981

if.then163:                                       ; preds = %land.lhs.true157
  call void @llvm.dbg.value(metadata %struct.fun_macro* %fmacro, metadata !749, metadata !DIExpression(DW_OP_deref)), !dbg !795
  call fastcc void @maybe_start_funlike(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %call134, i8* %out.0.lcssa36, %struct.fun_macro* nonnull %fmacro) #8, !dbg !982
  call void @llvm.dbg.value(metadata i32 1, metadata !761, metadata !DIExpression()), !dbg !795
  %69 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !984
  %highest_line165 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %69, i64 0, i32 8, !dbg !985
  %70 = load i32, i32* %highest_line165, align 4, !dbg !985
  store i32 %70, i32* %line, align 8, !dbg !986
  br label %cleanup, !dbg !987, !llvm.loop !917

if.else167:                                       ; preds = %land.lhs.true157, %if.then153
  %call168 = call fastcc zeroext i8 @recursive_macro(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %call134) #8, !dbg !988
  %tobool169 = icmp eq i8 %call168, 0, !dbg !988
  br i1 %tobool169, label %if.then170, label %if.end207, !dbg !990

if.then170:                                       ; preds = %if.else167
  store i8* %out.0.lcssa36, i8** %cur11, align 8, !dbg !991
  call fastcc void @push_replacement_text(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %call134) #8, !dbg !993
  call void @llvm.dbg.value(metadata i32 0, metadata !761, metadata !DIExpression()), !dbg !795
  br label %cleanup, !dbg !994

if.else175:                                       ; preds = %land.lhs.true150, %if.then128
  br i1 %tobool176, label %if.else192, label %land.lhs.true177, !dbg !995

land.lhs.true177:                                 ; preds = %if.else175
  %71 = and i16 %bf.load140, 4096, !dbg !996
  %cmp183 = icmp eq i16 %71, 0, !dbg !997
  br i1 %cmp183, label %if.else192, label %if.then185, !dbg !998

if.then185:                                       ; preds = %land.lhs.true177
  store i8* %out.0.lcssa36, i8** %cur11, align 8, !dbg !999
  %value188 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call134, i64 0, i32 4, !dbg !1001
  %arg_index = bitcast %union._cpp_hashnode_value* %value188 to i16*, !dbg !1002
  %72 = load i16, i16* %arg_index, align 8, !dbg !1002
  %conv189 = zext i16 %72 to i32, !dbg !1003
  call fastcc void @save_replacement_text(%struct.cpp_reader* %pfile, %struct.cpp_macro* nonnull %macro, i32 %conv189) #8, !dbg !1004
  %73 = load i8*, i8** %base, align 8, !dbg !1005
  call void @llvm.dbg.value(metadata i8* %73, metadata !748, metadata !DIExpression()), !dbg !795
  br label %if.end207, !dbg !1006

if.else192:                                       ; preds = %land.lhs.true177, %if.else175
  %cmp193 = icmp eq i32 %lex_state.1.ph12, 5, !dbg !1007
  br i1 %cmp193, label %cleanup, label %if.else196, !dbg !1008, !llvm.loop !917

if.else196:                                       ; preds = %if.else192
  %74 = load i8, i8* %in_expression, align 4, !dbg !1009
  %tobool199 = icmp eq i8 %74, 0, !dbg !1010
  br i1 %tobool199, label %if.end207, label %land.lhs.true200, !dbg !1011

land.lhs.true200:                                 ; preds = %if.else196
  %75 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %n_defined, align 8, !dbg !1012
  %cmp201 = icmp eq %struct.cpp_hashnode* %call134, %75, !dbg !1013
  br i1 %cmp201, label %cleanup, label %if.end207, !dbg !1014, !llvm.loop !917

if.end207:                                        ; preds = %if.else167, %if.else196, %if.then185, %land.lhs.true200
  %out.3 = phi i8* [ %64, %if.else167 ], [ %73, %if.then185 ], [ %64, %if.else196 ], [ %64, %land.lhs.true200 ], !dbg !961
  call void @llvm.dbg.value(metadata i8* %out.3, metadata !748, metadata !DIExpression()), !dbg !795
  br label %cleanup, !dbg !1015

cleanup:                                          ; preds = %land.lhs.true200, %if.else192, %if.end207, %if.then170, %if.then163
  %lex_state.2 = phi i32 [ %lex_state.1.ph12, %if.end207 ], [ 0, %if.then170 ], [ 1, %if.then163 ], [ 6, %if.else192 ], [ 3, %land.lhs.true200 ], !dbg !795
  %out.4 = phi i8* [ %out.3, %if.end207 ], [ %64, %if.then170 ], [ %64, %if.then163 ], [ %64, %if.else192 ], [ %64, %land.lhs.true200 ], !dbg !961
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end207 ], [ 2, %if.then170 ], [ 4, %if.then163 ], [ 4, %if.else192 ], [ 4, %land.lhs.true200 ]
  call void @llvm.dbg.value(metadata i8* %out.4, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %lex_state.2, metadata !761, metadata !DIExpression()), !dbg !795
  switch i32 %cleanup.dest.slot.0, label %unreachable [
    i32 0, label %sw.epilog.loopexit.loopexit18.loopexit
    i32 4, label %for.cond.outer11
    i32 2, label %new_context.loopexit.loopexit
  ]

sw.bb210.us-lcssa:                                ; preds = %if.end
  %result.1.ph16.ph.lcssa601 = phi i8 [ %result.1.ph16.ph, %if.end ]
  %lex_state.1.ph12.lcssa563 = phi i32 [ %lex_state.1.ph12, %if.end ]
  %incdec.ptr.lcssa461 = phi i8* [ %incdec.ptr, %if.end ], !dbg !879
  %incdec.ptr29.lcssa434 = phi i8* [ %incdec.ptr29, %if.end ], !dbg !881
  br label %sw.bb210, !dbg !927

sw.bb210:                                         ; preds = %sw.bb210.us-lcssa.us, %sw.bb210.us-lcssa
  %result.1.ph16.ph634 = phi i8 [ %result.1.ph16.ph.lcssa601, %sw.bb210.us-lcssa ], [ %result.1.ph16.ph.lcssa611, %sw.bb210.us-lcssa.us ]
  %lex_state.1.ph12590 = phi i32 [ %lex_state.1.ph12.lcssa563, %sw.bb210.us-lcssa ], [ %lex_state.1.ph12.lcssa574, %sw.bb210.us-lcssa.us ]
  %incdec.ptr.lcssa71 = phi i8* [ %incdec.ptr.lcssa461, %sw.bb210.us-lcssa ], [ %incdec.ptr.us.lcssa518, %sw.bb210.us-lcssa.us ], !dbg !879
  %incdec.ptr29.lcssa48 = phi i8* [ %incdec.ptr29.lcssa434, %sw.bb210.us-lcssa ], [ %incdec.ptr29.us.lcssa495, %sw.bb210.us-lcssa.us ], !dbg !881
  br i1 %tobool106, label %if.then213, label %sw.epilog, !dbg !1016

if.then213:                                       ; preds = %sw.bb210
  %inc = add i32 %paren_depth.1.ph, 1, !dbg !1017
  call void @llvm.dbg.value(metadata i32 %inc, metadata !759, metadata !DIExpression()), !dbg !795
  switch i32 %lex_state.1.ph12590, label %if.end238 [
    i32 1, label %if.then216
    i32 6, label %sw.epilog
    i32 3, label %if.then237
  ], !dbg !1019

if.then216:                                       ; preds = %if.then213
  %76 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8, !dbg !1020
  %call218 = call fastcc zeroext i8 @recursive_macro(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %76) #8, !dbg !1024
  %tobool219 = icmp eq i8 %call218, 0, !dbg !1024
  br i1 %tobool219, label %if.else221, label %sw.epilog, !dbg !1025

if.else221:                                       ; preds = %if.then216
  call void @llvm.dbg.value(metadata i32 2, metadata !761, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 1, metadata !759, metadata !DIExpression()), !dbg !795
  %77 = load i8*, i8** %base, align 8, !dbg !1026
  %78 = load i64, i64* %offset, align 8, !dbg !1028
  %add.ptr225 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %add.ptr225, metadata !748, metadata !DIExpression()), !dbg !795
  %79 = load i64*, i64** %args, align 8, !dbg !1030
  store i64 %78, i64* %79, align 8, !dbg !1031
  br label %sw.epilog

if.then237:                                       ; preds = %if.then213
  call void @llvm.dbg.value(metadata i32 4, metadata !761, metadata !DIExpression()), !dbg !795
  br label %if.end238, !dbg !1032

if.end238:                                        ; preds = %if.then213, %if.then237
  %lex_state.5 = phi i32 [ 4, %if.then237 ], [ %lex_state.1.ph12590, %if.then213 ], !dbg !795
  call void @llvm.dbg.value(metadata i32 %lex_state.5, metadata !761, metadata !DIExpression()), !dbg !795
  br label %sw.epilog

sw.bb242.us-lcssa:                                ; preds = %if.end
  %result.1.ph16.ph.lcssa602 = phi i8 [ %result.1.ph16.ph, %if.end ]
  %lex_state.1.ph12.lcssa564 = phi i32 [ %lex_state.1.ph12, %if.end ]
  %cmp64.lcssa531 = phi i1 [ %cmp64, %if.end ], !dbg !862
  %incdec.ptr.lcssa462 = phi i8* [ %incdec.ptr, %if.end ], !dbg !879
  %incdec.ptr29.lcssa435 = phi i8* [ %incdec.ptr29, %if.end ], !dbg !881
  br label %sw.bb242, !dbg !929

sw.bb242:                                         ; preds = %sw.bb242.us-lcssa.us, %sw.bb242.us-lcssa
  %result.1.ph16.ph635 = phi i8 [ %result.1.ph16.ph.lcssa602, %sw.bb242.us-lcssa ], [ %result.1.ph16.ph.lcssa612, %sw.bb242.us-lcssa.us ]
  %lex_state.1.ph12591 = phi i32 [ %lex_state.1.ph12.lcssa564, %sw.bb242.us-lcssa ], [ %lex_state.1.ph12.lcssa575, %sw.bb242.us-lcssa.us ]
  %cmp64550 = phi i1 [ %cmp64.lcssa531, %sw.bb242.us-lcssa ], [ %cmp64.lcssa542, %sw.bb242.us-lcssa.us ]
  %incdec.ptr.lcssa72 = phi i8* [ %incdec.ptr.lcssa462, %sw.bb242.us-lcssa ], [ %incdec.ptr.us.lcssa519, %sw.bb242.us-lcssa.us ], !dbg !879
  %incdec.ptr29.lcssa49 = phi i8* [ %incdec.ptr29.lcssa435, %sw.bb242.us-lcssa ], [ %incdec.ptr29.us.lcssa496, %sw.bb242.us-lcssa.us ], !dbg !881
  %or.cond3 = and i1 %tobool106, %cmp64550, !dbg !1035
  %cmp249 = icmp eq i32 %paren_depth.1.ph, 1, !dbg !1036
  %or.cond4 = and i1 %or.cond3, %cmp249, !dbg !1035
  br i1 %or.cond4, label %if.then251, label %sw.epilog, !dbg !1035

if.then251:                                       ; preds = %sw.bb242
  %80 = load i64, i64* %12, align 8, !dbg !1037
  %sub.ptr.lhs.cast254 = ptrtoint i8* %incdec.ptr29.lcssa49 to i64, !dbg !1038
  %sub.ptr.sub256 = sub i64 %sub.ptr.lhs.cast254, %80, !dbg !1038
  call void @llvm.dbg.value(metadata %struct.fun_macro* %fmacro, metadata !749, metadata !DIExpression(DW_OP_deref)), !dbg !795
  call fastcc void @save_argument(%struct.fun_macro* nonnull %fmacro, i64 %sub.ptr.sub256) #8, !dbg !1039
  br label %sw.epilog, !dbg !1039

sw.bb258.us-lcssa:                                ; preds = %if.end
  %result.1.ph16.ph.lcssa603 = phi i8 [ %result.1.ph16.ph, %if.end ]
  %lex_state.1.ph12.lcssa565 = phi i32 [ %lex_state.1.ph12, %if.end ]
  %cmp64.lcssa532 = phi i1 [ %cmp64, %if.end ], !dbg !862
  %incdec.ptr.lcssa463 = phi i8* [ %incdec.ptr, %if.end ], !dbg !879
  %incdec.ptr29.lcssa436 = phi i8* [ %incdec.ptr29, %if.end ], !dbg !881
  br label %sw.bb258, !dbg !931

sw.bb258:                                         ; preds = %sw.bb258.us-lcssa.us, %sw.bb258.us-lcssa
  %result.1.ph16.ph625 = phi i8 [ %result.1.ph16.ph.lcssa603, %sw.bb258.us-lcssa ], [ %result.1.ph16.ph.lcssa613, %sw.bb258.us-lcssa.us ]
  %lex_state.1.ph12592 = phi i32 [ %lex_state.1.ph12.lcssa565, %sw.bb258.us-lcssa ], [ %lex_state.1.ph12.lcssa576, %sw.bb258.us-lcssa.us ]
  %cmp64551 = phi i1 [ %cmp64.lcssa532, %sw.bb258.us-lcssa ], [ %cmp64.lcssa543, %sw.bb258.us-lcssa.us ]
  %incdec.ptr.lcssa73 = phi i8* [ %incdec.ptr.lcssa463, %sw.bb258.us-lcssa ], [ %incdec.ptr.us.lcssa520, %sw.bb258.us-lcssa.us ], !dbg !879
  %incdec.ptr29.lcssa50 = phi i8* [ %incdec.ptr29.lcssa436, %sw.bb258.us-lcssa ], [ %incdec.ptr29.us.lcssa497, %sw.bb258.us-lcssa.us ], !dbg !881
  br i1 %tobool106, label %if.then261, label %sw.epilog, !dbg !1040

if.then261:                                       ; preds = %sw.bb258
  %dec = add i32 %paren_depth.1.ph, -1, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %dec, metadata !759, metadata !DIExpression()), !dbg !795
  %cmp265 = icmp eq i32 %dec, 0, !dbg !1042
  %or.cond5 = and i1 %cmp64551, %cmp265, !dbg !1043
  br i1 %or.cond5, label %if.then267, label %if.else315, !dbg !1043

if.then267:                                       ; preds = %if.then261
  %81 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8, !dbg !1044
  %macro270 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %81, i64 0, i32 4, i32 0, !dbg !1045
  %82 = load %struct.cpp_macro*, %struct.cpp_macro** %macro270, align 8, !dbg !1045
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %82, metadata !778, metadata !DIExpression()), !dbg !1046
  %used271 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %82, i64 0, i32 5, !dbg !1047
  %bf.load272 = load i8, i8* %used271, align 2, !dbg !1048
  %bf.set = or i8 %bf.load272, 8, !dbg !1048
  store i8 %bf.set, i8* %used271, align 2, !dbg !1048
  call void @llvm.dbg.value(metadata i32 0, metadata !761, metadata !DIExpression()), !dbg !795
  %83 = load i64, i64* %12, align 8, !dbg !1049
  %sub.ptr.lhs.cast276 = ptrtoint i8* %incdec.ptr29.lcssa50 to i64, !dbg !1050
  %sub.ptr.sub278 = sub i64 %sub.ptr.lhs.cast276, %83, !dbg !1050
  call void @llvm.dbg.value(metadata %struct.fun_macro* %fmacro, metadata !749, metadata !DIExpression(DW_OP_deref)), !dbg !795
  call fastcc void @save_argument(%struct.fun_macro* nonnull %fmacro, i64 %sub.ptr.sub278) #8, !dbg !1051
  %84 = load i32, i32* %argc, align 4, !dbg !1052
  %cmp280 = icmp eq i32 %84, 1, !dbg !1054
  br i1 %cmp280, label %land.lhs.true282, label %if.end296, !dbg !1055

land.lhs.true282:                                 ; preds = %if.then267
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %82, i64 0, i32 4, !dbg !1056
  %85 = load i16, i16* %paramc, align 8, !dbg !1056
  %cmp284 = icmp eq i16 %85, 0, !dbg !1057
  br i1 %cmp284, label %land.lhs.true286, label %if.end296, !dbg !1058

land.lhs.true286:                                 ; preds = %land.lhs.true282
  %86 = load i8*, i8** %base, align 8, !dbg !1059
  %87 = load i64, i64* %offset, align 8, !dbg !1060
  %add.ptr290 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !1061
  %add.ptr291 = getelementptr inbounds i8, i8* %add.ptr290, i64 %87, !dbg !1062
  %cmp292 = icmp eq i8* %incdec.ptr29.lcssa50, %add.ptr291, !dbg !1063
  br i1 %cmp292, label %if.then294, label %if.end296, !dbg !1064

if.then294:                                       ; preds = %land.lhs.true286
  store i32 0, i32* %argc, align 4, !dbg !1065
  br label %if.end296, !dbg !1066

if.end296:                                        ; preds = %if.then294, %land.lhs.true286, %land.lhs.true282, %if.then267
  %88 = phi i32 [ 0, %if.then294 ], [ 1, %land.lhs.true286 ], [ 1, %land.lhs.true282 ], [ %84, %if.then267 ], !dbg !1067
  %89 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8, !dbg !1069
  %call299 = call zeroext i8 @_cpp_arguments_ok(%struct.cpp_reader* %pfile, %struct.cpp_macro* %82, %struct.cpp_hashnode* %89, i32 %88) #7, !dbg !1070
  %tobool300 = icmp eq i8 %call299, 0, !dbg !1070
  br i1 %tobool300, label %cleanup312, label %if.then301, !dbg !1071

if.then301:                                       ; preds = %if.end296
  %90 = load i8*, i8** %base, align 8, !dbg !1072
  %91 = load i64, i64* %offset, align 8, !dbg !1074
  %add.ptr305 = getelementptr inbounds i8, i8* %90, i64 %91, !dbg !1075
  store i8* %add.ptr305, i8** %cur11, align 8, !dbg !1076
  store i8* %incdec.ptr.lcssa73, i8** %cur18, align 8, !dbg !1077
  call void @llvm.dbg.value(metadata %struct.fun_macro* %fmacro, metadata !749, metadata !DIExpression(DW_OP_deref)), !dbg !795
  call fastcc void @replace_args_and_push(%struct.cpp_reader* %pfile, %struct.fun_macro* nonnull %fmacro) #8, !dbg !1078
  br label %cleanup312, !dbg !1079

cleanup312:                                       ; preds = %if.end296, %if.then301
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then301 ], [ true, %if.end296 ]
  br i1 %cleanup.dest.slot.1, label %sw.epilog, label %new_context.loopexit.loopexit20

if.else315:                                       ; preds = %if.then261
  switch i32 %lex_state.1.ph12592, label %sw.epilog [
    i32 7, label %if.then321
    i32 4, label %if.then321
  ], !dbg !1080

if.then321:                                       ; preds = %if.else315, %if.else315
  call void @llvm.dbg.value(metadata i32 0, metadata !761, metadata !DIExpression()), !dbg !795
  br label %sw.epilog, !dbg !1082

sw.bb325.us-lcssa:                                ; preds = %if.end
  %lex_state.1.ph12.lcssa566 = phi i32 [ %lex_state.1.ph12, %if.end ]
  %cmp64.lcssa533 = phi i1 [ %cmp64, %if.end ], !dbg !862
  %incdec.ptr.lcssa464 = phi i8* [ %incdec.ptr, %if.end ], !dbg !879
  %incdec.ptr29.lcssa437 = phi i8* [ %incdec.ptr29, %if.end ], !dbg !881
  %cur.0.lcssa412 = phi i8* [ %cur.0, %if.end ], !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa412, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa412, metadata !747, metadata !DIExpression()), !dbg !795
  br label %sw.bb325, !dbg !932

sw.bb325:                                         ; preds = %sw.bb325.us-lcssa.us, %sw.bb325.us-lcssa
  %lex_state.1.ph12593 = phi i32 [ %lex_state.1.ph12.lcssa566, %sw.bb325.us-lcssa ], [ %lex_state.1.ph12.lcssa577, %sw.bb325.us-lcssa.us ]
  %cmp64554 = phi i1 [ %cmp64.lcssa533, %sw.bb325.us-lcssa ], [ %cmp64.lcssa544, %sw.bb325.us-lcssa.us ]
  %incdec.ptr.lcssa74 = phi i8* [ %incdec.ptr.lcssa464, %sw.bb325.us-lcssa ], [ %incdec.ptr.us.lcssa521, %sw.bb325.us-lcssa.us ], !dbg !879
  %incdec.ptr29.lcssa51 = phi i8* [ %incdec.ptr29.lcssa437, %sw.bb325.us-lcssa ], [ %incdec.ptr29.us.lcssa498, %sw.bb325.us-lcssa.us ], !dbg !881
  %cur.0.lcssa29 = phi i8* [ %cur.0.lcssa412, %sw.bb325.us-lcssa ], [ %cur.0.us.lcssa476, %sw.bb325.us-lcssa.us ], !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa29, metadata !747, metadata !DIExpression()), !dbg !795
  %cmp327 = icmp eq i8* %cur.0.lcssa29, %18, !dbg !932
  br i1 %cmp327, label %land.lhs.true329, label %if.end425, !dbg !1083

land.lhs.true329:                                 ; preds = %sw.bb325
  %92 = load %struct.cpp_context*, %struct.cpp_context** %context2, align 8, !dbg !1084
  %prev331 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %92, i64 0, i32 1, !dbg !1085
  %93 = load %struct.cpp_context*, %struct.cpp_context** %prev331, align 8, !dbg !1085
  %tobool332 = icmp eq %struct.cpp_context* %93, null, !dbg !1086
  br i1 %tobool332, label %land.lhs.true333, label %if.end425, !dbg !1087

land.lhs.true333:                                 ; preds = %land.lhs.true329
  %94 = load i8, i8* %in_directive, align 8, !dbg !1088
  %tobool336 = icmp eq i8 %94, 0, !dbg !1089
  br i1 %tobool336, label %if.then337, label %if.end425, !dbg !1090

if.then337:                                       ; preds = %land.lhs.true333
  store i8* %incdec.ptr29.lcssa51, i8** %cur11, align 8, !dbg !1091
  %call340 = call fastcc i8* @skip_whitespace(%struct.cpp_reader* %pfile, i8* nonnull %incdec.ptr.lcssa74, i32 1) #8, !dbg !1092
  call void @llvm.dbg.value(metadata i8* %call340, metadata !747, metadata !DIExpression()), !dbg !795
  %95 = load i8*, i8** %cur11, align 8, !dbg !1093
  call void @llvm.dbg.value(metadata i8* %95, metadata !748, metadata !DIExpression()), !dbg !795
  %96 = load i8, i8* %call340, align 1, !dbg !1094
  %cmp344 = icmp eq i8 %96, 10, !dbg !1095
  br i1 %cmp344, label %if.then346, label %if.else373, !dbg !1096

if.then346:                                       ; preds = %if.then337
  %cmp64554.lcssa = phi i1 [ %cmp64554, %if.then337 ]
  %97 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer4, align 8, !dbg !1097
  %need_line348 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %97, i64 0, i32 13, !dbg !1098
  store i8 1, i8* %need_line348, align 8, !dbg !1099
  %98 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !1100
  call void @llvm.dbg.value(metadata %struct.line_maps* %98, metadata !783, metadata !DIExpression()), !dbg !1101
  %maps353 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %98, i64 0, i32 0, !dbg !1100
  %99 = load %struct.line_map*, %struct.line_map** %maps353, align 8, !dbg !1100
  %used354 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %98, i64 0, i32 2, !dbg !1100
  %100 = load i32, i32* %used354, align 4, !dbg !1100
  %sub355 = add i32 %100, -1, !dbg !1100
  %idxprom356 = zext i32 %sub355 to i64, !dbg !1100
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !789, metadata !DIExpression()), !dbg !1101
  %highest_line359 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %98, i64 0, i32 8, !dbg !1100
  %101 = load i32, i32* %highest_line359, align 4, !dbg !1100
  %start_location360 = getelementptr inbounds %struct.line_map, %struct.line_map* %99, i64 %idxprom356, i32 2, !dbg !1100
  %102 = load i32, i32* %start_location360, align 4, !dbg !1100
  %sub361 = sub i32 %101, %102, !dbg !1100
  %column_bits362 = getelementptr inbounds %struct.line_map, %struct.line_map* %99, i64 %idxprom356, i32 6, !dbg !1100
  %bf.load363 = load i8, i8* %column_bits362, align 2, !dbg !1100
  %bf.cast364 = zext i8 %bf.load363 to i32, !dbg !1100
  %shr365 = lshr i32 %sub361, %bf.cast364, !dbg !1100
  %to_line366 = getelementptr inbounds %struct.line_map, %struct.line_map* %99, i64 %idxprom356, i32 1, !dbg !1100
  %103 = load i32, i32* %to_line366, align 8, !dbg !1100
  %add367 = add i32 %shr365, %103, !dbg !1100
  call void @llvm.dbg.value(metadata i32 %add367, metadata !790, metadata !DIExpression()), !dbg !1101
  %add369 = add i32 %add367, 1, !dbg !1100
  %call370 = call i32 @linemap_line_start(%struct.line_maps* %98, i32 %add369, i32 0) #7, !dbg !1100
  call void @llvm.dbg.value(metadata i8 0, metadata !745, metadata !DIExpression()), !dbg !795
  br label %done, !dbg !1102

if.else373:                                       ; preds = %if.then337
  call void @llvm.dbg.value(metadata i8 0, metadata !791, metadata !DIExpression()), !dbg !1103
  %idxprom376 = zext i8 %96 to i64, !dbg !1104
  %arrayidx377 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom376, !dbg !1104
  %104 = load i16, i16* %arrayidx377, align 2, !dbg !1104
  %105 = and i16 %104, 4, !dbg !1104
  %tobool380 = icmp eq i16 %105, 0, !dbg !1104
  br i1 %tobool380, label %if.else385, label %land.lhs.true381, !dbg !1105

land.lhs.true381:                                 ; preds = %if.else373
  %106 = load i32, i32* %lang, align 4, !dbg !1106
  %cmp382 = icmp eq i32 %106, 9, !dbg !1107
  br i1 %cmp382, label %if.else385, label %if.end408, !dbg !1108

if.else385:                                       ; preds = %land.lhs.true381, %if.else373
  %107 = and i16 %104, 512, !dbg !1109
  %tobool392 = icmp eq i16 %107, 0, !dbg !1109
  br i1 %tobool392, label %lor.lhs.false393, label %if.then401, !dbg !1109

lor.lhs.false393:                                 ; preds = %if.else385
  %cmp395 = icmp eq i8 %96, 36, !dbg !1109
  br i1 %cmp395, label %land.lhs.true397, label %if.end408, !dbg !1109

land.lhs.true397:                                 ; preds = %lor.lhs.false393
  %108 = load i8, i8* %dollars_in_ident, align 2, !dbg !1109
  %tobool400 = icmp eq i8 %108, 0, !dbg !1109
  br i1 %tobool400, label %if.end408, label %if.then401, !dbg !1110

if.then401:                                       ; preds = %land.lhs.true397, %if.else385
  %call402 = call fastcc %struct.cpp_hashnode* @lex_identifier(%struct.cpp_reader* %pfile, i8* %call340) #8, !dbg !1111
  %is_directive = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call402, i64 0, i32 1, !dbg !1112
  %bf.load403 = load i8, i8* %is_directive, align 8, !dbg !1112
  %bf.clear404 = and i8 %bf.load403, 1, !dbg !1112
  %bf.cast405 = zext i8 %bf.clear404 to i32, !dbg !1112
  br label %if.end408, !dbg !1113

if.end408:                                        ; preds = %land.lhs.true381, %land.lhs.true397, %lor.lhs.false393, %if.then401
  %do_it.1 = phi i32 [ 1, %land.lhs.true381 ], [ %bf.cast405, %if.then401 ], [ 0, %land.lhs.true397 ], [ 0, %lor.lhs.false393 ], !dbg !842
  call void @llvm.dbg.value(metadata i32 %do_it.1, metadata !791, metadata !DIExpression()), !dbg !1103
  %tobool410 = icmp eq i32 %do_it.1, 0, !dbg !1114
  br i1 %tobool410, label %lor.lhs.false411, label %if.then416, !dbg !1116

lor.lhs.false411:                                 ; preds = %if.end408
  %109 = load i32, i32* %lang, align 4, !dbg !1117
  %cmp414 = icmp eq i32 %109, 9, !dbg !1118
  br i1 %cmp414, label %cleanup421, label %if.then416, !dbg !1119

if.then416:                                       ; preds = %lor.lhs.false411, %if.end408
  %110 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer4, align 8, !dbg !1120
  %cur418 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %110, i64 0, i32 0, !dbg !1122
  store i8* %call340, i8** %cur418, align 8, !dbg !1123
  %call419 = call i32 @_cpp_handle_directive(%struct.cpp_reader* %pfile, i32 0) #7, !dbg !1124
  call void @llvm.dbg.value(metadata i8 0, metadata !745, metadata !DIExpression()), !dbg !795
  br label %cleanup421, !dbg !1125

cleanup421:                                       ; preds = %lor.lhs.false411, %if.then416
  %result.2 = phi i8 [ 0, %if.then416 ], [ %result.1.ph16.ph, %lor.lhs.false411 ], !dbg !795
  %cleanup.dest.slot.2 = phi i1 [ false, %if.then416 ], [ true, %lor.lhs.false411 ]
  call void @llvm.dbg.value(metadata i8 %result.2, metadata !745, metadata !DIExpression()), !dbg !795
  br i1 %cleanup.dest.slot.2, label %if.end425, label %done.loopexit.loopexit17

if.end425:                                        ; preds = %land.lhs.true333, %land.lhs.true329, %cleanup421, %sw.bb325
  %out.9 = phi i8* [ %incdec.ptr29.lcssa51, %land.lhs.true329 ], [ %incdec.ptr29.lcssa51, %land.lhs.true333 ], [ %incdec.ptr29.lcssa51, %sw.bb325 ], [ %95, %cleanup421 ], !dbg !1126
  %cur.3 = phi i8* [ %incdec.ptr.lcssa74, %land.lhs.true329 ], [ %incdec.ptr.lcssa74, %land.lhs.true333 ], [ %incdec.ptr.lcssa74, %sw.bb325 ], [ %call340, %cleanup421 ], !dbg !1126
  %result.3 = phi i8 [ %result.1.ph16.ph, %land.lhs.true329 ], [ %result.1.ph16.ph, %land.lhs.true333 ], [ %result.1.ph16.ph, %sw.bb325 ], [ %result.2, %cleanup421 ], !dbg !795
  call void @llvm.dbg.value(metadata i8 %result.3, metadata !745, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.3, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.9, metadata !748, metadata !DIExpression()), !dbg !795
  %111 = load i8, i8* %in_expression, align 4, !dbg !1127
  %tobool428 = icmp eq i8 %111, 0, !dbg !1129
  br i1 %tobool428, label %sw.epilog.loopexit.loopexit18.loopexit19, label %for.cond.outer11.outer, !dbg !1130, !llvm.loop !917

sw.epilog.loopexit.loopexit.us-lcssa.loopexit:    ; preds = %if.end
  %result.1.ph16.ph.lcssa = phi i8 [ %result.1.ph16.ph, %if.end ]
  %lex_state.1.ph12.lcssa = phi i32 [ %lex_state.1.ph12, %if.end ]
  %incdec.ptr.lcssa454 = phi i8* [ %incdec.ptr, %if.end ], !dbg !879
  %incdec.ptr29.lcssa427 = phi i8* [ %incdec.ptr29, %if.end ], !dbg !881
  br label %sw.epilog.loopexit.loopexit.us-lcssa, !dbg !920

sw.epilog.loopexit.loopexit.us-lcssa:             ; preds = %sw.epilog.loopexit.loopexit.us-lcssa.loopexit, %sw.bb105
  %result.1.ph16.ph633 = phi i8 [ %result.1.ph16.ph.lcssa, %sw.epilog.loopexit.loopexit.us-lcssa.loopexit ], [ %result.1.ph16.ph.lcssa600, %sw.bb105 ]
  %lex_state.1.ph12589 = phi i32 [ %lex_state.1.ph12.lcssa, %sw.epilog.loopexit.loopexit.us-lcssa.loopexit ], [ %lex_state.1.ph12.lcssa562, %sw.bb105 ]
  %incdec.ptr467 = phi i8* [ %incdec.ptr.lcssa454, %sw.epilog.loopexit.loopexit.us-lcssa.loopexit ], [ %incdec.ptr.lcssa459, %sw.bb105 ]
  %incdec.ptr29440 = phi i8* [ %incdec.ptr29.lcssa427, %sw.epilog.loopexit.loopexit.us-lcssa.loopexit ], [ %incdec.ptr29.lcssa432, %sw.bb105 ]
  br label %sw.epilog.loopexit.loopexit, !dbg !920

sw.epilog.loopexit.loopexit:                      ; preds = %sw.epilog.loopexit.loopexit.us-lcssa.us, %sw.epilog.loopexit.loopexit.us-lcssa
  %result.1.ph16.ph632 = phi i8 [ %result.1.ph16.ph633, %sw.epilog.loopexit.loopexit.us-lcssa ], [ %result.1.ph16.ph.lcssa606, %sw.epilog.loopexit.loopexit.us-lcssa.us ]
  %lex_state.1.ph12588 = phi i32 [ %lex_state.1.ph12589, %sw.epilog.loopexit.loopexit.us-lcssa ], [ %lex_state.1.ph12.lcssa569, %sw.epilog.loopexit.loopexit.us-lcssa.us ]
  %incdec.ptr.lcssa = phi i8* [ %incdec.ptr467, %sw.epilog.loopexit.loopexit.us-lcssa ], [ %incdec.ptr.us.lcssa, %sw.epilog.loopexit.loopexit.us-lcssa.us ], !dbg !879
  %incdec.ptr29.lcssa = phi i8* [ %incdec.ptr29440, %sw.epilog.loopexit.loopexit.us-lcssa ], [ %incdec.ptr29.us.lcssa, %sw.epilog.loopexit.loopexit.us-lcssa.us ], !dbg !881
  br label %sw.epilog.loopexit, !dbg !920

sw.epilog.loopexit.loopexit18.loopexit:           ; preds = %cleanup, %land.lhs.true123, %sw.bb120
  %result.1.ph16.ph.lcssa617 = phi i8 [ %result.1.ph16.ph, %cleanup ], [ %result.1.ph16.ph, %land.lhs.true123 ], [ %result.1.ph16.ph, %sw.bb120 ]
  %lex_state.12.ph.ph.ph = phi i32 [ %lex_state.1.ph12, %sw.bb120 ], [ %lex_state.1.ph12.ph, %land.lhs.true123 ], [ %lex_state.2, %cleanup ]
  %out.10.ph.ph.ph = phi i8* [ %incdec.ptr29.lcssa47, %sw.bb120 ], [ %incdec.ptr29.lcssa47, %land.lhs.true123 ], [ %out.4, %cleanup ]
  %cur.4.ph.ph.ph = phi i8* [ %incdec.ptr.lcssa70, %sw.bb120 ], [ %incdec.ptr.lcssa70, %land.lhs.true123 ], [ %65, %cleanup ]
  br label %sw.epilog.loopexit.loopexit18, !dbg !920

sw.epilog.loopexit.loopexit18.loopexit19:         ; preds = %if.end425
  %out.9.lcssa = phi i8* [ %out.9, %if.end425 ], !dbg !1126
  %cur.3.lcssa = phi i8* [ %cur.3, %if.end425 ], !dbg !1126
  %result.3.lcssa = phi i8 [ %result.3, %if.end425 ], !dbg !795
  %lex_state.1.ph12593.lcssa595 = phi i32 [ %lex_state.1.ph12593, %if.end425 ]
  call void @llvm.dbg.value(metadata i8* %out.9.lcssa, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.3.lcssa, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 %result.3.lcssa, metadata !745, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.9.lcssa, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.3.lcssa, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 %result.3.lcssa, metadata !745, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.9.lcssa, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.3.lcssa, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 %result.3.lcssa, metadata !745, metadata !DIExpression()), !dbg !795
  br label %sw.epilog.loopexit.loopexit18, !dbg !920

sw.epilog.loopexit.loopexit18:                    ; preds = %sw.epilog.loopexit.loopexit18.loopexit19, %sw.epilog.loopexit.loopexit18.loopexit
  %lex_state.12.ph.ph = phi i32 [ %lex_state.12.ph.ph.ph, %sw.epilog.loopexit.loopexit18.loopexit ], [ %lex_state.1.ph12593.lcssa595, %sw.epilog.loopexit.loopexit18.loopexit19 ]
  %out.10.ph.ph = phi i8* [ %out.10.ph.ph.ph, %sw.epilog.loopexit.loopexit18.loopexit ], [ %out.9.lcssa, %sw.epilog.loopexit.loopexit18.loopexit19 ]
  %cur.4.ph.ph = phi i8* [ %cur.4.ph.ph.ph, %sw.epilog.loopexit.loopexit18.loopexit ], [ %cur.3.lcssa, %sw.epilog.loopexit.loopexit18.loopexit19 ]
  %result.4.ph.ph = phi i8 [ %result.1.ph16.ph.lcssa617, %sw.epilog.loopexit.loopexit18.loopexit ], [ %result.3.lcssa, %sw.epilog.loopexit.loopexit18.loopexit19 ]
  br label %sw.epilog.loopexit, !dbg !920

sw.epilog.loopexit:                               ; preds = %sw.epilog.loopexit.loopexit18, %sw.epilog.loopexit.loopexit
  %lex_state.12.ph = phi i32 [ %lex_state.1.ph12588, %sw.epilog.loopexit.loopexit ], [ %lex_state.12.ph.ph, %sw.epilog.loopexit.loopexit18 ]
  %out.10.ph = phi i8* [ %incdec.ptr29.lcssa, %sw.epilog.loopexit.loopexit ], [ %out.10.ph.ph, %sw.epilog.loopexit.loopexit18 ]
  %cur.4.ph = phi i8* [ %incdec.ptr.lcssa, %sw.epilog.loopexit.loopexit ], [ %cur.4.ph.ph, %sw.epilog.loopexit.loopexit18 ]
  %result.4.ph = phi i8 [ %result.1.ph16.ph632, %sw.epilog.loopexit.loopexit ], [ %result.4.ph.ph, %sw.epilog.loopexit.loopexit18 ]
  br label %sw.epilog, !dbg !920

sw.epilog:                                        ; preds = %sw.epilog.loopexit, %if.then216, %sw.bb258, %if.then321, %if.else315, %cleanup312, %sw.bb242, %if.then251, %sw.bb210, %if.end238, %if.then213, %if.else221, %lor.lhs.false97, %if.then101, %sw.bb81, %sw.bb76, %sw.bb72
  %quote.6 = phi i32 [ %spec.select1, %sw.bb76 ], [ %spec.select, %sw.bb72 ], [ %quote.5, %sw.bb81 ], [ %quote.1.ph, %if.then101 ], [ %quote.1.ph, %lor.lhs.false97 ], [ 0, %if.then216 ], [ 0, %if.else221 ], [ 0, %if.then213 ], [ 0, %if.end238 ], [ %quote.1.ph, %sw.bb210 ], [ 0, %if.then251 ], [ %quote.1.ph, %sw.bb242 ], [ 0, %cleanup312 ], [ 0, %if.else315 ], [ 0, %if.then321 ], [ %quote.1.ph, %sw.bb258 ], [ %quote.1.ph, %sw.epilog.loopexit ], !dbg !795
  %paren_depth.6 = phi i32 [ %paren_depth.1.ph, %sw.bb76 ], [ %paren_depth.1.ph, %sw.bb72 ], [ %paren_depth.1.ph, %sw.bb81 ], [ %paren_depth.1.ph, %if.then101 ], [ %paren_depth.1.ph, %lor.lhs.false97 ], [ %inc, %if.then216 ], [ 1, %if.else221 ], [ %inc, %if.then213 ], [ %inc, %if.end238 ], [ %paren_depth.1.ph, %sw.bb210 ], [ 1, %if.then251 ], [ %paren_depth.1.ph, %sw.bb242 ], [ 0, %cleanup312 ], [ %dec, %if.else315 ], [ %dec, %if.then321 ], [ %paren_depth.1.ph, %sw.bb258 ], [ %paren_depth.1.ph, %sw.epilog.loopexit ], !dbg !795
  %lex_state.12 = phi i32 [ %lex_state.1.ph12585, %sw.bb76 ], [ %lex_state.1.ph12584, %sw.bb72 ], [ %lex_state.1.ph12586, %sw.bb81 ], [ %lex_state.1.ph12587, %if.then101 ], [ %lex_state.1.ph12587, %lor.lhs.false97 ], [ 0, %if.then216 ], [ 2, %if.else221 ], [ 7, %if.then213 ], [ %lex_state.5, %if.end238 ], [ %lex_state.1.ph12590, %sw.bb210 ], [ 2, %if.then251 ], [ %lex_state.1.ph12591, %sw.bb242 ], [ 0, %cleanup312 ], [ %lex_state.1.ph12592, %if.else315 ], [ 0, %if.then321 ], [ %lex_state.1.ph12592, %sw.bb258 ], [ %lex_state.12.ph, %sw.epilog.loopexit ], !dbg !795
  %out.10 = phi i8* [ %incdec.ptr29.lcssa44, %sw.bb76 ], [ %incdec.ptr29.lcssa43, %sw.bb72 ], [ %incdec.ptr29.lcssa45, %sw.bb81 ], [ %incdec.ptr103, %if.then101 ], [ %incdec.ptr29.lcssa46, %lor.lhs.false97 ], [ %incdec.ptr29.lcssa48, %if.then216 ], [ %add.ptr225, %if.else221 ], [ %incdec.ptr29.lcssa48, %if.then213 ], [ %incdec.ptr29.lcssa48, %if.end238 ], [ %incdec.ptr29.lcssa48, %sw.bb210 ], [ %incdec.ptr29.lcssa49, %if.then251 ], [ %incdec.ptr29.lcssa49, %sw.bb242 ], [ %incdec.ptr29.lcssa50, %cleanup312 ], [ %incdec.ptr29.lcssa50, %if.else315 ], [ %incdec.ptr29.lcssa50, %if.then321 ], [ %incdec.ptr29.lcssa50, %sw.bb258 ], [ %out.10.ph, %sw.epilog.loopexit ], !dbg !1126
  %cur.4 = phi i8* [ %incdec.ptr.lcssa67, %sw.bb76 ], [ %incdec.ptr.lcssa66, %sw.bb72 ], [ %incdec.ptr.lcssa68, %sw.bb81 ], [ %incdec.ptr102, %if.then101 ], [ %incdec.ptr.lcssa69, %lor.lhs.false97 ], [ %incdec.ptr.lcssa71, %if.then216 ], [ %incdec.ptr.lcssa71, %if.else221 ], [ %incdec.ptr.lcssa71, %if.then213 ], [ %incdec.ptr.lcssa71, %if.end238 ], [ %incdec.ptr.lcssa71, %sw.bb210 ], [ %incdec.ptr.lcssa72, %if.then251 ], [ %incdec.ptr.lcssa72, %sw.bb242 ], [ %incdec.ptr.lcssa73, %cleanup312 ], [ %incdec.ptr.lcssa73, %if.else315 ], [ %incdec.ptr.lcssa73, %if.then321 ], [ %incdec.ptr.lcssa73, %sw.bb258 ], [ %cur.4.ph, %sw.epilog.loopexit ], !dbg !1126
  %result.4 = phi i8 [ %result.1.ph16.ph628, %sw.bb76 ], [ %result.1.ph16.ph627, %sw.bb72 ], [ %result.1.ph16.ph629, %sw.bb81 ], [ %result.1.ph16.ph631, %if.then101 ], [ %result.1.ph16.ph630, %lor.lhs.false97 ], [ %result.1.ph16.ph634, %if.then216 ], [ %result.1.ph16.ph634, %if.else221 ], [ %result.1.ph16.ph634, %if.then213 ], [ %result.1.ph16.ph634, %if.end238 ], [ %result.1.ph16.ph634, %sw.bb210 ], [ %result.1.ph16.ph635, %if.then251 ], [ %result.1.ph16.ph635, %sw.bb242 ], [ %result.1.ph16.ph625, %cleanup312 ], [ %result.1.ph16.ph625, %if.else315 ], [ %result.1.ph16.ph625, %if.then321 ], [ %result.1.ph16.ph625, %sw.bb258 ], [ %result.4.ph, %sw.epilog.loopexit ], !dbg !850
  call void @llvm.dbg.value(metadata i8 %result.4, metadata !745, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %cur.4, metadata !747, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8* %out.10, metadata !748, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %lex_state.12, metadata !761, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %paren_depth.6, metadata !759, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i32 %quote.6, metadata !760, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 0, metadata !762, metadata !DIExpression()), !dbg !795
  %112 = load i8, i8* %in_directive, align 8, !dbg !920
  %tobool433 = icmp eq i8 %112, 0, !dbg !1131
  br i1 %tobool433, label %if.then434, label %if.end436, !dbg !1132

if.then434:                                       ; preds = %sw.epilog
  store i8 0, i8* %mi_valid, align 8, !dbg !1133
  br label %if.end436, !dbg !1134

if.end436:                                        ; preds = %sw.epilog, %if.then434
  switch i32 %lex_state.12, label %if.end454 [
    i32 0, label %for.cond.outer.backedge
    i32 1, label %if.end455
    i32 5, label %if.then453
    i32 6, label %if.then453
    i32 3, label %if.then453
  ], !dbg !1135

if.then453:                                       ; preds = %if.end436, %if.end436, %if.end436
  call void @llvm.dbg.value(metadata i32 0, metadata !761, metadata !DIExpression()), !dbg !795
  br label %if.end454, !dbg !1136

if.end454:                                        ; preds = %if.end436, %if.then453
  %lex_state.13 = phi i32 [ 0, %if.then453 ], [ %lex_state.12, %if.end436 ], !dbg !795
  call void @llvm.dbg.value(metadata i32 %lex_state.13, metadata !761, metadata !DIExpression()), !dbg !795
  br label %if.end455

if.end455:                                        ; preds = %if.end436, %if.end454
  %lex_state.14 = phi i32 [ %lex_state.13, %if.end454 ], [ 0, %if.end436 ], !dbg !1139
  call void @llvm.dbg.value(metadata i32 %lex_state.14, metadata !761, metadata !DIExpression()), !dbg !795
  br label %for.cond.outer.backedge, !dbg !1140

for.cond.outer.backedge:                          ; preds = %if.end455, %if.end436
  %lex_state.1.ph.be = phi i32 [ 0, %if.end436 ], [ %lex_state.14, %if.end455 ]
  br label %for.cond.outer, !dbg !861, !llvm.loop !917

done.loopexit.loopexit.us-lcssa:                  ; preds = %if.end36, %land.lhs.true56, %land.lhs.true59
  %result.1.ph16.ph.lcssa605 = phi i8 [ %result.1.ph16.ph, %if.end36 ], [ %result.1.ph16.ph, %land.lhs.true56 ], [ %result.1.ph16.ph, %land.lhs.true59 ]
  %cmp64.lcssa535 = phi i1 [ %cmp64, %if.end36 ], [ %cmp64, %land.lhs.true56 ], [ %cmp64, %land.lhs.true59 ], !dbg !862
  br label %done.loopexit.loopexit, !dbg !935

done.loopexit.loopexit:                           ; preds = %done.loopexit.loopexit.us-lcssa.us, %done.loopexit.loopexit.us-lcssa
  %result.1.ph16.ph622 = phi i8 [ %result.1.ph16.ph.lcssa621, %done.loopexit.loopexit.us-lcssa.us ], [ %result.1.ph16.ph.lcssa605, %done.loopexit.loopexit.us-lcssa ]
  %cmp64555 = phi i1 [ %cmp64.lcssa549, %done.loopexit.loopexit.us-lcssa.us ], [ %cmp64.lcssa535, %done.loopexit.loopexit.us-lcssa ]
  br label %done.loopexit, !dbg !935

done.loopexit.loopexit17:                         ; preds = %cleanup421
  %result.2.lcssa = phi i8 [ %result.2, %cleanup421 ], !dbg !795
  %cmp64554.lcssa556 = phi i1 [ %cmp64554, %cleanup421 ]
  call void @llvm.dbg.value(metadata i8 %result.2.lcssa, metadata !745, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 %result.2.lcssa, metadata !745, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i8 %result.2.lcssa, metadata !745, metadata !DIExpression()), !dbg !795
  br label %done.loopexit, !dbg !935

done.loopexit:                                    ; preds = %done.loopexit.loopexit17, %done.loopexit.loopexit
  %cmp64553 = phi i1 [ %cmp64555, %done.loopexit.loopexit ], [ %cmp64554.lcssa556, %done.loopexit.loopexit17 ]
  %result.5.ph = phi i8 [ %result.1.ph16.ph622, %done.loopexit.loopexit ], [ %result.2.lcssa, %done.loopexit.loopexit17 ]
  br label %done, !dbg !935

done:                                             ; preds = %done.loopexit, %if.then346
  %cmp64552 = phi i1 [ %cmp64554.lcssa, %if.then346 ], [ %cmp64553, %done.loopexit ]
  %result.5 = phi i8 [ 0, %if.then346 ], [ %result.5.ph, %done.loopexit ], !dbg !795
  call void @llvm.dbg.value(metadata i8 %result.5, metadata !745, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.label(metadata !794), !dbg !1141
  %113 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8, !dbg !935
  %tobool457 = icmp eq %struct._cpp_buff* %113, null, !dbg !1142
  br i1 %tobool457, label %if.end460, label %if.then458, !dbg !1143

if.then458:                                       ; preds = %done
  call void @_cpp_release_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* nonnull %113) #7, !dbg !1144
  br label %if.end460, !dbg !1144

if.end460:                                        ; preds = %done, %if.then458
  br i1 %cmp64552, label %if.then463, label %cleanup468, !dbg !1145

if.then463:                                       ; preds = %if.end460
  %114 = load i32, i32* %line, align 8, !dbg !1146
  %115 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8, !dbg !1148
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %115, i64 0, i32 0, i32 0, !dbg !1148
  %116 = load i8*, i8** %str, align 8, !dbg !1148
  %call466 = call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %114, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %116) #7, !dbg !1149
  br label %cleanup468, !dbg !1149

cleanup468:                                       ; preds = %if.end460, %if.then463
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #9, !dbg !1150
  ret i8 %result.5, !dbg !1150

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @check_output_buffer(%struct.cpp_reader* %pfile, i64 %n) unnamed_addr #2 !dbg !1151 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1155, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %n, metadata !1156, metadata !DIExpression()), !dbg !1161
  %add = add i64 %n, 3, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %add, metadata !1156, metadata !DIExpression()), !dbg !1161
  %limit = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 1, !dbg !1163
  %0 = bitcast i8** %limit to i64*, !dbg !1163
  %1 = load i64, i64* %0, align 8, !dbg !1163
  %cur = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 2, !dbg !1164
  %2 = bitcast i8** %cur to i64*, !dbg !1164
  %3 = load i64, i64* %2, align 8, !dbg !1164
  %sub.ptr.sub = sub i64 %1, %3, !dbg !1165
  %cmp = icmp ugt i64 %add, %sub.ptr.sub, !dbg !1166
  br i1 %cmp, label %if.then, label %if.end, !dbg !1167

if.then:                                          ; preds = %entry
  %base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 0, !dbg !1168
  %4 = bitcast i8** %base to i64*, !dbg !1168
  %5 = load i64, i64* %4, align 8, !dbg !1168
  %sub.ptr.sub7 = sub i64 %3, %5, !dbg !1169
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub7, metadata !1157, metadata !DIExpression()), !dbg !1170
  %add8 = add i64 %sub.ptr.sub7, %add, !dbg !1171
  %mul = mul i64 %add8, 3, !dbg !1172
  %div = lshr i64 %mul, 1, !dbg !1173
  call void @llvm.dbg.value(metadata i64 %div, metadata !1160, metadata !DIExpression()), !dbg !1170
  %.cast = inttoptr i64 %5 to i8*, !dbg !1174
  %call = tail call i8* @xrealloc(i8* %.cast, i64 %div) #7, !dbg !1174
  store i8* %call, i8** %base, align 8, !dbg !1175
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %div, !dbg !1176
  store i8* %add.ptr, i8** %limit, align 8, !dbg !1177
  %add.ptr20 = getelementptr inbounds i8, i8* %call, i64 %sub.ptr.sub7, !dbg !1178
  store i8* %add.ptr20, i8** %cur, align 8, !dbg !1179
  br label %if.end, !dbg !1180

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1181
}

declare dso_local void @_cpp_process_line_notes(%struct.cpp_reader*, i32) local_unnamed_addr #1

declare dso_local void @_cpp_pop_context(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local i32 @linemap_line_start(%struct.line_maps*, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i8* @copy_comment(%struct.cpp_reader* %pfile, i8* %cur, i32 %in_define) unnamed_addr #2 !dbg !1182 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1186, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8* %cur, metadata !1187, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i32 %in_define, metadata !1188, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 0, metadata !1190, metadata !DIExpression()), !dbg !1196
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !1197
  %0 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !1197
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i64 0, i32 8, !dbg !1198
  %1 = load i32, i32* %highest_line, align 4, !dbg !1198
  call void @llvm.dbg.value(metadata i32 %1, metadata !1191, metadata !DIExpression()), !dbg !1196
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1199
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !1199
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %2, metadata !1192, metadata !DIExpression()), !dbg !1196
  %cur2 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i64 0, i32 0, !dbg !1200
  store i8* %cur, i8** %cur2, align 8, !dbg !1201
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1202
  %3 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !1202
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %3, i64 0, i32 1, !dbg !1204
  %4 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8, !dbg !1204
  %tobool = icmp eq %struct.cpp_context* %4, null, !dbg !1205
  br i1 %tobool, label %if.else, label %if.then, !dbg !1206

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8 0, metadata !1189, metadata !DIExpression()), !dbg !1196
  tail call fastcc void @skip_macro_block_comment(%struct.cpp_reader* %pfile) #8, !dbg !1207
  br label %if.end, !dbg !1208

if.else:                                          ; preds = %entry
  %call = tail call zeroext i8 @_cpp_skip_block_comment(%struct.cpp_reader* %pfile) #7, !dbg !1209
  call void @llvm.dbg.value(metadata i8 %call, metadata !1189, metadata !DIExpression()), !dbg !1196
  %phitmp = icmp ne i8 %call, 0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %unterminated.0 = phi i1 [ false, %if.then ], [ %phitmp, %if.else ]
  br i1 %unterminated.0, label %if.then4, label %if.end6, !dbg !1210

if.then4:                                         ; preds = %if.end
  %call5 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %1, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1211
  br label %if.end6, !dbg !1211

if.end6:                                          ; preds = %if.then4, %if.end
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !1213
  %5 = load i8, i8* %in_directive, align 8, !dbg !1213
  %tobool7 = icmp eq i8 %5, 0, !dbg !1215
  br i1 %tobool7, label %if.else20, label %if.then8, !dbg !1216

if.then8:                                         ; preds = %if.end6
  %tobool9 = icmp eq i32 %in_define, 0, !dbg !1217
  br i1 %tobool9, label %if.else16, label %if.then10, !dbg !1220

if.then10:                                        ; preds = %if.then8
  %discard_comments_in_macro_exp = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 6, !dbg !1221
  %6 = load i8, i8* %discard_comments_in_macro_exp, align 4, !dbg !1221
  %tobool11 = icmp eq i8 %6, 0, !dbg !1221
  br i1 %tobool11, label %if.end29, label %if.then12, !dbg !1224

if.then12:                                        ; preds = %if.then10
  %cur13 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 2, !dbg !1225
  %7 = load i8*, i8** %cur13, align 8, !dbg !1226
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !1226
  store i8* %incdec.ptr, i8** %cur13, align 8, !dbg !1226
  br label %if.end29, !dbg !1227

if.else16:                                        ; preds = %if.then8
  %cur18 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 2, !dbg !1228
  %8 = load i8*, i8** %cur18, align 8, !dbg !1228
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !1229
  store i8 32, i8* %arrayidx, align 1, !dbg !1230
  br label %if.end29

if.else20:                                        ; preds = %if.end6
  %discard_comments = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 5, !dbg !1231
  %9 = load i8, i8* %discard_comments, align 1, !dbg !1231
  %tobool22 = icmp eq i8 %9, 0, !dbg !1231
  br i1 %tobool22, label %if.end29, label %if.then23, !dbg !1233

if.then23:                                        ; preds = %if.else20
  %cur25 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 2, !dbg !1234
  %10 = load i8*, i8** %cur25, align 8, !dbg !1235
  %incdec.ptr26 = getelementptr inbounds i8, i8* %10, i64 -1, !dbg !1235
  store i8* %incdec.ptr26, i8** %cur25, align 8, !dbg !1235
  br label %if.end29, !dbg !1236

if.end29:                                         ; preds = %if.then10, %if.else20, %if.then23, %if.else16, %if.then12
  %copy.3 = phi i1 [ false, %if.else16 ], [ false, %if.then12 ], [ true, %if.then10 ], [ false, %if.then23 ], [ true, %if.else20 ]
  br i1 %copy.3, label %if.then31, label %if.end47, !dbg !1237

if.then31:                                        ; preds = %if.end29
  %11 = bitcast %struct.cpp_buffer* %2 to i64*, !dbg !1238
  %12 = load i64, i64* %11, align 8, !dbg !1238
  %sub.ptr.rhs.cast = ptrtoint i8* %cur to i64, !dbg !1239
  %sub.ptr.sub = sub i64 %12, %sub.ptr.rhs.cast, !dbg !1239
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !1193, metadata !DIExpression()), !dbg !1240
  %cur34 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 2, !dbg !1241
  %13 = load i8*, i8** %cur34, align 8, !dbg !1241
  %call35 = tail call i8* @memcpy(i8* %13, i8* %cur, i64 %sub.ptr.sub) #7, !dbg !1242
  %14 = load i8*, i8** %cur34, align 8, !dbg !1243
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %sub.ptr.sub, !dbg !1243
  store i8* %add.ptr, i8** %cur34, align 8, !dbg !1243
  br i1 %unterminated.0, label %if.then39, label %if.end47, !dbg !1244

if.then39:                                        ; preds = %if.then31
  %incdec.ptr42 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !1245
  store i8* %incdec.ptr42, i8** %cur34, align 8, !dbg !1245
  store i8 42, i8* %add.ptr, align 1, !dbg !1248
  %15 = load i8*, i8** %cur34, align 8, !dbg !1249
  %incdec.ptr45 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !1249
  store i8* %incdec.ptr45, i8** %cur34, align 8, !dbg !1249
  store i8 47, i8* %15, align 1, !dbg !1250
  br label %if.end47, !dbg !1251

if.end47:                                         ; preds = %if.then31, %if.then39, %if.end29
  %16 = load i8*, i8** %cur2, align 8, !dbg !1252
  ret i8* %16, !dbg !1253
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_hashnode* @lex_identifier(%struct.cpp_reader* %pfile, i8* %cur) unnamed_addr #2 !dbg !1254 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1258, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i8* %cur, metadata !1259, metadata !DIExpression()), !dbg !1263
  %cur2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 2, !dbg !1264
  %0 = load i8*, i8** %cur2, align 8, !dbg !1264
  call void @llvm.dbg.value(metadata i8* %0, metadata !1261, metadata !DIExpression()), !dbg !1263
  %.pre = load i8, i8* %cur, align 1, !dbg !1265
  br label %do.body, !dbg !1266

do.body:                                          ; preds = %do.body, %entry
  %1 = phi i8 [ %.pre, %entry ], [ %2, %do.body ], !dbg !1265
  %cur.addr.0 = phi i8* [ %cur, %entry ], [ %incdec.ptr, %do.body ]
  %out.0 = phi i8* [ %0, %entry ], [ %incdec.ptr3, %do.body ], !dbg !1263
  call void @llvm.dbg.value(metadata i8* %out.0, metadata !1261, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i8* %cur.addr.0, metadata !1259, metadata !DIExpression()), !dbg !1263
  %incdec.ptr = getelementptr inbounds i8, i8* %cur.addr.0, i64 1, !dbg !1267
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1259, metadata !DIExpression()), !dbg !1263
  %incdec.ptr3 = getelementptr inbounds i8, i8* %out.0, i64 1, !dbg !1268
  call void @llvm.dbg.value(metadata i8* %incdec.ptr3, metadata !1261, metadata !DIExpression()), !dbg !1263
  store i8 %1, i8* %out.0, align 1, !dbg !1269
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !1270
  %idxprom = zext i8 %2 to i64, !dbg !1270
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !1270
  %3 = load i16, i16* %arrayidx, align 2, !dbg !1270
  %4 = and i16 %3, 516, !dbg !1270
  %tobool = icmp eq i16 %4, 0, !dbg !1271
  br i1 %tobool, label %do.end, label %do.body, !dbg !1271, !llvm.loop !1272

do.end:                                           ; preds = %do.body
  %incdec.ptr.lcssa = phi i8* [ %incdec.ptr, %do.body ], !dbg !1267
  %incdec.ptr3.lcssa = phi i8* [ %incdec.ptr3, %do.body ], !dbg !1268
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1274
  %5 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !1274
  %u = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %5, i64 0, i32 2, !dbg !1274
  %cur6 = bitcast %union.anon* %u to i8**, !dbg !1274
  store i8* %incdec.ptr.lcssa, i8** %cur6, align 8, !dbg !1275
  %6 = bitcast i8** %cur2 to i64*, !dbg !1276
  %7 = load i64, i64* %6, align 8, !dbg !1276
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr3.lcssa to i64, !dbg !1277
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %7, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !1260, metadata !DIExpression()), !dbg !1263
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 50, !dbg !1278
  %8 = load %struct.ht*, %struct.ht** %hash_table, align 8, !dbg !1278
  %.cast = inttoptr i64 %7 to i8*, !dbg !1278
  %call = tail call %struct.ht_identifier* @ht_lookup(%struct.ht* %8, i8* %.cast, i64 %sub.ptr.sub, i32 1) #7, !dbg !1278
  %9 = bitcast %struct.ht_identifier* %call to %struct.cpp_hashnode*, !dbg !1278
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %9, metadata !1262, metadata !DIExpression()), !dbg !1263
  store i8* %incdec.ptr3.lcssa, i8** %cur2, align 8, !dbg !1279
  ret %struct.cpp_hashnode* %9, !dbg !1280
}

; Function Attrs: nounwind uwtable
define internal fastcc void @maybe_start_funlike(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, i8* %start, %struct.fun_macro* %macro) unnamed_addr #2 !dbg !1281 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1286, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !1287, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8* %start, metadata !1288, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata %struct.fun_macro* %macro, metadata !1289, metadata !DIExpression()), !dbg !1291
  %macro1 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 4, i32 0, !dbg !1292
  %0 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8, !dbg !1292
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %0, i64 0, i32 4, !dbg !1293
  %1 = load i16, i16* %paramc, align 8, !dbg !1293
  %conv = zext i16 %1 to i64, !dbg !1294
  call void @llvm.dbg.value(metadata i16 %1, metadata !1290, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1291
  %buff = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %macro, i64 0, i32 0, !dbg !1295
  %2 = load %struct._cpp_buff*, %struct._cpp_buff** %buff, align 8, !dbg !1295
  %tobool = icmp eq %struct._cpp_buff* %2, null, !dbg !1297
  br i1 %tobool, label %if.end, label %if.then, !dbg !1298

if.then:                                          ; preds = %entry
  tail call void @_cpp_release_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff* nonnull %2) #7, !dbg !1299
  br label %if.end, !dbg !1299

if.end:                                           ; preds = %entry, %if.then
  %add = shl nuw nsw i64 %conv, 3, !dbg !1300
  %mul = add nuw nsw i64 %add, 8, !dbg !1300
  %call = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 %mul) #7, !dbg !1301
  store %struct._cpp_buff* %call, %struct._cpp_buff** %buff, align 8, !dbg !1302
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %call, i64 0, i32 2, !dbg !1303
  %3 = bitcast i8** %cur to i64*, !dbg !1303
  %4 = load i64, i64* %3, align 8, !dbg !1303
  %args = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %macro, i64 0, i32 1, !dbg !1304
  %5 = bitcast i64** %args to i64*, !dbg !1305
  store i64 %4, i64* %5, align 8, !dbg !1305
  %node6 = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %macro, i64 0, i32 2, !dbg !1306
  store %struct.cpp_hashnode* %node, %struct.cpp_hashnode** %node6, align 8, !dbg !1307
  %base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 0, !dbg !1308
  %6 = bitcast i8** %base to i64*, !dbg !1308
  %7 = load i64, i64* %6, align 8, !dbg !1308
  %sub.ptr.lhs.cast = ptrtoint i8* %start to i64, !dbg !1309
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %7, !dbg !1309
  %offset = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %macro, i64 0, i32 3, !dbg !1310
  store i64 %sub.ptr.sub, i64* %offset, align 8, !dbg !1311
  %argc = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %macro, i64 0, i32 5, !dbg !1312
  store i32 0, i32* %argc, align 4, !dbg !1313
  ret void, !dbg !1314
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @recursive_macro(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) unnamed_addr #2 !dbg !1315 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1319, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !1320, metadata !DIExpression()), !dbg !1326
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 3, !dbg !1327
  %bf.load = load i16, i16* %flags, align 2, !dbg !1327
  %0 = lshr i16 %bf.load, 11, !dbg !1328
  %1 = trunc i16 %0 to i8, !dbg !1328
  %2 = and i8 %1, 1, !dbg !1328
  call void @llvm.dbg.value(metadata i8 %2, metadata !1321, metadata !DIExpression()), !dbg !1326
  %tobool3 = icmp eq i8 %2, 0, !dbg !1329
  br i1 %tobool3, label %if.end18, label %land.lhs.true, !dbg !1330

land.lhs.true:                                    ; preds = %entry
  %macro = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 4, i32 0, !dbg !1331
  %3 = load %struct.cpp_macro*, %struct.cpp_macro** %macro, align 8, !dbg !1331
  %fun_like = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %3, i64 0, i32 5, !dbg !1332
  %bf.load4 = load i8, i8* %fun_like, align 2, !dbg !1332
  %bf.clear = and i8 %bf.load4, 1, !dbg !1332
  %tobool6 = icmp eq i8 %bf.clear, 0, !dbg !1333
  br i1 %tobool6, label %if.end18, label %if.then, !dbg !1334

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i64 0, metadata !1322, metadata !DIExpression()), !dbg !1335
  %context7 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1336
  %4 = load %struct.cpp_context*, %struct.cpp_context** %context7, align 8, !dbg !1336
  call void @llvm.dbg.value(metadata %struct.cpp_context* %4, metadata !1325, metadata !DIExpression()), !dbg !1335
  br label %do.body, !dbg !1337

do.body:                                          ; preds = %if.end, %if.then
  %depth.0 = phi i64 [ 0, %if.then ], [ %inc, %if.end ], !dbg !1335
  %context.0 = phi %struct.cpp_context* [ %4, %if.then ], [ %6, %if.end ], !dbg !1335
  call void @llvm.dbg.value(metadata %struct.cpp_context* %context.0, metadata !1325, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %depth.0, metadata !1322, metadata !DIExpression()), !dbg !1335
  %inc = add i64 %depth.0, 1, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1322, metadata !DIExpression()), !dbg !1335
  %macro8 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %context.0, i64 0, i32 4, !dbg !1340
  %5 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %macro8, align 8, !dbg !1340
  %cmp = icmp eq %struct.cpp_hashnode* %5, %node, !dbg !1342
  %cmp11 = icmp ugt i64 %inc, 20, !dbg !1343
  %or.cond = and i1 %cmp, %cmp11, !dbg !1344
  br i1 %or.cond, label %do.end, label %if.end, !dbg !1344

if.end:                                           ; preds = %do.body
  %prev = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %context.0, i64 0, i32 1, !dbg !1345
  %6 = load %struct.cpp_context*, %struct.cpp_context** %prev, align 8, !dbg !1345
  call void @llvm.dbg.value(metadata %struct.cpp_context* %6, metadata !1325, metadata !DIExpression()), !dbg !1335
  %tobool14 = icmp eq %struct.cpp_context* %6, null, !dbg !1346
  br i1 %tobool14, label %do.end, label %do.body, !dbg !1346, !llvm.loop !1347

do.end:                                           ; preds = %if.end, %do.body
  %context.1 = phi %struct.cpp_context* [ null, %if.end ], [ %context.0, %do.body ], !dbg !1335
  call void @llvm.dbg.value(metadata %struct.cpp_context* %context.1, metadata !1325, metadata !DIExpression()), !dbg !1335
  %cmp15 = icmp ne %struct.cpp_context* %context.1, null, !dbg !1349
  %conv17 = zext i1 %cmp15 to i8, !dbg !1350
  call void @llvm.dbg.value(metadata i8 %conv17, metadata !1321, metadata !DIExpression()), !dbg !1326
  br label %if.end18, !dbg !1351

if.end18:                                         ; preds = %land.lhs.true, %entry, %do.end
  %recursing.0 = phi i8 [ %conv17, %do.end ], [ %2, %land.lhs.true ], [ 0, %entry ], !dbg !1326
  call void @llvm.dbg.value(metadata i8 %recursing.0, metadata !1321, metadata !DIExpression()), !dbg !1326
  %tobool19 = icmp eq i8 %recursing.0, 0, !dbg !1352
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !1354

if.then20:                                        ; preds = %if.end18
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 0, i32 0, !dbg !1355
  %7 = load i8*, i8** %str, align 8, !dbg !1355
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %7) #7, !dbg !1356
  br label %if.end21, !dbg !1356

if.end21:                                         ; preds = %if.end18, %if.then20
  ret i8 %recursing.0, !dbg !1357
}

; Function Attrs: nounwind uwtable
define internal fastcc void @push_replacement_text(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) unnamed_addr #2 !dbg !1358 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1362, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %node, metadata !1363, metadata !DIExpression()), !dbg !1370
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 3, !dbg !1371
  %bf.load = load i16, i16* %flags, align 2, !dbg !1371
  %0 = and i16 %bf.load, 256, !dbg !1372
  %tobool = icmp eq i16 %0, 0, !dbg !1372
  br i1 %tobool, label %if.else, label %if.then, !dbg !1373

if.then:                                          ; preds = %entry
  %call = tail call i8* @_cpp_builtin_macro_text(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node) #7, !dbg !1374
  call void @llvm.dbg.value(metadata i8* %call, metadata !1365, metadata !DIExpression()), !dbg !1370
  %call1 = tail call fastcc i64 @ustrlen(i8* %call) #8, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %call1, metadata !1364, metadata !DIExpression()), !dbg !1370
  %add = add i64 %call1, 1, !dbg !1377
  %call2 = tail call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %pfile, i64 %add) #7, !dbg !1378
  call void @llvm.dbg.value(metadata i8* %call2, metadata !1366, metadata !DIExpression()), !dbg !1370
  %call3 = tail call i8* @memcpy(i8* %call2, i8* %call, i64 %call1) #7, !dbg !1379
  %arrayidx = getelementptr inbounds i8, i8* %call2, i64 %call1, !dbg !1380
  store i8 10, i8* %arrayidx, align 1, !dbg !1381
  call void @llvm.dbg.value(metadata i8* %call2, metadata !1365, metadata !DIExpression()), !dbg !1370
  br label %if.end, !dbg !1382

if.else:                                          ; preds = %entry
  %macro4 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %node, i64 0, i32 4, i32 0, !dbg !1383
  %1 = load %struct.cpp_macro*, %struct.cpp_macro** %macro4, align 8, !dbg !1383
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %1, metadata !1367, metadata !DIExpression()), !dbg !1384
  %used = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %1, i64 0, i32 5, !dbg !1385
  %bf.load5 = load i8, i8* %used, align 2, !dbg !1386
  %exp = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %1, i64 0, i32 1, !dbg !1387
  %text6 = bitcast %union.cpp_macro_u* %exp to i8**, !dbg !1388
  %2 = load i8*, i8** %text6, align 8, !dbg !1388
  call void @llvm.dbg.value(metadata i8* %2, metadata !1365, metadata !DIExpression()), !dbg !1370
  %bf.set9 = or i8 %bf.load5, 24, !dbg !1389
  store i8 %bf.set9, i8* %used, align 2, !dbg !1389
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %1, i64 0, i32 3, !dbg !1390
  %3 = load i32, i32* %count, align 4, !dbg !1390
  %conv = zext i32 %3 to i64, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1364, metadata !DIExpression()), !dbg !1370
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len.0 = phi i64 [ %call1, %if.then ], [ %conv, %if.else ], !dbg !1392
  %text.0 = phi i8* [ %call2, %if.then ], [ %2, %if.else ], !dbg !1392
  call void @llvm.dbg.value(metadata i8* %text.0, metadata !1365, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !1364, metadata !DIExpression()), !dbg !1370
  tail call void @_cpp_push_text_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %node, i8* %text.0, i64 %len.0) #7, !dbg !1393
  ret void, !dbg !1394
}

; Function Attrs: nounwind uwtable
define internal fastcc void @save_replacement_text(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro, i32 %arg_index) unnamed_addr #2 !dbg !1395 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1399, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !1400, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i32 %arg_index, metadata !1401, metadata !DIExpression()), !dbg !1408
  %cur = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 2, !dbg !1409
  %0 = bitcast i8** %cur to i64*, !dbg !1409
  %1 = load i64, i64* %0, align 8, !dbg !1409
  %base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 0, !dbg !1410
  %2 = bitcast i8** %base to i64*, !dbg !1410
  %3 = load i64, i64* %2, align 8, !dbg !1410
  %sub.ptr.sub = sub i64 %1, %3, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !1402, metadata !DIExpression()), !dbg !1408
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 4, !dbg !1412
  %4 = load i16, i16* %paramc, align 8, !dbg !1412
  %cmp = icmp eq i16 %4, 0, !dbg !1413
  br i1 %cmp, label %if.then, label %if.else, !dbg !1414

if.then:                                          ; preds = %entry
  %add = add i64 %sub.ptr.sub, 1, !dbg !1415
  %call = tail call i8* @_cpp_unaligned_alloc(%struct.cpp_reader* %pfile, i64 %add) #7, !dbg !1417
  call void @llvm.dbg.value(metadata i8* %call, metadata !1403, metadata !DIExpression()), !dbg !1408
  %5 = load i8*, i8** %base, align 8, !dbg !1418
  %call5 = tail call i8* @memcpy(i8* %call, i8* %5, i64 %sub.ptr.sub) #7, !dbg !1419
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %sub.ptr.sub, !dbg !1420
  store i8 10, i8* %arrayidx, align 1, !dbg !1421
  %exp6 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 1, !dbg !1422
  %text = bitcast %union.cpp_macro_u* %exp6 to i8**, !dbg !1423
  store i8* %call, i8** %text, align 8, !dbg !1424
  %traditional = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 5, !dbg !1425
  %bf.load = load i8, i8* %traditional, align 2, !dbg !1426
  %bf.set = or i8 %bf.load, 16, !dbg !1426
  store i8 %bf.set, i8* %traditional, align 2, !dbg !1426
  %conv7 = trunc i64 %sub.ptr.sub to i32, !dbg !1427
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 3, !dbg !1428
  store i32 %conv7, i32* %count, align 4, !dbg !1429
  br label %if.end58, !dbg !1430

if.else:                                          ; preds = %entry
  %add9 = add i64 %sub.ptr.sub, 13, !dbg !1431
  %and = and i64 %add9, -8, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %and, metadata !1404, metadata !DIExpression()), !dbg !1432
  %count10 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 3, !dbg !1433
  %6 = load i32, i32* %count10, align 4, !dbg !1433
  %conv11 = zext i32 %6 to i64, !dbg !1435
  %add12 = add i64 %and, %conv11, !dbg !1436
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 5, !dbg !1437
  %7 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !1437
  %limit = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %7, i64 0, i32 3, !dbg !1437
  %8 = bitcast i8** %limit to i64*, !dbg !1437
  %9 = load i64, i64* %8, align 8, !dbg !1437
  %cur14 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %7, i64 0, i32 2, !dbg !1437
  %10 = bitcast i8** %cur14 to i64*, !dbg !1437
  %11 = load i64, i64* %10, align 8, !dbg !1437
  %sub.ptr.sub17 = sub i64 %9, %11, !dbg !1437
  %cmp18 = icmp ugt i64 %add12, %sub.ptr.sub17, !dbg !1438
  %12 = inttoptr i64 %11 to i8*, !dbg !1439
  br i1 %cmp18, label %if.then20, label %if.end, !dbg !1439

if.then20:                                        ; preds = %if.else
  tail call void @_cpp_extend_buff(%struct.cpp_reader* %pfile, %struct._cpp_buff** nonnull %a_buff, i64 %add12) #7, !dbg !1440
  %.pre = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !1441
  %cur26.phi.trans.insert = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %.pre, i64 0, i32 2, !dbg !1432
  %.pre1 = load i8*, i8** %cur26.phi.trans.insert, align 8, !dbg !1441
  %.pre2 = load i32, i32* %count10, align 4, !dbg !1442
  %.pre3 = zext i32 %.pre2 to i64, !dbg !1443
  br label %if.end, !dbg !1440

if.end:                                           ; preds = %if.then20, %if.else
  %idx.ext.pre-phi = phi i64 [ %.pre3, %if.then20 ], [ %conv11, %if.else ], !dbg !1443
  %13 = phi i8* [ %.pre1, %if.then20 ], [ %12, %if.else ], !dbg !1441
  call void @llvm.dbg.value(metadata i8* %13, metadata !1403, metadata !DIExpression()), !dbg !1408
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext.pre-phi, !dbg !1443
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1407, metadata !DIExpression()), !dbg !1432
  %exp28 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 1, !dbg !1444
  %text29 = bitcast %union.cpp_macro_u* %exp28 to i8**, !dbg !1445
  store i8* %13, i8** %text29, align 8, !dbg !1446
  %traditional30 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 5, !dbg !1447
  %bf.load31 = load i8, i8* %traditional30, align 2, !dbg !1448
  %bf.set33 = or i8 %bf.load31, 16, !dbg !1448
  store i8 %bf.set33, i8* %traditional30, align 2, !dbg !1448
  %conv34 = trunc i64 %sub.ptr.sub to i32, !dbg !1449
  %text_len = bitcast i8* %add.ptr to i32*, !dbg !1450
  store i32 %conv34, i32* %text_len, align 4, !dbg !1451
  %conv35 = trunc i32 %arg_index to i16, !dbg !1452
  %arg_index36 = getelementptr inbounds i8, i8* %add.ptr, i64 4, !dbg !1453
  %14 = bitcast i8* %arg_index36 to i16*, !dbg !1453
  store i16 %conv35, i16* %14, align 4, !dbg !1454
  %text37 = getelementptr inbounds i8, i8* %add.ptr, i64 6, !dbg !1455
  %15 = load i8*, i8** %base, align 8, !dbg !1456
  %call40 = tail call i8* @memcpy(i8* nonnull %text37, i8* %15, i64 %sub.ptr.sub) #7, !dbg !1457
  %16 = load i64, i64* %2, align 8, !dbg !1458
  store i64 %16, i64* %0, align 8, !dbg !1459
  %17 = load i32, i32* %count10, align 4, !dbg !1460
  %18 = trunc i64 %and to i32, !dbg !1460
  %conv48 = add i32 %17, %18, !dbg !1460
  store i32 %conv48, i32* %count10, align 4, !dbg !1460
  %cmp49 = icmp eq i32 %arg_index, 0, !dbg !1461
  br i1 %cmp49, label %if.then51, label %if.end58, !dbg !1463

if.then51:                                        ; preds = %if.end
  %19 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !1464
  %cur54 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %19, i64 0, i32 2, !dbg !1464
  %20 = load i8*, i8** %cur54, align 8, !dbg !1465
  %idx.ext55 = zext i32 %conv48 to i64, !dbg !1465
  %add.ptr56 = getelementptr inbounds i8, i8* %20, i64 %idx.ext55, !dbg !1465
  store i8* %add.ptr56, i8** %cur54, align 8, !dbg !1465
  br label %if.end58, !dbg !1464

if.end58:                                         ; preds = %if.end, %if.then51, %if.then
  ret void, !dbg !1466
}

; Function Attrs: nounwind uwtable
define internal fastcc void @save_argument(%struct.fun_macro* %macro, i64 %offset) unnamed_addr #2 !dbg !1467 {
entry:
  call void @llvm.dbg.value(metadata %struct.fun_macro* %macro, metadata !1471, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %offset, metadata !1472, metadata !DIExpression()), !dbg !1473
  %argc = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %macro, i64 0, i32 5, !dbg !1474
  %0 = load i32, i32* %argc, align 4, !dbg !1475
  %inc = add i32 %0, 1, !dbg !1475
  store i32 %inc, i32* %argc, align 4, !dbg !1475
  %node = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %macro, i64 0, i32 2, !dbg !1476
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8, !dbg !1476
  %macro2 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %1, i64 0, i32 4, i32 0, !dbg !1478
  %2 = load %struct.cpp_macro*, %struct.cpp_macro** %macro2, align 8, !dbg !1478
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %2, i64 0, i32 4, !dbg !1479
  %3 = load i16, i16* %paramc, align 8, !dbg !1479
  %conv = zext i16 %3 to i32, !dbg !1480
  %cmp = icmp ugt i32 %inc, %conv, !dbg !1481
  br i1 %cmp, label %if.end, label %if.then, !dbg !1482

if.then:                                          ; preds = %entry
  %args = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %macro, i64 0, i32 1, !dbg !1483
  %4 = load i64*, i64** %args, align 8, !dbg !1483
  %idxprom = zext i32 %inc to i64, !dbg !1484
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %idxprom, !dbg !1484
  store i64 %offset, i64* %arrayidx, align 8, !dbg !1485
  br label %if.end, !dbg !1484

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1486
}

declare dso_local zeroext i8 @_cpp_arguments_ok(%struct.cpp_reader*, %struct.cpp_macro*, %struct.cpp_hashnode*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @replace_args_and_push(%struct.cpp_reader* %pfile, %struct.fun_macro* %fmacro) unnamed_addr #2 !dbg !1487 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1491, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata %struct.fun_macro* %fmacro, metadata !1492, metadata !DIExpression()), !dbg !1513
  %node = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %fmacro, i64 0, i32 2, !dbg !1514
  %0 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8, !dbg !1514
  %macro1 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %0, i64 0, i32 4, i32 0, !dbg !1515
  %1 = load %struct.cpp_macro*, %struct.cpp_macro** %macro1, align 8, !dbg !1515
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %1, metadata !1493, metadata !DIExpression()), !dbg !1513
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %1, i64 0, i32 4, !dbg !1516
  %2 = load i16, i16* %paramc, align 8, !dbg !1516
  %cmp = icmp eq i16 %2, 0, !dbg !1517
  br i1 %cmp, label %if.then, label %if.else, !dbg !1518

if.then:                                          ; preds = %entry
  tail call fastcc void @push_replacement_text(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %0) #8, !dbg !1519
  br label %if.end128, !dbg !1519

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !1499, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 0, metadata !1500, metadata !DIExpression()), !dbg !1520
  %exp4 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %1, i64 0, i32 1, !dbg !1521
  %text = bitcast %union.cpp_macro_u* %exp4 to i8**, !dbg !1522
  %3 = load i8*, i8** %text, align 8, !dbg !1522
  call void @llvm.dbg.value(metadata i8* %3, metadata !1494, metadata !DIExpression()), !dbg !1520
  %args = getelementptr inbounds %struct.fun_macro, %struct.fun_macro* %fmacro, i64 0, i32 1, !dbg !1523
  br label %for.cond, !dbg !1524

for.cond:                                         ; preds = %cleanup, %if.else
  %len.0 = phi i64 [ 0, %if.else ], [ %len.1, %cleanup ], !dbg !1520
  %exp.0 = phi i8* [ %3, %if.else ], [ %exp.1, %cleanup ], !dbg !1525
  call void @llvm.dbg.value(metadata i8* %exp.0, metadata !1494, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !1499, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %exp.0, metadata !1501, metadata !DIExpression()), !dbg !1523
  %text_len = bitcast i8* %exp.0 to i32*, !dbg !1526
  %4 = load i32, i32* %text_len, align 4, !dbg !1526
  %conv5 = zext i32 %4 to i64, !dbg !1527
  %add = add i64 %len.0, %conv5, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %add, metadata !1499, metadata !DIExpression()), !dbg !1520
  %arg_index = getelementptr inbounds i8, i8* %exp.0, i64 4, !dbg !1529
  %5 = bitcast i8* %arg_index to i16*, !dbg !1529
  %6 = load i16, i16* %5, align 4, !dbg !1529
  %cmp7 = icmp eq i16 %6, 0, !dbg !1531
  br i1 %cmp7, label %cleanup, label %if.end, !dbg !1532

if.end:                                           ; preds = %for.cond
  call void @llvm.dbg.value(metadata i8* %exp.0, metadata !1501, metadata !DIExpression()), !dbg !1523
  %7 = load i64*, i64** %args, align 8, !dbg !1533
  %idxprom = zext i16 %6 to i64, !dbg !1534
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %idxprom, !dbg !1534
  %8 = load i64, i64* %arrayidx, align 8, !dbg !1534
  %sub = add nsw i64 %idxprom, -1, !dbg !1535
  %arrayidx15 = getelementptr inbounds i64, i64* %7, i64 %sub, !dbg !1536
  %9 = load i64, i64* %arrayidx15, align 8, !dbg !1536
  %10 = xor i64 %9, 9223372036854775807, !dbg !1537
  %sub17 = add i64 %8, %10, !dbg !1537
  %mul = shl i64 %sub17, 1, !dbg !1538
  %add18 = add i64 %add, %mul, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %add18, metadata !1499, metadata !DIExpression()), !dbg !1520
  %add22 = add nuw nsw i64 %conv5, 13, !dbg !1540
  %and = and i64 %add22, 8589934584, !dbg !1540
  %add.ptr = getelementptr inbounds i8, i8* %exp.0, i64 %and, !dbg !1541
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1494, metadata !DIExpression()), !dbg !1520
  br label %cleanup, !dbg !1542

cleanup:                                          ; preds = %for.cond, %if.end
  %len.1 = phi i64 [ %add18, %if.end ], [ %add, %for.cond ], !dbg !1523
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end ], [ false, %for.cond ]
  %exp.1 = phi i8* [ %add.ptr, %if.end ], [ %exp.0, %for.cond ], !dbg !1543
  call void @llvm.dbg.value(metadata i8* %exp.1, metadata !1494, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %len.1, metadata !1499, metadata !DIExpression()), !dbg !1520
  br i1 %cleanup.dest.slot.0, label %for.cond, label %for.end, !llvm.loop !1544

for.end:                                          ; preds = %cleanup
  %len.1.lcssa = phi i64 [ %len.1, %cleanup ], !dbg !1523
  call void @llvm.dbg.value(metadata i64 %len.1.lcssa, metadata !1499, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %len.1.lcssa, metadata !1499, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %len.1.lcssa, metadata !1499, metadata !DIExpression()), !dbg !1520
  %add23 = add i64 %len.1.lcssa, 1, !dbg !1547
  %call = tail call %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader* %pfile, i64 %add23) #7, !dbg !1548
  call void @llvm.dbg.value(metadata %struct._cpp_buff* %call, metadata !1498, metadata !DIExpression()), !dbg !1520
  %cur = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %call, i64 0, i32 2, !dbg !1549
  %11 = load i8*, i8** %cur, align 8, !dbg !1549
  call void @llvm.dbg.value(metadata i8* %11, metadata !1497, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 0, metadata !1499, metadata !DIExpression()), !dbg !1520
  %12 = load i8*, i8** %text, align 8, !dbg !1550
  call void @llvm.dbg.value(metadata i8* %12, metadata !1494, metadata !DIExpression()), !dbg !1520
  %base62 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 0, !dbg !1551
  br label %for.cond26, !dbg !1552

for.cond26:                                       ; preds = %cleanup117, %for.end
  %cxtquote.0 = phi i32 [ 0, %for.end ], [ %cxtquote.1.lcssa, %cleanup117 ], !dbg !1553
  %len.2 = phi i64 [ 0, %for.end ], [ %len.6, %cleanup117 ], !dbg !1520
  %p.0 = phi i8* [ %11, %for.end ], [ %p.5, %cleanup117 ], !dbg !1554
  %exp.2 = phi i8* [ %12, %for.end ], [ %exp.3, %cleanup117 ], !dbg !1555
  call void @llvm.dbg.value(metadata i8* %exp.2, metadata !1494, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !1497, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %len.2, metadata !1499, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %cxtquote.0, metadata !1500, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %exp.2, metadata !1505, metadata !DIExpression()), !dbg !1551
  %text_len28 = bitcast i8* %exp.2 to i32*, !dbg !1556
  %13 = load i32, i32* %text_len28, align 4, !dbg !1556
  %conv29 = zext i32 %13 to i64, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %add30, metadata !1499, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %conv29, metadata !1509, metadata !DIExpression()), !dbg !1551
  %text33 = getelementptr inbounds i8, i8* %exp.2, i64 6, !dbg !1558
  call void @llvm.dbg.value(metadata i8* %text33, metadata !1512, metadata !DIExpression()), !dbg !1551
  br label %for.cond34, !dbg !1560

for.cond34:                                       ; preds = %if.end41, %for.cond26
  %cxtquote.1 = phi i32 [ %cxtquote.0, %for.cond26 ], [ %cxtquote.2, %if.end41 ], !dbg !1520
  %p.1 = phi i8* [ %p.0, %for.cond26 ], [ %incdec.ptr42, %if.end41 ], !dbg !1520
  %arglen.0 = phi i64 [ %conv29, %for.cond26 ], [ %dec, %if.end41 ], !dbg !1561
  %in.0 = phi i8* [ %text33, %for.cond26 ], [ %incdec.ptr, %if.end41 ], !dbg !1561
  call void @llvm.dbg.value(metadata i8* %in.0, metadata !1512, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %arglen.0, metadata !1509, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !1497, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %cxtquote.1, metadata !1500, metadata !DIExpression()), !dbg !1520
  %cmp35 = icmp eq i64 %arglen.0, 0, !dbg !1562
  br i1 %cmp35, label %for.end43, label %for.body, !dbg !1564

for.body:                                         ; preds = %for.cond34
  %14 = load i8, i8* %in.0, align 1, !dbg !1565
  %cmp38 = icmp eq i8 %14, 34, !dbg !1568
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !1569

if.then40:                                        ; preds = %for.body
  %tobool = icmp eq i32 %cxtquote.1, 0, !dbg !1570
  %lnot.ext = zext i1 %tobool to i32, !dbg !1570
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !1500, metadata !DIExpression()), !dbg !1520
  br label %if.end41, !dbg !1571

if.end41:                                         ; preds = %if.then40, %for.body
  %cxtquote.2 = phi i32 [ %lnot.ext, %if.then40 ], [ %cxtquote.1, %for.body ], !dbg !1520
  call void @llvm.dbg.value(metadata i32 %cxtquote.2, metadata !1500, metadata !DIExpression()), !dbg !1520
  %incdec.ptr = getelementptr inbounds i8, i8* %in.0, i64 1, !dbg !1572
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1512, metadata !DIExpression()), !dbg !1551
  %incdec.ptr42 = getelementptr inbounds i8, i8* %p.1, i64 1, !dbg !1573
  call void @llvm.dbg.value(metadata i8* %incdec.ptr42, metadata !1497, metadata !DIExpression()), !dbg !1520
  store i8 %14, i8* %p.1, align 1, !dbg !1574
  %dec = add nsw i64 %arglen.0, -1, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1509, metadata !DIExpression()), !dbg !1551
  br label %for.cond34, !dbg !1576, !llvm.loop !1577

for.end43:                                        ; preds = %for.cond34
  %cxtquote.1.lcssa = phi i32 [ %cxtquote.1, %for.cond34 ], !dbg !1520
  %p.1.lcssa = phi i8* [ %p.1, %for.cond34 ], !dbg !1520
  call void @llvm.dbg.value(metadata i32 %cxtquote.1.lcssa, metadata !1500, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1497, metadata !DIExpression()), !dbg !1520
  %add30 = add i64 %len.2, %conv29, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %cxtquote.1.lcssa, metadata !1500, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1497, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 %cxtquote.1.lcssa, metadata !1500, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1497, metadata !DIExpression()), !dbg !1520
  %arg_index44 = getelementptr inbounds i8, i8* %exp.2, i64 4, !dbg !1580
  %15 = bitcast i8* %arg_index44 to i16*, !dbg !1580
  %16 = load i16, i16* %15, align 4, !dbg !1580
  %cmp46 = icmp eq i16 %16, 0, !dbg !1582
  br i1 %cmp46, label %cleanup117, label %if.end49, !dbg !1583

if.end49:                                         ; preds = %for.end43
  %17 = load i64*, i64** %args, align 8, !dbg !1584
  %idxprom52 = zext i16 %16 to i64, !dbg !1585
  %arrayidx53 = getelementptr inbounds i64, i64* %17, i64 %idxprom52, !dbg !1585
  %18 = load i64, i64* %arrayidx53, align 8, !dbg !1585
  %sub57 = add nsw i64 %idxprom52, -1, !dbg !1586
  %arrayidx59 = getelementptr inbounds i64, i64* %17, i64 %sub57, !dbg !1587
  %19 = load i64, i64* %arrayidx59, align 8, !dbg !1587
  %20 = xor i64 %19, -1, !dbg !1588
  %sub61 = add i64 %18, %20, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %sub61, metadata !1509, metadata !DIExpression()), !dbg !1551
  %21 = load i8*, i8** %base62, align 8, !dbg !1589
  %add.ptr69 = getelementptr inbounds i8, i8* %21, i64 %19, !dbg !1590
  call void @llvm.dbg.value(metadata i8* %add.ptr69, metadata !1511, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %add.ptr69, metadata !1512, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i32 0, metadata !1510, metadata !DIExpression()), !dbg !1551
  %cond = icmp eq i32 %cxtquote.1.lcssa, 0, !dbg !1591
  br i1 %cond, label %if.end49.split.us, label %if.end49.if.end49.split_crit_edge, !dbg !1596

if.end49.if.end49.split_crit_edge:                ; preds = %if.end49
  br i1 false, label %if.end49.split.if.end49.split.split_crit_edge, label %if.end49.split.split.us, !dbg !1596

if.end49.split.us:                                ; preds = %if.end49
  %22 = add i64 %len.2, -1, !dbg !1596
  %23 = add i64 %22, %18, !dbg !1596
  br label %for.cond70.us, !dbg !1596

for.cond70.us:                                    ; preds = %for.body73.us, %if.end49.split.us
  %p.2.us = phi i8* [ %p.1.lcssa, %if.end49.split.us ], [ %incdec.ptr106.us, %for.body73.us ], !dbg !1520
  %arglen.1.us = phi i64 [ %sub61, %if.end49.split.us ], [ %dec109.us, %for.body73.us ], !dbg !1551
  %in.1.us = phi i8* [ %add.ptr69, %if.end49.split.us ], [ %incdec.ptr105.us, %for.body73.us ], !dbg !1551
  call void @llvm.dbg.value(metadata i8* %in.1.us, metadata !1512, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i32 0, metadata !1510, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %arglen.1.us, metadata !1509, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %p.2.us, metadata !1497, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 undef, metadata !1499, metadata !DIExpression()), !dbg !1520
  %cmp71.us = icmp eq i64 %arglen.1.us, 0, !dbg !1597
  br i1 %cmp71.us, label %for.end110.us-lcssa.us, label %for.body73.us, !dbg !1598

for.body73.us:                                    ; preds = %for.cond70.us
  call void @llvm.dbg.value(metadata i32 0, metadata !1510, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %p.2.us, metadata !1497, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 undef, metadata !1499, metadata !DIExpression()), !dbg !1520
  %incdec.ptr105.us = getelementptr inbounds i8, i8* %in.1.us, i64 1, !dbg !1599
  call void @llvm.dbg.value(metadata i8* %incdec.ptr105.us, metadata !1512, metadata !DIExpression()), !dbg !1551
  %24 = load i8, i8* %in.1.us, align 1, !dbg !1600
  %incdec.ptr106.us = getelementptr inbounds i8, i8* %p.2.us, i64 1, !dbg !1601
  call void @llvm.dbg.value(metadata i8* %incdec.ptr106.us, metadata !1497, metadata !DIExpression()), !dbg !1520
  store i8 %24, i8* %p.2.us, align 1, !dbg !1602
  call void @llvm.dbg.value(metadata i64 undef, metadata !1499, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1520
  %dec109.us = add i64 %arglen.1.us, -1, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %dec109.us, metadata !1509, metadata !DIExpression()), !dbg !1551
  br label %for.cond70.us, !dbg !1604, !llvm.loop !1605

for.end110.us-lcssa.us:                           ; preds = %for.cond70.us
  %p.2.us.lcssa = phi i8* [ %p.2.us, %for.cond70.us ], !dbg !1520
  %25 = add i64 %23, %conv29, !dbg !1596
  call void @llvm.dbg.value(metadata i8* %p.2.us.lcssa, metadata !1497, metadata !DIExpression()), !dbg !1520
  %26 = sub i64 %25, %19, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %26, metadata !1499, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %p.2.us.lcssa, metadata !1497, metadata !DIExpression()), !dbg !1520
  br label %for.end110, !dbg !1607

if.end49.split.if.end49.split.split_crit_edge:    ; preds = %if.end49.if.end49.split_crit_edge
  br label %for.end110.us-lcssa.us-lcssa, !dbg !1596

if.end49.split.split.us:                          ; preds = %if.end49.if.end49.split_crit_edge
  br label %for.cond70.us2, !dbg !1596

for.cond70.us2:                                   ; preds = %if.end104.us32, %if.end49.split.split.us
  %len.3.us3 = phi i64 [ %add30, %if.end49.split.split.us ], [ %inc107.us38, %if.end104.us32 ], !dbg !1551
  %p.2.us4 = phi i8* [ %p.1.lcssa, %if.end49.split.split.us ], [ %incdec.ptr106.us37, %if.end104.us32 ], !dbg !1520
  %arglen.1.us5 = phi i64 [ %sub61, %if.end49.split.split.us ], [ %dec109.us39, %if.end104.us32 ], !dbg !1551
  %argquote.0.us6 = phi i32 [ 0, %if.end49.split.split.us ], [ %argquote.2.us35, %if.end104.us32 ], !dbg !1608
  %in.1.us7 = phi i8* [ %add.ptr69, %if.end49.split.split.us ], [ %incdec.ptr105.us36, %if.end104.us32 ], !dbg !1551
  call void @llvm.dbg.value(metadata i8* %in.1.us7, metadata !1512, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i32 %argquote.0.us6, metadata !1510, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %arglen.1.us5, metadata !1509, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %p.2.us4, metadata !1497, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %len.3.us3, metadata !1499, metadata !DIExpression()), !dbg !1520
  %cmp71.us8 = icmp eq i64 %arglen.1.us5, 0, !dbg !1597
  br i1 %cmp71.us8, label %for.end110.us-lcssa.us-lcssa.us, label %for.body73.us9, !dbg !1598

for.body73.us9:                                   ; preds = %for.cond70.us2
  %27 = load i8, i8* %in.1.us7, align 1, !dbg !1609
  %cmp76.us11 = icmp eq i8 %27, 34, !dbg !1610
  br i1 %cmp76.us11, label %if.then78.us20, label %if.else92.us12, !dbg !1611

if.else92.us12:                                   ; preds = %for.body73.us9
  %tobool95.us13 = icmp eq i32 %argquote.0.us6, 0, !dbg !1612
  br i1 %tobool95.us13, label %if.end104.us32, label %land.lhs.true96.us15, !dbg !1614

land.lhs.true96.us15:                             ; preds = %if.else92.us12
  %cmp98.us16 = icmp eq i8 %27, 92, !dbg !1615
  br i1 %cmp98.us16, label %if.then100.us17, label %if.end104.us32, !dbg !1616

if.then100.us17:                                  ; preds = %land.lhs.true96.us15
  %incdec.ptr101.us18 = getelementptr inbounds i8, i8* %p.2.us4, i64 1, !dbg !1617
  call void @llvm.dbg.value(metadata i8* %incdec.ptr101.us18, metadata !1497, metadata !DIExpression()), !dbg !1520
  store i8 92, i8* %p.2.us4, align 1, !dbg !1619
  %inc102.us19 = add i64 %len.3.us3, 1, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %inc102.us19, metadata !1499, metadata !DIExpression()), !dbg !1520
  br label %if.end104.us32, !dbg !1621

if.then78.us20:                                   ; preds = %for.body73.us9
  %cmp79.us21 = icmp ugt i8* %in.1.us7, %add.ptr69, !dbg !1622
  br i1 %cmp79.us21, label %land.lhs.true81.us22, label %if.end90.us28, !dbg !1625

land.lhs.true81.us22:                             ; preds = %if.then78.us20
  %add.ptr82.us23 = getelementptr inbounds i8, i8* %in.1.us7, i64 -1, !dbg !1626
  %28 = load i8, i8* %add.ptr82.us23, align 1, !dbg !1627
  %cmp84.us24 = icmp eq i8 %28, 92, !dbg !1628
  br i1 %cmp84.us24, label %if.end90.us28, label %if.then86.us25, !dbg !1629

if.then86.us25:                                   ; preds = %land.lhs.true81.us22
  %tobool87.us26 = icmp eq i32 %argquote.0.us6, 0, !dbg !1630
  %lnot.ext89.us27 = zext i1 %tobool87.us26 to i32, !dbg !1630
  call void @llvm.dbg.value(metadata i32 %lnot.ext89.us27, metadata !1510, metadata !DIExpression()), !dbg !1551
  br label %if.end90.us28, !dbg !1631

if.end90.us28:                                    ; preds = %if.then86.us25, %land.lhs.true81.us22, %if.then78.us20
  %argquote.1.us29 = phi i32 [ %lnot.ext89.us27, %if.then86.us25 ], [ %argquote.0.us6, %land.lhs.true81.us22 ], [ %argquote.0.us6, %if.then78.us20 ], !dbg !1608
  call void @llvm.dbg.value(metadata i32 %argquote.1.us29, metadata !1510, metadata !DIExpression()), !dbg !1551
  %incdec.ptr91.us30 = getelementptr inbounds i8, i8* %p.2.us4, i64 1, !dbg !1632
  call void @llvm.dbg.value(metadata i8* %incdec.ptr91.us30, metadata !1497, metadata !DIExpression()), !dbg !1520
  store i8 92, i8* %p.2.us4, align 1, !dbg !1633
  %inc.us31 = add i64 %len.3.us3, 1, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %inc.us31, metadata !1499, metadata !DIExpression()), !dbg !1520
  br label %if.end104.us32, !dbg !1635

if.end104.us32:                                   ; preds = %if.else92.us12, %if.end90.us28, %if.then100.us17, %land.lhs.true96.us15
  %len.5.us33 = phi i64 [ %inc.us31, %if.end90.us28 ], [ %inc102.us19, %if.then100.us17 ], [ %len.3.us3, %land.lhs.true96.us15 ], [ %len.3.us3, %if.else92.us12 ], !dbg !1591
  %p.4.us34 = phi i8* [ %incdec.ptr91.us30, %if.end90.us28 ], [ %incdec.ptr101.us18, %if.then100.us17 ], [ %p.2.us4, %land.lhs.true96.us15 ], [ %p.2.us4, %if.else92.us12 ], !dbg !1591
  %argquote.2.us35 = phi i32 [ %argquote.1.us29, %if.end90.us28 ], [ %argquote.0.us6, %if.then100.us17 ], [ %argquote.0.us6, %land.lhs.true96.us15 ], [ 0, %if.else92.us12 ], !dbg !1608
  call void @llvm.dbg.value(metadata i32 %argquote.2.us35, metadata !1510, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8* %p.4.us34, metadata !1497, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %len.5.us33, metadata !1499, metadata !DIExpression()), !dbg !1520
  %incdec.ptr105.us36 = getelementptr inbounds i8, i8* %in.1.us7, i64 1, !dbg !1599
  call void @llvm.dbg.value(metadata i8* %incdec.ptr105.us36, metadata !1512, metadata !DIExpression()), !dbg !1551
  %29 = load i8, i8* %in.1.us7, align 1, !dbg !1600
  %incdec.ptr106.us37 = getelementptr inbounds i8, i8* %p.4.us34, i64 1, !dbg !1601
  call void @llvm.dbg.value(metadata i8* %incdec.ptr106.us37, metadata !1497, metadata !DIExpression()), !dbg !1520
  store i8 %29, i8* %p.4.us34, align 1, !dbg !1602
  %inc107.us38 = add i64 %len.5.us33, 1, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %inc107.us38, metadata !1499, metadata !DIExpression()), !dbg !1520
  %dec109.us39 = add i64 %arglen.1.us5, -1, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %dec109.us39, metadata !1509, metadata !DIExpression()), !dbg !1551
  br label %for.cond70.us2, !dbg !1604, !llvm.loop !1605

for.end110.us-lcssa.us-lcssa.us:                  ; preds = %for.cond70.us2
  %len.3.us3.lcssa = phi i64 [ %len.3.us3, %for.cond70.us2 ], !dbg !1551
  %p.2.us4.lcssa = phi i8* [ %p.2.us4, %for.cond70.us2 ], !dbg !1520
  call void @llvm.dbg.value(metadata i64 %len.3.us3.lcssa, metadata !1499, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %p.2.us4.lcssa, metadata !1497, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %len.3.us3.lcssa, metadata !1499, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %p.2.us4.lcssa, metadata !1497, metadata !DIExpression()), !dbg !1520
  br label %for.end110.us-lcssa, !dbg !1607

land.lhs.true81:                                  ; No predecessors!
  unreachable, !dbg !1629

if.then86:                                        ; No predecessors!
  unreachable, !dbg !1631

for.end110.us-lcssa.us-lcssa:                     ; preds = %if.end49.split.if.end49.split.split_crit_edge
  br label %for.end110.us-lcssa, !dbg !1607

for.end110.us-lcssa:                              ; preds = %for.end110.us-lcssa.us-lcssa.us, %for.end110.us-lcssa.us-lcssa
  %len.3.lcssa.ph = phi i64 [ undef, %for.end110.us-lcssa.us-lcssa ], [ %len.3.us3.lcssa, %for.end110.us-lcssa.us-lcssa.us ]
  %p.2.lcssa.ph = phi i8* [ undef, %for.end110.us-lcssa.us-lcssa ], [ %p.2.us4.lcssa, %for.end110.us-lcssa.us-lcssa.us ]
  br label %for.end110, !dbg !1607

for.end110:                                       ; preds = %for.end110.us-lcssa.us, %for.end110.us-lcssa
  %len.3.lcssa = phi i64 [ %len.3.lcssa.ph, %for.end110.us-lcssa ], [ %26, %for.end110.us-lcssa.us ], !dbg !1551
  %p.2.lcssa = phi i8* [ %p.2.lcssa.ph, %for.end110.us-lcssa ], [ %p.2.us.lcssa, %for.end110.us-lcssa.us ], !dbg !1520
  call void @llvm.dbg.value(metadata i64 %len.3.lcssa, metadata !1499, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %p.2.lcssa, metadata !1497, metadata !DIExpression()), !dbg !1520
  %30 = load i32, i32* %text_len28, align 4, !dbg !1607
  %conv112 = zext i32 %30 to i64, !dbg !1607
  %add114 = add nuw nsw i64 %conv112, 13, !dbg !1607
  %and115 = and i64 %add114, 8589934584, !dbg !1607
  %add.ptr116 = getelementptr inbounds i8, i8* %exp.2, i64 %and115, !dbg !1637
  call void @llvm.dbg.value(metadata i8* %add.ptr116, metadata !1494, metadata !DIExpression()), !dbg !1520
  br label %cleanup117, !dbg !1638

cleanup117:                                       ; preds = %for.end43, %for.end110
  %len.6 = phi i64 [ %len.3.lcssa, %for.end110 ], [ %add30, %for.end43 ], !dbg !1579
  %cleanup.dest.slot.1 = phi i1 [ true, %for.end110 ], [ false, %for.end43 ]
  %p.5 = phi i8* [ %p.2.lcssa, %for.end110 ], [ %p.1.lcssa, %for.end43 ], !dbg !1554
  %exp.3 = phi i8* [ %add.ptr116, %for.end110 ], [ %exp.2, %for.end43 ], !dbg !1639
  call void @llvm.dbg.value(metadata i8* %exp.3, metadata !1494, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %p.5, metadata !1497, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %len.6, metadata !1499, metadata !DIExpression()), !dbg !1520
  br i1 %cleanup.dest.slot.1, label %for.cond26, label %for.end124, !llvm.loop !1640

for.end124:                                       ; preds = %cleanup117
  %len.6.lcssa = phi i64 [ %len.6, %cleanup117 ], !dbg !1579
  %p.5.lcssa = phi i8* [ %p.5, %cleanup117 ], !dbg !1554
  call void @llvm.dbg.value(metadata i64 %len.6.lcssa, metadata !1499, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %p.5.lcssa, metadata !1497, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %len.6.lcssa, metadata !1499, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %p.5.lcssa, metadata !1497, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i64 %len.6.lcssa, metadata !1499, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i8* %p.5.lcssa, metadata !1497, metadata !DIExpression()), !dbg !1520
  store i8 10, i8* %p.5.lcssa, align 1, !dbg !1643
  %31 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %node, align 8, !dbg !1644
  %32 = load i8*, i8** %cur, align 8, !dbg !1645
  tail call void @_cpp_push_text_context(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %31, i8* %32, i64 %len.6.lcssa) #7, !dbg !1646
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1647
  %33 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !1647
  %buff127 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %33, i64 0, i32 3, !dbg !1648
  store %struct._cpp_buff* %call, %struct._cpp_buff** %buff127, align 8, !dbg !1649
  br label %if.end128

if.end128:                                        ; preds = %for.end124, %if.then
  ret void, !dbg !1650
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @skip_whitespace(%struct.cpp_reader* %pfile, i8* %cur, i32 %skip_comments) unnamed_addr #2 !dbg !1651 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1653, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %cur, metadata !1654, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i32 %skip_comments, metadata !1655, metadata !DIExpression()), !dbg !1661
  %cur2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 2, !dbg !1662
  %0 = load i8*, i8** %cur2, align 8, !dbg !1662
  call void @llvm.dbg.value(metadata i8* %0, metadata !1656, metadata !DIExpression()), !dbg !1661
  %tobool12 = icmp eq i32 %skip_comments, 0, !dbg !1663
  br i1 %tobool12, label %entry.entry.split_crit_edge, label %entry.split.us, !dbg !1665

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %for.cond, !dbg !1665

entry.split.us:                                   ; preds = %entry
  br label %for.cond.us, !dbg !1665

for.cond.us:                                      ; preds = %cleanup.us, %entry.split.us
  %out.0.us = phi i8* [ %0, %entry.split.us ], [ %out.1.us, %cleanup.us ], !dbg !1661
  %cur.addr.0.us = phi i8* [ %cur, %entry.split.us ], [ %cur.addr.1.us, %cleanup.us ]
  call void @llvm.dbg.value(metadata i8* %cur.addr.0.us, metadata !1654, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %out.0.us, metadata !1656, metadata !DIExpression()), !dbg !1661
  %incdec.ptr.us = getelementptr inbounds i8, i8* %cur.addr.0.us, i64 1, !dbg !1666
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.us, metadata !1654, metadata !DIExpression()), !dbg !1661
  %1 = load i8, i8* %cur.addr.0.us, align 1, !dbg !1667
  call void @llvm.dbg.value(metadata i8 %1, metadata !1657, metadata !DIExpression()), !dbg !1668
  %incdec.ptr4.us = getelementptr inbounds i8, i8* %out.0.us, i64 1, !dbg !1669
  call void @llvm.dbg.value(metadata i8* %incdec.ptr4.us, metadata !1656, metadata !DIExpression()), !dbg !1661
  store i8 %1, i8* %out.0.us, align 1, !dbg !1670
  %idxprom.us = zext i8 %1 to i64, !dbg !1671
  %arrayidx.us = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom.us, !dbg !1671
  %2 = load i16, i16* %arrayidx.us, align 2, !dbg !1671
  %3 = and i16 %2, 2048, !dbg !1671
  %tobool.us = icmp eq i16 %3, 0, !dbg !1671
  br i1 %tobool.us, label %if.end.us, label %cleanup.us, !dbg !1673, !llvm.loop !1674

if.end.us:                                        ; preds = %for.cond.us
  call void @llvm.dbg.value(metadata i8 %1, metadata !1657, metadata !DIExpression()), !dbg !1668
  %cmp.us = icmp eq i8 %1, 47, !dbg !1677
  br i1 %cmp.us, label %land.lhs.true.us, label %if.end18.us, !dbg !1678

land.lhs.true.us:                                 ; preds = %if.end.us
  %4 = load i8, i8* %incdec.ptr.us, align 1, !dbg !1679
  %cmp9.us = icmp eq i8 %4, 42, !dbg !1680
  br i1 %cmp9.us, label %if.then13.us, label %if.end18.us, !dbg !1681

if.end18.us:                                      ; preds = %land.lhs.true.us, %if.end.us
  call void @llvm.dbg.value(metadata i8* %out.0.us, metadata !1656, metadata !DIExpression()), !dbg !1661
  br label %cleanup.us, !dbg !1682

if.then13.us:                                     ; preds = %land.lhs.true.us
  store i8* %incdec.ptr4.us, i8** %cur2, align 8, !dbg !1683
  %call.us = tail call fastcc i8* @copy_comment(%struct.cpp_reader* %pfile, i8* nonnull %incdec.ptr.us, i32 0) #8, !dbg !1685
  call void @llvm.dbg.value(metadata i8* %call.us, metadata !1654, metadata !DIExpression()), !dbg !1661
  %5 = load i8*, i8** %cur2, align 8, !dbg !1686
  call void @llvm.dbg.value(metadata i8* %5, metadata !1656, metadata !DIExpression()), !dbg !1661
  br label %cleanup.us, !dbg !1687, !llvm.loop !1674

cleanup.us:                                       ; preds = %if.then13.us, %if.end18.us, %for.cond.us
  %out.1.us = phi i8* [ %5, %if.then13.us ], [ %out.0.us, %if.end18.us ], [ %incdec.ptr4.us, %for.cond.us ], !dbg !1668
  %cur.addr.1.us = phi i8* [ %call.us, %if.then13.us ], [ %incdec.ptr.us, %if.end18.us ], [ %incdec.ptr.us, %for.cond.us ], !dbg !1668
  %cleanup.dest.slot.0.us = phi i1 [ true, %if.then13.us ], [ false, %if.end18.us ], [ true, %for.cond.us ]
  call void @llvm.dbg.value(metadata i8* %cur.addr.1.us, metadata !1654, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %out.1.us, metadata !1656, metadata !DIExpression()), !dbg !1661
  br i1 %cleanup.dest.slot.0.us, label %for.cond.us, label %for.end.us-lcssa.us

for.end.us-lcssa.us:                              ; preds = %cleanup.us
  %out.1.us.lcssa = phi i8* [ %out.1.us, %cleanup.us ], !dbg !1668
  %cur.addr.1.us.lcssa = phi i8* [ %cur.addr.1.us, %cleanup.us ], !dbg !1668
  call void @llvm.dbg.value(metadata i8* %out.1.us.lcssa, metadata !1656, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %cur.addr.1.us.lcssa, metadata !1654, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %out.1.us.lcssa, metadata !1656, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %cur.addr.1.us.lcssa, metadata !1654, metadata !DIExpression()), !dbg !1661
  br label %for.end, !dbg !1688

for.cond:                                         ; preds = %cleanup, %entry.entry.split_crit_edge
  %out.0 = phi i8* [ %0, %entry.entry.split_crit_edge ], [ %out.1, %cleanup ], !dbg !1661
  %cur.addr.0 = phi i8* [ %cur, %entry.entry.split_crit_edge ], [ %incdec.ptr, %cleanup ]
  call void @llvm.dbg.value(metadata i8* %cur.addr.0, metadata !1654, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %out.0, metadata !1656, metadata !DIExpression()), !dbg !1661
  %incdec.ptr = getelementptr inbounds i8, i8* %cur.addr.0, i64 1, !dbg !1666
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1654, metadata !DIExpression()), !dbg !1661
  %6 = load i8, i8* %cur.addr.0, align 1, !dbg !1667
  call void @llvm.dbg.value(metadata i8 %6, metadata !1657, metadata !DIExpression()), !dbg !1668
  %incdec.ptr4 = getelementptr inbounds i8, i8* %out.0, i64 1, !dbg !1669
  call void @llvm.dbg.value(metadata i8* %incdec.ptr4, metadata !1656, metadata !DIExpression()), !dbg !1661
  store i8 %6, i8* %out.0, align 1, !dbg !1670
  %idxprom = zext i8 %6 to i64, !dbg !1671
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !1671
  %7 = load i16, i16* %arrayidx, align 2, !dbg !1671
  %8 = and i16 %7, 2048, !dbg !1671
  %tobool = icmp eq i16 %8, 0, !dbg !1671
  br i1 %tobool, label %if.end, label %cleanup, !dbg !1673, !llvm.loop !1674

if.end:                                           ; preds = %for.cond
  call void @llvm.dbg.value(metadata i8 %6, metadata !1657, metadata !DIExpression()), !dbg !1668
  br label %if.end18, !dbg !1678

land.lhs.true:                                    ; No predecessors!
  unreachable, !dbg !1681

if.end18:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i8* %out.0, metadata !1656, metadata !DIExpression()), !dbg !1661
  br label %cleanup, !dbg !1682

cleanup:                                          ; preds = %for.cond, %if.end18
  %out.1 = phi i8* [ %out.0, %if.end18 ], [ %incdec.ptr4, %for.cond ], !dbg !1668
  %cleanup.dest.slot.0 = phi i1 [ false, %if.end18 ], [ true, %for.cond ]
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1654, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %out.1, metadata !1656, metadata !DIExpression()), !dbg !1661
  br i1 %cleanup.dest.slot.0, label %for.cond, label %for.end.us-lcssa

for.end.us-lcssa:                                 ; preds = %cleanup
  %out.1.lcssa2 = phi i8* [ %out.1, %cleanup ], !dbg !1668
  %incdec.ptr.lcssa = phi i8* [ %incdec.ptr, %cleanup ], !dbg !1666
  call void @llvm.dbg.value(metadata i8* %out.1.lcssa2, metadata !1656, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %out.1.lcssa2, metadata !1656, metadata !DIExpression()), !dbg !1661
  br label %for.end, !dbg !1688

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %out.1.lcssa = phi i8* [ %out.1.lcssa2, %for.end.us-lcssa ], [ %out.1.us.lcssa, %for.end.us-lcssa.us ], !dbg !1668
  %cur.addr.1.lcssa = phi i8* [ %incdec.ptr.lcssa, %for.end.us-lcssa ], [ %cur.addr.1.us.lcssa, %for.end.us-lcssa.us ], !dbg !1668
  call void @llvm.dbg.value(metadata i8* %out.1.lcssa, metadata !1656, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %cur.addr.1.lcssa, metadata !1654, metadata !DIExpression()), !dbg !1661
  store i8* %out.1.lcssa, i8** %cur2, align 8, !dbg !1689
  %add.ptr = getelementptr inbounds i8, i8* %cur.addr.1.lcssa, i64 -1, !dbg !1690
  ret i8* %add.ptr, !dbg !1691
}

declare dso_local i32 @_cpp_handle_directive(%struct.cpp_reader*, i32) local_unnamed_addr #1

declare dso_local void @_cpp_release_buff(%struct.cpp_reader*, %struct._cpp_buff*) local_unnamed_addr #1

declare dso_local zeroext i8 @cpp_error_with_line(%struct.cpp_reader*, i32, i32, i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @_cpp_replacement_text_len(%struct.cpp_macro* %macro) local_unnamed_addr #2 !dbg !1692 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !1698, metadata !DIExpression()), !dbg !1707
  %fun_like = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 5, !dbg !1708
  %bf.load = load i8, i8* %fun_like, align 2, !dbg !1708
  %bf.clear = and i8 %bf.load, 1, !dbg !1708
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !1709
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !1710

land.lhs.true:                                    ; preds = %entry
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 4, !dbg !1711
  %0 = load i16, i16* %paramc, align 8, !dbg !1711
  %cmp = icmp eq i16 %0, 0, !dbg !1712
  br i1 %cmp, label %if.else, label %if.then, !dbg !1713

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i64 0, metadata !1699, metadata !DIExpression()), !dbg !1707
  %exp2 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 1, !dbg !1714
  %text = bitcast %union.cpp_macro_u* %exp2 to i8**, !dbg !1715
  %1 = load i8*, i8** %text, align 8, !dbg !1715
  call void @llvm.dbg.value(metadata i8* %1, metadata !1700, metadata !DIExpression()), !dbg !1716
  %params = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 0, !dbg !1717
  br label %for.cond, !dbg !1718

for.cond:                                         ; preds = %cleanup, %if.then
  %exp.0 = phi i8* [ %1, %if.then ], [ %exp.1, %cleanup ], !dbg !1719
  %len.0 = phi i64 [ 0, %if.then ], [ %len.1, %cleanup ], !dbg !1716
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !1699, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %exp.0, metadata !1700, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8* %exp.0, metadata !1703, metadata !DIExpression()), !dbg !1717
  %text_len = bitcast i8* %exp.0 to i32*, !dbg !1720
  %2 = load i32, i32* %text_len, align 4, !dbg !1720
  %conv3 = zext i32 %2 to i64, !dbg !1721
  %add = add i64 %len.0, %conv3, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %add, metadata !1699, metadata !DIExpression()), !dbg !1707
  %arg_index = getelementptr inbounds i8, i8* %exp.0, i64 4, !dbg !1723
  %3 = bitcast i8* %arg_index to i16*, !dbg !1723
  %4 = load i16, i16* %3, align 4, !dbg !1723
  %cmp5 = icmp eq i16 %4, 0, !dbg !1725
  br i1 %cmp5, label %cleanup, label %if.end, !dbg !1726

if.end:                                           ; preds = %for.cond
  call void @llvm.dbg.value(metadata i8* %exp.0, metadata !1703, metadata !DIExpression()), !dbg !1717
  %5 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params, align 8, !dbg !1727
  %conv9 = zext i16 %4 to i64, !dbg !1727
  %sub = add nsw i64 %conv9, -1, !dbg !1727
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %5, i64 %sub, !dbg !1727
  %6 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx, align 8, !dbg !1727
  %len10 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %6, i64 0, i32 0, i32 1, !dbg !1727
  %7 = load i32, i32* %len10, align 8, !dbg !1727
  %conv11 = zext i32 %7 to i64, !dbg !1727
  %add12 = add i64 %add, %conv11, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %add12, metadata !1699, metadata !DIExpression()), !dbg !1707
  %add16 = add nuw nsw i64 %conv3, 13, !dbg !1729
  %and = and i64 %add16, 8589934584, !dbg !1729
  %add.ptr = getelementptr inbounds i8, i8* %exp.0, i64 %and, !dbg !1730
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1700, metadata !DIExpression()), !dbg !1716
  br label %cleanup, !dbg !1731

cleanup:                                          ; preds = %for.cond, %if.end
  %exp.1 = phi i8* [ %add.ptr, %if.end ], [ %exp.0, %for.cond ], !dbg !1732
  %len.1 = phi i64 [ %add12, %if.end ], [ %add, %for.cond ], !dbg !1717
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end ], [ false, %for.cond ]
  call void @llvm.dbg.value(metadata i64 %len.1, metadata !1699, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8* %exp.1, metadata !1700, metadata !DIExpression()), !dbg !1716
  br i1 %cleanup.dest.slot.0, label %for.cond, label %if.end18.loopexit, !llvm.loop !1733

if.else:                                          ; preds = %land.lhs.true, %entry
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 3, !dbg !1736
  %8 = load i32, i32* %count, align 4, !dbg !1736
  %conv17 = zext i32 %8 to i64, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %conv17, metadata !1699, metadata !DIExpression()), !dbg !1707
  br label %if.end18

if.end18.loopexit:                                ; preds = %cleanup
  %len.1.lcssa = phi i64 [ %len.1, %cleanup ], !dbg !1717
  call void @llvm.dbg.value(metadata i64 %len.1.lcssa, metadata !1699, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %len.1.lcssa, metadata !1699, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 %len.1.lcssa, metadata !1699, metadata !DIExpression()), !dbg !1707
  br label %if.end18, !dbg !1738

if.end18:                                         ; preds = %if.end18.loopexit, %if.else
  %len.2 = phi i64 [ %conv17, %if.else ], [ %len.1.lcssa, %if.end18.loopexit ], !dbg !1739
  call void @llvm.dbg.value(metadata i64 %len.2, metadata !1699, metadata !DIExpression()), !dbg !1707
  ret i64 %len.2, !dbg !1738
}

; Function Attrs: nounwind uwtable
define dso_local i8* @_cpp_copy_replacement_text(%struct.cpp_macro* %macro, i8* %dest) local_unnamed_addr #2 !dbg !1740 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !1744, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8* %dest, metadata !1745, metadata !DIExpression()), !dbg !1754
  %fun_like = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 5, !dbg !1755
  %bf.load = load i8, i8* %fun_like, align 2, !dbg !1755
  %bf.clear = and i8 %bf.load, 1, !dbg !1755
  %tobool = icmp eq i8 %bf.clear, 0, !dbg !1756
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !1757

land.lhs.true:                                    ; preds = %entry
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 4, !dbg !1758
  %0 = load i16, i16* %paramc, align 8, !dbg !1758
  %cmp = icmp eq i16 %0, 0, !dbg !1759
  br i1 %cmp, label %if.else, label %if.then, !dbg !1760

if.then:                                          ; preds = %land.lhs.true
  %exp2 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 1, !dbg !1761
  %text = bitcast %union.cpp_macro_u* %exp2 to i8**, !dbg !1762
  %1 = load i8*, i8** %text, align 8, !dbg !1762
  call void @llvm.dbg.value(metadata i8* %1, metadata !1746, metadata !DIExpression()), !dbg !1763
  %params = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 0, !dbg !1764
  br label %for.cond, !dbg !1765

for.cond:                                         ; preds = %cleanup, %if.then
  %exp.0 = phi i8* [ %1, %if.then ], [ %exp.1, %cleanup ], !dbg !1766
  %dest.addr.0 = phi i8* [ %dest, %if.then ], [ %dest.addr.1, %cleanup ]
  call void @llvm.dbg.value(metadata i8* %dest.addr.0, metadata !1745, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8* %exp.0, metadata !1746, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8* %exp.0, metadata !1749, metadata !DIExpression()), !dbg !1764
  %text3 = getelementptr inbounds i8, i8* %exp.0, i64 6, !dbg !1767
  %text_len = bitcast i8* %exp.0 to i32*, !dbg !1768
  %2 = load i32, i32* %text_len, align 4, !dbg !1768
  %conv4 = zext i32 %2 to i64, !dbg !1769
  %call = tail call i8* @memcpy(i8* %dest.addr.0, i8* nonnull %text3, i64 %conv4) #7, !dbg !1770
  %3 = load i32, i32* %text_len, align 4, !dbg !1771
  %idx.ext = zext i32 %3 to i64, !dbg !1772
  %add.ptr = getelementptr inbounds i8, i8* %dest.addr.0, i64 %idx.ext, !dbg !1772
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1745, metadata !DIExpression()), !dbg !1754
  %arg_index = getelementptr inbounds i8, i8* %exp.0, i64 4, !dbg !1773
  %4 = bitcast i8* %arg_index to i16*, !dbg !1773
  %5 = load i16, i16* %4, align 4, !dbg !1773
  %cmp7 = icmp eq i16 %5, 0, !dbg !1775
  br i1 %cmp7, label %cleanup, label %if.end, !dbg !1776

if.end:                                           ; preds = %for.cond
  call void @llvm.dbg.value(metadata i8* %exp.0, metadata !1749, metadata !DIExpression()), !dbg !1764
  %6 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %params, align 8, !dbg !1777
  %conv11 = zext i16 %5 to i64, !dbg !1778
  %sub = add nsw i64 %conv11, -1, !dbg !1779
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %6, i64 %sub, !dbg !1780
  %7 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx, align 8, !dbg !1780
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %7, metadata !1753, metadata !DIExpression()), !dbg !1764
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %7, i64 0, i32 0, i32 0, !dbg !1781
  %8 = load i8*, i8** %str, align 8, !dbg !1781
  %len = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %7, i64 0, i32 0, i32 1, !dbg !1782
  %9 = load i32, i32* %len, align 8, !dbg !1782
  %conv13 = zext i32 %9 to i64, !dbg !1782
  %call14 = tail call i8* @memcpy(i8* %add.ptr, i8* %8, i64 %conv13) #7, !dbg !1783
  %10 = load i32, i32* %len, align 8, !dbg !1784
  %idx.ext17 = zext i32 %10 to i64, !dbg !1785
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext17, !dbg !1785
  call void @llvm.dbg.value(metadata i8* %add.ptr18, metadata !1745, metadata !DIExpression()), !dbg !1754
  %11 = load i32, i32* %text_len, align 4, !dbg !1786
  %conv20 = zext i32 %11 to i64, !dbg !1786
  %add21 = add nuw nsw i64 %conv20, 13, !dbg !1786
  %and = and i64 %add21, 8589934584, !dbg !1786
  %add.ptr22 = getelementptr inbounds i8, i8* %exp.0, i64 %and, !dbg !1787
  call void @llvm.dbg.value(metadata i8* %add.ptr22, metadata !1746, metadata !DIExpression()), !dbg !1763
  br label %cleanup, !dbg !1788

cleanup:                                          ; preds = %for.cond, %if.end
  %exp.1 = phi i8* [ %add.ptr22, %if.end ], [ %exp.0, %for.cond ], !dbg !1789
  %dest.addr.1 = phi i8* [ %add.ptr18, %if.end ], [ %add.ptr, %for.cond ], !dbg !1764
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end ], [ false, %for.cond ]
  call void @llvm.dbg.value(metadata i8* %dest.addr.1, metadata !1745, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8* %exp.1, metadata !1746, metadata !DIExpression()), !dbg !1763
  br i1 %cleanup.dest.slot.0, label %for.cond, label %if.end31.loopexit, !llvm.loop !1790

if.else:                                          ; preds = %land.lhs.true, %entry
  %exp24 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 1, !dbg !1793
  %text25 = bitcast %union.cpp_macro_u* %exp24 to i8**, !dbg !1795
  %12 = load i8*, i8** %text25, align 8, !dbg !1795
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 3, !dbg !1796
  %13 = load i32, i32* %count, align 4, !dbg !1796
  %conv26 = zext i32 %13 to i64, !dbg !1797
  %call27 = tail call i8* @memcpy(i8* %dest, i8* %12, i64 %conv26) #7, !dbg !1798
  %14 = load i32, i32* %count, align 4, !dbg !1799
  %idx.ext29 = zext i32 %14 to i64, !dbg !1800
  %add.ptr30 = getelementptr inbounds i8, i8* %dest, i64 %idx.ext29, !dbg !1800
  call void @llvm.dbg.value(metadata i8* %add.ptr30, metadata !1745, metadata !DIExpression()), !dbg !1754
  br label %if.end31

if.end31.loopexit:                                ; preds = %cleanup
  %dest.addr.1.lcssa = phi i8* [ %dest.addr.1, %cleanup ], !dbg !1764
  call void @llvm.dbg.value(metadata i8* %dest.addr.1.lcssa, metadata !1745, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8* %dest.addr.1.lcssa, metadata !1745, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8* %dest.addr.1.lcssa, metadata !1745, metadata !DIExpression()), !dbg !1754
  br label %if.end31, !dbg !1801

if.end31:                                         ; preds = %if.end31.loopexit, %if.else
  %dest.addr.2 = phi i8* [ %add.ptr30, %if.else ], [ %dest.addr.1.lcssa, %if.end31.loopexit ], !dbg !1802
  call void @llvm.dbg.value(metadata i8* %dest.addr.2, metadata !1745, metadata !DIExpression()), !dbg !1754
  ret i8* %dest.addr.2, !dbg !1801
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_create_trad_definition(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) local_unnamed_addr #2 !dbg !1803 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1805, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !1806, metadata !DIExpression()), !dbg !1813
  %context1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1814
  %0 = load %struct.cpp_context*, %struct.cpp_context** %context1, align 8, !dbg !1814
  call void @llvm.dbg.value(metadata %struct.cpp_context* %0, metadata !1809, metadata !DIExpression()), !dbg !1813
  %base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 0, !dbg !1815
  %1 = bitcast i8** %base to i64*, !dbg !1815
  %2 = load i64, i64* %1, align 8, !dbg !1815
  %cur3 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 56, i32 2, !dbg !1816
  %3 = bitcast i8** %cur3 to i64*, !dbg !1817
  store i64 %2, i64* %3, align 8, !dbg !1817
  %4 = bitcast %struct.cpp_reader* %pfile to i64**, !dbg !1818
  %5 = load i64*, i64** %4, align 8, !dbg !1818
  %6 = load i64, i64* %5, align 8, !dbg !1819
  %u = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 2, !dbg !1820
  %7 = bitcast %union.anon* %u to i64*, !dbg !1821
  store i64 %6, i64* %7, align 8, !dbg !1821
  %buffer6 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1822
  %8 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer6, align 8, !dbg !1822
  %rlimit = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %8, i64 0, i32 4, !dbg !1823
  %9 = bitcast i8** %rlimit to i64*, !dbg !1823
  %10 = load i64, i64* %9, align 8, !dbg !1823
  %rlimit9 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 2, i32 0, i32 1, !dbg !1824
  %11 = bitcast %union.utoken* %rlimit9 to i64*, !dbg !1825
  store i64 %10, i64* %11, align 8, !dbg !1825
  %sub.ptr.sub = sub i64 %10, %6, !dbg !1826
  tail call fastcc void @check_output_buffer(%struct.cpp_reader* %pfile, i64 %sub.ptr.sub) #8, !dbg !1827
  %cur18 = bitcast %union.anon* %u to i8**, !dbg !1828
  %12 = load i8*, i8** %cur18, align 8, !dbg !1828
  %13 = load i8, i8* %12, align 1, !dbg !1829
  %cmp = icmp eq i8 %13, 40, !dbg !1830
  br i1 %cmp, label %if.then, label %if.end25, !dbg !1831

if.then:                                          ; preds = %entry
  %call = tail call fastcc zeroext i8 @scan_parameters(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) #8, !dbg !1832
  call void @llvm.dbg.value(metadata i8 %call, metadata !1810, metadata !DIExpression()), !dbg !1833
  %a_buff = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 5, !dbg !1834
  %14 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !1834
  %cur20 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %14, i64 0, i32 2, !dbg !1834
  %15 = bitcast i8** %cur20 to i64*, !dbg !1834
  %16 = load i64, i64* %15, align 8, !dbg !1834
  %17 = bitcast %struct.cpp_macro* %macro to i64*, !dbg !1835
  store i64 %16, i64* %17, align 8, !dbg !1835
  %tobool = icmp eq i8 %call, 0, !dbg !1836
  br i1 %tobool, label %if.end25, label %if.else, !dbg !1838

if.else:                                          ; preds = %if.then
  %18 = inttoptr i64 %16 to %struct.cpp_hashnode**, !dbg !1838
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 4, !dbg !1839
  %19 = load i16, i16* %paramc, align 8, !dbg !1839
  %idxprom = zext i16 %19 to i64, !dbg !1841
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %18, i64 %idxprom, !dbg !1841
  %20 = load %struct._cpp_buff*, %struct._cpp_buff** %a_buff, align 8, !dbg !1842
  %cur24 = getelementptr inbounds %struct._cpp_buff, %struct._cpp_buff* %20, i64 0, i32 2, !dbg !1842
  %21 = bitcast i8** %cur24 to %struct.cpp_hashnode***, !dbg !1843
  store %struct.cpp_hashnode** %arrayidx, %struct.cpp_hashnode*** %21, align 8, !dbg !1843
  %fun_like = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 5, !dbg !1844
  %bf.load = load i8, i8* %fun_like, align 2, !dbg !1845
  %bf.set = or i8 %bf.load, 1, !dbg !1845
  store i8 %bf.set, i8* %fun_like, align 2, !dbg !1845
  br label %if.end25

if.end25:                                         ; preds = %if.then, %if.else, %entry
  %macro.addr.1 = phi %struct.cpp_macro* [ %macro, %entry ], [ %macro, %if.else ], [ null, %if.then ]
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro.addr.1, metadata !1806, metadata !DIExpression()), !dbg !1813
  %22 = load i8*, i8** %cur18, align 8, !dbg !1846
  %discard_comments_in_macro_exp = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 6, !dbg !1847
  %23 = load i8, i8* %discard_comments_in_macro_exp, align 4, !dbg !1847
  %conv29 = zext i8 %23 to i32, !dbg !1847
  %call30 = tail call fastcc i8* @skip_whitespace(%struct.cpp_reader* %pfile, i8* %22, i32 %conv29) #8, !dbg !1848
  %24 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer6, align 8, !dbg !1849
  %cur32 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %24, i64 0, i32 0, !dbg !1850
  store i8* %call30, i8** %cur32, align 8, !dbg !1851
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 8, !dbg !1852
  %25 = load i8, i8* %prevent_expansion, align 8, !dbg !1853
  %inc = add i8 %25, 1, !dbg !1853
  store i8 %inc, i8* %prevent_expansion, align 8, !dbg !1853
  %call33 = tail call zeroext i8 @_cpp_scan_out_logical_line(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro.addr.1) #8, !dbg !1854
  %26 = load i8, i8* %prevent_expansion, align 8, !dbg !1855
  %dec = add i8 %26, -1, !dbg !1855
  store i8 %dec, i8* %prevent_expansion, align 8, !dbg !1855
  %tobool36 = icmp eq %struct.cpp_macro* %macro.addr.1, null, !dbg !1856
  br i1 %tobool36, label %cleanup, label %if.end38, !dbg !1858

if.end38:                                         ; preds = %if.end25
  %27 = load i8*, i8** %base, align 8, !dbg !1859
  call void @llvm.dbg.value(metadata i8* %27, metadata !1807, metadata !DIExpression()), !dbg !1813
  %28 = load i8*, i8** %cur3, align 8, !dbg !1860
  call void @llvm.dbg.value(metadata i8* %28, metadata !1808, metadata !DIExpression()), !dbg !1813
  br label %while.cond, !dbg !1861

while.cond:                                       ; preds = %while.body, %if.end38
  %limit.0 = phi i8* [ %28, %if.end38 ], [ %arrayidx45, %while.body ], !dbg !1813
  call void @llvm.dbg.value(metadata i8* %limit.0, metadata !1808, metadata !DIExpression()), !dbg !1813
  %cmp43 = icmp ugt i8* %limit.0, %27, !dbg !1862
  br i1 %cmp43, label %land.rhs, label %while.end, !dbg !1863

land.rhs:                                         ; preds = %while.cond
  %arrayidx45 = getelementptr inbounds i8, i8* %limit.0, i64 -1, !dbg !1864
  %29 = load i8, i8* %arrayidx45, align 1, !dbg !1864
  %idxprom47 = zext i8 %29 to i64, !dbg !1864
  %arrayidx48 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom47, !dbg !1864
  %30 = load i16, i16* %arrayidx48, align 2, !dbg !1864
  %31 = and i16 %30, 3072, !dbg !1864
  %tobool51 = icmp eq i16 %31, 0, !dbg !1863
  br i1 %tobool51, label %while.end, label %while.body, !dbg !1861

while.body:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata i8* %arrayidx45, metadata !1808, metadata !DIExpression()), !dbg !1813
  br label %while.cond, !dbg !1861, !llvm.loop !1865

while.end:                                        ; preds = %land.rhs, %while.cond
  %limit.0.lcssa = phi i8* [ %limit.0, %land.rhs ], [ %limit.0, %while.cond ], !dbg !1813
  call void @llvm.dbg.value(metadata i8* %limit.0.lcssa, metadata !1808, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i8* %limit.0.lcssa, metadata !1808, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i8* %limit.0.lcssa, metadata !1808, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i8* %limit.0.lcssa, metadata !1808, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i8* %limit.0.lcssa, metadata !1808, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i8* %limit.0.lcssa, metadata !1808, metadata !DIExpression()), !dbg !1813
  store i8* %limit.0.lcssa, i8** %cur3, align 8, !dbg !1867
  tail call fastcc void @save_replacement_text(%struct.cpp_reader* %pfile, %struct.cpp_macro* nonnull %macro.addr.1, i32 0) #8, !dbg !1868
  br label %cleanup, !dbg !1869

cleanup:                                          ; preds = %if.end25, %while.end
  %retval.0 = phi i8 [ 1, %while.end ], [ 0, %if.end25 ], !dbg !1813
  ret i8 %retval.0, !dbg !1870
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @scan_parameters(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro) unnamed_addr #2 !dbg !1871 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1873, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro, metadata !1874, metadata !DIExpression()), !dbg !1877
  %context = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 9, !dbg !1878
  %0 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !1878
  %u = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %0, i64 0, i32 2, !dbg !1878
  %cur1 = bitcast %union.anon* %u to i8**, !dbg !1878
  %1 = load i8*, i8** %cur1, align 8, !dbg !1878
  call void @llvm.dbg.value(metadata i8* %1, metadata !1875, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1877
  %dollars_in_ident = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 24, !dbg !1879
  br label %for.cond, !dbg !1884

for.cond:                                         ; preds = %if.then20, %entry
  %.pn = phi i8* [ %1, %entry ], [ %call16, %if.then20 ]
  %cur.0 = getelementptr inbounds i8, i8* %.pn, i64 1, !dbg !1877
  call void @llvm.dbg.value(metadata i8* %cur.0, metadata !1875, metadata !DIExpression()), !dbg !1877
  %call = tail call fastcc i8* @skip_whitespace(%struct.cpp_reader* %pfile, i8* nonnull %cur.0, i32 1) #8, !dbg !1885
  call void @llvm.dbg.value(metadata i8* %call, metadata !1875, metadata !DIExpression()), !dbg !1877
  %2 = load i8, i8* %call, align 1, !dbg !1886
  %idxprom = zext i8 %2 to i64, !dbg !1886
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !1886
  %3 = load i16, i16* %arrayidx, align 2, !dbg !1886
  %4 = and i16 %3, 512, !dbg !1886
  %tobool = icmp eq i16 %4, 0, !dbg !1886
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1886

lor.lhs.false:                                    ; preds = %for.cond
  %cmp = icmp eq i8 %2, 36, !dbg !1886
  br i1 %cmp, label %land.lhs.true, label %if.end26, !dbg !1886

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8, i8* %dollars_in_ident, align 2, !dbg !1886
  %tobool7 = icmp eq i8 %5, 0, !dbg !1886
  br i1 %tobool7, label %if.end26, label %if.then, !dbg !1887

if.then:                                          ; preds = %land.lhs.true, %for.cond
  call void @llvm.dbg.value(metadata i8 0, metadata !1876, metadata !DIExpression()), !dbg !1877
  %call8 = tail call fastcc %struct.cpp_hashnode* @lex_identifier(%struct.cpp_reader* %pfile, i8* %call) #8, !dbg !1888
  %call9 = tail call zeroext i8 @_cpp_save_parameter(%struct.cpp_reader* %pfile, %struct.cpp_macro* %macro, %struct.cpp_hashnode* %call8) #7, !dbg !1891
  %tobool10 = icmp eq i8 %call9, 0, !dbg !1891
  br i1 %tobool10, label %if.end, label %for.end.loopexit, !dbg !1892

if.end:                                           ; preds = %if.then
  %6 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !1893
  %u13 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %6, i64 0, i32 2, !dbg !1893
  %cur15 = bitcast %union.anon* %u13 to i8**, !dbg !1893
  %7 = load i8*, i8** %cur15, align 8, !dbg !1893
  %call16 = tail call fastcc i8* @skip_whitespace(%struct.cpp_reader* %pfile, i8* %7, i32 1) #8, !dbg !1894
  call void @llvm.dbg.value(metadata i8* %call16, metadata !1875, metadata !DIExpression()), !dbg !1877
  %8 = load i8, i8* %call16, align 1, !dbg !1895
  %cmp18 = icmp eq i8 %8, 44, !dbg !1897
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !1898

if.then20:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i8* %call16, metadata !1875, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1877
  br label %for.cond, !dbg !1899, !llvm.loop !1901

if.end21:                                         ; preds = %if.end
  %call16.lcssa = phi i8* [ %call16, %if.end ], !dbg !1894
  %.lcssa12 = phi i8 [ %8, %if.end ], !dbg !1895
  %cmp23 = icmp eq i8 %.lcssa12, 41, !dbg !1904
  %conv25 = zext i1 %cmp23 to i8, !dbg !1905
  call void @llvm.dbg.value(metadata i8 %conv25, metadata !1876, metadata !DIExpression()), !dbg !1877
  br label %for.end, !dbg !1906

if.end26:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %call.lcssa = phi i8* [ %call, %land.lhs.true ], [ %call, %lor.lhs.false ], !dbg !1885
  %.lcssa = phi i8 [ %2, %land.lhs.true ], [ %2, %lor.lhs.false ], !dbg !1886
  %cmp28 = icmp eq i8 %.lcssa, 41, !dbg !1907
  br i1 %cmp28, label %land.rhs, label %land.end, !dbg !1908

land.rhs:                                         ; preds = %if.end26
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro, i64 0, i32 4, !dbg !1909
  %9 = load i16, i16* %paramc, align 8, !dbg !1909
  %cmp31 = icmp eq i16 %9, 0, !dbg !1910
  %phitmp = zext i1 %cmp31 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end26
  %10 = phi i8 [ 0, %if.end26 ], [ %phitmp, %land.rhs ]
  call void @llvm.dbg.value(metadata i8 %10, metadata !1876, metadata !DIExpression()), !dbg !1877
  br label %for.end, !dbg !1911

for.end.loopexit:                                 ; preds = %if.then
  %call.lcssa10 = phi i8* [ %call, %if.then ], !dbg !1885
  br label %for.end, !dbg !1912

for.end:                                          ; preds = %for.end.loopexit, %land.end, %if.end21
  %cur.1 = phi i8* [ %call16.lcssa, %if.end21 ], [ %call.lcssa, %land.end ], [ %call.lcssa10, %for.end.loopexit ], !dbg !1914
  %ok.0 = phi i8 [ %conv25, %if.end21 ], [ %10, %land.end ], [ 0, %for.end.loopexit ], !dbg !1914
  call void @llvm.dbg.value(metadata i8 %ok.0, metadata !1876, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8* %cur.1, metadata !1875, metadata !DIExpression()), !dbg !1877
  %tobool34 = icmp eq i8 %ok.0, 0, !dbg !1912
  br i1 %tobool34, label %if.then35, label %if.end37, !dbg !1915

if.then35:                                        ; preds = %for.end
  %call36 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !1916
  br label %if.end37, !dbg !1916

if.end37:                                         ; preds = %for.end, %if.then35
  %11 = load i8, i8* %cur.1, align 1, !dbg !1917
  %cmp39 = icmp eq i8 %11, 41, !dbg !1918
  %idx.ext = zext i1 %cmp39 to i64, !dbg !1919
  %add.ptr41 = getelementptr inbounds i8, i8* %cur.1, i64 %idx.ext, !dbg !1919
  %12 = load %struct.cpp_context*, %struct.cpp_context** %context, align 8, !dbg !1920
  %u43 = getelementptr inbounds %struct.cpp_context, %struct.cpp_context* %12, i64 0, i32 2, !dbg !1920
  %cur45 = bitcast %union.anon* %u43 to i8**, !dbg !1920
  store i8* %add.ptr41, i8** %cur45, align 8, !dbg !1921
  ret i8 %ok.0, !dbg !1922
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_expansions_different_trad(%struct.cpp_macro* %macro1, %struct.cpp_macro* %macro2) local_unnamed_addr #2 !dbg !1923 {
entry:
  %quote1 = alloca i8, align 1
  %quote2 = alloca i8, align 1
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro1, metadata !1927, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %macro2, metadata !1928, metadata !DIExpression()), !dbg !1945
  %count = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro1, i64 0, i32 3, !dbg !1946
  %0 = load i32, i32* %count, align 4, !dbg !1946
  %count1 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro2, i64 0, i32 3, !dbg !1946
  %1 = load i32, i32* %count1, align 4, !dbg !1946
  %add = add i32 %0, %1, !dbg !1946
  %conv = zext i32 %add to i64, !dbg !1946
  %call = tail call i8* @xmalloc(i64 %conv) #7, !dbg !1946
  call void @llvm.dbg.value(metadata i8* %call, metadata !1929, metadata !DIExpression()), !dbg !1945
  %2 = load i32, i32* %count, align 4, !dbg !1947
  %idx.ext = zext i32 %2 to i64, !dbg !1948
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %idx.ext, !dbg !1948
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1930, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %quote1, metadata !1931, metadata !DIExpression(DW_OP_deref)), !dbg !1945
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %quote1) #9, !dbg !1949
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()), !dbg !1945
  store i8 0, i8* %quote1, align 1, !dbg !1950
  call void @llvm.dbg.value(metadata i8* %quote2, metadata !1932, metadata !DIExpression(DW_OP_deref)), !dbg !1945
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %quote2) #9, !dbg !1949
  call void @llvm.dbg.value(metadata i8 0, metadata !1932, metadata !DIExpression()), !dbg !1945
  store i8 0, i8* %quote2, align 1, !dbg !1951
  %paramc = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro1, i64 0, i32 4, !dbg !1952
  %3 = load i16, i16* %paramc, align 8, !dbg !1952
  %cmp = icmp eq i16 %3, 0, !dbg !1953
  %exp = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro1, i64 0, i32 1, !dbg !1954
  %text = bitcast %union.cpp_macro_u* %exp to i8**, !dbg !1954
  %4 = load i8*, i8** %text, align 8, !dbg !1954
  br i1 %cmp, label %if.else, label %if.then, !dbg !1955

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %4, metadata !1936, metadata !DIExpression()), !dbg !1956
  %exp5 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro2, i64 0, i32 1, !dbg !1957
  %text6 = bitcast %union.cpp_macro_u* %exp5 to i8**, !dbg !1958
  %5 = load i8*, i8** %text6, align 8, !dbg !1958
  call void @llvm.dbg.value(metadata i8* %5, metadata !1939, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 1, metadata !1933, metadata !DIExpression()), !dbg !1945
  br label %for.cond, !dbg !1959

for.cond:                                         ; preds = %cleanup, %if.then
  %mismatch.0 = phi i8 [ 1, %if.then ], [ %mismatch.1, %cleanup ], !dbg !1960
  %exp1.0 = phi i8* [ %4, %if.then ], [ %exp1.1, %cleanup ], !dbg !1961
  %exp2.0 = phi i8* [ %5, %if.then ], [ %exp2.1, %cleanup ], !dbg !1962
  call void @llvm.dbg.value(metadata i8* %exp2.0, metadata !1939, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %exp1.0, metadata !1936, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %mismatch.0, metadata !1933, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* %exp1.0, metadata !1940, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %exp2.0, metadata !1944, metadata !DIExpression()), !dbg !1963
  %arg_index = getelementptr inbounds i8, i8* %exp1.0, i64 4, !dbg !1964
  %6 = bitcast i8* %arg_index to i16*, !dbg !1964
  %7 = load i16, i16* %6, align 4, !dbg !1964
  %arg_index8 = getelementptr inbounds i8, i8* %exp2.0, i64 4, !dbg !1966
  %8 = bitcast i8* %arg_index8 to i16*, !dbg !1966
  %9 = load i16, i16* %8, align 4, !dbg !1966
  %cmp10 = icmp eq i16 %7, %9, !dbg !1967
  br i1 %cmp10, label %if.end, label %cleanup, !dbg !1968

if.end:                                           ; preds = %for.cond
  %text13 = getelementptr inbounds i8, i8* %exp1.0, i64 6, !dbg !1969
  %text_len = bitcast i8* %exp1.0 to i32*, !dbg !1970
  %10 = load i32, i32* %text_len, align 4, !dbg !1970
  %conv14 = zext i32 %10 to i64, !dbg !1971
  call void @llvm.dbg.value(metadata i8* %quote1, metadata !1931, metadata !DIExpression(DW_OP_deref)), !dbg !1945
  %call15 = call fastcc i64 @canonicalize_text(i8* %call, i8* nonnull %text13, i64 %conv14, i8* nonnull %quote1) #8, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %call15, metadata !1934, metadata !DIExpression()), !dbg !1945
  %text16 = getelementptr inbounds i8, i8* %exp2.0, i64 6, !dbg !1973
  %text_len18 = bitcast i8* %exp2.0 to i32*, !dbg !1974
  %11 = load i32, i32* %text_len18, align 4, !dbg !1974
  %conv19 = zext i32 %11 to i64, !dbg !1975
  call void @llvm.dbg.value(metadata i8* %quote2, metadata !1932, metadata !DIExpression(DW_OP_deref)), !dbg !1945
  %call20 = call fastcc i64 @canonicalize_text(i8* %add.ptr, i8* nonnull %text16, i64 %conv19, i8* nonnull %quote2) #8, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %call20, metadata !1935, metadata !DIExpression()), !dbg !1945
  %cmp21 = icmp eq i64 %call15, %call20, !dbg !1977
  br i1 %cmp21, label %lor.lhs.false, label %cleanup, !dbg !1979

lor.lhs.false:                                    ; preds = %if.end
  %call23 = call i32 @memcmp(i8* %call, i8* %add.ptr, i64 %call15) #10, !dbg !1980
  %tobool = icmp eq i32 %call23, 0, !dbg !1980
  br i1 %tobool, label %if.end25, label %cleanup, !dbg !1981

if.end25:                                         ; preds = %lor.lhs.false
  %12 = load i16, i16* %6, align 4, !dbg !1982
  %cmp28 = icmp eq i16 %12, 0, !dbg !1984
  br i1 %cmp28, label %cleanup, label %if.end31, !dbg !1985

if.end31:                                         ; preds = %if.end25
  %13 = load i32, i32* %text_len, align 4, !dbg !1986
  %conv33 = zext i32 %13 to i64, !dbg !1986
  %add35 = add nuw nsw i64 %conv33, 13, !dbg !1986
  %and = and i64 %add35, 8589934584, !dbg !1986
  %add.ptr36 = getelementptr inbounds i8, i8* %exp1.0, i64 %and, !dbg !1987
  call void @llvm.dbg.value(metadata i8* %add.ptr36, metadata !1936, metadata !DIExpression()), !dbg !1956
  %14 = load i32, i32* %text_len18, align 4, !dbg !1988
  %conv38 = zext i32 %14 to i64, !dbg !1988
  %add40 = add nuw nsw i64 %conv38, 13, !dbg !1988
  %and41 = and i64 %add40, 8589934584, !dbg !1988
  %add.ptr42 = getelementptr inbounds i8, i8* %exp2.0, i64 %and41, !dbg !1989
  call void @llvm.dbg.value(metadata i8* %add.ptr42, metadata !1939, metadata !DIExpression()), !dbg !1956
  br label %cleanup, !dbg !1990

cleanup:                                          ; preds = %lor.lhs.false, %if.end, %for.cond, %if.end25, %if.end31
  %mismatch.1 = phi i8 [ %mismatch.0, %if.end31 ], [ %mismatch.0, %for.cond ], [ %mismatch.0, %lor.lhs.false ], [ %mismatch.0, %if.end ], [ 0, %if.end25 ], !dbg !1956
  %exp1.1 = phi i8* [ %add.ptr36, %if.end31 ], [ %exp1.0, %for.cond ], [ %exp1.0, %lor.lhs.false ], [ %exp1.0, %if.end ], [ %exp1.0, %if.end25 ], !dbg !1956
  %exp2.1 = phi i8* [ %add.ptr42, %if.end31 ], [ %exp2.0, %for.cond ], [ %exp2.0, %lor.lhs.false ], [ %exp2.0, %if.end ], [ %exp2.0, %if.end25 ], !dbg !1956
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end31 ], [ false, %for.cond ], [ false, %lor.lhs.false ], [ false, %if.end ], [ false, %if.end25 ]
  call void @llvm.dbg.value(metadata i8* %exp2.1, metadata !1939, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* %exp1.1, metadata !1936, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 %mismatch.1, metadata !1933, metadata !DIExpression()), !dbg !1945
  br i1 %cleanup.dest.slot.0, label %for.cond, label %if.end59.loopexit, !llvm.loop !1991

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %quote1, metadata !1931, metadata !DIExpression(DW_OP_deref)), !dbg !1945
  %call48 = call fastcc i64 @canonicalize_text(i8* %call, i8* %4, i64 %idx.ext, i8* nonnull %quote1) #8, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %call48, metadata !1934, metadata !DIExpression()), !dbg !1945
  %exp49 = getelementptr inbounds %struct.cpp_macro, %struct.cpp_macro* %macro2, i64 0, i32 1, !dbg !1996
  %text50 = bitcast %union.cpp_macro_u* %exp49 to i8**, !dbg !1997
  %15 = load i8*, i8** %text50, align 8, !dbg !1997
  %16 = load i32, i32* %count1, align 4, !dbg !1998
  %conv52 = zext i32 %16 to i64, !dbg !1999
  call void @llvm.dbg.value(metadata i8* %quote2, metadata !1932, metadata !DIExpression(DW_OP_deref)), !dbg !1945
  %call53 = call fastcc i64 @canonicalize_text(i8* %add.ptr, i8* %15, i64 %conv52, i8* nonnull %quote2) #8, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %call53, metadata !1935, metadata !DIExpression()), !dbg !1945
  %cmp54 = icmp eq i64 %call48, %call53, !dbg !2001
  br i1 %cmp54, label %lor.rhs, label %lor.end, !dbg !2002

lor.rhs:                                          ; preds = %if.else
  %call56 = call i32 @memcmp(i8* %call, i8* %add.ptr, i64 %call48) #10, !dbg !2003
  %tobool57 = icmp ne i32 %call56, 0, !dbg !2002
  %phitmp = zext i1 %tobool57 to i8, !dbg !2002
  br label %lor.end, !dbg !2002

lor.end:                                          ; preds = %if.else, %lor.rhs
  %17 = phi i8 [ 1, %if.else ], [ %phitmp, %lor.rhs ]
  call void @llvm.dbg.value(metadata i8 %17, metadata !1933, metadata !DIExpression()), !dbg !1945
  br label %if.end59

if.end59.loopexit:                                ; preds = %cleanup
  %mismatch.1.lcssa = phi i8 [ %mismatch.1, %cleanup ], !dbg !1956
  call void @llvm.dbg.value(metadata i8 %mismatch.1.lcssa, metadata !1933, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %mismatch.1.lcssa, metadata !1933, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 %mismatch.1.lcssa, metadata !1933, metadata !DIExpression()), !dbg !1945
  br label %if.end59, !dbg !2004

if.end59:                                         ; preds = %if.end59.loopexit, %lor.end
  %mismatch.2 = phi i8 [ %17, %lor.end ], [ %mismatch.1.lcssa, %if.end59.loopexit ], !dbg !1954
  call void @llvm.dbg.value(metadata i8 %mismatch.2, metadata !1933, metadata !DIExpression()), !dbg !1945
  call void @free(i8* %call) #7, !dbg !2004
  call void @llvm.dbg.value(metadata i8* %quote2, metadata !1932, metadata !DIExpression(DW_OP_deref)), !dbg !1945
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %quote2) #9, !dbg !2005
  call void @llvm.dbg.value(metadata i8* %quote1, metadata !1931, metadata !DIExpression(DW_OP_deref)), !dbg !1945
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %quote1) #9, !dbg !2005
  ret i8 %mismatch.2, !dbg !2006
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @canonicalize_text(i8* %dest, i8* %src, i64 %len, i8* %pquote) unnamed_addr #2 !dbg !2007 {
entry:
  call void @llvm.dbg.value(metadata i8* %dest, metadata !2011, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %src, metadata !2012, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %len, metadata !2013, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %pquote, metadata !2014, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %dest, metadata !2015, metadata !DIExpression()), !dbg !2017
  %0 = load i8, i8* %pquote, align 1, !dbg !2018
  call void @llvm.dbg.value(metadata i8 %0, metadata !2016, metadata !DIExpression()), !dbg !2017
  br label %while.cond, !dbg !2019

while.cond:                                       ; preds = %if.end33, %entry
  %quote.0 = phi i8 [ %0, %entry ], [ %quote.4, %if.end33 ], !dbg !2017
  %len.addr.0 = phi i64 [ %len, %entry ], [ %len.addr.2, %if.end33 ]
  %src.addr.0 = phi i8* [ %src, %entry ], [ %src.addr.2, %if.end33 ]
  %dest.addr.0 = phi i8* [ %dest, %entry ], [ %dest.addr.1, %if.end33 ]
  call void @llvm.dbg.value(metadata i8* %dest.addr.0, metadata !2011, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %src.addr.0, metadata !2012, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %len.addr.0, metadata !2013, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 %quote.0, metadata !2016, metadata !DIExpression()), !dbg !2017
  %tobool = icmp eq i64 %len.addr.0, 0, !dbg !2019
  br i1 %tobool, label %while.end, label %while.body, !dbg !2019

while.body:                                       ; preds = %while.cond
  %1 = load i8, i8* %src.addr.0, align 1, !dbg !2020
  %idxprom = zext i8 %1 to i64, !dbg !2020
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2020
  %2 = load i16, i16* %arrayidx, align 2, !dbg !2020
  %3 = and i16 %2, 3072, !dbg !2020
  %tobool3 = icmp eq i16 %3, 0, !dbg !2020
  %tobool4 = icmp ne i8 %quote.0, 0, !dbg !2023
  %or.cond = or i1 %tobool3, %tobool4, !dbg !2024
  br i1 %or.cond, label %if.else, label %do.body.preheader, !dbg !2024

do.body.preheader:                                ; preds = %while.body
  br label %do.body, !dbg !2025

do.body:                                          ; preds = %do.body.preheader, %land.rhs
  %len.addr.1 = phi i64 [ %dec, %land.rhs ], [ %len.addr.0, %do.body.preheader ]
  %src.addr.1 = phi i8* [ %incdec.ptr, %land.rhs ], [ %src.addr.0, %do.body.preheader ]
  call void @llvm.dbg.value(metadata i8* %src.addr.1, metadata !2012, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %len.addr.1, metadata !2013, metadata !DIExpression()), !dbg !2017
  %incdec.ptr = getelementptr inbounds i8, i8* %src.addr.1, i64 1, !dbg !2027
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2012, metadata !DIExpression()), !dbg !2017
  %dec = add i64 %len.addr.1, -1, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %dec, metadata !2013, metadata !DIExpression()), !dbg !2017
  %tobool5 = icmp eq i64 %dec, 0, !dbg !2029
  br i1 %tobool5, label %do.end, label %land.rhs, !dbg !2030

land.rhs:                                         ; preds = %do.body
  %4 = load i8, i8* %incdec.ptr, align 1, !dbg !2031
  %idxprom8 = zext i8 %4 to i64, !dbg !2031
  %arrayidx9 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom8, !dbg !2031
  %5 = load i16, i16* %arrayidx9, align 2, !dbg !2031
  %6 = and i16 %5, 3072, !dbg !2031
  %tobool12 = icmp eq i16 %6, 0, !dbg !2030
  br i1 %tobool12, label %do.end, label %do.body, !dbg !2032, !llvm.loop !2033

do.end:                                           ; preds = %land.rhs, %do.body
  %incdec.ptr.lcssa = phi i8* [ %incdec.ptr, %land.rhs ], [ %incdec.ptr, %do.body ], !dbg !2027
  %dec.lcssa = phi i64 [ %dec, %land.rhs ], [ %dec, %do.body ], !dbg !2028
  call void @llvm.dbg.value(metadata i8* %dest.addr.0, metadata !2011, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  store i8 32, i8* %dest.addr.0, align 1, !dbg !2035
  br label %if.end33, !dbg !2036

if.else:                                          ; preds = %while.body
  %cmp = icmp eq i8 %1, 39, !dbg !2037
  br i1 %cmp, label %if.then19, label %lor.lhs.false, !dbg !2040

lor.lhs.false:                                    ; preds = %if.else
  %cmp17 = icmp eq i8 %1, 34, !dbg !2041
  br i1 %cmp17, label %if.then19, label %if.end29, !dbg !2042

if.then19:                                        ; preds = %lor.lhs.false, %if.else
  %tobool20 = icmp eq i8 %quote.0, 0, !dbg !2043
  br i1 %tobool20, label %if.then21, label %if.else22, !dbg !2046

if.then21:                                        ; preds = %if.then19
  call void @llvm.dbg.value(metadata i8 %1, metadata !2016, metadata !DIExpression()), !dbg !2017
  br label %if.end29, !dbg !2047

if.else22:                                        ; preds = %if.then19
  %cmp25 = icmp eq i8 %quote.0, %1, !dbg !2048
  %spec.select = select i1 %cmp25, i8 0, i8 %quote.0, !dbg !2050
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !2016, metadata !DIExpression()), !dbg !2017
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %if.else22, %lor.lhs.false
  %quote.3 = phi i8 [ %quote.0, %lor.lhs.false ], [ %spec.select, %if.else22 ], [ %1, %if.then21 ], !dbg !2017
  call void @llvm.dbg.value(metadata i8 %quote.3, metadata !2016, metadata !DIExpression()), !dbg !2017
  %incdec.ptr30 = getelementptr inbounds i8, i8* %src.addr.0, i64 1, !dbg !2051
  call void @llvm.dbg.value(metadata i8* %incdec.ptr30, metadata !2012, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %dest.addr.0, metadata !2011, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2017
  store i8 %1, i8* %dest.addr.0, align 1, !dbg !2052
  %dec32 = add i64 %len.addr.0, -1, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %dec32, metadata !2013, metadata !DIExpression()), !dbg !2017
  br label %if.end33

if.end33:                                         ; preds = %if.end29, %do.end
  %quote.4 = phi i8 [ %quote.3, %if.end29 ], [ 0, %do.end ], !dbg !2017
  %len.addr.2 = phi i64 [ %dec32, %if.end29 ], [ %dec.lcssa, %do.end ], !dbg !2054
  %src.addr.2 = phi i8* [ %incdec.ptr30, %if.end29 ], [ %incdec.ptr.lcssa, %do.end ], !dbg !2054
  %dest.addr.1 = getelementptr inbounds i8, i8* %dest.addr.0, i64 1, !dbg !2054
  call void @llvm.dbg.value(metadata i8* %dest.addr.1, metadata !2011, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %src.addr.2, metadata !2012, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %len.addr.2, metadata !2013, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 %quote.4, metadata !2016, metadata !DIExpression()), !dbg !2017
  br label %while.cond, !dbg !2019, !llvm.loop !2055

while.end:                                        ; preds = %while.cond
  %quote.0.lcssa = phi i8 [ %quote.0, %while.cond ], !dbg !2017
  %dest.addr.0.lcssa = phi i8* [ %dest.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata i8 %quote.0.lcssa, metadata !2016, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %dest.addr.0.lcssa, metadata !2011, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 %quote.0.lcssa, metadata !2016, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %dest.addr.0.lcssa, metadata !2011, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 %quote.0.lcssa, metadata !2016, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %dest.addr.0.lcssa, metadata !2011, metadata !DIExpression()), !dbg !2017
  store i8 %quote.0.lcssa, i8* %pquote, align 1, !dbg !2057
  %sub.ptr.lhs.cast = ptrtoint i8* %dest.addr.0.lcssa to i64, !dbg !2058
  %sub.ptr.rhs.cast = ptrtoint i8* %dest to i64, !dbg !2058
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2058
  ret i64 %sub.ptr.sub, !dbg !2059
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #6

; Function Attrs: nounwind
declare dso_local void @free(i8*) local_unnamed_addr #5

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @skip_macro_block_comment(%struct.cpp_reader* %pfile) unnamed_addr #2 !dbg !2060 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2062, metadata !DIExpression()), !dbg !2064
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2065
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !2065
  %cur1 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 0, !dbg !2066
  %1 = load i8*, i8** %cur1, align 8, !dbg !2066
  call void @llvm.dbg.value(metadata i8* %1, metadata !2063, metadata !DIExpression()), !dbg !2064
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2067
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2063, metadata !DIExpression()), !dbg !2064
  %2 = load i8, i8* %incdec.ptr, align 1, !dbg !2068
  %cmp = icmp eq i8 %2, 47, !dbg !2070
  %incdec.ptr3 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !2071
  %spec.select = select i1 %cmp, i8* %incdec.ptr3, i8* %incdec.ptr, !dbg !2072
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !2063, metadata !DIExpression()), !dbg !2064
  br label %while.cond, !dbg !2073

while.cond:                                       ; preds = %land.end, %entry
  %cur.1 = phi i8* [ %spec.select, %entry ], [ %incdec.ptr4, %land.end ], !dbg !2064
  call void @llvm.dbg.value(metadata i8* %cur.1, metadata !2063, metadata !DIExpression()), !dbg !2064
  %incdec.ptr4 = getelementptr inbounds i8, i8* %cur.1, i64 1, !dbg !2074
  call void @llvm.dbg.value(metadata i8* %incdec.ptr4, metadata !2063, metadata !DIExpression()), !dbg !2064
  %3 = load i8, i8* %cur.1, align 1, !dbg !2075
  %cmp6 = icmp eq i8 %3, 47, !dbg !2076
  br i1 %cmp6, label %land.rhs, label %land.end, !dbg !2077

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds i8, i8* %cur.1, i64 -1, !dbg !2078
  %4 = load i8, i8* %arrayidx, align 1, !dbg !2078
  %cmp9 = icmp eq i8 %4, 42, !dbg !2079
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp9, %land.rhs ], !dbg !2064
  br i1 %5, label %while.end, label %while.cond, !dbg !2073, !llvm.loop !2080

while.end:                                        ; preds = %land.end
  %incdec.ptr4.lcssa = phi i8* [ %incdec.ptr4, %land.end ], !dbg !2074
  store i8* %incdec.ptr4.lcssa, i8** %cur1, align 8, !dbg !2082
  ret void, !dbg !2083
}

declare dso_local zeroext i8 @_cpp_skip_block_comment(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local %struct.ht_identifier* @ht_lookup(%struct.ht*, i8*, i64, i32) local_unnamed_addr #1

declare dso_local %struct._cpp_buff* @_cpp_get_buff(%struct.cpp_reader*, i64) local_unnamed_addr #1

declare dso_local i8* @_cpp_builtin_macro_text(%struct.cpp_reader*, %struct.cpp_hashnode*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ustrlen(i8* %s1) unnamed_addr #0 !dbg !2084 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !2088, metadata !DIExpression()), !dbg !2089
  %call = tail call i64 @strlen(i8* %s1) #10, !dbg !2090
  ret i64 %call, !dbg !2091
}

declare dso_local i8* @_cpp_unaligned_alloc(%struct.cpp_reader*, i64) local_unnamed_addr #1

declare dso_local void @_cpp_push_text_context(%struct.cpp_reader*, %struct.cpp_hashnode*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) local_unnamed_addr #6

declare dso_local zeroext i8 @cpp_error(%struct.cpp_reader*, i32, i8*, ...) local_unnamed_addr #1

declare dso_local void @_cpp_extend_buff(%struct.cpp_reader*, %struct._cpp_buff**, i64) local_unnamed_addr #1

declare dso_local zeroext i8 @_cpp_save_parameter(%struct.cpp_reader*, %struct.cpp_macro*, %struct.cpp_hashnode*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!154, !155, !156}
!llvm.ident = !{!157}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !50, nameTableKind: None)
!1 = !DIFile(filename: "cpp_traditional.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !17, !29, !35, !40}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_builtin_type", file: !4, line: 593, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./cpplib.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!7 = !DIEnumerator(name: "BT_SPECLINE", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "BT_DATE", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "BT_FILE", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "BT_BASE_FILE", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "BT_INCLUDE_LEVEL", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "BT_TIME", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "BT_STDC", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "BT_PRAGMA", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "BT_TIMESTAMP", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "BT_COUNTER", value: 9, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_lang", file: !4, line: 158, baseType: !5, size: 32, elements: !18)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!19 = !DIEnumerator(name: "CLK_GNUC89", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "CLK_GNUC99", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "CLK_STDC89", value: 2, isUnsigned: true)
!22 = !DIEnumerator(name: "CLK_STDC94", value: 3, isUnsigned: true)
!23 = !DIEnumerator(name: "CLK_STDC99", value: 4, isUnsigned: true)
!24 = !DIEnumerator(name: "CLK_GNUCXX", value: 5, isUnsigned: true)
!25 = !DIEnumerator(name: "CLK_CXX98", value: 6, isUnsigned: true)
!26 = !DIEnumerator(name: "CLK_GNUCXX0X", value: 7, isUnsigned: true)
!27 = !DIEnumerator(name: "CLK_CXX0X", value: 8, isUnsigned: true)
!28 = !DIEnumerator(name: "CLK_ASM", value: 9, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_normalize_level", file: !4, line: 265, baseType: !5, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "normalized_KC", value: 0, isUnsigned: true)
!32 = !DIEnumerator(name: "normalized_C", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "normalized_identifier_C", value: 2, isUnsigned: true)
!34 = !DIEnumerator(name: "normalized_none", value: 3, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_deps_style", file: !4, line: 262, baseType: !5, size: 32, elements: !36)
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "DEPS_NONE", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "DEPS_USER", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "DEPS_SYSTEM", value: 2, isUnsigned: true)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ls", file: !1, line: 72, baseType: !5, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49}
!42 = !DIEnumerator(name: "ls_none", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "ls_fun_open", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "ls_fun_close", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "ls_defined", value: 3, isUnsigned: true)
!46 = !DIEnumerator(name: "ls_defined_close", value: 4, isUnsigned: true)
!47 = !DIEnumerator(name: "ls_hash", value: 5, isUnsigned: true)
!48 = !DIEnumerator(name: "ls_predicate", value: 6, isUnsigned: true)
!49 = !DIEnumerator(name: "ls_answer", value: 7, isUnsigned: true)
!50 = !{!51, !52, !53, !65, !145, !146, !149, !66, !150, !151}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!52 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block", file: !1, line: 35, size: 64, elements: !55)
!55 = !{!56, !57, !58}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "text_len", scope: !54, file: !1, line: 37, baseType: !5, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !54, file: !1, line: 38, baseType: !52, size: 16, offset: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !54, file: !1, line: 39, baseType: !59, size: 8, offset: 48)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 8, elements: !63)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !61, line: 22, baseType: !62)
!61 = !DIFile(filename: "./cpp-id-data.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!62 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !{!64}
!64 = !DISubrange(count: 1)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_hashnode", file: !4, line: 36, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_hashnode", file: !4, line: 644, size: 256, elements: !69)
!69 = !{!70, !79, !80, !81, !82, !83, !84}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !68, file: !4, line: 645, baseType: !71, size: 128)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !72, line: 31, size: 128, elements: !73)
!72 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!73 = !{!74, !77, !78}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !71, file: !72, line: 32, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !71, file: !72, line: 33, baseType: !5, size: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !71, file: !72, line: 34, baseType: !5, size: 32, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !68, file: !4, line: 646, baseType: !5, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !68, file: !4, line: 647, baseType: !5, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !68, file: !4, line: 650, baseType: !62, size: 8, offset: 136)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !4, line: 651, baseType: !5, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !4, line: 652, baseType: !5, size: 10, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !68, file: !4, line: 654, baseType: !85, size: 64, offset: 192)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_cpp_hashnode_value", file: !4, line: 633, size: 64, elements: !86)
!86 = !{!87, !135, !143, !144}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !85, file: !4, line: 635, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_macro", file: !4, line: 37, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro", file: !61, line: 36, size: 256, elements: !91)
!91 = !{!92, !93, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !90, file: !61, line: 42, baseType: !65, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !90, file: !61, line: 51, baseType: !94, size: 64, offset: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_macro_u", file: !61, line: 47, size: 64, elements: !95)
!95 = !{!96, !125}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tokens", scope: !94, file: !61, line: 49, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !4, line: 34, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !4, line: 212, size: 192, elements: !100)
!100 = !{!101, !104, !105, !106}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !99, file: !4, line: 213, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !103, line: 44, baseType: !5)
!103 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !4, line: 214, baseType: !5, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !4, line: 215, baseType: !52, size: 16, offset: 48)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !99, file: !4, line: 237, baseType: !107, size: 128, offset: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_token_u", file: !4, line: 217, size: 128, elements: !108)
!108 = !{!109, !113, !114, !119, !123, !124}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !107, file: !4, line: 220, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_identifier", file: !4, line: 201, size: 64, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !110, file: !4, line: 207, baseType: !66, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !107, file: !4, line: 223, baseType: !97, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !107, file: !4, line: 226, baseType: !115, size: 128)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !4, line: 162, size: 128, elements: !116)
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !115, file: !4, line: 163, baseType: !5, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !115, file: !4, line: 164, baseType: !75, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !107, file: !4, line: 229, baseType: !120, size: 32)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !4, line: 195, size: 32, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !120, file: !4, line: 197, baseType: !5, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !107, file: !4, line: 233, baseType: !5, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !107, file: !4, line: 236, baseType: !5, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !94, file: !61, line: 50, baseType: !75, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !90, file: !61, line: 54, baseType: !102, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !90, file: !61, line: 57, baseType: !5, size: 32, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "paramc", scope: !90, file: !61, line: 60, baseType: !52, size: 16, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "fun_like", scope: !90, file: !61, line: 63, baseType: !5, size: 1, offset: 208, flags: DIFlagBitField, extraData: i64 208)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "variadic", scope: !90, file: !61, line: 66, baseType: !5, size: 1, offset: 209, flags: DIFlagBitField, extraData: i64 208)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "syshdr", scope: !90, file: !61, line: 69, baseType: !5, size: 1, offset: 210, flags: DIFlagBitField, extraData: i64 208)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !90, file: !61, line: 72, baseType: !5, size: 1, offset: 211, flags: DIFlagBitField, extraData: i64 208)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !90, file: !61, line: 75, baseType: !5, size: 1, offset: 212, flags: DIFlagBitField, extraData: i64 208)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "extra_tokens", scope: !90, file: !61, line: 80, baseType: !5, size: 1, offset: 213, flags: DIFlagBitField, extraData: i64 208)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "answers", scope: !85, file: !4, line: 637, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !61, line: 28, size: 320, elements: !138)
!138 = !{!139, !140, !141}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !137, file: !61, line: 29, baseType: !136, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !137, file: !61, line: 30, baseType: !5, size: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !137, file: !61, line: 31, baseType: !142, size: 192, offset: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 192, elements: !63)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !85, file: !4, line: 639, baseType: !3, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !85, file: !4, line: 641, baseType: !52, size: 16)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 46, baseType: !148)
!147 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!148 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!154 = !{i32 2, !"Dwarf Version", i32 4}
!155 = !{i32 2, !"Debug Info Version", i32 3}
!156 = !{i32 1, !"wchar_size", i32 4}
!157 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!158 = distinct !DISubprogram(name: "tolower", scope: !159, file: !159, line: 207, type: !160, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !163)
!159 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !162}
!162 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!163 = !{!164}
!164 = !DILocalVariable(name: "__c", arg: 1, scope: !158, file: !159, line: 207, type: !162)
!165 = !DILocation(line: 0, scope: !158)
!166 = !DILocation(line: 209, column: 22, scope: !158)
!167 = !DILocation(line: 209, column: 39, scope: !158)
!168 = !DILocation(line: 209, column: 38, scope: !158)
!169 = !DILocation(line: 209, column: 37, scope: !158)
!170 = !DILocation(line: 209, column: 10, scope: !158)
!171 = !DILocation(line: 209, column: 3, scope: !158)
!172 = distinct !DISubprogram(name: "toupper", scope: !159, file: !159, line: 213, type: !160, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !173)
!173 = !{!174}
!174 = !DILocalVariable(name: "__c", arg: 1, scope: !172, file: !159, line: 213, type: !162)
!175 = !DILocation(line: 0, scope: !172)
!176 = !DILocation(line: 215, column: 22, scope: !172)
!177 = !DILocation(line: 215, column: 39, scope: !172)
!178 = !DILocation(line: 215, column: 38, scope: !172)
!179 = !DILocation(line: 215, column: 37, scope: !172)
!180 = !DILocation(line: 215, column: 10, scope: !172)
!181 = !DILocation(line: 215, column: 3, scope: !172)
!182 = distinct !DISubprogram(name: "_cpp_overlay_buffer", scope: !1, file: !1, line: 268, type: !183, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !667)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !185, !665, !146}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !4, line: 31, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !188, line: 322, size: 10432, elements: !189)
!188 = !DIFile(filename: "./internal.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!189 = !{!190, !265, !266, !283, !313, !314, !324, !325, !326, !356, !358, !362, !363, !364, !365, !366, !367, !368, !369, !370, !373, !374, !377, !378, !411, !412, !413, !416, !417, !418, !419, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !445, !446, !447, !450, !530, !556, !559, !560, !623, !630, !631, !638, !639, !640, !641, !644, !645, !658}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !187, file: !188, line: 325, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_buffer", file: !4, line: 32, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_buffer", file: !188, line: 249, size: 1536, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !207, !208, !209, !210, !212, !215, !216, !219, !220, !221, !222, !223, !224, !251}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !193, file: !188, line: 251, baseType: !75, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "line_base", scope: !193, file: !188, line: 252, baseType: !75, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !193, file: !188, line: 253, baseType: !75, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !193, file: !188, line: 255, baseType: !75, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !193, file: !188, line: 256, baseType: !75, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !193, file: !188, line: 258, baseType: !201, size: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_line_note", file: !188, line: 235, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_line_note", file: !188, line: 236, size: 128, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !203, file: !188, line: 239, baseType: !75, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !203, file: !188, line: 245, baseType: !5, size: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "cur_note", scope: !193, file: !188, line: 259, baseType: !5, size: 32, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "notes_used", scope: !193, file: !188, line: 260, baseType: !5, size: 32, offset: 416)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "notes_cap", scope: !193, file: !188, line: 261, baseType: !5, size: 32, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !193, file: !188, line: 263, baseType: !211, size: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !193, file: !188, line: 267, baseType: !213, size: 64, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_file", file: !4, line: 42, flags: DIFlagFwdDecl)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !193, file: !188, line: 271, baseType: !75, size: 64, offset: 640)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "if_stack", scope: !193, file: !188, line: 275, baseType: !217, size: 64, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DICompositeType(tag: DW_TAG_structure_type, name: "if_stack", file: !188, line: 275, flags: DIFlagFwdDecl)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "need_line", scope: !193, file: !188, line: 278, baseType: !62, size: 8, offset: 768)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "warned_cplusplus_comments", scope: !193, file: !188, line: 284, baseType: !5, size: 1, offset: 776, flags: DIFlagBitField, extraData: i64 776)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "from_stage3", scope: !193, file: !188, line: 289, baseType: !5, size: 1, offset: 777, flags: DIFlagBitField, extraData: i64 776)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "return_at_eof", scope: !193, file: !188, line: 294, baseType: !5, size: 1, offset: 778, flags: DIFlagBitField, extraData: i64 776)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !193, file: !188, line: 298, baseType: !62, size: 8, offset: 784)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !193, file: !188, line: 302, baseType: !225, size: 512, offset: 832)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !4, line: 523, size: 512, elements: !226)
!226 = !{!227, !229, !231, !232, !233, !234, !235, !237, !243, !248}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !4, line: 526, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !4, line: 529, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !225, file: !4, line: 530, baseType: !5, size: 32, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !225, file: !4, line: 534, baseType: !62, size: 8, offset: 160)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !225, file: !4, line: 537, baseType: !62, size: 8, offset: 168)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !225, file: !4, line: 541, baseType: !230, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !225, file: !4, line: 545, baseType: !236, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !225, file: !4, line: 551, baseType: !238, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!230, !151, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !4, line: 39, baseType: !225)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !225, file: !4, line: 555, baseType: !244, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !245, line: 47, baseType: !246)
!245 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !247, line: 148, baseType: !148)
!247 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !225, file: !4, line: 556, baseType: !249, size: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !245, line: 59, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !247, line: 145, baseType: !148)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "input_cset_desc", scope: !193, file: !188, line: 306, baseType: !252, size: 192, offset: 1344)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cset_converter", file: !188, line: 47, size: 192, elements: !253)
!253 = !{!254, !263, !264}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !252, file: !188, line: 49, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "convert_f", file: !188, line: 45, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!62, !259, !75, !146, !261}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !260, line: 29, baseType: !51)
!260 = !DIFile(filename: "/usr/include/iconv.h", directory: "")
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_strbuf", file: !188, line: 43, flags: DIFlagFwdDecl)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !252, file: !188, line: 50, baseType: !259, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !252, file: !188, line: 51, baseType: !162, size: 32, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "overlaid_buffer", scope: !187, file: !188, line: 328, baseType: !191, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !187, file: !188, line: 331, baseType: !267, size: 160, offset: 128)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lexer_state", file: !188, line: 177, size: 160, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "in_directive", scope: !267, file: !188, line: 180, baseType: !62, size: 8)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "directive_wants_padding", scope: !267, file: !188, line: 185, baseType: !62, size: 8, offset: 8)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "skipping", scope: !267, file: !188, line: 188, baseType: !62, size: 8, offset: 16)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "angled_headers", scope: !267, file: !188, line: 191, baseType: !62, size: 8, offset: 24)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "in_expression", scope: !267, file: !188, line: 194, baseType: !62, size: 8, offset: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "save_comments", scope: !267, file: !188, line: 198, baseType: !62, size: 8, offset: 40)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "va_args_ok", scope: !267, file: !188, line: 201, baseType: !62, size: 8, offset: 48)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned_ok", scope: !267, file: !188, line: 204, baseType: !62, size: 8, offset: 56)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_expansion", scope: !267, file: !188, line: 207, baseType: !62, size: 8, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "parsing_args", scope: !267, file: !188, line: 210, baseType: !62, size: 8, offset: 72)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "discarding_output", scope: !267, file: !188, line: 214, baseType: !62, size: 8, offset: 80)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "skip_eval", scope: !267, file: !188, line: 217, baseType: !5, size: 32, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "in_deferred_pragma", scope: !267, file: !188, line: 220, baseType: !62, size: 8, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "pragma_allow_expansion", scope: !267, file: !188, line: 223, baseType: !62, size: 8, offset: 136)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "line_table", scope: !187, file: !188, line: 334, baseType: !284, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !103, line: 74, size: 448, elements: !286)
!286 = !{!287, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !285, file: !103, line: 75, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !103, line: 61, size: 192, elements: !290)
!290 = !{!291, !292, !294, !295, !296, !297, !298}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !289, file: !103, line: 62, baseType: !151, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !289, file: !103, line: 63, baseType: !293, size: 32, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !103, line: 39, baseType: !5)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !289, file: !103, line: 64, baseType: !102, size: 32, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !289, file: !103, line: 65, baseType: !162, size: 32, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !289, file: !103, line: 66, baseType: !5, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !289, file: !103, line: 68, baseType: !62, size: 8, offset: 168)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !289, file: !103, line: 70, baseType: !5, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !285, file: !103, line: 76, baseType: !5, size: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !285, file: !103, line: 77, baseType: !5, size: 32, offset: 96)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !285, file: !103, line: 79, baseType: !5, size: 32, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !285, file: !103, line: 84, baseType: !162, size: 32, offset: 160)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !285, file: !103, line: 87, baseType: !5, size: 32, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !285, file: !103, line: 90, baseType: !62, size: 8, offset: 224)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !285, file: !103, line: 93, baseType: !102, size: 32, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !285, file: !103, line: 96, baseType: !102, size: 32, offset: 288)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !285, file: !103, line: 100, baseType: !5, size: 32, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !285, file: !103, line: 104, baseType: !309, size: 64, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !103, line: 47, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!51, !51, !146}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "directive_line", scope: !187, file: !188, line: 337, baseType: !102, size: 32, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "a_buff", scope: !187, file: !188, line: 340, baseType: !315, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_buff", file: !188, line: 99, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_buff", file: !188, line: 100, size: 256, elements: !318)
!318 = !{!319, !321, !322, !323}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !188, line: 102, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !317, file: !188, line: 103, baseType: !149, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !317, file: !188, line: 103, baseType: !149, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !317, file: !188, line: 103, baseType: !149, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "u_buff", scope: !187, file: !188, line: 341, baseType: !315, size: 64, offset: 512)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffs", scope: !187, file: !188, line: 342, baseType: !315, size: 64, offset: 576)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "base_context", scope: !187, file: !188, line: 345, baseType: !327, size: 448, offset: 640)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_context", file: !188, line: 142, size: 448, elements: !328)
!328 = !{!329, !332, !333, !353, !354, !355}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !188, line: 145, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_context", file: !188, line: 141, baseType: !327)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !327, file: !188, line: 145, baseType: !330, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !327, file: !188, line: 164, baseType: !334, size: 128, offset: 128)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !188, line: 147, size: 128, elements: !335)
!335 = !{!336, !348}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "iso", scope: !334, file: !188, line: 156, baseType: !337, size: 128)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !334, file: !188, line: 152, size: 128, elements: !338)
!338 = !{!339, !347}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !337, file: !188, line: 154, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "utoken", file: !188, line: 121, size: 64, elements: !341)
!341 = !{!342, !345}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !340, file: !188, line: 123, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ptoken", scope: !340, file: !188, line: 124, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !337, file: !188, line: 155, baseType: !340, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "trad", scope: !334, file: !188, line: 163, baseType: !349, size: 128)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !334, file: !188, line: 159, size: 128, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !349, file: !188, line: 161, baseType: !75, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !349, file: !188, line: 162, baseType: !75, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !327, file: !188, line: 168, baseType: !315, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !327, file: !188, line: 171, baseType: !66, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "direct_p", scope: !327, file: !188, line: 174, baseType: !62, size: 8, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !187, file: !188, line: 346, baseType: !357, size: 64, offset: 1088)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !187, file: !188, line: 349, baseType: !359, size: 64, offset: 1152)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "directive", file: !188, line: 40, flags: DIFlagFwdDecl)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "directive_result", scope: !187, file: !188, line: 352, baseType: !98, size: 192, offset: 1216)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "invocation_location", scope: !187, file: !188, line: 356, baseType: !102, size: 32, offset: 1408)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "set_invocation_location", scope: !187, file: !188, line: 360, baseType: !62, size: 8, offset: 1440)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "quote_include", scope: !187, file: !188, line: 363, baseType: !228, size: 64, offset: 1472)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "bracket_include", scope: !187, file: !188, line: 364, baseType: !228, size: 64, offset: 1536)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "no_search_path", scope: !187, file: !188, line: 365, baseType: !225, size: 512, offset: 1600)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "all_files", scope: !187, file: !188, line: 368, baseType: !213, size: 64, offset: 2112)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "main_file", scope: !187, file: !188, line: 370, baseType: !213, size: 64, offset: 2176)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash", scope: !187, file: !188, line: 373, baseType: !371, size: 64, offset: 2240)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !188, line: 373, flags: DIFlagFwdDecl)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash", scope: !187, file: !188, line: 374, baseType: !371, size: 64, offset: 2304)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash_entries", scope: !187, file: !188, line: 375, baseType: !375, size: 64, offset: 2368)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_hash_entry_pool", file: !188, line: 375, flags: DIFlagFwdDecl)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_hash", scope: !187, file: !188, line: 378, baseType: !371, size: 64, offset: 2432)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_ob", scope: !187, file: !188, line: 379, baseType: !379, size: 704, offset: 2496)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !380, line: 164, size: 704, elements: !381)
!380 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!381 = !{!382, !384, !394, !395, !396, !397, !398, !399, !403, !407, !408, !409, !410}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !379, file: !380, line: 166, baseType: !383, size: 64)
!383 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !379, file: !380, line: 167, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !380, line: 157, size: 192, elements: !387)
!387 = !{!388, !389, !390}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !386, file: !380, line: 159, baseType: !230, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !386, file: !380, line: 160, baseType: !385, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !386, file: !380, line: 161, baseType: !391, size: 32, offset: 128)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 32, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 4)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !379, file: !380, line: 168, baseType: !230, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !379, file: !380, line: 169, baseType: !230, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !379, file: !380, line: 170, baseType: !230, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !379, file: !380, line: 171, baseType: !383, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !379, file: !380, line: 172, baseType: !162, size: 32, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !379, file: !380, line: 176, baseType: !400, size: 64, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!385, !51, !383}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !379, file: !380, line: 177, baseType: !404, size: 64, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !51, !385}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !379, file: !380, line: 178, baseType: !51, size: 64, offset: 576)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !379, file: !380, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !379, file: !380, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !379, file: !380, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "quote_ignores_source_dir", scope: !187, file: !188, line: 383, baseType: !62, size: 8, offset: 3200)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "seen_once_only", scope: !187, file: !188, line: 387, baseType: !62, size: 8, offset: 3208)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mi_cmacro", scope: !187, file: !188, line: 390, baseType: !414, size: 64, offset: 3264)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "mi_ind_cmacro", scope: !187, file: !188, line: 391, baseType: !414, size: 64, offset: 3328)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mi_valid", scope: !187, file: !188, line: 392, baseType: !62, size: 8, offset: 3392)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "cur_token", scope: !187, file: !188, line: 395, baseType: !97, size: 64, offset: 3456)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "base_run", scope: !187, file: !188, line: 396, baseType: !420, size: 256, offset: 3520)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "tokenrun", file: !188, line: 128, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenrun", file: !188, line: 129, size: 256, elements: !422)
!422 = !{!423, !425, !426, !427}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !188, line: 131, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !421, file: !188, line: 131, baseType: !424, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !421, file: !188, line: 132, baseType: !97, size: 64, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !421, file: !188, line: 132, baseType: !97, size: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "cur_run", scope: !187, file: !188, line: 396, baseType: !424, size: 64, offset: 3776)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "lookaheads", scope: !187, file: !188, line: 397, baseType: !5, size: 32, offset: 3840)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "keep_tokens", scope: !187, file: !188, line: 400, baseType: !5, size: 32, offset: 3872)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer", scope: !187, file: !188, line: 403, baseType: !149, size: 64, offset: 3904)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer_len", scope: !187, file: !188, line: 404, baseType: !5, size: 32, offset: 3968)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_cset_desc", scope: !187, file: !188, line: 408, baseType: !252, size: 192, offset: 4032)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_cset_desc", scope: !187, file: !188, line: 412, baseType: !252, size: 192, offset: 4224)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "char16_cset_desc", scope: !187, file: !188, line: 416, baseType: !252, size: 192, offset: 4416)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "char32_cset_desc", scope: !187, file: !188, line: 420, baseType: !252, size: 192, offset: 4608)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "wide_cset_desc", scope: !187, file: !188, line: 424, baseType: !252, size: 192, offset: 4800)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !187, file: !188, line: 427, baseType: !75, size: 64, offset: 4992)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !187, file: !188, line: 428, baseType: !75, size: 64, offset: 5056)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_paste", scope: !187, file: !188, line: 431, baseType: !98, size: 192, offset: 5120)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !187, file: !188, line: 432, baseType: !98, size: 192, offset: 5312)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !187, file: !188, line: 435, baseType: !443, size: 64, offset: 5504)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !4, line: 685, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "hash_ob", scope: !187, file: !188, line: 439, baseType: !379, size: 704, offset: 5568)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_ob", scope: !187, file: !188, line: 443, baseType: !379, size: 704, offset: 6272)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pragmas", scope: !187, file: !188, line: 447, baseType: !448, size: 64, offset: 6976)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "pragma_entry", file: !188, line: 447, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !187, file: !188, line: 450, baseType: !451, size: 1088, offset: 7040)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !4, line: 472, size: 1088, elements: !452)
!452 = !{!453, !457, !463, !467, !471, !475, !476, !483, !487, !491, !495, !501, !505, !520, !521, !522, !526}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !451, file: !4, line: 475, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !185, !343, !162}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !451, file: !4, line: 481, baseType: !458, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !185, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !451, file: !4, line: 483, baseType: !464, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !185, !151}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !451, file: !4, line: 484, baseType: !468, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !185, !5, !75, !151, !162, !346}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !451, file: !4, line: 486, baseType: !472, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !185, !5, !66}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !451, file: !4, line: 487, baseType: !472, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !451, file: !4, line: 488, baseType: !477, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !185, !5, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !4, line: 35, baseType: !115)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !451, file: !4, line: 489, baseType: !484, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !185, !5}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !451, file: !4, line: 490, baseType: !488, size: 64, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!162, !185, !151, !162}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !451, file: !4, line: 491, baseType: !492, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !185, !151, !162, !151}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !451, file: !4, line: 492, baseType: !496, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !4, line: 469, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!151, !185, !151, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !451, file: !4, line: 496, baseType: !502, size: 64, offset: 704)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!66, !185, !343}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !451, file: !4, line: 500, baseType: !506, size: 64, offset: 768)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!62, !185, !162, !102, !5, !151, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !511, line: 14, baseType: !512)
!511 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 216, baseType: !513)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 192, elements: !63)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 216, size: 192, elements: !515)
!515 = !{!516, !517, !518, !519}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !514, file: !1, line: 216, baseType: !5, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !514, file: !1, line: 216, baseType: !5, size: 32, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !514, file: !1, line: 216, baseType: !51, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !514, file: !1, line: 216, baseType: !51, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !451, file: !4, line: 506, baseType: !472, size: 64, offset: 832)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !451, file: !4, line: 507, baseType: !472, size: 64, offset: 896)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !451, file: !4, line: 510, baseType: !523, size: 64, offset: 960)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !185}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !451, file: !4, line: 513, baseType: !527, size: 64, offset: 1024)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !185, !102, !66}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !187, file: !188, line: 453, baseType: !531, size: 64, offset: 8128)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht", file: !72, line: 46, size: 1152, elements: !533)
!533 = !{!534, !535, !539, !545, !549, !550, !551, !553, !554, !555}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !532, file: !72, line: 49, baseType: !379, size: 704)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !532, file: !72, line: 51, baseType: !536, size: 64, offset: 704)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashnode", file: !72, line: 41, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_node", scope: !532, file: !72, line: 53, baseType: !540, size: 64, offset: 768)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!537, !543}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !72, line: 40, baseType: !532)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_subobject", scope: !532, file: !72, line: 56, baseType: !546, size: 64, offset: 832)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!51, !146}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !532, file: !72, line: 58, baseType: !5, size: 32, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !532, file: !72, line: 59, baseType: !5, size: 32, offset: 928)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !532, file: !72, line: 62, baseType: !552, size: 64, offset: 960)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !532, file: !72, line: 65, baseType: !5, size: 32, offset: 1024)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !532, file: !72, line: 66, baseType: !5, size: 32, offset: 1056)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !532, file: !72, line: 69, baseType: !62, size: 8, offset: 1088)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "op_stack", scope: !187, file: !188, line: 456, baseType: !557, size: 64, offset: 8192)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !188, line: 42, flags: DIFlagFwdDecl)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "op_limit", scope: !187, file: !188, line: 456, baseType: !557, size: 64, offset: 8256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !187, file: !188, line: 459, baseType: !561, size: 1024, offset: 8320)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !4, line: 279, size: 1024, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !614, !615, !616, !617, !618, !619, !620, !621, !622}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !561, file: !4, line: 282, baseType: !5, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !561, file: !4, line: 285, baseType: !17, size: 32, offset: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !561, file: !4, line: 288, baseType: !62, size: 8, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !561, file: !4, line: 291, baseType: !62, size: 8, offset: 72)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !561, file: !4, line: 296, baseType: !62, size: 8, offset: 80)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !561, file: !4, line: 299, baseType: !62, size: 8, offset: 88)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !561, file: !4, line: 303, baseType: !62, size: 8, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !561, file: !4, line: 306, baseType: !62, size: 8, offset: 104)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !561, file: !4, line: 309, baseType: !62, size: 8, offset: 112)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !561, file: !4, line: 312, baseType: !62, size: 8, offset: 120)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !561, file: !4, line: 315, baseType: !62, size: 8, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !561, file: !4, line: 318, baseType: !62, size: 8, offset: 136)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !561, file: !4, line: 321, baseType: !62, size: 8, offset: 144)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !561, file: !4, line: 324, baseType: !62, size: 8, offset: 152)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !561, file: !4, line: 328, baseType: !62, size: 8, offset: 160)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !561, file: !4, line: 331, baseType: !62, size: 8, offset: 168)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !561, file: !4, line: 334, baseType: !62, size: 8, offset: 176)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !561, file: !4, line: 338, baseType: !62, size: 8, offset: 184)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !561, file: !4, line: 341, baseType: !62, size: 8, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !561, file: !4, line: 344, baseType: !62, size: 8, offset: 200)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !561, file: !4, line: 348, baseType: !62, size: 8, offset: 208)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !561, file: !4, line: 352, baseType: !62, size: 8, offset: 216)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !561, file: !4, line: 356, baseType: !62, size: 8, offset: 224)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !561, file: !4, line: 360, baseType: !62, size: 8, offset: 232)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !561, file: !4, line: 363, baseType: !62, size: 8, offset: 240)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !561, file: !4, line: 366, baseType: !62, size: 8, offset: 248)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !561, file: !4, line: 370, baseType: !62, size: 8, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !561, file: !4, line: 373, baseType: !62, size: 8, offset: 264)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !561, file: !4, line: 376, baseType: !62, size: 8, offset: 272)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !561, file: !4, line: 379, baseType: !62, size: 8, offset: 280)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !561, file: !4, line: 382, baseType: !62, size: 8, offset: 288)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !561, file: !4, line: 385, baseType: !62, size: 8, offset: 296)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !561, file: !4, line: 389, baseType: !62, size: 8, offset: 304)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !561, file: !4, line: 392, baseType: !62, size: 8, offset: 312)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !561, file: !4, line: 395, baseType: !62, size: 8, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !561, file: !4, line: 398, baseType: !62, size: 8, offset: 328)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !561, file: !4, line: 401, baseType: !62, size: 8, offset: 336)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !561, file: !4, line: 404, baseType: !151, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !561, file: !4, line: 407, baseType: !151, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !561, file: !4, line: 410, baseType: !151, size: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !561, file: !4, line: 414, baseType: !29, size: 32, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !561, file: !4, line: 417, baseType: !62, size: 8, offset: 608)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !561, file: !4, line: 420, baseType: !62, size: 8, offset: 616)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !561, file: !4, line: 441, baseType: !607, size: 64, offset: 640)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !561, file: !4, line: 423, size: 64, elements: !608)
!608 = !{!609, !610, !611, !612, !613}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !607, file: !4, line: 426, baseType: !35, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !607, file: !4, line: 429, baseType: !62, size: 8, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !607, file: !4, line: 433, baseType: !62, size: 8, offset: 40)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !607, file: !4, line: 436, baseType: !62, size: 8, offset: 48)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !607, file: !4, line: 440, baseType: !62, size: 8, offset: 56)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !561, file: !4, line: 447, baseType: !146, size: 64, offset: 704)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !561, file: !4, line: 447, baseType: !146, size: 64, offset: 768)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !561, file: !4, line: 447, baseType: !146, size: 64, offset: 832)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !561, file: !4, line: 447, baseType: !146, size: 64, offset: 896)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !561, file: !4, line: 450, baseType: !62, size: 8, offset: 960)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !561, file: !4, line: 450, baseType: !62, size: 8, offset: 968)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !561, file: !4, line: 454, baseType: !62, size: 8, offset: 976)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !561, file: !4, line: 457, baseType: !62, size: 8, offset: 984)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !561, file: !4, line: 460, baseType: !62, size: 8, offset: 992)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "spec_nodes", scope: !187, file: !188, line: 463, baseType: !624, size: 256, offset: 9344)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spec_nodes", file: !188, line: 227, size: 256, elements: !625)
!625 = !{!626, !627, !628, !629}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "n_defined", scope: !624, file: !188, line: 229, baseType: !66, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "n_true", scope: !624, file: !188, line: 230, baseType: !66, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "n_false", scope: !624, file: !188, line: 231, baseType: !66, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "n__VA_ARGS__", scope: !624, file: !188, line: 232, baseType: !66, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "our_hashtable", scope: !187, file: !188, line: 466, baseType: !62, size: 8, offset: 9600)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !187, file: !188, line: 475, baseType: !632, size: 256, offset: 9664)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !187, file: !188, line: 469, size: 256, elements: !633)
!633 = !{!634, !635, !636, !637}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !632, file: !188, line: 471, baseType: !149, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !632, file: !188, line: 472, baseType: !149, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !632, file: !188, line: 473, baseType: !149, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !632, file: !188, line: 474, baseType: !102, size: 32, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cur", scope: !187, file: !188, line: 478, baseType: !75, size: 64, offset: 9920)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "saved_rlimit", scope: !187, file: !188, line: 478, baseType: !75, size: 64, offset: 9984)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "saved_line_base", scope: !187, file: !188, line: 478, baseType: !75, size: 64, offset: 10048)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "savedstate", scope: !187, file: !188, line: 482, baseType: !642, size: 64, offset: 10112)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_savedstate", file: !188, line: 482, flags: DIFlagFwdDecl)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !187, file: !188, line: 485, baseType: !5, size: 32, offset: 10176)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "comments", scope: !187, file: !188, line: 488, baseType: !646, size: 128, offset: 10240)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment_table", file: !4, line: 901, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 891, size: 128, elements: !648)
!648 = !{!649, !656, !657}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !647, file: !4, line: 894, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment", file: !4, line: 887, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 880, size: 128, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !652, file: !4, line: 883, baseType: !230, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sloc", scope: !652, file: !4, line: 886, baseType: !102, size: 32, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !647, file: !4, line: 897, baseType: !162, size: 32, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !647, file: !4, line: 900, baseType: !162, size: 32, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pushed_macros", scope: !187, file: !188, line: 491, baseType: !659, size: 64, offset: 10368)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_pragma_macro", file: !188, line: 310, size: 192, elements: !661)
!661 = !{!662, !663, !664}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !660, file: !188, line: 312, baseType: !659, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !660, file: !188, line: 314, baseType: !230, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !660, file: !188, line: 316, baseType: !88, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!667 = !{!668, !669, !670, !671}
!668 = !DILocalVariable(name: "pfile", arg: 1, scope: !182, file: !1, line: 268, type: !185)
!669 = !DILocalVariable(name: "start", arg: 2, scope: !182, file: !1, line: 268, type: !665)
!670 = !DILocalVariable(name: "len", arg: 3, scope: !182, file: !1, line: 268, type: !146)
!671 = !DILocalVariable(name: "buffer", scope: !182, file: !1, line: 270, type: !191)
!672 = !DILocation(line: 0, scope: !182)
!673 = !DILocation(line: 270, column: 31, scope: !182)
!674 = !DILocation(line: 272, column: 10, scope: !182)
!675 = !DILocation(line: 272, column: 26, scope: !182)
!676 = !DILocation(line: 273, column: 30, scope: !182)
!677 = !DILocation(line: 273, column: 10, scope: !182)
!678 = !DILocation(line: 273, column: 20, scope: !182)
!679 = !DILocation(line: 274, column: 33, scope: !182)
!680 = !DILocation(line: 274, column: 10, scope: !182)
!681 = !DILocation(line: 274, column: 23, scope: !182)
!682 = !DILocation(line: 275, column: 36, scope: !182)
!683 = !DILocation(line: 275, column: 10, scope: !182)
!684 = !DILocation(line: 275, column: 26, scope: !182)
!685 = !DILocation(line: 276, column: 11, scope: !182)
!686 = !DILocation(line: 276, column: 21, scope: !182)
!687 = !DILocation(line: 278, column: 11, scope: !182)
!688 = !DILocation(line: 278, column: 15, scope: !182)
!689 = !DILocation(line: 279, column: 11, scope: !182)
!690 = !DILocation(line: 279, column: 21, scope: !182)
!691 = !DILocation(line: 280, column: 26, scope: !182)
!692 = !DILocation(line: 280, column: 18, scope: !182)
!693 = !DILocation(line: 281, column: 1, scope: !182)
!694 = distinct !DISubprogram(name: "_cpp_remove_overlay", scope: !1, file: !1, line: 285, type: !524, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !695)
!695 = !{!696, !697}
!696 = !DILocalVariable(name: "pfile", arg: 1, scope: !694, file: !1, line: 285, type: !185)
!697 = !DILocalVariable(name: "buffer", scope: !694, file: !1, line: 287, type: !191)
!698 = !DILocation(line: 0, scope: !694)
!699 = !DILocation(line: 287, column: 31, scope: !694)
!700 = !DILocation(line: 289, column: 24, scope: !694)
!701 = !DILocation(line: 289, column: 15, scope: !694)
!702 = !DILocation(line: 290, column: 27, scope: !694)
!703 = !DILocation(line: 290, column: 11, scope: !694)
!704 = !DILocation(line: 290, column: 18, scope: !694)
!705 = !DILocation(line: 291, column: 30, scope: !694)
!706 = !DILocation(line: 291, column: 11, scope: !694)
!707 = !DILocation(line: 291, column: 21, scope: !694)
!708 = !DILocation(line: 292, column: 11, scope: !694)
!709 = !DILocation(line: 292, column: 21, scope: !694)
!710 = !DILocation(line: 294, column: 26, scope: !694)
!711 = !DILocation(line: 295, column: 1, scope: !694)
!712 = distinct !DISubprogram(name: "_cpp_read_logical_line_trad", scope: !1, file: !1, line: 300, type: !713, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !715)
!713 = !DISubroutineType(types: !714)
!714 = !{!62, !185}
!715 = !{!716}
!716 = !DILocalVariable(name: "pfile", arg: 1, scope: !712, file: !1, line: 300, type: !185)
!717 = !DILocation(line: 0, scope: !712)
!718 = !DILocation(line: 0, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !1, line: 304, column: 11)
!720 = distinct !DILexicalBlock(scope: !712, file: !1, line: 303, column: 5)
!721 = !DILocation(line: 302, column: 3, scope: !712)
!722 = !DILocation(line: 304, column: 18, scope: !719)
!723 = !DILocation(line: 304, column: 26, scope: !719)
!724 = !DILocation(line: 304, column: 11, scope: !719)
!725 = !DILocation(line: 304, column: 36, scope: !719)
!726 = !DILocation(line: 304, column: 40, scope: !719)
!727 = !DILocation(line: 304, column: 11, scope: !720)
!728 = !DILocation(line: 307, column: 11, scope: !712)
!729 = !DILocation(line: 307, column: 52, scope: !712)
!730 = distinct !{!730, !721, !731}
!731 = !DILocation(line: 307, column: 76, scope: !712)
!732 = !DILocation(line: 307, column: 68, scope: !712)
!733 = !DILocation(line: 306, column: 5, scope: !720)
!734 = !DILocation(line: 309, column: 17, scope: !712)
!735 = !DILocation(line: 309, column: 24, scope: !712)
!736 = !DILocation(line: 309, column: 10, scope: !712)
!737 = !DILocation(line: 309, column: 3, scope: !712)
!738 = !DILocation(line: 310, column: 1, scope: !712)
!739 = distinct !DISubprogram(name: "_cpp_scan_out_logical_line", scope: !1, file: !1, line: 345, type: !740, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !742)
!740 = !DISubroutineType(types: !741)
!741 = !{!62, !185, !88}
!742 = !{!743, !744, !745, !746, !747, !748, !749, !758, !759, !760, !761, !762, !763, !764, !772, !773, !774, !777, !778, !783, !789, !790, !791, !793, !794}
!743 = !DILocalVariable(name: "pfile", arg: 1, scope: !739, file: !1, line: 345, type: !185)
!744 = !DILocalVariable(name: "macro", arg: 2, scope: !739, file: !1, line: 345, type: !88)
!745 = !DILocalVariable(name: "result", scope: !739, file: !1, line: 347, type: !62)
!746 = !DILocalVariable(name: "context", scope: !739, file: !1, line: 348, type: !330)
!747 = !DILocalVariable(name: "cur", scope: !739, file: !1, line: 349, type: !665)
!748 = !DILocalVariable(name: "out", scope: !739, file: !1, line: 350, type: !145)
!749 = !DILocalVariable(name: "fmacro", scope: !739, file: !1, line: 351, type: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fun_macro", file: !1, line: 47, size: 320, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !750, file: !1, line: 50, baseType: !315, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !750, file: !1, line: 56, baseType: !150, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !750, file: !1, line: 59, baseType: !66, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !750, file: !1, line: 62, baseType: !146, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !750, file: !1, line: 65, baseType: !102, size: 32, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !750, file: !1, line: 68, baseType: !5, size: 32, offset: 288)
!758 = !DILocalVariable(name: "c", scope: !739, file: !1, line: 352, type: !5)
!759 = !DILocalVariable(name: "paren_depth", scope: !739, file: !1, line: 352, type: !5)
!760 = !DILocalVariable(name: "quote", scope: !739, file: !1, line: 352, type: !5)
!761 = !DILocalVariable(name: "lex_state", scope: !739, file: !1, line: 353, type: !40)
!762 = !DILocalVariable(name: "header_ok", scope: !739, file: !1, line: 354, type: !62)
!763 = !DILocalVariable(name: "start_of_input_line", scope: !739, file: !1, line: 355, type: !665)
!764 = !DILocalVariable(name: "line_table", scope: !765, file: !1, line: 414, type: !770)
!765 = distinct !DILexicalBlock(scope: !766, file: !1, line: 414, column: 4)
!766 = distinct !DILexicalBlock(scope: !767, file: !1, line: 393, column: 2)
!767 = distinct !DILexicalBlock(scope: !768, file: !1, line: 380, column: 5)
!768 = distinct !DILexicalBlock(scope: !769, file: !1, line: 379, column: 3)
!769 = distinct !DILexicalBlock(scope: !739, file: !1, line: 379, column: 3)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!772 = !DILocalVariable(name: "map", scope: !765, file: !1, line: 414, type: !461)
!773 = !DILocalVariable(name: "line", scope: !765, file: !1, line: 414, type: !293)
!774 = !DILocalVariable(name: "node", scope: !775, file: !1, line: 477, type: !66)
!775 = distinct !DILexicalBlock(scope: !776, file: !1, line: 476, column: 6)
!776 = distinct !DILexicalBlock(scope: !766, file: !1, line: 475, column: 8)
!777 = !DILocalVariable(name: "out_start", scope: !775, file: !1, line: 478, type: !145)
!778 = !DILocalVariable(name: "m", scope: !779, file: !1, line: 566, type: !88)
!779 = distinct !DILexicalBlock(scope: !780, file: !1, line: 565, column: 3)
!780 = distinct !DILexicalBlock(scope: !781, file: !1, line: 564, column: 12)
!781 = distinct !DILexicalBlock(scope: !782, file: !1, line: 562, column: 6)
!782 = distinct !DILexicalBlock(scope: !766, file: !1, line: 561, column: 8)
!783 = !DILocalVariable(name: "line_table", scope: !784, file: !1, line: 615, type: !770)
!784 = distinct !DILexicalBlock(scope: !785, file: !1, line: 615, column: 5)
!785 = distinct !DILexicalBlock(scope: !786, file: !1, line: 611, column: 3)
!786 = distinct !DILexicalBlock(scope: !787, file: !1, line: 610, column: 12)
!787 = distinct !DILexicalBlock(scope: !788, file: !1, line: 599, column: 6)
!788 = distinct !DILexicalBlock(scope: !766, file: !1, line: 595, column: 8)
!789 = !DILocalVariable(name: "map", scope: !784, file: !1, line: 615, type: !461)
!790 = !DILocalVariable(name: "line", scope: !784, file: !1, line: 615, type: !293)
!791 = !DILocalVariable(name: "do_it", scope: !792, file: !1, line: 621, type: !62)
!792 = distinct !DILexicalBlock(scope: !786, file: !1, line: 620, column: 3)
!793 = !DILabel(scope: !739, name: "new_context", file: !1, line: 373)
!794 = !DILabel(scope: !739, name: "done", file: !1, line: 676)
!795 = !DILocation(line: 0, scope: !739)
!796 = !DILocation(line: 351, column: 3, scope: !739)
!797 = !DILocation(line: 357, column: 10, scope: !739)
!798 = !DILocation(line: 357, column: 15, scope: !739)
!799 = !DILocation(line: 358, column: 10, scope: !739)
!800 = !DILocation(line: 358, column: 15, scope: !739)
!801 = !DILocation(line: 359, column: 10, scope: !739)
!802 = !DILocation(line: 359, column: 15, scope: !739)
!803 = !DILocation(line: 360, column: 10, scope: !739)
!804 = !DILocation(line: 360, column: 17, scope: !739)
!805 = !DILocation(line: 361, column: 10, scope: !739)
!806 = !DILocation(line: 361, column: 15, scope: !739)
!807 = !DILocation(line: 362, column: 10, scope: !739)
!808 = !DILocation(line: 362, column: 15, scope: !739)
!809 = !DILocation(line: 365, column: 28, scope: !739)
!810 = !DILocation(line: 366, column: 33, scope: !739)
!811 = !DILocation(line: 366, column: 41, scope: !739)
!812 = !DILocation(line: 366, column: 3, scope: !739)
!813 = !DILocation(line: 366, column: 24, scope: !739)
!814 = !DILocation(line: 367, column: 36, scope: !739)
!815 = !DILocation(line: 367, column: 44, scope: !739)
!816 = !DILocation(line: 367, column: 3, scope: !739)
!817 = !DILocation(line: 367, column: 27, scope: !739)
!818 = !DILocation(line: 368, column: 31, scope: !739)
!819 = !DILocation(line: 368, column: 14, scope: !739)
!820 = !DILocation(line: 368, column: 18, scope: !739)
!821 = !DILocation(line: 369, column: 34, scope: !739)
!822 = !DILocation(line: 369, column: 46, scope: !739)
!823 = !DILocation(line: 369, column: 14, scope: !739)
!824 = !DILocation(line: 369, column: 25, scope: !739)
!825 = !DILocation(line: 372, column: 32, scope: !739)
!826 = !DILocation(line: 372, column: 40, scope: !739)
!827 = !DILocation(line: 0, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !1, line: 456, column: 6)
!829 = distinct !DILexicalBlock(scope: !766, file: !1, line: 455, column: 8)
!830 = !DILocation(line: 0, scope: !831)
!831 = distinct !DILexicalBlock(scope: !766, file: !1, line: 416, column: 8)
!832 = !DILocation(line: 0, scope: !776)
!833 = !DILocation(line: 0, scope: !834)
!834 = distinct !DILexicalBlock(scope: !775, file: !1, line: 485, column: 12)
!835 = !DILocation(line: 0, scope: !836)
!836 = distinct !DILexicalBlock(scope: !834, file: !1, line: 510, column: 17)
!837 = !DILocation(line: 0, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !1, line: 523, column: 17)
!839 = distinct !DILexicalBlock(scope: !836, file: !1, line: 518, column: 17)
!840 = !DILocation(line: 0, scope: !841)
!841 = distinct !DILexicalBlock(scope: !834, file: !1, line: 489, column: 3)
!842 = !DILocation(line: 0, scope: !843)
!843 = distinct !DILexicalBlock(scope: !792, file: !1, line: 623, column: 9)
!844 = !DILocation(line: 0, scope: !845)
!845 = distinct !DILexicalBlock(scope: !843, file: !1, line: 626, column: 14)
!846 = !DILocation(line: 372, column: 3, scope: !739)
!847 = !DILocation(line: 379, column: 3, scope: !739)
!848 = !DILocation(line: 364, column: 9, scope: !739)
!849 = !DILocation(line: 365, column: 13, scope: !739)
!850 = !DILocation(line: 347, column: 8, scope: !739)
!851 = !DILocation(line: 373, column: 2, scope: !739)
!852 = !DILocation(line: 374, column: 20, scope: !739)
!853 = !DILocation(line: 375, column: 9, scope: !739)
!854 = !DILocation(line: 376, column: 31, scope: !739)
!855 = !DILocation(line: 376, column: 48, scope: !739)
!856 = !DILocation(line: 376, column: 3, scope: !739)
!857 = !DILocation(line: 377, column: 20, scope: !739)
!858 = !DILocation(line: 0, scope: !859)
!859 = distinct !DILexicalBlock(scope: !767, file: !1, line: 381, column: 11)
!860 = !DILocation(line: 0, scope: !829)
!861 = !DILocation(line: 382, column: 4, scope: !859)
!862 = !DILocation(line: 0, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !1, line: 422, column: 12)
!864 = distinct !DILexicalBlock(scope: !831, file: !1, line: 419, column: 6)
!865 = !DILocation(line: 381, column: 21, scope: !859)
!866 = !DILocation(line: 381, column: 12, scope: !859)
!867 = !DILocation(line: 382, column: 21, scope: !859)
!868 = !DILocation(line: 382, column: 29, scope: !859)
!869 = !DILocation(line: 382, column: 50, scope: !859)
!870 = !DILocation(line: 382, column: 14, scope: !859)
!871 = !DILocation(line: 382, column: 60, scope: !859)
!872 = !DILocation(line: 382, column: 11, scope: !859)
!873 = !DILocation(line: 381, column: 11, scope: !767)
!874 = !DILocation(line: 384, column: 19, scope: !875)
!875 = distinct !DILexicalBlock(scope: !859, file: !1, line: 383, column: 2)
!876 = !DILocation(line: 384, column: 23, scope: !875)
!877 = !DILocation(line: 385, column: 4, scope: !875)
!878 = !DILocation(line: 386, column: 2, scope: !875)
!879 = !DILocation(line: 387, column: 15, scope: !767)
!880 = !DILocation(line: 387, column: 11, scope: !767)
!881 = !DILocation(line: 388, column: 11, scope: !767)
!882 = !DILocation(line: 388, column: 14, scope: !767)
!883 = !DILocation(line: 392, column: 7, scope: !767)
!884 = !DILocation(line: 455, column: 18, scope: !829)
!885 = !DILocation(line: 455, column: 23, scope: !829)
!886 = !DILocation(line: 455, column: 8, scope: !766)
!887 = !DILocation(line: 457, column: 23, scope: !828)
!888 = !DILocation(line: 458, column: 14, scope: !828)
!889 = !DILocation(line: 459, column: 25, scope: !828)
!890 = !DILocation(line: 460, column: 8, scope: !828)
!891 = !DILocation(line: 403, column: 17, scope: !892)
!892 = distinct !DILexicalBlock(scope: !766, file: !1, line: 403, column: 8)
!893 = !DILocation(line: 403, column: 8, scope: !892)
!894 = !DILocation(line: 0, scope: !766)
!895 = !DILocation(line: 403, column: 8, scope: !766)
!896 = !DILocation(line: 412, column: 11, scope: !766)
!897 = !DILocation(line: 412, column: 19, scope: !766)
!898 = !DILocation(line: 412, column: 23, scope: !766)
!899 = !DILocation(line: 413, column: 11, scope: !766)
!900 = !DILocation(line: 413, column: 19, scope: !766)
!901 = !DILocation(line: 413, column: 29, scope: !766)
!902 = !DILocation(line: 414, column: 4, scope: !765)
!903 = !DILocation(line: 0, scope: !765)
!904 = !DILocation(line: 416, column: 34, scope: !831)
!905 = !DILocation(line: 417, column: 25, scope: !831)
!906 = !DILocation(line: 417, column: 12, scope: !831)
!907 = !DILocation(line: 418, column: 8, scope: !831)
!908 = !DILocation(line: 418, column: 11, scope: !831)
!909 = !DILocation(line: 416, column: 8, scope: !766)
!910 = !DILocation(line: 422, column: 12, scope: !864)
!911 = !DILocation(line: 423, column: 11, scope: !863)
!912 = !DILocation(line: 423, column: 3, scope: !863)
!913 = !DILocation(line: 424, column: 21, scope: !864)
!914 = !DILocation(line: 424, column: 29, scope: !864)
!915 = !DILocation(line: 425, column: 8, scope: !864)
!916 = !DILocation(line: 399, column: 4, scope: !766)
!917 = distinct !{!917, !918, !919}
!918 = !DILocation(line: 379, column: 3, scope: !769)
!919 = !DILocation(line: 674, column: 5, scope: !769)
!920 = !DILocation(line: 657, column: 25, scope: !921)
!921 = distinct !DILexicalBlock(scope: !767, file: !1, line: 657, column: 11)
!922 = !DILocation(line: 430, column: 8, scope: !923)
!923 = distinct !DILexicalBlock(scope: !766, file: !1, line: 430, column: 8)
!924 = !DILocation(line: 448, column: 8, scope: !925)
!925 = distinct !DILexicalBlock(scope: !766, file: !1, line: 448, column: 8)
!926 = !DILocation(line: 475, column: 22, scope: !776)
!927 = !DILocation(line: 533, column: 14, scope: !928)
!928 = distinct !DILexicalBlock(scope: !766, file: !1, line: 533, column: 8)
!929 = !DILocation(line: 556, column: 14, scope: !930)
!930 = distinct !DILexicalBlock(scope: !766, file: !1, line: 556, column: 8)
!931 = !DILocation(line: 561, column: 14, scope: !782)
!932 = !DILocation(line: 595, column: 16, scope: !788)
!933 = !DILocation(line: 406, column: 8, scope: !934)
!934 = distinct !DILexicalBlock(scope: !892, file: !1, line: 404, column: 6)
!935 = !DILocation(line: 677, column: 14, scope: !936)
!936 = distinct !DILexicalBlock(scope: !739, file: !1, line: 677, column: 7)
!937 = !DILocation(line: 407, column: 8, scope: !934)
!938 = !DILocation(line: 430, column: 8, scope: !766)
!939 = !DILocation(line: 432, column: 4, scope: !766)
!940 = !DILocation(line: 434, column: 10, scope: !941)
!941 = distinct !DILexicalBlock(scope: !766, file: !1, line: 434, column: 8)
!942 = !DILocation(line: 434, column: 8, scope: !766)
!943 = !DILocation(line: 436, column: 4, scope: !766)
!944 = !DILocation(line: 440, column: 10, scope: !945)
!945 = distinct !DILexicalBlock(scope: !766, file: !1, line: 440, column: 8)
!946 = !DILocation(line: 440, column: 8, scope: !766)
!947 = !DILocation(line: 448, column: 13, scope: !925)
!948 = !DILocation(line: 448, column: 21, scope: !925)
!949 = !DILocation(line: 448, column: 29, scope: !925)
!950 = !DILocation(line: 448, column: 36, scope: !925)
!951 = !DILocation(line: 448, column: 44, scope: !925)
!952 = !DILocation(line: 448, column: 8, scope: !766)
!953 = !DILocation(line: 449, column: 19, scope: !925)
!954 = !DILocation(line: 449, column: 10, scope: !925)
!955 = !DILocation(line: 449, column: 13, scope: !925)
!956 = !DILocation(line: 449, column: 6, scope: !925)
!957 = !DILocation(line: 455, column: 15, scope: !829)
!958 = !DILocation(line: 475, column: 9, scope: !776)
!959 = !DILocation(line: 475, column: 31, scope: !776)
!960 = !DILocation(line: 475, column: 46, scope: !776)
!961 = !DILocation(line: 0, scope: !775)
!962 = !DILocation(line: 480, column: 23, scope: !775)
!963 = !DILocation(line: 481, column: 15, scope: !775)
!964 = !DILocation(line: 482, column: 25, scope: !775)
!965 = !DILocation(line: 483, column: 14, scope: !775)
!966 = !DILocation(line: 485, column: 18, scope: !834)
!967 = !DILocation(line: 485, column: 23, scope: !834)
!968 = !DILocation(line: 487, column: 30, scope: !834)
!969 = !DILocation(line: 487, column: 5, scope: !834)
!970 = !DILocation(line: 488, column: 22, scope: !834)
!971 = !DILocation(line: 488, column: 9, scope: !834)
!972 = !DILocation(line: 485, column: 12, scope: !775)
!973 = !DILocation(line: 491, column: 21, scope: !841)
!974 = !DILocation(line: 492, column: 18, scope: !975)
!975 = distinct !DILexicalBlock(scope: !841, file: !1, line: 492, column: 9)
!976 = !DILocation(line: 492, column: 24, scope: !975)
!977 = !DILocation(line: 493, column: 9, scope: !975)
!978 = !DILocation(line: 493, column: 24, scope: !975)
!979 = !DILocation(line: 493, column: 31, scope: !975)
!980 = !DILocation(line: 493, column: 12, scope: !975)
!981 = !DILocation(line: 492, column: 9, scope: !841)
!982 = !DILocation(line: 495, column: 9, scope: !983)
!983 = distinct !DILexicalBlock(scope: !975, file: !1, line: 494, column: 7)
!984 = !DILocation(line: 497, column: 30, scope: !983)
!985 = !DILocation(line: 497, column: 42, scope: !983)
!986 = !DILocation(line: 497, column: 21, scope: !983)
!987 = !DILocation(line: 498, column: 9, scope: !983)
!988 = !DILocation(line: 500, column: 15, scope: !989)
!989 = distinct !DILexicalBlock(scope: !975, file: !1, line: 500, column: 14)
!990 = !DILocation(line: 500, column: 14, scope: !975)
!991 = !DILocation(line: 504, column: 24, scope: !992)
!992 = distinct !DILexicalBlock(scope: !989, file: !1, line: 501, column: 7)
!993 = !DILocation(line: 505, column: 9, scope: !992)
!994 = !DILocation(line: 507, column: 9, scope: !992)
!995 = !DILocation(line: 510, column: 23, scope: !836)
!996 = !DILocation(line: 510, column: 39, scope: !836)
!997 = !DILocation(line: 510, column: 57, scope: !836)
!998 = !DILocation(line: 510, column: 17, scope: !834)
!999 = !DILocation(line: 514, column: 20, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !836, file: !1, line: 511, column: 3)
!1001 = !DILocation(line: 515, column: 48, scope: !1000)
!1002 = !DILocation(line: 515, column: 54, scope: !1000)
!1003 = !DILocation(line: 515, column: 42, scope: !1000)
!1004 = !DILocation(line: 515, column: 5, scope: !1000)
!1005 = !DILocation(line: 516, column: 22, scope: !1000)
!1006 = !DILocation(line: 517, column: 3, scope: !1000)
!1007 = !DILocation(line: 518, column: 27, scope: !839)
!1008 = !DILocation(line: 518, column: 17, scope: !836)
!1009 = !DILocation(line: 523, column: 30, scope: !838)
!1010 = !DILocation(line: 523, column: 17, scope: !838)
!1011 = !DILocation(line: 524, column: 10, scope: !838)
!1012 = !DILocation(line: 524, column: 39, scope: !838)
!1013 = !DILocation(line: 524, column: 18, scope: !838)
!1014 = !DILocation(line: 523, column: 17, scope: !839)
!1015 = !DILocation(line: 529, column: 6, scope: !776)
!1016 = !DILocation(line: 533, column: 8, scope: !766)
!1017 = !DILocation(line: 535, column: 19, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !928, file: !1, line: 534, column: 6)
!1019 = !DILocation(line: 536, column: 12, scope: !1018)
!1020 = !DILocation(line: 538, column: 40, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 538, column: 9)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 537, column: 3)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 536, column: 12)
!1024 = !DILocation(line: 538, column: 9, scope: !1021)
!1025 = !DILocation(line: 538, column: 9, scope: !1022)
!1026 = !DILocation(line: 544, column: 26, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 541, column: 7)
!1028 = !DILocation(line: 544, column: 40, scope: !1027)
!1029 = !DILocation(line: 544, column: 31, scope: !1027)
!1030 = !DILocation(line: 545, column: 16, scope: !1027)
!1031 = !DILocation(line: 545, column: 24, scope: !1027)
!1032 = !DILocation(line: 551, column: 3, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 550, column: 17)
!1034 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 548, column: 17)
!1035 = !DILocation(line: 556, column: 19, scope: !930)
!1036 = !DILocation(line: 556, column: 63, scope: !930)
!1037 = !DILocation(line: 557, column: 47, scope: !930)
!1038 = !DILocation(line: 557, column: 34, scope: !930)
!1039 = !DILocation(line: 557, column: 6, scope: !930)
!1040 = !DILocation(line: 561, column: 8, scope: !766)
!1041 = !DILocation(line: 563, column: 19, scope: !781)
!1042 = !DILocation(line: 564, column: 53, scope: !780)
!1043 = !DILocation(line: 564, column: 38, scope: !780)
!1044 = !DILocation(line: 566, column: 27, scope: !779)
!1045 = !DILocation(line: 566, column: 39, scope: !779)
!1046 = !DILocation(line: 0, scope: !779)
!1047 = !DILocation(line: 568, column: 8, scope: !779)
!1048 = !DILocation(line: 568, column: 13, scope: !779)
!1049 = !DILocation(line: 570, column: 46, scope: !779)
!1050 = !DILocation(line: 570, column: 33, scope: !779)
!1051 = !DILocation(line: 570, column: 5, scope: !779)
!1052 = !DILocation(line: 573, column: 16, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !779, file: !1, line: 573, column: 9)
!1054 = !DILocation(line: 573, column: 21, scope: !1053)
!1055 = !DILocation(line: 574, column: 9, scope: !1053)
!1056 = !DILocation(line: 574, column: 15, scope: !1053)
!1057 = !DILocation(line: 574, column: 22, scope: !1053)
!1058 = !DILocation(line: 575, column: 9, scope: !1053)
!1059 = !DILocation(line: 575, column: 30, scope: !1053)
!1060 = !DILocation(line: 575, column: 44, scope: !1053)
!1061 = !DILocation(line: 575, column: 35, scope: !1053)
!1062 = !DILocation(line: 575, column: 51, scope: !1053)
!1063 = !DILocation(line: 575, column: 16, scope: !1053)
!1064 = !DILocation(line: 573, column: 9, scope: !779)
!1065 = !DILocation(line: 576, column: 19, scope: !1053)
!1066 = !DILocation(line: 576, column: 7, scope: !1053)
!1067 = !DILocation(line: 578, column: 58, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !779, file: !1, line: 578, column: 9)
!1069 = !DILocation(line: 578, column: 45, scope: !1068)
!1070 = !DILocation(line: 578, column: 9, scope: !1068)
!1071 = !DILocation(line: 578, column: 9, scope: !779)
!1072 = !DILocation(line: 582, column: 38, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 579, column: 7)
!1074 = !DILocation(line: 583, column: 20, scope: !1073)
!1075 = !DILocation(line: 583, column: 11, scope: !1073)
!1076 = !DILocation(line: 582, column: 24, scope: !1073)
!1077 = !DILocation(line: 584, column: 23, scope: !1073)
!1078 = !DILocation(line: 585, column: 9, scope: !1073)
!1079 = !DILocation(line: 586, column: 9, scope: !1073)
!1080 = !DILocation(line: 589, column: 40, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !780, file: !1, line: 589, column: 17)
!1082 = !DILocation(line: 590, column: 3, scope: !1081)
!1083 = !DILocation(line: 597, column: 8, scope: !788)
!1084 = !DILocation(line: 597, column: 19, scope: !788)
!1085 = !DILocation(line: 597, column: 28, scope: !788)
!1086 = !DILocation(line: 597, column: 12, scope: !788)
!1087 = !DILocation(line: 598, column: 8, scope: !788)
!1088 = !DILocation(line: 598, column: 25, scope: !788)
!1089 = !DILocation(line: 598, column: 12, scope: !788)
!1090 = !DILocation(line: 595, column: 8, scope: !766)
!1091 = !DILocation(line: 606, column: 23, scope: !787)
!1092 = !DILocation(line: 607, column: 14, scope: !787)
!1093 = !DILocation(line: 608, column: 25, scope: !787)
!1094 = !DILocation(line: 610, column: 12, scope: !786)
!1095 = !DILocation(line: 610, column: 17, scope: !786)
!1096 = !DILocation(line: 610, column: 12, scope: !787)
!1097 = !DILocation(line: 614, column: 12, scope: !785)
!1098 = !DILocation(line: 614, column: 20, scope: !785)
!1099 = !DILocation(line: 614, column: 30, scope: !785)
!1100 = !DILocation(line: 615, column: 5, scope: !784)
!1101 = !DILocation(line: 0, scope: !784)
!1102 = !DILocation(line: 617, column: 5, scope: !785)
!1103 = !DILocation(line: 0, scope: !792)
!1104 = !DILocation(line: 623, column: 9, scope: !843)
!1105 = !DILocation(line: 624, column: 9, scope: !843)
!1106 = !DILocation(line: 624, column: 12, scope: !843)
!1107 = !DILocation(line: 624, column: 37, scope: !843)
!1108 = !DILocation(line: 623, column: 9, scope: !792)
!1109 = !DILocation(line: 626, column: 14, scope: !845)
!1110 = !DILocation(line: 626, column: 14, scope: !843)
!1111 = !DILocation(line: 629, column: 15, scope: !845)
!1112 = !DILocation(line: 629, column: 44, scope: !845)
!1113 = !DILocation(line: 629, column: 7, scope: !845)
!1114 = !DILocation(line: 631, column: 9, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !792, file: !1, line: 631, column: 9)
!1116 = !DILocation(line: 631, column: 15, scope: !1115)
!1117 = !DILocation(line: 631, column: 18, scope: !1115)
!1118 = !DILocation(line: 631, column: 43, scope: !1115)
!1119 = !DILocation(line: 631, column: 9, scope: !792)
!1120 = !DILocation(line: 635, column: 16, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 632, column: 7)
!1122 = !DILocation(line: 635, column: 24, scope: !1121)
!1123 = !DILocation(line: 635, column: 28, scope: !1121)
!1124 = !DILocation(line: 636, column: 9, scope: !1121)
!1125 = !DILocation(line: 638, column: 9, scope: !1121)
!1126 = !DILocation(line: 0, scope: !767)
!1127 = !DILocation(line: 643, column: 21, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !766, file: !1, line: 643, column: 8)
!1129 = !DILocation(line: 643, column: 8, scope: !1128)
!1130 = !DILocation(line: 643, column: 8, scope: !766)
!1131 = !DILocation(line: 657, column: 12, scope: !921)
!1132 = !DILocation(line: 657, column: 11, scope: !767)
!1133 = !DILocation(line: 658, column: 18, scope: !921)
!1134 = !DILocation(line: 658, column: 2, scope: !921)
!1135 = !DILocation(line: 660, column: 11, scope: !767)
!1136 = !DILocation(line: 671, column: 2, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 668, column: 16)
!1138 = distinct !DILexicalBlock(scope: !767, file: !1, line: 665, column: 11)
!1139 = !DILocation(line: 0, scope: !1138)
!1140 = !DILocation(line: 379, column: 3, scope: !768)
!1141 = !DILocation(line: 676, column: 2, scope: !739)
!1142 = !DILocation(line: 677, column: 7, scope: !936)
!1143 = !DILocation(line: 677, column: 7, scope: !739)
!1144 = !DILocation(line: 678, column: 5, scope: !936)
!1145 = !DILocation(line: 680, column: 7, scope: !739)
!1146 = !DILocation(line: 681, column: 54, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !739, file: !1, line: 680, column: 7)
!1148 = !DILocation(line: 683, column: 5, scope: !1147)
!1149 = !DILocation(line: 681, column: 5, scope: !1147)
!1150 = !DILocation(line: 685, column: 1, scope: !739)
!1151 = distinct !DISubprogram(name: "check_output_buffer", scope: !1, file: !1, line: 101, type: !1152, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1154)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !185, !146}
!1154 = !{!1155, !1156, !1157, !1160}
!1155 = !DILocalVariable(name: "pfile", arg: 1, scope: !1151, file: !1, line: 101, type: !185)
!1156 = !DILocalVariable(name: "n", arg: 2, scope: !1151, file: !1, line: 101, type: !146)
!1157 = !DILocalVariable(name: "size", scope: !1158, file: !1, line: 109, type: !146)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 108, column: 5)
!1159 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 107, column: 7)
!1160 = !DILocalVariable(name: "new_size", scope: !1158, file: !1, line: 110, type: !146)
!1161 = !DILocation(line: 0, scope: !1151)
!1162 = !DILocation(line: 105, column: 5, scope: !1151)
!1163 = !DILocation(line: 107, column: 32, scope: !1159)
!1164 = !DILocation(line: 107, column: 51, scope: !1159)
!1165 = !DILocation(line: 107, column: 38, scope: !1159)
!1166 = !DILocation(line: 107, column: 9, scope: !1159)
!1167 = !DILocation(line: 107, column: 7, scope: !1151)
!1168 = !DILocation(line: 109, column: 49, scope: !1158)
!1169 = !DILocation(line: 109, column: 36, scope: !1158)
!1170 = !DILocation(line: 0, scope: !1158)
!1171 = !DILocation(line: 110, column: 31, scope: !1158)
!1172 = !DILocation(line: 110, column: 36, scope: !1158)
!1173 = !DILocation(line: 110, column: 40, scope: !1158)
!1174 = !DILocation(line: 112, column: 25, scope: !1158)
!1175 = !DILocation(line: 112, column: 23, scope: !1158)
!1176 = !DILocation(line: 113, column: 42, scope: !1158)
!1177 = !DILocation(line: 113, column: 24, scope: !1158)
!1178 = !DILocation(line: 114, column: 40, scope: !1158)
!1179 = !DILocation(line: 114, column: 22, scope: !1158)
!1180 = !DILocation(line: 115, column: 5, scope: !1158)
!1181 = !DILocation(line: 116, column: 1, scope: !1151)
!1182 = distinct !DISubprogram(name: "copy_comment", scope: !1, file: !1, line: 150, type: !1183, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!665, !185, !665, !162}
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193}
!1186 = !DILocalVariable(name: "pfile", arg: 1, scope: !1182, file: !1, line: 150, type: !185)
!1187 = !DILocalVariable(name: "cur", arg: 2, scope: !1182, file: !1, line: 150, type: !665)
!1188 = !DILocalVariable(name: "in_define", arg: 3, scope: !1182, file: !1, line: 150, type: !162)
!1189 = !DILocalVariable(name: "unterminated", scope: !1182, file: !1, line: 152, type: !62)
!1190 = !DILocalVariable(name: "copy", scope: !1182, file: !1, line: 152, type: !62)
!1191 = !DILocalVariable(name: "src_loc", scope: !1182, file: !1, line: 153, type: !102)
!1192 = !DILocalVariable(name: "buffer", scope: !1182, file: !1, line: 154, type: !191)
!1193 = !DILocalVariable(name: "len", scope: !1194, file: !1, line: 188, type: !146)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 187, column: 5)
!1195 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 186, column: 7)
!1196 = !DILocation(line: 0, scope: !1182)
!1197 = !DILocation(line: 153, column: 36, scope: !1182)
!1198 = !DILocation(line: 153, column: 48, scope: !1182)
!1199 = !DILocation(line: 154, column: 31, scope: !1182)
!1200 = !DILocation(line: 156, column: 11, scope: !1182)
!1201 = !DILocation(line: 156, column: 15, scope: !1182)
!1202 = !DILocation(line: 157, column: 14, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 157, column: 7)
!1204 = !DILocation(line: 157, column: 23, scope: !1203)
!1205 = !DILocation(line: 157, column: 7, scope: !1203)
!1206 = !DILocation(line: 157, column: 7, scope: !1182)
!1207 = !DILocation(line: 158, column: 27, scope: !1203)
!1208 = !DILocation(line: 158, column: 5, scope: !1203)
!1209 = !DILocation(line: 160, column: 20, scope: !1203)
!1210 = !DILocation(line: 162, column: 7, scope: !1182)
!1211 = !DILocation(line: 163, column: 5, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 162, column: 7)
!1213 = !DILocation(line: 169, column: 20, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 169, column: 7)
!1215 = !DILocation(line: 169, column: 7, scope: !1214)
!1216 = !DILocation(line: 169, column: 7, scope: !1182)
!1217 = !DILocation(line: 171, column: 11, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 171, column: 11)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !1, line: 170, column: 5)
!1220 = !DILocation(line: 171, column: 11, scope: !1219)
!1221 = !DILocation(line: 173, column: 8, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !1, line: 173, column: 8)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 172, column: 2)
!1224 = !DILocation(line: 173, column: 8, scope: !1223)
!1225 = !DILocation(line: 174, column: 17, scope: !1222)
!1226 = !DILocation(line: 174, column: 20, scope: !1222)
!1227 = !DILocation(line: 174, column: 6, scope: !1222)
!1228 = !DILocation(line: 179, column: 13, scope: !1218)
!1229 = !DILocation(line: 179, column: 2, scope: !1218)
!1230 = !DILocation(line: 179, column: 21, scope: !1218)
!1231 = !DILocation(line: 181, column: 12, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1214, file: !1, line: 181, column: 12)
!1233 = !DILocation(line: 181, column: 12, scope: !1214)
!1234 = !DILocation(line: 182, column: 16, scope: !1232)
!1235 = !DILocation(line: 182, column: 19, scope: !1232)
!1236 = !DILocation(line: 182, column: 5, scope: !1232)
!1237 = !DILocation(line: 186, column: 7, scope: !1182)
!1238 = !DILocation(line: 188, column: 38, scope: !1194)
!1239 = !DILocation(line: 188, column: 42, scope: !1194)
!1240 = !DILocation(line: 0, scope: !1194)
!1241 = !DILocation(line: 189, column: 26, scope: !1194)
!1242 = !DILocation(line: 189, column: 7, scope: !1194)
!1243 = !DILocation(line: 190, column: 22, scope: !1194)
!1244 = !DILocation(line: 191, column: 11, scope: !1194)
!1245 = !DILocation(line: 193, column: 19, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 192, column: 2)
!1247 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 191, column: 11)
!1248 = !DILocation(line: 193, column: 22, scope: !1246)
!1249 = !DILocation(line: 194, column: 19, scope: !1246)
!1250 = !DILocation(line: 194, column: 22, scope: !1246)
!1251 = !DILocation(line: 195, column: 2, scope: !1246)
!1252 = !DILocation(line: 198, column: 18, scope: !1182)
!1253 = !DILocation(line: 198, column: 3, scope: !1182)
!1254 = distinct !DISubprogram(name: "lex_identifier", scope: !1, file: !1, line: 246, type: !1255, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1257)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!66, !185, !665}
!1257 = !{!1258, !1259, !1260, !1261, !1262}
!1258 = !DILocalVariable(name: "pfile", arg: 1, scope: !1254, file: !1, line: 246, type: !185)
!1259 = !DILocalVariable(name: "cur", arg: 2, scope: !1254, file: !1, line: 246, type: !665)
!1260 = !DILocalVariable(name: "len", scope: !1254, file: !1, line: 248, type: !146)
!1261 = !DILocalVariable(name: "out", scope: !1254, file: !1, line: 249, type: !145)
!1262 = !DILocalVariable(name: "result", scope: !1254, file: !1, line: 250, type: !66)
!1263 = !DILocation(line: 0, scope: !1254)
!1264 = !DILocation(line: 249, column: 27, scope: !1254)
!1265 = !DILocation(line: 253, column: 14, scope: !1254)
!1266 = !DILocation(line: 252, column: 3, scope: !1254)
!1267 = !DILocation(line: 253, column: 18, scope: !1254)
!1268 = !DILocation(line: 253, column: 9, scope: !1254)
!1269 = !DILocation(line: 253, column: 12, scope: !1254)
!1270 = !DILocation(line: 254, column: 10, scope: !1254)
!1271 = !DILocation(line: 253, column: 5, scope: !1254)
!1272 = distinct !{!1272, !1266, !1273}
!1273 = !DILocation(line: 254, column: 27, scope: !1254)
!1274 = !DILocation(line: 256, column: 3, scope: !1254)
!1275 = !DILocation(line: 256, column: 24, scope: !1254)
!1276 = !DILocation(line: 257, column: 26, scope: !1254)
!1277 = !DILocation(line: 257, column: 13, scope: !1254)
!1278 = !DILocation(line: 258, column: 12, scope: !1254)
!1279 = !DILocation(line: 260, column: 18, scope: !1254)
!1280 = !DILocation(line: 261, column: 3, scope: !1254)
!1281 = distinct !DISubprogram(name: "maybe_start_funlike", scope: !1, file: !1, line: 315, type: !1282, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1285)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !185, !66, !665, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!1285 = !{!1286, !1287, !1288, !1289, !1290}
!1286 = !DILocalVariable(name: "pfile", arg: 1, scope: !1281, file: !1, line: 315, type: !185)
!1287 = !DILocalVariable(name: "node", arg: 2, scope: !1281, file: !1, line: 315, type: !66)
!1288 = !DILocalVariable(name: "start", arg: 3, scope: !1281, file: !1, line: 315, type: !665)
!1289 = !DILocalVariable(name: "macro", arg: 4, scope: !1281, file: !1, line: 315, type: !1284)
!1290 = !DILocalVariable(name: "n", scope: !1281, file: !1, line: 317, type: !5)
!1291 = !DILocation(line: 0, scope: !1281)
!1292 = !DILocation(line: 317, column: 32, scope: !1281)
!1293 = !DILocation(line: 317, column: 39, scope: !1281)
!1294 = !DILocation(line: 317, column: 20, scope: !1281)
!1295 = !DILocation(line: 319, column: 14, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1281, file: !1, line: 319, column: 7)
!1297 = !DILocation(line: 319, column: 7, scope: !1296)
!1298 = !DILocation(line: 319, column: 7, scope: !1281)
!1299 = !DILocation(line: 320, column: 5, scope: !1296)
!1300 = !DILocation(line: 321, column: 41, scope: !1281)
!1301 = !DILocation(line: 321, column: 17, scope: !1281)
!1302 = !DILocation(line: 321, column: 15, scope: !1281)
!1303 = !DILocation(line: 322, column: 28, scope: !1281)
!1304 = !DILocation(line: 322, column: 10, scope: !1281)
!1305 = !DILocation(line: 322, column: 15, scope: !1281)
!1306 = !DILocation(line: 323, column: 10, scope: !1281)
!1307 = !DILocation(line: 323, column: 15, scope: !1281)
!1308 = !DILocation(line: 324, column: 38, scope: !1281)
!1309 = !DILocation(line: 324, column: 25, scope: !1281)
!1310 = !DILocation(line: 324, column: 10, scope: !1281)
!1311 = !DILocation(line: 324, column: 17, scope: !1281)
!1312 = !DILocation(line: 325, column: 10, scope: !1281)
!1313 = !DILocation(line: 325, column: 15, scope: !1281)
!1314 = !DILocation(line: 326, column: 1, scope: !1281)
!1315 = distinct !DISubprogram(name: "recursive_macro", scope: !1, file: !1, line: 720, type: !1316, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!62, !185, !66}
!1318 = !{!1319, !1320, !1321, !1322, !1325}
!1319 = !DILocalVariable(name: "pfile", arg: 1, scope: !1315, file: !1, line: 720, type: !185)
!1320 = !DILocalVariable(name: "node", arg: 2, scope: !1315, file: !1, line: 720, type: !66)
!1321 = !DILocalVariable(name: "recursing", scope: !1315, file: !1, line: 722, type: !62)
!1322 = !DILocalVariable(name: "depth", scope: !1323, file: !1, line: 736, type: !146)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 735, column: 5)
!1324 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 734, column: 7)
!1325 = !DILocalVariable(name: "context", scope: !1323, file: !1, line: 737, type: !330)
!1326 = !DILocation(line: 0, scope: !1315)
!1327 = !DILocation(line: 722, column: 29, scope: !1315)
!1328 = !DILocation(line: 722, column: 20, scope: !1315)
!1329 = !DILocation(line: 734, column: 7, scope: !1324)
!1330 = !DILocation(line: 734, column: 17, scope: !1324)
!1331 = !DILocation(line: 734, column: 32, scope: !1324)
!1332 = !DILocation(line: 734, column: 39, scope: !1324)
!1333 = !DILocation(line: 734, column: 20, scope: !1324)
!1334 = !DILocation(line: 734, column: 7, scope: !1315)
!1335 = !DILocation(line: 0, scope: !1323)
!1336 = !DILocation(line: 737, column: 37, scope: !1323)
!1337 = !DILocation(line: 739, column: 7, scope: !1323)
!1338 = !DILocation(line: 741, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 740, column: 2)
!1340 = !DILocation(line: 742, column: 17, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 742, column: 8)
!1342 = !DILocation(line: 742, column: 23, scope: !1341)
!1343 = !DILocation(line: 742, column: 40, scope: !1341)
!1344 = !DILocation(line: 742, column: 31, scope: !1341)
!1345 = !DILocation(line: 744, column: 23, scope: !1339)
!1346 = !DILocation(line: 745, column: 2, scope: !1339)
!1347 = distinct !{!1347, !1337, !1348}
!1348 = !DILocation(line: 746, column: 21, scope: !1323)
!1349 = !DILocation(line: 747, column: 27, scope: !1323)
!1350 = !DILocation(line: 747, column: 19, scope: !1323)
!1351 = !DILocation(line: 748, column: 5, scope: !1323)
!1352 = !DILocation(line: 750, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 750, column: 7)
!1354 = !DILocation(line: 750, column: 7, scope: !1315)
!1355 = !DILocation(line: 753, column: 9, scope: !1353)
!1356 = !DILocation(line: 751, column: 5, scope: !1353)
!1357 = !DILocation(line: 755, column: 3, scope: !1315)
!1358 = distinct !DISubprogram(name: "push_replacement_text", scope: !1, file: !1, line: 691, type: !1359, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1361)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{null, !185, !66}
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367}
!1362 = !DILocalVariable(name: "pfile", arg: 1, scope: !1358, file: !1, line: 691, type: !185)
!1363 = !DILocalVariable(name: "node", arg: 2, scope: !1358, file: !1, line: 691, type: !66)
!1364 = !DILocalVariable(name: "len", scope: !1358, file: !1, line: 693, type: !146)
!1365 = !DILocalVariable(name: "text", scope: !1358, file: !1, line: 694, type: !665)
!1366 = !DILocalVariable(name: "buf", scope: !1358, file: !1, line: 695, type: !145)
!1367 = !DILocalVariable(name: "macro", scope: !1368, file: !1, line: 708, type: !88)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 707, column: 5)
!1369 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 697, column: 7)
!1370 = !DILocation(line: 0, scope: !1358)
!1371 = !DILocation(line: 697, column: 13, scope: !1369)
!1372 = !DILocation(line: 697, column: 19, scope: !1369)
!1373 = !DILocation(line: 697, column: 7, scope: !1358)
!1374 = !DILocation(line: 699, column: 14, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 698, column: 5)
!1376 = !DILocation(line: 700, column: 13, scope: !1375)
!1377 = !DILocation(line: 701, column: 46, scope: !1375)
!1378 = !DILocation(line: 701, column: 13, scope: !1375)
!1379 = !DILocation(line: 702, column: 7, scope: !1375)
!1380 = !DILocation(line: 703, column: 7, scope: !1375)
!1381 = !DILocation(line: 703, column: 15, scope: !1375)
!1382 = !DILocation(line: 705, column: 5, scope: !1375)
!1383 = !DILocation(line: 708, column: 38, scope: !1368)
!1384 = !DILocation(line: 0, scope: !1368)
!1385 = !DILocation(line: 709, column: 14, scope: !1368)
!1386 = !DILocation(line: 709, column: 19, scope: !1368)
!1387 = !DILocation(line: 710, column: 21, scope: !1368)
!1388 = !DILocation(line: 710, column: 25, scope: !1368)
!1389 = !DILocation(line: 711, column: 26, scope: !1368)
!1390 = !DILocation(line: 712, column: 20, scope: !1368)
!1391 = !DILocation(line: 712, column: 13, scope: !1368)
!1392 = !DILocation(line: 0, scope: !1369)
!1393 = !DILocation(line: 715, column: 3, scope: !1358)
!1394 = !DILocation(line: 716, column: 1, scope: !1358)
!1395 = distinct !DISubprogram(name: "save_replacement_text", scope: !1, file: !1, line: 982, type: !1396, scopeLine: 984, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1398)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !185, !88, !5}
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !1407}
!1399 = !DILocalVariable(name: "pfile", arg: 1, scope: !1395, file: !1, line: 982, type: !185)
!1400 = !DILocalVariable(name: "macro", arg: 2, scope: !1395, file: !1, line: 982, type: !88)
!1401 = !DILocalVariable(name: "arg_index", arg: 3, scope: !1395, file: !1, line: 983, type: !5)
!1402 = !DILocalVariable(name: "len", scope: !1395, file: !1, line: 985, type: !146)
!1403 = !DILocalVariable(name: "exp", scope: !1395, file: !1, line: 986, type: !145)
!1404 = !DILocalVariable(name: "blen", scope: !1405, file: !1, line: 1003, type: !146)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 1000, column: 5)
!1406 = distinct !DILexicalBlock(scope: !1395, file: !1, line: 988, column: 7)
!1407 = !DILocalVariable(name: "block", scope: !1405, file: !1, line: 1004, type: !53)
!1408 = !DILocation(line: 0, scope: !1395)
!1409 = !DILocation(line: 985, column: 27, scope: !1395)
!1410 = !DILocation(line: 985, column: 44, scope: !1395)
!1411 = !DILocation(line: 985, column: 31, scope: !1395)
!1412 = !DILocation(line: 988, column: 14, scope: !1406)
!1413 = !DILocation(line: 988, column: 21, scope: !1406)
!1414 = !DILocation(line: 988, column: 7, scope: !1395)
!1415 = !DILocation(line: 992, column: 46, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 989, column: 5)
!1417 = !DILocation(line: 992, column: 13, scope: !1416)
!1418 = !DILocation(line: 993, column: 31, scope: !1416)
!1419 = !DILocation(line: 993, column: 7, scope: !1416)
!1420 = !DILocation(line: 994, column: 7, scope: !1416)
!1421 = !DILocation(line: 994, column: 16, scope: !1416)
!1422 = !DILocation(line: 995, column: 14, scope: !1416)
!1423 = !DILocation(line: 995, column: 18, scope: !1416)
!1424 = !DILocation(line: 995, column: 23, scope: !1416)
!1425 = !DILocation(line: 996, column: 14, scope: !1416)
!1426 = !DILocation(line: 996, column: 26, scope: !1416)
!1427 = !DILocation(line: 997, column: 22, scope: !1416)
!1428 = !DILocation(line: 997, column: 14, scope: !1416)
!1429 = !DILocation(line: 997, column: 20, scope: !1416)
!1430 = !DILocation(line: 998, column: 5, scope: !1416)
!1431 = !DILocation(line: 1003, column: 21, scope: !1405)
!1432 = !DILocation(line: 0, scope: !1405)
!1433 = !DILocation(line: 1006, column: 18, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1405, file: !1, line: 1006, column: 11)
!1435 = !DILocation(line: 1006, column: 11, scope: !1434)
!1436 = !DILocation(line: 1006, column: 24, scope: !1434)
!1437 = !DILocation(line: 1006, column: 33, scope: !1434)
!1438 = !DILocation(line: 1006, column: 31, scope: !1434)
!1439 = !DILocation(line: 1006, column: 11, scope: !1405)
!1440 = !DILocation(line: 1007, column: 2, scope: !1434)
!1441 = !DILocation(line: 1009, column: 13, scope: !1405)
!1442 = !DILocation(line: 1010, column: 46, scope: !1405)
!1443 = !DILocation(line: 1010, column: 37, scope: !1405)
!1444 = !DILocation(line: 1011, column: 14, scope: !1405)
!1445 = !DILocation(line: 1011, column: 18, scope: !1405)
!1446 = !DILocation(line: 1011, column: 23, scope: !1405)
!1447 = !DILocation(line: 1012, column: 14, scope: !1405)
!1448 = !DILocation(line: 1012, column: 26, scope: !1405)
!1449 = !DILocation(line: 1015, column: 25, scope: !1405)
!1450 = !DILocation(line: 1015, column: 14, scope: !1405)
!1451 = !DILocation(line: 1015, column: 23, scope: !1405)
!1452 = !DILocation(line: 1016, column: 26, scope: !1405)
!1453 = !DILocation(line: 1016, column: 14, scope: !1405)
!1454 = !DILocation(line: 1016, column: 24, scope: !1405)
!1455 = !DILocation(line: 1017, column: 22, scope: !1405)
!1456 = !DILocation(line: 1017, column: 39, scope: !1405)
!1457 = !DILocation(line: 1017, column: 7, scope: !1405)
!1458 = !DILocation(line: 1020, column: 35, scope: !1405)
!1459 = !DILocation(line: 1020, column: 22, scope: !1405)
!1460 = !DILocation(line: 1022, column: 20, scope: !1405)
!1461 = !DILocation(line: 1025, column: 21, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1405, file: !1, line: 1025, column: 11)
!1463 = !DILocation(line: 1025, column: 11, scope: !1405)
!1464 = !DILocation(line: 1026, column: 2, scope: !1462)
!1465 = !DILocation(line: 1026, column: 29, scope: !1462)
!1466 = !DILocation(line: 1028, column: 1, scope: !1395)
!1467 = distinct !DISubprogram(name: "save_argument", scope: !1, file: !1, line: 330, type: !1468, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !1284, !146}
!1470 = !{!1471, !1472}
!1471 = !DILocalVariable(name: "macro", arg: 1, scope: !1467, file: !1, line: 330, type: !1284)
!1472 = !DILocalVariable(name: "offset", arg: 2, scope: !1467, file: !1, line: 330, type: !146)
!1473 = !DILocation(line: 0, scope: !1467)
!1474 = !DILocation(line: 332, column: 10, scope: !1467)
!1475 = !DILocation(line: 332, column: 14, scope: !1467)
!1476 = !DILocation(line: 333, column: 29, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1467, file: !1, line: 333, column: 7)
!1478 = !DILocation(line: 333, column: 41, scope: !1477)
!1479 = !DILocation(line: 333, column: 48, scope: !1477)
!1480 = !DILocation(line: 333, column: 22, scope: !1477)
!1481 = !DILocation(line: 333, column: 19, scope: !1477)
!1482 = !DILocation(line: 333, column: 7, scope: !1467)
!1483 = !DILocation(line: 334, column: 12, scope: !1477)
!1484 = !DILocation(line: 334, column: 5, scope: !1477)
!1485 = !DILocation(line: 334, column: 30, scope: !1477)
!1486 = !DILocation(line: 335, column: 1, scope: !1467)
!1487 = distinct !DISubprogram(name: "replace_args_and_push", scope: !1, file: !1, line: 825, type: !1488, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{null, !185, !1284}
!1490 = !{!1491, !1492, !1493, !1494, !1497, !1498, !1499, !1500, !1501, !1505, !1509, !1510, !1511, !1512}
!1491 = !DILocalVariable(name: "pfile", arg: 1, scope: !1487, file: !1, line: 825, type: !185)
!1492 = !DILocalVariable(name: "fmacro", arg: 2, scope: !1487, file: !1, line: 825, type: !1284)
!1493 = !DILocalVariable(name: "macro", scope: !1487, file: !1, line: 827, type: !88)
!1494 = !DILocalVariable(name: "exp", scope: !1495, file: !1, line: 833, type: !665)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !1, line: 832, column: 5)
!1496 = distinct !DILexicalBlock(scope: !1487, file: !1, line: 829, column: 7)
!1497 = !DILocalVariable(name: "p", scope: !1495, file: !1, line: 834, type: !145)
!1498 = !DILocalVariable(name: "buff", scope: !1495, file: !1, line: 835, type: !315)
!1499 = !DILocalVariable(name: "len", scope: !1495, file: !1, line: 836, type: !146)
!1500 = !DILocalVariable(name: "cxtquote", scope: !1495, file: !1, line: 837, type: !162)
!1501 = !DILocalVariable(name: "b", scope: !1502, file: !1, line: 844, type: !53)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 843, column: 2)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 842, column: 7)
!1504 = distinct !DILexicalBlock(scope: !1495, file: !1, line: 842, column: 7)
!1505 = !DILocalVariable(name: "b", scope: !1506, file: !1, line: 863, type: !53)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !1, line: 862, column: 2)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !1, line: 861, column: 7)
!1508 = distinct !DILexicalBlock(scope: !1495, file: !1, line: 861, column: 7)
!1509 = !DILocalVariable(name: "arglen", scope: !1506, file: !1, line: 864, type: !146)
!1510 = !DILocalVariable(name: "argquote", scope: !1506, file: !1, line: 865, type: !162)
!1511 = !DILocalVariable(name: "base", scope: !1506, file: !1, line: 866, type: !145)
!1512 = !DILocalVariable(name: "in", scope: !1506, file: !1, line: 867, type: !145)
!1513 = !DILocation(line: 0, scope: !1487)
!1514 = !DILocation(line: 827, column: 30, scope: !1487)
!1515 = !DILocation(line: 827, column: 42, scope: !1487)
!1516 = !DILocation(line: 829, column: 14, scope: !1496)
!1517 = !DILocation(line: 829, column: 21, scope: !1496)
!1518 = !DILocation(line: 829, column: 7, scope: !1487)
!1519 = !DILocation(line: 830, column: 5, scope: !1496)
!1520 = !DILocation(line: 0, scope: !1495)
!1521 = !DILocation(line: 842, column: 25, scope: !1504)
!1522 = !DILocation(line: 842, column: 29, scope: !1504)
!1523 = !DILocation(line: 0, scope: !1502)
!1524 = !DILocation(line: 842, column: 12, scope: !1504)
!1525 = !DILocation(line: 842, column: 16, scope: !1504)
!1526 = !DILocation(line: 846, column: 14, scope: !1502)
!1527 = !DILocation(line: 846, column: 11, scope: !1502)
!1528 = !DILocation(line: 846, column: 8, scope: !1502)
!1529 = !DILocation(line: 847, column: 11, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1502, file: !1, line: 847, column: 8)
!1531 = !DILocation(line: 847, column: 21, scope: !1530)
!1532 = !DILocation(line: 847, column: 8, scope: !1502)
!1533 = !DILocation(line: 849, column: 24, scope: !1502)
!1534 = !DILocation(line: 849, column: 16, scope: !1502)
!1535 = !DILocation(line: 850, column: 37, scope: !1502)
!1536 = !DILocation(line: 850, column: 11, scope: !1502)
!1537 = !DILocation(line: 850, column: 42, scope: !1502)
!1538 = !DILocation(line: 849, column: 13, scope: !1502)
!1539 = !DILocation(line: 849, column: 8, scope: !1502)
!1540 = !DILocation(line: 851, column: 11, scope: !1502)
!1541 = !DILocation(line: 851, column: 8, scope: !1502)
!1542 = !DILocation(line: 852, column: 2, scope: !1503)
!1543 = !DILocation(line: 0, scope: !1504)
!1544 = distinct !{!1544, !1545, !1546}
!1545 = !DILocation(line: 842, column: 7, scope: !1504)
!1546 = !DILocation(line: 852, column: 2, scope: !1504)
!1547 = !DILocation(line: 855, column: 40, scope: !1495)
!1548 = !DILocation(line: 855, column: 14, scope: !1495)
!1549 = !DILocation(line: 859, column: 11, scope: !1495)
!1550 = !DILocation(line: 861, column: 29, scope: !1508)
!1551 = !DILocation(line: 0, scope: !1506)
!1552 = !DILocation(line: 861, column: 12, scope: !1508)
!1553 = !DILocation(line: 837, column: 11, scope: !1495)
!1554 = !DILocation(line: 859, column: 9, scope: !1495)
!1555 = !DILocation(line: 861, column: 16, scope: !1508)
!1556 = !DILocation(line: 869, column: 14, scope: !1506)
!1557 = !DILocation(line: 869, column: 11, scope: !1506)
!1558 = !DILocation(line: 872, column: 39, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1506, file: !1, line: 872, column: 4)
!1560 = !DILocation(line: 872, column: 9, scope: !1559)
!1561 = !DILocation(line: 0, scope: !1559)
!1562 = !DILocation(line: 872, column: 52, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 872, column: 4)
!1564 = !DILocation(line: 872, column: 4, scope: !1559)
!1565 = !DILocation(line: 874, column: 12, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 874, column: 12)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 873, column: 6)
!1568 = !DILocation(line: 874, column: 16, scope: !1566)
!1569 = !DILocation(line: 874, column: 12, scope: !1567)
!1570 = !DILocation(line: 875, column: 14, scope: !1566)
!1571 = !DILocation(line: 875, column: 3, scope: !1566)
!1572 = !DILocation(line: 876, column: 18, scope: !1567)
!1573 = !DILocation(line: 876, column: 10, scope: !1567)
!1574 = !DILocation(line: 876, column: 13, scope: !1567)
!1575 = !DILocation(line: 872, column: 63, scope: !1563)
!1576 = !DILocation(line: 872, column: 4, scope: !1563)
!1577 = distinct !{!1577, !1564, !1578}
!1578 = !DILocation(line: 877, column: 6, scope: !1559)
!1579 = !DILocation(line: 869, column: 8, scope: !1506)
!1580 = !DILocation(line: 879, column: 11, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1506, file: !1, line: 879, column: 8)
!1582 = !DILocation(line: 879, column: 21, scope: !1581)
!1583 = !DILocation(line: 879, column: 8, scope: !1506)
!1584 = !DILocation(line: 881, column: 22, scope: !1506)
!1585 = !DILocation(line: 881, column: 14, scope: !1506)
!1586 = !DILocation(line: 882, column: 35, scope: !1506)
!1587 = !DILocation(line: 882, column: 9, scope: !1506)
!1588 = !DILocation(line: 882, column: 40, scope: !1506)
!1589 = !DILocation(line: 883, column: 22, scope: !1506)
!1590 = !DILocation(line: 883, column: 27, scope: !1506)
!1591 = !DILocation(line: 0, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !1, line: 901, column: 12)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !1, line: 900, column: 6)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !1, line: 899, column: 4)
!1595 = distinct !DILexicalBlock(scope: !1506, file: !1, line: 899, column: 4)
!1596 = !DILocation(line: 899, column: 9, scope: !1595)
!1597 = !DILocation(line: 899, column: 30, scope: !1594)
!1598 = !DILocation(line: 899, column: 4, scope: !1595)
!1599 = !DILocation(line: 918, column: 18, scope: !1593)
!1600 = !DILocation(line: 918, column: 15, scope: !1593)
!1601 = !DILocation(line: 918, column: 10, scope: !1593)
!1602 = !DILocation(line: 918, column: 13, scope: !1593)
!1603 = !DILocation(line: 899, column: 41, scope: !1594)
!1604 = !DILocation(line: 899, column: 4, scope: !1594)
!1605 = distinct !{!1605, !1598, !1606}
!1606 = !DILocation(line: 920, column: 6, scope: !1595)
!1607 = !DILocation(line: 921, column: 11, scope: !1506)
!1608 = !DILocation(line: 0, scope: !1595)
!1609 = !DILocation(line: 901, column: 24, scope: !1592)
!1610 = !DILocation(line: 901, column: 28, scope: !1592)
!1611 = !DILocation(line: 901, column: 12, scope: !1593)
!1612 = !DILocation(line: 910, column: 29, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 910, column: 17)
!1614 = !DILocation(line: 910, column: 26, scope: !1613)
!1615 = !DILocation(line: 910, column: 45, scope: !1613)
!1616 = !DILocation(line: 910, column: 17, scope: !1592)
!1617 = !DILocation(line: 915, column: 7, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 911, column: 3)
!1619 = !DILocation(line: 915, column: 10, scope: !1618)
!1620 = !DILocation(line: 916, column: 8, scope: !1618)
!1621 = !DILocation(line: 917, column: 3, scope: !1618)
!1622 = !DILocation(line: 903, column: 12, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !1, line: 903, column: 9)
!1624 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 902, column: 3)
!1625 = !DILocation(line: 903, column: 19, scope: !1623)
!1626 = !DILocation(line: 903, column: 26, scope: !1623)
!1627 = !DILocation(line: 903, column: 22, scope: !1623)
!1628 = !DILocation(line: 903, column: 30, scope: !1623)
!1629 = !DILocation(line: 903, column: 9, scope: !1624)
!1630 = !DILocation(line: 904, column: 18, scope: !1623)
!1631 = !DILocation(line: 904, column: 7, scope: !1623)
!1632 = !DILocation(line: 907, column: 7, scope: !1624)
!1633 = !DILocation(line: 907, column: 10, scope: !1624)
!1634 = !DILocation(line: 908, column: 8, scope: !1624)
!1635 = !DILocation(line: 909, column: 3, scope: !1624)
!1636 = !DILocation(line: 919, column: 11, scope: !1593)
!1637 = !DILocation(line: 921, column: 8, scope: !1506)
!1638 = !DILocation(line: 922, column: 2, scope: !1507)
!1639 = !DILocation(line: 0, scope: !1508)
!1640 = distinct !{!1640, !1641, !1642}
!1641 = !DILocation(line: 861, column: 7, scope: !1508)
!1642 = !DILocation(line: 922, column: 2, scope: !1508)
!1643 = !DILocation(line: 925, column: 10, scope: !1495)
!1644 = !DILocation(line: 926, column: 46, scope: !1495)
!1645 = !DILocation(line: 926, column: 52, scope: !1495)
!1646 = !DILocation(line: 926, column: 7, scope: !1495)
!1647 = !DILocation(line: 929, column: 14, scope: !1495)
!1648 = !DILocation(line: 929, column: 23, scope: !1495)
!1649 = !DILocation(line: 929, column: 28, scope: !1495)
!1650 = !DILocation(line: 931, column: 1, scope: !1487)
!1651 = distinct !DISubprogram(name: "skip_whitespace", scope: !1, file: !1, line: 214, type: !1183, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1657}
!1653 = !DILocalVariable(name: "pfile", arg: 1, scope: !1651, file: !1, line: 214, type: !185)
!1654 = !DILocalVariable(name: "cur", arg: 2, scope: !1651, file: !1, line: 214, type: !665)
!1655 = !DILocalVariable(name: "skip_comments", arg: 3, scope: !1651, file: !1, line: 214, type: !162)
!1656 = !DILocalVariable(name: "out", scope: !1651, file: !1, line: 216, type: !145)
!1657 = !DILocalVariable(name: "c", scope: !1658, file: !1, line: 220, type: !5)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !1, line: 219, column: 5)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !1, line: 218, column: 3)
!1660 = distinct !DILexicalBlock(scope: !1651, file: !1, line: 218, column: 3)
!1661 = !DILocation(line: 0, scope: !1651)
!1662 = !DILocation(line: 216, column: 27, scope: !1651)
!1663 = !DILocation(line: 0, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1658, file: !1, line: 226, column: 11)
!1665 = !DILocation(line: 218, column: 3, scope: !1651)
!1666 = !DILocation(line: 220, column: 28, scope: !1658)
!1667 = !DILocation(line: 220, column: 24, scope: !1658)
!1668 = !DILocation(line: 0, scope: !1658)
!1669 = !DILocation(line: 221, column: 11, scope: !1658)
!1670 = !DILocation(line: 221, column: 14, scope: !1658)
!1671 = !DILocation(line: 223, column: 11, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1658, file: !1, line: 223, column: 11)
!1673 = !DILocation(line: 223, column: 11, scope: !1658)
!1674 = distinct !{!1674, !1675, !1676}
!1675 = !DILocation(line: 218, column: 3, scope: !1660)
!1676 = !DILocation(line: 236, column: 5, scope: !1660)
!1677 = !DILocation(line: 226, column: 13, scope: !1664)
!1678 = !DILocation(line: 226, column: 20, scope: !1664)
!1679 = !DILocation(line: 226, column: 23, scope: !1664)
!1680 = !DILocation(line: 226, column: 28, scope: !1664)
!1681 = !DILocation(line: 226, column: 35, scope: !1664)
!1682 = !DILocation(line: 235, column: 7, scope: !1658)
!1683 = !DILocation(line: 228, column: 19, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 227, column: 2)
!1685 = !DILocation(line: 229, column: 10, scope: !1684)
!1686 = !DILocation(line: 230, column: 21, scope: !1684)
!1687 = !DILocation(line: 231, column: 4, scope: !1684)
!1688 = !DILocation(line: 238, column: 14, scope: !1651)
!1689 = !DILocation(line: 238, column: 18, scope: !1651)
!1690 = !DILocation(line: 239, column: 14, scope: !1651)
!1691 = !DILocation(line: 239, column: 3, scope: !1651)
!1692 = distinct !DISubprogram(name: "_cpp_replacement_text_len", scope: !1, file: !1, line: 761, type: !1693, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1697)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!146, !1695}
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!1697 = !{!1698, !1699, !1700, !1703}
!1698 = !DILocalVariable(name: "macro", arg: 1, scope: !1692, file: !1, line: 761, type: !1695)
!1699 = !DILocalVariable(name: "len", scope: !1692, file: !1, line: 763, type: !146)
!1700 = !DILocalVariable(name: "exp", scope: !1701, file: !1, line: 767, type: !665)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !1, line: 766, column: 5)
!1702 = distinct !DILexicalBlock(scope: !1692, file: !1, line: 765, column: 7)
!1703 = !DILocalVariable(name: "b", scope: !1704, file: !1, line: 772, type: !53)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !1, line: 771, column: 2)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !1, line: 770, column: 7)
!1706 = distinct !DILexicalBlock(scope: !1701, file: !1, line: 770, column: 7)
!1707 = !DILocation(line: 0, scope: !1692)
!1708 = !DILocation(line: 765, column: 14, scope: !1702)
!1709 = !DILocation(line: 765, column: 7, scope: !1702)
!1710 = !DILocation(line: 765, column: 23, scope: !1702)
!1711 = !DILocation(line: 765, column: 34, scope: !1702)
!1712 = !DILocation(line: 765, column: 41, scope: !1702)
!1713 = !DILocation(line: 765, column: 7, scope: !1692)
!1714 = !DILocation(line: 770, column: 25, scope: !1706)
!1715 = !DILocation(line: 770, column: 29, scope: !1706)
!1716 = !DILocation(line: 0, scope: !1701)
!1717 = !DILocation(line: 0, scope: !1704)
!1718 = !DILocation(line: 770, column: 12, scope: !1706)
!1719 = !DILocation(line: 770, column: 16, scope: !1706)
!1720 = !DILocation(line: 774, column: 14, scope: !1704)
!1721 = !DILocation(line: 774, column: 11, scope: !1704)
!1722 = !DILocation(line: 774, column: 8, scope: !1704)
!1723 = !DILocation(line: 775, column: 11, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 775, column: 8)
!1725 = !DILocation(line: 775, column: 21, scope: !1724)
!1726 = !DILocation(line: 775, column: 8, scope: !1704)
!1727 = !DILocation(line: 777, column: 11, scope: !1704)
!1728 = !DILocation(line: 777, column: 8, scope: !1704)
!1729 = !DILocation(line: 778, column: 11, scope: !1704)
!1730 = !DILocation(line: 778, column: 8, scope: !1704)
!1731 = !DILocation(line: 779, column: 2, scope: !1705)
!1732 = !DILocation(line: 0, scope: !1706)
!1733 = distinct !{!1733, !1734, !1735}
!1734 = !DILocation(line: 770, column: 7, scope: !1706)
!1735 = !DILocation(line: 779, column: 2, scope: !1706)
!1736 = !DILocation(line: 782, column: 18, scope: !1702)
!1737 = !DILocation(line: 782, column: 11, scope: !1702)
!1738 = !DILocation(line: 784, column: 3, scope: !1692)
!1739 = !DILocation(line: 0, scope: !1702)
!1740 = distinct !DISubprogram(name: "_cpp_copy_replacement_text", scope: !1, file: !1, line: 791, type: !1741, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1743)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!149, !1695, !145}
!1743 = !{!1744, !1745, !1746, !1749, !1753}
!1744 = !DILocalVariable(name: "macro", arg: 1, scope: !1740, file: !1, line: 791, type: !1695)
!1745 = !DILocalVariable(name: "dest", arg: 2, scope: !1740, file: !1, line: 791, type: !145)
!1746 = !DILocalVariable(name: "exp", scope: !1747, file: !1, line: 795, type: !665)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !1, line: 794, column: 5)
!1748 = distinct !DILexicalBlock(scope: !1740, file: !1, line: 793, column: 7)
!1749 = !DILocalVariable(name: "b", scope: !1750, file: !1, line: 799, type: !53)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !1, line: 798, column: 2)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !1, line: 797, column: 7)
!1752 = distinct !DILexicalBlock(scope: !1747, file: !1, line: 797, column: 7)
!1753 = !DILocalVariable(name: "param", scope: !1750, file: !1, line: 800, type: !66)
!1754 = !DILocation(line: 0, scope: !1740)
!1755 = !DILocation(line: 793, column: 14, scope: !1748)
!1756 = !DILocation(line: 793, column: 7, scope: !1748)
!1757 = !DILocation(line: 793, column: 23, scope: !1748)
!1758 = !DILocation(line: 793, column: 34, scope: !1748)
!1759 = !DILocation(line: 793, column: 41, scope: !1748)
!1760 = !DILocation(line: 793, column: 7, scope: !1740)
!1761 = !DILocation(line: 797, column: 25, scope: !1752)
!1762 = !DILocation(line: 797, column: 29, scope: !1752)
!1763 = !DILocation(line: 0, scope: !1747)
!1764 = !DILocation(line: 0, scope: !1750)
!1765 = !DILocation(line: 797, column: 12, scope: !1752)
!1766 = !DILocation(line: 797, column: 16, scope: !1752)
!1767 = !DILocation(line: 802, column: 21, scope: !1750)
!1768 = !DILocation(line: 802, column: 30, scope: !1750)
!1769 = !DILocation(line: 802, column: 27, scope: !1750)
!1770 = !DILocation(line: 802, column: 4, scope: !1750)
!1771 = !DILocation(line: 803, column: 15, scope: !1750)
!1772 = !DILocation(line: 803, column: 9, scope: !1750)
!1773 = !DILocation(line: 804, column: 11, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1750, file: !1, line: 804, column: 8)
!1775 = !DILocation(line: 804, column: 21, scope: !1774)
!1776 = !DILocation(line: 804, column: 8, scope: !1750)
!1777 = !DILocation(line: 806, column: 19, scope: !1750)
!1778 = !DILocation(line: 806, column: 26, scope: !1750)
!1779 = !DILocation(line: 806, column: 39, scope: !1750)
!1780 = !DILocation(line: 806, column: 12, scope: !1750)
!1781 = !DILocation(line: 807, column: 18, scope: !1750)
!1782 = !DILocation(line: 807, column: 37, scope: !1750)
!1783 = !DILocation(line: 807, column: 4, scope: !1750)
!1784 = !DILocation(line: 808, column: 12, scope: !1750)
!1785 = !DILocation(line: 808, column: 9, scope: !1750)
!1786 = !DILocation(line: 809, column: 11, scope: !1750)
!1787 = !DILocation(line: 809, column: 8, scope: !1750)
!1788 = !DILocation(line: 810, column: 2, scope: !1751)
!1789 = !DILocation(line: 0, scope: !1752)
!1790 = distinct !{!1790, !1791, !1792}
!1791 = !DILocation(line: 797, column: 7, scope: !1752)
!1792 = !DILocation(line: 810, column: 2, scope: !1752)
!1793 = !DILocation(line: 814, column: 28, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1748, file: !1, line: 813, column: 5)
!1795 = !DILocation(line: 814, column: 32, scope: !1794)
!1796 = !DILocation(line: 814, column: 45, scope: !1794)
!1797 = !DILocation(line: 814, column: 38, scope: !1794)
!1798 = !DILocation(line: 814, column: 7, scope: !1794)
!1799 = !DILocation(line: 815, column: 22, scope: !1794)
!1800 = !DILocation(line: 815, column: 12, scope: !1794)
!1801 = !DILocation(line: 818, column: 3, scope: !1740)
!1802 = !DILocation(line: 0, scope: !1748)
!1803 = distinct !DISubprogram(name: "_cpp_create_trad_definition", scope: !1, file: !1, line: 1033, type: !740, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1804)
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810}
!1805 = !DILocalVariable(name: "pfile", arg: 1, scope: !1803, file: !1, line: 1033, type: !185)
!1806 = !DILocalVariable(name: "macro", arg: 2, scope: !1803, file: !1, line: 1033, type: !88)
!1807 = !DILocalVariable(name: "cur", scope: !1803, file: !1, line: 1035, type: !665)
!1808 = !DILocalVariable(name: "limit", scope: !1803, file: !1, line: 1036, type: !145)
!1809 = !DILocalVariable(name: "context", scope: !1803, file: !1, line: 1037, type: !330)
!1810 = !DILocalVariable(name: "ok", scope: !1811, file: !1, line: 1049, type: !62)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !1, line: 1048, column: 5)
!1812 = distinct !DILexicalBlock(scope: !1803, file: !1, line: 1047, column: 7)
!1813 = !DILocation(line: 0, scope: !1803)
!1814 = !DILocation(line: 1037, column: 33, scope: !1803)
!1815 = !DILocation(line: 1041, column: 31, scope: !1803)
!1816 = !DILocation(line: 1041, column: 14, scope: !1803)
!1817 = !DILocation(line: 1041, column: 18, scope: !1803)
!1818 = !DILocation(line: 1042, column: 26, scope: !1803)
!1819 = !DILocation(line: 1042, column: 34, scope: !1803)
!1820 = !DILocation(line: 1042, column: 3, scope: !1803)
!1821 = !DILocation(line: 1042, column: 17, scope: !1803)
!1822 = !DILocation(line: 1043, column: 29, scope: !1803)
!1823 = !DILocation(line: 1043, column: 37, scope: !1803)
!1824 = !DILocation(line: 1043, column: 3, scope: !1803)
!1825 = !DILocation(line: 1043, column: 20, scope: !1803)
!1826 = !DILocation(line: 1044, column: 48, scope: !1803)
!1827 = !DILocation(line: 1044, column: 3, scope: !1803)
!1828 = !DILocation(line: 1047, column: 9, scope: !1812)
!1829 = !DILocation(line: 1047, column: 7, scope: !1812)
!1830 = !DILocation(line: 1047, column: 23, scope: !1812)
!1831 = !DILocation(line: 1047, column: 7, scope: !1803)
!1832 = !DILocation(line: 1049, column: 17, scope: !1811)
!1833 = !DILocation(line: 0, scope: !1811)
!1834 = !DILocation(line: 1052, column: 41, scope: !1811)
!1835 = !DILocation(line: 1052, column: 21, scope: !1811)
!1836 = !DILocation(line: 1056, column: 12, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1811, file: !1, line: 1056, column: 11)
!1838 = !DILocation(line: 1056, column: 11, scope: !1811)
!1839 = !DILocation(line: 1060, column: 65, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !1, line: 1059, column: 2)
!1841 = !DILocation(line: 1060, column: 44, scope: !1840)
!1842 = !DILocation(line: 1060, column: 4, scope: !1840)
!1843 = !DILocation(line: 1060, column: 31, scope: !1840)
!1844 = !DILocation(line: 1061, column: 11, scope: !1840)
!1845 = !DILocation(line: 1061, column: 20, scope: !1840)
!1846 = !DILocation(line: 1067, column: 31, scope: !1803)
!1847 = !DILocation(line: 1068, column: 10, scope: !1803)
!1848 = !DILocation(line: 1067, column: 7, scope: !1803)
!1849 = !DILocation(line: 1066, column: 10, scope: !1803)
!1850 = !DILocation(line: 1066, column: 18, scope: !1803)
!1851 = !DILocation(line: 1067, column: 5, scope: !1803)
!1852 = !DILocation(line: 1070, column: 16, scope: !1803)
!1853 = !DILocation(line: 1070, column: 33, scope: !1803)
!1854 = !DILocation(line: 1071, column: 3, scope: !1803)
!1855 = !DILocation(line: 1072, column: 33, scope: !1803)
!1856 = !DILocation(line: 1074, column: 8, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1803, file: !1, line: 1074, column: 7)
!1858 = !DILocation(line: 1074, column: 7, scope: !1803)
!1859 = !DILocation(line: 1078, column: 20, scope: !1803)
!1860 = !DILocation(line: 1079, column: 22, scope: !1803)
!1861 = !DILocation(line: 1080, column: 3, scope: !1803)
!1862 = !DILocation(line: 1080, column: 16, scope: !1803)
!1863 = !DILocation(line: 1080, column: 22, scope: !1803)
!1864 = !DILocation(line: 1080, column: 25, scope: !1803)
!1865 = distinct !{!1865, !1861, !1866}
!1866 = !DILocation(line: 1081, column: 10, scope: !1803)
!1867 = !DILocation(line: 1082, column: 18, scope: !1803)
!1868 = !DILocation(line: 1083, column: 3, scope: !1803)
!1869 = !DILocation(line: 1085, column: 3, scope: !1803)
!1870 = !DILocation(line: 1086, column: 1, scope: !1803)
!1871 = distinct !DISubprogram(name: "scan_parameters", scope: !1, file: !1, line: 940, type: !740, scopeLine: 941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1872)
!1872 = !{!1873, !1874, !1875, !1876}
!1873 = !DILocalVariable(name: "pfile", arg: 1, scope: !1871, file: !1, line: 940, type: !185)
!1874 = !DILocalVariable(name: "macro", arg: 2, scope: !1871, file: !1, line: 940, type: !88)
!1875 = !DILocalVariable(name: "cur", scope: !1871, file: !1, line: 942, type: !665)
!1876 = !DILocalVariable(name: "ok", scope: !1871, file: !1, line: 943, type: !62)
!1877 = !DILocation(line: 0, scope: !1871)
!1878 = !DILocation(line: 942, column: 22, scope: !1871)
!1879 = !DILocation(line: 0, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !1, line: 949, column: 11)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !1, line: 946, column: 5)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !1, line: 945, column: 3)
!1883 = distinct !DILexicalBlock(scope: !1871, file: !1, line: 945, column: 3)
!1884 = !DILocation(line: 945, column: 3, scope: !1871)
!1885 = !DILocation(line: 947, column: 13, scope: !1881)
!1886 = !DILocation(line: 949, column: 11, scope: !1880)
!1887 = !DILocation(line: 949, column: 11, scope: !1881)
!1888 = !DILocation(line: 952, column: 43, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !1, line: 952, column: 8)
!1890 = distinct !DILexicalBlock(scope: !1880, file: !1, line: 950, column: 2)
!1891 = !DILocation(line: 952, column: 8, scope: !1889)
!1892 = !DILocation(line: 952, column: 8, scope: !1890)
!1893 = !DILocation(line: 954, column: 34, scope: !1890)
!1894 = !DILocation(line: 954, column: 10, scope: !1890)
!1895 = !DILocation(line: 956, column: 8, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1890, file: !1, line: 956, column: 8)
!1897 = !DILocation(line: 956, column: 13, scope: !1896)
!1898 = !DILocation(line: 956, column: 8, scope: !1890)
!1899 = !DILocation(line: 959, column: 8, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !1, line: 957, column: 6)
!1901 = distinct !{!1901, !1902, !1903}
!1902 = !DILocation(line: 945, column: 3, scope: !1883)
!1903 = !DILocation(line: 967, column: 5, scope: !1883)
!1904 = !DILocation(line: 961, column: 15, scope: !1890)
!1905 = !DILocation(line: 961, column: 9, scope: !1890)
!1906 = !DILocation(line: 962, column: 4, scope: !1890)
!1907 = !DILocation(line: 965, column: 18, scope: !1881)
!1908 = !DILocation(line: 965, column: 25, scope: !1881)
!1909 = !DILocation(line: 965, column: 35, scope: !1881)
!1910 = !DILocation(line: 965, column: 42, scope: !1881)
!1911 = !DILocation(line: 966, column: 7, scope: !1881)
!1912 = !DILocation(line: 969, column: 8, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1871, file: !1, line: 969, column: 7)
!1914 = !DILocation(line: 0, scope: !1881)
!1915 = !DILocation(line: 969, column: 7, scope: !1871)
!1916 = !DILocation(line: 970, column: 5, scope: !1913)
!1917 = !DILocation(line: 972, column: 33, scope: !1871)
!1918 = !DILocation(line: 972, column: 38, scope: !1871)
!1919 = !DILocation(line: 972, column: 30, scope: !1871)
!1920 = !DILocation(line: 972, column: 3, scope: !1871)
!1921 = !DILocation(line: 972, column: 24, scope: !1871)
!1922 = !DILocation(line: 974, column: 3, scope: !1871)
!1923 = distinct !DISubprogram(name: "_cpp_expansions_different_trad", scope: !1, file: !1, line: 1127, type: !1924, scopeLine: 1129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!62, !1695, !1695}
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1939, !1940, !1944}
!1927 = !DILocalVariable(name: "macro1", arg: 1, scope: !1923, file: !1, line: 1127, type: !1695)
!1928 = !DILocalVariable(name: "macro2", arg: 2, scope: !1923, file: !1, line: 1128, type: !1695)
!1929 = !DILocalVariable(name: "p1", scope: !1923, file: !1, line: 1130, type: !145)
!1930 = !DILocalVariable(name: "p2", scope: !1923, file: !1, line: 1131, type: !145)
!1931 = !DILocalVariable(name: "quote1", scope: !1923, file: !1, line: 1132, type: !60)
!1932 = !DILocalVariable(name: "quote2", scope: !1923, file: !1, line: 1132, type: !60)
!1933 = !DILocalVariable(name: "mismatch", scope: !1923, file: !1, line: 1133, type: !62)
!1934 = !DILocalVariable(name: "len1", scope: !1923, file: !1, line: 1134, type: !146)
!1935 = !DILocalVariable(name: "len2", scope: !1923, file: !1, line: 1134, type: !146)
!1936 = !DILocalVariable(name: "exp1", scope: !1937, file: !1, line: 1138, type: !665)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !1, line: 1137, column: 5)
!1938 = distinct !DILexicalBlock(scope: !1923, file: !1, line: 1136, column: 7)
!1939 = !DILocalVariable(name: "exp2", scope: !1937, file: !1, line: 1138, type: !665)
!1940 = !DILocalVariable(name: "b1", scope: !1941, file: !1, line: 1143, type: !53)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !1, line: 1142, column: 2)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !1, line: 1141, column: 7)
!1943 = distinct !DILexicalBlock(scope: !1937, file: !1, line: 1141, column: 7)
!1944 = !DILocalVariable(name: "b2", scope: !1941, file: !1, line: 1144, type: !53)
!1945 = !DILocation(line: 0, scope: !1923)
!1946 = !DILocation(line: 1130, column: 15, scope: !1923)
!1947 = !DILocation(line: 1131, column: 28, scope: !1923)
!1948 = !DILocation(line: 1131, column: 18, scope: !1923)
!1949 = !DILocation(line: 1132, column: 3, scope: !1923)
!1950 = !DILocation(line: 1132, column: 9, scope: !1923)
!1951 = !DILocation(line: 1132, column: 21, scope: !1923)
!1952 = !DILocation(line: 1136, column: 15, scope: !1938)
!1953 = !DILocation(line: 1136, column: 22, scope: !1938)
!1954 = !DILocation(line: 0, scope: !1938)
!1955 = !DILocation(line: 1136, column: 7, scope: !1923)
!1956 = !DILocation(line: 0, scope: !1937)
!1957 = !DILocation(line: 1138, column: 61, scope: !1937)
!1958 = !DILocation(line: 1138, column: 65, scope: !1937)
!1959 = !DILocation(line: 1141, column: 7, scope: !1937)
!1960 = !DILocation(line: 1140, column: 16, scope: !1937)
!1961 = !DILocation(line: 1138, column: 20, scope: !1937)
!1962 = !DILocation(line: 1138, column: 46, scope: !1937)
!1963 = !DILocation(line: 0, scope: !1941)
!1964 = !DILocation(line: 1146, column: 12, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1941, file: !1, line: 1146, column: 8)
!1966 = !DILocation(line: 1146, column: 29, scope: !1965)
!1967 = !DILocation(line: 1146, column: 22, scope: !1965)
!1968 = !DILocation(line: 1146, column: 8, scope: !1941)
!1969 = !DILocation(line: 1149, column: 38, scope: !1941)
!1970 = !DILocation(line: 1149, column: 48, scope: !1941)
!1971 = !DILocation(line: 1149, column: 44, scope: !1941)
!1972 = !DILocation(line: 1149, column: 11, scope: !1941)
!1973 = !DILocation(line: 1150, column: 38, scope: !1941)
!1974 = !DILocation(line: 1150, column: 48, scope: !1941)
!1975 = !DILocation(line: 1150, column: 44, scope: !1941)
!1976 = !DILocation(line: 1150, column: 11, scope: !1941)
!1977 = !DILocation(line: 1151, column: 13, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1941, file: !1, line: 1151, column: 8)
!1979 = !DILocation(line: 1151, column: 21, scope: !1978)
!1980 = !DILocation(line: 1151, column: 24, scope: !1978)
!1981 = !DILocation(line: 1151, column: 8, scope: !1941)
!1982 = !DILocation(line: 1153, column: 12, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1941, file: !1, line: 1153, column: 8)
!1984 = !DILocation(line: 1153, column: 22, scope: !1983)
!1985 = !DILocation(line: 1153, column: 8, scope: !1941)
!1986 = !DILocation(line: 1158, column: 12, scope: !1941)
!1987 = !DILocation(line: 1158, column: 9, scope: !1941)
!1988 = !DILocation(line: 1159, column: 12, scope: !1941)
!1989 = !DILocation(line: 1159, column: 9, scope: !1941)
!1990 = !DILocation(line: 1160, column: 2, scope: !1942)
!1991 = distinct !{!1991, !1992, !1993}
!1992 = !DILocation(line: 1141, column: 7, scope: !1943)
!1993 = !DILocation(line: 1160, column: 2, scope: !1943)
!1994 = !DILocation(line: 1164, column: 14, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1938, file: !1, line: 1163, column: 5)
!1996 = !DILocation(line: 1165, column: 45, scope: !1995)
!1997 = !DILocation(line: 1165, column: 49, scope: !1995)
!1998 = !DILocation(line: 1165, column: 63, scope: !1995)
!1999 = !DILocation(line: 1165, column: 55, scope: !1995)
!2000 = !DILocation(line: 1165, column: 14, scope: !1995)
!2001 = !DILocation(line: 1166, column: 24, scope: !1995)
!2002 = !DILocation(line: 1166, column: 32, scope: !1995)
!2003 = !DILocation(line: 1166, column: 35, scope: !1995)
!2004 = !DILocation(line: 1169, column: 3, scope: !1923)
!2005 = !DILocation(line: 1171, column: 1, scope: !1923)
!2006 = !DILocation(line: 1170, column: 3, scope: !1923)
!2007 = distinct !DISubprogram(name: "canonicalize_text", scope: !1, file: !1, line: 1093, type: !2008, scopeLine: 1094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!146, !145, !665, !146, !145}
!2010 = !{!2011, !2012, !2013, !2014, !2015, !2016}
!2011 = !DILocalVariable(name: "dest", arg: 1, scope: !2007, file: !1, line: 1093, type: !145)
!2012 = !DILocalVariable(name: "src", arg: 2, scope: !2007, file: !1, line: 1093, type: !665)
!2013 = !DILocalVariable(name: "len", arg: 3, scope: !2007, file: !1, line: 1093, type: !146)
!2014 = !DILocalVariable(name: "pquote", arg: 4, scope: !2007, file: !1, line: 1093, type: !145)
!2015 = !DILocalVariable(name: "orig_dest", scope: !2007, file: !1, line: 1095, type: !145)
!2016 = !DILocalVariable(name: "quote", scope: !2007, file: !1, line: 1096, type: !60)
!2017 = !DILocation(line: 0, scope: !2007)
!2018 = !DILocation(line: 1096, column: 17, scope: !2007)
!2019 = !DILocation(line: 1098, column: 3, scope: !2007)
!2020 = !DILocation(line: 1100, column: 11, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !1, line: 1100, column: 11)
!2022 = distinct !DILexicalBlock(scope: !2007, file: !1, line: 1099, column: 5)
!2023 = !DILocation(line: 1100, column: 31, scope: !2021)
!2024 = !DILocation(line: 1100, column: 27, scope: !2021)
!2025 = !DILocation(line: 1102, column: 4, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 1101, column: 2)
!2027 = !DILocation(line: 1103, column: 9, scope: !2026)
!2028 = !DILocation(line: 1103, column: 16, scope: !2026)
!2029 = !DILocation(line: 1104, column: 11, scope: !2026)
!2030 = !DILocation(line: 1104, column: 15, scope: !2026)
!2031 = !DILocation(line: 1104, column: 18, scope: !2026)
!2032 = !DILocation(line: 1103, column: 6, scope: !2026)
!2033 = distinct !{!2033, !2025, !2034}
!2034 = !DILocation(line: 1104, column: 33, scope: !2026)
!2035 = !DILocation(line: 1105, column: 12, scope: !2026)
!2036 = !DILocation(line: 1106, column: 2, scope: !2026)
!2037 = !DILocation(line: 1109, column: 13, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 1109, column: 8)
!2039 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 1108, column: 2)
!2040 = !DILocation(line: 1109, column: 21, scope: !2038)
!2041 = !DILocation(line: 1109, column: 29, scope: !2038)
!2042 = !DILocation(line: 1109, column: 8, scope: !2039)
!2043 = !DILocation(line: 1111, column: 13, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !1, line: 1111, column: 12)
!2045 = distinct !DILexicalBlock(scope: !2038, file: !1, line: 1110, column: 6)
!2046 = !DILocation(line: 1111, column: 12, scope: !2045)
!2047 = !DILocation(line: 1112, column: 3, scope: !2044)
!2048 = !DILocation(line: 1113, column: 23, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2044, file: !1, line: 1113, column: 17)
!2050 = !DILocation(line: 1113, column: 17, scope: !2044)
!2051 = !DILocation(line: 1116, column: 18, scope: !2039)
!2052 = !DILocation(line: 1116, column: 12, scope: !2039)
!2053 = !DILocation(line: 1116, column: 25, scope: !2039)
!2054 = !DILocation(line: 0, scope: !2021)
!2055 = distinct !{!2055, !2019, !2056}
!2056 = !DILocation(line: 1118, column: 5, scope: !2007)
!2057 = !DILocation(line: 1120, column: 11, scope: !2007)
!2058 = !DILocation(line: 1121, column: 15, scope: !2007)
!2059 = !DILocation(line: 1121, column: 3, scope: !2007)
!2060 = distinct !DISubprogram(name: "skip_macro_block_comment", scope: !1, file: !1, line: 121, type: !524, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2061)
!2061 = !{!2062, !2063}
!2062 = !DILocalVariable(name: "pfile", arg: 1, scope: !2060, file: !1, line: 121, type: !185)
!2063 = !DILocalVariable(name: "cur", scope: !2060, file: !1, line: 123, type: !665)
!2064 = !DILocation(line: 0, scope: !2060)
!2065 = !DILocation(line: 123, column: 29, scope: !2060)
!2066 = !DILocation(line: 123, column: 37, scope: !2060)
!2067 = !DILocation(line: 125, column: 6, scope: !2060)
!2068 = !DILocation(line: 126, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 126, column: 7)
!2070 = !DILocation(line: 126, column: 12, scope: !2069)
!2071 = !DILocation(line: 127, column: 8, scope: !2069)
!2072 = !DILocation(line: 126, column: 7, scope: !2060)
!2073 = !DILocation(line: 131, column: 3, scope: !2060)
!2074 = !DILocation(line: 131, column: 16, scope: !2060)
!2075 = !DILocation(line: 131, column: 12, scope: !2060)
!2076 = !DILocation(line: 131, column: 19, scope: !2060)
!2077 = !DILocation(line: 131, column: 26, scope: !2060)
!2078 = !DILocation(line: 131, column: 29, scope: !2060)
!2079 = !DILocation(line: 131, column: 37, scope: !2060)
!2080 = distinct !{!2080, !2073, !2081}
!2081 = !DILocation(line: 132, column: 5, scope: !2060)
!2082 = !DILocation(line: 134, column: 22, scope: !2060)
!2083 = !DILocation(line: 135, column: 1, scope: !2060)
!2084 = distinct !DISubprogram(name: "ustrlen", scope: !188, file: !188, line: 705, type: !2085, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!146, !75}
!2087 = !{!2088}
!2088 = !DILocalVariable(name: "s1", arg: 1, scope: !2084, file: !188, line: 705, type: !75)
!2089 = !DILocation(line: 0, scope: !2084)
!2090 = !DILocation(line: 707, column: 10, scope: !2084)
!2091 = !DILocation(line: 707, column: 3, scope: !2084)
