; ModuleID = 'cpp_symtab.bc'
source_filename = "cpp_symtab.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i8* (i64)*, i32, i32, %struct.cpp_reader*, i32, i32, i8 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.ht_identifier = type { i8*, i32, i32 }
%struct.cpp_reader = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [27 x i8] c"\0AString pool\0Aentries\09\09%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"identifiers\09%lu (%.2f%%)\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"slots\09\09%lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"deleted\09\09%lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"bytes\09\09%lu%c (%lu%c overhead)\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"table size\09%lu%c\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"coll/search\09%.4f\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ins/search\09%.4f\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"avg. entry\09%.2f bytes (+/- %.2f)\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"longest entry\09%lu\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !94 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !99, metadata !DIExpression()), !dbg !100
  %__c.off = add i32 %__c, 128, !dbg !101
  %0 = icmp ult i32 %__c.off, 384, !dbg !101
  br i1 %0, label %cond.true, label %cond.end, !dbg !101

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #7, !dbg !102
  %1 = load i32*, i32** %call, align 8, !dbg !103
  %idxprom = sext i32 %__c to i64, !dbg !104
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !104
  %2 = load i32, i32* %arrayidx, align 4, !dbg !104
  br label %cond.end, !dbg !105

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !105
  ret i32 %cond, !dbg !106
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !107 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !109, metadata !DIExpression()), !dbg !110
  %__c.off = add i32 %__c, 128, !dbg !111
  %0 = icmp ult i32 %__c.off, 384, !dbg !111
  br i1 %0, label %cond.true, label %cond.end, !dbg !111

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #7, !dbg !112
  %1 = load i32*, i32** %call, align 8, !dbg !113
  %idxprom = sext i32 %__c to i64, !dbg !114
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !114
  %2 = load i32, i32* %arrayidx, align 4, !dbg !114
  br label %cond.end, !dbg !115

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !115
  ret i32 %cond, !dbg !116
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.ht* @ht_create(i32 %order) local_unnamed_addr #2 !dbg !117 {
entry:
  call void @llvm.dbg.value(metadata i32 %order, metadata !121, metadata !DIExpression()), !dbg !124
  %shl = shl i32 1, %order, !dbg !125
  call void @llvm.dbg.value(metadata i32 %shl, metadata !122, metadata !DIExpression()), !dbg !124
  %call = tail call i8* @xcalloc(i64 1, i64 144) #7, !dbg !126
  %0 = bitcast i8* %call to %struct.ht*, !dbg !126
  call void @llvm.dbg.value(metadata %struct.ht* %0, metadata !123, metadata !DIExpression()), !dbg !124
  %stack = bitcast i8* %call to %struct.obstack*, !dbg !127
  %call1 = tail call i32 @_obstack_begin(%struct.obstack* %stack, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #7, !dbg !128
  %alignment_mask = getelementptr inbounds i8, i8* %call, i64 48, !dbg !129
  %1 = bitcast i8* %alignment_mask to i32*, !dbg !129
  store i32 0, i32* %1, align 8, !dbg !130
  %conv = zext i32 %shl to i64, !dbg !131
  %call3 = tail call i8* @xcalloc(i64 %conv, i64 8) #7, !dbg !131
  %entries = getelementptr inbounds i8, i8* %call, i64 88, !dbg !132
  %2 = bitcast i8* %entries to i8**, !dbg !133
  store i8* %call3, i8** %2, align 8, !dbg !133
  %3 = getelementptr inbounds i8, i8* %call, i64 136, !dbg !134
  store i8 1, i8* %3, align 8, !dbg !135
  %nslots4 = getelementptr inbounds i8, i8* %call, i64 112, !dbg !136
  %4 = bitcast i8* %nslots4 to i32*, !dbg !136
  store i32 %shl, i32* %4, align 8, !dbg !137
  ret %struct.ht* %0, !dbg !138
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

declare dso_local i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: nounwind uwtable
define dso_local void @ht_destroy(%struct.ht* %table) local_unnamed_addr #2 !dbg !139 {
entry:
  call void @llvm.dbg.value(metadata %struct.ht* %table, metadata !143, metadata !DIExpression()), !dbg !144
  %chunk = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, i32 1, !dbg !145
  %0 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !145
  %1 = load i64, i64* %0, align 8, !dbg !145
  %sub.ptr.sub = sub i64 0, %1, !dbg !145
  %temp = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, i32 5, !dbg !145
  store i64 %sub.ptr.sub, i64* %temp, align 8, !dbg !145
  %cmp = icmp sgt i64 %sub.ptr.sub, 0, !dbg !145
  %2 = inttoptr i64 %1 to i8*, !dbg !145
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !145

land.lhs.true:                                    ; preds = %entry
  %chunk_limit = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, i32 4, !dbg !145
  %3 = bitcast i8** %chunk_limit to i64*, !dbg !145
  %4 = load i64, i64* %3, align 8, !dbg !145
  %sub.ptr.sub10 = sub i64 %4, %1, !dbg !145
  %cmp11 = icmp sgt i64 %sub.ptr.sub10, %sub.ptr.sub, !dbg !145
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !145

cond.true:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %sub.ptr.sub, !dbg !145
  %object_base = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, i32 2, !dbg !145
  store i8* %add.ptr, i8** %object_base, align 8, !dbg !145
  %next_free = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, i32 3, !dbg !145
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !145
  br label %cond.end, !dbg !145

cond.false:                                       ; preds = %land.lhs.true, %entry
  %stack18 = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, !dbg !145
  %add.ptr23 = getelementptr inbounds i8, i8* %2, i64 %sub.ptr.sub, !dbg !145
  tail call void @obstack_free(%struct.obstack* %stack18, i8* %add.ptr23) #7, !dbg !145
  br label %cond.end, !dbg !145

cond.end:                                         ; preds = %cond.false, %cond.true
  %entries_owned = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 9, !dbg !146
  %5 = load i8, i8* %entries_owned, align 8, !dbg !146
  %tobool = icmp eq i8 %5, 0, !dbg !148
  br i1 %tobool, label %if.end, label %if.then, !dbg !149

if.then:                                          ; preds = %cond.end
  %entries = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 1, !dbg !150
  %6 = bitcast %struct.ht_identifier*** %entries to i8**, !dbg !150
  %7 = load i8*, i8** %6, align 8, !dbg !150
  tail call void @free(i8* %7) #7, !dbg !151
  br label %if.end, !dbg !151

if.end:                                           ; preds = %cond.end, %if.then
  %8 = bitcast %struct.ht* %table to i8*, !dbg !152
  tail call void @free(i8* %8) #7, !dbg !153
  ret void, !dbg !154
}

declare dso_local void @obstack_free(%struct.obstack*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.ht_identifier* @ht_lookup(%struct.ht* %table, i8* %str, i64 %len, i32 %insert) local_unnamed_addr #2 !dbg !155 {
entry:
  call void @llvm.dbg.value(metadata %struct.ht* %table, metadata !159, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i8* %str, metadata !160, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i64 %len, metadata !161, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.value(metadata i32 %insert, metadata !162, metadata !DIExpression()), !dbg !163
  %call = tail call fastcc i32 @calc_hash(i8* %str, i64 %len) #8, !dbg !164
  %call1 = tail call %struct.ht_identifier* @ht_lookup_with_hash(%struct.ht* %table, i8* %str, i64 %len, i32 %call, i32 %insert) #8, !dbg !165
  ret %struct.ht_identifier* %call1, !dbg !166
}

; Function Attrs: nounwind uwtable
define dso_local %struct.ht_identifier* @ht_lookup_with_hash(%struct.ht* %table, i8* %str, i64 %len, i32 %hash, i32 %insert) local_unnamed_addr #2 !dbg !167 {
entry:
  call void @llvm.dbg.value(metadata %struct.ht* %table, metadata !171, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i8* %str, metadata !172, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i64 %len, metadata !173, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32 %hash, metadata !174, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32 %insert, metadata !175, metadata !DIExpression()), !dbg !184
  %nslots = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 4, !dbg !185
  %0 = load i32, i32* %nslots, align 8, !dbg !185
  call void @llvm.dbg.value(metadata i32 %0, metadata !178, metadata !DIExpression()), !dbg !184
  %sub = add i32 %0, -1, !dbg !186
  call void @llvm.dbg.value(metadata i32 %sub, metadata !179, metadata !DIExpression()), !dbg !184
  %and3 = and i32 %sub, %hash, !dbg !187
  call void @llvm.dbg.value(metadata i32 %and3, metadata !177, metadata !DIExpression()), !dbg !184
  %searches = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 7, !dbg !188
  %1 = load i32, i32* %searches, align 8, !dbg !189
  %inc = add i32 %1, 1, !dbg !189
  store i32 %inc, i32* %searches, align 8, !dbg !189
  %entries = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 1, !dbg !190
  %2 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8, !dbg !190
  %idxprom = zext i32 %and3 to i64, !dbg !191
  %arrayidx = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %2, i64 %idxprom, !dbg !191
  %3 = load %struct.ht_identifier*, %struct.ht_identifier** %arrayidx, align 8, !dbg !191
  call void @llvm.dbg.value(metadata %struct.ht_identifier* %3, metadata !180, metadata !DIExpression()), !dbg !184
  %magicptr = ptrtoint %struct.ht_identifier* %3 to i64, !dbg !192
  switch i64 %magicptr, label %if.else [
    i64 0, label %if.end56
    i64 -1, label %if.end17
  ], !dbg !192

if.else:                                          ; preds = %entry
  %hash_value = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %3, i64 0, i32 2, !dbg !193
  %4 = load i32, i32* %hash_value, align 4, !dbg !193
  %cmp8 = icmp eq i32 %4, %hash, !dbg !198
  br i1 %cmp8, label %land.lhs.true, label %if.end17, !dbg !199

land.lhs.true:                                    ; preds = %if.else
  %len10 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %3, i64 0, i32 1, !dbg !200
  %5 = load i32, i32* %len10, align 8, !dbg !200
  %conv11 = trunc i64 %len to i32, !dbg !201
  %cmp12 = icmp eq i32 %5, %conv11, !dbg !202
  br i1 %cmp12, label %land.lhs.true14, label %if.end17, !dbg !203

land.lhs.true14:                                  ; preds = %land.lhs.true
  %str15 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %3, i64 0, i32 0, !dbg !204
  %6 = load i8*, i8** %str15, align 8, !dbg !204
  %call = tail call i32 @memcmp(i8* %6, i8* %str, i64 %len) #9, !dbg !205
  %tobool = icmp eq i32 %call, 0, !dbg !205
  br i1 %tobool, label %cleanup, label %if.end17, !dbg !206

if.end17:                                         ; preds = %land.lhs.true14, %if.else, %land.lhs.true, %entry
  %deleted_index.0 = phi i32 [ %and3, %entry ], [ %0, %land.lhs.true14 ], [ %0, %land.lhs.true ], [ %0, %if.else ], !dbg !184
  call void @llvm.dbg.value(metadata i32 %deleted_index.0, metadata !178, metadata !DIExpression()), !dbg !184
  %mul = mul i32 %hash, 17, !dbg !207
  %and194 = and i32 %mul, %sub, !dbg !208
  %7 = or i32 %and194, 1, !dbg !209
  call void @llvm.dbg.value(metadata i32 %7, metadata !176, metadata !DIExpression()), !dbg !184
  %collisions = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 8, !dbg !210
  %conv46 = trunc i64 %len to i32, !dbg !214
  %.pre = load i32, i32* %collisions, align 4, !dbg !217
  br label %for.cond, !dbg !218

for.cond:                                         ; preds = %if.end55, %if.end17
  %8 = phi i32 [ %.pre, %if.end17 ], [ %inc21, %if.end55 ], !dbg !217
  %index.0 = phi i32 [ %and3, %if.end17 ], [ %and235, %if.end55 ], !dbg !184
  %deleted_index.1 = phi i32 [ %deleted_index.0, %if.end17 ], [ %deleted_index.3, %if.end55 ], !dbg !219
  call void @llvm.dbg.value(metadata i32 %deleted_index.1, metadata !178, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32 %index.0, metadata !177, metadata !DIExpression()), !dbg !184
  %inc21 = add i32 %8, 1, !dbg !217
  store i32 %inc21, i32* %collisions, align 4, !dbg !217
  %add = add i32 %index.0, %7, !dbg !220
  %and235 = and i32 %add, %sub, !dbg !221
  call void @llvm.dbg.value(metadata i32 %and235, metadata !177, metadata !DIExpression()), !dbg !184
  %idxprom26 = zext i32 %and235 to i64, !dbg !222
  %arrayidx27 = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %2, i64 %idxprom26, !dbg !222
  %9 = load %struct.ht_identifier*, %struct.ht_identifier** %arrayidx27, align 8, !dbg !222
  call void @llvm.dbg.value(metadata %struct.ht_identifier* %9, metadata !180, metadata !DIExpression()), !dbg !184
  %magicptr1 = ptrtoint %struct.ht_identifier* %9 to i64, !dbg !223
  switch i64 %magicptr1, label %if.else40 [
    i64 0, label %if.end56.loopexit
    i64 -1, label %if.then34
  ], !dbg !223

if.then34:                                        ; preds = %for.cond
  %cmp36 = icmp eq i32 %deleted_index.1, %0, !dbg !224
  %spec.select = select i1 %cmp36, i32 %deleted_index.1, i32 %and235, !dbg !227
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !178, metadata !DIExpression()), !dbg !184
  br label %if.end55, !dbg !228

if.else40:                                        ; preds = %for.cond
  %hash_value41 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %9, i64 0, i32 2, !dbg !229
  %10 = load i32, i32* %hash_value41, align 4, !dbg !229
  %cmp42 = icmp eq i32 %10, %hash, !dbg !230
  br i1 %cmp42, label %land.lhs.true44, label %if.end55, !dbg !231

land.lhs.true44:                                  ; preds = %if.else40
  %len45 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %9, i64 0, i32 1, !dbg !232
  %11 = load i32, i32* %len45, align 8, !dbg !232
  %cmp47 = icmp eq i32 %11, %conv46, !dbg !233
  br i1 %cmp47, label %land.lhs.true49, label %if.end55, !dbg !234

land.lhs.true49:                                  ; preds = %land.lhs.true44
  %str50 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %9, i64 0, i32 0, !dbg !235
  %12 = load i8*, i8** %str50, align 8, !dbg !235
  %call51 = tail call i32 @memcmp(i8* %12, i8* %str, i64 %len) #9, !dbg !236
  %tobool52 = icmp eq i32 %call51, 0, !dbg !236
  br i1 %tobool52, label %cleanup.loopexit, label %if.end55, !dbg !237

if.end55:                                         ; preds = %land.lhs.true49, %if.else40, %land.lhs.true44, %if.then34
  %deleted_index.3 = phi i32 [ %spec.select, %if.then34 ], [ %deleted_index.1, %land.lhs.true49 ], [ %deleted_index.1, %land.lhs.true44 ], [ %deleted_index.1, %if.else40 ], !dbg !219
  call void @llvm.dbg.value(metadata i32 %deleted_index.3, metadata !178, metadata !DIExpression()), !dbg !184
  br label %for.cond, !dbg !238, !llvm.loop !239

if.end56.loopexit:                                ; preds = %for.cond
  %deleted_index.1.lcssa = phi i32 [ %deleted_index.1, %for.cond ], !dbg !219
  %and235.lcssa = phi i32 [ %and235, %for.cond ], !dbg !221
  call void @llvm.dbg.value(metadata i32 %deleted_index.1.lcssa, metadata !178, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32 %deleted_index.1.lcssa, metadata !178, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32 %deleted_index.1.lcssa, metadata !178, metadata !DIExpression()), !dbg !184
  br label %if.end56, !dbg !242

if.end56:                                         ; preds = %if.end56.loopexit, %entry
  %index.1 = phi i32 [ %and3, %entry ], [ %and235.lcssa, %if.end56.loopexit ], !dbg !184
  %deleted_index.4 = phi i32 [ %0, %entry ], [ %deleted_index.1.lcssa, %if.end56.loopexit ], !dbg !184
  call void @llvm.dbg.value(metadata i32 %deleted_index.4, metadata !178, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32 %index.1, metadata !177, metadata !DIExpression()), !dbg !184
  %cmp57 = icmp eq i32 %insert, 0, !dbg !242
  br i1 %cmp57, label %cleanup, label %if.end60, !dbg !244

if.end60:                                         ; preds = %if.end56
  %cmp62 = icmp eq i32 %deleted_index.4, %0, !dbg !245
  %spec.select2 = select i1 %cmp62, i32 %index.1, i32 %deleted_index.4, !dbg !247
  call void @llvm.dbg.value(metadata i32 %spec.select2, metadata !177, metadata !DIExpression()), !dbg !184
  %alloc_node = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 2, !dbg !248
  %13 = load %struct.ht_identifier* (%struct.ht*)*, %struct.ht_identifier* (%struct.ht*)** %alloc_node, align 8, !dbg !248
  %call66 = tail call %struct.ht_identifier* %13(%struct.ht* %table) #7, !dbg !249
  call void @llvm.dbg.value(metadata %struct.ht_identifier* %call66, metadata !180, metadata !DIExpression()), !dbg !184
  %14 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8, !dbg !250
  %idxprom68 = zext i32 %spec.select2 to i64, !dbg !251
  %arrayidx69 = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %14, i64 %idxprom68, !dbg !251
  store %struct.ht_identifier* %call66, %struct.ht_identifier** %arrayidx69, align 8, !dbg !252
  %conv70 = trunc i64 %len to i32, !dbg !253
  %len71 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %call66, i64 0, i32 1, !dbg !254
  store i32 %conv70, i32* %len71, align 8, !dbg !255
  %hash_value72 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %call66, i64 0, i32 2, !dbg !256
  store i32 %hash, i32* %hash_value72, align 4, !dbg !257
  %alloc_subobject = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 3, !dbg !258
  %15 = load i8* (i64)*, i8* (i64)** %alloc_subobject, align 8, !dbg !258
  %tobool73 = icmp eq i8* (i64)* %15, null, !dbg !259
  br i1 %tobool73, label %if.else81, label %if.then74, !dbg !260

if.then74:                                        ; preds = %if.end60
  %add76 = add i64 %len, 1, !dbg !261
  %call77 = tail call i8* %15(i64 %add76) #7, !dbg !262
  call void @llvm.dbg.value(metadata i8* %call77, metadata !181, metadata !DIExpression()), !dbg !263
  %call78 = tail call i8* @memcpy(i8* %call77, i8* %str, i64 %len) #7, !dbg !264
  %arrayidx79 = getelementptr inbounds i8, i8* %call77, i64 %len, !dbg !265
  store i8 0, i8* %arrayidx79, align 1, !dbg !266
  %str80 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %call66, i64 0, i32 0, !dbg !267
  store i8* %call77, i8** %str80, align 8, !dbg !268
  br label %if.end162, !dbg !269

if.else81:                                        ; preds = %if.end60
  %temp = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, i32 5, !dbg !270
  store i64 %len, i64* %temp, align 8, !dbg !270
  %next_free = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, i32 3, !dbg !270
  %16 = load i8*, i8** %next_free, align 8, !dbg !270
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %len, !dbg !270
  %add.ptr85 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !270
  %chunk_limit = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, i32 4, !dbg !270
  %17 = load i8*, i8** %chunk_limit, align 8, !dbg !270
  %cmp87 = icmp ugt i8* %add.ptr85, %17, !dbg !270
  br i1 %cmp87, label %cond.true, label %cond.end, !dbg !270

cond.true:                                        ; preds = %if.else81
  %stack89 = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, !dbg !270
  %conv93 = add i32 %conv70, 1, !dbg !270
  tail call void @_obstack_newchunk(%struct.obstack* %stack89, i32 %conv93) #7, !dbg !270
  %.pre9 = load i8*, i8** %next_free, align 8, !dbg !270
  %.pre10 = load i64, i64* %temp, align 8, !dbg !270
  br label %cond.end, !dbg !270

cond.end:                                         ; preds = %if.else81, %cond.true
  %18 = phi i64 [ %len, %if.else81 ], [ %.pre10, %cond.true ], !dbg !270
  %19 = phi i8* [ %16, %if.else81 ], [ %.pre9, %cond.true ], !dbg !270
  %call98 = tail call i8* @memcpy(i8* %19, i8* %str, i64 %18) #7, !dbg !270
  %20 = load i64, i64* %temp, align 8, !dbg !270
  %21 = load i8*, i8** %next_free, align 8, !dbg !270
  %add.ptr103 = getelementptr inbounds i8, i8* %21, i64 %20, !dbg !270
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr103, i64 1, !dbg !270
  store i8* %incdec.ptr, i8** %next_free, align 8, !dbg !270
  store i8 0, i8* %add.ptr103, align 1, !dbg !270
  %22 = load i8*, i8** %next_free, align 8, !dbg !270
  %object_base = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, i32 2, !dbg !270
  %23 = load i8*, i8** %object_base, align 8, !dbg !270
  %cmp109 = icmp eq i8* %22, %23, !dbg !270
  %24 = ptrtoint i8* %23 to i64, !dbg !270
  %25 = ptrtoint i8* %22 to i64, !dbg !270
  br i1 %cmp109, label %cond.true111, label %cond.end114, !dbg !270

cond.true111:                                     ; preds = %cond.end
  %maybe_empty_object = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, i32 10, !dbg !270
  %bf.load = load i8, i8* %maybe_empty_object, align 8, !dbg !270
  %bf.set = or i8 %bf.load, 2, !dbg !270
  store i8 %bf.set, i8* %maybe_empty_object, align 8, !dbg !270
  br label %cond.end114, !dbg !270

cond.end114:                                      ; preds = %cond.end, %cond.true111
  %26 = bitcast i8** %object_base to i64*, !dbg !270
  store i64 %24, i64* %temp, align 8, !dbg !270
  %alignment_mask = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, i32 6, !dbg !270
  %27 = load i32, i32* %alignment_mask, align 8, !dbg !270
  %conv125 = sext i32 %27 to i64, !dbg !270
  %add126 = add nsw i64 %25, %conv125, !dbg !270
  %neg = xor i32 %27, -1, !dbg !270
  %conv129 = sext i32 %neg to i64, !dbg !270
  %and130 = and i64 %add126, %conv129, !dbg !270
  %28 = inttoptr i64 %and130 to i8*, !dbg !270
  store i8* %28, i8** %next_free, align 8, !dbg !270
  %chunk = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, i32 1, !dbg !270
  %29 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !270
  %30 = load i64, i64* %29, align 8, !dbg !270
  %sub.ptr.sub137 = sub i64 %and130, %30, !dbg !270
  %31 = bitcast i8** %chunk_limit to i64*, !dbg !270
  %32 = load i64, i64* %31, align 8, !dbg !270
  %sub.ptr.sub144 = sub i64 %32, %30, !dbg !270
  %cmp145 = icmp sgt i64 %sub.ptr.sub137, %sub.ptr.sub144, !dbg !270
  br i1 %cmp145, label %cond.true147, label %cond.end153, !dbg !270

cond.true147:                                     ; preds = %cond.end114
  %33 = bitcast i8** %next_free to i64*, !dbg !270
  store i64 %32, i64* %33, align 8, !dbg !270
  br label %cond.end153, !dbg !270

cond.end153:                                      ; preds = %cond.end114, %cond.true147
  %34 = phi i64 [ %and130, %cond.end114 ], [ %32, %cond.true147 ], !dbg !270
  store i64 %34, i64* %26, align 8, !dbg !270
  %35 = bitcast %struct.ht_identifier* %call66 to i64*, !dbg !271
  store i64 %24, i64* %35, align 8, !dbg !271
  br label %if.end162

if.end162:                                        ; preds = %cond.end153, %if.then74
  %nelements = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 5, !dbg !272
  %36 = load i32, i32* %nelements, align 4, !dbg !274
  %inc163 = add i32 %36, 1, !dbg !274
  store i32 %inc163, i32* %nelements, align 4, !dbg !274
  %mul164 = shl i32 %inc163, 2, !dbg !275
  %37 = load i32, i32* %nslots, align 8, !dbg !276
  %mul166 = mul i32 %37, 3, !dbg !277
  %cmp167 = icmp ult i32 %mul164, %mul166, !dbg !278
  br i1 %cmp167, label %cleanup, label %if.then169, !dbg !279

if.then169:                                       ; preds = %if.end162
  tail call fastcc void @ht_expand(%struct.ht* %table) #8, !dbg !280
  br label %cleanup, !dbg !280

cleanup.loopexit:                                 ; preds = %land.lhs.true49
  %.lcssa14 = phi %struct.ht_identifier* [ %9, %land.lhs.true49 ], !dbg !222
  br label %cleanup, !dbg !281

cleanup:                                          ; preds = %cleanup.loopexit, %land.lhs.true14, %if.end162, %if.then169, %if.end56
  %retval.0 = phi %struct.ht_identifier* [ %3, %land.lhs.true14 ], [ null, %if.end56 ], [ %call66, %if.then169 ], [ %call66, %if.end162 ], [ %.lcssa14, %cleanup.loopexit ], !dbg !184
  ret %struct.ht_identifier* %retval.0, !dbg !281
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @calc_hash(i8* %str, i64 %len) unnamed_addr #2 !dbg !282 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !286, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 %len, metadata !287, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 %len, metadata !288, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32 0, metadata !289, metadata !DIExpression()), !dbg !290
  br label %while.cond, !dbg !291

while.cond:                                       ; preds = %while.body, %entry
  %n.0 = phi i64 [ %len, %entry ], [ %dec, %while.body ], !dbg !290
  %r.0 = phi i32 [ 0, %entry ], [ %add, %while.body ], !dbg !290
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %while.body ]
  call void @llvm.dbg.value(metadata i8* %str.addr.0, metadata !286, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 %n.0, metadata !288, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i64 %n.0, metadata !288, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !290
  %tobool = icmp eq i64 %n.0, 0, !dbg !291
  br i1 %tobool, label %while.end, label %while.body, !dbg !291

while.body:                                       ; preds = %while.cond
  %dec = add i64 %n.0, -1, !dbg !292
  call void @llvm.dbg.value(metadata i64 %dec, metadata !288, metadata !DIExpression()), !dbg !290
  %mul = mul i32 %r.0, 67, !dbg !293
  %incdec.ptr = getelementptr inbounds i8, i8* %str.addr.0, i64 1, !dbg !293
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !286, metadata !DIExpression()), !dbg !290
  %0 = load i8, i8* %str.addr.0, align 1, !dbg !293
  %conv = zext i8 %0 to i32, !dbg !293
  %sub = add nsw i32 %conv, -113, !dbg !293
  %add = add i32 %mul, %sub, !dbg !293
  call void @llvm.dbg.value(metadata i32 %add, metadata !289, metadata !DIExpression()), !dbg !290
  br label %while.cond, !dbg !291, !llvm.loop !294

while.end:                                        ; preds = %while.cond
  %r.0.lcssa = phi i32 [ %r.0, %while.cond ], !dbg !290
  call void @llvm.dbg.value(metadata i32 %r.0.lcssa, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32 %r.0.lcssa, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32 %r.0.lcssa, metadata !289, metadata !DIExpression()), !dbg !290
  %1 = trunc i64 %len to i32, !dbg !295
  %conv3 = add i32 %r.0.lcssa, %1, !dbg !295
  ret i32 %conv3, !dbg !296
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

declare dso_local void @_obstack_newchunk(%struct.obstack*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ht_expand(%struct.ht* %table) unnamed_addr #2 !dbg !297 {
entry:
  call void @llvm.dbg.value(metadata %struct.ht* %table, metadata !299, metadata !DIExpression()), !dbg !310
  %nslots = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 4, !dbg !311
  %0 = load i32, i32* %nslots, align 8, !dbg !311
  %mul = shl i32 %0, 1, !dbg !312
  call void @llvm.dbg.value(metadata i32 %mul, metadata !303, metadata !DIExpression()), !dbg !310
  %conv = zext i32 %mul to i64, !dbg !313
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #7, !dbg !313
  %1 = bitcast i8* %call to %struct.ht_identifier**, !dbg !313
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %1, metadata !300, metadata !DIExpression()), !dbg !310
  %sub = add i32 %mul, -1, !dbg !314
  call void @llvm.dbg.value(metadata i32 %sub, metadata !304, metadata !DIExpression()), !dbg !310
  %entries = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 1, !dbg !315
  %2 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8, !dbg !315
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %2, metadata !301, metadata !DIExpression()), !dbg !310
  %3 = load i32, i32* %nslots, align 8, !dbg !316
  %idx.ext = zext i32 %3 to i64, !dbg !317
  %add.ptr = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %2, i64 %idx.ext, !dbg !317
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %add.ptr, metadata !302, metadata !DIExpression()), !dbg !310
  br label %do.body, !dbg !318

do.body:                                          ; preds = %do.cond15, %entry
  %p.0 = phi %struct.ht_identifier** [ %2, %entry ], [ %incdec.ptr, %do.cond15 ], !dbg !310
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %p.0, metadata !301, metadata !DIExpression()), !dbg !310
  %4 = load %struct.ht_identifier*, %struct.ht_identifier** %p.0, align 8, !dbg !319
  %tobool = icmp eq %struct.ht_identifier* %4, null, !dbg !319
  %5 = ptrtoint %struct.ht_identifier* %4 to i64, !dbg !320
  br i1 %tobool, label %do.cond15, label %land.lhs.true, !dbg !320

land.lhs.true:                                    ; preds = %do.body
  %cmp = icmp eq %struct.ht_identifier* %4, inttoptr (i64 -1 to %struct.ht_identifier*), !dbg !321
  br i1 %cmp, label %do.cond15, label %if.then, !dbg !322

if.then:                                          ; preds = %land.lhs.true
  %hash_value = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %4, i64 0, i32 2, !dbg !323
  %6 = load i32, i32* %hash_value, align 4, !dbg !323
  call void @llvm.dbg.value(metadata i32 %6, metadata !308, metadata !DIExpression()), !dbg !324
  %and = and i32 %6, %sub, !dbg !325
  call void @llvm.dbg.value(metadata i32 %and, metadata !305, metadata !DIExpression()), !dbg !324
  %idxprom = zext i32 %and to i64, !dbg !326
  %arrayidx = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %1, i64 %idxprom, !dbg !326
  %7 = load %struct.ht_identifier*, %struct.ht_identifier** %arrayidx, align 8, !dbg !326
  %tobool3 = icmp eq %struct.ht_identifier* %7, null, !dbg !326
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !328

if.then4:                                         ; preds = %if.then
  %mul5 = mul i32 %6, 17, !dbg !329
  %and6 = and i32 %mul5, %sub, !dbg !331
  %or = or i32 %and6, 1, !dbg !332
  call void @llvm.dbg.value(metadata i32 %or, metadata !309, metadata !DIExpression()), !dbg !324
  br label %do.body7, !dbg !333

do.body7:                                         ; preds = %do.body7, %if.then4
  %index.0 = phi i32 [ %and, %if.then4 ], [ %and8, %do.body7 ], !dbg !324
  call void @llvm.dbg.value(metadata i32 %index.0, metadata !305, metadata !DIExpression()), !dbg !324
  %add = add i32 %index.0, %or, !dbg !334
  %and8 = and i32 %add, %sub, !dbg !336
  call void @llvm.dbg.value(metadata i32 %and8, metadata !305, metadata !DIExpression()), !dbg !324
  %idxprom9 = zext i32 %and8 to i64, !dbg !337
  %arrayidx10 = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %1, i64 %idxprom9, !dbg !337
  %8 = load %struct.ht_identifier*, %struct.ht_identifier** %arrayidx10, align 8, !dbg !337
  %tobool11 = icmp eq %struct.ht_identifier* %8, null, !dbg !338
  br i1 %tobool11, label %if.end.loopexit, label %do.body7, !dbg !338, !llvm.loop !339

if.end.loopexit:                                  ; preds = %do.body7
  %idxprom9.lcssa = phi i64 [ %idxprom9, %do.body7 ], !dbg !337
  br label %if.end, !dbg !341

if.end:                                           ; preds = %if.end.loopexit, %if.then
  %idxprom12.pre-phi = phi i64 [ %idxprom9.lcssa, %if.end.loopexit ], [ %idxprom, %if.then ], !dbg !342
  %arrayidx13 = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %1, i64 %idxprom12.pre-phi, !dbg !342
  %9 = bitcast %struct.ht_identifier** %arrayidx13 to i64*, !dbg !343
  store i64 %5, i64* %9, align 8, !dbg !343
  br label %do.cond15, !dbg !344

do.cond15:                                        ; preds = %land.lhs.true, %do.body, %if.end
  %incdec.ptr = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %p.0, i64 1, !dbg !345
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %incdec.ptr, metadata !301, metadata !DIExpression()), !dbg !310
  %cmp16 = icmp ult %struct.ht_identifier** %incdec.ptr, %add.ptr, !dbg !346
  br i1 %cmp16, label %do.body, label %do.end18, !dbg !347, !llvm.loop !348

do.end18:                                         ; preds = %do.cond15
  %entries_owned = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 9, !dbg !350
  %10 = load i8, i8* %entries_owned, align 8, !dbg !350
  %tobool19 = icmp eq i8 %10, 0, !dbg !352
  br i1 %tobool19, label %do.end18.if.end22_crit_edge, label %if.then20, !dbg !353

do.end18.if.end22_crit_edge:                      ; preds = %do.end18
  %.pre = bitcast %struct.ht_identifier*** %entries to i8**, !dbg !354
  br label %if.end22, !dbg !353

if.then20:                                        ; preds = %do.end18
  %11 = bitcast %struct.ht_identifier*** %entries to i8**, !dbg !355
  %12 = load i8*, i8** %11, align 8, !dbg !355
  tail call void @free(i8* %12) #7, !dbg !356
  br label %if.end22, !dbg !356

if.end22:                                         ; preds = %do.end18.if.end22_crit_edge, %if.then20
  %.pre-phi = phi i8** [ %.pre, %do.end18.if.end22_crit_edge ], [ %11, %if.then20 ], !dbg !354
  store i8 1, i8* %entries_owned, align 8, !dbg !357
  store i8* %call, i8** %.pre-phi, align 8, !dbg !354
  store i32 %mul, i32* %nslots, align 8, !dbg !358
  ret void, !dbg !359
}

; Function Attrs: nounwind uwtable
define dso_local void @ht_forall(%struct.ht* %table, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)* %cb, i8* %v) local_unnamed_addr #2 !dbg !360 {
entry:
  call void @llvm.dbg.value(metadata %struct.ht* %table, metadata !370, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)* %cb, metadata !371, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.value(metadata i8* %v, metadata !372, metadata !DIExpression()), !dbg !375
  %entries = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 1, !dbg !376
  %0 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8, !dbg !376
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %0, metadata !373, metadata !DIExpression()), !dbg !375
  %nslots = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 4, !dbg !377
  %1 = load i32, i32* %nslots, align 8, !dbg !377
  %idx.ext = zext i32 %1 to i64, !dbg !378
  %add.ptr = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %0, i64 %idx.ext, !dbg !378
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %add.ptr, metadata !374, metadata !DIExpression()), !dbg !375
  %pfile = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 6, !dbg !379
  br label %do.body, !dbg !383

do.body:                                          ; preds = %do.cond, %entry
  %p.0 = phi %struct.ht_identifier** [ %0, %entry ], [ %incdec.ptr, %do.cond ], !dbg !375
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %p.0, metadata !373, metadata !DIExpression()), !dbg !375
  %2 = load %struct.ht_identifier*, %struct.ht_identifier** %p.0, align 8, !dbg !384
  %tobool = icmp eq %struct.ht_identifier* %2, null, !dbg !384
  br i1 %tobool, label %do.cond, label %land.lhs.true, !dbg !385

land.lhs.true:                                    ; preds = %do.body
  %cmp = icmp eq %struct.ht_identifier* %2, inttoptr (i64 -1 to %struct.ht_identifier*), !dbg !386
  br i1 %cmp, label %do.cond, label %if.then, !dbg !387

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8, !dbg !379
  %call = tail call i32 %cb(%struct.cpp_reader* %3, %struct.ht_identifier* nonnull %2, i8* %v) #7, !dbg !388
  %cmp1 = icmp eq i32 %call, 0, !dbg !389
  br i1 %cmp1, label %do.end, label %do.cond, !dbg !390

do.cond:                                          ; preds = %land.lhs.true, %do.body, %if.then
  %incdec.ptr = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %p.0, i64 1, !dbg !391
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %incdec.ptr, metadata !373, metadata !DIExpression()), !dbg !375
  %cmp4 = icmp ult %struct.ht_identifier** %incdec.ptr, %add.ptr, !dbg !392
  br i1 %cmp4, label %do.body, label %do.end, !dbg !393, !llvm.loop !394

do.end:                                           ; preds = %if.then, %do.cond
  ret void, !dbg !396
}

; Function Attrs: nounwind uwtable
define dso_local void @ht_purge(%struct.ht* %table, i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)* %cb, i8* %v) local_unnamed_addr #2 !dbg !397 {
entry:
  call void @llvm.dbg.value(metadata %struct.ht* %table, metadata !399, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i32 (%struct.cpp_reader*, %struct.ht_identifier*, i8*)* %cb, metadata !400, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.value(metadata i8* %v, metadata !401, metadata !DIExpression()), !dbg !404
  %entries = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 1, !dbg !405
  %0 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8, !dbg !405
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %0, metadata !402, metadata !DIExpression()), !dbg !404
  %nslots = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 4, !dbg !406
  %1 = load i32, i32* %nslots, align 8, !dbg !406
  %idx.ext = zext i32 %1 to i64, !dbg !407
  %add.ptr = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %0, i64 %idx.ext, !dbg !407
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %add.ptr, metadata !403, metadata !DIExpression()), !dbg !404
  %pfile = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 6, !dbg !408
  br label %do.body, !dbg !412

do.body:                                          ; preds = %do.cond, %entry
  %p.0 = phi %struct.ht_identifier** [ %0, %entry ], [ %incdec.ptr, %do.cond ], !dbg !404
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %p.0, metadata !402, metadata !DIExpression()), !dbg !404
  %2 = load %struct.ht_identifier*, %struct.ht_identifier** %p.0, align 8, !dbg !413
  %tobool = icmp eq %struct.ht_identifier* %2, null, !dbg !413
  br i1 %tobool, label %do.cond, label %land.lhs.true, !dbg !414

land.lhs.true:                                    ; preds = %do.body
  %cmp = icmp eq %struct.ht_identifier* %2, inttoptr (i64 -1 to %struct.ht_identifier*), !dbg !415
  br i1 %cmp, label %do.cond, label %if.then, !dbg !416

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.cpp_reader*, %struct.cpp_reader** %pfile, align 8, !dbg !417
  %call = tail call i32 %cb(%struct.cpp_reader* %3, %struct.ht_identifier* nonnull %2, i8* %v) #7, !dbg !418
  %tobool1 = icmp eq i32 %call, 0, !dbg !418
  br i1 %tobool1, label %do.cond, label %if.then2, !dbg !419

if.then2:                                         ; preds = %if.then
  store %struct.ht_identifier* inttoptr (i64 -1 to %struct.ht_identifier*), %struct.ht_identifier** %p.0, align 8, !dbg !420
  br label %do.cond, !dbg !421

do.cond:                                          ; preds = %if.then, %land.lhs.true, %do.body, %if.then2
  %incdec.ptr = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %p.0, i64 1, !dbg !422
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %incdec.ptr, metadata !402, metadata !DIExpression()), !dbg !404
  %cmp4 = icmp ult %struct.ht_identifier** %incdec.ptr, %add.ptr, !dbg !423
  br i1 %cmp4, label %do.body, label %do.end, !dbg !424, !llvm.loop !425

do.end:                                           ; preds = %do.cond
  ret void, !dbg !427
}

; Function Attrs: nounwind uwtable
define dso_local void @ht_load(%struct.ht* %ht, %struct.ht_identifier** %entries, i32 %nslots, i32 %nelements, i8 zeroext %own) local_unnamed_addr #2 !dbg !428 {
entry:
  call void @llvm.dbg.value(metadata %struct.ht* %ht, metadata !432, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %entries, metadata !433, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 %nslots, metadata !434, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 %nelements, metadata !435, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i8 %own, metadata !436, metadata !DIExpression()), !dbg !437
  %entries_owned = getelementptr inbounds %struct.ht, %struct.ht* %ht, i64 0, i32 9, !dbg !438
  %0 = load i8, i8* %entries_owned, align 8, !dbg !438
  %tobool = icmp eq i8 %0, 0, !dbg !440
  br i1 %tobool, label %if.end, label %if.then, !dbg !441

if.then:                                          ; preds = %entry
  %entries1 = getelementptr inbounds %struct.ht, %struct.ht* %ht, i64 0, i32 1, !dbg !442
  %1 = bitcast %struct.ht_identifier*** %entries1 to i8**, !dbg !442
  %2 = load i8*, i8** %1, align 8, !dbg !442
  tail call void @free(i8* %2) #7, !dbg !443
  br label %if.end, !dbg !443

if.end:                                           ; preds = %entry, %if.then
  %entries2 = getelementptr inbounds %struct.ht, %struct.ht* %ht, i64 0, i32 1, !dbg !444
  store %struct.ht_identifier** %entries, %struct.ht_identifier*** %entries2, align 8, !dbg !445
  %nslots3 = getelementptr inbounds %struct.ht, %struct.ht* %ht, i64 0, i32 4, !dbg !446
  store i32 %nslots, i32* %nslots3, align 8, !dbg !447
  %nelements4 = getelementptr inbounds %struct.ht, %struct.ht* %ht, i64 0, i32 5, !dbg !448
  store i32 %nelements, i32* %nelements4, align 4, !dbg !449
  store i8 %own, i8* %entries_owned, align 8, !dbg !450
  ret void, !dbg !451
}

; Function Attrs: nounwind uwtable
define dso_local void @ht_dump_statistics(%struct.ht* %table) local_unnamed_addr #2 !dbg !452 {
entry:
  call void @llvm.dbg.value(metadata %struct.ht* %table, metadata !454, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 0, metadata !461, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 0, metadata !456, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !462, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 0, metadata !460, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 0, metadata !459, metadata !DIExpression()), !dbg !472
  %entries = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 1, !dbg !473
  %0 = load %struct.ht_identifier**, %struct.ht_identifier*** %entries, align 8, !dbg !473
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %0, metadata !466, metadata !DIExpression()), !dbg !472
  %nslots = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 4, !dbg !474
  %1 = load i32, i32* %nslots, align 8, !dbg !474
  %idx.ext = zext i32 %1 to i64, !dbg !475
  %add.ptr = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %0, i64 %idx.ext, !dbg !475
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %add.ptr, metadata !467, metadata !DIExpression()), !dbg !472
  br label %do.body, !dbg !476

do.body:                                          ; preds = %do.cond, %entry
  %total_bytes.0 = phi i64 [ 0, %entry ], [ %total_bytes.2, %do.cond ], !dbg !477
  %longest.0 = phi i64 [ 0, %entry ], [ %longest.3, %do.cond ], !dbg !478
  %deleted.0 = phi i64 [ 0, %entry ], [ %deleted.1, %do.cond ], !dbg !472
  %nids.0 = phi i64 [ 0, %entry ], [ %nids.2, %do.cond ], !dbg !479
  %sum_of_squares.0 = phi double [ 0.000000e+00, %entry ], [ %sum_of_squares.2, %do.cond ], !dbg !480
  %p.0 = phi %struct.ht_identifier** [ %0, %entry ], [ %incdec.ptr, %do.cond ], !dbg !472
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %p.0, metadata !466, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata double %sum_of_squares.0, metadata !462, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %nids.0, metadata !456, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %deleted.0, metadata !461, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %longest.0, metadata !460, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %total_bytes.0, metadata !459, metadata !DIExpression()), !dbg !472
  %2 = load %struct.ht_identifier*, %struct.ht_identifier** %p.0, align 8, !dbg !481
  %cmp = icmp eq %struct.ht_identifier* %2, inttoptr (i64 -1 to %struct.ht_identifier*), !dbg !482
  br i1 %cmp, label %if.then, label %if.else, !dbg !483

if.then:                                          ; preds = %do.body
  %inc = add i64 %deleted.0, 1, !dbg !484
  call void @llvm.dbg.value(metadata i64 %inc, metadata !461, metadata !DIExpression()), !dbg !472
  br label %do.cond, !dbg !484

if.else:                                          ; preds = %do.body
  %tobool = icmp eq %struct.ht_identifier* %2, null, !dbg !485
  br i1 %tobool, label %do.cond, label %if.then1, !dbg !486

if.then1:                                         ; preds = %if.else
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %2, i64 0, i32 1, !dbg !487
  %3 = load i32, i32* %len, align 8, !dbg !487
  %conv = zext i32 %3 to i64, !dbg !487
  call void @llvm.dbg.value(metadata i64 %conv, metadata !468, metadata !DIExpression()), !dbg !488
  %add = add i64 %total_bytes.0, %conv, !dbg !489
  call void @llvm.dbg.value(metadata i64 %add, metadata !459, metadata !DIExpression()), !dbg !472
  %conv2 = uitofp i32 %3 to double, !dbg !490
  %mul = fmul double %conv2, %conv2, !dbg !491
  %add4 = fadd double %sum_of_squares.0, %mul, !dbg !492
  call void @llvm.dbg.value(metadata double %add4, metadata !462, metadata !DIExpression()), !dbg !472
  %cmp5 = icmp ult i64 %longest.0, %conv, !dbg !493
  %spec.select = select i1 %cmp5, i64 %conv, i64 %longest.0, !dbg !495
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !460, metadata !DIExpression()), !dbg !472
  %inc8 = add i64 %nids.0, 1, !dbg !496
  call void @llvm.dbg.value(metadata i64 %inc8, metadata !456, metadata !DIExpression()), !dbg !472
  br label %do.cond, !dbg !497

do.cond:                                          ; preds = %if.else, %if.then, %if.then1
  %total_bytes.2 = phi i64 [ %total_bytes.0, %if.then ], [ %add, %if.then1 ], [ %total_bytes.0, %if.else ], !dbg !472
  %longest.3 = phi i64 [ %longest.0, %if.then ], [ %spec.select, %if.then1 ], [ %longest.0, %if.else ], !dbg !472
  %deleted.1 = phi i64 [ %inc, %if.then ], [ %deleted.0, %if.then1 ], [ %deleted.0, %if.else ], !dbg !472
  %nids.2 = phi i64 [ %nids.0, %if.then ], [ %inc8, %if.then1 ], [ %nids.0, %if.else ], !dbg !472
  %sum_of_squares.2 = phi double [ %sum_of_squares.0, %if.then ], [ %add4, %if.then1 ], [ %sum_of_squares.0, %if.else ], !dbg !472
  call void @llvm.dbg.value(metadata double %sum_of_squares.2, metadata !462, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %nids.2, metadata !456, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %deleted.1, metadata !461, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %longest.3, metadata !460, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %total_bytes.2, metadata !459, metadata !DIExpression()), !dbg !472
  %incdec.ptr = getelementptr inbounds %struct.ht_identifier*, %struct.ht_identifier** %p.0, i64 1, !dbg !498
  call void @llvm.dbg.value(metadata %struct.ht_identifier** %incdec.ptr, metadata !466, metadata !DIExpression()), !dbg !472
  %cmp11 = icmp ult %struct.ht_identifier** %incdec.ptr, %add.ptr, !dbg !499
  br i1 %cmp11, label %do.body, label %do.end, !dbg !500, !llvm.loop !501

do.end:                                           ; preds = %do.cond
  %total_bytes.2.lcssa = phi i64 [ %total_bytes.2, %do.cond ], !dbg !472
  %longest.3.lcssa = phi i64 [ %longest.3, %do.cond ], !dbg !472
  %deleted.1.lcssa = phi i64 [ %deleted.1, %do.cond ], !dbg !472
  %nids.2.lcssa = phi i64 [ %nids.2, %do.cond ], !dbg !472
  %sum_of_squares.2.lcssa = phi double [ %sum_of_squares.2, %do.cond ], !dbg !472
  call void @llvm.dbg.value(metadata i64 %total_bytes.2.lcssa, metadata !459, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %longest.3.lcssa, metadata !460, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %deleted.1.lcssa, metadata !461, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %nids.2.lcssa, metadata !456, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata double %sum_of_squares.2.lcssa, metadata !462, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %total_bytes.2.lcssa, metadata !459, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %longest.3.lcssa, metadata !460, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %deleted.1.lcssa, metadata !461, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %nids.2.lcssa, metadata !456, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata double %sum_of_squares.2.lcssa, metadata !462, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %total_bytes.2.lcssa, metadata !459, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %longest.3.lcssa, metadata !460, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %deleted.1.lcssa, metadata !461, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata i64 %nids.2.lcssa, metadata !456, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.value(metadata double %sum_of_squares.2.lcssa, metadata !462, metadata !DIExpression()), !dbg !472
  %nelements = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 5, !dbg !503
  %4 = load i32, i32* %nelements, align 4, !dbg !503
  %conv13 = zext i32 %4 to i64, !dbg !504
  call void @llvm.dbg.value(metadata i64 %conv13, metadata !455, metadata !DIExpression()), !dbg !472
  %stack = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 0, !dbg !505
  %call = tail call i32 @_obstack_memory_used(%struct.obstack* %stack) #7, !dbg !505
  %conv14 = sext i32 %call to i64, !dbg !505
  %sub = sub i64 %conv14, %total_bytes.2.lcssa, !dbg !506
  call void @llvm.dbg.value(metadata i64 %sub, metadata !457, metadata !DIExpression()), !dbg !472
  %5 = load i32, i32* %nslots, align 8, !dbg !507
  %conv16 = zext i32 %5 to i64, !dbg !508
  %mul17 = shl nuw nsw i64 %conv16, 3, !dbg !509
  call void @llvm.dbg.value(metadata i64 %mul17, metadata !458, metadata !DIExpression()), !dbg !472
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !510
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %conv13) #7, !dbg !511
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !512
  %conv19 = uitofp i64 %nids.2.lcssa to double, !dbg !513
  %mul20 = fmul double %conv19, 1.000000e+02, !dbg !514
  %conv21 = uitofp i32 %4 to double, !dbg !515
  %div = fdiv double %mul20, %conv21, !dbg !516
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %nids.2.lcssa, double %div) #7, !dbg !517
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !518
  %9 = load i32, i32* %nslots, align 8, !dbg !519
  %conv24 = zext i32 %9 to i64, !dbg !520
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %conv24) #7, !dbg !521
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !522
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %deleted.1.lcssa) #7, !dbg !523
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !524
  %cmp27 = icmp ult i64 %total_bytes.2.lcssa, 10240, !dbg !525
  br i1 %cmp27, label %cond.end35, label %cond.false, !dbg !525

cond.false:                                       ; preds = %do.end
  %cmp29 = icmp ult i64 %total_bytes.2.lcssa, 10485760, !dbg !525
  br i1 %cmp29, label %cond.true31, label %cond.false33, !dbg !525

cond.true31:                                      ; preds = %cond.false
  %div32 = lshr i64 %total_bytes.2.lcssa, 10, !dbg !525
  br label %cond.end35, !dbg !525

cond.false33:                                     ; preds = %cond.false
  %div34 = lshr i64 %total_bytes.2.lcssa, 20, !dbg !525
  br label %cond.end35, !dbg !525

cond.end35:                                       ; preds = %cond.true31, %cond.false33, %do.end
  %cond36 = phi i64 [ %total_bytes.2.lcssa, %do.end ], [ %div32, %cond.true31 ], [ %div34, %cond.false33 ], !dbg !525
  br i1 %cmp27, label %cond.end44, label %cond.false40, !dbg !526

cond.false40:                                     ; preds = %cond.end35
  %cmp41 = icmp ult i64 %total_bytes.2.lcssa, 10485760, !dbg !526
  %cond43 = select i1 %cmp41, i32 107, i32 77, !dbg !526
  br label %cond.end44, !dbg !526

cond.end44:                                       ; preds = %cond.end35, %cond.false40
  %cond45 = phi i32 [ %cond43, %cond.false40 ], [ 32, %cond.end35 ], !dbg !526
  %cmp46 = icmp ult i64 %sub, 10240, !dbg !527
  br i1 %cmp46, label %cond.end58, label %cond.false49, !dbg !527

cond.false49:                                     ; preds = %cond.end44
  %cmp50 = icmp ult i64 %sub, 10485760, !dbg !527
  br i1 %cmp50, label %cond.true52, label %cond.false54, !dbg !527

cond.true52:                                      ; preds = %cond.false49
  %div53 = lshr i64 %sub, 10, !dbg !527
  br label %cond.end58, !dbg !527

cond.false54:                                     ; preds = %cond.false49
  %div55 = lshr i64 %sub, 20, !dbg !527
  br label %cond.end58, !dbg !527

cond.end58:                                       ; preds = %cond.true52, %cond.false54, %cond.end44
  %cond59 = phi i64 [ %sub, %cond.end44 ], [ %div53, %cond.true52 ], [ %div55, %cond.false54 ], !dbg !527
  br i1 %cmp46, label %cond.end67, label %cond.false63, !dbg !528

cond.false63:                                     ; preds = %cond.end58
  %cmp64 = icmp ult i64 %sub, 10485760, !dbg !528
  %cond66 = select i1 %cmp64, i32 107, i32 77, !dbg !528
  br label %cond.end67, !dbg !528

cond.end67:                                       ; preds = %cond.end58, %cond.false63
  %cond68 = phi i32 [ %cond66, %cond.false63 ], [ 32, %cond.end58 ], !dbg !528
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %cond36, i32 %cond45, i64 %cond59, i32 %cond68) #7, !dbg !529
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !530
  %cmp70 = icmp ult i32 %5, 1280, !dbg !531
  br i1 %cmp70, label %cond.end82, label %cond.false73, !dbg !531

cond.false73:                                     ; preds = %cond.end67
  %cmp74 = icmp ult i32 %5, 1310720, !dbg !531
  br i1 %cmp74, label %cond.true76, label %cond.false78, !dbg !531

cond.true76:                                      ; preds = %cond.false73
  %div77 = lshr i64 %conv16, 7, !dbg !531
  br label %cond.end82, !dbg !531

cond.false78:                                     ; preds = %cond.false73
  %div79 = lshr i64 %conv16, 17, !dbg !531
  br label %cond.end82, !dbg !531

cond.end82:                                       ; preds = %cond.true76, %cond.false78, %cond.end67
  %cond83 = phi i64 [ %mul17, %cond.end67 ], [ %div77, %cond.true76 ], [ %div79, %cond.false78 ], !dbg !531
  br i1 %cmp70, label %cond.end91, label %cond.false87, !dbg !532

cond.false87:                                     ; preds = %cond.end82
  %cmp88 = icmp ult i32 %5, 1310720, !dbg !532
  %cond90 = select i1 %cmp88, i32 107, i32 77, !dbg !532
  br label %cond.end91, !dbg !532

cond.end91:                                       ; preds = %cond.end82, %cond.false87
  %cond92 = phi i32 [ %cond90, %cond.false87 ], [ 32, %cond.end82 ], !dbg !532
  %call93 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %cond83, i32 %cond92) #7, !dbg !533
  %conv94 = uitofp i64 %total_bytes.2.lcssa to double, !dbg !534
  %div96 = fdiv double %conv94, %conv21, !dbg !535
  call void @llvm.dbg.value(metadata double %div96, metadata !463, metadata !DIExpression()), !dbg !472
  %mul97 = fmul double %div96, %div96, !dbg !536
  call void @llvm.dbg.value(metadata double %mul97, metadata !465, metadata !DIExpression()), !dbg !472
  %div99 = fdiv double %sum_of_squares.2.lcssa, %conv21, !dbg !537
  call void @llvm.dbg.value(metadata double %div99, metadata !464, metadata !DIExpression()), !dbg !472
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !538
  %collisions = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 8, !dbg !539
  %14 = load i32, i32* %collisions, align 4, !dbg !539
  %conv100 = uitofp i32 %14 to double, !dbg !540
  %searches = getelementptr inbounds %struct.ht, %struct.ht* %table, i64 0, i32 7, !dbg !541
  %15 = load i32, i32* %searches, align 8, !dbg !541
  %conv101 = uitofp i32 %15 to double, !dbg !542
  %div102 = fdiv double %conv100, %conv101, !dbg !543
  %call103 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), double %div102) #7, !dbg !544
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !545
  %17 = load i32, i32* %searches, align 8, !dbg !546
  %conv106 = uitofp i32 %17 to double, !dbg !547
  %div107 = fdiv double %conv21, %conv106, !dbg !548
  %call108 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), double %div107) #7, !dbg !549
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !550
  %sub109 = fsub double %div99, %mul97, !dbg !551
  %call110 = tail call fastcc double @approx_sqrt(double %sub109) #8, !dbg !552
  %call111 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), double %div96, double %call110) #7, !dbg !553
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !554
  %call112 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 %longest.3.lcssa) #7, !dbg !555
  ret void, !dbg !556
}

declare dso_local i32 @_obstack_memory_used(%struct.obstack*) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc double @approx_sqrt(double %x) unnamed_addr #2 !dbg !557 {
entry:
  call void @llvm.dbg.value(metadata double %x, metadata !561, metadata !DIExpression()), !dbg !564
  %cmp = fcmp olt double %x, 0.000000e+00, !dbg !565
  br i1 %cmp, label %if.then, label %if.end, !dbg !567

if.then:                                          ; preds = %entry
  tail call void @abort() #10, !dbg !568
  unreachable, !dbg !568

if.end:                                           ; preds = %entry
  %cmp1 = fcmp oeq double %x, 0.000000e+00, !dbg !569
  br i1 %cmp1, label %cleanup, label %do.body.preheader, !dbg !571

do.body.preheader:                                ; preds = %if.end
  br label %do.body, !dbg !572

do.body:                                          ; preds = %do.body.preheader, %do.body
  %s.0 = phi double [ %sub5, %do.body ], [ %x, %do.body.preheader ], !dbg !564
  call void @llvm.dbg.value(metadata double %s.0, metadata !562, metadata !DIExpression()), !dbg !564
  %mul = fmul double %s.0, %s.0, !dbg !573
  %sub = fsub double %mul, %x, !dbg !575
  %mul4 = fmul double %s.0, 2.000000e+00, !dbg !576
  %div = fdiv double %sub, %mul4, !dbg !577
  call void @llvm.dbg.value(metadata double %div, metadata !563, metadata !DIExpression()), !dbg !564
  %sub5 = fsub double %s.0, %div, !dbg !578
  call void @llvm.dbg.value(metadata double %sub5, metadata !562, metadata !DIExpression()), !dbg !564
  %cmp6 = fcmp ogt double %div, 1.000000e-04, !dbg !579
  br i1 %cmp6, label %do.body, label %cleanup.loopexit, !dbg !580, !llvm.loop !581

cleanup.loopexit:                                 ; preds = %do.body
  %sub5.lcssa = phi double [ %sub5, %do.body ], !dbg !578
  br label %cleanup, !dbg !583

cleanup:                                          ; preds = %cleanup.loopexit, %if.end
  %retval.0 = phi double [ 0.000000e+00, %if.end ], [ %sub5.lcssa, %cleanup.loopexit ], !dbg !564
  ret double %retval.0, !dbg !583
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind readonly }
attributes #10 = { nobuiltin noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!90, !91, !92}
!llvm.ident = !{!93}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, nameTableKind: None)
!1 = !DIFile(filename: "cpp_symtab.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ht_lookup_option", file: !4, line: 43, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "HT_NO_INSERT", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "HT_ALLOC", value: 1, isUnsigned: true)
!9 = !{!10, !82, !85, !52, !25, !42, !88, !53, !5, !58, !89, !73}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !4, line: 40, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht", file: !4, line: 46, size: 1152, elements: !13)
!13 = !{!14, !51, !63, !67, !74, !75, !76, !79, !80, !81}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !12, file: !4, line: 49, baseType: !15, size: 704)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !16, line: 164, size: 704, elements: !17)
!16 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!17 = !{!18, !20, !32, !33, !34, !35, !36, !38, !43, !47, !48, !49, !50}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !15, file: !16, line: 166, baseType: !19, size: 64)
!19 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !15, file: !16, line: 167, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !16, line: 157, size: 192, elements: !23)
!23 = !{!24, !27, !28}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !22, file: !16, line: 159, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !22, file: !16, line: 160, baseType: !21, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !22, file: !16, line: 161, baseType: !29, size: 32, offset: 128)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 4)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !15, file: !16, line: 168, baseType: !25, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !15, file: !16, line: 169, baseType: !25, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !15, file: !16, line: 170, baseType: !25, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !15, file: !16, line: 171, baseType: !19, size: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !15, file: !16, line: 172, baseType: !37, size: 32, offset: 384)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !15, file: !16, line: 176, baseType: !39, size: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!21, !42, !19}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !15, file: !16, line: 177, baseType: !44, size: 64, offset: 512)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !42, !21}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !15, file: !16, line: 178, baseType: !42, size: 64, offset: 576)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !15, file: !16, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !15, file: !16, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !15, file: !16, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !12, file: !4, line: 51, baseType: !52, size: 64, offset: 704)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashnode", file: !4, line: 41, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !4, line: 31, size: 128, elements: !56)
!56 = !{!57, !61, !62}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !55, file: !4, line: 32, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !55, file: !4, line: 33, baseType: !5, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !55, file: !4, line: 34, baseType: !5, size: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_node", scope: !12, file: !4, line: 53, baseType: !64, size: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!53, !10}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_subobject", scope: !12, file: !4, line: 56, baseType: !68, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!42, !71}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !12, file: !4, line: 58, baseType: !5, size: 32, offset: 896)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !12, file: !4, line: 59, baseType: !5, size: 32, offset: 928)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !12, file: !4, line: 62, baseType: !77, size: 64, offset: 960)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !4, line: 62, flags: DIFlagFwdDecl)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !12, file: !4, line: 65, baseType: !5, size: 32, offset: 1024)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !12, file: !4, line: 66, baseType: !5, size: 32, offset: 1056)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !12, file: !4, line: 69, baseType: !60, size: 8, offset: 1088)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!42, !19}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !42}
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !72, line: 35, baseType: !19)
!89 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!90 = !{i32 2, !"Dwarf Version", i32 4}
!91 = !{i32 2, !"Debug Info Version", i32 3}
!92 = !{i32 1, !"wchar_size", i32 4}
!93 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!94 = distinct !DISubprogram(name: "tolower", scope: !95, file: !95, line: 207, type: !96, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !98)
!95 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!96 = !DISubroutineType(types: !97)
!97 = !{!37, !37}
!98 = !{!99}
!99 = !DILocalVariable(name: "__c", arg: 1, scope: !94, file: !95, line: 207, type: !37)
!100 = !DILocation(line: 0, scope: !94)
!101 = !DILocation(line: 209, column: 22, scope: !94)
!102 = !DILocation(line: 209, column: 39, scope: !94)
!103 = !DILocation(line: 209, column: 38, scope: !94)
!104 = !DILocation(line: 209, column: 37, scope: !94)
!105 = !DILocation(line: 209, column: 10, scope: !94)
!106 = !DILocation(line: 209, column: 3, scope: !94)
!107 = distinct !DISubprogram(name: "toupper", scope: !95, file: !95, line: 213, type: !96, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !108)
!108 = !{!109}
!109 = !DILocalVariable(name: "__c", arg: 1, scope: !107, file: !95, line: 213, type: !37)
!110 = !DILocation(line: 0, scope: !107)
!111 = !DILocation(line: 215, column: 22, scope: !107)
!112 = !DILocation(line: 215, column: 39, scope: !107)
!113 = !DILocation(line: 215, column: 38, scope: !107)
!114 = !DILocation(line: 215, column: 37, scope: !107)
!115 = !DILocation(line: 215, column: 10, scope: !107)
!116 = !DILocation(line: 215, column: 3, scope: !107)
!117 = distinct !DISubprogram(name: "ht_create", scope: !1, file: !1, line: 58, type: !118, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !120)
!118 = !DISubroutineType(types: !119)
!119 = !{!10, !5}
!120 = !{!121, !122, !123}
!121 = !DILocalVariable(name: "order", arg: 1, scope: !117, file: !1, line: 58, type: !5)
!122 = !DILocalVariable(name: "nslots", scope: !117, file: !1, line: 60, type: !5)
!123 = !DILocalVariable(name: "table", scope: !117, file: !1, line: 61, type: !10)
!124 = !DILocation(line: 0, scope: !117)
!125 = !DILocation(line: 60, column: 27, scope: !117)
!126 = !DILocation(line: 63, column: 11, scope: !117)
!127 = !DILocation(line: 66, column: 27, scope: !117)
!128 = !DILocation(line: 66, column: 3, scope: !117)
!129 = !DILocation(line: 70, column: 3, scope: !117)
!130 = !DILocation(line: 70, column: 42, scope: !117)
!131 = !DILocation(line: 72, column: 20, scope: !117)
!132 = !DILocation(line: 72, column: 10, scope: !117)
!133 = !DILocation(line: 72, column: 18, scope: !117)
!134 = !DILocation(line: 73, column: 10, scope: !117)
!135 = !DILocation(line: 73, column: 24, scope: !117)
!136 = !DILocation(line: 74, column: 10, scope: !117)
!137 = !DILocation(line: 74, column: 17, scope: !117)
!138 = !DILocation(line: 75, column: 3, scope: !117)
!139 = distinct !DISubprogram(name: "ht_destroy", scope: !1, file: !1, line: 81, type: !140, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !142)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !10}
!142 = !{!143}
!143 = !DILocalVariable(name: "table", arg: 1, scope: !139, file: !1, line: 81, type: !10)
!144 = !DILocation(line: 0, scope: !139)
!145 = !DILocation(line: 83, column: 3, scope: !139)
!146 = !DILocation(line: 84, column: 14, scope: !147)
!147 = distinct !DILexicalBlock(scope: !139, file: !1, line: 84, column: 7)
!148 = !DILocation(line: 84, column: 7, scope: !147)
!149 = !DILocation(line: 84, column: 7, scope: !139)
!150 = !DILocation(line: 85, column: 18, scope: !147)
!151 = !DILocation(line: 85, column: 5, scope: !147)
!152 = !DILocation(line: 86, column: 9, scope: !139)
!153 = !DILocation(line: 86, column: 3, scope: !139)
!154 = !DILocation(line: 87, column: 1, scope: !139)
!155 = distinct !DISubprogram(name: "ht_lookup", scope: !1, file: !1, line: 95, type: !156, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{!53, !10, !58, !71, !3}
!158 = !{!159, !160, !161, !162}
!159 = !DILocalVariable(name: "table", arg: 1, scope: !155, file: !1, line: 95, type: !10)
!160 = !DILocalVariable(name: "str", arg: 2, scope: !155, file: !1, line: 95, type: !58)
!161 = !DILocalVariable(name: "len", arg: 3, scope: !155, file: !1, line: 95, type: !71)
!162 = !DILocalVariable(name: "insert", arg: 4, scope: !155, file: !1, line: 96, type: !3)
!163 = !DILocation(line: 0, scope: !155)
!164 = !DILocation(line: 98, column: 48, scope: !155)
!165 = !DILocation(line: 98, column: 10, scope: !155)
!166 = !DILocation(line: 98, column: 3, scope: !155)
!167 = distinct !DISubprogram(name: "ht_lookup_with_hash", scope: !1, file: !1, line: 103, type: !168, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!168 = !DISubroutineType(types: !169)
!169 = !{!53, !10, !58, !71, !5, !3}
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!171 = !DILocalVariable(name: "table", arg: 1, scope: !167, file: !1, line: 103, type: !10)
!172 = !DILocalVariable(name: "str", arg: 2, scope: !167, file: !1, line: 103, type: !58)
!173 = !DILocalVariable(name: "len", arg: 3, scope: !167, file: !1, line: 104, type: !71)
!174 = !DILocalVariable(name: "hash", arg: 4, scope: !167, file: !1, line: 104, type: !5)
!175 = !DILocalVariable(name: "insert", arg: 5, scope: !167, file: !1, line: 105, type: !3)
!176 = !DILocalVariable(name: "hash2", scope: !167, file: !1, line: 107, type: !5)
!177 = !DILocalVariable(name: "index", scope: !167, file: !1, line: 108, type: !5)
!178 = !DILocalVariable(name: "deleted_index", scope: !167, file: !1, line: 109, type: !5)
!179 = !DILocalVariable(name: "sizemask", scope: !167, file: !1, line: 110, type: !71)
!180 = !DILocalVariable(name: "node", scope: !167, file: !1, line: 111, type: !53)
!181 = !DILocalVariable(name: "chars", scope: !182, file: !1, line: 167, type: !25)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 166, column: 5)
!183 = distinct !DILexicalBlock(scope: !167, file: !1, line: 165, column: 7)
!184 = !DILocation(line: 0, scope: !167)
!185 = !DILocation(line: 109, column: 39, scope: !167)
!186 = !DILocation(line: 113, column: 28, scope: !167)
!187 = !DILocation(line: 114, column: 16, scope: !167)
!188 = !DILocation(line: 115, column: 10, scope: !167)
!189 = !DILocation(line: 115, column: 18, scope: !167)
!190 = !DILocation(line: 117, column: 17, scope: !167)
!191 = !DILocation(line: 117, column: 10, scope: !167)
!192 = !DILocation(line: 119, column: 7, scope: !167)
!193 = !DILocation(line: 123, column: 22, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 123, column: 16)
!195 = distinct !DILexicalBlock(scope: !196, file: !1, line: 121, column: 11)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 120, column: 5)
!197 = distinct !DILexicalBlock(scope: !167, file: !1, line: 119, column: 7)
!198 = !DILocation(line: 123, column: 33, scope: !194)
!199 = !DILocation(line: 124, column: 9, scope: !194)
!200 = !DILocation(line: 124, column: 12, scope: !194)
!201 = !DILocation(line: 124, column: 29, scope: !194)
!202 = !DILocation(line: 124, column: 26, scope: !194)
!203 = !DILocation(line: 125, column: 9, scope: !194)
!204 = !DILocation(line: 125, column: 21, scope: !194)
!205 = !DILocation(line: 125, column: 13, scope: !194)
!206 = !DILocation(line: 123, column: 16, scope: !195)
!207 = !DILocation(line: 130, column: 22, scope: !196)
!208 = !DILocation(line: 130, column: 28, scope: !196)
!209 = !DILocation(line: 130, column: 40, scope: !196)
!210 = !DILocation(line: 0, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !1, line: 133, column: 2)
!212 = distinct !DILexicalBlock(scope: !213, file: !1, line: 132, column: 7)
!213 = distinct !DILexicalBlock(scope: !196, file: !1, line: 132, column: 7)
!214 = !DILocation(line: 0, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !1, line: 145, column: 13)
!216 = distinct !DILexicalBlock(scope: !211, file: !1, line: 140, column: 8)
!217 = !DILocation(line: 134, column: 21, scope: !211)
!218 = !DILocation(line: 132, column: 7, scope: !196)
!219 = !DILocation(line: 0, scope: !196)
!220 = !DILocation(line: 135, column: 19, scope: !211)
!221 = !DILocation(line: 135, column: 28, scope: !211)
!222 = !DILocation(line: 136, column: 11, scope: !211)
!223 = !DILocation(line: 137, column: 8, scope: !211)
!224 = !DILocation(line: 142, column: 26, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 142, column: 12)
!226 = distinct !DILexicalBlock(scope: !216, file: !1, line: 141, column: 6)
!227 = !DILocation(line: 142, column: 12, scope: !226)
!228 = !DILocation(line: 144, column: 6, scope: !226)
!229 = !DILocation(line: 145, column: 19, scope: !215)
!230 = !DILocation(line: 145, column: 30, scope: !215)
!231 = !DILocation(line: 146, column: 6, scope: !215)
!232 = !DILocation(line: 146, column: 9, scope: !215)
!233 = !DILocation(line: 146, column: 23, scope: !215)
!234 = !DILocation(line: 147, column: 6, scope: !215)
!235 = !DILocation(line: 147, column: 18, scope: !215)
!236 = !DILocation(line: 147, column: 10, scope: !215)
!237 = !DILocation(line: 145, column: 13, scope: !216)
!238 = !DILocation(line: 132, column: 7, scope: !212)
!239 = distinct !{!239, !240, !241}
!240 = !DILocation(line: 132, column: 7, scope: !213)
!241 = !DILocation(line: 149, column: 2, scope: !213)
!242 = !DILocation(line: 152, column: 14, scope: !243)
!243 = distinct !DILexicalBlock(scope: !167, file: !1, line: 152, column: 7)
!244 = !DILocation(line: 152, column: 7, scope: !167)
!245 = !DILocation(line: 156, column: 21, scope: !246)
!246 = distinct !DILexicalBlock(scope: !167, file: !1, line: 156, column: 7)
!247 = !DILocation(line: 156, column: 7, scope: !167)
!248 = !DILocation(line: 159, column: 19, scope: !167)
!249 = !DILocation(line: 159, column: 10, scope: !167)
!250 = !DILocation(line: 160, column: 10, scope: !167)
!251 = !DILocation(line: 160, column: 3, scope: !167)
!252 = !DILocation(line: 160, column: 25, scope: !167)
!253 = !DILocation(line: 162, column: 19, scope: !167)
!254 = !DILocation(line: 162, column: 3, scope: !167)
!255 = !DILocation(line: 162, column: 17, scope: !167)
!256 = !DILocation(line: 163, column: 9, scope: !167)
!257 = !DILocation(line: 163, column: 20, scope: !167)
!258 = !DILocation(line: 165, column: 14, scope: !183)
!259 = !DILocation(line: 165, column: 7, scope: !183)
!260 = !DILocation(line: 165, column: 7, scope: !167)
!261 = !DILocation(line: 167, column: 58, scope: !182)
!262 = !DILocation(line: 167, column: 30, scope: !182)
!263 = !DILocation(line: 0, scope: !182)
!264 = !DILocation(line: 168, column: 7, scope: !182)
!265 = !DILocation(line: 169, column: 7, scope: !182)
!266 = !DILocation(line: 169, column: 18, scope: !182)
!267 = !DILocation(line: 170, column: 7, scope: !182)
!268 = !DILocation(line: 170, column: 21, scope: !182)
!269 = !DILocation(line: 171, column: 5, scope: !182)
!270 = !DILocation(line: 173, column: 45, scope: !183)
!271 = !DILocation(line: 173, column: 19, scope: !183)
!272 = !DILocation(line: 176, column: 16, scope: !273)
!273 = distinct !DILexicalBlock(scope: !167, file: !1, line: 176, column: 7)
!274 = !DILocation(line: 176, column: 7, scope: !273)
!275 = !DILocation(line: 176, column: 26, scope: !273)
!276 = !DILocation(line: 176, column: 40, scope: !273)
!277 = !DILocation(line: 176, column: 47, scope: !273)
!278 = !DILocation(line: 176, column: 30, scope: !273)
!279 = !DILocation(line: 176, column: 7, scope: !167)
!280 = !DILocation(line: 178, column: 5, scope: !273)
!281 = !DILocation(line: 181, column: 1, scope: !167)
!282 = distinct !DISubprogram(name: "calc_hash", scope: !1, file: !1, line: 44, type: !283, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{!5, !58, !71}
!285 = !{!286, !287, !288, !289}
!286 = !DILocalVariable(name: "str", arg: 1, scope: !282, file: !1, line: 44, type: !58)
!287 = !DILocalVariable(name: "len", arg: 2, scope: !282, file: !1, line: 44, type: !71)
!288 = !DILocalVariable(name: "n", scope: !282, file: !1, line: 46, type: !71)
!289 = !DILocalVariable(name: "r", scope: !282, file: !1, line: 47, type: !5)
!290 = !DILocation(line: 0, scope: !282)
!291 = !DILocation(line: 49, column: 3, scope: !282)
!292 = !DILocation(line: 49, column: 11, scope: !282)
!293 = !DILocation(line: 50, column: 9, scope: !282)
!294 = distinct !{!294, !291, !293}
!295 = !DILocation(line: 52, column: 10, scope: !282)
!296 = !DILocation(line: 52, column: 3, scope: !282)
!297 = distinct !DISubprogram(name: "ht_expand", scope: !1, file: !1, line: 186, type: !140, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !308, !309}
!299 = !DILocalVariable(name: "table", arg: 1, scope: !297, file: !1, line: 186, type: !10)
!300 = !DILocalVariable(name: "nentries", scope: !297, file: !1, line: 188, type: !52)
!301 = !DILocalVariable(name: "p", scope: !297, file: !1, line: 188, type: !52)
!302 = !DILocalVariable(name: "limit", scope: !297, file: !1, line: 188, type: !52)
!303 = !DILocalVariable(name: "size", scope: !297, file: !1, line: 189, type: !5)
!304 = !DILocalVariable(name: "sizemask", scope: !297, file: !1, line: 189, type: !5)
!305 = !DILocalVariable(name: "index", scope: !306, file: !1, line: 200, type: !5)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 199, column: 7)
!307 = distinct !DILexicalBlock(scope: !297, file: !1, line: 198, column: 9)
!308 = !DILocalVariable(name: "hash", scope: !306, file: !1, line: 200, type: !5)
!309 = !DILocalVariable(name: "hash2", scope: !306, file: !1, line: 200, type: !5)
!310 = !DILocation(line: 0, scope: !297)
!311 = !DILocation(line: 191, column: 17, scope: !297)
!312 = !DILocation(line: 191, column: 24, scope: !297)
!313 = !DILocation(line: 192, column: 14, scope: !297)
!314 = !DILocation(line: 193, column: 19, scope: !297)
!315 = !DILocation(line: 195, column: 14, scope: !297)
!316 = !DILocation(line: 196, column: 22, scope: !297)
!317 = !DILocation(line: 196, column: 13, scope: !297)
!318 = !DILocation(line: 197, column: 3, scope: !297)
!319 = !DILocation(line: 198, column: 9, scope: !307)
!320 = !DILocation(line: 198, column: 12, scope: !307)
!321 = !DILocation(line: 198, column: 18, scope: !307)
!322 = !DILocation(line: 198, column: 9, scope: !297)
!323 = !DILocation(line: 202, column: 15, scope: !306)
!324 = !DILocation(line: 0, scope: !306)
!325 = !DILocation(line: 203, column: 15, scope: !306)
!326 = !DILocation(line: 205, column: 6, scope: !327)
!327 = distinct !DILexicalBlock(scope: !306, file: !1, line: 205, column: 6)
!328 = !DILocation(line: 205, column: 6, scope: !306)
!329 = !DILocation(line: 207, column: 21, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !1, line: 206, column: 4)
!331 = !DILocation(line: 207, column: 27, scope: !330)
!332 = !DILocation(line: 207, column: 39, scope: !330)
!333 = !DILocation(line: 208, column: 6, scope: !330)
!334 = !DILocation(line: 210, column: 18, scope: !335)
!335 = distinct !DILexicalBlock(scope: !330, file: !1, line: 209, column: 8)
!336 = !DILocation(line: 210, column: 27, scope: !335)
!337 = !DILocation(line: 212, column: 13, scope: !330)
!338 = !DILocation(line: 211, column: 8, scope: !335)
!339 = distinct !{!339, !333, !340}
!340 = !DILocation(line: 212, column: 28, scope: !330)
!341 = !DILocation(line: 214, column: 20, scope: !306)
!342 = !DILocation(line: 214, column: 2, scope: !306)
!343 = !DILocation(line: 214, column: 18, scope: !306)
!344 = !DILocation(line: 215, column: 7, scope: !306)
!345 = !DILocation(line: 216, column: 10, scope: !297)
!346 = !DILocation(line: 216, column: 14, scope: !297)
!347 = !DILocation(line: 198, column: 21, scope: !307)
!348 = distinct !{!348, !318, !349}
!349 = !DILocation(line: 216, column: 21, scope: !297)
!350 = !DILocation(line: 218, column: 14, scope: !351)
!351 = distinct !DILexicalBlock(scope: !297, file: !1, line: 218, column: 7)
!352 = !DILocation(line: 218, column: 7, scope: !351)
!353 = !DILocation(line: 218, column: 7, scope: !297)
!354 = !DILocation(line: 221, column: 18, scope: !297)
!355 = !DILocation(line: 219, column: 18, scope: !351)
!356 = !DILocation(line: 219, column: 5, scope: !351)
!357 = !DILocation(line: 220, column: 24, scope: !297)
!358 = !DILocation(line: 222, column: 17, scope: !297)
!359 = !DILocation(line: 223, column: 1, scope: !297)
!360 = distinct !DISubprogram(name: "ht_forall", scope: !1, file: !1, line: 228, type: !361, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !369)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !10, !363, !367}
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "ht_cb", file: !4, line: 89, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!37, !77, !53, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!369 = !{!370, !371, !372, !373, !374}
!370 = !DILocalVariable(name: "table", arg: 1, scope: !360, file: !1, line: 228, type: !10)
!371 = !DILocalVariable(name: "cb", arg: 2, scope: !360, file: !1, line: 228, type: !363)
!372 = !DILocalVariable(name: "v", arg: 3, scope: !360, file: !1, line: 228, type: !367)
!373 = !DILocalVariable(name: "p", scope: !360, file: !1, line: 230, type: !52)
!374 = !DILocalVariable(name: "limit", scope: !360, file: !1, line: 230, type: !52)
!375 = !DILocation(line: 0, scope: !360)
!376 = !DILocation(line: 232, column: 14, scope: !360)
!377 = !DILocation(line: 233, column: 22, scope: !360)
!378 = !DILocation(line: 233, column: 13, scope: !360)
!379 = !DILocation(line: 237, column: 20, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !1, line: 237, column: 6)
!381 = distinct !DILexicalBlock(scope: !382, file: !1, line: 236, column: 7)
!382 = distinct !DILexicalBlock(scope: !360, file: !1, line: 235, column: 9)
!383 = !DILocation(line: 234, column: 3, scope: !360)
!384 = !DILocation(line: 235, column: 9, scope: !382)
!385 = !DILocation(line: 235, column: 12, scope: !382)
!386 = !DILocation(line: 235, column: 18, scope: !382)
!387 = !DILocation(line: 235, column: 9, scope: !360)
!388 = !DILocation(line: 237, column: 6, scope: !380)
!389 = !DILocation(line: 237, column: 34, scope: !380)
!390 = !DILocation(line: 237, column: 6, scope: !381)
!391 = !DILocation(line: 240, column: 10, scope: !360)
!392 = !DILocation(line: 240, column: 14, scope: !360)
!393 = !DILocation(line: 235, column: 21, scope: !382)
!394 = distinct !{!394, !383, !395}
!395 = !DILocation(line: 240, column: 21, scope: !360)
!396 = !DILocation(line: 241, column: 1, scope: !360)
!397 = distinct !DISubprogram(name: "ht_purge", scope: !1, file: !1, line: 246, type: !361, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !398)
!398 = !{!399, !400, !401, !402, !403}
!399 = !DILocalVariable(name: "table", arg: 1, scope: !397, file: !1, line: 246, type: !10)
!400 = !DILocalVariable(name: "cb", arg: 2, scope: !397, file: !1, line: 246, type: !363)
!401 = !DILocalVariable(name: "v", arg: 3, scope: !397, file: !1, line: 246, type: !367)
!402 = !DILocalVariable(name: "p", scope: !397, file: !1, line: 248, type: !52)
!403 = !DILocalVariable(name: "limit", scope: !397, file: !1, line: 248, type: !52)
!404 = !DILocation(line: 0, scope: !397)
!405 = !DILocation(line: 250, column: 14, scope: !397)
!406 = !DILocation(line: 251, column: 22, scope: !397)
!407 = !DILocation(line: 251, column: 13, scope: !397)
!408 = !DILocation(line: 0, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 255, column: 6)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 254, column: 7)
!411 = distinct !DILexicalBlock(scope: !397, file: !1, line: 253, column: 9)
!412 = !DILocation(line: 252, column: 3, scope: !397)
!413 = !DILocation(line: 253, column: 9, scope: !411)
!414 = !DILocation(line: 253, column: 12, scope: !411)
!415 = !DILocation(line: 253, column: 18, scope: !411)
!416 = !DILocation(line: 253, column: 9, scope: !397)
!417 = !DILocation(line: 255, column: 20, scope: !409)
!418 = !DILocation(line: 255, column: 6, scope: !409)
!419 = !DILocation(line: 255, column: 6, scope: !410)
!420 = !DILocation(line: 256, column: 7, scope: !409)
!421 = !DILocation(line: 256, column: 4, scope: !409)
!422 = !DILocation(line: 258, column: 10, scope: !397)
!423 = !DILocation(line: 258, column: 14, scope: !397)
!424 = !DILocation(line: 253, column: 21, scope: !411)
!425 = distinct !{!425, !412, !426}
!426 = !DILocation(line: 258, column: 21, scope: !397)
!427 = !DILocation(line: 259, column: 1, scope: !397)
!428 = distinct !DISubprogram(name: "ht_load", scope: !1, file: !1, line: 263, type: !429, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !10, !52, !5, !5, !60}
!431 = !{!432, !433, !434, !435, !436}
!432 = !DILocalVariable(name: "ht", arg: 1, scope: !428, file: !1, line: 263, type: !10)
!433 = !DILocalVariable(name: "entries", arg: 2, scope: !428, file: !1, line: 263, type: !52)
!434 = !DILocalVariable(name: "nslots", arg: 3, scope: !428, file: !1, line: 264, type: !5)
!435 = !DILocalVariable(name: "nelements", arg: 4, scope: !428, file: !1, line: 264, type: !5)
!436 = !DILocalVariable(name: "own", arg: 5, scope: !428, file: !1, line: 265, type: !60)
!437 = !DILocation(line: 0, scope: !428)
!438 = !DILocation(line: 267, column: 11, scope: !439)
!439 = distinct !DILexicalBlock(scope: !428, file: !1, line: 267, column: 7)
!440 = !DILocation(line: 267, column: 7, scope: !439)
!441 = !DILocation(line: 267, column: 7, scope: !428)
!442 = !DILocation(line: 268, column: 15, scope: !439)
!443 = !DILocation(line: 268, column: 5, scope: !439)
!444 = !DILocation(line: 269, column: 7, scope: !428)
!445 = !DILocation(line: 269, column: 15, scope: !428)
!446 = !DILocation(line: 270, column: 7, scope: !428)
!447 = !DILocation(line: 270, column: 14, scope: !428)
!448 = !DILocation(line: 271, column: 7, scope: !428)
!449 = !DILocation(line: 271, column: 17, scope: !428)
!450 = !DILocation(line: 272, column: 21, scope: !428)
!451 = !DILocation(line: 273, column: 1, scope: !428)
!452 = distinct !DISubprogram(name: "ht_dump_statistics", scope: !1, file: !1, line: 278, type: !140, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!454 = !DILocalVariable(name: "table", arg: 1, scope: !452, file: !1, line: 278, type: !10)
!455 = !DILocalVariable(name: "nelts", scope: !452, file: !1, line: 280, type: !71)
!456 = !DILocalVariable(name: "nids", scope: !452, file: !1, line: 280, type: !71)
!457 = !DILocalVariable(name: "overhead", scope: !452, file: !1, line: 280, type: !71)
!458 = !DILocalVariable(name: "headers", scope: !452, file: !1, line: 280, type: !71)
!459 = !DILocalVariable(name: "total_bytes", scope: !452, file: !1, line: 281, type: !71)
!460 = !DILocalVariable(name: "longest", scope: !452, file: !1, line: 281, type: !71)
!461 = !DILocalVariable(name: "deleted", scope: !452, file: !1, line: 281, type: !71)
!462 = !DILocalVariable(name: "sum_of_squares", scope: !452, file: !1, line: 282, type: !89)
!463 = !DILocalVariable(name: "exp_len", scope: !452, file: !1, line: 282, type: !89)
!464 = !DILocalVariable(name: "exp_len2", scope: !452, file: !1, line: 282, type: !89)
!465 = !DILocalVariable(name: "exp2_len", scope: !452, file: !1, line: 282, type: !89)
!466 = !DILocalVariable(name: "p", scope: !452, file: !1, line: 283, type: !52)
!467 = !DILocalVariable(name: "limit", scope: !452, file: !1, line: 283, type: !52)
!468 = !DILocalVariable(name: "n", scope: !469, file: !1, line: 300, type: !71)
!469 = distinct !DILexicalBlock(scope: !470, file: !1, line: 299, column: 7)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 298, column: 14)
!471 = distinct !DILexicalBlock(scope: !452, file: !1, line: 296, column: 9)
!472 = !DILocation(line: 0, scope: !452)
!473 = !DILocation(line: 293, column: 14, scope: !452)
!474 = !DILocation(line: 294, column: 22, scope: !452)
!475 = !DILocation(line: 294, column: 13, scope: !452)
!476 = !DILocation(line: 295, column: 3, scope: !452)
!477 = !DILocation(line: 292, column: 15, scope: !452)
!478 = !DILocation(line: 292, column: 25, scope: !452)
!479 = !DILocation(line: 292, column: 49, scope: !452)
!480 = !DILocation(line: 292, column: 42, scope: !452)
!481 = !DILocation(line: 296, column: 9, scope: !471)
!482 = !DILocation(line: 296, column: 12, scope: !471)
!483 = !DILocation(line: 296, column: 9, scope: !452)
!484 = !DILocation(line: 297, column: 7, scope: !471)
!485 = !DILocation(line: 298, column: 14, scope: !470)
!486 = !DILocation(line: 298, column: 14, scope: !471)
!487 = !DILocation(line: 300, column: 13, scope: !469)
!488 = !DILocation(line: 0, scope: !469)
!489 = !DILocation(line: 302, column: 14, scope: !469)
!490 = !DILocation(line: 303, column: 20, scope: !469)
!491 = !DILocation(line: 303, column: 31, scope: !469)
!492 = !DILocation(line: 303, column: 17, scope: !469)
!493 = !DILocation(line: 304, column: 8, scope: !494)
!494 = distinct !DILexicalBlock(scope: !469, file: !1, line: 304, column: 6)
!495 = !DILocation(line: 304, column: 6, scope: !469)
!496 = !DILocation(line: 306, column: 6, scope: !469)
!497 = !DILocation(line: 307, column: 7, scope: !469)
!498 = !DILocation(line: 308, column: 10, scope: !452)
!499 = !DILocation(line: 308, column: 14, scope: !452)
!500 = !DILocation(line: 296, column: 15, scope: !471)
!501 = distinct !{!501, !476, !502}
!502 = !DILocation(line: 308, column: 21, scope: !452)
!503 = !DILocation(line: 310, column: 18, scope: !452)
!504 = !DILocation(line: 310, column: 11, scope: !452)
!505 = !DILocation(line: 311, column: 14, scope: !452)
!506 = !DILocation(line: 311, column: 50, scope: !452)
!507 = !DILocation(line: 312, column: 20, scope: !452)
!508 = !DILocation(line: 312, column: 13, scope: !452)
!509 = !DILocation(line: 312, column: 27, scope: !452)
!510 = !DILocation(line: 314, column: 12, scope: !452)
!511 = !DILocation(line: 314, column: 3, scope: !452)
!512 = !DILocation(line: 316, column: 12, scope: !452)
!513 = !DILocation(line: 317, column: 27, scope: !452)
!514 = !DILocation(line: 317, column: 32, scope: !452)
!515 = !DILocation(line: 317, column: 42, scope: !452)
!516 = !DILocation(line: 317, column: 40, scope: !452)
!517 = !DILocation(line: 316, column: 3, scope: !452)
!518 = !DILocation(line: 318, column: 12, scope: !452)
!519 = !DILocation(line: 319, column: 28, scope: !452)
!520 = !DILocation(line: 319, column: 5, scope: !452)
!521 = !DILocation(line: 318, column: 3, scope: !452)
!522 = !DILocation(line: 320, column: 12, scope: !452)
!523 = !DILocation(line: 320, column: 3, scope: !452)
!524 = !DILocation(line: 322, column: 12, scope: !452)
!525 = !DILocation(line: 323, column: 5, scope: !452)
!526 = !DILocation(line: 323, column: 26, scope: !452)
!527 = !DILocation(line: 324, column: 5, scope: !452)
!528 = !DILocation(line: 324, column: 23, scope: !452)
!529 = !DILocation(line: 322, column: 3, scope: !452)
!530 = !DILocation(line: 325, column: 12, scope: !452)
!531 = !DILocation(line: 326, column: 5, scope: !452)
!532 = !DILocation(line: 326, column: 22, scope: !452)
!533 = !DILocation(line: 325, column: 3, scope: !452)
!534 = !DILocation(line: 328, column: 13, scope: !452)
!535 = !DILocation(line: 328, column: 33, scope: !452)
!536 = !DILocation(line: 329, column: 22, scope: !452)
!537 = !DILocation(line: 330, column: 38, scope: !452)
!538 = !DILocation(line: 332, column: 12, scope: !452)
!539 = !DILocation(line: 333, column: 21, scope: !452)
!540 = !DILocation(line: 333, column: 5, scope: !452)
!541 = !DILocation(line: 333, column: 50, scope: !452)
!542 = !DILocation(line: 333, column: 34, scope: !452)
!543 = !DILocation(line: 333, column: 32, scope: !452)
!544 = !DILocation(line: 332, column: 3, scope: !452)
!545 = !DILocation(line: 334, column: 12, scope: !452)
!546 = !DILocation(line: 335, column: 38, scope: !452)
!547 = !DILocation(line: 335, column: 22, scope: !452)
!548 = !DILocation(line: 335, column: 20, scope: !452)
!549 = !DILocation(line: 334, column: 3, scope: !452)
!550 = !DILocation(line: 336, column: 12, scope: !452)
!551 = !DILocation(line: 337, column: 36, scope: !452)
!552 = !DILocation(line: 337, column: 14, scope: !452)
!553 = !DILocation(line: 336, column: 3, scope: !452)
!554 = !DILocation(line: 338, column: 12, scope: !452)
!555 = !DILocation(line: 338, column: 3, scope: !452)
!556 = !DILocation(line: 342, column: 1, scope: !452)
!557 = distinct !DISubprogram(name: "approx_sqrt", scope: !1, file: !1, line: 347, type: !558, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{!89, !89}
!560 = !{!561, !562, !563}
!561 = !DILocalVariable(name: "x", arg: 1, scope: !557, file: !1, line: 347, type: !89)
!562 = !DILocalVariable(name: "s", scope: !557, file: !1, line: 349, type: !89)
!563 = !DILocalVariable(name: "d", scope: !557, file: !1, line: 349, type: !89)
!564 = !DILocation(line: 0, scope: !557)
!565 = !DILocation(line: 351, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !557, file: !1, line: 351, column: 7)
!567 = !DILocation(line: 351, column: 7, scope: !557)
!568 = !DILocation(line: 352, column: 5, scope: !566)
!569 = !DILocation(line: 353, column: 9, scope: !570)
!570 = distinct !DILexicalBlock(scope: !557, file: !1, line: 353, column: 7)
!571 = !DILocation(line: 353, column: 7, scope: !557)
!572 = !DILocation(line: 357, column: 3, scope: !557)
!573 = !DILocation(line: 359, column: 14, scope: !574)
!574 = distinct !DILexicalBlock(scope: !557, file: !1, line: 358, column: 5)
!575 = !DILocation(line: 359, column: 18, scope: !574)
!576 = !DILocation(line: 359, column: 28, scope: !574)
!577 = !DILocation(line: 359, column: 23, scope: !574)
!578 = !DILocation(line: 360, column: 9, scope: !574)
!579 = !DILocation(line: 362, column: 12, scope: !557)
!580 = !DILocation(line: 361, column: 5, scope: !574)
!581 = distinct !{!581, !572, !582}
!582 = !DILocation(line: 362, column: 19, scope: !557)
!583 = !DILocation(line: 364, column: 1, scope: !557)
