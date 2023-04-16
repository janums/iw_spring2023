; ModuleID = 'cpp_pch.bc'
source_filename = "cpp_pch.c"
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
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
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
%struct.cpp_savedstate = type { %struct.htab*, i64, i64, %struct.cpp_hashnode**, i8* }
%struct.cpp_comment_table = type { %struct.cpp_comment*, i32, i32 }
%struct.cpp_comment = type { i8*, i32 }
%struct.def_pragma_macro = type { %struct.def_pragma_macro*, i8*, %struct.cpp_macro* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.macrodef_struct = type { i32, i16, i16 }
%struct.ht_node_list = type { %struct.cpp_hashnode**, i64, i64 }
%struct.save_macro_data = type { i8**, i64, i64, i8** }

@.str = private unnamed_addr constant [33 x i8] c"while writing precompiled header\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: not used because `%.*s' is poisoned\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"__GCC_HAVE_DWARF2_CFI_ASM\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%s: not used because `%.*s' not defined\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"%s: not used because `%.*s' defined as `%s' not `%.*s'\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%s: not used because `%s' is defined\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%s: not used because `__COUNTER__' is invalid\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"while reading precompiled header\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"defined\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"__VA_ARGS__\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"( \0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !278 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !283, metadata !DIExpression()), !dbg !284
  %__c.off = add i32 %__c, 128, !dbg !285
  %0 = icmp ult i32 %__c.off, 384, !dbg !285
  br i1 %0, label %cond.true, label %cond.end, !dbg !285

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #8, !dbg !286
  %1 = load i32*, i32** %call, align 8, !dbg !287
  %idxprom = sext i32 %__c to i64, !dbg !288
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !288
  %2 = load i32, i32* %arrayidx, align 4, !dbg !288
  br label %cond.end, !dbg !289

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !289
  ret i32 %cond, !dbg !290
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !291 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !293, metadata !DIExpression()), !dbg !294
  %__c.off = add i32 %__c, 128, !dbg !295
  %0 = icmp ult i32 %__c.off, 384, !dbg !295
  br i1 %0, label %cond.true, label %cond.end, !dbg !295

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #8, !dbg !296
  %1 = load i32*, i32** %call, align 8, !dbg !297
  %idxprom = sext i32 %__c to i64, !dbg !298
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !298
  %2 = load i32, i32* %arrayidx, align 4, !dbg !298
  br label %cond.end, !dbg !299

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !299
  ret i32 %cond, !dbg !300
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @cpp_save_state(%struct.cpp_reader* %r, %struct._IO_FILE* %f) local_unnamed_addr #2 !dbg !301 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %r, metadata !771, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !772, metadata !DIExpression()), !dbg !773
  %call = tail call i8* @xmalloc(i64 40) #8, !dbg !774
  %savedstate = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 60, !dbg !775
  %0 = bitcast %struct.cpp_savedstate** %savedstate to i8**, !dbg !776
  store i8* %call, i8** %0, align 8, !dbg !776
  %call1 = tail call %struct.htab* @htab_create(i64 100, i32 (i8*)* nonnull @cpp_string_hash, i32 (i8*, i8*)* nonnull @cpp_string_eq, void (i8*)* null) #8, !dbg !777
  %1 = load %struct.cpp_savedstate*, %struct.cpp_savedstate** %savedstate, align 8, !dbg !778
  %definedhash = getelementptr inbounds %struct.cpp_savedstate, %struct.cpp_savedstate* %1, i64 0, i32 0, !dbg !779
  store %struct.htab* %call1, %struct.htab** %definedhash, align 8, !dbg !780
  %2 = load i8*, i8** %0, align 8, !dbg !781
  tail call void @cpp_forall_identifiers(%struct.cpp_reader* %r, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* nonnull @save_idents, i8* %2) #8, !dbg !782
  %3 = bitcast %struct._IO_FILE* %f to i8*, !dbg !783
  tail call void @cpp_forall_identifiers(%struct.cpp_reader* %r, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* nonnull @write_macdef, i8* %3) #8, !dbg !784
  ret i32 0, !dbg !785
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @cpp_string_hash(i8* %a_p) #2 !dbg !786 {
entry:
  call void @llvm.dbg.value(metadata i8* %a_p, metadata !788, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i8* %a_p, metadata !789, metadata !DIExpression()), !dbg !790
  %text = getelementptr inbounds i8, i8* %a_p, i64 8, !dbg !791
  %0 = bitcast i8* %text to i8**, !dbg !791
  %1 = load i8*, i8** %0, align 8, !dbg !791
  %len = bitcast i8* %a_p to i32*, !dbg !792
  %2 = load i32, i32* %len, align 8, !dbg !792
  %conv = zext i32 %2 to i64, !dbg !793
  %call = tail call fastcc i32 @hashmem(i8* %1, i64 %conv) #9, !dbg !794
  ret i32 %call, !dbg !795
}

; Function Attrs: nounwind uwtable
define internal i32 @cpp_string_eq(i8* %a_p, i8* %b_p) #2 !dbg !796 {
entry:
  call void @llvm.dbg.value(metadata i8* %a_p, metadata !798, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i8* %b_p, metadata !799, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i8* %a_p, metadata !800, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i8* %b_p, metadata !801, metadata !DIExpression()), !dbg !802
  %len = bitcast i8* %a_p to i32*, !dbg !803
  %0 = load i32, i32* %len, align 8, !dbg !803
  %len1 = bitcast i8* %b_p to i32*, !dbg !804
  %1 = load i32, i32* %len1, align 8, !dbg !804
  %cmp = icmp eq i32 %0, %1, !dbg !805
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !806

land.rhs:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %a_p, metadata !800, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i8* %b_p, metadata !801, metadata !DIExpression()), !dbg !802
  %text = getelementptr inbounds i8, i8* %a_p, i64 8, !dbg !807
  %2 = bitcast i8* %text to i8**, !dbg !807
  %3 = load i8*, i8** %2, align 8, !dbg !807
  %text2 = getelementptr inbounds i8, i8* %b_p, i64 8, !dbg !808
  %4 = bitcast i8* %text2 to i8**, !dbg !808
  %5 = load i8*, i8** %4, align 8, !dbg !808
  %conv = zext i32 %0 to i64, !dbg !809
  %call = tail call i32 @memcmp(i8* %3, i8* %5, i64 %conv) #10, !dbg !810
  %cmp4 = icmp eq i32 %call, 0, !dbg !811
  %phitmp = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %6, !dbg !812
}

declare dso_local void @cpp_forall_identifiers(%struct.cpp_reader*, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @save_idents(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %hn, i8* %ss_p) #2 !dbg !813 {
entry:
  %news = alloca %struct.cpp_string, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !817, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %hn, metadata !818, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i8* %ss_p, metadata !819, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i8* %ss_p, metadata !820, metadata !DIExpression()), !dbg !830
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %hn, i64 0, i32 3, !dbg !831
  %bf.load = load i16, i16* %type, align 2, !dbg !831
  %bf.clear = and i16 %bf.load, 63, !dbg !831
  %cmp = icmp eq i16 %bf.clear, 0, !dbg !832
  br i1 %cmp, label %if.end20, label %if.then, !dbg !833

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %ss_p, metadata !820, metadata !DIExpression()), !dbg !830
  %0 = bitcast %struct.cpp_string* %news to i8*, !dbg !834
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11, !dbg !834
  %len = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %hn, i64 0, i32 0, i32 1, !dbg !835
  %1 = load i32, i32* %len, align 8, !dbg !835
  %len1 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %news, i64 0, i32 0, !dbg !836
  store i32 %1, i32* %len1, align 8, !dbg !837
  %2 = bitcast %struct.cpp_hashnode* %hn to i64*, !dbg !838
  %3 = load i64, i64* %2, align 8, !dbg !838
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %news, i64 0, i32 1, !dbg !839
  %4 = bitcast i8** %text to i64*, !dbg !840
  store i64 %3, i64* %4, align 8, !dbg !840
  %definedhash = bitcast i8* %ss_p to %struct.htab**, !dbg !841
  %5 = load %struct.htab*, %struct.htab** %definedhash, align 8, !dbg !841
  %call = call i8** @htab_find_slot(%struct.htab* %5, i8* nonnull %0, i32 1) #8, !dbg !842
  call void @llvm.dbg.value(metadata i8** %call, metadata !825, metadata !DIExpression()), !dbg !843
  %6 = load i8*, i8** %call, align 8, !dbg !844
  %cmp3 = icmp eq i8* %6, null, !dbg !845
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !846

if.then4:                                         ; preds = %if.then
  %call6 = call i8* @xmalloc(i64 16) #8, !dbg !847
  call void @llvm.dbg.value(metadata i8* %call6, metadata !826, metadata !DIExpression()), !dbg !848
  store i8* %call6, i8** %call, align 8, !dbg !849
  %7 = load i32, i32* %len, align 8, !dbg !850
  %len9 = bitcast i8* %call6 to i32*, !dbg !851
  store i32 %7, i32* %len9, align 8, !dbg !852
  %8 = load i32, i32* %len, align 8, !dbg !853
  %conv = zext i32 %8 to i64, !dbg !853
  %call12 = call i8* @xmalloc(i64 %conv) #8, !dbg !853
  call void @llvm.dbg.value(metadata i8* %call12, metadata !829, metadata !DIExpression()), !dbg !848
  %text13 = getelementptr inbounds i8, i8* %call6, i64 8, !dbg !854
  %9 = bitcast i8* %text13 to i8**, !dbg !854
  store i8* %call12, i8** %9, align 8, !dbg !855
  %str15 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %hn, i64 0, i32 0, i32 0, !dbg !856
  %10 = load i8*, i8** %str15, align 8, !dbg !856
  %11 = load i32, i32* %len, align 8, !dbg !857
  %conv18 = zext i32 %11 to i64, !dbg !857
  %call19 = call i8* @memcpy(i8* %call12, i8* %10, i64 %conv18) #8, !dbg !858
  br label %if.end, !dbg !859

if.end:                                           ; preds = %if.then4, %if.then
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11, !dbg !860
  br label %if.end20, !dbg !861

if.end20:                                         ; preds = %entry, %if.end
  ret i32 1, !dbg !862
}

; Function Attrs: nounwind uwtable
define internal i32 @write_macdef(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %hn, i8* %file_p) #2 !dbg !863 {
entry:
  %s = alloca %struct.macrodef_struct, align 4
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !865, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %hn, metadata !866, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.value(metadata i8* %file_p, metadata !867, metadata !DIExpression()), !dbg !878
  %0 = bitcast i8* %file_p to %struct._IO_FILE*, !dbg !879
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !868, metadata !DIExpression()), !dbg !878
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %hn, i64 0, i32 3, !dbg !880
  %bf.load = load i16, i16* %type, align 2, !dbg !880
  %bf.clear = and i16 %bf.load, 63, !dbg !880
  %bf.cast = zext i16 %bf.clear to i32, !dbg !880
  switch i32 %bf.cast, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %cleanup47
  ], !dbg !881

sw.bb:                                            ; preds = %entry
  %1 = trunc i16 %bf.load to i8, !dbg !882
  %tobool = icmp slt i8 %1, 0, !dbg !882
  br i1 %tobool, label %sw.bb3, label %cleanup47, !dbg !884

sw.bb3:                                           ; preds = %sw.bb, %entry
  %2 = and i16 %bf.load, 256, !dbg !885
  %tobool9 = icmp eq i16 %2, 0, !dbg !885
  br i1 %tobool9, label %if.end11, label %cleanup47, !dbg !887

if.end11:                                         ; preds = %sw.bb3
  %3 = bitcast %struct.macrodef_struct* %s to i8*, !dbg !888
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !888
  %len = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %hn, i64 0, i32 0, i32 1, !dbg !889
  %4 = load i32, i32* %len, align 8, !dbg !889
  %conv = trunc i32 %4 to i16, !dbg !889
  %name_length = getelementptr inbounds %struct.macrodef_struct, %struct.macrodef_struct* %s, i64 0, i32 1, !dbg !890
  store i16 %conv, i16* %name_length, align 4, !dbg !891
  %bf.lshr14 = lshr i16 %bf.load, 6, !dbg !892
  %5 = and i16 %bf.lshr14, 2, !dbg !893
  %flags18 = getelementptr inbounds %struct.macrodef_struct, %struct.macrodef_struct* %s, i64 0, i32 2, !dbg !894
  store i16 %5, i16* %flags18, align 2, !dbg !895
  %cmp = icmp eq i16 %bf.clear, 1, !dbg !896
  br i1 %cmp, label %if.then24, label %if.else, !dbg !898

if.then24:                                        ; preds = %if.end11
  %call = tail call i8* @cpp_macro_definition(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %hn) #8, !dbg !899
  call void @llvm.dbg.value(metadata i8* %call, metadata !877, metadata !DIExpression()), !dbg !901
  %call25 = tail call fastcc i64 @ustrlen(i8* %call) #9, !dbg !902
  %conv26 = trunc i64 %call25 to i32, !dbg !902
  %definition_length = getelementptr inbounds %struct.macrodef_struct, %struct.macrodef_struct* %s, i64 0, i32 0, !dbg !903
  store i32 %conv26, i32* %definition_length, align 4, !dbg !904
  br label %if.end31, !dbg !905

if.else:                                          ; preds = %if.end11
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %hn, i64 0, i32 0, i32 0, !dbg !906
  %6 = load i8*, i8** %str, align 8, !dbg !906
  call void @llvm.dbg.value(metadata i8* %6, metadata !877, metadata !DIExpression()), !dbg !901
  %conv29 = and i32 %4, 65535, !dbg !908
  %definition_length30 = getelementptr inbounds %struct.macrodef_struct, %struct.macrodef_struct* %s, i64 0, i32 0, !dbg !909
  store i32 %conv29, i32* %definition_length30, align 4, !dbg !910
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then24
  %defn.0 = phi i8* [ %call, %if.then24 ], [ %6, %if.else ], !dbg !911
  call void @llvm.dbg.value(metadata i8* %defn.0, metadata !877, metadata !DIExpression()), !dbg !901
  %call32 = call i64 @fwrite(i8* nonnull %3, i64 8, i64 1, %struct._IO_FILE* %0) #8, !dbg !912
  %cmp33 = icmp eq i64 %call32, 1, !dbg !914
  br i1 %cmp33, label %lor.lhs.false, label %if.then42, !dbg !915

lor.lhs.false:                                    ; preds = %if.end31
  %definition_length35 = getelementptr inbounds %struct.macrodef_struct, %struct.macrodef_struct* %s, i64 0, i32 0, !dbg !916
  %7 = load i32, i32* %definition_length35, align 4, !dbg !916
  %conv36 = zext i32 %7 to i64, !dbg !917
  %call37 = call i64 @fwrite(i8* %defn.0, i64 1, i64 %conv36, %struct._IO_FILE* %0) #8, !dbg !918
  %8 = load i32, i32* %definition_length35, align 4, !dbg !919
  %conv39 = zext i32 %8 to i64, !dbg !920
  %cmp40 = icmp eq i64 %call37, %conv39, !dbg !921
  br i1 %cmp40, label %cleanup, label %if.then42, !dbg !922

if.then42:                                        ; preds = %lor.lhs.false, %if.end31
  %call43 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #8, !dbg !923
  br label %cleanup, !dbg !925

cleanup:                                          ; preds = %lor.lhs.false, %if.then42
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.then42 ], [ 1, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !926
  ret i32 %cleanup.dest.slot.0

sw.default:                                       ; preds = %entry
  tail call void @abort() #12, !dbg !927
  unreachable, !dbg !927

cleanup47:                                        ; preds = %sw.bb3, %entry, %sw.bb
  ret i32 1, !dbg !928
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cpp_write_pch_deps(%struct.cpp_reader* %r, %struct._IO_FILE* %f) local_unnamed_addr #2 !dbg !929 {
entry:
  %z = alloca %struct.macrodef_struct, align 4
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %r, metadata !931, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !932, metadata !DIExpression()), !dbg !941
  %0 = bitcast %struct.macrodef_struct* %z to i8*, !dbg !942
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11, !dbg !942
  %savedstate = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 60, !dbg !943
  %1 = load %struct.cpp_savedstate*, %struct.cpp_savedstate** %savedstate, align 8, !dbg !943
  call void @llvm.dbg.value(metadata %struct.cpp_savedstate* %1, metadata !934, metadata !DIExpression()), !dbg !941
  %hashsize = getelementptr inbounds %struct.cpp_savedstate, %struct.cpp_savedstate* %1, i64 0, i32 1, !dbg !944
  store i64 0, i64* %hashsize, align 8, !dbg !945
  %n_defs = getelementptr inbounds %struct.cpp_savedstate, %struct.cpp_savedstate* %1, i64 0, i32 2, !dbg !946
  store i64 0, i64* %n_defs, align 8, !dbg !947
  %2 = bitcast %struct.cpp_savedstate* %1 to i8*, !dbg !948
  tail call void @cpp_forall_identifiers(%struct.cpp_reader* %r, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* nonnull @count_defs, i8* %2) #8, !dbg !949
  %3 = load i64, i64* %n_defs, align 8, !dbg !950
  %mul = shl i64 %3, 3, !dbg !950
  %call = tail call i8* @xmalloc(i64 %mul) #8, !dbg !950
  %defs = getelementptr inbounds %struct.cpp_savedstate, %struct.cpp_savedstate* %1, i64 0, i32 3, !dbg !951
  %4 = bitcast %struct.cpp_hashnode*** %defs to i8**, !dbg !952
  store i8* %call, i8** %4, align 8, !dbg !952
  store i64 0, i64* %n_defs, align 8, !dbg !953
  tail call void @cpp_forall_identifiers(%struct.cpp_reader* %r, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* nonnull @write_defs, i8* %2) #8, !dbg !954
  %5 = load i8*, i8** %4, align 8, !dbg !955
  %6 = load i64, i64* %n_defs, align 8, !dbg !956
  tail call void @spec_qsort(i8* %5, i64 %6, i64 8, i32 (i8*, i8*)* nonnull @comp_hashnodes) #8, !dbg !957
  %7 = load i64, i64* %hashsize, align 8, !dbg !958
  %call7 = tail call i8* @xmalloc(i64 %7) #8, !dbg !958
  %definedstrs8 = getelementptr inbounds %struct.cpp_savedstate, %struct.cpp_savedstate* %1, i64 0, i32 4, !dbg !959
  store i8* %call7, i8** %definedstrs8, align 8, !dbg !960
  call void @llvm.dbg.value(metadata i8* %call7, metadata !935, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i64 0, metadata !936, metadata !DIExpression()), !dbg !941
  br label %for.cond, !dbg !961

for.cond:                                         ; preds = %for.body, %entry
  %definedstrs.0 = phi i8* [ %call7, %entry ], [ %add.ptr, %for.body ], !dbg !941
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.body ], !dbg !962
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !936, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i8* %definedstrs.0, metadata !935, metadata !DIExpression()), !dbg !941
  %8 = load i64, i64* %n_defs, align 8, !dbg !963
  %cmp = icmp ult i64 %i.0, %8, !dbg !964
  br i1 %cmp, label %for.body, label %for.end, !dbg !965

for.body:                                         ; preds = %for.cond
  %9 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %defs, align 8, !dbg !966
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %9, i64 %i.0, !dbg !966
  %10 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx, align 8, !dbg !966
  %len11 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %10, i64 0, i32 0, i32 1, !dbg !966
  %11 = load i32, i32* %len11, align 8, !dbg !966
  %conv = zext i32 %11 to i64, !dbg !966
  call void @llvm.dbg.value(metadata i64 %conv, metadata !937, metadata !DIExpression()), !dbg !967
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %10, i64 0, i32 0, i32 0, !dbg !968
  %12 = load i8*, i8** %str, align 8, !dbg !968
  %add = add nuw nsw i64 %conv, 1, !dbg !969
  %call15 = tail call i8* @memcpy(i8* %definedstrs.0, i8* %12, i64 %add) #8, !dbg !970
  %add.ptr = getelementptr inbounds i8, i8* %definedstrs.0, i64 %add, !dbg !971
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !935, metadata !DIExpression()), !dbg !941
  %inc = add i64 %i.0, 1, !dbg !972
  call void @llvm.dbg.value(metadata i64 %inc, metadata !936, metadata !DIExpression()), !dbg !941
  br label %for.cond, !dbg !973, !llvm.loop !974

for.end:                                          ; preds = %for.cond
  %call17 = call i8* @memset(i8* nonnull %0, i32 0, i64 8) #8, !dbg !976
  %13 = load i64, i64* %hashsize, align 8, !dbg !977
  %conv19 = trunc i64 %13 to i32, !dbg !978
  %definition_length = getelementptr inbounds %struct.macrodef_struct, %struct.macrodef_struct* %z, i64 0, i32 0, !dbg !979
  store i32 %conv19, i32* %definition_length, align 4, !dbg !980
  %call20 = call i64 @fwrite(i8* nonnull %0, i64 8, i64 1, %struct._IO_FILE* %f) #8, !dbg !981
  %cmp21 = icmp eq i64 %call20, 1, !dbg !983
  br i1 %cmp21, label %lor.lhs.false, label %if.then, !dbg !984

lor.lhs.false:                                    ; preds = %for.end
  %14 = load i8*, i8** %definedstrs8, align 8, !dbg !985
  %15 = load i64, i64* %hashsize, align 8, !dbg !986
  %call25 = call i64 @fwrite(i8* %14, i64 %15, i64 1, %struct._IO_FILE* %f) #8, !dbg !987
  %cmp26 = icmp eq i64 %call25, 1, !dbg !988
  br i1 %cmp26, label %if.end, label %if.then, !dbg !989

if.then:                                          ; preds = %lor.lhs.false, %for.end
  %call28 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %r, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #8, !dbg !990
  br label %cleanup, !dbg !992

if.end:                                           ; preds = %lor.lhs.false
  %16 = load i8*, i8** %definedstrs8, align 8, !dbg !993
  call void @free(i8* %16) #8, !dbg !994
  call void @free(i8* %2) #8, !dbg !995
  store %struct.cpp_savedstate* null, %struct.cpp_savedstate** %savedstate, align 8, !dbg !996
  %counter = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 61, !dbg !997
  %17 = bitcast i32* %counter to i8*, !dbg !999
  %call31 = call i64 @fwrite(i8* nonnull %17, i64 4, i64 1, %struct._IO_FILE* %f) #8, !dbg !1000
  %cmp32 = icmp eq i64 %call31, 1, !dbg !1001
  br i1 %cmp32, label %cleanup, label %if.then34, !dbg !1002

if.then34:                                        ; preds = %if.end
  %call35 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %r, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1003
  br label %cleanup, !dbg !1005

cleanup:                                          ; preds = %if.end, %if.then34, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then34 ], [ 0, %if.end ], !dbg !941
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11, !dbg !1006
  ret i32 %retval.0, !dbg !1006
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define internal i32 @count_defs(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %hn, i8* %ss_p) #2 !dbg !1007 {
entry:
  %news = alloca %struct.cpp_string, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1009, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %hn, metadata !1010, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i8* %ss_p, metadata !1011, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i8* %ss_p, metadata !1012, metadata !DIExpression()), !dbg !1017
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %hn, i64 0, i32 3, !dbg !1018
  %bf.load = load i16, i16* %type, align 2, !dbg !1018
  %bf.clear = and i16 %bf.load, 63, !dbg !1018
  %bf.cast = zext i16 %bf.clear to i32, !dbg !1018
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb3
    i32 2, label %cleanup
  ], !dbg !1019

sw.bb:                                            ; preds = %entry
  %0 = and i16 %bf.load, 256, !dbg !1020
  %tobool = icmp eq i16 %0, 0, !dbg !1020
  br i1 %tobool, label %sw.bb3, label %cleanup, !dbg !1022

sw.bb3:                                           ; preds = %sw.bb, %entry
  %1 = bitcast %struct.cpp_string* %news to i8*, !dbg !1023
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #11, !dbg !1023
  %len = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %hn, i64 0, i32 0, i32 1, !dbg !1024
  %2 = load i32, i32* %len, align 8, !dbg !1024
  %len4 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %news, i64 0, i32 0, !dbg !1025
  store i32 %2, i32* %len4, align 8, !dbg !1026
  %3 = bitcast %struct.cpp_hashnode* %hn to i64*, !dbg !1027
  %4 = load i64, i64* %3, align 8, !dbg !1027
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %news, i64 0, i32 1, !dbg !1028
  %5 = bitcast i8** %text to i64*, !dbg !1029
  store i64 %4, i64* %5, align 8, !dbg !1029
  %definedhash = bitcast i8* %ss_p to %struct.htab**, !dbg !1030
  %6 = load %struct.htab*, %struct.htab** %definedhash, align 8, !dbg !1030
  %call = call i8* @htab_find(%struct.htab* %6, i8* nonnull %1) #8, !dbg !1031
  call void @llvm.dbg.value(metadata i8* %call, metadata !1016, metadata !DIExpression()), !dbg !1032
  %cmp = icmp eq i8* %call, null, !dbg !1033
  br i1 %cmp, label %if.then6, label %if.end11, !dbg !1035

if.then6:                                         ; preds = %sw.bb3
  %7 = load i32, i32* %len, align 8, !dbg !1036
  %add = add i32 %7, 1, !dbg !1038
  %conv = zext i32 %add to i64, !dbg !1036
  %hashsize = getelementptr inbounds i8, i8* %ss_p, i64 8, !dbg !1039
  %8 = bitcast i8* %hashsize to i64*, !dbg !1039
  %9 = load i64, i64* %8, align 8, !dbg !1040
  %add9 = add i64 %9, %conv, !dbg !1040
  store i64 %add9, i64* %8, align 8, !dbg !1040
  %n_defs = getelementptr inbounds i8, i8* %ss_p, i64 16, !dbg !1041
  %10 = bitcast i8* %n_defs to i64*, !dbg !1041
  %11 = load i64, i64* %10, align 8, !dbg !1042
  %add10 = add i64 %11, 1, !dbg !1042
  store i64 %add10, i64* %10, align 8, !dbg !1042
  br label %if.end11, !dbg !1043

if.end11:                                         ; preds = %if.then6, %sw.bb3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #11, !dbg !1044
  br label %cleanup, !dbg !1045

sw.default:                                       ; preds = %entry
  tail call void @abort() #12, !dbg !1046
  unreachable, !dbg !1046

cleanup:                                          ; preds = %sw.bb, %entry, %if.end11
  ret i32 1, !dbg !1047
}

; Function Attrs: nounwind uwtable
define internal i32 @write_defs(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %hn, i8* %ss_p) #2 !dbg !1048 {
entry:
  %news = alloca %struct.cpp_string, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1050, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %hn, metadata !1051, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %ss_p, metadata !1052, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %ss_p, metadata !1053, metadata !DIExpression()), !dbg !1058
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %hn, i64 0, i32 3, !dbg !1059
  %bf.load = load i16, i16* %type, align 2, !dbg !1059
  %bf.clear = and i16 %bf.load, 63, !dbg !1059
  %bf.cast = zext i16 %bf.clear to i32, !dbg !1059
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb3
    i32 2, label %cleanup
  ], !dbg !1060

sw.bb:                                            ; preds = %entry
  %0 = and i16 %bf.load, 256, !dbg !1061
  %tobool = icmp eq i16 %0, 0, !dbg !1061
  br i1 %tobool, label %sw.bb3, label %cleanup, !dbg !1063

sw.bb3:                                           ; preds = %sw.bb, %entry
  %1 = bitcast %struct.cpp_string* %news to i8*, !dbg !1064
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #11, !dbg !1064
  %len = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %hn, i64 0, i32 0, i32 1, !dbg !1065
  %2 = load i32, i32* %len, align 8, !dbg !1065
  %len4 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %news, i64 0, i32 0, !dbg !1066
  store i32 %2, i32* %len4, align 8, !dbg !1067
  %3 = bitcast %struct.cpp_hashnode* %hn to i64*, !dbg !1068
  %4 = load i64, i64* %3, align 8, !dbg !1068
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %news, i64 0, i32 1, !dbg !1069
  %5 = bitcast i8** %text to i64*, !dbg !1070
  store i64 %4, i64* %5, align 8, !dbg !1070
  %definedhash = bitcast i8* %ss_p to %struct.htab**, !dbg !1071
  %6 = load %struct.htab*, %struct.htab** %definedhash, align 8, !dbg !1071
  %call = call i8* @htab_find(%struct.htab* %6, i8* nonnull %1) #8, !dbg !1072
  call void @llvm.dbg.value(metadata i8* %call, metadata !1057, metadata !DIExpression()), !dbg !1073
  %cmp = icmp eq i8* %call, null, !dbg !1074
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !1076

if.then6:                                         ; preds = %sw.bb3
  %defs = getelementptr inbounds i8, i8* %ss_p, i64 24, !dbg !1077
  %7 = bitcast i8* %defs to %struct.cpp_hashnode***, !dbg !1077
  %8 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %7, align 8, !dbg !1077
  %n_defs = getelementptr inbounds i8, i8* %ss_p, i64 16, !dbg !1079
  %9 = bitcast i8* %n_defs to i64*, !dbg !1079
  %10 = load i64, i64* %9, align 8, !dbg !1079
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %8, i64 %10, !dbg !1080
  store %struct.cpp_hashnode* %hn, %struct.cpp_hashnode** %arrayidx, align 8, !dbg !1081
  %11 = load i64, i64* %9, align 8, !dbg !1082
  %add = add i64 %11, 1, !dbg !1082
  store i64 %add, i64* %9, align 8, !dbg !1082
  br label %if.end8, !dbg !1083

if.end8:                                          ; preds = %if.then6, %sw.bb3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #11, !dbg !1084
  br label %cleanup, !dbg !1085

sw.default:                                       ; preds = %entry
  tail call void @abort() #12, !dbg !1086
  unreachable, !dbg !1086

cleanup:                                          ; preds = %sw.bb, %entry, %if.end8
  ret i32 1, !dbg !1087
}

declare dso_local void @spec_qsort(i8*, i64, i64, i32 (i8*, i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @comp_hashnodes(i8* %px, i8* %py) #2 !dbg !1088 {
entry:
  call void @llvm.dbg.value(metadata i8* %px, metadata !1090, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %py, metadata !1091, metadata !DIExpression()), !dbg !1094
  %0 = bitcast i8* %px to %struct.cpp_hashnode**, !dbg !1095
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %0, align 8, !dbg !1096
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %1, metadata !1092, metadata !DIExpression()), !dbg !1094
  %2 = bitcast i8* %py to %struct.cpp_hashnode**, !dbg !1097
  %3 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %2, align 8, !dbg !1098
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %3, metadata !1093, metadata !DIExpression()), !dbg !1094
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %1, i64 0, i32 0, i32 0, !dbg !1099
  %4 = load i8*, i8** %str, align 8, !dbg !1099
  %str2 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %3, i64 0, i32 0, i32 0, !dbg !1100
  %5 = load i8*, i8** %str2, align 8, !dbg !1100
  %call = tail call fastcc i32 @ustrcmp(i8* %4, i8* %5) #9, !dbg !1101
  ret i32 %call, !dbg !1102
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #4

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local zeroext i8 @cpp_errno(%struct.cpp_reader*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @cpp_write_pch_state(%struct.cpp_reader* %r, %struct._IO_FILE* %f) local_unnamed_addr #2 !dbg !1103 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %r, metadata !1105, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !1106, metadata !DIExpression()), !dbg !1107
  %deps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 45, !dbg !1108
  %0 = load %struct.deps*, %struct.deps** %deps, align 8, !dbg !1108
  %tobool = icmp eq %struct.deps* %0, null, !dbg !1110
  br i1 %tobool, label %if.then, label %if.end, !dbg !1111

if.then:                                          ; preds = %entry
  %call = tail call %struct.deps* @deps_init() #8, !dbg !1112
  store %struct.deps* %call, %struct.deps** %deps, align 8, !dbg !1113
  br label %if.end, !dbg !1114

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct.deps* [ %0, %entry ], [ %call, %if.then ], !dbg !1115
  %call3 = tail call i32 @deps_save(%struct.deps* %1, %struct._IO_FILE* %f) #8, !dbg !1117
  %cmp = icmp eq i32 %call3, 0, !dbg !1118
  br i1 %cmp, label %if.end6, label %if.then4, !dbg !1119

if.then4:                                         ; preds = %if.end
  %call5 = tail call zeroext i8 @cpp_errno(%struct.cpp_reader* %r, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1120
  br label %return, !dbg !1122

if.end6:                                          ; preds = %if.end
  %call7 = tail call zeroext i8 @_cpp_save_file_entries(%struct.cpp_reader* %r, %struct._IO_FILE* %f) #8, !dbg !1123
  %tobool8 = icmp eq i8 %call7, 0, !dbg !1123
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !1125

if.then9:                                         ; preds = %if.end6
  %call10 = tail call zeroext i8 @cpp_errno(%struct.cpp_reader* %r, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1126
  br label %return, !dbg !1128

if.end11:                                         ; preds = %if.end6
  %counter = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 61, !dbg !1129
  %2 = bitcast i32* %counter to i8*, !dbg !1131
  %call12 = tail call i64 @fwrite(i8* nonnull %2, i64 4, i64 1, %struct._IO_FILE* %f) #8, !dbg !1132
  %cmp13 = icmp eq i64 %call12, 1, !dbg !1133
  br i1 %cmp13, label %if.end16, label %if.then14, !dbg !1134

if.then14:                                        ; preds = %if.end11
  %call15 = tail call zeroext i8 @cpp_errno(%struct.cpp_reader* %r, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1135
  br label %return, !dbg !1137

if.end16:                                         ; preds = %if.end11
  %call17 = tail call fastcc i32 @_cpp_save_pushed_macros(%struct.cpp_reader* %r, %struct._IO_FILE* %f) #9, !dbg !1138
  %tobool18 = icmp eq i32 %call17, 0, !dbg !1138
  br i1 %tobool18, label %if.then19, label %return, !dbg !1140

if.then19:                                        ; preds = %if.end16
  %call20 = tail call zeroext i8 @cpp_errno(%struct.cpp_reader* %r, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1141
  br label %return, !dbg !1143

return:                                           ; preds = %if.end16, %if.then19, %if.then14, %if.then9, %if.then4
  %retval.0 = phi i32 [ -1, %if.then4 ], [ -1, %if.then14 ], [ -1, %if.then19 ], [ -1, %if.then9 ], [ 0, %if.end16 ], !dbg !1107
  ret i32 %retval.0, !dbg !1144
}

declare dso_local %struct.deps* @deps_init() local_unnamed_addr #1

declare dso_local i32 @deps_save(%struct.deps*, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local zeroext i8 @_cpp_save_file_entries(%struct.cpp_reader*, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_cpp_save_pushed_macros(%struct.cpp_reader* %r, %struct._IO_FILE* %f) unnamed_addr #2 !dbg !1145 {
entry:
  %count_saved = alloca i64, align 8
  %defnlen = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %r, metadata !1147, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !1148, metadata !DIExpression()), !dbg !1159
  %0 = bitcast i64* %count_saved to i8*, !dbg !1160
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11, !dbg !1160
  call void @llvm.dbg.value(metadata i64 0, metadata !1149, metadata !DIExpression()), !dbg !1159
  store i64 0, i64* %count_saved, align 8, !dbg !1161
  %1 = bitcast i64* %defnlen to i8*, !dbg !1162
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11, !dbg !1162
  %pushed_macros = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 63, !dbg !1163
  br label %while.cond, !dbg !1164

while.cond:                                       ; preds = %while.body, %entry
  %2 = phi i64 [ 0, %entry ], [ %inc, %while.body ]
  %p.0.in = phi %struct.def_pragma_macro** [ %pushed_macros, %entry ], [ %next, %while.body ]
  %p.0 = load %struct.def_pragma_macro*, %struct.def_pragma_macro** %p.0.in, align 8, !dbg !1159
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* %p.0, metadata !1151, metadata !DIExpression()), !dbg !1159
  %cmp = icmp eq %struct.def_pragma_macro* %p.0, null, !dbg !1165
  br i1 %cmp, label %while.end, label %while.body, !dbg !1164

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata i64 %2, metadata !1149, metadata !DIExpression()), !dbg !1159
  %inc = add i64 %2, 1, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1149, metadata !DIExpression()), !dbg !1159
  store i64 %inc, i64* %count_saved, align 8, !dbg !1166
  %next = getelementptr inbounds %struct.def_pragma_macro, %struct.def_pragma_macro* %p.0, i64 0, i32 0, !dbg !1168
  br label %while.cond, !dbg !1164, !llvm.loop !1169

while.end:                                        ; preds = %while.cond
  %call = call i64 @fwrite(i8* nonnull %0, i64 8, i64 1, %struct._IO_FILE* %f) #8, !dbg !1171
  %cmp1 = icmp eq i64 %call, 1, !dbg !1173
  br i1 %cmp1, label %if.end, label %cleanup, !dbg !1174

if.end:                                           ; preds = %while.end
  %3 = load i64, i64* %count_saved, align 8, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %3, metadata !1149, metadata !DIExpression()), !dbg !1159
  %tobool = icmp eq i64 %3, 0, !dbg !1175
  br i1 %tobool, label %cleanup, label %if.end3, !dbg !1177

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 %3, metadata !1149, metadata !DIExpression()), !dbg !1159
  %mul = shl i64 %3, 3, !dbg !1178
  %4 = alloca i8, i64 %mul, align 16, !dbg !1178
  %5 = bitcast i8* %4 to %struct.def_pragma_macro**, !dbg !1179
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro** %5, metadata !1152, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %3, metadata !1149, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %3, metadata !1150, metadata !DIExpression()), !dbg !1159
  br label %while.cond5, !dbg !1180

while.cond5:                                      ; preds = %while.body7, %if.end3
  %i.0 = phi i64 [ %3, %if.end3 ], [ %dec, %while.body7 ], !dbg !1159
  %p.1.in = phi %struct.def_pragma_macro** [ %pushed_macros, %if.end3 ], [ %next8, %while.body7 ]
  %p.1 = load %struct.def_pragma_macro*, %struct.def_pragma_macro** %p.1.in, align 8, !dbg !1159
  call void @llvm.dbg.value(metadata %struct.def_pragma_macro* %p.1, metadata !1151, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1150, metadata !DIExpression()), !dbg !1159
  %cmp6 = icmp eq %struct.def_pragma_macro* %p.1, null, !dbg !1181
  br i1 %cmp6, label %for.cond.preheader, label %while.body7, !dbg !1180

for.cond.preheader:                               ; preds = %while.cond5
  br label %for.cond, !dbg !1182

while.body7:                                      ; preds = %while.cond5
  %dec = add i64 %i.0, -1, !dbg !1184
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1150, metadata !DIExpression()), !dbg !1159
  %arrayidx = getelementptr inbounds %struct.def_pragma_macro*, %struct.def_pragma_macro** %5, i64 %dec, !dbg !1186
  store %struct.def_pragma_macro* %p.1, %struct.def_pragma_macro** %arrayidx, align 8, !dbg !1187
  %next8 = getelementptr inbounds %struct.def_pragma_macro, %struct.def_pragma_macro* %p.1, i64 0, i32 0, !dbg !1188
  br label %while.cond5, !dbg !1180, !llvm.loop !1189

for.cond:                                         ; preds = %for.cond.preheader, %if.end38
  %6 = phi i64 [ %.pre, %if.end38 ], [ %3, %for.cond.preheader ], !dbg !1191
  %i.1 = phi i64 [ %inc41, %if.end38 ], [ 0, %for.cond.preheader ], !dbg !1193
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1150, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %6, metadata !1149, metadata !DIExpression()), !dbg !1159
  %cmp10 = icmp ult i64 %i.1, %6, !dbg !1194
  br i1 %cmp10, label %for.body, label %cleanup.loopexit, !dbg !1182

for.body:                                         ; preds = %for.cond
  %arrayidx11 = getelementptr inbounds %struct.def_pragma_macro*, %struct.def_pragma_macro** %5, i64 %i.1, !dbg !1195
  %7 = load %struct.def_pragma_macro*, %struct.def_pragma_macro** %arrayidx11, align 8, !dbg !1195
  %name = getelementptr inbounds %struct.def_pragma_macro, %struct.def_pragma_macro* %7, i64 0, i32 1, !dbg !1197
  %8 = load i8*, i8** %name, align 8, !dbg !1197
  %call12 = call %struct.cpp_macro* @cpp_push_definition(%struct.cpp_reader* %r, i8* %8) #8, !dbg !1198
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %call12, metadata !1154, metadata !DIExpression()), !dbg !1159
  %9 = load i8*, i8** %name, align 8, !dbg !1199
  %value = getelementptr inbounds %struct.def_pragma_macro, %struct.def_pragma_macro* %7, i64 0, i32 2, !dbg !1200
  %10 = load %struct.cpp_macro*, %struct.cpp_macro** %value, align 8, !dbg !1200
  call void @cpp_pop_definition(%struct.cpp_reader* %r, i8* %9, %struct.cpp_macro* %10) #8, !dbg !1201
  %11 = load i8*, i8** %name, align 8, !dbg !1202
  %call18 = call %struct.cpp_hashnode* @_cpp_lex_identifier(%struct.cpp_reader* %r, i8* %11) #8, !dbg !1203
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call18, metadata !1153, metadata !DIExpression()), !dbg !1159
  %12 = load i8*, i8** %name, align 8, !dbg !1204
  %call21 = call i64 @strlen(i8* %12) #10, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %call21, metadata !1155, metadata !DIExpression()), !dbg !1159
  store i64 %call21, i64* %defnlen, align 8, !dbg !1206
  %call22 = call i64 @fwrite(i8* nonnull %1, i64 8, i64 1, %struct._IO_FILE* %f) #8, !dbg !1207
  %cmp23 = icmp eq i64 %call22, 1, !dbg !1209
  br i1 %cmp23, label %lor.lhs.false, label %cleanup.loopexit, !dbg !1210

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i8*, i8** %name, align 8, !dbg !1211
  %14 = load i64, i64* %defnlen, align 8, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %14, metadata !1155, metadata !DIExpression()), !dbg !1159
  %call26 = call i64 @fwrite(i8* %13, i64 %14, i64 1, %struct._IO_FILE* %f) #8, !dbg !1213
  %cmp27 = icmp eq i64 %call26, 1, !dbg !1214
  br i1 %cmp27, label %if.end29, label %cleanup.loopexit, !dbg !1215

if.end29:                                         ; preds = %lor.lhs.false
  %call30 = call i8* @cpp_macro_definition(%struct.cpp_reader* %r, %struct.cpp_hashnode* %call18) #8, !dbg !1216
  call void @llvm.dbg.value(metadata i8* %call30, metadata !1156, metadata !DIExpression()), !dbg !1159
  %call31 = call fastcc i64 @ustrlen(i8* %call30) #9, !dbg !1217
  call void @llvm.dbg.value(metadata i64 %call31, metadata !1155, metadata !DIExpression()), !dbg !1159
  store i64 %call31, i64* %defnlen, align 8, !dbg !1218
  %call32 = call i64 @fwrite(i8* nonnull %1, i64 8, i64 1, %struct._IO_FILE* %f) #8, !dbg !1219
  %cmp33 = icmp eq i64 %call32, 1, !dbg !1221
  br i1 %cmp33, label %lor.lhs.false34, label %cleanup.loopexit, !dbg !1222

lor.lhs.false34:                                  ; preds = %if.end29
  %15 = load i64, i64* %defnlen, align 8, !dbg !1223
  call void @llvm.dbg.value(metadata i64 %15, metadata !1155, metadata !DIExpression()), !dbg !1159
  %call35 = call i64 @fwrite(i8* %call30, i64 %15, i64 1, %struct._IO_FILE* %f) #8, !dbg !1224
  %cmp36 = icmp eq i64 %call35, 1, !dbg !1225
  br i1 %cmp36, label %if.end38, label %cleanup.loopexit, !dbg !1226

if.end38:                                         ; preds = %lor.lhs.false34
  %16 = load i8*, i8** %name, align 8, !dbg !1227
  call void @cpp_pop_definition(%struct.cpp_reader* %r, i8* %16, %struct.cpp_macro* %call12) #8, !dbg !1228
  %inc41 = add i64 %i.1, 1, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %inc41, metadata !1150, metadata !DIExpression()), !dbg !1159
  %.pre = load i64, i64* %count_saved, align 8, !dbg !1191
  br label %for.cond, !dbg !1230, !llvm.loop !1231

cleanup.loopexit:                                 ; preds = %for.cond, %for.body, %lor.lhs.false, %if.end29, %lor.lhs.false34
  %retval.0.ph = phi i32 [ 1, %for.cond ], [ 0, %if.end29 ], [ 0, %lor.lhs.false34 ], [ 0, %for.body ], [ 0, %lor.lhs.false ]
  br label %cleanup, !dbg !1233

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ 1, %if.end ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !1159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11, !dbg !1233
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11, !dbg !1233
  ret i32 %retval.0, !dbg !1233
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cpp_valid_state(%struct.cpp_reader* %r, i8* %name, i32 %fd) local_unnamed_addr #2 !dbg !1234 {
entry:
  %m = alloca %struct.macrodef_struct, align 4
  %nl = alloca %struct.ht_node_list, align 8
  %counter = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %r, metadata !1236, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %name, metadata !1237, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i32 %fd, metadata !1238, metadata !DIExpression()), !dbg !1257
  %0 = bitcast %struct.macrodef_struct* %m to i8*, !dbg !1258
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11, !dbg !1258
  call void @llvm.dbg.value(metadata i64 256, metadata !1240, metadata !DIExpression()), !dbg !1257
  %call = tail call i8* @xmalloc(i64 256) #8, !dbg !1259
  call void @llvm.dbg.value(metadata i8* %call, metadata !1241, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8* null, metadata !1242, metadata !DIExpression()), !dbg !1257
  %1 = bitcast %struct.ht_node_list* %nl to i8*, !dbg !1260
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #11, !dbg !1260
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %1, i8 0, i64 24, i1 false), !dbg !1261
  %2 = bitcast i32* %counter to i8*, !dbg !1262
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #11, !dbg !1262
  %name_length = getelementptr inbounds %struct.macrodef_struct, %struct.macrodef_struct* %m, i64 0, i32 1, !dbg !1263
  %preprocessed = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 53, i32 32, !dbg !1265
  %definition_length = getelementptr inbounds %struct.macrodef_struct, %struct.macrodef_struct* %m, i64 0, i32 0, !dbg !1267
  %flags = getelementptr inbounds %struct.macrodef_struct, %struct.macrodef_struct* %m, i64 0, i32 2, !dbg !1268
  %warn_invalid_pch73 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 53, i32 41, !dbg !1270
  br label %for.cond, !dbg !1274

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %namebuf.0 = phi i8* [ %call, %entry ], [ %namebuf.2, %for.cond.backedge ], !dbg !1275
  %namebufsz.0 = phi i64 [ 256, %entry ], [ %namebufsz.2, %for.cond.backedge ], !dbg !1276
  call void @llvm.dbg.value(metadata i64 %namebufsz.0, metadata !1240, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %namebuf.0, metadata !1241, metadata !DIExpression()), !dbg !1257
  %call1 = call i64 @read(i32 %fd, i8* nonnull %0, i64 8) #8, !dbg !1277
  %cmp = icmp eq i64 %call1, 8, !dbg !1279
  br i1 %cmp, label %if.end, label %cleanup, !dbg !1280

if.end:                                           ; preds = %for.cond
  %3 = load i16, i16* %name_length, align 4, !dbg !1281
  %cmp2 = icmp eq i16 %3, 0, !dbg !1282
  br i1 %cmp2, label %cleanup, label %if.end5, !dbg !1283

if.end5:                                          ; preds = %if.end
  %4 = load i8, i8* %preprocessed, align 2, !dbg !1284
  %tobool = icmp eq i8 %4, 0, !dbg !1284
  %5 = load i32, i32* %definition_length, align 4, !dbg !1267
  %conv7 = zext i32 %5 to i64, !dbg !1267
  br i1 %tobool, label %if.end13, label %if.then6, !dbg !1285

if.then6:                                         ; preds = %if.end5
  %call8 = call i64 @lseek(i32 %fd, i64 %conv7, i32 1) #8, !dbg !1286
  %cmp9 = icmp eq i64 %call8, -1, !dbg !1289
  %. = select i1 %cmp9, i32 4, i32 3, !dbg !1290
  br label %cleanup, !dbg !1290

if.end13:                                         ; preds = %if.end5
  %cmp16 = icmp ult i64 %namebufsz.0, %conv7, !dbg !1291
  br i1 %cmp16, label %if.then18, label %if.end23, !dbg !1293

if.then18:                                        ; preds = %if.end13
  call void @free(i8* %namebuf.0) #8, !dbg !1294
  %6 = load i32, i32* %definition_length, align 4, !dbg !1296
  %add = add i32 %6, 256, !dbg !1297
  %conv20 = zext i32 %add to i64, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %conv20, metadata !1240, metadata !DIExpression()), !dbg !1257
  %call22 = call i8* @xmalloc(i64 %conv20) #8, !dbg !1299
  call void @llvm.dbg.value(metadata i8* %call22, metadata !1241, metadata !DIExpression()), !dbg !1257
  %.pre = load i32, i32* %definition_length, align 4, !dbg !1300
  %.pre8 = zext i32 %.pre to i64, !dbg !1302
  br label %if.end23, !dbg !1303

if.end23:                                         ; preds = %if.then18, %if.end13
  %conv25.pre-phi = phi i64 [ %.pre8, %if.then18 ], [ %conv7, %if.end13 ], !dbg !1302
  %namebuf.1 = phi i8* [ %call22, %if.then18 ], [ %namebuf.0, %if.end13 ], !dbg !1257
  %namebufsz.1 = phi i64 [ %conv20, %if.then18 ], [ %namebufsz.0, %if.end13 ], !dbg !1257
  call void @llvm.dbg.value(metadata i64 %namebufsz.1, metadata !1240, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %namebuf.1, metadata !1241, metadata !DIExpression()), !dbg !1257
  %call26 = call i64 @read(i32 %fd, i8* %namebuf.1, i64 %conv25.pre-phi) #8, !dbg !1304
  %7 = load i32, i32* %definition_length, align 4, !dbg !1305
  %conv28 = zext i32 %7 to i64, !dbg !1306
  %cmp29 = icmp eq i64 %call26, %conv28, !dbg !1307
  br i1 %cmp29, label %if.end32, label %cleanup, !dbg !1308

if.end32:                                         ; preds = %if.end23
  %8 = load i16, i16* %name_length, align 4, !dbg !1309
  %conv34 = zext i16 %8 to i32, !dbg !1310
  %call35 = call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %r, i8* %namebuf.1, i32 %conv34) #8, !dbg !1311
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call35, metadata !1248, metadata !DIExpression()), !dbg !1267
  %9 = load i16, i16* %flags, align 2, !dbg !1312
  %10 = and i16 %9, 2, !dbg !1313
  %tobool37 = icmp eq i16 %10, 0, !dbg !1313
  br i1 %tobool37, label %lor.lhs.false, label %if.then41, !dbg !1314

lor.lhs.false:                                    ; preds = %if.end32
  %flags38 = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call35, i64 0, i32 3, !dbg !1315
  %bf.load = load i16, i16* %flags38, align 2, !dbg !1315
  %11 = trunc i16 %bf.load to i8, !dbg !1316
  %tobool40 = icmp slt i8 %11, 0, !dbg !1316
  br i1 %tobool40, label %if.then41, label %if.end49, !dbg !1317

if.then41:                                        ; preds = %if.end32, %lor.lhs.false
  %12 = load i8, i8* %warn_invalid_pch73, align 4, !dbg !1318
  %tobool43 = icmp eq i8 %12, 0, !dbg !1318
  br i1 %tobool43, label %cleanup, label %if.then44, !dbg !1321

if.then44:                                        ; preds = %if.then41
  %13 = load i16, i16* %name_length, align 4, !dbg !1322
  %conv46 = zext i16 %13 to i32, !dbg !1323
  %call47 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %r, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %name, i32 %conv46, i8* %namebuf.1) #8, !dbg !1324
  br label %cleanup, !dbg !1324

if.end49:                                         ; preds = %lor.lhs.false
  %bf.clear = and i16 %bf.load, 63, !dbg !1325
  %cmp52 = icmp eq i16 %bf.clear, 1, !dbg !1326
  br i1 %cmp52, label %if.end80, label %if.then54, !dbg !1327

if.then54:                                        ; preds = %if.end49
  %14 = and i16 %bf.load, 8192, !dbg !1328
  %tobool60 = icmp eq i16 %14, 0, !dbg !1328
  br i1 %tobool60, label %land.lhs.true, label %if.end71, !dbg !1330

land.lhs.true:                                    ; preds = %if.then54
  %15 = load i16, i16* %name_length, align 4, !dbg !1331
  %cmp63 = icmp eq i16 %15, 25, !dbg !1332
  br i1 %cmp63, label %land.lhs.true65, label %if.end71, !dbg !1333

land.lhs.true65:                                  ; preds = %land.lhs.true
  %call68 = call i32 @memcmp(i8* %namebuf.1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 25) #10, !dbg !1334
  %tobool69 = icmp eq i32 %call68, 0, !dbg !1334
  br i1 %tobool69, label %cleanup, label %if.end71, !dbg !1335, !llvm.loop !1336

if.end71:                                         ; preds = %land.lhs.true65, %if.then54, %land.lhs.true
  %16 = load i8, i8* %warn_invalid_pch73, align 4, !dbg !1339
  %tobool74 = icmp eq i8 %16, 0, !dbg !1339
  br i1 %tobool74, label %cleanup, label %if.then75, !dbg !1340

if.then75:                                        ; preds = %if.end71
  %17 = load i16, i16* %name_length, align 4, !dbg !1341
  %conv77 = zext i16 %17 to i32, !dbg !1342
  %call78 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %r, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %name, i32 %conv77, i8* %namebuf.1) #8, !dbg !1343
  br label %cleanup, !dbg !1343

if.end80:                                         ; preds = %if.end49
  %call81 = call i8* @cpp_macro_definition(%struct.cpp_reader* %r, %struct.cpp_hashnode* %call35) #8, !dbg !1344
  call void @llvm.dbg.value(metadata i8* %call81, metadata !1252, metadata !DIExpression()), !dbg !1267
  %18 = load i32, i32* %definition_length, align 4, !dbg !1345
  %conv83 = zext i32 %18 to i64, !dbg !1347
  %call84 = call fastcc i64 @ustrlen(i8* %call81) #9, !dbg !1348
  %cmp85 = icmp eq i64 %call84, %conv83, !dbg !1349
  br i1 %cmp85, label %lor.lhs.false87, label %if.then93, !dbg !1350

lor.lhs.false87:                                  ; preds = %if.end80
  %19 = load i32, i32* %definition_length, align 4, !dbg !1351
  %conv89 = zext i32 %19 to i64, !dbg !1352
  %call90 = call i32 @memcmp(i8* %namebuf.1, i8* %call81, i64 %conv89) #10, !dbg !1353
  %cmp91 = icmp eq i32 %call90, 0, !dbg !1354
  br i1 %cmp91, label %cleanup, label %if.then93, !dbg !1355

if.then93:                                        ; preds = %lor.lhs.false87, %if.end80
  %20 = load i8, i8* %warn_invalid_pch73, align 4, !dbg !1356
  %tobool96 = icmp eq i8 %20, 0, !dbg !1356
  br i1 %tobool96, label %cleanup, label %if.then97, !dbg !1359

if.then97:                                        ; preds = %if.then93
  %21 = load i16, i16* %name_length, align 4, !dbg !1360
  %conv99 = zext i16 %21 to i32, !dbg !1361
  %idx.ext = zext i16 %21 to i64, !dbg !1362
  %add.ptr = getelementptr inbounds i8, i8* %call81, i64 %idx.ext, !dbg !1362
  %22 = load i32, i32* %definition_length, align 4, !dbg !1363
  %sub = sub i32 %22, %conv99, !dbg !1364
  %add.ptr108 = getelementptr inbounds i8, i8* %namebuf.1, i64 %idx.ext, !dbg !1365
  %call109 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %r, i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i8* %name, i32 %conv99, i8* %namebuf.1, i8* %add.ptr, i32 %sub, i8* %add.ptr108) #8, !dbg !1366
  br label %cleanup, !dbg !1366

cleanup:                                          ; preds = %if.then41, %land.lhs.true65, %if.end71, %if.then93, %lor.lhs.false87, %if.end23, %for.cond, %if.then97, %if.then75, %if.then44, %if.then6, %if.end
  %namebuf.2 = phi i8* [ %namebuf.0, %for.cond ], [ %namebuf.0, %if.end ], [ %namebuf.0, %if.then6 ], [ %namebuf.1, %if.end23 ], [ %namebuf.1, %if.then44 ], [ %namebuf.1, %if.then41 ], [ %namebuf.1, %land.lhs.true65 ], [ %namebuf.1, %if.then75 ], [ %namebuf.1, %if.end71 ], [ %namebuf.1, %if.then97 ], [ %namebuf.1, %if.then93 ], [ %namebuf.1, %lor.lhs.false87 ], !dbg !1257
  %namebufsz.2 = phi i64 [ %namebufsz.0, %for.cond ], [ %namebufsz.0, %if.end ], [ %namebufsz.0, %if.then6 ], [ %namebufsz.1, %if.end23 ], [ %namebufsz.1, %if.then44 ], [ %namebufsz.1, %if.then41 ], [ %namebufsz.1, %land.lhs.true65 ], [ %namebufsz.1, %if.then75 ], [ %namebufsz.1, %if.end71 ], [ %namebufsz.1, %if.then97 ], [ %namebufsz.1, %if.then93 ], [ %namebufsz.1, %lor.lhs.false87 ], !dbg !1257
  %cleanup.dest.slot.0 = phi i32 [ 4, %for.cond ], [ 2, %if.end ], [ %., %if.then6 ], [ 4, %if.end23 ], [ 5, %if.then44 ], [ 5, %if.then41 ], [ 3, %land.lhs.true65 ], [ 5, %if.then75 ], [ 5, %if.end71 ], [ 5, %if.then97 ], [ 5, %if.then93 ], [ 0, %lor.lhs.false87 ]
  call void @llvm.dbg.value(metadata i64 %namebufsz.2, metadata !1240, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %namebuf.2, metadata !1241, metadata !DIExpression()), !dbg !1257
  switch i32 %cleanup.dest.slot.0, label %cleanup198.loopexit1 [
    i32 0, label %for.cond.backedge
    i32 2, label %for.end
    i32 3, label %for.cond.backedge
    i32 4, label %error.loopexit
    i32 5, label %fail.loopexit2
  ]

for.cond.backedge:                                ; preds = %cleanup, %cleanup
  br label %for.cond, !dbg !1257, !llvm.loop !1336

for.end:                                          ; preds = %cleanup
  %namebuf.2.lcssa16 = phi i8* [ %namebuf.2, %cleanup ], !dbg !1257
  call void @llvm.dbg.value(metadata i8* %namebuf.2.lcssa16, metadata !1241, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %namebuf.2.lcssa16, metadata !1241, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %namebuf.2.lcssa16, metadata !1241, metadata !DIExpression()), !dbg !1257
  call void @free(i8* %namebuf.2.lcssa16) #8, !dbg !1367
  call void @llvm.dbg.value(metadata i8* null, metadata !1241, metadata !DIExpression()), !dbg !1257
  %23 = load i32, i32* %definition_length, align 4, !dbg !1368
  %conv114 = zext i32 %23 to i64, !dbg !1368
  %call116 = call i8* @xmalloc(i64 %conv114) #8, !dbg !1368
  call void @llvm.dbg.value(metadata i8* %call116, metadata !1242, metadata !DIExpression()), !dbg !1257
  %24 = load i32, i32* %definition_length, align 4, !dbg !1369
  %conv118 = zext i32 %24 to i64, !dbg !1371
  %call119 = call i64 @read(i32 %fd, i8* %call116, i64 %conv118) #8, !dbg !1372
  %25 = load i32, i32* %definition_length, align 4, !dbg !1373
  %conv121 = zext i32 %25 to i64, !dbg !1374
  %cmp122 = icmp eq i64 %call119, %conv121, !dbg !1375
  br i1 %cmp122, label %if.end125, label %error, !dbg !1376

if.end125:                                        ; preds = %for.end
  %n_defs = getelementptr inbounds %struct.ht_node_list, %struct.ht_node_list* %nl, i64 0, i32 1, !dbg !1377
  store i64 0, i64* %n_defs, align 8, !dbg !1378
  %asize = getelementptr inbounds %struct.ht_node_list, %struct.ht_node_list* %nl, i64 0, i32 2, !dbg !1379
  store i64 10, i64* %asize, align 8, !dbg !1380
  %call128 = call i8* @xmalloc(i64 80) #8, !dbg !1381
  %26 = bitcast %struct.ht_node_list* %nl to i8**, !dbg !1382
  store i8* %call128, i8** %26, align 8, !dbg !1382
  call void @cpp_forall_identifiers(%struct.cpp_reader* %r, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* nonnull @collect_ht_nodes, i8* nonnull %1) #8, !dbg !1383
  %27 = load i8*, i8** %26, align 8, !dbg !1384
  %28 = load i64, i64* %n_defs, align 8, !dbg !1385
  call void @spec_qsort(i8* %27, i64 %28, i64 8, i32 (i8*, i8*)* nonnull @comp_hashnodes) #8, !dbg !1386
  call void @llvm.dbg.value(metadata i8* %call116, metadata !1244, metadata !DIExpression()), !dbg !1257
  %29 = load i32, i32* %definition_length, align 4, !dbg !1387
  %idx.ext132 = zext i32 %29 to i64, !dbg !1388
  %add.ptr133 = getelementptr inbounds i8, i8* %call116, i64 %idx.ext132, !dbg !1388
  call void @llvm.dbg.value(metadata i8* %add.ptr133, metadata !1245, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i32 0, metadata !1246, metadata !DIExpression()), !dbg !1257
  %defs141 = getelementptr inbounds %struct.ht_node_list, %struct.ht_node_list* %nl, i64 0, i32 0, !dbg !1257
  br label %while.cond, !dbg !1389

while.cond:                                       ; preds = %cleanup161, %if.end125
  %first.0 = phi i8* [ %call116, %if.end125 ], [ %first.2, %cleanup161 ], !dbg !1257
  %i.0 = phi i32 [ 0, %if.end125 ], [ %i.2, %cleanup161 ], !dbg !1390
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1246, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %first.0, metadata !1244, metadata !DIExpression()), !dbg !1257
  %cmp134 = icmp ult i8* %first.0, %add.ptr133, !dbg !1391
  %conv136 = zext i32 %i.0 to i64, !dbg !1392
  %30 = load i64, i64* %n_defs, align 8, !dbg !1392
  %cmp138 = icmp ugt i64 %30, %conv136, !dbg !1392
  %31 = and i1 %cmp134, %cmp138, !dbg !1392
  %32 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %defs141, align 8, !dbg !1257
  br i1 %31, label %while.body, label %while.end, !dbg !1389

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %32, i64 %conv136, !dbg !1393
  %33 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %arrayidx, align 8, !dbg !1393
  %str = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %33, i64 0, i32 0, i32 0, !dbg !1393
  %34 = load i8*, i8** %str, align 8, !dbg !1393
  %call142 = call fastcc i32 @ustrcmp(i8* %first.0, i8* %34) #9, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %call142, metadata !1253, metadata !DIExpression()), !dbg !1395
  %cmp143 = icmp slt i32 %call142, 0, !dbg !1396
  br i1 %cmp143, label %if.then145, label %if.else, !dbg !1398

if.then145:                                       ; preds = %while.body
  %call146 = call fastcc i64 @ustrlen(i8* %first.0) #9, !dbg !1399
  %add147 = add i64 %call146, 1, !dbg !1400
  %add.ptr148 = getelementptr inbounds i8, i8* %first.0, i64 %add147, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %add.ptr148, metadata !1244, metadata !DIExpression()), !dbg !1257
  br label %cleanup161, !dbg !1402

if.else:                                          ; preds = %while.body
  %cmp149 = icmp eq i32 %call142, 0, !dbg !1403
  br i1 %cmp149, label %if.else152, label %if.then151, !dbg !1405

if.then151:                                       ; preds = %if.else
  %inc = add i32 %i.0, 1, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1246, metadata !DIExpression()), !dbg !1257
  br label %cleanup161

if.else152:                                       ; preds = %if.else
  %35 = load i8, i8* %warn_invalid_pch73, align 4, !dbg !1407
  %tobool155 = icmp eq i8 %35, 0, !dbg !1407
  br i1 %tobool155, label %cleanup161, label %if.then156, !dbg !1410

if.then156:                                       ; preds = %if.else152
  %call157 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %r, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %name, i8* %first.0) #8, !dbg !1411
  br label %cleanup161, !dbg !1411

cleanup161:                                       ; preds = %if.else152, %if.then145, %if.then151, %if.then156
  %first.2 = phi i8* [ %first.0, %if.then156 ], [ %first.0, %if.else152 ], [ %add.ptr148, %if.then145 ], [ %first.0, %if.then151 ], !dbg !1257
  %i.2 = phi i32 [ %i.0, %if.then156 ], [ %i.0, %if.else152 ], [ %i.0, %if.then145 ], [ %inc, %if.then151 ], !dbg !1390
  %cleanup.dest.slot.1 = phi i32 [ 5, %if.then156 ], [ 5, %if.else152 ], [ 0, %if.then145 ], [ 0, %if.then151 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !1246, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %first.2, metadata !1244, metadata !DIExpression()), !dbg !1257
  switch i32 %cleanup.dest.slot.1, label %cleanup198.loopexit [
    i32 0, label %while.cond
    i32 5, label %fail.loopexit
  ], !llvm.loop !1412

while.end:                                        ; preds = %while.cond
  %.lcssa = phi %struct.cpp_hashnode** [ %32, %while.cond ], !dbg !1257
  %36 = bitcast %struct.cpp_hashnode** %.lcssa to i8*, !dbg !1414
  call void @free(i8* %36) #8, !dbg !1415
  store %struct.cpp_hashnode** null, %struct.cpp_hashnode*** %defs141, align 8, !dbg !1416
  call void @free(i8* %call116) #8, !dbg !1417
  call void @llvm.dbg.value(metadata i8* null, metadata !1242, metadata !DIExpression()), !dbg !1257
  %call166 = call i64 @read(i32 %fd, i8* nonnull %2, i64 4) #8, !dbg !1418
  %cmp167 = icmp eq i64 %call166, 4, !dbg !1420
  br i1 %cmp167, label %if.end170, label %error, !dbg !1421

if.end170:                                        ; preds = %while.end
  %37 = load i32, i32* %counter, align 4, !dbg !1422
  call void @llvm.dbg.value(metadata i32 %37, metadata !1247, metadata !DIExpression()), !dbg !1257
  %tobool171 = icmp eq i32 %37, 0, !dbg !1422
  br i1 %tobool171, label %cleanup198, label %land.lhs.true172, !dbg !1424

land.lhs.true172:                                 ; preds = %if.end170
  %counter173 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 61, !dbg !1425
  %38 = load i32, i32* %counter173, align 8, !dbg !1425
  %tobool174 = icmp eq i32 %38, 0, !dbg !1426
  br i1 %tobool174, label %cleanup198, label %if.then175, !dbg !1427

if.then175:                                       ; preds = %land.lhs.true172
  %39 = load i8, i8* %warn_invalid_pch73, align 4, !dbg !1428
  %tobool178 = icmp eq i8 %39, 0, !dbg !1428
  br i1 %tobool178, label %fail, label %if.then179, !dbg !1431

if.then179:                                       ; preds = %if.then175
  %call180 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %r, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %name) #8, !dbg !1432
  br label %fail, !dbg !1432

error.loopexit:                                   ; preds = %cleanup
  br label %error, !dbg !1433

error:                                            ; preds = %error.loopexit, %while.end, %for.end
  call void @llvm.dbg.label(metadata !1255), !dbg !1434
  %call183 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %r, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1433
  br label %cleanup198, !dbg !1435

fail.loopexit:                                    ; preds = %cleanup161
  br label %fail, !dbg !1436

fail.loopexit2:                                   ; preds = %cleanup
  %namebuf.2.lcssa18 = phi i8* [ %namebuf.2, %cleanup ], !dbg !1257
  call void @llvm.dbg.value(metadata i8* %namebuf.2.lcssa18, metadata !1241, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %namebuf.2.lcssa18, metadata !1241, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %namebuf.2.lcssa18, metadata !1241, metadata !DIExpression()), !dbg !1257
  br label %fail, !dbg !1436

fail:                                             ; preds = %fail.loopexit2, %fail.loopexit, %if.then175, %if.then179
  %undeftab.0 = phi i8* [ null, %if.then179 ], [ null, %if.then175 ], [ %call116, %fail.loopexit ], [ null, %fail.loopexit2 ], !dbg !1257
  %namebuf.3 = phi i8* [ null, %if.then179 ], [ null, %if.then175 ], [ null, %fail.loopexit ], [ %namebuf.2.lcssa18, %fail.loopexit2 ], !dbg !1257
  call void @llvm.dbg.value(metadata i8* %namebuf.3, metadata !1241, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i8* %undeftab.0, metadata !1242, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.label(metadata !1256), !dbg !1438
  %cmp184 = icmp eq i8* %namebuf.3, null, !dbg !1436
  br i1 %cmp184, label %if.end187, label %if.then186, !dbg !1439

if.then186:                                       ; preds = %fail
  call void @free(i8* nonnull %namebuf.3) #8, !dbg !1440
  br label %if.end187, !dbg !1440

if.end187:                                        ; preds = %fail, %if.then186
  %cmp188 = icmp eq i8* %undeftab.0, null, !dbg !1441
  br i1 %cmp188, label %if.end191, label %if.then190, !dbg !1443

if.then190:                                       ; preds = %if.end187
  call void @free(i8* nonnull %undeftab.0) #8, !dbg !1444
  br label %if.end191, !dbg !1444

if.end191:                                        ; preds = %if.end187, %if.then190
  %defs192 = getelementptr inbounds %struct.ht_node_list, %struct.ht_node_list* %nl, i64 0, i32 0, !dbg !1445
  %40 = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %defs192, align 8, !dbg !1445
  %cmp193 = icmp eq %struct.cpp_hashnode** %40, null, !dbg !1447
  br i1 %cmp193, label %cleanup198, label %if.then195, !dbg !1448

if.then195:                                       ; preds = %if.end191
  %41 = bitcast %struct.cpp_hashnode** %40 to i8*, !dbg !1448
  call void @free(i8* nonnull %41) #8, !dbg !1449
  br label %cleanup198, !dbg !1449

cleanup198.loopexit:                              ; preds = %cleanup161
  br label %cleanup198, !dbg !1450

cleanup198.loopexit1:                             ; preds = %cleanup
  br label %cleanup198, !dbg !1450

cleanup198:                                       ; preds = %cleanup198.loopexit1, %cleanup198.loopexit, %land.lhs.true172, %if.end170, %if.end191, %if.then195, %error
  %retval.0 = phi i32 [ -1, %error ], [ 0, %land.lhs.true172 ], [ 0, %if.end170 ], [ 1, %if.then195 ], [ 1, %if.end191 ], [ undef, %cleanup198.loopexit ], [ undef, %cleanup198.loopexit1 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #11, !dbg !1450
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #11, !dbg !1450
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11, !dbg !1450
  ret i32 %retval.0, !dbg !1450
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32, i64, i32) local_unnamed_addr #4

declare dso_local %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader*, i8*, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @cpp_error(%struct.cpp_reader*, i32, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #5

declare dso_local i8* @cpp_macro_definition(%struct.cpp_reader*, %struct.cpp_hashnode*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @ustrlen(i8* %s1) unnamed_addr #0 !dbg !1451 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !1455, metadata !DIExpression()), !dbg !1456
  %call = tail call i64 @strlen(i8* %s1) #10, !dbg !1457
  ret i64 %call, !dbg !1458
}

; Function Attrs: nounwind uwtable
define internal i32 @collect_ht_nodes(%struct.cpp_reader* %pfile, %struct.cpp_hashnode* %hn, i8* %nl_p) #2 !dbg !1459 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1461, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %hn, metadata !1462, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8* %nl_p, metadata !1463, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i8* %nl_p, metadata !1464, metadata !DIExpression()), !dbg !1466
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %hn, i64 0, i32 3, !dbg !1467
  %bf.load = load i16, i16* %type, align 2, !dbg !1467
  %bf.clear = and i16 %bf.load, 63, !dbg !1467
  %cmp = icmp eq i16 %bf.clear, 0, !dbg !1469
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !1470

lor.lhs.false:                                    ; preds = %entry
  %0 = trunc i16 %bf.load to i8, !dbg !1471
  %tobool = icmp slt i8 %0, 0, !dbg !1471
  br i1 %tobool, label %if.then, label %if.end12, !dbg !1472

if.then:                                          ; preds = %entry, %lor.lhs.false
  %n_defs = getelementptr inbounds i8, i8* %nl_p, i64 8, !dbg !1473
  %1 = bitcast i8* %n_defs to i64*, !dbg !1473
  %2 = load i64, i64* %1, align 8, !dbg !1473
  %asize = getelementptr inbounds i8, i8* %nl_p, i64 16, !dbg !1476
  %3 = bitcast i8* %asize to i64*, !dbg !1476
  %4 = load i64, i64* %3, align 8, !dbg !1476
  %cmp3 = icmp eq i64 %2, %4, !dbg !1477
  br i1 %cmp3, label %if.then4, label %if.then.if.end_crit_edge, !dbg !1478

if.then.if.end_crit_edge:                         ; preds = %if.then
  %defs9.phi.trans.insert = bitcast i8* %nl_p to %struct.cpp_hashnode***, !dbg !1479
  %.pre = load %struct.cpp_hashnode**, %struct.cpp_hashnode*** %defs9.phi.trans.insert, align 8, !dbg !1480
  br label %if.end, !dbg !1478

if.then4:                                         ; preds = %if.then
  %mul = shl i64 %2, 1, !dbg !1481
  store i64 %mul, i64* %3, align 8, !dbg !1481
  %5 = bitcast i8* %nl_p to i8**, !dbg !1483
  %6 = load i8*, i8** %5, align 8, !dbg !1483
  %mul7 = shl i64 %2, 4, !dbg !1483
  %call = tail call i8* @xrealloc(i8* %6, i64 %mul7) #8, !dbg !1483
  store i8* %call, i8** %5, align 8, !dbg !1484
  %7 = bitcast i8* %call to %struct.cpp_hashnode**, !dbg !1485
  %.pre1 = load i64, i64* %1, align 8, !dbg !1486
  br label %if.end, !dbg !1485

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then4
  %8 = phi i64 [ %2, %if.then.if.end_crit_edge ], [ %.pre1, %if.then4 ], !dbg !1486
  %9 = phi %struct.cpp_hashnode** [ %.pre, %if.then.if.end_crit_edge ], [ %7, %if.then4 ], !dbg !1480
  %arrayidx = getelementptr inbounds %struct.cpp_hashnode*, %struct.cpp_hashnode** %9, i64 %8, !dbg !1487
  store %struct.cpp_hashnode* %hn, %struct.cpp_hashnode** %arrayidx, align 8, !dbg !1488
  %10 = load i64, i64* %1, align 8, !dbg !1489
  %inc = add i64 %10, 1, !dbg !1489
  store i64 %inc, i64* %1, align 8, !dbg !1489
  br label %if.end12, !dbg !1490

if.end12:                                         ; preds = %if.end, %lor.lhs.false
  ret i32 1, !dbg !1491
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ustrcmp(i8* %s1, i8* %s2) unnamed_addr #0 !dbg !1492 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !1496, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8* %s2, metadata !1497, metadata !DIExpression()), !dbg !1498
  %call = tail call i32 @strcmp(i8* %s1, i8* %s2) #10, !dbg !1499
  ret i32 %call, !dbg !1500
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #6

; Function Attrs: nounwind uwtable
define dso_local void @cpp_prepare_state(%struct.cpp_reader* %r, %struct.save_macro_data** %data) local_unnamed_addr #2 !dbg !1501 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %r, metadata !1506, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata %struct.save_macro_data** %data, metadata !1507, metadata !DIExpression()), !dbg !1509
  %call = tail call i8* @xmalloc(i64 32) #8, !dbg !1510
  call void @llvm.dbg.value(metadata i8* %call, metadata !1508, metadata !DIExpression()), !dbg !1509
  %array_size = getelementptr inbounds i8, i8* %call, i64 16, !dbg !1511
  %0 = bitcast i8* %array_size to i64*, !dbg !1511
  store i64 512, i64* %0, align 8, !dbg !1512
  %call2 = tail call i8* @xmalloc(i64 4096) #8, !dbg !1513
  %1 = bitcast i8* %call to i8**, !dbg !1514
  store i8* %call2, i8** %1, align 8, !dbg !1514
  %count = getelementptr inbounds i8, i8* %call, i64 8, !dbg !1515
  %2 = bitcast i8* %count to i64*, !dbg !1515
  store i64 0, i64* %2, align 8, !dbg !1516
  tail call void @cpp_forall_identifiers(%struct.cpp_reader* %r, i32 (%struct.cpp_reader*, %struct.cpp_hashnode*, i8*)* nonnull @save_macros, i8* %call) #8, !dbg !1517
  %call3 = tail call i8** @_cpp_save_pragma_names(%struct.cpp_reader* %r) #8, !dbg !1518
  %saved_pragmas = getelementptr inbounds i8, i8* %call, i64 24, !dbg !1519
  %3 = bitcast i8* %saved_pragmas to i8***, !dbg !1519
  store i8** %call3, i8*** %3, align 8, !dbg !1520
  %4 = bitcast %struct.save_macro_data** %data to i8**, !dbg !1521
  store i8* %call, i8** %4, align 8, !dbg !1521
  ret void, !dbg !1522
}

; Function Attrs: nounwind uwtable
define internal i32 @save_macros(%struct.cpp_reader* %r, %struct.cpp_hashnode* %h, i8* %data_p) #2 !dbg !1523 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %r, metadata !1525, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %h, metadata !1526, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8* %data_p, metadata !1527, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8* %data_p, metadata !1528, metadata !DIExpression()), !dbg !1535
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %h, i64 0, i32 3, !dbg !1536
  %bf.load = load i16, i16* %type, align 2, !dbg !1536
  %bf.clear = and i16 %bf.load, 63, !dbg !1536
  %cmp = icmp eq i16 %bf.clear, 0, !dbg !1537
  br i1 %cmp, label %cleanup, label %land.lhs.true, !dbg !1538

land.lhs.true:                                    ; preds = %entry
  %0 = and i16 %bf.load, 256, !dbg !1539
  %cmp3 = icmp eq i16 %0, 0, !dbg !1540
  br i1 %cmp3, label %if.then, label %cleanup, !dbg !1541

if.then:                                          ; preds = %land.lhs.true
  %count = getelementptr inbounds i8, i8* %data_p, i64 8, !dbg !1542
  %1 = bitcast i8* %count to i64*, !dbg !1542
  %2 = load i64, i64* %1, align 8, !dbg !1542
  %array_size = getelementptr inbounds i8, i8* %data_p, i64 16, !dbg !1544
  %3 = bitcast i8* %array_size to i64*, !dbg !1544
  %4 = load i64, i64* %3, align 8, !dbg !1544
  %cmp4 = icmp eq i64 %2, %4, !dbg !1545
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !1546

if.then5:                                         ; preds = %if.then
  %mul = shl i64 %2, 1, !dbg !1547
  store i64 %mul, i64* %3, align 8, !dbg !1547
  %5 = bitcast i8* %data_p to i8**, !dbg !1549
  %6 = load i8*, i8** %5, align 8, !dbg !1549
  %mul8 = shl i64 %2, 4, !dbg !1549
  %call = tail call i8* @xrealloc(i8* %6, i64 %mul8) #8, !dbg !1549
  store i8* %call, i8** %5, align 8, !dbg !1550
  %bf.load11.pre = load i16, i16* %type, align 2, !dbg !1551
  %.pre = and i16 %bf.load11.pre, 63, !dbg !1551
  br label %if.end, !dbg !1552

if.end:                                           ; preds = %if.then5, %if.then
  %bf.clear12.pre-phi = phi i16 [ %.pre, %if.then5 ], [ %bf.clear, %if.then ], !dbg !1551
  %bf.cast13 = zext i16 %bf.clear12.pre-phi to i32, !dbg !1551
  switch i32 %bf.cast13, label %sw.default [
    i32 2, label %cleanup
    i32 1, label %sw.bb14
  ], !dbg !1553

sw.bb14:                                          ; preds = %if.end
  %call15 = tail call i8* @cpp_macro_definition(%struct.cpp_reader* %r, %struct.cpp_hashnode* %h) #8, !dbg !1554
  call void @llvm.dbg.value(metadata i8* %call15, metadata !1529, metadata !DIExpression()), !dbg !1555
  %call16 = tail call fastcc i64 @ustrlen(i8* %call15) #9, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %call16, metadata !1534, metadata !DIExpression()), !dbg !1555
  %add = add i64 %call16, 2, !dbg !1557
  %call17 = tail call i8* @xmemdup(i8* %call15, i64 %call16, i64 %add) #8, !dbg !1558
  %defns18 = bitcast i8* %data_p to i8***, !dbg !1559
  %7 = load i8**, i8*** %defns18, align 8, !dbg !1559
  %8 = load i64, i64* %1, align 8, !dbg !1560
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %8, !dbg !1561
  store i8* %call17, i8** %arrayidx, align 8, !dbg !1562
  %9 = load i8**, i8*** %defns18, align 8, !dbg !1563
  %10 = load i64, i64* %1, align 8, !dbg !1564
  %arrayidx22 = getelementptr inbounds i8*, i8** %9, i64 %10, !dbg !1565
  %11 = load i8*, i8** %arrayidx22, align 8, !dbg !1565
  %arrayidx23 = getelementptr inbounds i8, i8* %11, i64 %call16, !dbg !1565
  store i8 10, i8* %arrayidx23, align 1, !dbg !1566
  %12 = load i64, i64* %1, align 8, !dbg !1567
  %inc = add i64 %12, 1, !dbg !1567
  store i64 %inc, i64* %1, align 8, !dbg !1567
  br label %cleanup, !dbg !1568

sw.default:                                       ; preds = %if.end
  tail call void @abort() #12, !dbg !1569
  unreachable, !dbg !1569

cleanup:                                          ; preds = %entry, %land.lhs.true, %sw.bb14, %if.end
  ret i32 1, !dbg !1570
}

declare dso_local i8** @_cpp_save_pragma_names(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @cpp_read_state(%struct.cpp_reader* %r, i8* %name, %struct._IO_FILE* %f, %struct.save_macro_data* %data) local_unnamed_addr #2 !dbg !1571 {
entry:
  %old_state = alloca %struct.lexer_state, align 4
  %counter = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %r, metadata !1575, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i8* %name, metadata !1576, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !1577, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata %struct.save_macro_data* %data, metadata !1578, metadata !DIExpression()), !dbg !1592
  %0 = getelementptr inbounds %struct.lexer_state, %struct.lexer_state* %old_state, i64 0, i32 0, !dbg !1593
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #11, !dbg !1593
  %1 = bitcast i32* %counter to i8*, !dbg !1594
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11, !dbg !1594
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %r, metadata !1582, metadata !DIExpression(DW_OP_plus_uconst, 1168, DW_OP_stack_value)), !dbg !1595
  %call = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %r, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 7) #8, !dbg !1596
  %n_defined = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 54, i32 0, !dbg !1597
  store %struct.cpp_hashnode* %call, %struct.cpp_hashnode** %n_defined, align 8, !dbg !1598
  %call1 = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %r, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4) #8, !dbg !1599
  %n_true = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 54, i32 1, !dbg !1600
  store %struct.cpp_hashnode* %call1, %struct.cpp_hashnode** %n_true, align 8, !dbg !1601
  %call2 = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %r, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 5) #8, !dbg !1602
  %n_false = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 54, i32 2, !dbg !1603
  store %struct.cpp_hashnode* %call2, %struct.cpp_hashnode** %n_false, align 8, !dbg !1604
  %call3 = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %r, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 11) #8, !dbg !1605
  %n__VA_ARGS__ = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 54, i32 3, !dbg !1606
  store %struct.cpp_hashnode* %call3, %struct.cpp_hashnode** %n__VA_ARGS__, align 8, !dbg !1607
  %2 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 2, i32 0, !dbg !1608
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %0, i8* nonnull align 8 %2, i64 20, i1 false), !dbg !1608
  store i8 1, i8* %2, align 8, !dbg !1609
  %prevent_expansion = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 2, i32 8, !dbg !1610
  store i8 1, i8* %prevent_expansion, align 8, !dbg !1611
  %angled_headers = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 2, i32 3, !dbg !1612
  store i8 0, i8* %angled_headers, align 1, !dbg !1613
  call void @llvm.dbg.value(metadata i64 0, metadata !1579, metadata !DIExpression()), !dbg !1592
  %count = getelementptr inbounds %struct.save_macro_data, %struct.save_macro_data* %data, i64 0, i32 1, !dbg !1614
  %defns = getelementptr inbounds %struct.save_macro_data, %struct.save_macro_data* %data, i64 0, i32 0, !dbg !1615
  br label %for.cond, !dbg !1616

for.cond:                                         ; preds = %if.end24, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %if.end24 ], !dbg !1617
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1579, metadata !DIExpression()), !dbg !1592
  %3 = load i64, i64* %count, align 8, !dbg !1618
  %cmp = icmp ult i64 %i.0, %3, !dbg !1619
  br i1 %cmp, label %for.body, label %for.end, !dbg !1620

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %defns, align 8, !dbg !1621
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %i.0, !dbg !1622
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !1622
  %call7 = tail call fastcc i32 @ustrcspn(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !1623
  %conv = sext i32 %call7 to i64, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1589, metadata !DIExpression()), !dbg !1615
  %6 = load i8**, i8*** %defns, align 8, !dbg !1624
  %arrayidx9 = getelementptr inbounds i8*, i8** %6, i64 %i.0, !dbg !1625
  %7 = load i8*, i8** %arrayidx9, align 8, !dbg !1625
  %call11 = tail call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %r, i8* %7, i32 %call7) #8, !dbg !1626
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call11, metadata !1585, metadata !DIExpression()), !dbg !1615
  %8 = load i8**, i8*** %defns, align 8, !dbg !1627
  %arrayidx13 = getelementptr inbounds i8*, i8** %8, i64 %i.0, !dbg !1628
  %9 = load i8*, i8** %arrayidx13, align 8, !dbg !1628
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %conv, !dbg !1629
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1590, metadata !DIExpression()), !dbg !1615
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call11, i64 0, i32 3, !dbg !1630
  %bf.load = load i16, i16* %type, align 2, !dbg !1630
  %bf.clear = and i16 %bf.load, 63, !dbg !1630
  %cmp14 = icmp eq i16 %bf.clear, 0, !dbg !1632
  br i1 %cmp14, label %if.then, label %if.end24, !dbg !1633

if.then:                                          ; preds = %for.body
  %call16 = tail call fastcc i8* @ustrchr(i8* %add.ptr, i32 10) #9, !dbg !1634
  %sub.ptr.lhs.cast = ptrtoint i8* %call16 to i64, !dbg !1637
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr to i64, !dbg !1637
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1637
  %call17 = tail call %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader* %r, i8* %add.ptr, i64 %sub.ptr.sub, i32 1) #8, !dbg !1638
  %cmp18 = icmp eq %struct.cpp_buffer* %call17, null, !dbg !1639
  br i1 %cmp18, label %if.else, label %if.then20, !dbg !1640

if.then20:                                        ; preds = %if.then
  tail call void @_cpp_clean_line(%struct.cpp_reader* %r) #8, !dbg !1641
  %call21 = tail call zeroext i8 @_cpp_create_definition(%struct.cpp_reader* %r, %struct.cpp_hashnode* %call11) #8, !dbg !1643
  %tobool = icmp eq i8 %call21, 0, !dbg !1643
  br i1 %tobool, label %if.then22, label %if.end, !dbg !1645

if.then22:                                        ; preds = %if.then20
  tail call void @abort() #12, !dbg !1646
  unreachable, !dbg !1646

if.end:                                           ; preds = %if.then20
  tail call void @_cpp_pop_buffer(%struct.cpp_reader* %r) #8, !dbg !1647
  %.pre = load i8**, i8*** %defns, align 8, !dbg !1648
  %arrayidx26.phi.trans.insert = getelementptr inbounds i8*, i8** %.pre, i64 %i.0, !dbg !1615
  %.pre1 = load i8*, i8** %arrayidx26.phi.trans.insert, align 8, !dbg !1649
  br label %if.end24, !dbg !1650

if.else:                                          ; preds = %if.then
  tail call void @abort() #12, !dbg !1651
  unreachable, !dbg !1651

if.end24:                                         ; preds = %if.end, %for.body
  %10 = phi i8* [ %.pre1, %if.end ], [ %9, %for.body ], !dbg !1649
  tail call void @free(i8* %10) #8, !dbg !1652
  %inc = add i64 %i.0, 1, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1579, metadata !DIExpression()), !dbg !1592
  br label %for.cond, !dbg !1654, !llvm.loop !1655

for.end:                                          ; preds = %for.cond
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 4 %0, i64 20, i1 false), !dbg !1657
  %saved_pragmas = getelementptr inbounds %struct.save_macro_data, %struct.save_macro_data* %data, i64 0, i32 3, !dbg !1658
  %11 = load i8**, i8*** %saved_pragmas, align 8, !dbg !1658
  tail call void @_cpp_restore_pragma_names(%struct.cpp_reader* %r, i8** %11) #8, !dbg !1659
  %12 = bitcast %struct.save_macro_data* %data to i8*, !dbg !1660
  tail call void @free(i8* %12) #8, !dbg !1661
  %deps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 45, !dbg !1662
  %13 = load %struct.deps*, %struct.deps** %deps, align 8, !dbg !1662
  %restore_pch_deps = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 53, i32 42, !dbg !1664
  %14 = load i8, i8* %restore_pch_deps, align 1, !dbg !1664
  %tobool29 = icmp eq i8 %14, 0, !dbg !1664
  %name. = select i1 %tobool29, i8* null, i8* %name, !dbg !1664
  %call30 = tail call i32 @deps_restore(%struct.deps* %13, %struct._IO_FILE* %f, i8* %name.) #8, !dbg !1665
  %cmp31 = icmp eq i32 %call30, 0, !dbg !1666
  br i1 %cmp31, label %if.end34, label %error, !dbg !1667

if.end34:                                         ; preds = %for.end
  %call35 = tail call zeroext i8 @_cpp_read_file_entries(%struct.cpp_reader* %r, %struct._IO_FILE* %f) #8, !dbg !1668
  %tobool36 = icmp eq i8 %call35, 0, !dbg !1668
  br i1 %tobool36, label %error, label %if.end38, !dbg !1670

if.end38:                                         ; preds = %if.end34
  %call39 = call i64 @fread(i8* nonnull %1, i64 4, i64 1, %struct._IO_FILE* %f) #8, !dbg !1671
  %cmp40 = icmp eq i64 %call39, 1, !dbg !1673
  br i1 %cmp40, label %if.end43, label %error, !dbg !1674

if.end43:                                         ; preds = %if.end38
  %counter44 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 61, !dbg !1675
  %15 = load i32, i32* %counter44, align 8, !dbg !1675
  %tobool45 = icmp eq i32 %15, 0, !dbg !1677
  br i1 %tobool45, label %if.then46, label %if.end48, !dbg !1678

if.then46:                                        ; preds = %if.end43
  %16 = load i32, i32* %counter, align 4, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %16, metadata !1581, metadata !DIExpression()), !dbg !1592
  store i32 %16, i32* %counter44, align 8, !dbg !1680
  br label %if.end48, !dbg !1681

if.end48:                                         ; preds = %if.end43, %if.then46
  %call49 = call fastcc i32 @_cpp_restore_pushed_macros(%struct.cpp_reader* %r, %struct._IO_FILE* %f) #9, !dbg !1682
  %tobool50 = icmp eq i32 %call49, 0, !dbg !1682
  br i1 %tobool50, label %error, label %cleanup, !dbg !1684

error:                                            ; preds = %if.end48, %if.end38, %if.end34, %for.end
  call void @llvm.dbg.label(metadata !1591), !dbg !1685
  %call53 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %r, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1686
  br label %cleanup, !dbg !1687

cleanup:                                          ; preds = %if.end48, %error
  %retval.0 = phi i32 [ -1, %error ], [ 0, %if.end48 ], !dbg !1592
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11, !dbg !1688
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #11, !dbg !1688
  ret i32 %retval.0, !dbg !1688
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ustrcspn(i8* %s1, i8* %s2) unnamed_addr #0 !dbg !1689 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !1693, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), metadata !1694, metadata !DIExpression()), !dbg !1695
  %call = tail call i64 @strcspn(i8* %s1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !1696
  %conv = trunc i64 %call to i32, !dbg !1696
  ret i32 %conv, !dbg !1697
}

declare dso_local %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader*, i8*, i64, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @ustrchr(i8* %s1, i32 %c) unnamed_addr #0 !dbg !1698 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !1702, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i32 10, metadata !1703, metadata !DIExpression()), !dbg !1704
  %call = tail call i8* @strchr(i8* %s1, i32 10) #10, !dbg !1705
  ret i8* %call, !dbg !1706
}

declare dso_local void @_cpp_clean_line(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local zeroext i8 @_cpp_create_definition(%struct.cpp_reader*, %struct.cpp_hashnode*) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #7

declare dso_local void @_cpp_pop_buffer(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local void @_cpp_restore_pragma_names(%struct.cpp_reader*, i8**) local_unnamed_addr #1

declare dso_local i32 @deps_restore(%struct.deps*, %struct._IO_FILE*, i8*) local_unnamed_addr #1

declare dso_local zeroext i8 @_cpp_read_file_entries(%struct.cpp_reader*, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_cpp_restore_pushed_macros(%struct.cpp_reader* %r, %struct._IO_FILE* %f) unnamed_addr #2 !dbg !1707 {
entry:
  %count_saved = alloca i64, align 8
  %nlen = alloca i64, align 8
  %defnlen = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %r, metadata !1709, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !1710, metadata !DIExpression()), !dbg !1725
  %0 = bitcast i64* %count_saved to i8*, !dbg !1726
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11, !dbg !1726
  call void @llvm.dbg.value(metadata i64 0, metadata !1711, metadata !DIExpression()), !dbg !1725
  store i64 0, i64* %count_saved, align 8, !dbg !1727
  %1 = bitcast i64* %nlen to i8*, !dbg !1728
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11, !dbg !1728
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* null, metadata !1715, metadata !DIExpression()), !dbg !1725
  %2 = bitcast i64* %defnlen to i8*, !dbg !1729
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #11, !dbg !1729
  %call = call i64 @fread(i8* nonnull %0, i64 8, i64 1, %struct._IO_FILE* %f) #8, !dbg !1730
  %cmp = icmp eq i64 %call, 1, !dbg !1732
  br i1 %cmp, label %if.end, label %cleanup, !dbg !1733

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %count_saved, align 8, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %3, metadata !1711, metadata !DIExpression()), !dbg !1725
  %tobool = icmp eq i64 %3, 0, !dbg !1734
  br i1 %tobool, label %cleanup, label %for.cond.preheader, !dbg !1736

for.cond.preheader:                               ; preds = %if.end
  %pushed_macros = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %r, i64 0, i32 63, !dbg !1737
  %4 = bitcast %struct.def_pragma_macro** %pushed_macros to i64*, !dbg !1737
  %5 = bitcast %struct.def_pragma_macro** %pushed_macros to i8**, !dbg !1737
  br label %for.cond, !dbg !1738

for.cond:                                         ; preds = %for.cond.preheader, %if.end46
  %6 = phi i64 [ %.pre, %if.end46 ], [ %3, %for.cond.preheader ], !dbg !1739
  %i.0 = phi i64 [ %inc, %if.end46 ], [ 0, %for.cond.preheader ], !dbg !1740
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1712, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i64 %6, metadata !1711, metadata !DIExpression()), !dbg !1725
  %cmp3 = icmp ult i64 %i.0, %6, !dbg !1741
  br i1 %cmp3, label %for.body, label %cleanup.loopexit, !dbg !1738

for.body:                                         ; preds = %for.cond
  %call4 = call i64 @fread(i8* nonnull %1, i64 8, i64 1, %struct._IO_FILE* %f) #8, !dbg !1742
  %cmp5 = icmp eq i64 %call4, 1, !dbg !1744
  br i1 %cmp5, label %if.end7, label %cleanup.loopexit, !dbg !1745

if.end7:                                          ; preds = %for.body
  %call8 = call i8* @xmalloc(i64 24) #8, !dbg !1746
  call void @llvm.dbg.value(metadata i8* %call8, metadata !1713, metadata !DIExpression()), !dbg !1725
  %7 = load i64, i64* %nlen, align 8, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %7, metadata !1714, metadata !DIExpression()), !dbg !1725
  %add = add i64 %7, 1, !dbg !1747
  %call9 = call i8* @xmalloc(i64 %add) #8, !dbg !1747
  %name = getelementptr inbounds i8, i8* %call8, i64 8, !dbg !1748
  %8 = bitcast i8* %name to i8**, !dbg !1748
  store i8* %call9, i8** %8, align 8, !dbg !1749
  %9 = load i64, i64* %nlen, align 8, !dbg !1750
  call void @llvm.dbg.value(metadata i64 %9, metadata !1714, metadata !DIExpression()), !dbg !1725
  %arrayidx = getelementptr inbounds i8, i8* %call9, i64 %9, !dbg !1751
  store i8 0, i8* %arrayidx, align 1, !dbg !1752
  %10 = load i8*, i8** %8, align 8, !dbg !1753
  %11 = load i64, i64* %nlen, align 8, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %11, metadata !1714, metadata !DIExpression()), !dbg !1725
  %call12 = call i64 @fread(i8* %10, i64 %11, i64 1, %struct._IO_FILE* %f) #8, !dbg !1756
  %cmp13 = icmp eq i64 %call12, 1, !dbg !1757
  br i1 %cmp13, label %if.end15, label %cleanup.loopexit, !dbg !1758

if.end15:                                         ; preds = %if.end7
  %12 = load i8*, i8** %8, align 8, !dbg !1759
  %call17 = call %struct.cpp_macro* @cpp_push_definition(%struct.cpp_reader* %r, i8* %12) #8, !dbg !1760
  call void @llvm.dbg.value(metadata %struct.cpp_macro* %call17, metadata !1716, metadata !DIExpression()), !dbg !1725
  %call18 = call i64 @fread(i8* nonnull %2, i64 8, i64 1, %struct._IO_FILE* %f) #8, !dbg !1761
  %cmp19 = icmp eq i64 %call18, 1, !dbg !1763
  br i1 %cmp19, label %if.end21, label %cleanup.loopexit, !dbg !1764

if.end21:                                         ; preds = %if.end15
  %13 = load i64, i64* %defnlen, align 8, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %13, metadata !1718, metadata !DIExpression()), !dbg !1725
  %add22 = add i64 %13, 2, !dbg !1765
  %call23 = call i8* @xmalloc(i64 %add22) #8, !dbg !1765
  call void @llvm.dbg.value(metadata i8* %call23, metadata !1717, metadata !DIExpression()), !dbg !1725
  %14 = load i64, i64* %defnlen, align 8, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %14, metadata !1718, metadata !DIExpression()), !dbg !1725
  %arrayidx24 = getelementptr inbounds i8, i8* %call23, i64 %14, !dbg !1767
  store i8 10, i8* %arrayidx24, align 1, !dbg !1768
  %15 = load i64, i64* %defnlen, align 8, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %15, metadata !1718, metadata !DIExpression()), !dbg !1725
  %add25 = add i64 %15, 1, !dbg !1770
  %arrayidx26 = getelementptr inbounds i8, i8* %call23, i64 %add25, !dbg !1771
  store i8 0, i8* %arrayidx26, align 1, !dbg !1772
  %16 = load i64, i64* %defnlen, align 8, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %16, metadata !1718, metadata !DIExpression()), !dbg !1725
  %call27 = call i64 @fread(i8* %call23, i64 %16, i64 1, %struct._IO_FILE* %f) #8, !dbg !1775
  %cmp28 = icmp eq i64 %call27, 1, !dbg !1776
  br i1 %cmp28, label %if.end30, label %cleanup.loopexit, !dbg !1777

if.end30:                                         ; preds = %if.end21
  %17 = load i8*, i8** %8, align 8, !dbg !1778
  call void @cpp_pop_definition(%struct.cpp_reader* %r, i8* %17, %struct.cpp_macro* null) #8, !dbg !1779
  %call32 = call fastcc i32 @ustrcspn(i8* %call23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !1780
  %conv = sext i32 %call32 to i64, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1719, metadata !DIExpression()), !dbg !1781
  %call34 = call %struct.cpp_hashnode* @cpp_lookup(%struct.cpp_reader* %r, i8* %call23, i32 %call32) #8, !dbg !1782
  call void @llvm.dbg.value(metadata %struct.cpp_hashnode* %call34, metadata !1715, metadata !DIExpression()), !dbg !1725
  %add.ptr = getelementptr inbounds i8, i8* %call23, i64 %conv, !dbg !1783
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1724, metadata !DIExpression()), !dbg !1781
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %call34, i64 0, i32 3, !dbg !1784
  %bf.load = load i16, i16* %type, align 2, !dbg !1785
  %18 = and i16 %bf.load, -10688, !dbg !1786
  store i16 %18, i16* %type, align 2, !dbg !1786
  %call38 = call fastcc i8* @ustrchr(i8* %add.ptr, i32 10) #9, !dbg !1787
  %sub.ptr.lhs.cast = ptrtoint i8* %call38 to i64, !dbg !1789
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr to i64, !dbg !1789
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1789
  %call39 = call %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader* %r, i8* %add.ptr, i64 %sub.ptr.sub, i32 1) #8, !dbg !1790
  %cmp40 = icmp eq %struct.cpp_buffer* %call39, null, !dbg !1791
  br i1 %cmp40, label %if.else, label %if.then42, !dbg !1792

if.then42:                                        ; preds = %if.end30
  call void @_cpp_clean_line(%struct.cpp_reader* %r) #8, !dbg !1793
  %call43 = call zeroext i8 @_cpp_create_definition(%struct.cpp_reader* %r, %struct.cpp_hashnode* %call34) #8, !dbg !1795
  %tobool44 = icmp eq i8 %call43, 0, !dbg !1795
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !1797

if.then45:                                        ; preds = %if.then42
  call void @abort() #12, !dbg !1798
  unreachable, !dbg !1798

if.end46:                                         ; preds = %if.then42
  call void @_cpp_pop_buffer(%struct.cpp_reader* %r) #8, !dbg !1799
  %19 = load i8*, i8** %8, align 8, !dbg !1800
  %call49 = call %struct.cpp_macro* @cpp_push_definition(%struct.cpp_reader* %r, i8* %19) #8, !dbg !1801
  %value = getelementptr inbounds i8, i8* %call8, i64 16, !dbg !1802
  %20 = bitcast i8* %value to %struct.cpp_macro**, !dbg !1802
  store %struct.cpp_macro* %call49, %struct.cpp_macro** %20, align 8, !dbg !1803
  call void @free(i8* %call23) #8, !dbg !1804
  %21 = load i64, i64* %4, align 8, !dbg !1805
  %22 = bitcast i8* %call8 to i64*, !dbg !1806
  store i64 %21, i64* %22, align 8, !dbg !1806
  store i8* %call8, i8** %5, align 8, !dbg !1807
  %23 = load i8*, i8** %8, align 8, !dbg !1808
  call void @cpp_pop_definition(%struct.cpp_reader* %r, i8* %23, %struct.cpp_macro* %call17) #8, !dbg !1809
  %inc = add i64 %i.0, 1, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1712, metadata !DIExpression()), !dbg !1725
  %.pre = load i64, i64* %count_saved, align 8, !dbg !1739
  br label %for.cond, !dbg !1811, !llvm.loop !1812

if.else:                                          ; preds = %if.end30
  call void @abort() #12, !dbg !1814
  unreachable, !dbg !1814

cleanup.loopexit:                                 ; preds = %for.cond, %for.body, %if.end7, %if.end15, %if.end21
  %retval.0.ph = phi i32 [ 1, %for.cond ], [ 0, %if.end21 ], [ 0, %if.end15 ], [ 0, %if.end7 ], [ 0, %for.body ]
  br label %cleanup, !dbg !1815

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !1725
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #11, !dbg !1815
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11, !dbg !1815
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11, !dbg !1815
  ret i32 %retval.0, !dbg !1815
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hashmem(i8* %p_p, i64 %sz) unnamed_addr #2 !dbg !1816 {
entry:
  call void @llvm.dbg.value(metadata i8* %p_p, metadata !1820, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 %sz, metadata !1821, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i8* %p_p, metadata !1822, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i32 0, metadata !1824, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 0, metadata !1823, metadata !DIExpression()), !dbg !1825
  br label %for.cond, !dbg !1826

for.cond:                                         ; preds = %for.body, %entry
  %p.0 = phi i8* [ %p_p, %entry ], [ %incdec.ptr, %for.body ], !dbg !1825
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.body ], !dbg !1828
  %h.0 = phi i32 [ 0, %entry ], [ %sub1, %for.body ], !dbg !1825
  call void @llvm.dbg.value(metadata i32 %h.0, metadata !1824, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1823, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !1822, metadata !DIExpression()), !dbg !1825
  %exitcond = icmp eq i64 %i.0, %sz, !dbg !1829
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1831

for.body:                                         ; preds = %for.cond
  %mul = mul i32 %h.0, 67, !dbg !1832
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !1833
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1822, metadata !DIExpression()), !dbg !1825
  %0 = load i8, i8* %p.0, align 1, !dbg !1834
  %conv = zext i8 %0 to i32, !dbg !1834
  %sub = add nsw i32 %conv, -113, !dbg !1835
  %sub1 = sub i32 %mul, %sub, !dbg !1836
  call void @llvm.dbg.value(metadata i32 %sub1, metadata !1824, metadata !DIExpression()), !dbg !1825
  %inc = add i64 %i.0, 1, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1823, metadata !DIExpression()), !dbg !1825
  br label %for.cond, !dbg !1838, !llvm.loop !1839

for.end:                                          ; preds = %for.cond
  %h.0.lcssa = phi i32 [ %h.0, %for.cond ], !dbg !1825
  call void @llvm.dbg.value(metadata i32 %h.0.lcssa, metadata !1824, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i32 %h.0.lcssa, metadata !1824, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i32 %h.0.lcssa, metadata !1824, metadata !DIExpression()), !dbg !1825
  ret i32 %h.0.lcssa, !dbg !1841
}

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #1

declare dso_local i8* @htab_find(%struct.htab*, i8*) local_unnamed_addr #1

declare dso_local %struct.cpp_macro* @cpp_push_definition(%struct.cpp_reader*, i8*) local_unnamed_addr #1

declare dso_local void @cpp_pop_definition(%struct.cpp_reader*, i8*, %struct.cpp_macro*) local_unnamed_addr #1

declare dso_local %struct.cpp_hashnode* @_cpp_lex_identifier(%struct.cpp_reader*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) local_unnamed_addr #5

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #5

declare dso_local i8* @xmemdup(i8*, i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strcspn(i8*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!274, !275, !276}
!llvm.ident = !{!277}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, nameTableKind: None)
!1 = !DIFile(filename: "cpp_pch.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!40 = !{!41, !102, !188, !73, !69, !189, !193, !112, !202, !204, !205, !71, !258, !266, !268, !194, !259, !200}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_savedstate", file: !1, line: 110, size: 320, elements: !43)
!43 = !{!44, !99, !100, !101, !187}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "definedhash", scope: !42, file: !1, line: 113, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !46, line: 144, baseType: !47)
!46 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !46, line: 100, size: 896, elements: !49)
!49 = !{!50, !58, !64, !70, !72, !76, !77, !78, !79, !80, !85, !87, !88, !93, !98}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !48, file: !46, line: 102, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !46, line: 52, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !46, line: 47, baseType: !5)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !48, file: !46, line: 105, baseType: !59, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !46, line: 59, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !56, !56}
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !48, file: !46, line: 108, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !46, line: 63, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !48, file: !46, line: 111, baseType: !71, size: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !48, file: !46, line: 114, baseType: !73, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !48, file: !46, line: 117, baseType: !73, size: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !48, file: !46, line: 120, baseType: !73, size: 64, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !48, file: !46, line: 124, baseType: !5, size: 32, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !48, file: !46, line: 128, baseType: !5, size: 32, offset: 480)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !48, file: !46, line: 131, baseType: !81, size: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !46, line: 75, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!69, !73, !73}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !48, file: !46, line: 132, baseType: !86, size: 64, offset: 576)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !46, line: 78, baseType: !66)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !48, file: !46, line: 135, baseType: !69, size: 64, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !48, file: !46, line: 136, baseType: !89, size: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !46, line: 82, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!69, !69, !73, !73}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !48, file: !46, line: 137, baseType: !94, size: 64, offset: 768)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !46, line: 83, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !69, !69}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !48, file: !46, line: 141, baseType: !5, size: 32, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "hashsize", scope: !42, file: !1, line: 116, baseType: !73, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "n_defs", scope: !42, file: !1, line: 118, baseType: !73, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !42, file: !1, line: 120, baseType: !102, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_hashnode", file: !4, line: 36, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_hashnode", file: !4, line: 644, size: 256, elements: !106)
!106 = !{!107, !117, !118, !119, !120, !121, !122}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !105, file: !4, line: 645, baseType: !108, size: 128)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !109, line: 31, size: 128, elements: !110)
!109 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!110 = !{!111, !115, !116}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !108, file: !109, line: 32, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !108, file: !109, line: 33, baseType: !5, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !108, file: !109, line: 34, baseType: !5, size: 32, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !105, file: !4, line: 646, baseType: !5, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !105, file: !4, line: 647, baseType: !5, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !105, file: !4, line: 650, baseType: !114, size: 8, offset: 136)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !4, line: 651, baseType: !5, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !4, line: 652, baseType: !5, size: 10, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !105, file: !4, line: 654, baseType: !123, size: 64, offset: 192)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_cpp_hashnode_value", file: !4, line: 633, size: 64, elements: !124)
!124 = !{!125, !175, !185, !186}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !123, file: !4, line: 635, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_macro", file: !4, line: 37, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro", file: !129, line: 36, size: 256, elements: !130)
!129 = !DIFile(filename: "./cpp-id-data.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!130 = !{!131, !132, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !128, file: !129, line: 42, baseType: !102, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !128, file: !129, line: 51, baseType: !133, size: 64, offset: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_macro_u", file: !129, line: 47, size: 64, elements: !134)
!134 = !{!135, !165}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tokens", scope: !133, file: !129, line: 49, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !4, line: 34, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !4, line: 212, size: 192, elements: !139)
!139 = !{!140, !143, !144, !146}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !138, file: !4, line: 213, baseType: !141, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !142, line: 44, baseType: !5)
!142 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !4, line: 214, baseType: !5, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !4, line: 215, baseType: !145, size: 16, offset: 48)
!145 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !138, file: !4, line: 237, baseType: !147, size: 128, offset: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_token_u", file: !4, line: 217, size: 128, elements: !148)
!148 = !{!149, !153, !154, !159, !163, !164}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !147, file: !4, line: 220, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_identifier", file: !4, line: 201, size: 64, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !150, file: !4, line: 207, baseType: !103, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !147, file: !4, line: 223, baseType: !136, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !147, file: !4, line: 226, baseType: !155, size: 128)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !4, line: 162, size: 128, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !155, file: !4, line: 163, baseType: !5, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !155, file: !4, line: 164, baseType: !112, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !147, file: !4, line: 229, baseType: !160, size: 32)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !4, line: 195, size: 32, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !160, file: !4, line: 197, baseType: !5, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !147, file: !4, line: 233, baseType: !5, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !147, file: !4, line: 236, baseType: !5, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !133, file: !129, line: 50, baseType: !112, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !128, file: !129, line: 54, baseType: !141, size: 32, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !128, file: !129, line: 57, baseType: !5, size: 32, offset: 160)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "paramc", scope: !128, file: !129, line: 60, baseType: !145, size: 16, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "fun_like", scope: !128, file: !129, line: 63, baseType: !5, size: 1, offset: 208, flags: DIFlagBitField, extraData: i64 208)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "variadic", scope: !128, file: !129, line: 66, baseType: !5, size: 1, offset: 209, flags: DIFlagBitField, extraData: i64 208)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "syshdr", scope: !128, file: !129, line: 69, baseType: !5, size: 1, offset: 210, flags: DIFlagBitField, extraData: i64 208)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !128, file: !129, line: 72, baseType: !5, size: 1, offset: 211, flags: DIFlagBitField, extraData: i64 208)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !128, file: !129, line: 75, baseType: !5, size: 1, offset: 212, flags: DIFlagBitField, extraData: i64 208)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "extra_tokens", scope: !128, file: !129, line: 80, baseType: !5, size: 1, offset: 213, flags: DIFlagBitField, extraData: i64 208)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "answers", scope: !123, file: !4, line: 637, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !129, line: 28, size: 320, elements: !178)
!178 = !{!179, !180, !181}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !129, line: 29, baseType: !176, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !177, file: !129, line: 30, baseType: !5, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !177, file: !129, line: 31, baseType: !182, size: 192, offset: 128)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 192, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 1)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !123, file: !4, line: 639, baseType: !3, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !123, file: !4, line: 641, baseType: !145, size: 16)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "definedstrs", scope: !42, file: !1, line: 123, baseType: !188, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "save_macro_data", file: !1, line: 749, size: 256, elements: !191)
!191 = !{!192, !196, !197, !198}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "defns", scope: !190, file: !1, line: 751, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !129, line: 22, baseType: !114)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !190, file: !1, line: 752, baseType: !73, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "array_size", scope: !190, file: !1, line: 753, baseType: !73, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "saved_pragmas", scope: !190, file: !1, line: 754, baseType: !199, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !207, line: 7, baseType: !208)
!207 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !209, line: 49, size: 1728, elements: !210)
!209 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !226, !228, !229, !230, !234, !235, !237, !239, !242, !244, !247, !250, !251, !252, !253, !254}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !208, file: !209, line: 51, baseType: !63, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !208, file: !209, line: 54, baseType: !200, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !208, file: !209, line: 55, baseType: !200, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !208, file: !209, line: 56, baseType: !200, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !208, file: !209, line: 57, baseType: !200, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !208, file: !209, line: 58, baseType: !200, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !208, file: !209, line: 59, baseType: !200, size: 64, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !208, file: !209, line: 60, baseType: !200, size: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !208, file: !209, line: 61, baseType: !200, size: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !208, file: !209, line: 64, baseType: !200, size: 64, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !208, file: !209, line: 65, baseType: !200, size: 64, offset: 640)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !208, file: !209, line: 66, baseType: !200, size: 64, offset: 704)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !208, file: !209, line: 68, baseType: !224, size: 64, offset: 768)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !209, line: 36, flags: DIFlagFwdDecl)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !208, file: !209, line: 70, baseType: !227, size: 64, offset: 832)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !208, file: !209, line: 72, baseType: !63, size: 32, offset: 896)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !208, file: !209, line: 73, baseType: !63, size: 32, offset: 928)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !208, file: !209, line: 74, baseType: !231, size: 64, offset: 960)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !232, line: 152, baseType: !233)
!232 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!233 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !208, file: !209, line: 77, baseType: !145, size: 16, offset: 1024)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !208, file: !209, line: 78, baseType: !236, size: 8, offset: 1040)
!236 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !208, file: !209, line: 79, baseType: !238, size: 8, offset: 1048)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 8, elements: !183)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !208, file: !209, line: 81, baseType: !240, size: 64, offset: 1088)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !209, line: 43, baseType: null)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !208, file: !209, line: 89, baseType: !243, size: 64, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !232, line: 153, baseType: !233)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !208, file: !209, line: 91, baseType: !245, size: 64, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !209, line: 37, flags: DIFlagFwdDecl)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !208, file: !209, line: 92, baseType: !248, size: 64, offset: 1280)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !209, line: 38, flags: DIFlagFwdDecl)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !208, file: !209, line: 93, baseType: !227, size: 64, offset: 1344)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !208, file: !209, line: 94, baseType: !69, size: 64, offset: 1408)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !208, file: !209, line: 95, baseType: !73, size: 64, offset: 1472)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !208, file: !209, line: 96, baseType: !63, size: 32, offset: 1536)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !208, file: !209, line: 98, baseType: !255, size: 160, offset: 1568)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 160, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 20)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_pragma_macro", file: !261, line: 310, size: 192, elements: !262)
!261 = !DIFile(filename: "./internal.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!262 = !{!263, !264, !265}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !261, line: 312, baseType: !259, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !261, line: 314, baseType: !200, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !260, file: !261, line: 316, baseType: !126, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_node_list", file: !1, line: 529, size: 192, elements: !270)
!270 = !{!271, !272, !273}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !269, file: !1, line: 532, baseType: !102, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "n_defs", scope: !269, file: !1, line: 534, baseType: !73, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "asize", scope: !269, file: !1, line: 536, baseType: !73, size: 64, offset: 128)
!274 = !{i32 2, !"Dwarf Version", i32 4}
!275 = !{i32 2, !"Debug Info Version", i32 3}
!276 = !{i32 1, !"wchar_size", i32 4}
!277 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!278 = distinct !DISubprogram(name: "tolower", scope: !279, file: !279, line: 207, type: !280, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !282)
!279 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!280 = !DISubroutineType(types: !281)
!281 = !{!63, !63}
!282 = !{!283}
!283 = !DILocalVariable(name: "__c", arg: 1, scope: !278, file: !279, line: 207, type: !63)
!284 = !DILocation(line: 0, scope: !278)
!285 = !DILocation(line: 209, column: 22, scope: !278)
!286 = !DILocation(line: 209, column: 39, scope: !278)
!287 = !DILocation(line: 209, column: 38, scope: !278)
!288 = !DILocation(line: 209, column: 37, scope: !278)
!289 = !DILocation(line: 209, column: 10, scope: !278)
!290 = !DILocation(line: 209, column: 3, scope: !278)
!291 = distinct !DISubprogram(name: "toupper", scope: !279, file: !279, line: 213, type: !280, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !292)
!292 = !{!293}
!293 = !DILocalVariable(name: "__c", arg: 1, scope: !291, file: !279, line: 213, type: !63)
!294 = !DILocation(line: 0, scope: !291)
!295 = !DILocation(line: 215, column: 22, scope: !291)
!296 = !DILocation(line: 215, column: 39, scope: !291)
!297 = !DILocation(line: 215, column: 38, scope: !291)
!298 = !DILocation(line: 215, column: 37, scope: !291)
!299 = !DILocation(line: 215, column: 10, scope: !291)
!300 = !DILocation(line: 215, column: 3, scope: !291)
!301 = distinct !DISubprogram(name: "cpp_save_state", scope: !1, file: !1, line: 200, type: !302, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !770)
!302 = !DISubroutineType(types: !303)
!303 = !{!63, !304, !205}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !4, line: 31, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !261, line: 322, size: 10432, elements: !307)
!307 = !{!308, !381, !382, !399, !429, !430, !440, !441, !442, !472, !474, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !491, !492, !524, !525, !526, !529, !530, !531, !532, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !558, !559, !560, !563, !643, !669, !672, !673, !736, !743, !744, !751, !752, !753, !754, !755, !756, !769}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !306, file: !261, line: 325, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_buffer", file: !4, line: 32, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_buffer", file: !261, line: 249, size: 1536, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318, !325, !326, !327, !328, !330, !333, !334, !337, !338, !339, !340, !341, !342, !367}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !311, file: !261, line: 251, baseType: !112, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "line_base", scope: !311, file: !261, line: 252, baseType: !112, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !311, file: !261, line: 253, baseType: !112, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !311, file: !261, line: 255, baseType: !112, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !311, file: !261, line: 256, baseType: !112, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !311, file: !261, line: 258, baseType: !319, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_line_note", file: !261, line: 235, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_line_note", file: !261, line: 236, size: 128, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !321, file: !261, line: 239, baseType: !112, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !321, file: !261, line: 245, baseType: !5, size: 32, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "cur_note", scope: !311, file: !261, line: 259, baseType: !5, size: 32, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "notes_used", scope: !311, file: !261, line: 260, baseType: !5, size: 32, offset: 416)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "notes_cap", scope: !311, file: !261, line: 261, baseType: !5, size: 32, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !311, file: !261, line: 263, baseType: !329, size: 64, offset: 512)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !311, file: !261, line: 267, baseType: !331, size: 64, offset: 576)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_file", file: !4, line: 42, flags: DIFlagFwdDecl)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !311, file: !261, line: 271, baseType: !112, size: 64, offset: 640)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "if_stack", scope: !311, file: !261, line: 275, baseType: !335, size: 64, offset: 704)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "if_stack", file: !261, line: 275, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "need_line", scope: !311, file: !261, line: 278, baseType: !114, size: 8, offset: 768)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "warned_cplusplus_comments", scope: !311, file: !261, line: 284, baseType: !5, size: 1, offset: 776, flags: DIFlagBitField, extraData: i64 776)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "from_stage3", scope: !311, file: !261, line: 289, baseType: !5, size: 1, offset: 777, flags: DIFlagBitField, extraData: i64 776)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "return_at_eof", scope: !311, file: !261, line: 294, baseType: !5, size: 1, offset: 778, flags: DIFlagBitField, extraData: i64 776)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !311, file: !261, line: 298, baseType: !114, size: 8, offset: 784)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !311, file: !261, line: 302, baseType: !343, size: 512, offset: 832)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !4, line: 523, size: 512, elements: !344)
!344 = !{!345, !347, !348, !349, !350, !351, !352, !354, !360, !364}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !4, line: 526, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !343, file: !4, line: 529, baseType: !200, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !343, file: !4, line: 530, baseType: !5, size: 32, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !343, file: !4, line: 534, baseType: !114, size: 8, offset: 160)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !343, file: !4, line: 537, baseType: !114, size: 8, offset: 168)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !343, file: !4, line: 541, baseType: !200, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !343, file: !4, line: 545, baseType: !353, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !343, file: !4, line: 551, baseType: !355, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!200, !266, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !4, line: 39, baseType: !343)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !343, file: !4, line: 555, baseType: !361, size: 64, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !362, line: 47, baseType: !363)
!362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !232, line: 148, baseType: !75)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !343, file: !4, line: 556, baseType: !365, size: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !362, line: 59, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !232, line: 145, baseType: !75)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "input_cset_desc", scope: !311, file: !261, line: 306, baseType: !368, size: 192, offset: 1344)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cset_converter", file: !261, line: 47, size: 192, elements: !369)
!369 = !{!370, !379, !380}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !368, file: !261, line: 49, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "convert_f", file: !261, line: 45, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!114, !375, !112, !73, !377}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !376, line: 29, baseType: !69)
!376 = !DIFile(filename: "/usr/include/iconv.h", directory: "")
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_strbuf", file: !261, line: 43, flags: DIFlagFwdDecl)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !368, file: !261, line: 50, baseType: !375, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !368, file: !261, line: 51, baseType: !63, size: 32, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "overlaid_buffer", scope: !306, file: !261, line: 328, baseType: !309, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !306, file: !261, line: 331, baseType: !383, size: 160, offset: 128)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lexer_state", file: !261, line: 177, size: 160, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "in_directive", scope: !383, file: !261, line: 180, baseType: !114, size: 8)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "directive_wants_padding", scope: !383, file: !261, line: 185, baseType: !114, size: 8, offset: 8)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "skipping", scope: !383, file: !261, line: 188, baseType: !114, size: 8, offset: 16)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "angled_headers", scope: !383, file: !261, line: 191, baseType: !114, size: 8, offset: 24)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "in_expression", scope: !383, file: !261, line: 194, baseType: !114, size: 8, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "save_comments", scope: !383, file: !261, line: 198, baseType: !114, size: 8, offset: 40)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "va_args_ok", scope: !383, file: !261, line: 201, baseType: !114, size: 8, offset: 48)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned_ok", scope: !383, file: !261, line: 204, baseType: !114, size: 8, offset: 56)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_expansion", scope: !383, file: !261, line: 207, baseType: !114, size: 8, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "parsing_args", scope: !383, file: !261, line: 210, baseType: !114, size: 8, offset: 72)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "discarding_output", scope: !383, file: !261, line: 214, baseType: !114, size: 8, offset: 80)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "skip_eval", scope: !383, file: !261, line: 217, baseType: !5, size: 32, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "in_deferred_pragma", scope: !383, file: !261, line: 220, baseType: !114, size: 8, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pragma_allow_expansion", scope: !383, file: !261, line: 223, baseType: !114, size: 8, offset: 136)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "line_table", scope: !306, file: !261, line: 334, baseType: !400, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !142, line: 74, size: 448, elements: !402)
!402 = !{!403, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !401, file: !142, line: 75, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !142, line: 61, size: 192, elements: !406)
!406 = !{!407, !408, !410, !411, !412, !413, !414}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !405, file: !142, line: 62, baseType: !266, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !405, file: !142, line: 63, baseType: !409, size: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !142, line: 39, baseType: !5)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !405, file: !142, line: 64, baseType: !141, size: 32, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !405, file: !142, line: 65, baseType: !63, size: 32, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !405, file: !142, line: 66, baseType: !5, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !405, file: !142, line: 68, baseType: !114, size: 8, offset: 168)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !405, file: !142, line: 70, baseType: !5, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !401, file: !142, line: 76, baseType: !5, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !401, file: !142, line: 77, baseType: !5, size: 32, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !401, file: !142, line: 79, baseType: !5, size: 32, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !401, file: !142, line: 84, baseType: !63, size: 32, offset: 160)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !401, file: !142, line: 87, baseType: !5, size: 32, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !401, file: !142, line: 90, baseType: !114, size: 8, offset: 224)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !401, file: !142, line: 93, baseType: !141, size: 32, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !401, file: !142, line: 96, baseType: !141, size: 32, offset: 288)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !401, file: !142, line: 100, baseType: !5, size: 32, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !401, file: !142, line: 104, baseType: !425, size: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !142, line: 47, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!69, !69, !73}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "directive_line", scope: !306, file: !261, line: 337, baseType: !141, size: 32, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "a_buff", scope: !306, file: !261, line: 340, baseType: !431, size: 64, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_buff", file: !261, line: 99, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_buff", file: !261, line: 100, size: 256, elements: !434)
!434 = !{!435, !437, !438, !439}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !433, file: !261, line: 102, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !433, file: !261, line: 103, baseType: !188, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !433, file: !261, line: 103, baseType: !188, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !433, file: !261, line: 103, baseType: !188, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "u_buff", scope: !306, file: !261, line: 341, baseType: !431, size: 64, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffs", scope: !306, file: !261, line: 342, baseType: !431, size: 64, offset: 576)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "base_context", scope: !306, file: !261, line: 345, baseType: !443, size: 448, offset: 640)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_context", file: !261, line: 142, size: 448, elements: !444)
!444 = !{!445, !448, !449, !469, !470, !471}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !443, file: !261, line: 145, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_context", file: !261, line: 141, baseType: !443)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !443, file: !261, line: 145, baseType: !446, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !443, file: !261, line: 164, baseType: !450, size: 128, offset: 128)
!450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !261, line: 147, size: 128, elements: !451)
!451 = !{!452, !464}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "iso", scope: !450, file: !261, line: 156, baseType: !453, size: 128)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !261, line: 152, size: 128, elements: !454)
!454 = !{!455, !463}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !453, file: !261, line: 154, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "utoken", file: !261, line: 121, size: 64, elements: !457)
!457 = !{!458, !461}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !456, file: !261, line: 123, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ptoken", scope: !456, file: !261, line: 124, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !453, file: !261, line: 155, baseType: !456, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "trad", scope: !450, file: !261, line: 163, baseType: !465, size: 128)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !450, file: !261, line: 159, size: 128, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !465, file: !261, line: 161, baseType: !112, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !465, file: !261, line: 162, baseType: !112, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !443, file: !261, line: 168, baseType: !431, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !443, file: !261, line: 171, baseType: !103, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "direct_p", scope: !443, file: !261, line: 174, baseType: !114, size: 8, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !306, file: !261, line: 346, baseType: !473, size: 64, offset: 1088)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !306, file: !261, line: 349, baseType: !475, size: 64, offset: 1152)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "directive", file: !261, line: 40, flags: DIFlagFwdDecl)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "directive_result", scope: !306, file: !261, line: 352, baseType: !137, size: 192, offset: 1216)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "invocation_location", scope: !306, file: !261, line: 356, baseType: !141, size: 32, offset: 1408)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "set_invocation_location", scope: !306, file: !261, line: 360, baseType: !114, size: 8, offset: 1440)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "quote_include", scope: !306, file: !261, line: 363, baseType: !346, size: 64, offset: 1472)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "bracket_include", scope: !306, file: !261, line: 364, baseType: !346, size: 64, offset: 1536)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "no_search_path", scope: !306, file: !261, line: 365, baseType: !343, size: 512, offset: 1600)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "all_files", scope: !306, file: !261, line: 368, baseType: !331, size: 64, offset: 2112)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "main_file", scope: !306, file: !261, line: 370, baseType: !331, size: 64, offset: 2176)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash", scope: !306, file: !261, line: 373, baseType: !47, size: 64, offset: 2240)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash", scope: !306, file: !261, line: 374, baseType: !47, size: 64, offset: 2304)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash_entries", scope: !306, file: !261, line: 375, baseType: !489, size: 64, offset: 2368)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_hash_entry_pool", file: !261, line: 375, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_hash", scope: !306, file: !261, line: 378, baseType: !47, size: 64, offset: 2432)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_ob", scope: !306, file: !261, line: 379, baseType: !493, size: 704, offset: 2496)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !494, line: 164, size: 704, elements: !495)
!494 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!495 = !{!496, !497, !507, !508, !509, !510, !511, !512, !516, !520, !521, !522, !523}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !493, file: !494, line: 166, baseType: !233, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !493, file: !494, line: 167, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !494, line: 157, size: 192, elements: !500)
!500 = !{!501, !502, !503}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !499, file: !494, line: 159, baseType: !200, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !499, file: !494, line: 160, baseType: !498, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !499, file: !494, line: 161, baseType: !504, size: 32, offset: 128)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 32, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 4)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !493, file: !494, line: 168, baseType: !200, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !493, file: !494, line: 169, baseType: !200, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !493, file: !494, line: 170, baseType: !200, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !493, file: !494, line: 171, baseType: !233, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !493, file: !494, line: 172, baseType: !63, size: 32, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !493, file: !494, line: 176, baseType: !513, size: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!498, !69, !233}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !493, file: !494, line: 177, baseType: !517, size: 64, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !69, !498}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !493, file: !494, line: 178, baseType: !69, size: 64, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !493, file: !494, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !493, file: !494, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !493, file: !494, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "quote_ignores_source_dir", scope: !306, file: !261, line: 383, baseType: !114, size: 8, offset: 3200)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "seen_once_only", scope: !306, file: !261, line: 387, baseType: !114, size: 8, offset: 3208)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mi_cmacro", scope: !306, file: !261, line: 390, baseType: !527, size: 64, offset: 3264)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mi_ind_cmacro", scope: !306, file: !261, line: 391, baseType: !527, size: 64, offset: 3328)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mi_valid", scope: !306, file: !261, line: 392, baseType: !114, size: 8, offset: 3392)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "cur_token", scope: !306, file: !261, line: 395, baseType: !136, size: 64, offset: 3456)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "base_run", scope: !306, file: !261, line: 396, baseType: !533, size: 256, offset: 3520)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "tokenrun", file: !261, line: 128, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenrun", file: !261, line: 129, size: 256, elements: !535)
!535 = !{!536, !538, !539, !540}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !534, file: !261, line: 131, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !534, file: !261, line: 131, baseType: !537, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !534, file: !261, line: 132, baseType: !136, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !534, file: !261, line: 132, baseType: !136, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cur_run", scope: !306, file: !261, line: 396, baseType: !537, size: 64, offset: 3776)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "lookaheads", scope: !306, file: !261, line: 397, baseType: !5, size: 32, offset: 3840)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "keep_tokens", scope: !306, file: !261, line: 400, baseType: !5, size: 32, offset: 3872)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer", scope: !306, file: !261, line: 403, baseType: !188, size: 64, offset: 3904)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer_len", scope: !306, file: !261, line: 404, baseType: !5, size: 32, offset: 3968)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_cset_desc", scope: !306, file: !261, line: 408, baseType: !368, size: 192, offset: 4032)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_cset_desc", scope: !306, file: !261, line: 412, baseType: !368, size: 192, offset: 4224)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "char16_cset_desc", scope: !306, file: !261, line: 416, baseType: !368, size: 192, offset: 4416)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "char32_cset_desc", scope: !306, file: !261, line: 420, baseType: !368, size: 192, offset: 4608)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "wide_cset_desc", scope: !306, file: !261, line: 424, baseType: !368, size: 192, offset: 4800)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !306, file: !261, line: 427, baseType: !112, size: 64, offset: 4992)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !306, file: !261, line: 428, baseType: !112, size: 64, offset: 5056)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_paste", scope: !306, file: !261, line: 431, baseType: !137, size: 192, offset: 5120)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !306, file: !261, line: 432, baseType: !137, size: 192, offset: 5312)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !306, file: !261, line: 435, baseType: !556, size: 64, offset: 5504)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !4, line: 685, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "hash_ob", scope: !306, file: !261, line: 439, baseType: !493, size: 704, offset: 5568)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_ob", scope: !306, file: !261, line: 443, baseType: !493, size: 704, offset: 6272)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pragmas", scope: !306, file: !261, line: 447, baseType: !561, size: 64, offset: 6976)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "pragma_entry", file: !261, line: 447, flags: DIFlagFwdDecl)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !306, file: !261, line: 450, baseType: !564, size: 1088, offset: 7040)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !4, line: 472, size: 1088, elements: !565)
!565 = !{!566, !570, !576, !580, !584, !588, !589, !596, !600, !604, !608, !614, !618, !633, !634, !635, !639}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !564, file: !4, line: 475, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !304, !459, !63}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !564, file: !4, line: 481, baseType: !571, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !304, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !564, file: !4, line: 483, baseType: !577, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !304, !266}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !564, file: !4, line: 484, baseType: !581, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !304, !5, !112, !266, !63, !462}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !564, file: !4, line: 486, baseType: !585, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !304, !5, !103}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !564, file: !4, line: 487, baseType: !585, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !564, file: !4, line: 488, baseType: !590, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !304, !5, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !4, line: 35, baseType: !155)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !564, file: !4, line: 489, baseType: !597, size: 64, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !304, !5}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !564, file: !4, line: 490, baseType: !601, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!63, !304, !266, !63}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !564, file: !4, line: 491, baseType: !605, size: 64, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !304, !266, !63, !266}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !564, file: !4, line: 492, baseType: !609, size: 64, offset: 640)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !4, line: 469, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!266, !304, !266, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !564, file: !4, line: 496, baseType: !615, size: 64, offset: 704)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!103, !304, !459}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !564, file: !4, line: 500, baseType: !619, size: 64, offset: 768)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!114, !304, !63, !141, !5, !266, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !624, line: 14, baseType: !625)
!624 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 216, baseType: !626)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 192, elements: !183)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 216, size: 192, elements: !628)
!628 = !{!629, !630, !631, !632}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !627, file: !1, line: 216, baseType: !5, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !627, file: !1, line: 216, baseType: !5, size: 32, offset: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !627, file: !1, line: 216, baseType: !69, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !627, file: !1, line: 216, baseType: !69, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !564, file: !4, line: 506, baseType: !585, size: 64, offset: 832)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !564, file: !4, line: 507, baseType: !585, size: 64, offset: 896)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !564, file: !4, line: 510, baseType: !636, size: 64, offset: 960)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !304}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !564, file: !4, line: 513, baseType: !640, size: 64, offset: 1024)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !304, !141, !103}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !306, file: !261, line: 453, baseType: !644, size: 64, offset: 8128)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht", file: !109, line: 46, size: 1152, elements: !646)
!646 = !{!647, !648, !652, !658, !662, !663, !664, !666, !667, !668}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !645, file: !109, line: 49, baseType: !493, size: 704)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !645, file: !109, line: 51, baseType: !649, size: 64, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashnode", file: !109, line: 41, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_node", scope: !645, file: !109, line: 53, baseType: !653, size: 64, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!650, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !109, line: 40, baseType: !645)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_subobject", scope: !645, file: !109, line: 56, baseType: !659, size: 64, offset: 832)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!69, !73}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !645, file: !109, line: 58, baseType: !5, size: 32, offset: 896)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !645, file: !109, line: 59, baseType: !5, size: 32, offset: 928)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !645, file: !109, line: 62, baseType: !665, size: 64, offset: 960)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !645, file: !109, line: 65, baseType: !5, size: 32, offset: 1024)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !645, file: !109, line: 66, baseType: !5, size: 32, offset: 1056)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !645, file: !109, line: 69, baseType: !114, size: 8, offset: 1088)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "op_stack", scope: !306, file: !261, line: 456, baseType: !670, size: 64, offset: 8192)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !261, line: 42, flags: DIFlagFwdDecl)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "op_limit", scope: !306, file: !261, line: 456, baseType: !670, size: 64, offset: 8256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !306, file: !261, line: 459, baseType: !674, size: 1024, offset: 8320)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !4, line: 279, size: 1024, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !727, !728, !729, !730, !731, !732, !733, !734, !735}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !674, file: !4, line: 282, baseType: !5, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !674, file: !4, line: 285, baseType: !17, size: 32, offset: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !674, file: !4, line: 288, baseType: !114, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !674, file: !4, line: 291, baseType: !114, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !674, file: !4, line: 296, baseType: !114, size: 8, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !674, file: !4, line: 299, baseType: !114, size: 8, offset: 88)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !674, file: !4, line: 303, baseType: !114, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !674, file: !4, line: 306, baseType: !114, size: 8, offset: 104)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !674, file: !4, line: 309, baseType: !114, size: 8, offset: 112)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !674, file: !4, line: 312, baseType: !114, size: 8, offset: 120)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !674, file: !4, line: 315, baseType: !114, size: 8, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !674, file: !4, line: 318, baseType: !114, size: 8, offset: 136)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !674, file: !4, line: 321, baseType: !114, size: 8, offset: 144)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !674, file: !4, line: 324, baseType: !114, size: 8, offset: 152)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !674, file: !4, line: 328, baseType: !114, size: 8, offset: 160)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !674, file: !4, line: 331, baseType: !114, size: 8, offset: 168)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !674, file: !4, line: 334, baseType: !114, size: 8, offset: 176)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !674, file: !4, line: 338, baseType: !114, size: 8, offset: 184)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !674, file: !4, line: 341, baseType: !114, size: 8, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !674, file: !4, line: 344, baseType: !114, size: 8, offset: 200)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !674, file: !4, line: 348, baseType: !114, size: 8, offset: 208)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !674, file: !4, line: 352, baseType: !114, size: 8, offset: 216)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !674, file: !4, line: 356, baseType: !114, size: 8, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !674, file: !4, line: 360, baseType: !114, size: 8, offset: 232)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !674, file: !4, line: 363, baseType: !114, size: 8, offset: 240)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !674, file: !4, line: 366, baseType: !114, size: 8, offset: 248)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !674, file: !4, line: 370, baseType: !114, size: 8, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !674, file: !4, line: 373, baseType: !114, size: 8, offset: 264)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !674, file: !4, line: 376, baseType: !114, size: 8, offset: 272)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !674, file: !4, line: 379, baseType: !114, size: 8, offset: 280)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !674, file: !4, line: 382, baseType: !114, size: 8, offset: 288)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !674, file: !4, line: 385, baseType: !114, size: 8, offset: 296)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !674, file: !4, line: 389, baseType: !114, size: 8, offset: 304)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !674, file: !4, line: 392, baseType: !114, size: 8, offset: 312)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !674, file: !4, line: 395, baseType: !114, size: 8, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !674, file: !4, line: 398, baseType: !114, size: 8, offset: 328)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !674, file: !4, line: 401, baseType: !114, size: 8, offset: 336)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !674, file: !4, line: 404, baseType: !266, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !674, file: !4, line: 407, baseType: !266, size: 64, offset: 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !674, file: !4, line: 410, baseType: !266, size: 64, offset: 512)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !674, file: !4, line: 414, baseType: !29, size: 32, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !674, file: !4, line: 417, baseType: !114, size: 8, offset: 608)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !674, file: !4, line: 420, baseType: !114, size: 8, offset: 616)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !674, file: !4, line: 441, baseType: !720, size: 64, offset: 640)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !674, file: !4, line: 423, size: 64, elements: !721)
!721 = !{!722, !723, !724, !725, !726}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !720, file: !4, line: 426, baseType: !35, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !720, file: !4, line: 429, baseType: !114, size: 8, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !720, file: !4, line: 433, baseType: !114, size: 8, offset: 40)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !720, file: !4, line: 436, baseType: !114, size: 8, offset: 48)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !720, file: !4, line: 440, baseType: !114, size: 8, offset: 56)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !674, file: !4, line: 447, baseType: !73, size: 64, offset: 704)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !674, file: !4, line: 447, baseType: !73, size: 64, offset: 768)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !674, file: !4, line: 447, baseType: !73, size: 64, offset: 832)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !674, file: !4, line: 447, baseType: !73, size: 64, offset: 896)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !674, file: !4, line: 450, baseType: !114, size: 8, offset: 960)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !674, file: !4, line: 450, baseType: !114, size: 8, offset: 968)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !674, file: !4, line: 454, baseType: !114, size: 8, offset: 976)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !674, file: !4, line: 457, baseType: !114, size: 8, offset: 984)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !674, file: !4, line: 460, baseType: !114, size: 8, offset: 992)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "spec_nodes", scope: !306, file: !261, line: 463, baseType: !737, size: 256, offset: 9344)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spec_nodes", file: !261, line: 227, size: 256, elements: !738)
!738 = !{!739, !740, !741, !742}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "n_defined", scope: !737, file: !261, line: 229, baseType: !103, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "n_true", scope: !737, file: !261, line: 230, baseType: !103, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "n_false", scope: !737, file: !261, line: 231, baseType: !103, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "n__VA_ARGS__", scope: !737, file: !261, line: 232, baseType: !103, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "our_hashtable", scope: !306, file: !261, line: 466, baseType: !114, size: 8, offset: 9600)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !306, file: !261, line: 475, baseType: !745, size: 256, offset: 9664)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !306, file: !261, line: 469, size: 256, elements: !746)
!746 = !{!747, !748, !749, !750}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !745, file: !261, line: 471, baseType: !188, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !745, file: !261, line: 472, baseType: !188, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !745, file: !261, line: 473, baseType: !188, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !745, file: !261, line: 474, baseType: !141, size: 32, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cur", scope: !306, file: !261, line: 478, baseType: !112, size: 64, offset: 9920)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "saved_rlimit", scope: !306, file: !261, line: 478, baseType: !112, size: 64, offset: 9984)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "saved_line_base", scope: !306, file: !261, line: 478, baseType: !112, size: 64, offset: 10048)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "savedstate", scope: !306, file: !261, line: 482, baseType: !41, size: 64, offset: 10112)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !306, file: !261, line: 485, baseType: !5, size: 32, offset: 10176)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "comments", scope: !306, file: !261, line: 488, baseType: !757, size: 128, offset: 10240)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment_table", file: !4, line: 901, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 891, size: 128, elements: !759)
!759 = !{!760, !767, !768}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !758, file: !4, line: 894, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment", file: !4, line: 887, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 880, size: 128, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !763, file: !4, line: 883, baseType: !200, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "sloc", scope: !763, file: !4, line: 886, baseType: !141, size: 32, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !758, file: !4, line: 897, baseType: !63, size: 32, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !758, file: !4, line: 900, baseType: !63, size: 32, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pushed_macros", scope: !306, file: !261, line: 491, baseType: !259, size: 64, offset: 10368)
!770 = !{!771, !772}
!771 = !DILocalVariable(name: "r", arg: 1, scope: !301, file: !1, line: 200, type: !304)
!772 = !DILocalVariable(name: "f", arg: 2, scope: !301, file: !1, line: 200, type: !205)
!773 = !DILocation(line: 0, scope: !301)
!774 = !DILocation(line: 203, column: 19, scope: !301)
!775 = !DILocation(line: 203, column: 6, scope: !301)
!776 = !DILocation(line: 203, column: 17, scope: !301)
!777 = !DILocation(line: 204, column: 32, scope: !301)
!778 = !DILocation(line: 204, column: 6, scope: !301)
!779 = !DILocation(line: 204, column: 18, scope: !301)
!780 = !DILocation(line: 204, column: 30, scope: !301)
!781 = !DILocation(line: 206, column: 46, scope: !301)
!782 = !DILocation(line: 206, column: 3, scope: !301)
!783 = !DILocation(line: 209, column: 44, scope: !301)
!784 = !DILocation(line: 209, column: 3, scope: !301)
!785 = !DILocation(line: 211, column: 3, scope: !301)
!786 = distinct !DISubprogram(name: "cpp_string_hash", scope: !1, file: !1, line: 177, type: !53, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !787)
!787 = !{!788, !789}
!788 = !DILocalVariable(name: "a_p", arg: 1, scope: !786, file: !1, line: 177, type: !56)
!789 = !DILocalVariable(name: "a", scope: !786, file: !1, line: 179, type: !202)
!790 = !DILocation(line: 0, scope: !786)
!791 = !DILocation(line: 180, column: 22, scope: !786)
!792 = !DILocation(line: 180, column: 31, scope: !786)
!793 = !DILocation(line: 180, column: 28, scope: !786)
!794 = !DILocation(line: 180, column: 10, scope: !786)
!795 = !DILocation(line: 180, column: 3, scope: !786)
!796 = distinct !DISubprogram(name: "cpp_string_eq", scope: !1, file: !1, line: 186, type: !61, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !797)
!797 = !{!798, !799, !800, !801}
!798 = !DILocalVariable(name: "a_p", arg: 1, scope: !796, file: !1, line: 186, type: !56)
!799 = !DILocalVariable(name: "b_p", arg: 2, scope: !796, file: !1, line: 186, type: !56)
!800 = !DILocalVariable(name: "a", scope: !796, file: !1, line: 188, type: !202)
!801 = !DILocalVariable(name: "b", scope: !796, file: !1, line: 189, type: !202)
!802 = !DILocation(line: 0, scope: !796)
!803 = !DILocation(line: 190, column: 14, scope: !796)
!804 = !DILocation(line: 190, column: 24, scope: !796)
!805 = !DILocation(line: 190, column: 18, scope: !796)
!806 = !DILocation(line: 191, column: 4, scope: !796)
!807 = !DILocation(line: 191, column: 18, scope: !796)
!808 = !DILocation(line: 191, column: 27, scope: !796)
!809 = !DILocation(line: 191, column: 33, scope: !796)
!810 = !DILocation(line: 191, column: 7, scope: !796)
!811 = !DILocation(line: 191, column: 41, scope: !796)
!812 = !DILocation(line: 190, column: 3, scope: !796)
!813 = distinct !DISubprogram(name: "save_idents", scope: !1, file: !1, line: 130, type: !814, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{!63, !304, !103, !69}
!816 = !{!817, !818, !819, !820, !822, !825, !826, !829}
!817 = !DILocalVariable(name: "pfile", arg: 1, scope: !813, file: !1, line: 130, type: !304)
!818 = !DILocalVariable(name: "hn", arg: 2, scope: !813, file: !1, line: 130, type: !103)
!819 = !DILocalVariable(name: "ss_p", arg: 3, scope: !813, file: !1, line: 130, type: !69)
!820 = !DILocalVariable(name: "ss", scope: !813, file: !1, line: 132, type: !821)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!822 = !DILocalVariable(name: "news", scope: !823, file: !1, line: 136, type: !155)
!823 = distinct !DILexicalBlock(scope: !824, file: !1, line: 135, column: 5)
!824 = distinct !DILexicalBlock(scope: !813, file: !1, line: 134, column: 7)
!825 = !DILocalVariable(name: "slot", scope: !823, file: !1, line: 137, type: !71)
!826 = !DILocalVariable(name: "sp", scope: !827, file: !1, line: 144, type: !204)
!827 = distinct !DILexicalBlock(scope: !828, file: !1, line: 143, column: 2)
!828 = distinct !DILexicalBlock(scope: !823, file: !1, line: 142, column: 11)
!829 = !DILocalVariable(name: "text", scope: !827, file: !1, line: 145, type: !188)
!830 = !DILocation(line: 0, scope: !813)
!831 = !DILocation(line: 134, column: 11, scope: !824)
!832 = !DILocation(line: 134, column: 16, scope: !824)
!833 = !DILocation(line: 134, column: 7, scope: !813)
!834 = !DILocation(line: 136, column: 7, scope: !823)
!835 = !DILocation(line: 139, column: 18, scope: !823)
!836 = !DILocation(line: 139, column: 12, scope: !823)
!837 = !DILocation(line: 139, column: 16, scope: !823)
!838 = !DILocation(line: 140, column: 18, scope: !823)
!839 = !DILocation(line: 140, column: 12, scope: !823)
!840 = !DILocation(line: 140, column: 16, scope: !823)
!841 = !DILocation(line: 141, column: 34, scope: !823)
!842 = !DILocation(line: 141, column: 14, scope: !823)
!843 = !DILocation(line: 0, scope: !823)
!844 = !DILocation(line: 142, column: 11, scope: !828)
!845 = !DILocation(line: 142, column: 17, scope: !828)
!846 = !DILocation(line: 142, column: 11, scope: !823)
!847 = !DILocation(line: 147, column: 9, scope: !827)
!848 = !DILocation(line: 0, scope: !827)
!849 = !DILocation(line: 148, column: 10, scope: !827)
!850 = !DILocation(line: 150, column: 14, scope: !827)
!851 = !DILocation(line: 150, column: 8, scope: !827)
!852 = !DILocation(line: 150, column: 12, scope: !827)
!853 = !DILocation(line: 151, column: 22, scope: !827)
!854 = !DILocation(line: 151, column: 8, scope: !827)
!855 = !DILocation(line: 151, column: 13, scope: !827)
!856 = !DILocation(line: 152, column: 18, scope: !827)
!857 = !DILocation(line: 152, column: 34, scope: !827)
!858 = !DILocation(line: 152, column: 4, scope: !827)
!859 = !DILocation(line: 153, column: 2, scope: !827)
!860 = !DILocation(line: 154, column: 5, scope: !824)
!861 = !DILocation(line: 154, column: 5, scope: !823)
!862 = !DILocation(line: 156, column: 3, scope: !813)
!863 = distinct !DISubprogram(name: "write_macdef", scope: !1, file: !1, line: 56, type: !814, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !864)
!864 = !{!865, !866, !867, !868, !869, !877}
!865 = !DILocalVariable(name: "pfile", arg: 1, scope: !863, file: !1, line: 56, type: !304)
!866 = !DILocalVariable(name: "hn", arg: 2, scope: !863, file: !1, line: 56, type: !103)
!867 = !DILocalVariable(name: "file_p", arg: 3, scope: !863, file: !1, line: 56, type: !69)
!868 = !DILocalVariable(name: "f", scope: !863, file: !1, line: 58, type: !205)
!869 = !DILocalVariable(name: "s", scope: !870, file: !1, line: 70, type: !872)
!870 = distinct !DILexicalBlock(scope: !871, file: !1, line: 69, column: 7)
!871 = distinct !DILexicalBlock(scope: !863, file: !1, line: 60, column: 5)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "macrodef_struct", file: !1, line: 45, size: 64, elements: !873)
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "definition_length", scope: !872, file: !1, line: 47, baseType: !5, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "name_length", scope: !872, file: !1, line: 48, baseType: !145, size: 16, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !872, file: !1, line: 49, baseType: !145, size: 16, offset: 48)
!877 = !DILocalVariable(name: "defn", scope: !870, file: !1, line: 71, type: !112)
!878 = !DILocation(line: 0, scope: !863)
!879 = !DILocation(line: 58, column: 13, scope: !863)
!880 = !DILocation(line: 59, column: 15, scope: !863)
!881 = !DILocation(line: 59, column: 3, scope: !863)
!882 = !DILocation(line: 62, column: 24, scope: !883)
!883 = distinct !DILexicalBlock(scope: !871, file: !1, line: 62, column: 11)
!884 = !DILocation(line: 62, column: 11, scope: !871)
!885 = !DILocation(line: 66, column: 22, scope: !886)
!886 = distinct !DILexicalBlock(scope: !871, file: !1, line: 66, column: 11)
!887 = !DILocation(line: 66, column: 11, scope: !871)
!888 = !DILocation(line: 70, column: 2, scope: !870)
!889 = !DILocation(line: 73, column: 18, scope: !870)
!890 = !DILocation(line: 73, column: 4, scope: !870)
!891 = !DILocation(line: 73, column: 16, scope: !870)
!892 = !DILocation(line: 74, column: 16, scope: !870)
!893 = !DILocation(line: 74, column: 22, scope: !870)
!894 = !DILocation(line: 74, column: 4, scope: !870)
!895 = !DILocation(line: 74, column: 10, scope: !870)
!896 = !DILocation(line: 76, column: 15, scope: !897)
!897 = distinct !DILexicalBlock(scope: !870, file: !1, line: 76, column: 6)
!898 = !DILocation(line: 76, column: 6, scope: !870)
!899 = !DILocation(line: 78, column: 13, scope: !900)
!900 = distinct !DILexicalBlock(scope: !897, file: !1, line: 77, column: 4)
!901 = !DILocation(line: 0, scope: !870)
!902 = !DILocation(line: 79, column: 28, scope: !900)
!903 = !DILocation(line: 79, column: 8, scope: !900)
!904 = !DILocation(line: 79, column: 26, scope: !900)
!905 = !DILocation(line: 80, column: 4, scope: !900)
!906 = !DILocation(line: 83, column: 13, scope: !907)
!907 = distinct !DILexicalBlock(scope: !897, file: !1, line: 82, column: 4)
!908 = !DILocation(line: 84, column: 28, scope: !907)
!909 = !DILocation(line: 84, column: 8, scope: !907)
!910 = !DILocation(line: 84, column: 26, scope: !907)
!911 = !DILocation(line: 0, scope: !897)
!912 = !DILocation(line: 87, column: 6, scope: !913)
!913 = distinct !DILexicalBlock(scope: !870, file: !1, line: 87, column: 6)
!914 = !DILocation(line: 87, column: 36, scope: !913)
!915 = !DILocation(line: 88, column: 6, scope: !913)
!916 = !DILocation(line: 88, column: 28, scope: !913)
!917 = !DILocation(line: 88, column: 26, scope: !913)
!918 = !DILocation(line: 88, column: 9, scope: !913)
!919 = !DILocation(line: 88, column: 55, scope: !913)
!920 = !DILocation(line: 88, column: 53, scope: !913)
!921 = !DILocation(line: 88, column: 50, scope: !913)
!922 = !DILocation(line: 87, column: 6, scope: !870)
!923 = !DILocation(line: 90, column: 6, scope: !924)
!924 = distinct !DILexicalBlock(scope: !913, file: !1, line: 89, column: 4)
!925 = !DILocation(line: 92, column: 6, scope: !924)
!926 = !DILocation(line: 94, column: 7, scope: !871)
!927 = !DILocation(line: 102, column: 7, scope: !871)
!928 = !DILocation(line: 104, column: 1, scope: !863)
!929 = distinct !DISubprogram(name: "cpp_write_pch_deps", scope: !1, file: !1, line: 307, type: !302, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !930)
!930 = !{!931, !932, !933, !934, !935, !936, !937}
!931 = !DILocalVariable(name: "r", arg: 1, scope: !929, file: !1, line: 307, type: !304)
!932 = !DILocalVariable(name: "f", arg: 2, scope: !929, file: !1, line: 307, type: !205)
!933 = !DILocalVariable(name: "z", scope: !929, file: !1, line: 309, type: !872)
!934 = !DILocalVariable(name: "ss", scope: !929, file: !1, line: 310, type: !821)
!935 = !DILocalVariable(name: "definedstrs", scope: !929, file: !1, line: 311, type: !188)
!936 = !DILocalVariable(name: "i", scope: !929, file: !1, line: 312, type: !73)
!937 = !DILocalVariable(name: "len", scope: !938, file: !1, line: 333, type: !73)
!938 = distinct !DILexicalBlock(scope: !939, file: !1, line: 332, column: 5)
!939 = distinct !DILexicalBlock(scope: !940, file: !1, line: 331, column: 3)
!940 = distinct !DILexicalBlock(scope: !929, file: !1, line: 331, column: 3)
!941 = !DILocation(line: 0, scope: !929)
!942 = !DILocation(line: 309, column: 3, scope: !929)
!943 = !DILocation(line: 310, column: 40, scope: !929)
!944 = !DILocation(line: 316, column: 7, scope: !929)
!945 = !DILocation(line: 316, column: 16, scope: !929)
!946 = !DILocation(line: 317, column: 7, scope: !929)
!947 = !DILocation(line: 317, column: 14, scope: !929)
!948 = !DILocation(line: 318, column: 42, scope: !929)
!949 = !DILocation(line: 318, column: 3, scope: !929)
!950 = !DILocation(line: 320, column: 14, scope: !929)
!951 = !DILocation(line: 320, column: 7, scope: !929)
!952 = !DILocation(line: 320, column: 12, scope: !929)
!953 = !DILocation(line: 321, column: 14, scope: !929)
!954 = !DILocation(line: 322, column: 3, scope: !929)
!955 = !DILocation(line: 326, column: 19, scope: !929)
!956 = !DILocation(line: 326, column: 29, scope: !929)
!957 = !DILocation(line: 326, column: 3, scope: !929)
!958 = !DILocation(line: 330, column: 35, scope: !929)
!959 = !DILocation(line: 330, column: 21, scope: !929)
!960 = !DILocation(line: 330, column: 33, scope: !929)
!961 = !DILocation(line: 331, column: 8, scope: !940)
!962 = !DILocation(line: 0, scope: !940)
!963 = !DILocation(line: 331, column: 23, scope: !939)
!964 = !DILocation(line: 331, column: 17, scope: !939)
!965 = !DILocation(line: 331, column: 3, scope: !940)
!966 = !DILocation(line: 333, column: 20, scope: !938)
!967 = !DILocation(line: 0, scope: !938)
!968 = !DILocation(line: 334, column: 28, scope: !938)
!969 = !DILocation(line: 334, column: 57, scope: !938)
!970 = !DILocation(line: 334, column: 7, scope: !938)
!971 = !DILocation(line: 335, column: 19, scope: !938)
!972 = !DILocation(line: 331, column: 31, scope: !939)
!973 = !DILocation(line: 331, column: 3, scope: !939)
!974 = distinct !{!974, !965, !975}
!975 = !DILocation(line: 336, column: 5, scope: !940)
!976 = !DILocation(line: 338, column: 3, scope: !929)
!977 = !DILocation(line: 339, column: 29, scope: !929)
!978 = !DILocation(line: 339, column: 25, scope: !929)
!979 = !DILocation(line: 339, column: 5, scope: !929)
!980 = !DILocation(line: 339, column: 23, scope: !929)
!981 = !DILocation(line: 340, column: 7, scope: !982)
!982 = distinct !DILexicalBlock(scope: !929, file: !1, line: 340, column: 7)
!983 = !DILocation(line: 340, column: 37, scope: !982)
!984 = !DILocation(line: 341, column: 7, scope: !982)
!985 = !DILocation(line: 341, column: 22, scope: !982)
!986 = !DILocation(line: 341, column: 39, scope: !982)
!987 = !DILocation(line: 341, column: 10, scope: !982)
!988 = !DILocation(line: 341, column: 55, scope: !982)
!989 = !DILocation(line: 340, column: 7, scope: !929)
!990 = !DILocation(line: 343, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !982, file: !1, line: 342, column: 5)
!992 = !DILocation(line: 344, column: 7, scope: !991)
!993 = !DILocation(line: 346, column: 13, scope: !929)
!994 = !DILocation(line: 346, column: 3, scope: !929)
!995 = !DILocation(line: 349, column: 3, scope: !929)
!996 = !DILocation(line: 350, column: 17, scope: !929)
!997 = !DILocation(line: 353, column: 19, scope: !998)
!998 = distinct !DILexicalBlock(scope: !929, file: !1, line: 353, column: 7)
!999 = !DILocation(line: 353, column: 15, scope: !998)
!1000 = !DILocation(line: 353, column: 7, scope: !998)
!1001 = !DILocation(line: 353, column: 55, scope: !998)
!1002 = !DILocation(line: 353, column: 7, scope: !929)
!1003 = !DILocation(line: 355, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !998, file: !1, line: 354, column: 5)
!1005 = !DILocation(line: 356, column: 7, scope: !1004)
!1006 = !DILocation(line: 360, column: 1, scope: !929)
!1007 = distinct !DISubprogram(name: "count_defs", scope: !1, file: !1, line: 217, type: !814, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1008)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1016}
!1009 = !DILocalVariable(name: "pfile", arg: 1, scope: !1007, file: !1, line: 217, type: !304)
!1010 = !DILocalVariable(name: "hn", arg: 2, scope: !1007, file: !1, line: 217, type: !103)
!1011 = !DILocalVariable(name: "ss_p", arg: 3, scope: !1007, file: !1, line: 217, type: !69)
!1012 = !DILocalVariable(name: "ss", scope: !1007, file: !1, line: 219, type: !821)
!1013 = !DILocalVariable(name: "news", scope: !1014, file: !1, line: 231, type: !155)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 230, column: 7)
!1015 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 222, column: 5)
!1016 = !DILocalVariable(name: "slot", scope: !1014, file: !1, line: 232, type: !71)
!1017 = !DILocation(line: 0, scope: !1007)
!1018 = !DILocation(line: 221, column: 15, scope: !1007)
!1019 = !DILocation(line: 221, column: 3, scope: !1007)
!1020 = !DILocation(line: 224, column: 21, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 224, column: 11)
!1022 = !DILocation(line: 224, column: 11, scope: !1015)
!1023 = !DILocation(line: 231, column: 2, scope: !1014)
!1024 = !DILocation(line: 234, column: 13, scope: !1014)
!1025 = !DILocation(line: 234, column: 7, scope: !1014)
!1026 = !DILocation(line: 234, column: 11, scope: !1014)
!1027 = !DILocation(line: 235, column: 14, scope: !1014)
!1028 = !DILocation(line: 235, column: 7, scope: !1014)
!1029 = !DILocation(line: 235, column: 12, scope: !1014)
!1030 = !DILocation(line: 236, column: 34, scope: !1014)
!1031 = !DILocation(line: 236, column: 19, scope: !1014)
!1032 = !DILocation(line: 0, scope: !1014)
!1033 = !DILocation(line: 237, column: 11, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1014, file: !1, line: 237, column: 6)
!1035 = !DILocation(line: 237, column: 6, scope: !1014)
!1036 = !DILocation(line: 239, column: 22, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 238, column: 4)
!1038 = !DILocation(line: 239, column: 36, scope: !1037)
!1039 = !DILocation(line: 239, column: 10, scope: !1037)
!1040 = !DILocation(line: 239, column: 19, scope: !1037)
!1041 = !DILocation(line: 240, column: 10, scope: !1037)
!1042 = !DILocation(line: 240, column: 17, scope: !1037)
!1043 = !DILocation(line: 241, column: 4, scope: !1037)
!1044 = !DILocation(line: 242, column: 7, scope: !1015)
!1045 = !DILocation(line: 243, column: 7, scope: !1015)
!1046 = !DILocation(line: 250, column: 7, scope: !1015)
!1047 = !DILocation(line: 252, column: 1, scope: !1007)
!1048 = distinct !DISubprogram(name: "write_defs", scope: !1, file: !1, line: 256, type: !814, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1057}
!1050 = !DILocalVariable(name: "pfile", arg: 1, scope: !1048, file: !1, line: 256, type: !304)
!1051 = !DILocalVariable(name: "hn", arg: 2, scope: !1048, file: !1, line: 256, type: !103)
!1052 = !DILocalVariable(name: "ss_p", arg: 3, scope: !1048, file: !1, line: 256, type: !69)
!1053 = !DILocalVariable(name: "ss", scope: !1048, file: !1, line: 258, type: !821)
!1054 = !DILocalVariable(name: "news", scope: !1055, file: !1, line: 270, type: !155)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 269, column: 7)
!1056 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 261, column: 5)
!1057 = !DILocalVariable(name: "slot", scope: !1055, file: !1, line: 271, type: !71)
!1058 = !DILocation(line: 0, scope: !1048)
!1059 = !DILocation(line: 260, column: 15, scope: !1048)
!1060 = !DILocation(line: 260, column: 3, scope: !1048)
!1061 = !DILocation(line: 263, column: 21, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 263, column: 11)
!1063 = !DILocation(line: 263, column: 11, scope: !1056)
!1064 = !DILocation(line: 270, column: 2, scope: !1055)
!1065 = !DILocation(line: 273, column: 13, scope: !1055)
!1066 = !DILocation(line: 273, column: 7, scope: !1055)
!1067 = !DILocation(line: 273, column: 11, scope: !1055)
!1068 = !DILocation(line: 274, column: 14, scope: !1055)
!1069 = !DILocation(line: 274, column: 7, scope: !1055)
!1070 = !DILocation(line: 274, column: 12, scope: !1055)
!1071 = !DILocation(line: 275, column: 34, scope: !1055)
!1072 = !DILocation(line: 275, column: 19, scope: !1055)
!1073 = !DILocation(line: 0, scope: !1055)
!1074 = !DILocation(line: 276, column: 11, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 276, column: 6)
!1076 = !DILocation(line: 276, column: 6, scope: !1055)
!1077 = !DILocation(line: 278, column: 10, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 277, column: 4)
!1079 = !DILocation(line: 278, column: 19, scope: !1078)
!1080 = !DILocation(line: 278, column: 6, scope: !1078)
!1081 = !DILocation(line: 278, column: 27, scope: !1078)
!1082 = !DILocation(line: 279, column: 17, scope: !1078)
!1083 = !DILocation(line: 280, column: 4, scope: !1078)
!1084 = !DILocation(line: 281, column: 7, scope: !1056)
!1085 = !DILocation(line: 282, column: 7, scope: !1056)
!1086 = !DILocation(line: 289, column: 7, scope: !1056)
!1087 = !DILocation(line: 291, column: 1, scope: !1048)
!1088 = distinct !DISubprogram(name: "comp_hashnodes", scope: !1, file: !1, line: 296, type: !61, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1089)
!1089 = !{!1090, !1091, !1092, !1093}
!1090 = !DILocalVariable(name: "px", arg: 1, scope: !1088, file: !1, line: 296, type: !56)
!1091 = !DILocalVariable(name: "py", arg: 2, scope: !1088, file: !1, line: 296, type: !56)
!1092 = !DILocalVariable(name: "x", scope: !1088, file: !1, line: 298, type: !103)
!1093 = !DILocalVariable(name: "y", scope: !1088, file: !1, line: 299, type: !103)
!1094 = !DILocation(line: 0, scope: !1088)
!1095 = !DILocation(line: 298, column: 22, scope: !1088)
!1096 = !DILocation(line: 298, column: 21, scope: !1088)
!1097 = !DILocation(line: 299, column: 22, scope: !1088)
!1098 = !DILocation(line: 299, column: 21, scope: !1088)
!1099 = !DILocation(line: 300, column: 19, scope: !1088)
!1100 = !DILocation(line: 300, column: 34, scope: !1088)
!1101 = !DILocation(line: 300, column: 10, scope: !1088)
!1102 = !DILocation(line: 300, column: 3, scope: !1088)
!1103 = distinct !DISubprogram(name: "cpp_write_pch_state", scope: !1, file: !1, line: 366, type: !302, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1104)
!1104 = !{!1105, !1106}
!1105 = !DILocalVariable(name: "r", arg: 1, scope: !1103, file: !1, line: 366, type: !304)
!1106 = !DILocalVariable(name: "f", arg: 2, scope: !1103, file: !1, line: 366, type: !205)
!1107 = !DILocation(line: 0, scope: !1103)
!1108 = !DILocation(line: 368, column: 11, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 368, column: 7)
!1110 = !DILocation(line: 368, column: 8, scope: !1109)
!1111 = !DILocation(line: 368, column: 7, scope: !1103)
!1112 = !DILocation(line: 369, column: 15, scope: !1109)
!1113 = !DILocation(line: 369, column: 13, scope: !1109)
!1114 = !DILocation(line: 369, column: 5, scope: !1109)
!1115 = !DILocation(line: 371, column: 21, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 371, column: 7)
!1117 = !DILocation(line: 371, column: 7, scope: !1116)
!1118 = !DILocation(line: 371, column: 30, scope: !1116)
!1119 = !DILocation(line: 371, column: 7, scope: !1103)
!1120 = !DILocation(line: 373, column: 7, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !1, line: 372, column: 5)
!1122 = !DILocation(line: 374, column: 7, scope: !1121)
!1123 = !DILocation(line: 377, column: 9, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 377, column: 7)
!1125 = !DILocation(line: 377, column: 7, scope: !1103)
!1126 = !DILocation(line: 379, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 378, column: 5)
!1128 = !DILocation(line: 380, column: 7, scope: !1127)
!1129 = !DILocation(line: 386, column: 19, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 386, column: 7)
!1131 = !DILocation(line: 386, column: 15, scope: !1130)
!1132 = !DILocation(line: 386, column: 7, scope: !1130)
!1133 = !DILocation(line: 386, column: 55, scope: !1130)
!1134 = !DILocation(line: 386, column: 7, scope: !1103)
!1135 = !DILocation(line: 388, column: 7, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 387, column: 5)
!1137 = !DILocation(line: 389, column: 7, scope: !1136)
!1138 = !DILocation(line: 393, column: 9, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 393, column: 7)
!1140 = !DILocation(line: 393, column: 7, scope: !1103)
!1141 = !DILocation(line: 395, column: 7, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1139, file: !1, line: 394, column: 5)
!1143 = !DILocation(line: 396, column: 7, scope: !1142)
!1144 = !DILocation(line: 400, column: 1, scope: !1103)
!1145 = distinct !DISubprogram(name: "_cpp_save_pushed_macros", scope: !1, file: !1, line: 471, type: !302, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156}
!1147 = !DILocalVariable(name: "r", arg: 1, scope: !1145, file: !1, line: 471, type: !304)
!1148 = !DILocalVariable(name: "f", arg: 2, scope: !1145, file: !1, line: 471, type: !205)
!1149 = !DILocalVariable(name: "count_saved", scope: !1145, file: !1, line: 473, type: !73)
!1150 = !DILocalVariable(name: "i", scope: !1145, file: !1, line: 474, type: !73)
!1151 = !DILocalVariable(name: "p", scope: !1145, file: !1, line: 475, type: !259)
!1152 = !DILocalVariable(name: "pp", scope: !1145, file: !1, line: 475, type: !258)
!1153 = !DILocalVariable(name: "node", scope: !1145, file: !1, line: 476, type: !103)
!1154 = !DILocalVariable(name: "m", scope: !1145, file: !1, line: 477, type: !126)
!1155 = !DILocalVariable(name: "defnlen", scope: !1145, file: !1, line: 478, type: !73)
!1156 = !DILocalVariable(name: "defn", scope: !1145, file: !1, line: 479, type: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!1159 = !DILocation(line: 0, scope: !1145)
!1160 = !DILocation(line: 473, column: 3, scope: !1145)
!1161 = !DILocation(line: 473, column: 10, scope: !1145)
!1162 = !DILocation(line: 478, column: 3, scope: !1145)
!1163 = !DILocation(line: 482, column: 10, scope: !1145)
!1164 = !DILocation(line: 483, column: 3, scope: !1145)
!1165 = !DILocation(line: 483, column: 12, scope: !1145)
!1166 = !DILocation(line: 485, column: 18, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 484, column: 5)
!1168 = !DILocation(line: 486, column: 14, scope: !1167)
!1169 = distinct !{!1169, !1164, !1170}
!1170 = !DILocation(line: 487, column: 5, scope: !1145)
!1171 = !DILocation(line: 488, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 488, column: 7)
!1173 = !DILocation(line: 488, column: 57, scope: !1172)
!1174 = !DILocation(line: 488, column: 7, scope: !1145)
!1175 = !DILocation(line: 490, column: 8, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 490, column: 7)
!1177 = !DILocation(line: 490, column: 7, scope: !1145)
!1178 = !DILocation(line: 493, column: 37, scope: !1145)
!1179 = !DILocation(line: 493, column: 8, scope: !1145)
!1180 = !DILocation(line: 498, column: 3, scope: !1145)
!1181 = !DILocation(line: 498, column: 12, scope: !1145)
!1182 = !DILocation(line: 504, column: 3, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 504, column: 3)
!1184 = !DILocation(line: 500, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 499, column: 5)
!1186 = !DILocation(line: 501, column: 7, scope: !1185)
!1187 = !DILocation(line: 501, column: 13, scope: !1185)
!1188 = !DILocation(line: 502, column: 14, scope: !1185)
!1189 = distinct !{!1189, !1180, !1190}
!1190 = !DILocation(line: 503, column: 5, scope: !1145)
!1191 = !DILocation(line: 504, column: 19, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 504, column: 3)
!1193 = !DILocation(line: 0, scope: !1183)
!1194 = !DILocation(line: 504, column: 17, scope: !1192)
!1195 = !DILocation(line: 507, column: 35, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 505, column: 5)
!1197 = !DILocation(line: 507, column: 42, scope: !1196)
!1198 = !DILocation(line: 507, column: 11, scope: !1196)
!1199 = !DILocation(line: 509, column: 37, scope: !1196)
!1200 = !DILocation(line: 509, column: 50, scope: !1196)
!1201 = !DILocation(line: 509, column: 7, scope: !1196)
!1202 = !DILocation(line: 510, column: 45, scope: !1196)
!1203 = !DILocation(line: 510, column: 14, scope: !1196)
!1204 = !DILocation(line: 511, column: 32, scope: !1196)
!1205 = !DILocation(line: 511, column: 17, scope: !1196)
!1206 = !DILocation(line: 511, column: 15, scope: !1196)
!1207 = !DILocation(line: 512, column: 11, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1196, file: !1, line: 512, column: 11)
!1209 = !DILocation(line: 512, column: 52, scope: !1208)
!1210 = !DILocation(line: 513, column: 4, scope: !1208)
!1211 = !DILocation(line: 513, column: 22, scope: !1208)
!1212 = !DILocation(line: 513, column: 28, scope: !1208)
!1213 = !DILocation(line: 513, column: 7, scope: !1208)
!1214 = !DILocation(line: 513, column: 43, scope: !1208)
!1215 = !DILocation(line: 512, column: 11, scope: !1196)
!1216 = !DILocation(line: 515, column: 14, scope: !1196)
!1217 = !DILocation(line: 516, column: 17, scope: !1196)
!1218 = !DILocation(line: 516, column: 15, scope: !1196)
!1219 = !DILocation(line: 517, column: 11, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1196, file: !1, line: 517, column: 11)
!1221 = !DILocation(line: 517, column: 52, scope: !1220)
!1222 = !DILocation(line: 518, column: 4, scope: !1220)
!1223 = !DILocation(line: 518, column: 21, scope: !1220)
!1224 = !DILocation(line: 518, column: 7, scope: !1220)
!1225 = !DILocation(line: 518, column: 36, scope: !1220)
!1226 = !DILocation(line: 517, column: 11, scope: !1196)
!1227 = !DILocation(line: 521, column: 37, scope: !1196)
!1228 = !DILocation(line: 521, column: 7, scope: !1196)
!1229 = !DILocation(line: 504, column: 33, scope: !1192)
!1230 = !DILocation(line: 504, column: 3, scope: !1192)
!1231 = distinct !{!1231, !1182, !1232}
!1232 = !DILocation(line: 522, column: 5, scope: !1183)
!1233 = !DILocation(line: 524, column: 1, scope: !1145)
!1234 = distinct !DISubprogram(name: "cpp_valid_state", scope: !1, file: !1, line: 576, type: !602, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1235)
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1252, !1253, !1255, !1256}
!1236 = !DILocalVariable(name: "r", arg: 1, scope: !1234, file: !1, line: 576, type: !304)
!1237 = !DILocalVariable(name: "name", arg: 2, scope: !1234, file: !1, line: 576, type: !266)
!1238 = !DILocalVariable(name: "fd", arg: 3, scope: !1234, file: !1, line: 576, type: !63)
!1239 = !DILocalVariable(name: "m", scope: !1234, file: !1, line: 578, type: !872)
!1240 = !DILocalVariable(name: "namebufsz", scope: !1234, file: !1, line: 579, type: !73)
!1241 = !DILocalVariable(name: "namebuf", scope: !1234, file: !1, line: 580, type: !188)
!1242 = !DILocalVariable(name: "undeftab", scope: !1234, file: !1, line: 581, type: !188)
!1243 = !DILocalVariable(name: "nl", scope: !1234, file: !1, line: 582, type: !269)
!1244 = !DILocalVariable(name: "first", scope: !1234, file: !1, line: 583, type: !188)
!1245 = !DILocalVariable(name: "last", scope: !1234, file: !1, line: 583, type: !188)
!1246 = !DILocalVariable(name: "i", scope: !1234, file: !1, line: 584, type: !5)
!1247 = !DILocalVariable(name: "counter", scope: !1234, file: !1, line: 585, type: !5)
!1248 = !DILocalVariable(name: "h", scope: !1249, file: !1, line: 591, type: !103)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !1, line: 590, column: 5)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 589, column: 3)
!1251 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 589, column: 3)
!1252 = !DILocalVariable(name: "newdefn", scope: !1249, file: !1, line: 592, type: !112)
!1253 = !DILocalVariable(name: "cmp", scope: !1254, file: !1, line: 695, type: !63)
!1254 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 694, column: 5)
!1255 = !DILabel(scope: !1234, name: "error", file: !1, line: 733)
!1256 = !DILabel(scope: !1234, name: "fail", file: !1, line: 737)
!1257 = !DILocation(line: 0, scope: !1234)
!1258 = !DILocation(line: 578, column: 3, scope: !1234)
!1259 = !DILocation(line: 580, column: 28, scope: !1234)
!1260 = !DILocation(line: 582, column: 3, scope: !1234)
!1261 = !DILocation(line: 582, column: 23, scope: !1234)
!1262 = !DILocation(line: 585, column: 3, scope: !1234)
!1263 = !DILocation(line: 0, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 597, column: 11)
!1265 = !DILocation(line: 0, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 602, column: 11)
!1267 = !DILocation(line: 0, scope: !1249)
!1268 = !DILocation(line: 0, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 621, column: 11)
!1270 = !DILocation(line: 0, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 646, column: 8)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 632, column: 2)
!1273 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 631, column: 11)
!1274 = !DILocation(line: 589, column: 3, scope: !1234)
!1275 = !DILocation(line: 580, column: 18, scope: !1234)
!1276 = !DILocation(line: 579, column: 10, scope: !1234)
!1277 = !DILocation(line: 594, column: 11, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 594, column: 11)
!1279 = !DILocation(line: 594, column: 37, scope: !1278)
!1280 = !DILocation(line: 594, column: 11, scope: !1249)
!1281 = !DILocation(line: 597, column: 13, scope: !1264)
!1282 = !DILocation(line: 597, column: 25, scope: !1264)
!1283 = !DILocation(line: 597, column: 11, scope: !1249)
!1284 = !DILocation(line: 602, column: 11, scope: !1266)
!1285 = !DILocation(line: 602, column: 11, scope: !1249)
!1286 = !DILocation(line: 604, column: 8, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 604, column: 8)
!1288 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 603, column: 2)
!1289 = !DILocation(line: 604, column: 50, scope: !1287)
!1290 = !DILocation(line: 0, scope: !1288)
!1291 = !DILocation(line: 609, column: 31, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 609, column: 11)
!1293 = !DILocation(line: 609, column: 11, scope: !1249)
!1294 = !DILocation(line: 611, column: 4, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !1, line: 610, column: 2)
!1296 = !DILocation(line: 612, column: 18, scope: !1295)
!1297 = !DILocation(line: 612, column: 36, scope: !1295)
!1298 = !DILocation(line: 612, column: 16, scope: !1295)
!1299 = !DILocation(line: 613, column: 14, scope: !1295)
!1300 = !DILocation(line: 616, column: 40, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 616, column: 11)
!1302 = !DILocation(line: 616, column: 38, scope: !1301)
!1303 = !DILocation(line: 614, column: 2, scope: !1295)
!1304 = !DILocation(line: 616, column: 19, scope: !1301)
!1305 = !DILocation(line: 617, column: 9, scope: !1301)
!1306 = !DILocation(line: 617, column: 7, scope: !1301)
!1307 = !DILocation(line: 617, column: 4, scope: !1301)
!1308 = !DILocation(line: 616, column: 11, scope: !1249)
!1309 = !DILocation(line: 620, column: 37, scope: !1249)
!1310 = !DILocation(line: 620, column: 35, scope: !1249)
!1311 = !DILocation(line: 620, column: 11, scope: !1249)
!1312 = !DILocation(line: 621, column: 13, scope: !1269)
!1313 = !DILocation(line: 621, column: 19, scope: !1269)
!1314 = !DILocation(line: 622, column: 4, scope: !1269)
!1315 = !DILocation(line: 622, column: 10, scope: !1269)
!1316 = !DILocation(line: 622, column: 16, scope: !1269)
!1317 = !DILocation(line: 621, column: 11, scope: !1249)
!1318 = !DILocation(line: 624, column: 8, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !1, line: 624, column: 8)
!1320 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 623, column: 2)
!1321 = !DILocation(line: 624, column: 8, scope: !1320)
!1322 = !DILocation(line: 627, column: 18, scope: !1319)
!1323 = !DILocation(line: 627, column: 16, scope: !1319)
!1324 = !DILocation(line: 625, column: 6, scope: !1319)
!1325 = !DILocation(line: 631, column: 14, scope: !1273)
!1326 = !DILocation(line: 631, column: 19, scope: !1273)
!1327 = !DILocation(line: 631, column: 11, scope: !1249)
!1328 = !DILocation(line: 641, column: 19, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 641, column: 8)
!1330 = !DILocation(line: 642, column: 8, scope: !1329)
!1331 = !DILocation(line: 642, column: 13, scope: !1329)
!1332 = !DILocation(line: 642, column: 25, scope: !1329)
!1333 = !DILocation(line: 643, column: 8, scope: !1329)
!1334 = !DILocation(line: 643, column: 12, scope: !1329)
!1335 = !DILocation(line: 641, column: 8, scope: !1272)
!1336 = distinct !{!1336, !1337, !1338}
!1337 = !DILocation(line: 589, column: 3, scope: !1251)
!1338 = !DILocation(line: 666, column: 5, scope: !1251)
!1339 = !DILocation(line: 646, column: 8, scope: !1271)
!1340 = !DILocation(line: 646, column: 8, scope: !1272)
!1341 = !DILocation(line: 649, column: 18, scope: !1271)
!1342 = !DILocation(line: 649, column: 16, scope: !1271)
!1343 = !DILocation(line: 647, column: 6, scope: !1271)
!1344 = !DILocation(line: 653, column: 17, scope: !1249)
!1345 = !DILocation(line: 655, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 655, column: 11)
!1347 = !DILocation(line: 655, column: 11, scope: !1346)
!1348 = !DILocation(line: 655, column: 34, scope: !1346)
!1349 = !DILocation(line: 655, column: 31, scope: !1346)
!1350 = !DILocation(line: 656, column: 4, scope: !1346)
!1351 = !DILocation(line: 656, column: 35, scope: !1346)
!1352 = !DILocation(line: 656, column: 33, scope: !1346)
!1353 = !DILocation(line: 656, column: 7, scope: !1346)
!1354 = !DILocation(line: 656, column: 54, scope: !1346)
!1355 = !DILocation(line: 655, column: 11, scope: !1249)
!1356 = !DILocation(line: 658, column: 8, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 658, column: 8)
!1358 = distinct !DILexicalBlock(scope: !1346, file: !1, line: 657, column: 2)
!1359 = !DILocation(line: 658, column: 8, scope: !1358)
!1360 = !DILocation(line: 661, column: 18, scope: !1357)
!1361 = !DILocation(line: 661, column: 16, scope: !1357)
!1362 = !DILocation(line: 661, column: 48, scope: !1357)
!1363 = !DILocation(line: 662, column: 12, scope: !1357)
!1364 = !DILocation(line: 662, column: 30, scope: !1357)
!1365 = !DILocation(line: 663, column: 18, scope: !1357)
!1366 = !DILocation(line: 659, column: 6, scope: !1357)
!1367 = !DILocation(line: 667, column: 3, scope: !1234)
!1368 = !DILocation(line: 672, column: 14, scope: !1234)
!1369 = !DILocation(line: 673, column: 38, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 673, column: 7)
!1371 = !DILocation(line: 673, column: 36, scope: !1370)
!1372 = !DILocation(line: 673, column: 16, scope: !1370)
!1373 = !DILocation(line: 673, column: 62, scope: !1370)
!1374 = !DILocation(line: 673, column: 60, scope: !1370)
!1375 = !DILocation(line: 673, column: 57, scope: !1370)
!1376 = !DILocation(line: 673, column: 7, scope: !1234)
!1377 = !DILocation(line: 677, column: 6, scope: !1234)
!1378 = !DILocation(line: 677, column: 13, scope: !1234)
!1379 = !DILocation(line: 678, column: 6, scope: !1234)
!1380 = !DILocation(line: 678, column: 12, scope: !1234)
!1381 = !DILocation(line: 679, column: 13, scope: !1234)
!1382 = !DILocation(line: 679, column: 11, scope: !1234)
!1383 = !DILocation(line: 680, column: 3, scope: !1234)
!1384 = !DILocation(line: 682, column: 18, scope: !1234)
!1385 = !DILocation(line: 682, column: 27, scope: !1234)
!1386 = !DILocation(line: 682, column: 3, scope: !1234)
!1387 = !DILocation(line: 690, column: 23, scope: !1234)
!1388 = !DILocation(line: 690, column: 19, scope: !1234)
!1389 = !DILocation(line: 693, column: 3, scope: !1234)
!1390 = !DILocation(line: 691, column: 5, scope: !1234)
!1391 = !DILocation(line: 693, column: 16, scope: !1234)
!1392 = !DILocation(line: 693, column: 23, scope: !1234)
!1393 = !DILocation(line: 695, column: 33, scope: !1254)
!1394 = !DILocation(line: 695, column: 17, scope: !1254)
!1395 = !DILocation(line: 0, scope: !1254)
!1396 = !DILocation(line: 697, column: 15, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 697, column: 11)
!1398 = !DILocation(line: 697, column: 11, scope: !1254)
!1399 = !DILocation(line: 698, column: 12, scope: !1397)
!1400 = !DILocation(line: 698, column: 28, scope: !1397)
!1401 = !DILocation(line: 698, column: 9, scope: !1397)
!1402 = !DILocation(line: 698, column: 3, scope: !1397)
!1403 = !DILocation(line: 699, column: 20, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 699, column: 16)
!1405 = !DILocation(line: 699, column: 16, scope: !1397)
!1406 = !DILocation(line: 700, column: 3, scope: !1404)
!1407 = !DILocation(line: 703, column: 8, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 703, column: 8)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !1, line: 702, column: 2)
!1410 = !DILocation(line: 703, column: 8, scope: !1409)
!1411 = !DILocation(line: 704, column: 6, scope: !1408)
!1412 = distinct !{!1412, !1389, !1413}
!1413 = !DILocation(line: 709, column: 5, scope: !1234)
!1414 = !DILocation(line: 711, column: 8, scope: !1234)
!1415 = !DILocation(line: 711, column: 3, scope: !1234)
!1416 = !DILocation(line: 712, column: 11, scope: !1234)
!1417 = !DILocation(line: 713, column: 3, scope: !1234)
!1418 = !DILocation(line: 719, column: 7, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 719, column: 7)
!1420 = !DILocation(line: 719, column: 45, scope: !1419)
!1421 = !DILocation(line: 719, column: 7, scope: !1234)
!1422 = !DILocation(line: 721, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 721, column: 7)
!1424 = !DILocation(line: 721, column: 15, scope: !1423)
!1425 = !DILocation(line: 721, column: 21, scope: !1423)
!1426 = !DILocation(line: 721, column: 18, scope: !1423)
!1427 = !DILocation(line: 721, column: 7, scope: !1234)
!1428 = !DILocation(line: 723, column: 11, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 723, column: 11)
!1430 = distinct !DILexicalBlock(scope: !1423, file: !1, line: 722, column: 5)
!1431 = !DILocation(line: 723, column: 11, scope: !1430)
!1432 = !DILocation(line: 724, column: 2, scope: !1429)
!1433 = !DILocation(line: 734, column: 3, scope: !1234)
!1434 = !DILocation(line: 733, column: 2, scope: !1234)
!1435 = !DILocation(line: 735, column: 3, scope: !1234)
!1436 = !DILocation(line: 738, column: 15, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 738, column: 7)
!1438 = !DILocation(line: 737, column: 2, scope: !1234)
!1439 = !DILocation(line: 738, column: 7, scope: !1234)
!1440 = !DILocation(line: 739, column: 5, scope: !1437)
!1441 = !DILocation(line: 740, column: 16, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 740, column: 7)
!1443 = !DILocation(line: 740, column: 7, scope: !1234)
!1444 = !DILocation(line: 741, column: 5, scope: !1442)
!1445 = !DILocation(line: 742, column: 10, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 742, column: 7)
!1447 = !DILocation(line: 742, column: 15, scope: !1446)
!1448 = !DILocation(line: 742, column: 7, scope: !1234)
!1449 = !DILocation(line: 743, column: 5, scope: !1446)
!1450 = !DILocation(line: 745, column: 1, scope: !1234)
!1451 = distinct !DISubprogram(name: "ustrlen", scope: !261, file: !261, line: 705, type: !1452, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1454)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!73, !112}
!1454 = !{!1455}
!1455 = !DILocalVariable(name: "s1", arg: 1, scope: !1451, file: !261, line: 705, type: !112)
!1456 = !DILocation(line: 0, scope: !1451)
!1457 = !DILocation(line: 707, column: 10, scope: !1451)
!1458 = !DILocation(line: 707, column: 3, scope: !1451)
!1459 = distinct !DISubprogram(name: "collect_ht_nodes", scope: !1, file: !1, line: 542, type: !814, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1460)
!1460 = !{!1461, !1462, !1463, !1464}
!1461 = !DILocalVariable(name: "pfile", arg: 1, scope: !1459, file: !1, line: 542, type: !304)
!1462 = !DILocalVariable(name: "hn", arg: 2, scope: !1459, file: !1, line: 542, type: !103)
!1463 = !DILocalVariable(name: "nl_p", arg: 3, scope: !1459, file: !1, line: 543, type: !69)
!1464 = !DILocalVariable(name: "nl", scope: !1459, file: !1, line: 545, type: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!1466 = !DILocation(line: 0, scope: !1459)
!1467 = !DILocation(line: 547, column: 11, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1459, file: !1, line: 547, column: 7)
!1469 = !DILocation(line: 547, column: 16, scope: !1468)
!1470 = !DILocation(line: 547, column: 27, scope: !1468)
!1471 = !DILocation(line: 547, column: 40, scope: !1468)
!1472 = !DILocation(line: 547, column: 7, scope: !1459)
!1473 = !DILocation(line: 549, column: 15, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 549, column: 11)
!1475 = distinct !DILexicalBlock(scope: !1468, file: !1, line: 548, column: 5)
!1476 = !DILocation(line: 549, column: 29, scope: !1474)
!1477 = !DILocation(line: 549, column: 22, scope: !1474)
!1478 = !DILocation(line: 549, column: 11, scope: !1475)
!1479 = !DILocation(line: 0, scope: !1475)
!1480 = !DILocation(line: 555, column: 11, scope: !1475)
!1481 = !DILocation(line: 551, column: 21, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 550, column: 9)
!1483 = !DILocation(line: 552, column: 22, scope: !1482)
!1484 = !DILocation(line: 552, column: 20, scope: !1482)
!1485 = !DILocation(line: 553, column: 9, scope: !1482)
!1486 = !DILocation(line: 555, column: 20, scope: !1475)
!1487 = !DILocation(line: 555, column: 7, scope: !1475)
!1488 = !DILocation(line: 555, column: 28, scope: !1475)
!1489 = !DILocation(line: 556, column: 7, scope: !1475)
!1490 = !DILocation(line: 557, column: 5, scope: !1475)
!1491 = !DILocation(line: 558, column: 3, scope: !1459)
!1492 = distinct !DISubprogram(name: "ustrcmp", scope: !261, file: !261, line: 687, type: !1493, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1495)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!63, !112, !112}
!1495 = !{!1496, !1497}
!1496 = !DILocalVariable(name: "s1", arg: 1, scope: !1492, file: !261, line: 687, type: !112)
!1497 = !DILocalVariable(name: "s2", arg: 2, scope: !1492, file: !261, line: 687, type: !112)
!1498 = !DILocation(line: 0, scope: !1492)
!1499 = !DILocation(line: 689, column: 10, scope: !1492)
!1500 = !DILocation(line: 689, column: 3, scope: !1492)
!1501 = distinct !DISubprogram(name: "cpp_prepare_state", scope: !1, file: !1, line: 813, type: !1502, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1505)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !304, !1504}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!1505 = !{!1506, !1507, !1508}
!1506 = !DILocalVariable(name: "r", arg: 1, scope: !1501, file: !1, line: 813, type: !304)
!1507 = !DILocalVariable(name: "data", arg: 2, scope: !1501, file: !1, line: 813, type: !1504)
!1508 = !DILocalVariable(name: "d", scope: !1501, file: !1, line: 815, type: !189)
!1509 = !DILocation(line: 0, scope: !1501)
!1510 = !DILocation(line: 815, column: 31, scope: !1501)
!1511 = !DILocation(line: 817, column: 6, scope: !1501)
!1512 = !DILocation(line: 817, column: 17, scope: !1501)
!1513 = !DILocation(line: 818, column: 14, scope: !1501)
!1514 = !DILocation(line: 818, column: 12, scope: !1501)
!1515 = !DILocation(line: 819, column: 6, scope: !1501)
!1516 = !DILocation(line: 819, column: 12, scope: !1501)
!1517 = !DILocation(line: 820, column: 3, scope: !1501)
!1518 = !DILocation(line: 821, column: 22, scope: !1501)
!1519 = !DILocation(line: 821, column: 6, scope: !1501)
!1520 = !DILocation(line: 821, column: 20, scope: !1501)
!1521 = !DILocation(line: 822, column: 9, scope: !1501)
!1522 = !DILocation(line: 823, column: 1, scope: !1501)
!1523 = distinct !DISubprogram(name: "save_macros", scope: !1, file: !1, line: 772, type: !814, scopeLine: 773, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1524)
!1524 = !{!1525, !1526, !1527, !1528, !1529, !1534}
!1525 = !DILocalVariable(name: "r", arg: 1, scope: !1523, file: !1, line: 772, type: !304)
!1526 = !DILocalVariable(name: "h", arg: 2, scope: !1523, file: !1, line: 772, type: !103)
!1527 = !DILocalVariable(name: "data_p", arg: 3, scope: !1523, file: !1, line: 772, type: !69)
!1528 = !DILocalVariable(name: "data", scope: !1523, file: !1, line: 774, type: !189)
!1529 = !DILocalVariable(name: "defn", scope: !1530, file: !1, line: 792, type: !1157)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !1, line: 791, column: 4)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 785, column: 2)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !1, line: 777, column: 5)
!1533 = distinct !DILexicalBlock(scope: !1523, file: !1, line: 775, column: 7)
!1534 = !DILocalVariable(name: "defnlen", scope: !1530, file: !1, line: 793, type: !73)
!1535 = !DILocation(line: 0, scope: !1523)
!1536 = !DILocation(line: 775, column: 10, scope: !1533)
!1537 = !DILocation(line: 775, column: 15, scope: !1533)
!1538 = !DILocation(line: 776, column: 7, scope: !1533)
!1539 = !DILocation(line: 776, column: 20, scope: !1533)
!1540 = !DILocation(line: 776, column: 36, scope: !1533)
!1541 = !DILocation(line: 775, column: 7, scope: !1523)
!1542 = !DILocation(line: 778, column: 17, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 778, column: 11)
!1544 = !DILocation(line: 778, column: 32, scope: !1543)
!1545 = !DILocation(line: 778, column: 23, scope: !1543)
!1546 = !DILocation(line: 778, column: 11, scope: !1532)
!1547 = !DILocation(line: 780, column: 21, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !1, line: 779, column: 2)
!1549 = !DILocation(line: 781, column: 18, scope: !1548)
!1550 = !DILocation(line: 781, column: 16, scope: !1548)
!1551 = !DILocation(line: 784, column: 18, scope: !1532)
!1552 = !DILocation(line: 782, column: 2, scope: !1548)
!1553 = !DILocation(line: 784, column: 7, scope: !1532)
!1554 = !DILocation(line: 792, column: 27, scope: !1530)
!1555 = !DILocation(line: 0, scope: !1530)
!1556 = !DILocation(line: 793, column: 23, scope: !1530)
!1557 = !DILocation(line: 796, column: 67, scope: !1530)
!1558 = !DILocation(line: 795, column: 43, scope: !1530)
!1559 = !DILocation(line: 795, column: 12, scope: !1530)
!1560 = !DILocation(line: 795, column: 24, scope: !1530)
!1561 = !DILocation(line: 795, column: 6, scope: !1530)
!1562 = !DILocation(line: 795, column: 31, scope: !1530)
!1563 = !DILocation(line: 797, column: 12, scope: !1530)
!1564 = !DILocation(line: 797, column: 24, scope: !1530)
!1565 = !DILocation(line: 797, column: 6, scope: !1530)
!1566 = !DILocation(line: 797, column: 40, scope: !1530)
!1567 = !DILocation(line: 804, column: 18, scope: !1532)
!1568 = !DILocation(line: 805, column: 5, scope: !1532)
!1569 = !DILocation(line: 802, column: 4, scope: !1531)
!1570 = !DILocation(line: 807, column: 1, scope: !1523)
!1571 = distinct !DISubprogram(name: "cpp_read_state", scope: !1, file: !1, line: 830, type: !1572, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1574)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!63, !304, !266, !205, !189}
!1574 = !{!1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1585, !1589, !1590, !1591}
!1575 = !DILocalVariable(name: "r", arg: 1, scope: !1571, file: !1, line: 830, type: !304)
!1576 = !DILocalVariable(name: "name", arg: 2, scope: !1571, file: !1, line: 830, type: !266)
!1577 = !DILocalVariable(name: "f", arg: 3, scope: !1571, file: !1, line: 830, type: !205)
!1578 = !DILocalVariable(name: "data", arg: 4, scope: !1571, file: !1, line: 831, type: !189)
!1579 = !DILocalVariable(name: "i", scope: !1571, file: !1, line: 833, type: !73)
!1580 = !DILocalVariable(name: "old_state", scope: !1571, file: !1, line: 834, type: !383)
!1581 = !DILocalVariable(name: "counter", scope: !1571, file: !1, line: 835, type: !5)
!1582 = !DILocalVariable(name: "s", scope: !1583, file: !1, line: 840, type: !1584)
!1583 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 839, column: 3)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!1585 = !DILocalVariable(name: "h", scope: !1586, file: !1, line: 855, type: !103)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !1, line: 854, column: 5)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !1, line: 853, column: 3)
!1588 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 853, column: 3)
!1589 = !DILocalVariable(name: "namelen", scope: !1586, file: !1, line: 856, type: !73)
!1590 = !DILocalVariable(name: "defn", scope: !1586, file: !1, line: 857, type: !194)
!1591 = !DILabel(scope: !1571, name: "error", file: !1, line: 906)
!1592 = !DILocation(line: 0, scope: !1571)
!1593 = !DILocation(line: 834, column: 3, scope: !1571)
!1594 = !DILocation(line: 835, column: 3, scope: !1571)
!1595 = !DILocation(line: 0, scope: !1583)
!1596 = !DILocation(line: 841, column: 20, scope: !1583)
!1597 = !DILocation(line: 841, column: 8, scope: !1583)
!1598 = !DILocation(line: 841, column: 18, scope: !1583)
!1599 = !DILocation(line: 842, column: 18, scope: !1583)
!1600 = !DILocation(line: 842, column: 8, scope: !1583)
!1601 = !DILocation(line: 842, column: 16, scope: !1583)
!1602 = !DILocation(line: 843, column: 19, scope: !1583)
!1603 = !DILocation(line: 843, column: 8, scope: !1583)
!1604 = !DILocation(line: 843, column: 17, scope: !1583)
!1605 = !DILocation(line: 844, column: 27, scope: !1583)
!1606 = !DILocation(line: 844, column: 8, scope: !1583)
!1607 = !DILocation(line: 844, column: 25, scope: !1583)
!1608 = !DILocation(line: 847, column: 18, scope: !1571)
!1609 = !DILocation(line: 848, column: 25, scope: !1571)
!1610 = !DILocation(line: 849, column: 12, scope: !1571)
!1611 = !DILocation(line: 849, column: 30, scope: !1571)
!1612 = !DILocation(line: 850, column: 12, scope: !1571)
!1613 = !DILocation(line: 850, column: 27, scope: !1571)
!1614 = !DILocation(line: 0, scope: !1587)
!1615 = !DILocation(line: 0, scope: !1586)
!1616 = !DILocation(line: 853, column: 8, scope: !1588)
!1617 = !DILocation(line: 0, scope: !1588)
!1618 = !DILocation(line: 853, column: 25, scope: !1587)
!1619 = !DILocation(line: 853, column: 17, scope: !1587)
!1620 = !DILocation(line: 853, column: 3, scope: !1588)
!1621 = !DILocation(line: 859, column: 33, scope: !1586)
!1622 = !DILocation(line: 859, column: 27, scope: !1586)
!1623 = !DILocation(line: 859, column: 17, scope: !1586)
!1624 = !DILocation(line: 860, column: 32, scope: !1586)
!1625 = !DILocation(line: 860, column: 26, scope: !1586)
!1626 = !DILocation(line: 860, column: 11, scope: !1586)
!1627 = !DILocation(line: 861, column: 20, scope: !1586)
!1628 = !DILocation(line: 861, column: 14, scope: !1586)
!1629 = !DILocation(line: 861, column: 29, scope: !1586)
!1630 = !DILocation(line: 866, column: 14, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1586, file: !1, line: 866, column: 11)
!1632 = !DILocation(line: 866, column: 19, scope: !1631)
!1633 = !DILocation(line: 866, column: 11, scope: !1586)
!1634 = !DILocation(line: 868, column: 34, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !1, line: 868, column: 8)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 867, column: 2)
!1637 = !DILocation(line: 868, column: 55, scope: !1635)
!1638 = !DILocation(line: 868, column: 8, scope: !1635)
!1639 = !DILocation(line: 869, column: 8, scope: !1635)
!1640 = !DILocation(line: 868, column: 8, scope: !1636)
!1641 = !DILocation(line: 871, column: 8, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 870, column: 6)
!1643 = !DILocation(line: 872, column: 13, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1642, file: !1, line: 872, column: 12)
!1645 = !DILocation(line: 872, column: 12, scope: !1642)
!1646 = !DILocation(line: 873, column: 3, scope: !1644)
!1647 = !DILocation(line: 874, column: 8, scope: !1642)
!1648 = !DILocation(line: 880, column: 19, scope: !1586)
!1649 = !DILocation(line: 880, column: 13, scope: !1586)
!1650 = !DILocation(line: 878, column: 2, scope: !1636)
!1651 = !DILocation(line: 877, column: 6, scope: !1635)
!1652 = !DILocation(line: 880, column: 7, scope: !1586)
!1653 = !DILocation(line: 853, column: 33, scope: !1587)
!1654 = !DILocation(line: 853, column: 3, scope: !1587)
!1655 = distinct !{!1655, !1620, !1656}
!1656 = !DILocation(line: 881, column: 5, scope: !1588)
!1657 = !DILocation(line: 882, column: 14, scope: !1571)
!1658 = !DILocation(line: 884, column: 39, scope: !1571)
!1659 = !DILocation(line: 884, column: 3, scope: !1571)
!1660 = !DILocation(line: 886, column: 9, scope: !1571)
!1661 = !DILocation(line: 886, column: 3, scope: !1571)
!1662 = !DILocation(line: 888, column: 24, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 888, column: 7)
!1664 = !DILocation(line: 888, column: 33, scope: !1663)
!1665 = !DILocation(line: 888, column: 7, scope: !1663)
!1666 = !DILocation(line: 889, column: 7, scope: !1663)
!1667 = !DILocation(line: 888, column: 7, scope: !1571)
!1668 = !DILocation(line: 892, column: 9, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 892, column: 7)
!1670 = !DILocation(line: 892, column: 7, scope: !1571)
!1671 = !DILocation(line: 895, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 895, column: 7)
!1673 = !DILocation(line: 895, column: 48, scope: !1672)
!1674 = !DILocation(line: 895, column: 7, scope: !1571)
!1675 = !DILocation(line: 898, column: 11, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 898, column: 7)
!1677 = !DILocation(line: 898, column: 8, scope: !1676)
!1678 = !DILocation(line: 898, column: 7, scope: !1571)
!1679 = !DILocation(line: 899, column: 18, scope: !1676)
!1680 = !DILocation(line: 899, column: 16, scope: !1676)
!1681 = !DILocation(line: 899, column: 5, scope: !1676)
!1682 = !DILocation(line: 902, column: 9, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 902, column: 7)
!1684 = !DILocation(line: 902, column: 7, scope: !1571)
!1685 = !DILocation(line: 906, column: 2, scope: !1571)
!1686 = !DILocation(line: 907, column: 3, scope: !1571)
!1687 = !DILocation(line: 908, column: 3, scope: !1571)
!1688 = !DILocation(line: 909, column: 1, scope: !1571)
!1689 = distinct !DISubprogram(name: "ustrcspn", scope: !261, file: !261, line: 699, type: !1690, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1692)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!63, !112, !266}
!1692 = !{!1693, !1694}
!1693 = !DILocalVariable(name: "s1", arg: 1, scope: !1689, file: !261, line: 699, type: !112)
!1694 = !DILocalVariable(name: "s2", arg: 2, scope: !1689, file: !261, line: 699, type: !266)
!1695 = !DILocation(line: 0, scope: !1689)
!1696 = !DILocation(line: 701, column: 10, scope: !1689)
!1697 = !DILocation(line: 701, column: 3, scope: !1689)
!1698 = distinct !DISubprogram(name: "ustrchr", scope: !261, file: !261, line: 717, type: !1699, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!188, !112, !63}
!1701 = !{!1702, !1703}
!1702 = !DILocalVariable(name: "s1", arg: 1, scope: !1698, file: !261, line: 717, type: !112)
!1703 = !DILocalVariable(name: "c", arg: 2, scope: !1698, file: !261, line: 717, type: !63)
!1704 = !DILocation(line: 0, scope: !1698)
!1705 = !DILocation(line: 719, column: 28, scope: !1698)
!1706 = !DILocation(line: 719, column: 3, scope: !1698)
!1707 = distinct !DISubprogram(name: "_cpp_restore_pushed_macros", scope: !1, file: !1, line: 403, type: !302, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1708)
!1708 = !{!1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1724}
!1709 = !DILocalVariable(name: "r", arg: 1, scope: !1707, file: !1, line: 403, type: !304)
!1710 = !DILocalVariable(name: "f", arg: 2, scope: !1707, file: !1, line: 403, type: !205)
!1711 = !DILocalVariable(name: "count_saved", scope: !1707, file: !1, line: 405, type: !73)
!1712 = !DILocalVariable(name: "i", scope: !1707, file: !1, line: 406, type: !73)
!1713 = !DILocalVariable(name: "p", scope: !1707, file: !1, line: 407, type: !259)
!1714 = !DILocalVariable(name: "nlen", scope: !1707, file: !1, line: 408, type: !73)
!1715 = !DILocalVariable(name: "h", scope: !1707, file: !1, line: 409, type: !103)
!1716 = !DILocalVariable(name: "m", scope: !1707, file: !1, line: 410, type: !126)
!1717 = !DILocalVariable(name: "defn", scope: !1707, file: !1, line: 411, type: !194)
!1718 = !DILocalVariable(name: "defnlen", scope: !1707, file: !1, line: 412, type: !73)
!1719 = !DILocalVariable(name: "namelen", scope: !1720, file: !1, line: 439, type: !73)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !1, line: 438, column: 7)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !1, line: 419, column: 5)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !1, line: 418, column: 3)
!1723 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 418, column: 3)
!1724 = !DILocalVariable(name: "dn", scope: !1720, file: !1, line: 440, type: !194)
!1725 = !DILocation(line: 0, scope: !1707)
!1726 = !DILocation(line: 405, column: 3, scope: !1707)
!1727 = !DILocation(line: 405, column: 10, scope: !1707)
!1728 = !DILocation(line: 408, column: 3, scope: !1707)
!1729 = !DILocation(line: 412, column: 3, scope: !1707)
!1730 = !DILocation(line: 414, column: 7, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 414, column: 7)
!1732 = !DILocation(line: 414, column: 56, scope: !1731)
!1733 = !DILocation(line: 414, column: 7, scope: !1707)
!1734 = !DILocation(line: 416, column: 9, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 416, column: 7)
!1736 = !DILocation(line: 416, column: 7, scope: !1707)
!1737 = !DILocation(line: 0, scope: !1721)
!1738 = !DILocation(line: 418, column: 3, scope: !1723)
!1739 = !DILocation(line: 418, column: 19, scope: !1722)
!1740 = !DILocation(line: 0, scope: !1723)
!1741 = !DILocation(line: 418, column: 17, scope: !1722)
!1742 = !DILocation(line: 420, column: 11, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1721, file: !1, line: 420, column: 11)
!1744 = !DILocation(line: 420, column: 46, scope: !1743)
!1745 = !DILocation(line: 420, column: 11, scope: !1721)
!1746 = !DILocation(line: 422, column: 11, scope: !1721)
!1747 = !DILocation(line: 423, column: 17, scope: !1721)
!1748 = !DILocation(line: 423, column: 10, scope: !1721)
!1749 = !DILocation(line: 423, column: 15, scope: !1721)
!1750 = !DILocation(line: 424, column: 15, scope: !1721)
!1751 = !DILocation(line: 424, column: 7, scope: !1721)
!1752 = !DILocation(line: 424, column: 21, scope: !1721)
!1753 = !DILocation(line: 425, column: 21, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1721, file: !1, line: 425, column: 11)
!1755 = !DILocation(line: 425, column: 27, scope: !1754)
!1756 = !DILocation(line: 425, column: 11, scope: !1754)
!1757 = !DILocation(line: 425, column: 39, scope: !1754)
!1758 = !DILocation(line: 425, column: 11, scope: !1721)
!1759 = !DILocation(line: 428, column: 38, scope: !1721)
!1760 = !DILocation(line: 428, column: 11, scope: !1721)
!1761 = !DILocation(line: 429, column: 11, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1721, file: !1, line: 429, column: 11)
!1763 = !DILocation(line: 429, column: 52, scope: !1762)
!1764 = !DILocation(line: 429, column: 11, scope: !1721)
!1765 = !DILocation(line: 431, column: 14, scope: !1721)
!1766 = !DILocation(line: 432, column: 12, scope: !1721)
!1767 = !DILocation(line: 432, column: 7, scope: !1721)
!1768 = !DILocation(line: 432, column: 21, scope: !1721)
!1769 = !DILocation(line: 433, column: 12, scope: !1721)
!1770 = !DILocation(line: 433, column: 20, scope: !1721)
!1771 = !DILocation(line: 433, column: 7, scope: !1721)
!1772 = !DILocation(line: 433, column: 25, scope: !1721)
!1773 = !DILocation(line: 435, column: 24, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1721, file: !1, line: 435, column: 11)
!1775 = !DILocation(line: 435, column: 11, scope: !1774)
!1776 = !DILocation(line: 435, column: 39, scope: !1774)
!1777 = !DILocation(line: 435, column: 11, scope: !1721)
!1778 = !DILocation(line: 437, column: 33, scope: !1721)
!1779 = !DILocation(line: 437, column: 7, scope: !1721)
!1780 = !DILocation(line: 442, column: 12, scope: !1720)
!1781 = !DILocation(line: 0, scope: !1720)
!1782 = !DILocation(line: 443, column: 6, scope: !1720)
!1783 = !DILocation(line: 444, column: 12, scope: !1720)
!1784 = !DILocation(line: 446, column: 5, scope: !1720)
!1785 = !DILocation(line: 446, column: 10, scope: !1720)
!1786 = !DILocation(line: 447, column: 11, scope: !1720)
!1787 = !DILocation(line: 448, column: 30, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1720, file: !1, line: 448, column: 6)
!1789 = !DILocation(line: 448, column: 49, scope: !1788)
!1790 = !DILocation(line: 448, column: 6, scope: !1788)
!1791 = !DILocation(line: 449, column: 6, scope: !1788)
!1792 = !DILocation(line: 448, column: 6, scope: !1720)
!1793 = !DILocation(line: 451, column: 6, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1788, file: !1, line: 450, column: 4)
!1795 = !DILocation(line: 452, column: 11, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1794, file: !1, line: 452, column: 10)
!1797 = !DILocation(line: 452, column: 10, scope: !1794)
!1798 = !DILocation(line: 453, column: 8, scope: !1796)
!1799 = !DILocation(line: 454, column: 6, scope: !1794)
!1800 = !DILocation(line: 459, column: 45, scope: !1721)
!1801 = !DILocation(line: 459, column: 18, scope: !1721)
!1802 = !DILocation(line: 459, column: 10, scope: !1721)
!1803 = !DILocation(line: 459, column: 16, scope: !1721)
!1804 = !DILocation(line: 461, column: 7, scope: !1721)
!1805 = !DILocation(line: 462, column: 20, scope: !1721)
!1806 = !DILocation(line: 462, column: 15, scope: !1721)
!1807 = !DILocation(line: 463, column: 24, scope: !1721)
!1808 = !DILocation(line: 465, column: 33, scope: !1721)
!1809 = !DILocation(line: 465, column: 7, scope: !1721)
!1810 = !DILocation(line: 418, column: 33, scope: !1722)
!1811 = !DILocation(line: 418, column: 3, scope: !1722)
!1812 = distinct !{!1812, !1738, !1813}
!1813 = !DILocation(line: 466, column: 5, scope: !1723)
!1814 = !DILocation(line: 457, column: 4, scope: !1788)
!1815 = !DILocation(line: 468, column: 1, scope: !1707)
!1816 = distinct !DISubprogram(name: "hashmem", scope: !1, file: !1, line: 162, type: !1817, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!55, !56, !73}
!1819 = !{!1820, !1821, !1822, !1823, !1824}
!1820 = !DILocalVariable(name: "p_p", arg: 1, scope: !1816, file: !1, line: 162, type: !56)
!1821 = !DILocalVariable(name: "sz", arg: 2, scope: !1816, file: !1, line: 162, type: !73)
!1822 = !DILocalVariable(name: "p", scope: !1816, file: !1, line: 164, type: !112)
!1823 = !DILocalVariable(name: "i", scope: !1816, file: !1, line: 165, type: !73)
!1824 = !DILocalVariable(name: "h", scope: !1816, file: !1, line: 166, type: !55)
!1825 = !DILocation(line: 0, scope: !1816)
!1826 = !DILocation(line: 169, column: 8, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1816, file: !1, line: 169, column: 3)
!1828 = !DILocation(line: 0, scope: !1827)
!1829 = !DILocation(line: 169, column: 17, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1827, file: !1, line: 169, column: 3)
!1831 = !DILocation(line: 169, column: 3, scope: !1827)
!1832 = !DILocation(line: 170, column: 11, scope: !1830)
!1833 = !DILocation(line: 170, column: 21, scope: !1830)
!1834 = !DILocation(line: 170, column: 19, scope: !1830)
!1835 = !DILocation(line: 170, column: 24, scope: !1830)
!1836 = !DILocation(line: 170, column: 16, scope: !1830)
!1837 = !DILocation(line: 169, column: 24, scope: !1830)
!1838 = !DILocation(line: 169, column: 3, scope: !1830)
!1839 = distinct !{!1839, !1831, !1840}
!1840 = !DILocation(line: 170, column: 29, scope: !1827)
!1841 = !DILocation(line: 171, column: 3, scope: !1816)
