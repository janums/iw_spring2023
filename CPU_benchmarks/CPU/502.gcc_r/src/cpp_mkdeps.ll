; ModuleID = 'cpp_mkdeps.bc'
source_filename = "cpp_mkdeps.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deps = type { i8**, i32, i32, i8**, i32, i32, i8**, i64*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".o\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" \5C\0A \00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !32 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !38, metadata !DIExpression()), !dbg !39
  %__c.off = add i32 %__c, 128, !dbg !40
  %0 = icmp ult i32 %__c.off, 384, !dbg !40
  br i1 %0, label %cond.true, label %cond.end, !dbg !40

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #7, !dbg !41
  %1 = load i32*, i32** %call, align 8, !dbg !42
  %idxprom = sext i32 %__c to i64, !dbg !43
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !43
  %2 = load i32, i32* %arrayidx, align 4, !dbg !43
  br label %cond.end, !dbg !44

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !44
  ret i32 %cond, !dbg !45
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !46 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !48, metadata !DIExpression()), !dbg !49
  %__c.off = add i32 %__c, 128, !dbg !50
  %0 = icmp ult i32 %__c.off, 384, !dbg !50
  br i1 %0, label %cond.true, label %cond.end, !dbg !50

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #7, !dbg !51
  %1 = load i32*, i32** %call, align 8, !dbg !52
  %idxprom = sext i32 %__c to i64, !dbg !53
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !53
  %2 = load i32, i32* %arrayidx, align 4, !dbg !53
  br label %cond.end, !dbg !54

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !54
  ret i32 %cond, !dbg !55
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.deps* @deps_init() local_unnamed_addr #2 !dbg !56 {
entry:
  %call = tail call i8* @xcalloc(i64 1, i64 56) #7, !dbg !59
  %0 = bitcast i8* %call to %struct.deps*, !dbg !59
  ret %struct.deps* %0, !dbg !60
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @deps_free(%struct.deps* %d) local_unnamed_addr #2 !dbg !61 {
entry:
  call void @llvm.dbg.value(metadata %struct.deps* %d, metadata !65, metadata !DIExpression()), !dbg !67
  %targetv = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 0, !dbg !68
  %0 = load i8**, i8*** %targetv, align 8, !dbg !68
  %tobool = icmp eq i8** %0, null, !dbg !70
  br i1 %tobool, label %if.end, label %for.cond.preheader, !dbg !71

for.cond.preheader:                               ; preds = %entry
  %ntargets = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 1, !dbg !72
  br label %for.cond, !dbg !76

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv9 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next10, %for.body ], !dbg !77
  %1 = phi i8** [ %0, %for.cond.preheader ], [ %.pre, %for.body ], !dbg !77
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !66, metadata !DIExpression()), !dbg !67
  %2 = load i32, i32* %ntargets, align 8, !dbg !78
  %3 = zext i32 %2 to i64, !dbg !79
  %cmp = icmp ult i64 %indvars.iv9, %3, !dbg !79
  br i1 %cmp, label %for.body, label %for.end, !dbg !76

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %indvars.iv9, !dbg !80
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !80
  tail call void @free(i8* %4) #7, !dbg !81
  %.pre = load i8**, i8*** %targetv, align 8, !dbg !77
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !82
  br label %for.cond, !dbg !83, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  %.lcssa12 = phi i8** [ %1, %for.cond ], !dbg !77
  %5 = bitcast i8** %.lcssa12 to i8*, !dbg !86
  tail call void @free(i8* %5) #7, !dbg !87
  br label %if.end, !dbg !88

if.end:                                           ; preds = %entry, %for.end
  %depv = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 3, !dbg !89
  %6 = load i8**, i8*** %depv, align 8, !dbg !89
  %tobool3 = icmp eq i8** %6, null, !dbg !91
  br i1 %tobool3, label %if.end15, label %for.cond5.preheader, !dbg !92

for.cond5.preheader:                              ; preds = %if.end
  %ndeps = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 4, !dbg !93
  br label %for.cond5, !dbg !97

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %indvars.iv7 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next8, %for.body7 ], !dbg !98
  %7 = phi i8** [ %6, %for.cond5.preheader ], [ %.pre3, %for.body7 ], !dbg !98
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !66, metadata !DIExpression()), !dbg !67
  %8 = load i32, i32* %ndeps, align 8, !dbg !99
  %9 = zext i32 %8 to i64, !dbg !100
  %cmp6 = icmp ult i64 %indvars.iv7, %9, !dbg !100
  br i1 %cmp6, label %for.body7, label %for.end13, !dbg !97

for.body7:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds i8*, i8** %7, i64 %indvars.iv7, !dbg !101
  %10 = load i8*, i8** %arrayidx10, align 8, !dbg !101
  tail call void @free(i8* %10) #7, !dbg !102
  %.pre3 = load i8**, i8*** %depv, align 8, !dbg !98
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !103
  br label %for.cond5, !dbg !104, !llvm.loop !105

for.end13:                                        ; preds = %for.cond5
  %.lcssa11 = phi i8** [ %7, %for.cond5 ], !dbg !98
  %11 = bitcast i8** %.lcssa11 to i8*, !dbg !107
  tail call void @free(i8* %11) #7, !dbg !108
  br label %if.end15, !dbg !109

if.end15:                                         ; preds = %if.end, %for.end13
  %vpathv = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 6, !dbg !110
  %12 = load i8**, i8*** %vpathv, align 8, !dbg !110
  %tobool16 = icmp eq i8** %12, null, !dbg !112
  br i1 %tobool16, label %if.end28, label %for.cond18.preheader, !dbg !113

for.cond18.preheader:                             ; preds = %if.end15
  %nvpaths = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 8, !dbg !114
  br label %for.cond18, !dbg !118

for.cond18:                                       ; preds = %for.cond18.preheader, %for.body20
  %indvars.iv = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next, %for.body20 ], !dbg !119
  %13 = phi i8** [ %12, %for.cond18.preheader ], [ %.pre4, %for.body20 ], !dbg !119
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !66, metadata !DIExpression()), !dbg !67
  %14 = load i32, i32* %nvpaths, align 8, !dbg !120
  %15 = zext i32 %14 to i64, !dbg !121
  %cmp19 = icmp ult i64 %indvars.iv, %15, !dbg !121
  br i1 %cmp19, label %for.body20, label %for.end26, !dbg !118

for.body20:                                       ; preds = %for.cond18
  %arrayidx23 = getelementptr inbounds i8*, i8** %13, i64 %indvars.iv, !dbg !122
  %16 = load i8*, i8** %arrayidx23, align 8, !dbg !122
  tail call void @free(i8* %16) #7, !dbg !123
  %.pre4 = load i8**, i8*** %vpathv, align 8, !dbg !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !124
  br label %for.cond18, !dbg !125, !llvm.loop !126

for.end26:                                        ; preds = %for.cond18
  %.lcssa = phi i8** [ %13, %for.cond18 ], !dbg !119
  %17 = bitcast i8** %.lcssa to i8*, !dbg !128
  tail call void @free(i8* %17) #7, !dbg !129
  %vpathlv = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 7, !dbg !130
  %18 = bitcast i64** %vpathlv to i8**, !dbg !130
  %19 = load i8*, i8** %18, align 8, !dbg !130
  tail call void @free(i8* %19) #7, !dbg !131
  br label %if.end28, !dbg !132

if.end28:                                         ; preds = %if.end15, %for.end26
  %20 = bitcast %struct.deps* %d to i8*, !dbg !133
  tail call void @free(i8* %20) #7, !dbg !134
  ret void, !dbg !135
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @deps_add_target(%struct.deps* %d, i8* %t, i32 %quote) local_unnamed_addr #2 !dbg !136 {
entry:
  call void @llvm.dbg.value(metadata %struct.deps* %d, metadata !140, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i8* %t, metadata !141, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32 %quote, metadata !142, metadata !DIExpression()), !dbg !143
  %ntargets = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 1, !dbg !144
  %0 = load i32, i32* %ntargets, align 8, !dbg !144
  %targets_size = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 2, !dbg !146
  %1 = load i32, i32* %targets_size, align 4, !dbg !146
  %cmp = icmp eq i32 %0, %1, !dbg !147
  br i1 %cmp, label %if.then, label %if.end, !dbg !148

if.then:                                          ; preds = %entry
  %mul = shl i32 %0, 1, !dbg !149
  %add = add i32 %mul, 4, !dbg !151
  store i32 %add, i32* %targets_size, align 4, !dbg !152
  %2 = bitcast %struct.deps* %d to i8**, !dbg !153
  %3 = load i8*, i8** %2, align 8, !dbg !153
  %conv = zext i32 %add to i64, !dbg !153
  %mul4 = shl nuw nsw i64 %conv, 3, !dbg !153
  %call = tail call i8* @xrealloc(i8* %3, i64 %mul4) #7, !dbg !153
  store i8* %call, i8** %2, align 8, !dbg !154
  br label %if.end, !dbg !155

if.end:                                           ; preds = %if.then, %entry
  %call6 = tail call fastcc i8* @apply_vpath(%struct.deps* %d, i8* %t) #8, !dbg !156
  call void @llvm.dbg.value(metadata i8* %call6, metadata !141, metadata !DIExpression()), !dbg !143
  %tobool = icmp eq i32 %quote, 0, !dbg !157
  br i1 %tobool, label %if.else, label %if.then7, !dbg !159

if.then7:                                         ; preds = %if.end
  %call8 = tail call fastcc i8* @munge(i8* %call6) #8, !dbg !160
  call void @llvm.dbg.value(metadata i8* %call8, metadata !141, metadata !DIExpression()), !dbg !143
  br label %if.end10, !dbg !161

if.else:                                          ; preds = %if.end
  %call9 = tail call i8* @xstrdup(i8* %call6) #7, !dbg !162
  call void @llvm.dbg.value(metadata i8* %call9, metadata !141, metadata !DIExpression()), !dbg !143
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %t.addr.0 = phi i8* [ %call8, %if.then7 ], [ %call9, %if.else ], !dbg !163
  call void @llvm.dbg.value(metadata i8* %t.addr.0, metadata !141, metadata !DIExpression()), !dbg !143
  %targetv11 = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 0, !dbg !164
  %4 = load i8**, i8*** %targetv11, align 8, !dbg !164
  %5 = load i32, i32* %ntargets, align 8, !dbg !165
  %inc = add i32 %5, 1, !dbg !165
  store i32 %inc, i32* %ntargets, align 8, !dbg !165
  %idxprom = zext i32 %5 to i64, !dbg !166
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom, !dbg !166
  store i8* %t.addr.0, i8** %arrayidx, align 8, !dbg !167
  ret void, !dbg !168
}

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i8* @apply_vpath(%struct.deps* %d, i8* %t) unnamed_addr #2 !dbg !169 {
entry:
  call void @llvm.dbg.value(metadata %struct.deps* %d, metadata !173, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i8* %t, metadata !174, metadata !DIExpression()), !dbg !185
  %vpathv = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 6, !dbg !186
  %0 = load i8**, i8*** %vpathv, align 8, !dbg !186
  %tobool = icmp eq i8** %0, null, !dbg !187
  br i1 %tobool, label %if.end33, label %for.cond.preheader, !dbg !188

for.cond.preheader:                               ; preds = %entry
  %nvpaths = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 8, !dbg !189
  %1 = load i32, i32* %nvpaths, align 8, !dbg !189
  %vpathlv = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 7, !dbg !190
  %wide.trip.count = zext i32 %1 to i64, !dbg !191
  br label %for.cond, !dbg !192

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !193
  %t.addr.0 = phi i8* [ %t, %for.cond.preheader ], [ %t.addr.2, %for.inc ]
  call void @llvm.dbg.value(metadata i8* %t.addr.0, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !175, metadata !DIExpression()), !dbg !194
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !191
  br i1 %exitcond, label %if.end33.loopexit, label %for.body, !dbg !192

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 %indvars.iv, !dbg !195
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !195
  %3 = load i64*, i64** %vpathlv, align 8, !dbg !196
  %arrayidx3 = getelementptr inbounds i64, i64* %3, i64 %indvars.iv, !dbg !197
  %4 = load i64, i64* %arrayidx3, align 8, !dbg !197
  %call = tail call i32 @strncmp(i8* %2, i8* %t.addr.0, i64 %4) #9, !dbg !198
  %tobool4 = icmp eq i32 %call, 0, !dbg !198
  br i1 %tobool4, label %if.then5, label %for.inc, !dbg !199

if.then5:                                         ; preds = %for.body
  %add.ptr = getelementptr inbounds i8, i8* %t.addr.0, i64 %4, !dbg !200
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !178, metadata !DIExpression()), !dbg !201
  %5 = load i8, i8* %add.ptr, align 1, !dbg !202
  %cmp9 = icmp eq i8 %5, 47, !dbg !202
  br i1 %cmp9, label %if.end, label %cleanup, !dbg !204

if.end:                                           ; preds = %if.then5
  %arrayidx12 = getelementptr inbounds i8, i8* %add.ptr, i64 1, !dbg !205
  %6 = load i8, i8* %arrayidx12, align 1, !dbg !205
  %cmp14 = icmp eq i8 %6, 46, !dbg !207
  br i1 %cmp14, label %land.lhs.true, label %if.end26, !dbg !208

land.lhs.true:                                    ; preds = %if.end
  %arrayidx16 = getelementptr inbounds i8, i8* %add.ptr, i64 2, !dbg !209
  %7 = load i8, i8* %arrayidx16, align 1, !dbg !209
  %cmp18 = icmp eq i8 %7, 46, !dbg !210
  br i1 %cmp18, label %land.lhs.true20, label %if.end26, !dbg !211

land.lhs.true20:                                  ; preds = %land.lhs.true
  %arrayidx21 = getelementptr inbounds i8, i8* %add.ptr, i64 3, !dbg !212
  %8 = load i8, i8* %arrayidx21, align 1, !dbg !212
  %cmp23 = icmp eq i8 %8, 47, !dbg !212
  br i1 %cmp23, label %cleanup, label %if.end26, !dbg !213

if.end26:                                         ; preds = %land.lhs.true20, %land.lhs.true, %if.end
  %add.ptr30 = getelementptr inbounds i8, i8* %t.addr.0, i64 1, !dbg !214
  %add.ptr31 = getelementptr inbounds i8, i8* %add.ptr30, i64 %4, !dbg !215
  call void @llvm.dbg.value(metadata i8* %add.ptr31, metadata !174, metadata !DIExpression()), !dbg !185
  br label %cleanup, !dbg !216

cleanup:                                          ; preds = %land.lhs.true20, %if.then5, %if.end26
  %t.addr.1 = phi i8* [ %add.ptr31, %if.end26 ], [ %t.addr.0, %if.then5 ], [ %t.addr.0, %land.lhs.true20 ]
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end26 ], [ false, %if.then5 ], [ false, %land.lhs.true20 ]
  call void @llvm.dbg.value(metadata i8* %t.addr.1, metadata !174, metadata !DIExpression()), !dbg !185
  br i1 %cleanup.dest.slot.0, label %if.end33.loopexit, label %for.inc

for.inc:                                          ; preds = %for.body, %cleanup
  %t.addr.2 = phi i8* [ %t.addr.1, %cleanup ], [ %t.addr.0, %for.body ]
  call void @llvm.dbg.value(metadata i8* %t.addr.2, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.label(metadata !184), !dbg !217
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !218
  br label %for.cond, !dbg !219, !llvm.loop !220

if.end33.loopexit:                                ; preds = %for.cond, %cleanup
  %t.addr.4.ph = phi i8* [ %t.addr.0, %for.cond ], [ %t.addr.1, %cleanup ]
  br label %if.end33, !dbg !222

if.end33:                                         ; preds = %if.end33.loopexit, %entry
  %t.addr.4 = phi i8* [ %t, %entry ], [ %t.addr.4.ph, %if.end33.loopexit ]
  call void @llvm.dbg.value(metadata i8* %t.addr.4, metadata !174, metadata !DIExpression()), !dbg !185
  %.pre = load i8, i8* %t.addr.4, align 1, !dbg !223
  br label %while.cond, !dbg !222

while.cond.loopexit:                              ; preds = %while.cond43
  %t.addr.6.lcssa = phi i8* [ %t.addr.6, %while.cond43 ], !dbg !224
  %.lcssa = phi i8 [ %11, %while.cond43 ], !dbg !226
  call void @llvm.dbg.value(metadata i8* %t.addr.6.lcssa, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i8* %t.addr.6.lcssa, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i8* %t.addr.6.lcssa, metadata !174, metadata !DIExpression()), !dbg !185
  br label %while.cond, !dbg !222

while.cond:                                       ; preds = %while.cond.loopexit, %if.end33
  %9 = phi i8 [ %.pre, %if.end33 ], [ %.lcssa, %while.cond.loopexit ], !dbg !223
  %t.addr.5 = phi i8* [ %t.addr.4, %if.end33 ], [ %t.addr.6.lcssa, %while.cond.loopexit ]
  call void @llvm.dbg.value(metadata i8* %t.addr.5, metadata !174, metadata !DIExpression()), !dbg !185
  %cmp36 = icmp eq i8 %9, 46, !dbg !227
  br i1 %cmp36, label %land.rhs, label %while.end49, !dbg !228

land.rhs:                                         ; preds = %while.cond
  %arrayidx38 = getelementptr inbounds i8, i8* %t.addr.5, i64 1, !dbg !229
  %10 = load i8, i8* %arrayidx38, align 1, !dbg !229
  %cmp40 = icmp eq i8 %10, 47, !dbg !229
  br i1 %cmp40, label %while.body, label %while.end49, !dbg !222

while.body:                                       ; preds = %land.rhs
  %add.ptr42 = getelementptr inbounds i8, i8* %t.addr.5, i64 2, !dbg !230
  call void @llvm.dbg.value(metadata i8* %add.ptr42, metadata !174, metadata !DIExpression()), !dbg !185
  br label %while.cond43, !dbg !231

while.cond43:                                     ; preds = %while.body48, %while.body
  %t.addr.6 = phi i8* [ %add.ptr42, %while.body ], [ %incdec.ptr, %while.body48 ], !dbg !224
  call void @llvm.dbg.value(metadata i8* %t.addr.6, metadata !174, metadata !DIExpression()), !dbg !185
  %11 = load i8, i8* %t.addr.6, align 1, !dbg !226
  %cmp46 = icmp eq i8 %11, 47, !dbg !226
  br i1 %cmp46, label %while.body48, label %while.cond.loopexit, !dbg !231, !llvm.loop !232

while.body48:                                     ; preds = %while.cond43
  %incdec.ptr = getelementptr inbounds i8, i8* %t.addr.6, i64 1, !dbg !234
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !174, metadata !DIExpression()), !dbg !185
  br label %while.cond43, !dbg !231, !llvm.loop !235

while.end49:                                      ; preds = %while.cond, %land.rhs
  %t.addr.5.lcssa = phi i8* [ %t.addr.5, %while.cond ], [ %t.addr.5, %land.rhs ]
  call void @llvm.dbg.value(metadata i8* %t.addr.5.lcssa, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i8* %t.addr.5.lcssa, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i8* %t.addr.5.lcssa, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i8* %t.addr.5.lcssa, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i8* %t.addr.5.lcssa, metadata !174, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i8* %t.addr.5.lcssa, metadata !174, metadata !DIExpression()), !dbg !185
  ret i8* %t.addr.5.lcssa, !dbg !237
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @munge(i8* %filename) unnamed_addr #2 !dbg !238 {
entry:
  call void @llvm.dbg.value(metadata i8* %filename, metadata !242, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8* %filename, metadata !244, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 0, metadata !243, metadata !DIExpression()), !dbg !248
  br label %for.cond, !dbg !249

for.cond:                                         ; preds = %for.inc12, %entry
  %p.0 = phi i8* [ %filename, %entry ], [ %incdec.ptr13, %for.inc12 ], !dbg !251
  %len.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc12 ], !dbg !251
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !243, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !244, metadata !DIExpression()), !dbg !248
  %0 = load i8, i8* %p.0, align 1, !dbg !252
  %tobool = icmp eq i8 %0, 0, !dbg !254
  br i1 %tobool, label %for.end15, label %for.body, !dbg !254

for.body:                                         ; preds = %for.cond
  %conv = sext i8 %0 to i32, !dbg !255
  switch i32 %conv, label %for.inc12 [
    i32 32, label %sw.bb
    i32 9, label %sw.bb
    i32 36, label %sw.bb8
    i32 35, label %sw.bb10
  ], !dbg !257

sw.bb:                                            ; preds = %for.body, %for.body
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !245, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !248
  br label %for.cond1, !dbg !258

for.cond1:                                        ; preds = %for.inc, %sw.bb
  %p.0.pn = phi i8* [ %p.0, %sw.bb ], [ %q.0, %for.inc ]
  %len.1 = phi i32 [ %len.0, %sw.bb ], [ %inc, %for.inc ], !dbg !251
  %q.0 = getelementptr inbounds i8, i8* %p.0.pn, i64 -1, !dbg !261
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !243, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !245, metadata !DIExpression()), !dbg !248
  %cmp = icmp ult i8* %q.0, %filename, !dbg !262
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !264

land.rhs:                                         ; preds = %for.cond1
  %1 = load i8, i8* %q.0, align 1, !dbg !265
  %cmp4 = icmp eq i8 %1, 92, !dbg !266
  br label %land.end

land.end:                                         ; preds = %for.cond1, %land.rhs
  %2 = phi i1 [ false, %for.cond1 ], [ %cmp4, %land.rhs ], !dbg !267
  %inc = add nsw i32 %len.1, 1, !dbg !268
  call void @llvm.dbg.value(metadata i32 %inc, metadata !243, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 %inc, metadata !243, metadata !DIExpression()), !dbg !248
  br i1 %2, label %for.inc, label %for.inc12.loopexit, !dbg !269

for.inc:                                          ; preds = %land.end
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !245, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !248
  br label %for.cond1, !dbg !270, !llvm.loop !271

sw.bb8:                                           ; preds = %for.body
  %inc9 = add nsw i32 %len.0, 1, !dbg !273
  call void @llvm.dbg.value(metadata i32 %inc9, metadata !243, metadata !DIExpression()), !dbg !248
  br label %for.inc12, !dbg !274

sw.bb10:                                          ; preds = %for.body
  %inc11 = add nsw i32 %len.0, 1, !dbg !275
  call void @llvm.dbg.value(metadata i32 %inc11, metadata !243, metadata !DIExpression()), !dbg !248
  br label %for.inc12, !dbg !276

for.inc12.loopexit:                               ; preds = %land.end
  %inc.lcssa = phi i32 [ %inc, %land.end ], !dbg !268
  br label %for.inc12, !dbg !277

for.inc12:                                        ; preds = %for.inc12.loopexit, %sw.bb8, %sw.bb10, %for.body
  %len.2 = phi i32 [ %len.0, %for.body ], [ %inc11, %sw.bb10 ], [ %inc9, %sw.bb8 ], [ %inc.lcssa, %for.inc12.loopexit ], !dbg !251
  call void @llvm.dbg.value(metadata i32 %len.2, metadata !243, metadata !DIExpression()), !dbg !248
  %incdec.ptr13 = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !277
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13, metadata !244, metadata !DIExpression()), !dbg !248
  %inc14 = add nsw i32 %len.2, 1, !dbg !278
  call void @llvm.dbg.value(metadata i32 %inc14, metadata !243, metadata !DIExpression()), !dbg !248
  br label %for.cond, !dbg !279, !llvm.loop !280

for.end15:                                        ; preds = %for.cond
  %len.0.lcssa = phi i32 [ %len.0, %for.cond ], !dbg !251
  call void @llvm.dbg.value(metadata i32 %len.0.lcssa, metadata !243, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 %len.0.lcssa, metadata !243, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 %len.0.lcssa, metadata !243, metadata !DIExpression()), !dbg !248
  %add = add nsw i32 %len.0.lcssa, 1, !dbg !282
  %conv16 = sext i32 %add to i64, !dbg !282
  %call = tail call i8* @xmalloc(i64 %conv16) #7, !dbg !282
  call void @llvm.dbg.value(metadata i8* %call, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8* %filename, metadata !244, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8* %call, metadata !246, metadata !DIExpression()), !dbg !248
  br label %for.cond17, !dbg !283

for.cond17:                                       ; preds = %sw.epilog41, %for.end15
  %p.1 = phi i8* [ %filename, %for.end15 ], [ %incdec.ptr43, %sw.epilog41 ], !dbg !285
  %dst.0 = phi i8* [ %call, %for.end15 ], [ %incdec.ptr44, %sw.epilog41 ], !dbg !285
  call void @llvm.dbg.value(metadata i8* %dst.0, metadata !246, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !244, metadata !DIExpression()), !dbg !248
  %3 = load i8, i8* %p.1, align 1, !dbg !286
  %tobool18 = icmp eq i8 %3, 0, !dbg !288
  br i1 %tobool18, label %for.end45, label %for.body19, !dbg !288

for.body19:                                       ; preds = %for.cond17
  %conv20 = sext i8 %3 to i32, !dbg !289
  switch i32 %conv20, label %sw.epilog41 [
    i32 32, label %sw.bb21
    i32 9, label %sw.bb21
    i32 36, label %sw.bb37
    i32 35, label %sw.bb39
  ], !dbg !291

sw.bb21:                                          ; preds = %for.body19, %for.body19
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !245, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !248
  br label %for.cond23, !dbg !292

for.cond23:                                       ; preds = %for.inc33, %sw.bb21
  %p.1.pn = phi i8* [ %p.1, %sw.bb21 ], [ %q.1, %for.inc33 ]
  %dst.1 = phi i8* [ %dst.0, %sw.bb21 ], [ %incdec.ptr32, %for.inc33 ], !dbg !285
  %q.1 = getelementptr inbounds i8, i8* %p.1.pn, i64 -1, !dbg !295
  call void @llvm.dbg.value(metadata i8* %dst.1, metadata !246, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8* %q.1, metadata !245, metadata !DIExpression()), !dbg !248
  %cmp24 = icmp ult i8* %q.1, %filename, !dbg !296
  br i1 %cmp24, label %land.end30, label %land.rhs26, !dbg !298

land.rhs26:                                       ; preds = %for.cond23
  %4 = load i8, i8* %q.1, align 1, !dbg !299
  %cmp28 = icmp eq i8 %4, 92, !dbg !300
  br label %land.end30

land.end30:                                       ; preds = %for.cond23, %land.rhs26
  %5 = phi i1 [ false, %for.cond23 ], [ %cmp28, %land.rhs26 ], !dbg !301
  %incdec.ptr32 = getelementptr inbounds i8, i8* %dst.1, i64 1, !dbg !302
  call void @llvm.dbg.value(metadata i8* %incdec.ptr32, metadata !246, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8* %incdec.ptr32, metadata !246, metadata !DIExpression()), !dbg !248
  store i8 92, i8* %dst.1, align 1, !dbg !302
  br i1 %5, label %for.inc33, label %sw.epilog41.loopexit, !dbg !303

for.inc33:                                        ; preds = %land.end30
  call void @llvm.dbg.value(metadata i8* %q.1, metadata !245, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !248
  br label %for.cond23, !dbg !304, !llvm.loop !305

sw.bb37:                                          ; preds = %for.body19
  %incdec.ptr38 = getelementptr inbounds i8, i8* %dst.0, i64 1, !dbg !307
  call void @llvm.dbg.value(metadata i8* %incdec.ptr38, metadata !246, metadata !DIExpression()), !dbg !248
  store i8 36, i8* %dst.0, align 1, !dbg !308
  br label %sw.epilog41, !dbg !309

sw.bb39:                                          ; preds = %for.body19
  %incdec.ptr40 = getelementptr inbounds i8, i8* %dst.0, i64 1, !dbg !310
  call void @llvm.dbg.value(metadata i8* %incdec.ptr40, metadata !246, metadata !DIExpression()), !dbg !248
  store i8 92, i8* %dst.0, align 1, !dbg !311
  br label %sw.epilog41, !dbg !312

sw.epilog41.loopexit:                             ; preds = %land.end30
  %incdec.ptr32.lcssa = phi i8* [ %incdec.ptr32, %land.end30 ], !dbg !302
  br label %sw.epilog41, !dbg !313

sw.epilog41:                                      ; preds = %sw.epilog41.loopexit, %for.body19, %sw.bb39, %sw.bb37
  %dst.2 = phi i8* [ %incdec.ptr40, %sw.bb39 ], [ %incdec.ptr38, %sw.bb37 ], [ %dst.0, %for.body19 ], [ %incdec.ptr32.lcssa, %sw.epilog41.loopexit ], !dbg !285
  call void @llvm.dbg.value(metadata i8* %dst.2, metadata !246, metadata !DIExpression()), !dbg !248
  %6 = load i8, i8* %p.1, align 1, !dbg !313
  store i8 %6, i8* %dst.2, align 1, !dbg !314
  %incdec.ptr43 = getelementptr inbounds i8, i8* %p.1, i64 1, !dbg !315
  call void @llvm.dbg.value(metadata i8* %incdec.ptr43, metadata !244, metadata !DIExpression()), !dbg !248
  %incdec.ptr44 = getelementptr inbounds i8, i8* %dst.2, i64 1, !dbg !316
  call void @llvm.dbg.value(metadata i8* %incdec.ptr44, metadata !246, metadata !DIExpression()), !dbg !248
  br label %for.cond17, !dbg !317, !llvm.loop !318

for.end45:                                        ; preds = %for.cond17
  %dst.0.lcssa = phi i8* [ %dst.0, %for.cond17 ], !dbg !285
  call void @llvm.dbg.value(metadata i8* %dst.0.lcssa, metadata !246, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8* %dst.0.lcssa, metadata !246, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i8* %dst.0.lcssa, metadata !246, metadata !DIExpression()), !dbg !248
  store i8 0, i8* %dst.0.lcssa, align 1, !dbg !320
  ret i8* %call, !dbg !321
}

declare dso_local i8* @xstrdup(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @deps_add_default_target(%struct.deps* %d, i8* %tgt) local_unnamed_addr #2 !dbg !322 {
entry:
  call void @llvm.dbg.value(metadata %struct.deps* %d, metadata !326, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i8* %tgt, metadata !327, metadata !DIExpression()), !dbg !333
  %ntargets = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 1, !dbg !334
  %0 = load i32, i32* %ntargets, align 8, !dbg !334
  %tobool = icmp eq i32 %0, 0, !dbg !336
  br i1 %tobool, label %if.end, label %if.end13, !dbg !337

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %tgt, align 1, !dbg !338
  %cmp = icmp eq i8 %1, 0, !dbg !339
  br i1 %cmp, label %if.then2, label %if.else, !dbg !340

if.then2:                                         ; preds = %if.end
  tail call void @deps_add_target(%struct.deps* %d, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1) #8, !dbg !341
  br label %if.end13, !dbg !341

if.else:                                          ; preds = %if.end
  %call = tail call i8* @lbasename(i8* %tgt) #7, !dbg !342
  call void @llvm.dbg.value(metadata i8* %call, metadata !328, metadata !DIExpression()), !dbg !343
  %call3 = tail call i64 @strlen(i8* %call) #9, !dbg !344
  %call4 = tail call i64 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !344
  %add = add i64 %call3, %call4, !dbg !344
  %add5 = add i64 %add, 1, !dbg !344
  %2 = alloca i8, i64 %add5, align 16, !dbg !344
  call void @llvm.dbg.value(metadata i8* %2, metadata !331, metadata !DIExpression()), !dbg !343
  %call6 = call i8* @strcpy(i8* nonnull %2, i8* %call) #7, !dbg !345
  %call7 = call i8* @strrchr(i8* nonnull %2, i32 46) #9, !dbg !346
  call void @llvm.dbg.value(metadata i8* %call7, metadata !332, metadata !DIExpression()), !dbg !343
  %tobool8 = icmp eq i8* %call7, null, !dbg !347
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !349

if.then9:                                         ; preds = %if.else
  %call10 = call i64 @strlen(i8* nonnull %2) #9, !dbg !350
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %call10, !dbg !351
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !332, metadata !DIExpression()), !dbg !343
  br label %if.end11, !dbg !352

if.end11:                                         ; preds = %if.else, %if.then9
  %suffix.0 = phi i8* [ %call7, %if.else ], [ %add.ptr, %if.then9 ], !dbg !343
  call void @llvm.dbg.value(metadata i8* %suffix.0, metadata !332, metadata !DIExpression()), !dbg !343
  %call12 = call i8* @strcpy(i8* %suffix.0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !353
  call void @deps_add_target(%struct.deps* %d, i8* nonnull %2, i32 1) #8, !dbg !354
  br label %if.end13

if.end13:                                         ; preds = %entry, %if.end11, %if.then2
  ret void, !dbg !355
}

declare dso_local i8* @lbasename(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare dso_local i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @deps_add_dep(%struct.deps* %d, i8* %t) local_unnamed_addr #2 !dbg !356 {
entry:
  call void @llvm.dbg.value(metadata %struct.deps* %d, metadata !358, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i8* %t, metadata !359, metadata !DIExpression()), !dbg !360
  %call = tail call fastcc i8* @apply_vpath(%struct.deps* %d, i8* %t) #8, !dbg !361
  %call1 = tail call fastcc i8* @munge(i8* %call) #8, !dbg !362
  call void @llvm.dbg.value(metadata i8* %call1, metadata !359, metadata !DIExpression()), !dbg !360
  %ndeps = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 4, !dbg !363
  %0 = load i32, i32* %ndeps, align 8, !dbg !363
  %deps_size = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 5, !dbg !365
  %1 = load i32, i32* %deps_size, align 4, !dbg !365
  %cmp = icmp eq i32 %0, %1, !dbg !366
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !367

entry.if.end_crit_edge:                           ; preds = %entry
  %depv8.phi.trans.insert = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 3, !dbg !360
  %.pre = load i8**, i8*** %depv8.phi.trans.insert, align 8, !dbg !368
  br label %if.end, !dbg !367

if.then:                                          ; preds = %entry
  %mul = shl i32 %0, 1, !dbg !369
  %add = add i32 %mul, 8, !dbg !371
  store i32 %add, i32* %deps_size, align 4, !dbg !372
  %depv = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 3, !dbg !373
  %2 = bitcast i8*** %depv to i8**, !dbg !373
  %3 = load i8*, i8** %2, align 8, !dbg !373
  %conv = zext i32 %add to i64, !dbg !373
  %mul5 = shl nuw nsw i64 %conv, 3, !dbg !373
  %call6 = tail call i8* @xrealloc(i8* %3, i64 %mul5) #7, !dbg !373
  store i8* %call6, i8** %2, align 8, !dbg !374
  %4 = bitcast i8* %call6 to i8**, !dbg !375
  %.pre1 = load i32, i32* %ndeps, align 8, !dbg !376
  br label %if.end, !dbg !375

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %5 = phi i32 [ %0, %entry.if.end_crit_edge ], [ %.pre1, %if.then ], !dbg !376
  %6 = phi i8** [ %.pre, %entry.if.end_crit_edge ], [ %4, %if.then ], !dbg !368
  %inc = add i32 %5, 1, !dbg !376
  store i32 %inc, i32* %ndeps, align 8, !dbg !376
  %idxprom = zext i32 %5 to i64, !dbg !377
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom, !dbg !377
  store i8* %call1, i8** %arrayidx, align 8, !dbg !378
  ret void, !dbg !379
}

; Function Attrs: nounwind uwtable
define dso_local void @deps_add_vpath(%struct.deps* %d, i8* %vpath) local_unnamed_addr #2 !dbg !380 {
entry:
  call void @llvm.dbg.value(metadata %struct.deps* %d, metadata !382, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i8* %vpath, metadata !383, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i8* %vpath, metadata !384, metadata !DIExpression()), !dbg !388
  %nvpaths = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 8, !dbg !389
  %vpaths_size = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 9, !dbg !389
  %vpathv = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 6, !dbg !394
  %0 = bitcast i8*** %vpathv to i8**, !dbg !394
  %vpathlv = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 7, !dbg !394
  %1 = bitcast i64** %vpathlv to i8**, !dbg !394
  br label %for.cond, !dbg !396

for.cond:                                         ; preds = %if.end28, %entry
  %elem.0 = phi i8* [ %vpath, %entry ], [ %spec.select, %if.end28 ], !dbg !397
  call void @llvm.dbg.value(metadata i8* %elem.0, metadata !384, metadata !DIExpression()), !dbg !388
  %2 = load i8, i8* %elem.0, align 1, !dbg !398
  %tobool = icmp eq i8 %2, 0, !dbg !399
  br i1 %tobool, label %for.end38, label %for.cond1.preheader, !dbg !399

for.cond1.preheader:                              ; preds = %for.cond
  br label %for.cond1, !dbg !400

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %3 = phi i8 [ %.pre, %for.inc ], [ %2, %for.cond1.preheader ], !dbg !402
  %p.0 = phi i8* [ %incdec.ptr, %for.inc ], [ %elem.0, %for.cond1.preheader ], !dbg !404
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !385, metadata !DIExpression()), !dbg !388
  %tobool2 = icmp eq i8 %3, 0, !dbg !402
  %cmp = icmp eq i8 %3, 58, !dbg !405
  %or.cond = or i1 %tobool2, %cmp, !dbg !406
  br i1 %or.cond, label %for.end, label %for.inc, !dbg !406

for.inc:                                          ; preds = %for.cond1
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !407
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !385, metadata !DIExpression()), !dbg !388
  %.pre = load i8, i8* %incdec.ptr, align 1, !dbg !402
  br label %for.cond1, !dbg !408, !llvm.loop !409

for.end:                                          ; preds = %for.cond1
  %p.0.lcssa = phi i8* [ %p.0, %for.cond1 ], !dbg !404
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !385, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !385, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !385, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !385, metadata !DIExpression()), !dbg !388
  %sub.ptr.lhs.cast = ptrtoint i8* %p.0.lcssa to i64, !dbg !411
  %sub.ptr.rhs.cast = ptrtoint i8* %elem.0 to i64, !dbg !411
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !411
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !387, metadata !DIExpression()), !dbg !388
  %add = add i64 %sub.ptr.sub, 1, !dbg !412
  %call = tail call i8* @xmalloc(i64 %add) #7, !dbg !412
  call void @llvm.dbg.value(metadata i8* %call, metadata !386, metadata !DIExpression()), !dbg !388
  %call6 = tail call i8* @memcpy(i8* %call, i8* %elem.0, i64 %sub.ptr.sub) #7, !dbg !413
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %sub.ptr.sub, !dbg !414
  store i8 0, i8* %arrayidx, align 1, !dbg !415
  %4 = load i8, i8* %p.0.lcssa, align 1, !dbg !416
  %cmp8 = icmp eq i8 %4, 58, !dbg !418
  %incdec.ptr10 = getelementptr inbounds i8, i8* %p.0.lcssa, i64 1, !dbg !419
  %spec.select = select i1 %cmp8, i8* %incdec.ptr10, i8* %p.0.lcssa, !dbg !420
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !385, metadata !DIExpression()), !dbg !388
  %5 = load i32, i32* %nvpaths, align 8, !dbg !421
  %6 = load i32, i32* %vpaths_size, align 4, !dbg !422
  %cmp11 = icmp eq i32 %5, %6, !dbg !423
  br i1 %cmp11, label %if.then13, label %if.end28, !dbg !424

if.then13:                                        ; preds = %for.end
  %mul15 = shl i32 %5, 1, !dbg !425
  %add16 = add i32 %mul15, 8, !dbg !426
  store i32 %add16, i32* %vpaths_size, align 4, !dbg !427
  %7 = load i8*, i8** %0, align 8, !dbg !428
  %conv19 = zext i32 %add16 to i64, !dbg !428
  %mul20 = shl nuw nsw i64 %conv19, 3, !dbg !428
  %call21 = tail call i8* @xrealloc(i8* %7, i64 %mul20) #7, !dbg !428
  store i8* %call21, i8** %0, align 8, !dbg !429
  %8 = load i8*, i8** %1, align 8, !dbg !430
  %9 = load i32, i32* %vpaths_size, align 4, !dbg !430
  %conv24 = zext i32 %9 to i64, !dbg !430
  %mul25 = shl nuw nsw i64 %conv24, 3, !dbg !430
  %call26 = tail call i8* @xrealloc(i8* %8, i64 %mul25) #7, !dbg !430
  store i8* %call26, i8** %1, align 8, !dbg !431
  %.pre1 = load i32, i32* %nvpaths, align 8, !dbg !432
  br label %if.end28, !dbg !433

if.end28:                                         ; preds = %if.then13, %for.end
  %10 = phi i32 [ %.pre1, %if.then13 ], [ %5, %for.end ], !dbg !432
  %11 = load i8**, i8*** %vpathv, align 8, !dbg !434
  %idxprom = zext i32 %10 to i64, !dbg !435
  %arrayidx31 = getelementptr inbounds i8*, i8** %11, i64 %idxprom, !dbg !435
  store i8* %call, i8** %arrayidx31, align 8, !dbg !436
  %12 = load i64*, i64** %vpathlv, align 8, !dbg !437
  %13 = load i32, i32* %nvpaths, align 8, !dbg !438
  %idxprom34 = zext i32 %13 to i64, !dbg !439
  %arrayidx35 = getelementptr inbounds i64, i64* %12, i64 %idxprom34, !dbg !439
  store i64 %sub.ptr.sub, i64* %arrayidx35, align 8, !dbg !440
  %14 = load i32, i32* %nvpaths, align 8, !dbg !441
  %inc = add i32 %14, 1, !dbg !441
  store i32 %inc, i32* %nvpaths, align 8, !dbg !441
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !384, metadata !DIExpression()), !dbg !388
  br label %for.cond, !dbg !442, !llvm.loop !443

for.end38:                                        ; preds = %for.cond
  ret void, !dbg !445
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @deps_write(%struct.deps* %d, %struct._IO_FILE* %fp, i32 %colmax) local_unnamed_addr #2 !dbg !446 {
entry:
  call void @llvm.dbg.value(metadata %struct.deps* %d, metadata !508, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !509, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %colmax, metadata !510, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 0, metadata !513, metadata !DIExpression()), !dbg !514
  %colmax.off = add i32 %colmax, -1, !dbg !515
  %0 = icmp ult i32 %colmax.off, 33, !dbg !515
  %colmax.addr.0 = select i1 %0, i32 34, i32 %colmax, !dbg !515
  call void @llvm.dbg.value(metadata i32 %colmax.addr.0, metadata !510, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 0, metadata !512, metadata !DIExpression()), !dbg !514
  %ntargets = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 1, !dbg !517
  %targetv = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 0, !dbg !520
  %tobool4 = icmp eq i32 %colmax.addr.0, 0, !dbg !522
  br i1 %tobool4, label %entry.entry.split_crit_edge, label %entry.split.us, !dbg !526

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %for.cond, !dbg !526

entry.split.us:                                   ; preds = %entry
  br label %for.cond.us, !dbg !526

for.cond.us:                                      ; preds = %if.end13.us, %entry.split.us
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %if.end13.us ], [ 0, %entry.split.us ], !dbg !527
  %column.0.us = phi i32 [ %column.2.us, %if.end13.us ], [ 0, %entry.split.us ], !dbg !514
  call void @llvm.dbg.value(metadata i32 %column.0.us, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !512, metadata !DIExpression()), !dbg !514
  %1 = load i32, i32* %ntargets, align 8, !dbg !528
  %2 = zext i32 %1 to i64, !dbg !529
  %cmp1.us = icmp ult i64 %indvars.iv9, %2, !dbg !529
  br i1 %cmp1.us, label %for.body.us, label %for.end.us-lcssa.us, !dbg !530

for.body.us:                                      ; preds = %for.cond.us
  %3 = load i8**, i8*** %targetv, align 8, !dbg !531
  %arrayidx.us = getelementptr inbounds i8*, i8** %3, i64 %indvars.iv9, !dbg !532
  %4 = load i8*, i8** %arrayidx.us, align 8, !dbg !532
  %call.us = tail call i64 @strlen(i8* %4) #9, !dbg !533
  %conv.us = trunc i64 %call.us to i32, !dbg !533
  call void @llvm.dbg.value(metadata i32 %conv.us, metadata !511, metadata !DIExpression()), !dbg !514
  %add.us = add i32 %column.0.us, %conv.us, !dbg !534
  call void @llvm.dbg.value(metadata i32 %add.us, metadata !513, metadata !DIExpression()), !dbg !514
  %tobool2.us = icmp eq i64 %indvars.iv9, 0, !dbg !535
  br i1 %tobool2.us, label %if.end13.us, label %if.then3.us, !dbg !536

if.then3.us:                                      ; preds = %for.body.us
  %cmp6.us = icmp ugt i32 %add.us, %colmax.addr.0, !dbg !537
  br i1 %cmp6.us, label %if.then8.us, label %if.else.us, !dbg !538

if.else.us:                                       ; preds = %if.then3.us
  %call11.us = tail call i32 @putc(i32 32, %struct._IO_FILE* %fp) #7, !dbg !539
  %inc.us = add i32 %add.us, 1, !dbg !541
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !513, metadata !DIExpression()), !dbg !514
  br label %if.end13.us

if.then8.us:                                      ; preds = %if.then3.us
  %call9.us = tail call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %fp) #7, !dbg !542
  %add10.us = add i32 %conv.us, 1, !dbg !544
  call void @llvm.dbg.value(metadata i32 %add10.us, metadata !513, metadata !DIExpression()), !dbg !514
  br label %if.end13.us, !dbg !545

if.end13.us:                                      ; preds = %if.then8.us, %if.else.us, %for.body.us
  %column.2.us = phi i32 [ %add.us, %for.body.us ], [ %add10.us, %if.then8.us ], [ %inc.us, %if.else.us ], !dbg !520
  call void @llvm.dbg.value(metadata i32 %column.2.us, metadata !513, metadata !DIExpression()), !dbg !514
  %5 = load i8**, i8*** %targetv, align 8, !dbg !546
  %arrayidx16.us = getelementptr inbounds i8*, i8** %5, i64 %indvars.iv9, !dbg !547
  %6 = load i8*, i8** %arrayidx16.us, align 8, !dbg !547
  %call17.us = tail call i32 @fputs(i8* %6, %struct._IO_FILE* %fp) #7, !dbg !548
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !549
  br label %for.cond.us, !dbg !550, !llvm.loop !551

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  %column.0.us.lcssa = phi i32 [ %column.0.us, %for.cond.us ], !dbg !514
  call void @llvm.dbg.value(metadata i32 %column.0.us.lcssa, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %column.0.us.lcssa, metadata !513, metadata !DIExpression()), !dbg !514
  br label %for.end, !dbg !553

for.cond:                                         ; preds = %if.end13, %entry.entry.split_crit_edge
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %if.end13 ], [ 0, %entry.entry.split_crit_edge ], !dbg !527
  %column.0 = phi i32 [ %column.2, %if.end13 ], [ 0, %entry.entry.split_crit_edge ], !dbg !514
  call void @llvm.dbg.value(metadata i32 %column.0, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !512, metadata !DIExpression()), !dbg !514
  %7 = load i32, i32* %ntargets, align 8, !dbg !528
  %8 = zext i32 %7 to i64, !dbg !529
  %cmp1 = icmp ult i64 %indvars.iv7, %8, !dbg !529
  br i1 %cmp1, label %for.body, label %for.end.us-lcssa, !dbg !530

for.body:                                         ; preds = %for.cond
  %9 = load i8**, i8*** %targetv, align 8, !dbg !531
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %indvars.iv7, !dbg !532
  %10 = load i8*, i8** %arrayidx, align 8, !dbg !532
  %call = tail call i64 @strlen(i8* %10) #9, !dbg !533
  %conv = trunc i64 %call to i32, !dbg !533
  call void @llvm.dbg.value(metadata i32 %conv, metadata !511, metadata !DIExpression()), !dbg !514
  %add = add i32 %column.0, %conv, !dbg !534
  call void @llvm.dbg.value(metadata i32 %add, metadata !513, metadata !DIExpression()), !dbg !514
  %tobool2 = icmp eq i64 %indvars.iv7, 0, !dbg !535
  br i1 %tobool2, label %if.end13, label %if.then3, !dbg !536

if.then3:                                         ; preds = %for.body
  %call11 = tail call i32 @putc(i32 32, %struct._IO_FILE* %fp) #7, !dbg !539
  %inc = add i32 %add, 1, !dbg !541
  call void @llvm.dbg.value(metadata i32 %inc, metadata !513, metadata !DIExpression()), !dbg !514
  %.pre = load i8**, i8*** %targetv, align 8, !dbg !546
  %arrayidx16.phi.trans.insert = getelementptr inbounds i8*, i8** %.pre, i64 %indvars.iv7, !dbg !520
  %.pre3 = load i8*, i8** %arrayidx16.phi.trans.insert, align 8, !dbg !547
  br label %if.end13

if.end13:                                         ; preds = %for.body, %if.then3
  %11 = phi i8* [ %10, %for.body ], [ %.pre3, %if.then3 ], !dbg !547
  %column.2 = phi i32 [ %add, %for.body ], [ %inc, %if.then3 ], !dbg !520
  call void @llvm.dbg.value(metadata i32 %column.2, metadata !513, metadata !DIExpression()), !dbg !514
  %call17 = tail call i32 @fputs(i8* %11, %struct._IO_FILE* %fp) #7, !dbg !548
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !549
  br label %for.cond, !dbg !550, !llvm.loop !551

for.end.us-lcssa:                                 ; preds = %for.cond
  %column.0.lcssa11 = phi i32 [ %column.0, %for.cond ], !dbg !514
  call void @llvm.dbg.value(metadata i32 %column.0.lcssa11, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i32 %column.0.lcssa11, metadata !513, metadata !DIExpression()), !dbg !514
  br label %for.end, !dbg !553

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %column.0.lcssa = phi i32 [ %column.0.lcssa11, %for.end.us-lcssa ], [ %column.0.us.lcssa, %for.end.us-lcssa.us ], !dbg !514
  call void @llvm.dbg.value(metadata i32 %column.0.lcssa, metadata !513, metadata !DIExpression()), !dbg !514
  %call19 = tail call i32 @putc(i32 58, %struct._IO_FILE* %fp) #7, !dbg !553
  call void @llvm.dbg.value(metadata i32 %column.0.lcssa, metadata !513, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !514
  call void @llvm.dbg.value(metadata i32 0, metadata !512, metadata !DIExpression()), !dbg !514
  %ndeps = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 4, !dbg !554
  %depv = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 3, !dbg !557
  br i1 %tobool4, label %for.end.for.end.split_crit_edge, label %for.end.split.us, !dbg !559

for.end.for.end.split_crit_edge:                  ; preds = %for.end
  br label %for.cond21, !dbg !559

for.end.split.us:                                 ; preds = %for.end
  br label %for.cond21.us, !dbg !559

for.cond21.us:                                    ; preds = %if.end40.us, %for.end.split.us
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %if.end40.us ], [ 0, %for.end.split.us ], !dbg !560
  %column.3.in.us = phi i32 [ %column.4.in.us, %if.end40.us ], [ %column.0.lcssa, %for.end.split.us ]
  call void @llvm.dbg.value(metadata i32 %column.3.in.us, metadata !513, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !514
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !512, metadata !DIExpression()), !dbg !514
  %12 = load i32, i32* %ndeps, align 8, !dbg !561
  %13 = zext i32 %12 to i64, !dbg !562
  %cmp22.us = icmp ult i64 %indvars.iv5, %13, !dbg !562
  br i1 %cmp22.us, label %for.body24.us, label %for.end47.us-lcssa.us, !dbg !563

for.body24.us:                                    ; preds = %for.cond21.us
  %column.3.us = add i32 %column.3.in.us, 1, !dbg !514
  call void @llvm.dbg.value(metadata i32 %column.3.us, metadata !513, metadata !DIExpression()), !dbg !514
  %14 = load i8**, i8*** %depv, align 8, !dbg !564
  %arrayidx26.us = getelementptr inbounds i8*, i8** %14, i64 %indvars.iv5, !dbg !565
  %15 = load i8*, i8** %arrayidx26.us, align 8, !dbg !565
  %call27.us = tail call i64 @strlen(i8* %15) #9, !dbg !566
  %conv28.us = trunc i64 %call27.us to i32, !dbg !566
  call void @llvm.dbg.value(metadata i32 %conv28.us, metadata !511, metadata !DIExpression()), !dbg !514
  %add29.us = add i32 %column.3.us, %conv28.us, !dbg !567
  call void @llvm.dbg.value(metadata i32 %add29.us, metadata !513, metadata !DIExpression()), !dbg !514
  %cmp32.us = icmp ugt i32 %add29.us, %colmax.addr.0, !dbg !568
  br i1 %cmp32.us, label %if.then34.us, label %if.else37.us, !dbg !570

if.else37.us:                                     ; preds = %for.body24.us
  %call38.us = tail call i32 @putc(i32 32, %struct._IO_FILE* %fp) #7, !dbg !571
  call void @llvm.dbg.value(metadata i32 %add29.us, metadata !513, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !514
  br label %if.end40.us

if.then34.us:                                     ; preds = %for.body24.us
  %call35.us = tail call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %fp) #7, !dbg !573
  call void @llvm.dbg.value(metadata i32 %conv28.us, metadata !513, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !514
  br label %if.end40.us, !dbg !575

if.end40.us:                                      ; preds = %if.then34.us, %if.else37.us
  %column.4.in.us = phi i32 [ %conv28.us, %if.then34.us ], [ %add29.us, %if.else37.us ]
  call void @llvm.dbg.value(metadata i32 %column.4.in.us, metadata !513, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !514
  %16 = load i8**, i8*** %depv, align 8, !dbg !576
  %arrayidx43.us = getelementptr inbounds i8*, i8** %16, i64 %indvars.iv5, !dbg !577
  %17 = load i8*, i8** %arrayidx43.us, align 8, !dbg !577
  %call44.us = tail call i32 @fputs(i8* %17, %struct._IO_FILE* %fp) #7, !dbg !578
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !579
  br label %for.cond21.us, !dbg !580, !llvm.loop !581

for.end47.us-lcssa.us:                            ; preds = %for.cond21.us
  br label %for.end47, !dbg !583

for.cond21:                                       ; preds = %for.body24, %for.end.for.end.split_crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body24 ], [ 0, %for.end.for.end.split_crit_edge ], !dbg !560
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !512, metadata !DIExpression()), !dbg !514
  %18 = load i32, i32* %ndeps, align 8, !dbg !561
  %19 = zext i32 %18 to i64, !dbg !562
  %cmp22 = icmp ult i64 %indvars.iv, %19, !dbg !562
  br i1 %cmp22, label %for.body24, label %for.end47.us-lcssa, !dbg !563

for.body24:                                       ; preds = %for.cond21
  %call38 = tail call i32 @putc(i32 32, %struct._IO_FILE* %fp) #7, !dbg !571
  %20 = load i8**, i8*** %depv, align 8, !dbg !576
  %arrayidx43 = getelementptr inbounds i8*, i8** %20, i64 %indvars.iv, !dbg !577
  %21 = load i8*, i8** %arrayidx43, align 8, !dbg !577
  %call44 = tail call i32 @fputs(i8* %21, %struct._IO_FILE* %fp) #7, !dbg !578
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !579
  br label %for.cond21, !dbg !580, !llvm.loop !581

for.end47.us-lcssa:                               ; preds = %for.cond21
  br label %for.end47, !dbg !583

for.end47:                                        ; preds = %for.end47.us-lcssa.us, %for.end47.us-lcssa
  %call48 = tail call i32 @putc(i32 10, %struct._IO_FILE* %fp) #7, !dbg !583
  ret void, !dbg !584
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #1

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @deps_phony_targets(%struct.deps* %d, %struct._IO_FILE* %fp) local_unnamed_addr #2 !dbg !585 {
entry:
  call void @llvm.dbg.value(metadata %struct.deps* %d, metadata !589, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !590, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata i32 1, metadata !591, metadata !DIExpression()), !dbg !592
  %ndeps = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 4, !dbg !593
  %depv = getelementptr inbounds %struct.deps, %struct.deps* %d, i64 0, i32 3, !dbg !596
  br label %for.cond, !dbg !598

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ], !dbg !599
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !591, metadata !DIExpression()), !dbg !592
  %0 = load i32, i32* %ndeps, align 8, !dbg !600
  %1 = zext i32 %0 to i64, !dbg !601
  %cmp = icmp ult i64 %indvars.iv, %1, !dbg !601
  br i1 %cmp, label %for.body, label %for.end, !dbg !602

for.body:                                         ; preds = %for.cond
  %call = tail call i32 @putc(i32 10, %struct._IO_FILE* %fp) #7, !dbg !603
  %2 = load i8**, i8*** %depv, align 8, !dbg !604
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %indvars.iv, !dbg !605
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !605
  %call1 = tail call i32 @fputs(i8* %3, %struct._IO_FILE* %fp) #7, !dbg !606
  %call2 = tail call i32 @putc(i32 58, %struct._IO_FILE* %fp) #7, !dbg !607
  %call3 = tail call i32 @putc(i32 10, %struct._IO_FILE* %fp) #7, !dbg !608
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !609
  br label %for.cond, !dbg !610, !llvm.loop !611

for.end:                                          ; preds = %for.cond
  ret void, !dbg !613
}

; Function Attrs: nounwind uwtable
define dso_local i32 @deps_save(%struct.deps* %deps, %struct._IO_FILE* %f) local_unnamed_addr #2 !dbg !614 {
entry:
  %num_to_write = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.deps* %deps, metadata !618, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !619, metadata !DIExpression()), !dbg !625
  %ndeps = getelementptr inbounds %struct.deps, %struct.deps* %deps, i64 0, i32 4, !dbg !626
  %0 = bitcast i32* %ndeps to i8*, !dbg !628
  %call = tail call i64 @fwrite(i8* nonnull %0, i64 4, i64 1, %struct._IO_FILE* %f) #7, !dbg !629
  %cmp = icmp eq i64 %call, 1, !dbg !630
  br i1 %cmp, label %for.cond.preheader, label %cleanup15, !dbg !631

for.cond.preheader:                               ; preds = %entry
  %1 = bitcast i64* %num_to_write to i8*, !dbg !632
  %depv = getelementptr inbounds %struct.deps, %struct.deps* %deps, i64 0, i32 3, !dbg !632
  br label %for.cond, !dbg !633

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !634
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !620, metadata !DIExpression()), !dbg !625
  %2 = load i32, i32* %ndeps, align 8, !dbg !635
  %3 = zext i32 %2 to i64, !dbg !636
  %cmp2 = icmp ult i64 %indvars.iv, %3, !dbg !636
  br i1 %cmp2, label %for.body, label %cleanup15.loopexit, !dbg !633

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10, !dbg !637
  %4 = load i8**, i8*** %depv, align 8, !dbg !638
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %indvars.iv, !dbg !639
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !639
  %call3 = call i64 @strlen(i8* %5) #9, !dbg !640
  call void @llvm.dbg.value(metadata i64 %call3, metadata !621, metadata !DIExpression()), !dbg !632
  store i64 %call3, i64* %num_to_write, align 8, !dbg !641
  %call4 = call i64 @fwrite(i8* nonnull %1, i64 8, i64 1, %struct._IO_FILE* %f) #7, !dbg !642
  %cmp5 = icmp eq i64 %call4, 1, !dbg !644
  br i1 %cmp5, label %if.end7, label %cleanup, !dbg !645

if.end7:                                          ; preds = %for.body
  %6 = load i8**, i8*** %depv, align 8, !dbg !646
  %arrayidx10 = getelementptr inbounds i8*, i8** %6, i64 %indvars.iv, !dbg !648
  %7 = load i8*, i8** %arrayidx10, align 8, !dbg !648
  %8 = load i64, i64* %num_to_write, align 8, !dbg !649
  call void @llvm.dbg.value(metadata i64 %8, metadata !621, metadata !DIExpression()), !dbg !632
  %call11 = call i64 @fwrite(i8* %7, i64 %8, i64 1, %struct._IO_FILE* %f) #7, !dbg !650
  %cmp12 = icmp ne i64 %call11, 1, !dbg !651
  %. = zext i1 %cmp12 to i32, !dbg !652
  br label %cleanup, !dbg !652

cleanup:                                          ; preds = %for.body, %if.end7
  %cleanup.dest.slot.0 = phi i32 [ 1, %for.body ], [ %., %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10, !dbg !653
  %cond = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond, label %for.inc, label %cleanup15.loopexit

for.inc:                                          ; preds = %cleanup
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !654
  br label %for.cond, !dbg !655, !llvm.loop !656

cleanup15.loopexit:                               ; preds = %cleanup, %for.cond
  %retval.2.ph = phi i32 [ 0, %for.cond ], [ -1, %cleanup ]
  br label %cleanup15, !dbg !658

cleanup15:                                        ; preds = %cleanup15.loopexit, %entry
  %retval.2 = phi i32 [ -1, %entry ], [ %retval.2.ph, %cleanup15.loopexit ], !dbg !625
  ret i32 %retval.2, !dbg !658
}

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @deps_restore(%struct.deps* %deps, %struct._IO_FILE* %fd, i8* %self) local_unnamed_addr #2 !dbg !659 {
entry:
  %count = alloca i32, align 4
  %num_to_read = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.deps* %deps, metadata !663, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fd, metadata !664, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i8* %self, metadata !665, metadata !DIExpression()), !dbg !671
  %0 = bitcast i32* %count to i8*, !dbg !672
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10, !dbg !672
  %1 = bitcast i64* %num_to_read to i8*, !dbg !673
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10, !dbg !673
  call void @llvm.dbg.value(metadata i64 512, metadata !669, metadata !DIExpression()), !dbg !671
  %call = tail call i8* @xmalloc(i64 512) #7, !dbg !674
  call void @llvm.dbg.value(metadata i8* %call, metadata !670, metadata !DIExpression()), !dbg !671
  %call1 = call i64 @fread(i8* nonnull %0, i64 1, i64 4, %struct._IO_FILE* %fd) #7, !dbg !675
  %cmp = icmp eq i64 %call1, 4, !dbg !677
  br i1 %cmp, label %for.cond.preheader, label %cleanup, !dbg !678

for.cond.preheader:                               ; preds = %entry
  %cmp18 = icmp eq i8* %self, null, !dbg !679
  br i1 %cmp18, label %for.cond.preheader.split.us, label %for.cond.preheader.for.cond.preheader.split_crit_edge, !dbg !684

for.cond.preheader.for.cond.preheader.split_crit_edge: ; preds = %for.cond.preheader
  br label %for.cond, !dbg !684

for.cond.preheader.split.us:                      ; preds = %for.cond.preheader
  br label %for.cond.us, !dbg !684

for.cond.us:                                      ; preds = %if.end17.us, %for.cond.preheader.split.us
  %i.0.us = phi i32 [ %inc.us, %if.end17.us ], [ 0, %for.cond.preheader.split.us ], !dbg !685
  %buf_size.0.us = phi i64 [ %buf_size.1.us, %if.end17.us ], [ 512, %for.cond.preheader.split.us ], !dbg !671
  %buf.0.us = phi i8* [ %buf.1.us, %if.end17.us ], [ %call, %for.cond.preheader.split.us ], !dbg !671
  call void @llvm.dbg.value(metadata i8* %buf.0.us, metadata !670, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i64 %buf_size.0.us, metadata !669, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i32 %i.0.us, metadata !666, metadata !DIExpression()), !dbg !671
  %2 = load i32, i32* %count, align 4, !dbg !686
  call void @llvm.dbg.value(metadata i32 %2, metadata !667, metadata !DIExpression()), !dbg !671
  %cmp2.us = icmp ult i32 %i.0.us, %2, !dbg !687
  br i1 %cmp2.us, label %for.body.us, label %for.end.us-lcssa.us, !dbg !684

for.body.us:                                      ; preds = %for.cond.us
  %call3.us = call i64 @fread(i8* nonnull %1, i64 1, i64 8, %struct._IO_FILE* %fd) #7, !dbg !688
  %cmp4.us = icmp eq i64 %call3.us, 8, !dbg !690
  br i1 %cmp4.us, label %if.end6.us, label %cleanup.loopexit.us-lcssa.us, !dbg !691

if.end6.us:                                       ; preds = %for.body.us
  %3 = load i64, i64* %num_to_read, align 8, !dbg !692
  call void @llvm.dbg.value(metadata i64 %3, metadata !668, metadata !DIExpression()), !dbg !671
  %add.us = add i64 %3, 1, !dbg !694
  %cmp7.us = icmp ult i64 %buf_size.0.us, %add.us, !dbg !695
  br i1 %cmp7.us, label %if.then8.us, label %if.end13.us, !dbg !696

if.then8.us:                                      ; preds = %if.end6.us
  call void @llvm.dbg.value(metadata i64 %3, metadata !668, metadata !DIExpression()), !dbg !671
  %add10.us = add i64 %3, 128, !dbg !697
  call void @llvm.dbg.value(metadata i64 %add10.us, metadata !669, metadata !DIExpression()), !dbg !671
  %call12.us = call i8* @xrealloc(i8* %buf.0.us, i64 %add10.us) #7, !dbg !699
  call void @llvm.dbg.value(metadata i8* %call12.us, metadata !670, metadata !DIExpression()), !dbg !671
  %.pre2 = load i64, i64* %num_to_read, align 8, !dbg !700
  br label %if.end13.us, !dbg !702

if.end13.us:                                      ; preds = %if.then8.us, %if.end6.us
  %4 = phi i64 [ %.pre2, %if.then8.us ], [ %3, %if.end6.us ], !dbg !700
  %buf_size.1.us = phi i64 [ %add10.us, %if.then8.us ], [ %buf_size.0.us, %if.end6.us ], !dbg !671
  %buf.1.us = phi i8* [ %call12.us, %if.then8.us ], [ %buf.0.us, %if.end6.us ], !dbg !671
  call void @llvm.dbg.value(metadata i8* %buf.1.us, metadata !670, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i64 %buf_size.1.us, metadata !669, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i64 %4, metadata !668, metadata !DIExpression()), !dbg !671
  %call14.us = call i64 @fread(i8* %buf.1.us, i64 1, i64 %4, %struct._IO_FILE* %fd) #7, !dbg !703
  %5 = load i64, i64* %num_to_read, align 8, !dbg !704
  call void @llvm.dbg.value(metadata i64 %5, metadata !668, metadata !DIExpression()), !dbg !671
  %cmp15.us = icmp eq i64 %call14.us, %5, !dbg !705
  br i1 %cmp15.us, label %if.end17.us, label %cleanup.loopexit.us-lcssa.us, !dbg !706

if.end17.us:                                      ; preds = %if.end13.us
  call void @llvm.dbg.value(metadata i64 %5, metadata !668, metadata !DIExpression()), !dbg !671
  %arrayidx.us = getelementptr inbounds i8, i8* %buf.1.us, i64 %call14.us, !dbg !707
  store i8 0, i8* %arrayidx.us, align 1, !dbg !708
  %inc.us = add i32 %i.0.us, 1, !dbg !709
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !666, metadata !DIExpression()), !dbg !671
  br label %for.cond.us, !dbg !710, !llvm.loop !711

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  %buf.0.us.lcssa = phi i8* [ %buf.0.us, %for.cond.us ], !dbg !671
  call void @llvm.dbg.value(metadata i8* %buf.0.us.lcssa, metadata !670, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i8* %buf.0.us.lcssa, metadata !670, metadata !DIExpression()), !dbg !671
  br label %for.end, !dbg !713

cleanup.loopexit.us-lcssa.us:                     ; preds = %if.end13.us, %for.body.us
  br label %cleanup.loopexit, !dbg !714

for.cond:                                         ; preds = %for.cond.preheader.for.cond.preheader.split_crit_edge, %for.inc
  %i.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader.for.cond.preheader.split_crit_edge ], !dbg !685
  %buf_size.0 = phi i64 [ %buf_size.1, %for.inc ], [ 512, %for.cond.preheader.for.cond.preheader.split_crit_edge ], !dbg !671
  %buf.0 = phi i8* [ %buf.1, %for.inc ], [ %call, %for.cond.preheader.for.cond.preheader.split_crit_edge ], !dbg !671
  call void @llvm.dbg.value(metadata i8* %buf.0, metadata !670, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i64 %buf_size.0, metadata !669, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !666, metadata !DIExpression()), !dbg !671
  %6 = load i32, i32* %count, align 4, !dbg !686
  call void @llvm.dbg.value(metadata i32 %6, metadata !667, metadata !DIExpression()), !dbg !671
  %cmp2 = icmp ult i32 %i.0, %6, !dbg !687
  br i1 %cmp2, label %for.body, label %for.end.us-lcssa, !dbg !684

for.body:                                         ; preds = %for.cond
  %call3 = call i64 @fread(i8* nonnull %1, i64 1, i64 8, %struct._IO_FILE* %fd) #7, !dbg !688
  %cmp4 = icmp eq i64 %call3, 8, !dbg !690
  br i1 %cmp4, label %if.end6, label %cleanup.loopexit.us-lcssa, !dbg !691

if.end6:                                          ; preds = %for.body
  %7 = load i64, i64* %num_to_read, align 8, !dbg !692
  call void @llvm.dbg.value(metadata i64 %7, metadata !668, metadata !DIExpression()), !dbg !671
  %add = add i64 %7, 1, !dbg !694
  %cmp7 = icmp ult i64 %buf_size.0, %add, !dbg !695
  br i1 %cmp7, label %if.then8, label %if.end13, !dbg !696

if.then8:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i64 %7, metadata !668, metadata !DIExpression()), !dbg !671
  %add10 = add i64 %7, 128, !dbg !697
  call void @llvm.dbg.value(metadata i64 %add10, metadata !669, metadata !DIExpression()), !dbg !671
  %call12 = call i8* @xrealloc(i8* %buf.0, i64 %add10) #7, !dbg !699
  call void @llvm.dbg.value(metadata i8* %call12, metadata !670, metadata !DIExpression()), !dbg !671
  %.pre = load i64, i64* %num_to_read, align 8, !dbg !700
  br label %if.end13, !dbg !702

if.end13:                                         ; preds = %if.then8, %if.end6
  %8 = phi i64 [ %.pre, %if.then8 ], [ %7, %if.end6 ], !dbg !700
  %buf_size.1 = phi i64 [ %add10, %if.then8 ], [ %buf_size.0, %if.end6 ], !dbg !671
  %buf.1 = phi i8* [ %call12, %if.then8 ], [ %buf.0, %if.end6 ], !dbg !671
  call void @llvm.dbg.value(metadata i8* %buf.1, metadata !670, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i64 %buf_size.1, metadata !669, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i64 %8, metadata !668, metadata !DIExpression()), !dbg !671
  %call14 = call i64 @fread(i8* %buf.1, i64 1, i64 %8, %struct._IO_FILE* %fd) #7, !dbg !703
  %9 = load i64, i64* %num_to_read, align 8, !dbg !704
  call void @llvm.dbg.value(metadata i64 %9, metadata !668, metadata !DIExpression()), !dbg !671
  %cmp15 = icmp eq i64 %call14, %9, !dbg !705
  br i1 %cmp15, label %if.end17, label %cleanup.loopexit.us-lcssa, !dbg !706

if.end17:                                         ; preds = %if.end13
  call void @llvm.dbg.value(metadata i64 %9, metadata !668, metadata !DIExpression()), !dbg !671
  %arrayidx = getelementptr inbounds i8, i8* %buf.1, i64 %call14, !dbg !707
  store i8 0, i8* %arrayidx, align 1, !dbg !708
  %call19 = call i32 @strcmp(i8* %buf.1, i8* nonnull %self) #9, !dbg !715
  %cmp20 = icmp eq i32 %call19, 0, !dbg !716
  br i1 %cmp20, label %for.inc, label %if.then21, !dbg !717

if.then21:                                        ; preds = %if.end17
  call void @deps_add_dep(%struct.deps* %deps, i8* %buf.1) #8, !dbg !718
  br label %for.inc, !dbg !718

for.inc:                                          ; preds = %if.end17, %if.then21
  %inc = add i32 %i.0, 1, !dbg !709
  call void @llvm.dbg.value(metadata i32 %inc, metadata !666, metadata !DIExpression()), !dbg !671
  br label %for.cond, !dbg !710, !llvm.loop !711

for.end.us-lcssa:                                 ; preds = %for.cond
  %buf.0.lcssa7 = phi i8* [ %buf.0, %for.cond ], !dbg !671
  call void @llvm.dbg.value(metadata i8* %buf.0.lcssa7, metadata !670, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata i8* %buf.0.lcssa7, metadata !670, metadata !DIExpression()), !dbg !671
  br label %for.end, !dbg !713

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %buf.0.lcssa = phi i8* [ %buf.0.lcssa7, %for.end.us-lcssa ], [ %buf.0.us.lcssa, %for.end.us-lcssa.us ], !dbg !671
  call void @llvm.dbg.value(metadata i8* %buf.0.lcssa, metadata !670, metadata !DIExpression()), !dbg !671
  call void @free(i8* %buf.0.lcssa) #7, !dbg !713
  br label %cleanup, !dbg !719

cleanup.loopexit.us-lcssa:                        ; preds = %if.end13, %for.body
  br label %cleanup.loopexit, !dbg !714

cleanup.loopexit:                                 ; preds = %cleanup.loopexit.us-lcssa.us, %cleanup.loopexit.us-lcssa
  br label %cleanup, !dbg !714

cleanup:                                          ; preds = %cleanup.loopexit, %entry, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -1, %entry ], [ -1, %cleanup.loopexit ], !dbg !671
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10, !dbg !714
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10, !dbg !714
  ret i32 %retval.0, !dbg !714
}

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #6

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin nounwind readonly }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "cpp_mkdeps.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !26, !8, !27, !20}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !1, line: 31, size: 448, elements: !6)
!6 = !{!7, !12, !14, !15, !16, !17, !18, !19, !24, !25}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "targetv", scope: !5, file: !1, line: 33, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "ntargets", scope: !5, file: !1, line: 34, baseType: !13, size: 32, offset: 64)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "targets_size", scope: !5, file: !1, line: 35, baseType: !13, size: 32, offset: 96)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "depv", scope: !5, file: !1, line: 37, baseType: !8, size: 64, offset: 128)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ndeps", scope: !5, file: !1, line: 38, baseType: !13, size: 32, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "deps_size", scope: !5, file: !1, line: 39, baseType: !13, size: 32, offset: 224)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vpathv", scope: !5, file: !1, line: 41, baseType: !8, size: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "vpathlv", scope: !5, file: !1, line: 42, baseType: !20, size: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 46, baseType: !23)
!22 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nvpaths", scope: !5, file: !1, line: 43, baseType: !13, size: 32, offset: 384)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "vpaths_size", scope: !5, file: !1, line: 44, baseType: !13, size: 32, offset: 416)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!28 = !{i32 2, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!32 = distinct !DISubprogram(name: "tolower", scope: !33, file: !33, line: 207, type: !34, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!33 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!34 = !DISubroutineType(types: !35)
!35 = !{!36, !36}
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !{!38}
!38 = !DILocalVariable(name: "__c", arg: 1, scope: !32, file: !33, line: 207, type: !36)
!39 = !DILocation(line: 0, scope: !32)
!40 = !DILocation(line: 209, column: 22, scope: !32)
!41 = !DILocation(line: 209, column: 39, scope: !32)
!42 = !DILocation(line: 209, column: 38, scope: !32)
!43 = !DILocation(line: 209, column: 37, scope: !32)
!44 = !DILocation(line: 209, column: 10, scope: !32)
!45 = !DILocation(line: 209, column: 3, scope: !32)
!46 = distinct !DISubprogram(name: "toupper", scope: !33, file: !33, line: 213, type: !34, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !47)
!47 = !{!48}
!48 = !DILocalVariable(name: "__c", arg: 1, scope: !46, file: !33, line: 213, type: !36)
!49 = !DILocation(line: 0, scope: !46)
!50 = !DILocation(line: 215, column: 22, scope: !46)
!51 = !DILocation(line: 215, column: 39, scope: !46)
!52 = !DILocation(line: 215, column: 38, scope: !46)
!53 = !DILocation(line: 215, column: 37, scope: !46)
!54 = !DILocation(line: 215, column: 10, scope: !46)
!55 = !DILocation(line: 215, column: 3, scope: !46)
!56 = distinct !DISubprogram(name: "deps_init", scope: !1, file: !1, line: 169, type: !57, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!57 = !DISubroutineType(types: !58)
!58 = !{!4}
!59 = !DILocation(line: 171, column: 10, scope: !56)
!60 = !DILocation(line: 171, column: 3, scope: !56)
!61 = distinct !DISubprogram(name: "deps_free", scope: !1, file: !1, line: 175, type: !62, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !4}
!64 = !{!65, !66}
!65 = !DILocalVariable(name: "d", arg: 1, scope: !61, file: !1, line: 175, type: !4)
!66 = !DILocalVariable(name: "i", scope: !61, file: !1, line: 177, type: !13)
!67 = !DILocation(line: 0, scope: !61)
!68 = !DILocation(line: 179, column: 10, scope: !69)
!69 = distinct !DILexicalBlock(scope: !61, file: !1, line: 179, column: 7)
!70 = !DILocation(line: 179, column: 7, scope: !69)
!71 = !DILocation(line: 179, column: 7, scope: !61)
!72 = !DILocation(line: 0, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 181, column: 7)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 181, column: 7)
!75 = distinct !DILexicalBlock(scope: !69, file: !1, line: 180, column: 5)
!76 = !DILocation(line: 181, column: 7, scope: !74)
!77 = !DILocation(line: 0, scope: !75)
!78 = !DILocation(line: 181, column: 26, scope: !73)
!79 = !DILocation(line: 181, column: 21, scope: !73)
!80 = !DILocation(line: 182, column: 17, scope: !73)
!81 = !DILocation(line: 182, column: 2, scope: !73)
!82 = !DILocation(line: 181, column: 37, scope: !73)
!83 = !DILocation(line: 181, column: 7, scope: !73)
!84 = distinct !{!84, !76, !85}
!85 = !DILocation(line: 182, column: 30, scope: !74)
!86 = !DILocation(line: 183, column: 13, scope: !75)
!87 = !DILocation(line: 183, column: 7, scope: !75)
!88 = !DILocation(line: 184, column: 5, scope: !75)
!89 = !DILocation(line: 186, column: 10, scope: !90)
!90 = distinct !DILexicalBlock(scope: !61, file: !1, line: 186, column: 7)
!91 = !DILocation(line: 186, column: 7, scope: !90)
!92 = !DILocation(line: 186, column: 7, scope: !61)
!93 = !DILocation(line: 0, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 188, column: 7)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 188, column: 7)
!96 = distinct !DILexicalBlock(scope: !90, file: !1, line: 187, column: 5)
!97 = !DILocation(line: 188, column: 7, scope: !95)
!98 = !DILocation(line: 0, scope: !96)
!99 = !DILocation(line: 188, column: 26, scope: !94)
!100 = !DILocation(line: 188, column: 21, scope: !94)
!101 = !DILocation(line: 189, column: 17, scope: !94)
!102 = !DILocation(line: 189, column: 2, scope: !94)
!103 = !DILocation(line: 188, column: 34, scope: !94)
!104 = !DILocation(line: 188, column: 7, scope: !94)
!105 = distinct !{!105, !97, !106}
!106 = !DILocation(line: 189, column: 27, scope: !95)
!107 = !DILocation(line: 190, column: 13, scope: !96)
!108 = !DILocation(line: 190, column: 7, scope: !96)
!109 = !DILocation(line: 191, column: 5, scope: !96)
!110 = !DILocation(line: 193, column: 10, scope: !111)
!111 = distinct !DILexicalBlock(scope: !61, file: !1, line: 193, column: 7)
!112 = !DILocation(line: 193, column: 7, scope: !111)
!113 = !DILocation(line: 193, column: 7, scope: !61)
!114 = !DILocation(line: 0, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 195, column: 7)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 195, column: 7)
!117 = distinct !DILexicalBlock(scope: !111, file: !1, line: 194, column: 5)
!118 = !DILocation(line: 195, column: 7, scope: !116)
!119 = !DILocation(line: 0, scope: !117)
!120 = !DILocation(line: 195, column: 26, scope: !115)
!121 = !DILocation(line: 195, column: 21, scope: !115)
!122 = !DILocation(line: 196, column: 17, scope: !115)
!123 = !DILocation(line: 196, column: 2, scope: !115)
!124 = !DILocation(line: 195, column: 36, scope: !115)
!125 = !DILocation(line: 195, column: 7, scope: !115)
!126 = distinct !{!126, !118, !127}
!127 = !DILocation(line: 196, column: 29, scope: !116)
!128 = !DILocation(line: 197, column: 13, scope: !117)
!129 = !DILocation(line: 197, column: 7, scope: !117)
!130 = !DILocation(line: 198, column: 16, scope: !117)
!131 = !DILocation(line: 198, column: 7, scope: !117)
!132 = !DILocation(line: 199, column: 5, scope: !117)
!133 = !DILocation(line: 201, column: 9, scope: !61)
!134 = !DILocation(line: 201, column: 3, scope: !61)
!135 = !DILocation(line: 202, column: 1, scope: !61)
!136 = distinct !DISubprogram(name: "deps_add_target", scope: !1, file: !1, line: 207, type: !137, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !4, !9, !36}
!139 = !{!140, !141, !142}
!140 = !DILocalVariable(name: "d", arg: 1, scope: !136, file: !1, line: 207, type: !4)
!141 = !DILocalVariable(name: "t", arg: 2, scope: !136, file: !1, line: 207, type: !9)
!142 = !DILocalVariable(name: "quote", arg: 3, scope: !136, file: !1, line: 207, type: !36)
!143 = !DILocation(line: 0, scope: !136)
!144 = !DILocation(line: 209, column: 10, scope: !145)
!145 = distinct !DILexicalBlock(scope: !136, file: !1, line: 209, column: 7)
!146 = !DILocation(line: 209, column: 25, scope: !145)
!147 = !DILocation(line: 209, column: 19, scope: !145)
!148 = !DILocation(line: 209, column: 7, scope: !136)
!149 = !DILocation(line: 211, column: 41, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !1, line: 210, column: 5)
!151 = !DILocation(line: 211, column: 45, scope: !150)
!152 = !DILocation(line: 211, column: 23, scope: !150)
!153 = !DILocation(line: 212, column: 20, scope: !150)
!154 = !DILocation(line: 212, column: 18, scope: !150)
!155 = !DILocation(line: 213, column: 5, scope: !150)
!156 = !DILocation(line: 215, column: 7, scope: !136)
!157 = !DILocation(line: 216, column: 7, scope: !158)
!158 = distinct !DILexicalBlock(scope: !136, file: !1, line: 216, column: 7)
!159 = !DILocation(line: 216, column: 7, scope: !136)
!160 = !DILocation(line: 217, column: 9, scope: !158)
!161 = !DILocation(line: 217, column: 5, scope: !158)
!162 = !DILocation(line: 219, column: 9, scope: !158)
!163 = !DILocation(line: 0, scope: !158)
!164 = !DILocation(line: 221, column: 6, scope: !136)
!165 = !DILocation(line: 221, column: 25, scope: !136)
!166 = !DILocation(line: 221, column: 3, scope: !136)
!167 = !DILocation(line: 221, column: 29, scope: !136)
!168 = !DILocation(line: 222, column: 1, scope: !136)
!169 = distinct !DISubprogram(name: "apply_vpath", scope: !1, file: !1, line: 127, type: !170, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !172)
!170 = !DISubroutineType(types: !171)
!171 = !{!9, !4, !9}
!172 = !{!173, !174, !175, !178, !184}
!173 = !DILocalVariable(name: "d", arg: 1, scope: !169, file: !1, line: 127, type: !4)
!174 = !DILocalVariable(name: "t", arg: 2, scope: !169, file: !1, line: 127, type: !9)
!175 = !DILocalVariable(name: "i", scope: !176, file: !1, line: 131, type: !13)
!176 = distinct !DILexicalBlock(scope: !177, file: !1, line: 130, column: 5)
!177 = distinct !DILexicalBlock(scope: !169, file: !1, line: 129, column: 7)
!178 = !DILocalVariable(name: "p", scope: !179, file: !1, line: 136, type: !9)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 135, column: 6)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 134, column: 8)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 133, column: 2)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 132, column: 7)
!183 = distinct !DILexicalBlock(scope: !176, file: !1, line: 132, column: 7)
!184 = !DILabel(scope: !181, name: "not_this_one", file: !1, line: 149)
!185 = !DILocation(line: 0, scope: !169)
!186 = !DILocation(line: 129, column: 10, scope: !177)
!187 = !DILocation(line: 129, column: 7, scope: !177)
!188 = !DILocation(line: 129, column: 7, scope: !169)
!189 = !DILocation(line: 0, scope: !182)
!190 = !DILocation(line: 0, scope: !180)
!191 = !DILocation(line: 132, column: 21, scope: !182)
!192 = !DILocation(line: 132, column: 7, scope: !183)
!193 = !DILocation(line: 0, scope: !183)
!194 = !DILocation(line: 0, scope: !176)
!195 = !DILocation(line: 134, column: 18, scope: !180)
!196 = !DILocation(line: 134, column: 38, scope: !180)
!197 = !DILocation(line: 134, column: 35, scope: !180)
!198 = !DILocation(line: 134, column: 9, scope: !180)
!199 = !DILocation(line: 134, column: 8, scope: !181)
!200 = !DILocation(line: 136, column: 26, scope: !179)
!201 = !DILocation(line: 0, scope: !179)
!202 = !DILocation(line: 137, column: 13, scope: !203)
!203 = distinct !DILexicalBlock(scope: !179, file: !1, line: 137, column: 12)
!204 = !DILocation(line: 137, column: 12, scope: !179)
!205 = !DILocation(line: 142, column: 12, scope: !206)
!206 = distinct !DILexicalBlock(scope: !179, file: !1, line: 142, column: 12)
!207 = !DILocation(line: 142, column: 17, scope: !206)
!208 = !DILocation(line: 142, column: 24, scope: !206)
!209 = !DILocation(line: 142, column: 27, scope: !206)
!210 = !DILocation(line: 142, column: 32, scope: !206)
!211 = !DILocation(line: 142, column: 39, scope: !206)
!212 = !DILocation(line: 142, column: 42, scope: !206)
!213 = !DILocation(line: 142, column: 12, scope: !179)
!214 = !DILocation(line: 146, column: 14, scope: !179)
!215 = !DILocation(line: 146, column: 30, scope: !179)
!216 = !DILocation(line: 147, column: 8, scope: !179)
!217 = !DILocation(line: 149, column: 2, scope: !181)
!218 = !DILocation(line: 132, column: 36, scope: !182)
!219 = !DILocation(line: 132, column: 7, scope: !182)
!220 = distinct !{!220, !192, !221}
!221 = !DILocation(line: 150, column: 2, scope: !183)
!222 = !DILocation(line: 154, column: 3, scope: !169)
!223 = !DILocation(line: 154, column: 10, scope: !169)
!224 = !DILocation(line: 0, scope: !225)
!225 = distinct !DILexicalBlock(scope: !169, file: !1, line: 155, column: 5)
!226 = !DILocation(line: 159, column: 14, scope: !225)
!227 = !DILocation(line: 154, column: 15, scope: !169)
!228 = !DILocation(line: 154, column: 22, scope: !169)
!229 = !DILocation(line: 154, column: 25, scope: !169)
!230 = !DILocation(line: 156, column: 9, scope: !225)
!231 = !DILocation(line: 159, column: 7, scope: !225)
!232 = distinct !{!232, !222, !233}
!233 = !DILocation(line: 161, column: 5, scope: !169)
!234 = !DILocation(line: 160, column: 2, scope: !225)
!235 = distinct !{!235, !231, !236}
!236 = !DILocation(line: 160, column: 4, scope: !225)
!237 = !DILocation(line: 163, column: 3, scope: !169)
!238 = distinct !DISubprogram(name: "munge", scope: !1, file: !1, line: 57, type: !239, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!9, !9}
!241 = !{!242, !243, !244, !245, !246, !247}
!242 = !DILocalVariable(name: "filename", arg: 1, scope: !238, file: !1, line: 57, type: !9)
!243 = !DILocalVariable(name: "len", scope: !238, file: !1, line: 59, type: !36)
!244 = !DILocalVariable(name: "p", scope: !238, file: !1, line: 60, type: !9)
!245 = !DILocalVariable(name: "q", scope: !238, file: !1, line: 60, type: !9)
!246 = !DILocalVariable(name: "dst", scope: !238, file: !1, line: 61, type: !27)
!247 = !DILocalVariable(name: "buffer", scope: !238, file: !1, line: 61, type: !27)
!248 = !DILocation(line: 0, scope: !238)
!249 = !DILocation(line: 63, column: 8, scope: !250)
!250 = distinct !DILexicalBlock(scope: !238, file: !1, line: 63, column: 3)
!251 = !DILocation(line: 0, scope: !250)
!252 = !DILocation(line: 63, column: 31, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !1, line: 63, column: 3)
!254 = !DILocation(line: 63, column: 3, scope: !250)
!255 = !DILocation(line: 65, column: 15, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !1, line: 64, column: 5)
!257 = !DILocation(line: 65, column: 7, scope: !256)
!258 = !DILocation(line: 75, column: 9, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 75, column: 4)
!260 = distinct !DILexicalBlock(scope: !256, file: !1, line: 66, column: 2)
!261 = !DILocation(line: 0, scope: !259)
!262 = !DILocation(line: 75, column: 29, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !1, line: 75, column: 4)
!264 = !DILocation(line: 75, column: 34, scope: !263)
!265 = !DILocation(line: 75, column: 37, scope: !263)
!266 = !DILocation(line: 75, column: 40, scope: !263)
!267 = !DILocation(line: 0, scope: !263)
!268 = !DILocation(line: 0, scope: !260)
!269 = !DILocation(line: 75, column: 4, scope: !259)
!270 = !DILocation(line: 75, column: 4, scope: !263)
!271 = distinct !{!271, !269, !272}
!272 = !DILocation(line: 76, column: 9, scope: !259)
!273 = !DILocation(line: 82, column: 7, scope: !260)
!274 = !DILocation(line: 83, column: 4, scope: !260)
!275 = !DILocation(line: 87, column: 7, scope: !260)
!276 = !DILocation(line: 88, column: 4, scope: !260)
!277 = !DILocation(line: 63, column: 36, scope: !253)
!278 = !DILocation(line: 63, column: 43, scope: !253)
!279 = !DILocation(line: 63, column: 3, scope: !253)
!280 = distinct !{!280, !254, !281}
!281 = !DILocation(line: 90, column: 5, scope: !250)
!282 = !DILocation(line: 93, column: 12, scope: !238)
!283 = !DILocation(line: 95, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !238, file: !1, line: 95, column: 3)
!285 = !DILocation(line: 0, scope: !284)
!286 = !DILocation(line: 95, column: 36, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !1, line: 95, column: 3)
!288 = !DILocation(line: 95, column: 3, scope: !284)
!289 = !DILocation(line: 97, column: 15, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !1, line: 96, column: 5)
!291 = !DILocation(line: 97, column: 7, scope: !290)
!292 = !DILocation(line: 101, column: 9, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !1, line: 101, column: 4)
!294 = distinct !DILexicalBlock(scope: !290, file: !1, line: 98, column: 2)
!295 = !DILocation(line: 0, scope: !293)
!296 = !DILocation(line: 101, column: 29, scope: !297)
!297 = distinct !DILexicalBlock(scope: !293, file: !1, line: 101, column: 4)
!298 = !DILocation(line: 101, column: 34, scope: !297)
!299 = !DILocation(line: 101, column: 37, scope: !297)
!300 = !DILocation(line: 101, column: 40, scope: !297)
!301 = !DILocation(line: 0, scope: !297)
!302 = !DILocation(line: 0, scope: !294)
!303 = !DILocation(line: 101, column: 4, scope: !293)
!304 = !DILocation(line: 101, column: 4, scope: !297)
!305 = distinct !{!305, !303, !306}
!306 = !DILocation(line: 102, column: 15, scope: !293)
!307 = !DILocation(line: 107, column: 8, scope: !294)
!308 = !DILocation(line: 107, column: 11, scope: !294)
!309 = !DILocation(line: 108, column: 4, scope: !294)
!310 = !DILocation(line: 111, column: 8, scope: !294)
!311 = !DILocation(line: 111, column: 11, scope: !294)
!312 = !DILocation(line: 112, column: 4, scope: !294)
!313 = !DILocation(line: 117, column: 14, scope: !290)
!314 = !DILocation(line: 117, column: 12, scope: !290)
!315 = !DILocation(line: 95, column: 41, scope: !287)
!316 = !DILocation(line: 95, column: 48, scope: !287)
!317 = !DILocation(line: 95, column: 3, scope: !287)
!318 = distinct !{!318, !288, !319}
!319 = !DILocation(line: 118, column: 5, scope: !284)
!320 = !DILocation(line: 120, column: 8, scope: !238)
!321 = !DILocation(line: 121, column: 3, scope: !238)
!322 = distinct !DISubprogram(name: "deps_add_default_target", scope: !1, file: !1, line: 228, type: !323, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !4, !9}
!325 = !{!326, !327, !328, !331, !332}
!326 = !DILocalVariable(name: "d", arg: 1, scope: !322, file: !1, line: 228, type: !4)
!327 = !DILocalVariable(name: "tgt", arg: 2, scope: !322, file: !1, line: 228, type: !9)
!328 = !DILocalVariable(name: "start", scope: !329, file: !1, line: 241, type: !9)
!329 = distinct !DILexicalBlock(scope: !330, file: !1, line: 237, column: 5)
!330 = distinct !DILexicalBlock(scope: !322, file: !1, line: 234, column: 7)
!331 = !DILocalVariable(name: "o", scope: !329, file: !1, line: 242, type: !27)
!332 = !DILocalVariable(name: "suffix", scope: !329, file: !1, line: 244, type: !27)
!333 = !DILocation(line: 0, scope: !322)
!334 = !DILocation(line: 231, column: 10, scope: !335)
!335 = distinct !DILexicalBlock(scope: !322, file: !1, line: 231, column: 7)
!336 = !DILocation(line: 231, column: 7, scope: !335)
!337 = !DILocation(line: 231, column: 7, scope: !322)
!338 = !DILocation(line: 234, column: 7, scope: !330)
!339 = !DILocation(line: 234, column: 14, scope: !330)
!340 = !DILocation(line: 234, column: 7, scope: !322)
!341 = !DILocation(line: 235, column: 5, scope: !330)
!342 = !DILocation(line: 241, column: 27, scope: !329)
!343 = !DILocation(line: 0, scope: !329)
!344 = !DILocation(line: 242, column: 26, scope: !329)
!345 = !DILocation(line: 246, column: 7, scope: !329)
!346 = !DILocation(line: 248, column: 16, scope: !329)
!347 = !DILocation(line: 249, column: 12, scope: !348)
!348 = distinct !DILexicalBlock(scope: !329, file: !1, line: 249, column: 11)
!349 = !DILocation(line: 249, column: 11, scope: !329)
!350 = !DILocation(line: 250, column: 22, scope: !348)
!351 = !DILocation(line: 250, column: 20, scope: !348)
!352 = !DILocation(line: 250, column: 9, scope: !348)
!353 = !DILocation(line: 251, column: 7, scope: !329)
!354 = !DILocation(line: 253, column: 7, scope: !329)
!355 = !DILocation(line: 255, column: 1, scope: !322)
!356 = distinct !DISubprogram(name: "deps_add_dep", scope: !1, file: !1, line: 258, type: !323, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !357)
!357 = !{!358, !359}
!358 = !DILocalVariable(name: "d", arg: 1, scope: !356, file: !1, line: 258, type: !4)
!359 = !DILocalVariable(name: "t", arg: 2, scope: !356, file: !1, line: 258, type: !9)
!360 = !DILocation(line: 0, scope: !356)
!361 = !DILocation(line: 260, column: 14, scope: !356)
!362 = !DILocation(line: 260, column: 7, scope: !356)
!363 = !DILocation(line: 262, column: 10, scope: !364)
!364 = distinct !DILexicalBlock(scope: !356, file: !1, line: 262, column: 7)
!365 = !DILocation(line: 262, column: 22, scope: !364)
!366 = !DILocation(line: 262, column: 16, scope: !364)
!367 = !DILocation(line: 262, column: 7, scope: !356)
!368 = !DILocation(line: 267, column: 6, scope: !356)
!369 = !DILocation(line: 264, column: 35, scope: !370)
!370 = distinct !DILexicalBlock(scope: !364, file: !1, line: 263, column: 5)
!371 = !DILocation(line: 264, column: 39, scope: !370)
!372 = !DILocation(line: 264, column: 20, scope: !370)
!373 = !DILocation(line: 265, column: 17, scope: !370)
!374 = !DILocation(line: 265, column: 15, scope: !370)
!375 = !DILocation(line: 266, column: 5, scope: !370)
!376 = !DILocation(line: 267, column: 19, scope: !356)
!377 = !DILocation(line: 267, column: 3, scope: !356)
!378 = !DILocation(line: 267, column: 23, scope: !356)
!379 = !DILocation(line: 268, column: 1, scope: !356)
!380 = distinct !DISubprogram(name: "deps_add_vpath", scope: !1, file: !1, line: 271, type: !323, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !381)
!381 = !{!382, !383, !384, !385, !386, !387}
!382 = !DILocalVariable(name: "d", arg: 1, scope: !380, file: !1, line: 271, type: !4)
!383 = !DILocalVariable(name: "vpath", arg: 2, scope: !380, file: !1, line: 271, type: !9)
!384 = !DILocalVariable(name: "elem", scope: !380, file: !1, line: 273, type: !9)
!385 = !DILocalVariable(name: "p", scope: !380, file: !1, line: 273, type: !9)
!386 = !DILocalVariable(name: "copy", scope: !380, file: !1, line: 274, type: !27)
!387 = !DILocalVariable(name: "len", scope: !380, file: !1, line: 275, type: !21)
!388 = !DILocation(line: 0, scope: !380)
!389 = !DILocation(line: 0, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !1, line: 287, column: 11)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 278, column: 5)
!392 = distinct !DILexicalBlock(scope: !393, file: !1, line: 277, column: 3)
!393 = distinct !DILexicalBlock(scope: !380, file: !1, line: 277, column: 3)
!394 = !DILocation(line: 0, scope: !395)
!395 = distinct !DILexicalBlock(scope: !390, file: !1, line: 288, column: 2)
!396 = !DILocation(line: 277, column: 8, scope: !393)
!397 = !DILocation(line: 0, scope: !393)
!398 = !DILocation(line: 277, column: 22, scope: !392)
!399 = !DILocation(line: 277, column: 3, scope: !393)
!400 = !DILocation(line: 279, column: 7, scope: !401)
!401 = distinct !DILexicalBlock(scope: !391, file: !1, line: 279, column: 7)
!402 = !DILocation(line: 279, column: 22, scope: !403)
!403 = distinct !DILexicalBlock(scope: !401, file: !1, line: 279, column: 7)
!404 = !DILocation(line: 0, scope: !401)
!405 = !DILocation(line: 279, column: 31, scope: !403)
!406 = !DILocation(line: 279, column: 25, scope: !403)
!407 = !DILocation(line: 279, column: 40, scope: !403)
!408 = !DILocation(line: 279, column: 7, scope: !403)
!409 = distinct !{!409, !400, !410}
!410 = !DILocation(line: 279, column: 43, scope: !401)
!411 = !DILocation(line: 280, column: 15, scope: !391)
!412 = !DILocation(line: 281, column: 14, scope: !391)
!413 = !DILocation(line: 282, column: 7, scope: !391)
!414 = !DILocation(line: 283, column: 7, scope: !391)
!415 = !DILocation(line: 283, column: 17, scope: !391)
!416 = !DILocation(line: 284, column: 11, scope: !417)
!417 = distinct !DILexicalBlock(scope: !391, file: !1, line: 284, column: 11)
!418 = !DILocation(line: 284, column: 14, scope: !417)
!419 = !DILocation(line: 285, column: 3, scope: !417)
!420 = !DILocation(line: 284, column: 11, scope: !391)
!421 = !DILocation(line: 287, column: 14, scope: !390)
!422 = !DILocation(line: 287, column: 28, scope: !390)
!423 = !DILocation(line: 287, column: 22, scope: !390)
!424 = !DILocation(line: 287, column: 11, scope: !391)
!425 = !DILocation(line: 289, column: 36, scope: !395)
!426 = !DILocation(line: 289, column: 40, scope: !395)
!427 = !DILocation(line: 289, column: 19, scope: !395)
!428 = !DILocation(line: 290, column: 16, scope: !395)
!429 = !DILocation(line: 290, column: 14, scope: !395)
!430 = !DILocation(line: 291, column: 17, scope: !395)
!431 = !DILocation(line: 291, column: 15, scope: !395)
!432 = !DILocation(line: 293, column: 20, scope: !391)
!433 = !DILocation(line: 292, column: 2, scope: !395)
!434 = !DILocation(line: 293, column: 10, scope: !391)
!435 = !DILocation(line: 293, column: 7, scope: !391)
!436 = !DILocation(line: 293, column: 29, scope: !391)
!437 = !DILocation(line: 294, column: 10, scope: !391)
!438 = !DILocation(line: 294, column: 21, scope: !391)
!439 = !DILocation(line: 294, column: 7, scope: !391)
!440 = !DILocation(line: 294, column: 30, scope: !391)
!441 = !DILocation(line: 295, column: 17, scope: !391)
!442 = !DILocation(line: 277, column: 3, scope: !392)
!443 = distinct !{!443, !399, !444}
!444 = !DILocation(line: 296, column: 5, scope: !393)
!445 = !DILocation(line: 297, column: 1, scope: !380)
!446 = distinct !DISubprogram(name: "deps_write", scope: !1, file: !1, line: 300, type: !447, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !507)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !449, !451, !13}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !453, line: 7, baseType: !454)
!453 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !455, line: 49, size: 1728, elements: !456)
!455 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !472, !474, !475, !476, !480, !482, !484, !488, !491, !493, !496, !499, !500, !501, !502, !503}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !454, file: !455, line: 51, baseType: !36, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !454, file: !455, line: 54, baseType: !27, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !454, file: !455, line: 55, baseType: !27, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !454, file: !455, line: 56, baseType: !27, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !454, file: !455, line: 57, baseType: !27, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !454, file: !455, line: 58, baseType: !27, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !454, file: !455, line: 59, baseType: !27, size: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !454, file: !455, line: 60, baseType: !27, size: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !454, file: !455, line: 61, baseType: !27, size: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !454, file: !455, line: 64, baseType: !27, size: 64, offset: 576)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !454, file: !455, line: 65, baseType: !27, size: 64, offset: 640)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !454, file: !455, line: 66, baseType: !27, size: 64, offset: 704)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !454, file: !455, line: 68, baseType: !470, size: 64, offset: 768)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !455, line: 36, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !454, file: !455, line: 70, baseType: !473, size: 64, offset: 832)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !454, file: !455, line: 72, baseType: !36, size: 32, offset: 896)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !454, file: !455, line: 73, baseType: !36, size: 32, offset: 928)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !454, file: !455, line: 74, baseType: !477, size: 64, offset: 960)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !478, line: 152, baseType: !479)
!478 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!479 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !454, file: !455, line: 77, baseType: !481, size: 16, offset: 1024)
!481 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !454, file: !455, line: 78, baseType: !483, size: 8, offset: 1040)
!483 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !454, file: !455, line: 79, baseType: !485, size: 8, offset: 1048)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 1)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !454, file: !455, line: 81, baseType: !489, size: 64, offset: 1088)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !455, line: 43, baseType: null)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !454, file: !455, line: 89, baseType: !492, size: 64, offset: 1152)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !478, line: 153, baseType: !479)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !454, file: !455, line: 91, baseType: !494, size: 64, offset: 1216)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !455, line: 37, flags: DIFlagFwdDecl)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !454, file: !455, line: 92, baseType: !497, size: 64, offset: 1280)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !455, line: 38, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !454, file: !455, line: 93, baseType: !473, size: 64, offset: 1344)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !454, file: !455, line: 94, baseType: !26, size: 64, offset: 1408)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !454, file: !455, line: 95, baseType: !21, size: 64, offset: 1472)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !454, file: !455, line: 96, baseType: !36, size: 32, offset: 1536)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !454, file: !455, line: 98, baseType: !504, size: 160, offset: 1568)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 20)
!507 = !{!508, !509, !510, !511, !512, !513}
!508 = !DILocalVariable(name: "d", arg: 1, scope: !446, file: !1, line: 300, type: !449)
!509 = !DILocalVariable(name: "fp", arg: 2, scope: !446, file: !1, line: 300, type: !451)
!510 = !DILocalVariable(name: "colmax", arg: 3, scope: !446, file: !1, line: 300, type: !13)
!511 = !DILocalVariable(name: "size", scope: !446, file: !1, line: 302, type: !13)
!512 = !DILocalVariable(name: "i", scope: !446, file: !1, line: 302, type: !13)
!513 = !DILocalVariable(name: "column", scope: !446, file: !1, line: 302, type: !13)
!514 = !DILocation(line: 0, scope: !446)
!515 = !DILocation(line: 305, column: 14, scope: !516)
!516 = distinct !DILexicalBlock(scope: !446, file: !1, line: 305, column: 7)
!517 = !DILocation(line: 0, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 308, column: 3)
!519 = distinct !DILexicalBlock(scope: !446, file: !1, line: 308, column: 3)
!520 = !DILocation(line: 0, scope: !521)
!521 = distinct !DILexicalBlock(scope: !518, file: !1, line: 309, column: 5)
!522 = !DILocation(line: 0, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !1, line: 314, column: 8)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 313, column: 2)
!525 = distinct !DILexicalBlock(scope: !521, file: !1, line: 312, column: 11)
!526 = !DILocation(line: 308, column: 8, scope: !519)
!527 = !DILocation(line: 0, scope: !519)
!528 = !DILocation(line: 308, column: 22, scope: !518)
!529 = !DILocation(line: 308, column: 17, scope: !518)
!530 = !DILocation(line: 308, column: 3, scope: !519)
!531 = !DILocation(line: 310, column: 25, scope: !521)
!532 = !DILocation(line: 310, column: 22, scope: !521)
!533 = !DILocation(line: 310, column: 14, scope: !521)
!534 = !DILocation(line: 311, column: 14, scope: !521)
!535 = !DILocation(line: 312, column: 11, scope: !525)
!536 = !DILocation(line: 312, column: 11, scope: !521)
!537 = !DILocation(line: 314, column: 25, scope: !523)
!538 = !DILocation(line: 314, column: 15, scope: !523)
!539 = !DILocation(line: 321, column: 8, scope: !540)
!540 = distinct !DILexicalBlock(scope: !523, file: !1, line: 320, column: 6)
!541 = !DILocation(line: 322, column: 14, scope: !540)
!542 = !DILocation(line: 316, column: 8, scope: !543)
!543 = distinct !DILexicalBlock(scope: !523, file: !1, line: 315, column: 6)
!544 = !DILocation(line: 317, column: 19, scope: !543)
!545 = !DILocation(line: 318, column: 6, scope: !543)
!546 = !DILocation(line: 325, column: 17, scope: !521)
!547 = !DILocation(line: 325, column: 14, scope: !521)
!548 = !DILocation(line: 325, column: 7, scope: !521)
!549 = !DILocation(line: 308, column: 33, scope: !518)
!550 = !DILocation(line: 308, column: 3, scope: !518)
!551 = distinct !{!551, !530, !552}
!552 = !DILocation(line: 326, column: 5, scope: !519)
!553 = !DILocation(line: 328, column: 3, scope: !446)
!554 = !DILocation(line: 0, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 331, column: 3)
!556 = distinct !DILexicalBlock(scope: !446, file: !1, line: 331, column: 3)
!557 = !DILocation(line: 0, scope: !558)
!558 = distinct !DILexicalBlock(scope: !555, file: !1, line: 332, column: 5)
!559 = !DILocation(line: 331, column: 8, scope: !556)
!560 = !DILocation(line: 0, scope: !556)
!561 = !DILocation(line: 331, column: 22, scope: !555)
!562 = !DILocation(line: 331, column: 17, scope: !555)
!563 = !DILocation(line: 331, column: 3, scope: !556)
!564 = !DILocation(line: 333, column: 25, scope: !558)
!565 = !DILocation(line: 333, column: 22, scope: !558)
!566 = !DILocation(line: 333, column: 14, scope: !558)
!567 = !DILocation(line: 334, column: 14, scope: !558)
!568 = !DILocation(line: 335, column: 28, scope: !569)
!569 = distinct !DILexicalBlock(scope: !558, file: !1, line: 335, column: 11)
!570 = !DILocation(line: 335, column: 18, scope: !569)
!571 = !DILocation(line: 342, column: 4, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !1, line: 341, column: 2)
!573 = !DILocation(line: 337, column: 4, scope: !574)
!574 = distinct !DILexicalBlock(scope: !569, file: !1, line: 336, column: 2)
!575 = !DILocation(line: 339, column: 2, scope: !574)
!576 = !DILocation(line: 345, column: 17, scope: !558)
!577 = !DILocation(line: 345, column: 14, scope: !558)
!578 = !DILocation(line: 345, column: 7, scope: !558)
!579 = !DILocation(line: 331, column: 30, scope: !555)
!580 = !DILocation(line: 331, column: 3, scope: !555)
!581 = distinct !{!581, !563, !582}
!582 = !DILocation(line: 346, column: 5, scope: !556)
!583 = !DILocation(line: 347, column: 3, scope: !446)
!584 = !DILocation(line: 348, column: 1, scope: !446)
!585 = distinct !DISubprogram(name: "deps_phony_targets", scope: !1, file: !1, line: 351, type: !586, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !449, !451}
!588 = !{!589, !590, !591}
!589 = !DILocalVariable(name: "d", arg: 1, scope: !585, file: !1, line: 351, type: !449)
!590 = !DILocalVariable(name: "fp", arg: 2, scope: !585, file: !1, line: 351, type: !451)
!591 = !DILocalVariable(name: "i", scope: !585, file: !1, line: 353, type: !13)
!592 = !DILocation(line: 0, scope: !585)
!593 = !DILocation(line: 0, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !1, line: 355, column: 3)
!595 = distinct !DILexicalBlock(scope: !585, file: !1, line: 355, column: 3)
!596 = !DILocation(line: 0, scope: !597)
!597 = distinct !DILexicalBlock(scope: !594, file: !1, line: 356, column: 5)
!598 = !DILocation(line: 355, column: 8, scope: !595)
!599 = !DILocation(line: 0, scope: !595)
!600 = !DILocation(line: 355, column: 22, scope: !594)
!601 = !DILocation(line: 355, column: 17, scope: !594)
!602 = !DILocation(line: 355, column: 3, scope: !595)
!603 = !DILocation(line: 357, column: 7, scope: !597)
!604 = !DILocation(line: 358, column: 17, scope: !597)
!605 = !DILocation(line: 358, column: 14, scope: !597)
!606 = !DILocation(line: 358, column: 7, scope: !597)
!607 = !DILocation(line: 359, column: 7, scope: !597)
!608 = !DILocation(line: 360, column: 7, scope: !597)
!609 = !DILocation(line: 355, column: 30, scope: !594)
!610 = !DILocation(line: 355, column: 3, scope: !594)
!611 = distinct !{!611, !602, !612}
!612 = !DILocation(line: 361, column: 5, scope: !595)
!613 = !DILocation(line: 362, column: 1, scope: !585)
!614 = distinct !DISubprogram(name: "deps_save", scope: !1, file: !1, line: 369, type: !615, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{!36, !4, !451}
!617 = !{!618, !619, !620, !621}
!618 = !DILocalVariable(name: "deps", arg: 1, scope: !614, file: !1, line: 369, type: !4)
!619 = !DILocalVariable(name: "f", arg: 2, scope: !614, file: !1, line: 369, type: !451)
!620 = !DILocalVariable(name: "i", scope: !614, file: !1, line: 371, type: !13)
!621 = !DILocalVariable(name: "num_to_write", scope: !622, file: !1, line: 382, type: !21)
!622 = distinct !DILexicalBlock(scope: !623, file: !1, line: 381, column: 5)
!623 = distinct !DILexicalBlock(scope: !624, file: !1, line: 380, column: 3)
!624 = distinct !DILexicalBlock(scope: !614, file: !1, line: 380, column: 3)
!625 = !DILocation(line: 0, scope: !614)
!626 = !DILocation(line: 377, column: 22, scope: !627)
!627 = distinct !DILexicalBlock(scope: !614, file: !1, line: 377, column: 7)
!628 = !DILocation(line: 377, column: 15, scope: !627)
!629 = !DILocation(line: 377, column: 7, scope: !627)
!630 = !DILocation(line: 377, column: 57, scope: !627)
!631 = !DILocation(line: 377, column: 7, scope: !614)
!632 = !DILocation(line: 0, scope: !622)
!633 = !DILocation(line: 380, column: 3, scope: !624)
!634 = !DILocation(line: 0, scope: !624)
!635 = !DILocation(line: 380, column: 25, scope: !623)
!636 = !DILocation(line: 380, column: 17, scope: !623)
!637 = !DILocation(line: 382, column: 7, scope: !622)
!638 = !DILocation(line: 382, column: 43, scope: !622)
!639 = !DILocation(line: 382, column: 37, scope: !622)
!640 = !DILocation(line: 382, column: 29, scope: !622)
!641 = !DILocation(line: 382, column: 14, scope: !622)
!642 = !DILocation(line: 383, column: 11, scope: !643)
!643 = distinct !DILexicalBlock(scope: !622, file: !1, line: 383, column: 11)
!644 = !DILocation(line: 383, column: 57, scope: !643)
!645 = !DILocation(line: 383, column: 11, scope: !622)
!646 = !DILocation(line: 385, column: 25, scope: !647)
!647 = distinct !DILexicalBlock(scope: !622, file: !1, line: 385, column: 11)
!648 = !DILocation(line: 385, column: 19, scope: !647)
!649 = !DILocation(line: 385, column: 34, scope: !647)
!650 = !DILocation(line: 385, column: 11, scope: !647)
!651 = !DILocation(line: 385, column: 54, scope: !647)
!652 = !DILocation(line: 0, scope: !623)
!653 = !DILocation(line: 387, column: 5, scope: !623)
!654 = !DILocation(line: 380, column: 33, scope: !623)
!655 = !DILocation(line: 380, column: 3, scope: !623)
!656 = distinct !{!656, !633, !657}
!657 = !DILocation(line: 387, column: 5, scope: !624)
!658 = !DILocation(line: 390, column: 1, scope: !614)
!659 = distinct !DISubprogram(name: "deps_restore", scope: !1, file: !1, line: 398, type: !660, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{!36, !4, !451, !9}
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670}
!663 = !DILocalVariable(name: "deps", arg: 1, scope: !659, file: !1, line: 398, type: !4)
!664 = !DILocalVariable(name: "fd", arg: 2, scope: !659, file: !1, line: 398, type: !451)
!665 = !DILocalVariable(name: "self", arg: 3, scope: !659, file: !1, line: 398, type: !9)
!666 = !DILocalVariable(name: "i", scope: !659, file: !1, line: 400, type: !13)
!667 = !DILocalVariable(name: "count", scope: !659, file: !1, line: 400, type: !13)
!668 = !DILocalVariable(name: "num_to_read", scope: !659, file: !1, line: 401, type: !21)
!669 = !DILocalVariable(name: "buf_size", scope: !659, file: !1, line: 402, type: !21)
!670 = !DILocalVariable(name: "buf", scope: !659, file: !1, line: 403, type: !27)
!671 = !DILocation(line: 0, scope: !659)
!672 = !DILocation(line: 400, column: 3, scope: !659)
!673 = !DILocation(line: 401, column: 3, scope: !659)
!674 = !DILocation(line: 403, column: 15, scope: !659)
!675 = !DILocation(line: 406, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !659, file: !1, line: 406, column: 7)
!677 = !DILocation(line: 406, column: 45, scope: !676)
!678 = !DILocation(line: 406, column: 7, scope: !659)
!679 = !DILocation(line: 0, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !1, line: 425, column: 11)
!681 = distinct !DILexicalBlock(scope: !682, file: !1, line: 411, column: 5)
!682 = distinct !DILexicalBlock(scope: !683, file: !1, line: 410, column: 3)
!683 = distinct !DILexicalBlock(scope: !659, file: !1, line: 410, column: 3)
!684 = !DILocation(line: 410, column: 3, scope: !683)
!685 = !DILocation(line: 0, scope: !683)
!686 = !DILocation(line: 410, column: 19, scope: !682)
!687 = !DILocation(line: 410, column: 17, scope: !682)
!688 = !DILocation(line: 413, column: 11, scope: !689)
!689 = distinct !DILexicalBlock(scope: !681, file: !1, line: 413, column: 11)
!690 = !DILocation(line: 413, column: 56, scope: !689)
!691 = !DILocation(line: 413, column: 11, scope: !681)
!692 = !DILocation(line: 415, column: 22, scope: !693)
!693 = distinct !DILexicalBlock(scope: !681, file: !1, line: 415, column: 11)
!694 = !DILocation(line: 415, column: 34, scope: !693)
!695 = !DILocation(line: 415, column: 20, scope: !693)
!696 = !DILocation(line: 415, column: 11, scope: !681)
!697 = !DILocation(line: 417, column: 31, scope: !698)
!698 = distinct !DILexicalBlock(scope: !693, file: !1, line: 416, column: 2)
!699 = !DILocation(line: 418, column: 10, scope: !698)
!700 = !DILocation(line: 420, column: 26, scope: !701)
!701 = distinct !DILexicalBlock(scope: !681, file: !1, line: 420, column: 11)
!702 = !DILocation(line: 419, column: 2, scope: !698)
!703 = !DILocation(line: 420, column: 11, scope: !701)
!704 = !DILocation(line: 420, column: 46, scope: !701)
!705 = !DILocation(line: 420, column: 43, scope: !701)
!706 = !DILocation(line: 420, column: 11, scope: !681)
!707 = !DILocation(line: 422, column: 7, scope: !681)
!708 = !DILocation(line: 422, column: 24, scope: !681)
!709 = !DILocation(line: 410, column: 27, scope: !682)
!710 = !DILocation(line: 410, column: 3, scope: !682)
!711 = distinct !{!711, !684, !712}
!712 = !DILocation(line: 427, column: 5, scope: !683)
!713 = !DILocation(line: 429, column: 3, scope: !659)
!714 = !DILocation(line: 431, column: 1, scope: !659)
!715 = !DILocation(line: 425, column: 27, scope: !680)
!716 = !DILocation(line: 425, column: 46, scope: !680)
!717 = !DILocation(line: 425, column: 11, scope: !681)
!718 = !DILocation(line: 426, column: 9, scope: !680)
!719 = !DILocation(line: 430, column: 3, scope: !659)
