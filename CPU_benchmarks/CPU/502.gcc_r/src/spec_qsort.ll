; ModuleID = 'spec_qsort/spec_qsort.bc'
source_filename = "spec_qsort/spec_qsort.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @spec_qsort(i8* %a, i64 %n, i64 %es, i32 (i8*, i8*)* %cmp) local_unnamed_addr #0 !dbg !18 {
entry:
  call void @llvm.dbg.value(metadata i8* %a, metadata !33, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %n, metadata !34, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %es, metadata !35, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %cmp, metadata !36, metadata !DIExpression()), !dbg !108
  %cmp3 = icmp ne i64 %es, 8, !dbg !108
  %cond = zext i1 %cmp3 to i32, !dbg !108
  %cmp14 = icmp ne i64 %es, 4, !dbg !108
  %cond15 = zext i1 %cmp14 to i32, !dbg !108
  %conv88 = trunc i64 %es to i32, !dbg !109
  %idx.neg147 = sub i64 0, %es, !dbg !110
  br label %loop, !dbg !111

loop:                                             ; preds = %if.then292, %entry
  %cmp_result.0 = phi i32 [ undef, %entry ], [ %cmp_result.5.lcssa.lcssa, %if.then292 ]
  %n.addr.0 = phi i64 [ %n, %entry ], [ %div295, %if.then292 ]
  %a.addr.0 = phi i8* [ %a, %entry ], [ %add.ptr294, %if.then292 ]
  call void @llvm.dbg.value(metadata i8* %a.addr.0, metadata !33, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %n.addr.0, metadata !34, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.0, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.label(metadata !107), !dbg !112
  %sub.ptr.lhs.cast = ptrtoint i8* %a.addr.0 to i64, !dbg !113
  %0 = or i64 %sub.ptr.lhs.cast, %es, !dbg !113
  %1 = and i64 %0, 7, !dbg !113
  %2 = icmp eq i64 %1, 0, !dbg !113
  br i1 %2, label %cond.false, label %cond.end, !dbg !113

cond.false:                                       ; preds = %loop
  br label %cond.end, !dbg !113

cond.end:                                         ; preds = %loop, %cond.false
  %cond4 = phi i32 [ %cond, %cond.false ], [ 2, %loop ], !dbg !113
  call void @llvm.dbg.value(metadata i32 %cond4, metadata !47, metadata !DIExpression()), !dbg !108
  %3 = and i64 %0, 3, !dbg !114
  %4 = icmp eq i64 %3, 0, !dbg !114
  br i1 %4, label %cond.false13, label %cond.end16, !dbg !114

cond.false13:                                     ; preds = %cond.end
  br label %cond.end16, !dbg !114

cond.end16:                                       ; preds = %cond.end, %cond.false13
  %cond17 = phi i32 [ %cond15, %cond.false13 ], [ 2, %cond.end ], !dbg !114
  call void @llvm.dbg.value(metadata i32 %cond17, metadata !48, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 0, metadata !49, metadata !DIExpression()), !dbg !108
  %cmp18 = icmp ult i64 %n.addr.0, 7, !dbg !115
  br i1 %cmp18, label %if.then, label %if.end48, !dbg !116

if.then:                                          ; preds = %cond.end16
  %cond17.lcssa = phi i32 [ %cond17, %cond.end16 ], !dbg !114
  %cond4.lcssa = phi i32 [ %cond4, %cond.end16 ], !dbg !113
  %n.addr.0.lcssa = phi i64 [ %n.addr.0, %cond.end16 ]
  %a.addr.0.lcssa = phi i8* [ %a.addr.0, %cond.end16 ]
  call void @llvm.dbg.value(metadata i32 %cond17.lcssa, metadata !48, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cond4.lcssa, metadata !47, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %n.addr.0.lcssa, metadata !34, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %a.addr.0.lcssa, metadata !33, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cond17.lcssa, metadata !48, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cond4.lcssa, metadata !47, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %n.addr.0.lcssa, metadata !34, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %a.addr.0.lcssa, metadata !33, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cond17.lcssa, metadata !48, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cond4.lcssa, metadata !47, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %n.addr.0.lcssa, metadata !34, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %a.addr.0.lcssa, metadata !33, metadata !DIExpression()), !dbg !108
  %mul = mul i64 %n.addr.0.lcssa, %es, !dbg !117
  %add.ptr19 = getelementptr inbounds i8, i8* %a.addr.0.lcssa, i64 %mul, !dbg !117
  %cmp26 = icmp eq i32 %cond4.lcssa, 0, !dbg !118
  %cmp32 = icmp eq i32 %cond17.lcssa, 0, !dbg !119
  br i1 %cmp26, label %if.then.split.us, label %if.then.if.then.split_crit_edge, !dbg !120

if.then.if.then.split_crit_edge:                  ; preds = %if.then
  br label %for.cond, !dbg !120

if.then.split.us:                                 ; preds = %if.then
  br label %for.cond.us, !dbg !120

for.cond.us:                                      ; preds = %for.inc45.us-lcssa.us.us, %if.then.split.us
  %a.addr.0.pn2.us = phi i8* [ %a.addr.0.lcssa, %if.then.split.us ], [ %pm.0.us, %for.inc45.us-lcssa.us.us ]
  %pm.0.us = getelementptr inbounds i8, i8* %a.addr.0.pn2.us, i64 %es, !dbg !121
  call void @llvm.dbg.value(metadata i8* %pm.0.us, metadata !42, metadata !DIExpression()), !dbg !108
  %cmp20.us = icmp ult i8* %pm.0.us, %add.ptr19, !dbg !122
  br i1 %cmp20.us, label %for.cond21.preheader.us, label %cleanup.cont.loopexit.us-lcssa.us, !dbg !123

for.cond21.preheader.us:                          ; preds = %for.cond.us
  br label %for.cond21.us.us, !dbg !124

for.cond21.us.us:                                 ; preds = %for.cond21.preheader.us, %for.body25.us.us
  %pl.0.us.us = phi i8* [ %add.ptr23.us.us, %for.body25.us.us ], [ %pm.0.us, %for.cond21.preheader.us ], !dbg !125
  call void @llvm.dbg.value(metadata i8* %pl.0.us.us, metadata !41, metadata !DIExpression()), !dbg !108
  %cmp22.us.us = icmp ugt i8* %pl.0.us.us, %a.addr.0.lcssa, !dbg !126
  br i1 %cmp22.us.us, label %land.rhs.us.us, label %for.inc45.us-lcssa.us.us, !dbg !127

land.rhs.us.us:                                   ; preds = %for.cond21.us.us
  %add.ptr23.us.us = getelementptr inbounds i8, i8* %pl.0.us.us, i64 %idx.neg147, !dbg !128
  %call.us.us = tail call i32 %cmp(i8* %add.ptr23.us.us, i8* %pl.0.us.us) #3, !dbg !129
  %cmp24.us.us = icmp sgt i32 %call.us.us, 0, !dbg !130
  br i1 %cmp24.us.us, label %for.body25.us.us, label %for.inc45.us-lcssa.us.us, !dbg !124

for.body25.us.us:                                 ; preds = %land.rhs.us.us
  %5 = bitcast i8* %pl.0.us.us to i64*, !dbg !131
  %6 = load i64, i64* %5, align 8, !dbg !131
  call void @llvm.dbg.value(metadata i64 %6, metadata !50, metadata !DIExpression()), !dbg !132
  %7 = bitcast i8* %add.ptr23.us.us to i64*, !dbg !131
  %8 = load i64, i64* %7, align 8, !dbg !131
  store i64 %8, i64* %5, align 8, !dbg !131
  store i64 %6, i64* %7, align 8, !dbg !131
  call void @llvm.dbg.value(metadata i8* %add.ptr23.us.us, metadata !41, metadata !DIExpression()), !dbg !108
  br label %for.cond21.us.us, !dbg !133, !llvm.loop !134

for.inc45.us-lcssa.us.us:                         ; preds = %land.rhs.us.us, %for.cond21.us.us
  br label %for.cond.us, !dbg !136, !llvm.loop !137

cleanup.cont.loopexit.us-lcssa.us:                ; preds = %for.cond.us
  br label %cleanup.cont.loopexit, !dbg !139

for.cond:                                         ; preds = %for.inc45.us-lcssa, %if.then.if.then.split_crit_edge
  %a.addr.0.pn2 = phi i8* [ %a.addr.0.lcssa, %if.then.if.then.split_crit_edge ], [ %pm.0, %for.inc45.us-lcssa ]
  %pm.0 = getelementptr inbounds i8, i8* %a.addr.0.pn2, i64 %es, !dbg !121
  call void @llvm.dbg.value(metadata i8* %pm.0, metadata !42, metadata !DIExpression()), !dbg !108
  %cmp20 = icmp ult i8* %pm.0, %add.ptr19, !dbg !122
  br i1 %cmp20, label %for.cond21.preheader, label %cleanup.cont.loopexit.us-lcssa, !dbg !123

for.cond21.preheader:                             ; preds = %for.cond
  br i1 %cmp32, label %for.cond21.preheader.split.split.us, label %for.cond21.preheader.split.for.cond21.preheader.split.split_crit_edge, !dbg !124

for.cond21.preheader.split.for.cond21.preheader.split.split_crit_edge: ; preds = %for.cond21.preheader
  br label %for.cond21, !dbg !124

for.cond21.preheader.split.split.us:              ; preds = %for.cond21.preheader
  br label %for.cond21.us13, !dbg !124

for.cond21.us13:                                  ; preds = %for.body25.us20, %for.cond21.preheader.split.split.us
  %pl.0.us14 = phi i8* [ %add.ptr23.us17, %for.body25.us20 ], [ %pm.0, %for.cond21.preheader.split.split.us ], !dbg !125
  call void @llvm.dbg.value(metadata i8* %pl.0.us14, metadata !41, metadata !DIExpression()), !dbg !108
  %cmp22.us15 = icmp ugt i8* %pl.0.us14, %a.addr.0.lcssa, !dbg !126
  br i1 %cmp22.us15, label %land.rhs.us16, label %for.inc45.us-lcssa.us-lcssa.us, !dbg !127

land.rhs.us16:                                    ; preds = %for.cond21.us13
  %add.ptr23.us17 = getelementptr inbounds i8, i8* %pl.0.us14, i64 %idx.neg147, !dbg !128
  %call.us18 = tail call i32 %cmp(i8* %add.ptr23.us17, i8* %pl.0.us14) #3, !dbg !129
  %cmp24.us19 = icmp sgt i32 %call.us18, 0, !dbg !130
  br i1 %cmp24.us19, label %for.body25.us20, label %for.inc45.us-lcssa.us-lcssa.us, !dbg !124

for.body25.us20:                                  ; preds = %land.rhs.us16
  %9 = bitcast i8* %pl.0.us14 to i32*, !dbg !140
  %10 = load i32, i32* %9, align 4, !dbg !140
  call void @llvm.dbg.value(metadata i32 %10, metadata !59, metadata !DIExpression()), !dbg !141
  %11 = bitcast i8* %add.ptr23.us17 to i32*, !dbg !140
  %12 = load i32, i32* %11, align 4, !dbg !140
  store i32 %12, i32* %9, align 4, !dbg !140
  store i32 %10, i32* %11, align 4, !dbg !140
  call void @llvm.dbg.value(metadata i8* %add.ptr23.us17, metadata !41, metadata !DIExpression()), !dbg !108
  br label %for.cond21.us13, !dbg !133, !llvm.loop !134

for.inc45.us-lcssa.us-lcssa.us:                   ; preds = %land.rhs.us16, %for.cond21.us13
  br label %for.inc45.us-lcssa, !dbg !136

for.cond21:                                       ; preds = %for.cond21.preheader.split.for.cond21.preheader.split.split_crit_edge, %for.body25
  %pl.0 = phi i8* [ %add.ptr23, %for.body25 ], [ %pm.0, %for.cond21.preheader.split.for.cond21.preheader.split.split_crit_edge ], !dbg !125
  call void @llvm.dbg.value(metadata i8* %pl.0, metadata !41, metadata !DIExpression()), !dbg !108
  %cmp22 = icmp ugt i8* %pl.0, %a.addr.0.lcssa, !dbg !126
  br i1 %cmp22, label %land.rhs, label %for.inc45.us-lcssa.us-lcssa, !dbg !127

land.rhs:                                         ; preds = %for.cond21
  %add.ptr23 = getelementptr inbounds i8, i8* %pl.0, i64 %idx.neg147, !dbg !128
  %call = tail call i32 %cmp(i8* %add.ptr23, i8* %pl.0) #3, !dbg !129
  %cmp24 = icmp sgt i32 %call, 0, !dbg !130
  br i1 %cmp24, label %for.body25, label %for.inc45.us-lcssa.us-lcssa, !dbg !124

for.body25:                                       ; preds = %land.rhs
  tail call fastcc void @swapfunc(i8* %pl.0, i8* %add.ptr23, i32 %conv88, i32 %cond4.lcssa, i32 %cond17.lcssa) #4, !dbg !142
  call void @llvm.dbg.value(metadata i8* %add.ptr23, metadata !41, metadata !DIExpression()), !dbg !108
  br label %for.cond21, !dbg !133, !llvm.loop !134

for.inc45.us-lcssa.us-lcssa:                      ; preds = %land.rhs, %for.cond21
  br label %for.inc45.us-lcssa, !dbg !136

for.inc45.us-lcssa:                               ; preds = %for.inc45.us-lcssa.us-lcssa.us, %for.inc45.us-lcssa.us-lcssa
  br label %for.cond, !dbg !136, !llvm.loop !137

if.end48:                                         ; preds = %cond.end16
  %div = lshr i64 %n.addr.0, 1, !dbg !143
  %mul49 = mul i64 %div, %es, !dbg !144
  %add.ptr50 = getelementptr inbounds i8, i8* %a.addr.0, i64 %mul49, !dbg !145
  call void @llvm.dbg.value(metadata i8* %add.ptr50, metadata !42, metadata !DIExpression()), !dbg !108
  %cmp51 = icmp eq i64 %n.addr.0, 7, !dbg !146
  br i1 %cmp51, label %if.end77, label %if.then53, !dbg !148

if.then53:                                        ; preds = %if.end48
  call void @llvm.dbg.value(metadata i8* %a.addr.0, metadata !41, metadata !DIExpression()), !dbg !108
  %sub = add i64 %n.addr.0, -1, !dbg !149
  %mul54 = mul i64 %sub, %es, !dbg !151
  %add.ptr55 = getelementptr inbounds i8, i8* %a.addr.0, i64 %mul54, !dbg !152
  call void @llvm.dbg.value(metadata i8* %add.ptr55, metadata !43, metadata !DIExpression()), !dbg !108
  %cmp56 = icmp ugt i64 %n.addr.0, 40, !dbg !153
  br i1 %cmp56, label %if.then58, label %if.end75, !dbg !155

if.then58:                                        ; preds = %if.then53
  %div59 = lshr i64 %n.addr.0, 3, !dbg !156
  %mul60 = mul i64 %div59, %es, !dbg !158
  call void @llvm.dbg.value(metadata i64 %mul60, metadata !44, metadata !DIExpression()), !dbg !108
  %add.ptr61 = getelementptr inbounds i8, i8* %a.addr.0, i64 %mul60, !dbg !159
  %mul62 = shl i64 %mul60, 1, !dbg !160
  %add.ptr63 = getelementptr inbounds i8, i8* %a.addr.0, i64 %mul62, !dbg !161
  %call64 = tail call fastcc i8* @med3(i8* %a.addr.0, i8* %add.ptr61, i8* %add.ptr63, i32 (i8*, i8*)* %cmp) #4, !dbg !162
  call void @llvm.dbg.value(metadata i8* %call64, metadata !41, metadata !DIExpression()), !dbg !108
  %idx.neg65 = sub i64 0, %mul60, !dbg !163
  %add.ptr66 = getelementptr inbounds i8, i8* %add.ptr50, i64 %idx.neg65, !dbg !163
  %add.ptr67 = getelementptr inbounds i8, i8* %add.ptr50, i64 %mul60, !dbg !164
  %call68 = tail call fastcc i8* @med3(i8* %add.ptr66, i8* %add.ptr50, i8* %add.ptr67, i32 (i8*, i8*)* %cmp) #4, !dbg !165
  call void @llvm.dbg.value(metadata i8* %call68, metadata !42, metadata !DIExpression()), !dbg !108
  %idx.neg70 = sub i64 0, %mul62, !dbg !166
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr55, i64 %idx.neg70, !dbg !166
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr55, i64 %idx.neg65, !dbg !167
  %call74 = tail call fastcc i8* @med3(i8* %add.ptr71, i8* %add.ptr73, i8* %add.ptr55, i32 (i8*, i8*)* %cmp) #4, !dbg !168
  call void @llvm.dbg.value(metadata i8* %call74, metadata !43, metadata !DIExpression()), !dbg !108
  br label %if.end75, !dbg !169

if.end75:                                         ; preds = %if.then58, %if.then53
  %pn.0 = phi i8* [ %call74, %if.then58 ], [ %add.ptr55, %if.then53 ], !dbg !170
  %pm.1 = phi i8* [ %call68, %if.then58 ], [ %add.ptr50, %if.then53 ], !dbg !108
  %pl.1 = phi i8* [ %call64, %if.then58 ], [ %a.addr.0, %if.then53 ], !dbg !170
  call void @llvm.dbg.value(metadata i8* %pl.1, metadata !41, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pm.1, metadata !42, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pn.0, metadata !43, metadata !DIExpression()), !dbg !108
  %call76 = tail call fastcc i8* @med3(i8* %pl.1, i8* %pm.1, i8* %pn.0, i32 (i8*, i8*)* %cmp) #4, !dbg !171
  call void @llvm.dbg.value(metadata i8* %call76, metadata !42, metadata !DIExpression()), !dbg !108
  br label %if.end77, !dbg !172

if.end77:                                         ; preds = %if.end48, %if.end75
  %pm.2 = phi i8* [ %call76, %if.end75 ], [ %add.ptr50, %if.end48 ], !dbg !108
  call void @llvm.dbg.value(metadata i8* %pm.2, metadata !42, metadata !DIExpression()), !dbg !108
  %cmp78 = icmp eq i32 %cond4, 0, !dbg !173
  br i1 %cmp78, label %if.then80, label %if.else82, !dbg !174

if.then80:                                        ; preds = %if.end77
  %13 = bitcast i8* %a.addr.0 to i64*, !dbg !175
  %14 = load i64, i64* %13, align 8, !dbg !175
  call void @llvm.dbg.value(metadata i64 %14, metadata !62, metadata !DIExpression()), !dbg !176
  %15 = bitcast i8* %pm.2 to i64*, !dbg !175
  %16 = load i64, i64* %15, align 8, !dbg !175
  store i64 %16, i64* %13, align 8, !dbg !175
  store i64 %14, i64* %15, align 8, !dbg !175
  br label %if.end90, !dbg !175

if.else82:                                        ; preds = %if.end77
  %cmp83 = icmp eq i32 %cond17, 0, !dbg !177
  br i1 %cmp83, label %if.then85, label %if.else87, !dbg !173

if.then85:                                        ; preds = %if.else82
  %17 = bitcast i8* %a.addr.0 to i32*, !dbg !178
  %18 = load i32, i32* %17, align 4, !dbg !178
  call void @llvm.dbg.value(metadata i32 %18, metadata !65, metadata !DIExpression()), !dbg !179
  %19 = bitcast i8* %pm.2 to i32*, !dbg !178
  %20 = load i32, i32* %19, align 4, !dbg !178
  store i32 %20, i32* %17, align 4, !dbg !178
  store i32 %18, i32* %19, align 4, !dbg !178
  br label %if.end90, !dbg !178

if.else87:                                        ; preds = %if.else82
  tail call fastcc void @swapfunc(i8* %a.addr.0, i8* %pm.2, i32 %conv88, i32 %cond4, i32 %cond17) #4, !dbg !177
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.else87, %if.then80
  %add.ptr91 = getelementptr inbounds i8, i8* %a.addr.0, i64 %es, !dbg !180
  call void @llvm.dbg.value(metadata i8* %add.ptr91, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %add.ptr91, metadata !37, metadata !DIExpression()), !dbg !108
  %sub92 = add i64 %n.addr.0, -1, !dbg !181
  %mul93 = mul i64 %sub92, %es, !dbg !182
  %add.ptr94 = getelementptr inbounds i8, i8* %a.addr.0, i64 %mul93, !dbg !183
  call void @llvm.dbg.value(metadata i8* %add.ptr94, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %add.ptr94, metadata !39, metadata !DIExpression()), !dbg !108
  %cmp111 = icmp eq i32 %cond17, 0, !dbg !184
  br label %for.cond95, !dbg !185

for.cond95:                                       ; preds = %if.end169, %if.end90
  %cmp_result.1 = phi i32 [ %cmp_result.0, %if.end90 ], [ %cmp_result.5.lcssa, %if.end169 ]
  %pd.0 = phi i8* [ %add.ptr94, %if.end90 ], [ %pd.1.lcssa, %if.end169 ], !dbg !186
  %pc.0 = phi i8* [ %add.ptr94, %if.end90 ], [ %add.ptr172, %if.end169 ], !dbg !108
  %pb.0 = phi i8* [ %add.ptr91, %if.end90 ], [ %add.ptr170, %if.end169 ], !dbg !108
  %pa.0 = phi i8* [ %add.ptr91, %if.end90 ], [ %pa.1.lcssa, %if.end169 ], !dbg !187
  %swap_cnt.0 = phi i32 [ 0, %if.end90 ], [ 1, %if.end169 ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.0, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.0, metadata !37, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pb.0, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pc.0, metadata !39, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.0, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.1, metadata !46, metadata !DIExpression()), !dbg !108
  br i1 %cmp78, label %for.cond95.split.us, label %for.cond95.for.cond95.split_crit_edge, !dbg !188

for.cond95.for.cond95.split_crit_edge:            ; preds = %for.cond95
  br i1 %cmp111, label %for.cond95.split.split.us, label %for.cond95.split.for.cond95.split.split_crit_edge, !dbg !188

for.cond95.split.us:                              ; preds = %for.cond95
  br label %while.cond.us, !dbg !188

while.cond.us:                                    ; preds = %if.end120.us, %for.cond95.split.us
  %cmp_result.2.us = phi i32 [ %cmp_result.1, %for.cond95.split.us ], [ %cmp_result.3.us, %if.end120.us ]
  %pb.1.us = phi i8* [ %pb.0, %for.cond95.split.us ], [ %add.ptr121.us, %if.end120.us ], !dbg !108
  %pa.1.us = phi i8* [ %pa.0, %for.cond95.split.us ], [ %pa.2.us, %if.end120.us ], !dbg !108
  %swap_cnt.1.us = phi i32 [ %swap_cnt.0, %for.cond95.split.us ], [ %swap_cnt.2.us, %if.end120.us ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.1.us, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.1.us, metadata !37, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pb.1.us, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.2.us, metadata !46, metadata !DIExpression()), !dbg !108
  %cmp96.us = icmp ugt i8* %pb.1.us, %pc.0, !dbg !189
  br i1 %cmp96.us, label %land.end102.us, label %land.rhs98.us, !dbg !190

land.rhs98.us:                                    ; preds = %while.cond.us
  %call99.us = tail call i32 %cmp(i8* %pb.1.us, i8* %a.addr.0) #3, !dbg !191
  call void @llvm.dbg.value(metadata i32 %call99.us, metadata !46, metadata !DIExpression()), !dbg !108
  %cmp100.us = icmp slt i32 %call99.us, 1, !dbg !192
  br label %land.end102.us

land.end102.us:                                   ; preds = %land.rhs98.us, %while.cond.us
  %cmp_result.3.us = phi i32 [ %call99.us, %land.rhs98.us ], [ %cmp_result.2.us, %while.cond.us ]
  %21 = phi i1 [ %cmp100.us, %land.rhs98.us ], [ false, %while.cond.us ], !dbg !193
  call void @llvm.dbg.value(metadata i32 %cmp_result.3.us, metadata !46, metadata !DIExpression()), !dbg !108
  br i1 %21, label %while.body.us, label %while.cond122.preheader.us-lcssa.us, !dbg !188

while.body.us:                                    ; preds = %land.end102.us
  %cmp103.us = icmp eq i32 %cmp_result.3.us, 0, !dbg !194
  br i1 %cmp103.us, label %if.then105.us, label %if.end120.us, !dbg !195

if.then105.us:                                    ; preds = %while.body.us
  call void @llvm.dbg.value(metadata i32 1, metadata !49, metadata !DIExpression()), !dbg !108
  %22 = bitcast i8* %pa.1.us to i64*, !dbg !196
  %23 = load i64, i64* %22, align 8, !dbg !196
  call void @llvm.dbg.value(metadata i64 %23, metadata !68, metadata !DIExpression()), !dbg !197
  %24 = bitcast i8* %pb.1.us to i64*, !dbg !196
  %25 = load i64, i64* %24, align 8, !dbg !196
  store i64 %25, i64* %22, align 8, !dbg !196
  store i64 %23, i64* %24, align 8, !dbg !196
  %add.ptr119.us = getelementptr inbounds i8, i8* %pa.1.us, i64 %es, !dbg !198
  call void @llvm.dbg.value(metadata i8* %add.ptr119.us, metadata !37, metadata !DIExpression()), !dbg !108
  br label %if.end120.us, !dbg !199

if.end120.us:                                     ; preds = %if.then105.us, %while.body.us
  %pa.2.us = phi i8* [ %add.ptr119.us, %if.then105.us ], [ %pa.1.us, %while.body.us ], !dbg !108
  %swap_cnt.2.us = phi i32 [ 1, %if.then105.us ], [ %swap_cnt.1.us, %while.body.us ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.2.us, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.2.us, metadata !37, metadata !DIExpression()), !dbg !108
  %add.ptr121.us = getelementptr inbounds i8, i8* %pb.1.us, i64 %es, !dbg !200
  call void @llvm.dbg.value(metadata i8* %add.ptr121.us, metadata !38, metadata !DIExpression()), !dbg !108
  br label %while.cond.us, !dbg !188, !llvm.loop !201

while.cond122.preheader.us-lcssa.us:              ; preds = %land.end102.us
  %cmp_result.3.us.lcssa = phi i32 [ %cmp_result.3.us, %land.end102.us ]
  %pb.1.us.lcssa = phi i8* [ %pb.1.us, %land.end102.us ], !dbg !108
  %pa.1.us.lcssa = phi i8* [ %pa.1.us, %land.end102.us ], !dbg !108
  %swap_cnt.1.us.lcssa = phi i32 [ %swap_cnt.1.us, %land.end102.us ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.3.us.lcssa, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pb.1.us.lcssa, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.1.us.lcssa, metadata !37, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.1.us.lcssa, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.3.us.lcssa, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pb.1.us.lcssa, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.1.us.lcssa, metadata !37, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.1.us.lcssa, metadata !49, metadata !DIExpression()), !dbg !108
  br label %while.cond122.preheader, !dbg !203

for.cond95.split.for.cond95.split.split_crit_edge: ; preds = %for.cond95.for.cond95.split_crit_edge
  br label %while.cond, !dbg !188

for.cond95.split.split.us:                        ; preds = %for.cond95.for.cond95.split_crit_edge
  br label %while.cond.us97, !dbg !188

while.cond.us97:                                  ; preds = %if.end120.us117, %for.cond95.split.split.us
  %cmp_result.2.us98 = phi i32 [ %cmp_result.1, %for.cond95.split.split.us ], [ %cmp_result.3.us107, %if.end120.us117 ]
  %pb.1.us99 = phi i8* [ %pb.0, %for.cond95.split.split.us ], [ %add.ptr121.us120, %if.end120.us117 ], !dbg !108
  %pa.1.us100 = phi i8* [ %pa.0, %for.cond95.split.split.us ], [ %pa.2.us118, %if.end120.us117 ], !dbg !108
  %swap_cnt.1.us101 = phi i32 [ %swap_cnt.0, %for.cond95.split.split.us ], [ %swap_cnt.2.us119, %if.end120.us117 ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.1.us101, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.1.us100, metadata !37, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pb.1.us99, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.2.us98, metadata !46, metadata !DIExpression()), !dbg !108
  %cmp96.us102 = icmp ugt i8* %pb.1.us99, %pc.0, !dbg !189
  br i1 %cmp96.us102, label %land.end102.us106, label %land.rhs98.us103, !dbg !190

land.rhs98.us103:                                 ; preds = %while.cond.us97
  %call99.us104 = tail call i32 %cmp(i8* %pb.1.us99, i8* %a.addr.0) #3, !dbg !191
  call void @llvm.dbg.value(metadata i32 %call99.us104, metadata !46, metadata !DIExpression()), !dbg !108
  %cmp100.us105 = icmp slt i32 %call99.us104, 1, !dbg !192
  br label %land.end102.us106

land.end102.us106:                                ; preds = %land.rhs98.us103, %while.cond.us97
  %cmp_result.3.us107 = phi i32 [ %call99.us104, %land.rhs98.us103 ], [ %cmp_result.2.us98, %while.cond.us97 ]
  %26 = phi i1 [ %cmp100.us105, %land.rhs98.us103 ], [ false, %while.cond.us97 ], !dbg !193
  call void @llvm.dbg.value(metadata i32 %cmp_result.3.us107, metadata !46, metadata !DIExpression()), !dbg !108
  br i1 %26, label %while.body.us108, label %while.cond122.preheader.us-lcssa.us-lcssa.us, !dbg !188

while.body.us108:                                 ; preds = %land.end102.us106
  %cmp103.us109 = icmp eq i32 %cmp_result.3.us107, 0, !dbg !194
  br i1 %cmp103.us109, label %if.then105.us110, label %if.end120.us117, !dbg !195

if.then105.us110:                                 ; preds = %while.body.us108
  call void @llvm.dbg.value(metadata i32 1, metadata !49, metadata !DIExpression()), !dbg !108
  %27 = bitcast i8* %pa.1.us100 to i32*, !dbg !204
  %28 = load i32, i32* %27, align 4, !dbg !204
  call void @llvm.dbg.value(metadata i32 %28, metadata !77, metadata !DIExpression()), !dbg !205
  %29 = bitcast i8* %pb.1.us99 to i32*, !dbg !204
  %30 = load i32, i32* %29, align 4, !dbg !204
  store i32 %30, i32* %27, align 4, !dbg !204
  store i32 %28, i32* %29, align 4, !dbg !204
  %add.ptr119.us116 = getelementptr inbounds i8, i8* %pa.1.us100, i64 %es, !dbg !198
  call void @llvm.dbg.value(metadata i8* %add.ptr119.us116, metadata !37, metadata !DIExpression()), !dbg !108
  br label %if.end120.us117, !dbg !199

if.end120.us117:                                  ; preds = %if.then105.us110, %while.body.us108
  %pa.2.us118 = phi i8* [ %add.ptr119.us116, %if.then105.us110 ], [ %pa.1.us100, %while.body.us108 ], !dbg !108
  %swap_cnt.2.us119 = phi i32 [ 1, %if.then105.us110 ], [ %swap_cnt.1.us101, %while.body.us108 ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.2.us119, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.2.us118, metadata !37, metadata !DIExpression()), !dbg !108
  %add.ptr121.us120 = getelementptr inbounds i8, i8* %pb.1.us99, i64 %es, !dbg !200
  call void @llvm.dbg.value(metadata i8* %add.ptr121.us120, metadata !38, metadata !DIExpression()), !dbg !108
  br label %while.cond.us97, !dbg !188, !llvm.loop !201

while.cond122.preheader.us-lcssa.us-lcssa.us:     ; preds = %land.end102.us106
  %cmp_result.3.us107.lcssa = phi i32 [ %cmp_result.3.us107, %land.end102.us106 ]
  %pb.1.us99.lcssa = phi i8* [ %pb.1.us99, %land.end102.us106 ], !dbg !108
  %pa.1.us100.lcssa = phi i8* [ %pa.1.us100, %land.end102.us106 ], !dbg !108
  %swap_cnt.1.us101.lcssa = phi i32 [ %swap_cnt.1.us101, %land.end102.us106 ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.3.us107.lcssa, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pb.1.us99.lcssa, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.1.us100.lcssa, metadata !37, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.1.us101.lcssa, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.3.us107.lcssa, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pb.1.us99.lcssa, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.1.us100.lcssa, metadata !37, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.1.us101.lcssa, metadata !49, metadata !DIExpression()), !dbg !108
  br label %while.cond122.preheader.us-lcssa, !dbg !203

while.cond:                                       ; preds = %if.end120, %for.cond95.split.for.cond95.split.split_crit_edge
  %cmp_result.2 = phi i32 [ %cmp_result.1, %for.cond95.split.for.cond95.split.split_crit_edge ], [ %cmp_result.3, %if.end120 ]
  %pb.1 = phi i8* [ %pb.0, %for.cond95.split.for.cond95.split.split_crit_edge ], [ %add.ptr121, %if.end120 ], !dbg !108
  %pa.1 = phi i8* [ %pa.0, %for.cond95.split.for.cond95.split.split_crit_edge ], [ %pa.2, %if.end120 ], !dbg !108
  %swap_cnt.1 = phi i32 [ %swap_cnt.0, %for.cond95.split.for.cond95.split.split_crit_edge ], [ %swap_cnt.2, %if.end120 ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.1, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.1, metadata !37, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pb.1, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.2, metadata !46, metadata !DIExpression()), !dbg !108
  %cmp96 = icmp ugt i8* %pb.1, %pc.0, !dbg !189
  br i1 %cmp96, label %land.end102, label %land.rhs98, !dbg !190

land.rhs98:                                       ; preds = %while.cond
  %call99 = tail call i32 %cmp(i8* %pb.1, i8* %a.addr.0) #3, !dbg !191
  call void @llvm.dbg.value(metadata i32 %call99, metadata !46, metadata !DIExpression()), !dbg !108
  %cmp100 = icmp slt i32 %call99, 1, !dbg !192
  br label %land.end102

land.end102:                                      ; preds = %while.cond, %land.rhs98
  %cmp_result.3 = phi i32 [ %call99, %land.rhs98 ], [ %cmp_result.2, %while.cond ]
  %31 = phi i1 [ %cmp100, %land.rhs98 ], [ false, %while.cond ], !dbg !193
  call void @llvm.dbg.value(metadata i32 %cmp_result.3, metadata !46, metadata !DIExpression()), !dbg !108
  br i1 %31, label %while.body, label %while.cond122.preheader.us-lcssa.us-lcssa, !dbg !188

while.cond122.preheader.us-lcssa.us-lcssa:        ; preds = %land.end102
  %cmp_result.3.lcssa166 = phi i32 [ %cmp_result.3, %land.end102 ]
  %pb.1.lcssa165 = phi i8* [ %pb.1, %land.end102 ], !dbg !108
  %pa.1.lcssa164 = phi i8* [ %pa.1, %land.end102 ], !dbg !108
  %swap_cnt.1.lcssa163 = phi i32 [ %swap_cnt.1, %land.end102 ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.3.lcssa166, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pb.1.lcssa165, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.1.lcssa164, metadata !37, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.1.lcssa163, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.3.lcssa166, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pb.1.lcssa165, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.1.lcssa164, metadata !37, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.1.lcssa163, metadata !49, metadata !DIExpression()), !dbg !108
  br label %while.cond122.preheader.us-lcssa, !dbg !203

while.cond122.preheader.us-lcssa:                 ; preds = %while.cond122.preheader.us-lcssa.us-lcssa.us, %while.cond122.preheader.us-lcssa.us-lcssa
  %cmp_result.3.lcssa.ph = phi i32 [ %cmp_result.3.lcssa166, %while.cond122.preheader.us-lcssa.us-lcssa ], [ %cmp_result.3.us107.lcssa, %while.cond122.preheader.us-lcssa.us-lcssa.us ]
  %pb.1.lcssa.ph = phi i8* [ %pb.1.lcssa165, %while.cond122.preheader.us-lcssa.us-lcssa ], [ %pb.1.us99.lcssa, %while.cond122.preheader.us-lcssa.us-lcssa.us ]
  %pa.1.lcssa.ph = phi i8* [ %pa.1.lcssa164, %while.cond122.preheader.us-lcssa.us-lcssa ], [ %pa.1.us100.lcssa, %while.cond122.preheader.us-lcssa.us-lcssa.us ]
  %swap_cnt.1.lcssa.ph = phi i32 [ %swap_cnt.1.lcssa163, %while.cond122.preheader.us-lcssa.us-lcssa ], [ %swap_cnt.1.us101.lcssa, %while.cond122.preheader.us-lcssa.us-lcssa.us ]
  br label %while.cond122.preheader, !dbg !203

while.cond122.preheader:                          ; preds = %while.cond122.preheader.us-lcssa.us, %while.cond122.preheader.us-lcssa
  %cmp_result.3.lcssa = phi i32 [ %cmp_result.3.lcssa.ph, %while.cond122.preheader.us-lcssa ], [ %cmp_result.3.us.lcssa, %while.cond122.preheader.us-lcssa.us ]
  %pb.1.lcssa = phi i8* [ %pb.1.lcssa.ph, %while.cond122.preheader.us-lcssa ], [ %pb.1.us.lcssa, %while.cond122.preheader.us-lcssa.us ], !dbg !108
  %pa.1.lcssa = phi i8* [ %pa.1.lcssa.ph, %while.cond122.preheader.us-lcssa ], [ %pa.1.us.lcssa, %while.cond122.preheader.us-lcssa.us ], !dbg !108
  %swap_cnt.1.lcssa = phi i32 [ %swap_cnt.1.lcssa.ph, %while.cond122.preheader.us-lcssa ], [ %swap_cnt.1.us.lcssa, %while.cond122.preheader.us-lcssa.us ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.3.lcssa, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pb.1.lcssa, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.1.lcssa, metadata !37, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.1.lcssa, metadata !49, metadata !DIExpression()), !dbg !108
  br i1 %cmp78, label %while.cond122.preheader.split.us, label %while.cond122.preheader.while.cond122.preheader.split_crit_edge, !dbg !203

while.cond122.preheader.while.cond122.preheader.split_crit_edge: ; preds = %while.cond122.preheader
  br i1 %cmp111, label %while.cond122.preheader.split.split.us, label %while.cond122.preheader.split.while.cond122.preheader.split.split_crit_edge, !dbg !203

while.cond122.preheader.split.us:                 ; preds = %while.cond122.preheader
  br label %while.cond122.us, !dbg !203

while.cond122.us:                                 ; preds = %if.end149.us, %while.cond122.preheader.split.us
  %cmp_result.4.us = phi i32 [ %cmp_result.5.us, %if.end149.us ], [ %cmp_result.3.lcssa, %while.cond122.preheader.split.us ], !dbg !193
  %pd.1.us = phi i8* [ %pd.2.us, %if.end149.us ], [ %pd.0, %while.cond122.preheader.split.us ], !dbg !108
  %pc.1.us = phi i8* [ %add.ptr151.us, %if.end149.us ], [ %pc.0, %while.cond122.preheader.split.us ], !dbg !108
  %swap_cnt.3.us = phi i32 [ %swap_cnt.4.us, %if.end149.us ], [ %swap_cnt.1.lcssa, %while.cond122.preheader.split.us ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.3.us, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pc.1.us, metadata !39, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.1.us, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.4.us, metadata !46, metadata !DIExpression()), !dbg !108
  %cmp123.us = icmp ugt i8* %pb.1.lcssa, %pc.1.us, !dbg !206
  br i1 %cmp123.us, label %land.end129.us, label %land.rhs125.us, !dbg !207

land.rhs125.us:                                   ; preds = %while.cond122.us
  %call126.us = tail call i32 %cmp(i8* %pc.1.us, i8* %a.addr.0) #3, !dbg !208
  call void @llvm.dbg.value(metadata i32 %call126.us, metadata !46, metadata !DIExpression()), !dbg !108
  %cmp127.us = icmp sgt i32 %call126.us, -1, !dbg !209
  br label %land.end129.us

land.end129.us:                                   ; preds = %land.rhs125.us, %while.cond122.us
  %cmp_result.5.us = phi i32 [ %call126.us, %land.rhs125.us ], [ %cmp_result.4.us, %while.cond122.us ], !dbg !193
  %32 = phi i1 [ %cmp127.us, %land.rhs125.us ], [ false, %while.cond122.us ], !dbg !193
  call void @llvm.dbg.value(metadata i32 %cmp_result.5.us, metadata !46, metadata !DIExpression()), !dbg !108
  br i1 %32, label %while.body130.us, label %while.end152.us-lcssa.us, !dbg !203

while.body130.us:                                 ; preds = %land.end129.us
  %cmp131.us = icmp eq i32 %cmp_result.5.us, 0, !dbg !210
  br i1 %cmp131.us, label %if.then133.us, label %if.end149.us, !dbg !211

if.then133.us:                                    ; preds = %while.body130.us
  call void @llvm.dbg.value(metadata i32 1, metadata !49, metadata !DIExpression()), !dbg !108
  %33 = bitcast i8* %pc.1.us to i64*, !dbg !212
  %34 = load i64, i64* %33, align 8, !dbg !212
  call void @llvm.dbg.value(metadata i64 %34, metadata !80, metadata !DIExpression()), !dbg !213
  %35 = bitcast i8* %pd.1.us to i64*, !dbg !212
  %36 = load i64, i64* %35, align 8, !dbg !212
  store i64 %36, i64* %33, align 8, !dbg !212
  store i64 %34, i64* %35, align 8, !dbg !212
  %add.ptr148.us = getelementptr inbounds i8, i8* %pd.1.us, i64 %idx.neg147, !dbg !214
  call void @llvm.dbg.value(metadata i8* %add.ptr148.us, metadata !40, metadata !DIExpression()), !dbg !108
  br label %if.end149.us, !dbg !215

if.end149.us:                                     ; preds = %if.then133.us, %while.body130.us
  %pd.2.us = phi i8* [ %add.ptr148.us, %if.then133.us ], [ %pd.1.us, %while.body130.us ], !dbg !108
  %swap_cnt.4.us = phi i32 [ 1, %if.then133.us ], [ %swap_cnt.3.us, %while.body130.us ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.4.us, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.2.us, metadata !40, metadata !DIExpression()), !dbg !108
  %add.ptr151.us = getelementptr inbounds i8, i8* %pc.1.us, i64 %idx.neg147, !dbg !216
  call void @llvm.dbg.value(metadata i8* %add.ptr151.us, metadata !39, metadata !DIExpression()), !dbg !108
  br label %while.cond122.us, !dbg !203, !llvm.loop !217

while.end152.us-lcssa.us:                         ; preds = %land.end129.us
  %cmp_result.5.us.lcssa = phi i32 [ %cmp_result.5.us, %land.end129.us ], !dbg !193
  %pd.1.us.lcssa = phi i8* [ %pd.1.us, %land.end129.us ], !dbg !108
  %pc.1.us.lcssa = phi i8* [ %pc.1.us, %land.end129.us ], !dbg !108
  %swap_cnt.3.us.lcssa = phi i32 [ %swap_cnt.3.us, %land.end129.us ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.5.us.lcssa, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.1.us.lcssa, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pc.1.us.lcssa, metadata !39, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.3.us.lcssa, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.5.us.lcssa, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.1.us.lcssa, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pc.1.us.lcssa, metadata !39, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.3.us.lcssa, metadata !49, metadata !DIExpression()), !dbg !108
  br label %while.end152, !dbg !219

while.cond122.preheader.split.while.cond122.preheader.split.split_crit_edge: ; preds = %while.cond122.preheader.while.cond122.preheader.split_crit_edge
  br label %while.cond122, !dbg !203

while.cond122.preheader.split.split.us:           ; preds = %while.cond122.preheader.while.cond122.preheader.split_crit_edge
  br label %while.cond122.us121, !dbg !203

while.cond122.us121:                              ; preds = %if.end149.us141, %while.cond122.preheader.split.split.us
  %cmp_result.4.us122 = phi i32 [ %cmp_result.5.us131, %if.end149.us141 ], [ %cmp_result.3.lcssa, %while.cond122.preheader.split.split.us ], !dbg !193
  %pd.1.us123 = phi i8* [ %pd.2.us142, %if.end149.us141 ], [ %pd.0, %while.cond122.preheader.split.split.us ], !dbg !108
  %pc.1.us124 = phi i8* [ %add.ptr151.us144, %if.end149.us141 ], [ %pc.0, %while.cond122.preheader.split.split.us ], !dbg !108
  %swap_cnt.3.us125 = phi i32 [ %swap_cnt.4.us143, %if.end149.us141 ], [ %swap_cnt.1.lcssa, %while.cond122.preheader.split.split.us ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.3.us125, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pc.1.us124, metadata !39, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.1.us123, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.4.us122, metadata !46, metadata !DIExpression()), !dbg !108
  %cmp123.us126 = icmp ugt i8* %pb.1.lcssa, %pc.1.us124, !dbg !206
  br i1 %cmp123.us126, label %land.end129.us130, label %land.rhs125.us127, !dbg !207

land.rhs125.us127:                                ; preds = %while.cond122.us121
  %call126.us128 = tail call i32 %cmp(i8* %pc.1.us124, i8* %a.addr.0) #3, !dbg !208
  call void @llvm.dbg.value(metadata i32 %call126.us128, metadata !46, metadata !DIExpression()), !dbg !108
  %cmp127.us129 = icmp sgt i32 %call126.us128, -1, !dbg !209
  br label %land.end129.us130

land.end129.us130:                                ; preds = %land.rhs125.us127, %while.cond122.us121
  %cmp_result.5.us131 = phi i32 [ %call126.us128, %land.rhs125.us127 ], [ %cmp_result.4.us122, %while.cond122.us121 ], !dbg !193
  %37 = phi i1 [ %cmp127.us129, %land.rhs125.us127 ], [ false, %while.cond122.us121 ], !dbg !193
  call void @llvm.dbg.value(metadata i32 %cmp_result.5.us131, metadata !46, metadata !DIExpression()), !dbg !108
  br i1 %37, label %while.body130.us132, label %while.end152.us-lcssa.us-lcssa.us, !dbg !203

while.body130.us132:                              ; preds = %land.end129.us130
  %cmp131.us133 = icmp eq i32 %cmp_result.5.us131, 0, !dbg !210
  br i1 %cmp131.us133, label %if.then133.us134, label %if.end149.us141, !dbg !211

if.then133.us134:                                 ; preds = %while.body130.us132
  call void @llvm.dbg.value(metadata i32 1, metadata !49, metadata !DIExpression()), !dbg !108
  %38 = bitcast i8* %pc.1.us124 to i32*, !dbg !221
  %39 = load i32, i32* %38, align 4, !dbg !221
  call void @llvm.dbg.value(metadata i32 %39, metadata !86, metadata !DIExpression()), !dbg !222
  %40 = bitcast i8* %pd.1.us123 to i32*, !dbg !221
  %41 = load i32, i32* %40, align 4, !dbg !221
  store i32 %41, i32* %38, align 4, !dbg !221
  store i32 %39, i32* %40, align 4, !dbg !221
  %add.ptr148.us140 = getelementptr inbounds i8, i8* %pd.1.us123, i64 %idx.neg147, !dbg !214
  call void @llvm.dbg.value(metadata i8* %add.ptr148.us140, metadata !40, metadata !DIExpression()), !dbg !108
  br label %if.end149.us141, !dbg !215

if.end149.us141:                                  ; preds = %if.then133.us134, %while.body130.us132
  %pd.2.us142 = phi i8* [ %add.ptr148.us140, %if.then133.us134 ], [ %pd.1.us123, %while.body130.us132 ], !dbg !108
  %swap_cnt.4.us143 = phi i32 [ 1, %if.then133.us134 ], [ %swap_cnt.3.us125, %while.body130.us132 ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.4.us143, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.2.us142, metadata !40, metadata !DIExpression()), !dbg !108
  %add.ptr151.us144 = getelementptr inbounds i8, i8* %pc.1.us124, i64 %idx.neg147, !dbg !216
  call void @llvm.dbg.value(metadata i8* %add.ptr151.us144, metadata !39, metadata !DIExpression()), !dbg !108
  br label %while.cond122.us121, !dbg !203, !llvm.loop !217

while.end152.us-lcssa.us-lcssa.us:                ; preds = %land.end129.us130
  %cmp_result.5.us131.lcssa = phi i32 [ %cmp_result.5.us131, %land.end129.us130 ], !dbg !193
  %pd.1.us123.lcssa = phi i8* [ %pd.1.us123, %land.end129.us130 ], !dbg !108
  %pc.1.us124.lcssa = phi i8* [ %pc.1.us124, %land.end129.us130 ], !dbg !108
  %swap_cnt.3.us125.lcssa = phi i32 [ %swap_cnt.3.us125, %land.end129.us130 ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.5.us131.lcssa, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.1.us123.lcssa, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pc.1.us124.lcssa, metadata !39, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.3.us125.lcssa, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.5.us131.lcssa, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.1.us123.lcssa, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pc.1.us124.lcssa, metadata !39, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.3.us125.lcssa, metadata !49, metadata !DIExpression()), !dbg !108
  br label %while.end152.us-lcssa, !dbg !219

while.body:                                       ; preds = %land.end102
  %cmp103 = icmp eq i32 %cmp_result.3, 0, !dbg !194
  br i1 %cmp103, label %if.then105, label %if.end120, !dbg !195

if.then105:                                       ; preds = %while.body
  call void @llvm.dbg.value(metadata i32 1, metadata !49, metadata !DIExpression()), !dbg !108
  tail call fastcc void @swapfunc(i8* %pa.1, i8* %pb.1, i32 %conv88, i32 %cond4, i32 %cond17) #4, !dbg !223
  %add.ptr119 = getelementptr inbounds i8, i8* %pa.1, i64 %es, !dbg !198
  call void @llvm.dbg.value(metadata i8* %add.ptr119, metadata !37, metadata !DIExpression()), !dbg !108
  br label %if.end120, !dbg !199

if.end120:                                        ; preds = %if.then105, %while.body
  %pa.2 = phi i8* [ %add.ptr119, %if.then105 ], [ %pa.1, %while.body ], !dbg !108
  %swap_cnt.2 = phi i32 [ 1, %if.then105 ], [ %swap_cnt.1, %while.body ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.2, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.2, metadata !37, metadata !DIExpression()), !dbg !108
  %add.ptr121 = getelementptr inbounds i8, i8* %pb.1, i64 %es, !dbg !200
  call void @llvm.dbg.value(metadata i8* %add.ptr121, metadata !38, metadata !DIExpression()), !dbg !108
  br label %while.cond, !dbg !188, !llvm.loop !201

while.cond122:                                    ; preds = %while.cond122.preheader.split.while.cond122.preheader.split.split_crit_edge, %if.end149
  %cmp_result.4 = phi i32 [ %cmp_result.5, %if.end149 ], [ %cmp_result.3.lcssa, %while.cond122.preheader.split.while.cond122.preheader.split.split_crit_edge ], !dbg !193
  %pd.1 = phi i8* [ %pd.2, %if.end149 ], [ %pd.0, %while.cond122.preheader.split.while.cond122.preheader.split.split_crit_edge ], !dbg !108
  %pc.1 = phi i8* [ %add.ptr151, %if.end149 ], [ %pc.0, %while.cond122.preheader.split.while.cond122.preheader.split.split_crit_edge ], !dbg !108
  %swap_cnt.3 = phi i32 [ %swap_cnt.4, %if.end149 ], [ %swap_cnt.1.lcssa, %while.cond122.preheader.split.while.cond122.preheader.split.split_crit_edge ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.3, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pc.1, metadata !39, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.1, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.4, metadata !46, metadata !DIExpression()), !dbg !108
  %cmp123 = icmp ugt i8* %pb.1.lcssa, %pc.1, !dbg !206
  br i1 %cmp123, label %land.end129, label %land.rhs125, !dbg !207

land.rhs125:                                      ; preds = %while.cond122
  %call126 = tail call i32 %cmp(i8* %pc.1, i8* %a.addr.0) #3, !dbg !208
  call void @llvm.dbg.value(metadata i32 %call126, metadata !46, metadata !DIExpression()), !dbg !108
  %cmp127 = icmp sgt i32 %call126, -1, !dbg !209
  br label %land.end129

land.end129:                                      ; preds = %while.cond122, %land.rhs125
  %cmp_result.5 = phi i32 [ %call126, %land.rhs125 ], [ %cmp_result.4, %while.cond122 ], !dbg !193
  %42 = phi i1 [ %cmp127, %land.rhs125 ], [ false, %while.cond122 ], !dbg !193
  call void @llvm.dbg.value(metadata i32 %cmp_result.5, metadata !46, metadata !DIExpression()), !dbg !108
  br i1 %42, label %while.body130, label %while.end152.us-lcssa.us-lcssa, !dbg !203

while.body130:                                    ; preds = %land.end129
  %cmp131 = icmp eq i32 %cmp_result.5, 0, !dbg !210
  br i1 %cmp131, label %if.then133, label %if.end149, !dbg !211

if.then133:                                       ; preds = %while.body130
  call void @llvm.dbg.value(metadata i32 1, metadata !49, metadata !DIExpression()), !dbg !108
  tail call fastcc void @swapfunc(i8* %pc.1, i8* %pd.1, i32 %conv88, i32 %cond4, i32 %cond17) #4, !dbg !224
  %add.ptr148 = getelementptr inbounds i8, i8* %pd.1, i64 %idx.neg147, !dbg !214
  call void @llvm.dbg.value(metadata i8* %add.ptr148, metadata !40, metadata !DIExpression()), !dbg !108
  br label %if.end149, !dbg !215

if.end149:                                        ; preds = %if.then133, %while.body130
  %pd.2 = phi i8* [ %add.ptr148, %if.then133 ], [ %pd.1, %while.body130 ], !dbg !108
  %swap_cnt.4 = phi i32 [ 1, %if.then133 ], [ %swap_cnt.3, %while.body130 ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.4, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.2, metadata !40, metadata !DIExpression()), !dbg !108
  %add.ptr151 = getelementptr inbounds i8, i8* %pc.1, i64 %idx.neg147, !dbg !216
  call void @llvm.dbg.value(metadata i8* %add.ptr151, metadata !39, metadata !DIExpression()), !dbg !108
  br label %while.cond122, !dbg !203, !llvm.loop !217

while.end152.us-lcssa.us-lcssa:                   ; preds = %land.end129
  %cmp_result.5.lcssa170 = phi i32 [ %cmp_result.5, %land.end129 ], !dbg !193
  %pd.1.lcssa169 = phi i8* [ %pd.1, %land.end129 ], !dbg !108
  %pc.1.lcssa168 = phi i8* [ %pc.1, %land.end129 ], !dbg !108
  %swap_cnt.3.lcssa167 = phi i32 [ %swap_cnt.3, %land.end129 ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.5.lcssa170, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.1.lcssa169, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pc.1.lcssa168, metadata !39, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.3.lcssa167, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.5.lcssa170, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.1.lcssa169, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pc.1.lcssa168, metadata !39, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.3.lcssa167, metadata !49, metadata !DIExpression()), !dbg !108
  br label %while.end152.us-lcssa, !dbg !219

while.end152.us-lcssa:                            ; preds = %while.end152.us-lcssa.us-lcssa.us, %while.end152.us-lcssa.us-lcssa
  %cmp_result.5.lcssa.ph = phi i32 [ %cmp_result.5.lcssa170, %while.end152.us-lcssa.us-lcssa ], [ %cmp_result.5.us131.lcssa, %while.end152.us-lcssa.us-lcssa.us ]
  %pd.1.lcssa.ph = phi i8* [ %pd.1.lcssa169, %while.end152.us-lcssa.us-lcssa ], [ %pd.1.us123.lcssa, %while.end152.us-lcssa.us-lcssa.us ]
  %pc.1.lcssa.ph = phi i8* [ %pc.1.lcssa168, %while.end152.us-lcssa.us-lcssa ], [ %pc.1.us124.lcssa, %while.end152.us-lcssa.us-lcssa.us ]
  %swap_cnt.3.lcssa.ph = phi i32 [ %swap_cnt.3.lcssa167, %while.end152.us-lcssa.us-lcssa ], [ %swap_cnt.3.us125.lcssa, %while.end152.us-lcssa.us-lcssa.us ]
  br label %while.end152, !dbg !219

while.end152:                                     ; preds = %while.end152.us-lcssa.us, %while.end152.us-lcssa
  %cmp_result.5.lcssa = phi i32 [ %cmp_result.5.lcssa.ph, %while.end152.us-lcssa ], [ %cmp_result.5.us.lcssa, %while.end152.us-lcssa.us ], !dbg !193
  %pd.1.lcssa = phi i8* [ %pd.1.lcssa.ph, %while.end152.us-lcssa ], [ %pd.1.us.lcssa, %while.end152.us-lcssa.us ], !dbg !108
  %pc.1.lcssa = phi i8* [ %pc.1.lcssa.ph, %while.end152.us-lcssa ], [ %pc.1.us.lcssa, %while.end152.us-lcssa.us ], !dbg !108
  %swap_cnt.3.lcssa = phi i32 [ %swap_cnt.3.lcssa.ph, %while.end152.us-lcssa ], [ %swap_cnt.3.us.lcssa, %while.end152.us-lcssa.us ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.5.lcssa, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.1.lcssa, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pc.1.lcssa, metadata !39, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.3.lcssa, metadata !49, metadata !DIExpression()), !dbg !108
  %cmp153 = icmp ugt i8* %pb.1.lcssa, %pc.1.lcssa, !dbg !219
  br i1 %cmp153, label %for.end173, label %if.end156, !dbg !225

if.end156:                                        ; preds = %while.end152
  br i1 %cmp78, label %if.then159, label %if.else161, !dbg !226

if.then159:                                       ; preds = %if.end156
  %43 = bitcast i8* %pb.1.lcssa to i64*, !dbg !227
  %44 = load i64, i64* %43, align 8, !dbg !227
  call void @llvm.dbg.value(metadata i64 %44, metadata !89, metadata !DIExpression()), !dbg !228
  %45 = bitcast i8* %pc.1.lcssa to i64*, !dbg !227
  %46 = load i64, i64* %45, align 8, !dbg !227
  store i64 %46, i64* %43, align 8, !dbg !227
  store i64 %44, i64* %45, align 8, !dbg !227
  br label %if.end169, !dbg !227

if.else161:                                       ; preds = %if.end156
  br i1 %cmp111, label %if.then164, label %if.else166, !dbg !229

if.then164:                                       ; preds = %if.else161
  %47 = bitcast i8* %pb.1.lcssa to i32*, !dbg !230
  %48 = load i32, i32* %47, align 4, !dbg !230
  call void @llvm.dbg.value(metadata i32 %48, metadata !92, metadata !DIExpression()), !dbg !231
  %49 = bitcast i8* %pc.1.lcssa to i32*, !dbg !230
  %50 = load i32, i32* %49, align 4, !dbg !230
  store i32 %50, i32* %47, align 4, !dbg !230
  store i32 %48, i32* %49, align 4, !dbg !230
  br label %if.end169, !dbg !230

if.else166:                                       ; preds = %if.else161
  tail call fastcc void @swapfunc(i8* %pb.1.lcssa, i8* %pc.1.lcssa, i32 %conv88, i32 %cond4, i32 %cond17) #4, !dbg !232
  br label %if.end169

if.end169:                                        ; preds = %if.then164, %if.else166, %if.then159
  call void @llvm.dbg.value(metadata i32 1, metadata !49, metadata !DIExpression()), !dbg !108
  %add.ptr170 = getelementptr inbounds i8, i8* %pb.1.lcssa, i64 %es, !dbg !233
  call void @llvm.dbg.value(metadata i8* %add.ptr170, metadata !38, metadata !DIExpression()), !dbg !108
  %add.ptr172 = getelementptr inbounds i8, i8* %pc.1.lcssa, i64 %idx.neg147, !dbg !234
  call void @llvm.dbg.value(metadata i8* %add.ptr172, metadata !39, metadata !DIExpression()), !dbg !108
  br label %for.cond95, !dbg !235, !llvm.loop !236

for.end173:                                       ; preds = %while.end152
  %cmp_result.5.lcssa.lcssa = phi i32 [ %cmp_result.5.lcssa, %while.end152 ], !dbg !193
  %pd.1.lcssa.lcssa = phi i8* [ %pd.1.lcssa, %while.end152 ], !dbg !108
  %pc.1.lcssa.lcssa = phi i8* [ %pc.1.lcssa, %while.end152 ], !dbg !108
  %swap_cnt.3.lcssa.lcssa = phi i32 [ %swap_cnt.3.lcssa, %while.end152 ], !dbg !108
  %pb.1.lcssa.lcssa = phi i8* [ %pb.1.lcssa, %while.end152 ], !dbg !108
  %pa.1.lcssa.lcssa = phi i8* [ %pa.1.lcssa, %while.end152 ], !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.5.lcssa.lcssa, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.1.lcssa.lcssa, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pc.1.lcssa.lcssa, metadata !39, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.3.lcssa.lcssa, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pb.1.lcssa.lcssa, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.1.lcssa.lcssa, metadata !37, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.5.lcssa.lcssa, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.1.lcssa.lcssa, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pc.1.lcssa.lcssa, metadata !39, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.3.lcssa.lcssa, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pb.1.lcssa.lcssa, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.1.lcssa.lcssa, metadata !37, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cmp_result.5.lcssa.lcssa, metadata !46, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pd.1.lcssa.lcssa, metadata !40, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pc.1.lcssa.lcssa, metadata !39, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %swap_cnt.3.lcssa.lcssa, metadata !49, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pb.1.lcssa.lcssa, metadata !38, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %pa.1.lcssa.lcssa, metadata !37, metadata !DIExpression()), !dbg !108
  %cmp174 = icmp eq i32 %swap_cnt.3.lcssa.lcssa, 0, !dbg !239
  br i1 %cmp174, label %if.then176, label %if.end225, !dbg !240

if.then176:                                       ; preds = %for.end173
  %cmp111.lcssa = phi i1 [ %cmp111, %for.end173 ], !dbg !184
  %cmp78.lcssa = phi i1 [ %cmp78, %for.end173 ], !dbg !173
  %cond17.lcssa177 = phi i32 [ %cond17, %for.end173 ], !dbg !114
  %cond4.lcssa175 = phi i32 [ %cond4, %for.end173 ], !dbg !113
  %n.addr.0.lcssa173 = phi i64 [ %n.addr.0, %for.end173 ]
  %a.addr.0.lcssa171 = phi i8* [ %a.addr.0, %for.end173 ]
  call void @llvm.dbg.value(metadata i32 %cond17.lcssa177, metadata !48, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cond4.lcssa175, metadata !47, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %n.addr.0.lcssa173, metadata !34, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %a.addr.0.lcssa171, metadata !33, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cond17.lcssa177, metadata !48, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cond4.lcssa175, metadata !47, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %n.addr.0.lcssa173, metadata !34, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %a.addr.0.lcssa171, metadata !33, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cond17.lcssa177, metadata !48, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %cond4.lcssa175, metadata !47, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i64 %n.addr.0.lcssa173, metadata !34, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i8* %a.addr.0.lcssa171, metadata !33, metadata !DIExpression()), !dbg !108
  %mul179 = mul i64 %n.addr.0.lcssa173, %es, !dbg !241
  %add.ptr180 = getelementptr inbounds i8, i8* %a.addr.0.lcssa171, i64 %mul179, !dbg !241
  br i1 %cmp78.lcssa, label %if.then176.split.us, label %if.then176.if.then176.split_crit_edge, !dbg !242

if.then176.if.then176.split_crit_edge:            ; preds = %if.then176
  br label %for.cond178, !dbg !242

if.then176.split.us:                              ; preds = %if.then176
  br label %for.cond178.us, !dbg !242

for.cond178.us:                                   ; preds = %for.inc222.us-lcssa.us.us, %if.then176.split.us
  %a.addr.0.pn.us = phi i8* [ %a.addr.0.lcssa171, %if.then176.split.us ], [ %pm.3.us, %for.inc222.us-lcssa.us.us ]
  %pm.3.us = getelementptr inbounds i8, i8* %a.addr.0.pn.us, i64 %es, !dbg !243
  call void @llvm.dbg.value(metadata i8* %pm.3.us, metadata !42, metadata !DIExpression()), !dbg !108
  %cmp181.us = icmp ult i8* %pm.3.us, %add.ptr180, !dbg !244
  br i1 %cmp181.us, label %for.cond184.preheader.us, label %cleanup.cont.loopexit3.us-lcssa.us, !dbg !245

for.cond184.preheader.us:                         ; preds = %for.cond178.us
  br label %for.cond184.us.us, !dbg !246

for.cond184.us.us:                                ; preds = %for.cond184.preheader.us, %for.body194.us.us
  %pl.2.us.us = phi i8* [ %add.ptr189.us.us, %for.body194.us.us ], [ %pm.3.us, %for.cond184.preheader.us ], !dbg !247
  call void @llvm.dbg.value(metadata i8* %pl.2.us.us, metadata !41, metadata !DIExpression()), !dbg !108
  %cmp185.us.us = icmp ugt i8* %pl.2.us.us, %a.addr.0.lcssa171, !dbg !248
  br i1 %cmp185.us.us, label %land.rhs187.us.us, label %for.inc222.us-lcssa.us.us, !dbg !249

land.rhs187.us.us:                                ; preds = %for.cond184.us.us
  %add.ptr189.us.us = getelementptr inbounds i8, i8* %pl.2.us.us, i64 %idx.neg147, !dbg !250
  %call190.us.us = tail call i32 %cmp(i8* %add.ptr189.us.us, i8* %pl.2.us.us) #3, !dbg !251
  %cmp191.us.us = icmp sgt i32 %call190.us.us, 0, !dbg !252
  br i1 %cmp191.us.us, label %for.body194.us.us, label %for.inc222.us-lcssa.us.us, !dbg !246

for.body194.us.us:                                ; preds = %land.rhs187.us.us
  %51 = bitcast i8* %pl.2.us.us to i64*, !dbg !253
  %52 = load i64, i64* %51, align 8, !dbg !253
  call void @llvm.dbg.value(metadata i64 %52, metadata !95, metadata !DIExpression()), !dbg !254
  %53 = bitcast i8* %add.ptr189.us.us to i64*, !dbg !253
  %54 = load i64, i64* %53, align 8, !dbg !253
  store i64 %54, i64* %51, align 8, !dbg !253
  store i64 %52, i64* %53, align 8, !dbg !253
  call void @llvm.dbg.value(metadata i8* %add.ptr189.us.us, metadata !41, metadata !DIExpression()), !dbg !108
  br label %for.cond184.us.us, !dbg !255, !llvm.loop !256

for.inc222.us-lcssa.us.us:                        ; preds = %land.rhs187.us.us, %for.cond184.us.us
  br label %for.cond178.us, !dbg !258, !llvm.loop !259

cleanup.cont.loopexit3.us-lcssa.us:               ; preds = %for.cond178.us
  br label %cleanup.cont.loopexit3, !dbg !139

for.cond178:                                      ; preds = %for.inc222.us-lcssa, %if.then176.if.then176.split_crit_edge
  %a.addr.0.pn = phi i8* [ %a.addr.0.lcssa171, %if.then176.if.then176.split_crit_edge ], [ %pm.3, %for.inc222.us-lcssa ]
  %pm.3 = getelementptr inbounds i8, i8* %a.addr.0.pn, i64 %es, !dbg !243
  call void @llvm.dbg.value(metadata i8* %pm.3, metadata !42, metadata !DIExpression()), !dbg !108
  %cmp181 = icmp ult i8* %pm.3, %add.ptr180, !dbg !244
  br i1 %cmp181, label %for.cond184.preheader, label %cleanup.cont.loopexit3.us-lcssa, !dbg !245

for.cond184.preheader:                            ; preds = %for.cond178
  br i1 %cmp111.lcssa, label %for.cond184.preheader.split.split.us, label %for.cond184.preheader.split.for.cond184.preheader.split.split_crit_edge, !dbg !246

for.cond184.preheader.split.for.cond184.preheader.split.split_crit_edge: ; preds = %for.cond184.preheader
  br label %for.cond184, !dbg !246

for.cond184.preheader.split.split.us:             ; preds = %for.cond184.preheader
  br label %for.cond184.us55, !dbg !246

for.cond184.us55:                                 ; preds = %for.body194.us62, %for.cond184.preheader.split.split.us
  %pl.2.us56 = phi i8* [ %add.ptr189.us59, %for.body194.us62 ], [ %pm.3, %for.cond184.preheader.split.split.us ], !dbg !247
  call void @llvm.dbg.value(metadata i8* %pl.2.us56, metadata !41, metadata !DIExpression()), !dbg !108
  %cmp185.us57 = icmp ugt i8* %pl.2.us56, %a.addr.0.lcssa171, !dbg !248
  br i1 %cmp185.us57, label %land.rhs187.us58, label %for.inc222.us-lcssa.us-lcssa.us, !dbg !249

land.rhs187.us58:                                 ; preds = %for.cond184.us55
  %add.ptr189.us59 = getelementptr inbounds i8, i8* %pl.2.us56, i64 %idx.neg147, !dbg !250
  %call190.us60 = tail call i32 %cmp(i8* %add.ptr189.us59, i8* %pl.2.us56) #3, !dbg !251
  %cmp191.us61 = icmp sgt i32 %call190.us60, 0, !dbg !252
  br i1 %cmp191.us61, label %for.body194.us62, label %for.inc222.us-lcssa.us-lcssa.us, !dbg !246

for.body194.us62:                                 ; preds = %land.rhs187.us58
  %55 = bitcast i8* %pl.2.us56 to i32*, !dbg !261
  %56 = load i32, i32* %55, align 4, !dbg !261
  call void @llvm.dbg.value(metadata i32 %56, metadata !104, metadata !DIExpression()), !dbg !262
  %57 = bitcast i8* %add.ptr189.us59 to i32*, !dbg !261
  %58 = load i32, i32* %57, align 4, !dbg !261
  store i32 %58, i32* %55, align 4, !dbg !261
  store i32 %56, i32* %57, align 4, !dbg !261
  call void @llvm.dbg.value(metadata i8* %add.ptr189.us59, metadata !41, metadata !DIExpression()), !dbg !108
  br label %for.cond184.us55, !dbg !255, !llvm.loop !256

for.inc222.us-lcssa.us-lcssa.us:                  ; preds = %land.rhs187.us58, %for.cond184.us55
  br label %for.inc222.us-lcssa, !dbg !258

for.cond184:                                      ; preds = %for.cond184.preheader.split.for.cond184.preheader.split.split_crit_edge, %for.body194
  %pl.2 = phi i8* [ %add.ptr189, %for.body194 ], [ %pm.3, %for.cond184.preheader.split.for.cond184.preheader.split.split_crit_edge ], !dbg !247
  call void @llvm.dbg.value(metadata i8* %pl.2, metadata !41, metadata !DIExpression()), !dbg !108
  %cmp185 = icmp ugt i8* %pl.2, %a.addr.0.lcssa171, !dbg !248
  br i1 %cmp185, label %land.rhs187, label %for.inc222.us-lcssa.us-lcssa, !dbg !249

land.rhs187:                                      ; preds = %for.cond184
  %add.ptr189 = getelementptr inbounds i8, i8* %pl.2, i64 %idx.neg147, !dbg !250
  %call190 = tail call i32 %cmp(i8* %add.ptr189, i8* %pl.2) #3, !dbg !251
  %cmp191 = icmp sgt i32 %call190, 0, !dbg !252
  br i1 %cmp191, label %for.body194, label %for.inc222.us-lcssa.us-lcssa, !dbg !246

for.body194:                                      ; preds = %land.rhs187
  tail call fastcc void @swapfunc(i8* %pl.2, i8* %add.ptr189, i32 %conv88, i32 %cond4.lcssa175, i32 %cond17.lcssa177) #4, !dbg !263
  call void @llvm.dbg.value(metadata i8* %add.ptr189, metadata !41, metadata !DIExpression()), !dbg !108
  br label %for.cond184, !dbg !255, !llvm.loop !256

for.inc222.us-lcssa.us-lcssa:                     ; preds = %land.rhs187, %for.cond184
  br label %for.inc222.us-lcssa, !dbg !258

for.inc222.us-lcssa:                              ; preds = %for.inc222.us-lcssa.us-lcssa.us, %for.inc222.us-lcssa.us-lcssa
  br label %for.cond178, !dbg !258, !llvm.loop !259

if.end225:                                        ; preds = %for.end173
  %mul226 = mul i64 %n.addr.0, %es, !dbg !264
  %add.ptr227 = getelementptr inbounds i8, i8* %a.addr.0, i64 %mul226, !dbg !265
  call void @llvm.dbg.value(metadata i8* %add.ptr227, metadata !43, metadata !DIExpression()), !dbg !108
  %sub.ptr.lhs.cast228 = ptrtoint i8* %pa.1.lcssa.lcssa to i64, !dbg !266
  %sub.ptr.sub229 = sub i64 %sub.ptr.lhs.cast228, %sub.ptr.lhs.cast, !dbg !266
  %sub.ptr.lhs.cast230 = ptrtoint i8* %pb.1.lcssa.lcssa to i64, !dbg !266
  %sub.ptr.sub232 = sub i64 %sub.ptr.lhs.cast230, %sub.ptr.lhs.cast228, !dbg !266
  %cmp233 = icmp slt i64 %sub.ptr.sub229, %sub.ptr.sub232, !dbg !266
  %cond244 = select i1 %cmp233, i64 %sub.ptr.sub229, i64 %sub.ptr.sub232, !dbg !266
  call void @llvm.dbg.value(metadata i64 %cond244, metadata !45, metadata !DIExpression()), !dbg !108
  %cmp245 = icmp eq i64 %cond244, 0, !dbg !267
  br i1 %cmp245, label %if.end251, label %if.then247, !dbg !269

if.then247:                                       ; preds = %if.end225
  %idx.neg248 = sub i64 0, %cond244, !dbg !267
  %add.ptr249 = getelementptr inbounds i8, i8* %pb.1.lcssa.lcssa, i64 %idx.neg248, !dbg !267
  %conv250 = trunc i64 %cond244 to i32, !dbg !267
  tail call fastcc void @swapfunc(i8* %a.addr.0, i8* %add.ptr249, i32 %conv250, i32 %cond4, i32 %cond17) #4, !dbg !267
  br label %if.end251, !dbg !267

if.end251:                                        ; preds = %if.end225, %if.then247
  %sub.ptr.lhs.cast252 = ptrtoint i8* %pd.1.lcssa.lcssa to i64, !dbg !270
  %sub.ptr.rhs.cast253 = ptrtoint i8* %pc.1.lcssa.lcssa to i64, !dbg !270
  %sub.ptr.sub254 = sub i64 %sub.ptr.lhs.cast252, %sub.ptr.rhs.cast253, !dbg !270
  %sub.ptr.lhs.cast255 = ptrtoint i8* %add.ptr227 to i64, !dbg !270
  %sub.ptr.sub257 = sub i64 %sub.ptr.lhs.cast255, %sub.ptr.lhs.cast252, !dbg !270
  %sub258 = sub nsw i64 %sub.ptr.sub257, %es, !dbg !270
  %cmp259 = icmp slt i64 %sub.ptr.sub254, %sub258, !dbg !270
  %cond271 = select i1 %cmp259, i64 %sub.ptr.sub254, i64 %sub258, !dbg !270
  call void @llvm.dbg.value(metadata i64 %cond271, metadata !45, metadata !DIExpression()), !dbg !108
  %cmp272 = icmp eq i64 %cond271, 0, !dbg !271
  br i1 %cmp272, label %if.end278, label %if.then274, !dbg !273

if.then274:                                       ; preds = %if.end251
  %idx.neg275 = sub i64 0, %cond271, !dbg !271
  %add.ptr276 = getelementptr inbounds i8, i8* %add.ptr227, i64 %idx.neg275, !dbg !271
  %conv277 = trunc i64 %cond271 to i32, !dbg !271
  tail call fastcc void @swapfunc(i8* %pb.1.lcssa.lcssa, i8* %add.ptr276, i32 %conv277, i32 %cond4, i32 %cond17) #4, !dbg !271
  br label %if.end278, !dbg !271

if.end278:                                        ; preds = %if.end251, %if.then274
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub232, metadata !45, metadata !DIExpression()), !dbg !108
  %cmp282 = icmp ugt i64 %sub.ptr.sub232, %es, !dbg !274
  br i1 %cmp282, label %if.then284, label %if.end286, !dbg !276

if.then284:                                       ; preds = %if.end278
  %div285 = udiv i64 %sub.ptr.sub232, %es, !dbg !277
  tail call void @spec_qsort(i8* %a.addr.0, i64 %div285, i64 %es, i32 (i8*, i8*)* %cmp) #4, !dbg !278
  br label %if.end286, !dbg !278

if.end286:                                        ; preds = %if.then284, %if.end278
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub254, metadata !45, metadata !DIExpression()), !dbg !108
  %cmp290 = icmp ugt i64 %sub.ptr.sub254, %es, !dbg !279
  br i1 %cmp290, label %if.then292, label %cleanup.cont.loopexit4, !dbg !281

if.then292:                                       ; preds = %if.end286
  %idx.neg293 = sub i64 0, %sub.ptr.sub254, !dbg !282
  %add.ptr294 = getelementptr inbounds i8, i8* %add.ptr227, i64 %idx.neg293, !dbg !282
  call void @llvm.dbg.value(metadata i8* %add.ptr294, metadata !33, metadata !DIExpression()), !dbg !108
  %div295 = udiv i64 %sub.ptr.sub254, %es, !dbg !284
  call void @llvm.dbg.value(metadata i64 %div295, metadata !34, metadata !DIExpression()), !dbg !108
  br label %loop, !dbg !285

cleanup.cont.loopexit.us-lcssa:                   ; preds = %for.cond
  br label %cleanup.cont.loopexit, !dbg !139

cleanup.cont.loopexit:                            ; preds = %cleanup.cont.loopexit.us-lcssa.us, %cleanup.cont.loopexit.us-lcssa
  br label %cleanup.cont, !dbg !139

cleanup.cont.loopexit3.us-lcssa:                  ; preds = %for.cond178
  br label %cleanup.cont.loopexit3, !dbg !139

cleanup.cont.loopexit3:                           ; preds = %cleanup.cont.loopexit3.us-lcssa.us, %cleanup.cont.loopexit3.us-lcssa
  br label %cleanup.cont, !dbg !139

cleanup.cont.loopexit4:                           ; preds = %if.end286
  br label %cleanup.cont, !dbg !139

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit4, %cleanup.cont.loopexit3, %cleanup.cont.loopexit
  ret void, !dbg !139
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @swapfunc(i8* %a, i8* %b, i32 %n, i32 %swaptype_long, i32 %swaptype_int) unnamed_addr #2 !dbg !286 {
entry:
  call void @llvm.dbg.value(metadata i8* %a, metadata !290, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i8* %b, metadata !291, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i32 %n, metadata !292, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i32 %swaptype_long, metadata !293, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i32 %swaptype_int, metadata !294, metadata !DIExpression()), !dbg !315
  %cmp = icmp slt i32 %swaptype_long, 2, !dbg !316
  br i1 %cmp, label %if.then, label %if.else, !dbg !317

if.then:                                          ; preds = %entry
  %conv = sext i32 %n to i64, !dbg !318
  %div = lshr i64 %conv, 3, !dbg !318
  call void @llvm.dbg.value(metadata i64 %div, metadata !295, metadata !DIExpression()), !dbg !319
  %0 = bitcast i8* %a to i64*, !dbg !318
  call void @llvm.dbg.value(metadata i64* %0, metadata !298, metadata !DIExpression()), !dbg !319
  %1 = bitcast i8* %b to i64*, !dbg !318
  call void @llvm.dbg.value(metadata i64* %1, metadata !299, metadata !DIExpression()), !dbg !319
  br label %do.body, !dbg !318

do.body:                                          ; preds = %do.body, %if.then
  %pj.0 = phi i64* [ %1, %if.then ], [ %incdec.ptr1, %do.body ], !dbg !319
  %pi.0 = phi i64* [ %0, %if.then ], [ %incdec.ptr, %do.body ], !dbg !319
  %i.0 = phi i64 [ %div, %if.then ], [ %dec, %do.body ], !dbg !318
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !295, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i64* %pi.0, metadata !298, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i64* %pj.0, metadata !299, metadata !DIExpression()), !dbg !319
  %2 = load i64, i64* %pi.0, align 8, !dbg !320
  call void @llvm.dbg.value(metadata i64 %2, metadata !300, metadata !DIExpression()), !dbg !321
  %3 = load i64, i64* %pj.0, align 8, !dbg !320
  %incdec.ptr = getelementptr inbounds i64, i64* %pi.0, i64 1, !dbg !320
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !298, metadata !DIExpression()), !dbg !319
  store i64 %3, i64* %pi.0, align 8, !dbg !320
  %incdec.ptr1 = getelementptr inbounds i64, i64* %pj.0, i64 1, !dbg !320
  call void @llvm.dbg.value(metadata i64* %incdec.ptr1, metadata !299, metadata !DIExpression()), !dbg !319
  store i64 %2, i64* %pj.0, align 8, !dbg !320
  %dec = add nsw i64 %i.0, -1, !dbg !318
  call void @llvm.dbg.value(metadata i64 %dec, metadata !295, metadata !DIExpression()), !dbg !319
  %cmp2 = icmp sgt i64 %dec, 0, !dbg !318
  br i1 %cmp2, label %do.body, label %if.end36.loopexit, !dbg !320, !llvm.loop !322

if.else:                                          ; preds = %entry
  %cmp4 = icmp slt i32 %swaptype_int, 2, !dbg !323
  %conv8 = sext i32 %n to i64, !dbg !324
  br i1 %cmp4, label %if.then6, label %if.else21, !dbg !325

if.then6:                                         ; preds = %if.else
  %div9 = lshr i64 %conv8, 2, !dbg !326
  call void @llvm.dbg.value(metadata i64 %div9, metadata !302, metadata !DIExpression()), !dbg !327
  %4 = bitcast i8* %a to i32*, !dbg !326
  call void @llvm.dbg.value(metadata i32* %4, metadata !305, metadata !DIExpression()), !dbg !327
  %5 = bitcast i8* %b to i32*, !dbg !326
  call void @llvm.dbg.value(metadata i32* %5, metadata !306, metadata !DIExpression()), !dbg !327
  br label %do.body12, !dbg !326

do.body12:                                        ; preds = %do.body12, %if.then6
  %i7.0 = phi i64 [ %div9, %if.then6 ], [ %dec17, %do.body12 ], !dbg !326
  %pi10.0 = phi i32* [ %4, %if.then6 ], [ %incdec.ptr14, %do.body12 ], !dbg !327
  %pj11.0 = phi i32* [ %5, %if.then6 ], [ %incdec.ptr15, %do.body12 ], !dbg !327
  call void @llvm.dbg.value(metadata i32* %pj11.0, metadata !306, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i32* %pi10.0, metadata !305, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 %i7.0, metadata !302, metadata !DIExpression()), !dbg !327
  %6 = load i32, i32* %pi10.0, align 4, !dbg !328
  call void @llvm.dbg.value(metadata i32 %6, metadata !307, metadata !DIExpression()), !dbg !329
  %7 = load i32, i32* %pj11.0, align 4, !dbg !328
  %incdec.ptr14 = getelementptr inbounds i32, i32* %pi10.0, i64 1, !dbg !328
  call void @llvm.dbg.value(metadata i32* %incdec.ptr14, metadata !305, metadata !DIExpression()), !dbg !327
  store i32 %7, i32* %pi10.0, align 4, !dbg !328
  %incdec.ptr15 = getelementptr inbounds i32, i32* %pj11.0, i64 1, !dbg !328
  call void @llvm.dbg.value(metadata i32* %incdec.ptr15, metadata !306, metadata !DIExpression()), !dbg !327
  store i32 %6, i32* %pj11.0, align 4, !dbg !328
  %dec17 = add nsw i64 %i7.0, -1, !dbg !326
  call void @llvm.dbg.value(metadata i64 %dec17, metadata !302, metadata !DIExpression()), !dbg !327
  %cmp18 = icmp sgt i64 %dec17, 0, !dbg !326
  br i1 %cmp18, label %do.body12, label %if.end36.loopexit1, !dbg !328, !llvm.loop !330

if.else21:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i64 %conv8, metadata !309, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i8* %a, metadata !311, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i8* %b, metadata !312, metadata !DIExpression()), !dbg !331
  br label %do.body27, !dbg !332

do.body27:                                        ; preds = %do.body27, %if.else21
  %i22.0 = phi i64 [ %conv8, %if.else21 ], [ %dec32, %do.body27 ], !dbg !332
  %pi25.0 = phi i8* [ %a, %if.else21 ], [ %incdec.ptr29, %do.body27 ], !dbg !331
  %pj26.0 = phi i8* [ %b, %if.else21 ], [ %incdec.ptr30, %do.body27 ], !dbg !331
  call void @llvm.dbg.value(metadata i8* %pj26.0, metadata !312, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i8* %pi25.0, metadata !311, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata i64 %i22.0, metadata !309, metadata !DIExpression()), !dbg !331
  %8 = load i8, i8* %pi25.0, align 1, !dbg !333
  call void @llvm.dbg.value(metadata i8 %8, metadata !313, metadata !DIExpression()), !dbg !334
  %9 = load i8, i8* %pj26.0, align 1, !dbg !333
  %incdec.ptr29 = getelementptr inbounds i8, i8* %pi25.0, i64 1, !dbg !333
  call void @llvm.dbg.value(metadata i8* %incdec.ptr29, metadata !311, metadata !DIExpression()), !dbg !331
  store i8 %9, i8* %pi25.0, align 1, !dbg !333
  %incdec.ptr30 = getelementptr inbounds i8, i8* %pj26.0, i64 1, !dbg !333
  call void @llvm.dbg.value(metadata i8* %incdec.ptr30, metadata !312, metadata !DIExpression()), !dbg !331
  store i8 %8, i8* %pj26.0, align 1, !dbg !333
  %dec32 = add nsw i64 %i22.0, -1, !dbg !332
  call void @llvm.dbg.value(metadata i64 %dec32, metadata !309, metadata !DIExpression()), !dbg !331
  %cmp33 = icmp sgt i64 %dec32, 0, !dbg !332
  br i1 %cmp33, label %do.body27, label %if.end36.loopexit2, !dbg !333, !llvm.loop !335

if.end36.loopexit:                                ; preds = %do.body
  br label %if.end36, !dbg !336

if.end36.loopexit1:                               ; preds = %do.body12
  br label %if.end36, !dbg !336

if.end36.loopexit2:                               ; preds = %do.body27
  br label %if.end36, !dbg !336

if.end36:                                         ; preds = %if.end36.loopexit2, %if.end36.loopexit1, %if.end36.loopexit
  ret void, !dbg !336
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @med3(i8* %a, i8* %b, i8* %c, i32 (i8*, i8*)* %cmp) unnamed_addr #2 !dbg !337 {
entry:
  call void @llvm.dbg.value(metadata i8* %a, metadata !341, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i8* %b, metadata !342, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i8* %c, metadata !343, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %cmp, metadata !344, metadata !DIExpression()), !dbg !345
  %call = tail call i32 %cmp(i8* %a, i8* %b) #3, !dbg !346
  %cmp1 = icmp slt i32 %call, 0, !dbg !347
  %call2 = tail call i32 %cmp(i8* %b, i8* %c) #3, !dbg !345
  br i1 %cmp1, label %cond.true, label %cond.false11, !dbg !346

cond.true:                                        ; preds = %entry
  %cmp3 = icmp slt i32 %call2, 0, !dbg !348
  br i1 %cmp3, label %cond.end24, label %cond.false, !dbg !349

cond.false:                                       ; preds = %cond.true
  %call5 = tail call i32 %cmp(i8* %a, i8* %c) #3, !dbg !350
  %cmp6 = icmp slt i32 %call5, 0, !dbg !351
  %c.a = select i1 %cmp6, i8* %c, i8* %a, !dbg !350
  br label %cond.end24, !dbg !349

cond.false11:                                     ; preds = %entry
  %cmp13 = icmp sgt i32 %call2, 0, !dbg !352
  br i1 %cmp13, label %cond.end24, label %cond.false15, !dbg !353

cond.false15:                                     ; preds = %cond.false11
  %call16 = tail call i32 %cmp(i8* %a, i8* %c) #3, !dbg !354
  %cmp17 = icmp slt i32 %call16, 0, !dbg !355
  %a.c = select i1 %cmp17, i8* %a, i8* %c, !dbg !354
  br label %cond.end24, !dbg !353

cond.end24:                                       ; preds = %cond.false15, %cond.false11, %cond.false, %cond.true
  %cond25 = phi i8* [ %c.a, %cond.false ], [ %b, %cond.true ], [ %a.c, %cond.false15 ], [ %b, %cond.false11 ], !dbg !346
  ret i8* %cond25, !dbg !356
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind }
attributes #4 = { nobuiltin }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "./spec_qsort/spec_qsort.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !6, !8, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !13, line: 44, baseType: !7)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!18 = distinct !DISubprogram(name: "spec_qsort", scope: !19, file: !19, line: 115, type: !20, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !32)
!19 = !DIFile(filename: "spec_qsort/spec_qsort.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !23, !23, !26}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 46, baseType: !25)
!24 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_t", file: !19, line: 56, baseType: !28)
!28 = !DISubroutineType(types: !29)
!29 = !{!9, !30, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !59, !62, !65, !68, !77, !80, !86, !89, !92, !95, !104, !107}
!33 = !DILocalVariable(name: "a", arg: 1, scope: !18, file: !19, line: 115, type: !22)
!34 = !DILocalVariable(name: "n", arg: 2, scope: !18, file: !19, line: 115, type: !23)
!35 = !DILocalVariable(name: "es", arg: 3, scope: !18, file: !19, line: 115, type: !23)
!36 = !DILocalVariable(name: "cmp", arg: 4, scope: !18, file: !19, line: 115, type: !26)
!37 = !DILocalVariable(name: "pa", scope: !18, file: !19, line: 117, type: !4)
!38 = !DILocalVariable(name: "pb", scope: !18, file: !19, line: 117, type: !4)
!39 = !DILocalVariable(name: "pc", scope: !18, file: !19, line: 117, type: !4)
!40 = !DILocalVariable(name: "pd", scope: !18, file: !19, line: 117, type: !4)
!41 = !DILocalVariable(name: "pl", scope: !18, file: !19, line: 117, type: !4)
!42 = !DILocalVariable(name: "pm", scope: !18, file: !19, line: 117, type: !4)
!43 = !DILocalVariable(name: "pn", scope: !18, file: !19, line: 117, type: !4)
!44 = !DILocalVariable(name: "d", scope: !18, file: !19, line: 118, type: !23)
!45 = !DILocalVariable(name: "r", scope: !18, file: !19, line: 118, type: !23)
!46 = !DILocalVariable(name: "cmp_result", scope: !18, file: !19, line: 119, type: !9)
!47 = !DILocalVariable(name: "swaptype_long", scope: !18, file: !19, line: 120, type: !9)
!48 = !DILocalVariable(name: "swaptype_int", scope: !18, file: !19, line: 120, type: !9)
!49 = !DILocalVariable(name: "swap_cnt", scope: !18, file: !19, line: 120, type: !9)
!50 = !DILocalVariable(name: "t", scope: !51, file: !19, line: 130, type: !7)
!51 = distinct !DILexicalBlock(scope: !52, file: !19, line: 130, column: 33)
!52 = distinct !DILexicalBlock(scope: !53, file: !19, line: 130, column: 33)
!53 = distinct !DILexicalBlock(scope: !54, file: !19, line: 127, column: 25)
!54 = distinct !DILexicalBlock(scope: !55, file: !19, line: 127, column: 25)
!55 = distinct !DILexicalBlock(scope: !56, file: !19, line: 126, column: 17)
!56 = distinct !DILexicalBlock(scope: !57, file: !19, line: 126, column: 17)
!57 = distinct !DILexicalBlock(scope: !58, file: !19, line: 125, column: 20)
!58 = distinct !DILexicalBlock(scope: !18, file: !19, line: 125, column: 13)
!59 = !DILocalVariable(name: "t", scope: !60, file: !19, line: 130, type: !9)
!60 = distinct !DILexicalBlock(scope: !61, file: !19, line: 130, column: 33)
!61 = distinct !DILexicalBlock(scope: !52, file: !19, line: 130, column: 33)
!62 = !DILocalVariable(name: "t", scope: !63, file: !19, line: 145, type: !7)
!63 = distinct !DILexicalBlock(scope: !64, file: !19, line: 145, column: 9)
!64 = distinct !DILexicalBlock(scope: !18, file: !19, line: 145, column: 9)
!65 = !DILocalVariable(name: "t", scope: !66, file: !19, line: 145, type: !9)
!66 = distinct !DILexicalBlock(scope: !67, file: !19, line: 145, column: 9)
!67 = distinct !DILexicalBlock(scope: !64, file: !19, line: 145, column: 9)
!68 = !DILocalVariable(name: "t", scope: !69, file: !19, line: 153, type: !7)
!69 = distinct !DILexicalBlock(scope: !70, file: !19, line: 153, column: 33)
!70 = distinct !DILexicalBlock(scope: !71, file: !19, line: 153, column: 33)
!71 = distinct !DILexicalBlock(scope: !72, file: !19, line: 151, column: 46)
!72 = distinct !DILexicalBlock(scope: !73, file: !19, line: 151, column: 29)
!73 = distinct !DILexicalBlock(scope: !74, file: !19, line: 150, column: 68)
!74 = distinct !DILexicalBlock(scope: !75, file: !19, line: 149, column: 18)
!75 = distinct !DILexicalBlock(scope: !76, file: !19, line: 149, column: 9)
!76 = distinct !DILexicalBlock(scope: !18, file: !19, line: 149, column: 9)
!77 = !DILocalVariable(name: "t", scope: !78, file: !19, line: 153, type: !9)
!78 = distinct !DILexicalBlock(scope: !79, file: !19, line: 153, column: 33)
!79 = distinct !DILexicalBlock(scope: !70, file: !19, line: 153, column: 33)
!80 = !DILocalVariable(name: "t", scope: !81, file: !19, line: 161, type: !7)
!81 = distinct !DILexicalBlock(scope: !82, file: !19, line: 161, column: 33)
!82 = distinct !DILexicalBlock(scope: !83, file: !19, line: 161, column: 33)
!83 = distinct !DILexicalBlock(scope: !84, file: !19, line: 159, column: 46)
!84 = distinct !DILexicalBlock(scope: !85, file: !19, line: 159, column: 29)
!85 = distinct !DILexicalBlock(scope: !74, file: !19, line: 158, column: 68)
!86 = !DILocalVariable(name: "t", scope: !87, file: !19, line: 161, type: !9)
!87 = distinct !DILexicalBlock(scope: !88, file: !19, line: 161, column: 33)
!88 = distinct !DILexicalBlock(scope: !82, file: !19, line: 161, column: 33)
!89 = !DILocalVariable(name: "t", scope: !90, file: !19, line: 168, type: !7)
!90 = distinct !DILexicalBlock(scope: !91, file: !19, line: 168, column: 17)
!91 = distinct !DILexicalBlock(scope: !74, file: !19, line: 168, column: 17)
!92 = !DILocalVariable(name: "t", scope: !93, file: !19, line: 168, type: !9)
!93 = distinct !DILexicalBlock(scope: !94, file: !19, line: 168, column: 17)
!94 = distinct !DILexicalBlock(scope: !91, file: !19, line: 168, column: 17)
!95 = !DILocalVariable(name: "t", scope: !96, file: !19, line: 178, type: !7)
!96 = distinct !DILexicalBlock(scope: !97, file: !19, line: 178, column: 33)
!97 = distinct !DILexicalBlock(scope: !98, file: !19, line: 178, column: 33)
!98 = distinct !DILexicalBlock(scope: !99, file: !19, line: 175, column: 25)
!99 = distinct !DILexicalBlock(scope: !100, file: !19, line: 175, column: 25)
!100 = distinct !DILexicalBlock(scope: !101, file: !19, line: 174, column: 17)
!101 = distinct !DILexicalBlock(scope: !102, file: !19, line: 174, column: 17)
!102 = distinct !DILexicalBlock(scope: !103, file: !19, line: 173, column: 28)
!103 = distinct !DILexicalBlock(scope: !18, file: !19, line: 173, column: 13)
!104 = !DILocalVariable(name: "t", scope: !105, file: !19, line: 178, type: !9)
!105 = distinct !DILexicalBlock(scope: !106, file: !19, line: 178, column: 33)
!106 = distinct !DILexicalBlock(scope: !97, file: !19, line: 178, column: 33)
!107 = !DILabel(scope: !18, name: "loop", file: !19, line: 122)
!108 = !DILocation(line: 0, scope: !18)
!109 = !DILocation(line: 0, scope: !67)
!110 = !DILocation(line: 0, scope: !83)
!111 = !DILocation(line: 120, column: 9, scope: !18)
!112 = !DILocation(line: 122, column: 1, scope: !18)
!113 = !DILocation(line: 122, column: 9, scope: !18)
!114 = !DILocation(line: 123, column: 9, scope: !18)
!115 = !DILocation(line: 125, column: 15, scope: !58)
!116 = !DILocation(line: 125, column: 13, scope: !18)
!117 = !DILocation(line: 0, scope: !55)
!118 = !DILocation(line: 0, scope: !52)
!119 = !DILocation(line: 0, scope: !61)
!120 = !DILocation(line: 126, column: 22, scope: !56)
!121 = !DILocation(line: 0, scope: !56)
!122 = !DILocation(line: 126, column: 46, scope: !55)
!123 = !DILocation(line: 126, column: 17, scope: !56)
!124 = !DILocation(line: 127, column: 25, scope: !54)
!125 = !DILocation(line: 0, scope: !54)
!126 = !DILocation(line: 128, column: 33, scope: !53)
!127 = !DILocation(line: 128, column: 45, scope: !53)
!128 = !DILocation(line: 128, column: 55, scope: !53)
!129 = !DILocation(line: 128, column: 48, scope: !53)
!130 = !DILocation(line: 128, column: 65, scope: !53)
!131 = !DILocation(line: 130, column: 33, scope: !51)
!132 = !DILocation(line: 0, scope: !51)
!133 = !DILocation(line: 127, column: 25, scope: !53)
!134 = distinct !{!134, !124, !135}
!135 = !DILocation(line: 130, column: 33, scope: !54)
!136 = !DILocation(line: 126, column: 17, scope: !55)
!137 = distinct !{!137, !123, !138}
!138 = !DILocation(line: 130, column: 33, scope: !56)
!139 = !DILocation(line: 196, column: 1, scope: !18)
!140 = !DILocation(line: 130, column: 33, scope: !60)
!141 = !DILocation(line: 0, scope: !60)
!142 = !DILocation(line: 130, column: 33, scope: !61)
!143 = !DILocation(line: 133, column: 29, scope: !18)
!144 = !DILocation(line: 133, column: 34, scope: !18)
!145 = !DILocation(line: 133, column: 24, scope: !18)
!146 = !DILocation(line: 134, column: 15, scope: !147)
!147 = distinct !DILexicalBlock(scope: !18, file: !19, line: 134, column: 13)
!148 = !DILocation(line: 134, column: 13, scope: !18)
!149 = !DILocation(line: 136, column: 37, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !19, line: 134, column: 20)
!151 = !DILocation(line: 136, column: 42, scope: !150)
!152 = !DILocation(line: 136, column: 32, scope: !150)
!153 = !DILocation(line: 137, column: 23, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !19, line: 137, column: 21)
!155 = !DILocation(line: 137, column: 21, scope: !150)
!156 = !DILocation(line: 138, column: 32, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !19, line: 137, column: 29)
!158 = !DILocation(line: 138, column: 37, scope: !157)
!159 = !DILocation(line: 139, column: 42, scope: !157)
!160 = !DILocation(line: 139, column: 54, scope: !157)
!161 = !DILocation(line: 139, column: 50, scope: !157)
!162 = !DILocation(line: 139, column: 30, scope: !157)
!163 = !DILocation(line: 140, column: 38, scope: !157)
!164 = !DILocation(line: 140, column: 50, scope: !157)
!165 = !DILocation(line: 140, column: 30, scope: !157)
!166 = !DILocation(line: 141, column: 38, scope: !157)
!167 = !DILocation(line: 141, column: 50, scope: !157)
!168 = !DILocation(line: 141, column: 30, scope: !157)
!169 = !DILocation(line: 142, column: 17, scope: !157)
!170 = !DILocation(line: 0, scope: !150)
!171 = !DILocation(line: 143, column: 22, scope: !150)
!172 = !DILocation(line: 144, column: 9, scope: !150)
!173 = !DILocation(line: 145, column: 9, scope: !64)
!174 = !DILocation(line: 145, column: 9, scope: !18)
!175 = !DILocation(line: 145, column: 9, scope: !63)
!176 = !DILocation(line: 0, scope: !63)
!177 = !DILocation(line: 145, column: 9, scope: !67)
!178 = !DILocation(line: 145, column: 9, scope: !66)
!179 = !DILocation(line: 0, scope: !66)
!180 = !DILocation(line: 146, column: 29, scope: !18)
!181 = !DILocation(line: 148, column: 34, scope: !18)
!182 = !DILocation(line: 148, column: 39, scope: !18)
!183 = !DILocation(line: 148, column: 29, scope: !18)
!184 = !DILocation(line: 0, scope: !79)
!185 = !DILocation(line: 149, column: 9, scope: !18)
!186 = !DILocation(line: 148, column: 17, scope: !18)
!187 = !DILocation(line: 146, column: 12, scope: !18)
!188 = !DILocation(line: 150, column: 17, scope: !74)
!189 = !DILocation(line: 150, column: 27, scope: !74)
!190 = !DILocation(line: 150, column: 33, scope: !74)
!191 = !DILocation(line: 150, column: 50, scope: !74)
!192 = !DILocation(line: 150, column: 62, scope: !74)
!193 = !DILocation(line: 0, scope: !74)
!194 = !DILocation(line: 151, column: 40, scope: !72)
!195 = !DILocation(line: 151, column: 29, scope: !73)
!196 = !DILocation(line: 153, column: 33, scope: !69)
!197 = !DILocation(line: 0, scope: !69)
!198 = !DILocation(line: 154, column: 36, scope: !71)
!199 = !DILocation(line: 155, column: 25, scope: !71)
!200 = !DILocation(line: 156, column: 28, scope: !73)
!201 = distinct !{!201, !188, !202}
!202 = !DILocation(line: 157, column: 17, scope: !74)
!203 = !DILocation(line: 158, column: 17, scope: !74)
!204 = !DILocation(line: 153, column: 33, scope: !78)
!205 = !DILocation(line: 0, scope: !78)
!206 = !DILocation(line: 158, column: 27, scope: !74)
!207 = !DILocation(line: 158, column: 33, scope: !74)
!208 = !DILocation(line: 158, column: 50, scope: !74)
!209 = !DILocation(line: 158, column: 62, scope: !74)
!210 = !DILocation(line: 159, column: 40, scope: !84)
!211 = !DILocation(line: 159, column: 29, scope: !85)
!212 = !DILocation(line: 161, column: 33, scope: !81)
!213 = !DILocation(line: 0, scope: !81)
!214 = !DILocation(line: 162, column: 36, scope: !83)
!215 = !DILocation(line: 163, column: 25, scope: !83)
!216 = !DILocation(line: 164, column: 28, scope: !85)
!217 = distinct !{!217, !203, !218}
!218 = !DILocation(line: 165, column: 17, scope: !74)
!219 = !DILocation(line: 166, column: 24, scope: !220)
!220 = distinct !DILexicalBlock(scope: !74, file: !19, line: 166, column: 21)
!221 = !DILocation(line: 161, column: 33, scope: !87)
!222 = !DILocation(line: 0, scope: !87)
!223 = !DILocation(line: 153, column: 33, scope: !79)
!224 = !DILocation(line: 161, column: 33, scope: !88)
!225 = !DILocation(line: 166, column: 21, scope: !74)
!226 = !DILocation(line: 168, column: 17, scope: !74)
!227 = !DILocation(line: 168, column: 17, scope: !90)
!228 = !DILocation(line: 0, scope: !90)
!229 = !DILocation(line: 168, column: 17, scope: !91)
!230 = !DILocation(line: 168, column: 17, scope: !93)
!231 = !DILocation(line: 0, scope: !93)
!232 = !DILocation(line: 168, column: 17, scope: !94)
!233 = !DILocation(line: 170, column: 20, scope: !74)
!234 = !DILocation(line: 171, column: 20, scope: !74)
!235 = !DILocation(line: 149, column: 9, scope: !75)
!236 = distinct !{!236, !237, !238}
!237 = !DILocation(line: 149, column: 9, scope: !76)
!238 = !DILocation(line: 172, column: 9, scope: !76)
!239 = !DILocation(line: 173, column: 22, scope: !103)
!240 = !DILocation(line: 173, column: 13, scope: !18)
!241 = !DILocation(line: 0, scope: !100)
!242 = !DILocation(line: 174, column: 22, scope: !101)
!243 = !DILocation(line: 0, scope: !101)
!244 = !DILocation(line: 174, column: 46, scope: !100)
!245 = !DILocation(line: 174, column: 17, scope: !101)
!246 = !DILocation(line: 175, column: 25, scope: !99)
!247 = !DILocation(line: 0, scope: !99)
!248 = !DILocation(line: 176, column: 33, scope: !98)
!249 = !DILocation(line: 176, column: 45, scope: !98)
!250 = !DILocation(line: 176, column: 55, scope: !98)
!251 = !DILocation(line: 176, column: 48, scope: !98)
!252 = !DILocation(line: 176, column: 65, scope: !98)
!253 = !DILocation(line: 178, column: 33, scope: !96)
!254 = !DILocation(line: 0, scope: !96)
!255 = !DILocation(line: 175, column: 25, scope: !98)
!256 = distinct !{!256, !246, !257}
!257 = !DILocation(line: 178, column: 33, scope: !99)
!258 = !DILocation(line: 174, column: 17, scope: !100)
!259 = distinct !{!259, !245, !260}
!260 = !DILocation(line: 178, column: 33, scope: !101)
!261 = !DILocation(line: 178, column: 33, scope: !105)
!262 = !DILocation(line: 0, scope: !105)
!263 = !DILocation(line: 178, column: 33, scope: !106)
!264 = !DILocation(line: 182, column: 28, scope: !18)
!265 = !DILocation(line: 182, column: 24, scope: !18)
!266 = !DILocation(line: 183, column: 13, scope: !18)
!267 = !DILocation(line: 184, column: 9, scope: !268)
!268 = distinct !DILexicalBlock(scope: !18, file: !19, line: 184, column: 9)
!269 = !DILocation(line: 184, column: 9, scope: !18)
!270 = !DILocation(line: 185, column: 13, scope: !18)
!271 = !DILocation(line: 186, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !18, file: !19, line: 186, column: 9)
!273 = !DILocation(line: 186, column: 9, scope: !18)
!274 = !DILocation(line: 187, column: 27, scope: !275)
!275 = distinct !DILexicalBlock(scope: !18, file: !19, line: 187, column: 13)
!276 = !DILocation(line: 187, column: 13, scope: !18)
!277 = !DILocation(line: 188, column: 33, scope: !275)
!278 = !DILocation(line: 188, column: 17, scope: !275)
!279 = !DILocation(line: 189, column: 27, scope: !280)
!280 = distinct !DILexicalBlock(scope: !18, file: !19, line: 189, column: 13)
!281 = !DILocation(line: 189, column: 13, scope: !18)
!282 = !DILocation(line: 191, column: 24, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !19, line: 189, column: 33)
!284 = !DILocation(line: 192, column: 23, scope: !283)
!285 = !DILocation(line: 193, column: 17, scope: !283)
!286 = distinct !DISubprogram(name: "swapfunc", scope: !19, file: !19, line: 81, type: !287, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !4, !4, !9, !9, !9}
!289 = !{!290, !291, !292, !293, !294, !295, !298, !299, !300, !302, !305, !306, !307, !309, !311, !312, !313}
!290 = !DILocalVariable(name: "a", arg: 1, scope: !286, file: !19, line: 81, type: !4)
!291 = !DILocalVariable(name: "b", arg: 2, scope: !286, file: !19, line: 81, type: !4)
!292 = !DILocalVariable(name: "n", arg: 3, scope: !286, file: !19, line: 81, type: !9)
!293 = !DILocalVariable(name: "swaptype_long", arg: 4, scope: !286, file: !19, line: 81, type: !9)
!294 = !DILocalVariable(name: "swaptype_int", arg: 5, scope: !286, file: !19, line: 81, type: !9)
!295 = !DILocalVariable(name: "i", scope: !296, file: !19, line: 84, type: !7)
!296 = distinct !DILexicalBlock(scope: !297, file: !19, line: 84, column: 17)
!297 = distinct !DILexicalBlock(scope: !286, file: !19, line: 83, column: 13)
!298 = !DILocalVariable(name: "pi", scope: !296, file: !19, line: 84, type: !6)
!299 = !DILocalVariable(name: "pj", scope: !296, file: !19, line: 84, type: !6)
!300 = !DILocalVariable(name: "t", scope: !301, file: !19, line: 84, type: !7)
!301 = distinct !DILexicalBlock(scope: !296, file: !19, line: 84, column: 17)
!302 = !DILocalVariable(name: "i", scope: !303, file: !19, line: 86, type: !7)
!303 = distinct !DILexicalBlock(scope: !304, file: !19, line: 86, column: 17)
!304 = distinct !DILexicalBlock(scope: !297, file: !19, line: 85, column: 18)
!305 = !DILocalVariable(name: "pi", scope: !303, file: !19, line: 86, type: !8)
!306 = !DILocalVariable(name: "pj", scope: !303, file: !19, line: 86, type: !8)
!307 = !DILocalVariable(name: "t", scope: !308, file: !19, line: 86, type: !9)
!308 = distinct !DILexicalBlock(scope: !303, file: !19, line: 86, column: 17)
!309 = !DILocalVariable(name: "i", scope: !310, file: !19, line: 88, type: !7)
!310 = distinct !DILexicalBlock(scope: !304, file: !19, line: 88, column: 17)
!311 = !DILocalVariable(name: "pi", scope: !310, file: !19, line: 88, type: !4)
!312 = !DILocalVariable(name: "pj", scope: !310, file: !19, line: 88, type: !4)
!313 = !DILocalVariable(name: "t", scope: !314, file: !19, line: 88, type: !5)
!314 = distinct !DILexicalBlock(scope: !310, file: !19, line: 88, column: 17)
!315 = !DILocation(line: 0, scope: !286)
!316 = !DILocation(line: 83, column: 27, scope: !297)
!317 = !DILocation(line: 83, column: 13, scope: !286)
!318 = !DILocation(line: 84, column: 17, scope: !296)
!319 = !DILocation(line: 0, scope: !296)
!320 = !DILocation(line: 84, column: 17, scope: !301)
!321 = !DILocation(line: 0, scope: !301)
!322 = distinct !{!322, !318, !318}
!323 = !DILocation(line: 85, column: 31, scope: !304)
!324 = !DILocation(line: 0, scope: !304)
!325 = !DILocation(line: 85, column: 18, scope: !297)
!326 = !DILocation(line: 86, column: 17, scope: !303)
!327 = !DILocation(line: 0, scope: !303)
!328 = !DILocation(line: 86, column: 17, scope: !308)
!329 = !DILocation(line: 0, scope: !308)
!330 = distinct !{!330, !326, !326}
!331 = !DILocation(line: 0, scope: !310)
!332 = !DILocation(line: 88, column: 17, scope: !310)
!333 = !DILocation(line: 88, column: 17, scope: !314)
!334 = !DILocation(line: 0, scope: !314)
!335 = distinct !{!335, !332, !332}
!336 = !DILocation(line: 89, column: 1, scope: !286)
!337 = distinct !DISubprogram(name: "med3", scope: !19, file: !19, line: 107, type: !338, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{!4, !4, !4, !4, !26}
!340 = !{!341, !342, !343, !344}
!341 = !DILocalVariable(name: "a", arg: 1, scope: !337, file: !19, line: 107, type: !4)
!342 = !DILocalVariable(name: "b", arg: 2, scope: !337, file: !19, line: 107, type: !4)
!343 = !DILocalVariable(name: "c", arg: 3, scope: !337, file: !19, line: 107, type: !4)
!344 = !DILocalVariable(name: "cmp", arg: 4, scope: !337, file: !19, line: 107, type: !26)
!345 = !DILocation(line: 0, scope: !337)
!346 = !DILocation(line: 109, column: 16, scope: !337)
!347 = !DILocation(line: 109, column: 26, scope: !337)
!348 = !DILocation(line: 110, column: 27, scope: !337)
!349 = !DILocation(line: 110, column: 17, scope: !337)
!350 = !DILocation(line: 110, column: 38, scope: !337)
!351 = !DILocation(line: 110, column: 48, scope: !337)
!352 = !DILocation(line: 111, column: 27, scope: !337)
!353 = !DILocation(line: 111, column: 17, scope: !337)
!354 = !DILocation(line: 111, column: 38, scope: !337)
!355 = !DILocation(line: 111, column: 48, scope: !337)
!356 = !DILocation(line: 109, column: 9, scope: !337)
