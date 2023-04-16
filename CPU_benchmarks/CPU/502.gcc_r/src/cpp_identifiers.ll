; ModuleID = 'cpp_identifiers.bc'
source_filename = "cpp_identifiers.c"
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
%struct.op = type opaque
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i8*, i8*, i32, i8, i8, %struct.anon.1, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i8, i8, i8, i8 }
%struct.spec_nodes = type { %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode* }
%struct.anon.2 = type { i8*, i8*, i8*, i32 }
%struct.cpp_savedstate = type opaque
%struct.cpp_comment_table = type { %struct.cpp_comment*, i32, i32 }
%struct.cpp_comment = type { i8*, i32 }
%struct.def_pragma_macro = type { %struct.def_pragma_macro*, i8*, %struct.cpp_macro* }
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i8* (i64)*, i32, i32, %struct.cpp_reader*, i32, i32, i8 }

@.str = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"__VA_ARGS__\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !634 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !639, metadata !DIExpression()), !dbg !640
  %__c.off = add i32 %__c, 128, !dbg !641
  %0 = icmp ult i32 %__c.off, 384, !dbg !641
  br i1 %0, label %cond.true, label %cond.end, !dbg !641

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !642
  %1 = load i32*, i32** %call, align 8, !dbg !643
  %idxprom = sext i32 %__c to i64, !dbg !644
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !644
  %2 = load i32, i32* %arrayidx, align 4, !dbg !644
  br label %cond.end, !dbg !645

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !645
  ret i32 %cond, !dbg !646
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !647 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !649, metadata !DIExpression()), !dbg !650
  %__c.off = add i32 %__c, 128, !dbg !651
  %0 = icmp ult i32 %__c.off, 384, !dbg !651
  br i1 %0, label %cond.true, label %cond.end, !dbg !651

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !652
  %1 = load i32*, i32** %call, align 8, !dbg !653
  %idxprom = sext i32 %__c to i64, !dbg !654
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !654
  %2 = load i32, i32* %arrayidx, align 4, !dbg !654
  br label %cond.end, !dbg !655

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !655
  ret i32 %cond, !dbg !656
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_init_hashtable(%struct.cpp_reader* %pfile, %struct.ht* %table) local_unnamed_addr #2 !dbg !657 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !661, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata %struct.ht* %table, metadata !662, metadata !DIExpression()), !dbg !665
  %cmp = icmp eq %struct.ht* %table, null, !dbg !666
  br i1 %cmp, label %if.then, label %if.end, !dbg !668

if.then:                                          ; preds = %entry
  %our_hashtable = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 55, !dbg !669
  store i8 1, i8* %our_hashtable, align 8, !dbg !671
  %call = tail call %struct.ht* @ht_create(i32 13) #5, !dbg !672
  call void @llvm.dbg.value(metadata %struct.ht* %call, metadata !662, metadata !DIExpression()), !dbg !665
  %alloc_node = getelementptr inbounds %struct.ht, %struct.ht* %call, i64 0, i32 2, !dbg !673
  store %struct.ht_identifier* (%struct.ht*)* @alloc_node, %struct.ht_identifier* (%struct.ht*)** %alloc_node, align 8, !dbg !674
  %hash_ob = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 46, !dbg !675
  %call1 = tail call i32 @_obstack_begin(%struct.obstack* nonnull %hash_ob, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #5, !dbg !676
  br label %if.end, !dbg !677

if.end:                                           ; preds = %if.then, %entry
  %table.addr.0 = phi %struct.ht* [ %call, %if.then ], [ %table, %entry ]
  call void @llvm.dbg.value(metadata %struct.ht* %table.addr.0, metadata !662, metadata !DIExpression()), !dbg !665
  %pfile2 = getelementptr inbounds %struct.ht, %struct.ht* %table.addr.0, i64 0, i32 6, !dbg !678
  store %struct.cpp_reader* %pfile, %struct.cpp_reader** %pfile2, align 8, !dbg !679
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 50, !dbg !680
  store %struct.ht* %table.addr.0, %struct.ht** %hash_table, align 8, !dbg !681
  tail call void @_cpp_init_directives(%struct.cpp_reader* %pfile) #5, !dbg !682
  tail call void @_cpp_init_internal_pragmas(%struct.cpp_reader* %pfile) #5, !dbg !683
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !663, metadata !DIExpression(DW_OP_plus_uconst, 1168, DW_OP_stack_value)), !dbg !665
  %call3 = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7) #6, !dbg !684
  %n_defined = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 54, i32 0, !dbg !685
  store %struct.cpp_hashnode* %call3, %struct.cpp_hashnode** %n_defined, align 8, !dbg !686
  %call4 = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4) #6, !dbg !687
  %n_true = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 54, i32 1, !dbg !688
  store %struct.cpp_hashnode* %call4, %struct.cpp_hashnode** %n_true, align 8, !dbg !689
  %call5 = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5) #6, !dbg !690
  %n_false = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 54, i32 2, !dbg !691
  store %struct.cpp_hashnode* %call5, %struct.cpp_hashnode** %n_false, align 8, !dbg !692
  %call6 = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11) #6, !dbg !693
  %n__VA_ARGS__ = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 54, i32 3, !dbg !694
  store %struct.cpp_hashnode* %call6, %struct.cpp_hashnode** %n__VA_ARGS__, align 8, !dbg !695
  %flags = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call6, i64 0, i32 3, !dbg !696
  %bf.load = load i16, i16* %flags, align 2, !dbg !697
  %bf.lshr = and i16 %bf.load, -576, !dbg !697
  %0 = or i16 %bf.lshr, 512, !dbg !697
  %bf.clear = and i16 %bf.load, 63, !dbg !697
  %bf.set = or i16 %bf.clear, %0, !dbg !697
  store i16 %bf.set, i16* %flags, align 2, !dbg !697
  ret void, !dbg !698
}

declare dso_local %struct.ht* @ht_create(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal %struct.ht_identifier* @alloc_node(%struct.ht* %table) #2 !dbg !699 {
entry:
  call void @llvm.dbg.value(metadata %struct.ht* %table, metadata !701, metadata !DIExpression()), !dbg !703
  %pfile = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 6, !dbg !704
  %0 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8, !dbg !704
  %temp = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %0, i64 0, i32 46, i32 5, !dbg !704
  store i64 32, i64* %temp, align 8, !dbg !704
  %1 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8, !dbg !704
  %chunk_limit = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %1, i64 0, i32 46, i32 4, !dbg !704
  %2 = bitcast i8** %chunk_limit to i64*, !dbg !704
  %3 = load i64, i64* %2, align 8, !dbg !704
  %next_free = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %1, i64 0, i32 46, i32 3, !dbg !704
  %4 = bitcast i8** %next_free to i64*, !dbg !704
  %5 = load i64, i64* %4, align 8, !dbg !704
  %sub.ptr.sub = sub i64 %3, %5, !dbg !704
  %temp7 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %1, i64 0, i32 46, i32 5, !dbg !704
  %6 = load i64, i64* %temp7, align 8, !dbg !704
  %cmp = icmp slt i64 %sub.ptr.sub, %6, !dbg !704
  %7 = inttoptr i64 %5 to i8*, !dbg !704
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !704

cond.true:                                        ; preds = %entry
  %hash_ob9 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %1, i64 0, i32 46, !dbg !704
  %conv = trunc i64 %6 to i32, !dbg !704
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %hash_ob9, i32 %conv) #5, !dbg !704
  %.pre = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8, !dbg !704
  %temp15.phi.trans.insert = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %.pre, i64 0, i32 46, i32 5, !dbg !703
  %.pre1 = load i64, i64* %temp15.phi.trans.insert, align 8, !dbg !704
  %next_free18.phi.trans.insert = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %.pre, i64 0, i32 46, i32 3, !dbg !703
  %.pre2 = load i8*, i8** %next_free18.phi.trans.insert, align 8, !dbg !704
  br label %cond.end, !dbg !704

cond.end:                                         ; preds = %entry, %cond.true
  %8 = phi i8* [ %7, %entry ], [ %.pre2, %cond.true ], !dbg !704
  %9 = phi i64 [ %6, %entry ], [ %.pre1, %cond.true ], !dbg !704
  %10 = phi %struct.cpp_reader* [ %1, %entry ], [ %.pre, %cond.true ], !dbg !704
  %next_free18 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %10, i64 0, i32 46, i32 3, !dbg !704
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !704
  store i8* %add.ptr, i8** %next_free18, align 8, !dbg !704
  %11 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8, !dbg !704
  %next_free21 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i64 0, i32 46, i32 3, !dbg !704
  %12 = load i8*, i8** %next_free21, align 8, !dbg !704
  %object_base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i64 0, i32 46, i32 2, !dbg !704
  %13 = load i8*, i8** %object_base, align 8, !dbg !704
  %cmp24 = icmp eq i8* %12, %13, !dbg !704
  br i1 %cmp24, label %cond.true26, label %cond.end30, !dbg !704

cond.true26:                                      ; preds = %cond.end
  %maybe_empty_object = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %11, i64 0, i32 46, i32 10, !dbg !704
  %bf.load = load i8, i8* %maybe_empty_object, align 8, !dbg !704
  %bf.set = or i8 %bf.load, 2, !dbg !704
  store i8 %bf.set, i8* %maybe_empty_object, align 8, !dbg !704
  %.pre3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8, !dbg !704
  br label %cond.end30, !dbg !704

cond.end30:                                       ; preds = %cond.end, %cond.true26
  %14 = phi %struct.cpp_reader* [ %11, %cond.end ], [ %.pre3, %cond.true26 ], !dbg !704
  %object_base34 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i64 0, i32 46, i32 2, !dbg !704
  %15 = bitcast i8** %object_base34 to i64*, !dbg !704
  %16 = load i64, i64* %15, align 8, !dbg !704
  %temp39 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %14, i64 0, i32 46, i32 5, !dbg !704
  store i64 %16, i64* %temp39, align 8, !dbg !704
  %17 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8, !dbg !704
  %next_free42 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %17, i64 0, i32 46, i32 3, !dbg !704
  %18 = bitcast i8** %next_free42 to i64*, !dbg !704
  %19 = load i64, i64* %18, align 8, !dbg !704
  %alignment_mask = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %17, i64 0, i32 46, i32 6, !dbg !704
  %20 = load i32, i32* %alignment_mask, align 8, !dbg !704
  %conv47 = sext i32 %20 to i64, !dbg !704
  %add = add nsw i64 %19, %conv47, !dbg !704
  %neg = xor i32 %20, -1, !dbg !704
  %conv51 = sext i32 %neg to i64, !dbg !704
  %and = and i64 %add, %conv51, !dbg !704
  %21 = inttoptr i64 %and to i8*, !dbg !704
  store i8* %21, i8** %next_free42, align 8, !dbg !704
  %22 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8, !dbg !704
  %next_free57 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %22, i64 0, i32 46, i32 3, !dbg !704
  %23 = bitcast i8** %next_free57 to i64*, !dbg !704
  %24 = load i64, i64* %23, align 8, !dbg !704
  %chunk = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %22, i64 0, i32 46, i32 1, !dbg !704
  %25 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !704
  %26 = load i64, i64* %25, align 8, !dbg !704
  %sub.ptr.sub62 = sub i64 %24, %26, !dbg !704
  %chunk_limit65 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %22, i64 0, i32 46, i32 4, !dbg !704
  %27 = bitcast i8** %chunk_limit65 to i64*, !dbg !704
  %28 = load i64, i64* %27, align 8, !dbg !704
  %sub.ptr.sub71 = sub i64 %28, %26, !dbg !704
  %cmp72 = icmp sgt i64 %sub.ptr.sub62, %sub.ptr.sub71, !dbg !704
  br i1 %cmp72, label %cond.true74, label %cond.end82, !dbg !704

cond.true74:                                      ; preds = %cond.end30
  store i64 %28, i64* %23, align 8, !dbg !704
  %.pre4 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8, !dbg !704
  %next_free86.phi.trans.insert = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %.pre4, i64 0, i32 46, i32 3, !dbg !703
  %.phi.trans.insert = bitcast i8** %next_free86.phi.trans.insert to i64*, !dbg !703
  %.pre5 = load i64, i64* %.phi.trans.insert, align 8, !dbg !704
  br label %cond.end82, !dbg !704

cond.end82:                                       ; preds = %cond.end30, %cond.true74
  %29 = phi i64 [ %24, %cond.end30 ], [ %.pre5, %cond.true74 ], !dbg !704
  %30 = phi %struct.cpp_reader* [ %22, %cond.end30 ], [ %.pre4, %cond.true74 ], !dbg !704
  %object_base89 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %30, i64 0, i32 46, i32 2, !dbg !704
  %31 = bitcast i8** %object_base89 to i64*, !dbg !704
  store i64 %29, i64* %31, align 8, !dbg !704
  %32 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8, !dbg !704
  %temp92 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %32, i64 0, i32 46, i32 5, !dbg !704
  %33 = bitcast i64* %temp92 to %struct.cpp_hashnode**, !dbg !704
  %34 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %33, align 8, !dbg !704
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %34, metadata !702, metadata !DIExpression()), !dbg !703
  %35 = bitcast %struct.cpp_hashnode* %34 to i8*, !dbg !705
  %call = tail call i8* @memset(i8* %35, i32 0, i64 32) #5, !dbg !706
  %36 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %34, i64 0, i32 0, !dbg !707
  ret %struct.ht_identifier* %36, !dbg !708
}

declare dso_local i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

declare dso_local void @_cpp_init_directives(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local void @_cpp_init_internal_pragmas(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %pfile, i8* %str, i32 %len) local_unnamed_addr #2 !dbg !709 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !713, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.value(metadata i8* %str, metadata !714, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.value(metadata i32 %len, metadata !715, metadata !DIExpression()), !dbg !716
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 50, !dbg !717
  %0 = load %struct.ht*, %struct.ht** %hash_table, align 8, !dbg !717
  %conv = zext i32 %len to i64, !dbg !717
  %call = tail call %struct.ht_identifier* @ht_lookup(%struct.ht* %0, i8* %str, i64 %conv, i32 1) #5, !dbg !717
  %1 = bitcast %struct.ht_identifier* %call to %struct.cpp_hashnode*, !dbg !717
  ret %struct.cpp_hashnode* %1, !dbg !718
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_destroy_hashtable(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !719 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !721, metadata !DIExpression()), !dbg !722
  %our_hashtable = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 55, !dbg !723
  %0 = load i8, i8* %our_hashtable, align 8, !dbg !723
  %tobool = icmp eq i8 %0, 0, !dbg !725
  br i1 %tobool, label %if.end, label %if.then, !dbg !726

if.then:                                          ; preds = %entry
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 50, !dbg !727
  %1 = load %struct.ht*, %struct.ht** %hash_table, align 8, !dbg !727
  tail call void @ht_destroy(%struct.ht* %1) #5, !dbg !729
  %chunk = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 46, i32 1, !dbg !730
  %2 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !730
  %3 = load i64, i64* %2, align 8, !dbg !730
  %sub.ptr.sub = sub i64 0, %3, !dbg !730
  %temp = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 46, i32 5, !dbg !730
  store i64 %sub.ptr.sub, i64* %temp, align 8, !dbg !730
  %cmp = icmp sgt i64 %sub.ptr.sub, 0, !dbg !730
  %4 = inttoptr i64 %3 to i8*, !dbg !730
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !730

land.lhs.true:                                    ; preds = %if.then
  %chunk_limit = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 46, i32 4, !dbg !730
  %5 = bitcast i8** %chunk_limit to i64*, !dbg !730
  %6 = load i64, i64* %5, align 8, !dbg !730
  %sub.ptr.sub10 = sub i64 %6, %3, !dbg !730
  %cmp11 = icmp sgt i64 %sub.ptr.sub10, %sub.ptr.sub, !dbg !730
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !730

cond.true:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %sub.ptr.sub, !dbg !730
  %object_base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 46, i32 2, !dbg !730
  store i8* %add.ptr, i8** %object_base, align 8, !dbg !730
  %next_free = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 46, i32 3, !dbg !730
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !730
  br label %if.end, !dbg !730

cond.false:                                       ; preds = %land.lhs.true, %if.then
  %hash_ob18 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 46, !dbg !730
  %add.ptr23 = getelementptr inbounds i8, i8* %4, i64 %sub.ptr.sub, !dbg !730
  tail call void @obstack_free(%struct.obstack* nonnull %hash_ob18, i8* %add.ptr23) #5, !dbg !730
  br label %if.end, !dbg !730

if.end:                                           ; preds = %entry, %cond.true, %cond.false
  ret void, !dbg !731
}

declare dso_local void @ht_destroy(%struct.ht*) local_unnamed_addr #1

declare dso_local void @obstack_free(%struct.obstack*, i8*) local_unnamed_addr #1

declare dso_local %struct.ht_identifier* @ht_lookup(%struct.ht*, i8*, i64, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @cpp_defined(%struct.cpp_reader* %pfile, i8* %str, i32 %len) local_unnamed_addr #2 !dbg !732 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !736, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i8* %str, metadata !737, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.value(metadata i32 %len, metadata !738, metadata !DIExpression()), !dbg !740
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 50, !dbg !741
  %0 = load %struct.ht*, %struct.ht** %hash_table, align 8, !dbg !741
  %conv = sext i32 %len to i64, !dbg !741
  %call = tail call %struct.ht_identifier* @ht_lookup(%struct.ht* %0, i8* %str, i64 %conv, i32 0) #5, !dbg !741
  call void @llvm.dbg.value(metadata %struct.ht_identifier* %call, metadata !739, metadata !DIExpression()), !dbg !740
  %tobool = icmp eq %struct.ht_identifier* %call, null, !dbg !742
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !743

land.rhs:                                         ; preds = %entry
  %1 = bitcast %struct.ht_identifier* %call to %struct.cpp_hashnode*, !dbg !741
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %1, metadata !739, metadata !DIExpression()), !dbg !740
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %1, i64 0, i32 3, !dbg !744
  %bf.load = load i16, i16* %type, align 2, !dbg !744
  %bf.clear = and i16 %bf.load, 63, !dbg !744
  %cmp = icmp eq i16 %bf.clear, 1, !dbg !745
  %phitmp = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %2 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %2, !dbg !746
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_forall_identifiers(%struct.cpp_reader* %pfile, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* %cb, i8* %v) local_unnamed_addr #2 !dbg !747 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !755, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* %cb, metadata !756, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i8* %v, metadata !757, metadata !DIExpression()), !dbg !758
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 50, !dbg !759
  %0 = load %struct.ht*, %struct.ht** %hash_table, align 8, !dbg !759
  %1 = bitcast i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* %cb to i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)*, !dbg !760
  tail call void @ht_forall(%struct.ht* %0, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)* %1, i8* %v) #5, !dbg !761
  ret void, !dbg !762
}

declare dso_local void @ht_forall(%struct.ht*, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)*, i8*) local_unnamed_addr #1

declare dso_local void @_obstack_newchunk(%struct.obstack*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!630, !631, !632}
!llvm.ident = !{!633}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, nameTableKind: None)
!1 = !DIFile(filename: "cpp_identifiers.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !17, !29, !35}
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
!40 = !{!41, !42, !46, !49, !52, !54, !56, !138, !628}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!41, !45}
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !41}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !55, line: 35, baseType: !45)
!55 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_hashnode", file: !4, line: 36, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_hashnode", file: !4, line: 644, size: 256, elements: !59)
!59 = !{!60, !67, !68, !69, !70, !71, !72}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !58, file: !4, line: 645, baseType: !61, size: 128)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !62, line: 31, size: 128, elements: !63)
!62 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!63 = !{!64, !65, !66}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !61, file: !62, line: 32, baseType: !49, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !61, file: !62, line: 33, baseType: !5, size: 32, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !61, file: !62, line: 34, baseType: !5, size: 32, offset: 96)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !58, file: !4, line: 646, baseType: !5, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !58, file: !4, line: 647, baseType: !5, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !58, file: !4, line: 650, baseType: !51, size: 8, offset: 136)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !4, line: 651, baseType: !5, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !4, line: 652, baseType: !5, size: 10, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !58, file: !4, line: 654, baseType: !73, size: 64, offset: 192)
!73 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_cpp_hashnode_value", file: !4, line: 633, size: 64, elements: !74)
!74 = !{!75, !126, !136, !137}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !73, file: !4, line: 635, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_macro", file: !4, line: 37, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro", file: !79, line: 36, size: 256, elements: !80)
!79 = !DIFile(filename: "./cpp-id-data.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!80 = !{!81, !83, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !78, file: !79, line: 42, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !78, file: !79, line: 51, baseType: !84, size: 64, offset: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_macro_u", file: !79, line: 47, size: 64, elements: !85)
!85 = !{!86, !116}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "tokens", scope: !84, file: !79, line: 49, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !4, line: 34, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !4, line: 212, size: 192, elements: !90)
!90 = !{!91, !94, !95, !97}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !89, file: !4, line: 213, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !93, line: 44, baseType: !5)
!93 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !4, line: 214, baseType: !5, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !4, line: 215, baseType: !96, size: 16, offset: 48)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !89, file: !4, line: 237, baseType: !98, size: 128, offset: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_token_u", file: !4, line: 217, size: 128, elements: !99)
!99 = !{!100, !104, !105, !110, !114, !115}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !98, file: !4, line: 220, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_identifier", file: !4, line: 201, size: 64, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !101, file: !4, line: 207, baseType: !56, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !98, file: !4, line: 223, baseType: !87, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !98, file: !4, line: 226, baseType: !106, size: 128)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !4, line: 162, size: 128, elements: !107)
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !106, file: !4, line: 163, baseType: !5, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !106, file: !4, line: 164, baseType: !49, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !98, file: !4, line: 229, baseType: !111, size: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !4, line: 195, size: 32, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !111, file: !4, line: 197, baseType: !5, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !98, file: !4, line: 233, baseType: !5, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !98, file: !4, line: 236, baseType: !5, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !84, file: !79, line: 50, baseType: !49, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !78, file: !79, line: 54, baseType: !92, size: 32, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !78, file: !79, line: 57, baseType: !5, size: 32, offset: 160)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "paramc", scope: !78, file: !79, line: 60, baseType: !96, size: 16, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "fun_like", scope: !78, file: !79, line: 63, baseType: !5, size: 1, offset: 208, flags: DIFlagBitField, extraData: i64 208)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "variadic", scope: !78, file: !79, line: 66, baseType: !5, size: 1, offset: 209, flags: DIFlagBitField, extraData: i64 208)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "syshdr", scope: !78, file: !79, line: 69, baseType: !5, size: 1, offset: 210, flags: DIFlagBitField, extraData: i64 208)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !78, file: !79, line: 72, baseType: !5, size: 1, offset: 211, flags: DIFlagBitField, extraData: i64 208)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !78, file: !79, line: 75, baseType: !5, size: 1, offset: 212, flags: DIFlagBitField, extraData: i64 208)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "extra_tokens", scope: !78, file: !79, line: 80, baseType: !5, size: 1, offset: 213, flags: DIFlagBitField, extraData: i64 208)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "answers", scope: !73, file: !4, line: 637, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !79, line: 28, size: 320, elements: !129)
!129 = !{!130, !131, !132}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !79, line: 29, baseType: !127, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !128, file: !79, line: 30, baseType: !5, size: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !128, file: !79, line: 31, baseType: !133, size: 192, offset: 128)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 192, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 1)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !73, file: !4, line: 639, baseType: !3, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !73, file: !4, line: 641, baseType: !96, size: 16)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "ht_cb", file: !62, line: 89, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !143, !499, !626}
!142 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !145, line: 322, size: 10432, elements: !146)
!145 = !DIFile(filename: "./internal.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!146 = !{!147, !225, !226, !243, !273, !274, !285, !286, !287, !317, !319, !323, !324, !325, !326, !327, !328, !329, !330, !331, !334, !335, !338, !339, !371, !372, !373, !376, !377, !378, !379, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !405, !406, !407, !410, !492, !517, !520, !521, !584, !591, !592, !599, !600, !601, !602, !605, !606, !619}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !144, file: !145, line: 325, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_buffer", file: !4, line: 32, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_buffer", file: !145, line: 249, size: 1536, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !164, !165, !166, !167, !169, !172, !173, !176, !177, !178, !179, !180, !181, !210}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !150, file: !145, line: 251, baseType: !49, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "line_base", scope: !150, file: !145, line: 252, baseType: !49, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !150, file: !145, line: 253, baseType: !49, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !150, file: !145, line: 255, baseType: !49, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !150, file: !145, line: 256, baseType: !49, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !150, file: !145, line: 258, baseType: !158, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_line_note", file: !145, line: 235, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_line_note", file: !145, line: 236, size: 128, elements: !161)
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !160, file: !145, line: 239, baseType: !49, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !160, file: !145, line: 245, baseType: !5, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "cur_note", scope: !150, file: !145, line: 259, baseType: !5, size: 32, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "notes_used", scope: !150, file: !145, line: 260, baseType: !5, size: 32, offset: 416)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "notes_cap", scope: !150, file: !145, line: 261, baseType: !5, size: 32, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !150, file: !145, line: 263, baseType: !168, size: 64, offset: 512)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !150, file: !145, line: 267, baseType: !170, size: 64, offset: 576)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_file", file: !4, line: 42, flags: DIFlagFwdDecl)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !150, file: !145, line: 271, baseType: !49, size: 64, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "if_stack", scope: !150, file: !145, line: 275, baseType: !174, size: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DICompositeType(tag: DW_TAG_structure_type, name: "if_stack", file: !145, line: 275, flags: DIFlagFwdDecl)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "need_line", scope: !150, file: !145, line: 278, baseType: !51, size: 8, offset: 768)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "warned_cplusplus_comments", scope: !150, file: !145, line: 284, baseType: !5, size: 1, offset: 776, flags: DIFlagBitField, extraData: i64 776)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "from_stage3", scope: !150, file: !145, line: 289, baseType: !5, size: 1, offset: 777, flags: DIFlagBitField, extraData: i64 776)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "return_at_eof", scope: !150, file: !145, line: 294, baseType: !5, size: 1, offset: 778, flags: DIFlagBitField, extraData: i64 776)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !150, file: !145, line: 298, baseType: !51, size: 8, offset: 784)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !150, file: !145, line: 302, baseType: !182, size: 512, offset: 832)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !4, line: 523, size: 512, elements: !183)
!183 = !{!184, !186, !187, !188, !189, !190, !191, !195, !201, !207}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !4, line: 526, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !4, line: 529, baseType: !52, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !182, file: !4, line: 530, baseType: !5, size: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !182, file: !4, line: 534, baseType: !51, size: 8, offset: 160)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !182, file: !4, line: 537, baseType: !51, size: 8, offset: 168)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !182, file: !4, line: 541, baseType: !52, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !182, file: !4, line: 545, baseType: !192, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !182, file: !4, line: 551, baseType: !196, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!52, !193, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !4, line: 39, baseType: !182)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !182, file: !4, line: 555, baseType: !202, size: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !203, line: 47, baseType: !204)
!203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !205, line: 148, baseType: !206)
!205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!206 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !182, file: !4, line: 556, baseType: !208, size: 64, offset: 448)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !203, line: 59, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !205, line: 145, baseType: !206)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "input_cset_desc", scope: !150, file: !145, line: 306, baseType: !211, size: 192, offset: 1344)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cset_converter", file: !145, line: 47, size: 192, elements: !212)
!212 = !{!213, !223, !224}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !211, file: !145, line: 49, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "convert_f", file: !145, line: 45, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!51, !218, !49, !220, !221}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !219, line: 29, baseType: !41)
!219 = !DIFile(filename: "/usr/include/iconv.h", directory: "")
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 46, baseType: !206)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_strbuf", file: !145, line: 43, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !211, file: !145, line: 50, baseType: !218, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !211, file: !145, line: 51, baseType: !142, size: 32, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "overlaid_buffer", scope: !144, file: !145, line: 328, baseType: !148, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !144, file: !145, line: 331, baseType: !227, size: 160, offset: 128)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lexer_state", file: !145, line: 177, size: 160, elements: !228)
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "in_directive", scope: !227, file: !145, line: 180, baseType: !51, size: 8)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "directive_wants_padding", scope: !227, file: !145, line: 185, baseType: !51, size: 8, offset: 8)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "skipping", scope: !227, file: !145, line: 188, baseType: !51, size: 8, offset: 16)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "angled_headers", scope: !227, file: !145, line: 191, baseType: !51, size: 8, offset: 24)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "in_expression", scope: !227, file: !145, line: 194, baseType: !51, size: 8, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "save_comments", scope: !227, file: !145, line: 198, baseType: !51, size: 8, offset: 40)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "va_args_ok", scope: !227, file: !145, line: 201, baseType: !51, size: 8, offset: 48)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned_ok", scope: !227, file: !145, line: 204, baseType: !51, size: 8, offset: 56)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_expansion", scope: !227, file: !145, line: 207, baseType: !51, size: 8, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "parsing_args", scope: !227, file: !145, line: 210, baseType: !51, size: 8, offset: 72)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "discarding_output", scope: !227, file: !145, line: 214, baseType: !51, size: 8, offset: 80)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "skip_eval", scope: !227, file: !145, line: 217, baseType: !5, size: 32, offset: 96)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "in_deferred_pragma", scope: !227, file: !145, line: 220, baseType: !51, size: 8, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pragma_allow_expansion", scope: !227, file: !145, line: 223, baseType: !51, size: 8, offset: 136)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "line_table", scope: !144, file: !145, line: 334, baseType: !244, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !93, line: 74, size: 448, elements: !246)
!246 = !{!247, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !245, file: !93, line: 75, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !93, line: 61, size: 192, elements: !250)
!250 = !{!251, !252, !254, !255, !256, !257, !258}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !249, file: !93, line: 62, baseType: !193, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !249, file: !93, line: 63, baseType: !253, size: 32, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !93, line: 39, baseType: !5)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !249, file: !93, line: 64, baseType: !92, size: 32, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !249, file: !93, line: 65, baseType: !142, size: 32, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !249, file: !93, line: 66, baseType: !5, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !249, file: !93, line: 68, baseType: !51, size: 8, offset: 168)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !249, file: !93, line: 70, baseType: !5, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !245, file: !93, line: 76, baseType: !5, size: 32, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !245, file: !93, line: 77, baseType: !5, size: 32, offset: 96)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !245, file: !93, line: 79, baseType: !5, size: 32, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !245, file: !93, line: 84, baseType: !142, size: 32, offset: 160)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !245, file: !93, line: 87, baseType: !5, size: 32, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !245, file: !93, line: 90, baseType: !51, size: 8, offset: 224)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !245, file: !93, line: 93, baseType: !92, size: 32, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !245, file: !93, line: 96, baseType: !92, size: 32, offset: 288)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !245, file: !93, line: 100, baseType: !5, size: 32, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !245, file: !93, line: 104, baseType: !269, size: 64, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !93, line: 47, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!41, !41, !220}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "directive_line", scope: !144, file: !145, line: 337, baseType: !92, size: 32, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "a_buff", scope: !144, file: !145, line: 340, baseType: !275, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_buff", file: !145, line: 99, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_buff", file: !145, line: 100, size: 256, elements: !278)
!278 = !{!279, !281, !283, !284}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !145, line: 102, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !277, file: !145, line: 103, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !277, file: !145, line: 103, baseType: !282, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !277, file: !145, line: 103, baseType: !282, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "u_buff", scope: !144, file: !145, line: 341, baseType: !275, size: 64, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffs", scope: !144, file: !145, line: 342, baseType: !275, size: 64, offset: 576)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "base_context", scope: !144, file: !145, line: 345, baseType: !288, size: 448, offset: 640)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_context", file: !145, line: 142, size: 448, elements: !289)
!289 = !{!290, !293, !294, !314, !315, !316}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !145, line: 145, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_context", file: !145, line: 141, baseType: !288)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !288, file: !145, line: 145, baseType: !291, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !288, file: !145, line: 164, baseType: !295, size: 128, offset: 128)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !288, file: !145, line: 147, size: 128, elements: !296)
!296 = !{!297, !309}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "iso", scope: !295, file: !145, line: 156, baseType: !298, size: 128)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !295, file: !145, line: 152, size: 128, elements: !299)
!299 = !{!300, !308}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !298, file: !145, line: 154, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "utoken", file: !145, line: 121, size: 64, elements: !302)
!302 = !{!303, !306}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !301, file: !145, line: 123, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ptoken", scope: !301, file: !145, line: 124, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !298, file: !145, line: 155, baseType: !301, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "trad", scope: !295, file: !145, line: 163, baseType: !310, size: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !295, file: !145, line: 159, size: 128, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !310, file: !145, line: 161, baseType: !49, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !310, file: !145, line: 162, baseType: !49, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !288, file: !145, line: 168, baseType: !275, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !288, file: !145, line: 171, baseType: !56, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "direct_p", scope: !288, file: !145, line: 174, baseType: !51, size: 8, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !144, file: !145, line: 346, baseType: !318, size: 64, offset: 1088)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !144, file: !145, line: 349, baseType: !320, size: 64, offset: 1152)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = !DICompositeType(tag: DW_TAG_structure_type, name: "directive", file: !145, line: 40, flags: DIFlagFwdDecl)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "directive_result", scope: !144, file: !145, line: 352, baseType: !88, size: 192, offset: 1216)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "invocation_location", scope: !144, file: !145, line: 356, baseType: !92, size: 32, offset: 1408)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "set_invocation_location", scope: !144, file: !145, line: 360, baseType: !51, size: 8, offset: 1440)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "quote_include", scope: !144, file: !145, line: 363, baseType: !185, size: 64, offset: 1472)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "bracket_include", scope: !144, file: !145, line: 364, baseType: !185, size: 64, offset: 1536)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "no_search_path", scope: !144, file: !145, line: 365, baseType: !182, size: 512, offset: 1600)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "all_files", scope: !144, file: !145, line: 368, baseType: !170, size: 64, offset: 2112)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "main_file", scope: !144, file: !145, line: 370, baseType: !170, size: 64, offset: 2176)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash", scope: !144, file: !145, line: 373, baseType: !332, size: 64, offset: 2240)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !145, line: 373, flags: DIFlagFwdDecl)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash", scope: !144, file: !145, line: 374, baseType: !332, size: 64, offset: 2304)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash_entries", scope: !144, file: !145, line: 375, baseType: !336, size: 64, offset: 2368)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_hash_entry_pool", file: !145, line: 375, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_hash", scope: !144, file: !145, line: 378, baseType: !332, size: 64, offset: 2432)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_ob", scope: !144, file: !145, line: 379, baseType: !340, size: 704, offset: 2496)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !341, line: 164, size: 704, elements: !342)
!341 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!342 = !{!343, !344, !354, !355, !356, !357, !358, !359, !363, !367, !368, !369, !370}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !340, file: !341, line: 166, baseType: !45, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !340, file: !341, line: 167, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !341, line: 157, size: 192, elements: !347)
!347 = !{!348, !349, !350}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !346, file: !341, line: 159, baseType: !52, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !346, file: !341, line: 160, baseType: !345, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !346, file: !341, line: 161, baseType: !351, size: 32, offset: 128)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 32, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 4)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !340, file: !341, line: 168, baseType: !52, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !340, file: !341, line: 169, baseType: !52, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !340, file: !341, line: 170, baseType: !52, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !340, file: !341, line: 171, baseType: !45, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !340, file: !341, line: 172, baseType: !142, size: 32, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !340, file: !341, line: 176, baseType: !360, size: 64, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!345, !41, !45}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !340, file: !341, line: 177, baseType: !364, size: 64, offset: 512)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !41, !345}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !340, file: !341, line: 178, baseType: !41, size: 64, offset: 576)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !340, file: !341, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !340, file: !341, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !340, file: !341, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "quote_ignores_source_dir", scope: !144, file: !145, line: 383, baseType: !51, size: 8, offset: 3200)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "seen_once_only", scope: !144, file: !145, line: 387, baseType: !51, size: 8, offset: 3208)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mi_cmacro", scope: !144, file: !145, line: 390, baseType: !374, size: 64, offset: 3264)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mi_ind_cmacro", scope: !144, file: !145, line: 391, baseType: !374, size: 64, offset: 3328)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mi_valid", scope: !144, file: !145, line: 392, baseType: !51, size: 8, offset: 3392)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "cur_token", scope: !144, file: !145, line: 395, baseType: !87, size: 64, offset: 3456)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "base_run", scope: !144, file: !145, line: 396, baseType: !380, size: 256, offset: 3520)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "tokenrun", file: !145, line: 128, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenrun", file: !145, line: 129, size: 256, elements: !382)
!382 = !{!383, !385, !386, !387}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !145, line: 131, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !381, file: !145, line: 131, baseType: !384, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !381, file: !145, line: 132, baseType: !87, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !381, file: !145, line: 132, baseType: !87, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "cur_run", scope: !144, file: !145, line: 396, baseType: !384, size: 64, offset: 3776)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lookaheads", scope: !144, file: !145, line: 397, baseType: !5, size: 32, offset: 3840)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "keep_tokens", scope: !144, file: !145, line: 400, baseType: !5, size: 32, offset: 3872)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer", scope: !144, file: !145, line: 403, baseType: !282, size: 64, offset: 3904)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer_len", scope: !144, file: !145, line: 404, baseType: !5, size: 32, offset: 3968)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_cset_desc", scope: !144, file: !145, line: 408, baseType: !211, size: 192, offset: 4032)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_cset_desc", scope: !144, file: !145, line: 412, baseType: !211, size: 192, offset: 4224)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "char16_cset_desc", scope: !144, file: !145, line: 416, baseType: !211, size: 192, offset: 4416)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "char32_cset_desc", scope: !144, file: !145, line: 420, baseType: !211, size: 192, offset: 4608)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "wide_cset_desc", scope: !144, file: !145, line: 424, baseType: !211, size: 192, offset: 4800)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !144, file: !145, line: 427, baseType: !49, size: 64, offset: 4992)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !144, file: !145, line: 428, baseType: !49, size: 64, offset: 5056)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_paste", scope: !144, file: !145, line: 431, baseType: !88, size: 192, offset: 5120)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !144, file: !145, line: 432, baseType: !88, size: 192, offset: 5312)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !144, file: !145, line: 435, baseType: !403, size: 64, offset: 5504)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !4, line: 685, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "hash_ob", scope: !144, file: !145, line: 439, baseType: !340, size: 704, offset: 5568)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_ob", scope: !144, file: !145, line: 443, baseType: !340, size: 704, offset: 6272)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pragmas", scope: !144, file: !145, line: 447, baseType: !408, size: 64, offset: 6976)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "pragma_entry", file: !145, line: 447, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !144, file: !145, line: 450, baseType: !411, size: 1088, offset: 7040)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !4, line: 472, size: 1088, elements: !412)
!412 = !{!413, !419, !425, !429, !433, !437, !438, !445, !449, !453, !457, !463, !467, !482, !483, !484, !488}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !411, file: !4, line: 475, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !417, !304, !142}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !4, line: 31, baseType: !144)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !411, file: !4, line: 481, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !417, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !411, file: !4, line: 483, baseType: !426, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !417, !193}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !411, file: !4, line: 484, baseType: !430, size: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !417, !5, !49, !193, !142, !307}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !411, file: !4, line: 486, baseType: !434, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !417, !5, !56}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !411, file: !4, line: 487, baseType: !434, size: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !411, file: !4, line: 488, baseType: !439, size: 64, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !417, !5, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !4, line: 35, baseType: !106)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !411, file: !4, line: 489, baseType: !446, size: 64, offset: 448)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !417, !5}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !411, file: !4, line: 490, baseType: !450, size: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!142, !417, !193, !142}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !411, file: !4, line: 491, baseType: !454, size: 64, offset: 576)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !417, !193, !142, !193}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !411, file: !4, line: 492, baseType: !458, size: 64, offset: 640)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !4, line: 469, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!193, !417, !193, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !411, file: !4, line: 496, baseType: !464, size: 64, offset: 704)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!56, !417, !304}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !411, file: !4, line: 500, baseType: !468, size: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!51, !417, !142, !92, !5, !193, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !473, line: 14, baseType: !474)
!473 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 216, baseType: !475)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 192, elements: !134)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 216, size: 192, elements: !477)
!477 = !{!478, !479, !480, !481}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !476, file: !1, line: 216, baseType: !5, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !476, file: !1, line: 216, baseType: !5, size: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !476, file: !1, line: 216, baseType: !41, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !476, file: !1, line: 216, baseType: !41, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !411, file: !4, line: 506, baseType: !434, size: 64, offset: 832)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !411, file: !4, line: 507, baseType: !434, size: 64, offset: 896)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !411, file: !4, line: 510, baseType: !485, size: 64, offset: 960)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !417}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !411, file: !4, line: 513, baseType: !489, size: 64, offset: 1024)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !417, !92, !56}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !144, file: !145, line: 453, baseType: !493, size: 64, offset: 8128)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht", file: !62, line: 46, size: 1152, elements: !495)
!495 = !{!496, !497, !501, !507, !511, !512, !513, !514, !515, !516}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !494, file: !62, line: 49, baseType: !340, size: 704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !494, file: !62, line: 51, baseType: !498, size: 64, offset: 704)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashnode", file: !62, line: 41, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_node", scope: !494, file: !62, line: 53, baseType: !502, size: 64, offset: 768)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!499, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !62, line: 40, baseType: !494)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_subobject", scope: !494, file: !62, line: 56, baseType: !508, size: 64, offset: 832)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!41, !220}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !494, file: !62, line: 58, baseType: !5, size: 32, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !494, file: !62, line: 59, baseType: !5, size: 32, offset: 928)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !494, file: !62, line: 62, baseType: !143, size: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !494, file: !62, line: 65, baseType: !5, size: 32, offset: 1024)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !494, file: !62, line: 66, baseType: !5, size: 32, offset: 1056)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !494, file: !62, line: 69, baseType: !51, size: 8, offset: 1088)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "op_stack", scope: !144, file: !145, line: 456, baseType: !518, size: 64, offset: 8192)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !145, line: 42, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "op_limit", scope: !144, file: !145, line: 456, baseType: !518, size: 64, offset: 8256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !144, file: !145, line: 459, baseType: !522, size: 1024, offset: 8320)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !4, line: 279, size: 1024, elements: !523)
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !575, !576, !577, !578, !579, !580, !581, !582, !583}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !522, file: !4, line: 282, baseType: !5, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !522, file: !4, line: 285, baseType: !17, size: 32, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !522, file: !4, line: 288, baseType: !51, size: 8, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !522, file: !4, line: 291, baseType: !51, size: 8, offset: 72)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !522, file: !4, line: 296, baseType: !51, size: 8, offset: 80)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !522, file: !4, line: 299, baseType: !51, size: 8, offset: 88)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !522, file: !4, line: 303, baseType: !51, size: 8, offset: 96)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !522, file: !4, line: 306, baseType: !51, size: 8, offset: 104)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !522, file: !4, line: 309, baseType: !51, size: 8, offset: 112)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !522, file: !4, line: 312, baseType: !51, size: 8, offset: 120)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !522, file: !4, line: 315, baseType: !51, size: 8, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !522, file: !4, line: 318, baseType: !51, size: 8, offset: 136)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !522, file: !4, line: 321, baseType: !51, size: 8, offset: 144)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !522, file: !4, line: 324, baseType: !51, size: 8, offset: 152)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !522, file: !4, line: 328, baseType: !51, size: 8, offset: 160)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !522, file: !4, line: 331, baseType: !51, size: 8, offset: 168)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !522, file: !4, line: 334, baseType: !51, size: 8, offset: 176)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !522, file: !4, line: 338, baseType: !51, size: 8, offset: 184)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !522, file: !4, line: 341, baseType: !51, size: 8, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !522, file: !4, line: 344, baseType: !51, size: 8, offset: 200)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !522, file: !4, line: 348, baseType: !51, size: 8, offset: 208)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !522, file: !4, line: 352, baseType: !51, size: 8, offset: 216)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !522, file: !4, line: 356, baseType: !51, size: 8, offset: 224)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !522, file: !4, line: 360, baseType: !51, size: 8, offset: 232)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !522, file: !4, line: 363, baseType: !51, size: 8, offset: 240)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !522, file: !4, line: 366, baseType: !51, size: 8, offset: 248)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !522, file: !4, line: 370, baseType: !51, size: 8, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !522, file: !4, line: 373, baseType: !51, size: 8, offset: 264)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !522, file: !4, line: 376, baseType: !51, size: 8, offset: 272)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !522, file: !4, line: 379, baseType: !51, size: 8, offset: 280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !522, file: !4, line: 382, baseType: !51, size: 8, offset: 288)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !522, file: !4, line: 385, baseType: !51, size: 8, offset: 296)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !522, file: !4, line: 389, baseType: !51, size: 8, offset: 304)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !522, file: !4, line: 392, baseType: !51, size: 8, offset: 312)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !522, file: !4, line: 395, baseType: !51, size: 8, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !522, file: !4, line: 398, baseType: !51, size: 8, offset: 328)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !522, file: !4, line: 401, baseType: !51, size: 8, offset: 336)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !522, file: !4, line: 404, baseType: !193, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !522, file: !4, line: 407, baseType: !193, size: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !522, file: !4, line: 410, baseType: !193, size: 64, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !522, file: !4, line: 414, baseType: !29, size: 32, offset: 576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !522, file: !4, line: 417, baseType: !51, size: 8, offset: 608)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !522, file: !4, line: 420, baseType: !51, size: 8, offset: 616)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !522, file: !4, line: 441, baseType: !568, size: 64, offset: 640)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !522, file: !4, line: 423, size: 64, elements: !569)
!569 = !{!570, !571, !572, !573, !574}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !568, file: !4, line: 426, baseType: !35, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !568, file: !4, line: 429, baseType: !51, size: 8, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !568, file: !4, line: 433, baseType: !51, size: 8, offset: 40)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !568, file: !4, line: 436, baseType: !51, size: 8, offset: 48)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !568, file: !4, line: 440, baseType: !51, size: 8, offset: 56)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !522, file: !4, line: 447, baseType: !220, size: 64, offset: 704)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !522, file: !4, line: 447, baseType: !220, size: 64, offset: 768)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !522, file: !4, line: 447, baseType: !220, size: 64, offset: 832)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !522, file: !4, line: 447, baseType: !220, size: 64, offset: 896)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !522, file: !4, line: 450, baseType: !51, size: 8, offset: 960)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !522, file: !4, line: 450, baseType: !51, size: 8, offset: 968)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !522, file: !4, line: 454, baseType: !51, size: 8, offset: 976)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !522, file: !4, line: 457, baseType: !51, size: 8, offset: 984)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !522, file: !4, line: 460, baseType: !51, size: 8, offset: 992)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "spec_nodes", scope: !144, file: !145, line: 463, baseType: !585, size: 256, offset: 9344)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spec_nodes", file: !145, line: 227, size: 256, elements: !586)
!586 = !{!587, !588, !589, !590}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "n_defined", scope: !585, file: !145, line: 229, baseType: !56, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "n_true", scope: !585, file: !145, line: 230, baseType: !56, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "n_false", scope: !585, file: !145, line: 231, baseType: !56, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "n__VA_ARGS__", scope: !585, file: !145, line: 232, baseType: !56, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "our_hashtable", scope: !144, file: !145, line: 466, baseType: !51, size: 8, offset: 9600)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !144, file: !145, line: 475, baseType: !593, size: 256, offset: 9664)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !145, line: 469, size: 256, elements: !594)
!594 = !{!595, !596, !597, !598}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !593, file: !145, line: 471, baseType: !282, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !593, file: !145, line: 472, baseType: !282, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !593, file: !145, line: 473, baseType: !282, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !593, file: !145, line: 474, baseType: !92, size: 32, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cur", scope: !144, file: !145, line: 478, baseType: !49, size: 64, offset: 9920)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "saved_rlimit", scope: !144, file: !145, line: 478, baseType: !49, size: 64, offset: 9984)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "saved_line_base", scope: !144, file: !145, line: 478, baseType: !49, size: 64, offset: 10048)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "savedstate", scope: !144, file: !145, line: 482, baseType: !603, size: 64, offset: 10112)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_savedstate", file: !145, line: 482, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !144, file: !145, line: 485, baseType: !5, size: 32, offset: 10176)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "comments", scope: !144, file: !145, line: 488, baseType: !607, size: 128, offset: 10240)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment_table", file: !4, line: 901, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 891, size: 128, elements: !609)
!609 = !{!610, !617, !618}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !608, file: !4, line: 894, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment", file: !4, line: 887, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 880, size: 128, elements: !614)
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !613, file: !4, line: 883, baseType: !52, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sloc", scope: !613, file: !4, line: 886, baseType: !92, size: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !608, file: !4, line: 897, baseType: !142, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !608, file: !4, line: 900, baseType: !142, size: 32, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "pushed_macros", scope: !144, file: !145, line: 491, baseType: !620, size: 64, offset: 10368)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_pragma_macro", file: !145, line: 310, size: 192, elements: !622)
!622 = !{!623, !624, !625}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !621, file: !145, line: 312, baseType: !620, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !621, file: !145, line: 314, baseType: !52, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !621, file: !145, line: 316, baseType: !76, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "ht_identifier", file: !62, line: 30, baseType: !61)
!630 = !{i32 2, !"Dwarf Version", i32 4}
!631 = !{i32 2, !"Debug Info Version", i32 3}
!632 = !{i32 1, !"wchar_size", i32 4}
!633 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!634 = distinct !DISubprogram(name: "tolower", scope: !635, file: !635, line: 207, type: !636, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !638)
!635 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!636 = !DISubroutineType(types: !637)
!637 = !{!142, !142}
!638 = !{!639}
!639 = !DILocalVariable(name: "__c", arg: 1, scope: !634, file: !635, line: 207, type: !142)
!640 = !DILocation(line: 0, scope: !634)
!641 = !DILocation(line: 209, column: 22, scope: !634)
!642 = !DILocation(line: 209, column: 39, scope: !634)
!643 = !DILocation(line: 209, column: 38, scope: !634)
!644 = !DILocation(line: 209, column: 37, scope: !634)
!645 = !DILocation(line: 209, column: 10, scope: !634)
!646 = !DILocation(line: 209, column: 3, scope: !634)
!647 = distinct !DISubprogram(name: "toupper", scope: !635, file: !635, line: 213, type: !636, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !648)
!648 = !{!649}
!649 = !DILocalVariable(name: "__c", arg: 1, scope: !647, file: !635, line: 213, type: !142)
!650 = !DILocation(line: 0, scope: !647)
!651 = !DILocation(line: 215, column: 22, scope: !647)
!652 = !DILocation(line: 215, column: 39, scope: !647)
!653 = !DILocation(line: 215, column: 38, scope: !647)
!654 = !DILocation(line: 215, column: 37, scope: !647)
!655 = !DILocation(line: 215, column: 10, scope: !647)
!656 = !DILocation(line: 215, column: 3, scope: !647)
!657 = distinct !DISubprogram(name: "_cpp_init_hashtable", scope: !1, file: !1, line: 49, type: !658, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !660)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !417, !505}
!660 = !{!661, !662, !663}
!661 = !DILocalVariable(name: "pfile", arg: 1, scope: !657, file: !1, line: 49, type: !417)
!662 = !DILocalVariable(name: "table", arg: 2, scope: !657, file: !1, line: 49, type: !505)
!663 = !DILocalVariable(name: "s", scope: !657, file: !1, line: 51, type: !664)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!665 = !DILocation(line: 0, scope: !657)
!666 = !DILocation(line: 53, column: 13, scope: !667)
!667 = distinct !DILexicalBlock(scope: !657, file: !1, line: 53, column: 7)
!668 = !DILocation(line: 53, column: 7, scope: !657)
!669 = !DILocation(line: 55, column: 14, scope: !670)
!670 = distinct !DILexicalBlock(scope: !667, file: !1, line: 54, column: 5)
!671 = !DILocation(line: 55, column: 28, scope: !670)
!672 = !DILocation(line: 56, column: 15, scope: !670)
!673 = !DILocation(line: 57, column: 14, scope: !670)
!674 = !DILocation(line: 57, column: 25, scope: !670)
!675 = !DILocation(line: 59, column: 31, scope: !670)
!676 = !DILocation(line: 59, column: 7, scope: !670)
!677 = !DILocation(line: 62, column: 5, scope: !670)
!678 = !DILocation(line: 64, column: 10, scope: !657)
!679 = !DILocation(line: 64, column: 16, scope: !657)
!680 = !DILocation(line: 65, column: 10, scope: !657)
!681 = !DILocation(line: 65, column: 21, scope: !657)
!682 = !DILocation(line: 68, column: 3, scope: !657)
!683 = !DILocation(line: 69, column: 3, scope: !657)
!684 = !DILocation(line: 72, column: 19, scope: !657)
!685 = !DILocation(line: 72, column: 6, scope: !657)
!686 = !DILocation(line: 72, column: 17, scope: !657)
!687 = !DILocation(line: 73, column: 16, scope: !657)
!688 = !DILocation(line: 73, column: 6, scope: !657)
!689 = !DILocation(line: 73, column: 14, scope: !657)
!690 = !DILocation(line: 74, column: 17, scope: !657)
!691 = !DILocation(line: 74, column: 6, scope: !657)
!692 = !DILocation(line: 74, column: 15, scope: !657)
!693 = !DILocation(line: 75, column: 27, scope: !657)
!694 = !DILocation(line: 75, column: 6, scope: !657)
!695 = !DILocation(line: 75, column: 25, scope: !657)
!696 = !DILocation(line: 76, column: 20, scope: !657)
!697 = !DILocation(line: 76, column: 26, scope: !657)
!698 = !DILocation(line: 77, column: 1, scope: !657)
!699 = distinct !DISubprogram(name: "alloc_node", scope: !1, file: !1, line: 37, type: !503, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !700)
!700 = !{!701, !702}
!701 = !DILocalVariable(name: "table", arg: 1, scope: !699, file: !1, line: 37, type: !505)
!702 = !DILocalVariable(name: "node", scope: !699, file: !1, line: 39, type: !56)
!703 = !DILocation(line: 0, scope: !699)
!704 = !DILocation(line: 41, column: 10, scope: !699)
!705 = !DILocation(line: 42, column: 11, scope: !699)
!706 = !DILocation(line: 42, column: 3, scope: !699)
!707 = !DILocation(line: 43, column: 10, scope: !699)
!708 = !DILocation(line: 43, column: 3, scope: !699)
!709 = distinct !DISubprogram(name: "cpp_lookup", scope: !1, file: !1, line: 93, type: !710, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !712)
!710 = !DISubroutineType(types: !711)
!711 = !{!56, !417, !49, !5}
!712 = !{!713, !714, !715}
!713 = !DILocalVariable(name: "pfile", arg: 1, scope: !709, file: !1, line: 93, type: !417)
!714 = !DILocalVariable(name: "str", arg: 2, scope: !709, file: !1, line: 93, type: !49)
!715 = !DILocalVariable(name: "len", arg: 3, scope: !709, file: !1, line: 93, type: !5)
!716 = !DILocation(line: 0, scope: !709)
!717 = !DILocation(line: 96, column: 10, scope: !709)
!718 = !DILocation(line: 96, column: 3, scope: !709)
!719 = distinct !DISubprogram(name: "_cpp_destroy_hashtable", scope: !1, file: !1, line: 81, type: !486, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !720)
!720 = !{!721}
!721 = !DILocalVariable(name: "pfile", arg: 1, scope: !719, file: !1, line: 81, type: !417)
!722 = !DILocation(line: 0, scope: !719)
!723 = !DILocation(line: 83, column: 14, scope: !724)
!724 = distinct !DILexicalBlock(scope: !719, file: !1, line: 83, column: 7)
!725 = !DILocation(line: 83, column: 7, scope: !724)
!726 = !DILocation(line: 83, column: 7, scope: !719)
!727 = !DILocation(line: 85, column: 26, scope: !728)
!728 = distinct !DILexicalBlock(scope: !724, file: !1, line: 84, column: 5)
!729 = !DILocation(line: 85, column: 7, scope: !728)
!730 = !DILocation(line: 86, column: 7, scope: !728)
!731 = !DILocation(line: 88, column: 1, scope: !719)
!732 = distinct !DISubprogram(name: "cpp_defined", scope: !1, file: !1, line: 101, type: !733, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !735)
!733 = !DISubroutineType(types: !734)
!734 = !{!142, !417, !49, !142}
!735 = !{!736, !737, !738, !739}
!736 = !DILocalVariable(name: "pfile", arg: 1, scope: !732, file: !1, line: 101, type: !417)
!737 = !DILocalVariable(name: "str", arg: 2, scope: !732, file: !1, line: 101, type: !49)
!738 = !DILocalVariable(name: "len", arg: 3, scope: !732, file: !1, line: 101, type: !142)
!739 = !DILocalVariable(name: "node", scope: !732, file: !1, line: 103, type: !56)
!740 = !DILocation(line: 0, scope: !732)
!741 = !DILocation(line: 105, column: 10, scope: !732)
!742 = !DILocation(line: 108, column: 10, scope: !732)
!743 = !DILocation(line: 108, column: 15, scope: !732)
!744 = !DILocation(line: 108, column: 24, scope: !732)
!745 = !DILocation(line: 108, column: 29, scope: !732)
!746 = !DILocation(line: 108, column: 3, scope: !732)
!747 = distinct !DISubprogram(name: "cpp_forall_identifiers", scope: !1, file: !1, line: 119, type: !748, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !754)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !417, !750, !41}
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_cb", file: !4, line: 914, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!142, !417, !56, !41}
!754 = !{!755, !756, !757}
!755 = !DILocalVariable(name: "pfile", arg: 1, scope: !747, file: !1, line: 119, type: !417)
!756 = !DILocalVariable(name: "cb", arg: 2, scope: !747, file: !1, line: 119, type: !750)
!757 = !DILocalVariable(name: "v", arg: 3, scope: !747, file: !1, line: 119, type: !41)
!758 = !DILocation(line: 0, scope: !747)
!759 = !DILocation(line: 121, column: 21, scope: !747)
!760 = !DILocation(line: 121, column: 33, scope: !747)
!761 = !DILocation(line: 121, column: 3, scope: !747)
!762 = !DILocation(line: 122, column: 1, scope: !747)
