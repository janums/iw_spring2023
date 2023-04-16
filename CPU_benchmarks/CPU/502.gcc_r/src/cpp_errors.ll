; ModuleID = 'cpp_errors.bc'
source_filename = "cpp_errors.c"
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

@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !46 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !52, metadata !DIExpression()), !dbg !53
  %__c.off = add i32 %__c, 128, !dbg !54
  %0 = icmp ult i32 %__c.off, 384, !dbg !54
  br i1 %0, label %cond.true, label %cond.end, !dbg !54

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #8, !dbg !55
  %1 = load i32*, i32** %call, align 8, !dbg !56
  %idxprom = sext i32 %__c to i64, !dbg !57
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !57
  %2 = load i32, i32* %arrayidx, align 4, !dbg !57
  br label %cond.end, !dbg !58

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !58
  ret i32 %cond, !dbg !59
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !60 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !62, metadata !DIExpression()), !dbg !63
  %__c.off = add i32 %__c, 128, !dbg !64
  %0 = icmp ult i32 %__c.off, 384, !dbg !64
  br i1 %0, label %cond.true, label %cond.end, !dbg !64

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #8, !dbg !65
  %1 = load i32*, i32** %call, align 8, !dbg !66
  %idxprom = sext i32 %__c to i64, !dbg !67
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !67
  %2 = load i32, i32* %arrayidx, align 4, !dbg !67
  br label %cond.end, !dbg !68

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !68
  ret i32 %cond, !dbg !69
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cpp_error(%struct.cpp_reader* %pfile, i32 %level, i8* %msgid, ...) local_unnamed_addr #3 !dbg !70 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !646, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata i32 %level, metadata !647, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata i8* %msgid, metadata !648, metadata !DIExpression()), !dbg !652
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !653
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #5, !dbg !653
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !650, metadata !DIExpression()), !dbg !654
  call void @llvm.va_start(i8* %0), !dbg !655
  %traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 36, !dbg !656
  %1 = load i8, i8* %traditional, align 2, !dbg !656
  %tobool = icmp eq i8 %1, 0, !dbg !656
  br i1 %tobool, label %if.else4, label %if.then, !dbg !658

if.then:                                          ; preds = %entry
  %in_directive = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 0, !dbg !659
  %2 = load i8, i8* %in_directive, align 8, !dbg !659
  %tobool2 = icmp eq i8 %2, 0, !dbg !662
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !663

if.then3:                                         ; preds = %if.then
  %directive_line = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 4, !dbg !664
  %3 = load i32, i32* %directive_line, align 8, !dbg !664
  call void @llvm.dbg.value(metadata i32 %3, metadata !649, metadata !DIExpression()), !dbg !652
  br label %if.end18, !dbg !665

if.else:                                          ; preds = %if.then
  %line_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 3, !dbg !666
  %4 = load %struct.line_maps*, %struct.line_maps** %line_table, align 8, !dbg !666
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %4, i64 0, i32 8, !dbg !667
  %5 = load i32, i32* %highest_line, align 4, !dbg !667
  call void @llvm.dbg.value(metadata i32 %5, metadata !649, metadata !DIExpression()), !dbg !652
  br label %if.end18

if.else4:                                         ; preds = %entry
  %cur_token = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 29, !dbg !668
  %6 = load %struct.cpp_token*, %struct.cpp_token** %cur_token, align 8, !dbg !668
  %cur_run = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 31, !dbg !670
  %7 = load %struct.tokenrun*, %struct.tokenrun** %cur_run, align 8, !dbg !670
  %base = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %7, i64 0, i32 2, !dbg !671
  %8 = load %struct.cpp_token*, %struct.cpp_token** %base, align 8, !dbg !671
  %cmp = icmp eq %struct.cpp_token* %6, %8, !dbg !672
  br i1 %cmp, label %if.then5, label %if.else14, !dbg !673

if.then5:                                         ; preds = %if.else4
  %prev = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %7, i64 0, i32 1, !dbg !674
  %9 = load %struct.tokenrun*, %struct.tokenrun** %prev, align 8, !dbg !674
  %cmp7 = icmp eq %struct.tokenrun* %9, null, !dbg !677
  br i1 %cmp7, label %if.end18, label %if.then8, !dbg !678

if.then8:                                         ; preds = %if.then5
  %limit = getelementptr inbounds %struct.tokenrun, %struct.tokenrun* %9, i64 0, i32 3, !dbg !679
  %10 = load %struct.cpp_token*, %struct.cpp_token** %limit, align 8, !dbg !679
  %src_loc11 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %10, i64 0, i32 0, !dbg !680
  %11 = load i32, i32* %src_loc11, align 8, !dbg !680
  call void @llvm.dbg.value(metadata i32 %11, metadata !649, metadata !DIExpression()), !dbg !652
  br label %if.end18, !dbg !681

if.else14:                                        ; preds = %if.else4
  %src_loc16 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %6, i64 -1, i32 0, !dbg !682
  %12 = load i32, i32* %src_loc16, align 8, !dbg !682
  call void @llvm.dbg.value(metadata i32 %12, metadata !649, metadata !DIExpression()), !dbg !652
  br label %if.end18

if.end18:                                         ; preds = %if.then5, %if.else14, %if.then8, %if.then3, %if.else
  %src_loc.3 = phi i32 [ %3, %if.then3 ], [ %5, %if.else ], [ %12, %if.else14 ], [ %11, %if.then8 ], [ 0, %if.then5 ], !dbg !684
  call void @llvm.dbg.value(metadata i32 %src_loc.3, metadata !649, metadata !DIExpression()), !dbg !652
  %error = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 12, !dbg !685
  %13 = load i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)*, i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)** %error, align 8, !dbg !685
  %tobool19 = icmp eq i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)* %13, null, !dbg !687
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !688

if.then20:                                        ; preds = %if.end18
  call void @abort() #9, !dbg !689
  unreachable, !dbg !689

if.end21:                                         ; preds = %if.end18
  %call = call zeroext i8 %13(%struct.cpp_reader* %pfile, i32 %level, i32 %src_loc.3, i32 0, i8* %msgid, [1 x %struct.__va_list_tag]* nonnull %ap) #8, !dbg !690
  call void @llvm.dbg.value(metadata i8 %call, metadata !651, metadata !DIExpression()), !dbg !652
  call void @llvm.va_end(i8* nonnull %0), !dbg !691
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #5, !dbg !692
  ret i8 %call, !dbg !693
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cpp_error_with_line(%struct.cpp_reader* %pfile, i32 %level, i32 %src_loc, i32 %column, i8* %msgid, ...) local_unnamed_addr #3 !dbg !694 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !698, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 %level, metadata !699, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 %src_loc, metadata !700, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 %column, metadata !701, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i8* %msgid, metadata !702, metadata !DIExpression()), !dbg !705
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !706
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #5, !dbg !706
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !703, metadata !DIExpression()), !dbg !707
  call void @llvm.va_start(i8* %0), !dbg !708
  %error = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 49, i32 12, !dbg !709
  %1 = load i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)*, i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)** %error, align 8, !dbg !709
  %tobool = icmp eq i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)* %1, null, !dbg !711
  br i1 %tobool, label %if.then, label %if.end, !dbg !712

if.then:                                          ; preds = %entry
  call void @abort() #9, !dbg !713
  unreachable, !dbg !713

if.end:                                           ; preds = %entry
  %call = call zeroext i8 %1(%struct.cpp_reader* %pfile, i32 %level, i32 %src_loc, i32 %column, i8* %msgid, [1 x %struct.__va_list_tag]* nonnull %ap) #8, !dbg !714
  call void @llvm.dbg.value(metadata i8 %call, metadata !704, metadata !DIExpression()), !dbg !705
  call void @llvm.va_end(i8* nonnull %0), !dbg !715
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #5, !dbg !716
  ret i8 %call, !dbg !717
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 %level, i8* %msgid) local_unnamed_addr #3 !dbg !718 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !722, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i32 %level, metadata !723, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8* %msgid, metadata !724, metadata !DIExpression()), !dbg !725
  %0 = load i8, i8* %msgid, align 1, !dbg !726
  %cmp = icmp eq i8 %0, 0, !dbg !728
  %spec.select = select i1 %cmp, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %msgid, !dbg !729
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !724, metadata !DIExpression()), !dbg !725
  %call = tail call i32* @__errno_location() #10, !dbg !730
  %1 = load i32, i32* %call, align 4, !dbg !730
  %call2 = tail call i8* @xstrerror(i32 %1) #8, !dbg !731
  %call3 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 %level, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %spec.select, i8* %call2) #11, !dbg !732
  ret i8 %call3, !dbg !733
}

declare dso_local i8* @xstrerror(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin noreturn nounwind }
attributes #10 = { nobuiltin nounwind readnone }
attributes #11 = { nobuiltin }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, nameTableKind: None)
!1 = !DIFile(filename: "cpp_errors.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
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
!70 = distinct !DISubprogram(name: "cpp_error", scope: !1, file: !1, line: 34, type: !71, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !645)
!71 = !DISubroutineType(types: !72)
!72 = !{!73, !74, !50, !129, null}
!73 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !4, line: 31, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !77, line: 322, size: 10432, elements: !78)
!77 = !DIFile(filename: "./internal.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!78 = !{!79, !162, !163, !180, !212, !213, !224, !225, !226, !336, !338, !342, !343, !344, !345, !346, !347, !348, !349, !350, !353, !354, !357, !358, !391, !392, !393, !396, !397, !398, !399, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !425, !426, !427, !430, !510, !536, !539, !540, !603, !610, !611, !618, !619, !620, !621, !624, !625, !638}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !76, file: !77, line: 325, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_buffer", file: !4, line: 32, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_buffer", file: !77, line: 249, size: 1536, elements: !83)
!83 = !{!84, !87, !88, !89, !90, !91, !98, !99, !100, !101, !103, !106, !107, !110, !111, !112, !113, !114, !115, !146}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !82, file: !77, line: 251, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "line_base", scope: !82, file: !77, line: 252, baseType: !85, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !82, file: !77, line: 253, baseType: !85, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !82, file: !77, line: 255, baseType: !85, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !82, file: !77, line: 256, baseType: !85, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !82, file: !77, line: 258, baseType: !92, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_line_note", file: !77, line: 235, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_line_note", file: !77, line: 236, size: 128, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !94, file: !77, line: 239, baseType: !85, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !77, line: 245, baseType: !5, size: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cur_note", scope: !82, file: !77, line: 259, baseType: !5, size: 32, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "notes_used", scope: !82, file: !77, line: 260, baseType: !5, size: 32, offset: 416)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "notes_cap", scope: !82, file: !77, line: 261, baseType: !5, size: 32, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !82, file: !77, line: 263, baseType: !102, size: 64, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !82, file: !77, line: 267, baseType: !104, size: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_file", file: !4, line: 42, flags: DIFlagFwdDecl)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !82, file: !77, line: 271, baseType: !85, size: 64, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "if_stack", scope: !82, file: !77, line: 275, baseType: !108, size: 64, offset: 704)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "if_stack", file: !77, line: 275, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "need_line", scope: !82, file: !77, line: 278, baseType: !73, size: 8, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "warned_cplusplus_comments", scope: !82, file: !77, line: 284, baseType: !5, size: 1, offset: 776, flags: DIFlagBitField, extraData: i64 776)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "from_stage3", scope: !82, file: !77, line: 289, baseType: !5, size: 1, offset: 777, flags: DIFlagBitField, extraData: i64 776)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "return_at_eof", scope: !82, file: !77, line: 294, baseType: !5, size: 1, offset: 778, flags: DIFlagBitField, extraData: i64 776)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !82, file: !77, line: 298, baseType: !73, size: 8, offset: 784)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !82, file: !77, line: 302, baseType: !116, size: 512, offset: 832)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !4, line: 523, size: 512, elements: !117)
!117 = !{!118, !120, !123, !124, !125, !126, !127, !131, !137, !143}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !4, line: 526, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !4, line: 529, baseType: !121, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !116, file: !4, line: 530, baseType: !5, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !116, file: !4, line: 534, baseType: !73, size: 8, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !116, file: !4, line: 537, baseType: !73, size: 8, offset: 168)
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
!146 = !DIDerivedType(tag: DW_TAG_member, name: "input_cset_desc", scope: !82, file: !77, line: 306, baseType: !147, size: 192, offset: 1344)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cset_converter", file: !77, line: 47, size: 192, elements: !148)
!148 = !{!149, !160, !161}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !147, file: !77, line: 49, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "convert_f", file: !77, line: 45, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!73, !154, !85, !156, !158}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !155, line: 29, baseType: !41)
!155 = !DIFile(filename: "/usr/include/iconv.h", directory: "")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !157, line: 46, baseType: !142)
!157 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_strbuf", file: !77, line: 43, flags: DIFlagFwdDecl)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !147, file: !77, line: 50, baseType: !154, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !147, file: !77, line: 51, baseType: !50, size: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "overlaid_buffer", scope: !76, file: !77, line: 328, baseType: !80, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !76, file: !77, line: 331, baseType: !164, size: 160, offset: 128)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lexer_state", file: !77, line: 177, size: 160, elements: !165)
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "in_directive", scope: !164, file: !77, line: 180, baseType: !73, size: 8)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "directive_wants_padding", scope: !164, file: !77, line: 185, baseType: !73, size: 8, offset: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "skipping", scope: !164, file: !77, line: 188, baseType: !73, size: 8, offset: 16)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "angled_headers", scope: !164, file: !77, line: 191, baseType: !73, size: 8, offset: 24)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "in_expression", scope: !164, file: !77, line: 194, baseType: !73, size: 8, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "save_comments", scope: !164, file: !77, line: 198, baseType: !73, size: 8, offset: 40)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "va_args_ok", scope: !164, file: !77, line: 201, baseType: !73, size: 8, offset: 48)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned_ok", scope: !164, file: !77, line: 204, baseType: !73, size: 8, offset: 56)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_expansion", scope: !164, file: !77, line: 207, baseType: !73, size: 8, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parsing_args", scope: !164, file: !77, line: 210, baseType: !73, size: 8, offset: 72)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "discarding_output", scope: !164, file: !77, line: 214, baseType: !73, size: 8, offset: 80)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "skip_eval", scope: !164, file: !77, line: 217, baseType: !5, size: 32, offset: 96)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "in_deferred_pragma", scope: !164, file: !77, line: 220, baseType: !73, size: 8, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pragma_allow_expansion", scope: !164, file: !77, line: 223, baseType: !73, size: 8, offset: 136)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "line_table", scope: !76, file: !77, line: 334, baseType: !181, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !183, line: 74, size: 448, elements: !184)
!183 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!184 = !{!185, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !182, file: !183, line: 75, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !183, line: 61, size: 192, elements: !188)
!188 = !{!189, !190, !192, !194, !195, !196, !197}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !187, file: !183, line: 62, baseType: !129, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !187, file: !183, line: 63, baseType: !191, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !183, line: 39, baseType: !5)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !187, file: !183, line: 64, baseType: !193, size: 32, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !183, line: 44, baseType: !5)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !187, file: !183, line: 65, baseType: !50, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !187, file: !183, line: 66, baseType: !5, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !187, file: !183, line: 68, baseType: !73, size: 8, offset: 168)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !187, file: !183, line: 70, baseType: !5, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !182, file: !183, line: 76, baseType: !5, size: 32, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !182, file: !183, line: 77, baseType: !5, size: 32, offset: 96)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !182, file: !183, line: 79, baseType: !5, size: 32, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !182, file: !183, line: 84, baseType: !50, size: 32, offset: 160)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !182, file: !183, line: 87, baseType: !5, size: 32, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !182, file: !183, line: 90, baseType: !73, size: 8, offset: 224)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !182, file: !183, line: 93, baseType: !193, size: 32, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !182, file: !183, line: 96, baseType: !193, size: 32, offset: 288)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !182, file: !183, line: 100, baseType: !5, size: 32, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !182, file: !183, line: 104, baseType: !208, size: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !183, line: 47, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!41, !41, !156}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "directive_line", scope: !76, file: !77, line: 337, baseType: !193, size: 32, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "a_buff", scope: !76, file: !77, line: 340, baseType: !214, size: 64, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_buff", file: !77, line: 99, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_buff", file: !77, line: 100, size: 256, elements: !217)
!217 = !{!218, !220, !222, !223}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !77, line: 102, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !216, file: !77, line: 103, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !216, file: !77, line: 103, baseType: !221, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !216, file: !77, line: 103, baseType: !221, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "u_buff", scope: !76, file: !77, line: 341, baseType: !214, size: 64, offset: 512)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffs", scope: !76, file: !77, line: 342, baseType: !214, size: 64, offset: 576)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "base_context", scope: !76, file: !77, line: 345, baseType: !227, size: 448, offset: 640)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_context", file: !77, line: 142, size: 448, elements: !228)
!228 = !{!229, !232, !233, !333, !334, !335}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !227, file: !77, line: 145, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_context", file: !77, line: 141, baseType: !227)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !227, file: !77, line: 145, baseType: !230, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !227, file: !77, line: 164, baseType: !234, size: 128, offset: 128)
!234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !227, file: !77, line: 147, size: 128, elements: !235)
!235 = !{!236, !328}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "iso", scope: !234, file: !77, line: 156, baseType: !237, size: 128)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !234, file: !77, line: 152, size: 128, elements: !238)
!238 = !{!239, !327}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !237, file: !77, line: 154, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "utoken", file: !77, line: 121, size: 64, elements: !241)
!241 = !{!242, !325}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !240, file: !77, line: 123, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !4, line: 34, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !4, line: 212, size: 192, elements: !247)
!247 = !{!248, !249, !250, !252}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !246, file: !4, line: 213, baseType: !193, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !246, file: !4, line: 214, baseType: !5, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !246, file: !4, line: 215, baseType: !251, size: 16, offset: 48)
!251 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !246, file: !4, line: 237, baseType: !253, size: 128, offset: 64)
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
!267 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !264, file: !265, line: 32, baseType: !85, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !264, file: !265, line: 33, baseType: !5, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !264, file: !265, line: 34, baseType: !5, size: 32, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !261, file: !4, line: 646, baseType: !5, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !261, file: !4, line: 647, baseType: !5, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !261, file: !4, line: 650, baseType: !73, size: 8, offset: 136)
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
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !287, file: !282, line: 50, baseType: !85, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !281, file: !282, line: 54, baseType: !193, size: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !281, file: !282, line: 57, baseType: !5, size: 32, offset: 160)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "paramc", scope: !281, file: !282, line: 60, baseType: !251, size: 16, offset: 192)
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
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 192, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 1)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !276, file: !4, line: 639, baseType: !3, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !276, file: !4, line: 641, baseType: !251, size: 16)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !253, file: !4, line: 223, baseType: !290, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !253, file: !4, line: 226, baseType: !315, size: 128)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !4, line: 162, size: 128, elements: !316)
!316 = !{!317, !318}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !315, file: !4, line: 163, baseType: !5, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !315, file: !4, line: 164, baseType: !85, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !253, file: !4, line: 229, baseType: !320, size: 32)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !4, line: 195, size: 32, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !320, file: !4, line: 197, baseType: !5, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !253, file: !4, line: 233, baseType: !5, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !253, file: !4, line: 236, baseType: !5, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ptoken", scope: !240, file: !77, line: 124, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !237, file: !77, line: 155, baseType: !240, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "trad", scope: !234, file: !77, line: 163, baseType: !329, size: 128)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !234, file: !77, line: 159, size: 128, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !329, file: !77, line: 161, baseType: !85, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !329, file: !77, line: 162, baseType: !85, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !227, file: !77, line: 168, baseType: !214, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !227, file: !77, line: 171, baseType: !259, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "direct_p", scope: !227, file: !77, line: 174, baseType: !73, size: 8, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !76, file: !77, line: 346, baseType: !337, size: 64, offset: 1088)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !76, file: !77, line: 349, baseType: !339, size: 64, offset: 1152)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "directive", file: !77, line: 40, flags: DIFlagFwdDecl)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "directive_result", scope: !76, file: !77, line: 352, baseType: !245, size: 192, offset: 1216)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "invocation_location", scope: !76, file: !77, line: 356, baseType: !193, size: 32, offset: 1408)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "set_invocation_location", scope: !76, file: !77, line: 360, baseType: !73, size: 8, offset: 1440)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "quote_include", scope: !76, file: !77, line: 363, baseType: !119, size: 64, offset: 1472)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "bracket_include", scope: !76, file: !77, line: 364, baseType: !119, size: 64, offset: 1536)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "no_search_path", scope: !76, file: !77, line: 365, baseType: !116, size: 512, offset: 1600)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "all_files", scope: !76, file: !77, line: 368, baseType: !104, size: 64, offset: 2112)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "main_file", scope: !76, file: !77, line: 370, baseType: !104, size: 64, offset: 2176)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash", scope: !76, file: !77, line: 373, baseType: !351, size: 64, offset: 2240)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !77, line: 373, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash", scope: !76, file: !77, line: 374, baseType: !351, size: 64, offset: 2304)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash_entries", scope: !76, file: !77, line: 375, baseType: !355, size: 64, offset: 2368)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_hash_entry_pool", file: !77, line: 375, flags: DIFlagFwdDecl)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_hash", scope: !76, file: !77, line: 378, baseType: !351, size: 64, offset: 2432)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_ob", scope: !76, file: !77, line: 379, baseType: !359, size: 704, offset: 2496)
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
!382 = !{!365, !41, !363}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !359, file: !360, line: 177, baseType: !384, size: 64, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !41, !365}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !359, file: !360, line: 178, baseType: !41, size: 64, offset: 576)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !359, file: !360, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !359, file: !360, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !359, file: !360, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "quote_ignores_source_dir", scope: !76, file: !77, line: 383, baseType: !73, size: 8, offset: 3200)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "seen_once_only", scope: !76, file: !77, line: 387, baseType: !73, size: 8, offset: 3208)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mi_cmacro", scope: !76, file: !77, line: 390, baseType: !394, size: 64, offset: 3264)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mi_ind_cmacro", scope: !76, file: !77, line: 391, baseType: !394, size: 64, offset: 3328)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mi_valid", scope: !76, file: !77, line: 392, baseType: !73, size: 8, offset: 3392)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "cur_token", scope: !76, file: !77, line: 395, baseType: !290, size: 64, offset: 3456)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "base_run", scope: !76, file: !77, line: 396, baseType: !400, size: 256, offset: 3520)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "tokenrun", file: !77, line: 128, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenrun", file: !77, line: 129, size: 256, elements: !402)
!402 = !{!403, !405, !406, !407}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !77, line: 131, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !401, file: !77, line: 131, baseType: !404, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !401, file: !77, line: 132, baseType: !290, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !401, file: !77, line: 132, baseType: !290, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cur_run", scope: !76, file: !77, line: 396, baseType: !404, size: 64, offset: 3776)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lookaheads", scope: !76, file: !77, line: 397, baseType: !5, size: 32, offset: 3840)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "keep_tokens", scope: !76, file: !77, line: 400, baseType: !5, size: 32, offset: 3872)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer", scope: !76, file: !77, line: 403, baseType: !221, size: 64, offset: 3904)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer_len", scope: !76, file: !77, line: 404, baseType: !5, size: 32, offset: 3968)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_cset_desc", scope: !76, file: !77, line: 408, baseType: !147, size: 192, offset: 4032)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_cset_desc", scope: !76, file: !77, line: 412, baseType: !147, size: 192, offset: 4224)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "char16_cset_desc", scope: !76, file: !77, line: 416, baseType: !147, size: 192, offset: 4416)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "char32_cset_desc", scope: !76, file: !77, line: 420, baseType: !147, size: 192, offset: 4608)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "wide_cset_desc", scope: !76, file: !77, line: 424, baseType: !147, size: 192, offset: 4800)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !76, file: !77, line: 427, baseType: !85, size: 64, offset: 4992)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !76, file: !77, line: 428, baseType: !85, size: 64, offset: 5056)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_paste", scope: !76, file: !77, line: 431, baseType: !245, size: 192, offset: 5120)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !76, file: !77, line: 432, baseType: !245, size: 192, offset: 5312)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !76, file: !77, line: 435, baseType: !423, size: 64, offset: 5504)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !4, line: 685, flags: DIFlagFwdDecl)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "hash_ob", scope: !76, file: !77, line: 439, baseType: !359, size: 704, offset: 5568)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_ob", scope: !76, file: !77, line: 443, baseType: !359, size: 704, offset: 6272)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pragmas", scope: !76, file: !77, line: 447, baseType: !428, size: 64, offset: 6976)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "pragma_entry", file: !77, line: 447, flags: DIFlagFwdDecl)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !76, file: !77, line: 450, baseType: !431, size: 1088, offset: 7040)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !4, line: 472, size: 1088, elements: !432)
!432 = !{!433, !437, !443, !447, !451, !455, !456, !463, !467, !471, !475, !481, !485, !500, !501, !502, !506}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !431, file: !4, line: 475, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !74, !243, !50}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !431, file: !4, line: 481, baseType: !438, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !74, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !431, file: !4, line: 483, baseType: !444, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !74, !129}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !431, file: !4, line: 484, baseType: !448, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !74, !5, !85, !129, !50, !326}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !431, file: !4, line: 486, baseType: !452, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !74, !5, !259}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !431, file: !4, line: 487, baseType: !452, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !431, file: !4, line: 488, baseType: !457, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !74, !5, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !4, line: 35, baseType: !315)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !431, file: !4, line: 489, baseType: !464, size: 64, offset: 448)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !74, !5}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !431, file: !4, line: 490, baseType: !468, size: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!50, !74, !129, !50}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !431, file: !4, line: 491, baseType: !472, size: 64, offset: 576)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !74, !129, !50, !129}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !431, file: !4, line: 492, baseType: !476, size: 64, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !4, line: 469, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!129, !74, !129, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !431, file: !4, line: 496, baseType: !482, size: 64, offset: 704)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!259, !74, !243}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !431, file: !4, line: 500, baseType: !486, size: 64, offset: 768)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!73, !74, !50, !193, !5, !129, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !491, line: 14, baseType: !492)
!491 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 216, baseType: !493)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 192, elements: !309)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 216, size: 192, elements: !495)
!495 = !{!496, !497, !498, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !494, file: !1, line: 216, baseType: !5, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !494, file: !1, line: 216, baseType: !5, size: 32, offset: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !494, file: !1, line: 216, baseType: !41, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !494, file: !1, line: 216, baseType: !41, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !431, file: !4, line: 506, baseType: !452, size: 64, offset: 832)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !431, file: !4, line: 507, baseType: !452, size: 64, offset: 896)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !431, file: !4, line: 510, baseType: !503, size: 64, offset: 960)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !74}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !431, file: !4, line: 513, baseType: !507, size: 64, offset: 1024)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !74, !193, !259}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !76, file: !77, line: 453, baseType: !511, size: 64, offset: 8128)
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
!528 = !{!41, !156}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !512, file: !265, line: 58, baseType: !5, size: 32, offset: 896)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !512, file: !265, line: 59, baseType: !5, size: 32, offset: 928)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !512, file: !265, line: 62, baseType: !532, size: 64, offset: 960)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !512, file: !265, line: 65, baseType: !5, size: 32, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !512, file: !265, line: 66, baseType: !5, size: 32, offset: 1056)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !512, file: !265, line: 69, baseType: !73, size: 8, offset: 1088)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "op_stack", scope: !76, file: !77, line: 456, baseType: !537, size: 64, offset: 8192)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !77, line: 42, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "op_limit", scope: !76, file: !77, line: 456, baseType: !537, size: 64, offset: 8256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !76, file: !77, line: 459, baseType: !541, size: 1024, offset: 8320)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !4, line: 279, size: 1024, elements: !542)
!542 = !{!543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !541, file: !4, line: 282, baseType: !5, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !541, file: !4, line: 285, baseType: !17, size: 32, offset: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !541, file: !4, line: 288, baseType: !73, size: 8, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !541, file: !4, line: 291, baseType: !73, size: 8, offset: 72)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !541, file: !4, line: 296, baseType: !73, size: 8, offset: 80)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !541, file: !4, line: 299, baseType: !73, size: 8, offset: 88)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !541, file: !4, line: 303, baseType: !73, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !541, file: !4, line: 306, baseType: !73, size: 8, offset: 104)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !541, file: !4, line: 309, baseType: !73, size: 8, offset: 112)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !541, file: !4, line: 312, baseType: !73, size: 8, offset: 120)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !541, file: !4, line: 315, baseType: !73, size: 8, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !541, file: !4, line: 318, baseType: !73, size: 8, offset: 136)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !541, file: !4, line: 321, baseType: !73, size: 8, offset: 144)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !541, file: !4, line: 324, baseType: !73, size: 8, offset: 152)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !541, file: !4, line: 328, baseType: !73, size: 8, offset: 160)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !541, file: !4, line: 331, baseType: !73, size: 8, offset: 168)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !541, file: !4, line: 334, baseType: !73, size: 8, offset: 176)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !541, file: !4, line: 338, baseType: !73, size: 8, offset: 184)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !541, file: !4, line: 341, baseType: !73, size: 8, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !541, file: !4, line: 344, baseType: !73, size: 8, offset: 200)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !541, file: !4, line: 348, baseType: !73, size: 8, offset: 208)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !541, file: !4, line: 352, baseType: !73, size: 8, offset: 216)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !541, file: !4, line: 356, baseType: !73, size: 8, offset: 224)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !541, file: !4, line: 360, baseType: !73, size: 8, offset: 232)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !541, file: !4, line: 363, baseType: !73, size: 8, offset: 240)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !541, file: !4, line: 366, baseType: !73, size: 8, offset: 248)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !541, file: !4, line: 370, baseType: !73, size: 8, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !541, file: !4, line: 373, baseType: !73, size: 8, offset: 264)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !541, file: !4, line: 376, baseType: !73, size: 8, offset: 272)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !541, file: !4, line: 379, baseType: !73, size: 8, offset: 280)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !541, file: !4, line: 382, baseType: !73, size: 8, offset: 288)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !541, file: !4, line: 385, baseType: !73, size: 8, offset: 296)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !541, file: !4, line: 389, baseType: !73, size: 8, offset: 304)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !541, file: !4, line: 392, baseType: !73, size: 8, offset: 312)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !541, file: !4, line: 395, baseType: !73, size: 8, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !541, file: !4, line: 398, baseType: !73, size: 8, offset: 328)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !541, file: !4, line: 401, baseType: !73, size: 8, offset: 336)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !541, file: !4, line: 404, baseType: !129, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !541, file: !4, line: 407, baseType: !129, size: 64, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !541, file: !4, line: 410, baseType: !129, size: 64, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !541, file: !4, line: 414, baseType: !29, size: 32, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !541, file: !4, line: 417, baseType: !73, size: 8, offset: 608)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !541, file: !4, line: 420, baseType: !73, size: 8, offset: 616)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !541, file: !4, line: 441, baseType: !587, size: 64, offset: 640)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !541, file: !4, line: 423, size: 64, elements: !588)
!588 = !{!589, !590, !591, !592, !593}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !587, file: !4, line: 426, baseType: !35, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !587, file: !4, line: 429, baseType: !73, size: 8, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !587, file: !4, line: 433, baseType: !73, size: 8, offset: 40)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !587, file: !4, line: 436, baseType: !73, size: 8, offset: 48)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !587, file: !4, line: 440, baseType: !73, size: 8, offset: 56)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !541, file: !4, line: 447, baseType: !156, size: 64, offset: 704)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !541, file: !4, line: 447, baseType: !156, size: 64, offset: 768)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !541, file: !4, line: 447, baseType: !156, size: 64, offset: 832)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !541, file: !4, line: 447, baseType: !156, size: 64, offset: 896)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !541, file: !4, line: 450, baseType: !73, size: 8, offset: 960)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !541, file: !4, line: 450, baseType: !73, size: 8, offset: 968)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !541, file: !4, line: 454, baseType: !73, size: 8, offset: 976)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !541, file: !4, line: 457, baseType: !73, size: 8, offset: 984)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !541, file: !4, line: 460, baseType: !73, size: 8, offset: 992)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "spec_nodes", scope: !76, file: !77, line: 463, baseType: !604, size: 256, offset: 9344)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spec_nodes", file: !77, line: 227, size: 256, elements: !605)
!605 = !{!606, !607, !608, !609}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "n_defined", scope: !604, file: !77, line: 229, baseType: !259, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "n_true", scope: !604, file: !77, line: 230, baseType: !259, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "n_false", scope: !604, file: !77, line: 231, baseType: !259, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "n__VA_ARGS__", scope: !604, file: !77, line: 232, baseType: !259, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "our_hashtable", scope: !76, file: !77, line: 466, baseType: !73, size: 8, offset: 9600)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !76, file: !77, line: 475, baseType: !612, size: 256, offset: 9664)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !77, line: 469, size: 256, elements: !613)
!613 = !{!614, !615, !616, !617}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !612, file: !77, line: 471, baseType: !221, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !612, file: !77, line: 472, baseType: !221, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !612, file: !77, line: 473, baseType: !221, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !612, file: !77, line: 474, baseType: !193, size: 32, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cur", scope: !76, file: !77, line: 478, baseType: !85, size: 64, offset: 9920)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "saved_rlimit", scope: !76, file: !77, line: 478, baseType: !85, size: 64, offset: 9984)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "saved_line_base", scope: !76, file: !77, line: 478, baseType: !85, size: 64, offset: 10048)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "savedstate", scope: !76, file: !77, line: 482, baseType: !622, size: 64, offset: 10112)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_savedstate", file: !77, line: 482, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !76, file: !77, line: 485, baseType: !5, size: 32, offset: 10176)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "comments", scope: !76, file: !77, line: 488, baseType: !626, size: 128, offset: 10240)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment_table", file: !4, line: 901, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 891, size: 128, elements: !628)
!628 = !{!629, !636, !637}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !627, file: !4, line: 894, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment", file: !4, line: 887, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 880, size: 128, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !632, file: !4, line: 883, baseType: !121, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sloc", scope: !632, file: !4, line: 886, baseType: !193, size: 32, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !627, file: !4, line: 897, baseType: !50, size: 32, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !627, file: !4, line: 900, baseType: !50, size: 32, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pushed_macros", scope: !76, file: !77, line: 491, baseType: !639, size: 64, offset: 10368)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_pragma_macro", file: !77, line: 310, size: 192, elements: !641)
!641 = !{!642, !643, !644}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !640, file: !77, line: 312, baseType: !639, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !640, file: !77, line: 314, baseType: !121, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !640, file: !77, line: 316, baseType: !279, size: 64, offset: 128)
!645 = !{!646, !647, !648, !649, !650, !651}
!646 = !DILocalVariable(name: "pfile", arg: 1, scope: !70, file: !1, line: 34, type: !74)
!647 = !DILocalVariable(name: "level", arg: 2, scope: !70, file: !1, line: 34, type: !50)
!648 = !DILocalVariable(name: "msgid", arg: 3, scope: !70, file: !1, line: 34, type: !129)
!649 = !DILocalVariable(name: "src_loc", scope: !70, file: !1, line: 36, type: !193)
!650 = !DILocalVariable(name: "ap", scope: !70, file: !1, line: 37, type: !490)
!651 = !DILocalVariable(name: "ret", scope: !70, file: !1, line: 38, type: !73)
!652 = !DILocation(line: 0, scope: !70)
!653 = !DILocation(line: 37, column: 3, scope: !70)
!654 = !DILocation(line: 37, column: 11, scope: !70)
!655 = !DILocation(line: 40, column: 3, scope: !70)
!656 = !DILocation(line: 42, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !70, file: !1, line: 42, column: 7)
!658 = !DILocation(line: 42, column: 7, scope: !70)
!659 = !DILocation(line: 44, column: 24, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !1, line: 44, column: 11)
!661 = distinct !DILexicalBlock(scope: !657, file: !1, line: 43, column: 5)
!662 = !DILocation(line: 44, column: 11, scope: !660)
!663 = !DILocation(line: 44, column: 11, scope: !661)
!664 = !DILocation(line: 45, column: 19, scope: !660)
!665 = !DILocation(line: 45, column: 2, scope: !660)
!666 = !DILocation(line: 47, column: 19, scope: !660)
!667 = !DILocation(line: 47, column: 31, scope: !660)
!668 = !DILocation(line: 51, column: 19, scope: !669)
!669 = distinct !DILexicalBlock(scope: !657, file: !1, line: 51, column: 12)
!670 = !DILocation(line: 51, column: 39, scope: !669)
!671 = !DILocation(line: 51, column: 48, scope: !669)
!672 = !DILocation(line: 51, column: 29, scope: !669)
!673 = !DILocation(line: 51, column: 12, scope: !657)
!674 = !DILocation(line: 53, column: 27, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !1, line: 53, column: 11)
!676 = distinct !DILexicalBlock(scope: !669, file: !1, line: 52, column: 5)
!677 = !DILocation(line: 53, column: 32, scope: !675)
!678 = !DILocation(line: 53, column: 11, scope: !676)
!679 = !DILocation(line: 54, column: 34, scope: !675)
!680 = !DILocation(line: 54, column: 41, scope: !675)
!681 = !DILocation(line: 54, column: 2, scope: !675)
!682 = !DILocation(line: 60, column: 38, scope: !683)
!683 = distinct !DILexicalBlock(scope: !669, file: !1, line: 59, column: 5)
!684 = !DILocation(line: 0, scope: !657)
!685 = !DILocation(line: 63, column: 18, scope: !686)
!686 = distinct !DILexicalBlock(scope: !70, file: !1, line: 63, column: 7)
!687 = !DILocation(line: 63, column: 8, scope: !686)
!688 = !DILocation(line: 63, column: 7, scope: !70)
!689 = !DILocation(line: 64, column: 5, scope: !686)
!690 = !DILocation(line: 65, column: 9, scope: !70)
!691 = !DILocation(line: 67, column: 3, scope: !70)
!692 = !DILocation(line: 69, column: 1, scope: !70)
!693 = !DILocation(line: 68, column: 3, scope: !70)
!694 = distinct !DISubprogram(name: "cpp_error_with_line", scope: !1, file: !1, line: 73, type: !695, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{!73, !74, !50, !193, !5, !129, null}
!697 = !{!698, !699, !700, !701, !702, !703, !704}
!698 = !DILocalVariable(name: "pfile", arg: 1, scope: !694, file: !1, line: 73, type: !74)
!699 = !DILocalVariable(name: "level", arg: 2, scope: !694, file: !1, line: 73, type: !50)
!700 = !DILocalVariable(name: "src_loc", arg: 3, scope: !694, file: !1, line: 74, type: !193)
!701 = !DILocalVariable(name: "column", arg: 4, scope: !694, file: !1, line: 74, type: !5)
!702 = !DILocalVariable(name: "msgid", arg: 5, scope: !694, file: !1, line: 75, type: !129)
!703 = !DILocalVariable(name: "ap", scope: !694, file: !1, line: 77, type: !490)
!704 = !DILocalVariable(name: "ret", scope: !694, file: !1, line: 78, type: !73)
!705 = !DILocation(line: 0, scope: !694)
!706 = !DILocation(line: 77, column: 3, scope: !694)
!707 = !DILocation(line: 77, column: 11, scope: !694)
!708 = !DILocation(line: 80, column: 3, scope: !694)
!709 = !DILocation(line: 82, column: 18, scope: !710)
!710 = distinct !DILexicalBlock(scope: !694, file: !1, line: 82, column: 7)
!711 = !DILocation(line: 82, column: 8, scope: !710)
!712 = !DILocation(line: 82, column: 7, scope: !694)
!713 = !DILocation(line: 83, column: 5, scope: !710)
!714 = !DILocation(line: 84, column: 9, scope: !694)
!715 = !DILocation(line: 86, column: 3, scope: !694)
!716 = !DILocation(line: 88, column: 1, scope: !694)
!717 = !DILocation(line: 87, column: 3, scope: !694)
!718 = distinct !DISubprogram(name: "cpp_errno", scope: !1, file: !1, line: 91, type: !719, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{!73, !74, !50, !129}
!721 = !{!722, !723, !724}
!722 = !DILocalVariable(name: "pfile", arg: 1, scope: !718, file: !1, line: 91, type: !74)
!723 = !DILocalVariable(name: "level", arg: 2, scope: !718, file: !1, line: 91, type: !50)
!724 = !DILocalVariable(name: "msgid", arg: 3, scope: !718, file: !1, line: 91, type: !129)
!725 = !DILocation(line: 0, scope: !718)
!726 = !DILocation(line: 93, column: 7, scope: !727)
!727 = distinct !DILexicalBlock(scope: !718, file: !1, line: 93, column: 7)
!728 = !DILocation(line: 93, column: 16, scope: !727)
!729 = !DILocation(line: 93, column: 7, scope: !718)
!730 = !DILocation(line: 96, column: 63, scope: !718)
!731 = !DILocation(line: 96, column: 52, scope: !718)
!732 = !DILocation(line: 96, column: 10, scope: !718)
!733 = !DILocation(line: 96, column: 3, scope: !718)
