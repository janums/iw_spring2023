; ModuleID = 'cpp_directives-only.bc'
source_filename = "cpp_directives-only.c"
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
%struct._cpp_dir_only_callbacks = type { void (i32, i8*, i64)*, void (i32)* }

@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@.str = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !46 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !52, metadata !DIExpression()), !dbg !53
  %__c.off = add i32 %__c, 128, !dbg !54
  %0 = icmp ult i32 %__c.off, 384, !dbg !54
  br i1 %0, label %cond.true, label %cond.end, !dbg !54

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #4, !dbg !55
  %1 = load i32*, i32** %call, align 8, !dbg !56
  %idxprom = sext i32 %__c to i64, !dbg !57
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !57
  %2 = load i32, i32* %arrayidx, align 4, !dbg !57
  br label %cond.end, !dbg !58

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !58
  ret i32 %cond, !dbg !59
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !60 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !62, metadata !DIExpression()), !dbg !63
  %__c.off = add i32 %__c, 128, !dbg !64
  %0 = icmp ult i32 %__c.off, 384, !dbg !64
  br i1 %0, label %cond.true, label %cond.end, !dbg !64

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #4, !dbg !65
  %1 = load i32*, i32** %call, align 8, !dbg !66
  %idxprom = sext i32 %__c to i64, !dbg !67
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !67
  %2 = load i32, i32* %arrayidx, align 4, !dbg !67
  br label %cond.end, !dbg !68

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !68
  ret i32 %cond, !dbg !69
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_preprocess_dir_only(%struct.cpp_reader* %pfile, %struct._cpp_dir_only_callbacks* %cb) local_unnamed_addr #2 !dbg !70 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !660, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata %struct._cpp_dir_only_callbacks* %cb, metadata !661, metadata !DIExpression()), !dbg !718
  %buffer1 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 0, !dbg !718
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !718
  %mi_valid = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 28, !dbg !719
  %skipping228 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !720
  %print_lines266 = getelementptr inbounds %struct._cpp_dir_only_callbacks, %struct._cpp_dir_only_callbacks* %cb, i64 0, i32 0, !dbg !721
  %maybe_print_line = getelementptr inbounds %struct._cpp_dir_only_callbacks, %struct._cpp_dir_only_callbacks* %cb, i64 0, i32 1, !dbg !722
  br label %restart, !dbg !724

restart:                                          ; preds = %restart.backedge, %entry
  call void @llvm.dbg.label(metadata !717), !dbg !725
  %0 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !726
  call void @llvm.dbg.value(metadata %struct.cpp_buffer* %0, metadata !662, metadata !DIExpression()), !dbg !718
  %notes_used = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 7, !dbg !727
  store i32 0, i32* %notes_used, align 4, !dbg !728
  %cur_note = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 6, !dbg !729
  store i32 0, i32* %cur_note, align 8, !dbg !730
  %next_line2 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 2, !dbg !731
  %1 = bitcast i8** %next_line2 to i64*, !dbg !731
  %2 = load i64, i64* %1, align 8, !dbg !731
  %line_base = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 1, !dbg !732
  %3 = bitcast i8** %line_base to i64*, !dbg !733
  store i64 %2, i64* %3, align 8, !dbg !733
  %4 = bitcast %struct.cpp_buffer* %0 to i64*, !dbg !734
  store i64 %2, i64* %4, align 8, !dbg !734
  %need_line = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 13, !dbg !735
  store i8 0, i8* %need_line, align 8, !dbg !736
  %5 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !737
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %5, i64 0, i32 8, !dbg !738
  %6 = load i32, i32* %highest_line, align 4, !dbg !738
  call void @llvm.dbg.value(metadata i32 %6, metadata !673, metadata !DIExpression()), !dbg !718
  %7 = inttoptr i64 %2 to i8*, !dbg !739
  call void @llvm.dbg.value(metadata i8* %7, metadata !664, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %7, metadata !663, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %7, metadata !665, metadata !DIExpression()), !dbg !718
  %rlimit5 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %0, i64 0, i32 4, !dbg !740
  %8 = load i8*, i8** %rlimit5, align 8, !dbg !740
  call void @llvm.dbg.value(metadata i8* %8, metadata !666, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 1, metadata !670, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 0, metadata !671, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 1, metadata !672, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 10, metadata !669, metadata !DIExpression()), !dbg !718
  br label %for.cond, !dbg !741

for.cond:                                         ; preds = %for.inc, %restart
  %lines.0 = phi i32 [ 0, %restart ], [ %lines.4, %for.inc ], !dbg !718
  %flags.0 = phi i32 [ 1, %restart ], [ %flags.13, %for.inc ], !dbg !742
  %last_c.0 = phi i32 [ 10, %restart ], [ %c.6, %for.inc ], !dbg !743
  %c.0.in.in = phi i8* [ %7, %restart ], [ %incdec.ptr219, %for.inc ]
  %col.0 = phi i32 [ 1, %restart ], [ %inc221, %for.inc ], !dbg !718
  %next_line.0 = phi i8* [ %7, %restart ], [ %next_line.2, %for.inc ], !dbg !744
  %loc.0 = phi i32 [ %6, %restart ], [ %loc.6, %for.inc ], !dbg !745
  %cur.0 = phi i8* [ %7, %restart ], [ %incdec.ptr219, %for.inc ], !dbg !718
  %c.0.in = load i8, i8* %c.0.in.in, align 1, !dbg !743
  %c.0 = zext i8 %c.0.in to i32, !dbg !743
  call void @llvm.dbg.value(metadata i8* %cur.0, metadata !663, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %loc.0, metadata !673, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %next_line.0, metadata !665, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %col.0, metadata !672, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %c.0, metadata !667, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %last_c.0, metadata !669, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %flags.0, metadata !670, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %lines.0, metadata !671, metadata !DIExpression()), !dbg !718
  %cmp = icmp ult i8* %cur.0, %8, !dbg !746
  br i1 %cmp, label %for.body, label %for.end, !dbg !747

for.body:                                         ; preds = %for.cond
  %cmp7 = icmp eq i8 %c.0.in, 92, !dbg !748
  br i1 %cmp7, label %if.then, label %if.end34, !dbg !749

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i8* %cur.0, metadata !674, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !750
  br label %while.cond, !dbg !751

while.cond:                                       ; preds = %while.body, %if.then
  %cur.0.pn = phi i8* [ %cur.0, %if.then ], [ %tmp.0, %while.body ]
  %tmp.0 = getelementptr inbounds i8, i8* %cur.0.pn, i64 1, !dbg !750
  call void @llvm.dbg.value(metadata i8* %tmp.0, metadata !674, metadata !DIExpression()), !dbg !750
  %9 = load i8, i8* %tmp.0, align 1, !dbg !752
  %idxprom = zext i8 %9 to i64, !dbg !752
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !752
  %10 = load i16, i16* %arrayidx, align 2, !dbg !752
  %11 = and i16 %10, 2048, !dbg !752
  %tobool = icmp ne i16 %11, 0, !dbg !752
  %cmp12 = icmp ult i8* %tmp.0, %8, !dbg !753
  %spec.select = and i1 %cmp12, %tobool, !dbg !754
  br i1 %spec.select, label %while.body, label %while.end, !dbg !751

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata i8* %tmp.0, metadata !674, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !750
  br label %while.cond, !dbg !751, !llvm.loop !755

while.end:                                        ; preds = %while.cond
  %cur.0.pn.lcssa = phi i8* [ %cur.0.pn, %while.cond ]
  %tmp.0.lcssa = phi i8* [ %tmp.0, %while.cond ], !dbg !750
  %.lcssa = phi i8 [ %9, %while.cond ], !dbg !752
  %cmp15 = icmp eq i8 %.lcssa, 13, !dbg !757
  %incdec.ptr18 = getelementptr inbounds i8, i8* %cur.0.pn.lcssa, i64 2, !dbg !759
  %spec.select1 = select i1 %cmp15, i8* %incdec.ptr18, i8* %tmp.0.lcssa, !dbg !760
  call void @llvm.dbg.value(metadata i8* %spec.select1, metadata !674, metadata !DIExpression()), !dbg !750
  %12 = load i8, i8* %spec.select1, align 1, !dbg !761
  %cmp20 = icmp eq i8 %12, 10, !dbg !762
  %cmp22 = icmp ult i8* %spec.select1, %8, !dbg !763
  %or.cond = and i1 %cmp20, %cmp22, !dbg !764
  br i1 %or.cond, label %do.body, label %cleanup, !dbg !764

do.body:                                          ; preds = %while.end
  %13 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !765
  call void @llvm.dbg.value(metadata %struct.line_maps* %13, metadata !680, metadata !DIExpression()), !dbg !766
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %13, i64 0, i32 0, !dbg !765
  %14 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !765
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %13, i64 0, i32 2, !dbg !765
  %15 = load i32, i32* %used, align 4, !dbg !765
  %sub = add i32 %15, -1, !dbg !765
  %idxprom27 = zext i32 %sub to i64, !dbg !765
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !686, metadata !DIExpression()), !dbg !766
  %highest_line29 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %13, i64 0, i32 8, !dbg !765
  %16 = load i32, i32* %highest_line29, align 4, !dbg !765
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %14, i64 %idxprom27, i32 2, !dbg !765
  %17 = load i32, i32* %start_location, align 4, !dbg !765
  %sub30 = sub i32 %16, %17, !dbg !765
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %14, i64 %idxprom27, i32 6, !dbg !765
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !765
  %bf.cast = zext i8 %bf.load to i32, !dbg !765
  %shr = lshr i32 %sub30, %bf.cast, !dbg !765
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %14, i64 %idxprom27, i32 1, !dbg !765
  %18 = load i32, i32* %to_line, align 8, !dbg !765
  %add = add i32 %shr, %18, !dbg !765
  call void @llvm.dbg.value(metadata i32 %add, metadata !687, metadata !DIExpression()), !dbg !766
  %add32 = add i32 %add, 1, !dbg !765
  %call = tail call i32 @linemap_line_start(%struct.line_maps* %13, i32 %add32, i32 0) #4, !dbg !765
  %inc = add i32 %lines.0, 1, !dbg !767
  call void @llvm.dbg.value(metadata i32 %inc, metadata !671, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 0, metadata !672, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %spec.select1, metadata !663, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %last_c.0, metadata !667, metadata !DIExpression()), !dbg !718
  br label %cleanup, !dbg !768

cleanup:                                          ; preds = %while.end, %do.body
  %lines.1 = phi i32 [ %inc, %do.body ], [ %lines.0, %while.end ], !dbg !718
  %c.1 = phi i32 [ %last_c.0, %do.body ], [ %c.0, %while.end ], !dbg !743
  %col.1 = phi i32 [ 0, %do.body ], [ %col.0, %while.end ], !dbg !718
  %cur.1 = phi i8* [ %spec.select1, %do.body ], [ %cur.0, %while.end ], !dbg !718
  %cleanup.dest.slot.0 = phi i1 [ false, %do.body ], [ true, %while.end ]
  call void @llvm.dbg.value(metadata i8* %cur.1, metadata !663, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %col.1, metadata !672, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %c.1, metadata !667, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %lines.1, metadata !671, metadata !DIExpression()), !dbg !718
  br i1 %cleanup.dest.slot.0, label %if.end34, label %for.inc

if.end34:                                         ; preds = %cleanup, %for.body
  %lines.2 = phi i32 [ %lines.0, %for.body ], [ %lines.1, %cleanup ], !dbg !718
  %c.2 = phi i32 [ %c.0, %for.body ], [ %c.1, %cleanup ], !dbg !743
  %col.2 = phi i32 [ %col.0, %for.body ], [ %col.1, %cleanup ], !dbg !718
  %cur.2 = phi i8* [ %cur.0, %for.body ], [ %cur.1, %cleanup ], !dbg !718
  call void @llvm.dbg.value(metadata i8* %cur.2, metadata !663, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %col.2, metadata !672, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %c.2, metadata !667, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %lines.2, metadata !671, metadata !DIExpression()), !dbg !718
  %cmp35 = icmp ne i32 %last_c.0, 35, !dbg !769
  %and38 = and i32 %flags.0, 30, !dbg !770
  %tobool39 = icmp ne i32 %and38, 0, !dbg !770
  %or.cond2 = or i1 %cmp35, %tobool39, !dbg !771
  br i1 %or.cond2, label %if.else, label %if.then40, !dbg !771

if.then40:                                        ; preds = %if.end34
  %cmp41 = icmp ne i32 %c.2, 35, !dbg !772
  %and44 = and i32 %flags.0, 1, !dbg !773
  %tobool45 = icmp ne i32 %and44, 0, !dbg !773
  %or.cond3 = and i1 %cmp41, %tobool45, !dbg !774
  br i1 %or.cond3, label %if.then46, label %if.end74, !dbg !774

if.then46:                                        ; preds = %if.then40
  %lines.2.lcssa = phi i32 [ %lines.2, %if.then40 ], !dbg !718
  %col.2.lcssa = phi i32 [ %col.2, %if.then40 ], !dbg !718
  %cur.2.lcssa = phi i8* [ %cur.2, %if.then40 ], !dbg !718
  %next_line.0.lcssa26 = phi i8* [ %next_line.0, %if.then40 ], !dbg !744
  call void @llvm.dbg.value(metadata i32 %lines.2.lcssa, metadata !671, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %col.2.lcssa, metadata !672, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %cur.2.lcssa, metadata !663, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %next_line.0.lcssa26, metadata !665, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %lines.2.lcssa, metadata !671, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %col.2.lcssa, metadata !672, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %cur.2.lcssa, metadata !663, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %next_line.0.lcssa26, metadata !665, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %lines.2.lcssa, metadata !671, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %col.2.lcssa, metadata !672, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %cur.2.lcssa, metadata !663, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %next_line.0.lcssa26, metadata !665, metadata !DIExpression()), !dbg !718
  %19 = load i8, i8* %skipping228, align 2, !dbg !775
  %tobool48 = icmp eq i8 %19, 0, !dbg !777
  %cmp50 = icmp ne i8* %next_line.0.lcssa26, %7, !dbg !778
  %or.cond4 = and i1 %tobool48, %cmp50, !dbg !779
  br i1 %or.cond4, label %if.then52, label %if.end53, !dbg !779

if.then52:                                        ; preds = %if.then46
  %20 = load void (i32, i8*, i64)*, void (i32, i8*, i64)** %print_lines266, align 8, !dbg !780
  %sub.ptr.lhs.cast = ptrtoint i8* %next_line.0.lcssa26 to i64, !dbg !781
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %2, !dbg !781
  tail call void %20(i32 %lines.2.lcssa, i8* %7, i64 %sub.ptr.sub) #4, !dbg !782
  br label %if.end53, !dbg !782

if.end53:                                         ; preds = %if.then46, %if.then52
  store i8* %cur.2.lcssa, i8** %next_line2, align 8, !dbg !783
  store i8 1, i8* %need_line, align 8, !dbg !784
  %call56 = tail call zeroext i8 @_cpp_get_fresh_line(%struct.cpp_reader* %pfile) #4, !dbg !785
  %sub57 = add nsw i32 %col.2.lcssa, -1, !dbg !786
  %21 = load i8*, i8** %line_base, align 8, !dbg !787
  %idx.ext = sext i32 %sub57 to i64, !dbg !787
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !787
  %add.ptr59 = getelementptr inbounds i8, i8* %21, i64 %idx.neg, !dbg !787
  store i8* %add.ptr59, i8** %line_base, align 8, !dbg !787
  %call60 = tail call i32 @_cpp_handle_directive(%struct.cpp_reader* %pfile, i32 0) #4, !dbg !788
  %22 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !789
  call void @llvm.dbg.value(metadata %struct.line_maps* %22, metadata !688, metadata !DIExpression()), !dbg !790
  %highest_line62 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %22, i64 0, i32 8, !dbg !791
  %23 = load i32, i32* %highest_line62, align 4, !dbg !791
  %highest_location = getelementptr inbounds %struct.line_maps, %struct.line_maps* %22, i64 0, i32 7, !dbg !792
  store i32 %23, i32* %highest_location, align 8, !dbg !793
  %24 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !794
  %next_line64 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %24, i64 0, i32 2, !dbg !795
  %25 = load i8*, i8** %next_line64, align 8, !dbg !795
  %rlimit66 = getelementptr inbounds %struct.cpp_buffer, %struct.cpp_buffer* %24, i64 0, i32 4, !dbg !796
  %26 = load i8*, i8** %rlimit66, align 8, !dbg !796
  %cmp67 = icmp ult i8* %25, %26, !dbg !797
  br i1 %cmp67, label %if.then69, label %if.end72, !dbg !798

if.then69:                                        ; preds = %if.end53
  %27 = load void (i32)*, void (i32)** %maybe_print_line, align 8, !dbg !799
  %28 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !800
  %highest_line71 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %28, i64 0, i32 8, !dbg !801
  %29 = load i32, i32* %highest_line71, align 4, !dbg !801
  tail call void %27(i32 %29) #4, !dbg !802
  br label %if.end72, !dbg !802

if.end72:                                         ; preds = %if.then69, %if.end53
  br label %restart.backedge

restart.backedge:                                 ; preds = %if.end72, %if.end270
  br label %restart, !dbg !725

if.end74:                                         ; preds = %if.then40
  %and75 = and i32 %flags.0, -2, !dbg !803
  call void @llvm.dbg.value(metadata i32 %and75, metadata !670, metadata !DIExpression()), !dbg !718
  store i8 0, i8* %mi_valid, align 8, !dbg !804
  br label %if.end91, !dbg !805

if.else:                                          ; preds = %if.end34
  %cmp76 = icmp eq i32 %last_c.0, 47, !dbg !806
  %tobool80 = icmp eq i32 %and38, 0, !dbg !808
  %or.cond5.not = and i1 %tobool80, %cmp76, !dbg !809
  br i1 %or.cond5.not, label %switch.early.test, label %if.end91, !dbg !809

switch.early.test:                                ; preds = %if.else
  switch i32 %c.2, label %if.then87 [
    i32 47, label %if.end91
    i32 42, label %if.end91
  ], !dbg !809

if.then87:                                        ; preds = %switch.early.test
  %and88 = and i32 %flags.0, -2, !dbg !810
  call void @llvm.dbg.value(metadata i32 %and88, metadata !670, metadata !DIExpression()), !dbg !718
  store i8 0, i8* %mi_valid, align 8, !dbg !812
  br label %if.end91, !dbg !813

if.end91:                                         ; preds = %switch.early.test, %switch.early.test, %if.else, %if.then87, %if.end74
  %flags.2 = phi i32 [ %and75, %if.end74 ], [ %and88, %if.then87 ], [ %flags.0, %switch.early.test ], [ %flags.0, %if.else ], [ %flags.0, %switch.early.test ], !dbg !718
  call void @llvm.dbg.value(metadata i32 %flags.2, metadata !670, metadata !DIExpression()), !dbg !718
  switch i32 %c.2, label %sw.default [
    i32 47, label %sw.bb
    i32 42, label %sw.bb131
    i32 39, label %sw.bb144
    i32 34, label %sw.bb144
    i32 92, label %sw.bb165
    i32 10, label %do.body180
    i32 35, label %for.inc
    i32 32, label %sw.bb212
    i32 9, label %sw.bb212
    i32 12, label %sw.bb212
    i32 11, label %sw.bb212
    i32 0, label %sw.bb212
  ], !dbg !814

sw.bb:                                            ; preds = %if.end91
  %and92 = and i32 %flags.2, 8, !dbg !815
  %tobool93 = icmp ne i32 %and92, 0, !dbg !815
  %cmp95 = icmp eq i32 %last_c.0, 42, !dbg !816
  %or.cond8 = and i1 %tobool93, %cmp95, !dbg !817
  br i1 %or.cond8, label %if.then97, label %if.else99, !dbg !817

if.then97:                                        ; preds = %sw.bb
  %and98 = and i32 %flags.2, -9, !dbg !818
  call void @llvm.dbg.value(metadata i32 %and98, metadata !670, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 0, metadata !667, metadata !DIExpression()), !dbg !718
  br label %for.inc, !dbg !820

if.else99:                                        ; preds = %sw.bb
  %and100 = and i32 %flags.2, 30, !dbg !821
  %tobool101 = icmp eq i32 %and100, 0, !dbg !821
  %cmp103 = icmp eq i32 %last_c.0, 47, !dbg !822
  %or.cond9 = and i1 %tobool101, %cmp103, !dbg !823
  br i1 %or.cond9, label %if.then105, label %if.else106, !dbg !823

if.then105:                                       ; preds = %if.else99
  %or = or i32 %flags.2, 16, !dbg !824
  call void @llvm.dbg.value(metadata i32 %or, metadata !670, metadata !DIExpression()), !dbg !718
  br label %for.inc, !dbg !825

if.else106:                                       ; preds = %if.else99
  br i1 %tobool101, label %do.body110, label %for.inc, !dbg !826

do.body110:                                       ; preds = %if.else106
  call void @llvm.dbg.value(metadata i32 %col.2, metadata !693, metadata !DIExpression()), !dbg !827
  %30 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !828
  call void @llvm.dbg.value(metadata %struct.line_maps* %30, metadata !699, metadata !DIExpression()), !dbg !827
  %max_column_hint = getelementptr inbounds %struct.line_maps, %struct.line_maps* %30, i64 0, i32 9, !dbg !829
  %31 = load i32, i32* %max_column_hint, align 8, !dbg !829
  %cmp112 = icmp ult i32 %col.2, %31, !dbg !829
  br i1 %cmp112, label %if.else116, label %if.then114, !dbg !828

if.then114:                                       ; preds = %do.body110
  %call115 = tail call i32 @linemap_position_for_column(%struct.line_maps* %30, i32 %col.2) #4, !dbg !829
  call void @llvm.dbg.value(metadata i32 %call115, metadata !673, metadata !DIExpression()), !dbg !718
  br label %for.inc, !dbg !829

if.else116:                                       ; preds = %do.body110
  %highest_line117 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %30, i64 0, i32 8, !dbg !830
  %32 = load i32, i32* %highest_line117, align 4, !dbg !830
  call void @llvm.dbg.value(metadata i32 %32, metadata !700, metadata !DIExpression()), !dbg !831
  %add118 = add i32 %32, %col.2, !dbg !830
  call void @llvm.dbg.value(metadata i32 %add118, metadata !700, metadata !DIExpression()), !dbg !831
  %highest_location119 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %30, i64 0, i32 7, !dbg !832
  %33 = load i32, i32* %highest_location119, align 8, !dbg !832
  %cmp120 = icmp ult i32 %add118, %33, !dbg !832
  br i1 %cmp120, label %for.inc, label %if.then122, !dbg !830

if.then122:                                       ; preds = %if.else116
  store i32 %add118, i32* %highest_location119, align 8, !dbg !832
  br label %for.inc, !dbg !832

sw.bb131:                                         ; preds = %if.end91
  %and132 = and i32 %flags.2, 30, !dbg !834
  %tobool133 = icmp eq i32 %and132, 0, !dbg !834
  br i1 %tobool133, label %if.then134, label %for.inc, !dbg !836

if.then134:                                       ; preds = %sw.bb131
  %cmp135 = icmp eq i32 %last_c.0, 47, !dbg !837
  br i1 %cmp135, label %if.then137, label %if.else139, !dbg !840

if.then137:                                       ; preds = %if.then134
  %or138 = or i32 %flags.2, 8, !dbg !841
  call void @llvm.dbg.value(metadata i32 %or138, metadata !670, metadata !DIExpression()), !dbg !718
  br label %for.inc, !dbg !842

if.else139:                                       ; preds = %if.then134
  %and140 = and i32 %flags.2, -2, !dbg !843
  call void @llvm.dbg.value(metadata i32 %and140, metadata !670, metadata !DIExpression()), !dbg !718
  store i8 0, i8* %mi_valid, align 8, !dbg !845
  br label %for.inc

sw.bb144:                                         ; preds = %if.end91, %if.end91
  %cmp146 = icmp eq i32 %c.2, 34, !dbg !846
  %cond = select i1 %cmp146, i32 2, i32 4, !dbg !847
  call void @llvm.dbg.value(metadata i32 %cond, metadata !703, metadata !DIExpression()), !dbg !848
  %and148 = and i32 %flags.2, 30, !dbg !849
  %tobool149 = icmp eq i32 %and148, 0, !dbg !849
  br i1 %tobool149, label %if.then150, label %if.else154, !dbg !851

if.then150:                                       ; preds = %sw.bb144
  %flags.2.masked = and i32 %flags.2, -2, !dbg !852
  %and152 = or i32 %flags.2.masked, %cond, !dbg !852
  call void @llvm.dbg.value(metadata i32 %and152, metadata !670, metadata !DIExpression()), !dbg !718
  store i8 0, i8* %mi_valid, align 8, !dbg !854
  br label %for.inc, !dbg !855

if.else154:                                       ; preds = %sw.bb144
  %and155 = and i32 %flags.2, %cond, !dbg !856
  %tobool156 = icmp ne i32 %and155, 0, !dbg !856
  %cmp158 = icmp ne i32 %last_c.0, 92, !dbg !858
  %or.cond10 = and i1 %tobool156, %cmp158, !dbg !859
  %neg = xor i32 %cond, -1, !dbg !859
  %and161 = select i1 %or.cond10, i32 %neg, i32 -1, !dbg !859
  %flags.7 = and i32 %flags.2, %and161, !dbg !859
  br label %for.inc, !dbg !859

sw.bb165:                                         ; preds = %if.end91
  %and166 = and i32 %flags.2, 6, !dbg !860
  %tobool167 = icmp ne i32 %and166, 0, !dbg !860
  %cmp169 = icmp eq i32 %last_c.0, 92, !dbg !863
  %or.cond11 = and i1 %tobool167, %cmp169, !dbg !864
  %c.4 = select i1 %or.cond11, i32 0, i32 92, !dbg !864
  call void @llvm.dbg.value(metadata i32 %c.4, metadata !667, metadata !DIExpression()), !dbg !718
  %and173 = and i32 %flags.2, 30, !dbg !865
  %tobool174 = icmp eq i32 %and173, 0, !dbg !865
  br i1 %tobool174, label %if.then175, label %for.inc, !dbg !867

if.then175:                                       ; preds = %sw.bb165
  %and176 = and i32 %flags.2, -2, !dbg !868
  call void @llvm.dbg.value(metadata i32 %and176, metadata !670, metadata !DIExpression()), !dbg !718
  store i8 0, i8* %mi_valid, align 8, !dbg !870
  br label %for.inc, !dbg !871

do.body180:                                       ; preds = %if.end91
  %34 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !872
  call void @llvm.dbg.value(metadata %struct.line_maps* %34, metadata !705, metadata !DIExpression()), !dbg !873
  %maps184 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %34, i64 0, i32 0, !dbg !872
  %35 = load %struct.line_map*, %struct.line_map** %maps184, align 8, !dbg !872
  %used185 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %34, i64 0, i32 2, !dbg !872
  %36 = load i32, i32* %used185, align 4, !dbg !872
  %sub186 = add i32 %36, -1, !dbg !872
  %idxprom187 = zext i32 %sub186 to i64, !dbg !872
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !707, metadata !DIExpression()), !dbg !873
  %highest_line190 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %34, i64 0, i32 8, !dbg !872
  %37 = load i32, i32* %highest_line190, align 4, !dbg !872
  %start_location191 = getelementptr inbounds %struct.line_map, %struct.line_map* %35, i64 %idxprom187, i32 2, !dbg !872
  %38 = load i32, i32* %start_location191, align 4, !dbg !872
  %sub192 = sub i32 %37, %38, !dbg !872
  %column_bits193 = getelementptr inbounds %struct.line_map, %struct.line_map* %35, i64 %idxprom187, i32 6, !dbg !872
  %bf.load194 = load i8, i8* %column_bits193, align 2, !dbg !872
  %bf.cast195 = zext i8 %bf.load194 to i32, !dbg !872
  %shr196 = lshr i32 %sub192, %bf.cast195, !dbg !872
  %to_line197 = getelementptr inbounds %struct.line_map, %struct.line_map* %35, i64 %idxprom187, i32 1, !dbg !872
  %39 = load i32, i32* %to_line197, align 8, !dbg !872
  %add198 = add i32 %shr196, %39, !dbg !872
  call void @llvm.dbg.value(metadata i32 %add198, metadata !708, metadata !DIExpression()), !dbg !873
  %add200 = add i32 %add198, 1, !dbg !872
  %call201 = tail call i32 @linemap_line_start(%struct.line_maps* %34, i32 %add200, i32 0) #4, !dbg !872
  %inc204 = add i32 %lines.2, 1, !dbg !874
  call void @llvm.dbg.value(metadata i32 %inc204, metadata !671, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 0, metadata !672, metadata !DIExpression()), !dbg !718
  %and205 = and i32 %flags.2, -23, !dbg !875
  call void @llvm.dbg.value(metadata i32 %and205, metadata !670, metadata !DIExpression()), !dbg !718
  %and206 = lshr i32 %flags.2, 3, !dbg !876
  %40 = and i32 %and206, 1, !dbg !876
  %41 = xor i32 %40, 1, !dbg !876
  %42 = or i32 %41, %and205, !dbg !876
  br label %for.inc, !dbg !876

sw.bb212:                                         ; preds = %if.end91, %if.end91, %if.end91, %if.end91, %if.end91
  br label %for.inc, !dbg !877

sw.default:                                       ; preds = %if.end91
  %and213 = and i32 %flags.2, 30, !dbg !878
  %tobool214 = icmp eq i32 %and213, 0, !dbg !878
  br i1 %tobool214, label %if.then215, label %for.inc, !dbg !880

if.then215:                                       ; preds = %sw.default
  %and216 = and i32 %flags.2, -2, !dbg !881
  call void @llvm.dbg.value(metadata i32 %and216, metadata !670, metadata !DIExpression()), !dbg !718
  store i8 0, i8* %mi_valid, align 8, !dbg !883
  br label %for.inc, !dbg !884

for.inc:                                          ; preds = %sw.default, %if.else116, %if.else106, %sw.bb131, %sw.bb165, %sw.bb212, %if.then105, %if.then114, %if.then122, %if.then97, %if.then137, %if.else139, %if.else154, %if.then150, %if.then175, %do.body180, %if.end91, %if.then215, %cleanup
  %lines.4 = phi i32 [ %lines.1, %cleanup ], [ %lines.2, %sw.bb212 ], [ %lines.2, %if.then105 ], [ %lines.2, %if.then114 ], [ %lines.2, %if.then122 ], [ %lines.2, %if.else116 ], [ %lines.2, %if.else106 ], [ %lines.2, %if.then97 ], [ %lines.2, %if.then137 ], [ %lines.2, %if.else139 ], [ %lines.2, %sw.bb131 ], [ %lines.2, %if.else154 ], [ %lines.2, %if.then150 ], [ %lines.2, %if.then175 ], [ %lines.2, %sw.bb165 ], [ %inc204, %do.body180 ], [ %lines.2, %if.end91 ], [ %lines.2, %if.then215 ], [ %lines.2, %sw.default ], !dbg !767
  %flags.13 = phi i32 [ %flags.0, %cleanup ], [ %flags.2, %sw.bb212 ], [ %or, %if.then105 ], [ %flags.2, %if.then114 ], [ %flags.2, %if.then122 ], [ %flags.2, %if.else116 ], [ %flags.2, %if.else106 ], [ %and98, %if.then97 ], [ %or138, %if.then137 ], [ %and140, %if.else139 ], [ %flags.2, %sw.bb131 ], [ %flags.7, %if.else154 ], [ %and152, %if.then150 ], [ %and176, %if.then175 ], [ %flags.2, %sw.bb165 ], [ %42, %do.body180 ], [ %flags.2, %if.end91 ], [ %and216, %if.then215 ], [ %flags.2, %sw.default ], !dbg !742
  %c.6 = phi i32 [ %c.1, %cleanup ], [ %c.2, %sw.bb212 ], [ 47, %if.then105 ], [ 47, %if.then114 ], [ 47, %if.then122 ], [ 47, %if.else116 ], [ 47, %if.else106 ], [ 0, %if.then97 ], [ 42, %if.then137 ], [ 42, %if.else139 ], [ 42, %sw.bb131 ], [ %c.2, %if.else154 ], [ %c.2, %if.then150 ], [ %c.4, %if.then175 ], [ %c.4, %sw.bb165 ], [ 10, %do.body180 ], [ 35, %if.end91 ], [ %c.2, %if.then215 ], [ %c.2, %sw.default ], !dbg !885
  %col.4 = phi i32 [ %col.1, %cleanup ], [ %col.2, %sw.bb212 ], [ %col.2, %if.then105 ], [ %col.2, %if.then114 ], [ %col.2, %if.then122 ], [ %col.2, %if.else116 ], [ %col.2, %if.else106 ], [ %col.2, %if.then97 ], [ %col.2, %if.then137 ], [ %col.2, %if.else139 ], [ %col.2, %sw.bb131 ], [ %col.2, %if.else154 ], [ %col.2, %if.then150 ], [ %col.2, %if.then175 ], [ %col.2, %sw.bb165 ], [ 0, %do.body180 ], [ %col.2, %if.end91 ], [ %col.2, %if.then215 ], [ %col.2, %sw.default ], !dbg !886
  %next_line.2 = phi i8* [ %next_line.0, %cleanup ], [ %next_line.0, %sw.bb212 ], [ %next_line.0, %if.then105 ], [ %next_line.0, %if.then114 ], [ %next_line.0, %if.then122 ], [ %next_line.0, %if.else116 ], [ %next_line.0, %if.else106 ], [ %next_line.0, %if.then97 ], [ %next_line.0, %if.then137 ], [ %next_line.0, %if.else139 ], [ %next_line.0, %sw.bb131 ], [ %next_line.0, %if.else154 ], [ %next_line.0, %if.then150 ], [ %next_line.0, %if.then175 ], [ %next_line.0, %sw.bb165 ], [ %next_line.0, %do.body180 ], [ %cur.2, %if.end91 ], [ %next_line.0, %if.then215 ], [ %next_line.0, %sw.default ], !dbg !744
  %loc.6 = phi i32 [ %loc.0, %cleanup ], [ %loc.0, %sw.bb212 ], [ %loc.0, %if.then105 ], [ %call115, %if.then114 ], [ %add118, %if.then122 ], [ %add118, %if.else116 ], [ %loc.0, %if.else106 ], [ %loc.0, %if.then97 ], [ %loc.0, %if.then137 ], [ %loc.0, %if.else139 ], [ %loc.0, %sw.bb131 ], [ %loc.0, %if.else154 ], [ %loc.0, %if.then150 ], [ %loc.0, %if.then175 ], [ %loc.0, %sw.bb165 ], [ %loc.0, %do.body180 ], [ %loc.0, %if.end91 ], [ %loc.0, %if.then215 ], [ %loc.0, %sw.default ], !dbg !745
  %cur.3 = phi i8* [ %cur.1, %cleanup ], [ %cur.2, %sw.bb212 ], [ %cur.2, %if.then105 ], [ %cur.2, %if.then114 ], [ %cur.2, %if.then122 ], [ %cur.2, %if.else116 ], [ %cur.2, %if.else106 ], [ %cur.2, %if.then97 ], [ %cur.2, %if.then137 ], [ %cur.2, %if.else139 ], [ %cur.2, %sw.bb131 ], [ %cur.2, %if.else154 ], [ %cur.2, %if.then150 ], [ %cur.2, %if.then175 ], [ %cur.2, %sw.bb165 ], [ %cur.2, %do.body180 ], [ %cur.2, %if.end91 ], [ %cur.2, %if.then215 ], [ %cur.2, %sw.default ], !dbg !887
  call void @llvm.dbg.value(metadata i8* %cur.3, metadata !663, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %loc.6, metadata !673, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %next_line.2, metadata !665, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %col.4, metadata !672, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %c.6, metadata !667, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %flags.13, metadata !670, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %lines.4, metadata !671, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %c.6, metadata !669, metadata !DIExpression()), !dbg !718
  %incdec.ptr219 = getelementptr inbounds i8, i8* %cur.3, i64 1, !dbg !888
  call void @llvm.dbg.value(metadata i8* %incdec.ptr219, metadata !663, metadata !DIExpression()), !dbg !718
  %inc221 = add nsw i32 %col.4, 1, !dbg !889
  call void @llvm.dbg.value(metadata i32 %inc221, metadata !672, metadata !DIExpression()), !dbg !718
  br label %for.cond, !dbg !890, !llvm.loop !891

for.end:                                          ; preds = %for.cond
  %lines.0.lcssa = phi i32 [ %lines.0, %for.cond ], !dbg !718
  %flags.0.lcssa = phi i32 [ %flags.0, %for.cond ], !dbg !742
  %loc.0.lcssa = phi i32 [ %loc.0, %for.cond ], !dbg !745
  %cur.0.lcssa = phi i8* [ %cur.0, %for.cond ], !dbg !718
  call void @llvm.dbg.value(metadata i32 %lines.0.lcssa, metadata !671, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %flags.0.lcssa, metadata !670, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %loc.0.lcssa, metadata !673, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !663, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %lines.0.lcssa, metadata !671, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %flags.0.lcssa, metadata !670, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %loc.0.lcssa, metadata !673, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !663, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %lines.0.lcssa, metadata !671, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %flags.0.lcssa, metadata !670, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %loc.0.lcssa, metadata !673, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %cur.0.lcssa, metadata !663, metadata !DIExpression()), !dbg !718
  %and222 = and i32 %flags.0.lcssa, 8, !dbg !893
  %tobool223 = icmp eq i32 %and222, 0, !dbg !893
  br i1 %tobool223, label %if.end226, label %if.then224, !dbg !895

if.then224:                                       ; preds = %for.end
  %call225 = tail call zeroext i8 (%struct.cpp_reader*, i32, i32, i32, i8*, ...) @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 3, i32 %loc.0.lcssa, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)) #4, !dbg !896
  br label %if.end226, !dbg !896

if.end226:                                        ; preds = %for.end, %if.then224
  %43 = load i8, i8* %skipping228, align 2, !dbg !897
  %tobool229 = icmp eq i8 %43, 0, !dbg !898
  %cmp231 = icmp ne i8* %cur.0.lcssa, %7, !dbg !899
  %or.cond12 = and i1 %tobool229, %cmp231, !dbg !900
  br i1 %or.cond12, label %if.then233, label %if.end270, !dbg !900

if.then233:                                       ; preds = %if.end226
  %arrayidx234 = getelementptr inbounds i8, i8* %cur.0.lcssa, i64 -1, !dbg !901
  %44 = load i8, i8* %arrayidx234, align 1, !dbg !901
  %cmp236 = icmp eq i8 %44, 10, !dbg !902
  br i1 %cmp236, label %if.end265, label %if.then238, !dbg !903

if.then238:                                       ; preds = %if.then233
  %incdec.ptr239 = getelementptr inbounds i8, i8* %cur.0.lcssa, i64 1, !dbg !904
  call void @llvm.dbg.value(metadata i8* %incdec.ptr239, metadata !663, metadata !DIExpression()), !dbg !718
  %45 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !905
  call void @llvm.dbg.value(metadata %struct.line_maps* %45, metadata !709, metadata !DIExpression()), !dbg !906
  %maps244 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %45, i64 0, i32 0, !dbg !905
  %46 = load %struct.line_map*, %struct.line_map** %maps244, align 8, !dbg !905
  %used245 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %45, i64 0, i32 2, !dbg !905
  %47 = load i32, i32* %used245, align 4, !dbg !905
  %sub246 = add i32 %47, -1, !dbg !905
  %idxprom247 = zext i32 %sub246 to i64, !dbg !905
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !715, metadata !DIExpression()), !dbg !906
  %highest_line250 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %45, i64 0, i32 8, !dbg !905
  %48 = load i32, i32* %highest_line250, align 4, !dbg !905
  %start_location251 = getelementptr inbounds %struct.line_map, %struct.line_map* %46, i64 %idxprom247, i32 2, !dbg !905
  %49 = load i32, i32* %start_location251, align 4, !dbg !905
  %sub252 = sub i32 %48, %49, !dbg !905
  %column_bits253 = getelementptr inbounds %struct.line_map, %struct.line_map* %46, i64 %idxprom247, i32 6, !dbg !905
  %bf.load254 = load i8, i8* %column_bits253, align 2, !dbg !905
  %bf.cast255 = zext i8 %bf.load254 to i32, !dbg !905
  %shr256 = lshr i32 %sub252, %bf.cast255, !dbg !905
  %to_line257 = getelementptr inbounds %struct.line_map, %struct.line_map* %46, i64 %idxprom247, i32 1, !dbg !905
  %50 = load i32, i32* %to_line257, align 8, !dbg !905
  %add258 = add i32 %shr256, %50, !dbg !905
  call void @llvm.dbg.value(metadata i32 %add258, metadata !716, metadata !DIExpression()), !dbg !906
  %add260 = add i32 %add258, 1, !dbg !905
  %call261 = tail call i32 @linemap_line_start(%struct.line_maps* %45, i32 %add260, i32 0) #4, !dbg !905
  %inc264 = add i32 %lines.0.lcssa, 1, !dbg !907
  call void @llvm.dbg.value(metadata i32 %inc264, metadata !671, metadata !DIExpression()), !dbg !718
  br label %if.end265, !dbg !908

if.end265:                                        ; preds = %if.then233, %if.then238
  %lines.5 = phi i32 [ %inc264, %if.then238 ], [ %lines.0.lcssa, %if.then233 ], !dbg !718
  %cur.4 = phi i8* [ %incdec.ptr239, %if.then238 ], [ %cur.0.lcssa, %if.then233 ], !dbg !718
  call void @llvm.dbg.value(metadata i8* %cur.4, metadata !663, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %lines.5, metadata !671, metadata !DIExpression()), !dbg !718
  %51 = load void (i32, i8*, i64)*, void (i32, i8*, i64)** %print_lines266, align 8, !dbg !909
  %sub.ptr.lhs.cast267 = ptrtoint i8* %cur.4 to i64, !dbg !910
  %sub.ptr.sub269 = sub i64 %sub.ptr.lhs.cast267, %2, !dbg !910
  tail call void %51(i32 %lines.5, i8* %7, i64 %sub.ptr.sub269) #4, !dbg !911
  br label %if.end270, !dbg !912

if.end270:                                        ; preds = %if.end226, %if.end265
  tail call void @_cpp_pop_buffer(%struct.cpp_reader* %pfile) #4, !dbg !913
  %52 = load %struct.cpp_buffer*, %struct.cpp_buffer** %buffer1, align 8, !dbg !914
  %tobool272 = icmp eq %struct.cpp_buffer* %52, null, !dbg !916
  br i1 %tobool272, label %if.end274, label %restart.backedge, !dbg !917

if.end274:                                        ; preds = %if.end270
  ret void, !dbg !918
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #3

declare dso_local i32 @linemap_line_start(%struct.line_maps*, i32, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @_cpp_get_fresh_line(%struct.cpp_reader*) local_unnamed_addr #1

declare dso_local i32 @_cpp_handle_directive(%struct.cpp_reader*, i32) local_unnamed_addr #1

declare dso_local i32 @linemap_position_for_column(%struct.line_maps*, i32) local_unnamed_addr #1

declare dso_local zeroext i8 @cpp_error_with_line(%struct.cpp_reader*, i32, i32, i32, i8*, ...) local_unnamed_addr #1

declare dso_local void @_cpp_pop_buffer(%struct.cpp_reader*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, nameTableKind: None)
!1 = !DIFile(filename: "cpp_directives-only.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!40 = !{!41}
!41 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!42 = !{i32 2, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!46 = distinct !DISubprogram(name: "tolower", scope: !47, file: !47, line: 207, type: !48, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !51)
!47 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !50}
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !{!52}
!52 = !DILocalVariable(name: "__c", arg: 1, scope: !46, file: !47, line: 207, type: !50)
!53 = !DILocation(line: 0, scope: !46)
!54 = !DILocation(line: 209, column: 22, scope: !46)
!55 = !DILocation(line: 209, column: 39, scope: !46)
!56 = !DILocation(line: 209, column: 38, scope: !46)
!57 = !DILocation(line: 209, column: 37, scope: !46)
!58 = !DILocation(line: 209, column: 10, scope: !46)
!59 = !DILocation(line: 209, column: 3, scope: !46)
!60 = distinct !DISubprogram(name: "toupper", scope: !47, file: !47, line: 213, type: !48, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !61)
!61 = !{!62}
!62 = !DILocalVariable(name: "__c", arg: 1, scope: !60, file: !47, line: 213, type: !50)
!63 = !DILocation(line: 0, scope: !60)
!64 = !DILocation(line: 215, column: 22, scope: !60)
!65 = !DILocation(line: 215, column: 39, scope: !60)
!66 = !DILocation(line: 215, column: 38, scope: !60)
!67 = !DILocation(line: 215, column: 37, scope: !60)
!68 = !DILocation(line: 215, column: 10, scope: !60)
!69 = !DILocation(line: 215, column: 3, scope: !60)
!70 = distinct !DISubprogram(name: "_cpp_preprocess_dir_only", scope: !1, file: !1, line: 39, type: !71, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !659)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !645}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !4, line: 31, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !76, line: 322, size: 10432, elements: !77)
!76 = !DIFile(filename: "./internal.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!77 = !{!78, !163, !164, !181, !213, !214, !225, !226, !227, !336, !338, !342, !343, !344, !345, !346, !347, !348, !349, !350, !353, !354, !357, !358, !391, !392, !393, !396, !397, !398, !399, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !425, !426, !427, !430, !510, !536, !539, !540, !603, !610, !611, !618, !619, !620, !621, !624, !625, !638}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !75, file: !76, line: 325, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_buffer", file: !4, line: 32, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_buffer", file: !76, line: 249, size: 1536, elements: !82)
!82 = !{!83, !87, !88, !89, !90, !91, !98, !99, !100, !101, !103, !106, !107, !110, !111, !112, !113, !114, !115, !146}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !81, file: !76, line: 251, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "line_base", scope: !81, file: !76, line: 252, baseType: !84, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !81, file: !76, line: 253, baseType: !84, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !81, file: !76, line: 255, baseType: !84, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !81, file: !76, line: 256, baseType: !84, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !81, file: !76, line: 258, baseType: !92, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_line_note", file: !76, line: 235, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_line_note", file: !76, line: 236, size: 128, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !94, file: !76, line: 239, baseType: !84, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !76, line: 245, baseType: !5, size: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cur_note", scope: !81, file: !76, line: 259, baseType: !5, size: 32, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "notes_used", scope: !81, file: !76, line: 260, baseType: !5, size: 32, offset: 416)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "notes_cap", scope: !81, file: !76, line: 261, baseType: !5, size: 32, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !81, file: !76, line: 263, baseType: !102, size: 64, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !81, file: !76, line: 267, baseType: !104, size: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_file", file: !4, line: 42, flags: DIFlagFwdDecl)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !81, file: !76, line: 271, baseType: !84, size: 64, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "if_stack", scope: !81, file: !76, line: 275, baseType: !108, size: 64, offset: 704)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "if_stack", file: !76, line: 275, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "need_line", scope: !81, file: !76, line: 278, baseType: !86, size: 8, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "warned_cplusplus_comments", scope: !81, file: !76, line: 284, baseType: !5, size: 1, offset: 776, flags: DIFlagBitField, extraData: i64 776)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "from_stage3", scope: !81, file: !76, line: 289, baseType: !5, size: 1, offset: 777, flags: DIFlagBitField, extraData: i64 776)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "return_at_eof", scope: !81, file: !76, line: 294, baseType: !5, size: 1, offset: 778, flags: DIFlagBitField, extraData: i64 776)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !81, file: !76, line: 298, baseType: !86, size: 8, offset: 784)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !81, file: !76, line: 302, baseType: !116, size: 512, offset: 832)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !4, line: 523, size: 512, elements: !117)
!117 = !{!118, !120, !123, !124, !125, !126, !127, !131, !137, !143}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !4, line: 526, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !4, line: 529, baseType: !121, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !116, file: !4, line: 530, baseType: !5, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !116, file: !4, line: 534, baseType: !86, size: 8, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !116, file: !4, line: 537, baseType: !86, size: 8, offset: 168)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !116, file: !4, line: 541, baseType: !121, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !116, file: !4, line: 545, baseType: !128, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !116, file: !4, line: 551, baseType: !132, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!121, !129, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !4, line: 39, baseType: !116)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !116, file: !4, line: 555, baseType: !138, size: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !139, line: 47, baseType: !140)
!139 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !141, line: 148, baseType: !142)
!141 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!142 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !116, file: !4, line: 556, baseType: !144, size: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !139, line: 59, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !141, line: 145, baseType: !142)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "input_cset_desc", scope: !81, file: !76, line: 306, baseType: !147, size: 192, offset: 1344)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cset_converter", file: !76, line: 47, size: 192, elements: !148)
!148 = !{!149, !161, !162}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !147, file: !76, line: 49, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "convert_f", file: !76, line: 45, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!86, !154, !84, !157, !159}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !155, line: 29, baseType: !156)
!155 = !DIFile(filename: "/usr/include/iconv.h", directory: "")
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 46, baseType: !142)
!158 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_strbuf", file: !76, line: 43, flags: DIFlagFwdDecl)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !147, file: !76, line: 50, baseType: !154, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !147, file: !76, line: 51, baseType: !50, size: 32, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "overlaid_buffer", scope: !75, file: !76, line: 328, baseType: !79, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !75, file: !76, line: 331, baseType: !165, size: 160, offset: 128)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lexer_state", file: !76, line: 177, size: 160, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "in_directive", scope: !165, file: !76, line: 180, baseType: !86, size: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "directive_wants_padding", scope: !165, file: !76, line: 185, baseType: !86, size: 8, offset: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "skipping", scope: !165, file: !76, line: 188, baseType: !86, size: 8, offset: 16)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "angled_headers", scope: !165, file: !76, line: 191, baseType: !86, size: 8, offset: 24)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "in_expression", scope: !165, file: !76, line: 194, baseType: !86, size: 8, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "save_comments", scope: !165, file: !76, line: 198, baseType: !86, size: 8, offset: 40)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "va_args_ok", scope: !165, file: !76, line: 201, baseType: !86, size: 8, offset: 48)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned_ok", scope: !165, file: !76, line: 204, baseType: !86, size: 8, offset: 56)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_expansion", scope: !165, file: !76, line: 207, baseType: !86, size: 8, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "parsing_args", scope: !165, file: !76, line: 210, baseType: !86, size: 8, offset: 72)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "discarding_output", scope: !165, file: !76, line: 214, baseType: !86, size: 8, offset: 80)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "skip_eval", scope: !165, file: !76, line: 217, baseType: !5, size: 32, offset: 96)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "in_deferred_pragma", scope: !165, file: !76, line: 220, baseType: !86, size: 8, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pragma_allow_expansion", scope: !165, file: !76, line: 223, baseType: !86, size: 8, offset: 136)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "line_table", scope: !75, file: !76, line: 334, baseType: !182, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !184, line: 74, size: 448, elements: !185)
!184 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!185 = !{!186, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !183, file: !184, line: 75, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !184, line: 61, size: 192, elements: !189)
!189 = !{!190, !191, !193, !195, !196, !197, !198}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !188, file: !184, line: 62, baseType: !129, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !188, file: !184, line: 63, baseType: !192, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !184, line: 39, baseType: !5)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !188, file: !184, line: 64, baseType: !194, size: 32, offset: 96)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !184, line: 44, baseType: !5)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !188, file: !184, line: 65, baseType: !50, size: 32, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !188, file: !184, line: 66, baseType: !5, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !188, file: !184, line: 68, baseType: !86, size: 8, offset: 168)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !188, file: !184, line: 70, baseType: !5, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !183, file: !184, line: 76, baseType: !5, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !183, file: !184, line: 77, baseType: !5, size: 32, offset: 96)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !183, file: !184, line: 79, baseType: !5, size: 32, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !183, file: !184, line: 84, baseType: !50, size: 32, offset: 160)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !183, file: !184, line: 87, baseType: !5, size: 32, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !183, file: !184, line: 90, baseType: !86, size: 8, offset: 224)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !183, file: !184, line: 93, baseType: !194, size: 32, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !183, file: !184, line: 96, baseType: !194, size: 32, offset: 288)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !183, file: !184, line: 100, baseType: !5, size: 32, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !183, file: !184, line: 104, baseType: !209, size: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !184, line: 47, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!156, !156, !157}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "directive_line", scope: !75, file: !76, line: 337, baseType: !194, size: 32, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "a_buff", scope: !75, file: !76, line: 340, baseType: !215, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_buff", file: !76, line: 99, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_buff", file: !76, line: 100, size: 256, elements: !218)
!218 = !{!219, !221, !223, !224}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !217, file: !76, line: 102, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !217, file: !76, line: 103, baseType: !222, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !217, file: !76, line: 103, baseType: !222, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !217, file: !76, line: 103, baseType: !222, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "u_buff", scope: !75, file: !76, line: 341, baseType: !215, size: 64, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffs", scope: !75, file: !76, line: 342, baseType: !215, size: 64, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "base_context", scope: !75, file: !76, line: 345, baseType: !228, size: 448, offset: 640)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_context", file: !76, line: 142, size: 448, elements: !229)
!229 = !{!230, !233, !234, !333, !334, !335}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !76, line: 145, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_context", file: !76, line: 141, baseType: !228)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !228, file: !76, line: 145, baseType: !231, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !228, file: !76, line: 164, baseType: !235, size: 128, offset: 128)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !228, file: !76, line: 147, size: 128, elements: !236)
!236 = !{!237, !328}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "iso", scope: !235, file: !76, line: 156, baseType: !238, size: 128)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !76, line: 152, size: 128, elements: !239)
!239 = !{!240, !327}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !238, file: !76, line: 154, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "utoken", file: !76, line: 121, size: 64, elements: !242)
!242 = !{!243, !325}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !241, file: !76, line: 123, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !4, line: 34, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !4, line: 212, size: 192, elements: !248)
!248 = !{!249, !250, !251, !252}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !247, file: !4, line: 213, baseType: !194, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !247, file: !4, line: 214, baseType: !5, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !4, line: 215, baseType: !41, size: 16, offset: 48)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !247, file: !4, line: 237, baseType: !253, size: 128, offset: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_token_u", file: !4, line: 217, size: 128, elements: !254)
!254 = !{!255, !313, !314, !319, !323, !324}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !253, file: !4, line: 220, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_identifier", file: !4, line: 201, size: 64, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !256, file: !4, line: 207, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_hashnode", file: !4, line: 36, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_hashnode", file: !4, line: 644, size: 256, elements: !262)
!262 = !{!263, !270, !271, !272, !273, !274, !275}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !261, file: !4, line: 645, baseType: !264, size: 128)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !265, line: 31, size: 128, elements: !266)
!265 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!266 = !{!267, !268, !269}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !264, file: !265, line: 32, baseType: !84, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !264, file: !265, line: 33, baseType: !5, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !264, file: !265, line: 34, baseType: !5, size: 32, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !261, file: !4, line: 646, baseType: !5, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !261, file: !4, line: 647, baseType: !5, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !261, file: !4, line: 650, baseType: !86, size: 8, offset: 136)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !261, file: !4, line: 651, baseType: !5, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !4, line: 652, baseType: !5, size: 10, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !261, file: !4, line: 654, baseType: !276, size: 64, offset: 192)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_cpp_hashnode_value", file: !4, line: 633, size: 64, elements: !277)
!277 = !{!278, !301, !311, !312}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !276, file: !4, line: 635, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_macro", file: !4, line: 37, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro", file: !282, line: 36, size: 256, elements: !283)
!282 = !DIFile(filename: "./cpp-id-data.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!283 = !{!284, !286, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !281, file: !282, line: 42, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !281, file: !282, line: 51, baseType: !287, size: 64, offset: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_macro_u", file: !282, line: 47, size: 64, elements: !288)
!288 = !{!289, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tokens", scope: !287, file: !282, line: 49, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !287, file: !282, line: 50, baseType: !84, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !281, file: !282, line: 54, baseType: !194, size: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !281, file: !282, line: 57, baseType: !5, size: 32, offset: 160)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "paramc", scope: !281, file: !282, line: 60, baseType: !41, size: 16, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "fun_like", scope: !281, file: !282, line: 63, baseType: !5, size: 1, offset: 208, flags: DIFlagBitField, extraData: i64 208)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "variadic", scope: !281, file: !282, line: 66, baseType: !5, size: 1, offset: 209, flags: DIFlagBitField, extraData: i64 208)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "syshdr", scope: !281, file: !282, line: 69, baseType: !5, size: 1, offset: 210, flags: DIFlagBitField, extraData: i64 208)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !281, file: !282, line: 72, baseType: !5, size: 1, offset: 211, flags: DIFlagBitField, extraData: i64 208)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !281, file: !282, line: 75, baseType: !5, size: 1, offset: 212, flags: DIFlagBitField, extraData: i64 208)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "extra_tokens", scope: !281, file: !282, line: 80, baseType: !5, size: 1, offset: 213, flags: DIFlagBitField, extraData: i64 208)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "answers", scope: !276, file: !4, line: 637, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !282, line: 28, size: 320, elements: !304)
!304 = !{!305, !306, !307}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !282, line: 29, baseType: !302, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !303, file: !282, line: 30, baseType: !5, size: 32, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !303, file: !282, line: 31, baseType: !308, size: 192, offset: 128)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 192, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 1)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !276, file: !4, line: 639, baseType: !3, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !276, file: !4, line: 641, baseType: !41, size: 16)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !253, file: !4, line: 223, baseType: !290, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !253, file: !4, line: 226, baseType: !315, size: 128)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !4, line: 162, size: 128, elements: !316)
!316 = !{!317, !318}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !315, file: !4, line: 163, baseType: !5, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !315, file: !4, line: 164, baseType: !84, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !253, file: !4, line: 229, baseType: !320, size: 32)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !4, line: 195, size: 32, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !320, file: !4, line: 197, baseType: !5, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !253, file: !4, line: 233, baseType: !5, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !253, file: !4, line: 236, baseType: !5, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ptoken", scope: !241, file: !76, line: 124, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !238, file: !76, line: 155, baseType: !241, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "trad", scope: !235, file: !76, line: 163, baseType: !329, size: 128)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !76, line: 159, size: 128, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !329, file: !76, line: 161, baseType: !84, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !329, file: !76, line: 162, baseType: !84, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !228, file: !76, line: 168, baseType: !215, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !228, file: !76, line: 171, baseType: !259, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "direct_p", scope: !228, file: !76, line: 174, baseType: !86, size: 8, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !75, file: !76, line: 346, baseType: !337, size: 64, offset: 1088)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !75, file: !76, line: 349, baseType: !339, size: 64, offset: 1152)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "directive", file: !76, line: 40, flags: DIFlagFwdDecl)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "directive_result", scope: !75, file: !76, line: 352, baseType: !246, size: 192, offset: 1216)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "invocation_location", scope: !75, file: !76, line: 356, baseType: !194, size: 32, offset: 1408)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "set_invocation_location", scope: !75, file: !76, line: 360, baseType: !86, size: 8, offset: 1440)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "quote_include", scope: !75, file: !76, line: 363, baseType: !119, size: 64, offset: 1472)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "bracket_include", scope: !75, file: !76, line: 364, baseType: !119, size: 64, offset: 1536)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "no_search_path", scope: !75, file: !76, line: 365, baseType: !116, size: 512, offset: 1600)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "all_files", scope: !75, file: !76, line: 368, baseType: !104, size: 64, offset: 2112)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "main_file", scope: !75, file: !76, line: 370, baseType: !104, size: 64, offset: 2176)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash", scope: !75, file: !76, line: 373, baseType: !351, size: 64, offset: 2240)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !76, line: 373, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash", scope: !75, file: !76, line: 374, baseType: !351, size: 64, offset: 2304)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash_entries", scope: !75, file: !76, line: 375, baseType: !355, size: 64, offset: 2368)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_hash_entry_pool", file: !76, line: 375, flags: DIFlagFwdDecl)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_hash", scope: !75, file: !76, line: 378, baseType: !351, size: 64, offset: 2432)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_ob", scope: !75, file: !76, line: 379, baseType: !359, size: 704, offset: 2496)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !360, line: 164, size: 704, elements: !361)
!360 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!361 = !{!362, !364, !374, !375, !376, !377, !378, !379, !383, !387, !388, !389, !390}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !359, file: !360, line: 166, baseType: !363, size: 64)
!363 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !359, file: !360, line: 167, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !360, line: 157, size: 192, elements: !367)
!367 = !{!368, !369, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !366, file: !360, line: 159, baseType: !121, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !366, file: !360, line: 160, baseType: !365, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !366, file: !360, line: 161, baseType: !371, size: 32, offset: 128)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 32, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 4)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !359, file: !360, line: 168, baseType: !121, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !359, file: !360, line: 169, baseType: !121, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !359, file: !360, line: 170, baseType: !121, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !359, file: !360, line: 171, baseType: !363, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !359, file: !360, line: 172, baseType: !50, size: 32, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !359, file: !360, line: 176, baseType: !380, size: 64, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!365, !156, !363}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !359, file: !360, line: 177, baseType: !384, size: 64, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !156, !365}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !359, file: !360, line: 178, baseType: !156, size: 64, offset: 576)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !359, file: !360, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !359, file: !360, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !359, file: !360, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "quote_ignores_source_dir", scope: !75, file: !76, line: 383, baseType: !86, size: 8, offset: 3200)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "seen_once_only", scope: !75, file: !76, line: 387, baseType: !86, size: 8, offset: 3208)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mi_cmacro", scope: !75, file: !76, line: 390, baseType: !394, size: 64, offset: 3264)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mi_ind_cmacro", scope: !75, file: !76, line: 391, baseType: !394, size: 64, offset: 3328)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mi_valid", scope: !75, file: !76, line: 392, baseType: !86, size: 8, offset: 3392)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "cur_token", scope: !75, file: !76, line: 395, baseType: !290, size: 64, offset: 3456)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "base_run", scope: !75, file: !76, line: 396, baseType: !400, size: 256, offset: 3520)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "tokenrun", file: !76, line: 128, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenrun", file: !76, line: 129, size: 256, elements: !402)
!402 = !{!403, !405, !406, !407}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !76, line: 131, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !401, file: !76, line: 131, baseType: !404, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !401, file: !76, line: 132, baseType: !290, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !401, file: !76, line: 132, baseType: !290, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cur_run", scope: !75, file: !76, line: 396, baseType: !404, size: 64, offset: 3776)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lookaheads", scope: !75, file: !76, line: 397, baseType: !5, size: 32, offset: 3840)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "keep_tokens", scope: !75, file: !76, line: 400, baseType: !5, size: 32, offset: 3872)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer", scope: !75, file: !76, line: 403, baseType: !222, size: 64, offset: 3904)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer_len", scope: !75, file: !76, line: 404, baseType: !5, size: 32, offset: 3968)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_cset_desc", scope: !75, file: !76, line: 408, baseType: !147, size: 192, offset: 4032)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_cset_desc", scope: !75, file: !76, line: 412, baseType: !147, size: 192, offset: 4224)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "char16_cset_desc", scope: !75, file: !76, line: 416, baseType: !147, size: 192, offset: 4416)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "char32_cset_desc", scope: !75, file: !76, line: 420, baseType: !147, size: 192, offset: 4608)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "wide_cset_desc", scope: !75, file: !76, line: 424, baseType: !147, size: 192, offset: 4800)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !75, file: !76, line: 427, baseType: !84, size: 64, offset: 4992)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !75, file: !76, line: 428, baseType: !84, size: 64, offset: 5056)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_paste", scope: !75, file: !76, line: 431, baseType: !246, size: 192, offset: 5120)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !75, file: !76, line: 432, baseType: !246, size: 192, offset: 5312)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !75, file: !76, line: 435, baseType: !423, size: 64, offset: 5504)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !4, line: 685, flags: DIFlagFwdDecl)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "hash_ob", scope: !75, file: !76, line: 439, baseType: !359, size: 704, offset: 5568)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_ob", scope: !75, file: !76, line: 443, baseType: !359, size: 704, offset: 6272)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pragmas", scope: !75, file: !76, line: 447, baseType: !428, size: 64, offset: 6976)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "pragma_entry", file: !76, line: 447, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !75, file: !76, line: 450, baseType: !431, size: 1088, offset: 7040)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !4, line: 472, size: 1088, elements: !432)
!432 = !{!433, !437, !443, !447, !451, !455, !456, !463, !467, !471, !475, !481, !485, !500, !501, !502, !506}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !431, file: !4, line: 475, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !73, !244, !50}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !431, file: !4, line: 481, baseType: !438, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !73, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !431, file: !4, line: 483, baseType: !444, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !73, !129}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !431, file: !4, line: 484, baseType: !448, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !73, !5, !84, !129, !50, !326}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !431, file: !4, line: 486, baseType: !452, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !73, !5, !259}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !431, file: !4, line: 487, baseType: !452, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !431, file: !4, line: 488, baseType: !457, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !73, !5, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !4, line: 35, baseType: !315)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !431, file: !4, line: 489, baseType: !464, size: 64, offset: 448)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !73, !5}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !431, file: !4, line: 490, baseType: !468, size: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!50, !73, !129, !50}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !431, file: !4, line: 491, baseType: !472, size: 64, offset: 576)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !73, !129, !50, !129}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !431, file: !4, line: 492, baseType: !476, size: 64, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !4, line: 469, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!129, !73, !129, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !431, file: !4, line: 496, baseType: !482, size: 64, offset: 704)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!259, !73, !244}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !431, file: !4, line: 500, baseType: !486, size: 64, offset: 768)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!86, !73, !50, !194, !5, !129, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !491, line: 14, baseType: !492)
!491 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 216, baseType: !493)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 192, elements: !309)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 216, size: 192, elements: !495)
!495 = !{!496, !497, !498, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !494, file: !1, line: 216, baseType: !5, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !494, file: !1, line: 216, baseType: !5, size: 32, offset: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !494, file: !1, line: 216, baseType: !156, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !494, file: !1, line: 216, baseType: !156, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !431, file: !4, line: 506, baseType: !452, size: 64, offset: 832)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !431, file: !4, line: 507, baseType: !452, size: 64, offset: 896)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !431, file: !4, line: 510, baseType: !503, size: 64, offset: 960)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !73}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !431, file: !4, line: 513, baseType: !507, size: 64, offset: 1024)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !73, !194, !259}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !75, file: !76, line: 453, baseType: !511, size: 64, offset: 8128)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht", file: !265, line: 46, size: 1152, elements: !513)
!513 = !{!514, !515, !519, !525, !529, !530, !531, !533, !534, !535}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !512, file: !265, line: 49, baseType: !359, size: 704)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !512, file: !265, line: 51, baseType: !516, size: 64, offset: 704)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashnode", file: !265, line: 41, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_node", scope: !512, file: !265, line: 53, baseType: !520, size: 64, offset: 768)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!517, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !265, line: 40, baseType: !512)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_subobject", scope: !512, file: !265, line: 56, baseType: !526, size: 64, offset: 832)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!156, !157}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !512, file: !265, line: 58, baseType: !5, size: 32, offset: 896)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !512, file: !265, line: 59, baseType: !5, size: 32, offset: 928)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !512, file: !265, line: 62, baseType: !532, size: 64, offset: 960)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !512, file: !265, line: 65, baseType: !5, size: 32, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !512, file: !265, line: 66, baseType: !5, size: 32, offset: 1056)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !512, file: !265, line: 69, baseType: !86, size: 8, offset: 1088)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "op_stack", scope: !75, file: !76, line: 456, baseType: !537, size: 64, offset: 8192)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !76, line: 42, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "op_limit", scope: !75, file: !76, line: 456, baseType: !537, size: 64, offset: 8256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !75, file: !76, line: 459, baseType: !541, size: 1024, offset: 8320)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !4, line: 279, size: 1024, elements: !542)
!542 = !{!543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !541, file: !4, line: 282, baseType: !5, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !541, file: !4, line: 285, baseType: !17, size: 32, offset: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !541, file: !4, line: 288, baseType: !86, size: 8, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !541, file: !4, line: 291, baseType: !86, size: 8, offset: 72)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !541, file: !4, line: 296, baseType: !86, size: 8, offset: 80)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !541, file: !4, line: 299, baseType: !86, size: 8, offset: 88)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !541, file: !4, line: 303, baseType: !86, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !541, file: !4, line: 306, baseType: !86, size: 8, offset: 104)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !541, file: !4, line: 309, baseType: !86, size: 8, offset: 112)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !541, file: !4, line: 312, baseType: !86, size: 8, offset: 120)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !541, file: !4, line: 315, baseType: !86, size: 8, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !541, file: !4, line: 318, baseType: !86, size: 8, offset: 136)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !541, file: !4, line: 321, baseType: !86, size: 8, offset: 144)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !541, file: !4, line: 324, baseType: !86, size: 8, offset: 152)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !541, file: !4, line: 328, baseType: !86, size: 8, offset: 160)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !541, file: !4, line: 331, baseType: !86, size: 8, offset: 168)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !541, file: !4, line: 334, baseType: !86, size: 8, offset: 176)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !541, file: !4, line: 338, baseType: !86, size: 8, offset: 184)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !541, file: !4, line: 341, baseType: !86, size: 8, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !541, file: !4, line: 344, baseType: !86, size: 8, offset: 200)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !541, file: !4, line: 348, baseType: !86, size: 8, offset: 208)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !541, file: !4, line: 352, baseType: !86, size: 8, offset: 216)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !541, file: !4, line: 356, baseType: !86, size: 8, offset: 224)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !541, file: !4, line: 360, baseType: !86, size: 8, offset: 232)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !541, file: !4, line: 363, baseType: !86, size: 8, offset: 240)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !541, file: !4, line: 366, baseType: !86, size: 8, offset: 248)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !541, file: !4, line: 370, baseType: !86, size: 8, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !541, file: !4, line: 373, baseType: !86, size: 8, offset: 264)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !541, file: !4, line: 376, baseType: !86, size: 8, offset: 272)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !541, file: !4, line: 379, baseType: !86, size: 8, offset: 280)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !541, file: !4, line: 382, baseType: !86, size: 8, offset: 288)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !541, file: !4, line: 385, baseType: !86, size: 8, offset: 296)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !541, file: !4, line: 389, baseType: !86, size: 8, offset: 304)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !541, file: !4, line: 392, baseType: !86, size: 8, offset: 312)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !541, file: !4, line: 395, baseType: !86, size: 8, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !541, file: !4, line: 398, baseType: !86, size: 8, offset: 328)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !541, file: !4, line: 401, baseType: !86, size: 8, offset: 336)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !541, file: !4, line: 404, baseType: !129, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !541, file: !4, line: 407, baseType: !129, size: 64, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !541, file: !4, line: 410, baseType: !129, size: 64, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !541, file: !4, line: 414, baseType: !29, size: 32, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !541, file: !4, line: 417, baseType: !86, size: 8, offset: 608)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !541, file: !4, line: 420, baseType: !86, size: 8, offset: 616)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !541, file: !4, line: 441, baseType: !587, size: 64, offset: 640)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !541, file: !4, line: 423, size: 64, elements: !588)
!588 = !{!589, !590, !591, !592, !593}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !587, file: !4, line: 426, baseType: !35, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !587, file: !4, line: 429, baseType: !86, size: 8, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !587, file: !4, line: 433, baseType: !86, size: 8, offset: 40)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !587, file: !4, line: 436, baseType: !86, size: 8, offset: 48)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !587, file: !4, line: 440, baseType: !86, size: 8, offset: 56)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !541, file: !4, line: 447, baseType: !157, size: 64, offset: 704)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !541, file: !4, line: 447, baseType: !157, size: 64, offset: 768)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !541, file: !4, line: 447, baseType: !157, size: 64, offset: 832)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !541, file: !4, line: 447, baseType: !157, size: 64, offset: 896)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !541, file: !4, line: 450, baseType: !86, size: 8, offset: 960)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !541, file: !4, line: 450, baseType: !86, size: 8, offset: 968)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !541, file: !4, line: 454, baseType: !86, size: 8, offset: 976)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !541, file: !4, line: 457, baseType: !86, size: 8, offset: 984)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !541, file: !4, line: 460, baseType: !86, size: 8, offset: 992)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "spec_nodes", scope: !75, file: !76, line: 463, baseType: !604, size: 256, offset: 9344)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spec_nodes", file: !76, line: 227, size: 256, elements: !605)
!605 = !{!606, !607, !608, !609}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "n_defined", scope: !604, file: !76, line: 229, baseType: !259, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "n_true", scope: !604, file: !76, line: 230, baseType: !259, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "n_false", scope: !604, file: !76, line: 231, baseType: !259, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "n__VA_ARGS__", scope: !604, file: !76, line: 232, baseType: !259, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "our_hashtable", scope: !75, file: !76, line: 466, baseType: !86, size: 8, offset: 9600)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !75, file: !76, line: 475, baseType: !612, size: 256, offset: 9664)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !75, file: !76, line: 469, size: 256, elements: !613)
!613 = !{!614, !615, !616, !617}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !612, file: !76, line: 471, baseType: !222, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !612, file: !76, line: 472, baseType: !222, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !612, file: !76, line: 473, baseType: !222, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !612, file: !76, line: 474, baseType: !194, size: 32, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cur", scope: !75, file: !76, line: 478, baseType: !84, size: 64, offset: 9920)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "saved_rlimit", scope: !75, file: !76, line: 478, baseType: !84, size: 64, offset: 9984)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "saved_line_base", scope: !75, file: !76, line: 478, baseType: !84, size: 64, offset: 10048)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "savedstate", scope: !75, file: !76, line: 482, baseType: !622, size: 64, offset: 10112)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_savedstate", file: !76, line: 482, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !75, file: !76, line: 485, baseType: !5, size: 32, offset: 10176)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "comments", scope: !75, file: !76, line: 488, baseType: !626, size: 128, offset: 10240)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment_table", file: !4, line: 901, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 891, size: 128, elements: !628)
!628 = !{!629, !636, !637}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !627, file: !4, line: 894, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment", file: !4, line: 887, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 880, size: 128, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !632, file: !4, line: 883, baseType: !121, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sloc", scope: !632, file: !4, line: 886, baseType: !194, size: 32, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !627, file: !4, line: 897, baseType: !50, size: 32, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !627, file: !4, line: 900, baseType: !50, size: 32, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pushed_macros", scope: !75, file: !76, line: 491, baseType: !639, size: 64, offset: 10368)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_pragma_macro", file: !76, line: 310, size: 192, elements: !641)
!641 = !{!642, !643, !644}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !640, file: !76, line: 312, baseType: !639, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !640, file: !76, line: 314, baseType: !121, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !640, file: !76, line: 316, baseType: !279, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_dir_only_callbacks", file: !76, line: 612, size: 128, elements: !648)
!648 = !{!649, !655}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "print_lines", scope: !647, file: !76, line: 615, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !50, !653, !157}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_print_line", scope: !647, file: !76, line: 616, baseType: !656, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !194}
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !669, !670, !671, !672, !673, !674, !680, !686, !687, !688, !693, !699, !700, !703, !705, !707, !708, !709, !715, !716, !717}
!660 = !DILocalVariable(name: "pfile", arg: 1, scope: !70, file: !1, line: 39, type: !73)
!661 = !DILocalVariable(name: "cb", arg: 2, scope: !70, file: !1, line: 40, type: !645)
!662 = !DILocalVariable(name: "buffer", scope: !70, file: !1, line: 42, type: !102)
!663 = !DILocalVariable(name: "cur", scope: !70, file: !1, line: 43, type: !84)
!664 = !DILocalVariable(name: "base", scope: !70, file: !1, line: 43, type: !84)
!665 = !DILocalVariable(name: "next_line", scope: !70, file: !1, line: 43, type: !84)
!666 = !DILocalVariable(name: "rlimit", scope: !70, file: !1, line: 43, type: !84)
!667 = !DILocalVariable(name: "c", scope: !70, file: !1, line: 44, type: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "cppchar_t", file: !4, line: 258, baseType: !5)
!669 = !DILocalVariable(name: "last_c", scope: !70, file: !1, line: 44, type: !668)
!670 = !DILocalVariable(name: "flags", scope: !70, file: !1, line: 45, type: !5)
!671 = !DILocalVariable(name: "lines", scope: !70, file: !1, line: 46, type: !192)
!672 = !DILocalVariable(name: "col", scope: !70, file: !1, line: 47, type: !50)
!673 = !DILocalVariable(name: "loc", scope: !70, file: !1, line: 48, type: !194)
!674 = !DILocalVariable(name: "tmp", scope: !675, file: !1, line: 72, type: !84)
!675 = distinct !DILexicalBlock(scope: !676, file: !1, line: 71, column: 2)
!676 = distinct !DILexicalBlock(scope: !677, file: !1, line: 70, column: 11)
!677 = distinct !DILexicalBlock(scope: !678, file: !1, line: 68, column: 5)
!678 = distinct !DILexicalBlock(scope: !679, file: !1, line: 67, column: 3)
!679 = distinct !DILexicalBlock(scope: !70, file: !1, line: 67, column: 3)
!680 = !DILocalVariable(name: "line_table", scope: !681, file: !1, line: 80, type: !684)
!681 = distinct !DILexicalBlock(scope: !682, file: !1, line: 80, column: 8)
!682 = distinct !DILexicalBlock(scope: !683, file: !1, line: 79, column: 6)
!683 = distinct !DILexicalBlock(scope: !675, file: !1, line: 78, column: 8)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!686 = !DILocalVariable(name: "map", scope: !681, file: !1, line: 80, type: !441)
!687 = !DILocalVariable(name: "line", scope: !681, file: !1, line: 80, type: !192)
!688 = !DILocalVariable(name: "line_table", scope: !689, file: !1, line: 93, type: !182)
!689 = distinct !DILexicalBlock(scope: !690, file: !1, line: 92, column: 4)
!690 = distinct !DILexicalBlock(scope: !691, file: !1, line: 91, column: 8)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 90, column: 2)
!692 = distinct !DILexicalBlock(scope: !677, file: !1, line: 89, column: 11)
!693 = !DILocalVariable(name: "to_column", scope: !694, file: !1, line: 146, type: !5)
!694 = distinct !DILexicalBlock(scope: !695, file: !1, line: 146, column: 6)
!695 = distinct !DILexicalBlock(scope: !696, file: !1, line: 144, column: 13)
!696 = distinct !DILexicalBlock(scope: !697, file: !1, line: 142, column: 13)
!697 = distinct !DILexicalBlock(scope: !698, file: !1, line: 137, column: 8)
!698 = distinct !DILexicalBlock(scope: !677, file: !1, line: 135, column: 2)
!699 = !DILocalVariable(name: "set", scope: !694, file: !1, line: 146, type: !182)
!700 = !DILocalVariable(name: "r", scope: !701, file: !1, line: 146, type: !194)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 146, column: 6)
!702 = distinct !DILexicalBlock(scope: !694, file: !1, line: 146, column: 6)
!703 = !DILocalVariable(name: "state", scope: !704, file: !1, line: 167, type: !5)
!704 = distinct !DILexicalBlock(scope: !698, file: !1, line: 166, column: 4)
!705 = !DILocalVariable(name: "line_table", scope: !706, file: !1, line: 196, type: !684)
!706 = distinct !DILexicalBlock(scope: !698, file: !1, line: 196, column: 4)
!707 = !DILocalVariable(name: "map", scope: !706, file: !1, line: 196, type: !441)
!708 = !DILocalVariable(name: "line", scope: !706, file: !1, line: 196, type: !192)
!709 = !DILocalVariable(name: "line_table", scope: !710, file: !1, line: 232, type: !684)
!710 = distinct !DILexicalBlock(scope: !711, file: !1, line: 232, column: 4)
!711 = distinct !DILexicalBlock(scope: !712, file: !1, line: 230, column: 2)
!712 = distinct !DILexicalBlock(scope: !713, file: !1, line: 229, column: 11)
!713 = distinct !DILexicalBlock(scope: !714, file: !1, line: 226, column: 5)
!714 = distinct !DILexicalBlock(scope: !70, file: !1, line: 225, column: 7)
!715 = !DILocalVariable(name: "map", scope: !710, file: !1, line: 232, type: !441)
!716 = !DILocalVariable(name: "line", scope: !710, file: !1, line: 232, type: !192)
!717 = !DILabel(scope: !70, name: "restart", file: !1, line: 50)
!718 = !DILocation(line: 0, scope: !70)
!719 = !DILocation(line: 0, scope: !691)
!720 = !DILocation(line: 0, scope: !714)
!721 = !DILocation(line: 0, scope: !713)
!722 = !DILocation(line: 0, scope: !723)
!723 = distinct !DILexicalBlock(scope: !689, file: !1, line: 116, column: 10)
!724 = !DILocation(line: 48, column: 3, scope: !70)
!725 = !DILocation(line: 50, column: 2, scope: !70)
!726 = !DILocation(line: 52, column: 19, scope: !70)
!727 = !DILocation(line: 53, column: 30, scope: !70)
!728 = !DILocation(line: 53, column: 41, scope: !70)
!729 = !DILocation(line: 53, column: 11, scope: !70)
!730 = !DILocation(line: 53, column: 20, scope: !70)
!731 = !DILocation(line: 54, column: 45, scope: !70)
!732 = !DILocation(line: 54, column: 25, scope: !70)
!733 = !DILocation(line: 54, column: 35, scope: !70)
!734 = !DILocation(line: 54, column: 15, scope: !70)
!735 = !DILocation(line: 55, column: 11, scope: !70)
!736 = !DILocation(line: 55, column: 21, scope: !70)
!737 = !DILocation(line: 58, column: 16, scope: !70)
!738 = !DILocation(line: 58, column: 28, scope: !70)
!739 = !DILocation(line: 61, column: 36, scope: !70)
!740 = !DILocation(line: 62, column: 20, scope: !70)
!741 = !DILocation(line: 67, column: 8, scope: !679)
!742 = !DILocation(line: 63, column: 9, scope: !70)
!743 = !DILocation(line: 0, scope: !679)
!744 = !DILocation(line: 61, column: 13, scope: !70)
!745 = !DILocation(line: 58, column: 7, scope: !70)
!746 = !DILocation(line: 67, column: 37, scope: !678)
!747 = !DILocation(line: 67, column: 3, scope: !679)
!748 = !DILocation(line: 70, column: 11, scope: !676)
!749 = !DILocation(line: 70, column: 11, scope: !677)
!750 = !DILocation(line: 0, scope: !675)
!751 = !DILocation(line: 74, column: 4, scope: !675)
!752 = !DILocation(line: 74, column: 11, scope: !675)
!753 = !DILocation(line: 74, column: 36, scope: !675)
!754 = !DILocation(line: 74, column: 29, scope: !675)
!755 = distinct !{!755, !751, !756}
!756 = !DILocation(line: 75, column: 9, scope: !675)
!757 = !DILocation(line: 76, column: 13, scope: !758)
!758 = distinct !DILexicalBlock(scope: !675, file: !1, line: 76, column: 8)
!759 = !DILocation(line: 77, column: 9, scope: !758)
!760 = !DILocation(line: 76, column: 8, scope: !675)
!761 = !DILocation(line: 78, column: 8, scope: !683)
!762 = !DILocation(line: 78, column: 13, scope: !683)
!763 = !DILocation(line: 78, column: 28, scope: !683)
!764 = !DILocation(line: 78, column: 21, scope: !683)
!765 = !DILocation(line: 80, column: 8, scope: !681)
!766 = !DILocation(line: 0, scope: !681)
!767 = !DILocation(line: 81, column: 13, scope: !682)
!768 = !DILocation(line: 85, column: 8, scope: !682)
!769 = !DILocation(line: 89, column: 11, scope: !692)
!770 = !DILocation(line: 89, column: 62, scope: !692)
!771 = !DILocation(line: 89, column: 51, scope: !692)
!772 = !DILocation(line: 91, column: 10, scope: !690)
!773 = !DILocation(line: 91, column: 27, scope: !690)
!774 = !DILocation(line: 91, column: 17, scope: !690)
!775 = !DILocation(line: 95, column: 24, scope: !776)
!776 = distinct !DILexicalBlock(scope: !689, file: !1, line: 95, column: 10)
!777 = !DILocation(line: 95, column: 11, scope: !776)
!778 = !DILocation(line: 95, column: 46, scope: !776)
!779 = !DILocation(line: 95, column: 33, scope: !776)
!780 = !DILocation(line: 96, column: 12, scope: !776)
!781 = !DILocation(line: 96, column: 48, scope: !776)
!782 = !DILocation(line: 96, column: 8, scope: !776)
!783 = !DILocation(line: 99, column: 24, scope: !689)
!784 = !DILocation(line: 100, column: 24, scope: !689)
!785 = !DILocation(line: 101, column: 6, scope: !689)
!786 = !DILocation(line: 104, column: 31, scope: !689)
!787 = !DILocation(line: 104, column: 24, scope: !689)
!788 = !DILocation(line: 106, column: 6, scope: !689)
!789 = !DILocation(line: 110, column: 26, scope: !689)
!790 = !DILocation(line: 0, scope: !689)
!791 = !DILocation(line: 111, column: 49, scope: !689)
!792 = !DILocation(line: 111, column: 18, scope: !689)
!793 = !DILocation(line: 111, column: 35, scope: !689)
!794 = !DILocation(line: 116, column: 17, scope: !723)
!795 = !DILocation(line: 116, column: 25, scope: !723)
!796 = !DILocation(line: 116, column: 52, scope: !723)
!797 = !DILocation(line: 116, column: 35, scope: !723)
!798 = !DILocation(line: 116, column: 10, scope: !689)
!799 = !DILocation(line: 117, column: 12, scope: !723)
!800 = !DILocation(line: 117, column: 37, scope: !723)
!801 = !DILocation(line: 117, column: 49, scope: !723)
!802 = !DILocation(line: 117, column: 8, scope: !723)
!803 = !DILocation(line: 122, column: 10, scope: !691)
!804 = !DILocation(line: 123, column: 20, scope: !691)
!805 = !DILocation(line: 124, column: 2, scope: !691)
!806 = !DILocation(line: 125, column: 16, scope: !807)
!807 = distinct !DILexicalBlock(scope: !692, file: !1, line: 125, column: 16)
!808 = !DILocation(line: 126, column: 20, scope: !807)
!809 = !DILocation(line: 126, column: 9, scope: !807)
!810 = !DILocation(line: 130, column: 10, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !1, line: 127, column: 2)
!812 = !DILocation(line: 131, column: 20, scope: !811)
!813 = !DILocation(line: 132, column: 2, scope: !811)
!814 = !DILocation(line: 134, column: 7, scope: !677)
!815 = !DILocation(line: 137, column: 15, scope: !697)
!816 = !DILocation(line: 137, column: 45, scope: !697)
!817 = !DILocation(line: 137, column: 35, scope: !697)
!818 = !DILocation(line: 139, column: 14, scope: !819)
!819 = distinct !DILexicalBlock(scope: !697, file: !1, line: 138, column: 6)
!820 = !DILocation(line: 141, column: 6, scope: !819)
!821 = !DILocation(line: 142, column: 21, scope: !696)
!822 = !DILocation(line: 142, column: 45, scope: !696)
!823 = !DILocation(line: 142, column: 35, scope: !696)
!824 = !DILocation(line: 143, column: 12, scope: !696)
!825 = !DILocation(line: 143, column: 6, scope: !696)
!826 = !DILocation(line: 144, column: 13, scope: !696)
!827 = !DILocation(line: 0, scope: !694)
!828 = !DILocation(line: 146, column: 6, scope: !694)
!829 = !DILocation(line: 146, column: 6, scope: !702)
!830 = !DILocation(line: 146, column: 6, scope: !701)
!831 = !DILocation(line: 0, scope: !701)
!832 = !DILocation(line: 146, column: 6, scope: !833)
!833 = distinct !DILexicalBlock(scope: !701, file: !1, line: 146, column: 6)
!834 = !DILocation(line: 151, column: 16, scope: !835)
!835 = distinct !DILexicalBlock(scope: !698, file: !1, line: 151, column: 8)
!836 = !DILocation(line: 151, column: 8, scope: !698)
!837 = !DILocation(line: 153, column: 19, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !1, line: 153, column: 12)
!839 = distinct !DILexicalBlock(scope: !835, file: !1, line: 152, column: 6)
!840 = !DILocation(line: 153, column: 12, scope: !839)
!841 = !DILocation(line: 154, column: 9, scope: !838)
!842 = !DILocation(line: 154, column: 3, scope: !838)
!843 = !DILocation(line: 157, column: 11, scope: !844)
!844 = distinct !DILexicalBlock(scope: !838, file: !1, line: 156, column: 3)
!845 = !DILocation(line: 158, column: 21, scope: !844)
!846 = !DILocation(line: 167, column: 26, scope: !704)
!847 = !DILocation(line: 167, column: 23, scope: !704)
!848 = !DILocation(line: 0, scope: !704)
!849 = !DILocation(line: 169, column: 18, scope: !850)
!850 = distinct !DILexicalBlock(scope: !704, file: !1, line: 169, column: 10)
!851 = !DILocation(line: 169, column: 10, scope: !704)
!852 = !DILocation(line: 172, column: 9, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !1, line: 170, column: 8)
!854 = !DILocation(line: 173, column: 19, scope: !853)
!855 = !DILocation(line: 174, column: 8, scope: !853)
!856 = !DILocation(line: 175, column: 22, scope: !857)
!857 = distinct !DILexicalBlock(scope: !850, file: !1, line: 175, column: 15)
!858 = !DILocation(line: 175, column: 41, scope: !857)
!859 = !DILocation(line: 175, column: 31, scope: !857)
!860 = !DILocation(line: 183, column: 17, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !1, line: 183, column: 10)
!862 = distinct !DILexicalBlock(scope: !698, file: !1, line: 182, column: 4)
!863 = !DILocation(line: 183, column: 52, scope: !861)
!864 = !DILocation(line: 183, column: 42, scope: !861)
!865 = !DILocation(line: 186, column: 18, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !1, line: 186, column: 10)
!867 = !DILocation(line: 186, column: 10, scope: !862)
!868 = !DILocation(line: 188, column: 9, scope: !869)
!869 = distinct !DILexicalBlock(scope: !866, file: !1, line: 187, column: 8)
!870 = !DILocation(line: 189, column: 19, scope: !869)
!871 = !DILocation(line: 190, column: 8, scope: !869)
!872 = !DILocation(line: 196, column: 4, scope: !706)
!873 = !DILocation(line: 0, scope: !706)
!874 = !DILocation(line: 197, column: 9, scope: !698)
!875 = !DILocation(line: 199, column: 10, scope: !698)
!876 = !DILocation(line: 200, column: 8, scope: !698)
!877 = !DILocation(line: 210, column: 4, scope: !698)
!878 = !DILocation(line: 213, column: 16, scope: !879)
!879 = distinct !DILexicalBlock(scope: !698, file: !1, line: 213, column: 8)
!880 = !DILocation(line: 213, column: 8, scope: !698)
!881 = !DILocation(line: 215, column: 14, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !1, line: 214, column: 6)
!883 = !DILocation(line: 216, column: 24, scope: !882)
!884 = !DILocation(line: 217, column: 6, scope: !882)
!885 = !DILocation(line: 84, column: 10, scope: !682)
!886 = !DILocation(line: 82, column: 12, scope: !682)
!887 = !DILocation(line: 83, column: 12, scope: !682)
!888 = !DILocation(line: 67, column: 64, scope: !678)
!889 = !DILocation(line: 67, column: 71, scope: !678)
!890 = !DILocation(line: 67, column: 3, scope: !678)
!891 = distinct !{!891, !747, !892}
!892 = !DILocation(line: 220, column: 5, scope: !679)
!893 = !DILocation(line: 222, column: 13, scope: !894)
!894 = distinct !DILexicalBlock(scope: !70, file: !1, line: 222, column: 7)
!895 = !DILocation(line: 222, column: 7, scope: !70)
!896 = !DILocation(line: 223, column: 5, scope: !894)
!897 = !DILocation(line: 225, column: 21, scope: !714)
!898 = !DILocation(line: 225, column: 8, scope: !714)
!899 = !DILocation(line: 225, column: 37, scope: !714)
!900 = !DILocation(line: 225, column: 30, scope: !714)
!901 = !DILocation(line: 229, column: 11, scope: !712)
!902 = !DILocation(line: 229, column: 19, scope: !712)
!903 = !DILocation(line: 229, column: 11, scope: !713)
!904 = !DILocation(line: 231, column: 7, scope: !711)
!905 = !DILocation(line: 232, column: 4, scope: !710)
!906 = !DILocation(line: 0, scope: !710)
!907 = !DILocation(line: 233, column: 9, scope: !711)
!908 = !DILocation(line: 234, column: 2, scope: !711)
!909 = !DILocation(line: 236, column: 11, scope: !713)
!910 = !DILocation(line: 236, column: 41, scope: !713)
!911 = !DILocation(line: 236, column: 7, scope: !713)
!912 = !DILocation(line: 237, column: 5, scope: !713)
!913 = !DILocation(line: 239, column: 3, scope: !70)
!914 = !DILocation(line: 240, column: 14, scope: !915)
!915 = distinct !DILexicalBlock(scope: !70, file: !1, line: 240, column: 7)
!916 = !DILocation(line: 240, column: 7, scope: !915)
!917 = !DILocation(line: 240, column: 7, scope: !70)
!918 = !DILocation(line: 242, column: 1, scope: !70)
