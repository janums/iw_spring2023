; ModuleID = 'decimal32.bc'
source_filename = "decimal32.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decimal32 = type { [4 x i8] }
%struct.decNumber = type { i32, i32, i8, [3 x i16] }
%struct.decContext = type { i32, i32, i32, i32, i32, i32, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }

@BIN2DPD = external dso_local local_unnamed_addr constant [1000 x i16], align 16
@COMBMSD = external dso_local local_unnamed_addr constant [32 x i32], align 16
@COMBEXP = external dso_local local_unnamed_addr constant [32 x i32], align 16
@.str = private unnamed_addr constant [4 x i8] c"Inf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"inity\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@BIN2CHAR = external dso_local constant [4001 x i8], align 16
@DPD2BIN = external dso_local local_unnamed_addr constant [1024 x i16], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !35 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !40, metadata !DIExpression()), !dbg !41
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !42
  %conv = trunc i64 %call to i32, !dbg !43
  ret i32 %conv, !dbg !44
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !45 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !50, metadata !DIExpression()), !dbg !51
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !52
  ret i64 %call, !dbg !53
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !54 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !59, metadata !DIExpression()), !dbg !60
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #7, !dbg !61
  ret i64 %call, !dbg !62
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !63 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !77, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i8* %__base, metadata !78, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !79, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 %__size, metadata !80, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !81, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 0, metadata !82, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !83, metadata !DIExpression()), !dbg !87
  br label %while.cond, !dbg !88

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !89
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !87
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !83, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !82, metadata !DIExpression()), !dbg !87
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !90
  br i1 %cmp, label %while.body, label %cleanup, !dbg !88

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !91
  %div = lshr i64 %add, 1, !dbg !93
  call void @llvm.dbg.value(metadata i64 %div, metadata !84, metadata !DIExpression()), !dbg !87
  %mul = mul i64 %div, %__size, !dbg !94
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !95
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !85, metadata !DIExpression()), !dbg !87
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #7, !dbg !96
  call void @llvm.dbg.value(metadata i32 %call, metadata !86, metadata !DIExpression()), !dbg !87
  %cmp1 = icmp slt i32 %call, 0, !dbg !97
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !99

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !100
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !102

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !103
  call void @llvm.dbg.value(metadata i64 %add4, metadata !82, metadata !DIExpression()), !dbg !87
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !87
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !87
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !83, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !82, metadata !DIExpression()), !dbg !87
  br label %while.cond, !dbg !88, !llvm.loop !104

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !87
  ret i8* %retval.0, !dbg !106
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !107 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !113, metadata !DIExpression()), !dbg !114
  %call = tail call double @strtod(i8* %__nptr, i8** null) #7, !dbg !115
  ret double %call, !dbg !116
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal32* @__dpd32FromNumber(%struct.decimal32* %d32, %struct.decNumber* %dn, %struct.decContext* %set) local_unnamed_addr #3 !dbg !117 {
entry:
  %dw = alloca %struct.decNumber, align 4
  %dc = alloca %struct.decContext, align 4
  %uiwork = alloca i32, align 4
  %targ = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.decimal32* %d32, metadata !160, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !161, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !162, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i32 0, metadata !163, metadata !DIExpression()), !dbg !177
  %0 = bitcast %struct.decNumber* %dw to i8*, !dbg !178
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !178
  %1 = bitcast %struct.decContext* %dc to i8*, !dbg !179
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %1) #8, !dbg !179
  %2 = bitcast i32* %uiwork to i8*, !dbg !180
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8, !dbg !180
  %3 = bitcast i32* %targ to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8, !dbg !181
  call void @llvm.dbg.value(metadata i32 0, metadata !170, metadata !DIExpression()), !dbg !177
  store i32 0, i32* %targ, align 4, !dbg !182
  %exponent = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 1, !dbg !183
  %4 = load i32, i32* %exponent, align 4, !dbg !183
  %digits = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 0, !dbg !184
  %5 = load i32, i32* %digits, align 4, !dbg !184
  %add = add nsw i32 %4, %5, !dbg !185
  call void @llvm.dbg.value(metadata i32 %add, metadata !164, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !177
  %cmp = icmp sgt i32 %5, 7, !dbg !186
  %add.off = add i32 %add, 94, !dbg !188
  %6 = icmp ugt i32 %add.off, 191, !dbg !188
  %7 = or i1 %6, %cmp, !dbg !188
  br i1 %7, label %if.then, label %entry.if.end_crit_edge, !dbg !188

entry.if.end_crit_edge:                           ; preds = %entry
  %bits11.phi.trans.insert = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !189
  %.pre = load i8, i8* %bits11.phi.trans.insert, align 4, !dbg !190
  br label %if.end, !dbg !188

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !166, metadata !DIExpression(DW_OP_deref)), !dbg !177
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 32) #7, !dbg !191
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 3, !dbg !193
  %8 = load i32, i32* %round, align 4, !dbg !193
  %round5 = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 3, !dbg !194
  store i32 %8, i32* %round5, align 4, !dbg !195
  call void @llvm.dbg.value(metadata %struct.decNumber* %dw, metadata !165, metadata !DIExpression(DW_OP_deref)), !dbg !177
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !166, metadata !DIExpression(DW_OP_deref)), !dbg !177
  %call6 = call %struct.decNumber* @decNumberPlus(%struct.decNumber* nonnull %dw, %struct.decNumber* %dn, %struct.decContext* nonnull %dc) #7, !dbg !196
  %bits = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !197
  %9 = load i8, i8* %bits, align 4, !dbg !197
  %10 = and i8 %9, -128, !dbg !198
  %bits7 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dw, i64 0, i32 2, !dbg !199
  %11 = load i8, i8* %bits7, align 4, !dbg !200
  %or4 = or i8 %11, %10, !dbg !200
  store i8 %or4, i8* %bits7, align 4, !dbg !200
  %status10 = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 5, !dbg !201
  %12 = load i32, i32* %status10, align 4, !dbg !201
  call void @llvm.dbg.value(metadata i32 %12, metadata !163, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata %struct.decNumber* %dw, metadata !161, metadata !DIExpression()), !dbg !177
  br label %if.end, !dbg !202

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %13 = phi i8 [ %or4, %if.then ], [ %.pre, %entry.if.end_crit_edge ], !dbg !190
  %status.0 = phi i32 [ %12, %if.then ], [ 0, %entry.if.end_crit_edge ], !dbg !177
  %dn.addr.0 = phi %struct.decNumber* [ %dw, %if.then ], [ %dn, %entry.if.end_crit_edge ]
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn.addr.0, metadata !161, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !163, metadata !DIExpression()), !dbg !177
  %bits11 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 2, !dbg !190
  %14 = and i8 %13, 112, !dbg !203
  %tobool = icmp eq i8 %14, 0, !dbg !203
  br i1 %tobool, label %if.else42, label %if.then14, !dbg !204

if.then14:                                        ; preds = %if.end
  %15 = and i8 %13, 64, !dbg !205
  %tobool18 = icmp eq i8 %15, 0, !dbg !205
  br i1 %tobool18, label %if.else, label %if.then19, !dbg !208

if.then19:                                        ; preds = %if.then14
  call void @llvm.dbg.value(metadata i32 2013265920, metadata !170, metadata !DIExpression()), !dbg !177
  store i32 2013265920, i32* %targ, align 4, !dbg !209
  br label %if.end129, !dbg !210

if.else:                                          ; preds = %if.then14
  %arraydecay = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 3, i64 0, !dbg !211
  %16 = load i16, i16* %arraydecay, align 2, !dbg !211
  %cmp21 = icmp eq i16 %16, 0, !dbg !214
  br i1 %cmp21, label %lor.lhs.false23, label %if.else.land.lhs.true_crit_edge, !dbg !215

if.else.land.lhs.true_crit_edge:                  ; preds = %if.else
  %digits27.phi.trans.insert = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 0, !dbg !216
  %.pre5 = load i32, i32* %digits27.phi.trans.insert, align 4, !dbg !217
  br label %land.lhs.true, !dbg !215

lor.lhs.false23:                                  ; preds = %if.else
  %digits24 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 0, !dbg !218
  %17 = load i32, i32* %digits24, align 4, !dbg !218
  %cmp25 = icmp sgt i32 %17, 1, !dbg !219
  br i1 %cmp25, label %land.lhs.true, label %if.end31, !dbg !220

land.lhs.true:                                    ; preds = %if.else.land.lhs.true_crit_edge, %lor.lhs.false23
  %18 = phi i32 [ %.pre5, %if.else.land.lhs.true_crit_edge ], [ %17, %lor.lhs.false23 ], !dbg !217
  %cmp28 = icmp slt i32 %18, 7, !dbg !221
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !222

if.then30:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32* %targ, metadata !170, metadata !DIExpression(DW_OP_deref)), !dbg !177
  call void @decDigitsToDPD(%struct.decNumber* %dn.addr.0, i32* nonnull %targ, i32 0) #7, !dbg !223
  %.pre6 = load i8, i8* %bits11, align 4, !dbg !225
  br label %if.end31, !dbg !227

if.end31:                                         ; preds = %if.then30, %land.lhs.true, %lor.lhs.false23
  %19 = phi i8 [ %.pre6, %if.then30 ], [ %13, %land.lhs.true ], [ %13, %lor.lhs.false23 ], !dbg !225
  %20 = and i8 %19, 32, !dbg !228
  %tobool35 = icmp eq i8 %20, 0, !dbg !228
  %21 = load i32, i32* %targ, align 4, !dbg !229
  call void @llvm.dbg.value(metadata i32 %21, metadata !170, metadata !DIExpression()), !dbg !177
  br i1 %tobool35, label %if.else38, label %if.then36, !dbg !230

if.then36:                                        ; preds = %if.end31
  %or37 = or i32 %21, 2080374784, !dbg !231
  call void @llvm.dbg.value(metadata i32 %or37, metadata !170, metadata !DIExpression()), !dbg !177
  store i32 %or37, i32* %targ, align 4, !dbg !231
  br label %if.end129, !dbg !232

if.else38:                                        ; preds = %if.end31
  %or39 = or i32 %21, 2113929216, !dbg !233
  call void @llvm.dbg.value(metadata i32 %or39, metadata !170, metadata !DIExpression()), !dbg !177
  store i32 %or39, i32* %targ, align 4, !dbg !233
  br label %if.end129

if.else42:                                        ; preds = %if.end
  %arraydecay44 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 3, i64 0, !dbg !234
  %22 = load i16, i16* %arraydecay44, align 2, !dbg !234
  %cmp46 = icmp eq i16 %22, 0, !dbg !234
  br i1 %cmp46, label %land.lhs.true48, label %if.else74, !dbg !234

land.lhs.true48:                                  ; preds = %if.else42
  %digits49 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 0, !dbg !234
  %23 = load i32, i32* %digits49, align 4, !dbg !234
  %cmp50 = icmp eq i32 %23, 1, !dbg !234
  br i1 %cmp50, label %land.lhs.true52, label %if.else74, !dbg !234

land.lhs.true52:                                  ; preds = %land.lhs.true48
  br i1 true, label %if.then58, label %land.lhs.true52.if.else74_crit_edge, !dbg !235

land.lhs.true52.if.else74_crit_edge:              ; preds = %land.lhs.true52
  br label %if.else74, !dbg !235

if.then58:                                        ; preds = %land.lhs.true52
  %exponent59 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 1, !dbg !236
  %24 = load i32, i32* %exponent59, align 4, !dbg !236
  %cmp60 = icmp slt i32 %24, -101, !dbg !239
  br i1 %cmp60, label %if.then62, label %if.else64, !dbg !240

if.then62:                                        ; preds = %if.then58
  call void @llvm.dbg.value(metadata i32 0, metadata !168, metadata !DIExpression()), !dbg !177
  %or63 = or i32 %status.0, 1024, !dbg !241
  call void @llvm.dbg.value(metadata i32 %or63, metadata !163, metadata !DIExpression()), !dbg !177
  br label %if.end72, !dbg !243

if.else64:                                        ; preds = %if.then58
  %add66 = add nsw i32 %24, 101, !dbg !244
  call void @llvm.dbg.value(metadata i32 %add66, metadata !168, metadata !DIExpression()), !dbg !177
  %cmp67 = icmp ugt i32 %add66, 191, !dbg !246
  %or70 = or i32 %status.0, 1024, !dbg !248
  %spec.select = select i1 %cmp67, i32 191, i32 %add66, !dbg !250
  %spec.select2 = select i1 %cmp67, i32 %or70, i32 %status.0, !dbg !250
  call void @llvm.dbg.value(metadata i32 %spec.select2, metadata !163, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !168, metadata !DIExpression()), !dbg !177
  br label %if.end72

if.end72:                                         ; preds = %if.else64, %if.then62
  %exp.1 = phi i32 [ 0, %if.then62 ], [ %spec.select, %if.else64 ], !dbg !251
  %status.2 = phi i32 [ %or63, %if.then62 ], [ %spec.select2, %if.else64 ], !dbg !251
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !163, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i32 %exp.1, metadata !168, metadata !DIExpression()), !dbg !177
  %shr = lshr i32 %exp.1, 3, !dbg !252
  %and73 = and i32 %shr, 24, !dbg !253
  call void @llvm.dbg.value(metadata i32 %and73, metadata !167, metadata !DIExpression()), !dbg !177
  %.pre7 = load i32, i32* %targ, align 4, !dbg !254
  br label %if.end123, !dbg !255

if.else74:                                        ; preds = %land.lhs.true52.if.else74_crit_edge, %land.lhs.true48, %if.else42
  call void @llvm.dbg.value(metadata i32 0, metadata !176, metadata !DIExpression()), !dbg !256
  %exponent75 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 1, !dbg !257
  %25 = load i32, i32* %exponent75, align 4, !dbg !257
  %add76 = add nsw i32 %25, 101, !dbg !258
  call void @llvm.dbg.value(metadata i32 %add76, metadata !168, metadata !DIExpression()), !dbg !177
  %cmp77 = icmp ugt i32 %add76, 191, !dbg !259
  %sub80 = add i32 %25, -90, !dbg !261
  %or81 = or i32 %status.0, 1024, !dbg !261
  %exp.2 = select i1 %cmp77, i32 191, i32 %add76, !dbg !261
  %status.3 = select i1 %cmp77, i32 %or81, i32 %status.0, !dbg !261
  call void @llvm.dbg.value(metadata i32 %status.3, metadata !163, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i32 %exp.2, metadata !168, metadata !DIExpression()), !dbg !177
  %cmp833 = icmp eq i32 %sub80, 0, !dbg !262
  %not.cmp77 = xor i1 %cmp77, true, !dbg !262
  %cmp83 = or i1 %cmp833, %not.cmp77, !dbg !262
  br i1 %cmp83, label %if.then85, label %if.else106, !dbg !264

if.then85:                                        ; preds = %if.else74
  %idxprom = zext i16 %22 to i64, !dbg !265
  %arrayidx87 = getelementptr inbounds [1000 x i16], [1000 x i16]* @BIN2DPD, i64 0, i64 %idxprom, !dbg !265
  %26 = load i16, i16* %arrayidx87, align 2, !dbg !265
  %conv88 = zext i16 %26 to i32, !dbg !265
  call void @llvm.dbg.value(metadata i32 %conv88, metadata !170, metadata !DIExpression()), !dbg !177
  store i32 %conv88, i32* %targ, align 4, !dbg !267
  %digits89 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 0, !dbg !268
  %27 = load i32, i32* %digits89, align 4, !dbg !268
  %cmp90 = icmp sgt i32 %27, 3, !dbg !270
  br i1 %cmp90, label %if.then92, label %if.end99, !dbg !271

if.then92:                                        ; preds = %if.then85
  %arrayidx94 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 3, i64 1, !dbg !272
  %28 = load i16, i16* %arrayidx94, align 2, !dbg !272
  %idxprom95 = zext i16 %28 to i64, !dbg !273
  %arrayidx96 = getelementptr inbounds [1000 x i16], [1000 x i16]* @BIN2DPD, i64 0, i64 %idxprom95, !dbg !273
  %29 = load i16, i16* %arrayidx96, align 2, !dbg !273
  %conv97 = zext i16 %29 to i32, !dbg !274
  %shl = shl nuw nsw i32 %conv97, 10, !dbg !275
  call void @llvm.dbg.value(metadata i32 %conv88, metadata !170, metadata !DIExpression()), !dbg !177
  %or98 = or i32 %shl, %conv88, !dbg !276
  call void @llvm.dbg.value(metadata i32 %or98, metadata !170, metadata !DIExpression()), !dbg !177
  store i32 %or98, i32* %targ, align 4, !dbg !276
  br label %if.end99, !dbg !277

if.end99:                                         ; preds = %if.then92, %if.then85
  %30 = phi i32 [ %or98, %if.then92 ], [ %conv88, %if.then85 ]
  %cmp101 = icmp eq i32 %27, 7, !dbg !278
  br i1 %cmp101, label %cond.true, label %if.end109, !dbg !279

cond.true:                                        ; preds = %if.end99
  %arrayidx104 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 3, i64 2, !dbg !280
  %31 = load i16, i16* %arrayidx104, align 2, !dbg !280
  %conv105 = zext i16 %31 to i32, !dbg !280
  br label %if.end109, !dbg !279

if.else106:                                       ; preds = %if.else74
  call void @llvm.dbg.value(metadata i32* %targ, metadata !170, metadata !DIExpression(DW_OP_deref)), !dbg !177
  call void @decDigitsToDPD(%struct.decNumber* %dn.addr.0, i32* nonnull %targ, i32 %sub80) #7, !dbg !281
  %32 = load i32, i32* %targ, align 4, !dbg !283
  call void @llvm.dbg.value(metadata i32 %32, metadata !170, metadata !DIExpression()), !dbg !177
  %shr107 = lshr i32 %32, 20, !dbg !284
  call void @llvm.dbg.value(metadata i32 %shr107, metadata !171, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i32 %32, metadata !170, metadata !DIExpression()), !dbg !177
  %and108 = and i32 %32, 1048575, !dbg !285
  call void @llvm.dbg.value(metadata i32 %and108, metadata !170, metadata !DIExpression()), !dbg !177
  store i32 %and108, i32* %targ, align 4, !dbg !285
  br label %if.end109

if.end109:                                        ; preds = %cond.true, %if.end99, %if.else106
  %33 = phi i32 [ %and108, %if.else106 ], [ %30, %cond.true ], [ %30, %if.end99 ]
  %msd.0 = phi i32 [ %shr107, %if.else106 ], [ %conv105, %cond.true ], [ 0, %if.end99 ], !dbg !286
  call void @llvm.dbg.value(metadata i32 %msd.0, metadata !171, metadata !DIExpression()), !dbg !256
  %cmp110 = icmp ugt i32 %msd.0, 7, !dbg !287
  br i1 %cmp110, label %if.then112, label %if.else118, !dbg !289

if.then112:                                       ; preds = %if.end109
  %shr113 = lshr i32 %exp.2, 5, !dbg !290
  %and114 = and i32 %shr113, 6, !dbg !291
  %and116 = and i32 %msd.0, 1, !dbg !292
  %or115 = or i32 %and114, %and116, !dbg !293
  %or117 = or i32 %or115, 24, !dbg !293
  call void @llvm.dbg.value(metadata i32 %or117, metadata !167, metadata !DIExpression()), !dbg !177
  br label %if.end123, !dbg !294

if.else118:                                       ; preds = %if.end109
  %shr119 = lshr i32 %exp.2, 3, !dbg !295
  %and120 = and i32 %shr119, 24, !dbg !296
  %or121 = or i32 %and120, %msd.0, !dbg !297
  call void @llvm.dbg.value(metadata i32 %or121, metadata !167, metadata !DIExpression()), !dbg !177
  br label %if.end123

if.end123:                                        ; preds = %if.then112, %if.else118, %if.end72
  %34 = phi i32 [ %.pre7, %if.end72 ], [ %33, %if.then112 ], [ %33, %if.else118 ], !dbg !254
  %comb.1 = phi i32 [ %and73, %if.end72 ], [ %or117, %if.then112 ], [ %or121, %if.else118 ], !dbg !298
  %exp.3 = phi i32 [ %exp.1, %if.end72 ], [ %exp.2, %if.then112 ], [ %exp.2, %if.else118 ], !dbg !298
  %status.4 = phi i32 [ %status.2, %if.end72 ], [ %status.3, %if.then112 ], [ %status.3, %if.else118 ], !dbg !298
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !163, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i32 %exp.3, metadata !168, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i32 %comb.1, metadata !167, metadata !DIExpression()), !dbg !177
  %shl124 = shl i32 %comb.1, 26, !dbg !299
  call void @llvm.dbg.value(metadata i32 %34, metadata !170, metadata !DIExpression()), !dbg !177
  %or125 = or i32 %34, %shl124, !dbg !254
  call void @llvm.dbg.value(metadata i32 %or125, metadata !170, metadata !DIExpression()), !dbg !177
  %and126 = shl i32 %exp.3, 20, !dbg !300
  %shl127 = and i32 %and126, 66060288, !dbg !300
  call void @llvm.dbg.value(metadata i32 %or125, metadata !170, metadata !DIExpression()), !dbg !177
  %or128 = or i32 %or125, %shl127, !dbg !301
  call void @llvm.dbg.value(metadata i32 %or128, metadata !170, metadata !DIExpression()), !dbg !177
  store i32 %or128, i32* %targ, align 4, !dbg !301
  %.pre8 = load i8, i8* %bits11, align 4, !dbg !302
  br label %if.end129

if.end129:                                        ; preds = %if.then19, %if.else38, %if.then36, %if.end123
  %35 = phi i32 [ %or128, %if.end123 ], [ %or37, %if.then36 ], [ %or39, %if.else38 ], [ 2013265920, %if.then19 ]
  %36 = phi i8 [ %.pre8, %if.end123 ], [ %19, %if.then36 ], [ %19, %if.else38 ], [ %13, %if.then19 ], !dbg !302
  %status.5 = phi i32 [ %status.4, %if.end123 ], [ %status.0, %if.then36 ], [ %status.0, %if.else38 ], [ %status.0, %if.then19 ], !dbg !177
  call void @llvm.dbg.value(metadata i32 %status.5, metadata !163, metadata !DIExpression()), !dbg !177
  %tobool133 = icmp slt i8 %36, 0, !dbg !304
  br i1 %tobool133, label %if.then134, label %if.end136, !dbg !305

if.then134:                                       ; preds = %if.end129
  call void @llvm.dbg.value(metadata i32 %35, metadata !170, metadata !DIExpression()), !dbg !177
  %or135 = or i32 %35, -2147483648, !dbg !306
  call void @llvm.dbg.value(metadata i32 %or135, metadata !170, metadata !DIExpression()), !dbg !177
  store i32 %or135, i32* %targ, align 4, !dbg !306
  br label %if.end136, !dbg !307

if.end136:                                        ; preds = %if.then134, %if.end129
  %37 = phi i32 [ %or135, %if.then134 ], [ %35, %if.end129 ], !dbg !308
  call void @llvm.dbg.value(metadata i32 %37, metadata !170, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i32 %37, metadata !169, metadata !DIExpression()), !dbg !177
  store i32 %37, i32* %uiwork, align 4, !dbg !308
  %arraydecay137 = getelementptr inbounds %struct.decimal32, %struct.decimal32* %d32, i64 0, i32 0, i64 0, !dbg !308
  %call138 = call i8* @memcpy(i8* %arraydecay137, i8* nonnull %2, i64 4) #7, !dbg !308
  call void @llvm.dbg.value(metadata i32 undef, metadata !169, metadata !DIExpression()), !dbg !177
  %cmp139 = icmp eq i32 %status.5, 0, !dbg !309
  br i1 %cmp139, label %if.end143, label %if.then141, !dbg !311

if.then141:                                       ; preds = %if.end136
  %call142 = call %struct.decContext* @decContextSetStatus(%struct.decContext* %set, i32 %status.5) #7, !dbg !312
  br label %if.end143, !dbg !312

if.end143:                                        ; preds = %if.end136, %if.then141
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #8, !dbg !313
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8, !dbg !313
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %1) #8, !dbg !313
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !313
  ret %struct.decimal32* %d32, !dbg !314
}

declare dso_local %struct.decContext* @decContextDefault(%struct.decContext*, i32) local_unnamed_addr #1

declare dso_local %struct.decNumber* @decNumberPlus(%struct.decNumber*, %struct.decNumber*, %struct.decContext*) local_unnamed_addr #1

declare dso_local void @decDigitsToDPD(%struct.decNumber*, i32*, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

declare dso_local %struct.decContext* @decContextSetStatus(%struct.decContext*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.decNumber* @__dpd32ToNumber(%struct.decimal32* %d32, %struct.decNumber* %dn) local_unnamed_addr #3 !dbg !315 {
entry:
  %sour = alloca i32, align 4
  %uiwork = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.decimal32* %d32, metadata !322, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !323, metadata !DIExpression()), !dbg !329
  %0 = bitcast i32* %sour to i8*, !dbg !330
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !330
  %1 = bitcast i32* %uiwork to i8*, !dbg !331
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !331
  %arraydecay = getelementptr inbounds %struct.decimal32, %struct.decimal32* %d32, i64 0, i32 0, i64 0, !dbg !332
  %call = call i8* @memcpy(i8* nonnull %1, i8* %arraydecay, i64 4) #7, !dbg !332
  %2 = load i32, i32* %uiwork, align 4, !dbg !332
  call void @llvm.dbg.value(metadata i32 %2, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i32 %2, metadata !327, metadata !DIExpression()), !dbg !329
  store i32 %2, i32* %sour, align 4, !dbg !333
  call void @llvm.dbg.value(metadata i32 %2, metadata !327, metadata !DIExpression()), !dbg !329
  %shr = lshr i32 %2, 26, !dbg !334
  %and = and i32 %shr, 31, !dbg !335
  call void @llvm.dbg.value(metadata i32 %and, metadata !326, metadata !DIExpression()), !dbg !329
  %call1 = call %struct.decNumber* @decNumberZero(%struct.decNumber* %dn) #7, !dbg !336
  call void @llvm.dbg.value(metadata i32 %2, metadata !327, metadata !DIExpression()), !dbg !329
  %tobool = icmp slt i32 %2, 0, !dbg !337
  br i1 %tobool, label %if.then, label %if.end, !dbg !339

if.then:                                          ; preds = %entry
  %bits = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !340
  store i8 -128, i8* %bits, align 4, !dbg !341
  br label %if.end, !dbg !342

if.end:                                           ; preds = %if.then, %entry
  %idxprom = zext i32 %and to i64, !dbg !343
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* @COMBMSD, i64 0, i64 %idxprom, !dbg !343
  %3 = load i32, i32* %arrayidx, align 4, !dbg !343
  call void @llvm.dbg.value(metadata i32 %3, metadata !324, metadata !DIExpression()), !dbg !329
  %arrayidx4 = getelementptr inbounds [32 x i32], [32 x i32]* @COMBEXP, i64 0, i64 %idxprom, !dbg !344
  %4 = load i32, i32* %arrayidx4, align 4, !dbg !344
  call void @llvm.dbg.value(metadata i32 %4, metadata !325, metadata !DIExpression()), !dbg !329
  %cmp = icmp eq i32 %4, 3, !dbg !345
  br i1 %cmp, label %if.then5, label %if.else24, !dbg !347

if.then5:                                         ; preds = %if.end
  %cmp6 = icmp eq i32 %3, 0, !dbg !348
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !351

if.then7:                                         ; preds = %if.then5
  %bits8 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !352
  %5 = load i8, i8* %bits8, align 4, !dbg !354
  %6 = or i8 %5, 64, !dbg !354
  store i8 %6, i8* %bits8, align 4, !dbg !354
  br label %cleanup, !dbg !355

if.else:                                          ; preds = %if.then5
  call void @llvm.dbg.value(metadata i32 %2, metadata !327, metadata !DIExpression()), !dbg !329
  %and10 = and i32 %2, 33554432, !dbg !356
  %tobool11 = icmp eq i32 %and10, 0, !dbg !356
  %bits13 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !358
  %7 = load i8, i8* %bits13, align 4, !dbg !358
  br i1 %tobool11, label %if.else17, label %if.then12, !dbg !359

if.then12:                                        ; preds = %if.else
  %8 = or i8 %7, 16, !dbg !360
  store i8 %8, i8* %bits13, align 4, !dbg !360
  br label %if.end27, !dbg !361

if.else17:                                        ; preds = %if.else
  %or20 = or i8 %7, 32, !dbg !362
  store i8 %or20, i8* %bits13, align 4, !dbg !362
  br label %if.end27

if.else24:                                        ; preds = %if.end
  %shl = shl i32 %4, 6, !dbg !363
  call void @llvm.dbg.value(metadata i32 %2, metadata !327, metadata !DIExpression()), !dbg !329
  %shr25 = lshr i32 %2, 20, !dbg !365
  %and26 = and i32 %shr25, 63, !dbg !366
  %add = or i32 %shl, %and26, !dbg !367
  %sub = add i32 %add, -101, !dbg !368
  %exponent = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 1, !dbg !369
  store i32 %sub, i32* %exponent, align 4, !dbg !370
  br label %if.end27

if.end27:                                         ; preds = %if.else17, %if.then12, %if.else24
  %msd.0 = phi i32 [ %3, %if.else24 ], [ 0, %if.then12 ], [ 0, %if.else17 ], !dbg !329
  call void @llvm.dbg.value(metadata i32 %msd.0, metadata !324, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i32 %2, metadata !327, metadata !DIExpression()), !dbg !329
  %and28 = and i32 %2, 1048575, !dbg !371
  call void @llvm.dbg.value(metadata i32 %and28, metadata !327, metadata !DIExpression()), !dbg !329
  store i32 %and28, i32* %sour, align 4, !dbg !371
  %tobool29 = icmp eq i32 %msd.0, 0, !dbg !372
  br i1 %tobool29, label %if.end33, label %if.then30, !dbg !374

if.then30:                                        ; preds = %if.end27
  %shl31 = shl i32 %msd.0, 20, !dbg !375
  call void @llvm.dbg.value(metadata i32 %and28, metadata !327, metadata !DIExpression()), !dbg !329
  %or32 = or i32 %and28, %shl31, !dbg !377
  call void @llvm.dbg.value(metadata i32 %or32, metadata !327, metadata !DIExpression()), !dbg !329
  store i32 %or32, i32* %sour, align 4, !dbg !377
  call void @llvm.dbg.value(metadata i32* %sour, metadata !327, metadata !DIExpression(DW_OP_deref)), !dbg !329
  call void @decDigitsFromDPD(%struct.decNumber* %dn, i32* nonnull %sour, i32 3) #7, !dbg !378
  br label %cleanup, !dbg !379

if.end33:                                         ; preds = %if.end27
  call void @llvm.dbg.value(metadata i32 %and28, metadata !327, metadata !DIExpression()), !dbg !329
  %tobool34 = icmp eq i32 %and28, 0, !dbg !380
  br i1 %tobool34, label %cleanup, label %if.end36, !dbg !382

if.end36:                                         ; preds = %if.end33
  call void @llvm.dbg.value(metadata i32 %and28, metadata !327, metadata !DIExpression()), !dbg !329
  %and37 = and i32 %2, 1047552, !dbg !383
  %tobool38 = icmp eq i32 %and37, 0, !dbg !383
  br i1 %tobool38, label %if.else40, label %if.then39, !dbg !385

if.then39:                                        ; preds = %if.end36
  call void @llvm.dbg.value(metadata i32* %sour, metadata !327, metadata !DIExpression(DW_OP_deref)), !dbg !329
  call void @decDigitsFromDPD(%struct.decNumber* %dn, i32* nonnull %sour, i32 2) #7, !dbg !386
  br label %cleanup, !dbg !386

if.else40:                                        ; preds = %if.end36
  call void @llvm.dbg.value(metadata i32* %sour, metadata !327, metadata !DIExpression(DW_OP_deref)), !dbg !329
  call void @decDigitsFromDPD(%struct.decNumber* %dn, i32* nonnull %sour, i32 1) #7, !dbg !387
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then39, %if.else40, %if.then30, %if.then7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !388
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !388
  ret %struct.decNumber* %dn, !dbg !388
}

declare dso_local %struct.decNumber* @decNumberZero(%struct.decNumber*) local_unnamed_addr #1

declare dso_local void @decDigitsFromDPD(%struct.decNumber*, i32*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @__dpd32ToEngString(%struct.decimal32* %d32, i8* %string) local_unnamed_addr #3 !dbg !389 {
entry:
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal32* %d32, metadata !393, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i8* %string, metadata !394, metadata !DIExpression()), !dbg !396
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !397
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !397
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !395, metadata !DIExpression(DW_OP_deref)), !dbg !396
  %call = call %struct.decNumber* @__dpd32ToNumber(%struct.decimal32* %d32, %struct.decNumber* nonnull %dn) #9, !dbg !398
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !395, metadata !DIExpression(DW_OP_deref)), !dbg !396
  %call1 = call i8* @decNumberToEngString(%struct.decNumber* nonnull %dn, i8* %string) #7, !dbg !399
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !400
  ret i8* %string, !dbg !401
}

declare dso_local i8* @decNumberToEngString(%struct.decNumber*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @__dpd32ToString(%struct.decimal32* %d32, i8* %string) local_unnamed_addr #3 !dbg !402 {
entry:
  %uiwork = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.decimal32* %d32, metadata !404, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i8* %string, metadata !405, metadata !DIExpression()), !dbg !424
  %0 = bitcast i32* %uiwork to i8*, !dbg !425
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !425
  %arraydecay = getelementptr inbounds %struct.decimal32, %struct.decimal32* %d32, i64 0, i32 0, i64 0, !dbg !426
  %call = call i8* @memcpy(i8* nonnull %0, i8* %arraydecay, i64 4) #7, !dbg !426
  %1 = load i32, i32* %uiwork, align 4, !dbg !426
  call void @llvm.dbg.value(metadata i32 %1, metadata !419, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i32 %1, metadata !420, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i8* %string, metadata !410, metadata !DIExpression()), !dbg !424
  %cmp = icmp slt i32 %1, 0, !dbg !427
  br i1 %cmp, label %if.then, label %if.end, !dbg !429

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %string, i64 1, !dbg !430
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !410, metadata !DIExpression()), !dbg !424
  store i8 45, i8* %string, align 1, !dbg !431
  br label %if.end, !dbg !432

if.end:                                           ; preds = %if.then, %entry
  %c.0 = phi i8* [ %incdec.ptr, %if.then ], [ %string, %entry ], !dbg !424
  call void @llvm.dbg.value(metadata i8* %c.0, metadata !410, metadata !DIExpression()), !dbg !424
  %shr = lshr i32 %1, 26, !dbg !433
  %and = and i32 %shr, 31, !dbg !434
  call void @llvm.dbg.value(metadata i32 %and, metadata !408, metadata !DIExpression()), !dbg !424
  %idxprom = zext i32 %and to i64, !dbg !435
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* @COMBMSD, i64 0, i64 %idxprom, !dbg !435
  %2 = load i32, i32* %arrayidx, align 4, !dbg !435
  call void @llvm.dbg.value(metadata i32 %2, metadata !406, metadata !DIExpression()), !dbg !424
  %arrayidx2 = getelementptr inbounds [32 x i32], [32 x i32]* @COMBEXP, i64 0, i64 %idxprom, !dbg !436
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !436
  call void @llvm.dbg.value(metadata i32 %3, metadata !407, metadata !DIExpression()), !dbg !424
  %cmp3 = icmp eq i32 %3, 3, !dbg !437
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !439

if.then4:                                         ; preds = %if.end
  %cmp5 = icmp eq i32 %2, 0, !dbg !440
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !443

if.then6:                                         ; preds = %if.then4
  %call7 = call i8* @strcpy(i8* %c.0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !444
  %add.ptr = getelementptr inbounds i8, i8* %c.0, i64 3, !dbg !446
  %call8 = call i8* @strcpy(i8* nonnull %add.ptr, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !447
  br label %cleanup, !dbg !448

if.end9:                                          ; preds = %if.then4
  %and10 = and i32 %1, 33554432, !dbg !449
  %tobool = icmp eq i32 %and10, 0, !dbg !449
  br i1 %tobool, label %if.end13, label %if.then11, !dbg !451

if.then11:                                        ; preds = %if.end9
  %incdec.ptr12 = getelementptr inbounds i8, i8* %c.0, i64 1, !dbg !452
  call void @llvm.dbg.value(metadata i8* %incdec.ptr12, metadata !410, metadata !DIExpression()), !dbg !424
  store i8 115, i8* %c.0, align 1, !dbg !453
  br label %if.end13, !dbg !454

if.end13:                                         ; preds = %if.end9, %if.then11
  %c.1 = phi i8* [ %incdec.ptr12, %if.then11 ], [ %c.0, %if.end9 ], !dbg !424
  call void @llvm.dbg.value(metadata i8* %c.1, metadata !410, metadata !DIExpression()), !dbg !424
  %call14 = call i8* @strcpy(i8* %c.1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !455
  %add.ptr15 = getelementptr inbounds i8, i8* %c.1, i64 3, !dbg !456
  call void @llvm.dbg.value(metadata i8* %add.ptr15, metadata !410, metadata !DIExpression()), !dbg !424
  %and16 = and i32 %1, 1048575, !dbg !457
  %cmp17 = icmp eq i32 %and16, 0, !dbg !459
  br i1 %cmp17, label %cleanup, label %if.end22, !dbg !460

if.else:                                          ; preds = %if.end
  %shl = shl i32 %3, 6, !dbg !461
  %shr20 = lshr i32 %1, 20, !dbg !462
  %and21 = and i32 %shr20, 63, !dbg !463
  %add = or i32 %shl, %and21, !dbg !464
  %sub = add i32 %add, -101, !dbg !465
  call void @llvm.dbg.value(metadata i32 %sub, metadata !407, metadata !DIExpression()), !dbg !424
  br label %if.end22

if.end22:                                         ; preds = %if.end13, %if.else
  %c.2 = phi i8* [ %c.0, %if.else ], [ %add.ptr15, %if.end13 ], !dbg !424
  %exp.0 = phi i32 [ %sub, %if.else ], [ 0, %if.end13 ], !dbg !466
  %msd.0 = phi i32 [ %2, %if.else ], [ 0, %if.end13 ], !dbg !424
  call void @llvm.dbg.value(metadata i32 %msd.0, metadata !406, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i32 %exp.0, metadata !407, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i8* %c.2, metadata !410, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i8* %c.2, metadata !409, metadata !DIExpression()), !dbg !424
  %tobool23 = icmp eq i32 %msd.0, 0, !dbg !467
  br i1 %tobool23, label %if.end29, label %if.then24, !dbg !469

if.then24:                                        ; preds = %if.end22
  %4 = trunc i32 %msd.0 to i8, !dbg !470
  %conv27 = add i8 %4, 48, !dbg !470
  %incdec.ptr28 = getelementptr inbounds i8, i8* %c.2, i64 1, !dbg !471
  call void @llvm.dbg.value(metadata i8* %incdec.ptr28, metadata !410, metadata !DIExpression()), !dbg !424
  store i8 %conv27, i8* %c.2, align 1, !dbg !472
  br label %if.end29, !dbg !473

if.end29:                                         ; preds = %if.end22, %if.then24
  %c.3 = phi i8* [ %incdec.ptr28, %if.then24 ], [ %c.2, %if.end22 ], !dbg !424
  call void @llvm.dbg.value(metadata i8* %c.3, metadata !410, metadata !DIExpression()), !dbg !424
  %shr30 = lshr i32 %1, 10, !dbg !474
  %and31 = and i32 %shr30, 1023, !dbg !475
  call void @llvm.dbg.value(metadata i32 %and31, metadata !416, metadata !DIExpression()), !dbg !424
  %idxprom32 = zext i32 %and31 to i64, !dbg !476
  %arrayidx33 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom32, !dbg !476
  %5 = load i16, i16* %arrayidx33, align 2, !dbg !476
  %conv34 = zext i16 %5 to i64, !dbg !476
  %mul = shl nuw nsw i64 %conv34, 2, !dbg !476
  %arrayidx36 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul, !dbg !476
  call void @llvm.dbg.value(metadata i8* %arrayidx36, metadata !411, metadata !DIExpression()), !dbg !424
  %cmp37 = icmp eq i8* %c.3, %c.2, !dbg !477
  br i1 %cmp37, label %if.else43, label %if.then39, !dbg !476

if.then39:                                        ; preds = %if.end29
  %add.ptr40 = getelementptr inbounds i8, i8* %arrayidx36, i64 1, !dbg !479
  %call41 = call i8* @memcpy(i8* %c.3, i8* nonnull %add.ptr40, i64 4) #7, !dbg !479
  %add.ptr42 = getelementptr inbounds i8, i8* %c.3, i64 3, !dbg !479
  call void @llvm.dbg.value(metadata i8* %add.ptr42, metadata !410, metadata !DIExpression()), !dbg !424
  br label %if.end54, !dbg !479

if.else43:                                        ; preds = %if.end29
  %6 = load i8, i8* %arrayidx36, align 4, !dbg !481
  %tobool44 = icmp eq i8 %6, 0, !dbg !481
  br i1 %tobool44, label %if.end54, label %if.then45, !dbg !477

if.then45:                                        ; preds = %if.else43
  %add.ptr46 = getelementptr inbounds i8, i8* %arrayidx36, i64 4, !dbg !483
  %idx.ext = zext i8 %6 to i64, !dbg !483
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !483
  %add.ptr48 = getelementptr inbounds i8, i8* %add.ptr46, i64 %idx.neg, !dbg !483
  %call49 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr48, i64 4) #7, !dbg !483
  %add.ptr52 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext, !dbg !483
  call void @llvm.dbg.value(metadata i8* %add.ptr52, metadata !410, metadata !DIExpression()), !dbg !424
  br label %if.end54, !dbg !483

if.end54:                                         ; preds = %if.else43, %if.then45, %if.then39
  %c.5 = phi i8* [ %add.ptr42, %if.then39 ], [ %add.ptr52, %if.then45 ], [ %c.2, %if.else43 ], !dbg !485
  call void @llvm.dbg.value(metadata i8* %c.5, metadata !410, metadata !DIExpression()), !dbg !424
  %and55 = and i32 %1, 1023, !dbg !486
  call void @llvm.dbg.value(metadata i32 %and55, metadata !416, metadata !DIExpression()), !dbg !424
  %idxprom56 = zext i32 %and55 to i64, !dbg !487
  %arrayidx57 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom56, !dbg !487
  %7 = load i16, i16* %arrayidx57, align 2, !dbg !487
  %conv58 = zext i16 %7 to i64, !dbg !487
  %mul59 = shl nuw nsw i64 %conv58, 2, !dbg !487
  %arrayidx61 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul59, !dbg !487
  call void @llvm.dbg.value(metadata i8* %arrayidx61, metadata !411, metadata !DIExpression()), !dbg !424
  %cmp62 = icmp eq i8* %c.5, %c.2, !dbg !488
  br i1 %cmp62, label %if.else68, label %if.then64, !dbg !487

if.then64:                                        ; preds = %if.end54
  %add.ptr65 = getelementptr inbounds i8, i8* %arrayidx61, i64 1, !dbg !490
  %call66 = call i8* @memcpy(i8* %c.5, i8* nonnull %add.ptr65, i64 4) #7, !dbg !490
  %add.ptr67 = getelementptr inbounds i8, i8* %c.5, i64 3, !dbg !490
  call void @llvm.dbg.value(metadata i8* %add.ptr67, metadata !410, metadata !DIExpression()), !dbg !424
  br label %if.end81, !dbg !490

if.else68:                                        ; preds = %if.end54
  %8 = load i8, i8* %arrayidx61, align 4, !dbg !492
  %tobool69 = icmp eq i8 %8, 0, !dbg !492
  br i1 %tobool69, label %if.end81, label %if.then70, !dbg !488

if.then70:                                        ; preds = %if.else68
  %add.ptr71 = getelementptr inbounds i8, i8* %arrayidx61, i64 4, !dbg !494
  %idx.ext73 = zext i8 %8 to i64, !dbg !494
  %idx.neg74 = sub nsw i64 0, %idx.ext73, !dbg !494
  %add.ptr75 = getelementptr inbounds i8, i8* %add.ptr71, i64 %idx.neg74, !dbg !494
  %call76 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr75, i64 4) #7, !dbg !494
  %add.ptr79 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext73, !dbg !494
  call void @llvm.dbg.value(metadata i8* %add.ptr79, metadata !410, metadata !DIExpression()), !dbg !424
  br label %if.end81, !dbg !494

if.end81:                                         ; preds = %if.else68, %if.then70, %if.then64
  %c.7 = phi i8* [ %add.ptr67, %if.then64 ], [ %add.ptr79, %if.then70 ], [ %c.2, %if.else68 ], !dbg !496
  call void @llvm.dbg.value(metadata i8* %c.7, metadata !410, metadata !DIExpression()), !dbg !424
  %cmp82 = icmp eq i8* %c.7, %c.2, !dbg !497
  br i1 %cmp82, label %if.then84, label %if.end86, !dbg !499

if.then84:                                        ; preds = %if.end81
  %incdec.ptr85 = getelementptr inbounds i8, i8* %c.2, i64 1, !dbg !500
  call void @llvm.dbg.value(metadata i8* %incdec.ptr85, metadata !410, metadata !DIExpression()), !dbg !424
  store i8 48, i8* %c.2, align 1, !dbg !501
  br label %if.end86, !dbg !502

if.end86:                                         ; preds = %if.then84, %if.end81
  %c.8 = phi i8* [ %incdec.ptr85, %if.then84 ], [ %c.7, %if.end81 ], !dbg !424
  call void @llvm.dbg.value(metadata i8* %c.8, metadata !410, metadata !DIExpression()), !dbg !424
  %cmp87 = icmp eq i32 %exp.0, 0, !dbg !503
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !505

if.then89:                                        ; preds = %if.end86
  store i8 0, i8* %c.8, align 1, !dbg !506
  br label %cleanup, !dbg !508

if.end90:                                         ; preds = %if.end86
  call void @llvm.dbg.value(metadata i32 0, metadata !418, metadata !DIExpression()), !dbg !424
  %sub.ptr.lhs.cast = ptrtoint i8* %c.8 to i64, !dbg !509
  %sub.ptr.rhs.cast = ptrtoint i8* %c.2 to i64, !dbg !509
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !509
  %9 = trunc i64 %sub.ptr.sub to i32, !dbg !510
  %conv93 = add i32 %exp.0, %9, !dbg !510
  call void @llvm.dbg.value(metadata i32 %conv93, metadata !417, metadata !DIExpression()), !dbg !424
  %cmp94 = icmp sgt i32 %exp.0, 0, !dbg !511
  %cmp96 = icmp slt i32 %conv93, -5, !dbg !513
  %or.cond = or i1 %cmp94, %cmp96, !dbg !514
  %sub99 = add nsw i32 %conv93, -1, !dbg !514
  %pre.0 = select i1 %or.cond, i32 1, i32 %conv93, !dbg !514
  %e.0 = select i1 %or.cond, i32 %sub99, i32 0, !dbg !514
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !418, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i32 %pre.0, metadata !417, metadata !DIExpression()), !dbg !424
  %add.ptr101 = getelementptr inbounds i8, i8* %c.8, i64 -1, !dbg !515
  call void @llvm.dbg.value(metadata i8* %add.ptr101, metadata !414, metadata !DIExpression()), !dbg !424
  %cmp102 = icmp sgt i32 %pre.0, 0, !dbg !516
  br i1 %cmp102, label %if.then104, label %if.end140, !dbg !517

if.then104:                                       ; preds = %if.end90
  %idx.ext105 = sext i32 %pre.0 to i64, !dbg !518
  %add.ptr106 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext105, !dbg !518
  call void @llvm.dbg.value(metadata i8* %add.ptr106, metadata !421, metadata !DIExpression()), !dbg !519
  %cmp107 = icmp ult i8* %add.ptr106, %c.8, !dbg !520
  br i1 %cmp107, label %for.cond.preheader, label %if.end115, !dbg !522

for.cond.preheader:                               ; preds = %if.then104
  br label %for.cond, !dbg !523

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %t.0 = phi i8* [ %incdec.ptr113, %for.body ], [ %c.8, %for.cond.preheader ], !dbg !526
  %s.0 = phi i8* [ %incdec.ptr112, %for.body ], [ %add.ptr101, %for.cond.preheader ], !dbg !424
  call void @llvm.dbg.value(metadata i8* %s.0, metadata !414, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i8* %t.0, metadata !415, metadata !DIExpression()), !dbg !424
  %cmp110 = icmp ult i8* %s.0, %add.ptr106, !dbg !527
  br i1 %cmp110, label %for.end, label %for.body, !dbg !523

for.body:                                         ; preds = %for.cond
  %10 = load i8, i8* %s.0, align 1, !dbg !529
  store i8 %10, i8* %t.0, align 1, !dbg !530
  %incdec.ptr112 = getelementptr inbounds i8, i8* %s.0, i64 -1, !dbg !531
  call void @llvm.dbg.value(metadata i8* %incdec.ptr112, metadata !414, metadata !DIExpression()), !dbg !424
  %incdec.ptr113 = getelementptr inbounds i8, i8* %t.0, i64 -1, !dbg !532
  call void @llvm.dbg.value(metadata i8* %incdec.ptr113, metadata !415, metadata !DIExpression()), !dbg !424
  br label %for.cond, !dbg !533, !llvm.loop !534

for.end:                                          ; preds = %for.cond
  %t.0.lcssa = phi i8* [ %t.0, %for.cond ], !dbg !526
  call void @llvm.dbg.value(metadata i8* %t.0.lcssa, metadata !415, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i8* %t.0.lcssa, metadata !415, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i8* %t.0.lcssa, metadata !415, metadata !DIExpression()), !dbg !424
  store i8 46, i8* %t.0.lcssa, align 1, !dbg !536
  %incdec.ptr114 = getelementptr inbounds i8, i8* %c.8, i64 1, !dbg !537
  call void @llvm.dbg.value(metadata i8* %incdec.ptr114, metadata !410, metadata !DIExpression()), !dbg !424
  br label %if.end115, !dbg !538

if.end115:                                        ; preds = %for.end, %if.then104
  %c.9 = phi i8* [ %incdec.ptr114, %for.end ], [ %c.8, %if.then104 ], !dbg !424
  call void @llvm.dbg.value(metadata i8* %c.9, metadata !410, metadata !DIExpression()), !dbg !424
  %cmp116 = icmp eq i32 %e.0, 0, !dbg !539
  br i1 %cmp116, label %if.end139, label %if.then118, !dbg !541

if.then118:                                       ; preds = %if.end115
  %incdec.ptr119 = getelementptr inbounds i8, i8* %c.9, i64 1, !dbg !542
  call void @llvm.dbg.value(metadata i8* %incdec.ptr119, metadata !410, metadata !DIExpression()), !dbg !424
  store i8 69, i8* %c.9, align 1, !dbg !544
  %incdec.ptr120 = getelementptr inbounds i8, i8* %c.9, i64 2, !dbg !545
  call void @llvm.dbg.value(metadata i8* %incdec.ptr120, metadata !410, metadata !DIExpression()), !dbg !424
  store i8 43, i8* %incdec.ptr119, align 1, !dbg !546
  %cmp121 = icmp slt i32 %e.0, 0, !dbg !547
  br i1 %cmp121, label %if.then123, label %if.end126, !dbg !549

if.then123:                                       ; preds = %if.then118
  store i8 45, i8* %incdec.ptr119, align 1, !dbg !550
  %sub125 = sub nsw i32 0, %e.0, !dbg !552
  call void @llvm.dbg.value(metadata i32 %sub125, metadata !418, metadata !DIExpression()), !dbg !424
  br label %if.end126, !dbg !553

if.end126:                                        ; preds = %if.then123, %if.then118
  %e.1 = phi i32 [ %sub125, %if.then123 ], [ %e.0, %if.then118 ], !dbg !424
  call void @llvm.dbg.value(metadata i32 %e.1, metadata !418, metadata !DIExpression()), !dbg !424
  %mul127 = shl nsw i32 %e.1, 2, !dbg !554
  %idxprom128 = sext i32 %mul127 to i64, !dbg !555
  %arrayidx129 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %idxprom128, !dbg !555
  call void @llvm.dbg.value(metadata i8* %arrayidx129, metadata !411, metadata !DIExpression()), !dbg !424
  %add.ptr130 = getelementptr inbounds i8, i8* %arrayidx129, i64 4, !dbg !556
  %11 = load i8, i8* %arrayidx129, align 4, !dbg !557
  %idx.ext132 = zext i8 %11 to i64, !dbg !558
  %idx.neg133 = sub nsw i64 0, %idx.ext132, !dbg !558
  %add.ptr134 = getelementptr inbounds i8, i8* %add.ptr130, i64 %idx.neg133, !dbg !558
  %call135 = call i8* @memcpy(i8* nonnull %incdec.ptr120, i8* nonnull %add.ptr134, i64 4) #7, !dbg !559
  %add.ptr138 = getelementptr inbounds i8, i8* %incdec.ptr120, i64 %idx.ext132, !dbg !560
  call void @llvm.dbg.value(metadata i8* %add.ptr138, metadata !410, metadata !DIExpression()), !dbg !424
  br label %if.end139, !dbg !561

if.end139:                                        ; preds = %if.end115, %if.end126
  %c.10 = phi i8* [ %add.ptr138, %if.end126 ], [ %c.9, %if.end115 ], !dbg !519
  call void @llvm.dbg.value(metadata i8* %c.10, metadata !410, metadata !DIExpression()), !dbg !424
  store i8 0, i8* %c.10, align 1, !dbg !562
  br label %cleanup

if.end140:                                        ; preds = %if.end90
  %add.ptr141 = getelementptr inbounds i8, i8* %c.8, i64 1, !dbg !563
  %idx.ext142 = sext i32 %pre.0 to i64, !dbg !564
  %idx.neg143 = sub nsw i64 0, %idx.ext142, !dbg !564
  %add.ptr144 = getelementptr inbounds i8, i8* %add.ptr141, i64 %idx.neg143, !dbg !564
  call void @llvm.dbg.value(metadata i8* %add.ptr144, metadata !415, metadata !DIExpression()), !dbg !424
  %add.ptr145 = getelementptr inbounds i8, i8* %add.ptr144, i64 1, !dbg !565
  store i8 0, i8* %add.ptr145, align 1, !dbg !566
  br label %for.cond146, !dbg !567

for.cond146:                                      ; preds = %for.body149, %if.end140
  %t.1 = phi i8* [ %add.ptr144, %if.end140 ], [ %incdec.ptr152, %for.body149 ], !dbg !424
  %s.1 = phi i8* [ %add.ptr101, %if.end140 ], [ %incdec.ptr151, %for.body149 ], !dbg !424
  call void @llvm.dbg.value(metadata i8* %s.1, metadata !414, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i8* %t.1, metadata !415, metadata !DIExpression()), !dbg !424
  %cmp147 = icmp ult i8* %s.1, %c.2, !dbg !568
  br i1 %cmp147, label %for.end153, label %for.body149, !dbg !571

for.body149:                                      ; preds = %for.cond146
  %12 = load i8, i8* %s.1, align 1, !dbg !572
  store i8 %12, i8* %t.1, align 1, !dbg !573
  %incdec.ptr151 = getelementptr inbounds i8, i8* %s.1, i64 -1, !dbg !574
  call void @llvm.dbg.value(metadata i8* %incdec.ptr151, metadata !414, metadata !DIExpression()), !dbg !424
  %incdec.ptr152 = getelementptr inbounds i8, i8* %t.1, i64 -1, !dbg !575
  call void @llvm.dbg.value(metadata i8* %incdec.ptr152, metadata !415, metadata !DIExpression()), !dbg !424
  br label %for.cond146, !dbg !576, !llvm.loop !577

for.end153:                                       ; preds = %for.cond146
  call void @llvm.dbg.value(metadata i8* %c.2, metadata !410, metadata !DIExpression()), !dbg !424
  %incdec.ptr154 = getelementptr inbounds i8, i8* %c.2, i64 1, !dbg !579
  call void @llvm.dbg.value(metadata i8* %incdec.ptr154, metadata !410, metadata !DIExpression()), !dbg !424
  store i8 48, i8* %c.2, align 1, !dbg !580
  %incdec.ptr155 = getelementptr inbounds i8, i8* %c.2, i64 2, !dbg !581
  call void @llvm.dbg.value(metadata i8* %incdec.ptr155, metadata !410, metadata !DIExpression()), !dbg !424
  store i8 46, i8* %incdec.ptr154, align 1, !dbg !582
  br label %for.cond156, !dbg !583

for.cond156:                                      ; preds = %for.body159, %for.end153
  %c.11 = phi i8* [ %incdec.ptr155, %for.end153 ], [ %incdec.ptr160, %for.body159 ], !dbg !424
  %pre.1 = phi i32 [ %pre.0, %for.end153 ], [ %inc, %for.body159 ], !dbg !424
  call void @llvm.dbg.value(metadata i32 %pre.1, metadata !417, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i8* %c.11, metadata !410, metadata !DIExpression()), !dbg !424
  %cmp157 = icmp slt i32 %pre.1, 0, !dbg !584
  br i1 %cmp157, label %for.body159, label %cleanup.loopexit, !dbg !587

for.body159:                                      ; preds = %for.cond156
  %incdec.ptr160 = getelementptr inbounds i8, i8* %c.11, i64 1, !dbg !588
  call void @llvm.dbg.value(metadata i8* %incdec.ptr160, metadata !410, metadata !DIExpression()), !dbg !424
  store i8 48, i8* %c.11, align 1, !dbg !589
  %inc = add nsw i32 %pre.1, 1, !dbg !590
  call void @llvm.dbg.value(metadata i32 %inc, metadata !417, metadata !DIExpression()), !dbg !424
  br label %for.cond156, !dbg !591, !llvm.loop !592

cleanup.loopexit:                                 ; preds = %for.cond156
  br label %cleanup, !dbg !594

cleanup:                                          ; preds = %cleanup.loopexit, %if.end13, %if.end139, %if.then89, %if.then6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !594
  ret i8* %string, !dbg !594
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal32* @__dpd32FromString(%struct.decimal32* %result, i8* %string, %struct.decContext* %set) local_unnamed_addr #3 !dbg !595 {
entry:
  %dc = alloca %struct.decContext, align 4
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal32* %result, metadata !599, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i8* %string, metadata !600, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !601, metadata !DIExpression()), !dbg !604
  %0 = bitcast %struct.decContext* %dc to i8*, !dbg !605
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #8, !dbg !605
  %1 = bitcast %struct.decNumber* %dn to i8*, !dbg !606
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !606
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !602, metadata !DIExpression(DW_OP_deref)), !dbg !604
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 32) #7, !dbg !607
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 3, !dbg !608
  %2 = load i32, i32* %round, align 4, !dbg !608
  %round1 = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 3, !dbg !609
  store i32 %2, i32* %round1, align 4, !dbg !610
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !602, metadata !DIExpression(DW_OP_deref)), !dbg !604
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !603, metadata !DIExpression(DW_OP_deref)), !dbg !604
  %call2 = call %struct.decNumber* @decNumberFromString(%struct.decNumber* nonnull %dn, i8* %string, %struct.decContext* nonnull %dc) #7, !dbg !611
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !602, metadata !DIExpression(DW_OP_deref)), !dbg !604
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !603, metadata !DIExpression(DW_OP_deref)), !dbg !604
  %call3 = call %struct.decimal32* @__dpd32FromNumber(%struct.decimal32* %result, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %dc) #9, !dbg !612
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 5, !dbg !613
  %3 = load i32, i32* %status, align 4, !dbg !613
  %cmp = icmp eq i32 %3, 0, !dbg !615
  br i1 %cmp, label %if.end, label %if.then, !dbg !616

if.then:                                          ; preds = %entry
  %call5 = call %struct.decContext* @decContextSetStatus(%struct.decContext* %set, i32 %3) #7, !dbg !617
  br label %if.end, !dbg !619

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !620
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #8, !dbg !620
  ret %struct.decimal32* %result, !dbg !621
}

declare dso_local %struct.decNumber* @decNumberFromString(%struct.decNumber*, i8*, %struct.decContext*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @decimal32IsCanonical(%struct.decimal32* %d32) local_unnamed_addr #3 !dbg !622 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %canon = alloca %struct.decimal32, align 1
  %dc = alloca %struct.decContext, align 4
  call void @llvm.dbg.value(metadata %struct.decimal32* %d32, metadata !626, metadata !DIExpression()), !dbg !630
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !631
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !631
  %1 = getelementptr inbounds %struct.decimal32, %struct.decimal32* %canon, i64 0, i32 0, i64 0, !dbg !632
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !632
  %2 = bitcast %struct.decContext* %dc to i8*, !dbg !633
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %2) #8, !dbg !633
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !629, metadata !DIExpression(DW_OP_deref)), !dbg !630
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 32) #7, !dbg !634
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !627, metadata !DIExpression(DW_OP_deref)), !dbg !630
  %call1 = call %struct.decNumber* @__dpd32ToNumber(%struct.decimal32* %d32, %struct.decNumber* nonnull %dn) #9, !dbg !635
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !627, metadata !DIExpression(DW_OP_deref)), !dbg !630
  call void @llvm.dbg.value(metadata %struct.decimal32* %canon, metadata !628, metadata !DIExpression(DW_OP_deref)), !dbg !630
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !629, metadata !DIExpression(DW_OP_deref)), !dbg !630
  %call2 = call %struct.decimal32* @__dpd32FromNumber(%struct.decimal32* nonnull %canon, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %dc) #9, !dbg !636
  %3 = getelementptr inbounds %struct.decimal32, %struct.decimal32* %d32, i64 0, i32 0, i64 0, !dbg !637
  %call3 = call i32 @memcmp(i8* %3, i8* nonnull %1, i64 4) #10, !dbg !638
  %cmp = icmp eq i32 %call3, 0, !dbg !639
  %conv = zext i1 %cmp to i32, !dbg !639
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %2) #8, !dbg !640
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !640
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !640
  ret i32 %conv, !dbg !641
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal32* @decimal32Canonical(%struct.decimal32* %result, %struct.decimal32* %d32) local_unnamed_addr #3 !dbg !642 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %dc = alloca %struct.decContext, align 4
  call void @llvm.dbg.value(metadata %struct.decimal32* %result, metadata !646, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.value(metadata %struct.decimal32* %d32, metadata !647, metadata !DIExpression()), !dbg !650
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !651
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !651
  %1 = bitcast %struct.decContext* %dc to i8*, !dbg !652
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %1) #8, !dbg !652
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !649, metadata !DIExpression(DW_OP_deref)), !dbg !650
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 32) #7, !dbg !653
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !650
  %call1 = call %struct.decNumber* @__dpd32ToNumber(%struct.decimal32* %d32, %struct.decNumber* nonnull %dn) #9, !dbg !654
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !648, metadata !DIExpression(DW_OP_deref)), !dbg !650
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !649, metadata !DIExpression(DW_OP_deref)), !dbg !650
  %call2 = call %struct.decimal32* @__dpd32FromNumber(%struct.decimal32* %result, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %dc) #9, !dbg !655
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %1) #8, !dbg !656
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !656
  ret %struct.decimal32* %result, !dbg !657
}

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal32* @decimal32FromNumber(%struct.decimal32* %d32, %struct.decNumber* %dn, %struct.decContext* %set) local_unnamed_addr #3 !dbg !658 {
entry:
  %u = alloca %union.anon, align 4
  call void @llvm.dbg.value(metadata %struct.decimal32* %d32, metadata !660, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !661, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !662, metadata !DIExpression()), !dbg !670
  %0 = bitcast %union.anon* %u to i8*, !dbg !671
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !671
  %call = tail call %struct.decimal32* @__dpd32FromNumber(%struct.decimal32* %d32, %struct.decNumber* %dn, %struct.decContext* %set) #9, !dbg !672
  %_Dec = getelementptr inbounds %union.anon, %union.anon* %u, i64 0, i32 0, !dbg !673
  %1 = bitcast %struct.decimal32* %d32 to i32*, !dbg !674
  %2 = load i32, i32* %1, align 1, !dbg !674
  call void @__ieee_to_host_32(i32 %2, i32* nonnull %_Dec) #7, !dbg !674
  call void @_dpd_to_bid32(i32* nonnull %_Dec, i32* nonnull %_Dec) #7, !dbg !675
  %3 = load i32, i32* %_Dec, align 4, !dbg !676
  %dec = bitcast %union.anon* %u to %struct.decimal32*, !dbg !677
  call void @__host_to_ieee_32(i32 %3, %struct.decimal32* nonnull %dec) #7, !dbg !678
  %4 = load i32, i32* %_Dec, align 4, !dbg !679
  store i32 %4, i32* %1, align 1, !dbg !679
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !680
  ret %struct.decimal32* %d32, !dbg !681
}

declare dso_local void @__ieee_to_host_32(i32, i32*) local_unnamed_addr #1

declare dso_local void @_dpd_to_bid32(i32*, i32*) local_unnamed_addr #1

declare dso_local void @__host_to_ieee_32(i32, %struct.decimal32*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.decNumber* @decimal32ToNumber(%struct.decimal32* %bid32, %struct.decNumber* %dn) local_unnamed_addr #3 !dbg !682 {
entry:
  %u = alloca %union.anon.0, align 4
  call void @llvm.dbg.value(metadata %struct.decimal32* %bid32, metadata !684, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !685, metadata !DIExpression()), !dbg !691
  %0 = bitcast %union.anon.0* %u to i8*, !dbg !692
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !692
  %_Dec = getelementptr inbounds %union.anon.0, %union.anon.0* %u, i64 0, i32 0, !dbg !693
  %1 = bitcast %struct.decimal32* %bid32 to i32*, !dbg !694
  %2 = load i32, i32* %1, align 1, !dbg !694
  call void @__ieee_to_host_32(i32 %2, i32* nonnull %_Dec) #7, !dbg !694
  call void @_bid_to_dpd32(i32* nonnull %_Dec, i32* nonnull %_Dec) #7, !dbg !695
  %3 = load i32, i32* %_Dec, align 4, !dbg !696
  %dec = bitcast %union.anon.0* %u to %struct.decimal32*, !dbg !697
  call void @__host_to_ieee_32(i32 %3, %struct.decimal32* nonnull %dec) #7, !dbg !698
  %call = call %struct.decNumber* @__dpd32ToNumber(%struct.decimal32* nonnull %dec, %struct.decNumber* %dn) #9, !dbg !699
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !700
  ret %struct.decNumber* %call, !dbg !701
}

declare dso_local void @_bid_to_dpd32(i32*, i32*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @decimal32ToString(%struct.decimal32* %d32, i8* %string) local_unnamed_addr #3 !dbg !702 {
entry:
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal32* %d32, metadata !704, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i8* %string, metadata !705, metadata !DIExpression()), !dbg !707
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !708
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !708
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !706, metadata !DIExpression(DW_OP_deref)), !dbg !707
  %call = call %struct.decNumber* @decimal32ToNumber(%struct.decimal32* %d32, %struct.decNumber* nonnull %dn) #9, !dbg !709
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !706, metadata !DIExpression(DW_OP_deref)), !dbg !707
  %call1 = call i8* @decNumberToString(%struct.decNumber* nonnull %dn, i8* %string) #7, !dbg !710
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !711
  ret i8* %string, !dbg !712
}

declare dso_local i8* @decNumberToString(%struct.decNumber*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @decimal32ToEngString(%struct.decimal32* %d32, i8* %string) local_unnamed_addr #3 !dbg !713 {
entry:
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal32* %d32, metadata !715, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %string, metadata !716, metadata !DIExpression()), !dbg !718
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !719
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !719
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !717, metadata !DIExpression(DW_OP_deref)), !dbg !718
  %call = call %struct.decNumber* @decimal32ToNumber(%struct.decimal32* %d32, %struct.decNumber* nonnull %dn) #9, !dbg !720
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !717, metadata !DIExpression(DW_OP_deref)), !dbg !718
  %call1 = call i8* @decNumberToEngString(%struct.decNumber* nonnull %dn, i8* %string) #7, !dbg !721
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !722
  ret i8* %string, !dbg !723
}

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal32* @decimal32FromString(%struct.decimal32* %result, i8* %string, %struct.decContext* %set) local_unnamed_addr #3 !dbg !724 {
entry:
  %dc = alloca %struct.decContext, align 4
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal32* %result, metadata !726, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i8* %string, metadata !727, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !728, metadata !DIExpression()), !dbg !731
  %0 = bitcast %struct.decContext* %dc to i8*, !dbg !732
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #8, !dbg !732
  %1 = bitcast %struct.decNumber* %dn to i8*, !dbg !733
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !733
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !729, metadata !DIExpression(DW_OP_deref)), !dbg !731
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 32) #7, !dbg !734
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 3, !dbg !735
  %2 = load i32, i32* %round, align 4, !dbg !735
  %round1 = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 3, !dbg !736
  store i32 %2, i32* %round1, align 4, !dbg !737
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !729, metadata !DIExpression(DW_OP_deref)), !dbg !731
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !730, metadata !DIExpression(DW_OP_deref)), !dbg !731
  %call2 = call %struct.decNumber* @decNumberFromString(%struct.decNumber* nonnull %dn, i8* %string, %struct.decContext* nonnull %dc) #7, !dbg !738
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !729, metadata !DIExpression(DW_OP_deref)), !dbg !731
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !730, metadata !DIExpression(DW_OP_deref)), !dbg !731
  %call3 = call %struct.decimal32* @decimal32FromNumber(%struct.decimal32* %result, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %dc) #9, !dbg !739
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 5, !dbg !740
  %3 = load i32, i32* %status, align 4, !dbg !740
  %cmp = icmp eq i32 %3, 0, !dbg !742
  br i1 %cmp, label %if.end, label %if.then, !dbg !743

if.then:                                          ; preds = %entry
  %call5 = call %struct.decContext* @decContextSetStatus(%struct.decContext* %set, i32 %3) #7, !dbg !744
  br label %if.end, !dbg !746

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !747
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #8, !dbg !747
  ret %struct.decimal32* %result, !dbg !748
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !16, nameTableKind: None)
!1 = !DIFile(filename: "decimal32.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rounding", file: !4, line: 69, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./decContext.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15}
!7 = !DIEnumerator(name: "DEC_ROUND_CEILING", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "DEC_ROUND_UP", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "DEC_ROUND_HALF_UP", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "DEC_ROUND_HALF_EVEN", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "DEC_ROUND_HALF_DOWN", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "DEC_ROUND_DOWN", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "DEC_ROUND_FLOOR", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "DEC_ROUND_05UP", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "DEC_ROUND_MAX", value: 8, isUnsigned: true)
!16 = !{!17, !18, !21, !22, !24, !28, !20}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 26, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !27, line: 42, baseType: !5)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !29, line: 26, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !27, line: 41, baseType: !17)
!31 = !{i32 2, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!35 = distinct !DISubprogram(name: "atoi", scope: !36, file: !36, line: 361, type: !37, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!36 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!37 = !DISubroutineType(types: !38)
!38 = !{!17, !22}
!39 = !{!40}
!40 = !DILocalVariable(name: "__nptr", arg: 1, scope: !35, file: !36, line: 361, type: !22)
!41 = !DILocation(line: 0, scope: !35)
!42 = !DILocation(line: 363, column: 16, scope: !35)
!43 = !DILocation(line: 363, column: 10, scope: !35)
!44 = !DILocation(line: 363, column: 3, scope: !35)
!45 = distinct !DISubprogram(name: "atol", scope: !36, file: !36, line: 366, type: !46, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !22}
!48 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!49 = !{!50}
!50 = !DILocalVariable(name: "__nptr", arg: 1, scope: !45, file: !36, line: 366, type: !22)
!51 = !DILocation(line: 0, scope: !45)
!52 = !DILocation(line: 368, column: 10, scope: !45)
!53 = !DILocation(line: 368, column: 3, scope: !45)
!54 = distinct !DISubprogram(name: "atoll", scope: !36, file: !36, line: 373, type: !55, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !58)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !22}
!57 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!58 = !{!59}
!59 = !DILocalVariable(name: "__nptr", arg: 1, scope: !54, file: !36, line: 373, type: !22)
!60 = !DILocation(line: 0, scope: !54)
!61 = !DILocation(line: 375, column: 10, scope: !54)
!62 = !DILocation(line: 375, column: 3, scope: !54)
!63 = distinct !DISubprogram(name: "bsearch", scope: !64, file: !64, line: 20, type: !65, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!65 = !DISubroutineType(types: !66)
!66 = !{!21, !67, !67, !69, !69, !72}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !36, line: 808, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!17, !67, !67}
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!77 = !DILocalVariable(name: "__key", arg: 1, scope: !63, file: !64, line: 20, type: !67)
!78 = !DILocalVariable(name: "__base", arg: 2, scope: !63, file: !64, line: 20, type: !67)
!79 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !63, file: !64, line: 20, type: !69)
!80 = !DILocalVariable(name: "__size", arg: 4, scope: !63, file: !64, line: 20, type: !69)
!81 = !DILocalVariable(name: "__compar", arg: 5, scope: !63, file: !64, line: 21, type: !72)
!82 = !DILocalVariable(name: "__l", scope: !63, file: !64, line: 23, type: !69)
!83 = !DILocalVariable(name: "__u", scope: !63, file: !64, line: 23, type: !69)
!84 = !DILocalVariable(name: "__idx", scope: !63, file: !64, line: 23, type: !69)
!85 = !DILocalVariable(name: "__p", scope: !63, file: !64, line: 24, type: !67)
!86 = !DILocalVariable(name: "__comparison", scope: !63, file: !64, line: 25, type: !17)
!87 = !DILocation(line: 0, scope: !63)
!88 = !DILocation(line: 29, column: 3, scope: !63)
!89 = !DILocation(line: 27, column: 7, scope: !63)
!90 = !DILocation(line: 29, column: 14, scope: !63)
!91 = !DILocation(line: 31, column: 20, scope: !92)
!92 = distinct !DILexicalBlock(scope: !63, file: !64, line: 30, column: 5)
!93 = !DILocation(line: 31, column: 27, scope: !92)
!94 = !DILocation(line: 32, column: 56, scope: !92)
!95 = !DILocation(line: 32, column: 47, scope: !92)
!96 = !DILocation(line: 33, column: 22, scope: !92)
!97 = !DILocation(line: 34, column: 24, scope: !98)
!98 = distinct !DILexicalBlock(scope: !92, file: !64, line: 34, column: 11)
!99 = !DILocation(line: 34, column: 11, scope: !92)
!100 = !DILocation(line: 36, column: 29, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !64, line: 36, column: 16)
!102 = !DILocation(line: 36, column: 16, scope: !98)
!103 = !DILocation(line: 37, column: 14, scope: !101)
!104 = distinct !{!104, !88, !105}
!105 = !DILocation(line: 40, column: 5, scope: !63)
!106 = !DILocation(line: 43, column: 1, scope: !63)
!107 = distinct !DISubprogram(name: "atof", scope: !108, file: !108, line: 25, type: !109, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !112)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !22}
!111 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!112 = !{!113}
!113 = !DILocalVariable(name: "__nptr", arg: 1, scope: !107, file: !108, line: 25, type: !22)
!114 = !DILocation(line: 0, scope: !107)
!115 = !DILocation(line: 27, column: 10, scope: !107)
!116 = !DILocation(line: 27, column: 3, scope: !107)
!117 = distinct !DISubprogram(name: "__dpd32FromNumber", scope: !1, file: !1, line: 115, type: !118, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !159)
!118 = !DISubroutineType(types: !119)
!119 = !{!120, !120, !132, !148}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "decimal32", file: !122, line: 64, baseType: !123)
!122 = !DIFile(filename: "./decimal32.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 62, size: 32, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !123, file: !122, line: 63, baseType: !126, size: 32)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 32, elements: !130)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !25, line: 24, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !27, line: 38, baseType: !129)
!129 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!130 = !{!131}
!131 = !DISubrange(count: 4)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "decNumber", file: !135, line: 84, baseType: !136)
!135 = !DIFile(filename: "./decNumber.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 77, size: 128, elements: !137)
!137 = !{!138, !139, !140, !141}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !136, file: !135, line: 78, baseType: !28, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "exponent", scope: !136, file: !135, line: 79, baseType: !28, size: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !136, file: !135, line: 81, baseType: !127, size: 8, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "lsu", scope: !136, file: !135, line: 83, baseType: !142, size: 48, offset: 80)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 48, elements: !146)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !25, line: 25, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !27, line: 40, baseType: !145)
!145 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!146 = !{!147}
!147 = !DISubrange(count: 3)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "decContext", file: !4, line: 93, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 82, size: 224, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !150, file: !4, line: 83, baseType: !28, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !150, file: !4, line: 84, baseType: !28, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !150, file: !4, line: 85, baseType: !28, size: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "round", scope: !150, file: !4, line: 86, baseType: !3, size: 32, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "traps", scope: !150, file: !4, line: 87, baseType: !24, size: 32, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !150, file: !4, line: 88, baseType: !24, size: 32, offset: 160)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "clamp", scope: !150, file: !4, line: 89, baseType: !127, size: 8, offset: 192)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !176}
!160 = !DILocalVariable(name: "d32", arg: 1, scope: !117, file: !1, line: 115, type: !120)
!161 = !DILocalVariable(name: "dn", arg: 2, scope: !117, file: !1, line: 115, type: !132)
!162 = !DILocalVariable(name: "set", arg: 3, scope: !117, file: !1, line: 116, type: !148)
!163 = !DILocalVariable(name: "status", scope: !117, file: !1, line: 117, type: !24)
!164 = !DILocalVariable(name: "ae", scope: !117, file: !1, line: 118, type: !28)
!165 = !DILocalVariable(name: "dw", scope: !117, file: !1, line: 119, type: !134)
!166 = !DILocalVariable(name: "dc", scope: !117, file: !1, line: 120, type: !149)
!167 = !DILocalVariable(name: "comb", scope: !117, file: !1, line: 121, type: !24)
!168 = !DILocalVariable(name: "exp", scope: !117, file: !1, line: 121, type: !24)
!169 = !DILocalVariable(name: "uiwork", scope: !117, file: !1, line: 122, type: !24)
!170 = !DILocalVariable(name: "targ", scope: !117, file: !1, line: 123, type: !24)
!171 = !DILocalVariable(name: "msd", scope: !172, file: !1, line: 172, type: !24)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 171, column: 11)
!173 = distinct !DILexicalBlock(scope: !174, file: !1, line: 156, column: 9)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 155, column: 9)
!175 = distinct !DILexicalBlock(scope: !117, file: !1, line: 143, column: 7)
!176 = !DILocalVariable(name: "pad", scope: !172, file: !1, line: 173, type: !28)
!177 = !DILocation(line: 0, scope: !117)
!178 = !DILocation(line: 119, column: 3, scope: !117)
!179 = !DILocation(line: 120, column: 3, scope: !117)
!180 = !DILocation(line: 122, column: 3, scope: !117)
!181 = !DILocation(line: 123, column: 3, scope: !117)
!182 = !DILocation(line: 123, column: 8, scope: !117)
!183 = !DILocation(line: 130, column: 10, scope: !117)
!184 = !DILocation(line: 130, column: 23, scope: !117)
!185 = !DILocation(line: 130, column: 18, scope: !117)
!186 = !DILocation(line: 131, column: 17, scope: !187)
!187 = distinct !DILexicalBlock(scope: !117, file: !1, line: 131, column: 7)
!188 = !DILocation(line: 132, column: 4, scope: !187)
!189 = !DILocation(line: 0, scope: !175)
!190 = !DILocation(line: 143, column: 11, scope: !175)
!191 = !DILocation(line: 134, column: 5, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !1, line: 133, column: 26)
!193 = !DILocation(line: 135, column: 19, scope: !192)
!194 = !DILocation(line: 135, column: 8, scope: !192)
!195 = !DILocation(line: 135, column: 13, scope: !192)
!196 = !DILocation(line: 136, column: 5, scope: !192)
!197 = !DILocation(line: 138, column: 18, scope: !192)
!198 = !DILocation(line: 138, column: 22, scope: !192)
!199 = !DILocation(line: 138, column: 8, scope: !192)
!200 = !DILocation(line: 138, column: 12, scope: !192)
!201 = !DILocation(line: 139, column: 15, scope: !192)
!202 = !DILocation(line: 141, column: 5, scope: !192)
!203 = !DILocation(line: 143, column: 15, scope: !175)
!204 = !DILocation(line: 143, column: 7, scope: !117)
!205 = !DILocation(line: 144, column: 17, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 144, column: 9)
!207 = distinct !DILexicalBlock(scope: !175, file: !1, line: 143, column: 28)
!208 = !DILocation(line: 144, column: 9, scope: !207)
!209 = !DILocation(line: 144, column: 30, scope: !206)
!210 = !DILocation(line: 144, column: 26, scope: !206)
!211 = !DILocation(line: 146, column: 12, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !1, line: 146, column: 11)
!213 = distinct !DILexicalBlock(scope: !206, file: !1, line: 145, column: 11)
!214 = !DILocation(line: 146, column: 20, scope: !212)
!215 = !DILocation(line: 146, column: 24, scope: !212)
!216 = !DILocation(line: 0, scope: !212)
!217 = !DILocation(line: 147, column: 16, scope: !212)
!218 = !DILocation(line: 146, column: 31, scope: !212)
!219 = !DILocation(line: 146, column: 37, scope: !212)
!220 = !DILocation(line: 147, column: 8, scope: !212)
!221 = !DILocation(line: 147, column: 22, scope: !212)
!222 = !DILocation(line: 146, column: 11, scope: !213)
!223 = !DILocation(line: 148, column: 2, scope: !224)
!224 = distinct !DILexicalBlock(scope: !212, file: !1, line: 147, column: 40)
!225 = !DILocation(line: 150, column: 15, scope: !226)
!226 = distinct !DILexicalBlock(scope: !213, file: !1, line: 150, column: 11)
!227 = !DILocation(line: 149, column: 2, scope: !224)
!228 = !DILocation(line: 150, column: 19, scope: !226)
!229 = !DILocation(line: 0, scope: !226)
!230 = !DILocation(line: 150, column: 11, scope: !213)
!231 = !DILocation(line: 150, column: 32, scope: !226)
!232 = !DILocation(line: 150, column: 28, scope: !226)
!233 = !DILocation(line: 151, column: 17, scope: !226)
!234 = !DILocation(line: 156, column: 9, scope: !173)
!235 = !DILocation(line: 156, column: 9, scope: !174)
!236 = !DILocation(line: 158, column: 15, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 158, column: 11)
!238 = distinct !DILexicalBlock(scope: !173, file: !1, line: 156, column: 30)
!239 = !DILocation(line: 158, column: 23, scope: !237)
!240 = !DILocation(line: 158, column: 11, scope: !238)
!241 = !DILocation(line: 160, column: 8, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 158, column: 41)
!243 = !DILocation(line: 161, column: 2, scope: !242)
!244 = !DILocation(line: 163, column: 18, scope: !245)
!245 = distinct !DILexicalBlock(scope: !237, file: !1, line: 162, column: 13)
!246 = !DILocation(line: 164, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !245, file: !1, line: 164, column: 6)
!248 = !DILocation(line: 166, column: 10, scope: !249)
!249 = distinct !DILexicalBlock(scope: !247, file: !1, line: 164, column: 27)
!250 = !DILocation(line: 164, column: 6, scope: !245)
!251 = !DILocation(line: 0, scope: !237)
!252 = !DILocation(line: 169, column: 16, scope: !238)
!253 = !DILocation(line: 169, column: 21, scope: !238)
!254 = !DILocation(line: 200, column: 9, scope: !174)
!255 = !DILocation(line: 170, column: 7, scope: !238)
!256 = !DILocation(line: 0, scope: !172)
!257 = !DILocation(line: 176, column: 22, scope: !172)
!258 = !DILocation(line: 176, column: 30, scope: !172)
!259 = !DILocation(line: 177, column: 14, scope: !260)
!260 = distinct !DILexicalBlock(scope: !172, file: !1, line: 177, column: 11)
!261 = !DILocation(line: 177, column: 11, scope: !172)
!262 = !DILocation(line: 184, column: 28, scope: !263)
!263 = distinct !DILexicalBlock(scope: !172, file: !1, line: 184, column: 11)
!264 = !DILocation(line: 184, column: 11, scope: !172)
!265 = !DILocation(line: 185, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !1, line: 184, column: 33)
!267 = !DILocation(line: 185, column: 6, scope: !266)
!268 = !DILocation(line: 186, column: 10, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !1, line: 186, column: 6)
!270 = !DILocation(line: 186, column: 16, scope: !269)
!271 = !DILocation(line: 186, column: 6, scope: !266)
!272 = !DILocation(line: 186, column: 41, scope: !269)
!273 = !DILocation(line: 186, column: 33, scope: !269)
!274 = !DILocation(line: 186, column: 26, scope: !269)
!275 = !DILocation(line: 186, column: 53, scope: !269)
!276 = !DILocation(line: 186, column: 24, scope: !269)
!277 = !DILocation(line: 186, column: 20, scope: !269)
!278 = !DILocation(line: 187, column: 17, scope: !266)
!279 = !DILocation(line: 187, column: 7, scope: !266)
!280 = !DILocation(line: 187, column: 23, scope: !266)
!281 = !DILocation(line: 190, column: 2, scope: !282)
!282 = distinct !DILexicalBlock(scope: !263, file: !1, line: 189, column: 13)
!283 = !DILocation(line: 192, column: 6, scope: !282)
!284 = !DILocation(line: 192, column: 10, scope: !282)
!285 = !DILocation(line: 193, column: 6, scope: !282)
!286 = !DILocation(line: 0, scope: !263)
!287 = !DILocation(line: 197, column: 14, scope: !288)
!288 = distinct !DILexicalBlock(scope: !172, file: !1, line: 197, column: 11)
!289 = !DILocation(line: 197, column: 11, scope: !172)
!290 = !DILocation(line: 197, column: 36, scope: !288)
!291 = !DILocation(line: 197, column: 41, scope: !288)
!292 = !DILocation(line: 197, column: 56, scope: !288)
!293 = !DILocation(line: 197, column: 49, scope: !288)
!294 = !DILocation(line: 197, column: 19, scope: !288)
!295 = !DILocation(line: 198, column: 22, scope: !288)
!296 = !DILocation(line: 198, column: 27, scope: !288)
!297 = !DILocation(line: 198, column: 35, scope: !288)
!298 = !DILocation(line: 0, scope: !173)
!299 = !DILocation(line: 200, column: 15, scope: !174)
!300 = !DILocation(line: 201, column: 21, scope: !174)
!301 = !DILocation(line: 201, column: 9, scope: !174)
!302 = !DILocation(line: 204, column: 11, scope: !303)
!303 = distinct !DILexicalBlock(scope: !117, file: !1, line: 204, column: 7)
!304 = !DILocation(line: 204, column: 15, scope: !303)
!305 = !DILocation(line: 204, column: 7, scope: !117)
!306 = !DILocation(line: 204, column: 28, scope: !303)
!307 = !DILocation(line: 204, column: 24, scope: !303)
!308 = !DILocation(line: 208, column: 9, scope: !117)
!309 = !DILocation(line: 213, column: 13, scope: !310)
!310 = distinct !DILexicalBlock(scope: !117, file: !1, line: 213, column: 7)
!311 = !DILocation(line: 213, column: 7, scope: !117)
!312 = !DILocation(line: 213, column: 18, scope: !310)
!313 = !DILocation(line: 216, column: 3, scope: !117)
!314 = !DILocation(line: 215, column: 3, scope: !117)
!315 = distinct !DISubprogram(name: "__dpd32ToNumber", scope: !1, file: !1, line: 224, type: !316, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !321)
!316 = !DISubroutineType(types: !317)
!317 = !{!318, !319, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!321 = !{!322, !323, !324, !325, !326, !327, !328}
!322 = !DILocalVariable(name: "d32", arg: 1, scope: !315, file: !1, line: 224, type: !319)
!323 = !DILocalVariable(name: "dn", arg: 2, scope: !315, file: !1, line: 224, type: !318)
!324 = !DILocalVariable(name: "msd", scope: !315, file: !1, line: 225, type: !24)
!325 = !DILocalVariable(name: "exp", scope: !315, file: !1, line: 226, type: !24)
!326 = !DILocalVariable(name: "comb", scope: !315, file: !1, line: 227, type: !24)
!327 = !DILocalVariable(name: "sour", scope: !315, file: !1, line: 228, type: !24)
!328 = !DILocalVariable(name: "uiwork", scope: !315, file: !1, line: 229, type: !24)
!329 = !DILocation(line: 0, scope: !315)
!330 = !DILocation(line: 228, column: 3, scope: !315)
!331 = !DILocation(line: 229, column: 3, scope: !315)
!332 = !DILocation(line: 232, column: 8, scope: !315)
!333 = !DILocation(line: 232, column: 7, scope: !315)
!334 = !DILocation(line: 234, column: 13, scope: !315)
!335 = !DILocation(line: 234, column: 18, scope: !315)
!336 = !DILocation(line: 236, column: 3, scope: !315)
!337 = !DILocation(line: 237, column: 11, scope: !338)
!338 = distinct !DILexicalBlock(scope: !315, file: !1, line: 237, column: 7)
!339 = !DILocation(line: 237, column: 7, scope: !315)
!340 = !DILocation(line: 237, column: 28, scope: !338)
!341 = !DILocation(line: 237, column: 32, scope: !338)
!342 = !DILocation(line: 237, column: 24, scope: !338)
!343 = !DILocation(line: 239, column: 7, scope: !315)
!344 = !DILocation(line: 240, column: 7, scope: !315)
!345 = !DILocation(line: 242, column: 10, scope: !346)
!346 = distinct !DILexicalBlock(scope: !315, file: !1, line: 242, column: 7)
!347 = !DILocation(line: 242, column: 7, scope: !315)
!348 = !DILocation(line: 243, column: 12, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !1, line: 243, column: 9)
!350 = distinct !DILexicalBlock(scope: !346, file: !1, line: 242, column: 15)
!351 = !DILocation(line: 243, column: 9, scope: !350)
!352 = !DILocation(line: 244, column: 11, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !1, line: 243, column: 17)
!354 = !DILocation(line: 244, column: 15, scope: !353)
!355 = !DILocation(line: 245, column: 7, scope: !353)
!356 = !DILocation(line: 247, column: 18, scope: !357)
!357 = distinct !DILexicalBlock(scope: !349, file: !1, line: 247, column: 14)
!358 = !DILocation(line: 0, scope: !357)
!359 = !DILocation(line: 247, column: 14, scope: !349)
!360 = !DILocation(line: 247, column: 39, scope: !357)
!361 = !DILocation(line: 247, column: 31, scope: !357)
!362 = !DILocation(line: 248, column: 18, scope: !357)
!363 = !DILocation(line: 252, column: 22, scope: !364)
!364 = distinct !DILexicalBlock(scope: !346, file: !1, line: 251, column: 9)
!365 = !DILocation(line: 252, column: 33, scope: !364)
!366 = !DILocation(line: 252, column: 38, scope: !364)
!367 = !DILocation(line: 252, column: 26, scope: !364)
!368 = !DILocation(line: 252, column: 44, scope: !364)
!369 = !DILocation(line: 252, column: 9, scope: !364)
!370 = !DILocation(line: 252, column: 17, scope: !364)
!371 = !DILocation(line: 256, column: 7, scope: !315)
!372 = !DILocation(line: 257, column: 7, scope: !373)
!373 = distinct !DILexicalBlock(scope: !315, file: !1, line: 257, column: 7)
!374 = !DILocation(line: 257, column: 7, scope: !315)
!375 = !DILocation(line: 258, column: 14, scope: !376)
!376 = distinct !DILexicalBlock(scope: !373, file: !1, line: 257, column: 12)
!377 = !DILocation(line: 258, column: 9, scope: !376)
!378 = !DILocation(line: 259, column: 5, scope: !376)
!379 = !DILocation(line: 260, column: 5, scope: !376)
!380 = !DILocation(line: 263, column: 8, scope: !381)
!381 = distinct !DILexicalBlock(scope: !315, file: !1, line: 263, column: 7)
!382 = !DILocation(line: 263, column: 7, scope: !315)
!383 = !DILocation(line: 264, column: 11, scope: !384)
!384 = distinct !DILexicalBlock(scope: !315, file: !1, line: 264, column: 7)
!385 = !DILocation(line: 264, column: 7, scope: !315)
!386 = !DILocation(line: 265, column: 5, scope: !384)
!387 = !DILocation(line: 267, column: 5, scope: !384)
!388 = !DILocation(line: 269, column: 3, scope: !315)
!389 = distinct !DISubprogram(name: "__dpd32ToEngString", scope: !1, file: !1, line: 285, type: !390, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !392)
!390 = !DISubroutineType(types: !391)
!391 = !{!19, !319, !19}
!392 = !{!393, !394, !395}
!393 = !DILocalVariable(name: "d32", arg: 1, scope: !389, file: !1, line: 285, type: !319)
!394 = !DILocalVariable(name: "string", arg: 2, scope: !389, file: !1, line: 285, type: !19)
!395 = !DILocalVariable(name: "dn", scope: !389, file: !1, line: 286, type: !134)
!396 = !DILocation(line: 0, scope: !389)
!397 = !DILocation(line: 286, column: 3, scope: !389)
!398 = !DILocation(line: 287, column: 3, scope: !389)
!399 = !DILocation(line: 288, column: 3, scope: !389)
!400 = !DILocation(line: 290, column: 3, scope: !389)
!401 = !DILocation(line: 289, column: 3, scope: !389)
!402 = distinct !DISubprogram(name: "__dpd32ToString", scope: !1, file: !1, line: 292, type: !390, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !414, !415, !416, !417, !418, !419, !420, !421}
!404 = !DILocalVariable(name: "d32", arg: 1, scope: !402, file: !1, line: 292, type: !319)
!405 = !DILocalVariable(name: "string", arg: 2, scope: !402, file: !1, line: 292, type: !19)
!406 = !DILocalVariable(name: "msd", scope: !402, file: !1, line: 293, type: !24)
!407 = !DILocalVariable(name: "exp", scope: !402, file: !1, line: 294, type: !28)
!408 = !DILocalVariable(name: "comb", scope: !402, file: !1, line: 295, type: !24)
!409 = !DILocalVariable(name: "cstart", scope: !402, file: !1, line: 296, type: !19)
!410 = !DILocalVariable(name: "c", scope: !402, file: !1, line: 297, type: !19)
!411 = !DILocalVariable(name: "u", scope: !402, file: !1, line: 298, type: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!414 = !DILocalVariable(name: "s", scope: !402, file: !1, line: 299, type: !19)
!415 = !DILocalVariable(name: "t", scope: !402, file: !1, line: 299, type: !19)
!416 = !DILocalVariable(name: "dpd", scope: !402, file: !1, line: 300, type: !28)
!417 = !DILocalVariable(name: "pre", scope: !402, file: !1, line: 301, type: !28)
!418 = !DILocalVariable(name: "e", scope: !402, file: !1, line: 301, type: !28)
!419 = !DILocalVariable(name: "uiwork", scope: !402, file: !1, line: 302, type: !24)
!420 = !DILocalVariable(name: "sour", scope: !402, file: !1, line: 303, type: !24)
!421 = !DILocalVariable(name: "dotat", scope: !422, file: !1, line: 370, type: !19)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 369, column: 14)
!423 = distinct !DILexicalBlock(scope: !402, file: !1, line: 369, column: 7)
!424 = !DILocation(line: 0, scope: !402)
!425 = !DILocation(line: 302, column: 3, scope: !402)
!426 = !DILocation(line: 306, column: 8, scope: !402)
!427 = !DILocation(line: 309, column: 18, scope: !428)
!428 = distinct !DILexicalBlock(scope: !402, file: !1, line: 309, column: 7)
!429 = !DILocation(line: 309, column: 7, scope: !402)
!430 = !DILocation(line: 309, column: 24, scope: !428)
!431 = !DILocation(line: 309, column: 26, scope: !428)
!432 = !DILocation(line: 309, column: 22, scope: !428)
!433 = !DILocation(line: 311, column: 13, scope: !402)
!434 = !DILocation(line: 311, column: 18, scope: !402)
!435 = !DILocation(line: 312, column: 7, scope: !402)
!436 = !DILocation(line: 313, column: 7, scope: !402)
!437 = !DILocation(line: 315, column: 10, scope: !438)
!438 = distinct !DILexicalBlock(scope: !402, file: !1, line: 315, column: 7)
!439 = !DILocation(line: 315, column: 7, scope: !402)
!440 = !DILocation(line: 316, column: 12, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 316, column: 9)
!442 = distinct !DILexicalBlock(scope: !438, file: !1, line: 315, column: 15)
!443 = !DILocation(line: 316, column: 9, scope: !442)
!444 = !DILocation(line: 317, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !441, file: !1, line: 316, column: 17)
!446 = !DILocation(line: 318, column: 15, scope: !445)
!447 = !DILocation(line: 318, column: 7, scope: !445)
!448 = !DILocation(line: 319, column: 7, scope: !445)
!449 = !DILocation(line: 321, column: 13, scope: !450)
!450 = distinct !DILexicalBlock(scope: !442, file: !1, line: 321, column: 9)
!451 = !DILocation(line: 321, column: 9, scope: !442)
!452 = !DILocation(line: 321, column: 28, scope: !450)
!453 = !DILocation(line: 321, column: 30, scope: !450)
!454 = !DILocation(line: 321, column: 26, scope: !450)
!455 = !DILocation(line: 322, column: 5, scope: !442)
!456 = !DILocation(line: 323, column: 6, scope: !442)
!457 = !DILocation(line: 324, column: 14, scope: !458)
!458 = distinct !DILexicalBlock(scope: !442, file: !1, line: 324, column: 9)
!459 = !DILocation(line: 324, column: 26, scope: !458)
!460 = !DILocation(line: 324, column: 9, scope: !442)
!461 = !DILocation(line: 328, column: 17, scope: !438)
!462 = !DILocation(line: 328, column: 28, scope: !438)
!463 = !DILocation(line: 328, column: 33, scope: !438)
!464 = !DILocation(line: 328, column: 21, scope: !438)
!465 = !DILocation(line: 328, column: 39, scope: !438)
!466 = !DILocation(line: 0, scope: !438)
!467 = !DILocation(line: 332, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !402, file: !1, line: 332, column: 7)
!469 = !DILocation(line: 332, column: 7, scope: !402)
!470 = !DILocation(line: 332, column: 17, scope: !468)
!471 = !DILocation(line: 332, column: 14, scope: !468)
!472 = !DILocation(line: 332, column: 16, scope: !468)
!473 = !DILocation(line: 332, column: 12, scope: !468)
!474 = !DILocation(line: 346, column: 12, scope: !402)
!475 = !DILocation(line: 346, column: 17, scope: !402)
!476 = !DILocation(line: 347, column: 3, scope: !402)
!477 = !DILocation(line: 347, column: 3, scope: !478)
!478 = distinct !DILexicalBlock(scope: !402, file: !1, line: 347, column: 3)
!479 = !DILocation(line: 347, column: 3, scope: !480)
!480 = distinct !DILexicalBlock(scope: !478, file: !1, line: 347, column: 3)
!481 = !DILocation(line: 347, column: 3, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !1, line: 347, column: 3)
!483 = !DILocation(line: 347, column: 3, scope: !484)
!484 = distinct !DILexicalBlock(scope: !482, file: !1, line: 347, column: 3)
!485 = !DILocation(line: 0, scope: !478)
!486 = !DILocation(line: 348, column: 13, scope: !402)
!487 = !DILocation(line: 349, column: 3, scope: !402)
!488 = !DILocation(line: 349, column: 3, scope: !489)
!489 = distinct !DILexicalBlock(scope: !402, file: !1, line: 349, column: 3)
!490 = !DILocation(line: 349, column: 3, scope: !491)
!491 = distinct !DILexicalBlock(scope: !489, file: !1, line: 349, column: 3)
!492 = !DILocation(line: 349, column: 3, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !1, line: 349, column: 3)
!494 = !DILocation(line: 349, column: 3, scope: !495)
!495 = distinct !DILexicalBlock(scope: !493, file: !1, line: 349, column: 3)
!496 = !DILocation(line: 0, scope: !489)
!497 = !DILocation(line: 351, column: 8, scope: !498)
!498 = distinct !DILexicalBlock(scope: !402, file: !1, line: 351, column: 7)
!499 = !DILocation(line: 351, column: 7, scope: !402)
!500 = !DILocation(line: 351, column: 20, scope: !498)
!501 = !DILocation(line: 351, column: 22, scope: !498)
!502 = !DILocation(line: 351, column: 18, scope: !498)
!503 = !DILocation(line: 353, column: 10, scope: !504)
!504 = distinct !DILexicalBlock(scope: !402, file: !1, line: 353, column: 7)
!505 = !DILocation(line: 353, column: 7, scope: !402)
!506 = !DILocation(line: 354, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !504, file: !1, line: 353, column: 15)
!508 = !DILocation(line: 355, column: 5, scope: !507)
!509 = !DILocation(line: 360, column: 8, scope: !402)
!510 = !DILocation(line: 360, column: 7, scope: !402)
!511 = !DILocation(line: 362, column: 10, scope: !512)
!512 = distinct !DILexicalBlock(scope: !402, file: !1, line: 362, column: 7)
!513 = !DILocation(line: 362, column: 19, scope: !512)
!514 = !DILocation(line: 362, column: 13, scope: !512)
!515 = !DILocation(line: 368, column: 6, scope: !402)
!516 = !DILocation(line: 369, column: 10, scope: !423)
!517 = !DILocation(line: 369, column: 7, scope: !402)
!518 = !DILocation(line: 370, column: 23, scope: !422)
!519 = !DILocation(line: 0, scope: !422)
!520 = !DILocation(line: 371, column: 14, scope: !521)
!521 = distinct !DILexicalBlock(scope: !422, file: !1, line: 371, column: 9)
!522 = !DILocation(line: 371, column: 9, scope: !422)
!523 = !DILocation(line: 373, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 373, column: 7)
!525 = distinct !DILexicalBlock(scope: !521, file: !1, line: 371, column: 18)
!526 = !DILocation(line: 0, scope: !525)
!527 = !DILocation(line: 373, column: 15, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !1, line: 373, column: 7)
!529 = !DILocation(line: 373, column: 37, scope: !528)
!530 = !DILocation(line: 373, column: 36, scope: !528)
!531 = !DILocation(line: 373, column: 25, scope: !528)
!532 = !DILocation(line: 373, column: 30, scope: !528)
!533 = !DILocation(line: 373, column: 7, scope: !528)
!534 = distinct !{!534, !523, !535}
!535 = !DILocation(line: 373, column: 38, scope: !524)
!536 = !DILocation(line: 374, column: 9, scope: !525)
!537 = !DILocation(line: 375, column: 8, scope: !525)
!538 = !DILocation(line: 376, column: 7, scope: !525)
!539 = !DILocation(line: 380, column: 10, scope: !540)
!540 = distinct !DILexicalBlock(scope: !422, file: !1, line: 380, column: 9)
!541 = !DILocation(line: 380, column: 9, scope: !422)
!542 = !DILocation(line: 381, column: 9, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !1, line: 380, column: 15)
!544 = !DILocation(line: 381, column: 11, scope: !543)
!545 = !DILocation(line: 382, column: 9, scope: !543)
!546 = !DILocation(line: 382, column: 11, scope: !543)
!547 = !DILocation(line: 383, column: 12, scope: !548)
!548 = distinct !DILexicalBlock(scope: !543, file: !1, line: 383, column: 11)
!549 = !DILocation(line: 383, column: 11, scope: !543)
!550 = !DILocation(line: 384, column: 8, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !1, line: 383, column: 16)
!552 = !DILocation(line: 385, column: 4, scope: !551)
!553 = !DILocation(line: 386, column: 2, scope: !551)
!554 = !DILocation(line: 387, column: 20, scope: !543)
!555 = !DILocation(line: 387, column: 10, scope: !543)
!556 = !DILocation(line: 388, column: 18, scope: !543)
!557 = !DILocation(line: 388, column: 21, scope: !543)
!558 = !DILocation(line: 388, column: 20, scope: !543)
!559 = !DILocation(line: 388, column: 7, scope: !543)
!560 = !DILocation(line: 389, column: 8, scope: !543)
!561 = !DILocation(line: 390, column: 7, scope: !543)
!562 = !DILocation(line: 391, column: 7, scope: !422)
!563 = !DILocation(line: 397, column: 6, scope: !402)
!564 = !DILocation(line: 397, column: 8, scope: !402)
!565 = !DILocation(line: 398, column: 6, scope: !402)
!566 = !DILocation(line: 398, column: 9, scope: !402)
!567 = !DILocation(line: 399, column: 3, scope: !402)
!568 = !DILocation(line: 399, column: 11, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 399, column: 3)
!570 = distinct !DILexicalBlock(scope: !402, file: !1, line: 399, column: 3)
!571 = !DILocation(line: 399, column: 3, scope: !570)
!572 = !DILocation(line: 399, column: 34, scope: !569)
!573 = !DILocation(line: 399, column: 33, scope: !569)
!574 = !DILocation(line: 399, column: 22, scope: !569)
!575 = !DILocation(line: 399, column: 27, scope: !569)
!576 = !DILocation(line: 399, column: 3, scope: !569)
!577 = distinct !{!577, !571, !578}
!578 = !DILocation(line: 399, column: 35, scope: !570)
!579 = !DILocation(line: 401, column: 5, scope: !402)
!580 = !DILocation(line: 401, column: 7, scope: !402)
!581 = !DILocation(line: 402, column: 5, scope: !402)
!582 = !DILocation(line: 402, column: 7, scope: !402)
!583 = !DILocation(line: 403, column: 3, scope: !402)
!584 = !DILocation(line: 403, column: 13, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !1, line: 403, column: 3)
!586 = distinct !DILexicalBlock(scope: !402, file: !1, line: 403, column: 3)
!587 = !DILocation(line: 403, column: 3, scope: !586)
!588 = !DILocation(line: 403, column: 26, scope: !585)
!589 = !DILocation(line: 403, column: 28, scope: !585)
!590 = !DILocation(line: 403, column: 20, scope: !585)
!591 = !DILocation(line: 403, column: 3, scope: !585)
!592 = distinct !{!592, !587, !593}
!593 = !DILocation(line: 403, column: 29, scope: !586)
!594 = !DILocation(line: 406, column: 3, scope: !402)
!595 = distinct !DISubprogram(name: "__dpd32FromString", scope: !1, file: !1, line: 423, type: !596, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!120, !120, !22, !148}
!598 = !{!599, !600, !601, !602, !603}
!599 = !DILocalVariable(name: "result", arg: 1, scope: !595, file: !1, line: 423, type: !120)
!600 = !DILocalVariable(name: "string", arg: 2, scope: !595, file: !1, line: 423, type: !22)
!601 = !DILocalVariable(name: "set", arg: 3, scope: !595, file: !1, line: 424, type: !148)
!602 = !DILocalVariable(name: "dc", scope: !595, file: !1, line: 425, type: !149)
!603 = !DILocalVariable(name: "dn", scope: !595, file: !1, line: 426, type: !134)
!604 = !DILocation(line: 0, scope: !595)
!605 = !DILocation(line: 425, column: 3, scope: !595)
!606 = !DILocation(line: 426, column: 3, scope: !595)
!607 = !DILocation(line: 428, column: 3, scope: !595)
!608 = !DILocation(line: 429, column: 17, scope: !595)
!609 = !DILocation(line: 429, column: 6, scope: !595)
!610 = !DILocation(line: 429, column: 11, scope: !595)
!611 = !DILocation(line: 431, column: 3, scope: !595)
!612 = !DILocation(line: 432, column: 3, scope: !595)
!613 = !DILocation(line: 433, column: 10, scope: !614)
!614 = distinct !DILexicalBlock(scope: !595, file: !1, line: 433, column: 7)
!615 = !DILocation(line: 433, column: 16, scope: !614)
!616 = !DILocation(line: 433, column: 7, scope: !595)
!617 = !DILocation(line: 434, column: 5, scope: !618)
!618 = distinct !DILexicalBlock(scope: !614, file: !1, line: 433, column: 21)
!619 = !DILocation(line: 435, column: 5, scope: !618)
!620 = !DILocation(line: 437, column: 3, scope: !595)
!621 = !DILocation(line: 436, column: 3, scope: !595)
!622 = distinct !DISubprogram(name: "decimal32IsCanonical", scope: !1, file: !1, line: 445, type: !623, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !625)
!623 = !DISubroutineType(types: !624)
!624 = !{!24, !319}
!625 = !{!626, !627, !628, !629}
!626 = !DILocalVariable(name: "d32", arg: 1, scope: !622, file: !1, line: 445, type: !319)
!627 = !DILocalVariable(name: "dn", scope: !622, file: !1, line: 446, type: !134)
!628 = !DILocalVariable(name: "canon", scope: !622, file: !1, line: 447, type: !121)
!629 = !DILocalVariable(name: "dc", scope: !622, file: !1, line: 448, type: !149)
!630 = !DILocation(line: 0, scope: !622)
!631 = !DILocation(line: 446, column: 3, scope: !622)
!632 = !DILocation(line: 447, column: 3, scope: !622)
!633 = !DILocation(line: 448, column: 3, scope: !622)
!634 = !DILocation(line: 449, column: 3, scope: !622)
!635 = !DILocation(line: 450, column: 3, scope: !622)
!636 = !DILocation(line: 451, column: 3, scope: !622)
!637 = !DILocation(line: 452, column: 17, scope: !622)
!638 = !DILocation(line: 452, column: 10, scope: !622)
!639 = !DILocation(line: 452, column: 46, scope: !622)
!640 = !DILocation(line: 453, column: 3, scope: !622)
!641 = !DILocation(line: 452, column: 3, scope: !622)
!642 = distinct !DISubprogram(name: "decimal32Canonical", scope: !1, file: !1, line: 462, type: !643, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{!120, !120, !319}
!645 = !{!646, !647, !648, !649}
!646 = !DILocalVariable(name: "result", arg: 1, scope: !642, file: !1, line: 462, type: !120)
!647 = !DILocalVariable(name: "d32", arg: 2, scope: !642, file: !1, line: 462, type: !319)
!648 = !DILocalVariable(name: "dn", scope: !642, file: !1, line: 463, type: !134)
!649 = !DILocalVariable(name: "dc", scope: !642, file: !1, line: 464, type: !149)
!650 = !DILocation(line: 0, scope: !642)
!651 = !DILocation(line: 463, column: 3, scope: !642)
!652 = !DILocation(line: 464, column: 3, scope: !642)
!653 = !DILocation(line: 465, column: 3, scope: !642)
!654 = !DILocation(line: 466, column: 3, scope: !642)
!655 = !DILocation(line: 467, column: 3, scope: !642)
!656 = !DILocation(line: 469, column: 3, scope: !642)
!657 = !DILocation(line: 468, column: 3, scope: !642)
!658 = distinct !DISubprogram(name: "decimal32FromNumber", scope: !1, file: !1, line: 550, type: !118, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !659)
!659 = !{!660, !661, !662, !663}
!660 = !DILocalVariable(name: "d32", arg: 1, scope: !658, file: !1, line: 550, type: !120)
!661 = !DILocalVariable(name: "dn", arg: 2, scope: !658, file: !1, line: 550, type: !132)
!662 = !DILocalVariable(name: "set", arg: 3, scope: !658, file: !1, line: 551, type: !148)
!663 = !DILocalVariable(name: "u", scope: !658, file: !1, line: 558, type: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !1, line: 554, size: 32, elements: !665)
!665 = !{!666, !669}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_Dec", scope: !664, file: !1, line: 556, baseType: !667, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !668, line: 25, baseType: !5)
!668 = !DIFile(filename: "./bid-dpd.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!669 = !DIDerivedType(tag: DW_TAG_member, name: "dec", scope: !664, file: !1, line: 557, baseType: !121, size: 32)
!670 = !DILocation(line: 0, scope: !658)
!671 = !DILocation(line: 554, column: 3, scope: !658)
!672 = !DILocation(line: 560, column: 3, scope: !658)
!673 = !DILocation(line: 564, column: 31, scope: !658)
!674 = !DILocation(line: 564, column: 3, scope: !658)
!675 = !DILocation(line: 567, column: 3, scope: !658)
!676 = !DILocation(line: 570, column: 24, scope: !658)
!677 = !DILocation(line: 570, column: 33, scope: !658)
!678 = !DILocation(line: 570, column: 3, scope: !658)
!679 = !DILocation(line: 573, column: 12, scope: !658)
!680 = !DILocation(line: 576, column: 1, scope: !658)
!681 = !DILocation(line: 575, column: 3, scope: !658)
!682 = distinct !DISubprogram(name: "decimal32ToNumber", scope: !1, file: !1, line: 579, type: !316, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !683)
!683 = !{!684, !685, !686}
!684 = !DILocalVariable(name: "bid32", arg: 1, scope: !682, file: !1, line: 579, type: !319)
!685 = !DILocalVariable(name: "dn", arg: 2, scope: !682, file: !1, line: 579, type: !318)
!686 = !DILocalVariable(name: "u", scope: !682, file: !1, line: 586, type: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !1, line: 582, size: 32, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_Dec", scope: !687, file: !1, line: 584, baseType: !667, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dec", scope: !687, file: !1, line: 585, baseType: !121, size: 32)
!691 = !DILocation(line: 0, scope: !682)
!692 = !DILocation(line: 582, column: 3, scope: !682)
!693 = !DILocation(line: 590, column: 33, scope: !682)
!694 = !DILocation(line: 590, column: 3, scope: !682)
!695 = !DILocation(line: 593, column: 3, scope: !682)
!696 = !DILocation(line: 596, column: 24, scope: !682)
!697 = !DILocation(line: 596, column: 33, scope: !682)
!698 = !DILocation(line: 596, column: 3, scope: !682)
!699 = !DILocation(line: 598, column: 10, scope: !682)
!700 = !DILocation(line: 599, column: 1, scope: !682)
!701 = !DILocation(line: 598, column: 3, scope: !682)
!702 = distinct !DISubprogram(name: "decimal32ToString", scope: !1, file: !1, line: 602, type: !390, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !703)
!703 = !{!704, !705, !706}
!704 = !DILocalVariable(name: "d32", arg: 1, scope: !702, file: !1, line: 602, type: !319)
!705 = !DILocalVariable(name: "string", arg: 2, scope: !702, file: !1, line: 602, type: !19)
!706 = !DILocalVariable(name: "dn", scope: !702, file: !1, line: 604, type: !134)
!707 = !DILocation(line: 0, scope: !702)
!708 = !DILocation(line: 604, column: 3, scope: !702)
!709 = !DILocation(line: 605, column: 3, scope: !702)
!710 = !DILocation(line: 606, column: 3, scope: !702)
!711 = !DILocation(line: 608, column: 1, scope: !702)
!712 = !DILocation(line: 607, column: 3, scope: !702)
!713 = distinct !DISubprogram(name: "decimal32ToEngString", scope: !1, file: !1, line: 611, type: !390, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !714)
!714 = !{!715, !716, !717}
!715 = !DILocalVariable(name: "d32", arg: 1, scope: !713, file: !1, line: 611, type: !319)
!716 = !DILocalVariable(name: "string", arg: 2, scope: !713, file: !1, line: 611, type: !19)
!717 = !DILocalVariable(name: "dn", scope: !713, file: !1, line: 613, type: !134)
!718 = !DILocation(line: 0, scope: !713)
!719 = !DILocation(line: 613, column: 3, scope: !713)
!720 = !DILocation(line: 614, column: 3, scope: !713)
!721 = !DILocation(line: 615, column: 3, scope: !713)
!722 = !DILocation(line: 617, column: 1, scope: !713)
!723 = !DILocation(line: 616, column: 3, scope: !713)
!724 = distinct !DISubprogram(name: "decimal32FromString", scope: !1, file: !1, line: 620, type: !596, scopeLine: 622, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !725)
!725 = !{!726, !727, !728, !729, !730}
!726 = !DILocalVariable(name: "result", arg: 1, scope: !724, file: !1, line: 620, type: !120)
!727 = !DILocalVariable(name: "string", arg: 2, scope: !724, file: !1, line: 620, type: !22)
!728 = !DILocalVariable(name: "set", arg: 3, scope: !724, file: !1, line: 621, type: !148)
!729 = !DILocalVariable(name: "dc", scope: !724, file: !1, line: 623, type: !149)
!730 = !DILocalVariable(name: "dn", scope: !724, file: !1, line: 624, type: !134)
!731 = !DILocation(line: 0, scope: !724)
!732 = !DILocation(line: 623, column: 3, scope: !724)
!733 = !DILocation(line: 624, column: 3, scope: !724)
!734 = !DILocation(line: 626, column: 3, scope: !724)
!735 = !DILocation(line: 627, column: 19, scope: !724)
!736 = !DILocation(line: 627, column: 6, scope: !724)
!737 = !DILocation(line: 627, column: 12, scope: !724)
!738 = !DILocation(line: 629, column: 3, scope: !724)
!739 = !DILocation(line: 630, column: 3, scope: !724)
!740 = !DILocation(line: 631, column: 10, scope: !741)
!741 = distinct !DILexicalBlock(scope: !724, file: !1, line: 631, column: 7)
!742 = !DILocation(line: 631, column: 17, scope: !741)
!743 = !DILocation(line: 631, column: 7, scope: !724)
!744 = !DILocation(line: 633, column: 7, scope: !745)
!745 = distinct !DILexicalBlock(scope: !741, file: !1, line: 632, column: 5)
!746 = !DILocation(line: 634, column: 5, scope: !745)
!747 = !DILocation(line: 636, column: 1, scope: !724)
!748 = !DILocation(line: 635, column: 3, scope: !724)
