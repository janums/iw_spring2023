; ModuleID = 'cpp_files.bc'
source_filename = "cpp_files.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.pchf_data = type { i64, i8, [1 x %struct.pchf_entry] }
%struct.pchf_entry = type { i64, [16 x i8], i8 }
%struct._cpp_file = type { i8*, i8*, i8*, i8*, %struct._cpp_file*, i8*, i8*, %struct.cpp_hashnode*, %struct.cpp_dir*, %struct.stat, i32, i32, i16, i8, i8, i8, i8 }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { i8*, i32, i32 }
%union._cpp_hashnode_value = type { %struct.cpp_macro* }
%struct.cpp_macro = type { %struct.cpp_hashnode**, %union.cpp_macro_u, i32, i32, i16, i8 }
%union.cpp_macro_u = type { %struct.cpp_token* }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, i8* }
%struct.cpp_dir = type { %struct.cpp_dir*, i8*, i32, i8, i8, i8*, i8**, i8* (i8*, %struct.cpp_dir*)*, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%struct.cpp_reader = type { %struct.cpp_buffer*, %struct.cpp_buffer*, %struct.lexer_state, %struct.line_maps*, i32, %struct._cpp_buff*, %struct._cpp_buff*, %struct._cpp_buff*, %struct.cpp_context, %struct.cpp_context*, %struct.directive*, %struct.cpp_token, i32, i8, %struct.cpp_dir*, %struct.cpp_dir*, %struct.cpp_dir, %struct._cpp_file*, %struct._cpp_file*, %struct.htab*, %struct.htab*, %struct.file_hash_entry_pool*, %struct.htab*, %struct.obstack, i8, i8, %struct.cpp_hashnode*, %struct.cpp_hashnode*, i8, %struct.cpp_token*, %struct.tokenrun, %struct.tokenrun*, i32, i32, i8*, i32, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, i8*, i8*, %struct.cpp_token, %struct.cpp_token, %struct.deps*, %struct.obstack, %struct.obstack, %struct.pragma_entry*, %struct.cpp_callbacks, %struct.ht*, %struct.op*, %struct.op*, %struct.cpp_options, %struct.spec_nodes, i8, %struct.anon.3, i8*, i8*, i8*, %struct.cpp_savedstate*, i32, %struct.cpp_comment_table, %struct.def_pragma_macro* }
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
%struct.file_hash_entry_pool = type { i32, %struct.file_hash_entry_pool*, [127 x %struct.file_hash_entry] }
%struct.file_hash_entry = type { %struct.file_hash_entry*, %struct.cpp_dir*, i32, %union.anon.1 }
%union.anon.1 = type { %struct._cpp_file* }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.tokenrun = type { %struct.tokenrun*, %struct.tokenrun*, %struct.cpp_token*, %struct.cpp_token* }
%struct.cset_converter = type { i8 (i8*, i8*, i64, %struct._cpp_strbuf*)*, i8*, i32 }
%struct._cpp_strbuf = type opaque
%struct.deps = type opaque
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.pragma_entry = type opaque
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
%struct.report_missing_guard_data = type { i8**, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.pchf_compare_data = type { i64, [16 x i8], i8, i8, %struct._cpp_file* }

@.str = private unnamed_addr constant [28 x i8] c"NULL directory in find_file\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"one or more PCH files were found, but they were invalid\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"use -Winvalid-pch for more information\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Multiple include guards may be useful for:\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@pchf = internal unnamed_addr global %struct.pchf_data* null, align 8, !dbg !0
@read_name_map.FILE_NAME_MAP_FILE = internal constant [11 x i8] c"header.gcc\00", align 1, !dbg !299
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@pch_open_file.extension = internal constant [5 x i8] c".gch\00", align 1, !dbg !369
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%c %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s is a block device\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"%s is shorter than expected\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"no include path in which to search for %s\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !902 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !907, metadata !DIExpression()), !dbg !908
  %__c.off = add i32 %__c, 128, !dbg !909
  %0 = icmp ult i32 %__c.off, 384, !dbg !909
  br i1 %0, label %cond.true, label %cond.end, !dbg !909

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #8, !dbg !910
  %1 = load i32*, i32** %call, align 8, !dbg !911
  %idxprom = sext i32 %__c to i64, !dbg !912
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !912
  %2 = load i32, i32* %arrayidx, align 4, !dbg !912
  br label %cond.end, !dbg !913

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !913
  ret i32 %cond, !dbg !914
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !915 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !917, metadata !DIExpression()), !dbg !918
  %__c.off = add i32 %__c, 128, !dbg !919
  %0 = icmp ult i32 %__c.off, 384, !dbg !919
  br i1 %0, label %cond.true, label %cond.end, !dbg !919

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #8, !dbg !920
  %1 = load i32*, i32** %call, align 8, !dbg !921
  %idxprom = sext i32 %__c to i64, !dbg !922
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !922
  %2 = load i32, i32* %arrayidx, align 4, !dbg !922
  br label %cond.end, !dbg !923

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !923
  ret i32 %cond, !dbg !924
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_find_failed(%struct._cpp_file* %file) local_unnamed_addr #2 !dbg !925 {
entry:
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !929, metadata !DIExpression()), !dbg !930
  %err_no = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 11, !dbg !931
  %0 = load i32, i32* %err_no, align 4, !dbg !931
  %cmp = icmp ne i32 %0, 0, !dbg !932
  %conv1 = zext i1 %cmp to i8, !dbg !933
  ret i8 %conv1, !dbg !934
}

; Function Attrs: nounwind uwtable
define dso_local %struct._cpp_file* @_cpp_find_file(%struct.cpp_reader* %pfile, i8* %fname, %struct.cpp_dir* %start_dir, i8 zeroext %fake, i32 %angle_brackets) local_unnamed_addr #2 !dbg !935 {
entry:
  %invalid_pch = alloca i8, align 1
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !939, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8* %fname, metadata !940, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %start_dir, metadata !941, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8 %fake, metadata !942, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i32 %angle_brackets, metadata !943, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8* %invalid_pch, metadata !947, metadata !DIExpression(DW_OP_deref)), !dbg !951
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %invalid_pch) #9, !dbg !952
  call void @llvm.dbg.value(metadata i8 0, metadata !947, metadata !DIExpression()), !dbg !951
  store i8 0, i8* %invalid_pch, align 1, !dbg !953
  call void @llvm.dbg.value(metadata i8 0, metadata !948, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8 0, metadata !949, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata %struct.cpp_dir* null, metadata !950, metadata !DIExpression()), !dbg !951
  %cmp = icmp eq %struct.cpp_dir* %start_dir, null, !dbg !954
  br i1 %cmp, label %if.then, label %if.end, !dbg !956

if.then:                                          ; preds = %entry
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0)) #8, !dbg !957
  br label %if.end, !dbg !957

if.end:                                           ; preds = %if.then, %entry
  %file_hash = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 19, !dbg !958
  %0 = load %struct.htab*, %struct.htab** %file_hash, align 8, !dbg !958
  %call2 = tail call i32 @htab_hash_string(i8* %fname) #8, !dbg !959
  %call3 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %0, i8* %fname, i32 %call2, i32 1) #8, !dbg !960
  %1 = bitcast i8** %call3 to %struct.file_hash_entry**, !dbg !961
  call void @llvm.dbg.value(metadata %struct.file_hash_entry** %1, metadata !945, metadata !DIExpression()), !dbg !951
  %2 = load %struct.file_hash_entry*, %struct.file_hash_entry** %1, align 8, !dbg !962
  %call4 = tail call fastcc %struct.file_hash_entry* @search_cache(%struct.file_hash_entry* %2, %struct.cpp_dir* %start_dir) #10, !dbg !963
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %call4, metadata !944, metadata !DIExpression()), !dbg !951
  %tobool = icmp eq %struct.file_hash_entry* %call4, null, !dbg !964
  br i1 %tobool, label %if.end7, label %if.then5, !dbg !966

if.then5:                                         ; preds = %if.end
  %file6 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %call4, i64 0, i32 3, i32 0, !dbg !967
  %3 = load %struct._cpp_file*, %struct._cpp_file** %file6, align 8, !dbg !967
  br label %cleanup, !dbg !968

if.end7:                                          ; preds = %if.end
  %call8 = tail call fastcc %struct._cpp_file* @make_cpp_file(%struct.cpp_reader* %pfile, %struct.cpp_dir* %start_dir, i8* %fname) #10, !dbg !969
  call void @llvm.dbg.value(metadata %struct._cpp_file* %call8, metadata !946, metadata !DIExpression()), !dbg !951
  %tobool9 = icmp eq i8 %fake, 0, !dbg !970
  %dir = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %call8, i64 0, i32 8, !dbg !973
  %4 = bitcast %struct.cpp_dir** %dir to i64**, !dbg !973
  %5 = bitcast %struct.cpp_dir** %dir to i64*, !dbg !973
  %bracket_include = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 15, !dbg !975
  %quote_include = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 14, !dbg !977
  br i1 %tobool9, label %if.end7.split.us, label %if.end7.if.end7.split_crit_edge, !dbg !979

if.end7.if.end7.split_crit_edge:                  ; preds = %if.end7
  call void @llvm.dbg.value(metadata i8 0, metadata !949, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8 0, metadata !948, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %call4, metadata !944, metadata !DIExpression()), !dbg !951
  br label %for.end.loopexit, !dbg !980

if.end7.split.us:                                 ; preds = %if.end7
  br label %for.cond.outer.us, !dbg !979

for.cond.outer.us:                                ; preds = %if.end41.us-lcssa.us.us, %if.end7.split.us
  %saw_bracket_include.0.ph.us = phi i8 [ %saw_bracket_include.1.ph.us.us, %if.end41.us-lcssa.us.us ], [ 0, %if.end7.split.us ]
  %saw_quote_include.0.ph.us = phi i8 [ %saw_quote_include.1.ph.us.us, %if.end41.us-lcssa.us.us ], [ 0, %if.end7.split.us ]
  br label %for.cond.us.us, !dbg !982

for.cond.us.us:                                   ; preds = %for.cond.outer.us, %if.else.us.us
  call void @llvm.dbg.value(metadata i8 %saw_quote_include.0.ph.us, metadata !949, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8 %saw_bracket_include.0.ph.us, metadata !948, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* null, metadata !944, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8* %invalid_pch, metadata !947, metadata !DIExpression(DW_OP_deref)), !dbg !951
  %call10.us.us = call fastcc zeroext i8 @find_file_in_dir(%struct.cpp_reader* %pfile, %struct._cpp_file* %call8, i8* nonnull %invalid_pch) #10, !dbg !983
  %tobool11.us.us = icmp eq i8 %call10.us.us, 0, !dbg !983
  br i1 %tobool11.us.us, label %if.end13.us.us, label %for.end.loopexit.us-lcssa.us.us-lcssa.us, !dbg !985

if.end13.us.us:                                   ; preds = %for.cond.us.us
  %6 = load i64*, i64** %4, align 8, !dbg !986
  %7 = load i64, i64* %6, align 8, !dbg !987
  store i64 %7, i64* %5, align 8, !dbg !988
  %cmp16.us.us = icmp eq i64 %7, 0, !dbg !989
  %8 = inttoptr i64 %7 to %struct.cpp_dir*, !dbg !991
  br i1 %cmp16.us.us, label %if.then17.us-lcssa.us.us-lcssa.us, label %if.end32.us.us, !dbg !991

if.end32.us.us:                                   ; preds = %if.end13.us.us
  %9 = load %struct.cpp_dir*, %struct.cpp_dir** %bracket_include, align 8, !dbg !992
  %cmp34.us.us = icmp eq %struct.cpp_dir* %9, %8, !dbg !993
  br i1 %cmp34.us.us, label %if.end41.us-lcssa.us.us, label %if.else.us.us, !dbg !994

if.else.us.us:                                    ; preds = %if.end32.us.us
  %10 = load %struct.cpp_dir*, %struct.cpp_dir** %quote_include, align 8, !dbg !995
  %cmp37.us.us = icmp eq %struct.cpp_dir* %10, %8, !dbg !996
  br i1 %cmp37.us.us, label %if.end41.us-lcssa.us.us, label %for.cond.us.us, !dbg !997, !llvm.loop !998

if.end41.us-lcssa.us.us:                          ; preds = %if.else.us.us, %if.end32.us.us
  %.lcssa26 = phi %struct.cpp_dir* [ %8, %if.else.us.us ], [ %8, %if.end32.us.us ], !dbg !991
  %saw_bracket_include.1.ph.us.us = phi i8 [ %saw_bracket_include.0.ph.us, %if.else.us.us ], [ 1, %if.end32.us.us ]
  %saw_quote_include.1.ph.us.us = phi i8 [ 1, %if.else.us.us ], [ %saw_quote_include.0.ph.us, %if.end32.us.us ]
  call void @llvm.dbg.value(metadata i8 %saw_quote_include.1.ph.us.us, metadata !949, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8 %saw_bracket_include.1.ph.us.us, metadata !948, metadata !DIExpression()), !dbg !951
  %11 = load %struct.file_hash_entry*, %struct.file_hash_entry** %1, align 8, !dbg !1000
  %call43.us = call fastcc %struct.file_hash_entry* @search_cache(%struct.file_hash_entry* %11, %struct.cpp_dir* %.lcssa26) #10, !dbg !1001
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %call43.us, metadata !944, metadata !DIExpression()), !dbg !951
  %tobool44.us = icmp eq %struct.file_hash_entry* %call43.us, null, !dbg !1002
  br i1 %tobool44.us, label %for.cond.outer.us, label %if.then45.us-lcssa.us, !dbg !1004, !llvm.loop !998

if.then45.us-lcssa.us:                            ; preds = %if.end41.us-lcssa.us.us
  %saw_bracket_include.1.ph.us.us.lcssa = phi i8 [ %saw_bracket_include.1.ph.us.us, %if.end41.us-lcssa.us.us ]
  %saw_quote_include.1.ph.us.us.lcssa = phi i8 [ %saw_quote_include.1.ph.us.us, %if.end41.us-lcssa.us.us ]
  %call43.us.lcssa = phi %struct.file_hash_entry* [ %call43.us, %if.end41.us-lcssa.us.us ], !dbg !1001
  call void @llvm.dbg.value(metadata i8 %saw_bracket_include.1.ph.us.us.lcssa, metadata !948, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8 %saw_quote_include.1.ph.us.us.lcssa, metadata !949, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8 %saw_bracket_include.1.ph.us.us.lcssa, metadata !948, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8 %saw_quote_include.1.ph.us.us.lcssa, metadata !949, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8 %saw_bracket_include.1.ph.us.us.lcssa, metadata !948, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8 %saw_quote_include.1.ph.us.us.lcssa, metadata !949, metadata !DIExpression()), !dbg !951
  %12 = load %struct.cpp_dir*, %struct.cpp_dir** %dir, align 8, !dbg !1005
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %12, metadata !950, metadata !DIExpression()), !dbg !951
  br label %for.end, !dbg !1007

for.end.loopexit.us-lcssa.us.us-lcssa.us:         ; preds = %for.cond.us.us
  %saw_bracket_include.0.ph.us.lcssa = phi i8 [ %saw_bracket_include.0.ph.us, %for.cond.us.us ]
  %saw_quote_include.0.ph.us.lcssa = phi i8 [ %saw_quote_include.0.ph.us, %for.cond.us.us ]
  br label %for.end.loopexit, !dbg !980

if.then17.us-lcssa.us.us-lcssa.us:                ; preds = %if.end13.us.us
  %saw_bracket_include.0.ph.us.lcssa29 = phi i8 [ %saw_bracket_include.0.ph.us, %if.end13.us.us ]
  %saw_quote_include.0.ph.us.lcssa27 = phi i8 [ %saw_quote_include.0.ph.us, %if.end13.us.us ]
  %call18 = call fastcc zeroext i8 @search_path_exhausted(%struct.cpp_reader* %pfile, i8* %fname, %struct._cpp_file* %call8) #10, !dbg !1008
  %tobool19 = icmp eq i8 %call18, 0, !dbg !1008
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !1011

if.then20:                                        ; preds = %if.then17.us-lcssa.us.us-lcssa.us
  %all_files = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 17, !dbg !1012
  %13 = bitcast %struct._cpp_file** %all_files to i64*, !dbg !1012
  %14 = load i64, i64* %13, align 8, !dbg !1012
  %next_file = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %call8, i64 0, i32 4, !dbg !1014
  %15 = bitcast %struct._cpp_file** %next_file to i64*, !dbg !1015
  store i64 %14, i64* %15, align 8, !dbg !1015
  store %struct._cpp_file* %call8, %struct._cpp_file** %all_files, align 8, !dbg !1016
  br label %cleanup, !dbg !1017

if.end22:                                         ; preds = %if.then17.us-lcssa.us.us-lcssa.us
  %16 = load i8, i8* %invalid_pch, align 1, !dbg !1018
  call void @llvm.dbg.value(metadata i8 %16, metadata !947, metadata !DIExpression()), !dbg !951
  %tobool23 = icmp eq i8 %16, 0, !dbg !1018
  br i1 %tobool23, label %if.end31, label %if.then24, !dbg !1020

if.then24:                                        ; preds = %if.end22
  %call25 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !1021
  %call26 = call %struct.cpp_options* @cpp_get_options(%struct.cpp_reader* %pfile) #8, !dbg !1023
  %warn_invalid_pch = getelementptr inbounds %struct.cpp_options, %struct.cpp_options* %call26, i64 0, i32 41, !dbg !1025
  %17 = load i8, i8* %warn_invalid_pch, align 4, !dbg !1025
  %tobool27 = icmp eq i8 %17, 0, !dbg !1023
  br i1 %tobool27, label %if.then28, label %if.end31, !dbg !1026

if.then28:                                        ; preds = %if.then24
  %call29 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1027
  br label %if.end31, !dbg !1027

if.end31:                                         ; preds = %if.then24, %if.end22, %if.then28
  call fastcc void @open_file_failed(%struct.cpp_reader* %pfile, %struct._cpp_file* %call8, i32 %angle_brackets) #10, !dbg !1028
  br label %for.end, !dbg !1029

for.end.loopexit:                                 ; preds = %for.end.loopexit.us-lcssa.us.us-lcssa.us, %if.end7.if.end7.split_crit_edge
  %saw_bracket_include.0.ph.lcssa = phi i8 [ 0, %if.end7.if.end7.split_crit_edge ], [ %saw_bracket_include.0.ph.us.lcssa, %for.end.loopexit.us-lcssa.us.us-lcssa.us ]
  %saw_quote_include.0.ph.lcssa = phi i8 [ 0, %if.end7.if.end7.split_crit_edge ], [ %saw_quote_include.0.ph.us.lcssa, %for.end.loopexit.us-lcssa.us.us-lcssa.us ]
  br label %for.end, !dbg !980

for.end:                                          ; preds = %for.end.loopexit, %if.then45.us-lcssa.us, %if.end31
  %entry1.1 = phi %struct.file_hash_entry* [ null, %if.end31 ], [ %call43.us.lcssa, %if.then45.us-lcssa.us ], [ null, %for.end.loopexit ], !dbg !951
  %saw_bracket_include.2 = phi i8 [ %saw_bracket_include.0.ph.us.lcssa29, %if.end31 ], [ %saw_bracket_include.1.ph.us.us.lcssa, %if.then45.us-lcssa.us ], [ %saw_bracket_include.0.ph.lcssa, %for.end.loopexit ], !dbg !951
  %saw_quote_include.2 = phi i8 [ %saw_quote_include.0.ph.us.lcssa27, %if.end31 ], [ %saw_quote_include.1.ph.us.us.lcssa, %if.then45.us-lcssa.us ], [ %saw_quote_include.0.ph.lcssa, %for.end.loopexit ], !dbg !1030
  %found_in_cache.0 = phi %struct.cpp_dir* [ null, %if.end31 ], [ %12, %if.then45.us-lcssa.us ], [ null, %for.end.loopexit ], !dbg !951
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %found_in_cache.0, metadata !950, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8 %saw_quote_include.2, metadata !949, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata i8 %saw_bracket_include.2, metadata !948, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.1, metadata !944, metadata !DIExpression()), !dbg !951
  %tobool48 = icmp eq %struct.file_hash_entry* %entry1.1, null, !dbg !980
  br i1 %tobool48, label %if.else52, label %if.then49, !dbg !1031

if.then49:                                        ; preds = %for.end
  %name = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %call8, i64 0, i32 0, !dbg !1032
  %18 = load i8*, i8** %name, align 8, !dbg !1032
  call void @free(i8* %18) #8, !dbg !1034
  %19 = bitcast %struct._cpp_file* %call8 to i8*, !dbg !1035
  call void @free(i8* %19) #8, !dbg !1036
  %file51 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %entry1.1, i64 0, i32 3, i32 0, !dbg !1037
  %20 = load %struct._cpp_file*, %struct._cpp_file** %file51, align 8, !dbg !1037
  call void @llvm.dbg.value(metadata %struct._cpp_file* %20, metadata !946, metadata !DIExpression()), !dbg !951
  br label %if.end56, !dbg !1038

if.else52:                                        ; preds = %for.end
  %all_files53 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 17, !dbg !1039
  %21 = bitcast %struct._cpp_file** %all_files53 to i64*, !dbg !1039
  %22 = load i64, i64* %21, align 8, !dbg !1039
  %next_file54 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %call8, i64 0, i32 4, !dbg !1041
  %23 = bitcast %struct._cpp_file** %next_file54 to i64*, !dbg !1042
  store i64 %22, i64* %23, align 8, !dbg !1042
  store %struct._cpp_file* %call8, %struct._cpp_file** %all_files53, align 8, !dbg !1043
  br label %if.end56

if.end56:                                         ; preds = %if.else52, %if.then49
  %file.0 = phi %struct._cpp_file* [ %20, %if.then49 ], [ %call8, %if.else52 ], !dbg !951
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file.0, metadata !946, metadata !DIExpression()), !dbg !951
  %call57 = call fastcc %struct.file_hash_entry* @new_file_hash_entry(%struct.cpp_reader* %pfile) #10, !dbg !1044
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %call57, metadata !944, metadata !DIExpression()), !dbg !951
  %24 = bitcast i8** %call3 to i64*, !dbg !1045
  %25 = load i64, i64* %24, align 8, !dbg !1045
  %26 = bitcast %struct.file_hash_entry* %call57 to i64*, !dbg !1046
  store i64 %25, i64* %26, align 8, !dbg !1046
  %start_dir59 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %call57, i64 0, i32 1, !dbg !1047
  store %struct.cpp_dir* %start_dir, %struct.cpp_dir** %start_dir59, align 8, !dbg !1048
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !1049
  %27 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !1049
  %highest_location = getelementptr inbounds %struct.line_maps, %struct.line_maps* %27, i64 0, i32 7, !dbg !1050
  %28 = load i32, i32* %highest_location, align 8, !dbg !1050
  %location = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %call57, i64 0, i32 2, !dbg !1051
  store i32 %28, i32* %location, align 8, !dbg !1052
  %file61 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %call57, i64 0, i32 3, i32 0, !dbg !1053
  store %struct._cpp_file* %file.0, %struct._cpp_file** %file61, align 8, !dbg !1054
  store %struct.file_hash_entry* %call57, %struct.file_hash_entry** %1, align 8, !dbg !1055
  %tobool62 = icmp eq i8 %saw_bracket_include.2, 0, !dbg !1056
  br i1 %tobool62, label %if.end80, label %land.lhs.true, !dbg !1058

land.lhs.true:                                    ; preds = %if.end56
  %29 = load %struct.cpp_dir*, %struct.cpp_dir** %bracket_include, align 8, !dbg !1059
  %cmp64 = icmp eq %struct.cpp_dir* %29, %start_dir, !dbg !1060
  br i1 %cmp64, label %if.end80, label %land.lhs.true66, !dbg !1061

land.lhs.true66:                                  ; preds = %land.lhs.true
  %cmp68 = icmp eq %struct.cpp_dir* %found_in_cache.0, %29, !dbg !1062
  br i1 %cmp68, label %if.end80, label %if.then70, !dbg !1063

if.then70:                                        ; preds = %land.lhs.true66
  %call71 = call fastcc %struct.file_hash_entry* @new_file_hash_entry(%struct.cpp_reader* %pfile) #10, !dbg !1064
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %call71, metadata !944, metadata !DIExpression()), !dbg !951
  %30 = load i64, i64* %24, align 8, !dbg !1066
  %31 = bitcast %struct.file_hash_entry* %call71 to i64*, !dbg !1067
  store i64 %30, i64* %31, align 8, !dbg !1067
  %32 = bitcast %struct.cpp_dir** %bracket_include to i64*, !dbg !1068
  %33 = load i64, i64* %32, align 8, !dbg !1068
  %start_dir74 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %call71, i64 0, i32 1, !dbg !1069
  %34 = bitcast %struct.cpp_dir** %start_dir74 to i64*, !dbg !1070
  store i64 %33, i64* %34, align 8, !dbg !1070
  %35 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !1071
  %highest_location76 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %35, i64 0, i32 7, !dbg !1072
  %36 = load i32, i32* %highest_location76, align 8, !dbg !1072
  %location77 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %call71, i64 0, i32 2, !dbg !1073
  store i32 %36, i32* %location77, align 8, !dbg !1074
  %file79 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %call71, i64 0, i32 3, i32 0, !dbg !1075
  store %struct._cpp_file* %file.0, %struct._cpp_file** %file79, align 8, !dbg !1076
  store %struct.file_hash_entry* %call71, %struct.file_hash_entry** %1, align 8, !dbg !1077
  br label %if.end80, !dbg !1078

if.end80:                                         ; preds = %land.lhs.true66, %land.lhs.true, %if.end56, %if.then70
  %tobool82 = icmp eq i8 %saw_quote_include.2, 0, !dbg !1079
  br i1 %tobool82, label %cleanup, label %land.lhs.true83, !dbg !1081

land.lhs.true83:                                  ; preds = %if.end80
  %37 = load %struct.cpp_dir*, %struct.cpp_dir** %quote_include, align 8, !dbg !1082
  %cmp85 = icmp eq %struct.cpp_dir* %37, %start_dir, !dbg !1083
  br i1 %cmp85, label %cleanup, label %land.lhs.true87, !dbg !1084

land.lhs.true87:                                  ; preds = %land.lhs.true83
  %cmp89 = icmp eq %struct.cpp_dir* %found_in_cache.0, %37, !dbg !1085
  br i1 %cmp89, label %cleanup, label %if.then91, !dbg !1086

if.then91:                                        ; preds = %land.lhs.true87
  %call92 = call fastcc %struct.file_hash_entry* @new_file_hash_entry(%struct.cpp_reader* %pfile) #10, !dbg !1087
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %call92, metadata !944, metadata !DIExpression()), !dbg !951
  %38 = load i64, i64* %24, align 8, !dbg !1089
  %39 = bitcast %struct.file_hash_entry* %call92 to i64*, !dbg !1090
  store i64 %38, i64* %39, align 8, !dbg !1090
  %40 = bitcast %struct.cpp_dir** %quote_include to i64*, !dbg !1091
  %41 = load i64, i64* %40, align 8, !dbg !1091
  %start_dir95 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %call92, i64 0, i32 1, !dbg !1092
  %42 = bitcast %struct.cpp_dir** %start_dir95 to i64*, !dbg !1093
  store i64 %41, i64* %42, align 8, !dbg !1093
  %43 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !1094
  %highest_location97 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %43, i64 0, i32 7, !dbg !1095
  %44 = load i32, i32* %highest_location97, align 8, !dbg !1095
  %location98 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %call92, i64 0, i32 2, !dbg !1096
  store i32 %44, i32* %location98, align 8, !dbg !1097
  %file100 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %call92, i64 0, i32 3, i32 0, !dbg !1098
  store %struct._cpp_file* %file.0, %struct._cpp_file** %file100, align 8, !dbg !1099
  store %struct.file_hash_entry* %call92, %struct.file_hash_entry** %1, align 8, !dbg !1100
  br label %cleanup, !dbg !1101

cleanup:                                          ; preds = %land.lhs.true87, %land.lhs.true83, %if.end80, %if.then91, %if.then20, %if.then5
  %retval.0 = phi %struct._cpp_file* [ %3, %if.then5 ], [ %call8, %if.then20 ], [ %file.0, %if.then91 ], [ %file.0, %land.lhs.true87 ], [ %file.0, %land.lhs.true83 ], [ %file.0, %if.end80 ], !dbg !951
  call void @llvm.dbg.value(metadata i8* %invalid_pch, metadata !947, metadata !DIExpression(DW_OP_deref)), !dbg !951
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %invalid_pch) #9, !dbg !1102
  ret %struct._cpp_file* %retval.0, !dbg !1102
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local zeroext i8 @cpp_error(%struct.cpp_reader*, i32, i8*, ...) local_unnamed_addr #1

declare dso_local i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) local_unnamed_addr #1

declare dso_local i32 @htab_hash_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.file_hash_entry* @search_cache(%struct.file_hash_entry* %head, %struct.cpp_dir* %start_dir) unnamed_addr #2 !dbg !1103 {
entry:
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %head, metadata !1109, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %start_dir, metadata !1110, metadata !DIExpression()), !dbg !1111
  br label %while.cond, !dbg !1112

while.cond:                                       ; preds = %while.body, %entry
  %head.addr.0 = phi %struct.file_hash_entry* [ %head, %entry ], [ %1, %while.body ]
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %head.addr.0, metadata !1109, metadata !DIExpression()), !dbg !1111
  %tobool = icmp eq %struct.file_hash_entry* %head.addr.0, null, !dbg !1113
  br i1 %tobool, label %while.end, label %land.rhs, !dbg !1114

land.rhs:                                         ; preds = %while.cond
  %start_dir1 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %head.addr.0, i64 0, i32 1, !dbg !1115
  %0 = load %struct.cpp_dir*, %struct.cpp_dir** %start_dir1, align 8, !dbg !1115
  %cmp = icmp eq %struct.cpp_dir* %0, %start_dir, !dbg !1116
  br i1 %cmp, label %while.end, label %while.body, !dbg !1112

while.body:                                       ; preds = %land.rhs
  %next = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %head.addr.0, i64 0, i32 0, !dbg !1117
  %1 = load %struct.file_hash_entry*, %struct.file_hash_entry** %next, align 8, !dbg !1117
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %1, metadata !1109, metadata !DIExpression()), !dbg !1111
  br label %while.cond, !dbg !1112, !llvm.loop !1118

while.end:                                        ; preds = %land.rhs, %while.cond
  %head.addr.0.lcssa = phi %struct.file_hash_entry* [ %head.addr.0, %land.rhs ], [ %head.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %head.addr.0.lcssa, metadata !1109, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %head.addr.0.lcssa, metadata !1109, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %head.addr.0.lcssa, metadata !1109, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %head.addr.0.lcssa, metadata !1109, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %head.addr.0.lcssa, metadata !1109, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %head.addr.0.lcssa, metadata !1109, metadata !DIExpression()), !dbg !1111
  ret %struct.file_hash_entry* %head.addr.0.lcssa, !dbg !1119
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._cpp_file* @make_cpp_file(%struct.cpp_reader* %pfile, %struct.cpp_dir* %dir, i8* %fname) unnamed_addr #2 !dbg !1120 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1124, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %dir, metadata !1125, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1126, metadata !DIExpression()), !dbg !1128
  %call = tail call i8* @xcalloc(i64 1, i64 232) #8, !dbg !1129
  %0 = bitcast i8* %call to %struct._cpp_file*, !dbg !1129
  call void @llvm.dbg.value(metadata %struct._cpp_file* %0, metadata !1127, metadata !DIExpression()), !dbg !1128
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1130
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !1130
  %tobool = icmp eq %struct.cpp_buffer* %1, null, !dbg !1131
  %conv = zext i1 %tobool to i8, !dbg !1131
  %2 = getelementptr inbounds i8, i8* %call, i64 228, !dbg !1132
  store i8 %conv, i8* %2, align 4, !dbg !1133
  %fd = getelementptr inbounds i8, i8* %call, i64 216, !dbg !1134
  %3 = bitcast i8* %fd to i32*, !dbg !1134
  store i32 -1, i32* %3, align 8, !dbg !1135
  %dir1 = getelementptr inbounds i8, i8* %call, i64 64, !dbg !1136
  %4 = bitcast i8* %dir1 to %struct.cpp_dir**, !dbg !1136
  store %struct.cpp_dir* %dir, %struct.cpp_dir** %4, align 8, !dbg !1137
  %call2 = tail call i8* @xstrdup(i8* %fname) #8, !dbg !1138
  %name = bitcast i8* %call to i8**, !dbg !1139
  store i8* %call2, i8** %name, align 8, !dbg !1140
  ret %struct._cpp_file* %0, !dbg !1141
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @find_file_in_dir(%struct.cpp_reader* %pfile, %struct._cpp_file* %file, i8* %invalid_pch) unnamed_addr #2 !dbg !1142 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1144, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !1145, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i8* %invalid_pch, metadata !1146, metadata !DIExpression()), !dbg !1153
  %remap = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 23, !dbg !1154
  %0 = load i8, i8* %remap, align 1, !dbg !1154
  %tobool = icmp eq i8 %0, 0, !dbg !1154
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !1156

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i8* @remap_filename(%struct.cpp_reader* %pfile, %struct._cpp_file* %file) #10, !dbg !1157
  call void @llvm.dbg.value(metadata i8* %call, metadata !1147, metadata !DIExpression()), !dbg !1153
  %tobool1 = icmp eq i8* %call, null, !dbg !1158
  br i1 %tobool1, label %if.else, label %if.end12, !dbg !1159

if.else:                                          ; preds = %land.lhs.true, %entry
  %dir = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 8, !dbg !1160
  %1 = load %struct.cpp_dir*, %struct.cpp_dir** %dir, align 8, !dbg !1160
  %construct = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %1, i64 0, i32 7, !dbg !1162
  %2 = load i8* (i8*, %struct.cpp_dir*)*, i8* (i8*, %struct.cpp_dir*)** %construct, align 8, !dbg !1162
  %tobool2 = icmp eq i8* (i8*, %struct.cpp_dir*)* %2, null, !dbg !1163
  br i1 %tobool2, label %if.else8, label %if.then3, !dbg !1164

if.then3:                                         ; preds = %if.else
  %name = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 0, !dbg !1165
  %3 = load i8*, i8** %name, align 8, !dbg !1165
  %call7 = tail call i8* %2(i8* %3, %struct.cpp_dir* %1) #8, !dbg !1166
  call void @llvm.dbg.value(metadata i8* %call7, metadata !1147, metadata !DIExpression()), !dbg !1153
  br label %if.end12, !dbg !1167

if.else8:                                         ; preds = %if.else
  %name9 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 0, !dbg !1168
  %4 = load i8*, i8** %name9, align 8, !dbg !1168
  %call11 = tail call fastcc i8* @append_file_to_dir(i8* %4, %struct.cpp_dir* %1) #10, !dbg !1169
  call void @llvm.dbg.value(metadata i8* %call11, metadata !1147, metadata !DIExpression()), !dbg !1153
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.then3, %if.else8
  %path.1 = phi i8* [ %call, %land.lhs.true ], [ %call7, %if.then3 ], [ %call11, %if.else8 ], !dbg !1170
  call void @llvm.dbg.value(metadata i8* %path.1, metadata !1147, metadata !DIExpression()), !dbg !1153
  %tobool13 = icmp eq i8* %path.1, null, !dbg !1171
  br i1 %tobool13, label %if.else118, label %if.then14, !dbg !1172

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 @htab_hash_string(i8* nonnull %path.1) #8, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %call15, metadata !1148, metadata !DIExpression()), !dbg !1174
  %nonexistent_file_hash = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 22, !dbg !1175
  %5 = load %struct.htab*, %struct.htab** %nonexistent_file_hash, align 8, !dbg !1175
  %call16 = tail call i8* @htab_find_with_hash(%struct.htab* %5, i8* nonnull %path.1, i32 %call15) #8, !dbg !1177
  %cmp = icmp eq i8* %call16, null, !dbg !1178
  br i1 %cmp, label %if.end19, label %if.then18, !dbg !1179

if.then18:                                        ; preds = %if.then14
  %err_no = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 11, !dbg !1180
  store i32 2, i32* %err_no, align 4, !dbg !1182
  br label %cleanup, !dbg !1183

if.end19:                                         ; preds = %if.then14
  %path20 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !1184
  store i8* %path.1, i8** %path20, align 8, !dbg !1185
  %call21 = tail call fastcc zeroext i8 @pch_open_file(%struct.cpp_reader* %pfile, %struct._cpp_file* %file, i8* %invalid_pch) #10, !dbg !1186
  %tobool22 = icmp eq i8 %call21, 0, !dbg !1186
  br i1 %tobool22, label %if.end24, label %cleanup, !dbg !1188

if.end24:                                         ; preds = %if.end19
  %call25 = tail call fastcc zeroext i8 @open_file(%struct._cpp_file* %file) #10, !dbg !1189
  %tobool26 = icmp eq i8 %call25, 0, !dbg !1189
  br i1 %tobool26, label %if.end28, label %cleanup, !dbg !1191

if.end28:                                         ; preds = %if.end24
  %err_no29 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 11, !dbg !1192
  %6 = load i32, i32* %err_no29, align 4, !dbg !1192
  %cmp30 = icmp eq i32 %6, 2, !dbg !1194
  br i1 %cmp30, label %if.end33, label %if.then32, !dbg !1195

if.then32:                                        ; preds = %if.end28
  tail call fastcc void @open_file_failed(%struct.cpp_reader* %pfile, %struct._cpp_file* %file, i32 0) #10, !dbg !1196
  br label %cleanup, !dbg !1198

if.end33:                                         ; preds = %if.end28
  %call34 = tail call i64 @strlen(i8* nonnull %path.1) #11, !dbg !1199
  %temp = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, i32 5, !dbg !1199
  store i64 %call34, i64* %temp, align 8, !dbg !1199
  %next_free = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, i32 3, !dbg !1199
  %7 = load i8*, i8** %next_free, align 8, !dbg !1199
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %call34, !dbg !1199
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !1199
  %chunk_limit = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, i32 4, !dbg !1199
  %8 = load i8*, i8** %chunk_limit, align 8, !dbg !1199
  %cmp40 = icmp ugt i8* %add.ptr38, %8, !dbg !1199
  br i1 %cmp40, label %cond.true, label %cond.end, !dbg !1199

cond.true:                                        ; preds = %if.end33
  %nonexistent_file_ob42 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, !dbg !1199
  %9 = trunc i64 %call34 to i32, !dbg !1199
  %conv45 = add i32 %9, 1, !dbg !1199
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %nonexistent_file_ob42, i32 %conv45) #8, !dbg !1199
  %.pre = load i8*, i8** %next_free, align 8, !dbg !1199
  %.pre2 = load i64, i64* %temp, align 8, !dbg !1199
  br label %cond.end, !dbg !1199

cond.end:                                         ; preds = %if.end33, %cond.true
  %10 = phi i64 [ %call34, %if.end33 ], [ %.pre2, %cond.true ], !dbg !1199
  %11 = phi i8* [ %7, %if.end33 ], [ %.pre, %cond.true ], !dbg !1199
  %call50 = tail call i8* @memcpy(i8* %11, i8* nonnull %path.1, i64 %10) #8, !dbg !1199
  %12 = load i64, i64* %temp, align 8, !dbg !1199
  %13 = load i8*, i8** %next_free, align 8, !dbg !1199
  %add.ptr55 = getelementptr inbounds i8, i8* %13, i64 %12, !dbg !1199
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr55, i64 1, !dbg !1199
  store i8* %incdec.ptr, i8** %next_free, align 8, !dbg !1199
  store i8 0, i8* %add.ptr55, align 1, !dbg !1199
  %14 = load i8*, i8** %next_free, align 8, !dbg !1199
  %object_base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, i32 2, !dbg !1199
  %15 = load i8*, i8** %object_base, align 8, !dbg !1199
  %cmp61 = icmp eq i8* %14, %15, !dbg !1199
  %16 = ptrtoint i8* %15 to i64, !dbg !1199
  %17 = ptrtoint i8* %14 to i64, !dbg !1199
  br i1 %cmp61, label %cond.true63, label %cond.end66, !dbg !1199

cond.true63:                                      ; preds = %cond.end
  %maybe_empty_object = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, i32 10, !dbg !1199
  %bf.load = load i8, i8* %maybe_empty_object, align 8, !dbg !1199
  %bf.set = or i8 %bf.load, 2, !dbg !1199
  store i8 %bf.set, i8* %maybe_empty_object, align 8, !dbg !1199
  br label %cond.end66, !dbg !1199

cond.end66:                                       ; preds = %cond.end, %cond.true63
  %18 = bitcast i8** %object_base to i64*, !dbg !1199
  store i64 %16, i64* %temp, align 8, !dbg !1199
  %alignment_mask = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, i32 6, !dbg !1199
  %19 = load i32, i32* %alignment_mask, align 8, !dbg !1199
  %conv77 = sext i32 %19 to i64, !dbg !1199
  %add78 = add nsw i64 %17, %conv77, !dbg !1199
  %neg = xor i32 %19, -1, !dbg !1199
  %conv81 = sext i32 %neg to i64, !dbg !1199
  %and = and i64 %add78, %conv81, !dbg !1199
  %20 = inttoptr i64 %and to i8*, !dbg !1199
  store i8* %20, i8** %next_free, align 8, !dbg !1199
  %chunk = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, i32 1, !dbg !1199
  %21 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !1199
  %22 = load i64, i64* %21, align 8, !dbg !1199
  %sub.ptr.sub88 = sub i64 %and, %22, !dbg !1199
  %23 = bitcast i8** %chunk_limit to i64*, !dbg !1199
  %24 = load i64, i64* %23, align 8, !dbg !1199
  %sub.ptr.sub95 = sub i64 %24, %22, !dbg !1199
  %cmp96 = icmp sgt i64 %sub.ptr.sub88, %sub.ptr.sub95, !dbg !1199
  br i1 %cmp96, label %cond.true98, label %cond.end104, !dbg !1199

cond.true98:                                      ; preds = %cond.end66
  %25 = bitcast i8** %next_free to i64*, !dbg !1199
  store i64 %24, i64* %25, align 8, !dbg !1199
  br label %cond.end104, !dbg !1199

cond.end104:                                      ; preds = %cond.end66, %cond.true98
  %26 = phi i64 [ %and, %cond.end66 ], [ %24, %cond.true98 ], !dbg !1199
  store i64 %26, i64* %18, align 8, !dbg !1199
  call void @llvm.dbg.value(metadata i8* %15, metadata !1151, metadata !DIExpression()), !dbg !1174
  tail call void @free(i8* nonnull %path.1) #8, !dbg !1200
  %27 = load %struct.htab*, %struct.htab** %nonexistent_file_hash, align 8, !dbg !1201
  %call113 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %27, i8* %15, i32 %call15, i32 1) #8, !dbg !1202
  call void @llvm.dbg.value(metadata i8** %call113, metadata !1152, metadata !DIExpression()), !dbg !1174
  store i8* %15, i8** %call113, align 8, !dbg !1203
  %28 = bitcast %struct._cpp_file* %file to i64*, !dbg !1204
  %29 = load i64, i64* %28, align 8, !dbg !1204
  %30 = bitcast i8** %path20 to i64*, !dbg !1205
  store i64 %29, i64* %30, align 8, !dbg !1205
  br label %cleanup, !dbg !1206

cleanup:                                          ; preds = %if.end24, %if.end19, %cond.end104, %if.then32, %if.then18
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then18 ], [ false, %if.then32 ], [ true, %cond.end104 ], [ false, %if.end19 ], [ false, %if.end24 ]
  %retval.0 = phi i8 [ 0, %if.then18 ], [ 1, %if.then32 ], [ undef, %cond.end104 ], [ 1, %if.end19 ], [ 1, %if.end24 ]
  br i1 %cleanup.dest.slot.0, label %if.end121, label %cleanup122

if.else118:                                       ; preds = %if.end12
  %err_no119 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 11, !dbg !1207
  store i32 2, i32* %err_no119, align 4, !dbg !1209
  %path120 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !1210
  store i8* null, i8** %path120, align 8, !dbg !1211
  br label %if.end121

if.end121:                                        ; preds = %cleanup, %if.else118
  br label %cleanup122, !dbg !1212

cleanup122:                                       ; preds = %cleanup, %if.end121
  %retval.1 = phi i8 [ %retval.0, %cleanup ], [ 0, %if.end121 ], !dbg !1153
  ret i8 %retval.1, !dbg !1213
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @search_path_exhausted(%struct.cpp_reader* %pfile, i8* %header, %struct._cpp_file* %file) unnamed_addr #2 !dbg !1214 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1218, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %header, metadata !1219, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !1220, metadata !DIExpression()), !dbg !1222
  %missing_header = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 10, !dbg !1223
  %0 = load i8* (%struct.cpp_reader*, i8*, %struct.cpp_dir**)*, i8* (%struct.cpp_reader*, i8*, %struct.cpp_dir**)** %missing_header, align 8, !dbg !1223
  call void @llvm.dbg.value(metadata i8* (%struct.cpp_reader*, i8*, %struct.cpp_dir**)* %0, metadata !1221, metadata !DIExpression()), !dbg !1222
  %tobool = icmp eq i8* (%struct.cpp_reader*, i8*, %struct.cpp_dir**)* %0, null, !dbg !1224
  br i1 %tobool, label %cleanup, label %land.lhs.true, !dbg !1226

land.lhs.true:                                    ; preds = %entry
  %dir = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 8, !dbg !1227
  %1 = load %struct.cpp_dir*, %struct.cpp_dir** %dir, align 8, !dbg !1227
  %cmp = icmp eq %struct.cpp_dir* %1, null, !dbg !1228
  br i1 %cmp, label %if.then, label %cleanup, !dbg !1229

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i8* %0(%struct.cpp_reader* %pfile, i8* %header, %struct.cpp_dir** nonnull %dir) #8, !dbg !1230
  %path = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !1233
  store i8* %call, i8** %path, align 8, !dbg !1234
  %cmp2 = icmp eq i8* %call, null, !dbg !1235
  br i1 %cmp2, label %if.end8, label %if.then3, !dbg !1236

if.then3:                                         ; preds = %if.then
  %call4 = tail call fastcc zeroext i8 @open_file(%struct._cpp_file* %file) #10, !dbg !1237
  %tobool5 = icmp eq i8 %call4, 0, !dbg !1237
  br i1 %tobool5, label %if.end, label %cleanup, !dbg !1240

if.end:                                           ; preds = %if.then3
  %2 = load i8*, i8** %path, align 8, !dbg !1241
  tail call void @free(i8* %2) #8, !dbg !1242
  br label %if.end8, !dbg !1243

if.end8:                                          ; preds = %if.then, %if.end
  %3 = bitcast %struct._cpp_file* %file to i64*, !dbg !1244
  %4 = load i64, i64* %3, align 8, !dbg !1244
  %5 = bitcast i8** %path to i64*, !dbg !1245
  store i64 %4, i64* %5, align 8, !dbg !1245
  br label %cleanup, !dbg !1246

cleanup:                                          ; preds = %if.then3, %entry, %land.lhs.true, %if.end8
  %retval.0 = phi i8 [ 1, %if.then3 ], [ 0, %if.end8 ], [ 0, %land.lhs.true ], [ 0, %entry ], !dbg !1222
  ret i8 %retval.0, !dbg !1247
}

declare dso_local %struct.cpp_options* @cpp_get_options(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @open_file_failed(%struct.cpp_reader* %pfile, %struct._cpp_file* %file, i32 %angle_brackets) unnamed_addr #2 !dbg !1248 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1252, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !1253, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i32 %angle_brackets, metadata !1254, metadata !DIExpression()), !dbg !1257
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !1258
  %0 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !1258
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i64 0, i32 8, !dbg !1259
  %1 = load i32, i32* %highest_line, align 4, !dbg !1259
  %cmp = icmp ugt i32 %1, 1, !dbg !1260
  br i1 %cmp, label %land.lhs.true, label %cond.end, !dbg !1261

land.lhs.true:                                    ; preds = %entry
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1262
  %2 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !1262
  %tobool = icmp eq %struct.cpp_buffer* %2, null, !dbg !1263
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1264

cond.true:                                        ; preds = %land.lhs.true
  %sysp2 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %2, i64 0, i32 15, !dbg !1265
  %3 = load i8, i8* %sysp2, align 2, !dbg !1265
  %conv = zext i8 %3 to i32, !dbg !1266
  br label %cond.end, !dbg !1264

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %land.lhs.true ], [ 0, %entry ], !dbg !1264
  call void @llvm.dbg.value(metadata i32 %cond, metadata !1255, metadata !DIExpression()), !dbg !1257
  %style = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 43, i32 0, !dbg !1267
  %4 = load i32, i32* %style, align 8, !dbg !1267
  %tobool3 = icmp eq i32 %angle_brackets, 0, !dbg !1268
  br i1 %tobool3, label %lor.rhs, label %lor.end, !dbg !1269

lor.rhs:                                          ; preds = %cond.end
  %tobool4 = icmp ne i32 %cond, 0, !dbg !1270
  %phitmp = zext i1 %tobool4 to i32, !dbg !1269
  br label %lor.end, !dbg !1269

lor.end:                                          ; preds = %cond.end, %lor.rhs
  %5 = phi i32 [ 1, %cond.end ], [ %phitmp, %lor.rhs ]
  %cmp6 = icmp ugt i32 %4, %5, !dbg !1271
  call void @llvm.dbg.value(metadata i1 %cmp6, metadata !1256, metadata !DIExpression()), !dbg !1257
  %err_no = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 11, !dbg !1272
  %6 = load i32, i32* %err_no, align 4, !dbg !1272
  %call = tail call i32* @__errno_location() #12, !dbg !1273
  store i32 %6, i32* %call, align 4, !dbg !1274
  br i1 %cmp6, label %land.lhs.true11, label %if.else, !dbg !1275

land.lhs.true11:                                  ; preds = %lor.end
  %missing_files = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 43, i32 1, !dbg !1277
  %7 = load i8, i8* %missing_files, align 4, !dbg !1277
  %tobool15 = icmp eq i8 %7, 0, !dbg !1277
  br i1 %tobool15, label %if.else, label %land.lhs.true16, !dbg !1278

land.lhs.true16:                                  ; preds = %land.lhs.true11
  %cmp18 = icmp eq i32 %6, 2, !dbg !1279
  br i1 %cmp18, label %if.then, label %if.else, !dbg !1280

if.then:                                          ; preds = %land.lhs.true16
  %deps20 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 45, !dbg !1281
  %8 = load %struct.deps*, %struct.deps** %deps20, align 8, !dbg !1281
  %name = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 0, !dbg !1283
  %9 = load i8*, i8** %name, align 8, !dbg !1283
  tail call void @deps_add_dep(%struct.deps* %8, i8* %9) #8, !dbg !1284
  %need_preprocessor_output = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 43, i32 4, !dbg !1285
  %10 = load i8, i8* %need_preprocessor_output, align 1, !dbg !1285
  %tobool23 = icmp eq i8 %10, 0, !dbg !1285
  br i1 %tobool23, label %if.end46, label %if.then24, !dbg !1287

if.then24:                                        ; preds = %if.then
  %path = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !1288
  %11 = load i8*, i8** %path, align 8, !dbg !1288
  %call25 = tail call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 6, i8* %11) #8, !dbg !1289
  br label %if.end46, !dbg !1289

if.else:                                          ; preds = %land.lhs.true11, %land.lhs.true16, %lor.end
  %12 = load i32, i32* %style, align 8, !dbg !1290
  %cmp29 = icmp eq i32 %12, 0, !dbg !1293
  %or.cond = or i1 %cmp29, %cmp6, !dbg !1294
  br i1 %or.cond, label %if.then39, label %lor.lhs.false33, !dbg !1294

lor.lhs.false33:                                  ; preds = %if.else
  %need_preprocessor_output36 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 43, i32 4, !dbg !1295
  %13 = load i8, i8* %need_preprocessor_output36, align 1, !dbg !1295
  %tobool38 = icmp eq i8 %13, 0, !dbg !1295
  br i1 %tobool38, label %if.else42, label %if.then39, !dbg !1296

if.then39:                                        ; preds = %lor.lhs.false33, %if.else
  %path40 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !1297
  %14 = load i8*, i8** %path40, align 8, !dbg !1297
  %call41 = tail call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 6, i8* %14) #8, !dbg !1298
  br label %if.end46, !dbg !1298

if.else42:                                        ; preds = %lor.lhs.false33
  %path43 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !1299
  %15 = load i8*, i8** %path43, align 8, !dbg !1299
  %call44 = tail call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 0, i8* %15) #8, !dbg !1300
  br label %if.end46

if.end46:                                         ; preds = %if.then, %if.then39, %if.else42, %if.then24
  ret void, !dbg !1301
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

; Function Attrs: nounwind uwtable
define internal fastcc %struct.file_hash_entry* @new_file_hash_entry(%struct.cpp_reader* %pfile) unnamed_addr #2 !dbg !1302 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1306, metadata !DIExpression()), !dbg !1308
  %file_hash_entries = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 21, !dbg !1309
  %0 = load %struct.file_hash_entry_pool*, %struct.file_hash_entry_pool** %file_hash_entries, align 8, !dbg !1309
  %file_hash_entries_used = getelementptr inbounds %struct.file_hash_entry_pool, %struct.file_hash_entry_pool* %0, i64 0, i32 0, !dbg !1311
  %1 = load i32, i32* %file_hash_entries_used, align 8, !dbg !1311
  %cmp = icmp eq i32 %1, 127, !dbg !1312
  br i1 %cmp, label %if.then, label %if.end, !dbg !1313

if.then:                                          ; preds = %entry
  tail call fastcc void @allocate_file_hash_entries(%struct.cpp_reader* %pfile) #10, !dbg !1314
  %.pre = load %struct.file_hash_entry_pool*, %struct.file_hash_entry_pool** %file_hash_entries, align 8, !dbg !1315
  %file_hash_entries_used2.phi.trans.insert = getelementptr inbounds %struct.file_hash_entry_pool, %struct.file_hash_entry_pool* %.pre, i64 0, i32 0, !dbg !1308
  %.pre1 = load i32, i32* %file_hash_entries_used2.phi.trans.insert, align 8, !dbg !1316
  br label %if.end, !dbg !1314

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i32 [ %.pre1, %if.then ], [ %1, %entry ], !dbg !1316
  %3 = phi %struct.file_hash_entry_pool* [ %.pre, %if.then ], [ %0, %entry ], !dbg !1315
  %file_hash_entries_used2 = getelementptr inbounds %struct.file_hash_entry_pool, %struct.file_hash_entry_pool* %3, i64 0, i32 0, !dbg !1317
  %inc = add i32 %2, 1, !dbg !1316
  store i32 %inc, i32* %file_hash_entries_used2, align 8, !dbg !1316
  call void @llvm.dbg.value(metadata i32 %2, metadata !1307, metadata !DIExpression()), !dbg !1308
  %4 = load %struct.file_hash_entry_pool*, %struct.file_hash_entry_pool** %file_hash_entries, align 8, !dbg !1318
  %idxprom = zext i32 %2 to i64, !dbg !1319
  %arrayidx = getelementptr inbounds %struct.file_hash_entry_pool, %struct.file_hash_entry_pool* %4, i64 0, i32 2, i64 %idxprom, !dbg !1319
  ret %struct.file_hash_entry* %arrayidx, !dbg !1320
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_stack_file(%struct.cpp_reader* %pfile, %struct._cpp_file* %file, i8 zeroext %import) local_unnamed_addr #2 !dbg !1321 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1325, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !1326, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8 %import, metadata !1327, metadata !DIExpression()), !dbg !1330
  %call = tail call fastcc zeroext i8 @should_stack_file(%struct.cpp_reader* %pfile, %struct._cpp_file* %file, i8 zeroext %import) #10, !dbg !1331
  %tobool = icmp eq i8 %call, 0, !dbg !1331
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1333

if.end:                                           ; preds = %entry
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1334
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !1334
  %cmp = icmp eq %struct.cpp_buffer* %0, null, !dbg !1336
  br i1 %cmp, label %if.end17, label %lor.lhs.false, !dbg !1337

lor.lhs.false:                                    ; preds = %if.end
  %dir = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 8, !dbg !1338
  %1 = load %struct.cpp_dir*, %struct.cpp_dir** %dir, align 8, !dbg !1338
  %cmp2 = icmp eq %struct.cpp_dir* %1, null, !dbg !1339
  br i1 %cmp2, label %if.end17, label %if.else, !dbg !1340

if.else:                                          ; preds = %lor.lhs.false
  %sysp5 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 15, !dbg !1341
  %2 = load i8, i8* %sysp5, align 2, !dbg !1341
  %sysp7 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %1, i64 0, i32 3, !dbg !1341
  %3 = load i8, i8* %sysp7, align 4, !dbg !1341
  %cmp9 = icmp ugt i8 %2, %3, !dbg !1341
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !1341

cond.true:                                        ; preds = %if.else
  br label %if.end17, !dbg !1341

cond.false:                                       ; preds = %if.else
  br label %if.end17, !dbg !1341

if.end17:                                         ; preds = %cond.true, %cond.false, %if.end, %lor.lhs.false
  %sysp.0.shrunk = phi i8 [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %2, %cond.true ], [ %3, %cond.false ]
  %sysp.0 = zext i8 %sysp.0.shrunk to i32, !dbg !1342
  call void @llvm.dbg.value(metadata i32 %sysp.0, metadata !1329, metadata !DIExpression()), !dbg !1330
  %style = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 43, i32 0, !dbg !1343
  %4 = load i32, i32* %style, align 8, !dbg !1343
  %tobool18 = icmp ne i8 %sysp.0.shrunk, 0, !dbg !1345
  %lnot.ext = zext i1 %tobool18 to i32, !dbg !1346
  %cmp20 = icmp ugt i32 %4, %lnot.ext, !dbg !1347
  br i1 %cmp20, label %land.lhs.true, label %if.end32, !dbg !1348

land.lhs.true:                                    ; preds = %if.end17
  %stack_count = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 12, !dbg !1349
  %5 = load i16, i16* %stack_count, align 8, !dbg !1349
  %tobool22 = icmp eq i16 %5, 0, !dbg !1350
  br i1 %tobool22, label %if.then23, label %if.end32, !dbg !1351

if.then23:                                        ; preds = %land.lhs.true
  %main_file = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 15, !dbg !1352
  %6 = load i8, i8* %main_file, align 4, !dbg !1352
  %tobool24 = icmp eq i8 %6, 0, !dbg !1355
  br i1 %tobool24, label %if.then29, label %lor.lhs.false25, !dbg !1356

lor.lhs.false25:                                  ; preds = %if.then23
  %ignore_main_file = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 43, i32 3, !dbg !1357
  %7 = load i8, i8* %ignore_main_file, align 2, !dbg !1357
  %tobool28 = icmp eq i8 %7, 0, !dbg !1357
  br i1 %tobool28, label %if.then29, label %if.end32, !dbg !1358

if.then29:                                        ; preds = %lor.lhs.false25, %if.then23
  %deps30 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 45, !dbg !1359
  %8 = load %struct.deps*, %struct.deps** %deps30, align 8, !dbg !1359
  %path = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !1360
  %9 = load i8*, i8** %path, align 8, !dbg !1360
  tail call void @deps_add_dep(%struct.deps* %8, i8* %9) #8, !dbg !1361
  br label %if.end32, !dbg !1361

if.end32:                                         ; preds = %lor.lhs.false25, %land.lhs.true, %if.then29, %if.end17
  %buffer_valid = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 16, !dbg !1362
  store i8 0, i8* %buffer_valid, align 1, !dbg !1363
  %stack_count33 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 12, !dbg !1364
  %10 = load i16, i16* %stack_count33, align 8, !dbg !1365
  %inc = add i16 %10, 1, !dbg !1365
  store i16 %inc, i16* %stack_count33, align 8, !dbg !1365
  %buffer34 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 5, !dbg !1366
  %11 = load i8*, i8** %buffer34, align 8, !dbg !1366
  %st_size = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 9, i32 8, !dbg !1367
  %12 = load i64, i64* %st_size, align 8, !dbg !1367
  %preprocessed = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 32, !dbg !1368
  %13 = load i8, i8* %preprocessed, align 2, !dbg !1368
  %tobool37 = icmp eq i8 %13, 0, !dbg !1368
  br i1 %tobool37, label %land.end, label %land.rhs, !dbg !1369

land.rhs:                                         ; preds = %if.end32
  %directives_only = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 52, !dbg !1370
  %14 = load i8, i8* %directives_only, align 4, !dbg !1370
  %tobool39 = icmp eq i8 %14, 0, !dbg !1371
  %phitmp = zext i1 %tobool39 to i32
  br label %land.end

land.end:                                         ; preds = %if.end32, %land.rhs
  %15 = phi i32 [ 0, %if.end32 ], [ %phitmp, %land.rhs ]
  %call42 = tail call %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader* %pfile, i8* %11, i64 %12, i32 %15) #8, !dbg !1372
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %call42, metadata !1328, metadata !DIExpression()), !dbg !1330
  %file43 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %call42, i64 0, i32 10, !dbg !1373
  store %struct._cpp_file* %file, %struct._cpp_file** %file43, align 8, !dbg !1374
  %sysp45 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %call42, i64 0, i32 15, !dbg !1375
  store i8 %sysp.0.shrunk, i8* %sysp45, align 2, !dbg !1376
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 28, !dbg !1377
  store i8 1, i8* %mi_valid, align 8, !dbg !1378
  %mi_cmacro = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 26, !dbg !1379
  store %struct.cpp_hashnode* null, %struct.cpp_hashnode** %mi_cmacro, align 8, !dbg !1380
  %path46 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !1381
  %16 = load i8*, i8** %path46, align 8, !dbg !1381
  tail call void @_cpp_do_file_change(%struct.cpp_reader* %pfile, i32 0, i8* %16, i32 1, i32 %sysp.0) #8, !dbg !1382
  br label %cleanup, !dbg !1383

cleanup:                                          ; preds = %entry, %land.end
  %retval.0 = phi i8 [ 1, %land.end ], [ 0, %entry ], !dbg !1330
  ret i8 %retval.0, !dbg !1384
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @should_stack_file(%struct.cpp_reader* %pfile, %struct._cpp_file* %file, i8 zeroext %import) unnamed_addr #2 !dbg !1385 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1387, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !1388, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %import, metadata !1389, metadata !DIExpression()), !dbg !1398
  %once_only = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 13, !dbg !1399
  %0 = load i8, i8* %once_only, align 2, !dbg !1399
  %tobool = icmp eq i8 %0, 0, !dbg !1401
  br i1 %tobool, label %if.end, label %cleanup95, !dbg !1402

if.end:                                           ; preds = %entry
  %tobool1 = icmp eq i8 %import, 0, !dbg !1403
  br i1 %tobool1, label %if.end6, label %if.then2, !dbg !1405

if.then2:                                         ; preds = %if.end
  tail call void @_cpp_mark_file_once_only(%struct.cpp_reader* %pfile, %struct._cpp_file* %file) #10, !dbg !1406
  %stack_count = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 12, !dbg !1408
  %1 = load i16, i16* %stack_count, align 8, !dbg !1408
  %tobool3 = icmp eq i16 %1, 0, !dbg !1410
  br i1 %tobool3, label %if.end6, label %cleanup95, !dbg !1411

if.end6:                                          ; preds = %if.then2, %if.end
  %cmacro = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 7, !dbg !1412
  %2 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro, align 8, !dbg !1412
  %tobool7 = icmp eq %struct.cpp_hashnode* %2, null, !dbg !1414
  br i1 %tobool7, label %if.end10, label %land.lhs.true, !dbg !1415

land.lhs.true:                                    ; preds = %if.end6
  %type = getelementptr inbounds %struct.cpp_hashnode, %struct.cpp_hashnode* %2, i64 0, i32 3, !dbg !1416
  %bf.load = load i16, i16* %type, align 2, !dbg !1416
  %bf.clear = and i16 %bf.load, 63, !dbg !1416
  %cmp = icmp eq i16 %bf.clear, 1, !dbg !1417
  br i1 %cmp, label %cleanup95, label %if.end10, !dbg !1418

if.end10:                                         ; preds = %if.end6, %land.lhs.true
  %pchname = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 2, !dbg !1419
  %3 = load i8*, i8** %pchname, align 8, !dbg !1419
  %tobool11 = icmp eq i8* %3, null, !dbg !1421
  br i1 %tobool11, label %if.end17, label %if.then12, !dbg !1422

if.then12:                                        ; preds = %if.end10
  %read_pch = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 9, !dbg !1423
  %4 = load void (%struct.cpp_reader*, i8*, i32, i8*)*, void (%struct.cpp_reader*, i8*, i32, i8*)** %read_pch, align 8, !dbg !1423
  %fd = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 10, !dbg !1425
  %5 = load i32, i32* %fd, align 8, !dbg !1425
  %path = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !1426
  %6 = load i8*, i8** %path, align 8, !dbg !1426
  tail call void %4(%struct.cpp_reader* %pfile, i8* nonnull %3, i32 %5, i8* %6) #8, !dbg !1427
  store i32 -1, i32* %fd, align 8, !dbg !1428
  %7 = load i8*, i8** %pchname, align 8, !dbg !1429
  tail call void @free(i8* %7) #8, !dbg !1430
  store i8* null, i8** %pchname, align 8, !dbg !1431
  br label %cleanup95, !dbg !1432

if.end17:                                         ; preds = %if.end10
  %call = tail call fastcc zeroext i8 @read_file(%struct.cpp_reader* %pfile, %struct._cpp_file* %file) #10, !dbg !1433
  %tobool18 = icmp eq i8 %call, 0, !dbg !1433
  br i1 %tobool18, label %cleanup95, label %if.end20, !dbg !1435

if.end20:                                         ; preds = %if.end17
  %call21 = tail call fastcc zeroext i8 @check_file_against_entries(%struct.cpp_reader* %pfile, %struct._cpp_file* %file, i8 zeroext %import) #10, !dbg !1436
  %tobool22 = icmp eq i8 %call21, 0, !dbg !1436
  br i1 %tobool22, label %if.end27, label %if.then23, !dbg !1438

if.then23:                                        ; preds = %if.end20
  br i1 %tobool1, label %if.then25, label %cleanup95, !dbg !1439

if.then25:                                        ; preds = %if.then23
  tail call void @_cpp_mark_file_once_only(%struct.cpp_reader* %pfile, %struct._cpp_file* %file) #10, !dbg !1441
  br label %cleanup95, !dbg !1441

if.end27:                                         ; preds = %if.end20
  %seen_once_only = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 25, !dbg !1443
  %8 = load i8, i8* %seen_once_only, align 1, !dbg !1443
  %tobool28 = icmp eq i8 %8, 0, !dbg !1445
  br i1 %tobool28, label %cleanup95, label %if.end30, !dbg !1446

if.end30:                                         ; preds = %if.end27
  %all_files = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 17, !dbg !1447
  %st_mtime44 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 9, i32 13, !dbg !1448
  %st_size50 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 9, i32 8, !dbg !1448
  %buffer73 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 5, !dbg !1449
  br i1 %tobool1, label %if.end30.split.us, label %if.end30.if.end30.split_crit_edge, !dbg !1450

if.end30.if.end30.split_crit_edge:                ; preds = %if.end30
  br label %for.cond, !dbg !1450

if.end30.split.us:                                ; preds = %if.end30
  br label %for.cond.us, !dbg !1450

for.cond.us:                                      ; preds = %for.inc.us, %if.end30.split.us
  %f.0.in.us = phi %struct._cpp_file** [ %all_files, %if.end30.split.us ], [ %next_file.us, %for.inc.us ]
  %f.0.us = load %struct._cpp_file*, %struct._cpp_file** %f.0.in.us, align 8, !dbg !1451
  call void @llvm.dbg.value(metadata %struct._cpp_file* %f.0.us, metadata !1390, metadata !DIExpression()), !dbg !1398
  %tobool31.us = icmp eq %struct._cpp_file* %f.0.us, null, !dbg !1452
  br i1 %tobool31.us, label %for.end.us-lcssa.us, label %for.body.us, !dbg !1452

for.body.us:                                      ; preds = %for.cond.us
  %cmp32.us = icmp eq %struct._cpp_file* %f.0.us, %file, !dbg !1453
  br i1 %cmp32.us, label %for.inc.us, label %if.end34.us, !dbg !1455

if.end34.us:                                      ; preds = %for.body.us
  %once_only36.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0.us, i64 0, i32 13, !dbg !1456
  %9 = load i8, i8* %once_only36.us, align 2, !dbg !1456
  %tobool38.us = icmp eq i8 %9, 0, !dbg !1457
  br i1 %tobool38.us, label %for.inc.us, label %land.lhs.true39.us, !dbg !1458

land.lhs.true39.us:                               ; preds = %if.end34.us
  %err_no.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0.us, i64 0, i32 11, !dbg !1459
  %10 = load i32, i32* %err_no.us, align 4, !dbg !1459
  %cmp40.us = icmp eq i32 %10, 0, !dbg !1460
  br i1 %cmp40.us, label %land.lhs.true42.us, label %for.inc.us, !dbg !1461

land.lhs.true42.us:                               ; preds = %land.lhs.true39.us
  %st_mtime.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0.us, i64 0, i32 9, i32 13, !dbg !1462
  %11 = load i64, i64* %st_mtime.us, align 8, !dbg !1462
  %12 = load i64, i64* %st_mtime44, align 8, !dbg !1463
  %cmp45.us = icmp eq i64 %11, %12, !dbg !1464
  br i1 %cmp45.us, label %land.lhs.true47.us, label %for.inc.us, !dbg !1465

land.lhs.true47.us:                               ; preds = %land.lhs.true42.us
  %st_size.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0.us, i64 0, i32 9, i32 8, !dbg !1466
  %13 = load i64, i64* %st_size.us, align 8, !dbg !1466
  %14 = load i64, i64* %st_size50, align 8, !dbg !1467
  %cmp51.us = icmp eq i64 %13, %14, !dbg !1468
  br i1 %cmp51.us, label %if.then53.us, label %for.inc.us, !dbg !1469

if.then53.us:                                     ; preds = %land.lhs.true47.us
  call void @llvm.dbg.value(metadata i8 0, metadata !1397, metadata !DIExpression()), !dbg !1449
  %buffer.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0.us, i64 0, i32 5, !dbg !1470
  %15 = load i8*, i8** %buffer.us, align 8, !dbg !1470
  %tobool54.us = icmp eq i8* %15, null, !dbg !1472
  br i1 %tobool54.us, label %if.end61.us, label %land.lhs.true55.us, !dbg !1473

land.lhs.true55.us:                               ; preds = %if.then53.us
  %buffer_valid.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0.us, i64 0, i32 16, !dbg !1474
  %16 = load i8, i8* %buffer_valid.us, align 1, !dbg !1474
  %tobool56.us = icmp eq i8 %16, 0, !dbg !1475
  br i1 %tobool56.us, label %if.then57.us, label %if.end61.us, !dbg !1476

if.then57.us:                                     ; preds = %land.lhs.true55.us
  %dir.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0.us, i64 0, i32 8, !dbg !1477
  %17 = load %struct.cpp_dir*, %struct.cpp_dir** %dir.us, align 8, !dbg !1477
  %name.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0.us, i64 0, i32 0, !dbg !1479
  %18 = load i8*, i8** %name.us, align 8, !dbg !1479
  %call58.us = tail call fastcc %struct._cpp_file* @make_cpp_file(%struct.cpp_reader* %pfile, %struct.cpp_dir* %17, i8* %18) #10, !dbg !1480
  call void @llvm.dbg.value(metadata %struct._cpp_file* %call58.us, metadata !1391, metadata !DIExpression()), !dbg !1449
  %path59.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0.us, i64 0, i32 1, !dbg !1481
  %19 = bitcast i8** %path59.us to i64*, !dbg !1481
  %20 = load i64, i64* %19, align 8, !dbg !1481
  %path60.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %call58.us, i64 0, i32 1, !dbg !1482
  %21 = bitcast i8** %path60.us to i64*, !dbg !1483
  store i64 %20, i64* %21, align 8, !dbg !1483
  br label %if.end61.us, !dbg !1484

if.end61.us:                                      ; preds = %if.then57.us, %land.lhs.true55.us, %if.then53.us
  %ref_file.0.us = phi %struct._cpp_file* [ %call58.us, %if.then57.us ], [ %f.0.us, %land.lhs.true55.us ], [ %f.0.us, %if.then53.us ], !dbg !1485
  call void @llvm.dbg.value(metadata %struct._cpp_file* %ref_file.0.us, metadata !1391, metadata !DIExpression()), !dbg !1449
  %call62.us = tail call fastcc zeroext i8 @read_file(%struct.cpp_reader* %pfile, %struct._cpp_file* %ref_file.0.us) #10, !dbg !1486
  %tobool64.us = icmp eq i8 %call62.us, 0, !dbg !1486
  br i1 %tobool64.us, label %land.end.us, label %land.lhs.true65.us, !dbg !1487

land.lhs.true65.us:                               ; preds = %if.end61.us
  %st_size67.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %ref_file.0.us, i64 0, i32 9, i32 8, !dbg !1488
  %22 = load i64, i64* %st_size67.us, align 8, !dbg !1488
  %23 = load i64, i64* %st_size50, align 8, !dbg !1489
  %cmp70.us = icmp eq i64 %22, %23, !dbg !1490
  br i1 %cmp70.us, label %land.rhs.us, label %land.end.us, !dbg !1491

land.rhs.us:                                      ; preds = %land.lhs.true65.us
  %buffer72.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %ref_file.0.us, i64 0, i32 5, !dbg !1492
  %24 = load i8*, i8** %buffer72.us, align 8, !dbg !1492
  %25 = load i8*, i8** %buffer73, align 8, !dbg !1493
  %call76.us = tail call i32 @memcmp(i8* %24, i8* %25, i64 %22) #11, !dbg !1494
  %tobool77.us = icmp eq i32 %call76.us, 0, !dbg !1495
  br label %land.end.us

land.end.us:                                      ; preds = %land.rhs.us, %land.lhs.true65.us, %if.end61.us
  %26 = phi i1 [ false, %land.lhs.true65.us ], [ false, %if.end61.us ], [ %tobool77.us, %land.rhs.us ], !dbg !1449
  call void @llvm.dbg.value(metadata i1 %26, metadata !1397, metadata !DIExpression()), !dbg !1449
  %27 = load i8*, i8** %buffer.us, align 8, !dbg !1496
  %tobool80.us = icmp eq i8* %27, null, !dbg !1498
  br i1 %tobool80.us, label %if.end86.us, label %land.lhs.true81.us, !dbg !1499

land.lhs.true81.us:                               ; preds = %land.end.us
  %buffer_valid82.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0.us, i64 0, i32 16, !dbg !1500
  %28 = load i8, i8* %buffer_valid82.us, align 1, !dbg !1500
  %tobool83.us = icmp eq i8 %28, 0, !dbg !1501
  br i1 %tobool83.us, label %if.then84.us, label %if.end86.us, !dbg !1502

if.then84.us:                                     ; preds = %land.lhs.true81.us
  %path85.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %ref_file.0.us, i64 0, i32 1, !dbg !1503
  store i8* null, i8** %path85.us, align 8, !dbg !1505
  tail call fastcc void @destroy_cpp_file(%struct._cpp_file* %ref_file.0.us) #10, !dbg !1506
  br label %if.end86.us, !dbg !1507

if.end86.us:                                      ; preds = %if.then84.us, %land.lhs.true81.us, %land.end.us
  br i1 %26, label %for.end.us-lcssa.us, label %for.inc.us

for.inc.us:                                       ; preds = %if.end86.us, %land.lhs.true47.us, %land.lhs.true42.us, %land.lhs.true39.us, %if.end34.us, %for.body.us
  %next_file.us = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0.us, i64 0, i32 4, !dbg !1508
  br label %for.cond.us, !dbg !1509, !llvm.loop !1510

for.end.us-lcssa.us:                              ; preds = %if.end86.us, %for.cond.us
  %f.0.us.lcssa = phi %struct._cpp_file* [ %f.0.us, %if.end86.us ], [ %f.0.us, %for.cond.us ], !dbg !1451
  br label %for.end, !dbg !1512

for.cond:                                         ; preds = %for.inc, %if.end30.if.end30.split_crit_edge
  %f.0.in = phi %struct._cpp_file** [ %all_files, %if.end30.if.end30.split_crit_edge ], [ %next_file, %for.inc ]
  %f.0 = load %struct._cpp_file*, %struct._cpp_file** %f.0.in, align 8, !dbg !1451
  call void @llvm.dbg.value(metadata %struct._cpp_file* %f.0, metadata !1390, metadata !DIExpression()), !dbg !1398
  %tobool31 = icmp eq %struct._cpp_file* %f.0, null, !dbg !1452
  br i1 %tobool31, label %for.end.us-lcssa, label %for.body, !dbg !1452

for.body:                                         ; preds = %for.cond
  %cmp32 = icmp eq %struct._cpp_file* %f.0, %file, !dbg !1453
  br i1 %cmp32, label %for.inc, label %if.end34, !dbg !1455

if.end34:                                         ; preds = %for.body
  %err_no = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0, i64 0, i32 11, !dbg !1459
  %29 = load i32, i32* %err_no, align 4, !dbg !1459
  %cmp40 = icmp eq i32 %29, 0, !dbg !1460
  br i1 %cmp40, label %land.lhs.true42, label %for.inc, !dbg !1461

land.lhs.true42:                                  ; preds = %if.end34
  %st_mtime = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0, i64 0, i32 9, i32 13, !dbg !1462
  %30 = load i64, i64* %st_mtime, align 8, !dbg !1462
  %31 = load i64, i64* %st_mtime44, align 8, !dbg !1463
  %cmp45 = icmp eq i64 %30, %31, !dbg !1464
  br i1 %cmp45, label %land.lhs.true47, label %for.inc, !dbg !1465

land.lhs.true47:                                  ; preds = %land.lhs.true42
  %st_size = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0, i64 0, i32 9, i32 8, !dbg !1466
  %32 = load i64, i64* %st_size, align 8, !dbg !1466
  %33 = load i64, i64* %st_size50, align 8, !dbg !1467
  %cmp51 = icmp eq i64 %32, %33, !dbg !1468
  br i1 %cmp51, label %if.then53, label %for.inc, !dbg !1469

if.then53:                                        ; preds = %land.lhs.true47
  call void @llvm.dbg.value(metadata i8 0, metadata !1397, metadata !DIExpression()), !dbg !1449
  %buffer = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0, i64 0, i32 5, !dbg !1470
  %34 = load i8*, i8** %buffer, align 8, !dbg !1470
  %tobool54 = icmp eq i8* %34, null, !dbg !1472
  br i1 %tobool54, label %if.end61, label %land.lhs.true55, !dbg !1473

land.lhs.true55:                                  ; preds = %if.then53
  %buffer_valid = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0, i64 0, i32 16, !dbg !1474
  %35 = load i8, i8* %buffer_valid, align 1, !dbg !1474
  %tobool56 = icmp eq i8 %35, 0, !dbg !1475
  br i1 %tobool56, label %if.then57, label %if.end61, !dbg !1476

if.then57:                                        ; preds = %land.lhs.true55
  %dir = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0, i64 0, i32 8, !dbg !1477
  %36 = load %struct.cpp_dir*, %struct.cpp_dir** %dir, align 8, !dbg !1477
  %name = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0, i64 0, i32 0, !dbg !1479
  %37 = load i8*, i8** %name, align 8, !dbg !1479
  %call58 = tail call fastcc %struct._cpp_file* @make_cpp_file(%struct.cpp_reader* %pfile, %struct.cpp_dir* %36, i8* %37) #10, !dbg !1480
  call void @llvm.dbg.value(metadata %struct._cpp_file* %call58, metadata !1391, metadata !DIExpression()), !dbg !1449
  %path59 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0, i64 0, i32 1, !dbg !1481
  %38 = bitcast i8** %path59 to i64*, !dbg !1481
  %39 = load i64, i64* %38, align 8, !dbg !1481
  %path60 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %call58, i64 0, i32 1, !dbg !1482
  %40 = bitcast i8** %path60 to i64*, !dbg !1483
  store i64 %39, i64* %40, align 8, !dbg !1483
  br label %if.end61, !dbg !1484

if.end61:                                         ; preds = %land.lhs.true55, %if.then53, %if.then57
  %ref_file.0 = phi %struct._cpp_file* [ %call58, %if.then57 ], [ %f.0, %land.lhs.true55 ], [ %f.0, %if.then53 ], !dbg !1485
  call void @llvm.dbg.value(metadata %struct._cpp_file* %ref_file.0, metadata !1391, metadata !DIExpression()), !dbg !1449
  %call62 = tail call fastcc zeroext i8 @read_file(%struct.cpp_reader* %pfile, %struct._cpp_file* %ref_file.0) #10, !dbg !1486
  %tobool64 = icmp eq i8 %call62, 0, !dbg !1486
  br i1 %tobool64, label %land.end, label %land.lhs.true65, !dbg !1487

land.lhs.true65:                                  ; preds = %if.end61
  %st_size67 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %ref_file.0, i64 0, i32 9, i32 8, !dbg !1488
  %41 = load i64, i64* %st_size67, align 8, !dbg !1488
  %42 = load i64, i64* %st_size50, align 8, !dbg !1489
  %cmp70 = icmp eq i64 %41, %42, !dbg !1490
  br i1 %cmp70, label %land.rhs, label %land.end, !dbg !1491

land.rhs:                                         ; preds = %land.lhs.true65
  %buffer72 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %ref_file.0, i64 0, i32 5, !dbg !1492
  %43 = load i8*, i8** %buffer72, align 8, !dbg !1492
  %44 = load i8*, i8** %buffer73, align 8, !dbg !1493
  %call76 = tail call i32 @memcmp(i8* %43, i8* %44, i64 %41) #11, !dbg !1494
  %tobool77 = icmp eq i32 %call76, 0, !dbg !1495
  br label %land.end

land.end:                                         ; preds = %if.end61, %land.rhs, %land.lhs.true65
  %45 = phi i1 [ false, %land.lhs.true65 ], [ false, %if.end61 ], [ %tobool77, %land.rhs ], !dbg !1449
  call void @llvm.dbg.value(metadata i1 %45, metadata !1397, metadata !DIExpression()), !dbg !1449
  %46 = load i8*, i8** %buffer, align 8, !dbg !1496
  %tobool80 = icmp eq i8* %46, null, !dbg !1498
  br i1 %tobool80, label %if.end86, label %land.lhs.true81, !dbg !1499

land.lhs.true81:                                  ; preds = %land.end
  %buffer_valid82 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0, i64 0, i32 16, !dbg !1500
  %47 = load i8, i8* %buffer_valid82, align 1, !dbg !1500
  %tobool83 = icmp eq i8 %47, 0, !dbg !1501
  br i1 %tobool83, label %if.then84, label %if.end86, !dbg !1502

if.then84:                                        ; preds = %land.lhs.true81
  %path85 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %ref_file.0, i64 0, i32 1, !dbg !1503
  store i8* null, i8** %path85, align 8, !dbg !1505
  tail call fastcc void @destroy_cpp_file(%struct._cpp_file* %ref_file.0) #10, !dbg !1506
  br label %if.end86, !dbg !1507

if.end86:                                         ; preds = %land.lhs.true81, %land.end, %if.then84
  br i1 %45, label %for.end.us-lcssa, label %for.inc

for.inc:                                          ; preds = %if.end86, %if.end34, %land.lhs.true42, %land.lhs.true47, %for.body
  %next_file = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0, i64 0, i32 4, !dbg !1508
  br label %for.cond, !dbg !1509, !llvm.loop !1510

for.end.us-lcssa:                                 ; preds = %if.end86, %for.cond
  %f.0.lcssa2 = phi %struct._cpp_file* [ %f.0, %if.end86 ], [ %f.0, %for.cond ], !dbg !1451
  br label %for.end, !dbg !1512

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %f.0.lcssa = phi %struct._cpp_file* [ %f.0.lcssa2, %for.end.us-lcssa ], [ %f.0.us.lcssa, %for.end.us-lcssa.us ], !dbg !1451
  %cmp92 = icmp eq %struct._cpp_file* %f.0.lcssa, null, !dbg !1512
  %conv94 = zext i1 %cmp92 to i8, !dbg !1513
  br label %cleanup95, !dbg !1514

cleanup95:                                        ; preds = %if.then2, %if.then23, %if.end27, %if.end17, %entry, %if.then25, %land.lhs.true, %for.end, %if.then12
  %retval.0 = phi i8 [ 0, %if.then12 ], [ %conv94, %for.end ], [ 0, %entry ], [ 0, %if.then2 ], [ 0, %land.lhs.true ], [ 0, %if.end17 ], [ 0, %if.then25 ], [ 0, %if.then23 ], [ 1, %if.end27 ], !dbg !1398
  ret i8 %retval.0, !dbg !1515
}

declare dso_local void @deps_add_dep(%struct.deps*, i8*) local_unnamed_addr #1

declare dso_local %struct.cpp_buffer* @cpp_push_buffer(%struct.cpp_reader*, i8*, i64, i32) local_unnamed_addr #1

declare dso_local void @_cpp_do_file_change(%struct.cpp_reader*, i32, i8*, i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_mark_file_once_only(%struct.cpp_reader* %pfile, %struct._cpp_file* %file) local_unnamed_addr #2 !dbg !1516 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1520, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !1521, metadata !DIExpression()), !dbg !1522
  %seen_once_only = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 25, !dbg !1523
  store i8 1, i8* %seen_once_only, align 1, !dbg !1524
  %once_only = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 13, !dbg !1525
  store i8 1, i8* %once_only, align 2, !dbg !1526
  ret void, !dbg !1527
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_stack_include(%struct.cpp_reader* %pfile, i8* %fname, i32 %angle_brackets, i32 %type) local_unnamed_addr #2 !dbg !1528 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1532, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1533, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i32 %angle_brackets, metadata !1534, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i32 %type, metadata !1535, metadata !DIExpression()), !dbg !1538
  %call = tail call fastcc %struct.cpp_dir* @search_path_head(%struct.cpp_reader* %pfile, i8* %fname, i32 %angle_brackets, i32 %type) #10, !dbg !1539
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %call, metadata !1536, metadata !DIExpression()), !dbg !1538
  %tobool = icmp eq %struct.cpp_dir* %call, null, !dbg !1540
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1542

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._cpp_file* @_cpp_find_file(%struct.cpp_reader* %pfile, i8* %fname, %struct.cpp_dir* nonnull %call, i8 zeroext 0, i32 %angle_brackets) #10, !dbg !1543
  call void @llvm.dbg.value(metadata %struct._cpp_file* %call1, metadata !1537, metadata !DIExpression()), !dbg !1538
  %pchname = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %call1, i64 0, i32 2, !dbg !1544
  %0 = load i8*, i8** %pchname, align 8, !dbg !1544
  %cmp = icmp eq i8* %0, null, !dbg !1546
  br i1 %cmp, label %land.lhs.true, label %if.end6, !dbg !1547

land.lhs.true:                                    ; preds = %if.end
  %err_no = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %call1, i64 0, i32 11, !dbg !1548
  %1 = load i32, i32* %err_no, align 4, !dbg !1548
  %cmp2 = icmp eq i32 %1, 0, !dbg !1549
  %cmp4 = icmp ne i32 %type, 3, !dbg !1550
  %or.cond = and i1 %cmp2, %cmp4, !dbg !1551
  br i1 %or.cond, label %if.then5, label %if.end6, !dbg !1551

if.then5:                                         ; preds = %land.lhs.true
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !1552
  %2 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !1552
  %highest_location = getelementptr inbounds %struct.line_maps, %struct.line_maps* %2, i64 0, i32 7, !dbg !1553
  %3 = load i32, i32* %highest_location, align 8, !dbg !1554
  %dec = add i32 %3, -1, !dbg !1554
  store i32 %dec, i32* %highest_location, align 8, !dbg !1554
  br label %if.end6, !dbg !1555

if.end6:                                          ; preds = %if.then5, %land.lhs.true, %if.end
  %cmp7 = icmp eq i32 %type, 2, !dbg !1556
  %conv8 = zext i1 %cmp7 to i8, !dbg !1557
  %call9 = tail call zeroext i8 @_cpp_stack_file(%struct.cpp_reader* %pfile, %struct._cpp_file* %call1, i8 zeroext %conv8) #10, !dbg !1558
  br label %cleanup, !dbg !1559

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi i8 [ %call9, %if.end6 ], [ 0, %entry ], !dbg !1538
  ret i8 %retval.0, !dbg !1560
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_dir* @search_path_head(%struct.cpp_reader* %pfile, i8* %fname, i32 %angle_brackets, i32 %type) unnamed_addr #2 !dbg !1561 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1565, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1566, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i32 %angle_brackets, metadata !1567, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i32 %type, metadata !1568, metadata !DIExpression()), !dbg !1571
  %0 = load i8, i8* %fname, align 1, !dbg !1572
  %cmp = icmp eq i8 %0, 47, !dbg !1572
  br i1 %cmp, label %if.then, label %if.end, !dbg !1574

if.then:                                          ; preds = %entry
  %no_search_path = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 16, !dbg !1575
  br label %cleanup, !dbg !1576

if.end:                                           ; preds = %entry
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1577
  %1 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !1577
  %cmp2 = icmp eq %struct.cpp_buffer* %1, null, !dbg !1578
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !1579

cond.true:                                        ; preds = %if.end
  %main_file = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 18, !dbg !1580
  br label %cond.end, !dbg !1579

cond.false:                                       ; preds = %if.end
  %file5 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %1, i64 0, i32 10, !dbg !1581
  br label %cond.end, !dbg !1579

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct._cpp_file** [ %main_file, %cond.true ], [ %file5, %cond.false ]
  %cond = load %struct._cpp_file*, %struct._cpp_file** %cond.in, align 8, !dbg !1579
  call void @llvm.dbg.value(metadata %struct._cpp_file* %cond, metadata !1570, metadata !DIExpression()), !dbg !1571
  %cmp6 = icmp eq i32 %type, 1, !dbg !1582
  br i1 %cmp6, label %land.lhs.true, label %if.else, !dbg !1584

land.lhs.true:                                    ; preds = %cond.end
  %dir8 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %cond, i64 0, i32 8, !dbg !1585
  %2 = load %struct.cpp_dir*, %struct.cpp_dir** %dir8, align 8, !dbg !1585
  %tobool = icmp eq %struct.cpp_dir* %2, null, !dbg !1586
  br i1 %tobool, label %if.else, label %land.lhs.true9, !dbg !1587

land.lhs.true9:                                   ; preds = %land.lhs.true
  %no_search_path11 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 16, !dbg !1588
  %cmp12 = icmp eq %struct.cpp_dir* %2, %no_search_path11, !dbg !1589
  br i1 %cmp12, label %if.else, label %if.then14, !dbg !1590

if.then14:                                        ; preds = %land.lhs.true9
  %next = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %2, i64 0, i32 0, !dbg !1591
  br label %if.end39, !dbg !1592

if.else:                                          ; preds = %land.lhs.true9, %land.lhs.true, %cond.end
  %tobool16 = icmp eq i32 %angle_brackets, 0, !dbg !1593
  br i1 %tobool16, label %if.else18, label %if.then17, !dbg !1595

if.then17:                                        ; preds = %if.else
  %bracket_include = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 15, !dbg !1596
  br label %if.end39, !dbg !1597

if.else18:                                        ; preds = %if.else
  %cmp19 = icmp eq i32 %type, 3, !dbg !1598
  br i1 %cmp19, label %if.then21, label %if.else22, !dbg !1600

if.then21:                                        ; preds = %if.else18
  %call = tail call fastcc %struct.cpp_dir* @make_cpp_dir(%struct.cpp_reader* %pfile, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 0) #10, !dbg !1601
  br label %cleanup, !dbg !1602

if.else22:                                        ; preds = %if.else18
  %quote_ignores_source_dir = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 24, !dbg !1603
  %3 = load i8, i8* %quote_ignores_source_dir, align 8, !dbg !1603
  %tobool23 = icmp eq i8 %3, 0, !dbg !1605
  br i1 %tobool23, label %if.else25, label %if.then24, !dbg !1606

if.then24:                                        ; preds = %if.else22
  %quote_include = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 14, !dbg !1607
  br label %if.end39

if.else25:                                        ; preds = %if.else22
  %call26 = tail call fastcc i8* @dir_name_of_file(%struct._cpp_file* %cond) #10, !dbg !1608
  %4 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !1609
  %tobool28 = icmp eq %struct.cpp_buffer* %4, null, !dbg !1610
  br i1 %tobool28, label %cond.end33, label %cond.true29, !dbg !1610

cond.true29:                                      ; preds = %if.else25
  %sysp = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %4, i64 0, i32 15, !dbg !1611
  %5 = load i8, i8* %sysp, align 2, !dbg !1611
  %conv31 = zext i8 %5 to i32, !dbg !1612
  br label %cond.end33, !dbg !1610

cond.end33:                                       ; preds = %if.else25, %cond.true29
  %cond34 = phi i32 [ %conv31, %cond.true29 ], [ 0, %if.else25 ], !dbg !1610
  %call35 = tail call fastcc %struct.cpp_dir* @make_cpp_dir(%struct.cpp_reader* %pfile, i8* %call26, i32 %cond34) #10, !dbg !1613
  br label %cleanup, !dbg !1614

if.end39:                                         ; preds = %if.then17, %if.then24, %if.then14
  %dir.1.in = phi %struct.cpp_dir** [ %next, %if.then14 ], [ %bracket_include, %if.then17 ], [ %quote_include, %if.then24 ]
  %dir.1 = load %struct.cpp_dir*, %struct.cpp_dir** %dir.1.in, align 8, !dbg !1615
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %dir.1, metadata !1569, metadata !DIExpression()), !dbg !1571
  %cmp40 = icmp eq %struct.cpp_dir* %dir.1, null, !dbg !1616
  br i1 %cmp40, label %if.then42, label %cleanup, !dbg !1618

if.then42:                                        ; preds = %if.end39
  %call43 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i8* %fname) #8, !dbg !1619
  br label %cleanup, !dbg !1619

cleanup:                                          ; preds = %if.end39, %if.then42, %cond.end33, %if.then21, %if.then
  %retval.0 = phi %struct.cpp_dir* [ %no_search_path, %if.then ], [ %call, %if.then21 ], [ %call35, %cond.end33 ], [ null, %if.then42 ], [ %dir.1, %if.end39 ], !dbg !1571
  ret %struct.cpp_dir* %retval.0, !dbg !1620
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cpp_included(%struct.cpp_reader* %pfile, i8* %fname) local_unnamed_addr #2 !dbg !1621 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1625, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1626, metadata !DIExpression()), !dbg !1628
  %file_hash = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 19, !dbg !1629
  %0 = load %struct.htab*, %struct.htab** %file_hash, align 8, !dbg !1629
  %call = tail call i32 @htab_hash_string(i8* %fname) #8, !dbg !1630
  %call2 = tail call i8* @htab_find_with_hash(%struct.htab* %0, i8* %fname, i32 %call) #8, !dbg !1631
  %1 = bitcast i8* %call2 to %struct.file_hash_entry*, !dbg !1632
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %1, metadata !1627, metadata !DIExpression()), !dbg !1628
  br label %while.cond, !dbg !1633

while.cond:                                       ; preds = %while.body, %entry
  %entry1.0 = phi %struct.file_hash_entry* [ %1, %entry ], [ %5, %while.body ], !dbg !1628
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0, metadata !1627, metadata !DIExpression()), !dbg !1628
  %tobool = icmp eq %struct.file_hash_entry* %entry1.0, null, !dbg !1634
  br i1 %tobool, label %while.end, label %land.rhs, !dbg !1635

land.rhs:                                         ; preds = %while.cond
  %start_dir = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %entry1.0, i64 0, i32 1, !dbg !1636
  %2 = load %struct.cpp_dir*, %struct.cpp_dir** %start_dir, align 8, !dbg !1636
  %cmp = icmp eq %struct.cpp_dir* %2, null, !dbg !1637
  br i1 %cmp, label %while.body, label %lor.rhs, !dbg !1638

lor.rhs:                                          ; preds = %land.rhs
  %file = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %entry1.0, i64 0, i32 3, i32 0, !dbg !1639
  %3 = load %struct._cpp_file*, %struct._cpp_file** %file, align 8, !dbg !1639
  %err_no = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %3, i64 0, i32 11, !dbg !1640
  %4 = load i32, i32* %err_no, align 4, !dbg !1640
  %tobool3 = icmp eq i32 %4, 0, !dbg !1638
  br i1 %tobool3, label %while.end, label %while.body, !dbg !1633

while.body:                                       ; preds = %lor.rhs, %land.rhs
  %next = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %entry1.0, i64 0, i32 0, !dbg !1641
  %5 = load %struct.file_hash_entry*, %struct.file_hash_entry** %next, align 8, !dbg !1641
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %5, metadata !1627, metadata !DIExpression()), !dbg !1628
  br label %while.cond, !dbg !1633, !llvm.loop !1642

while.end:                                        ; preds = %lor.rhs, %while.cond
  %entry1.0.lcssa = phi %struct.file_hash_entry* [ %entry1.0, %lor.rhs ], [ %entry1.0, %while.cond ], !dbg !1628
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0.lcssa, metadata !1627, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0.lcssa, metadata !1627, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0.lcssa, metadata !1627, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0.lcssa, metadata !1627, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0.lcssa, metadata !1627, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0.lcssa, metadata !1627, metadata !DIExpression()), !dbg !1628
  %cmp4 = icmp ne %struct.file_hash_entry* %entry1.0.lcssa, null, !dbg !1643
  %conv5 = zext i1 %cmp4 to i8, !dbg !1644
  ret i8 %conv5, !dbg !1645
}

declare dso_local i8* @htab_find_with_hash(%struct.htab*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cpp_included_before(%struct.cpp_reader* %pfile, i8* %fname, i32 %location) local_unnamed_addr #2 !dbg !1646 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1650, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1651, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %location, metadata !1652, metadata !DIExpression()), !dbg !1654
  %file_hash = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 19, !dbg !1655
  %0 = load %struct.htab*, %struct.htab** %file_hash, align 8, !dbg !1655
  %call = tail call i32 @htab_hash_string(i8* %fname) #8, !dbg !1656
  %call2 = tail call i8* @htab_find_with_hash(%struct.htab* %0, i8* %fname, i32 %call) #8, !dbg !1657
  %1 = bitcast i8* %call2 to %struct.file_hash_entry*, !dbg !1658
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %1, metadata !1653, metadata !DIExpression()), !dbg !1654
  br label %while.cond, !dbg !1659

while.cond:                                       ; preds = %while.body, %entry
  %entry1.0 = phi %struct.file_hash_entry* [ %1, %entry ], [ %6, %while.body ], !dbg !1654
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0, metadata !1653, metadata !DIExpression()), !dbg !1654
  %tobool = icmp eq %struct.file_hash_entry* %entry1.0, null, !dbg !1660
  br i1 %tobool, label %while.end, label %land.rhs, !dbg !1661

land.rhs:                                         ; preds = %while.cond
  %start_dir = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %entry1.0, i64 0, i32 1, !dbg !1662
  %2 = load %struct.cpp_dir*, %struct.cpp_dir** %start_dir, align 8, !dbg !1662
  %cmp = icmp eq %struct.cpp_dir* %2, null, !dbg !1663
  br i1 %cmp, label %while.body, label %lor.lhs.false, !dbg !1664

lor.lhs.false:                                    ; preds = %land.rhs
  %file = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %entry1.0, i64 0, i32 3, i32 0, !dbg !1665
  %3 = load %struct._cpp_file*, %struct._cpp_file** %file, align 8, !dbg !1665
  %err_no = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %3, i64 0, i32 11, !dbg !1666
  %4 = load i32, i32* %err_no, align 4, !dbg !1666
  %tobool3 = icmp eq i32 %4, 0, !dbg !1667
  br i1 %tobool3, label %lor.rhs, label %while.body, !dbg !1668

lor.rhs:                                          ; preds = %lor.lhs.false
  %location4 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %entry1.0, i64 0, i32 2, !dbg !1669
  %5 = load i32, i32* %location4, align 8, !dbg !1669
  %cmp5 = icmp ugt i32 %5, %location, !dbg !1670
  br i1 %cmp5, label %while.body, label %while.end, !dbg !1659

while.body:                                       ; preds = %lor.lhs.false, %land.rhs, %lor.rhs
  %next = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %entry1.0, i64 0, i32 0, !dbg !1671
  %6 = load %struct.file_hash_entry*, %struct.file_hash_entry** %next, align 8, !dbg !1671
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %6, metadata !1653, metadata !DIExpression()), !dbg !1654
  br label %while.cond, !dbg !1659, !llvm.loop !1672

while.end:                                        ; preds = %while.cond, %lor.rhs
  %entry1.0.lcssa = phi %struct.file_hash_entry* [ %entry1.0, %while.cond ], [ %entry1.0, %lor.rhs ], !dbg !1654
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0.lcssa, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0.lcssa, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0.lcssa, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0.lcssa, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0.lcssa, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0.lcssa, metadata !1653, metadata !DIExpression()), !dbg !1654
  %cmp6 = icmp ne %struct.file_hash_entry* %entry1.0.lcssa, null, !dbg !1673
  %conv7 = zext i1 %cmp6 to i8, !dbg !1674
  ret i8 %conv7, !dbg !1675
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_init_files(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !1676 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1678, metadata !DIExpression()), !dbg !1679
  %call = tail call %struct.htab* @htab_create_alloc(i64 127, i32 (i8*)* nonnull @file_hash_hash, i32 (i8*, i8*)* nonnull @file_hash_eq, void (i8*)* null, i8* (i64, i64)* nonnull @xcalloc, void (i8*)* nonnull @free) #8, !dbg !1680
  %file_hash = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 19, !dbg !1681
  store %struct.htab* %call, %struct.htab** %file_hash, align 8, !dbg !1682
  %call1 = tail call %struct.htab* @htab_create_alloc(i64 127, i32 (i8*)* nonnull @file_hash_hash, i32 (i8*, i8*)* nonnull @file_hash_eq, void (i8*)* null, i8* (i64, i64)* nonnull @xcalloc, void (i8*)* nonnull @free) #8, !dbg !1683
  %dir_hash = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 20, !dbg !1684
  store %struct.htab* %call1, %struct.htab** %dir_hash, align 8, !dbg !1685
  tail call fastcc void @allocate_file_hash_entries(%struct.cpp_reader* %pfile) #10, !dbg !1686
  %call2 = tail call %struct.htab* @htab_create_alloc(i64 127, i32 (i8*)* nonnull @htab_hash_string, i32 (i8*, i8*)* nonnull @nonexistent_file_hash_eq, void (i8*)* null, i8* (i64, i64)* nonnull @xcalloc, void (i8*)* nonnull @free) #8, !dbg !1687
  %nonexistent_file_hash = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 22, !dbg !1688
  store %struct.htab* %call2, %struct.htab** %nonexistent_file_hash, align 8, !dbg !1689
  %nonexistent_file_ob = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, !dbg !1690
  %call3 = tail call i32 @_obstack_begin(%struct.obstack* nonnull %nonexistent_file_ob, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #8, !dbg !1691
  ret void, !dbg !1692
}

declare dso_local %struct.htab* @htab_create_alloc(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8* (i64, i64)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @file_hash_hash(i8* %p) #2 !dbg !1693 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !1695, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %p, metadata !1696, metadata !DIExpression()), !dbg !1698
  %start_dir = getelementptr inbounds i8, i8* %p, i64 8, !dbg !1699
  %0 = bitcast i8* %start_dir to %struct.cpp_dir**, !dbg !1699
  %1 = load %struct.cpp_dir*, %struct.cpp_dir** %0, align 8, !dbg !1699
  %tobool = icmp eq %struct.cpp_dir* %1, null, !dbg !1701
  %u = getelementptr inbounds i8, i8* %p, i64 24, !dbg !1702
  br i1 %tobool, label %if.else, label %if.then, !dbg !1703

if.then:                                          ; preds = %entry
  %file = bitcast i8* %u to %struct._cpp_file**, !dbg !1704
  %2 = load %struct._cpp_file*, %struct._cpp_file** %file, align 8, !dbg !1704
  %name = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %2, i64 0, i32 0, !dbg !1705
  br label %if.end, !dbg !1706

if.else:                                          ; preds = %entry
  %dir = bitcast i8* %u to %struct.cpp_dir**, !dbg !1707
  %3 = load %struct.cpp_dir*, %struct.cpp_dir** %dir, align 8, !dbg !1707
  %name3 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %3, i64 0, i32 1, !dbg !1708
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %hname.0.in = phi i8** [ %name, %if.then ], [ %name3, %if.else ]
  %hname.0 = load i8*, i8** %hname.0.in, align 8, !dbg !1702
  call void @llvm.dbg.value(metadata i8* %hname.0, metadata !1697, metadata !DIExpression()), !dbg !1698
  %call = tail call i32 @htab_hash_string(i8* %hname.0) #8, !dbg !1709
  ret i32 %call, !dbg !1710
}

; Function Attrs: nounwind uwtable
define internal i32 @file_hash_eq(i8* %p, i8* %q) #2 !dbg !1711 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !1713, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i8* %q, metadata !1714, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i8* %p, metadata !1715, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i8* %q, metadata !1716, metadata !DIExpression()), !dbg !1718
  %start_dir = getelementptr inbounds i8, i8* %p, i64 8, !dbg !1719
  %0 = bitcast i8* %start_dir to %struct.cpp_dir**, !dbg !1719
  %1 = load %struct.cpp_dir*, %struct.cpp_dir** %0, align 8, !dbg !1719
  %tobool = icmp eq %struct.cpp_dir* %1, null, !dbg !1721
  %u = getelementptr inbounds i8, i8* %p, i64 24, !dbg !1722
  br i1 %tobool, label %if.else, label %if.then, !dbg !1723

if.then:                                          ; preds = %entry
  %file = bitcast i8* %u to %struct._cpp_file**, !dbg !1724
  %2 = load %struct._cpp_file*, %struct._cpp_file** %file, align 8, !dbg !1724
  %name = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %2, i64 0, i32 0, !dbg !1725
  br label %if.end, !dbg !1726

if.else:                                          ; preds = %entry
  %dir = bitcast i8* %u to %struct.cpp_dir**, !dbg !1727
  %3 = load %struct.cpp_dir*, %struct.cpp_dir** %dir, align 8, !dbg !1727
  %name3 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %3, i64 0, i32 1, !dbg !1728
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %hname.0.in = phi i8** [ %name, %if.then ], [ %name3, %if.else ]
  %hname.0 = load i8*, i8** %hname.0.in, align 8, !dbg !1722
  call void @llvm.dbg.value(metadata i8* %hname.0, metadata !1717, metadata !DIExpression()), !dbg !1718
  %call = tail call i32 @strcmp(i8* %hname.0, i8* %q) #11, !dbg !1729
  %cmp = icmp eq i32 %call, 0, !dbg !1730
  %conv = zext i1 %cmp to i32, !dbg !1730
  ret i32 %conv, !dbg !1731
}

declare dso_local i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @allocate_file_hash_entries(%struct.cpp_reader* %pfile) unnamed_addr #2 !dbg !1732 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1734, metadata !DIExpression()), !dbg !1736
  %call = tail call i8* @xmalloc(i64 4080) #8, !dbg !1737
  call void @llvm.dbg.value(metadata i8* %call, metadata !1735, metadata !DIExpression()), !dbg !1736
  %file_hash_entries_used = bitcast i8* %call to i32*, !dbg !1738
  store i32 0, i32* %file_hash_entries_used, align 8, !dbg !1739
  %file_hash_entries = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 21, !dbg !1740
  %0 = bitcast %struct.file_hash_entry_pool** %file_hash_entries to i64*, !dbg !1740
  %1 = load i64, i64* %0, align 8, !dbg !1740
  %next = getelementptr inbounds i8, i8* %call, i64 8, !dbg !1741
  %2 = bitcast i8* %next to i64*, !dbg !1742
  store i64 %1, i64* %2, align 8, !dbg !1742
  %3 = bitcast %struct.file_hash_entry_pool** %file_hash_entries to i8**, !dbg !1743
  store i8* %call, i8** %3, align 8, !dbg !1743
  ret void, !dbg !1744
}

; Function Attrs: nounwind uwtable
define internal i32 @nonexistent_file_hash_eq(i8* %p, i8* %q) #2 !dbg !1745 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !1747, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8* %q, metadata !1748, metadata !DIExpression()), !dbg !1749
  %call = tail call i32 @strcmp(i8* %p, i8* %q) #11, !dbg !1750
  %cmp = icmp eq i32 %call, 0, !dbg !1751
  %conv = zext i1 %cmp to i32, !dbg !1751
  ret i32 %conv, !dbg !1752
}

declare dso_local i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_cleanup_files(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !1753 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1755, metadata !DIExpression()), !dbg !1756
  %file_hash = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 19, !dbg !1757
  %0 = load %struct.htab*, %struct.htab** %file_hash, align 8, !dbg !1757
  tail call void @htab_delete(%struct.htab* %0) #8, !dbg !1758
  %dir_hash = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 20, !dbg !1759
  %1 = load %struct.htab*, %struct.htab** %dir_hash, align 8, !dbg !1759
  tail call void @htab_delete(%struct.htab* %1) #8, !dbg !1760
  %nonexistent_file_hash = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 22, !dbg !1761
  %2 = load %struct.htab*, %struct.htab** %nonexistent_file_hash, align 8, !dbg !1761
  tail call void @htab_delete(%struct.htab* %2) #8, !dbg !1762
  %chunk = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, i32 1, !dbg !1763
  %3 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !1763
  %4 = load i64, i64* %3, align 8, !dbg !1763
  %sub.ptr.sub = sub i64 0, %4, !dbg !1763
  %temp = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, i32 5, !dbg !1763
  store i64 %sub.ptr.sub, i64* %temp, align 8, !dbg !1763
  %cmp = icmp sgt i64 %sub.ptr.sub, 0, !dbg !1763
  %5 = inttoptr i64 %4 to i8*, !dbg !1763
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !1763

land.lhs.true:                                    ; preds = %entry
  %chunk_limit = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, i32 4, !dbg !1763
  %6 = bitcast i8** %chunk_limit to i64*, !dbg !1763
  %7 = load i64, i64* %6, align 8, !dbg !1763
  %sub.ptr.sub10 = sub i64 %7, %4, !dbg !1763
  %cmp11 = icmp sgt i64 %sub.ptr.sub10, %sub.ptr.sub, !dbg !1763
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !1763

cond.true:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %sub.ptr.sub, !dbg !1763
  %object_base = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, i32 2, !dbg !1763
  store i8* %add.ptr, i8** %object_base, align 8, !dbg !1763
  %next_free = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, i32 3, !dbg !1763
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !1763
  br label %cond.end, !dbg !1763

cond.false:                                       ; preds = %land.lhs.true, %entry
  %nonexistent_file_ob18 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 23, !dbg !1763
  %add.ptr23 = getelementptr inbounds i8, i8* %5, i64 %sub.ptr.sub, !dbg !1763
  tail call void @obstack_free(%struct.obstack* nonnull %nonexistent_file_ob18, i8* %add.ptr23) #8, !dbg !1763
  br label %cond.end, !dbg !1763

cond.end:                                         ; preds = %cond.false, %cond.true
  tail call fastcc void @free_file_hash_entries(%struct.cpp_reader* %pfile) #10, !dbg !1764
  tail call fastcc void @destroy_all_cpp_files(%struct.cpp_reader* %pfile) #10, !dbg !1765
  ret void, !dbg !1766
}

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #1

declare dso_local void @obstack_free(%struct.obstack*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @free_file_hash_entries(%struct.cpp_reader* %pfile) unnamed_addr #2 !dbg !1767 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1769, metadata !DIExpression()), !dbg !1773
  %file_hash_entries = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 21, !dbg !1774
  %0 = load %struct.file_hash_entry_pool*, %struct.file_hash_entry_pool** %file_hash_entries, align 8, !dbg !1774
  call void @llvm.dbg.value(metadata %struct.file_hash_entry_pool* %0, metadata !1770, metadata !DIExpression()), !dbg !1773
  br label %while.cond, !dbg !1775

while.cond:                                       ; preds = %while.body, %entry
  %.in = phi %struct.file_hash_entry_pool* [ %0, %entry ], [ %2, %while.body ]
  %iter.0 = phi %struct.file_hash_entry_pool* [ %0, %entry ], [ %2, %while.body ], !dbg !1773
  call void @llvm.dbg.value(metadata %struct.file_hash_entry_pool* %iter.0, metadata !1770, metadata !DIExpression()), !dbg !1773
  %tobool = icmp eq %struct.file_hash_entry_pool* %iter.0, null, !dbg !1775
  br i1 %tobool, label %while.end, label %while.body, !dbg !1775

while.body:                                       ; preds = %while.cond
  %1 = bitcast %struct.file_hash_entry_pool* %.in to i8*, !dbg !1773
  %next1 = getelementptr inbounds %struct.file_hash_entry_pool, %struct.file_hash_entry_pool* %iter.0, i64 0, i32 1, !dbg !1776
  %2 = load %struct.file_hash_entry_pool*, %struct.file_hash_entry_pool** %next1, align 8, !dbg !1776
  call void @llvm.dbg.value(metadata %struct.file_hash_entry_pool* %2, metadata !1771, metadata !DIExpression()), !dbg !1777
  tail call void @free(i8* %1) #8, !dbg !1778
  call void @llvm.dbg.value(metadata %struct.file_hash_entry_pool* %2, metadata !1770, metadata !DIExpression()), !dbg !1773
  br label %while.cond, !dbg !1775, !llvm.loop !1779

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1781
}

; Function Attrs: nounwind uwtable
define internal fastcc void @destroy_all_cpp_files(%struct.cpp_reader* %pfile) unnamed_addr #2 !dbg !1782 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1784, metadata !DIExpression()), !dbg !1788
  %all_files = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 17, !dbg !1789
  %0 = load %struct._cpp_file*, %struct._cpp_file** %all_files, align 8, !dbg !1789
  call void @llvm.dbg.value(metadata %struct._cpp_file* %0, metadata !1785, metadata !DIExpression()), !dbg !1788
  br label %while.cond, !dbg !1790

while.cond:                                       ; preds = %while.body, %entry
  %iter.0 = phi %struct._cpp_file* [ %0, %entry ], [ %1, %while.body ], !dbg !1788
  call void @llvm.dbg.value(metadata %struct._cpp_file* %iter.0, metadata !1785, metadata !DIExpression()), !dbg !1788
  %tobool = icmp eq %struct._cpp_file* %iter.0, null, !dbg !1790
  br i1 %tobool, label %while.end, label %while.body, !dbg !1790

while.body:                                       ; preds = %while.cond
  %next_file = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %iter.0, i64 0, i32 4, !dbg !1791
  %1 = load %struct._cpp_file*, %struct._cpp_file** %next_file, align 8, !dbg !1791
  call void @llvm.dbg.value(metadata %struct._cpp_file* %1, metadata !1786, metadata !DIExpression()), !dbg !1792
  tail call fastcc void @destroy_cpp_file(%struct._cpp_file* nonnull %iter.0) #10, !dbg !1793
  call void @llvm.dbg.value(metadata %struct._cpp_file* %1, metadata !1785, metadata !DIExpression()), !dbg !1788
  br label %while.cond, !dbg !1790, !llvm.loop !1794

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1796
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_clear_file_cache(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !1797 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1799, metadata !DIExpression()), !dbg !1800
  tail call void @_cpp_cleanup_files(%struct.cpp_reader* %pfile) #10, !dbg !1801
  %file_hash_entries = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 21, !dbg !1802
  store %struct.file_hash_entry_pool* null, %struct.file_hash_entry_pool** %file_hash_entries, align 8, !dbg !1803
  %all_files = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 17, !dbg !1804
  store %struct._cpp_file* null, %struct._cpp_file** %all_files, align 8, !dbg !1805
  tail call void @_cpp_init_files(%struct.cpp_reader* %pfile) #10, !dbg !1806
  ret void, !dbg !1807
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_fake_include(%struct.cpp_reader* %pfile, i8* %fname) local_unnamed_addr #2 !dbg !1808 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1810, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1811, metadata !DIExpression()), !dbg !1812
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1813
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !1813
  %file = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 10, !dbg !1814
  %1 = load %struct._cpp_file*, %struct._cpp_file** %file, align 8, !dbg !1814
  %dir = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %1, i64 0, i32 8, !dbg !1815
  %2 = load %struct.cpp_dir*, %struct.cpp_dir** %dir, align 8, !dbg !1815
  %call = tail call %struct._cpp_file* @_cpp_find_file(%struct.cpp_reader* %pfile, i8* %fname, %struct.cpp_dir* %2, i8 zeroext 1, i32 0) #10, !dbg !1816
  ret void, !dbg !1817
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_make_system_header(%struct.cpp_reader* %pfile, i32 %syshdr, i32 %externc) local_unnamed_addr #2 !dbg !1818 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1822, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i32 %syshdr, metadata !1823, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i32 %externc, metadata !1824, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i32 0, metadata !1825, metadata !DIExpression()), !dbg !1830
  %line_table1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !1831
  %0 = load %struct.line_maps*, %struct.line_maps** %line_table1, align 8, !dbg !1831
  call void @llvm.dbg.value(metadata %struct.line_maps* %0, metadata !1826, metadata !DIExpression()), !dbg !1830
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i64 0, i32 0, !dbg !1832
  %1 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !1832
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %0, i64 0, i32 2, !dbg !1833
  %2 = load i32, i32* %used, align 4, !dbg !1833
  %sub = add i32 %2, -1, !dbg !1834
  %idxprom = zext i32 %sub to i64, !dbg !1835
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !1829, metadata !DIExpression()), !dbg !1830
  %tobool = icmp eq i32 %syshdr, 0, !dbg !1836
  br i1 %tobool, label %if.end, label %if.then, !dbg !1838

if.then:                                          ; preds = %entry
  %cmp = icmp eq i32 %externc, 0, !dbg !1839
  %add = select i1 %cmp, i32 1, i32 2, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %add, metadata !1825, metadata !DIExpression()), !dbg !1830
  br label %if.end, !dbg !1841

if.end:                                           ; preds = %entry, %if.then
  %flags.0 = phi i32 [ %add, %if.then ], [ 0, %entry ], !dbg !1830
  call void @llvm.dbg.value(metadata i32 %flags.0, metadata !1825, metadata !DIExpression()), !dbg !1830
  %conv2 = trunc i32 %flags.0 to i8, !dbg !1842
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1843
  %3 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !1843
  %sysp = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %3, i64 0, i32 15, !dbg !1844
  store i8 %conv2, i8* %sysp, align 2, !dbg !1845
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %1, i64 %idxprom, i32 0, !dbg !1846
  %4 = load i8*, i8** %to_file, align 8, !dbg !1846
  %5 = load %struct.line_maps*, %struct.line_maps** %line_table1, align 8, !dbg !1847
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %5, i64 0, i32 8, !dbg !1847
  %6 = load i32, i32* %highest_line, align 4, !dbg !1847
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %1, i64 %idxprom, i32 2, !dbg !1847
  %7 = load i32, i32* %start_location, align 4, !dbg !1847
  %sub4 = sub i32 %6, %7, !dbg !1847
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %1, i64 %idxprom, i32 6, !dbg !1847
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !1847
  %bf.cast = zext i8 %bf.load to i32, !dbg !1847
  %shr = lshr i32 %sub4, %bf.cast, !dbg !1847
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %1, i64 %idxprom, i32 1, !dbg !1847
  %8 = load i32, i32* %to_line, align 8, !dbg !1847
  %add5 = add i32 %shr, %8, !dbg !1847
  tail call void @_cpp_do_file_change(%struct.cpp_reader* %pfile, i32 2, i8* %4, i32 %add5, i32 %flags.0) #8, !dbg !1848
  ret void, !dbg !1849
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_change_file(%struct.cpp_reader* %pfile, i32 %reason, i8* %new_name) local_unnamed_addr #2 !dbg !1850 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1854, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i32 %reason, metadata !1855, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8* %new_name, metadata !1856, metadata !DIExpression()), !dbg !1857
  tail call void @_cpp_do_file_change(%struct.cpp_reader* %pfile, i32 %reason, i8* %new_name, i32 1, i32 0) #8, !dbg !1858
  ret void, !dbg !1859
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_report_missing_guards(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !1860 {
entry:
  %data = alloca %struct.report_missing_guard_data, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1862, metadata !DIExpression()), !dbg !1867
  %0 = bitcast %struct.report_missing_guard_data* %data to i8*, !dbg !1868
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9, !dbg !1868
  %paths = getelementptr inbounds %struct.report_missing_guard_data, %struct.report_missing_guard_data* %data, i64 0, i32 0, !dbg !1869
  store i8** null, i8*** %paths, align 8, !dbg !1870
  %file_hash = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 19, !dbg !1871
  %1 = load %struct.htab*, %struct.htab** %file_hash, align 8, !dbg !1871
  %call = tail call i64 @htab_elements(%struct.htab* %1) #8, !dbg !1872
  %count = getelementptr inbounds %struct.report_missing_guard_data, %struct.report_missing_guard_data* %data, i64 0, i32 1, !dbg !1873
  store i64 %call, i64* %count, align 8, !dbg !1874
  %2 = load %struct.htab*, %struct.htab** %file_hash, align 8, !dbg !1875
  call void @htab_traverse(%struct.htab* %2, i32 (i8**, i8*)* nonnull @report_missing_guard, i8* nonnull %0) #8, !dbg !1876
  %3 = load i8**, i8*** %paths, align 8, !dbg !1877
  %cmp = icmp eq i8** %3, null, !dbg !1878
  br i1 %cmp, label %if.end, label %if.then, !dbg !1879

if.then:                                          ; preds = %entry
  %4 = bitcast i8** %3 to i8*, !dbg !1879
  %5 = load i64, i64* %count, align 8, !dbg !1880
  call void @spec_qsort(i8* nonnull %4, i64 %5, i64 8, i32 (i8*, i8*)* nonnull @report_missing_guard_cmp) #8, !dbg !1881
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1882
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %6) #8, !dbg !1883
  call void @llvm.dbg.value(metadata i64 0, metadata !1864, metadata !DIExpression()), !dbg !1884
  br label %for.cond, !dbg !1885

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i64 [ 0, %if.then ], [ %inc, %for.body ], !dbg !1887
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1864, metadata !DIExpression()), !dbg !1884
  %7 = load i64, i64* %count, align 8, !dbg !1888
  %cmp7 = icmp ult i64 %i.0, %7, !dbg !1890
  %8 = load i8**, i8*** %paths, align 8, !dbg !1884
  br i1 %cmp7, label %for.body, label %for.end, !dbg !1891

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %i.0, !dbg !1892
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !1892
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1894
  %call9 = call i32 @fputs(i8* %9, %struct._IO_FILE* %10) #8, !dbg !1895
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1896
  %call10 = call i32 @putc(i32 10, %struct._IO_FILE* %11) #8, !dbg !1897
  %inc = add i64 %i.0, 1, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1864, metadata !DIExpression()), !dbg !1884
  br label %for.cond, !dbg !1899, !llvm.loop !1900

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i8** [ %8, %for.cond ], !dbg !1884
  %12 = bitcast i8** %.lcssa to i8*, !dbg !1902
  call void @free(i8* %12) #8, !dbg !1903
  br label %if.end, !dbg !1904

if.end:                                           ; preds = %entry, %for.end
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9, !dbg !1905
  ret void, !dbg !1905
}

declare dso_local i64 @htab_elements(%struct.htab*) local_unnamed_addr #1

declare dso_local void @htab_traverse(%struct.htab*, i32 (i8**, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @report_missing_guard(i8** %slot, i8* %d) #2 !dbg !1906 {
entry:
  call void @llvm.dbg.value(metadata i8** %slot, metadata !1910, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8* %d, metadata !1911, metadata !DIExpression()), !dbg !1917
  %0 = bitcast i8** %slot to %struct.file_hash_entry**, !dbg !1918
  %1 = load %struct.file_hash_entry*, %struct.file_hash_entry** %0, align 8, !dbg !1918
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %1, metadata !1912, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8* %d, metadata !1913, metadata !DIExpression()), !dbg !1917
  %start_dir = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %1, i64 0, i32 1, !dbg !1919
  %2 = load %struct.cpp_dir*, %struct.cpp_dir** %start_dir, align 8, !dbg !1919
  %cmp = icmp eq %struct.cpp_dir* %2, null, !dbg !1920
  br i1 %cmp, label %if.end16, label %if.then, !dbg !1921

if.then:                                          ; preds = %entry
  %file2 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %1, i64 0, i32 3, i32 0, !dbg !1922
  %3 = load %struct._cpp_file*, %struct._cpp_file** %file2, align 8, !dbg !1922
  call void @llvm.dbg.value(metadata %struct._cpp_file* %3, metadata !1914, metadata !DIExpression()), !dbg !1923
  %cmacro = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %3, i64 0, i32 7, !dbg !1924
  %4 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro, align 8, !dbg !1924
  %cmp3 = icmp eq %struct.cpp_hashnode* %4, null, !dbg !1926
  br i1 %cmp3, label %land.lhs.true, label %if.end16, !dbg !1927

land.lhs.true:                                    ; preds = %if.then
  %stack_count = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %3, i64 0, i32 12, !dbg !1928
  %5 = load i16, i16* %stack_count, align 8, !dbg !1928
  %cmp4 = icmp eq i16 %5, 1, !dbg !1929
  br i1 %cmp4, label %land.lhs.true6, label %if.end16, !dbg !1930

land.lhs.true6:                                   ; preds = %land.lhs.true
  %main_file = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %3, i64 0, i32 15, !dbg !1931
  %6 = load i8, i8* %main_file, align 4, !dbg !1931
  %tobool = icmp eq i8 %6, 0, !dbg !1932
  br i1 %tobool, label %if.then7, label %if.end16, !dbg !1933

if.then7:                                         ; preds = %land.lhs.true6
  %paths = bitcast i8* %d to i8***, !dbg !1934
  %7 = load i8**, i8*** %paths, align 8, !dbg !1934
  %cmp8 = icmp eq i8** %7, null, !dbg !1937
  br i1 %cmp8, label %if.then10, label %if.then7.if.end_crit_edge, !dbg !1938

if.then7.if.end_crit_edge:                        ; preds = %if.then7
  %count14.phi.trans.insert = getelementptr inbounds i8, i8* %d, i64 8, !dbg !1939
  %.phi.trans.insert = bitcast i8* %count14.phi.trans.insert to i64*, !dbg !1939
  %.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !1940
  br label %if.end, !dbg !1938

if.then10:                                        ; preds = %if.then7
  %count = getelementptr inbounds i8, i8* %d, i64 8, !dbg !1941
  %8 = bitcast i8* %count to i64*, !dbg !1941
  %9 = load i64, i64* %8, align 8, !dbg !1941
  %call = tail call i8* @xcalloc(i64 %9, i64 8) #8, !dbg !1941
  %10 = bitcast i8* %d to i8**, !dbg !1943
  store i8* %call, i8** %10, align 8, !dbg !1943
  store i64 0, i64* %8, align 8, !dbg !1944
  %11 = bitcast i8* %call to i8**, !dbg !1945
  br label %if.end, !dbg !1945

if.end:                                           ; preds = %if.then7.if.end_crit_edge, %if.then10
  %.pre-phi = phi i64* [ %.phi.trans.insert, %if.then7.if.end_crit_edge ], [ %8, %if.then10 ], !dbg !1946
  %12 = phi i64 [ %.pre, %if.then7.if.end_crit_edge ], [ 0, %if.then10 ], !dbg !1940
  %13 = phi i8** [ %7, %if.then7.if.end_crit_edge ], [ %11, %if.then10 ], !dbg !1947
  %path = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %3, i64 0, i32 1, !dbg !1948
  %14 = bitcast i8** %path to i64*, !dbg !1948
  %15 = load i64, i64* %14, align 8, !dbg !1948
  %inc = add i64 %12, 1, !dbg !1940
  store i64 %inc, i64* %.pre-phi, align 8, !dbg !1940
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 %12, !dbg !1949
  %16 = bitcast i8** %arrayidx to i64*, !dbg !1950
  store i64 %15, i64* %16, align 8, !dbg !1950
  br label %if.end16, !dbg !1951

if.end16:                                         ; preds = %land.lhs.true6, %entry, %if.then, %land.lhs.true, %if.end
  ret i32 1, !dbg !1952
}

declare dso_local void @spec_qsort(i8*, i64, i64, i32 (i8*, i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @report_missing_guard_cmp(i8* %p1, i8* %p2) #2 !dbg !1953 {
entry:
  call void @llvm.dbg.value(metadata i8* %p1, metadata !1955, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata i8* %p2, metadata !1956, metadata !DIExpression()), !dbg !1957
  %0 = bitcast i8* %p1 to i8**, !dbg !1958
  %1 = load i8*, i8** %0, align 8, !dbg !1959
  %2 = bitcast i8* %p2 to i8**, !dbg !1960
  %3 = load i8*, i8** %2, align 8, !dbg !1961
  %call = tail call i32 @strcmp(i8* %1, i8* %3) #11, !dbg !1962
  ret i32 %call, !dbg !1963
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @_cpp_compare_file_date(%struct.cpp_reader* %pfile, i8* %fname, i32 %angle_brackets) local_unnamed_addr #2 !dbg !1964 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1966, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1967, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %angle_brackets, metadata !1968, metadata !DIExpression()), !dbg !1971
  %call = tail call fastcc %struct.cpp_dir* @search_path_head(%struct.cpp_reader* %pfile, i8* %fname, i32 %angle_brackets, i32 0) #10, !dbg !1972
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %call, metadata !1970, metadata !DIExpression()), !dbg !1971
  %tobool = icmp eq %struct.cpp_dir* %call, null, !dbg !1973
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1975

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._cpp_file* @_cpp_find_file(%struct.cpp_reader* %pfile, i8* %fname, %struct.cpp_dir* nonnull %call, i8 zeroext 0, i32 %angle_brackets) #10, !dbg !1976
  call void @llvm.dbg.value(metadata %struct._cpp_file* %call1, metadata !1969, metadata !DIExpression()), !dbg !1971
  %err_no = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %call1, i64 0, i32 11, !dbg !1977
  %0 = load i32, i32* %err_no, align 4, !dbg !1977
  %tobool2 = icmp eq i32 %0, 0, !dbg !1979
  br i1 %tobool2, label %if.end4, label %cleanup, !dbg !1980

if.end4:                                          ; preds = %if.end
  %fd = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %call1, i64 0, i32 10, !dbg !1981
  %1 = load i32, i32* %fd, align 8, !dbg !1981
  %cmp = icmp eq i32 %1, -1, !dbg !1983
  br i1 %cmp, label %if.end9, label %if.then5, !dbg !1984

if.then5:                                         ; preds = %if.end4
  %call7 = tail call i32 @close(i32 %1) #8, !dbg !1985
  store i32 -1, i32* %fd, align 8, !dbg !1987
  br label %if.end9, !dbg !1988

if.end9:                                          ; preds = %if.end4, %if.then5
  %st_mtime = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %call1, i64 0, i32 9, i32 13, !dbg !1989
  %2 = load i64, i64* %st_mtime, align 8, !dbg !1989
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !1990
  %3 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !1990
  %file10 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %3, i64 0, i32 10, !dbg !1991
  %4 = load %struct._cpp_file*, %struct._cpp_file** %file10, align 8, !dbg !1991
  %st_mtime12 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %4, i64 0, i32 9, i32 13, !dbg !1992
  %5 = load i64, i64* %st_mtime12, align 8, !dbg !1992
  %cmp13 = icmp sgt i64 %2, %5, !dbg !1993
  %conv = zext i1 %cmp13 to i32, !dbg !1993
  br label %cleanup, !dbg !1994

cleanup:                                          ; preds = %if.end, %entry, %if.end9
  %retval.0 = phi i32 [ %conv, %if.end9 ], [ -1, %entry ], [ -1, %if.end ], !dbg !1971
  ret i32 %retval.0, !dbg !1995
}

declare dso_local i32 @close(i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cpp_push_include(%struct.cpp_reader* %pfile, i8* %fname) local_unnamed_addr #2 !dbg !1996 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1998, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8* %fname, metadata !1999, metadata !DIExpression()), !dbg !2000
  %call = tail call zeroext i8 @_cpp_stack_include(%struct.cpp_reader* %pfile, i8* %fname, i32 0, i32 3) #10, !dbg !2001
  ret i8 %call, !dbg !2002
}

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_pop_file_buffer(%struct.cpp_reader* %pfile, %struct._cpp_file* %file) local_unnamed_addr #2 !dbg !2003 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2005, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !2006, metadata !DIExpression()), !dbg !2007
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 28, !dbg !2008
  %0 = load i8, i8* %mi_valid, align 8, !dbg !2008
  %tobool = icmp eq i8 %0, 0, !dbg !2010
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2011

land.lhs.true:                                    ; preds = %entry
  %cmacro = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 7, !dbg !2012
  %1 = load %struct.cpp_hashnode*, %struct.cpp_hashnode** %cmacro, align 8, !dbg !2012
  %cmp = icmp eq %struct.cpp_hashnode* %1, null, !dbg !2013
  br i1 %cmp, label %if.then, label %if.end, !dbg !2014

if.then:                                          ; preds = %land.lhs.true
  %mi_cmacro = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 26, !dbg !2015
  %2 = bitcast %struct.cpp_hashnode** %mi_cmacro to i64*, !dbg !2015
  %3 = load i64, i64* %2, align 8, !dbg !2015
  %4 = bitcast %struct.cpp_hashnode** %cmacro to i64*, !dbg !2016
  store i64 %3, i64* %4, align 8, !dbg !2016
  br label %if.end, !dbg !2017

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  store i8 0, i8* %mi_valid, align 8, !dbg !2018
  %buffer_start = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 6, !dbg !2019
  %5 = load i8*, i8** %buffer_start, align 8, !dbg !2019
  %tobool4 = icmp eq i8* %5, null, !dbg !2021
  br i1 %tobool4, label %if.end8, label %if.then5, !dbg !2022

if.then5:                                         ; preds = %if.end
  tail call void @free(i8* nonnull %5) #8, !dbg !2023
  store i8* null, i8** %buffer_start, align 8, !dbg !2025
  %buffer = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 5, !dbg !2026
  store i8* null, i8** %buffer, align 8, !dbg !2027
  %buffer_valid = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 16, !dbg !2028
  store i8 0, i8* %buffer_valid, align 1, !dbg !2029
  br label %if.end8, !dbg !2030

if.end8:                                          ; preds = %if.end, %if.then5
  ret void, !dbg !2031
}

; Function Attrs: nounwind uwtable
define dso_local %struct.stat* @_cpp_get_file_stat(%struct._cpp_file* %file) local_unnamed_addr #2 !dbg !2032 {
entry:
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !2037, metadata !DIExpression()), !dbg !2038
  %st = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 9, !dbg !2039
  ret %struct.stat* %st, !dbg !2040
}

; Function Attrs: nounwind uwtable
define dso_local void @cpp_set_include_chains(%struct.cpp_reader* %pfile, %struct.cpp_dir* %quote, %struct.cpp_dir* %bracket, i32 %quote_ignores_source_dir) local_unnamed_addr #2 !dbg !2041 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2045, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %quote, metadata !2046, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %bracket, metadata !2047, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i32 %quote_ignores_source_dir, metadata !2048, metadata !DIExpression()), !dbg !2049
  %quote_include = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 14, !dbg !2050
  store %struct.cpp_dir* %quote, %struct.cpp_dir** %quote_include, align 8, !dbg !2051
  %bracket_include = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 15, !dbg !2052
  store %struct.cpp_dir* %quote, %struct.cpp_dir** %bracket_include, align 8, !dbg !2053
  %conv = trunc i32 %quote_ignores_source_dir to i8, !dbg !2054
  %quote_ignores_source_dir1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 24, !dbg !2055
  store i8 %conv, i8* %quote_ignores_source_dir1, align 8, !dbg !2056
  br label %for.cond, !dbg !2057

for.cond:                                         ; preds = %for.inc, %entry
  %quote.addr.0 = phi %struct.cpp_dir* [ %quote, %entry ], [ %1, %for.inc ]
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %quote.addr.0, metadata !2046, metadata !DIExpression()), !dbg !2049
  %tobool = icmp eq %struct.cpp_dir* %quote.addr.0, null, !dbg !2058
  br i1 %tobool, label %for.end, label %for.body, !dbg !2058

for.body:                                         ; preds = %for.cond
  %name_map = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %quote.addr.0, i64 0, i32 6, !dbg !2060
  store i8** null, i8*** %name_map, align 8, !dbg !2063
  %name = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %quote.addr.0, i64 0, i32 1, !dbg !2064
  %0 = load i8*, i8** %name, align 8, !dbg !2064
  %call = tail call i64 @strlen(i8* %0) #11, !dbg !2065
  %conv2 = trunc i64 %call to i32, !dbg !2065
  %len = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %quote.addr.0, i64 0, i32 2, !dbg !2066
  store i32 %conv2, i32* %len, align 8, !dbg !2067
  %cmp = icmp eq %struct.cpp_dir* %quote.addr.0, %bracket, !dbg !2068
  br i1 %cmp, label %if.then, label %for.inc, !dbg !2070

if.then:                                          ; preds = %for.body
  store %struct.cpp_dir* %bracket, %struct.cpp_dir** %bracket_include, align 8, !dbg !2071
  br label %for.inc, !dbg !2072

for.inc:                                          ; preds = %for.body, %if.then
  %next = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %quote.addr.0, i64 0, i32 0, !dbg !2073
  %1 = load %struct.cpp_dir*, %struct.cpp_dir** %next, align 8, !dbg !2073
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %1, metadata !2046, metadata !DIExpression()), !dbg !2049
  br label %for.cond, !dbg !2074, !llvm.loop !2075

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2077
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i8* @cpp_get_path(%struct._cpp_file* %f) local_unnamed_addr #2 !dbg !2078 {
entry:
  call void @llvm.dbg.value(metadata %struct._cpp_file* %f, metadata !2082, metadata !DIExpression()), !dbg !2083
  %path = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f, i64 0, i32 1, !dbg !2084
  %0 = load i8*, i8** %path, align 8, !dbg !2084
  ret i8* %0, !dbg !2085
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_dir* @cpp_get_dir(%struct._cpp_file* %f) local_unnamed_addr #2 !dbg !2086 {
entry:
  call void @llvm.dbg.value(metadata %struct._cpp_file* %f, metadata !2090, metadata !DIExpression()), !dbg !2091
  %dir = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f, i64 0, i32 8, !dbg !2092
  %0 = load %struct.cpp_dir*, %struct.cpp_dir** %dir, align 8, !dbg !2092
  ret %struct.cpp_dir* %0, !dbg !2093
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_buffer* @cpp_get_buffer(%struct.cpp_reader* %pfile) local_unnamed_addr #2 !dbg !2094 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2098, metadata !DIExpression()), !dbg !2099
  %buffer = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !2100
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer, align 8, !dbg !2100
  ret %struct.cpp_buffer* %0, !dbg !2101
}

; Function Attrs: nounwind uwtable
define dso_local %struct._cpp_file* @cpp_get_file(%struct.cpp_buffer* %b) local_unnamed_addr #2 !dbg !2102 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %b, metadata !2106, metadata !DIExpression()), !dbg !2107
  %file = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %b, i64 0, i32 10, !dbg !2108
  %0 = load %struct._cpp_file*, %struct._cpp_file** %file, align 8, !dbg !2108
  ret %struct._cpp_file* %0, !dbg !2109
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_buffer* @cpp_get_prev(%struct.cpp_buffer* %b) local_unnamed_addr #2 !dbg !2110 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %b, metadata !2114, metadata !DIExpression()), !dbg !2115
  %prev = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %b, i64 0, i32 9, !dbg !2116
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %prev, align 8, !dbg !2116
  ret %struct.cpp_buffer* %0, !dbg !2117
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_save_file_entries(%struct.cpp_reader* %pfile, %struct._IO_FILE* %fp) local_unnamed_addr #2 !dbg !2118 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2122, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !2123, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i64 0, metadata !2124, metadata !DIExpression()), !dbg !2136
  %all_files = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 17, !dbg !2137
  br label %for.cond, !dbg !2139

for.cond:                                         ; preds = %for.body, %entry
  %count.0 = phi i64 [ 0, %entry ], [ %inc, %for.body ], !dbg !2136
  %f.0.in = phi %struct._cpp_file** [ %all_files, %entry ], [ %next_file, %for.body ]
  %f.0 = load %struct._cpp_file*, %struct._cpp_file** %f.0.in, align 8, !dbg !2140
  call void @llvm.dbg.value(metadata %struct._cpp_file* %f.0, metadata !2127, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !2124, metadata !DIExpression()), !dbg !2136
  %tobool = icmp eq %struct._cpp_file* %f.0, null, !dbg !2141
  br i1 %tobool, label %for.end, label %for.body, !dbg !2141

for.body:                                         ; preds = %for.cond
  %inc = add i64 %count.0, 1, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2124, metadata !DIExpression()), !dbg !2136
  %next_file = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.0, i64 0, i32 4, !dbg !2144
  br label %for.cond, !dbg !2145, !llvm.loop !2146

for.end:                                          ; preds = %for.cond
  %count.0.lcssa = phi i64 [ %count.0, %for.cond ], !dbg !2136
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !2124, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !2124, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !2124, metadata !DIExpression()), !dbg !2136
  %sub = shl i64 %count.0.lcssa, 5, !dbg !2148
  %add = or i64 %sub, 16, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %add, metadata !2126, metadata !DIExpression()), !dbg !2136
  %call = tail call i8* @xcalloc(i64 1, i64 %add) #8, !dbg !2150
  call void @llvm.dbg.value(metadata i8* %call, metadata !2125, metadata !DIExpression()), !dbg !2136
  %count1 = bitcast i8* %call to i64*, !dbg !2151
  store i64 0, i64* %count1, align 8, !dbg !2152
  %0 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2153
  store i8 0, i8* %0, align 8, !dbg !2154
  %entries = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2155
  %1 = bitcast i8* %entries to [1 x %struct.pchf_entry]*, !dbg !2155
  br label %for.cond3, !dbg !2156

for.cond3:                                        ; preds = %for.inc49, %for.end
  %f.1.in = phi %struct._cpp_file** [ %all_files, %for.end ], [ %next_file50, %for.inc49 ]
  %f.1 = load %struct._cpp_file*, %struct._cpp_file** %f.1.in, align 8, !dbg !2157
  call void @llvm.dbg.value(metadata %struct._cpp_file* %f.1, metadata !2127, metadata !DIExpression()), !dbg !2136
  %tobool4 = icmp eq %struct._cpp_file* %f.1, null, !dbg !2158
  br i1 %tobool4, label %for.end51, label %for.body5, !dbg !2158

for.body5:                                        ; preds = %for.cond3
  %dont_read = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.1, i64 0, i32 14, !dbg !2159
  %2 = load i8, i8* %dont_read, align 1, !dbg !2159
  %tobool7 = icmp eq i8 %2, 0, !dbg !2161
  br i1 %tobool7, label %lor.lhs.false, label %cleanup46, !dbg !2162

lor.lhs.false:                                    ; preds = %for.body5
  %err_no = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.1, i64 0, i32 11, !dbg !2163
  %3 = load i32, i32* %err_no, align 4, !dbg !2163
  %tobool8 = icmp eq i32 %3, 0, !dbg !2164
  br i1 %tobool8, label %if.end, label %cleanup46, !dbg !2165

if.end:                                           ; preds = %lor.lhs.false
  %stack_count = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.1, i64 0, i32 12, !dbg !2166
  %4 = load i16, i16* %stack_count, align 8, !dbg !2166
  %cmp = icmp eq i16 %4, 0, !dbg !2168
  br i1 %cmp, label %cleanup46, label %if.end12, !dbg !2169

if.end12:                                         ; preds = %if.end
  %5 = load i64, i64* %count1, align 8, !dbg !2170
  %inc14 = add i64 %5, 1, !dbg !2170
  store i64 %inc14, i64* %count1, align 8, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %5, metadata !2128, metadata !DIExpression()), !dbg !2155
  %once_only = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.1, i64 0, i32 13, !dbg !2171
  %6 = load i8, i8* %once_only, align 2, !dbg !2171
  %once_only15 = getelementptr inbounds [1 x %struct.pchf_entry], [1 x %struct.pchf_entry]* %1, i64 0, i64 %5, i32 2, !dbg !2172
  store i8 %6, i8* %once_only15, align 8, !dbg !2173
  %7 = load i8, i8* %0, align 8, !dbg !2174
  %8 = load i8, i8* %once_only, align 2, !dbg !2175
  %or1 = or i8 %7, %8, !dbg !2176
  store i8 %or1, i8* %0, align 8, !dbg !2177
  %buffer_valid = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.1, i64 0, i32 16, !dbg !2178
  %9 = load i8, i8* %buffer_valid, align 1, !dbg !2178
  %tobool22 = icmp eq i8 %9, 0, !dbg !2179
  br i1 %tobool22, label %if.else, label %if.then23, !dbg !2180

if.then23:                                        ; preds = %if.end12
  %buffer = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.1, i64 0, i32 5, !dbg !2181
  %10 = load i8*, i8** %buffer, align 8, !dbg !2181
  %st_size = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.1, i64 0, i32 9, i32 8, !dbg !2182
  %11 = load i64, i64* %st_size, align 8, !dbg !2182
  %arraydecay = getelementptr inbounds [1 x %struct.pchf_entry], [1 x %struct.pchf_entry]* %1, i64 0, i64 %5, i32 1, i64 0, !dbg !2183
  %call26 = tail call i8* @md5_buffer(i8* %10, i64 %11, i8* nonnull %arraydecay) #8, !dbg !2184
  br label %if.end41, !dbg !2184

if.else:                                          ; preds = %if.end12
  %fd = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.1, i64 0, i32 10, !dbg !2185
  %12 = load i32, i32* %fd, align 8, !dbg !2185
  call void @llvm.dbg.value(metadata i32 %12, metadata !2135, metadata !DIExpression()), !dbg !2186
  %call27 = tail call fastcc zeroext i8 @open_file(%struct._cpp_file* nonnull %f.1) #10, !dbg !2187
  %tobool28 = icmp eq i8 %call27, 0, !dbg !2187
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !2189

if.then29:                                        ; preds = %if.else
  tail call fastcc void @open_file_failed(%struct.cpp_reader* %pfile, %struct._cpp_file* nonnull %f.1, i32 0) #10, !dbg !2190
  br label %cleanup, !dbg !2192

if.end30:                                         ; preds = %if.else
  %13 = load i32, i32* %fd, align 8, !dbg !2193
  %call32 = tail call %struct._IO_FILE* @fdopen_unlocked(i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !2193
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call32, metadata !2132, metadata !DIExpression()), !dbg !2186
  %arraydecay36 = getelementptr inbounds [1 x %struct.pchf_entry], [1 x %struct.pchf_entry]* %1, i64 0, i64 %5, i32 1, i64 0, !dbg !2194
  %call37 = tail call i32 @md5_stream(%struct._IO_FILE* %call32, i8* nonnull %arraydecay36) #8, !dbg !2195
  %call38 = tail call i32 @fclose(%struct._IO_FILE* %call32) #8, !dbg !2196
  store i32 %12, i32* %fd, align 8, !dbg !2197
  br label %cleanup, !dbg !2198

cleanup:                                          ; preds = %if.end30, %if.then29
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end30 ], [ 1, %if.then29 ]
  %cond = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond, label %if.end41, label %cleanup46

if.end41:                                         ; preds = %cleanup, %if.then23
  %st_size43 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.1, i64 0, i32 9, i32 8, !dbg !2199
  %14 = load i64, i64* %st_size43, align 8, !dbg !2199
  %size = getelementptr inbounds [1 x %struct.pchf_entry], [1 x %struct.pchf_entry]* %1, i64 0, i64 %5, i32 0, !dbg !2200
  store i64 %14, i64* %size, align 8, !dbg !2201
  br label %cleanup46, !dbg !2202

cleanup46:                                        ; preds = %lor.lhs.false, %for.body5, %if.end, %cleanup, %if.end41
  %cleanup.dest.slot.1 = phi i32 [ 0, %if.end41 ], [ %cleanup.dest.slot.0, %cleanup ], [ 7, %lor.lhs.false ], [ 7, %for.body5 ], [ 7, %if.end ]
  switch i32 %cleanup.dest.slot.1, label %cleanup63.loopexit [
    i32 0, label %for.inc49
    i32 7, label %for.inc49
  ]

for.inc49:                                        ; preds = %cleanup46, %cleanup46
  %next_file50 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f.1, i64 0, i32 4, !dbg !2203
  br label %for.cond3, !dbg !2204, !llvm.loop !2205

for.end51:                                        ; preds = %for.cond3
  %15 = load i64, i64* %count1, align 8, !dbg !2207
  %sub53 = shl i64 %15, 5, !dbg !2208
  %add55 = or i64 %sub53, 16, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %add55, metadata !2126, metadata !DIExpression()), !dbg !2136
  tail call void @spec_qsort(i8* nonnull %entries, i64 %15, i64 32, i32 (i8*, i8*)* nonnull @pchf_save_compare) #8, !dbg !2210
  %call59 = tail call i64 @fwrite(i8* %call, i64 %add55, i64 1, %struct._IO_FILE* %fp) #8, !dbg !2211
  %cmp60 = icmp eq i64 %call59, 1, !dbg !2212
  %conv62 = zext i1 %cmp60 to i8, !dbg !2211
  br label %cleanup63, !dbg !2213

cleanup63.loopexit:                               ; preds = %cleanup46
  br label %cleanup63, !dbg !2214

cleanup63:                                        ; preds = %cleanup63.loopexit, %for.end51
  %retval.4 = phi i8 [ %conv62, %for.end51 ], [ 0, %cleanup63.loopexit ]
  ret i8 %retval.4, !dbg !2214
}

declare dso_local i8* @md5_buffer(i8*, i64, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @open_file(%struct._cpp_file* %file) unnamed_addr #2 !dbg !2215 {
entry:
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !2217, metadata !DIExpression()), !dbg !2218
  %path = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !2219
  %0 = load i8*, i8** %path, align 8, !dbg !2219
  %1 = load i8, i8* %0, align 1, !dbg !2221
  %cmp = icmp eq i8 %1, 0, !dbg !2222
  br i1 %cmp, label %if.then, label %if.else, !dbg !2223

if.then:                                          ; preds = %entry
  %fd = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 10, !dbg !2224
  store i32 0, i32* %fd, align 8, !dbg !2226
  br label %if.end, !dbg !2227

if.else:                                          ; preds = %entry
  %call = tail call i32 (i8*, i32, ...) @open(i8* %0, i32 256, i32 438) #8, !dbg !2228
  %fd3 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 10, !dbg !2229
  store i32 %call, i32* %fd3, align 8, !dbg !2230
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = phi i32 [ %call, %if.else ], [ 0, %if.then ], !dbg !2231
  %fd4 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 10, !dbg !2231
  %cmp5 = icmp eq i32 %2, -1, !dbg !2233
  br i1 %cmp5, label %if.else23, label %if.then7, !dbg !2234

if.then7:                                         ; preds = %if.end
  %st = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 9, !dbg !2235
  %call9 = tail call i32 @fstat(i32 %2, %struct.stat* %st) #8, !dbg !2238
  %cmp10 = icmp eq i32 %call9, 0, !dbg !2239
  br i1 %cmp10, label %if.then12, label %if.end19, !dbg !2240

if.then12:                                        ; preds = %if.then7
  %st_mode = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 9, i32 3, !dbg !2241
  %3 = load i32, i32* %st_mode, align 8, !dbg !2241
  %and = and i32 %3, 61440, !dbg !2241
  %cmp14 = icmp eq i32 %and, 16384, !dbg !2241
  br i1 %cmp14, label %if.end17, label %if.then16, !dbg !2244

if.then16:                                        ; preds = %if.then12
  %err_no = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 11, !dbg !2245
  store i32 0, i32* %err_no, align 4, !dbg !2247
  br label %return, !dbg !2248

if.end17:                                         ; preds = %if.then12
  %call18 = tail call i32* @__errno_location() #12, !dbg !2249
  store i32 2, i32* %call18, align 4, !dbg !2250
  br label %if.end19, !dbg !2251

if.end19:                                         ; preds = %if.end17, %if.then7
  %4 = load i32, i32* %fd4, align 8, !dbg !2252
  %call21 = tail call i32 @close(i32 %4) #8, !dbg !2253
  store i32 -1, i32* %fd4, align 8, !dbg !2254
  %.pre = tail call i32* @__errno_location() #12, !dbg !2255
  br label %if.end30, !dbg !2256

if.else23:                                        ; preds = %if.end
  %call24 = tail call i32* @__errno_location() #12, !dbg !2257
  %5 = load i32, i32* %call24, align 4, !dbg !2257
  %cmp25 = icmp eq i32 %5, 20, !dbg !2259
  br i1 %cmp25, label %if.then27, label %if.end30, !dbg !2260

if.then27:                                        ; preds = %if.else23
  store i32 2, i32* %call24, align 4, !dbg !2261
  br label %if.end30, !dbg !2262

if.end30:                                         ; preds = %if.else23, %if.then27, %if.end19
  %call31.pre-phi = phi i32* [ %call24, %if.else23 ], [ %call24, %if.then27 ], [ %.pre, %if.end19 ], !dbg !2255
  %6 = load i32, i32* %call31.pre-phi, align 4, !dbg !2255
  %err_no32 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 11, !dbg !2263
  store i32 %6, i32* %err_no32, align 4, !dbg !2264
  br label %return, !dbg !2265

return:                                           ; preds = %if.end30, %if.then16
  %retval.0 = phi i8 [ 0, %if.end30 ], [ 1, %if.then16 ], !dbg !2218
  ret i8 %retval.0, !dbg !2266
}

declare dso_local %struct._IO_FILE* @fdopen_unlocked(i32, i8*) local_unnamed_addr #1

declare dso_local i32 @md5_stream(%struct._IO_FILE*, i8*) local_unnamed_addr #1

declare dso_local i32 @fclose(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @pchf_save_compare(i8* %e1, i8* %e2) #2 !dbg !2267 {
entry:
  call void @llvm.dbg.value(metadata i8* %e1, metadata !2269, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %e2, metadata !2270, metadata !DIExpression()), !dbg !2271
  %call = tail call i32 @memcmp(i8* %e1, i8* %e2, i64 32) #11, !dbg !2272
  ret i32 %call, !dbg !2273
}

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @_cpp_read_file_entries(%struct.cpp_reader* %pfile, %struct._IO_FILE* %f) local_unnamed_addr #2 !dbg !2274 {
entry:
  %d = alloca %struct.pchf_data, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2276, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !2277, metadata !DIExpression()), !dbg !2279
  %0 = bitcast %struct.pchf_data* %d to i8*, !dbg !2280
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #9, !dbg !2280
  %call = call i64 @fread(i8* nonnull %0, i64 16, i64 1, %struct._IO_FILE* %f) #8, !dbg !2281
  %cmp = icmp eq i64 %call, 1, !dbg !2283
  br i1 %cmp, label %if.end, label %cleanup, !dbg !2284

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.pchf_data, %struct.pchf_data* %d, i64 0, i32 0, !dbg !2285
  %1 = load i64, i64* %count, align 8, !dbg !2285
  %sub = shl i64 %1, 5, !dbg !2285
  %add = or i64 %sub, 16, !dbg !2285
  %call1 = call i8* @xmalloc(i64 %add) #8, !dbg !2285
  store i8* %call1, i8** bitcast (%struct.pchf_data** @pchf to i8**), align 8, !dbg !2286
  %call2 = call i8* @memcpy(i8* %call1, i8* nonnull %0, i64 16) #8, !dbg !2287
  %2 = load %struct.pchf_data*, %struct.pchf_data** @pchf, align 8, !dbg !2288
  %arraydecay = getelementptr inbounds %struct.pchf_data, %struct.pchf_data* %2, i64 0, i32 2, i64 0, !dbg !2288
  %3 = bitcast %struct.pchf_entry* %arraydecay to i8*, !dbg !2288
  %4 = load i64, i64* %count, align 8, !dbg !2290
  %call4 = call i64 @fread(i8* nonnull %3, i64 32, i64 %4, %struct._IO_FILE* %f) #8, !dbg !2291
  %5 = load i64, i64* %count, align 8, !dbg !2292
  %cmp6 = icmp eq i64 %call4, %5, !dbg !2293
  %. = zext i1 %cmp6 to i8, !dbg !2279
  br label %cleanup, !dbg !2279

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8 [ 0, %entry ], [ %., %if.end ], !dbg !2279
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #9, !dbg !2294
  ret i8 %retval.0, !dbg !2294
}

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i8* @remap_filename(%struct.cpp_reader* %pfile, %struct._cpp_file* %file) unnamed_addr #2 !dbg !2295 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2299, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !2300, metadata !DIExpression()), !dbg !2307
  %dir1 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 8, !dbg !2308
  %0 = load %struct.cpp_dir*, %struct.cpp_dir** %dir1, align 8, !dbg !2308
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %0, metadata !2304, metadata !DIExpression()), !dbg !2307
  %name = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 0, !dbg !2309
  %1 = load i8*, i8** %name, align 8, !dbg !2309
  call void @llvm.dbg.value(metadata i8* %1, metadata !2301, metadata !DIExpression()), !dbg !2307
  br label %for.cond, !dbg !2310

for.cond:                                         ; preds = %if.end17, %entry
  %dir.0 = phi %struct.cpp_dir* [ %0, %entry ], [ %call35, %if.end17 ], !dbg !2307
  %fname.0 = phi i8* [ %1, %entry ], [ %add.ptr36, %if.end17 ], !dbg !2307
  call void @llvm.dbg.value(metadata i8* %fname.0, metadata !2301, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %dir.0, metadata !2304, metadata !DIExpression()), !dbg !2307
  %name_map = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %dir.0, i64 0, i32 6, !dbg !2311
  %2 = load i8**, i8*** %name_map, align 8, !dbg !2311
  %tobool = icmp eq i8** %2, null, !dbg !2316
  br i1 %tobool, label %if.then, label %if.end, !dbg !2317

if.then:                                          ; preds = %for.cond
  tail call fastcc void @read_name_map(%struct.cpp_dir* %dir.0) #10, !dbg !2318
  %.pre = load i8**, i8*** %name_map, align 8, !dbg !2319
  br label %if.end, !dbg !2318

if.end:                                           ; preds = %for.cond, %if.then
  %3 = phi i8** [ %2, %for.cond ], [ %.pre, %if.then ], !dbg !2319
  call void @llvm.dbg.value(metadata i64 0, metadata !2305, metadata !DIExpression()), !dbg !2307
  br label %for.cond2, !dbg !2322

for.cond2:                                        ; preds = %for.inc, %if.end
  %index.0 = phi i64 [ 0, %if.end ], [ %add13, %for.inc ], !dbg !2323
  call void @llvm.dbg.value(metadata i64 %index.0, metadata !2305, metadata !DIExpression()), !dbg !2307
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %index.0, !dbg !2324
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !2324
  %tobool4 = icmp eq i8* %4, null, !dbg !2325
  br i1 %tobool4, label %for.end, label %for.body, !dbg !2325

for.body:                                         ; preds = %for.cond2
  %call = tail call i32 @strcmp(i8* nonnull %4, i8* %fname.0) #11, !dbg !2326
  %tobool7 = icmp eq i32 %call, 0, !dbg !2326
  br i1 %tobool7, label %if.then8, label %for.inc, !dbg !2328

if.then8:                                         ; preds = %for.body
  %.lcssa = phi i8** [ %3, %for.body ], !dbg !2319
  %index.0.lcssa5 = phi i64 [ %index.0, %for.body ], !dbg !2323
  call void @llvm.dbg.value(metadata i64 %index.0.lcssa5, metadata !2305, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %index.0.lcssa5, metadata !2305, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %dir.0, metadata !2304, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i64 %index.0.lcssa5, metadata !2305, metadata !DIExpression()), !dbg !2307
  %add = or i64 %index.0.lcssa5, 1, !dbg !2329
  %arrayidx10 = getelementptr inbounds i8*, i8** %.lcssa, i64 %add, !dbg !2330
  %5 = load i8*, i8** %arrayidx10, align 8, !dbg !2330
  %call11 = tail call i8* @xstrdup(i8* %5) #8, !dbg !2331
  br label %cleanup, !dbg !2332

for.inc:                                          ; preds = %for.body
  %add13 = add i64 %index.0, 2, !dbg !2333
  call void @llvm.dbg.value(metadata i64 %add13, metadata !2305, metadata !DIExpression()), !dbg !2307
  br label %for.cond2, !dbg !2334, !llvm.loop !2335

for.end:                                          ; preds = %for.cond2
  %call14 = tail call i8* @strchr(i8* %fname.0, i32 47) #11, !dbg !2337
  call void @llvm.dbg.value(metadata i8* %call14, metadata !2302, metadata !DIExpression()), !dbg !2307
  %tobool15 = icmp eq i8* %call14, null, !dbg !2338
  %cmp = icmp eq i8* %call14, %fname.0, !dbg !2340
  %or.cond = or i1 %tobool15, %cmp, !dbg !2341
  br i1 %or.cond, label %cleanup.loopexit, label %if.end17, !dbg !2341

if.end17:                                         ; preds = %for.end
  %len18 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %dir.0, i64 0, i32 2, !dbg !2342
  %6 = load i32, i32* %len18, align 8, !dbg !2342
  %conv = zext i32 %6 to i64, !dbg !2343
  %sub.ptr.lhs.cast = ptrtoint i8* %call14 to i64, !dbg !2344
  %sub.ptr.rhs.cast = ptrtoint i8* %fname.0 to i64, !dbg !2344
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2344
  %add19 = add nsw i64 %sub.ptr.sub, 1, !dbg !2345
  %add20 = add nsw i64 %add19, %conv, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %add20, metadata !2306, metadata !DIExpression()), !dbg !2307
  %add21 = add i64 %add20, 1, !dbg !2347
  %call22 = tail call i8* @xmalloc(i64 %add21) #8, !dbg !2347
  call void @llvm.dbg.value(metadata i8* %call22, metadata !2303, metadata !DIExpression()), !dbg !2307
  %name23 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %dir.0, i64 0, i32 1, !dbg !2348
  %7 = load i8*, i8** %name23, align 8, !dbg !2348
  %8 = load i32, i32* %len18, align 8, !dbg !2349
  %conv25 = zext i32 %8 to i64, !dbg !2350
  %call26 = tail call i8* @memcpy(i8* %call22, i8* %7, i64 %conv25) #8, !dbg !2351
  %9 = load i32, i32* %len18, align 8, !dbg !2352
  %idx.ext = zext i32 %9 to i64, !dbg !2353
  %add.ptr = getelementptr inbounds i8, i8* %call22, i64 %idx.ext, !dbg !2353
  %call32 = tail call i8* @memcpy(i8* %add.ptr, i8* %fname.0, i64 %add19) #8, !dbg !2354
  %arrayidx33 = getelementptr inbounds i8, i8* %call22, i64 %add20, !dbg !2355
  store i8 0, i8* %arrayidx33, align 1, !dbg !2356
  %sysp = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %dir.0, i64 0, i32 3, !dbg !2357
  %10 = load i8, i8* %sysp, align 4, !dbg !2357
  %conv34 = zext i8 %10 to i32, !dbg !2358
  %call35 = tail call fastcc %struct.cpp_dir* @make_cpp_dir(%struct.cpp_reader* %pfile, i8* %call22, i32 %conv34) #10, !dbg !2359
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %call35, metadata !2304, metadata !DIExpression()), !dbg !2307
  %add.ptr36 = getelementptr inbounds i8, i8* %call14, i64 1, !dbg !2360
  call void @llvm.dbg.value(metadata i8* %add.ptr36, metadata !2301, metadata !DIExpression()), !dbg !2307
  br label %for.cond, !dbg !2361, !llvm.loop !2362

cleanup.loopexit:                                 ; preds = %for.end
  br label %cleanup, !dbg !2365

cleanup:                                          ; preds = %cleanup.loopexit, %if.then8
  %retval.0 = phi i8* [ %call11, %if.then8 ], [ null, %cleanup.loopexit ], !dbg !2366
  ret i8* %retval.0, !dbg !2365
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @append_file_to_dir(i8* %fname, %struct.cpp_dir* %dir) unnamed_addr #2 !dbg !2367 {
entry:
  call void @llvm.dbg.value(metadata i8* %fname, metadata !2369, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %dir, metadata !2370, metadata !DIExpression()), !dbg !2374
  %len = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %dir, i64 0, i32 2, !dbg !2375
  %0 = load i32, i32* %len, align 8, !dbg !2375
  %conv = zext i32 %0 to i64, !dbg !2376
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2371, metadata !DIExpression()), !dbg !2374
  %call = tail call i64 @strlen(i8* %fname) #11, !dbg !2377
  call void @llvm.dbg.value(metadata i64 %call, metadata !2372, metadata !DIExpression()), !dbg !2374
  %add = add nuw nsw i64 %conv, 1, !dbg !2378
  %add1 = add i64 %add, %call, !dbg !2378
  %add2 = add i64 %add1, 1, !dbg !2378
  %call3 = tail call i8* @xmalloc(i64 %add2) #8, !dbg !2378
  call void @llvm.dbg.value(metadata i8* %call3, metadata !2373, metadata !DIExpression()), !dbg !2374
  %name = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %dir, i64 0, i32 1, !dbg !2379
  %1 = load i8*, i8** %name, align 8, !dbg !2379
  %call4 = tail call i8* @memcpy(i8* %call3, i8* %1, i64 %conv) #8, !dbg !2380
  %tobool = icmp eq i32 %0, 0, !dbg !2381
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2383

land.lhs.true:                                    ; preds = %entry
  %sub = add nsw i64 %conv, -1, !dbg !2384
  %arrayidx = getelementptr inbounds i8, i8* %call3, i64 %sub, !dbg !2385
  %2 = load i8, i8* %arrayidx, align 1, !dbg !2385
  %cmp = icmp eq i8 %2, 47, !dbg !2386
  br i1 %cmp, label %if.end, label %if.then, !dbg !2387

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i64 %add, metadata !2371, metadata !DIExpression()), !dbg !2374
  %arrayidx7 = getelementptr inbounds i8, i8* %call3, i64 %conv, !dbg !2388
  store i8 47, i8* %arrayidx7, align 1, !dbg !2389
  br label %if.end, !dbg !2388

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %dlen.0 = phi i64 [ %add, %if.then ], [ %conv, %land.lhs.true ], [ %conv, %entry ], !dbg !2374
  call void @llvm.dbg.value(metadata i64 %dlen.0, metadata !2371, metadata !DIExpression()), !dbg !2374
  %arrayidx8 = getelementptr inbounds i8, i8* %call3, i64 %dlen.0, !dbg !2390
  %add9 = add i64 %call, 1, !dbg !2391
  %call10 = tail call i8* @memcpy(i8* %arrayidx8, i8* %fname, i64 %add9) #8, !dbg !2392
  ret i8* %call3, !dbg !2393
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @pch_open_file(%struct.cpp_reader* %pfile, %struct._cpp_file* %file, i8* %invalid_pch) unnamed_addr #2 !dbg !371 {
entry:
  %st = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !864, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !865, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %invalid_pch, metadata !866, metadata !DIExpression()), !dbg !2394
  %path1 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !2395
  %0 = load i8*, i8** %path1, align 8, !dbg !2395
  call void @llvm.dbg.value(metadata i8* %0, metadata !867, metadata !DIExpression()), !dbg !2394
  %1 = bitcast %struct.stat* %st to i8*, !dbg !2396
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %1) #9, !dbg !2396
  call void @llvm.dbg.value(metadata i8 0, metadata !872, metadata !DIExpression()), !dbg !2394
  %name = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 0, !dbg !2397
  %2 = load i8*, i8** %name, align 8, !dbg !2397
  %3 = load i8, i8* %2, align 1, !dbg !2399
  %cmp = icmp eq i8 %3, 0, !dbg !2400
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !2401

lor.lhs.false:                                    ; preds = %entry
  %valid_pch = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 8, !dbg !2402
  %4 = load i32 (%struct.cpp_reader*, i8*, i32)*, i32 (%struct.cpp_reader*, i8*, i32)** %valid_pch, align 8, !dbg !2402
  %tobool = icmp eq i32 (%struct.cpp_reader*, i8*, i32)* %4, null, !dbg !2403
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2404

if.end:                                           ; preds = %lor.lhs.false
  %all_files = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 17, !dbg !2405
  %5 = load %struct._cpp_file*, %struct._cpp_file** %all_files, align 8, !dbg !2405
  %tobool3 = icmp eq %struct._cpp_file* %5, null, !dbg !2407
  br i1 %tobool3, label %if.end7, label %land.lhs.true, !dbg !2408

land.lhs.true:                                    ; preds = %if.end
  %next_file = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %5, i64 0, i32 4, !dbg !2409
  %6 = load %struct._cpp_file*, %struct._cpp_file** %next_file, align 8, !dbg !2409
  %tobool5 = icmp eq %struct._cpp_file* %6, null, !dbg !2410
  br i1 %tobool5, label %if.end7, label %cleanup, !dbg !2411

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %call = tail call i64 @strlen(i8* %0) #11, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %call, metadata !869, metadata !DIExpression()), !dbg !2394
  %add = add i64 %call, 5, !dbg !2413
  call void @llvm.dbg.value(metadata i64 %add, metadata !868, metadata !DIExpression()), !dbg !2394
  %call8 = tail call i8* @xmalloc(i64 %add) #8, !dbg !2414
  call void @llvm.dbg.value(metadata i8* %call8, metadata !870, metadata !DIExpression()), !dbg !2394
  %call9 = tail call i8* @memcpy(i8* %call8, i8* %0, i64 %call) #8, !dbg !2415
  %add.ptr = getelementptr inbounds i8, i8* %call8, i64 %call, !dbg !2416
  %call10 = tail call i8* @memcpy(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @pch_open_file.extension, i64 0, i64 0), i64 5) #8, !dbg !2417
  call void @llvm.dbg.value(metadata %struct.stat* %st, metadata !871, metadata !DIExpression(DW_OP_deref)), !dbg !2394
  %call11 = call i32 @stat(i8* %call8, %struct.stat* %st) #8, !dbg !2418
  %cmp12 = icmp eq i32 %call11, 0, !dbg !2419
  br i1 %cmp12, label %if.then14, label %if.end65, !dbg !2420

if.then14:                                        ; preds = %if.end7
  call void @llvm.dbg.value(metadata i64 %add, metadata !894, metadata !DIExpression()), !dbg !2421
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 3, !dbg !2422
  %7 = load i32, i32* %st_mode, align 8, !dbg !2422
  %and = and i32 %7, 61440, !dbg !2422
  %cmp15 = icmp eq i32 %and, 16384, !dbg !2422
  br i1 %cmp15, label %if.else, label %if.then17, !dbg !2424

if.then17:                                        ; preds = %if.then14
  %call18 = call fastcc zeroext i8 @validate_pch(%struct.cpp_reader* %pfile, %struct._cpp_file* %file, i8* nonnull %call8) #10, !dbg !2425
  call void @llvm.dbg.value(metadata i8 %call18, metadata !872, metadata !DIExpression()), !dbg !2394
  br label %if.end61, !dbg !2426

if.else:                                          ; preds = %if.then14
  %call19 = call %struct.__dirstream* @opendir(i8* nonnull %call8) #8, !dbg !2427
  call void @llvm.dbg.value(metadata %struct.__dirstream* %call19, metadata !873, metadata !DIExpression()), !dbg !2421
  %cmp20 = icmp eq %struct.__dirstream* %call19, null, !dbg !2429
  br i1 %cmp20, label %if.end61, label %if.then22, !dbg !2430

if.then22:                                        ; preds = %if.else
  %sub = add i64 %call, 4, !dbg !2431
  %arrayidx23 = getelementptr inbounds i8, i8* %call8, i64 %sub, !dbg !2433
  store i8 47, i8* %arrayidx23, align 1, !dbg !2434
  br label %while.cond.outer, !dbg !2435

while.cond.outer:                                 ; preds = %if.end50, %if.then22
  %len.0.ph = phi i64 [ %len.1, %if.end50 ], [ %add, %if.then22 ]
  %pchname.0.ph = phi i8* [ %pchname.1, %if.end50 ], [ %call8, %if.then22 ]
  br label %while.cond, !dbg !2435

while.cond:                                       ; preds = %while.cond.outer, %if.then40
  call void @llvm.dbg.value(metadata i8 0, metadata !872, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %pchname.0.ph, metadata !870, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i64 %len.0.ph, metadata !868, metadata !DIExpression()), !dbg !2394
  %call24 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %call19) #8, !dbg !2436
  call void @llvm.dbg.value(metadata %struct.dirent* %call24, metadata !880, metadata !DIExpression()), !dbg !2421
  %cmp25 = icmp eq %struct.dirent* %call24, null, !dbg !2437
  br i1 %cmp25, label %while.end.loopexit, label %while.body, !dbg !2435

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds %struct.dirent, %struct.dirent* %call24, i64 0, i32 4, i64 0, !dbg !2438
  %call31 = call i32 @strcmp(i8* nonnull %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !2440
  %cmp32 = icmp eq i32 %call31, 0, !dbg !2442
  br i1 %cmp32, label %if.then40, label %lor.lhs.false34, !dbg !2443

lor.lhs.false34:                                  ; preds = %while.body
  %call27 = call i64 @strlen(i8* nonnull %arraydecay) #11, !dbg !2444
  %call37 = call i32 @strcmp(i8* nonnull %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !2445
  %cmp38 = icmp eq i32 %call37, 0, !dbg !2446
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !2447

if.then40:                                        ; preds = %lor.lhs.false34, %while.body
  br label %while.cond, !dbg !2448, !llvm.loop !2449

if.end41:                                         ; preds = %lor.lhs.false34
  %call27.lcssa = phi i64 [ %call27, %lor.lhs.false34 ], !dbg !2444
  %arraydecay.lcssa = phi i8* [ %arraydecay, %lor.lhs.false34 ], !dbg !2438
  %add28.le = add i64 %call27.lcssa, 1, !dbg !2451
  %add42 = add i64 %add28.le, %add, !dbg !2452
  %cmp43 = icmp ugt i64 %add42, %len.0.ph, !dbg !2454
  br i1 %cmp43, label %if.then45, label %if.end50, !dbg !2455

if.then45:                                        ; preds = %if.end41
  %add46 = add i64 %call27.lcssa, 65, !dbg !2456
  %add47 = add i64 %len.0.ph, %add46, !dbg !2458
  call void @llvm.dbg.value(metadata i64 %add47, metadata !868, metadata !DIExpression()), !dbg !2394
  %call49 = call i8* @xrealloc(i8* %pchname.0.ph, i64 %add47) #8, !dbg !2459
  call void @llvm.dbg.value(metadata i8* %call49, metadata !870, metadata !DIExpression()), !dbg !2394
  br label %if.end50, !dbg !2460

if.end50:                                         ; preds = %if.then45, %if.end41
  %len.1 = phi i64 [ %add47, %if.then45 ], [ %len.0.ph, %if.end41 ], !dbg !2394
  %pchname.1 = phi i8* [ %call49, %if.then45 ], [ %pchname.0.ph, %if.end41 ], !dbg !2394
  call void @llvm.dbg.value(metadata i8* %pchname.1, metadata !870, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i64 %len.1, metadata !868, metadata !DIExpression()), !dbg !2394
  %add.ptr51 = getelementptr inbounds i8, i8* %pchname.1, i64 %add, !dbg !2461
  %call54 = call i8* @memcpy(i8* %add.ptr51, i8* nonnull %arraydecay.lcssa, i64 %add28.le) #8, !dbg !2462
  %call55 = call fastcc zeroext i8 @validate_pch(%struct.cpp_reader* %pfile, %struct._cpp_file* %file, i8* %pchname.1) #10, !dbg !2463
  call void @llvm.dbg.value(metadata i8 %call55, metadata !872, metadata !DIExpression()), !dbg !2394
  %tobool56 = icmp eq i8 %call55, 0, !dbg !2464
  br i1 %tobool56, label %while.cond.outer, label %while.end.loopexit1, !dbg !2466, !llvm.loop !2449

while.end.loopexit:                               ; preds = %while.cond
  %pchname.0.ph.lcssa = phi i8* [ %pchname.0.ph, %while.cond ]
  br label %while.end, !dbg !2467

while.end.loopexit1:                              ; preds = %if.end50
  %pchname.1.lcssa = phi i8* [ %pchname.1, %if.end50 ], !dbg !2394
  %call55.lcssa = phi i8 [ %call55, %if.end50 ], !dbg !2463
  call void @llvm.dbg.value(metadata i8* %pchname.1.lcssa, metadata !870, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %pchname.1.lcssa, metadata !870, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %pchname.1.lcssa, metadata !870, metadata !DIExpression()), !dbg !2394
  br label %while.end, !dbg !2467

while.end:                                        ; preds = %while.end.loopexit1, %while.end.loopexit
  %pchname.2 = phi i8* [ %pchname.0.ph.lcssa, %while.end.loopexit ], [ %pchname.1.lcssa, %while.end.loopexit1 ], !dbg !2394
  %valid.1 = phi i8 [ 0, %while.end.loopexit ], [ %call55.lcssa, %while.end.loopexit1 ], !dbg !2394
  call void @llvm.dbg.value(metadata i8 %valid.1, metadata !872, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %pchname.2, metadata !870, metadata !DIExpression()), !dbg !2394
  %call59 = call i32 @closedir(%struct.__dirstream* nonnull %call19) #8, !dbg !2467
  br label %if.end61, !dbg !2468

if.end61:                                         ; preds = %if.else, %while.end, %if.then17
  %pchname.4 = phi i8* [ %call8, %if.then17 ], [ %pchname.2, %while.end ], [ %call8, %if.else ], !dbg !2394
  %valid.3 = phi i8 [ %call18, %if.then17 ], [ %valid.1, %while.end ], [ 0, %if.else ], !dbg !2469
  call void @llvm.dbg.value(metadata i8 %valid.3, metadata !872, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %pchname.4, metadata !870, metadata !DIExpression()), !dbg !2394
  %tobool62 = icmp eq i8 %valid.3, 0, !dbg !2470
  br i1 %tobool62, label %if.then63, label %if.end65, !dbg !2472

if.then63:                                        ; preds = %if.end61
  store i8 1, i8* %invalid_pch, align 1, !dbg !2473
  br label %if.end65, !dbg !2474

if.end65:                                         ; preds = %if.end61, %if.then63, %if.end7
  %pchname.5 = phi i8* [ %call8, %if.end7 ], [ %pchname.4, %if.then63 ], [ %pchname.4, %if.end61 ], !dbg !2394
  %valid.4 = phi i8 [ 0, %if.end7 ], [ 0, %if.then63 ], [ %valid.3, %if.end61 ], !dbg !2394
  call void @llvm.dbg.value(metadata i8 %valid.4, metadata !872, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %pchname.5, metadata !870, metadata !DIExpression()), !dbg !2394
  %tobool66 = icmp eq i8 %valid.4, 0, !dbg !2475
  br i1 %tobool66, label %if.else69, label %if.then67, !dbg !2477

if.then67:                                        ; preds = %if.end65
  %pchname68 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 2, !dbg !2478
  store i8* %pchname.5, i8** %pchname68, align 8, !dbg !2479
  br label %cleanup, !dbg !2480

if.else69:                                        ; preds = %if.end65
  call void @free(i8* %pchname.5) #8, !dbg !2481
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %lor.lhs.false, %if.then67, %if.else69, %entry
  %retval.0 = phi i8 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %land.lhs.true ], [ 0, %if.else69 ], [ %valid.4, %if.then67 ], !dbg !2394
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %1) #9, !dbg !2482
  ret i8 %retval.0, !dbg !2482
}

declare dso_local void @_obstack_newchunk(%struct.obstack*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @read_name_map(%struct.cpp_dir* %dir) unnamed_addr #2 !dbg !301 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %dir, metadata !305, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i64 0, metadata !359, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i64 9, metadata !360, metadata !DIExpression()), !dbg !2483
  %len1 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %dir, i64 0, i32 2, !dbg !2484
  %0 = load i32, i32* %len1, align 8, !dbg !2484
  %conv = zext i32 %0 to i64, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %conv, metadata !358, metadata !DIExpression()), !dbg !2483
  %add2 = add nuw nsw i64 %conv, 12, !dbg !2486
  %1 = alloca i8, i64 %add2, align 16, !dbg !2486
  call void @llvm.dbg.value(metadata i8* %1, metadata !306, metadata !DIExpression()), !dbg !2483
  %name3 = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %dir, i64 0, i32 1, !dbg !2487
  %2 = load i8*, i8** %name3, align 8, !dbg !2487
  %call = call i8* @memcpy(i8* nonnull %1, i8* %2, i64 %conv) #8, !dbg !2488
  %tobool = icmp eq i32 %0, 0, !dbg !2489
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2491

land.lhs.true:                                    ; preds = %entry
  %sub = add nsw i64 %conv, -1, !dbg !2492
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub, !dbg !2493
  %3 = load i8, i8* %arrayidx, align 1, !dbg !2493
  %cmp = icmp eq i8 %3, 47, !dbg !2494
  br i1 %cmp, label %if.end, label %if.then, !dbg !2495

if.then:                                          ; preds = %land.lhs.true
  %inc = add nuw nsw i64 %conv, 1, !dbg !2496
  call void @llvm.dbg.value(metadata i64 %inc, metadata !358, metadata !DIExpression()), !dbg !2483
  %arrayidx6 = getelementptr inbounds i8, i8* %1, i64 %conv, !dbg !2497
  store i8 47, i8* %arrayidx6, align 1, !dbg !2498
  br label %if.end, !dbg !2497

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %len.0 = phi i64 [ %inc, %if.then ], [ %conv, %land.lhs.true ], [ %conv, %entry ], !dbg !2483
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !358, metadata !DIExpression()), !dbg !2483
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %len.0, !dbg !2499
  %call7 = call i8* @strcpy(i8* nonnull %add.ptr, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @read_name_map.FILE_NAME_MAP_FILE, i64 0, i64 0)) #8, !dbg !2500
  %call8 = call %struct._IO_FILE* @fopen_unlocked(i8* nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !2501
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call8, metadata !307, metadata !DIExpression()), !dbg !2483
  %call9 = call i8* @xmalloc(i64 72) #8, !dbg !2502
  %name_map = getelementptr inbounds %struct.cpp_dir, %struct.cpp_dir* %dir, i64 0, i32 6, !dbg !2503
  %4 = bitcast i8*** %name_map to i8**, !dbg !2504
  store i8* %call9, i8** %4, align 8, !dbg !2504
  %tobool10 = icmp eq %struct._IO_FILE* %call8, null, !dbg !2505
  %5 = bitcast i8* %call9 to i8**, !dbg !2506
  br i1 %tobool10, label %if.end72, label %while.cond.preheader, !dbg !2506

while.cond.preheader:                             ; preds = %if.end
  br label %while.cond, !dbg !2507

while.cond:                                       ; preds = %while.cond.preheader, %cleanup
  %count.0 = phi i64 [ %count.1, %cleanup ], [ 0, %while.cond.preheader ], !dbg !2508
  %room.0 = phi i64 [ %room.2, %cleanup ], [ 9, %while.cond.preheader ], !dbg !2509
  call void @llvm.dbg.value(metadata i64 %room.0, metadata !360, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !359, metadata !DIExpression()), !dbg !2483
  %call12 = call i32 @getc(%struct._IO_FILE* nonnull %call8) #8, !dbg !2510
  call void @llvm.dbg.value(metadata i32 %call12, metadata !361, metadata !DIExpression()), !dbg !2511
  %cmp13 = icmp eq i32 %call12, -1, !dbg !2512
  br i1 %cmp13, label %while.end70, label %while.body, !dbg !2507

while.body:                                       ; preds = %while.cond
  %and = and i32 %call12, 255, !dbg !2513
  %idxprom = zext i32 %and to i64, !dbg !2513
  %arrayidx15 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2513
  %6 = load i16, i16* %arrayidx15, align 2, !dbg !2513
  %7 = and i16 %6, 3072, !dbg !2513
  %tobool18 = icmp eq i16 %7, 0, !dbg !2513
  br i1 %tobool18, label %if.end20, label %cleanup, !dbg !2515, !llvm.loop !2516

if.end20:                                         ; preds = %while.body
  %add21 = add i64 %count.0, 2, !dbg !2518
  %cmp22 = icmp ugt i64 %add21, %room.0, !dbg !2520
  br i1 %cmp22, label %if.then24, label %if.end30, !dbg !2521

if.then24:                                        ; preds = %if.end20
  %add25 = add i64 %room.0, 8, !dbg !2522
  call void @llvm.dbg.value(metadata i64 %add25, metadata !360, metadata !DIExpression()), !dbg !2483
  %8 = load i8*, i8** %4, align 8, !dbg !2524
  %mul27 = shl i64 %add25, 3, !dbg !2524
  %call28 = call i8* @xrealloc(i8* %8, i64 %mul27) #8, !dbg !2524
  store i8* %call28, i8** %4, align 8, !dbg !2525
  br label %if.end30, !dbg !2526

if.end30:                                         ; preds = %if.then24, %if.end20
  %room.1 = phi i64 [ %add25, %if.then24 ], [ %room.0, %if.end20 ], !dbg !2483
  call void @llvm.dbg.value(metadata i64 %room.1, metadata !360, metadata !DIExpression()), !dbg !2483
  %call31 = call fastcc i8* @read_filename_string(i32 %call12, %struct._IO_FILE* nonnull %call8) #10, !dbg !2527
  %9 = load i8**, i8*** %name_map, align 8, !dbg !2528
  %arrayidx33 = getelementptr inbounds i8*, i8** %9, i64 %count.0, !dbg !2529
  store i8* %call31, i8** %arrayidx33, align 8, !dbg !2530
  br label %while.cond34, !dbg !2531

while.cond34:                                     ; preds = %land.rhs, %if.end30
  %call35 = call i32 @getc(%struct._IO_FILE* nonnull %call8) #8, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %call35, metadata !361, metadata !DIExpression()), !dbg !2511
  %cmp36 = icmp eq i32 %call35, -1, !dbg !2533
  br i1 %cmp36, label %while.end, label %land.rhs, !dbg !2534

land.rhs:                                         ; preds = %while.cond34
  %and38 = and i32 %call35, 255, !dbg !2535
  %idxprom39 = zext i32 %and38 to i64, !dbg !2535
  %arrayidx40 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom39, !dbg !2535
  %10 = load i16, i16* %arrayidx40, align 2, !dbg !2535
  %11 = and i16 %10, 1, !dbg !2535
  %tobool43 = icmp eq i16 %11, 0, !dbg !2534
  br i1 %tobool43, label %while.end, label %while.cond34, !dbg !2531, !llvm.loop !2536

while.end:                                        ; preds = %land.rhs, %while.cond34
  %call35.lcssa = phi i32 [ %call35, %land.rhs ], [ %call35, %while.cond34 ], !dbg !2532
  %call45 = call fastcc i8* @read_filename_string(i32 %call35.lcssa, %struct._IO_FILE* nonnull %call8) #10, !dbg !2538
  call void @llvm.dbg.value(metadata i8* %call45, metadata !364, metadata !DIExpression()), !dbg !2539
  %12 = load i8, i8* %call45, align 1, !dbg !2540
  %cmp48 = icmp eq i8 %12, 47, !dbg !2540
  br i1 %cmp48, label %if.then50, label %if.else, !dbg !2542

if.then50:                                        ; preds = %while.end
  %13 = load i8**, i8*** %name_map, align 8, !dbg !2543
  %add52 = add i64 %count.0, 1, !dbg !2544
  %arrayidx53 = getelementptr inbounds i8*, i8** %13, i64 %add52, !dbg !2545
  store i8* %call45, i8** %arrayidx53, align 8, !dbg !2546
  br label %if.end58, !dbg !2545

if.else:                                          ; preds = %while.end
  %call54 = call fastcc i8* @append_file_to_dir(i8* %call45, %struct.cpp_dir* %dir) #10, !dbg !2547
  %14 = load i8**, i8*** %name_map, align 8, !dbg !2549
  %add56 = add i64 %count.0, 1, !dbg !2550
  %arrayidx57 = getelementptr inbounds i8*, i8** %14, i64 %add56, !dbg !2551
  store i8* %call54, i8** %arrayidx57, align 8, !dbg !2552
  call void @free(i8* %call45) #8, !dbg !2553
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then50
  call void @llvm.dbg.value(metadata i64 %add21, metadata !359, metadata !DIExpression()), !dbg !2483
  br label %while.cond60, !dbg !2554

while.cond60:                                     ; preds = %while.cond60, %if.end58
  %call61 = call i32 @getc(%struct._IO_FILE* nonnull %call8) #8, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %call61, metadata !361, metadata !DIExpression()), !dbg !2511
  switch i32 %call61, label %while.cond60 [
    i32 10, label %cleanup.loopexit
    i32 -1, label %cleanup.loopexit
  ], !dbg !2554, !llvm.loop !2556

cleanup.loopexit:                                 ; preds = %while.cond60, %while.cond60
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %while.body
  %count.1 = phi i64 [ %count.0, %while.body ], [ %add21, %cleanup.loopexit ], !dbg !2483
  %room.2 = phi i64 [ %room.0, %while.body ], [ %room.1, %cleanup.loopexit ], !dbg !2483
  call void @llvm.dbg.value(metadata i64 %room.2, metadata !360, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i64 %count.1, metadata !359, metadata !DIExpression()), !dbg !2483
  br label %while.cond

while.end70:                                      ; preds = %while.cond
  %count.0.lcssa = phi i64 [ %count.0, %while.cond ], !dbg !2508
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !359, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !359, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !359, metadata !DIExpression()), !dbg !2483
  %call71 = call i32 @fclose(%struct._IO_FILE* nonnull %call8) #8, !dbg !2558
  %.pre = load i8**, i8*** %name_map, align 8, !dbg !2559
  br label %if.end72, !dbg !2560

if.end72:                                         ; preds = %if.end, %while.end70
  %15 = phi i8** [ %.pre, %while.end70 ], [ %5, %if.end ], !dbg !2559
  %count.2 = phi i64 [ %count.0.lcssa, %while.end70 ], [ 0, %if.end ], !dbg !2508
  call void @llvm.dbg.value(metadata i64 %count.2, metadata !359, metadata !DIExpression()), !dbg !2483
  %arrayidx74 = getelementptr inbounds i8*, i8** %15, i64 %count.2, !dbg !2561
  store i8* null, i8** %arrayidx74, align 8, !dbg !2562
  ret void, !dbg !2563
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #5

declare dso_local i8* @xstrdup(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc %struct.cpp_dir* @make_cpp_dir(%struct.cpp_reader* %pfile, i8* %dir_name, i32 %sysp) unnamed_addr #2 !dbg !2564 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2568, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8* %dir_name, metadata !2569, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i32 %sysp, metadata !2570, metadata !DIExpression()), !dbg !2574
  %dir_hash = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 20, !dbg !2575
  %0 = load %struct.htab*, %struct.htab** %dir_hash, align 8, !dbg !2575
  %call = tail call i32 @htab_hash_string(i8* %dir_name) #8, !dbg !2576
  %call2 = tail call i8** @htab_find_slot_with_hash(%struct.htab* %0, i8* %dir_name, i32 %call, i32 1) #8, !dbg !2577
  %1 = bitcast i8** %call2 to %struct.file_hash_entry**, !dbg !2578
  call void @llvm.dbg.value(metadata %struct.file_hash_entry** %1, metadata !2572, metadata !DIExpression()), !dbg !2574
  br label %for.cond, !dbg !2579

for.cond:                                         ; preds = %for.inc, %entry
  %entry1.0.in = phi %struct.file_hash_entry** [ %1, %entry ], [ %next, %for.inc ]
  %entry1.0 = load %struct.file_hash_entry*, %struct.file_hash_entry** %entry1.0.in, align 8, !dbg !2581
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %entry1.0, metadata !2571, metadata !DIExpression()), !dbg !2574
  %tobool = icmp eq %struct.file_hash_entry* %entry1.0, null, !dbg !2582
  br i1 %tobool, label %for.end, label %for.body, !dbg !2582

for.body:                                         ; preds = %for.cond
  %start_dir = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %entry1.0, i64 0, i32 1, !dbg !2583
  %2 = load %struct.cpp_dir*, %struct.cpp_dir** %start_dir, align 8, !dbg !2583
  %cmp = icmp eq %struct.cpp_dir* %2, null, !dbg !2586
  br i1 %cmp, label %if.then, label %for.inc, !dbg !2587

if.then:                                          ; preds = %for.body
  %entry1.0.lcssa3 = phi %struct.file_hash_entry* [ %entry1.0, %for.body ], !dbg !2581
  %u = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %entry1.0.lcssa3, i64 0, i32 3, !dbg !2588
  %dir3 = bitcast %union.anon.1* %u to %struct.cpp_dir**, !dbg !2589
  %3 = load %struct.cpp_dir*, %struct.cpp_dir** %dir3, align 8, !dbg !2589
  br label %cleanup, !dbg !2590

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %entry1.0, i64 0, i32 0, !dbg !2591
  br label %for.cond, !dbg !2592, !llvm.loop !2593

for.end:                                          ; preds = %for.cond
  %call4 = tail call i8* @xcalloc(i64 1, i64 64) #8, !dbg !2595
  %4 = bitcast i8* %call4 to %struct.cpp_dir*, !dbg !2595
  call void @llvm.dbg.value(metadata %struct.cpp_dir* %4, metadata !2573, metadata !DIExpression()), !dbg !2574
  %quote_include = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 14, !dbg !2596
  %5 = bitcast %struct.cpp_dir** %quote_include to i64*, !dbg !2596
  %6 = load i64, i64* %5, align 8, !dbg !2596
  %7 = bitcast i8* %call4 to i64*, !dbg !2597
  store i64 %6, i64* %7, align 8, !dbg !2597
  %name = getelementptr inbounds i8, i8* %call4, i64 8, !dbg !2598
  %8 = bitcast i8* %name to i8**, !dbg !2598
  store i8* %dir_name, i8** %8, align 8, !dbg !2599
  %call6 = tail call i64 @strlen(i8* %dir_name) #11, !dbg !2600
  %conv = trunc i64 %call6 to i32, !dbg !2600
  %len = getelementptr inbounds i8, i8* %call4, i64 16, !dbg !2601
  %9 = bitcast i8* %len to i32*, !dbg !2601
  store i32 %conv, i32* %9, align 8, !dbg !2602
  %conv7 = trunc i32 %sysp to i8, !dbg !2603
  %10 = getelementptr inbounds i8, i8* %call4, i64 20, !dbg !2604
  store i8 %conv7, i8* %10, align 4, !dbg !2605
  %construct = getelementptr inbounds i8, i8* %call4, i64 40, !dbg !2606
  %11 = bitcast i8* %construct to i8* (i8*, %struct.cpp_dir*)**, !dbg !2606
  store i8* (i8*, %struct.cpp_dir*)* null, i8* (i8*, %struct.cpp_dir*)** %11, align 8, !dbg !2607
  %call9 = tail call fastcc %struct.file_hash_entry* @new_file_hash_entry(%struct.cpp_reader* %pfile) #10, !dbg !2608
  call void @llvm.dbg.value(metadata %struct.file_hash_entry* %call9, metadata !2571, metadata !DIExpression()), !dbg !2574
  %12 = bitcast i8** %call2 to i64*, !dbg !2609
  %13 = load i64, i64* %12, align 8, !dbg !2609
  %14 = bitcast %struct.file_hash_entry* %call9 to i64*, !dbg !2610
  store i64 %13, i64* %14, align 8, !dbg !2610
  %start_dir11 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %call9, i64 0, i32 1, !dbg !2611
  store %struct.cpp_dir* null, %struct.cpp_dir** %start_dir11, align 8, !dbg !2612
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !2613
  %15 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !2613
  %highest_location = getelementptr inbounds %struct.line_maps, %struct.line_maps* %15, i64 0, i32 7, !dbg !2614
  %16 = load i32, i32* %highest_location, align 8, !dbg !2614
  %location = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %call9, i64 0, i32 2, !dbg !2615
  store i32 %16, i32* %location, align 8, !dbg !2616
  %u12 = getelementptr inbounds %struct.file_hash_entry, %struct.file_hash_entry* %call9, i64 0, i32 3, !dbg !2617
  %17 = bitcast %union.anon.1* %u12 to i8**, !dbg !2618
  store i8* %call4, i8** %17, align 8, !dbg !2618
  store %struct.file_hash_entry* %call9, %struct.file_hash_entry** %1, align 8, !dbg !2619
  br label %cleanup, !dbg !2620

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi %struct.cpp_dir* [ %3, %if.then ], [ %4, %for.end ], !dbg !2574
  ret %struct.cpp_dir* %retval.0, !dbg !2621
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #4

declare dso_local %struct._IO_FILE* @fopen_unlocked(i8*, i8*) local_unnamed_addr #1

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i8* @read_filename_string(i32 %ch, %struct._IO_FILE* %f) unnamed_addr #2 !dbg !2622 {
entry:
  call void @llvm.dbg.value(metadata i32 %ch, metadata !2626, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !2627, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 20, metadata !2630, metadata !DIExpression()), !dbg !2631
  %call = tail call i8* @xmalloc(i64 21) #8, !dbg !2632
  call void @llvm.dbg.value(metadata i8* %call, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %call, metadata !2629, metadata !DIExpression()), !dbg !2631
  %and = and i32 %ch, 255, !dbg !2633
  %idxprom = zext i32 %and to i64, !dbg !2633
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2633
  %0 = load i16, i16* %arrayidx, align 2, !dbg !2633
  %1 = and i16 %0, 3072, !dbg !2633
  %tobool = icmp eq i16 %1, 0, !dbg !2633
  br i1 %tobool, label %if.then, label %if.end23, !dbg !2635

if.then:                                          ; preds = %entry
  %conv3 = trunc i32 %ch to i8, !dbg !2636
  call void @llvm.dbg.value(metadata i8* %call, metadata !2629, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2631
  store i8 %conv3, i8* %call, align 1, !dbg !2638
  br label %while.cond, !dbg !2639

while.cond:                                       ; preds = %if.end, %if.then
  %call.pn = phi i8* [ %call, %if.then ], [ %set.1, %if.end ]
  %alloc.0 = phi i8* [ %call, %if.then ], [ %alloc.1, %if.end ], !dbg !2631
  %len.0 = phi i32 [ 20, %if.then ], [ %len.1, %if.end ], !dbg !2631
  %set.0 = getelementptr inbounds i8, i8* %call.pn, i64 1, !dbg !2640
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !2630, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %alloc.0, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %set.0, metadata !2629, metadata !DIExpression()), !dbg !2631
  %call4 = tail call i32 @getc(%struct._IO_FILE* %f) #8, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %call4, metadata !2626, metadata !DIExpression()), !dbg !2631
  %cmp = icmp eq i32 %call4, -1, !dbg !2642
  br i1 %cmp, label %if.end23.loopexit, label %land.rhs, !dbg !2643

land.rhs:                                         ; preds = %while.cond
  %and6 = and i32 %call4, 255, !dbg !2644
  %idxprom7 = zext i32 %and6 to i64, !dbg !2644
  %arrayidx8 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom7, !dbg !2644
  %2 = load i16, i16* %arrayidx8, align 2, !dbg !2644
  %3 = and i16 %2, 3072, !dbg !2644
  %tobool11 = icmp eq i16 %3, 0, !dbg !2645
  br i1 %tobool11, label %while.body, label %if.end23.loopexit, !dbg !2639

while.body:                                       ; preds = %land.rhs
  %sub.ptr.lhs.cast = ptrtoint i8* %set.0 to i64, !dbg !2646
  %sub.ptr.rhs.cast = ptrtoint i8* %alloc.0 to i64, !dbg !2646
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2646
  %conv12 = sext i32 %len.0 to i64, !dbg !2649
  %cmp13 = icmp eq i64 %sub.ptr.sub, %conv12, !dbg !2650
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !2651

if.then15:                                        ; preds = %while.body
  %mul16 = shl nsw i32 %len.0, 1, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %mul16, metadata !2630, metadata !DIExpression()), !dbg !2631
  %add17 = or i32 %mul16, 1, !dbg !2654
  %conv18 = sext i32 %add17 to i64, !dbg !2654
  %call20 = tail call i8* @xrealloc(i8* %alloc.0, i64 %conv18) #8, !dbg !2654
  call void @llvm.dbg.value(metadata i8* %call20, metadata !2628, metadata !DIExpression()), !dbg !2631
  %add.ptr = getelementptr inbounds i8, i8* %call20, i64 %sub.ptr.sub, !dbg !2655
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2629, metadata !DIExpression()), !dbg !2631
  br label %if.end, !dbg !2656

if.end:                                           ; preds = %if.then15, %while.body
  %set.1 = phi i8* [ %add.ptr, %if.then15 ], [ %set.0, %while.body ], !dbg !2640
  %alloc.1 = phi i8* [ %call20, %if.then15 ], [ %alloc.0, %while.body ], !dbg !2631
  %len.1 = phi i32 [ %mul16, %if.then15 ], [ %len.0, %while.body ], !dbg !2631
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !2630, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %alloc.1, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %set.1, metadata !2629, metadata !DIExpression()), !dbg !2631
  %conv21 = trunc i32 %call4 to i8, !dbg !2657
  call void @llvm.dbg.value(metadata i8* %set.1, metadata !2629, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2631
  store i8 %conv21, i8* %set.1, align 1, !dbg !2658
  br label %while.cond, !dbg !2639, !llvm.loop !2659

if.end23.loopexit:                                ; preds = %land.rhs, %while.cond
  %alloc.0.lcssa = phi i8* [ %alloc.0, %land.rhs ], [ %alloc.0, %while.cond ], !dbg !2631
  %set.0.lcssa = phi i8* [ %set.0, %land.rhs ], [ %set.0, %while.cond ], !dbg !2640
  %call4.lcssa = phi i32 [ %call4, %land.rhs ], [ %call4, %while.cond ], !dbg !2641
  call void @llvm.dbg.value(metadata i8* %alloc.0.lcssa, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %alloc.0.lcssa, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %alloc.0.lcssa, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %alloc.0.lcssa, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %alloc.0.lcssa, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %alloc.0.lcssa, metadata !2628, metadata !DIExpression()), !dbg !2631
  br label %if.end23, !dbg !2661

if.end23:                                         ; preds = %if.end23.loopexit, %entry
  %set.2 = phi i8* [ %call, %entry ], [ %set.0.lcssa, %if.end23.loopexit ], !dbg !2631
  %alloc.2 = phi i8* [ %call, %entry ], [ %alloc.0.lcssa, %if.end23.loopexit ], !dbg !2662
  %ch.addr.0 = phi i32 [ %ch, %entry ], [ %call4.lcssa, %if.end23.loopexit ]
  call void @llvm.dbg.value(metadata i32 %ch.addr.0, metadata !2626, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %alloc.2, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8* %set.2, metadata !2629, metadata !DIExpression()), !dbg !2631
  store i8 0, i8* %set.2, align 1, !dbg !2661
  %call24 = tail call i32 @ungetc(i32 %ch.addr.0, %struct._IO_FILE* %f) #8, !dbg !2663
  ret i8* %alloc.2, !dbg !2664
}

declare dso_local i32 @ungetc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define available_externally dso_local i32 @stat(i8* nonnull %__path, %struct.stat* nonnull %__statbuf) local_unnamed_addr #0 !dbg !2665 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2670, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2671, metadata !DIExpression()), !dbg !2672
  %call = tail call i32 @__xstat(i32 1, i8* nonnull %__path, %struct.stat* nonnull %__statbuf) #8, !dbg !2673
  ret i32 %call, !dbg !2674
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @validate_pch(%struct.cpp_reader* %pfile, %struct._cpp_file* %file, i8* %pchname) unnamed_addr #2 !dbg !2675 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2679, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !2680, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8* %pchname, metadata !2681, metadata !DIExpression()), !dbg !2689
  %path = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !2690
  %0 = bitcast i8** %path to i64*, !dbg !2690
  %1 = load i64, i64* %0, align 8, !dbg !2690
  call void @llvm.dbg.value(metadata i8 0, metadata !2683, metadata !DIExpression()), !dbg !2689
  store i8* %pchname, i8** %path, align 8, !dbg !2691
  %call = tail call fastcc zeroext i8 @open_file(%struct._cpp_file* %file) #10, !dbg !2692
  %tobool = icmp eq i8 %call, 0, !dbg !2692
  br i1 %tobool, label %if.end16, label %if.then, !dbg !2693

if.then:                                          ; preds = %entry
  %valid_pch = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 8, !dbg !2694
  %2 = load i32 (%struct.cpp_reader*, i8*, i32)*, i32 (%struct.cpp_reader*, i8*, i32)** %valid_pch, align 8, !dbg !2694
  %fd = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 10, !dbg !2695
  %3 = load i32, i32* %fd, align 8, !dbg !2695
  %call2 = tail call i32 %2(%struct.cpp_reader* %pfile, i8* %pchname, i32 %3) #8, !dbg !2696
  %4 = trunc i32 %call2 to i8, !dbg !2697
  %conv = and i8 %4, 1, !dbg !2697
  call void @llvm.dbg.value(metadata i8 %conv, metadata !2683, metadata !DIExpression()), !dbg !2689
  %tobool3 = icmp eq i8 %conv, 0, !dbg !2698
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !2700

if.then4:                                         ; preds = %if.then
  %5 = load i32, i32* %fd, align 8, !dbg !2701
  %call6 = tail call i32 @close(i32 %5) #8, !dbg !2703
  store i32 -1, i32* %fd, align 8, !dbg !2704
  br label %if.end, !dbg !2705

if.end:                                           ; preds = %if.then, %if.then4
  %print_include_names = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 11, !dbg !2706
  %6 = load i8, i8* %print_include_names, align 1, !dbg !2706
  %tobool8 = icmp eq i8 %6, 0, !dbg !2706
  br i1 %tobool8, label %if.end16, label %for.cond.preheader, !dbg !2707

for.cond.preheader:                               ; preds = %if.end
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !2708
  br label %for.cond, !dbg !2711

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0 = phi i32 [ %inc, %for.body ], [ 1, %for.cond.preheader ], !dbg !2712
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2684, metadata !DIExpression()), !dbg !2713
  %7 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !2714
  %depth = getelementptr inbounds %struct.line_maps, %struct.line_maps* %7, i64 0, i32 5, !dbg !2715
  %8 = load i32, i32* %depth, align 8, !dbg !2715
  %cmp = icmp ult i32 %i.0, %8, !dbg !2716
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2713
  br i1 %cmp, label %for.body, label %for.end, !dbg !2711

for.body:                                         ; preds = %for.cond
  %call11 = tail call i32 @putc(i32 46, %struct._IO_FILE* %9) #8, !dbg !2717
  %inc = add i32 %i.0, 1, !dbg !2718
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2684, metadata !DIExpression()), !dbg !2713
  br label %for.cond, !dbg !2719, !llvm.loop !2720

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct._IO_FILE* [ %9, %for.cond ], !dbg !2713
  %cond = select i1 %tobool3, i32 120, i32 33, !dbg !2722
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.lcssa, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %cond, i8* %pchname) #8, !dbg !2723
  br label %if.end16, !dbg !2724

if.end16:                                         ; preds = %if.end, %entry, %for.end
  %valid.0 = phi i8 [ 0, %entry ], [ %conv, %for.end ], [ %conv, %if.end ], !dbg !2689
  call void @llvm.dbg.value(metadata i8 %valid.0, metadata !2683, metadata !DIExpression()), !dbg !2689
  store i64 %1, i64* %0, align 8, !dbg !2725
  ret i8 %valid.0, !dbg !2726
}

declare dso_local %struct.__dirstream* @opendir(i8*) local_unnamed_addr #1

declare dso_local %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #1

declare dso_local i32 @closedir(%struct.__dirstream*) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @read_file(%struct.cpp_reader* %pfile, %struct._cpp_file* %file) unnamed_addr #2 !dbg !2727 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2731, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !2732, metadata !DIExpression()), !dbg !2733
  %buffer_valid = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 16, !dbg !2734
  %0 = load i8, i8* %buffer_valid, align 1, !dbg !2734
  %tobool = icmp eq i8 %0, 0, !dbg !2736
  br i1 %tobool, label %if.end, label %return, !dbg !2737

if.end:                                           ; preds = %entry
  %dont_read = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 14, !dbg !2738
  %1 = load i8, i8* %dont_read, align 1, !dbg !2738
  %tobool1 = icmp eq i8 %1, 0, !dbg !2740
  br i1 %tobool1, label %lor.lhs.false, label %return, !dbg !2741

lor.lhs.false:                                    ; preds = %if.end
  %err_no = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 11, !dbg !2742
  %2 = load i32, i32* %err_no, align 4, !dbg !2742
  %tobool2 = icmp eq i32 %2, 0, !dbg !2743
  br i1 %tobool2, label %if.end4, label %return, !dbg !2744

if.end4:                                          ; preds = %lor.lhs.false
  %fd = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 10, !dbg !2745
  %3 = load i32, i32* %fd, align 8, !dbg !2745
  %cmp = icmp eq i32 %3, -1, !dbg !2747
  br i1 %cmp, label %land.lhs.true, label %if.end8, !dbg !2748

land.lhs.true:                                    ; preds = %if.end4
  %call = tail call fastcc zeroext i8 @open_file(%struct._cpp_file* %file) #10, !dbg !2749
  %tobool6 = icmp eq i8 %call, 0, !dbg !2749
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !2750

if.then7:                                         ; preds = %land.lhs.true
  tail call fastcc void @open_file_failed(%struct.cpp_reader* %pfile, %struct._cpp_file* %file, i32 0) #10, !dbg !2751
  br label %return, !dbg !2753

if.end8:                                          ; preds = %land.lhs.true, %if.end4
  %call9 = tail call fastcc zeroext i8 @read_file_guts(%struct.cpp_reader* %pfile, %struct._cpp_file* %file) #10, !dbg !2754
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2755
  %conv11 = zext i1 %tobool10 to i8, !dbg !2755
  store i8 %conv11, i8* %dont_read, align 1, !dbg !2756
  %4 = load i32, i32* %fd, align 8, !dbg !2757
  %call14 = tail call i32 @close(i32 %4) #8, !dbg !2758
  store i32 -1, i32* %fd, align 8, !dbg !2759
  %5 = load i8, i8* %dont_read, align 1, !dbg !2760
  %tobool17 = icmp eq i8 %5, 0, !dbg !2761
  %conv20 = zext i1 %tobool17 to i8, !dbg !2761
  br label %return, !dbg !2762

return:                                           ; preds = %lor.lhs.false, %if.end, %entry, %if.end8, %if.then7
  %retval.0 = phi i8 [ %conv20, %if.end8 ], [ 0, %if.then7 ], [ 1, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], !dbg !2733
  ret i8 %retval.0, !dbg !2763
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @check_file_against_entries(%struct.cpp_reader* %pfile, %struct._cpp_file* %f, i8 zeroext %check_included) unnamed_addr #2 !dbg !2764 {
entry:
  %d = alloca %struct.pchf_compare_data, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2766, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata %struct._cpp_file* %f, metadata !2767, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i8 %check_included, metadata !2768, metadata !DIExpression()), !dbg !2770
  %0 = bitcast %struct.pchf_compare_data* %d to i8*, !dbg !2771
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #9, !dbg !2771
  %1 = load %struct.pchf_data*, %struct.pchf_data** @pchf, align 8, !dbg !2772
  %cmp = icmp eq %struct.pchf_data* %1, null, !dbg !2774
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !2775

lor.lhs.false:                                    ; preds = %entry
  %tobool = icmp eq i8 %check_included, 0, !dbg !2776
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2777

land.lhs.true:                                    ; preds = %lor.lhs.false
  %have_once_only = getelementptr inbounds %struct.pchf_data, %struct.pchf_data* %1, i64 0, i32 1, !dbg !2778
  %2 = load i8, i8* %have_once_only, align 8, !dbg !2778
  %tobool1 = icmp eq i8 %2, 0, !dbg !2779
  br i1 %tobool1, label %cleanup, label %if.end, !dbg !2780

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %st_size = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %f, i64 0, i32 9, i32 8, !dbg !2781
  %3 = load i64, i64* %st_size, align 8, !dbg !2781
  %size = getelementptr inbounds %struct.pchf_compare_data, %struct.pchf_compare_data* %d, i64 0, i32 0, !dbg !2782
  store i64 %3, i64* %size, align 8, !dbg !2783
  %sum_computed = getelementptr inbounds %struct.pchf_compare_data, %struct.pchf_compare_data* %d, i64 0, i32 2, !dbg !2784
  store i8 0, i8* %sum_computed, align 8, !dbg !2785
  %f2 = getelementptr inbounds %struct.pchf_compare_data, %struct.pchf_compare_data* %d, i64 0, i32 4, !dbg !2786
  store %struct._cpp_file* %f, %struct._cpp_file** %f2, align 8, !dbg !2787
  %check_included3 = getelementptr inbounds %struct.pchf_compare_data, %struct.pchf_compare_data* %d, i64 0, i32 3, !dbg !2788
  store i8 %check_included, i8* %check_included3, align 1, !dbg !2789
  %arraydecay = getelementptr inbounds %struct.pchf_data, %struct.pchf_data* %1, i64 0, i32 2, i64 0, !dbg !2790
  %4 = bitcast %struct.pchf_entry* %arraydecay to i8*, !dbg !2790
  %count = getelementptr inbounds %struct.pchf_data, %struct.pchf_data* %1, i64 0, i32 0, !dbg !2791
  %5 = load i64, i64* %count, align 8, !dbg !2791
  %call = call i8* @bsearch(i8* %0, i8* %4, i64 %5, i64 32, i32 (i8*, i8*)* @pchf_compare) #10, !dbg !2792
  %cmp4 = icmp ne i8* %call, null, !dbg !2793
  %conv5 = zext i1 %cmp4 to i8, !dbg !2792
  br label %cleanup, !dbg !2794

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end
  %retval.0 = phi i8 [ %conv5, %if.end ], [ 0, %land.lhs.true ], [ 0, %entry ], !dbg !2770
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #9, !dbg !2795
  ret i8 %retval.0, !dbg !2795
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @destroy_cpp_file(%struct._cpp_file* %file) unnamed_addr #2 !dbg !2796 {
entry:
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !2800, metadata !DIExpression()), !dbg !2801
  %buffer_start = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 6, !dbg !2802
  %0 = load i8*, i8** %buffer_start, align 8, !dbg !2802
  %tobool = icmp eq i8* %0, null, !dbg !2804
  br i1 %tobool, label %if.end, label %if.then, !dbg !2805

if.then:                                          ; preds = %entry
  tail call void @free(i8* nonnull %0) #8, !dbg !2806
  br label %if.end, !dbg !2806

if.end:                                           ; preds = %entry, %if.then
  %name = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 0, !dbg !2807
  %1 = load i8*, i8** %name, align 8, !dbg !2807
  tail call void @free(i8* %1) #8, !dbg !2808
  %2 = bitcast %struct._cpp_file* %file to i8*, !dbg !2809
  tail call void @free(i8* %2) #8, !dbg !2810
  ret void, !dbg !2811
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @read_file_guts(%struct.cpp_reader* %pfile, %struct._cpp_file* %file) unnamed_addr #2 !dbg !2812 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2814, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !2815, metadata !DIExpression()), !dbg !2821
  %st_mode = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 9, i32 3, !dbg !2822
  %0 = load i32, i32* %st_mode, align 8, !dbg !2822
  %and = and i32 %0, 61440, !dbg !2822
  %cmp = icmp eq i32 %and, 24576, !dbg !2822
  br i1 %cmp, label %if.then, label %if.end, !dbg !2824

if.then:                                          ; preds = %entry
  %path = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !2825
  %1 = load i8*, i8** %path, align 8, !dbg !2825
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %1) #8, !dbg !2827
  br label %cleanup, !dbg !2828

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %and, 32768, !dbg !2829
  call void @llvm.dbg.value(metadata i1 %cmp4, metadata !2820, metadata !DIExpression()), !dbg !2821
  br i1 %cmp4, label %if.then6, label %if.end16, !dbg !2830

if.then6:                                         ; preds = %if.end
  %st_size15 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 9, i32 8, !dbg !2831
  %2 = load i64, i64* %st_size15, align 8, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %2, metadata !2816, metadata !DIExpression()), !dbg !2821
  br label %if.end16, !dbg !2834

if.end16:                                         ; preds = %if.end, %if.then6
  %size.0 = phi i64 [ %2, %if.then6 ], [ 8192, %if.end ], !dbg !2835
  call void @llvm.dbg.value(metadata i64 %size.0, metadata !2816, metadata !DIExpression()), !dbg !2821
  %add = add nsw i64 %size.0, 1, !dbg !2836
  %call17 = tail call i8* @xmalloc(i64 %add) #8, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %call17, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 0, metadata !2817, metadata !DIExpression()), !dbg !2821
  %fd = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 10, !dbg !2821
  br i1 %cmp4, label %if.end16.split.us, label %if.end16.if.end16.split_crit_edge, !dbg !2837

if.end16.if.end16.split_crit_edge:                ; preds = %if.end16
  br label %while.cond, !dbg !2837

if.end16.split.us:                                ; preds = %if.end16
  br label %while.cond.us, !dbg !2837

while.cond.us:                                    ; preds = %if.end32.us, %if.end16.split.us
  %total.0.us = phi i64 [ 0, %if.end16.split.us ], [ %add21.us, %if.end32.us ], !dbg !2821
  call void @llvm.dbg.value(metadata i8* %call17, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %size.0, metadata !2816, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %total.0.us, metadata !2817, metadata !DIExpression()), !dbg !2821
  %3 = load i32, i32* %fd, align 8, !dbg !2838
  %add.ptr.us = getelementptr inbounds i8, i8* %call17, i64 %total.0.us, !dbg !2839
  %sub.us = sub nsw i64 %size.0, %total.0.us, !dbg !2840
  %call18.us = tail call i64 @read(i32 %3, i8* %add.ptr.us, i64 %sub.us) #8, !dbg !2841
  call void @llvm.dbg.value(metadata i64 %call18.us, metadata !2818, metadata !DIExpression()), !dbg !2821
  %cmp19.us = icmp sgt i64 %call18.us, 0, !dbg !2842
  br i1 %cmp19.us, label %while.body.us, label %while.end.us-lcssa.us.loopexit, !dbg !2837

while.body.us:                                    ; preds = %while.cond.us
  %add21.us = add nsw i64 %total.0.us, %call18.us, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %add21.us, metadata !2817, metadata !DIExpression()), !dbg !2821
  %cmp22.us = icmp eq i64 %add21.us, %size.0, !dbg !2845
  br i1 %cmp22.us, label %if.then24.us, label %if.end32.us, !dbg !2847

if.then24.us:                                     ; preds = %while.body.us
  %call18.us.lcssa7 = phi i64 [ %call18.us, %while.body.us ], !dbg !2841
  br label %while.end.us-lcssa.us, !dbg !2848

if.end32.us:                                      ; preds = %while.body.us
  call void @llvm.dbg.value(metadata i8* %call17, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %size.0, metadata !2816, metadata !DIExpression()), !dbg !2821
  br label %while.cond.us, !dbg !2837, !llvm.loop !2850

while.end.us-lcssa.us.loopexit:                   ; preds = %while.cond.us
  %total.0.us.lcssa = phi i64 [ %total.0.us, %while.cond.us ], !dbg !2821
  %call18.us.lcssa = phi i64 [ %call18.us, %while.cond.us ], !dbg !2841
  call void @llvm.dbg.value(metadata i64 %total.0.us.lcssa, metadata !2817, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %total.0.us.lcssa, metadata !2817, metadata !DIExpression()), !dbg !2821
  br label %while.end.us-lcssa.us, !dbg !2852

while.end.us-lcssa.us:                            ; preds = %while.end.us-lcssa.us.loopexit, %if.then24.us
  %call18.us8 = phi i64 [ %call18.us.lcssa7, %if.then24.us ], [ %call18.us.lcssa, %while.end.us-lcssa.us.loopexit ]
  %total.1.ph.us = phi i64 [ %size.0, %if.then24.us ], [ %total.0.us.lcssa, %while.end.us-lcssa.us.loopexit ]
  br label %while.end, !dbg !2852

while.cond:                                       ; preds = %if.end32, %if.end16.if.end16.split_crit_edge
  %total.0 = phi i64 [ 0, %if.end16.if.end16.split_crit_edge ], [ %add21, %if.end32 ], !dbg !2821
  %size.1 = phi i64 [ %size.0, %if.end16.if.end16.split_crit_edge ], [ %size.2, %if.end32 ], !dbg !2821
  %buf.0 = phi i8* [ %call17, %if.end16.if.end16.split_crit_edge ], [ %buf.1, %if.end32 ], !dbg !2821
  call void @llvm.dbg.value(metadata i8* %buf.0, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %size.1, metadata !2816, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %total.0, metadata !2817, metadata !DIExpression()), !dbg !2821
  %4 = load i32, i32* %fd, align 8, !dbg !2838
  %add.ptr = getelementptr inbounds i8, i8* %buf.0, i64 %total.0, !dbg !2839
  %sub = sub nsw i64 %size.1, %total.0, !dbg !2840
  %call18 = tail call i64 @read(i32 %4, i8* %add.ptr, i64 %sub) #8, !dbg !2841
  call void @llvm.dbg.value(metadata i64 %call18, metadata !2818, metadata !DIExpression()), !dbg !2821
  %cmp19 = icmp sgt i64 %call18, 0, !dbg !2842
  br i1 %cmp19, label %while.body, label %while.end.us-lcssa, !dbg !2837

while.body:                                       ; preds = %while.cond
  %add21 = add nsw i64 %total.0, %call18, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %add21, metadata !2817, metadata !DIExpression()), !dbg !2821
  %cmp22 = icmp eq i64 %add21, %size.1, !dbg !2845
  br i1 %cmp22, label %if.then24, label %if.end32, !dbg !2847

if.then24:                                        ; preds = %while.body
  %mul28 = shl nsw i64 %size.1, 1, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %mul28, metadata !2816, metadata !DIExpression()), !dbg !2821
  %add29 = or i64 %mul28, 1, !dbg !2855
  %call31 = tail call i8* @xrealloc(i8* %buf.0, i64 %add29) #8, !dbg !2855
  call void @llvm.dbg.value(metadata i8* %call31, metadata !2819, metadata !DIExpression()), !dbg !2821
  br label %if.end32, !dbg !2856

if.end32:                                         ; preds = %if.then24, %while.body
  %size.2 = phi i64 [ %mul28, %if.then24 ], [ %size.1, %while.body ], !dbg !2821
  %buf.1 = phi i8* [ %call31, %if.then24 ], [ %buf.0, %while.body ], !dbg !2821
  call void @llvm.dbg.value(metadata i8* %buf.1, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %size.2, metadata !2816, metadata !DIExpression()), !dbg !2821
  br label %while.cond, !dbg !2837, !llvm.loop !2850

while.end.us-lcssa:                               ; preds = %while.cond
  %total.0.lcssa = phi i64 [ %total.0, %while.cond ], !dbg !2821
  %size.1.lcssa12 = phi i64 [ %size.1, %while.cond ], !dbg !2821
  %buf.0.lcssa11 = phi i8* [ %buf.0, %while.cond ], !dbg !2821
  %call18.lcssa10 = phi i64 [ %call18, %while.cond ], !dbg !2841
  call void @llvm.dbg.value(metadata i64 %total.0.lcssa, metadata !2817, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %size.1.lcssa12, metadata !2816, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %buf.0.lcssa11, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %total.0.lcssa, metadata !2817, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %size.1.lcssa12, metadata !2816, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %buf.0.lcssa11, metadata !2819, metadata !DIExpression()), !dbg !2821
  br label %while.end, !dbg !2852

while.end:                                        ; preds = %while.end.us-lcssa.us, %while.end.us-lcssa
  %size.1.lcssa = phi i64 [ %size.1.lcssa12, %while.end.us-lcssa ], [ %size.0, %while.end.us-lcssa.us ], !dbg !2821
  %buf.0.lcssa = phi i8* [ %buf.0.lcssa11, %while.end.us-lcssa ], [ %call17, %while.end.us-lcssa.us ], !dbg !2821
  %call18.lcssa = phi i64 [ %call18.lcssa10, %while.end.us-lcssa ], [ %call18.us8, %while.end.us-lcssa.us ], !dbg !2841
  %total.1 = phi i64 [ %total.0.lcssa, %while.end.us-lcssa ], [ %total.1.ph.us, %while.end.us-lcssa.us ], !dbg !2821
  call void @llvm.dbg.value(metadata i64 %size.1.lcssa, metadata !2816, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %size.1.lcssa, metadata !2816, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %buf.0.lcssa, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %buf.0.lcssa, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %total.1, metadata !2817, metadata !DIExpression()), !dbg !2821
  %cmp33 = icmp slt i64 %call18.lcssa, 0, !dbg !2852
  br i1 %cmp33, label %if.then35, label %if.end38, !dbg !2857

if.then35:                                        ; preds = %while.end
  %path36 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !2858
  %5 = load i8*, i8** %path36, align 8, !dbg !2858
  %call37 = tail call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 3, i8* %5) #8, !dbg !2860
  br label %cleanup, !dbg !2861

if.end38:                                         ; preds = %while.end
  %cmp41 = icmp ne i64 %total.1, %size.1.lcssa, !dbg !2862
  %or.cond = and i1 %cmp4, %cmp41, !dbg !2864
  br i1 %or.cond, label %if.then43, label %if.end46, !dbg !2864

if.then43:                                        ; preds = %if.end38
  %path44 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !2865
  %6 = load i8*, i8** %path44, align 8, !dbg !2865
  %call45 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* %6) #8, !dbg !2866
  br label %if.end46, !dbg !2866

if.end46:                                         ; preds = %if.then43, %if.end38
  %input_charset = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 39, !dbg !2867
  %7 = load i8*, i8** %input_charset, align 8, !dbg !2867
  %buffer_start = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 6, !dbg !2868
  %st_size48 = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 9, i32 8, !dbg !2869
  %call49 = tail call i8* @_cpp_convert_input(%struct.cpp_reader* %pfile, i8* %7, i8* %buf.0.lcssa, i64 %size.1.lcssa, i64 %total.1, i8** nonnull %buffer_start, i64* nonnull %st_size48) #8, !dbg !2870
  %buffer = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 5, !dbg !2871
  store i8* %call49, i8** %buffer, align 8, !dbg !2872
  %buffer_valid = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 16, !dbg !2873
  store i8 1, i8* %buffer_valid, align 1, !dbg !2874
  br label %cleanup, !dbg !2875

cleanup:                                          ; preds = %if.end46, %if.then35, %if.then
  %retval.0 = phi i8 [ 0, %if.then ], [ 0, %if.then35 ], [ 1, %if.end46 ], !dbg !2821
  ret i8 %retval.0, !dbg !2876
}

declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #1

declare dso_local zeroext i8 @cpp_errno(%struct.cpp_reader*, i32, i8*) local_unnamed_addr #1

declare dso_local i8* @_cpp_convert_input(%struct.cpp_reader*, i8*, i8*, i64, i64, i8**, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define available_externally dso_local i8* @bsearch(i8* nonnull %__key, i8* nonnull %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* nonnull %__compar) local_unnamed_addr #0 !dbg !2877 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2884, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2885, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2886, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2887, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2888, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 0, metadata !2889, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2890, metadata !DIExpression()), !dbg !2894
  br label %while.cond, !dbg !2895

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2896
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2894
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2890, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2889, metadata !DIExpression()), !dbg !2894
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2897
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2895

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2898
  %div = lshr i64 %add, 1, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %div, metadata !2891, metadata !DIExpression()), !dbg !2894
  %mul = mul i64 %div, %__size, !dbg !2901
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2902
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2892, metadata !DIExpression()), !dbg !2894
  %call = tail call i32 %__compar(i8* nonnull %__key, i8* nonnull %add.ptr) #8, !dbg !2903
  call void @llvm.dbg.value(metadata i32 %call, metadata !2893, metadata !DIExpression()), !dbg !2894
  %cmp1 = icmp slt i32 %call, 0, !dbg !2904
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2906

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2907
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2909

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2910
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2889, metadata !DIExpression()), !dbg !2894
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2894
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2894
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2890, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2889, metadata !DIExpression()), !dbg !2894
  br label %while.cond, !dbg !2895, !llvm.loop !2911

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2894
  ret i8* %retval.0, !dbg !2913
}

; Function Attrs: nounwind uwtable
define internal i32 @pchf_compare(i8* %d_p, i8* %e_p) #2 !dbg !2914 {
entry:
  call void @llvm.dbg.value(metadata i8* %d_p, metadata !2916, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8* %e_p, metadata !2917, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8* %e_p, metadata !2918, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8* %d_p, metadata !2919, metadata !DIExpression()), !dbg !2925
  %call = tail call i32 @memcmp(i8* %d_p, i8* %e_p, i64 8) #11, !dbg !2926
  call void @llvm.dbg.value(metadata i32 %call, metadata !2920, metadata !DIExpression()), !dbg !2925
  %cmp = icmp eq i32 %call, 0, !dbg !2927
  br i1 %cmp, label %if.end, label %cleanup, !dbg !2929

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds i8, i8* %d_p, i64 24, !dbg !2930
  %1 = load i8, i8* %0, align 8, !dbg !2930
  %tobool = icmp eq i8 %1, 0, !dbg !2931
  br i1 %tobool, label %if.then2, label %if.end6, !dbg !2932

if.then2:                                         ; preds = %if.end
  %f3 = getelementptr inbounds i8, i8* %d_p, i64 32, !dbg !2933
  %2 = bitcast i8* %f3 to %struct._cpp_file**, !dbg !2933
  %3 = load %struct._cpp_file*, %struct._cpp_file** %2, align 8, !dbg !2933
  call void @llvm.dbg.value(metadata %struct._cpp_file* %3, metadata !2921, metadata !DIExpression()), !dbg !2934
  %buffer = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %3, i64 0, i32 5, !dbg !2935
  %4 = load i8*, i8** %buffer, align 8, !dbg !2935
  %st_size = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %3, i64 0, i32 9, i32 8, !dbg !2936
  %5 = load i64, i64* %st_size, align 8, !dbg !2936
  %sum = getelementptr inbounds i8, i8* %d_p, i64 8, !dbg !2937
  %call4 = tail call i8* @md5_buffer(i8* %4, i64 %5, i8* nonnull %sum) #8, !dbg !2938
  store i8 1, i8* %0, align 8, !dbg !2939
  br label %if.end6, !dbg !2940

if.end6:                                          ; preds = %if.end, %if.then2
  %sum7 = getelementptr inbounds i8, i8* %d_p, i64 8, !dbg !2941
  %sum9 = getelementptr inbounds i8, i8* %e_p, i64 8, !dbg !2942
  %call11 = tail call i32 @memcmp(i8* nonnull %sum7, i8* nonnull %sum9, i64 16) #11, !dbg !2943
  call void @llvm.dbg.value(metadata i32 %call11, metadata !2920, metadata !DIExpression()), !dbg !2925
  %cmp12 = icmp eq i32 %call11, 0, !dbg !2944
  br i1 %cmp12, label %if.end14, label %cleanup, !dbg !2946

if.end14:                                         ; preds = %if.end6
  %6 = getelementptr inbounds i8, i8* %d_p, i64 25, !dbg !2947
  %7 = load i8, i8* %6, align 1, !dbg !2947
  %tobool15 = icmp eq i8 %7, 0, !dbg !2949
  br i1 %tobool15, label %lor.lhs.false, label %cleanup, !dbg !2950

lor.lhs.false:                                    ; preds = %if.end14
  %8 = getelementptr inbounds i8, i8* %e_p, i64 24, !dbg !2951
  %9 = load i8, i8* %8, align 8, !dbg !2951
  %tobool17 = icmp eq i8 %9, 0, !dbg !2952
  %spec.select = zext i1 %tobool17 to i32, !dbg !2953
  ret i32 %spec.select, !dbg !2953

cleanup:                                          ; preds = %if.end14, %if.end6, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %call11, %if.end6 ], [ 0, %if.end14 ], !dbg !2925
  ret i32 %retval.0, !dbg !2954
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @dir_name_of_file(%struct._cpp_file* %file) unnamed_addr #2 !dbg !2955 {
entry:
  call void @llvm.dbg.value(metadata %struct._cpp_file* %file, metadata !2959, metadata !DIExpression()), !dbg !2964
  %dir_name = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 3, !dbg !2965
  %0 = load i8*, i8** %dir_name, align 8, !dbg !2965
  %tobool = icmp eq i8* %0, null, !dbg !2966
  br i1 %tobool, label %if.then, label %if.end, !dbg !2967

if.then:                                          ; preds = %entry
  %path = getelementptr inbounds %struct._cpp_file, %struct._cpp_file* %file, i64 0, i32 1, !dbg !2968
  %1 = load i8*, i8** %path, align 8, !dbg !2968
  %call = tail call i8* @lbasename(i8* %1) #8, !dbg !2969
  %2 = bitcast i8** %path to i64*, !dbg !2970
  %3 = load i64, i64* %2, align 8, !dbg !2970
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64, !dbg !2971
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %3, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !2960, metadata !DIExpression()), !dbg !2972
  %add = add i64 %sub.ptr.sub, 1, !dbg !2973
  %call3 = tail call i8* @xmalloc(i64 %add) #8, !dbg !2973
  call void @llvm.dbg.value(metadata i8* %call3, metadata !2963, metadata !DIExpression()), !dbg !2972
  %4 = load i8*, i8** %path, align 8, !dbg !2974
  %call5 = tail call i8* @memcpy(i8* %call3, i8* %4, i64 %sub.ptr.sub) #8, !dbg !2975
  %arrayidx = getelementptr inbounds i8, i8* %call3, i64 %sub.ptr.sub, !dbg !2976
  store i8 0, i8* %arrayidx, align 1, !dbg !2977
  store i8* %call3, i8** %dir_name, align 8, !dbg !2978
  br label %if.end, !dbg !2979

if.end:                                           ; preds = %entry, %if.then
  %5 = phi i8* [ %0, %entry ], [ %call3, %if.then ], !dbg !2980
  ret i8* %5, !dbg !2981
}

declare dso_local i8* @lbasename(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() local_unnamed_addr #6

declare dso_local i32 @open(i8*, i32, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define available_externally dso_local i32 @fstat(i32 %__fd, %struct.stat* nonnull %__statbuf) local_unnamed_addr #0 !dbg !2982 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2986, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2987, metadata !DIExpression()), !dbg !2988
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* nonnull %__statbuf) #8, !dbg !2989
  ret i32 %call, !dbg !2990
}

; Function Attrs: nounwind
declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone speculatable }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin }
attributes #11 = { nobuiltin nounwind readonly }
attributes #12 = { nobuiltin nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!898, !899, !900}
!llvm.ident = !{!901}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pchf", scope: !2, file: !3, line: 1677, type: !252, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !56, globals: !298, nameTableKind: None)
!3 = !DIFile(filename: "cpp_files.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "include_type", file: !43, line: 119, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./internal.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "IT_INCLUDE", value: 0, isUnsigned: true)
!46 = !DIEnumerator(name: "IT_INCLUDE_NEXT", value: 1, isUnsigned: true)
!47 = !DIEnumerator(name: "IT_IMPORT", value: 2, isUnsigned: true)
!48 = !DIEnumerator(name: "IT_CMDLINE", value: 3, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lc_reason", file: !50, line: 36, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "LC_ENTER", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "LC_LEAVE", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "LC_RENAME", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "LC_RENAME_VERBATIM", value: 3, isUnsigned: true)
!56 = !{!57, !58, !71, !59, !244, !247, !250, !252, !80, !79, !156, !64, !269, !271, !272, !274, !101, !282, !291, !296}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_hash_entry", file: !3, line: 157, size: 256, elements: !61)
!61 = !{!62, !63, !95, !97}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !60, file: !3, line: 159, baseType: !59, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "start_dir", scope: !60, file: !3, line: 160, baseType: !64, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !6, line: 39, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !6, line: 523, size: 512, elements: !67)
!67 = !{!68, !70, !73, !74, !76, !77, !78, !82, !86, !92}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !66, file: !6, line: 526, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !66, file: !6, line: 529, baseType: !71, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !66, file: !6, line: 530, baseType: !7, size: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !66, file: !6, line: 534, baseType: !75, size: 8, offset: 160)
!75 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !66, file: !6, line: 537, baseType: !75, size: 8, offset: 168)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !66, file: !6, line: 541, baseType: !71, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !66, file: !6, line: 545, baseType: !79, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !66, file: !6, line: 551, baseType: !83, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!71, !80, !64}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !66, file: !6, line: 555, baseType: !87, size: 64, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !88, line: 47, baseType: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !90, line: 148, baseType: !91)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!91 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !66, file: !6, line: 556, baseType: !93, size: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !88, line: 59, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !90, line: 145, baseType: !91)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !60, file: !3, line: 161, baseType: !96, size: 32, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !50, line: 44, baseType: !7)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !60, file: !3, line: 166, baseType: !98, size: 64, offset: 192)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !3, line: 162, size: 64, elements: !99)
!99 = !{!100, !243}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !98, file: !3, line: 164, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_file", file: !43, line: 560, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_file", file: !3, line: 71, size: 1856, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !111, !114, !115, !198, !199, !236, !237, !238, !239, !240, !241, !242}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !3, line: 74, baseType: !80, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !103, file: !3, line: 77, baseType: !80, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "pchname", scope: !103, file: !3, line: 80, baseType: !80, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "dir_name", scope: !103, file: !3, line: 84, baseType: !80, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next_file", scope: !103, file: !3, line: 87, baseType: !110, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !103, file: !3, line: 90, baseType: !112, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !103, file: !3, line: 94, baseType: !112, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "cmacro", scope: !103, file: !3, line: 97, baseType: !116, size: 64, offset: 448)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_hashnode", file: !6, line: 36, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_hashnode", file: !6, line: 644, size: 256, elements: !120)
!120 = !{!121, !128, !129, !130, !131, !132, !133}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !119, file: !6, line: 645, baseType: !122, size: 128)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !123, line: 31, size: 128, elements: !124)
!123 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!124 = !{!125, !126, !127}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !122, file: !123, line: 32, baseType: !112, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !122, file: !123, line: 33, baseType: !7, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !122, file: !123, line: 34, baseType: !7, size: 32, offset: 96)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !119, file: !6, line: 646, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !119, file: !6, line: 647, baseType: !7, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !119, file: !6, line: 650, baseType: !75, size: 8, offset: 136)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !6, line: 651, baseType: !7, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !6, line: 652, baseType: !7, size: 10, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !119, file: !6, line: 654, baseType: !134, size: 64, offset: 192)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_cpp_hashnode_value", file: !6, line: 633, size: 64, elements: !135)
!135 = !{!136, !186, !196, !197}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !134, file: !6, line: 635, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_macro", file: !6, line: 37, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro", file: !140, line: 36, size: 256, elements: !141)
!140 = !DIFile(filename: "./cpp-id-data.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!141 = !{!142, !145, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !139, file: !140, line: 42, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !139, file: !140, line: 51, baseType: !146, size: 64, offset: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_macro_u", file: !140, line: 47, size: 64, elements: !147)
!147 = !{!148, !176}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "tokens", scope: !146, file: !140, line: 49, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !6, line: 34, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !6, line: 212, size: 192, elements: !152)
!152 = !{!153, !154, !155, !157}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !151, file: !6, line: 213, baseType: !96, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !6, line: 214, baseType: !7, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !151, file: !6, line: 215, baseType: !156, size: 16, offset: 48)
!156 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !151, file: !6, line: 237, baseType: !158, size: 128, offset: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_token_u", file: !6, line: 217, size: 128, elements: !159)
!159 = !{!160, !164, !165, !170, !174, !175}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !158, file: !6, line: 220, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_identifier", file: !6, line: 201, size: 64, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !161, file: !6, line: 207, baseType: !144, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !158, file: !6, line: 223, baseType: !149, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !158, file: !6, line: 226, baseType: !166, size: 128)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !6, line: 162, size: 128, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !166, file: !6, line: 163, baseType: !7, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !166, file: !6, line: 164, baseType: !112, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !158, file: !6, line: 229, baseType: !171, size: 32)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !6, line: 195, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !171, file: !6, line: 197, baseType: !7, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !158, file: !6, line: 233, baseType: !7, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !158, file: !6, line: 236, baseType: !7, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !146, file: !140, line: 50, baseType: !112, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !139, file: !140, line: 54, baseType: !96, size: 32, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !139, file: !140, line: 57, baseType: !7, size: 32, offset: 160)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "paramc", scope: !139, file: !140, line: 60, baseType: !156, size: 16, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "fun_like", scope: !139, file: !140, line: 63, baseType: !7, size: 1, offset: 208, flags: DIFlagBitField, extraData: i64 208)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "variadic", scope: !139, file: !140, line: 66, baseType: !7, size: 1, offset: 209, flags: DIFlagBitField, extraData: i64 208)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "syshdr", scope: !139, file: !140, line: 69, baseType: !7, size: 1, offset: 210, flags: DIFlagBitField, extraData: i64 208)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !139, file: !140, line: 72, baseType: !7, size: 1, offset: 211, flags: DIFlagBitField, extraData: i64 208)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !139, file: !140, line: 75, baseType: !7, size: 1, offset: 212, flags: DIFlagBitField, extraData: i64 208)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "extra_tokens", scope: !139, file: !140, line: 80, baseType: !7, size: 1, offset: 213, flags: DIFlagBitField, extraData: i64 208)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "answers", scope: !134, file: !6, line: 637, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !140, line: 28, size: 320, elements: !189)
!189 = !{!190, !191, !192}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !140, line: 29, baseType: !187, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !188, file: !140, line: 30, baseType: !7, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !188, file: !140, line: 31, baseType: !193, size: 192, offset: 128)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 192, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 1)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !134, file: !6, line: 639, baseType: !5, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !134, file: !6, line: 641, baseType: !156, size: 16)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !103, file: !3, line: 102, baseType: !64, size: 64, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !103, file: !3, line: 105, baseType: !200, size: 1152, offset: 576)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !201, line: 46, size: 1152, elements: !202)
!201 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!202 = !{!203, !204, !205, !207, !209, !211, !213, !215, !216, !219, !221, !223, !225, !227, !228, !229, !230, !231}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !200, file: !201, line: 48, baseType: !94, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !200, file: !201, line: 53, baseType: !89, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !200, file: !201, line: 61, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !90, line: 151, baseType: !91)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !200, file: !201, line: 62, baseType: !208, size: 32, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !90, line: 150, baseType: !7)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !200, file: !201, line: 64, baseType: !210, size: 32, offset: 224)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !90, line: 146, baseType: !7)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !200, file: !201, line: 65, baseType: !212, size: 32, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !90, line: 147, baseType: !7)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !200, file: !201, line: 67, baseType: !214, size: 32, offset: 288)
!214 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !200, file: !201, line: 69, baseType: !94, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !200, file: !201, line: 74, baseType: !217, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !90, line: 152, baseType: !218)
!218 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !200, file: !201, line: 78, baseType: !220, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !90, line: 174, baseType: !218)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !200, file: !201, line: 80, baseType: !222, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !90, line: 179, baseType: !218)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "st_atime", scope: !200, file: !201, line: 98, baseType: !224, size: 64, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !90, line: 160, baseType: !218)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimensec", scope: !200, file: !201, line: 99, baseType: !226, size: 64, offset: 640)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_ulong_t", file: !90, line: 198, baseType: !91)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtime", scope: !200, file: !201, line: 100, baseType: !224, size: 64, offset: 704)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimensec", scope: !200, file: !201, line: 101, baseType: !226, size: 64, offset: 768)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctime", scope: !200, file: !201, line: 102, baseType: !224, size: 64, offset: 832)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimensec", scope: !200, file: !201, line: 103, baseType: !226, size: 64, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !200, file: !201, line: 106, baseType: !232, size: 192, offset: 960)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 192, elements: !234)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !90, line: 196, baseType: !218)
!234 = !{!235}
!235 = !DISubrange(count: 3)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !103, file: !3, line: 108, baseType: !214, size: 32, offset: 1728)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "err_no", scope: !103, file: !3, line: 112, baseType: !214, size: 32, offset: 1760)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "stack_count", scope: !103, file: !3, line: 115, baseType: !156, size: 16, offset: 1792)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "once_only", scope: !103, file: !3, line: 118, baseType: !75, size: 8, offset: 1808)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "dont_read", scope: !103, file: !3, line: 121, baseType: !75, size: 8, offset: 1816)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "main_file", scope: !103, file: !3, line: 124, baseType: !75, size: 8, offset: 1824)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_valid", scope: !103, file: !3, line: 127, baseType: !75, size: 8, offset: 1832)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !98, file: !3, line: 165, baseType: !64, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!57, !218}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !57}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !251, line: 35, baseType: !218)
!251 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pchf_data", file: !3, line: 1665, size: 384, elements: !254)
!254 = !{!255, !257, !258}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !253, file: !3, line: 1667, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !251, line: 46, baseType: !91)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "have_once_only", scope: !253, file: !3, line: 1672, baseType: !75, size: 8, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !253, file: !3, line: 1674, baseType: !259, size: 256, offset: 128)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 256, elements: !194)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pchf_entry", file: !3, line: 1655, size: 256, elements: !261)
!261 = !{!262, !264, !268}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !260, file: !3, line: 1658, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !88, line: 85, baseType: !217)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sum", scope: !260, file: !3, line: 1660, baseType: !265, size: 128, offset: 64)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 16)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "once_only", scope: !260, file: !3, line: 1662, baseType: !75, size: 8, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !88, line: 108, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !90, line: 193, baseType: !218)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pchf_compare_data", file: !3, line: 1781, size: 320, elements: !276)
!276 = !{!277, !278, !279, !280, !281}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !275, file: !3, line: 1784, baseType: !263, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "sum", scope: !275, file: !3, line: 1787, baseType: !265, size: 128, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sum_computed", scope: !275, file: !3, line: 1790, baseType: !75, size: 8, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "check_included", scope: !275, file: !3, line: 1793, baseType: !75, size: 8, offset: 200)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !275, file: !3, line: 1796, baseType: !101, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_hash_entry_pool", file: !3, line: 174, size: 32640, elements: !284)
!284 = !{!285, !286, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash_entries_used", scope: !283, file: !3, line: 177, baseType: !7, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !3, line: 179, baseType: !282, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !283, file: !3, line: 181, baseType: !288, size: 32512, offset: 128)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32512, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 127)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "report_missing_guard_data", file: !3, line: 1259, size: 128, elements: !293)
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "paths", scope: !292, file: !3, line: 1261, baseType: !79, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !292, file: !3, line: 1262, baseType: !256, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!298 = !{!0, !299, !369}
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "FILE_NAME_MAP_FILE", scope: !301, file: !3, line: 1475, type: !366, isLocal: true, isDefinition: true)
!301 = distinct !DISubprogram(name: "read_name_map", scope: !3, file: !3, line: 1473, type: !302, scopeLine: 1474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !64}
!304 = !{!305, !306, !307, !358, !359, !360, !361, !364}
!305 = !DILocalVariable(name: "dir", arg: 1, scope: !301, file: !3, line: 1473, type: !64)
!306 = !DILocalVariable(name: "name", scope: !301, file: !3, line: 1476, type: !71)
!307 = !DILocalVariable(name: "f", scope: !301, file: !3, line: 1477, type: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !310, line: 7, baseType: !311)
!310 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !312, line: 49, size: 1728, elements: !313)
!312 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!313 = !{!314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !329, !331, !332, !333, !334, !335, !337, !339, !342, !344, !347, !350, !351, !352, !353, !354}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !311, file: !312, line: 51, baseType: !214, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !311, file: !312, line: 54, baseType: !71, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !311, file: !312, line: 55, baseType: !71, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !311, file: !312, line: 56, baseType: !71, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !311, file: !312, line: 57, baseType: !71, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !311, file: !312, line: 58, baseType: !71, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !311, file: !312, line: 59, baseType: !71, size: 64, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !311, file: !312, line: 60, baseType: !71, size: 64, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !311, file: !312, line: 61, baseType: !71, size: 64, offset: 512)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !311, file: !312, line: 64, baseType: !71, size: 64, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !311, file: !312, line: 65, baseType: !71, size: 64, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !311, file: !312, line: 66, baseType: !71, size: 64, offset: 704)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !311, file: !312, line: 68, baseType: !327, size: 64, offset: 768)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !312, line: 36, flags: DIFlagFwdDecl)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !311, file: !312, line: 70, baseType: !330, size: 64, offset: 832)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !311, file: !312, line: 72, baseType: !214, size: 32, offset: 896)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !311, file: !312, line: 73, baseType: !214, size: 32, offset: 928)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !311, file: !312, line: 74, baseType: !217, size: 64, offset: 960)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !311, file: !312, line: 77, baseType: !156, size: 16, offset: 1024)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !311, file: !312, line: 78, baseType: !336, size: 8, offset: 1040)
!336 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !311, file: !312, line: 79, baseType: !338, size: 8, offset: 1048)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 8, elements: !194)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !311, file: !312, line: 81, baseType: !340, size: 64, offset: 1088)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !312, line: 43, baseType: null)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !311, file: !312, line: 89, baseType: !343, size: 64, offset: 1152)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !90, line: 153, baseType: !218)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !311, file: !312, line: 91, baseType: !345, size: 64, offset: 1216)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !312, line: 37, flags: DIFlagFwdDecl)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !311, file: !312, line: 92, baseType: !348, size: 64, offset: 1280)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !312, line: 38, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !311, file: !312, line: 93, baseType: !330, size: 64, offset: 1344)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !311, file: !312, line: 94, baseType: !57, size: 64, offset: 1408)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !311, file: !312, line: 95, baseType: !256, size: 64, offset: 1472)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !311, file: !312, line: 96, baseType: !214, size: 32, offset: 1536)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !311, file: !312, line: 98, baseType: !355, size: 160, offset: 1568)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 160, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 20)
!358 = !DILocalVariable(name: "len", scope: !301, file: !3, line: 1478, type: !256)
!359 = !DILocalVariable(name: "count", scope: !301, file: !3, line: 1478, type: !256)
!360 = !DILocalVariable(name: "room", scope: !301, file: !3, line: 1478, type: !256)
!361 = !DILocalVariable(name: "ch", scope: !362, file: !3, line: 1493, type: !214)
!362 = distinct !DILexicalBlock(scope: !363, file: !3, line: 1492, column: 5)
!363 = distinct !DILexicalBlock(scope: !301, file: !3, line: 1491, column: 7)
!364 = !DILocalVariable(name: "to", scope: !365, file: !3, line: 1497, type: !71)
!365 = distinct !DILexicalBlock(scope: !362, file: !3, line: 1496, column: 2)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 88, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 11)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "extension", scope: !371, file: !3, line: 295, type: !895, isLocal: true, isDefinition: true)
!371 = distinct !DISubprogram(name: "pch_open_file", scope: !3, file: !3, line: 293, type: !372, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !863)
!372 = !DISubroutineType(types: !373)
!373 = !{!75, !374, !101, !271}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !6, line: 31, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !43, line: 322, size: 10432, elements: !377)
!377 = !{!378, !425, !426, !443, !473, !474, !484, !485, !486, !516, !518, !522, !523, !524, !525, !526, !527, !528, !529, !530, !576, !577, !578, !579, !611, !612, !613, !614, !615, !616, !617, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !643, !644, !645, !648, !728, !754, !757, !758, !821, !828, !829, !836, !837, !838, !839, !842, !843, !856}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !376, file: !43, line: 325, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_buffer", file: !6, line: 32, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_buffer", file: !43, line: 249, size: 1536, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !395, !396, !397, !398, !400, !401, !402, !405, !406, !407, !408, !409, !410, !411}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !381, file: !43, line: 251, baseType: !112, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "line_base", scope: !381, file: !43, line: 252, baseType: !112, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !381, file: !43, line: 253, baseType: !112, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !381, file: !43, line: 255, baseType: !112, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !381, file: !43, line: 256, baseType: !112, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !381, file: !43, line: 258, baseType: !389, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_line_note", file: !43, line: 235, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_line_note", file: !43, line: 236, size: 128, elements: !392)
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !391, file: !43, line: 239, baseType: !112, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !391, file: !43, line: 245, baseType: !7, size: 32, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "cur_note", scope: !381, file: !43, line: 259, baseType: !7, size: 32, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "notes_used", scope: !381, file: !43, line: 260, baseType: !7, size: 32, offset: 416)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "notes_cap", scope: !381, file: !43, line: 261, baseType: !7, size: 32, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !381, file: !43, line: 263, baseType: !399, size: 64, offset: 512)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !381, file: !43, line: 267, baseType: !110, size: 64, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !381, file: !43, line: 271, baseType: !112, size: 64, offset: 640)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "if_stack", scope: !381, file: !43, line: 275, baseType: !403, size: 64, offset: 704)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "if_stack", file: !43, line: 275, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "need_line", scope: !381, file: !43, line: 278, baseType: !75, size: 8, offset: 768)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "warned_cplusplus_comments", scope: !381, file: !43, line: 284, baseType: !7, size: 1, offset: 776, flags: DIFlagBitField, extraData: i64 776)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "from_stage3", scope: !381, file: !43, line: 289, baseType: !7, size: 1, offset: 777, flags: DIFlagBitField, extraData: i64 776)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "return_at_eof", scope: !381, file: !43, line: 294, baseType: !7, size: 1, offset: 778, flags: DIFlagBitField, extraData: i64 776)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !381, file: !43, line: 298, baseType: !75, size: 8, offset: 784)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !381, file: !43, line: 302, baseType: !66, size: 512, offset: 832)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "input_cset_desc", scope: !381, file: !43, line: 306, baseType: !412, size: 192, offset: 1344)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cset_converter", file: !43, line: 47, size: 192, elements: !413)
!413 = !{!414, !423, !424}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !412, file: !43, line: 49, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "convert_f", file: !43, line: 45, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!75, !419, !112, !256, !421}
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !420, line: 29, baseType: !57)
!420 = !DIFile(filename: "/usr/include/iconv.h", directory: "")
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_strbuf", file: !43, line: 43, flags: DIFlagFwdDecl)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !412, file: !43, line: 50, baseType: !419, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !412, file: !43, line: 51, baseType: !214, size: 32, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "overlaid_buffer", scope: !376, file: !43, line: 328, baseType: !379, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !376, file: !43, line: 331, baseType: !427, size: 160, offset: 128)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lexer_state", file: !43, line: 177, size: 160, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "in_directive", scope: !427, file: !43, line: 180, baseType: !75, size: 8)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "directive_wants_padding", scope: !427, file: !43, line: 185, baseType: !75, size: 8, offset: 8)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "skipping", scope: !427, file: !43, line: 188, baseType: !75, size: 8, offset: 16)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "angled_headers", scope: !427, file: !43, line: 191, baseType: !75, size: 8, offset: 24)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "in_expression", scope: !427, file: !43, line: 194, baseType: !75, size: 8, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "save_comments", scope: !427, file: !43, line: 198, baseType: !75, size: 8, offset: 40)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "va_args_ok", scope: !427, file: !43, line: 201, baseType: !75, size: 8, offset: 48)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned_ok", scope: !427, file: !43, line: 204, baseType: !75, size: 8, offset: 56)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_expansion", scope: !427, file: !43, line: 207, baseType: !75, size: 8, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "parsing_args", scope: !427, file: !43, line: 210, baseType: !75, size: 8, offset: 72)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "discarding_output", scope: !427, file: !43, line: 214, baseType: !75, size: 8, offset: 80)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "skip_eval", scope: !427, file: !43, line: 217, baseType: !7, size: 32, offset: 96)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "in_deferred_pragma", scope: !427, file: !43, line: 220, baseType: !75, size: 8, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "pragma_allow_expansion", scope: !427, file: !43, line: 223, baseType: !75, size: 8, offset: 136)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "line_table", scope: !376, file: !43, line: 334, baseType: !444, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !50, line: 74, size: 448, elements: !446)
!446 = !{!447, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !445, file: !50, line: 75, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !50, line: 61, size: 192, elements: !450)
!450 = !{!451, !452, !454, !455, !456, !457, !458}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !449, file: !50, line: 62, baseType: !80, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !449, file: !50, line: 63, baseType: !453, size: 32, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !50, line: 39, baseType: !7)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !449, file: !50, line: 64, baseType: !96, size: 32, offset: 96)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !449, file: !50, line: 65, baseType: !214, size: 32, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !449, file: !50, line: 66, baseType: !7, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !449, file: !50, line: 68, baseType: !75, size: 8, offset: 168)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !449, file: !50, line: 70, baseType: !7, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !445, file: !50, line: 76, baseType: !7, size: 32, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !445, file: !50, line: 77, baseType: !7, size: 32, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !445, file: !50, line: 79, baseType: !7, size: 32, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !445, file: !50, line: 84, baseType: !214, size: 32, offset: 160)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !445, file: !50, line: 87, baseType: !7, size: 32, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !445, file: !50, line: 90, baseType: !75, size: 8, offset: 224)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !445, file: !50, line: 93, baseType: !96, size: 32, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !445, file: !50, line: 96, baseType: !96, size: 32, offset: 288)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !445, file: !50, line: 100, baseType: !7, size: 32, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !445, file: !50, line: 104, baseType: !469, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !50, line: 47, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!57, !57, !256}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "directive_line", scope: !376, file: !43, line: 337, baseType: !96, size: 32, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "a_buff", scope: !376, file: !43, line: 340, baseType: !475, size: 64, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_buff", file: !43, line: 99, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_buff", file: !43, line: 100, size: 256, elements: !478)
!478 = !{!479, !481, !482, !483}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !43, line: 102, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !477, file: !43, line: 103, baseType: !271, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !477, file: !43, line: 103, baseType: !271, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !477, file: !43, line: 103, baseType: !271, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "u_buff", scope: !376, file: !43, line: 341, baseType: !475, size: 64, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffs", scope: !376, file: !43, line: 342, baseType: !475, size: 64, offset: 576)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "base_context", scope: !376, file: !43, line: 345, baseType: !487, size: 448, offset: 640)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_context", file: !43, line: 142, size: 448, elements: !488)
!488 = !{!489, !492, !493, !513, !514, !515}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !43, line: 145, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_context", file: !43, line: 141, baseType: !487)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !487, file: !43, line: 145, baseType: !490, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !487, file: !43, line: 164, baseType: !494, size: 128, offset: 128)
!494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !43, line: 147, size: 128, elements: !495)
!495 = !{!496, !508}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "iso", scope: !494, file: !43, line: 156, baseType: !497, size: 128)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !494, file: !43, line: 152, size: 128, elements: !498)
!498 = !{!499, !507}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !497, file: !43, line: 154, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "utoken", file: !43, line: 121, size: 64, elements: !501)
!501 = !{!502, !505}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !500, file: !43, line: 123, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ptoken", scope: !500, file: !43, line: 124, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !497, file: !43, line: 155, baseType: !500, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "trad", scope: !494, file: !43, line: 163, baseType: !509, size: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !494, file: !43, line: 159, size: 128, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !509, file: !43, line: 161, baseType: !112, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !509, file: !43, line: 162, baseType: !112, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !487, file: !43, line: 168, baseType: !475, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !487, file: !43, line: 171, baseType: !144, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "direct_p", scope: !487, file: !43, line: 174, baseType: !75, size: 8, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !376, file: !43, line: 346, baseType: !517, size: 64, offset: 1088)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !376, file: !43, line: 349, baseType: !519, size: 64, offset: 1152)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "directive", file: !43, line: 40, flags: DIFlagFwdDecl)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "directive_result", scope: !376, file: !43, line: 352, baseType: !150, size: 192, offset: 1216)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "invocation_location", scope: !376, file: !43, line: 356, baseType: !96, size: 32, offset: 1408)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "set_invocation_location", scope: !376, file: !43, line: 360, baseType: !75, size: 8, offset: 1440)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "quote_include", scope: !376, file: !43, line: 363, baseType: !69, size: 64, offset: 1472)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "bracket_include", scope: !376, file: !43, line: 364, baseType: !69, size: 64, offset: 1536)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "no_search_path", scope: !376, file: !43, line: 365, baseType: !66, size: 512, offset: 1600)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "all_files", scope: !376, file: !43, line: 368, baseType: !110, size: 64, offset: 2112)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "main_file", scope: !376, file: !43, line: 370, baseType: !110, size: 64, offset: 2176)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash", scope: !376, file: !43, line: 373, baseType: !531, size: 64, offset: 2240)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !533, line: 100, size: 896, elements: !534)
!533 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!534 = !{!535, !543, !548, !550, !552, !553, !554, !555, !556, !557, !562, !564, !565, !570, !575}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !532, file: !533, line: 102, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !533, line: 52, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !533, line: 47, baseType: !7)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !532, file: !533, line: 105, baseType: !544, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !533, line: 59, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!214, !541, !541}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !532, file: !533, line: 108, baseType: !549, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !533, line: 63, baseType: !247)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !532, file: !533, line: 111, baseType: !551, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !532, file: !533, line: 114, baseType: !256, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !532, file: !533, line: 117, baseType: !256, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !532, file: !533, line: 120, baseType: !256, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !532, file: !533, line: 124, baseType: !7, size: 32, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !532, file: !533, line: 128, baseType: !7, size: 32, offset: 480)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !532, file: !533, line: 131, baseType: !558, size: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !533, line: 75, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!57, !256, !256}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !532, file: !533, line: 132, baseType: !563, size: 64, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !533, line: 78, baseType: !247)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !532, file: !533, line: 135, baseType: !57, size: 64, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !532, file: !533, line: 136, baseType: !566, size: 64, offset: 704)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !533, line: 82, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!57, !57, !256, !256}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !532, file: !533, line: 137, baseType: !571, size: 64, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !533, line: 83, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !57, !57}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !532, file: !533, line: 141, baseType: !7, size: 32, offset: 832)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash", scope: !376, file: !43, line: 374, baseType: !531, size: 64, offset: 2304)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash_entries", scope: !376, file: !43, line: 375, baseType: !282, size: 64, offset: 2368)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_hash", scope: !376, file: !43, line: 378, baseType: !531, size: 64, offset: 2432)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_ob", scope: !376, file: !43, line: 379, baseType: !580, size: 704, offset: 2496)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !581, line: 164, size: 704, elements: !582)
!581 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!582 = !{!583, !584, !594, !595, !596, !597, !598, !599, !603, !607, !608, !609, !610}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !580, file: !581, line: 166, baseType: !218, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !580, file: !581, line: 167, baseType: !585, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !581, line: 157, size: 192, elements: !587)
!587 = !{!588, !589, !590}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !586, file: !581, line: 159, baseType: !71, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !586, file: !581, line: 160, baseType: !585, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !586, file: !581, line: 161, baseType: !591, size: 32, offset: 128)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 4)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !580, file: !581, line: 168, baseType: !71, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !580, file: !581, line: 169, baseType: !71, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !580, file: !581, line: 170, baseType: !71, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !580, file: !581, line: 171, baseType: !218, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !580, file: !581, line: 172, baseType: !214, size: 32, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !580, file: !581, line: 176, baseType: !600, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!585, !57, !218}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !580, file: !581, line: 177, baseType: !604, size: 64, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !57, !585}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !580, file: !581, line: 178, baseType: !57, size: 64, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !580, file: !581, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !580, file: !581, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !580, file: !581, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "quote_ignores_source_dir", scope: !376, file: !43, line: 383, baseType: !75, size: 8, offset: 3200)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "seen_once_only", scope: !376, file: !43, line: 387, baseType: !75, size: 8, offset: 3208)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mi_cmacro", scope: !376, file: !43, line: 390, baseType: !116, size: 64, offset: 3264)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mi_ind_cmacro", scope: !376, file: !43, line: 391, baseType: !116, size: 64, offset: 3328)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mi_valid", scope: !376, file: !43, line: 392, baseType: !75, size: 8, offset: 3392)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cur_token", scope: !376, file: !43, line: 395, baseType: !149, size: 64, offset: 3456)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "base_run", scope: !376, file: !43, line: 396, baseType: !618, size: 256, offset: 3520)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "tokenrun", file: !43, line: 128, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenrun", file: !43, line: 129, size: 256, elements: !620)
!620 = !{!621, !623, !624, !625}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !619, file: !43, line: 131, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !619, file: !43, line: 131, baseType: !622, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !619, file: !43, line: 132, baseType: !149, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !619, file: !43, line: 132, baseType: !149, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "cur_run", scope: !376, file: !43, line: 396, baseType: !622, size: 64, offset: 3776)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "lookaheads", scope: !376, file: !43, line: 397, baseType: !7, size: 32, offset: 3840)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "keep_tokens", scope: !376, file: !43, line: 400, baseType: !7, size: 32, offset: 3872)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer", scope: !376, file: !43, line: 403, baseType: !271, size: 64, offset: 3904)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer_len", scope: !376, file: !43, line: 404, baseType: !7, size: 32, offset: 3968)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_cset_desc", scope: !376, file: !43, line: 408, baseType: !412, size: 192, offset: 4032)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_cset_desc", scope: !376, file: !43, line: 412, baseType: !412, size: 192, offset: 4224)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "char16_cset_desc", scope: !376, file: !43, line: 416, baseType: !412, size: 192, offset: 4416)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "char32_cset_desc", scope: !376, file: !43, line: 420, baseType: !412, size: 192, offset: 4608)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "wide_cset_desc", scope: !376, file: !43, line: 424, baseType: !412, size: 192, offset: 4800)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !376, file: !43, line: 427, baseType: !112, size: 64, offset: 4992)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !376, file: !43, line: 428, baseType: !112, size: 64, offset: 5056)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_paste", scope: !376, file: !43, line: 431, baseType: !150, size: 192, offset: 5120)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !376, file: !43, line: 432, baseType: !150, size: 192, offset: 5312)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !376, file: !43, line: 435, baseType: !641, size: 64, offset: 5504)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !6, line: 685, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "hash_ob", scope: !376, file: !43, line: 439, baseType: !580, size: 704, offset: 5568)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_ob", scope: !376, file: !43, line: 443, baseType: !580, size: 704, offset: 6272)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "pragmas", scope: !376, file: !43, line: 447, baseType: !646, size: 64, offset: 6976)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "pragma_entry", file: !43, line: 447, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !376, file: !43, line: 450, baseType: !649, size: 1088, offset: 7040)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !6, line: 472, size: 1088, elements: !650)
!650 = !{!651, !655, !661, !665, !669, !673, !674, !681, !685, !689, !693, !699, !703, !718, !719, !720, !724}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !649, file: !6, line: 475, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !374, !503, !214}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !649, file: !6, line: 481, baseType: !656, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !374, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !649, file: !6, line: 483, baseType: !662, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !374, !80}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !649, file: !6, line: 484, baseType: !666, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !374, !7, !112, !80, !214, !506}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !649, file: !6, line: 486, baseType: !670, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !374, !7, !144}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !649, file: !6, line: 487, baseType: !670, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !649, file: !6, line: 488, baseType: !675, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !374, !7, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !6, line: 35, baseType: !166)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !649, file: !6, line: 489, baseType: !682, size: 64, offset: 448)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !374, !7}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !649, file: !6, line: 490, baseType: !686, size: 64, offset: 512)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!214, !374, !80, !214}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !649, file: !6, line: 491, baseType: !690, size: 64, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !374, !80, !214, !80}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !649, file: !6, line: 492, baseType: !694, size: 64, offset: 640)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !6, line: 469, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!80, !374, !80, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !649, file: !6, line: 496, baseType: !700, size: 64, offset: 704)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!144, !374, !503}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !649, file: !6, line: 500, baseType: !704, size: 64, offset: 768)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!75, !374, !214, !96, !7, !80, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !709, line: 14, baseType: !710)
!709 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 450, baseType: !711)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 192, elements: !194)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 450, size: 192, elements: !713)
!713 = !{!714, !715, !716, !717}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !712, file: !3, line: 450, baseType: !7, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !712, file: !3, line: 450, baseType: !7, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !712, file: !3, line: 450, baseType: !57, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !712, file: !3, line: 450, baseType: !57, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !649, file: !6, line: 506, baseType: !670, size: 64, offset: 832)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !649, file: !6, line: 507, baseType: !670, size: 64, offset: 896)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !649, file: !6, line: 510, baseType: !721, size: 64, offset: 960)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !374}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !649, file: !6, line: 513, baseType: !725, size: 64, offset: 1024)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !374, !96, !144}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !376, file: !43, line: 453, baseType: !729, size: 64, offset: 8128)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht", file: !123, line: 46, size: 1152, elements: !731)
!731 = !{!732, !733, !737, !743, !747, !748, !749, !751, !752, !753}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !730, file: !123, line: 49, baseType: !580, size: 704)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !730, file: !123, line: 51, baseType: !734, size: 64, offset: 704)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashnode", file: !123, line: 41, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_node", scope: !730, file: !123, line: 53, baseType: !738, size: 64, offset: 768)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!735, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !123, line: 40, baseType: !730)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_subobject", scope: !730, file: !123, line: 56, baseType: !744, size: 64, offset: 832)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!57, !256}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !730, file: !123, line: 58, baseType: !7, size: 32, offset: 896)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !730, file: !123, line: 59, baseType: !7, size: 32, offset: 928)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !730, file: !123, line: 62, baseType: !750, size: 64, offset: 960)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !730, file: !123, line: 65, baseType: !7, size: 32, offset: 1024)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !730, file: !123, line: 66, baseType: !7, size: 32, offset: 1056)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !730, file: !123, line: 69, baseType: !75, size: 8, offset: 1088)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "op_stack", scope: !376, file: !43, line: 456, baseType: !755, size: 64, offset: 8192)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !43, line: 42, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "op_limit", scope: !376, file: !43, line: 456, baseType: !755, size: 64, offset: 8256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !376, file: !43, line: 459, baseType: !759, size: 1024, offset: 8320)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !6, line: 279, size: 1024, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !812, !813, !814, !815, !816, !817, !818, !819, !820}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !759, file: !6, line: 282, baseType: !7, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !759, file: !6, line: 285, baseType: !19, size: 32, offset: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !759, file: !6, line: 288, baseType: !75, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !759, file: !6, line: 291, baseType: !75, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !759, file: !6, line: 296, baseType: !75, size: 8, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !759, file: !6, line: 299, baseType: !75, size: 8, offset: 88)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !759, file: !6, line: 303, baseType: !75, size: 8, offset: 96)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !759, file: !6, line: 306, baseType: !75, size: 8, offset: 104)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !759, file: !6, line: 309, baseType: !75, size: 8, offset: 112)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !759, file: !6, line: 312, baseType: !75, size: 8, offset: 120)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !759, file: !6, line: 315, baseType: !75, size: 8, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !759, file: !6, line: 318, baseType: !75, size: 8, offset: 136)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !759, file: !6, line: 321, baseType: !75, size: 8, offset: 144)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !759, file: !6, line: 324, baseType: !75, size: 8, offset: 152)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !759, file: !6, line: 328, baseType: !75, size: 8, offset: 160)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !759, file: !6, line: 331, baseType: !75, size: 8, offset: 168)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !759, file: !6, line: 334, baseType: !75, size: 8, offset: 176)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !759, file: !6, line: 338, baseType: !75, size: 8, offset: 184)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !759, file: !6, line: 341, baseType: !75, size: 8, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !759, file: !6, line: 344, baseType: !75, size: 8, offset: 200)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !759, file: !6, line: 348, baseType: !75, size: 8, offset: 208)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !759, file: !6, line: 352, baseType: !75, size: 8, offset: 216)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !759, file: !6, line: 356, baseType: !75, size: 8, offset: 224)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !759, file: !6, line: 360, baseType: !75, size: 8, offset: 232)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !759, file: !6, line: 363, baseType: !75, size: 8, offset: 240)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !759, file: !6, line: 366, baseType: !75, size: 8, offset: 248)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !759, file: !6, line: 370, baseType: !75, size: 8, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !759, file: !6, line: 373, baseType: !75, size: 8, offset: 264)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !759, file: !6, line: 376, baseType: !75, size: 8, offset: 272)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !759, file: !6, line: 379, baseType: !75, size: 8, offset: 280)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !759, file: !6, line: 382, baseType: !75, size: 8, offset: 288)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !759, file: !6, line: 385, baseType: !75, size: 8, offset: 296)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !759, file: !6, line: 389, baseType: !75, size: 8, offset: 304)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !759, file: !6, line: 392, baseType: !75, size: 8, offset: 312)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !759, file: !6, line: 395, baseType: !75, size: 8, offset: 320)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !759, file: !6, line: 398, baseType: !75, size: 8, offset: 328)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !759, file: !6, line: 401, baseType: !75, size: 8, offset: 336)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !759, file: !6, line: 404, baseType: !80, size: 64, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !759, file: !6, line: 407, baseType: !80, size: 64, offset: 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !759, file: !6, line: 410, baseType: !80, size: 64, offset: 512)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !759, file: !6, line: 414, baseType: !31, size: 32, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !759, file: !6, line: 417, baseType: !75, size: 8, offset: 608)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !759, file: !6, line: 420, baseType: !75, size: 8, offset: 616)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !759, file: !6, line: 441, baseType: !805, size: 64, offset: 640)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !759, file: !6, line: 423, size: 64, elements: !806)
!806 = !{!807, !808, !809, !810, !811}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !805, file: !6, line: 426, baseType: !37, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !805, file: !6, line: 429, baseType: !75, size: 8, offset: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !805, file: !6, line: 433, baseType: !75, size: 8, offset: 40)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !805, file: !6, line: 436, baseType: !75, size: 8, offset: 48)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !805, file: !6, line: 440, baseType: !75, size: 8, offset: 56)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !759, file: !6, line: 447, baseType: !256, size: 64, offset: 704)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !759, file: !6, line: 447, baseType: !256, size: 64, offset: 768)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !759, file: !6, line: 447, baseType: !256, size: 64, offset: 832)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !759, file: !6, line: 447, baseType: !256, size: 64, offset: 896)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !759, file: !6, line: 450, baseType: !75, size: 8, offset: 960)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !759, file: !6, line: 450, baseType: !75, size: 8, offset: 968)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !759, file: !6, line: 454, baseType: !75, size: 8, offset: 976)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !759, file: !6, line: 457, baseType: !75, size: 8, offset: 984)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !759, file: !6, line: 460, baseType: !75, size: 8, offset: 992)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "spec_nodes", scope: !376, file: !43, line: 463, baseType: !822, size: 256, offset: 9344)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spec_nodes", file: !43, line: 227, size: 256, elements: !823)
!823 = !{!824, !825, !826, !827}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "n_defined", scope: !822, file: !43, line: 229, baseType: !144, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "n_true", scope: !822, file: !43, line: 230, baseType: !144, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "n_false", scope: !822, file: !43, line: 231, baseType: !144, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "n__VA_ARGS__", scope: !822, file: !43, line: 232, baseType: !144, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "our_hashtable", scope: !376, file: !43, line: 466, baseType: !75, size: 8, offset: 9600)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !376, file: !43, line: 475, baseType: !830, size: 256, offset: 9664)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !376, file: !43, line: 469, size: 256, elements: !831)
!831 = !{!832, !833, !834, !835}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !830, file: !43, line: 471, baseType: !271, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !830, file: !43, line: 472, baseType: !271, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !830, file: !43, line: 473, baseType: !271, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !830, file: !43, line: 474, baseType: !96, size: 32, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cur", scope: !376, file: !43, line: 478, baseType: !112, size: 64, offset: 9920)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "saved_rlimit", scope: !376, file: !43, line: 478, baseType: !112, size: 64, offset: 9984)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "saved_line_base", scope: !376, file: !43, line: 478, baseType: !112, size: 64, offset: 10048)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "savedstate", scope: !376, file: !43, line: 482, baseType: !840, size: 64, offset: 10112)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_savedstate", file: !43, line: 482, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !376, file: !43, line: 485, baseType: !7, size: 32, offset: 10176)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "comments", scope: !376, file: !43, line: 488, baseType: !844, size: 128, offset: 10240)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment_table", file: !6, line: 901, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 891, size: 128, elements: !846)
!846 = !{!847, !854, !855}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !845, file: !6, line: 894, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment", file: !6, line: 887, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 880, size: 128, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !850, file: !6, line: 883, baseType: !71, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sloc", scope: !850, file: !6, line: 886, baseType: !96, size: 32, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !845, file: !6, line: 897, baseType: !214, size: 32, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !845, file: !6, line: 900, baseType: !214, size: 32, offset: 96)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "pushed_macros", scope: !376, file: !43, line: 491, baseType: !857, size: 64, offset: 10368)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_pragma_macro", file: !43, line: 310, size: 192, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !858, file: !43, line: 312, baseType: !857, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !858, file: !43, line: 314, baseType: !71, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !858, file: !43, line: 316, baseType: !137, size: 64, offset: 128)
!863 = !{!864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !880, !893, !894}
!864 = !DILocalVariable(name: "pfile", arg: 1, scope: !371, file: !3, line: 293, type: !374)
!865 = !DILocalVariable(name: "file", arg: 2, scope: !371, file: !3, line: 293, type: !101)
!866 = !DILocalVariable(name: "invalid_pch", arg: 3, scope: !371, file: !3, line: 293, type: !271)
!867 = !DILocalVariable(name: "path", scope: !371, file: !3, line: 296, type: !80)
!868 = !DILocalVariable(name: "len", scope: !371, file: !3, line: 297, type: !256)
!869 = !DILocalVariable(name: "flen", scope: !371, file: !3, line: 297, type: !256)
!870 = !DILocalVariable(name: "pchname", scope: !371, file: !3, line: 298, type: !71)
!871 = !DILocalVariable(name: "st", scope: !371, file: !3, line: 299, type: !200)
!872 = !DILocalVariable(name: "valid", scope: !371, file: !3, line: 300, type: !75)
!873 = !DILocalVariable(name: "pchdir", scope: !874, file: !3, line: 320, type: !876)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 319, column: 5)
!875 = distinct !DILexicalBlock(scope: !371, file: !3, line: 318, column: 7)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !878, line: 127, baseType: !879)
!878 = !DIFile(filename: "/usr/include/dirent.h", directory: "")
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !878, line: 127, flags: DIFlagFwdDecl)
!880 = !DILocalVariable(name: "d", scope: !874, file: !3, line: 321, type: !881)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !883, line: 22, size: 2240, elements: !884)
!883 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "")
!884 = !{!885, !886, !887, !888, !889}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !882, file: !883, line: 25, baseType: !89, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !882, file: !883, line: 26, baseType: !217, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !882, file: !883, line: 31, baseType: !156, size: 16, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !882, file: !883, line: 32, baseType: !75, size: 8, offset: 144)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !882, file: !883, line: 33, baseType: !890, size: 2048, offset: 152)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 2048, elements: !891)
!891 = !{!892}
!892 = !DISubrange(count: 256)
!893 = !DILocalVariable(name: "dlen", scope: !874, file: !3, line: 322, type: !256)
!894 = !DILocalVariable(name: "plen", scope: !874, file: !3, line: 322, type: !256)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 40, elements: !896)
!896 = !{!897}
!897 = !DISubrange(count: 5)
!898 = !{i32 2, !"Dwarf Version", i32 4}
!899 = !{i32 2, !"Debug Info Version", i32 3}
!900 = !{i32 1, !"wchar_size", i32 4}
!901 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!902 = distinct !DISubprogram(name: "tolower", scope: !903, file: !903, line: 207, type: !904, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !906)
!903 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!904 = !DISubroutineType(types: !905)
!905 = !{!214, !214}
!906 = !{!907}
!907 = !DILocalVariable(name: "__c", arg: 1, scope: !902, file: !903, line: 207, type: !214)
!908 = !DILocation(line: 0, scope: !902)
!909 = !DILocation(line: 209, column: 22, scope: !902)
!910 = !DILocation(line: 209, column: 39, scope: !902)
!911 = !DILocation(line: 209, column: 38, scope: !902)
!912 = !DILocation(line: 209, column: 37, scope: !902)
!913 = !DILocation(line: 209, column: 10, scope: !902)
!914 = !DILocation(line: 209, column: 3, scope: !902)
!915 = distinct !DISubprogram(name: "toupper", scope: !903, file: !903, line: 213, type: !904, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !916)
!916 = !{!917}
!917 = !DILocalVariable(name: "__c", arg: 1, scope: !915, file: !903, line: 213, type: !214)
!918 = !DILocation(line: 0, scope: !915)
!919 = !DILocation(line: 215, column: 22, scope: !915)
!920 = !DILocation(line: 215, column: 39, scope: !915)
!921 = !DILocation(line: 215, column: 38, scope: !915)
!922 = !DILocation(line: 215, column: 37, scope: !915)
!923 = !DILocation(line: 215, column: 10, scope: !915)
!924 = !DILocation(line: 215, column: 3, scope: !915)
!925 = distinct !DISubprogram(name: "_cpp_find_failed", scope: !3, file: !3, line: 447, type: !926, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{!75, !101}
!928 = !{!929}
!929 = !DILocalVariable(name: "file", arg: 1, scope: !925, file: !3, line: 447, type: !101)
!930 = !DILocation(line: 0, scope: !925)
!931 = !DILocation(line: 449, column: 16, scope: !925)
!932 = !DILocation(line: 449, column: 23, scope: !925)
!933 = !DILocation(line: 449, column: 10, scope: !925)
!934 = !DILocation(line: 449, column: 3, scope: !925)
!935 = distinct !DISubprogram(name: "_cpp_find_file", scope: !3, file: !3, line: 467, type: !936, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !938)
!936 = !DISubroutineType(types: !937)
!937 = !{!101, !374, !80, !64, !75, !214}
!938 = !{!939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950}
!939 = !DILocalVariable(name: "pfile", arg: 1, scope: !935, file: !3, line: 467, type: !374)
!940 = !DILocalVariable(name: "fname", arg: 2, scope: !935, file: !3, line: 467, type: !80)
!941 = !DILocalVariable(name: "start_dir", arg: 3, scope: !935, file: !3, line: 467, type: !64)
!942 = !DILocalVariable(name: "fake", arg: 4, scope: !935, file: !3, line: 467, type: !75)
!943 = !DILocalVariable(name: "angle_brackets", arg: 5, scope: !935, file: !3, line: 467, type: !214)
!944 = !DILocalVariable(name: "entry", scope: !935, file: !3, line: 469, type: !59)
!945 = !DILocalVariable(name: "hash_slot", scope: !935, file: !3, line: 469, type: !58)
!946 = !DILocalVariable(name: "file", scope: !935, file: !3, line: 470, type: !101)
!947 = !DILocalVariable(name: "invalid_pch", scope: !935, file: !3, line: 471, type: !75)
!948 = !DILocalVariable(name: "saw_bracket_include", scope: !935, file: !3, line: 472, type: !75)
!949 = !DILocalVariable(name: "saw_quote_include", scope: !935, file: !3, line: 473, type: !75)
!950 = !DILocalVariable(name: "found_in_cache", scope: !935, file: !3, line: 474, type: !69)
!951 = !DILocation(line: 0, scope: !935)
!952 = !DILocation(line: 471, column: 3, scope: !935)
!953 = !DILocation(line: 471, column: 8, scope: !935)
!954 = !DILocation(line: 477, column: 17, scope: !955)
!955 = distinct !DILexicalBlock(scope: !935, file: !3, line: 477, column: 7)
!956 = !DILocation(line: 477, column: 7, scope: !935)
!957 = !DILocation(line: 478, column: 5, scope: !955)
!958 = !DILocation(line: 481, column: 38, scope: !935)
!959 = !DILocation(line: 482, column: 10, scope: !935)
!960 = !DILocation(line: 481, column: 5, scope: !935)
!961 = !DILocation(line: 480, column: 15, scope: !935)
!962 = !DILocation(line: 486, column: 25, scope: !935)
!963 = !DILocation(line: 486, column: 11, scope: !935)
!964 = !DILocation(line: 487, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !935, file: !3, line: 487, column: 7)
!966 = !DILocation(line: 487, column: 7, scope: !935)
!967 = !DILocation(line: 488, column: 21, scope: !965)
!968 = !DILocation(line: 488, column: 5, scope: !965)
!969 = !DILocation(line: 490, column: 10, scope: !935)
!970 = !DILocation(line: 0, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !3, line: 493, column: 3)
!972 = distinct !DILexicalBlock(scope: !935, file: !3, line: 493, column: 3)
!973 = !DILocation(line: 0, scope: !974)
!974 = distinct !DILexicalBlock(scope: !971, file: !3, line: 494, column: 5)
!975 = !DILocation(line: 0, scope: !976)
!976 = distinct !DILexicalBlock(scope: !974, file: !3, line: 527, column: 11)
!977 = !DILocation(line: 0, scope: !978)
!978 = distinct !DILexicalBlock(scope: !976, file: !3, line: 529, column: 16)
!979 = !DILocation(line: 493, column: 3, scope: !935)
!980 = !DILocation(line: 542, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !935, file: !3, line: 542, column: 7)
!982 = !DILocation(line: 493, column: 3, scope: !972)
!983 = !DILocation(line: 495, column: 11, scope: !984)
!984 = distinct !DILexicalBlock(scope: !974, file: !3, line: 495, column: 11)
!985 = !DILocation(line: 495, column: 11, scope: !974)
!986 = !DILocation(line: 498, column: 25, scope: !974)
!987 = !DILocation(line: 498, column: 30, scope: !974)
!988 = !DILocation(line: 498, column: 17, scope: !974)
!989 = !DILocation(line: 499, column: 21, scope: !990)
!990 = distinct !DILexicalBlock(scope: !974, file: !3, line: 499, column: 11)
!991 = !DILocation(line: 499, column: 11, scope: !974)
!992 = !DILocation(line: 527, column: 31, scope: !976)
!993 = !DILocation(line: 527, column: 21, scope: !976)
!994 = !DILocation(line: 527, column: 11, scope: !974)
!995 = !DILocation(line: 529, column: 36, scope: !978)
!996 = !DILocation(line: 529, column: 26, scope: !978)
!997 = !DILocation(line: 529, column: 16, scope: !976)
!998 = distinct !{!998, !982, !999}
!999 = !DILocation(line: 540, column: 5, scope: !972)
!1000 = !DILocation(line: 534, column: 29, scope: !974)
!1001 = !DILocation(line: 534, column: 15, scope: !974)
!1002 = !DILocation(line: 535, column: 11, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !974, file: !3, line: 535, column: 11)
!1004 = !DILocation(line: 535, column: 11, scope: !974)
!1005 = !DILocation(line: 537, column: 27, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 536, column: 2)
!1007 = !DILocation(line: 538, column: 4, scope: !1006)
!1008 = !DILocation(line: 501, column: 8, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 501, column: 8)
!1010 = distinct !DILexicalBlock(scope: !990, file: !3, line: 500, column: 2)
!1011 = !DILocation(line: 501, column: 8, scope: !1010)
!1012 = !DILocation(line: 507, column: 33, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 502, column: 6)
!1014 = !DILocation(line: 507, column: 14, scope: !1013)
!1015 = !DILocation(line: 507, column: 24, scope: !1013)
!1016 = !DILocation(line: 508, column: 25, scope: !1013)
!1017 = !DILocation(line: 509, column: 8, scope: !1013)
!1018 = !DILocation(line: 512, column: 8, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 512, column: 8)
!1020 = !DILocation(line: 512, column: 8, scope: !1010)
!1021 = !DILocation(line: 514, column: 8, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 513, column: 6)
!1023 = !DILocation(line: 516, column: 13, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 516, column: 12)
!1025 = !DILocation(line: 516, column: 38, scope: !1024)
!1026 = !DILocation(line: 516, column: 12, scope: !1022)
!1027 = !DILocation(line: 517, column: 3, scope: !1024)
!1028 = !DILocation(line: 520, column: 4, scope: !1010)
!1029 = !DILocation(line: 521, column: 4, scope: !1010)
!1030 = !DILocation(line: 473, column: 8, scope: !935)
!1031 = !DILocation(line: 542, column: 7, scope: !935)
!1032 = !DILocation(line: 545, column: 28, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !981, file: !3, line: 543, column: 5)
!1034 = !DILocation(line: 545, column: 7, scope: !1033)
!1035 = !DILocation(line: 546, column: 13, scope: !1033)
!1036 = !DILocation(line: 546, column: 7, scope: !1033)
!1037 = !DILocation(line: 547, column: 23, scope: !1033)
!1038 = !DILocation(line: 548, column: 5, scope: !1033)
!1039 = !DILocation(line: 552, column: 32, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !981, file: !3, line: 550, column: 5)
!1041 = !DILocation(line: 552, column: 13, scope: !1040)
!1042 = !DILocation(line: 552, column: 23, scope: !1040)
!1043 = !DILocation(line: 553, column: 24, scope: !1040)
!1044 = !DILocation(line: 557, column: 11, scope: !935)
!1045 = !DILocation(line: 558, column: 17, scope: !935)
!1046 = !DILocation(line: 558, column: 15, scope: !935)
!1047 = !DILocation(line: 559, column: 10, scope: !935)
!1048 = !DILocation(line: 559, column: 20, scope: !935)
!1049 = !DILocation(line: 560, column: 28, scope: !935)
!1050 = !DILocation(line: 560, column: 40, scope: !935)
!1051 = !DILocation(line: 560, column: 10, scope: !935)
!1052 = !DILocation(line: 560, column: 19, scope: !935)
!1053 = !DILocation(line: 561, column: 12, scope: !935)
!1054 = !DILocation(line: 561, column: 17, scope: !935)
!1055 = !DILocation(line: 562, column: 14, scope: !935)
!1056 = !DILocation(line: 566, column: 7, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !935, file: !3, line: 566, column: 7)
!1058 = !DILocation(line: 567, column: 7, scope: !1057)
!1059 = !DILocation(line: 567, column: 17, scope: !1057)
!1060 = !DILocation(line: 567, column: 33, scope: !1057)
!1061 = !DILocation(line: 568, column: 7, scope: !1057)
!1062 = !DILocation(line: 568, column: 25, scope: !1057)
!1063 = !DILocation(line: 566, column: 7, scope: !935)
!1064 = !DILocation(line: 570, column: 15, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 569, column: 5)
!1066 = !DILocation(line: 571, column: 21, scope: !1065)
!1067 = !DILocation(line: 571, column: 19, scope: !1065)
!1068 = !DILocation(line: 572, column: 33, scope: !1065)
!1069 = !DILocation(line: 572, column: 14, scope: !1065)
!1070 = !DILocation(line: 572, column: 24, scope: !1065)
!1071 = !DILocation(line: 573, column: 32, scope: !1065)
!1072 = !DILocation(line: 573, column: 44, scope: !1065)
!1073 = !DILocation(line: 573, column: 14, scope: !1065)
!1074 = !DILocation(line: 573, column: 23, scope: !1065)
!1075 = !DILocation(line: 574, column: 16, scope: !1065)
!1076 = !DILocation(line: 574, column: 21, scope: !1065)
!1077 = !DILocation(line: 575, column: 18, scope: !1065)
!1078 = !DILocation(line: 576, column: 5, scope: !1065)
!1079 = !DILocation(line: 577, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !935, file: !3, line: 577, column: 7)
!1081 = !DILocation(line: 578, column: 7, scope: !1080)
!1082 = !DILocation(line: 578, column: 17, scope: !1080)
!1083 = !DILocation(line: 578, column: 31, scope: !1080)
!1084 = !DILocation(line: 579, column: 7, scope: !1080)
!1085 = !DILocation(line: 579, column: 25, scope: !1080)
!1086 = !DILocation(line: 577, column: 7, scope: !935)
!1087 = !DILocation(line: 581, column: 15, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 580, column: 5)
!1089 = !DILocation(line: 582, column: 21, scope: !1088)
!1090 = !DILocation(line: 582, column: 19, scope: !1088)
!1091 = !DILocation(line: 583, column: 33, scope: !1088)
!1092 = !DILocation(line: 583, column: 14, scope: !1088)
!1093 = !DILocation(line: 583, column: 24, scope: !1088)
!1094 = !DILocation(line: 584, column: 32, scope: !1088)
!1095 = !DILocation(line: 584, column: 44, scope: !1088)
!1096 = !DILocation(line: 584, column: 14, scope: !1088)
!1097 = !DILocation(line: 584, column: 23, scope: !1088)
!1098 = !DILocation(line: 585, column: 16, scope: !1088)
!1099 = !DILocation(line: 585, column: 21, scope: !1088)
!1100 = !DILocation(line: 586, column: 18, scope: !1088)
!1101 = !DILocation(line: 587, column: 5, scope: !1088)
!1102 = !DILocation(line: 590, column: 1, scope: !935)
!1103 = distinct !DISubprogram(name: "search_cache", scope: !3, file: !3, line: 987, type: !1104, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1108)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!59, !59, !1106}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!1108 = !{!1109, !1110}
!1109 = !DILocalVariable(name: "head", arg: 1, scope: !1103, file: !3, line: 987, type: !59)
!1110 = !DILocalVariable(name: "start_dir", arg: 2, scope: !1103, file: !3, line: 987, type: !1106)
!1111 = !DILocation(line: 0, scope: !1103)
!1112 = !DILocation(line: 989, column: 3, scope: !1103)
!1113 = !DILocation(line: 989, column: 10, scope: !1103)
!1114 = !DILocation(line: 989, column: 15, scope: !1103)
!1115 = !DILocation(line: 989, column: 24, scope: !1103)
!1116 = !DILocation(line: 989, column: 34, scope: !1103)
!1117 = !DILocation(line: 990, column: 18, scope: !1103)
!1118 = distinct !{!1118, !1112, !1117}
!1119 = !DILocation(line: 992, column: 3, scope: !1103)
!1120 = distinct !DISubprogram(name: "make_cpp_file", scope: !3, file: !3, line: 997, type: !1121, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1123)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!101, !374, !64, !80}
!1123 = !{!1124, !1125, !1126, !1127}
!1124 = !DILocalVariable(name: "pfile", arg: 1, scope: !1120, file: !3, line: 997, type: !374)
!1125 = !DILocalVariable(name: "dir", arg: 2, scope: !1120, file: !3, line: 997, type: !64)
!1126 = !DILocalVariable(name: "fname", arg: 3, scope: !1120, file: !3, line: 997, type: !80)
!1127 = !DILocalVariable(name: "file", scope: !1120, file: !3, line: 999, type: !101)
!1128 = !DILocation(line: 0, scope: !1120)
!1129 = !DILocation(line: 1001, column: 10, scope: !1120)
!1130 = !DILocation(line: 1002, column: 29, scope: !1120)
!1131 = !DILocation(line: 1002, column: 21, scope: !1120)
!1132 = !DILocation(line: 1002, column: 9, scope: !1120)
!1133 = !DILocation(line: 1002, column: 19, scope: !1120)
!1134 = !DILocation(line: 1003, column: 9, scope: !1120)
!1135 = !DILocation(line: 1003, column: 12, scope: !1120)
!1136 = !DILocation(line: 1004, column: 9, scope: !1120)
!1137 = !DILocation(line: 1004, column: 13, scope: !1120)
!1138 = !DILocation(line: 1005, column: 16, scope: !1120)
!1139 = !DILocation(line: 1005, column: 9, scope: !1120)
!1140 = !DILocation(line: 1005, column: 14, scope: !1120)
!1141 = !DILocation(line: 1007, column: 3, scope: !1120)
!1142 = distinct !DISubprogram(name: "find_file_in_dir", scope: !3, file: !3, line: 365, type: !372, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1143)
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1151, !1152}
!1144 = !DILocalVariable(name: "pfile", arg: 1, scope: !1142, file: !3, line: 365, type: !374)
!1145 = !DILocalVariable(name: "file", arg: 2, scope: !1142, file: !3, line: 365, type: !101)
!1146 = !DILocalVariable(name: "invalid_pch", arg: 3, scope: !1142, file: !3, line: 365, type: !271)
!1147 = !DILocalVariable(name: "path", scope: !1142, file: !3, line: 367, type: !71)
!1148 = !DILocalVariable(name: "hv", scope: !1149, file: !3, line: 379, type: !540)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 378, column: 5)
!1150 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 377, column: 7)
!1151 = !DILocalVariable(name: "copy", scope: !1149, file: !3, line: 380, type: !71)
!1152 = !DILocalVariable(name: "pp", scope: !1149, file: !3, line: 381, type: !551)
!1153 = !DILocation(line: 0, scope: !1142)
!1154 = !DILocation(line: 369, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 369, column: 7)
!1156 = !DILocation(line: 369, column: 33, scope: !1155)
!1157 = !DILocation(line: 369, column: 44, scope: !1155)
!1158 = !DILocation(line: 369, column: 42, scope: !1155)
!1159 = !DILocation(line: 369, column: 7, scope: !1142)
!1160 = !DILocation(line: 372, column: 15, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 372, column: 9)
!1162 = !DILocation(line: 372, column: 20, scope: !1161)
!1163 = !DILocation(line: 372, column: 9, scope: !1161)
!1164 = !DILocation(line: 372, column: 9, scope: !1155)
!1165 = !DILocation(line: 373, column: 42, scope: !1161)
!1166 = !DILocation(line: 373, column: 14, scope: !1161)
!1167 = !DILocation(line: 373, column: 7, scope: !1161)
!1168 = !DILocation(line: 375, column: 40, scope: !1161)
!1169 = !DILocation(line: 375, column: 14, scope: !1161)
!1170 = !DILocation(line: 0, scope: !1155)
!1171 = !DILocation(line: 377, column: 7, scope: !1150)
!1172 = !DILocation(line: 377, column: 7, scope: !1142)
!1173 = !DILocation(line: 379, column: 22, scope: !1149)
!1174 = !DILocation(line: 0, scope: !1149)
!1175 = !DILocation(line: 383, column: 39, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 383, column: 11)
!1177 = !DILocation(line: 383, column: 11, scope: !1176)
!1178 = !DILocation(line: 383, column: 72, scope: !1176)
!1179 = !DILocation(line: 383, column: 11, scope: !1149)
!1180 = !DILocation(line: 385, column: 10, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 384, column: 2)
!1182 = !DILocation(line: 385, column: 17, scope: !1181)
!1183 = !DILocation(line: 386, column: 4, scope: !1181)
!1184 = !DILocation(line: 389, column: 13, scope: !1149)
!1185 = !DILocation(line: 389, column: 18, scope: !1149)
!1186 = !DILocation(line: 390, column: 11, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 390, column: 11)
!1188 = !DILocation(line: 390, column: 11, scope: !1149)
!1189 = !DILocation(line: 393, column: 11, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 393, column: 11)
!1191 = !DILocation(line: 393, column: 11, scope: !1149)
!1192 = !DILocation(line: 396, column: 17, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 396, column: 11)
!1194 = !DILocation(line: 396, column: 24, scope: !1193)
!1195 = !DILocation(line: 396, column: 11, scope: !1149)
!1196 = !DILocation(line: 398, column: 4, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 397, column: 2)
!1198 = !DILocation(line: 399, column: 4, scope: !1197)
!1199 = !DILocation(line: 405, column: 23, scope: !1149)
!1200 = !DILocation(line: 407, column: 7, scope: !1149)
!1201 = !DILocation(line: 408, column: 45, scope: !1149)
!1202 = !DILocation(line: 408, column: 12, scope: !1149)
!1203 = !DILocation(line: 410, column: 11, scope: !1149)
!1204 = !DILocation(line: 412, column: 26, scope: !1149)
!1205 = !DILocation(line: 412, column: 18, scope: !1149)
!1206 = !DILocation(line: 413, column: 5, scope: !1150)
!1207 = !DILocation(line: 416, column: 13, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 415, column: 5)
!1209 = !DILocation(line: 416, column: 20, scope: !1208)
!1210 = !DILocation(line: 417, column: 13, scope: !1208)
!1211 = !DILocation(line: 417, column: 18, scope: !1208)
!1212 = !DILocation(line: 420, column: 3, scope: !1142)
!1213 = !DILocation(line: 421, column: 1, scope: !1142)
!1214 = distinct !DISubprogram(name: "search_path_exhausted", scope: !3, file: !3, line: 425, type: !1215, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1217)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!75, !374, !80, !101}
!1217 = !{!1218, !1219, !1220, !1221}
!1218 = !DILocalVariable(name: "pfile", arg: 1, scope: !1214, file: !3, line: 425, type: !374)
!1219 = !DILocalVariable(name: "header", arg: 2, scope: !1214, file: !3, line: 425, type: !80)
!1220 = !DILocalVariable(name: "file", arg: 3, scope: !1214, file: !3, line: 425, type: !101)
!1221 = !DILocalVariable(name: "func", scope: !1214, file: !3, line: 427, type: !694)
!1222 = !DILocation(line: 0, scope: !1214)
!1223 = !DILocation(line: 427, column: 38, scope: !1214)
!1224 = !DILocation(line: 431, column: 7, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 431, column: 7)
!1226 = !DILocation(line: 432, column: 7, scope: !1225)
!1227 = !DILocation(line: 432, column: 16, scope: !1225)
!1228 = !DILocation(line: 432, column: 20, scope: !1225)
!1229 = !DILocation(line: 431, column: 7, scope: !1214)
!1230 = !DILocation(line: 434, column: 25, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 434, column: 11)
!1232 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 433, column: 5)
!1233 = !DILocation(line: 434, column: 18, scope: !1231)
!1234 = !DILocation(line: 434, column: 23, scope: !1231)
!1235 = !DILocation(line: 434, column: 59, scope: !1231)
!1236 = !DILocation(line: 434, column: 11, scope: !1232)
!1237 = !DILocation(line: 436, column: 8, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 436, column: 8)
!1239 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 435, column: 2)
!1240 = !DILocation(line: 436, column: 8, scope: !1239)
!1241 = !DILocation(line: 438, column: 24, scope: !1239)
!1242 = !DILocation(line: 438, column: 4, scope: !1239)
!1243 = !DILocation(line: 439, column: 2, scope: !1239)
!1244 = !DILocation(line: 440, column: 26, scope: !1232)
!1245 = !DILocation(line: 440, column: 18, scope: !1232)
!1246 = !DILocation(line: 441, column: 5, scope: !1232)
!1247 = !DILocation(line: 444, column: 1, scope: !1214)
!1248 = distinct !DISubprogram(name: "open_file_failed", scope: !3, file: !3, line: 952, type: !1249, scopeLine: 953, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !374, !101, !214}
!1251 = !{!1252, !1253, !1254, !1255, !1256}
!1252 = !DILocalVariable(name: "pfile", arg: 1, scope: !1248, file: !3, line: 952, type: !374)
!1253 = !DILocalVariable(name: "file", arg: 2, scope: !1248, file: !3, line: 952, type: !101)
!1254 = !DILocalVariable(name: "angle_brackets", arg: 3, scope: !1248, file: !3, line: 952, type: !214)
!1255 = !DILocalVariable(name: "sysp", scope: !1248, file: !3, line: 954, type: !214)
!1256 = !DILocalVariable(name: "print_dep", scope: !1248, file: !3, line: 955, type: !75)
!1257 = !DILocation(line: 0, scope: !1248)
!1258 = !DILocation(line: 954, column: 21, scope: !1248)
!1259 = !DILocation(line: 954, column: 33, scope: !1248)
!1260 = !DILocation(line: 954, column: 46, scope: !1248)
!1261 = !DILocation(line: 954, column: 50, scope: !1248)
!1262 = !DILocation(line: 954, column: 60, scope: !1248)
!1263 = !DILocation(line: 954, column: 53, scope: !1248)
!1264 = !DILocation(line: 954, column: 14, scope: !1248)
!1265 = !DILocation(line: 954, column: 84, scope: !1248)
!1266 = !DILocation(line: 954, column: 69, scope: !1248)
!1267 = !DILocation(line: 955, column: 20, scope: !1248)
!1268 = !DILocation(line: 955, column: 54, scope: !1248)
!1269 = !DILocation(line: 955, column: 69, scope: !1248)
!1270 = !DILocation(line: 955, column: 73, scope: !1248)
!1271 = !DILocation(line: 955, column: 51, scope: !1248)
!1272 = !DILocation(line: 957, column: 17, scope: !1248)
!1273 = !DILocation(line: 957, column: 3, scope: !1248)
!1274 = !DILocation(line: 957, column: 9, scope: !1248)
!1275 = !DILocation(line: 958, column: 17, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 958, column: 7)
!1277 = !DILocation(line: 958, column: 20, scope: !1276)
!1278 = !DILocation(line: 958, column: 59, scope: !1276)
!1279 = !DILocation(line: 958, column: 68, scope: !1276)
!1280 = !DILocation(line: 958, column: 7, scope: !1248)
!1281 = !DILocation(line: 960, column: 28, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 959, column: 5)
!1283 = !DILocation(line: 960, column: 40, scope: !1282)
!1284 = !DILocation(line: 960, column: 7, scope: !1282)
!1285 = !DILocation(line: 963, column: 11, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 963, column: 11)
!1287 = !DILocation(line: 963, column: 11, scope: !1282)
!1288 = !DILocation(line: 964, column: 40, scope: !1286)
!1289 = !DILocation(line: 964, column: 2, scope: !1286)
!1290 = !DILocation(line: 975, column: 11, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 975, column: 11)
!1292 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 967, column: 5)
!1293 = !DILocation(line: 975, column: 42, scope: !1291)
!1294 = !DILocation(line: 976, column: 11, scope: !1291)
!1295 = !DILocation(line: 977, column: 14, scope: !1291)
!1296 = !DILocation(line: 975, column: 11, scope: !1292)
!1297 = !DILocation(line: 978, column: 40, scope: !1291)
!1298 = !DILocation(line: 978, column: 2, scope: !1291)
!1299 = !DILocation(line: 980, column: 42, scope: !1291)
!1300 = !DILocation(line: 980, column: 2, scope: !1291)
!1301 = !DILocation(line: 982, column: 1, scope: !1248)
!1302 = distinct !DISubprogram(name: "new_file_hash_entry", scope: !3, file: !3, line: 1086, type: !1303, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!59, !374}
!1305 = !{!1306, !1307}
!1306 = !DILocalVariable(name: "pfile", arg: 1, scope: !1302, file: !3, line: 1086, type: !374)
!1307 = !DILocalVariable(name: "idx", scope: !1302, file: !3, line: 1088, type: !7)
!1308 = !DILocation(line: 0, scope: !1302)
!1309 = !DILocation(line: 1089, column: 14, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 1089, column: 7)
!1311 = !DILocation(line: 1089, column: 33, scope: !1310)
!1312 = !DILocation(line: 1089, column: 56, scope: !1310)
!1313 = !DILocation(line: 1089, column: 7, scope: !1302)
!1314 = !DILocation(line: 1090, column: 5, scope: !1310)
!1315 = !DILocation(line: 1092, column: 16, scope: !1302)
!1316 = !DILocation(line: 1092, column: 57, scope: !1302)
!1317 = !DILocation(line: 1092, column: 35, scope: !1302)
!1318 = !DILocation(line: 1093, column: 18, scope: !1302)
!1319 = !DILocation(line: 1093, column: 11, scope: !1302)
!1320 = !DILocation(line: 1093, column: 3, scope: !1302)
!1321 = distinct !DISubprogram(name: "_cpp_stack_file", scope: !3, file: !3, line: 811, type: !1322, scopeLine: 812, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1324)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!75, !374, !101, !75}
!1324 = !{!1325, !1326, !1327, !1328, !1329}
!1325 = !DILocalVariable(name: "pfile", arg: 1, scope: !1321, file: !3, line: 811, type: !374)
!1326 = !DILocalVariable(name: "file", arg: 2, scope: !1321, file: !3, line: 811, type: !101)
!1327 = !DILocalVariable(name: "import", arg: 3, scope: !1321, file: !3, line: 811, type: !75)
!1328 = !DILocalVariable(name: "buffer", scope: !1321, file: !3, line: 813, type: !379)
!1329 = !DILocalVariable(name: "sysp", scope: !1321, file: !3, line: 814, type: !214)
!1330 = !DILocation(line: 0, scope: !1321)
!1331 = !DILocation(line: 816, column: 8, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 816, column: 7)
!1333 = !DILocation(line: 816, column: 7, scope: !1321)
!1334 = !DILocation(line: 819, column: 14, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 819, column: 7)
!1336 = !DILocation(line: 819, column: 21, scope: !1335)
!1337 = !DILocation(line: 819, column: 29, scope: !1335)
!1338 = !DILocation(line: 819, column: 38, scope: !1335)
!1339 = !DILocation(line: 819, column: 42, scope: !1335)
!1340 = !DILocation(line: 819, column: 7, scope: !1321)
!1341 = !DILocation(line: 822, column: 12, scope: !1335)
!1342 = !DILocation(line: 0, scope: !1335)
!1343 = !DILocation(line: 825, column: 7, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 825, column: 7)
!1345 = !DILocation(line: 825, column: 41, scope: !1344)
!1346 = !DILocation(line: 825, column: 40, scope: !1344)
!1347 = !DILocation(line: 825, column: 38, scope: !1344)
!1348 = !DILocation(line: 825, column: 47, scope: !1344)
!1349 = !DILocation(line: 825, column: 57, scope: !1344)
!1350 = !DILocation(line: 825, column: 51, scope: !1344)
!1351 = !DILocation(line: 825, column: 7, scope: !1321)
!1352 = !DILocation(line: 827, column: 18, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 827, column: 11)
!1354 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 826, column: 5)
!1355 = !DILocation(line: 827, column: 12, scope: !1353)
!1356 = !DILocation(line: 827, column: 28, scope: !1353)
!1357 = !DILocation(line: 827, column: 32, scope: !1353)
!1358 = !DILocation(line: 827, column: 11, scope: !1354)
!1359 = !DILocation(line: 828, column: 23, scope: !1353)
!1360 = !DILocation(line: 828, column: 35, scope: !1353)
!1361 = !DILocation(line: 828, column: 2, scope: !1353)
!1362 = !DILocation(line: 832, column: 9, scope: !1321)
!1363 = !DILocation(line: 832, column: 22, scope: !1321)
!1364 = !DILocation(line: 833, column: 9, scope: !1321)
!1365 = !DILocation(line: 833, column: 20, scope: !1321)
!1366 = !DILocation(line: 836, column: 42, scope: !1321)
!1367 = !DILocation(line: 836, column: 59, scope: !1321)
!1368 = !DILocation(line: 837, column: 8, scope: !1321)
!1369 = !DILocation(line: 838, column: 8, scope: !1321)
!1370 = !DILocation(line: 838, column: 12, scope: !1321)
!1371 = !DILocation(line: 838, column: 11, scope: !1321)
!1372 = !DILocation(line: 836, column: 12, scope: !1321)
!1373 = !DILocation(line: 839, column: 11, scope: !1321)
!1374 = !DILocation(line: 839, column: 16, scope: !1321)
!1375 = !DILocation(line: 840, column: 11, scope: !1321)
!1376 = !DILocation(line: 840, column: 16, scope: !1321)
!1377 = !DILocation(line: 843, column: 10, scope: !1321)
!1378 = !DILocation(line: 843, column: 19, scope: !1321)
!1379 = !DILocation(line: 844, column: 10, scope: !1321)
!1380 = !DILocation(line: 844, column: 20, scope: !1321)
!1381 = !DILocation(line: 847, column: 47, scope: !1321)
!1382 = !DILocation(line: 847, column: 3, scope: !1321)
!1383 = !DILocation(line: 849, column: 3, scope: !1321)
!1384 = !DILocation(line: 850, column: 1, scope: !1321)
!1385 = distinct !DISubprogram(name: "should_stack_file", scope: !3, file: !3, line: 703, type: !1322, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1386)
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1397}
!1387 = !DILocalVariable(name: "pfile", arg: 1, scope: !1385, file: !3, line: 703, type: !374)
!1388 = !DILocalVariable(name: "file", arg: 2, scope: !1385, file: !3, line: 703, type: !101)
!1389 = !DILocalVariable(name: "import", arg: 3, scope: !1385, file: !3, line: 703, type: !75)
!1390 = !DILocalVariable(name: "f", scope: !1385, file: !3, line: 705, type: !101)
!1391 = !DILocalVariable(name: "ref_file", scope: !1392, file: !3, line: 771, type: !101)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 770, column: 2)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 766, column: 11)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 762, column: 5)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 761, column: 3)
!1396 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 761, column: 3)
!1397 = !DILocalVariable(name: "same_file_p", scope: !1392, file: !3, line: 772, type: !75)
!1398 = !DILocation(line: 0, scope: !1385)
!1399 = !DILocation(line: 708, column: 13, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 708, column: 7)
!1401 = !DILocation(line: 708, column: 7, scope: !1400)
!1402 = !DILocation(line: 708, column: 7, scope: !1385)
!1403 = !DILocation(line: 714, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 714, column: 7)
!1405 = !DILocation(line: 714, column: 7, scope: !1385)
!1406 = !DILocation(line: 716, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 715, column: 5)
!1408 = !DILocation(line: 719, column: 17, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 719, column: 11)
!1410 = !DILocation(line: 719, column: 11, scope: !1409)
!1411 = !DILocation(line: 719, column: 11, scope: !1407)
!1412 = !DILocation(line: 725, column: 13, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 725, column: 7)
!1414 = !DILocation(line: 725, column: 7, scope: !1413)
!1415 = !DILocation(line: 725, column: 20, scope: !1413)
!1416 = !DILocation(line: 725, column: 37, scope: !1413)
!1417 = !DILocation(line: 725, column: 42, scope: !1413)
!1418 = !DILocation(line: 725, column: 7, scope: !1385)
!1419 = !DILocation(line: 729, column: 13, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 729, column: 7)
!1421 = !DILocation(line: 729, column: 7, scope: !1420)
!1422 = !DILocation(line: 729, column: 7, scope: !1385)
!1423 = !DILocation(line: 731, column: 17, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 730, column: 5)
!1425 = !DILocation(line: 731, column: 55, scope: !1424)
!1426 = !DILocation(line: 731, column: 65, scope: !1424)
!1427 = !DILocation(line: 731, column: 7, scope: !1424)
!1428 = !DILocation(line: 732, column: 16, scope: !1424)
!1429 = !DILocation(line: 733, column: 28, scope: !1424)
!1430 = !DILocation(line: 733, column: 7, scope: !1424)
!1431 = !DILocation(line: 734, column: 21, scope: !1424)
!1432 = !DILocation(line: 735, column: 7, scope: !1424)
!1433 = !DILocation(line: 738, column: 8, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 738, column: 7)
!1435 = !DILocation(line: 738, column: 7, scope: !1385)
!1436 = !DILocation(line: 744, column: 7, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 744, column: 7)
!1438 = !DILocation(line: 744, column: 7, scope: !1385)
!1439 = !DILocation(line: 749, column: 11, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 745, column: 5)
!1441 = !DILocation(line: 750, column: 2, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 749, column: 11)
!1443 = !DILocation(line: 756, column: 15, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 756, column: 7)
!1445 = !DILocation(line: 756, column: 8, scope: !1444)
!1446 = !DILocation(line: 756, column: 7, scope: !1385)
!1447 = !DILocation(line: 761, column: 19, scope: !1396)
!1448 = !DILocation(line: 0, scope: !1393)
!1449 = !DILocation(line: 0, scope: !1392)
!1450 = !DILocation(line: 761, column: 8, scope: !1396)
!1451 = !DILocation(line: 0, scope: !1396)
!1452 = !DILocation(line: 761, column: 3, scope: !1396)
!1453 = !DILocation(line: 763, column: 13, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 763, column: 11)
!1455 = !DILocation(line: 763, column: 11, scope: !1394)
!1456 = !DILocation(line: 766, column: 25, scope: !1393)
!1457 = !DILocation(line: 766, column: 22, scope: !1393)
!1458 = !DILocation(line: 767, column: 4, scope: !1393)
!1459 = !DILocation(line: 767, column: 10, scope: !1393)
!1460 = !DILocation(line: 767, column: 17, scope: !1393)
!1461 = !DILocation(line: 768, column: 4, scope: !1393)
!1462 = !DILocation(line: 768, column: 13, scope: !1393)
!1463 = !DILocation(line: 768, column: 34, scope: !1393)
!1464 = !DILocation(line: 768, column: 22, scope: !1393)
!1465 = !DILocation(line: 769, column: 4, scope: !1393)
!1466 = !DILocation(line: 769, column: 13, scope: !1393)
!1467 = !DILocation(line: 769, column: 33, scope: !1393)
!1468 = !DILocation(line: 769, column: 21, scope: !1393)
!1469 = !DILocation(line: 766, column: 11, scope: !1394)
!1470 = !DILocation(line: 774, column: 11, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 774, column: 8)
!1472 = !DILocation(line: 774, column: 8, scope: !1471)
!1473 = !DILocation(line: 774, column: 18, scope: !1471)
!1474 = !DILocation(line: 774, column: 25, scope: !1471)
!1475 = !DILocation(line: 774, column: 22, scope: !1471)
!1476 = !DILocation(line: 774, column: 8, scope: !1392)
!1477 = !DILocation(line: 778, column: 44, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 775, column: 6)
!1479 = !DILocation(line: 778, column: 52, scope: !1478)
!1480 = !DILocation(line: 778, column: 19, scope: !1478)
!1481 = !DILocation(line: 779, column: 28, scope: !1478)
!1482 = !DILocation(line: 779, column: 18, scope: !1478)
!1483 = !DILocation(line: 779, column: 23, scope: !1478)
!1484 = !DILocation(line: 780, column: 6, scope: !1478)
!1485 = !DILocation(line: 0, scope: !1471)
!1486 = !DILocation(line: 785, column: 18, scope: !1392)
!1487 = !DILocation(line: 787, column: 4, scope: !1392)
!1488 = !DILocation(line: 787, column: 20, scope: !1392)
!1489 = !DILocation(line: 787, column: 40, scope: !1392)
!1490 = !DILocation(line: 787, column: 28, scope: !1392)
!1491 = !DILocation(line: 788, column: 4, scope: !1392)
!1492 = !DILocation(line: 788, column: 26, scope: !1392)
!1493 = !DILocation(line: 789, column: 15, scope: !1392)
!1494 = !DILocation(line: 788, column: 8, scope: !1392)
!1495 = !DILocation(line: 788, column: 7, scope: !1392)
!1496 = !DILocation(line: 792, column: 11, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 792, column: 8)
!1498 = !DILocation(line: 792, column: 8, scope: !1497)
!1499 = !DILocation(line: 792, column: 18, scope: !1497)
!1500 = !DILocation(line: 792, column: 25, scope: !1497)
!1501 = !DILocation(line: 792, column: 22, scope: !1497)
!1502 = !DILocation(line: 792, column: 8, scope: !1392)
!1503 = !DILocation(line: 794, column: 18, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 793, column: 6)
!1505 = !DILocation(line: 794, column: 23, scope: !1504)
!1506 = !DILocation(line: 795, column: 8, scope: !1504)
!1507 = !DILocation(line: 796, column: 6, scope: !1504)
!1508 = !DILocation(line: 761, column: 40, scope: !1395)
!1509 = !DILocation(line: 761, column: 3, scope: !1395)
!1510 = distinct !{!1510, !1452, !1511}
!1511 = !DILocation(line: 801, column: 5, scope: !1396)
!1512 = !DILocation(line: 803, column: 12, scope: !1385)
!1513 = !DILocation(line: 803, column: 10, scope: !1385)
!1514 = !DILocation(line: 803, column: 3, scope: !1385)
!1515 = !DILocation(line: 804, column: 1, scope: !1385)
!1516 = distinct !DISubprogram(name: "_cpp_mark_file_once_only", scope: !3, file: !3, line: 854, type: !1517, scopeLine: 855, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !374, !101}
!1519 = !{!1520, !1521}
!1520 = !DILocalVariable(name: "pfile", arg: 1, scope: !1516, file: !3, line: 854, type: !374)
!1521 = !DILocalVariable(name: "file", arg: 2, scope: !1516, file: !3, line: 854, type: !101)
!1522 = !DILocation(line: 0, scope: !1516)
!1523 = !DILocation(line: 856, column: 10, scope: !1516)
!1524 = !DILocation(line: 856, column: 25, scope: !1516)
!1525 = !DILocation(line: 857, column: 9, scope: !1516)
!1526 = !DILocation(line: 857, column: 19, scope: !1516)
!1527 = !DILocation(line: 858, column: 1, scope: !1516)
!1528 = distinct !DISubprogram(name: "_cpp_stack_include", scope: !3, file: !3, line: 924, type: !1529, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1531)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!75, !374, !80, !214, !42}
!1531 = !{!1532, !1533, !1534, !1535, !1536, !1537}
!1532 = !DILocalVariable(name: "pfile", arg: 1, scope: !1528, file: !3, line: 924, type: !374)
!1533 = !DILocalVariable(name: "fname", arg: 2, scope: !1528, file: !3, line: 924, type: !80)
!1534 = !DILocalVariable(name: "angle_brackets", arg: 3, scope: !1528, file: !3, line: 924, type: !214)
!1535 = !DILocalVariable(name: "type", arg: 4, scope: !1528, file: !3, line: 925, type: !42)
!1536 = !DILocalVariable(name: "dir", scope: !1528, file: !3, line: 927, type: !69)
!1537 = !DILocalVariable(name: "file", scope: !1528, file: !3, line: 928, type: !101)
!1538 = !DILocation(line: 0, scope: !1528)
!1539 = !DILocation(line: 930, column: 9, scope: !1528)
!1540 = !DILocation(line: 931, column: 8, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 931, column: 7)
!1542 = !DILocation(line: 931, column: 7, scope: !1528)
!1543 = !DILocation(line: 934, column: 10, scope: !1528)
!1544 = !DILocation(line: 944, column: 13, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 944, column: 7)
!1546 = !DILocation(line: 944, column: 21, scope: !1545)
!1547 = !DILocation(line: 944, column: 29, scope: !1545)
!1548 = !DILocation(line: 944, column: 38, scope: !1545)
!1549 = !DILocation(line: 944, column: 45, scope: !1545)
!1550 = !DILocation(line: 944, column: 58, scope: !1545)
!1551 = !DILocation(line: 944, column: 50, scope: !1545)
!1552 = !DILocation(line: 945, column: 12, scope: !1545)
!1553 = !DILocation(line: 945, column: 24, scope: !1545)
!1554 = !DILocation(line: 945, column: 40, scope: !1545)
!1555 = !DILocation(line: 945, column: 5, scope: !1545)
!1556 = !DILocation(line: 947, column: 45, scope: !1528)
!1557 = !DILocation(line: 947, column: 40, scope: !1528)
!1558 = !DILocation(line: 947, column: 10, scope: !1528)
!1559 = !DILocation(line: 947, column: 3, scope: !1528)
!1560 = !DILocation(line: 948, column: 1, scope: !1528)
!1561 = distinct !DISubprogram(name: "search_path_head", scope: !3, file: !3, line: 864, type: !1562, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1564)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!69, !374, !80, !214, !42}
!1564 = !{!1565, !1566, !1567, !1568, !1569, !1570}
!1565 = !DILocalVariable(name: "pfile", arg: 1, scope: !1561, file: !3, line: 864, type: !374)
!1566 = !DILocalVariable(name: "fname", arg: 2, scope: !1561, file: !3, line: 864, type: !80)
!1567 = !DILocalVariable(name: "angle_brackets", arg: 3, scope: !1561, file: !3, line: 864, type: !214)
!1568 = !DILocalVariable(name: "type", arg: 4, scope: !1561, file: !3, line: 865, type: !42)
!1569 = !DILocalVariable(name: "dir", scope: !1561, file: !3, line: 867, type: !64)
!1570 = !DILocalVariable(name: "file", scope: !1561, file: !3, line: 868, type: !101)
!1571 = !DILocation(line: 0, scope: !1561)
!1572 = !DILocation(line: 870, column: 7, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 870, column: 7)
!1574 = !DILocation(line: 870, column: 7, scope: !1561)
!1575 = !DILocation(line: 871, column: 20, scope: !1573)
!1576 = !DILocation(line: 871, column: 5, scope: !1573)
!1577 = !DILocation(line: 874, column: 17, scope: !1561)
!1578 = !DILocation(line: 874, column: 24, scope: !1561)
!1579 = !DILocation(line: 874, column: 10, scope: !1561)
!1580 = !DILocation(line: 874, column: 41, scope: !1561)
!1581 = !DILocation(line: 874, column: 68, scope: !1561)
!1582 = !DILocation(line: 879, column: 12, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 879, column: 7)
!1584 = !DILocation(line: 879, column: 31, scope: !1583)
!1585 = !DILocation(line: 879, column: 40, scope: !1583)
!1586 = !DILocation(line: 879, column: 34, scope: !1583)
!1587 = !DILocation(line: 880, column: 7, scope: !1583)
!1588 = !DILocation(line: 880, column: 31, scope: !1583)
!1589 = !DILocation(line: 880, column: 20, scope: !1583)
!1590 = !DILocation(line: 879, column: 7, scope: !1561)
!1591 = !DILocation(line: 881, column: 22, scope: !1583)
!1592 = !DILocation(line: 881, column: 5, scope: !1583)
!1593 = !DILocation(line: 882, column: 12, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 882, column: 12)
!1595 = !DILocation(line: 882, column: 12, scope: !1583)
!1596 = !DILocation(line: 883, column: 18, scope: !1594)
!1597 = !DILocation(line: 883, column: 5, scope: !1594)
!1598 = !DILocation(line: 884, column: 17, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 884, column: 12)
!1600 = !DILocation(line: 884, column: 12, scope: !1594)
!1601 = !DILocation(line: 887, column: 12, scope: !1599)
!1602 = !DILocation(line: 887, column: 5, scope: !1599)
!1603 = !DILocation(line: 888, column: 19, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 888, column: 12)
!1605 = !DILocation(line: 888, column: 12, scope: !1604)
!1606 = !DILocation(line: 888, column: 12, scope: !1599)
!1607 = !DILocation(line: 889, column: 18, scope: !1604)
!1608 = !DILocation(line: 891, column: 33, scope: !1604)
!1609 = !DILocation(line: 892, column: 12, scope: !1604)
!1610 = !DILocation(line: 892, column: 5, scope: !1604)
!1611 = !DILocation(line: 892, column: 36, scope: !1604)
!1612 = !DILocation(line: 892, column: 21, scope: !1604)
!1613 = !DILocation(line: 891, column: 12, scope: !1604)
!1614 = !DILocation(line: 891, column: 5, scope: !1604)
!1615 = !DILocation(line: 0, scope: !1583)
!1616 = !DILocation(line: 894, column: 11, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 894, column: 7)
!1618 = !DILocation(line: 894, column: 7, scope: !1561)
!1619 = !DILocation(line: 895, column: 5, scope: !1617)
!1620 = !DILocation(line: 899, column: 1, scope: !1561)
!1621 = distinct !DISubprogram(name: "cpp_included", scope: !3, file: !3, line: 1113, type: !1622, scopeLine: 1114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1624)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!75, !374, !80}
!1624 = !{!1625, !1626, !1627}
!1625 = !DILocalVariable(name: "pfile", arg: 1, scope: !1621, file: !3, line: 1113, type: !374)
!1626 = !DILocalVariable(name: "fname", arg: 2, scope: !1621, file: !3, line: 1113, type: !80)
!1627 = !DILocalVariable(name: "entry", scope: !1621, file: !3, line: 1115, type: !59)
!1628 = !DILocation(line: 0, scope: !1621)
!1629 = !DILocation(line: 1118, column: 34, scope: !1621)
!1630 = !DILocation(line: 1118, column: 52, scope: !1621)
!1631 = !DILocation(line: 1118, column: 6, scope: !1621)
!1632 = !DILocation(line: 1117, column: 11, scope: !1621)
!1633 = !DILocation(line: 1120, column: 3, scope: !1621)
!1634 = !DILocation(line: 1120, column: 10, scope: !1621)
!1635 = !DILocation(line: 1120, column: 16, scope: !1621)
!1636 = !DILocation(line: 1120, column: 27, scope: !1621)
!1637 = !DILocation(line: 1120, column: 37, scope: !1621)
!1638 = !DILocation(line: 1120, column: 45, scope: !1621)
!1639 = !DILocation(line: 1120, column: 57, scope: !1621)
!1640 = !DILocation(line: 1120, column: 63, scope: !1621)
!1641 = !DILocation(line: 1121, column: 20, scope: !1621)
!1642 = distinct !{!1642, !1633, !1641}
!1643 = !DILocation(line: 1123, column: 16, scope: !1621)
!1644 = !DILocation(line: 1123, column: 10, scope: !1621)
!1645 = !DILocation(line: 1123, column: 3, scope: !1621)
!1646 = distinct !DISubprogram(name: "cpp_included_before", scope: !3, file: !3, line: 1130, type: !1647, scopeLine: 1132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1649)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!75, !374, !80, !96}
!1649 = !{!1650, !1651, !1652, !1653}
!1650 = !DILocalVariable(name: "pfile", arg: 1, scope: !1646, file: !3, line: 1130, type: !374)
!1651 = !DILocalVariable(name: "fname", arg: 2, scope: !1646, file: !3, line: 1130, type: !80)
!1652 = !DILocalVariable(name: "location", arg: 3, scope: !1646, file: !3, line: 1131, type: !96)
!1653 = !DILocalVariable(name: "entry", scope: !1646, file: !3, line: 1133, type: !59)
!1654 = !DILocation(line: 0, scope: !1646)
!1655 = !DILocation(line: 1136, column: 34, scope: !1646)
!1656 = !DILocation(line: 1136, column: 52, scope: !1646)
!1657 = !DILocation(line: 1136, column: 6, scope: !1646)
!1658 = !DILocation(line: 1135, column: 11, scope: !1646)
!1659 = !DILocation(line: 1138, column: 3, scope: !1646)
!1660 = !DILocation(line: 1138, column: 10, scope: !1646)
!1661 = !DILocation(line: 1138, column: 16, scope: !1646)
!1662 = !DILocation(line: 1138, column: 27, scope: !1646)
!1663 = !DILocation(line: 1138, column: 37, scope: !1646)
!1664 = !DILocation(line: 1138, column: 45, scope: !1646)
!1665 = !DILocation(line: 1138, column: 57, scope: !1646)
!1666 = !DILocation(line: 1138, column: 63, scope: !1646)
!1667 = !DILocation(line: 1138, column: 48, scope: !1646)
!1668 = !DILocation(line: 1139, column: 6, scope: !1646)
!1669 = !DILocation(line: 1139, column: 16, scope: !1646)
!1670 = !DILocation(line: 1139, column: 25, scope: !1646)
!1671 = !DILocation(line: 1140, column: 20, scope: !1646)
!1672 = distinct !{!1672, !1659, !1671}
!1673 = !DILocation(line: 1142, column: 16, scope: !1646)
!1674 = !DILocation(line: 1142, column: 10, scope: !1646)
!1675 = !DILocation(line: 1142, column: 3, scope: !1646)
!1676 = distinct !DISubprogram(name: "_cpp_init_files", scope: !3, file: !3, line: 1186, type: !722, scopeLine: 1187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1677)
!1677 = !{!1678}
!1678 = !DILocalVariable(name: "pfile", arg: 1, scope: !1676, file: !3, line: 1186, type: !374)
!1679 = !DILocation(line: 0, scope: !1676)
!1680 = !DILocation(line: 1188, column: 22, scope: !1676)
!1681 = !DILocation(line: 1188, column: 10, scope: !1676)
!1682 = !DILocation(line: 1188, column: 20, scope: !1676)
!1683 = !DILocation(line: 1190, column: 21, scope: !1676)
!1684 = !DILocation(line: 1190, column: 10, scope: !1676)
!1685 = !DILocation(line: 1190, column: 19, scope: !1676)
!1686 = !DILocation(line: 1192, column: 3, scope: !1676)
!1687 = !DILocation(line: 1193, column: 34, scope: !1676)
!1688 = !DILocation(line: 1193, column: 10, scope: !1676)
!1689 = !DILocation(line: 1193, column: 32, scope: !1676)
!1690 = !DILocation(line: 1196, column: 27, scope: !1676)
!1691 = !DILocation(line: 1196, column: 3, scope: !1676)
!1692 = !DILocation(line: 1199, column: 1, scope: !1676)
!1693 = distinct !DISubprogram(name: "file_hash_hash", scope: !3, file: !3, line: 1148, type: !538, scopeLine: 1149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1694)
!1694 = !{!1695, !1696, !1697}
!1695 = !DILocalVariable(name: "p", arg: 1, scope: !1693, file: !3, line: 1148, type: !541)
!1696 = !DILocalVariable(name: "entry", scope: !1693, file: !3, line: 1150, type: !59)
!1697 = !DILocalVariable(name: "hname", scope: !1693, file: !3, line: 1151, type: !80)
!1698 = !DILocation(line: 0, scope: !1693)
!1699 = !DILocation(line: 1152, column: 14, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 1152, column: 7)
!1701 = !DILocation(line: 1152, column: 7, scope: !1700)
!1702 = !DILocation(line: 0, scope: !1700)
!1703 = !DILocation(line: 1152, column: 7, scope: !1693)
!1704 = !DILocation(line: 1153, column: 22, scope: !1700)
!1705 = !DILocation(line: 1153, column: 28, scope: !1700)
!1706 = !DILocation(line: 1153, column: 5, scope: !1700)
!1707 = !DILocation(line: 1155, column: 22, scope: !1700)
!1708 = !DILocation(line: 1155, column: 27, scope: !1700)
!1709 = !DILocation(line: 1157, column: 10, scope: !1693)
!1710 = !DILocation(line: 1157, column: 3, scope: !1693)
!1711 = distinct !DISubprogram(name: "file_hash_eq", scope: !3, file: !3, line: 1162, type: !546, scopeLine: 1163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1712)
!1712 = !{!1713, !1714, !1715, !1716, !1717}
!1713 = !DILocalVariable(name: "p", arg: 1, scope: !1711, file: !3, line: 1162, type: !541)
!1714 = !DILocalVariable(name: "q", arg: 2, scope: !1711, file: !3, line: 1162, type: !541)
!1715 = !DILocalVariable(name: "entry", scope: !1711, file: !3, line: 1164, type: !59)
!1716 = !DILocalVariable(name: "fname", scope: !1711, file: !3, line: 1165, type: !80)
!1717 = !DILocalVariable(name: "hname", scope: !1711, file: !3, line: 1166, type: !80)
!1718 = !DILocation(line: 0, scope: !1711)
!1719 = !DILocation(line: 1168, column: 14, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 1168, column: 7)
!1721 = !DILocation(line: 1168, column: 7, scope: !1720)
!1722 = !DILocation(line: 0, scope: !1720)
!1723 = !DILocation(line: 1168, column: 7, scope: !1711)
!1724 = !DILocation(line: 1169, column: 22, scope: !1720)
!1725 = !DILocation(line: 1169, column: 28, scope: !1720)
!1726 = !DILocation(line: 1169, column: 5, scope: !1720)
!1727 = !DILocation(line: 1171, column: 22, scope: !1720)
!1728 = !DILocation(line: 1171, column: 27, scope: !1720)
!1729 = !DILocation(line: 1173, column: 10, scope: !1711)
!1730 = !DILocation(line: 1173, column: 32, scope: !1711)
!1731 = !DILocation(line: 1173, column: 3, scope: !1711)
!1732 = distinct !DISubprogram(name: "allocate_file_hash_entries", scope: !3, file: !3, line: 1076, type: !722, scopeLine: 1077, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1733)
!1733 = !{!1734, !1735}
!1734 = !DILocalVariable(name: "pfile", arg: 1, scope: !1732, file: !3, line: 1076, type: !374)
!1735 = !DILocalVariable(name: "pool", scope: !1732, file: !3, line: 1078, type: !282)
!1736 = !DILocation(line: 0, scope: !1732)
!1737 = !DILocation(line: 1078, column: 39, scope: !1732)
!1738 = !DILocation(line: 1079, column: 9, scope: !1732)
!1739 = !DILocation(line: 1079, column: 32, scope: !1732)
!1740 = !DILocation(line: 1080, column: 23, scope: !1732)
!1741 = !DILocation(line: 1080, column: 9, scope: !1732)
!1742 = !DILocation(line: 1080, column: 14, scope: !1732)
!1743 = !DILocation(line: 1081, column: 28, scope: !1732)
!1744 = !DILocation(line: 1082, column: 1, scope: !1732)
!1745 = distinct !DISubprogram(name: "nonexistent_file_hash_eq", scope: !3, file: !3, line: 1179, type: !546, scopeLine: 1180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1746)
!1746 = !{!1747, !1748}
!1747 = !DILocalVariable(name: "p", arg: 1, scope: !1745, file: !3, line: 1179, type: !541)
!1748 = !DILocalVariable(name: "q", arg: 2, scope: !1745, file: !3, line: 1179, type: !541)
!1749 = !DILocation(line: 0, scope: !1745)
!1750 = !DILocation(line: 1181, column: 10, scope: !1745)
!1751 = !DILocation(line: 1181, column: 54, scope: !1745)
!1752 = !DILocation(line: 1181, column: 3, scope: !1745)
!1753 = distinct !DISubprogram(name: "_cpp_cleanup_files", scope: !3, file: !3, line: 1203, type: !722, scopeLine: 1204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1754)
!1754 = !{!1755}
!1755 = !DILocalVariable(name: "pfile", arg: 1, scope: !1753, file: !3, line: 1203, type: !374)
!1756 = !DILocation(line: 0, scope: !1753)
!1757 = !DILocation(line: 1205, column: 23, scope: !1753)
!1758 = !DILocation(line: 1205, column: 3, scope: !1753)
!1759 = !DILocation(line: 1206, column: 23, scope: !1753)
!1760 = !DILocation(line: 1206, column: 3, scope: !1753)
!1761 = !DILocation(line: 1207, column: 23, scope: !1753)
!1762 = !DILocation(line: 1207, column: 3, scope: !1753)
!1763 = !DILocation(line: 1208, column: 3, scope: !1753)
!1764 = !DILocation(line: 1209, column: 3, scope: !1753)
!1765 = !DILocation(line: 1210, column: 3, scope: !1753)
!1766 = !DILocation(line: 1211, column: 1, scope: !1753)
!1767 = distinct !DISubprogram(name: "free_file_hash_entries", scope: !3, file: !3, line: 1098, type: !722, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1768)
!1768 = !{!1769, !1770, !1771}
!1769 = !DILocalVariable(name: "pfile", arg: 1, scope: !1767, file: !3, line: 1098, type: !374)
!1770 = !DILocalVariable(name: "iter", scope: !1767, file: !3, line: 1100, type: !282)
!1771 = !DILocalVariable(name: "next", scope: !1772, file: !3, line: 1103, type: !282)
!1772 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 1102, column: 5)
!1773 = !DILocation(line: 0, scope: !1767)
!1774 = !DILocation(line: 1100, column: 46, scope: !1767)
!1775 = !DILocation(line: 1101, column: 3, scope: !1767)
!1776 = !DILocation(line: 1103, column: 49, scope: !1772)
!1777 = !DILocation(line: 0, scope: !1772)
!1778 = !DILocation(line: 1104, column: 7, scope: !1772)
!1779 = distinct !{!1779, !1775, !1780}
!1780 = !DILocation(line: 1106, column: 5, scope: !1767)
!1781 = !DILocation(line: 1107, column: 1, scope: !1767)
!1782 = distinct !DISubprogram(name: "destroy_all_cpp_files", scope: !3, file: !3, line: 1022, type: !722, scopeLine: 1023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1783)
!1783 = !{!1784, !1785, !1786}
!1784 = !DILocalVariable(name: "pfile", arg: 1, scope: !1782, file: !3, line: 1022, type: !374)
!1785 = !DILocalVariable(name: "iter", scope: !1782, file: !3, line: 1024, type: !101)
!1786 = !DILocalVariable(name: "next", scope: !1787, file: !3, line: 1027, type: !101)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 1026, column: 5)
!1788 = !DILocation(line: 0, scope: !1782)
!1789 = !DILocation(line: 1024, column: 28, scope: !1782)
!1790 = !DILocation(line: 1025, column: 3, scope: !1782)
!1791 = !DILocation(line: 1027, column: 31, scope: !1787)
!1792 = !DILocation(line: 0, scope: !1787)
!1793 = !DILocation(line: 1028, column: 7, scope: !1787)
!1794 = distinct !{!1794, !1790, !1795}
!1795 = !DILocation(line: 1030, column: 5, scope: !1782)
!1796 = !DILocation(line: 1031, column: 1, scope: !1782)
!1797 = distinct !DISubprogram(name: "cpp_clear_file_cache", scope: !3, file: !3, line: 1216, type: !722, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1798)
!1798 = !{!1799}
!1799 = !DILocalVariable(name: "pfile", arg: 1, scope: !1797, file: !3, line: 1216, type: !374)
!1800 = !DILocation(line: 0, scope: !1797)
!1801 = !DILocation(line: 1218, column: 3, scope: !1797)
!1802 = !DILocation(line: 1219, column: 10, scope: !1797)
!1803 = !DILocation(line: 1219, column: 28, scope: !1797)
!1804 = !DILocation(line: 1220, column: 10, scope: !1797)
!1805 = !DILocation(line: 1220, column: 20, scope: !1797)
!1806 = !DILocation(line: 1221, column: 3, scope: !1797)
!1807 = !DILocation(line: 1222, column: 1, scope: !1797)
!1808 = distinct !DISubprogram(name: "_cpp_fake_include", scope: !3, file: !3, line: 1226, type: !663, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1809)
!1809 = !{!1810, !1811}
!1810 = !DILocalVariable(name: "pfile", arg: 1, scope: !1808, file: !3, line: 1226, type: !374)
!1811 = !DILocalVariable(name: "fname", arg: 2, scope: !1808, file: !3, line: 1226, type: !80)
!1812 = !DILocation(line: 0, scope: !1808)
!1813 = !DILocation(line: 1228, column: 40, scope: !1808)
!1814 = !DILocation(line: 1228, column: 48, scope: !1808)
!1815 = !DILocation(line: 1228, column: 54, scope: !1808)
!1816 = !DILocation(line: 1228, column: 3, scope: !1808)
!1817 = !DILocation(line: 1229, column: 1, scope: !1808)
!1818 = distinct !DISubprogram(name: "cpp_make_system_header", scope: !3, file: !3, line: 1235, type: !1819, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1821)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !374, !214, !214}
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1829}
!1822 = !DILocalVariable(name: "pfile", arg: 1, scope: !1818, file: !3, line: 1235, type: !374)
!1823 = !DILocalVariable(name: "syshdr", arg: 2, scope: !1818, file: !3, line: 1235, type: !214)
!1824 = !DILocalVariable(name: "externc", arg: 3, scope: !1818, file: !3, line: 1235, type: !214)
!1825 = !DILocalVariable(name: "flags", scope: !1818, file: !3, line: 1237, type: !214)
!1826 = !DILocalVariable(name: "line_table", scope: !1818, file: !3, line: 1238, type: !1827)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!1829 = !DILocalVariable(name: "map", scope: !1818, file: !3, line: 1239, type: !659)
!1830 = !DILocation(line: 0, scope: !1818)
!1831 = !DILocation(line: 1238, column: 47, scope: !1818)
!1832 = !DILocation(line: 1239, column: 45, scope: !1818)
!1833 = !DILocation(line: 1239, column: 62, scope: !1818)
!1834 = !DILocation(line: 1239, column: 66, scope: !1818)
!1835 = !DILocation(line: 1239, column: 33, scope: !1818)
!1836 = !DILocation(line: 1242, column: 7, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 1242, column: 7)
!1838 = !DILocation(line: 1242, column: 7, scope: !1818)
!1839 = !DILocation(line: 1243, column: 26, scope: !1837)
!1840 = !DILocation(line: 1243, column: 15, scope: !1837)
!1841 = !DILocation(line: 1243, column: 5, scope: !1837)
!1842 = !DILocation(line: 1244, column: 25, scope: !1818)
!1843 = !DILocation(line: 1244, column: 10, scope: !1818)
!1844 = !DILocation(line: 1244, column: 18, scope: !1818)
!1845 = !DILocation(line: 1244, column: 23, scope: !1818)
!1846 = !DILocation(line: 1245, column: 47, scope: !1818)
!1847 = !DILocation(line: 1246, column: 10, scope: !1818)
!1848 = !DILocation(line: 1245, column: 3, scope: !1818)
!1849 = !DILocation(line: 1247, column: 1, scope: !1818)
!1850 = distinct !DISubprogram(name: "cpp_change_file", scope: !3, file: !3, line: 1253, type: !1851, scopeLine: 1255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !374, !49, !80}
!1853 = !{!1854, !1855, !1856}
!1854 = !DILocalVariable(name: "pfile", arg: 1, scope: !1850, file: !3, line: 1253, type: !374)
!1855 = !DILocalVariable(name: "reason", arg: 2, scope: !1850, file: !3, line: 1253, type: !49)
!1856 = !DILocalVariable(name: "new_name", arg: 3, scope: !1850, file: !3, line: 1254, type: !80)
!1857 = !DILocation(line: 0, scope: !1850)
!1858 = !DILocation(line: 1256, column: 3, scope: !1850)
!1859 = !DILocation(line: 1257, column: 1, scope: !1850)
!1860 = distinct !DISubprogram(name: "_cpp_report_missing_guards", scope: !3, file: !3, line: 1305, type: !722, scopeLine: 1306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1861)
!1861 = !{!1862, !1863, !1864}
!1862 = !DILocalVariable(name: "pfile", arg: 1, scope: !1860, file: !3, line: 1305, type: !374)
!1863 = !DILocalVariable(name: "data", scope: !1860, file: !3, line: 1307, type: !292)
!1864 = !DILocalVariable(name: "i", scope: !1865, file: !3, line: 1315, type: !256)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 1314, column: 5)
!1866 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 1313, column: 7)
!1867 = !DILocation(line: 0, scope: !1860)
!1868 = !DILocation(line: 1307, column: 3, scope: !1860)
!1869 = !DILocation(line: 1309, column: 8, scope: !1860)
!1870 = !DILocation(line: 1309, column: 14, scope: !1860)
!1871 = !DILocation(line: 1310, column: 38, scope: !1860)
!1872 = !DILocation(line: 1310, column: 16, scope: !1860)
!1873 = !DILocation(line: 1310, column: 8, scope: !1860)
!1874 = !DILocation(line: 1310, column: 14, scope: !1860)
!1875 = !DILocation(line: 1311, column: 25, scope: !1860)
!1876 = !DILocation(line: 1311, column: 3, scope: !1860)
!1877 = !DILocation(line: 1313, column: 12, scope: !1866)
!1878 = !DILocation(line: 1313, column: 18, scope: !1866)
!1879 = !DILocation(line: 1313, column: 7, scope: !1860)
!1880 = !DILocation(line: 1320, column: 36, scope: !1865)
!1881 = !DILocation(line: 1320, column: 7, scope: !1865)
!1882 = !DILocation(line: 1327, column: 7, scope: !1865)
!1883 = !DILocation(line: 1326, column: 7, scope: !1865)
!1884 = !DILocation(line: 0, scope: !1865)
!1885 = !DILocation(line: 1328, column: 12, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 1328, column: 7)
!1887 = !DILocation(line: 0, scope: !1886)
!1888 = !DILocation(line: 1328, column: 28, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 1328, column: 7)
!1890 = !DILocation(line: 1328, column: 21, scope: !1889)
!1891 = !DILocation(line: 1328, column: 7, scope: !1886)
!1892 = !DILocation(line: 1330, column: 11, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !3, line: 1329, column: 2)
!1894 = !DILocation(line: 1330, column: 26, scope: !1893)
!1895 = !DILocation(line: 1330, column: 4, scope: !1893)
!1896 = !DILocation(line: 1331, column: 16, scope: !1893)
!1897 = !DILocation(line: 1331, column: 4, scope: !1893)
!1898 = !DILocation(line: 1328, column: 36, scope: !1889)
!1899 = !DILocation(line: 1328, column: 7, scope: !1889)
!1900 = distinct !{!1900, !1891, !1901}
!1901 = !DILocation(line: 1332, column: 2, scope: !1886)
!1902 = !DILocation(line: 1333, column: 13, scope: !1865)
!1903 = !DILocation(line: 1333, column: 7, scope: !1865)
!1904 = !DILocation(line: 1334, column: 5, scope: !1865)
!1905 = !DILocation(line: 1335, column: 1, scope: !1860)
!1906 = distinct !DISubprogram(name: "report_missing_guard", scope: !3, file: !3, line: 1267, type: !1907, scopeLine: 1268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!214, !551, !57}
!1909 = !{!1910, !1911, !1912, !1913, !1914}
!1910 = !DILocalVariable(name: "slot", arg: 1, scope: !1906, file: !3, line: 1267, type: !551)
!1911 = !DILocalVariable(name: "d", arg: 2, scope: !1906, file: !3, line: 1267, type: !57)
!1912 = !DILocalVariable(name: "entry", scope: !1906, file: !3, line: 1269, type: !59)
!1913 = !DILocalVariable(name: "data", scope: !1906, file: !3, line: 1270, type: !291)
!1914 = !DILocalVariable(name: "file", scope: !1915, file: !3, line: 1276, type: !101)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 1275, column: 5)
!1916 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 1274, column: 7)
!1917 = !DILocation(line: 0, scope: !1906)
!1918 = !DILocation(line: 1269, column: 62, scope: !1906)
!1919 = !DILocation(line: 1274, column: 14, scope: !1916)
!1920 = !DILocation(line: 1274, column: 24, scope: !1916)
!1921 = !DILocation(line: 1274, column: 7, scope: !1906)
!1922 = !DILocation(line: 1276, column: 34, scope: !1915)
!1923 = !DILocation(line: 0, scope: !1915)
!1924 = !DILocation(line: 1279, column: 17, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 1279, column: 11)
!1926 = !DILocation(line: 1279, column: 24, scope: !1925)
!1927 = !DILocation(line: 1279, column: 32, scope: !1925)
!1928 = !DILocation(line: 1279, column: 41, scope: !1925)
!1929 = !DILocation(line: 1279, column: 53, scope: !1925)
!1930 = !DILocation(line: 1279, column: 58, scope: !1925)
!1931 = !DILocation(line: 1279, column: 68, scope: !1925)
!1932 = !DILocation(line: 1279, column: 62, scope: !1925)
!1933 = !DILocation(line: 1279, column: 11, scope: !1915)
!1934 = !DILocation(line: 1281, column: 14, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 1281, column: 8)
!1936 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 1280, column: 2)
!1937 = !DILocation(line: 1281, column: 20, scope: !1935)
!1938 = !DILocation(line: 1281, column: 8, scope: !1936)
!1939 = !DILocation(line: 0, scope: !1936)
!1940 = !DILocation(line: 1287, column: 27, scope: !1936)
!1941 = !DILocation(line: 1283, column: 22, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 1282, column: 6)
!1943 = !DILocation(line: 1283, column: 20, scope: !1942)
!1944 = !DILocation(line: 1284, column: 20, scope: !1942)
!1945 = !DILocation(line: 1285, column: 6, scope: !1942)
!1946 = !DILocation(line: 1287, column: 22, scope: !1936)
!1947 = !DILocation(line: 1287, column: 10, scope: !1936)
!1948 = !DILocation(line: 1287, column: 39, scope: !1936)
!1949 = !DILocation(line: 1287, column: 4, scope: !1936)
!1950 = !DILocation(line: 1287, column: 31, scope: !1936)
!1951 = !DILocation(line: 1288, column: 2, scope: !1936)
!1952 = !DILocation(line: 1292, column: 3, scope: !1906)
!1953 = distinct !DISubprogram(name: "report_missing_guard_cmp", scope: !3, file: !3, line: 1297, type: !546, scopeLine: 1298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1954)
!1954 = !{!1955, !1956}
!1955 = !DILocalVariable(name: "p1", arg: 1, scope: !1953, file: !3, line: 1297, type: !541)
!1956 = !DILocalVariable(name: "p2", arg: 2, scope: !1953, file: !3, line: 1297, type: !541)
!1957 = !DILocation(line: 0, scope: !1953)
!1958 = !DILocation(line: 1299, column: 19, scope: !1953)
!1959 = !DILocation(line: 1299, column: 18, scope: !1953)
!1960 = !DILocation(line: 1299, column: 46, scope: !1953)
!1961 = !DILocation(line: 1299, column: 45, scope: !1953)
!1962 = !DILocation(line: 1299, column: 10, scope: !1953)
!1963 = !DILocation(line: 1299, column: 3, scope: !1953)
!1964 = distinct !DISubprogram(name: "_cpp_compare_file_date", scope: !3, file: !3, line: 1341, type: !687, scopeLine: 1343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1965)
!1965 = !{!1966, !1967, !1968, !1969, !1970}
!1966 = !DILocalVariable(name: "pfile", arg: 1, scope: !1964, file: !3, line: 1341, type: !374)
!1967 = !DILocalVariable(name: "fname", arg: 2, scope: !1964, file: !3, line: 1341, type: !80)
!1968 = !DILocalVariable(name: "angle_brackets", arg: 3, scope: !1964, file: !3, line: 1342, type: !214)
!1969 = !DILocalVariable(name: "file", scope: !1964, file: !3, line: 1344, type: !101)
!1970 = !DILocalVariable(name: "dir", scope: !1964, file: !3, line: 1345, type: !69)
!1971 = !DILocation(line: 0, scope: !1964)
!1972 = !DILocation(line: 1347, column: 9, scope: !1964)
!1973 = !DILocation(line: 1348, column: 8, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1348, column: 7)
!1975 = !DILocation(line: 1348, column: 7, scope: !1964)
!1976 = !DILocation(line: 1351, column: 10, scope: !1964)
!1977 = !DILocation(line: 1352, column: 13, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1352, column: 7)
!1979 = !DILocation(line: 1352, column: 7, scope: !1978)
!1980 = !DILocation(line: 1352, column: 7, scope: !1964)
!1981 = !DILocation(line: 1355, column: 13, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1355, column: 7)
!1983 = !DILocation(line: 1355, column: 16, scope: !1982)
!1984 = !DILocation(line: 1355, column: 7, scope: !1964)
!1985 = !DILocation(line: 1357, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 1356, column: 5)
!1987 = !DILocation(line: 1358, column: 16, scope: !1986)
!1988 = !DILocation(line: 1359, column: 5, scope: !1986)
!1989 = !DILocation(line: 1361, column: 19, scope: !1964)
!1990 = !DILocation(line: 1361, column: 37, scope: !1964)
!1991 = !DILocation(line: 1361, column: 45, scope: !1964)
!1992 = !DILocation(line: 1361, column: 54, scope: !1964)
!1993 = !DILocation(line: 1361, column: 28, scope: !1964)
!1994 = !DILocation(line: 1361, column: 3, scope: !1964)
!1995 = !DILocation(line: 1362, column: 1, scope: !1964)
!1996 = distinct !DISubprogram(name: "cpp_push_include", scope: !3, file: !3, line: 1367, type: !1622, scopeLine: 1368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1997)
!1997 = !{!1998, !1999}
!1998 = !DILocalVariable(name: "pfile", arg: 1, scope: !1996, file: !3, line: 1367, type: !374)
!1999 = !DILocalVariable(name: "fname", arg: 2, scope: !1996, file: !3, line: 1367, type: !80)
!2000 = !DILocation(line: 0, scope: !1996)
!2001 = !DILocation(line: 1369, column: 10, scope: !1996)
!2002 = !DILocation(line: 1369, column: 3, scope: !1996)
!2003 = distinct !DISubprogram(name: "_cpp_pop_file_buffer", scope: !3, file: !3, line: 1375, type: !1517, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2004)
!2004 = !{!2005, !2006}
!2005 = !DILocalVariable(name: "pfile", arg: 1, scope: !2003, file: !3, line: 1375, type: !374)
!2006 = !DILocalVariable(name: "file", arg: 2, scope: !2003, file: !3, line: 1375, type: !101)
!2007 = !DILocation(line: 0, scope: !2003)
!2008 = !DILocation(line: 1379, column: 14, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 1379, column: 7)
!2010 = !DILocation(line: 1379, column: 7, scope: !2009)
!2011 = !DILocation(line: 1379, column: 23, scope: !2009)
!2012 = !DILocation(line: 1379, column: 32, scope: !2009)
!2013 = !DILocation(line: 1379, column: 39, scope: !2009)
!2014 = !DILocation(line: 1379, column: 7, scope: !2003)
!2015 = !DILocation(line: 1380, column: 27, scope: !2009)
!2016 = !DILocation(line: 1380, column: 18, scope: !2009)
!2017 = !DILocation(line: 1380, column: 5, scope: !2009)
!2018 = !DILocation(line: 1383, column: 19, scope: !2003)
!2019 = !DILocation(line: 1385, column: 13, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 1385, column: 7)
!2021 = !DILocation(line: 1385, column: 7, scope: !2020)
!2022 = !DILocation(line: 1385, column: 7, scope: !2003)
!2023 = !DILocation(line: 1387, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 1386, column: 5)
!2025 = !DILocation(line: 1388, column: 26, scope: !2024)
!2026 = !DILocation(line: 1389, column: 13, scope: !2024)
!2027 = !DILocation(line: 1389, column: 20, scope: !2024)
!2028 = !DILocation(line: 1390, column: 13, scope: !2024)
!2029 = !DILocation(line: 1390, column: 26, scope: !2024)
!2030 = !DILocation(line: 1391, column: 5, scope: !2024)
!2031 = !DILocation(line: 1392, column: 1, scope: !2003)
!2032 = distinct !DISubprogram(name: "_cpp_get_file_stat", scope: !3, file: !3, line: 1396, type: !2033, scopeLine: 1397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2036)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!2035, !101}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!2036 = !{!2037}
!2037 = !DILocalVariable(name: "file", arg: 1, scope: !2032, file: !3, line: 1396, type: !101)
!2038 = !DILocation(line: 0, scope: !2032)
!2039 = !DILocation(line: 1398, column: 19, scope: !2032)
!2040 = !DILocation(line: 1398, column: 5, scope: !2032)
!2041 = distinct !DISubprogram(name: "cpp_set_include_chains", scope: !3, file: !3, line: 1407, type: !2042, scopeLine: 1409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !374, !64, !64, !214}
!2044 = !{!2045, !2046, !2047, !2048}
!2045 = !DILocalVariable(name: "pfile", arg: 1, scope: !2041, file: !3, line: 1407, type: !374)
!2046 = !DILocalVariable(name: "quote", arg: 2, scope: !2041, file: !3, line: 1407, type: !64)
!2047 = !DILocalVariable(name: "bracket", arg: 3, scope: !2041, file: !3, line: 1407, type: !64)
!2048 = !DILocalVariable(name: "quote_ignores_source_dir", arg: 4, scope: !2041, file: !3, line: 1408, type: !214)
!2049 = !DILocation(line: 0, scope: !2041)
!2050 = !DILocation(line: 1410, column: 10, scope: !2041)
!2051 = !DILocation(line: 1410, column: 24, scope: !2041)
!2052 = !DILocation(line: 1411, column: 10, scope: !2041)
!2053 = !DILocation(line: 1411, column: 26, scope: !2041)
!2054 = !DILocation(line: 1412, column: 37, scope: !2041)
!2055 = !DILocation(line: 1412, column: 10, scope: !2041)
!2056 = !DILocation(line: 1412, column: 35, scope: !2041)
!2057 = !DILocation(line: 1414, column: 3, scope: !2041)
!2058 = !DILocation(line: 1414, column: 3, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 1414, column: 3)
!2060 = !DILocation(line: 1416, column: 14, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 1415, column: 5)
!2062 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 1414, column: 3)
!2063 = !DILocation(line: 1416, column: 23, scope: !2061)
!2064 = !DILocation(line: 1417, column: 35, scope: !2061)
!2065 = !DILocation(line: 1417, column: 20, scope: !2061)
!2066 = !DILocation(line: 1417, column: 14, scope: !2061)
!2067 = !DILocation(line: 1417, column: 18, scope: !2061)
!2068 = !DILocation(line: 1418, column: 17, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 1418, column: 11)
!2070 = !DILocation(line: 1418, column: 11, scope: !2061)
!2071 = !DILocation(line: 1419, column: 25, scope: !2069)
!2072 = !DILocation(line: 1419, column: 2, scope: !2069)
!2073 = !DILocation(line: 1414, column: 32, scope: !2062)
!2074 = !DILocation(line: 1414, column: 3, scope: !2062)
!2075 = distinct !{!2075, !2058, !2076}
!2076 = !DILocation(line: 1420, column: 5, scope: !2059)
!2077 = !DILocation(line: 1421, column: 1, scope: !2041)
!2078 = distinct !DISubprogram(name: "cpp_get_path", scope: !3, file: !3, line: 1609, type: !2079, scopeLine: 1610, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2081)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!80, !110}
!2081 = !{!2082}
!2082 = !DILocalVariable(name: "f", arg: 1, scope: !2078, file: !3, line: 1609, type: !110)
!2083 = !DILocation(line: 0, scope: !2078)
!2084 = !DILocation(line: 1611, column: 13, scope: !2078)
!2085 = !DILocation(line: 1611, column: 3, scope: !2078)
!2086 = distinct !DISubprogram(name: "cpp_get_dir", scope: !3, file: !3, line: 1617, type: !2087, scopeLine: 1618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!64, !110}
!2089 = !{!2090}
!2090 = !DILocalVariable(name: "f", arg: 1, scope: !2086, file: !3, line: 1617, type: !110)
!2091 = !DILocation(line: 0, scope: !2086)
!2092 = !DILocation(line: 1619, column: 13, scope: !2086)
!2093 = !DILocation(line: 1619, column: 3, scope: !2086)
!2094 = distinct !DISubprogram(name: "cpp_get_buffer", scope: !3, file: !3, line: 1626, type: !2095, scopeLine: 1627, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2097)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!379, !374}
!2097 = !{!2098}
!2098 = !DILocalVariable(name: "pfile", arg: 1, scope: !2094, file: !3, line: 1626, type: !374)
!2099 = !DILocation(line: 0, scope: !2094)
!2100 = !DILocation(line: 1628, column: 17, scope: !2094)
!2101 = !DILocation(line: 1628, column: 3, scope: !2094)
!2102 = distinct !DISubprogram(name: "cpp_get_file", scope: !3, file: !3, line: 1634, type: !2103, scopeLine: 1635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!110, !379}
!2105 = !{!2106}
!2106 = !DILocalVariable(name: "b", arg: 1, scope: !2102, file: !3, line: 1634, type: !379)
!2107 = !DILocation(line: 0, scope: !2102)
!2108 = !DILocation(line: 1636, column: 13, scope: !2102)
!2109 = !DILocation(line: 1636, column: 3, scope: !2102)
!2110 = distinct !DISubprogram(name: "cpp_get_prev", scope: !3, file: !3, line: 1643, type: !2111, scopeLine: 1644, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!379, !379}
!2113 = !{!2114}
!2114 = !DILocalVariable(name: "b", arg: 1, scope: !2110, file: !3, line: 1643, type: !379)
!2115 = !DILocation(line: 0, scope: !2110)
!2116 = !DILocation(line: 1645, column: 13, scope: !2110)
!2117 = !DILocation(line: 1645, column: 3, scope: !2110)
!2118 = distinct !DISubprogram(name: "_cpp_save_file_entries", scope: !3, file: !3, line: 1690, type: !2119, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!75, !374, !308}
!2121 = !{!2122, !2123, !2124, !2125, !2126, !2127, !2128, !2132, !2135}
!2122 = !DILocalVariable(name: "pfile", arg: 1, scope: !2118, file: !3, line: 1690, type: !374)
!2123 = !DILocalVariable(name: "fp", arg: 2, scope: !2118, file: !3, line: 1690, type: !308)
!2124 = !DILocalVariable(name: "count", scope: !2118, file: !3, line: 1692, type: !256)
!2125 = !DILocalVariable(name: "result", scope: !2118, file: !3, line: 1693, type: !252)
!2126 = !DILocalVariable(name: "result_size", scope: !2118, file: !3, line: 1694, type: !256)
!2127 = !DILocalVariable(name: "f", scope: !2118, file: !3, line: 1695, type: !101)
!2128 = !DILocalVariable(name: "count", scope: !2129, file: !3, line: 1709, type: !256)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 1708, column: 5)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 1707, column: 3)
!2131 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 1707, column: 3)
!2132 = !DILocalVariable(name: "ff", scope: !2133, file: !3, line: 1729, type: !308)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 1728, column: 2)
!2134 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 1724, column: 11)
!2135 = !DILocalVariable(name: "oldfd", scope: !2133, file: !3, line: 1730, type: !214)
!2136 = !DILocation(line: 0, scope: !2118)
!2137 = !DILocation(line: 1697, column: 19, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 1697, column: 3)
!2139 = !DILocation(line: 1697, column: 8, scope: !2138)
!2140 = !DILocation(line: 0, scope: !2138)
!2141 = !DILocation(line: 1697, column: 3, scope: !2138)
!2142 = !DILocation(line: 1698, column: 5, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 1697, column: 3)
!2144 = !DILocation(line: 1697, column: 40, scope: !2143)
!2145 = !DILocation(line: 1697, column: 3, scope: !2143)
!2146 = distinct !{!2146, !2141, !2147}
!2147 = !DILocation(line: 1698, column: 7, scope: !2138)
!2148 = !DILocation(line: 1701, column: 33, scope: !2118)
!2149 = !DILocation(line: 1701, column: 4, scope: !2118)
!2150 = !DILocation(line: 1702, column: 12, scope: !2118)
!2151 = !DILocation(line: 1704, column: 11, scope: !2118)
!2152 = !DILocation(line: 1704, column: 17, scope: !2118)
!2153 = !DILocation(line: 1705, column: 11, scope: !2118)
!2154 = !DILocation(line: 1705, column: 26, scope: !2118)
!2155 = !DILocation(line: 0, scope: !2129)
!2156 = !DILocation(line: 1707, column: 8, scope: !2131)
!2157 = !DILocation(line: 0, scope: !2131)
!2158 = !DILocation(line: 1707, column: 3, scope: !2131)
!2159 = !DILocation(line: 1713, column: 14, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 1713, column: 11)
!2161 = !DILocation(line: 1713, column: 11, scope: !2160)
!2162 = !DILocation(line: 1713, column: 24, scope: !2160)
!2163 = !DILocation(line: 1713, column: 30, scope: !2160)
!2164 = !DILocation(line: 1713, column: 27, scope: !2160)
!2165 = !DILocation(line: 1713, column: 11, scope: !2129)
!2166 = !DILocation(line: 1716, column: 14, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 1716, column: 11)
!2168 = !DILocation(line: 1716, column: 26, scope: !2167)
!2169 = !DILocation(line: 1716, column: 11, scope: !2129)
!2170 = !DILocation(line: 1719, column: 28, scope: !2129)
!2171 = !DILocation(line: 1721, column: 45, scope: !2129)
!2172 = !DILocation(line: 1721, column: 30, scope: !2129)
!2173 = !DILocation(line: 1721, column: 40, scope: !2129)
!2174 = !DILocation(line: 1723, column: 40, scope: !2129)
!2175 = !DILocation(line: 1723, column: 60, scope: !2129)
!2176 = !DILocation(line: 1723, column: 55, scope: !2129)
!2177 = !DILocation(line: 1723, column: 30, scope: !2129)
!2178 = !DILocation(line: 1724, column: 14, scope: !2134)
!2179 = !DILocation(line: 1724, column: 11, scope: !2134)
!2180 = !DILocation(line: 1724, column: 11, scope: !2129)
!2181 = !DILocation(line: 1725, column: 31, scope: !2134)
!2182 = !DILocation(line: 1726, column: 13, scope: !2134)
!2183 = !DILocation(line: 1726, column: 22, scope: !2134)
!2184 = !DILocation(line: 1725, column: 2, scope: !2134)
!2185 = !DILocation(line: 1730, column: 19, scope: !2133)
!2186 = !DILocation(line: 0, scope: !2133)
!2187 = !DILocation(line: 1732, column: 9, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 1732, column: 8)
!2189 = !DILocation(line: 1732, column: 8, scope: !2133)
!2190 = !DILocation(line: 1734, column: 8, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 1733, column: 6)
!2192 = !DILocation(line: 1735, column: 8, scope: !2191)
!2193 = !DILocation(line: 1737, column: 9, scope: !2133)
!2194 = !DILocation(line: 1738, column: 20, scope: !2133)
!2195 = !DILocation(line: 1738, column: 4, scope: !2133)
!2196 = !DILocation(line: 1739, column: 4, scope: !2133)
!2197 = !DILocation(line: 1740, column: 10, scope: !2133)
!2198 = !DILocation(line: 1741, column: 2, scope: !2134)
!2199 = !DILocation(line: 1742, column: 43, scope: !2129)
!2200 = !DILocation(line: 1742, column: 30, scope: !2129)
!2201 = !DILocation(line: 1742, column: 35, scope: !2129)
!2202 = !DILocation(line: 1743, column: 5, scope: !2130)
!2203 = !DILocation(line: 1707, column: 40, scope: !2130)
!2204 = !DILocation(line: 1707, column: 3, scope: !2130)
!2205 = distinct !{!2205, !2158, !2206}
!2206 = !DILocation(line: 1743, column: 5, scope: !2131)
!2207 = !DILocation(line: 1746, column: 58, scope: !2118)
!2208 = !DILocation(line: 1746, column: 47, scope: !2118)
!2209 = !DILocation(line: 1746, column: 18, scope: !2118)
!2210 = !DILocation(line: 1749, column: 3, scope: !2118)
!2211 = !DILocation(line: 1756, column: 10, scope: !2118)
!2212 = !DILocation(line: 1756, column: 46, scope: !2118)
!2213 = !DILocation(line: 1756, column: 3, scope: !2118)
!2214 = !DILocation(line: 1757, column: 1, scope: !2118)
!2215 = distinct !DISubprogram(name: "open_file", scope: !3, file: !3, line: 235, type: !926, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2216)
!2216 = !{!2217}
!2217 = !DILocalVariable(name: "file", arg: 1, scope: !2215, file: !3, line: 235, type: !101)
!2218 = !DILocation(line: 0, scope: !2215)
!2219 = !DILocation(line: 237, column: 13, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 237, column: 7)
!2221 = !DILocation(line: 237, column: 7, scope: !2220)
!2222 = !DILocation(line: 237, column: 21, scope: !2220)
!2223 = !DILocation(line: 237, column: 7, scope: !2215)
!2224 = !DILocation(line: 239, column: 13, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 238, column: 5)
!2226 = !DILocation(line: 239, column: 16, scope: !2225)
!2227 = !DILocation(line: 241, column: 5, scope: !2225)
!2228 = !DILocation(line: 243, column: 16, scope: !2220)
!2229 = !DILocation(line: 243, column: 11, scope: !2220)
!2230 = !DILocation(line: 243, column: 14, scope: !2220)
!2231 = !DILocation(line: 245, column: 13, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 245, column: 7)
!2233 = !DILocation(line: 245, column: 16, scope: !2232)
!2234 = !DILocation(line: 245, column: 7, scope: !2215)
!2235 = !DILocation(line: 247, column: 35, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 247, column: 11)
!2237 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 246, column: 5)
!2238 = !DILocation(line: 247, column: 11, scope: !2236)
!2239 = !DILocation(line: 247, column: 39, scope: !2236)
!2240 = !DILocation(line: 247, column: 11, scope: !2237)
!2241 = !DILocation(line: 249, column: 9, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 249, column: 8)
!2243 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 248, column: 2)
!2244 = !DILocation(line: 249, column: 8, scope: !2243)
!2245 = !DILocation(line: 251, column: 14, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 250, column: 6)
!2247 = !DILocation(line: 251, column: 21, scope: !2246)
!2248 = !DILocation(line: 252, column: 8, scope: !2246)
!2249 = !DILocation(line: 257, column: 4, scope: !2243)
!2250 = !DILocation(line: 257, column: 10, scope: !2243)
!2251 = !DILocation(line: 258, column: 2, scope: !2243)
!2252 = !DILocation(line: 260, column: 20, scope: !2237)
!2253 = !DILocation(line: 260, column: 7, scope: !2237)
!2254 = !DILocation(line: 261, column: 16, scope: !2237)
!2255 = !DILocation(line: 282, column: 18, scope: !2215)
!2256 = !DILocation(line: 262, column: 5, scope: !2237)
!2257 = !DILocation(line: 279, column: 12, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 279, column: 12)
!2259 = !DILocation(line: 279, column: 18, scope: !2258)
!2260 = !DILocation(line: 279, column: 12, scope: !2232)
!2261 = !DILocation(line: 280, column: 11, scope: !2258)
!2262 = !DILocation(line: 280, column: 5, scope: !2258)
!2263 = !DILocation(line: 282, column: 9, scope: !2215)
!2264 = !DILocation(line: 282, column: 16, scope: !2215)
!2265 = !DILocation(line: 284, column: 3, scope: !2215)
!2266 = !DILocation(line: 285, column: 1, scope: !2215)
!2267 = distinct !DISubprogram(name: "pchf_save_compare", scope: !3, file: !3, line: 1682, type: !546, scopeLine: 1683, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2268)
!2268 = !{!2269, !2270}
!2269 = !DILocalVariable(name: "e1", arg: 1, scope: !2267, file: !3, line: 1682, type: !541)
!2270 = !DILocalVariable(name: "e2", arg: 2, scope: !2267, file: !3, line: 1682, type: !541)
!2271 = !DILocation(line: 0, scope: !2267)
!2272 = !DILocation(line: 1684, column: 10, scope: !2267)
!2273 = !DILocation(line: 1684, column: 3, scope: !2267)
!2274 = distinct !DISubprogram(name: "_cpp_read_file_entries", scope: !3, file: !3, line: 1762, type: !2119, scopeLine: 1763, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2275)
!2275 = !{!2276, !2277, !2278}
!2276 = !DILocalVariable(name: "pfile", arg: 1, scope: !2274, file: !3, line: 1762, type: !374)
!2277 = !DILocalVariable(name: "f", arg: 2, scope: !2274, file: !3, line: 1762, type: !308)
!2278 = !DILocalVariable(name: "d", scope: !2274, file: !3, line: 1764, type: !253)
!2279 = !DILocation(line: 0, scope: !2274)
!2280 = !DILocation(line: 1764, column: 3, scope: !2274)
!2281 = !DILocation(line: 1766, column: 7, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 1766, column: 7)
!2283 = !DILocation(line: 1767, column: 8, scope: !2282)
!2284 = !DILocation(line: 1766, column: 7, scope: !2274)
!2285 = !DILocation(line: 1770, column: 10, scope: !2274)
!2286 = !DILocation(line: 1770, column: 8, scope: !2274)
!2287 = !DILocation(line: 1772, column: 3, scope: !2274)
!2288 = !DILocation(line: 1773, column: 14, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 1773, column: 7)
!2290 = !DILocation(line: 1773, column: 59, scope: !2289)
!2291 = !DILocation(line: 1773, column: 7, scope: !2289)
!2292 = !DILocation(line: 1774, column: 12, scope: !2289)
!2293 = !DILocation(line: 1774, column: 7, scope: !2289)
!2294 = !DILocation(line: 1777, column: 1, scope: !2274)
!2295 = distinct !DISubprogram(name: "remap_filename", scope: !3, file: !3, line: 1538, type: !2296, scopeLine: 1539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!71, !374, !101}
!2298 = !{!2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306}
!2299 = !DILocalVariable(name: "pfile", arg: 1, scope: !2295, file: !3, line: 1538, type: !374)
!2300 = !DILocalVariable(name: "file", arg: 2, scope: !2295, file: !3, line: 1538, type: !101)
!2301 = !DILocalVariable(name: "fname", scope: !2295, file: !3, line: 1540, type: !80)
!2302 = !DILocalVariable(name: "p", scope: !2295, file: !3, line: 1540, type: !80)
!2303 = !DILocalVariable(name: "new_dir", scope: !2295, file: !3, line: 1541, type: !71)
!2304 = !DILocalVariable(name: "dir", scope: !2295, file: !3, line: 1542, type: !64)
!2305 = !DILocalVariable(name: "index", scope: !2295, file: !3, line: 1543, type: !256)
!2306 = !DILocalVariable(name: "len", scope: !2295, file: !3, line: 1543, type: !256)
!2307 = !DILocation(line: 0, scope: !2295)
!2308 = !DILocation(line: 1545, column: 15, scope: !2295)
!2309 = !DILocation(line: 1546, column: 17, scope: !2295)
!2310 = !DILocation(line: 1548, column: 3, scope: !2295)
!2311 = !DILocation(line: 1550, column: 17, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1550, column: 11)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 1549, column: 5)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 1548, column: 3)
!2315 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 1548, column: 3)
!2316 = !DILocation(line: 1550, column: 12, scope: !2312)
!2317 = !DILocation(line: 1550, column: 11, scope: !2313)
!2318 = !DILocation(line: 1551, column: 2, scope: !2312)
!2319 = !DILocation(line: 0, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 1553, column: 7)
!2321 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1553, column: 7)
!2322 = !DILocation(line: 1553, column: 12, scope: !2321)
!2323 = !DILocation(line: 0, scope: !2321)
!2324 = !DILocation(line: 1553, column: 23, scope: !2320)
!2325 = !DILocation(line: 1553, column: 7, scope: !2321)
!2326 = !DILocation(line: 1554, column: 7, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 1554, column: 6)
!2328 = !DILocation(line: 1554, column: 6, scope: !2320)
!2329 = !DILocation(line: 1555, column: 42, scope: !2327)
!2330 = !DILocation(line: 1555, column: 22, scope: !2327)
!2331 = !DILocation(line: 1555, column: 13, scope: !2327)
!2332 = !DILocation(line: 1555, column: 6, scope: !2327)
!2333 = !DILocation(line: 1553, column: 51, scope: !2320)
!2334 = !DILocation(line: 1553, column: 7, scope: !2320)
!2335 = distinct !{!2335, !2325, !2336}
!2336 = !DILocation(line: 1555, column: 46, scope: !2321)
!2337 = !DILocation(line: 1557, column: 11, scope: !2313)
!2338 = !DILocation(line: 1558, column: 12, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1558, column: 11)
!2340 = !DILocation(line: 1558, column: 19, scope: !2339)
!2341 = !DILocation(line: 1558, column: 14, scope: !2339)
!2342 = !DILocation(line: 1561, column: 18, scope: !2313)
!2343 = !DILocation(line: 1561, column: 13, scope: !2313)
!2344 = !DILocation(line: 1561, column: 27, scope: !2313)
!2345 = !DILocation(line: 1561, column: 35, scope: !2313)
!2346 = !DILocation(line: 1561, column: 22, scope: !2313)
!2347 = !DILocation(line: 1562, column: 17, scope: !2313)
!2348 = !DILocation(line: 1563, column: 29, scope: !2313)
!2349 = !DILocation(line: 1563, column: 40, scope: !2313)
!2350 = !DILocation(line: 1563, column: 35, scope: !2313)
!2351 = !DILocation(line: 1563, column: 7, scope: !2313)
!2352 = !DILocation(line: 1564, column: 30, scope: !2313)
!2353 = !DILocation(line: 1564, column: 23, scope: !2313)
!2354 = !DILocation(line: 1564, column: 7, scope: !2313)
!2355 = !DILocation(line: 1565, column: 7, scope: !2313)
!2356 = !DILocation(line: 1565, column: 20, scope: !2313)
!2357 = !DILocation(line: 1567, column: 48, scope: !2313)
!2358 = !DILocation(line: 1567, column: 43, scope: !2313)
!2359 = !DILocation(line: 1567, column: 13, scope: !2313)
!2360 = !DILocation(line: 1568, column: 17, scope: !2313)
!2361 = !DILocation(line: 1548, column: 3, scope: !2314)
!2362 = distinct !{!2362, !2363, !2364}
!2363 = !DILocation(line: 1548, column: 3, scope: !2315)
!2364 = !DILocation(line: 1569, column: 5, scope: !2315)
!2365 = !DILocation(line: 1570, column: 1, scope: !2295)
!2366 = !DILocation(line: 0, scope: !2313)
!2367 = distinct !DISubprogram(name: "append_file_to_dir", scope: !3, file: !3, line: 1426, type: !84, scopeLine: 1427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373}
!2369 = !DILocalVariable(name: "fname", arg: 1, scope: !2367, file: !3, line: 1426, type: !80)
!2370 = !DILocalVariable(name: "dir", arg: 2, scope: !2367, file: !3, line: 1426, type: !64)
!2371 = !DILocalVariable(name: "dlen", scope: !2367, file: !3, line: 1428, type: !256)
!2372 = !DILocalVariable(name: "flen", scope: !2367, file: !3, line: 1428, type: !256)
!2373 = !DILocalVariable(name: "path", scope: !2367, file: !3, line: 1429, type: !71)
!2374 = !DILocation(line: 0, scope: !2367)
!2375 = !DILocation(line: 1431, column: 15, scope: !2367)
!2376 = !DILocation(line: 1431, column: 10, scope: !2367)
!2377 = !DILocation(line: 1432, column: 10, scope: !2367)
!2378 = !DILocation(line: 1433, column: 10, scope: !2367)
!2379 = !DILocation(line: 1434, column: 22, scope: !2367)
!2380 = !DILocation(line: 1434, column: 3, scope: !2367)
!2381 = !DILocation(line: 1435, column: 7, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 1435, column: 7)
!2383 = !DILocation(line: 1435, column: 12, scope: !2382)
!2384 = !DILocation(line: 1435, column: 25, scope: !2382)
!2385 = !DILocation(line: 1435, column: 15, scope: !2382)
!2386 = !DILocation(line: 1435, column: 30, scope: !2382)
!2387 = !DILocation(line: 1435, column: 7, scope: !2367)
!2388 = !DILocation(line: 1436, column: 5, scope: !2382)
!2389 = !DILocation(line: 1436, column: 18, scope: !2382)
!2390 = !DILocation(line: 1437, column: 12, scope: !2367)
!2391 = !DILocation(line: 1437, column: 36, scope: !2367)
!2392 = !DILocation(line: 1437, column: 3, scope: !2367)
!2393 = !DILocation(line: 1439, column: 3, scope: !2367)
!2394 = !DILocation(line: 0, scope: !371)
!2395 = !DILocation(line: 296, column: 28, scope: !371)
!2396 = !DILocation(line: 299, column: 3, scope: !371)
!2397 = !DILocation(line: 303, column: 13, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !371, file: !3, line: 303, column: 7)
!2399 = !DILocation(line: 303, column: 7, scope: !2398)
!2400 = !DILocation(line: 303, column: 21, scope: !2398)
!2401 = !DILocation(line: 303, column: 29, scope: !2398)
!2402 = !DILocation(line: 303, column: 43, scope: !2398)
!2403 = !DILocation(line: 303, column: 33, scope: !2398)
!2404 = !DILocation(line: 303, column: 7, scope: !371)
!2405 = !DILocation(line: 308, column: 14, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !371, file: !3, line: 308, column: 7)
!2407 = !DILocation(line: 308, column: 7, scope: !2406)
!2408 = !DILocation(line: 309, column: 7, scope: !2406)
!2409 = !DILocation(line: 309, column: 28, scope: !2406)
!2410 = !DILocation(line: 309, column: 10, scope: !2406)
!2411 = !DILocation(line: 308, column: 7, scope: !371)
!2412 = !DILocation(line: 312, column: 10, scope: !371)
!2413 = !DILocation(line: 313, column: 14, scope: !371)
!2414 = !DILocation(line: 314, column: 13, scope: !371)
!2415 = !DILocation(line: 315, column: 3, scope: !371)
!2416 = !DILocation(line: 316, column: 19, scope: !371)
!2417 = !DILocation(line: 316, column: 3, scope: !371)
!2418 = !DILocation(line: 318, column: 7, scope: !875)
!2419 = !DILocation(line: 318, column: 27, scope: !875)
!2420 = !DILocation(line: 318, column: 7, scope: !371)
!2421 = !DILocation(line: 0, scope: !874)
!2422 = !DILocation(line: 324, column: 12, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !874, file: !3, line: 324, column: 11)
!2424 = !DILocation(line: 324, column: 11, scope: !874)
!2425 = !DILocation(line: 325, column: 10, scope: !2423)
!2426 = !DILocation(line: 325, column: 2, scope: !2423)
!2427 = !DILocation(line: 326, column: 26, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 326, column: 16)
!2429 = !DILocation(line: 326, column: 45, scope: !2428)
!2430 = !DILocation(line: 326, column: 16, scope: !2423)
!2431 = !DILocation(line: 328, column: 17, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 327, column: 2)
!2433 = !DILocation(line: 328, column: 4, scope: !2432)
!2434 = !DILocation(line: 328, column: 22, scope: !2432)
!2435 = !DILocation(line: 329, column: 4, scope: !2432)
!2436 = !DILocation(line: 329, column: 16, scope: !2432)
!2437 = !DILocation(line: 329, column: 34, scope: !2432)
!2438 = !DILocation(line: 331, column: 23, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 330, column: 6)
!2440 = !DILocation(line: 332, column: 13, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 332, column: 12)
!2442 = !DILocation(line: 332, column: 37, scope: !2441)
!2443 = !DILocation(line: 333, column: 5, scope: !2441)
!2444 = !DILocation(line: 331, column: 15, scope: !2439)
!2445 = !DILocation(line: 333, column: 9, scope: !2441)
!2446 = !DILocation(line: 333, column: 34, scope: !2441)
!2447 = !DILocation(line: 332, column: 12, scope: !2439)
!2448 = !DILocation(line: 334, column: 3, scope: !2441)
!2449 = distinct !{!2449, !2435, !2450}
!2450 = !DILocation(line: 344, column: 6, scope: !2432)
!2451 = !DILocation(line: 331, column: 34, scope: !2439)
!2452 = !DILocation(line: 335, column: 17, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 335, column: 12)
!2454 = !DILocation(line: 335, column: 24, scope: !2453)
!2455 = !DILocation(line: 335, column: 12, scope: !2439)
!2456 = !DILocation(line: 337, column: 17, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 336, column: 3)
!2458 = !DILocation(line: 337, column: 9, scope: !2457)
!2459 = !DILocation(line: 338, column: 15, scope: !2457)
!2460 = !DILocation(line: 339, column: 3, scope: !2457)
!2461 = !DILocation(line: 340, column: 24, scope: !2439)
!2462 = !DILocation(line: 340, column: 8, scope: !2439)
!2463 = !DILocation(line: 341, column: 16, scope: !2439)
!2464 = !DILocation(line: 342, column: 12, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 342, column: 12)
!2466 = !DILocation(line: 342, column: 12, scope: !2439)
!2467 = !DILocation(line: 345, column: 4, scope: !2432)
!2468 = !DILocation(line: 346, column: 2, scope: !2432)
!2469 = !DILocation(line: 0, scope: !2423)
!2470 = !DILocation(line: 347, column: 12, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !874, file: !3, line: 347, column: 11)
!2472 = !DILocation(line: 347, column: 11, scope: !874)
!2473 = !DILocation(line: 348, column: 15, scope: !2471)
!2474 = !DILocation(line: 348, column: 2, scope: !2471)
!2475 = !DILocation(line: 351, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !371, file: !3, line: 351, column: 7)
!2477 = !DILocation(line: 351, column: 7, scope: !371)
!2478 = !DILocation(line: 352, column: 11, scope: !2476)
!2479 = !DILocation(line: 352, column: 19, scope: !2476)
!2480 = !DILocation(line: 352, column: 5, scope: !2476)
!2481 = !DILocation(line: 354, column: 5, scope: !2476)
!2482 = !DILocation(line: 357, column: 1, scope: !371)
!2483 = !DILocation(line: 0, scope: !301)
!2484 = !DILocation(line: 1480, column: 14, scope: !301)
!2485 = !DILocation(line: 1480, column: 9, scope: !301)
!2486 = !DILocation(line: 1481, column: 19, scope: !301)
!2487 = !DILocation(line: 1482, column: 22, scope: !301)
!2488 = !DILocation(line: 1482, column: 3, scope: !301)
!2489 = !DILocation(line: 1483, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !301, file: !3, line: 1483, column: 7)
!2491 = !DILocation(line: 1483, column: 11, scope: !2490)
!2492 = !DILocation(line: 1483, column: 23, scope: !2490)
!2493 = !DILocation(line: 1483, column: 14, scope: !2490)
!2494 = !DILocation(line: 1483, column: 28, scope: !2490)
!2495 = !DILocation(line: 1483, column: 7, scope: !301)
!2496 = !DILocation(line: 1484, column: 13, scope: !2490)
!2497 = !DILocation(line: 1484, column: 5, scope: !2490)
!2498 = !DILocation(line: 1484, column: 17, scope: !2490)
!2499 = !DILocation(line: 1485, column: 16, scope: !301)
!2500 = !DILocation(line: 1485, column: 3, scope: !301)
!2501 = !DILocation(line: 1486, column: 7, scope: !301)
!2502 = !DILocation(line: 1488, column: 19, scope: !301)
!2503 = !DILocation(line: 1488, column: 8, scope: !301)
!2504 = !DILocation(line: 1488, column: 17, scope: !301)
!2505 = !DILocation(line: 1491, column: 7, scope: !363)
!2506 = !DILocation(line: 1491, column: 7, scope: !301)
!2507 = !DILocation(line: 1495, column: 7, scope: !362)
!2508 = !DILocation(line: 1478, column: 15, scope: !301)
!2509 = !DILocation(line: 1478, column: 26, scope: !301)
!2510 = !DILocation(line: 1495, column: 20, scope: !362)
!2511 = !DILocation(line: 0, scope: !362)
!2512 = !DILocation(line: 1495, column: 30, scope: !362)
!2513 = !DILocation(line: 1499, column: 8, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !365, file: !3, line: 1499, column: 8)
!2515 = !DILocation(line: 1499, column: 8, scope: !365)
!2516 = distinct !{!2516, !2507, !2517}
!2517 = !DILocation(line: 1525, column: 2, scope: !362)
!2518 = !DILocation(line: 1502, column: 14, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !365, file: !3, line: 1502, column: 8)
!2520 = !DILocation(line: 1502, column: 18, scope: !2519)
!2521 = !DILocation(line: 1502, column: 8, scope: !365)
!2522 = !DILocation(line: 1504, column: 13, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1503, column: 6)
!2524 = !DILocation(line: 1505, column: 24, scope: !2523)
!2525 = !DILocation(line: 1505, column: 22, scope: !2523)
!2526 = !DILocation(line: 1506, column: 6, scope: !2523)
!2527 = !DILocation(line: 1508, column: 27, scope: !365)
!2528 = !DILocation(line: 1508, column: 9, scope: !365)
!2529 = !DILocation(line: 1508, column: 4, scope: !365)
!2530 = !DILocation(line: 1508, column: 25, scope: !365)
!2531 = !DILocation(line: 1509, column: 4, scope: !365)
!2532 = !DILocation(line: 1509, column: 17, scope: !365)
!2533 = !DILocation(line: 1509, column: 27, scope: !365)
!2534 = !DILocation(line: 1509, column: 34, scope: !365)
!2535 = !DILocation(line: 1509, column: 37, scope: !365)
!2536 = distinct !{!2536, !2531, !2537}
!2537 = !DILocation(line: 1510, column: 6, scope: !365)
!2538 = !DILocation(line: 1512, column: 9, scope: !365)
!2539 = !DILocation(line: 0, scope: !365)
!2540 = !DILocation(line: 1513, column: 8, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !365, file: !3, line: 1513, column: 8)
!2542 = !DILocation(line: 1513, column: 8, scope: !365)
!2543 = !DILocation(line: 1514, column: 11, scope: !2541)
!2544 = !DILocation(line: 1514, column: 26, scope: !2541)
!2545 = !DILocation(line: 1514, column: 6, scope: !2541)
!2546 = !DILocation(line: 1514, column: 31, scope: !2541)
!2547 = !DILocation(line: 1517, column: 35, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 1516, column: 6)
!2549 = !DILocation(line: 1517, column: 13, scope: !2548)
!2550 = !DILocation(line: 1517, column: 28, scope: !2548)
!2551 = !DILocation(line: 1517, column: 8, scope: !2548)
!2552 = !DILocation(line: 1517, column: 33, scope: !2548)
!2553 = !DILocation(line: 1518, column: 8, scope: !2548)
!2554 = !DILocation(line: 1522, column: 4, scope: !365)
!2555 = !DILocation(line: 1522, column: 17, scope: !365)
!2556 = distinct !{!2556, !2554, !2557}
!2557 = !DILocation(line: 1524, column: 8, scope: !365)
!2558 = !DILocation(line: 1527, column: 7, scope: !362)
!2559 = !DILocation(line: 1531, column: 8, scope: !301)
!2560 = !DILocation(line: 1528, column: 5, scope: !362)
!2561 = !DILocation(line: 1531, column: 3, scope: !301)
!2562 = !DILocation(line: 1531, column: 24, scope: !301)
!2563 = !DILocation(line: 1532, column: 1, scope: !301)
!2564 = distinct !DISubprogram(name: "make_cpp_dir", scope: !3, file: !3, line: 1041, type: !2565, scopeLine: 1042, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!64, !374, !80, !214}
!2567 = !{!2568, !2569, !2570, !2571, !2572, !2573}
!2568 = !DILocalVariable(name: "pfile", arg: 1, scope: !2564, file: !3, line: 1041, type: !374)
!2569 = !DILocalVariable(name: "dir_name", arg: 2, scope: !2564, file: !3, line: 1041, type: !80)
!2570 = !DILocalVariable(name: "sysp", arg: 3, scope: !2564, file: !3, line: 1041, type: !214)
!2571 = !DILocalVariable(name: "entry", scope: !2564, file: !3, line: 1043, type: !59)
!2572 = !DILocalVariable(name: "hash_slot", scope: !2564, file: !3, line: 1043, type: !58)
!2573 = !DILocalVariable(name: "dir", scope: !2564, file: !3, line: 1044, type: !64)
!2574 = !DILocation(line: 0, scope: !2564)
!2575 = !DILocation(line: 1047, column: 38, scope: !2564)
!2576 = !DILocation(line: 1048, column: 10, scope: !2564)
!2577 = !DILocation(line: 1047, column: 5, scope: !2564)
!2578 = !DILocation(line: 1046, column: 15, scope: !2564)
!2579 = !DILocation(line: 1052, column: 8, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 1052, column: 3)
!2581 = !DILocation(line: 0, scope: !2580)
!2582 = !DILocation(line: 1052, column: 3, scope: !2580)
!2583 = !DILocation(line: 1053, column: 16, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1053, column: 9)
!2585 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 1052, column: 3)
!2586 = !DILocation(line: 1053, column: 26, scope: !2584)
!2587 = !DILocation(line: 1053, column: 9, scope: !2585)
!2588 = !DILocation(line: 1054, column: 21, scope: !2584)
!2589 = !DILocation(line: 1054, column: 23, scope: !2584)
!2590 = !DILocation(line: 1054, column: 7, scope: !2584)
!2591 = !DILocation(line: 1052, column: 50, scope: !2585)
!2592 = !DILocation(line: 1052, column: 3, scope: !2585)
!2593 = distinct !{!2593, !2582, !2594}
!2594 = !DILocation(line: 1054, column: 23, scope: !2580)
!2595 = !DILocation(line: 1056, column: 9, scope: !2564)
!2596 = !DILocation(line: 1057, column: 22, scope: !2564)
!2597 = !DILocation(line: 1057, column: 13, scope: !2564)
!2598 = !DILocation(line: 1058, column: 8, scope: !2564)
!2599 = !DILocation(line: 1058, column: 13, scope: !2564)
!2600 = !DILocation(line: 1059, column: 14, scope: !2564)
!2601 = !DILocation(line: 1059, column: 8, scope: !2564)
!2602 = !DILocation(line: 1059, column: 12, scope: !2564)
!2603 = !DILocation(line: 1060, column: 15, scope: !2564)
!2604 = !DILocation(line: 1060, column: 8, scope: !2564)
!2605 = !DILocation(line: 1060, column: 13, scope: !2564)
!2606 = !DILocation(line: 1061, column: 8, scope: !2564)
!2607 = !DILocation(line: 1061, column: 18, scope: !2564)
!2608 = !DILocation(line: 1064, column: 11, scope: !2564)
!2609 = !DILocation(line: 1065, column: 17, scope: !2564)
!2610 = !DILocation(line: 1065, column: 15, scope: !2564)
!2611 = !DILocation(line: 1066, column: 10, scope: !2564)
!2612 = !DILocation(line: 1066, column: 20, scope: !2564)
!2613 = !DILocation(line: 1067, column: 28, scope: !2564)
!2614 = !DILocation(line: 1067, column: 40, scope: !2564)
!2615 = !DILocation(line: 1067, column: 10, scope: !2564)
!2616 = !DILocation(line: 1067, column: 19, scope: !2564)
!2617 = !DILocation(line: 1068, column: 10, scope: !2564)
!2618 = !DILocation(line: 1068, column: 16, scope: !2564)
!2619 = !DILocation(line: 1069, column: 14, scope: !2564)
!2620 = !DILocation(line: 1071, column: 3, scope: !2564)
!2621 = !DILocation(line: 1072, column: 1, scope: !2564)
!2622 = distinct !DISubprogram(name: "read_filename_string", scope: !3, file: !3, line: 1445, type: !2623, scopeLine: 1446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!71, !214, !308}
!2625 = !{!2626, !2627, !2628, !2629, !2630}
!2626 = !DILocalVariable(name: "ch", arg: 1, scope: !2622, file: !3, line: 1445, type: !214)
!2627 = !DILocalVariable(name: "f", arg: 2, scope: !2622, file: !3, line: 1445, type: !308)
!2628 = !DILocalVariable(name: "alloc", scope: !2622, file: !3, line: 1447, type: !71)
!2629 = !DILocalVariable(name: "set", scope: !2622, file: !3, line: 1447, type: !71)
!2630 = !DILocalVariable(name: "len", scope: !2622, file: !3, line: 1448, type: !214)
!2631 = !DILocation(line: 0, scope: !2622)
!2632 = !DILocation(line: 1451, column: 17, scope: !2622)
!2633 = !DILocation(line: 1452, column: 9, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 1452, column: 7)
!2635 = !DILocation(line: 1452, column: 7, scope: !2622)
!2636 = !DILocation(line: 1454, column: 16, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 1453, column: 5)
!2638 = !DILocation(line: 1454, column: 14, scope: !2637)
!2639 = !DILocation(line: 1455, column: 7, scope: !2637)
!2640 = !DILocation(line: 0, scope: !2637)
!2641 = !DILocation(line: 1455, column: 20, scope: !2637)
!2642 = !DILocation(line: 1455, column: 30, scope: !2637)
!2643 = !DILocation(line: 1455, column: 37, scope: !2637)
!2644 = !DILocation(line: 1455, column: 42, scope: !2637)
!2645 = !DILocation(line: 1455, column: 40, scope: !2637)
!2646 = !DILocation(line: 1457, column: 12, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 1457, column: 8)
!2648 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 1456, column: 2)
!2649 = !DILocation(line: 1457, column: 23, scope: !2647)
!2650 = !DILocation(line: 1457, column: 20, scope: !2647)
!2651 = !DILocation(line: 1457, column: 8, scope: !2648)
!2652 = !DILocation(line: 1459, column: 12, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 1458, column: 6)
!2654 = !DILocation(line: 1460, column: 16, scope: !2653)
!2655 = !DILocation(line: 1461, column: 20, scope: !2653)
!2656 = !DILocation(line: 1462, column: 6, scope: !2653)
!2657 = !DILocation(line: 1463, column: 13, scope: !2648)
!2658 = !DILocation(line: 1463, column: 11, scope: !2648)
!2659 = distinct !{!2659, !2639, !2660}
!2660 = !DILocation(line: 1464, column: 2, scope: !2637)
!2661 = !DILocation(line: 1466, column: 8, scope: !2622)
!2662 = !DILocation(line: 1451, column: 15, scope: !2622)
!2663 = !DILocation(line: 1467, column: 3, scope: !2622)
!2664 = !DILocation(line: 1468, column: 3, scope: !2622)
!2665 = distinct !DISubprogram(name: "stat", scope: !2666, file: !2666, line: 453, type: !2667, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2669)
!2666 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!214, !80, !2035}
!2669 = !{!2670, !2671}
!2670 = !DILocalVariable(name: "__path", arg: 1, scope: !2665, file: !2666, line: 453, type: !80)
!2671 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2665, file: !2666, line: 453, type: !2035)
!2672 = !DILocation(line: 0, scope: !2665)
!2673 = !DILocation(line: 455, column: 10, scope: !2665)
!2674 = !DILocation(line: 455, column: 3, scope: !2665)
!2675 = distinct !DISubprogram(name: "validate_pch", scope: !3, file: !3, line: 1574, type: !2676, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!75, !374, !101, !80}
!2678 = !{!2679, !2680, !2681, !2682, !2683, !2684}
!2679 = !DILocalVariable(name: "pfile", arg: 1, scope: !2675, file: !3, line: 1574, type: !374)
!2680 = !DILocalVariable(name: "file", arg: 2, scope: !2675, file: !3, line: 1574, type: !101)
!2681 = !DILocalVariable(name: "pchname", arg: 3, scope: !2675, file: !3, line: 1574, type: !80)
!2682 = !DILocalVariable(name: "saved_path", scope: !2675, file: !3, line: 1576, type: !80)
!2683 = !DILocalVariable(name: "valid", scope: !2675, file: !3, line: 1577, type: !75)
!2684 = !DILocalVariable(name: "i", scope: !2685, file: !3, line: 1592, type: !7)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 1591, column: 2)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 1590, column: 11)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 1581, column: 5)
!2688 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 1580, column: 7)
!2689 = !DILocation(line: 0, scope: !2675)
!2690 = !DILocation(line: 1576, column: 34, scope: !2675)
!2691 = !DILocation(line: 1579, column: 14, scope: !2675)
!2692 = !DILocation(line: 1580, column: 7, scope: !2688)
!2693 = !DILocation(line: 1580, column: 7, scope: !2675)
!2694 = !DILocation(line: 1582, column: 29, scope: !2687)
!2695 = !DILocation(line: 1582, column: 62, scope: !2687)
!2696 = !DILocation(line: 1582, column: 19, scope: !2687)
!2697 = !DILocation(line: 1582, column: 15, scope: !2687)
!2698 = !DILocation(line: 1584, column: 12, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 1584, column: 11)
!2700 = !DILocation(line: 1584, column: 11, scope: !2687)
!2701 = !DILocation(line: 1586, column: 17, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 1585, column: 2)
!2703 = !DILocation(line: 1586, column: 4, scope: !2702)
!2704 = !DILocation(line: 1587, column: 13, scope: !2702)
!2705 = !DILocation(line: 1588, column: 2, scope: !2702)
!2706 = !DILocation(line: 1590, column: 11, scope: !2686)
!2707 = !DILocation(line: 1590, column: 11, scope: !2687)
!2708 = !DILocation(line: 0, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 1593, column: 4)
!2710 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1593, column: 4)
!2711 = !DILocation(line: 1593, column: 4, scope: !2710)
!2712 = !DILocation(line: 0, scope: !2710)
!2713 = !DILocation(line: 0, scope: !2685)
!2714 = !DILocation(line: 1593, column: 27, scope: !2709)
!2715 = !DILocation(line: 1593, column: 39, scope: !2709)
!2716 = !DILocation(line: 1593, column: 18, scope: !2709)
!2717 = !DILocation(line: 1594, column: 6, scope: !2709)
!2718 = !DILocation(line: 1593, column: 47, scope: !2709)
!2719 = !DILocation(line: 1593, column: 4, scope: !2709)
!2720 = distinct !{!2720, !2711, !2721}
!2721 = !DILocation(line: 1594, column: 23, scope: !2710)
!2722 = !DILocation(line: 1596, column: 6, scope: !2685)
!2723 = !DILocation(line: 1595, column: 4, scope: !2685)
!2724 = !DILocation(line: 1597, column: 2, scope: !2685)
!2725 = !DILocation(line: 1600, column: 14, scope: !2675)
!2726 = !DILocation(line: 1601, column: 3, scope: !2675)
!2727 = distinct !DISubprogram(name: "read_file", scope: !3, file: !3, line: 677, type: !2728, scopeLine: 678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!75, !374, !101}
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "pfile", arg: 1, scope: !2727, file: !3, line: 677, type: !374)
!2732 = !DILocalVariable(name: "file", arg: 2, scope: !2727, file: !3, line: 677, type: !101)
!2733 = !DILocation(line: 0, scope: !2727)
!2734 = !DILocation(line: 680, column: 13, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 680, column: 7)
!2736 = !DILocation(line: 680, column: 7, scope: !2735)
!2737 = !DILocation(line: 680, column: 7, scope: !2727)
!2738 = !DILocation(line: 684, column: 13, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 684, column: 7)
!2740 = !DILocation(line: 684, column: 7, scope: !2739)
!2741 = !DILocation(line: 684, column: 23, scope: !2739)
!2742 = !DILocation(line: 684, column: 32, scope: !2739)
!2743 = !DILocation(line: 684, column: 26, scope: !2739)
!2744 = !DILocation(line: 684, column: 7, scope: !2727)
!2745 = !DILocation(line: 687, column: 13, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 687, column: 7)
!2747 = !DILocation(line: 687, column: 16, scope: !2746)
!2748 = !DILocation(line: 687, column: 22, scope: !2746)
!2749 = !DILocation(line: 687, column: 26, scope: !2746)
!2750 = !DILocation(line: 687, column: 7, scope: !2727)
!2751 = !DILocation(line: 689, column: 7, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 688, column: 5)
!2753 = !DILocation(line: 690, column: 7, scope: !2752)
!2754 = !DILocation(line: 693, column: 22, scope: !2727)
!2755 = !DILocation(line: 693, column: 21, scope: !2727)
!2756 = !DILocation(line: 693, column: 19, scope: !2727)
!2757 = !DILocation(line: 694, column: 16, scope: !2727)
!2758 = !DILocation(line: 694, column: 3, scope: !2727)
!2759 = !DILocation(line: 695, column: 12, scope: !2727)
!2760 = !DILocation(line: 697, column: 17, scope: !2727)
!2761 = !DILocation(line: 697, column: 10, scope: !2727)
!2762 = !DILocation(line: 697, column: 3, scope: !2727)
!2763 = !DILocation(line: 698, column: 1, scope: !2727)
!2764 = distinct !DISubprogram(name: "check_file_against_entries", scope: !3, file: !3, line: 1835, type: !1322, scopeLine: 1838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2765)
!2765 = !{!2766, !2767, !2768, !2769}
!2766 = !DILocalVariable(name: "pfile", arg: 1, scope: !2764, file: !3, line: 1835, type: !374)
!2767 = !DILocalVariable(name: "f", arg: 2, scope: !2764, file: !3, line: 1836, type: !101)
!2768 = !DILocalVariable(name: "check_included", arg: 3, scope: !2764, file: !3, line: 1837, type: !75)
!2769 = !DILocalVariable(name: "d", scope: !2764, file: !3, line: 1839, type: !275)
!2770 = !DILocation(line: 0, scope: !2764)
!2771 = !DILocation(line: 1839, column: 3, scope: !2764)
!2772 = !DILocation(line: 1841, column: 7, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1841, column: 7)
!2774 = !DILocation(line: 1841, column: 12, scope: !2773)
!2775 = !DILocation(line: 1842, column: 7, scope: !2773)
!2776 = !DILocation(line: 1842, column: 13, scope: !2773)
!2777 = !DILocation(line: 1842, column: 28, scope: !2773)
!2778 = !DILocation(line: 1842, column: 39, scope: !2773)
!2779 = !DILocation(line: 1842, column: 33, scope: !2773)
!2780 = !DILocation(line: 1841, column: 7, scope: !2764)
!2781 = !DILocation(line: 1845, column: 18, scope: !2764)
!2782 = !DILocation(line: 1845, column: 5, scope: !2764)
!2783 = !DILocation(line: 1845, column: 10, scope: !2764)
!2784 = !DILocation(line: 1846, column: 5, scope: !2764)
!2785 = !DILocation(line: 1846, column: 18, scope: !2764)
!2786 = !DILocation(line: 1847, column: 5, scope: !2764)
!2787 = !DILocation(line: 1847, column: 7, scope: !2764)
!2788 = !DILocation(line: 1848, column: 5, scope: !2764)
!2789 = !DILocation(line: 1848, column: 20, scope: !2764)
!2790 = !DILocation(line: 1849, column: 23, scope: !2764)
!2791 = !DILocation(line: 1849, column: 44, scope: !2764)
!2792 = !DILocation(line: 1849, column: 10, scope: !2764)
!2793 = !DILocation(line: 1850, column: 19, scope: !2764)
!2794 = !DILocation(line: 1849, column: 3, scope: !2764)
!2795 = !DILocation(line: 1851, column: 1, scope: !2764)
!2796 = distinct !DISubprogram(name: "destroy_cpp_file", scope: !3, file: !3, line: 1012, type: !2797, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !101}
!2799 = !{!2800}
!2800 = !DILocalVariable(name: "file", arg: 1, scope: !2796, file: !3, line: 1012, type: !101)
!2801 = !DILocation(line: 0, scope: !2796)
!2802 = !DILocation(line: 1014, column: 13, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 1014, column: 7)
!2804 = !DILocation(line: 1014, column: 7, scope: !2803)
!2805 = !DILocation(line: 1014, column: 7, scope: !2796)
!2806 = !DILocation(line: 1015, column: 5, scope: !2803)
!2807 = !DILocation(line: 1016, column: 24, scope: !2796)
!2808 = !DILocation(line: 1016, column: 3, scope: !2796)
!2809 = !DILocation(line: 1017, column: 9, scope: !2796)
!2810 = !DILocation(line: 1017, column: 3, scope: !2796)
!2811 = !DILocation(line: 1018, column: 1, scope: !2796)
!2812 = distinct !DISubprogram(name: "read_file_guts", scope: !3, file: !3, line: 601, type: !2728, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2813)
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2819, !2820}
!2814 = !DILocalVariable(name: "pfile", arg: 1, scope: !2812, file: !3, line: 601, type: !374)
!2815 = !DILocalVariable(name: "file", arg: 2, scope: !2812, file: !3, line: 601, type: !101)
!2816 = !DILocalVariable(name: "size", scope: !2812, file: !3, line: 603, type: !269)
!2817 = !DILocalVariable(name: "total", scope: !2812, file: !3, line: 603, type: !269)
!2818 = !DILocalVariable(name: "count", scope: !2812, file: !3, line: 603, type: !269)
!2819 = !DILocalVariable(name: "buf", scope: !2812, file: !3, line: 604, type: !271)
!2820 = !DILocalVariable(name: "regular", scope: !2812, file: !3, line: 605, type: !75)
!2821 = !DILocation(line: 0, scope: !2812)
!2822 = !DILocation(line: 607, column: 7, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 607, column: 7)
!2824 = !DILocation(line: 607, column: 7, scope: !2812)
!2825 = !DILocation(line: 609, column: 69, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 608, column: 5)
!2827 = !DILocation(line: 609, column: 7, scope: !2826)
!2828 = !DILocation(line: 610, column: 7, scope: !2826)
!2829 = !DILocation(line: 613, column: 13, scope: !2812)
!2830 = !DILocation(line: 614, column: 7, scope: !2812)
!2831 = !DILocation(line: 630, column: 23, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 615, column: 5)
!2833 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 614, column: 7)
!2834 = !DILocation(line: 631, column: 5, scope: !2832)
!2835 = !DILocation(line: 0, scope: !2833)
!2836 = !DILocation(line: 638, column: 9, scope: !2812)
!2837 = !DILocation(line: 640, column: 3, scope: !2812)
!2838 = !DILocation(line: 640, column: 31, scope: !2812)
!2839 = !DILocation(line: 640, column: 39, scope: !2812)
!2840 = !DILocation(line: 640, column: 53, scope: !2812)
!2841 = !DILocation(line: 640, column: 19, scope: !2812)
!2842 = !DILocation(line: 640, column: 63, scope: !2812)
!2843 = !DILocation(line: 642, column: 13, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 641, column: 5)
!2845 = !DILocation(line: 644, column: 17, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 644, column: 11)
!2847 = !DILocation(line: 644, column: 11, scope: !2844)
!2848 = !DILocation(line: 646, column: 8, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 645, column: 2)
!2850 = distinct !{!2850, !2837, !2851}
!2851 = !DILocation(line: 651, column: 5, scope: !2812)
!2852 = !DILocation(line: 653, column: 13, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 653, column: 7)
!2854 = !DILocation(line: 648, column: 9, scope: !2849)
!2855 = !DILocation(line: 649, column: 10, scope: !2849)
!2856 = !DILocation(line: 650, column: 2, scope: !2849)
!2857 = !DILocation(line: 653, column: 7, scope: !2812)
!2858 = !DILocation(line: 655, column: 45, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 654, column: 5)
!2860 = !DILocation(line: 655, column: 7, scope: !2859)
!2861 = !DILocation(line: 656, column: 7, scope: !2859)
!2862 = !DILocation(line: 659, column: 24, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 659, column: 7)
!2864 = !DILocation(line: 659, column: 15, scope: !2863)
!2865 = !DILocation(line: 661, column: 46, scope: !2863)
!2866 = !DILocation(line: 660, column: 5, scope: !2863)
!2867 = !DILocation(line: 664, column: 10, scope: !2812)
!2868 = !DILocation(line: 666, column: 17, scope: !2812)
!2869 = !DILocation(line: 667, column: 20, scope: !2812)
!2870 = !DILocation(line: 663, column: 18, scope: !2812)
!2871 = !DILocation(line: 663, column: 9, scope: !2812)
!2872 = !DILocation(line: 663, column: 16, scope: !2812)
!2873 = !DILocation(line: 668, column: 9, scope: !2812)
!2874 = !DILocation(line: 668, column: 22, scope: !2812)
!2875 = !DILocation(line: 670, column: 3, scope: !2812)
!2876 = !DILocation(line: 671, column: 1, scope: !2812)
!2877 = distinct !DISubprogram(name: "bsearch", scope: !2878, file: !2878, line: 20, type: !2879, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2883)
!2878 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!57, !541, !541, !256, !256, !2881}
!2881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2882, line: 808, baseType: !545)
!2882 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2883 = !{!2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893}
!2884 = !DILocalVariable(name: "__key", arg: 1, scope: !2877, file: !2878, line: 20, type: !541)
!2885 = !DILocalVariable(name: "__base", arg: 2, scope: !2877, file: !2878, line: 20, type: !541)
!2886 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2877, file: !2878, line: 20, type: !256)
!2887 = !DILocalVariable(name: "__size", arg: 4, scope: !2877, file: !2878, line: 20, type: !256)
!2888 = !DILocalVariable(name: "__compar", arg: 5, scope: !2877, file: !2878, line: 21, type: !2881)
!2889 = !DILocalVariable(name: "__l", scope: !2877, file: !2878, line: 23, type: !256)
!2890 = !DILocalVariable(name: "__u", scope: !2877, file: !2878, line: 23, type: !256)
!2891 = !DILocalVariable(name: "__idx", scope: !2877, file: !2878, line: 23, type: !256)
!2892 = !DILocalVariable(name: "__p", scope: !2877, file: !2878, line: 24, type: !541)
!2893 = !DILocalVariable(name: "__comparison", scope: !2877, file: !2878, line: 25, type: !214)
!2894 = !DILocation(line: 0, scope: !2877)
!2895 = !DILocation(line: 29, column: 3, scope: !2877)
!2896 = !DILocation(line: 27, column: 7, scope: !2877)
!2897 = !DILocation(line: 29, column: 14, scope: !2877)
!2898 = !DILocation(line: 31, column: 20, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2877, file: !2878, line: 30, column: 5)
!2900 = !DILocation(line: 31, column: 27, scope: !2899)
!2901 = !DILocation(line: 32, column: 56, scope: !2899)
!2902 = !DILocation(line: 32, column: 47, scope: !2899)
!2903 = !DILocation(line: 33, column: 22, scope: !2899)
!2904 = !DILocation(line: 34, column: 24, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2899, file: !2878, line: 34, column: 11)
!2906 = !DILocation(line: 34, column: 11, scope: !2899)
!2907 = !DILocation(line: 36, column: 29, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2905, file: !2878, line: 36, column: 16)
!2909 = !DILocation(line: 36, column: 16, scope: !2905)
!2910 = !DILocation(line: 37, column: 14, scope: !2908)
!2911 = distinct !{!2911, !2895, !2912}
!2912 = !DILocation(line: 40, column: 5, scope: !2877)
!2913 = !DILocation(line: 43, column: 1, scope: !2877)
!2914 = distinct !DISubprogram(name: "pchf_compare", scope: !3, file: !3, line: 1802, type: !546, scopeLine: 1803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2915)
!2915 = !{!2916, !2917, !2918, !2919, !2920, !2921}
!2916 = !DILocalVariable(name: "d_p", arg: 1, scope: !2914, file: !3, line: 1802, type: !541)
!2917 = !DILocalVariable(name: "e_p", arg: 2, scope: !2914, file: !3, line: 1802, type: !541)
!2918 = !DILocalVariable(name: "e", scope: !2914, file: !3, line: 1804, type: !272)
!2919 = !DILocalVariable(name: "d", scope: !2914, file: !3, line: 1805, type: !274)
!2920 = !DILocalVariable(name: "result", scope: !2914, file: !3, line: 1806, type: !214)
!2921 = !DILocalVariable(name: "f", scope: !2922, file: !3, line: 1814, type: !2924)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 1813, column: 5)
!2923 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 1812, column: 7)
!2924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!2925 = !DILocation(line: 0, scope: !2914)
!2926 = !DILocation(line: 1808, column: 12, scope: !2914)
!2927 = !DILocation(line: 1809, column: 14, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 1809, column: 7)
!2929 = !DILocation(line: 1809, column: 7, scope: !2914)
!2930 = !DILocation(line: 1812, column: 12, scope: !2923)
!2931 = !DILocation(line: 1812, column: 9, scope: !2923)
!2932 = !DILocation(line: 1812, column: 7, scope: !2914)
!2933 = !DILocation(line: 1814, column: 31, scope: !2922)
!2934 = !DILocation(line: 0, scope: !2922)
!2935 = !DILocation(line: 1816, column: 36, scope: !2922)
!2936 = !DILocation(line: 1816, column: 50, scope: !2922)
!2937 = !DILocation(line: 1816, column: 62, scope: !2922)
!2938 = !DILocation(line: 1816, column: 7, scope: !2922)
!2939 = !DILocation(line: 1817, column: 23, scope: !2922)
!2940 = !DILocation(line: 1818, column: 5, scope: !2922)
!2941 = !DILocation(line: 1820, column: 23, scope: !2914)
!2942 = !DILocation(line: 1820, column: 31, scope: !2914)
!2943 = !DILocation(line: 1820, column: 12, scope: !2914)
!2944 = !DILocation(line: 1821, column: 14, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 1821, column: 7)
!2946 = !DILocation(line: 1821, column: 7, scope: !2914)
!2947 = !DILocation(line: 1824, column: 10, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 1824, column: 7)
!2949 = !DILocation(line: 1824, column: 7, scope: !2948)
!2950 = !DILocation(line: 1824, column: 25, scope: !2948)
!2951 = !DILocation(line: 1824, column: 31, scope: !2948)
!2952 = !DILocation(line: 1824, column: 28, scope: !2948)
!2953 = !DILocation(line: 1824, column: 7, scope: !2914)
!2954 = !DILocation(line: 1828, column: 1, scope: !2914)
!2955 = distinct !DISubprogram(name: "dir_name_of_file", scope: !3, file: !3, line: 905, type: !2956, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!80, !101}
!2958 = !{!2959, !2960, !2963}
!2959 = !DILocalVariable(name: "file", arg: 1, scope: !2955, file: !3, line: 905, type: !101)
!2960 = !DILocalVariable(name: "len", scope: !2961, file: !3, line: 909, type: !256)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 908, column: 5)
!2962 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 907, column: 7)
!2963 = !DILocalVariable(name: "dir_name", scope: !2961, file: !3, line: 910, type: !71)
!2964 = !DILocation(line: 0, scope: !2955)
!2965 = !DILocation(line: 907, column: 14, scope: !2962)
!2966 = !DILocation(line: 907, column: 8, scope: !2962)
!2967 = !DILocation(line: 907, column: 7, scope: !2955)
!2968 = !DILocation(line: 909, column: 37, scope: !2961)
!2969 = !DILocation(line: 909, column: 20, scope: !2961)
!2970 = !DILocation(line: 909, column: 51, scope: !2961)
!2971 = !DILocation(line: 909, column: 43, scope: !2961)
!2972 = !DILocation(line: 0, scope: !2961)
!2973 = !DILocation(line: 910, column: 24, scope: !2961)
!2974 = !DILocation(line: 912, column: 31, scope: !2961)
!2975 = !DILocation(line: 912, column: 7, scope: !2961)
!2976 = !DILocation(line: 913, column: 7, scope: !2961)
!2977 = !DILocation(line: 913, column: 21, scope: !2961)
!2978 = !DILocation(line: 914, column: 22, scope: !2961)
!2979 = !DILocation(line: 915, column: 5, scope: !2961)
!2980 = !DILocation(line: 917, column: 16, scope: !2955)
!2981 = !DILocation(line: 917, column: 3, scope: !2955)
!2982 = distinct !DISubprogram(name: "fstat", scope: !2666, file: !2666, line: 467, type: !2983, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!214, !214, !2035}
!2985 = !{!2986, !2987}
!2986 = !DILocalVariable(name: "__fd", arg: 1, scope: !2982, file: !2666, line: 467, type: !214)
!2987 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2982, file: !2666, line: 467, type: !2035)
!2988 = !DILocation(line: 0, scope: !2982)
!2989 = !DILocation(line: 469, column: 10, scope: !2982)
!2990 = !DILocation(line: 469, column: 3, scope: !2982)
