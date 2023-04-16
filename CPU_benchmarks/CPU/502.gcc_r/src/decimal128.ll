; ModuleID = 'decimal128.bc'
source_filename = "decimal128.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decimal128 = type { [16 x i8] }
%struct.decNumber = type { i32, i32, i8, [12 x i16] }
%struct.decContext = type { i32, i32, i32, i32, i32, i32, i8 }
%union.anon = type { %struct.UINT128 }
%struct.UINT128 = type { [2 x i64] }
%union.anon.0 = type { %struct.UINT128 }

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

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

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

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

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
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !107 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !113, metadata !DIExpression()), !dbg !114
  %call = tail call double @strtod(i8* %__nptr, i8** null) #7, !dbg !115
  ret double %call, !dbg !116
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal128* @__dpd128FromNumber(%struct.decimal128* %d128, %struct.decNumber* %dn, %struct.decContext* %set) local_unnamed_addr #4 !dbg !117 {
entry:
  %dw = alloca %struct.decNumber, align 4
  %dc = alloca %struct.decContext, align 4
  %uiwork = alloca i32, align 4
  %targar = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.decimal128* %d128, metadata !160, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !161, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !162, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 0, metadata !163, metadata !DIExpression()), !dbg !180
  %0 = bitcast %struct.decNumber* %dw to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #8, !dbg !181
  %1 = bitcast %struct.decContext* %dc to i8*, !dbg !182
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %1) #8, !dbg !182
  %2 = bitcast i32* %uiwork to i8*, !dbg !183
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8, !dbg !183
  %3 = bitcast [4 x i32]* %targar to i8*, !dbg !184
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #8, !dbg !184
  call void @llvm.dbg.declare(metadata [4 x i32]* %targar, metadata !170, metadata !DIExpression()), !dbg !185
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %3, i8 0, i64 16, i1 false), !dbg !185
  %exponent = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 1, !dbg !186
  %4 = load i32, i32* %exponent, align 4, !dbg !186
  %digits = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 0, !dbg !187
  %5 = load i32, i32* %digits, align 4, !dbg !187
  %add = add nsw i32 %4, %5, !dbg !188
  call void @llvm.dbg.value(metadata i32 %add, metadata !164, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !180
  %cmp = icmp sgt i32 %5, 34, !dbg !189
  %add.off = add i32 %add, 6142, !dbg !191
  %6 = icmp ugt i32 %add.off, 12287, !dbg !191
  %7 = or i1 %6, %cmp, !dbg !191
  br i1 %7, label %if.then, label %entry.if.end_crit_edge, !dbg !191

entry.if.end_crit_edge:                           ; preds = %entry
  %bits11.phi.trans.insert = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !192
  %.pre = load i8, i8* %bits11.phi.trans.insert, align 4, !dbg !193
  br label %if.end, !dbg !191

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !166, metadata !DIExpression(DW_OP_deref)), !dbg !180
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 128) #7, !dbg !194
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 3, !dbg !196
  %8 = load i32, i32* %round, align 4, !dbg !196
  %round5 = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 3, !dbg !197
  store i32 %8, i32* %round5, align 4, !dbg !198
  call void @llvm.dbg.value(metadata %struct.decNumber* %dw, metadata !165, metadata !DIExpression(DW_OP_deref)), !dbg !180
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !166, metadata !DIExpression(DW_OP_deref)), !dbg !180
  %call6 = call %struct.decNumber* @decNumberPlus(%struct.decNumber* nonnull %dw, %struct.decNumber* %dn, %struct.decContext* nonnull %dc) #7, !dbg !199
  %bits = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !200
  %9 = load i8, i8* %bits, align 4, !dbg !200
  %10 = and i8 %9, -128, !dbg !201
  %bits7 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dw, i64 0, i32 2, !dbg !202
  %11 = load i8, i8* %bits7, align 4, !dbg !203
  %or3 = or i8 %11, %10, !dbg !203
  store i8 %or3, i8* %bits7, align 4, !dbg !203
  %status10 = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 5, !dbg !204
  %12 = load i32, i32* %status10, align 4, !dbg !204
  call void @llvm.dbg.value(metadata i32 %12, metadata !163, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata %struct.decNumber* %dw, metadata !161, metadata !DIExpression()), !dbg !180
  br label %if.end, !dbg !205

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %13 = phi i8 [ %or3, %if.then ], [ %.pre, %entry.if.end_crit_edge ], !dbg !193
  %status.0 = phi i32 [ %12, %if.then ], [ 0, %entry.if.end_crit_edge ], !dbg !180
  %dn.addr.0 = phi %struct.decNumber* [ %dw, %if.then ], [ %dn, %entry.if.end_crit_edge ]
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn.addr.0, metadata !161, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !163, metadata !DIExpression()), !dbg !180
  %bits11 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 2, !dbg !193
  %14 = and i8 %13, 112, !dbg !206
  %tobool = icmp eq i8 %14, 0, !dbg !206
  br i1 %tobool, label %if.else45, label %if.then14, !dbg !207

if.then14:                                        ; preds = %if.end
  %15 = and i8 %13, 64, !dbg !208
  %tobool18 = icmp eq i8 %15, 0, !dbg !208
  br i1 %tobool18, label %if.else, label %if.then19, !dbg !211

if.then19:                                        ; preds = %if.then14
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %targar, i64 0, i64 3, !dbg !212
  store i32 2013265920, i32* %arrayidx, align 4, !dbg !213
  br label %if.end111, !dbg !212

if.else:                                          ; preds = %if.then14
  %arraydecay = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 3, i64 0, !dbg !214
  %16 = load i16, i16* %arraydecay, align 2, !dbg !214
  %cmp21 = icmp eq i16 %16, 0, !dbg !217
  br i1 %cmp21, label %lor.lhs.false23, label %if.else.land.lhs.true_crit_edge, !dbg !218

if.else.land.lhs.true_crit_edge:                  ; preds = %if.else
  %digits27.phi.trans.insert = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 0, !dbg !219
  %.pre4 = load i32, i32* %digits27.phi.trans.insert, align 4, !dbg !220
  br label %land.lhs.true, !dbg !218

lor.lhs.false23:                                  ; preds = %if.else
  %digits24 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 0, !dbg !221
  %17 = load i32, i32* %digits24, align 4, !dbg !221
  %cmp25 = icmp sgt i32 %17, 1, !dbg !222
  br i1 %cmp25, label %land.lhs.true, label %if.end32, !dbg !223

land.lhs.true:                                    ; preds = %if.else.land.lhs.true_crit_edge, %lor.lhs.false23
  %18 = phi i32 [ %.pre4, %if.else.land.lhs.true_crit_edge ], [ %17, %lor.lhs.false23 ], !dbg !220
  %cmp28 = icmp slt i32 %18, 34, !dbg !224
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !225

if.then30:                                        ; preds = %land.lhs.true
  %arraydecay31 = getelementptr inbounds [4 x i32], [4 x i32]* %targar, i64 0, i64 0, !dbg !226
  call void @decDigitsToDPD(%struct.decNumber* %dn.addr.0, i32* nonnull %arraydecay31, i32 0) #7, !dbg !228
  %.pre5 = load i8, i8* %bits11, align 4, !dbg !229
  br label %if.end32, !dbg !231

if.end32:                                         ; preds = %if.then30, %land.lhs.true, %lor.lhs.false23
  %19 = phi i8 [ %.pre5, %if.then30 ], [ %13, %land.lhs.true ], [ %13, %lor.lhs.false23 ], !dbg !229
  %20 = and i8 %19, 32, !dbg !232
  %tobool36 = icmp eq i8 %20, 0, !dbg !232
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %targar, i64 0, i64 3, !dbg !233
  %21 = load i32, i32* %arrayidx38, align 4, !dbg !233
  br i1 %tobool36, label %if.else40, label %if.then37, !dbg !234

if.then37:                                        ; preds = %if.end32
  %or39 = or i32 %21, 2080374784, !dbg !235
  store i32 %or39, i32* %arrayidx38, align 4, !dbg !235
  br label %if.end111, !dbg !236

if.else40:                                        ; preds = %if.end32
  %or42 = or i32 %21, 2113929216, !dbg !237
  store i32 %or42, i32* %arrayidx38, align 4, !dbg !237
  br label %if.end111

if.else45:                                        ; preds = %if.end
  %arraydecay47 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 3, i64 0, !dbg !238
  %22 = load i16, i16* %arraydecay47, align 2, !dbg !238
  %cmp49 = icmp eq i16 %22, 0, !dbg !238
  br i1 %cmp49, label %land.lhs.true51, label %if.else77, !dbg !238

land.lhs.true51:                                  ; preds = %if.else45
  %digits52 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 0, !dbg !238
  %23 = load i32, i32* %digits52, align 4, !dbg !238
  %cmp53 = icmp eq i32 %23, 1, !dbg !238
  br i1 %cmp53, label %land.lhs.true55, label %if.else77, !dbg !238

land.lhs.true55:                                  ; preds = %land.lhs.true51
  br i1 true, label %if.then61, label %land.lhs.true55.if.else77_crit_edge, !dbg !239

land.lhs.true55.if.else77_crit_edge:              ; preds = %land.lhs.true55
  br label %if.else77, !dbg !239

if.then61:                                        ; preds = %land.lhs.true55
  %exponent62 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 1, !dbg !240
  %24 = load i32, i32* %exponent62, align 4, !dbg !240
  %cmp63 = icmp slt i32 %24, -6176, !dbg !243
  br i1 %cmp63, label %if.then65, label %if.else67, !dbg !244

if.then65:                                        ; preds = %if.then61
  call void @llvm.dbg.value(metadata i32 0, metadata !168, metadata !DIExpression()), !dbg !180
  %or66 = or i32 %status.0, 1024, !dbg !245
  call void @llvm.dbg.value(metadata i32 %or66, metadata !163, metadata !DIExpression()), !dbg !180
  br label %if.end75, !dbg !247

if.else67:                                        ; preds = %if.then61
  %add69 = add nsw i32 %24, 6176, !dbg !248
  call void @llvm.dbg.value(metadata i32 %add69, metadata !168, metadata !DIExpression()), !dbg !180
  %cmp70 = icmp ugt i32 %add69, 12287, !dbg !250
  %or73 = or i32 %status.0, 1024, !dbg !252
  %spec.select = select i1 %cmp70, i32 %or73, i32 %status.0, !dbg !254
  %spec.select2 = select i1 %cmp70, i32 12287, i32 %add69, !dbg !254
  call void @llvm.dbg.value(metadata i32 %spec.select2, metadata !168, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !163, metadata !DIExpression()), !dbg !180
  br label %if.end75

if.end75:                                         ; preds = %if.else67, %if.then65
  %status.2 = phi i32 [ %or66, %if.then65 ], [ %spec.select, %if.else67 ], !dbg !255
  %exp.1 = phi i32 [ 0, %if.then65 ], [ %spec.select2, %if.else67 ], !dbg !255
  call void @llvm.dbg.value(metadata i32 %exp.1, metadata !168, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !163, metadata !DIExpression()), !dbg !180
  %shr = lshr i32 %exp.1, 9, !dbg !256
  %and76 = and i32 %shr, 24, !dbg !257
  call void @llvm.dbg.value(metadata i32 %and76, metadata !167, metadata !DIExpression()), !dbg !180
  %arrayidx105.phi.trans.insert = getelementptr inbounds [4 x i32], [4 x i32]* %targar, i64 0, i64 3, !dbg !258
  %.pre6 = load i32, i32* %arrayidx105.phi.trans.insert, align 4, !dbg !259
  br label %if.end104, !dbg !260

if.else77:                                        ; preds = %land.lhs.true55.if.else77_crit_edge, %land.lhs.true51, %if.else45
  call void @llvm.dbg.value(metadata i32 0, metadata !179, metadata !DIExpression()), !dbg !261
  %exponent78 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn.addr.0, i64 0, i32 1, !dbg !262
  %25 = load i32, i32* %exponent78, align 4, !dbg !262
  %add79 = add nsw i32 %25, 6176, !dbg !263
  call void @llvm.dbg.value(metadata i32 %add79, metadata !168, metadata !DIExpression()), !dbg !180
  %cmp80 = icmp ugt i32 %add79, 12287, !dbg !264
  %sub83 = add i32 %25, -6111, !dbg !266
  %or84 = or i32 %status.0, 1024, !dbg !266
  %status.3 = select i1 %cmp80, i32 %or84, i32 %status.0, !dbg !266
  %exp.2 = select i1 %cmp80, i32 12287, i32 %add79, !dbg !266
  %pad.0 = select i1 %cmp80, i32 %sub83, i32 0, !dbg !266
  call void @llvm.dbg.value(metadata i32 %pad.0, metadata !179, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 %exp.2, metadata !168, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 %status.3, metadata !163, metadata !DIExpression()), !dbg !180
  %arraydecay86 = getelementptr inbounds [4 x i32], [4 x i32]* %targar, i64 0, i64 0, !dbg !267
  call void @decDigitsToDPD(%struct.decNumber* %dn.addr.0, i32* nonnull %arraydecay86, i32 %pad.0) #7, !dbg !268
  %arrayidx87 = getelementptr inbounds [4 x i32], [4 x i32]* %targar, i64 0, i64 3, !dbg !269
  %26 = load i32, i32* %arrayidx87, align 4, !dbg !269
  %shr88 = lshr i32 %26, 14, !dbg !270
  call void @llvm.dbg.value(metadata i32 %shr88, metadata !174, metadata !DIExpression()), !dbg !261
  %and90 = and i32 %26, 16383, !dbg !271
  store i32 %and90, i32* %arrayidx87, align 4, !dbg !271
  %cmp91 = icmp ugt i32 %26, 131071, !dbg !272
  br i1 %cmp91, label %if.then93, label %if.else99, !dbg !274

if.then93:                                        ; preds = %if.else77
  %shr94 = lshr i32 %exp.2, 11, !dbg !275
  %and95 = and i32 %shr94, 6, !dbg !276
  %and97 = and i32 %shr88, 1, !dbg !277
  %or96 = or i32 %and95, %and97, !dbg !278
  %or98 = or i32 %or96, 24, !dbg !278
  call void @llvm.dbg.value(metadata i32 %or98, metadata !167, metadata !DIExpression()), !dbg !180
  br label %if.end104, !dbg !279

if.else99:                                        ; preds = %if.else77
  %shr100 = lshr i32 %exp.2, 9, !dbg !280
  %and101 = and i32 %shr100, 24, !dbg !281
  %or102 = or i32 %and101, %shr88, !dbg !282
  call void @llvm.dbg.value(metadata i32 %or102, metadata !167, metadata !DIExpression()), !dbg !180
  br label %if.end104

if.end104:                                        ; preds = %if.then93, %if.else99, %if.end75
  %27 = phi i32 [ %.pre6, %if.end75 ], [ %and90, %if.then93 ], [ %and90, %if.else99 ], !dbg !259
  %comb.1 = phi i32 [ %and76, %if.end75 ], [ %or98, %if.then93 ], [ %or102, %if.else99 ], !dbg !283
  %status.4 = phi i32 [ %status.2, %if.end75 ], [ %status.3, %if.then93 ], [ %status.3, %if.else99 ], !dbg !283
  %exp.3 = phi i32 [ %exp.1, %if.end75 ], [ %exp.2, %if.then93 ], [ %exp.2, %if.else99 ], !dbg !283
  call void @llvm.dbg.value(metadata i32 %exp.3, metadata !168, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !163, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 %comb.1, metadata !167, metadata !DIExpression()), !dbg !180
  %shl = shl i32 %comb.1, 26, !dbg !284
  %arrayidx105 = getelementptr inbounds [4 x i32], [4 x i32]* %targar, i64 0, i64 3, !dbg !285
  %or106 = or i32 %27, %shl, !dbg !259
  %and107 = shl i32 %exp.3, 14, !dbg !286
  %shl108 = and i32 %and107, 67092480, !dbg !286
  %or110 = or i32 %or106, %shl108, !dbg !287
  store i32 %or110, i32* %arrayidx105, align 4, !dbg !287
  %.pre7 = load i8, i8* %bits11, align 4, !dbg !288
  br label %if.end111

if.end111:                                        ; preds = %if.then19, %if.else40, %if.then37, %if.end104
  %28 = phi i32 [ %or110, %if.end104 ], [ %or39, %if.then37 ], [ %or42, %if.else40 ], [ 2013265920, %if.then19 ]
  %29 = phi i8 [ %.pre7, %if.end104 ], [ %19, %if.then37 ], [ %19, %if.else40 ], [ %13, %if.then19 ], !dbg !288
  %status.5 = phi i32 [ %status.4, %if.end104 ], [ %status.0, %if.then37 ], [ %status.0, %if.else40 ], [ %status.0, %if.then19 ], !dbg !180
  call void @llvm.dbg.value(metadata i32 %status.5, metadata !163, metadata !DIExpression()), !dbg !180
  %tobool115 = icmp slt i8 %29, 0, !dbg !290
  br i1 %tobool115, label %if.then116, label %if.end119, !dbg !291

if.then116:                                       ; preds = %if.end111
  %arrayidx117 = getelementptr inbounds [4 x i32], [4 x i32]* %targar, i64 0, i64 3, !dbg !292
  %or118 = or i32 %28, -2147483648, !dbg !293
  store i32 %or118, i32* %arrayidx117, align 4, !dbg !293
  br label %if.end119, !dbg !292

if.end119:                                        ; preds = %if.then116, %if.end111
  %arrayidx120 = getelementptr inbounds [4 x i32], [4 x i32]* %targar, i64 0, i64 0, !dbg !294
  %30 = load i32, i32* %arrayidx120, align 16, !dbg !294
  call void @llvm.dbg.value(metadata i32 %30, metadata !169, metadata !DIExpression()), !dbg !180
  store i32 %30, i32* %uiwork, align 4, !dbg !294
  %arraydecay121 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 0, !dbg !294
  %call122 = call i8* @memcpy(i8* %arraydecay121, i8* nonnull %2, i64 4) #7, !dbg !294
  call void @llvm.dbg.value(metadata i32 undef, metadata !169, metadata !DIExpression()), !dbg !180
  %arrayidx123 = getelementptr inbounds [4 x i32], [4 x i32]* %targar, i64 0, i64 1, !dbg !297
  %31 = load i32, i32* %arrayidx123, align 4, !dbg !297
  call void @llvm.dbg.value(metadata i32 %31, metadata !169, metadata !DIExpression()), !dbg !180
  store i32 %31, i32* %uiwork, align 4, !dbg !297
  %add.ptr = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 4, !dbg !297
  %call126 = call i8* @memcpy(i8* nonnull %add.ptr, i8* nonnull %2, i64 4) #7, !dbg !297
  call void @llvm.dbg.value(metadata i32 undef, metadata !169, metadata !DIExpression()), !dbg !180
  %arrayidx127 = getelementptr inbounds [4 x i32], [4 x i32]* %targar, i64 0, i64 2, !dbg !298
  %32 = load i32, i32* %arrayidx127, align 8, !dbg !298
  call void @llvm.dbg.value(metadata i32 %32, metadata !169, metadata !DIExpression()), !dbg !180
  store i32 %32, i32* %uiwork, align 4, !dbg !298
  %add.ptr130 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 8, !dbg !298
  %call131 = call i8* @memcpy(i8* nonnull %add.ptr130, i8* nonnull %2, i64 4) #7, !dbg !298
  call void @llvm.dbg.value(metadata i32 undef, metadata !169, metadata !DIExpression()), !dbg !180
  %arrayidx132 = getelementptr inbounds [4 x i32], [4 x i32]* %targar, i64 0, i64 3, !dbg !299
  %33 = load i32, i32* %arrayidx132, align 4, !dbg !299
  call void @llvm.dbg.value(metadata i32 %33, metadata !169, metadata !DIExpression()), !dbg !180
  store i32 %33, i32* %uiwork, align 4, !dbg !299
  %add.ptr135 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 12, !dbg !299
  %call136 = call i8* @memcpy(i8* nonnull %add.ptr135, i8* nonnull %2, i64 4) #7, !dbg !299
  call void @llvm.dbg.value(metadata i32 undef, metadata !169, metadata !DIExpression()), !dbg !180
  %cmp137 = icmp eq i32 %status.5, 0, !dbg !300
  br i1 %cmp137, label %if.end141, label %if.then139, !dbg !302

if.then139:                                       ; preds = %if.end119
  %call140 = call %struct.decContext* @decContextSetStatus(%struct.decContext* %set, i32 %status.5) #7, !dbg !303
  br label %if.end141, !dbg !303

if.end141:                                        ; preds = %if.end119, %if.then139
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #8, !dbg !304
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8, !dbg !304
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %1) #8, !dbg !304
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #8, !dbg !304
  ret %struct.decimal128* %d128, !dbg !305
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local %struct.decContext* @decContextDefault(%struct.decContext*, i32) local_unnamed_addr #2

declare dso_local %struct.decNumber* @decNumberPlus(%struct.decNumber*, %struct.decNumber*, %struct.decContext*) local_unnamed_addr #2

declare dso_local void @decDigitsToDPD(%struct.decNumber*, i32*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #5

declare dso_local %struct.decContext* @decContextSetStatus(%struct.decContext*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.decNumber* @__dpd128ToNumber(%struct.decimal128* %d128, %struct.decNumber* %dn) local_unnamed_addr #4 !dbg !306 {
entry:
  %uiwork = alloca i32, align 4
  %sourar = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.decimal128* %d128, metadata !313, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !314, metadata !DIExpression()), !dbg !321
  %0 = bitcast i32* %uiwork to i8*, !dbg !322
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !322
  %1 = bitcast [4 x i32]* %sourar to i8*, !dbg !323
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !323
  call void @llvm.dbg.declare(metadata [4 x i32]* %sourar, metadata !320, metadata !DIExpression()), !dbg !324
  %arraydecay = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 0, !dbg !325
  %call = call i8* @memcpy(i8* nonnull %0, i8* %arraydecay, i64 4) #7, !dbg !325
  %2 = load i32, i32* %uiwork, align 4, !dbg !325
  call void @llvm.dbg.value(metadata i32 %2, metadata !319, metadata !DIExpression()), !dbg !321
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %sourar, i64 0, i64 0, !dbg !328
  store i32 %2, i32* %arrayidx, align 16, !dbg !329
  %add.ptr = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 4, !dbg !330
  %call3 = call i8* @memcpy(i8* nonnull %0, i8* nonnull %add.ptr, i64 4) #7, !dbg !330
  %3 = load i32, i32* %uiwork, align 4, !dbg !330
  call void @llvm.dbg.value(metadata i32 %3, metadata !319, metadata !DIExpression()), !dbg !321
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %sourar, i64 0, i64 1, !dbg !331
  store i32 %3, i32* %arrayidx4, align 4, !dbg !332
  %add.ptr7 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 8, !dbg !333
  %call8 = call i8* @memcpy(i8* nonnull %0, i8* nonnull %add.ptr7, i64 4) #7, !dbg !333
  %4 = load i32, i32* %uiwork, align 4, !dbg !333
  call void @llvm.dbg.value(metadata i32 %4, metadata !319, metadata !DIExpression()), !dbg !321
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %sourar, i64 0, i64 2, !dbg !334
  store i32 %4, i32* %arrayidx9, align 8, !dbg !335
  %add.ptr12 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 12, !dbg !336
  %call13 = call i8* @memcpy(i8* nonnull %0, i8* nonnull %add.ptr12, i64 4) #7, !dbg !336
  %5 = load i32, i32* %uiwork, align 4, !dbg !336
  call void @llvm.dbg.value(metadata i32 %5, metadata !319, metadata !DIExpression()), !dbg !321
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %sourar, i64 0, i64 3, !dbg !337
  store i32 %5, i32* %arrayidx14, align 4, !dbg !338
  %shr = lshr i32 %5, 26, !dbg !339
  %and = and i32 %shr, 31, !dbg !340
  call void @llvm.dbg.value(metadata i32 %and, metadata !317, metadata !DIExpression()), !dbg !321
  %call16 = call %struct.decNumber* @decNumberZero(%struct.decNumber* %dn) #7, !dbg !341
  %tobool = icmp slt i32 %5, 0, !dbg !342
  br i1 %tobool, label %if.then, label %if.end, !dbg !344

if.then:                                          ; preds = %entry
  %bits = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !345
  store i8 -128, i8* %bits, align 4, !dbg !346
  br label %if.end, !dbg !347

if.end:                                           ; preds = %if.then, %entry
  %idxprom = zext i32 %and to i64, !dbg !348
  %arrayidx19 = getelementptr inbounds [32 x i32], [32 x i32]* @COMBMSD, i64 0, i64 %idxprom, !dbg !348
  %6 = load i32, i32* %arrayidx19, align 4, !dbg !348
  call void @llvm.dbg.value(metadata i32 %6, metadata !315, metadata !DIExpression()), !dbg !321
  %arrayidx21 = getelementptr inbounds [32 x i32], [32 x i32]* @COMBEXP, i64 0, i64 %idxprom, !dbg !349
  %7 = load i32, i32* %arrayidx21, align 4, !dbg !349
  call void @llvm.dbg.value(metadata i32 %7, metadata !316, metadata !DIExpression()), !dbg !321
  %cmp = icmp eq i32 %7, 3, !dbg !350
  br i1 %cmp, label %if.then22, label %if.else42, !dbg !352

if.then22:                                        ; preds = %if.end
  %cmp23 = icmp eq i32 %6, 0, !dbg !353
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !356

if.then24:                                        ; preds = %if.then22
  %bits25 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !357
  %8 = load i8, i8* %bits25, align 4, !dbg !359
  %9 = or i8 %8, 64, !dbg !359
  store i8 %9, i8* %bits25, align 4, !dbg !359
  br label %cleanup, !dbg !360

if.else:                                          ; preds = %if.then22
  %and28 = and i32 %5, 33554432, !dbg !361
  %tobool29 = icmp eq i32 %and28, 0, !dbg !361
  %bits31 = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 2, !dbg !363
  %10 = load i8, i8* %bits31, align 4, !dbg !363
  br i1 %tobool29, label %if.else35, label %if.then30, !dbg !364

if.then30:                                        ; preds = %if.else
  %11 = or i8 %10, 16, !dbg !365
  store i8 %11, i8* %bits31, align 4, !dbg !365
  br label %if.end46, !dbg !366

if.else35:                                        ; preds = %if.else
  %or38 = or i8 %10, 32, !dbg !367
  store i8 %or38, i8* %bits31, align 4, !dbg !367
  br label %if.end46

if.else42:                                        ; preds = %if.end
  %shl = shl i32 %7, 12, !dbg !368
  %shr44 = lshr i32 %5, 14, !dbg !370
  %and45 = and i32 %shr44, 4095, !dbg !371
  %add = or i32 %shl, %and45, !dbg !372
  %sub = add i32 %add, -6176, !dbg !373
  %exponent = getelementptr inbounds %struct.decNumber, %struct.decNumber* %dn, i64 0, i32 1, !dbg !374
  store i32 %sub, i32* %exponent, align 4, !dbg !375
  br label %if.end46

if.end46:                                         ; preds = %if.else35, %if.then30, %if.else42
  %msd.0 = phi i32 [ %6, %if.else42 ], [ 0, %if.then30 ], [ 0, %if.else35 ], !dbg !321
  call void @llvm.dbg.value(metadata i32 %msd.0, metadata !315, metadata !DIExpression()), !dbg !321
  %and48 = and i32 %5, 16383, !dbg !376
  store i32 %and48, i32* %arrayidx14, align 4, !dbg !376
  %tobool49 = icmp eq i32 %msd.0, 0, !dbg !377
  br i1 %tobool49, label %if.else54, label %if.then50, !dbg !379

if.then50:                                        ; preds = %if.end46
  %shl51 = shl i32 %msd.0, 14, !dbg !380
  %or53 = or i32 %and48, %shl51, !dbg !382
  store i32 %or53, i32* %arrayidx14, align 4, !dbg !382
  call void @llvm.dbg.value(metadata i32 12, metadata !318, metadata !DIExpression()), !dbg !321
  br label %if.end75, !dbg !383

if.else54:                                        ; preds = %if.end46
  %tobool56 = icmp eq i32 %and48, 0, !dbg !384
  br i1 %tobool56, label %if.else58, label %if.end75, !dbg !387

if.else58:                                        ; preds = %if.else54
  %tobool60 = icmp eq i32 %4, 0, !dbg !388
  br i1 %tobool60, label %if.else62, label %if.end75, !dbg !390

if.else62:                                        ; preds = %if.else58
  %tobool64 = icmp eq i32 %3, 0, !dbg !391
  br i1 %tobool64, label %if.else66, label %if.end75, !dbg !393

if.else66:                                        ; preds = %if.else62
  %tobool68 = icmp eq i32 %2, 0, !dbg !394
  br i1 %tobool68, label %cleanup, label %if.end75, !dbg !396

if.end75:                                         ; preds = %if.else66, %if.else62, %if.else58, %if.else54, %if.then50
  %need.3 = phi i32 [ 12, %if.then50 ], [ 11, %if.else54 ], [ 10, %if.else58 ], [ 7, %if.else62 ], [ 4, %if.else66 ], !dbg !397
  call void @llvm.dbg.value(metadata i32 %need.3, metadata !318, metadata !DIExpression()), !dbg !321
  call void @decDigitsFromDPD(%struct.decNumber* %dn, i32* nonnull %arrayidx, i32 %need.3) #7, !dbg !398
  br label %cleanup, !dbg !399

cleanup:                                          ; preds = %if.else66, %if.end75, %if.then24
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !400
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !400
  ret %struct.decNumber* %dn, !dbg !400
}

declare dso_local %struct.decNumber* @decNumberZero(%struct.decNumber*) local_unnamed_addr #2

declare dso_local void @decDigitsFromDPD(%struct.decNumber*, i32*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @__dpd128ToEngString(%struct.decimal128* %d128, i8* %string) local_unnamed_addr #4 !dbg !401 {
entry:
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal128* %d128, metadata !405, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i8* %string, metadata !406, metadata !DIExpression()), !dbg !408
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !409
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #8, !dbg !409
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !407, metadata !DIExpression(DW_OP_deref)), !dbg !408
  %call = call %struct.decNumber* @__dpd128ToNumber(%struct.decimal128* %d128, %struct.decNumber* nonnull %dn) #9, !dbg !410
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !407, metadata !DIExpression(DW_OP_deref)), !dbg !408
  %call1 = call i8* @decNumberToEngString(%struct.decNumber* nonnull %dn, i8* %string) #7, !dbg !411
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #8, !dbg !412
  ret i8* %string, !dbg !413
}

declare dso_local i8* @decNumberToEngString(%struct.decNumber*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @__dpd128ToString(%struct.decimal128* %d128, i8* %string) local_unnamed_addr #4 !dbg !414 {
entry:
  %uiwork = alloca i32, align 4
  %sourar = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata %struct.decimal128* %d128, metadata !416, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i8* %string, metadata !417, metadata !DIExpression()), !dbg !442
  %0 = bitcast i32* %uiwork to i8*, !dbg !443
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !443
  %1 = bitcast [4 x i32]* %sourar to i8*, !dbg !444
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !444
  call void @llvm.dbg.declare(metadata [4 x i32]* %sourar, metadata !432, metadata !DIExpression()), !dbg !445
  %arraydecay = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 0, !dbg !446
  %call = call i8* @memcpy(i8* nonnull %0, i8* %arraydecay, i64 4) #7, !dbg !446
  %2 = load i32, i32* %uiwork, align 4, !dbg !446
  call void @llvm.dbg.value(metadata i32 %2, metadata !431, metadata !DIExpression()), !dbg !442
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %sourar, i64 0, i64 0, !dbg !449
  store i32 %2, i32* %arrayidx, align 16, !dbg !450
  %add.ptr = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 4, !dbg !451
  %call3 = call i8* @memcpy(i8* nonnull %0, i8* nonnull %add.ptr, i64 4) #7, !dbg !451
  %3 = load i32, i32* %uiwork, align 4, !dbg !451
  call void @llvm.dbg.value(metadata i32 %3, metadata !431, metadata !DIExpression()), !dbg !442
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %sourar, i64 0, i64 1, !dbg !452
  store i32 %3, i32* %arrayidx4, align 4, !dbg !453
  %add.ptr7 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 8, !dbg !454
  %call8 = call i8* @memcpy(i8* nonnull %0, i8* nonnull %add.ptr7, i64 4) #7, !dbg !454
  %4 = load i32, i32* %uiwork, align 4, !dbg !454
  call void @llvm.dbg.value(metadata i32 %4, metadata !431, metadata !DIExpression()), !dbg !442
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %sourar, i64 0, i64 2, !dbg !455
  store i32 %4, i32* %arrayidx9, align 8, !dbg !456
  %add.ptr12 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 12, !dbg !457
  %call13 = call i8* @memcpy(i8* nonnull %0, i8* nonnull %add.ptr12, i64 4) #7, !dbg !457
  %5 = load i32, i32* %uiwork, align 4, !dbg !457
  call void @llvm.dbg.value(metadata i32 %5, metadata !431, metadata !DIExpression()), !dbg !442
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %sourar, i64 0, i64 3, !dbg !458
  store i32 %5, i32* %arrayidx14, align 4, !dbg !459
  call void @llvm.dbg.value(metadata i8* %string, metadata !422, metadata !DIExpression()), !dbg !442
  %cmp = icmp slt i32 %5, 0, !dbg !460
  br i1 %cmp, label %if.then, label %if.end, !dbg !462

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %string, i64 1, !dbg !463
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !422, metadata !DIExpression()), !dbg !442
  store i8 45, i8* %string, align 1, !dbg !464
  br label %if.end, !dbg !465

if.end:                                           ; preds = %if.then, %entry
  %c.0 = phi i8* [ %incdec.ptr, %if.then ], [ %string, %entry ], !dbg !442
  call void @llvm.dbg.value(metadata i8* %c.0, metadata !422, metadata !DIExpression()), !dbg !442
  %shr = lshr i32 %5, 26, !dbg !466
  %and = and i32 %shr, 31, !dbg !467
  call void @llvm.dbg.value(metadata i32 %and, metadata !420, metadata !DIExpression()), !dbg !442
  %idxprom = zext i32 %and to i64, !dbg !468
  %arrayidx17 = getelementptr inbounds [32 x i32], [32 x i32]* @COMBMSD, i64 0, i64 %idxprom, !dbg !468
  %6 = load i32, i32* %arrayidx17, align 4, !dbg !468
  call void @llvm.dbg.value(metadata i32 %6, metadata !418, metadata !DIExpression()), !dbg !442
  %arrayidx19 = getelementptr inbounds [32 x i32], [32 x i32]* @COMBEXP, i64 0, i64 %idxprom, !dbg !469
  %7 = load i32, i32* %arrayidx19, align 4, !dbg !469
  call void @llvm.dbg.value(metadata i32 %7, metadata !419, metadata !DIExpression()), !dbg !442
  %cmp20 = icmp eq i32 %7, 3, !dbg !470
  br i1 %cmp20, label %if.then21, label %if.else, !dbg !472

if.then21:                                        ; preds = %if.end
  %cmp22 = icmp eq i32 %6, 0, !dbg !473
  br i1 %cmp22, label %if.then23, label %if.end27, !dbg !476

if.then23:                                        ; preds = %if.then21
  %call24 = call i8* @strcpy(i8* %c.0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !477
  %add.ptr25 = getelementptr inbounds i8, i8* %c.0, i64 3, !dbg !479
  %call26 = call i8* @strcpy(i8* nonnull %add.ptr25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !480
  br label %cleanup, !dbg !481

if.end27:                                         ; preds = %if.then21
  %and29 = and i32 %5, 33554432, !dbg !482
  %tobool = icmp eq i32 %and29, 0, !dbg !482
  br i1 %tobool, label %if.end32, label %if.then30, !dbg !484

if.then30:                                        ; preds = %if.end27
  %incdec.ptr31 = getelementptr inbounds i8, i8* %c.0, i64 1, !dbg !485
  call void @llvm.dbg.value(metadata i8* %incdec.ptr31, metadata !422, metadata !DIExpression()), !dbg !442
  store i8 115, i8* %c.0, align 1, !dbg !486
  br label %if.end32, !dbg !487

if.end32:                                         ; preds = %if.end27, %if.then30
  %c.1 = phi i8* [ %incdec.ptr31, %if.then30 ], [ %c.0, %if.end27 ], !dbg !442
  call void @llvm.dbg.value(metadata i8* %c.1, metadata !422, metadata !DIExpression()), !dbg !442
  %call33 = call i8* @strcpy(i8* %c.1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !488
  %add.ptr34 = getelementptr inbounds i8, i8* %c.1, i64 3, !dbg !489
  call void @llvm.dbg.value(metadata i8* %add.ptr34, metadata !422, metadata !DIExpression()), !dbg !442
  %8 = load i32, i32* %arrayidx, align 16, !dbg !490
  %cmp36 = icmp eq i32 %8, 0, !dbg !492
  br i1 %cmp36, label %land.lhs.true, label %if.end51, !dbg !493

land.lhs.true:                                    ; preds = %if.end32
  %cmp38 = icmp eq i32 %3, 0, !dbg !494
  br i1 %cmp38, label %land.lhs.true39, label %if.end51, !dbg !495

land.lhs.true39:                                  ; preds = %land.lhs.true
  %cmp41 = icmp eq i32 %4, 0, !dbg !496
  br i1 %cmp41, label %land.lhs.true42, label %if.end51, !dbg !497

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %and44 = and i32 %5, 262143, !dbg !498
  %cmp45 = icmp eq i32 %and44, 0, !dbg !499
  br i1 %cmp45, label %cleanup, label %if.end51, !dbg !500

if.else:                                          ; preds = %if.end
  %shl = shl i32 %7, 12, !dbg !501
  %shr49 = lshr i32 %5, 14, !dbg !502
  %and50 = and i32 %shr49, 4095, !dbg !503
  %add = or i32 %shl, %and50, !dbg !504
  %sub = add i32 %add, -6176, !dbg !505
  call void @llvm.dbg.value(metadata i32 %sub, metadata !419, metadata !DIExpression()), !dbg !442
  br label %if.end51

if.end51:                                         ; preds = %if.end32, %land.lhs.true, %land.lhs.true39, %land.lhs.true42, %if.else
  %c.2 = phi i8* [ %c.0, %if.else ], [ %add.ptr34, %land.lhs.true42 ], [ %add.ptr34, %land.lhs.true39 ], [ %add.ptr34, %land.lhs.true ], [ %add.ptr34, %if.end32 ], !dbg !442
  %exp.0 = phi i32 [ %sub, %if.else ], [ 0, %land.lhs.true42 ], [ 0, %land.lhs.true39 ], [ 0, %land.lhs.true ], [ 0, %if.end32 ], !dbg !506
  %msd.0 = phi i32 [ %6, %if.else ], [ 0, %land.lhs.true42 ], [ 0, %land.lhs.true39 ], [ 0, %land.lhs.true ], [ 0, %if.end32 ], !dbg !442
  call void @llvm.dbg.value(metadata i32 %msd.0, metadata !418, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i32 %exp.0, metadata !419, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i8* %c.2, metadata !422, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i8* %c.2, metadata !421, metadata !DIExpression()), !dbg !442
  %tobool52 = icmp eq i32 %msd.0, 0, !dbg !507
  br i1 %tobool52, label %if.end58, label %if.then53, !dbg !509

if.then53:                                        ; preds = %if.end51
  %9 = trunc i32 %msd.0 to i8, !dbg !510
  %conv56 = add i8 %9, 48, !dbg !510
  %incdec.ptr57 = getelementptr inbounds i8, i8* %c.2, i64 1, !dbg !511
  call void @llvm.dbg.value(metadata i8* %incdec.ptr57, metadata !422, metadata !DIExpression()), !dbg !442
  store i8 %conv56, i8* %c.2, align 1, !dbg !512
  %.pre = load i32, i32* %arrayidx14, align 4, !dbg !513
  br label %if.end58, !dbg !514

if.end58:                                         ; preds = %if.end51, %if.then53
  %10 = phi i32 [ %.pre, %if.then53 ], [ %5, %if.end51 ], !dbg !513
  %c.3 = phi i8* [ %incdec.ptr57, %if.then53 ], [ %c.2, %if.end51 ], !dbg !442
  call void @llvm.dbg.value(metadata i8* %c.3, metadata !422, metadata !DIExpression()), !dbg !442
  %shr60 = lshr i32 %10, 4, !dbg !515
  %and61 = and i32 %shr60, 1023, !dbg !516
  call void @llvm.dbg.value(metadata i32 %and61, metadata !428, metadata !DIExpression()), !dbg !442
  %idxprom62 = zext i32 %and61 to i64, !dbg !517
  %arrayidx63 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom62, !dbg !517
  %11 = load i16, i16* %arrayidx63, align 2, !dbg !517
  %conv64 = zext i16 %11 to i64, !dbg !517
  %mul = shl nuw nsw i64 %conv64, 2, !dbg !517
  %arrayidx66 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul, !dbg !517
  call void @llvm.dbg.value(metadata i8* %arrayidx66, metadata !423, metadata !DIExpression()), !dbg !442
  %cmp67 = icmp eq i8* %c.3, %c.2, !dbg !518
  br i1 %cmp67, label %if.else73, label %if.then69, !dbg !517

if.then69:                                        ; preds = %if.end58
  %add.ptr70 = getelementptr inbounds i8, i8* %arrayidx66, i64 1, !dbg !520
  %call71 = call i8* @memcpy(i8* %c.3, i8* nonnull %add.ptr70, i64 4) #7, !dbg !520
  %add.ptr72 = getelementptr inbounds i8, i8* %c.3, i64 3, !dbg !520
  call void @llvm.dbg.value(metadata i8* %add.ptr72, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end84, !dbg !520

if.else73:                                        ; preds = %if.end58
  %12 = load i8, i8* %arrayidx66, align 4, !dbg !522
  %tobool74 = icmp eq i8 %12, 0, !dbg !522
  br i1 %tobool74, label %if.end84, label %if.then75, !dbg !518

if.then75:                                        ; preds = %if.else73
  %add.ptr76 = getelementptr inbounds i8, i8* %arrayidx66, i64 4, !dbg !524
  %idx.ext = zext i8 %12 to i64, !dbg !524
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !524
  %add.ptr78 = getelementptr inbounds i8, i8* %add.ptr76, i64 %idx.neg, !dbg !524
  %call79 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr78, i64 4) #7, !dbg !524
  %add.ptr82 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext, !dbg !524
  call void @llvm.dbg.value(metadata i8* %add.ptr82, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end84, !dbg !524

if.end84:                                         ; preds = %if.else73, %if.then75, %if.then69
  %c.5 = phi i8* [ %add.ptr72, %if.then69 ], [ %add.ptr82, %if.then75 ], [ %c.2, %if.else73 ], !dbg !526
  call void @llvm.dbg.value(metadata i8* %c.5, metadata !422, metadata !DIExpression()), !dbg !442
  %and86 = shl i32 %10, 6, !dbg !527
  %shl87 = and i32 %and86, 960, !dbg !527
  %13 = load i32, i32* %arrayidx9, align 8, !dbg !528
  %shr89 = lshr i32 %13, 26, !dbg !529
  %or = or i32 %shl87, %shr89, !dbg !530
  call void @llvm.dbg.value(metadata i32 %or, metadata !428, metadata !DIExpression()), !dbg !442
  %idxprom90 = zext i32 %or to i64, !dbg !531
  %arrayidx91 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom90, !dbg !531
  %14 = load i16, i16* %arrayidx91, align 2, !dbg !531
  %conv92 = zext i16 %14 to i64, !dbg !531
  %mul93 = shl nuw nsw i64 %conv92, 2, !dbg !531
  %arrayidx95 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul93, !dbg !531
  call void @llvm.dbg.value(metadata i8* %arrayidx95, metadata !423, metadata !DIExpression()), !dbg !442
  %cmp96 = icmp eq i8* %c.5, %c.2, !dbg !532
  br i1 %cmp96, label %if.else102, label %if.then98, !dbg !531

if.then98:                                        ; preds = %if.end84
  %add.ptr99 = getelementptr inbounds i8, i8* %arrayidx95, i64 1, !dbg !534
  %call100 = call i8* @memcpy(i8* %c.5, i8* nonnull %add.ptr99, i64 4) #7, !dbg !534
  %add.ptr101 = getelementptr inbounds i8, i8* %c.5, i64 3, !dbg !534
  call void @llvm.dbg.value(metadata i8* %add.ptr101, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end115, !dbg !534

if.else102:                                       ; preds = %if.end84
  %15 = load i8, i8* %arrayidx95, align 4, !dbg !536
  %tobool103 = icmp eq i8 %15, 0, !dbg !536
  br i1 %tobool103, label %if.end115, label %if.then104, !dbg !532

if.then104:                                       ; preds = %if.else102
  %add.ptr105 = getelementptr inbounds i8, i8* %arrayidx95, i64 4, !dbg !538
  %idx.ext107 = zext i8 %15 to i64, !dbg !538
  %idx.neg108 = sub nsw i64 0, %idx.ext107, !dbg !538
  %add.ptr109 = getelementptr inbounds i8, i8* %add.ptr105, i64 %idx.neg108, !dbg !538
  %call110 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr109, i64 4) #7, !dbg !538
  %add.ptr113 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext107, !dbg !538
  call void @llvm.dbg.value(metadata i8* %add.ptr113, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end115, !dbg !538

if.end115:                                        ; preds = %if.else102, %if.then104, %if.then98
  %c.7 = phi i8* [ %add.ptr101, %if.then98 ], [ %add.ptr113, %if.then104 ], [ %c.2, %if.else102 ], !dbg !540
  call void @llvm.dbg.value(metadata i8* %c.7, metadata !422, metadata !DIExpression()), !dbg !442
  %shr117 = lshr i32 %13, 16, !dbg !541
  %and118 = and i32 %shr117, 1023, !dbg !542
  call void @llvm.dbg.value(metadata i32 %and118, metadata !428, metadata !DIExpression()), !dbg !442
  %idxprom119 = zext i32 %and118 to i64, !dbg !543
  %arrayidx120 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom119, !dbg !543
  %16 = load i16, i16* %arrayidx120, align 2, !dbg !543
  %conv121 = zext i16 %16 to i64, !dbg !543
  %mul122 = shl nuw nsw i64 %conv121, 2, !dbg !543
  %arrayidx124 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul122, !dbg !543
  call void @llvm.dbg.value(metadata i8* %arrayidx124, metadata !423, metadata !DIExpression()), !dbg !442
  %cmp125 = icmp eq i8* %c.7, %c.2, !dbg !544
  br i1 %cmp125, label %if.else131, label %if.then127, !dbg !543

if.then127:                                       ; preds = %if.end115
  %add.ptr128 = getelementptr inbounds i8, i8* %arrayidx124, i64 1, !dbg !546
  %call129 = call i8* @memcpy(i8* %c.7, i8* nonnull %add.ptr128, i64 4) #7, !dbg !546
  %add.ptr130 = getelementptr inbounds i8, i8* %c.7, i64 3, !dbg !546
  call void @llvm.dbg.value(metadata i8* %add.ptr130, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end144, !dbg !546

if.else131:                                       ; preds = %if.end115
  %17 = load i8, i8* %arrayidx124, align 4, !dbg !548
  %tobool132 = icmp eq i8 %17, 0, !dbg !548
  br i1 %tobool132, label %if.end144, label %if.then133, !dbg !544

if.then133:                                       ; preds = %if.else131
  %add.ptr134 = getelementptr inbounds i8, i8* %arrayidx124, i64 4, !dbg !550
  %idx.ext136 = zext i8 %17 to i64, !dbg !550
  %idx.neg137 = sub nsw i64 0, %idx.ext136, !dbg !550
  %add.ptr138 = getelementptr inbounds i8, i8* %add.ptr134, i64 %idx.neg137, !dbg !550
  %call139 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr138, i64 4) #7, !dbg !550
  %add.ptr142 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext136, !dbg !550
  call void @llvm.dbg.value(metadata i8* %add.ptr142, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end144, !dbg !550

if.end144:                                        ; preds = %if.else131, %if.then133, %if.then127
  %c.9 = phi i8* [ %add.ptr130, %if.then127 ], [ %add.ptr142, %if.then133 ], [ %c.2, %if.else131 ], !dbg !552
  call void @llvm.dbg.value(metadata i8* %c.9, metadata !422, metadata !DIExpression()), !dbg !442
  %shr146 = lshr i32 %13, 6, !dbg !553
  %and147 = and i32 %shr146, 1023, !dbg !554
  call void @llvm.dbg.value(metadata i32 %and147, metadata !428, metadata !DIExpression()), !dbg !442
  %idxprom148 = zext i32 %and147 to i64, !dbg !555
  %arrayidx149 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom148, !dbg !555
  %18 = load i16, i16* %arrayidx149, align 2, !dbg !555
  %conv150 = zext i16 %18 to i64, !dbg !555
  %mul151 = shl nuw nsw i64 %conv150, 2, !dbg !555
  %arrayidx153 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul151, !dbg !555
  call void @llvm.dbg.value(metadata i8* %arrayidx153, metadata !423, metadata !DIExpression()), !dbg !442
  %cmp154 = icmp eq i8* %c.9, %c.2, !dbg !556
  br i1 %cmp154, label %if.else160, label %if.then156, !dbg !555

if.then156:                                       ; preds = %if.end144
  %add.ptr157 = getelementptr inbounds i8, i8* %arrayidx153, i64 1, !dbg !558
  %call158 = call i8* @memcpy(i8* %c.9, i8* nonnull %add.ptr157, i64 4) #7, !dbg !558
  %add.ptr159 = getelementptr inbounds i8, i8* %c.9, i64 3, !dbg !558
  call void @llvm.dbg.value(metadata i8* %add.ptr159, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end173, !dbg !558

if.else160:                                       ; preds = %if.end144
  %19 = load i8, i8* %arrayidx153, align 4, !dbg !560
  %tobool161 = icmp eq i8 %19, 0, !dbg !560
  br i1 %tobool161, label %if.end173, label %if.then162, !dbg !556

if.then162:                                       ; preds = %if.else160
  %add.ptr163 = getelementptr inbounds i8, i8* %arrayidx153, i64 4, !dbg !562
  %idx.ext165 = zext i8 %19 to i64, !dbg !562
  %idx.neg166 = sub nsw i64 0, %idx.ext165, !dbg !562
  %add.ptr167 = getelementptr inbounds i8, i8* %add.ptr163, i64 %idx.neg166, !dbg !562
  %call168 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr167, i64 4) #7, !dbg !562
  %add.ptr171 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext165, !dbg !562
  call void @llvm.dbg.value(metadata i8* %add.ptr171, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end173, !dbg !562

if.end173:                                        ; preds = %if.else160, %if.then162, %if.then156
  %c.11 = phi i8* [ %add.ptr159, %if.then156 ], [ %add.ptr171, %if.then162 ], [ %c.2, %if.else160 ], !dbg !564
  call void @llvm.dbg.value(metadata i8* %c.11, metadata !422, metadata !DIExpression()), !dbg !442
  %and175 = shl i32 %13, 4, !dbg !565
  %shl176 = and i32 %and175, 1008, !dbg !565
  %20 = load i32, i32* %arrayidx4, align 4, !dbg !566
  %shr178 = lshr i32 %20, 28, !dbg !567
  %or179 = or i32 %shl176, %shr178, !dbg !568
  call void @llvm.dbg.value(metadata i32 %or179, metadata !428, metadata !DIExpression()), !dbg !442
  %idxprom180 = zext i32 %or179 to i64, !dbg !569
  %arrayidx181 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom180, !dbg !569
  %21 = load i16, i16* %arrayidx181, align 2, !dbg !569
  %conv182 = zext i16 %21 to i64, !dbg !569
  %mul183 = shl nuw nsw i64 %conv182, 2, !dbg !569
  %arrayidx185 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul183, !dbg !569
  call void @llvm.dbg.value(metadata i8* %arrayidx185, metadata !423, metadata !DIExpression()), !dbg !442
  %cmp186 = icmp eq i8* %c.11, %c.2, !dbg !570
  br i1 %cmp186, label %if.else192, label %if.then188, !dbg !569

if.then188:                                       ; preds = %if.end173
  %add.ptr189 = getelementptr inbounds i8, i8* %arrayidx185, i64 1, !dbg !572
  %call190 = call i8* @memcpy(i8* %c.11, i8* nonnull %add.ptr189, i64 4) #7, !dbg !572
  %add.ptr191 = getelementptr inbounds i8, i8* %c.11, i64 3, !dbg !572
  call void @llvm.dbg.value(metadata i8* %add.ptr191, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end205, !dbg !572

if.else192:                                       ; preds = %if.end173
  %22 = load i8, i8* %arrayidx185, align 4, !dbg !574
  %tobool193 = icmp eq i8 %22, 0, !dbg !574
  br i1 %tobool193, label %if.end205, label %if.then194, !dbg !570

if.then194:                                       ; preds = %if.else192
  %add.ptr195 = getelementptr inbounds i8, i8* %arrayidx185, i64 4, !dbg !576
  %idx.ext197 = zext i8 %22 to i64, !dbg !576
  %idx.neg198 = sub nsw i64 0, %idx.ext197, !dbg !576
  %add.ptr199 = getelementptr inbounds i8, i8* %add.ptr195, i64 %idx.neg198, !dbg !576
  %call200 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr199, i64 4) #7, !dbg !576
  %add.ptr203 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext197, !dbg !576
  call void @llvm.dbg.value(metadata i8* %add.ptr203, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end205, !dbg !576

if.end205:                                        ; preds = %if.else192, %if.then194, %if.then188
  %c.13 = phi i8* [ %add.ptr191, %if.then188 ], [ %add.ptr203, %if.then194 ], [ %c.2, %if.else192 ], !dbg !578
  call void @llvm.dbg.value(metadata i8* %c.13, metadata !422, metadata !DIExpression()), !dbg !442
  %shr207 = lshr i32 %20, 18, !dbg !579
  %and208 = and i32 %shr207, 1023, !dbg !580
  call void @llvm.dbg.value(metadata i32 %and208, metadata !428, metadata !DIExpression()), !dbg !442
  %idxprom209 = zext i32 %and208 to i64, !dbg !581
  %arrayidx210 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom209, !dbg !581
  %23 = load i16, i16* %arrayidx210, align 2, !dbg !581
  %conv211 = zext i16 %23 to i64, !dbg !581
  %mul212 = shl nuw nsw i64 %conv211, 2, !dbg !581
  %arrayidx214 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul212, !dbg !581
  call void @llvm.dbg.value(metadata i8* %arrayidx214, metadata !423, metadata !DIExpression()), !dbg !442
  %cmp215 = icmp eq i8* %c.13, %c.2, !dbg !582
  br i1 %cmp215, label %if.else221, label %if.then217, !dbg !581

if.then217:                                       ; preds = %if.end205
  %add.ptr218 = getelementptr inbounds i8, i8* %arrayidx214, i64 1, !dbg !584
  %call219 = call i8* @memcpy(i8* %c.13, i8* nonnull %add.ptr218, i64 4) #7, !dbg !584
  %add.ptr220 = getelementptr inbounds i8, i8* %c.13, i64 3, !dbg !584
  call void @llvm.dbg.value(metadata i8* %add.ptr220, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end234, !dbg !584

if.else221:                                       ; preds = %if.end205
  %24 = load i8, i8* %arrayidx214, align 4, !dbg !586
  %tobool222 = icmp eq i8 %24, 0, !dbg !586
  br i1 %tobool222, label %if.end234, label %if.then223, !dbg !582

if.then223:                                       ; preds = %if.else221
  %add.ptr224 = getelementptr inbounds i8, i8* %arrayidx214, i64 4, !dbg !588
  %idx.ext226 = zext i8 %24 to i64, !dbg !588
  %idx.neg227 = sub nsw i64 0, %idx.ext226, !dbg !588
  %add.ptr228 = getelementptr inbounds i8, i8* %add.ptr224, i64 %idx.neg227, !dbg !588
  %call229 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr228, i64 4) #7, !dbg !588
  %add.ptr232 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext226, !dbg !588
  call void @llvm.dbg.value(metadata i8* %add.ptr232, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end234, !dbg !588

if.end234:                                        ; preds = %if.else221, %if.then223, %if.then217
  %c.15 = phi i8* [ %add.ptr220, %if.then217 ], [ %add.ptr232, %if.then223 ], [ %c.2, %if.else221 ], !dbg !590
  call void @llvm.dbg.value(metadata i8* %c.15, metadata !422, metadata !DIExpression()), !dbg !442
  %shr236 = lshr i32 %20, 8, !dbg !591
  %and237 = and i32 %shr236, 1023, !dbg !592
  call void @llvm.dbg.value(metadata i32 %and237, metadata !428, metadata !DIExpression()), !dbg !442
  %idxprom238 = zext i32 %and237 to i64, !dbg !593
  %arrayidx239 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom238, !dbg !593
  %25 = load i16, i16* %arrayidx239, align 2, !dbg !593
  %conv240 = zext i16 %25 to i64, !dbg !593
  %mul241 = shl nuw nsw i64 %conv240, 2, !dbg !593
  %arrayidx243 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul241, !dbg !593
  call void @llvm.dbg.value(metadata i8* %arrayidx243, metadata !423, metadata !DIExpression()), !dbg !442
  %cmp244 = icmp eq i8* %c.15, %c.2, !dbg !594
  br i1 %cmp244, label %if.else250, label %if.then246, !dbg !593

if.then246:                                       ; preds = %if.end234
  %add.ptr247 = getelementptr inbounds i8, i8* %arrayidx243, i64 1, !dbg !596
  %call248 = call i8* @memcpy(i8* %c.15, i8* nonnull %add.ptr247, i64 4) #7, !dbg !596
  %add.ptr249 = getelementptr inbounds i8, i8* %c.15, i64 3, !dbg !596
  call void @llvm.dbg.value(metadata i8* %add.ptr249, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end263, !dbg !596

if.else250:                                       ; preds = %if.end234
  %26 = load i8, i8* %arrayidx243, align 4, !dbg !598
  %tobool251 = icmp eq i8 %26, 0, !dbg !598
  br i1 %tobool251, label %if.end263, label %if.then252, !dbg !594

if.then252:                                       ; preds = %if.else250
  %add.ptr253 = getelementptr inbounds i8, i8* %arrayidx243, i64 4, !dbg !600
  %idx.ext255 = zext i8 %26 to i64, !dbg !600
  %idx.neg256 = sub nsw i64 0, %idx.ext255, !dbg !600
  %add.ptr257 = getelementptr inbounds i8, i8* %add.ptr253, i64 %idx.neg256, !dbg !600
  %call258 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr257, i64 4) #7, !dbg !600
  %add.ptr261 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext255, !dbg !600
  call void @llvm.dbg.value(metadata i8* %add.ptr261, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end263, !dbg !600

if.end263:                                        ; preds = %if.else250, %if.then252, %if.then246
  %c.17 = phi i8* [ %add.ptr249, %if.then246 ], [ %add.ptr261, %if.then252 ], [ %c.2, %if.else250 ], !dbg !602
  call void @llvm.dbg.value(metadata i8* %c.17, metadata !422, metadata !DIExpression()), !dbg !442
  %and265 = shl i32 %20, 2, !dbg !603
  %shl266 = and i32 %and265, 1020, !dbg !603
  %27 = load i32, i32* %arrayidx, align 16, !dbg !604
  %shr268 = lshr i32 %27, 30, !dbg !605
  %or269 = or i32 %shl266, %shr268, !dbg !606
  call void @llvm.dbg.value(metadata i32 %or269, metadata !428, metadata !DIExpression()), !dbg !442
  %idxprom270 = zext i32 %or269 to i64, !dbg !607
  %arrayidx271 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom270, !dbg !607
  %28 = load i16, i16* %arrayidx271, align 2, !dbg !607
  %conv272 = zext i16 %28 to i64, !dbg !607
  %mul273 = shl nuw nsw i64 %conv272, 2, !dbg !607
  %arrayidx275 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul273, !dbg !607
  call void @llvm.dbg.value(metadata i8* %arrayidx275, metadata !423, metadata !DIExpression()), !dbg !442
  %cmp276 = icmp eq i8* %c.17, %c.2, !dbg !608
  br i1 %cmp276, label %if.else282, label %if.then278, !dbg !607

if.then278:                                       ; preds = %if.end263
  %add.ptr279 = getelementptr inbounds i8, i8* %arrayidx275, i64 1, !dbg !610
  %call280 = call i8* @memcpy(i8* %c.17, i8* nonnull %add.ptr279, i64 4) #7, !dbg !610
  %add.ptr281 = getelementptr inbounds i8, i8* %c.17, i64 3, !dbg !610
  call void @llvm.dbg.value(metadata i8* %add.ptr281, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end295, !dbg !610

if.else282:                                       ; preds = %if.end263
  %29 = load i8, i8* %arrayidx275, align 4, !dbg !612
  %tobool283 = icmp eq i8 %29, 0, !dbg !612
  br i1 %tobool283, label %if.end295, label %if.then284, !dbg !608

if.then284:                                       ; preds = %if.else282
  %add.ptr285 = getelementptr inbounds i8, i8* %arrayidx275, i64 4, !dbg !614
  %idx.ext287 = zext i8 %29 to i64, !dbg !614
  %idx.neg288 = sub nsw i64 0, %idx.ext287, !dbg !614
  %add.ptr289 = getelementptr inbounds i8, i8* %add.ptr285, i64 %idx.neg288, !dbg !614
  %call290 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr289, i64 4) #7, !dbg !614
  %add.ptr293 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext287, !dbg !614
  call void @llvm.dbg.value(metadata i8* %add.ptr293, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end295, !dbg !614

if.end295:                                        ; preds = %if.else282, %if.then284, %if.then278
  %c.19 = phi i8* [ %add.ptr281, %if.then278 ], [ %add.ptr293, %if.then284 ], [ %c.2, %if.else282 ], !dbg !616
  call void @llvm.dbg.value(metadata i8* %c.19, metadata !422, metadata !DIExpression()), !dbg !442
  %shr297 = lshr i32 %27, 20, !dbg !617
  %and298 = and i32 %shr297, 1023, !dbg !618
  call void @llvm.dbg.value(metadata i32 %and298, metadata !428, metadata !DIExpression()), !dbg !442
  %idxprom299 = zext i32 %and298 to i64, !dbg !619
  %arrayidx300 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom299, !dbg !619
  %30 = load i16, i16* %arrayidx300, align 2, !dbg !619
  %conv301 = zext i16 %30 to i64, !dbg !619
  %mul302 = shl nuw nsw i64 %conv301, 2, !dbg !619
  %arrayidx304 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul302, !dbg !619
  call void @llvm.dbg.value(metadata i8* %arrayidx304, metadata !423, metadata !DIExpression()), !dbg !442
  %cmp305 = icmp eq i8* %c.19, %c.2, !dbg !620
  br i1 %cmp305, label %if.else311, label %if.then307, !dbg !619

if.then307:                                       ; preds = %if.end295
  %add.ptr308 = getelementptr inbounds i8, i8* %arrayidx304, i64 1, !dbg !622
  %call309 = call i8* @memcpy(i8* %c.19, i8* nonnull %add.ptr308, i64 4) #7, !dbg !622
  %add.ptr310 = getelementptr inbounds i8, i8* %c.19, i64 3, !dbg !622
  call void @llvm.dbg.value(metadata i8* %add.ptr310, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end324, !dbg !622

if.else311:                                       ; preds = %if.end295
  %31 = load i8, i8* %arrayidx304, align 4, !dbg !624
  %tobool312 = icmp eq i8 %31, 0, !dbg !624
  br i1 %tobool312, label %if.end324, label %if.then313, !dbg !620

if.then313:                                       ; preds = %if.else311
  %add.ptr314 = getelementptr inbounds i8, i8* %arrayidx304, i64 4, !dbg !626
  %idx.ext316 = zext i8 %31 to i64, !dbg !626
  %idx.neg317 = sub nsw i64 0, %idx.ext316, !dbg !626
  %add.ptr318 = getelementptr inbounds i8, i8* %add.ptr314, i64 %idx.neg317, !dbg !626
  %call319 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr318, i64 4) #7, !dbg !626
  %add.ptr322 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext316, !dbg !626
  call void @llvm.dbg.value(metadata i8* %add.ptr322, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end324, !dbg !626

if.end324:                                        ; preds = %if.else311, %if.then313, %if.then307
  %c.21 = phi i8* [ %add.ptr310, %if.then307 ], [ %add.ptr322, %if.then313 ], [ %c.2, %if.else311 ], !dbg !628
  call void @llvm.dbg.value(metadata i8* %c.21, metadata !422, metadata !DIExpression()), !dbg !442
  %shr326 = lshr i32 %27, 10, !dbg !629
  %and327 = and i32 %shr326, 1023, !dbg !630
  call void @llvm.dbg.value(metadata i32 %and327, metadata !428, metadata !DIExpression()), !dbg !442
  %idxprom328 = zext i32 %and327 to i64, !dbg !631
  %arrayidx329 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom328, !dbg !631
  %32 = load i16, i16* %arrayidx329, align 2, !dbg !631
  %conv330 = zext i16 %32 to i64, !dbg !631
  %mul331 = shl nuw nsw i64 %conv330, 2, !dbg !631
  %arrayidx333 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul331, !dbg !631
  call void @llvm.dbg.value(metadata i8* %arrayidx333, metadata !423, metadata !DIExpression()), !dbg !442
  %cmp334 = icmp eq i8* %c.21, %c.2, !dbg !632
  br i1 %cmp334, label %if.else340, label %if.then336, !dbg !631

if.then336:                                       ; preds = %if.end324
  %add.ptr337 = getelementptr inbounds i8, i8* %arrayidx333, i64 1, !dbg !634
  %call338 = call i8* @memcpy(i8* %c.21, i8* nonnull %add.ptr337, i64 4) #7, !dbg !634
  %add.ptr339 = getelementptr inbounds i8, i8* %c.21, i64 3, !dbg !634
  call void @llvm.dbg.value(metadata i8* %add.ptr339, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end353, !dbg !634

if.else340:                                       ; preds = %if.end324
  %33 = load i8, i8* %arrayidx333, align 4, !dbg !636
  %tobool341 = icmp eq i8 %33, 0, !dbg !636
  br i1 %tobool341, label %if.end353, label %if.then342, !dbg !632

if.then342:                                       ; preds = %if.else340
  %add.ptr343 = getelementptr inbounds i8, i8* %arrayidx333, i64 4, !dbg !638
  %idx.ext345 = zext i8 %33 to i64, !dbg !638
  %idx.neg346 = sub nsw i64 0, %idx.ext345, !dbg !638
  %add.ptr347 = getelementptr inbounds i8, i8* %add.ptr343, i64 %idx.neg346, !dbg !638
  %call348 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr347, i64 4) #7, !dbg !638
  %add.ptr351 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext345, !dbg !638
  call void @llvm.dbg.value(metadata i8* %add.ptr351, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end353, !dbg !638

if.end353:                                        ; preds = %if.else340, %if.then342, %if.then336
  %c.23 = phi i8* [ %add.ptr339, %if.then336 ], [ %add.ptr351, %if.then342 ], [ %c.2, %if.else340 ], !dbg !640
  call void @llvm.dbg.value(metadata i8* %c.23, metadata !422, metadata !DIExpression()), !dbg !442
  %and355 = and i32 %27, 1023, !dbg !641
  call void @llvm.dbg.value(metadata i32 %and355, metadata !428, metadata !DIExpression()), !dbg !442
  %idxprom356 = zext i32 %and355 to i64, !dbg !642
  %arrayidx357 = getelementptr inbounds [1024 x i16], [1024 x i16]* @DPD2BIN, i64 0, i64 %idxprom356, !dbg !642
  %34 = load i16, i16* %arrayidx357, align 2, !dbg !642
  %conv358 = zext i16 %34 to i64, !dbg !642
  %mul359 = shl nuw nsw i64 %conv358, 2, !dbg !642
  %arrayidx361 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %mul359, !dbg !642
  call void @llvm.dbg.value(metadata i8* %arrayidx361, metadata !423, metadata !DIExpression()), !dbg !442
  %cmp362 = icmp eq i8* %c.23, %c.2, !dbg !643
  br i1 %cmp362, label %if.else368, label %if.then364, !dbg !642

if.then364:                                       ; preds = %if.end353
  %add.ptr365 = getelementptr inbounds i8, i8* %arrayidx361, i64 1, !dbg !645
  %call366 = call i8* @memcpy(i8* %c.23, i8* nonnull %add.ptr365, i64 4) #7, !dbg !645
  %add.ptr367 = getelementptr inbounds i8, i8* %c.23, i64 3, !dbg !645
  call void @llvm.dbg.value(metadata i8* %add.ptr367, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end381, !dbg !645

if.else368:                                       ; preds = %if.end353
  %35 = load i8, i8* %arrayidx361, align 4, !dbg !647
  %tobool369 = icmp eq i8 %35, 0, !dbg !647
  br i1 %tobool369, label %if.end381, label %if.then370, !dbg !643

if.then370:                                       ; preds = %if.else368
  %add.ptr371 = getelementptr inbounds i8, i8* %arrayidx361, i64 4, !dbg !649
  %idx.ext373 = zext i8 %35 to i64, !dbg !649
  %idx.neg374 = sub nsw i64 0, %idx.ext373, !dbg !649
  %add.ptr375 = getelementptr inbounds i8, i8* %add.ptr371, i64 %idx.neg374, !dbg !649
  %call376 = call i8* @memcpy(i8* %c.2, i8* nonnull %add.ptr375, i64 4) #7, !dbg !649
  %add.ptr379 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext373, !dbg !649
  call void @llvm.dbg.value(metadata i8* %add.ptr379, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end381, !dbg !649

if.end381:                                        ; preds = %if.else368, %if.then370, %if.then364
  %c.25 = phi i8* [ %add.ptr367, %if.then364 ], [ %add.ptr379, %if.then370 ], [ %c.2, %if.else368 ], !dbg !651
  call void @llvm.dbg.value(metadata i8* %c.25, metadata !422, metadata !DIExpression()), !dbg !442
  %cmp382 = icmp eq i8* %c.25, %c.2, !dbg !652
  br i1 %cmp382, label %if.then384, label %if.end386, !dbg !654

if.then384:                                       ; preds = %if.end381
  %incdec.ptr385 = getelementptr inbounds i8, i8* %c.2, i64 1, !dbg !655
  call void @llvm.dbg.value(metadata i8* %incdec.ptr385, metadata !422, metadata !DIExpression()), !dbg !442
  store i8 48, i8* %c.2, align 1, !dbg !656
  br label %if.end386, !dbg !657

if.end386:                                        ; preds = %if.then384, %if.end381
  %c.26 = phi i8* [ %incdec.ptr385, %if.then384 ], [ %c.25, %if.end381 ], !dbg !442
  call void @llvm.dbg.value(metadata i8* %c.26, metadata !422, metadata !DIExpression()), !dbg !442
  %cmp387 = icmp eq i32 %exp.0, 0, !dbg !658
  br i1 %cmp387, label %if.then389, label %if.end390, !dbg !660

if.then389:                                       ; preds = %if.end386
  store i8 0, i8* %c.26, align 1, !dbg !661
  br label %cleanup, !dbg !663

if.end390:                                        ; preds = %if.end386
  call void @llvm.dbg.value(metadata i32 0, metadata !430, metadata !DIExpression()), !dbg !442
  %sub.ptr.lhs.cast = ptrtoint i8* %c.26 to i64, !dbg !664
  %sub.ptr.rhs.cast = ptrtoint i8* %c.2 to i64, !dbg !664
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !664
  %36 = trunc i64 %sub.ptr.sub to i32, !dbg !665
  %conv393 = add i32 %exp.0, %36, !dbg !665
  call void @llvm.dbg.value(metadata i32 %conv393, metadata !429, metadata !DIExpression()), !dbg !442
  %cmp394 = icmp sgt i32 %exp.0, 0, !dbg !666
  %cmp396 = icmp slt i32 %conv393, -5, !dbg !668
  %or.cond = or i1 %cmp394, %cmp396, !dbg !669
  %sub399 = add nsw i32 %conv393, -1, !dbg !669
  %pre.0 = select i1 %or.cond, i32 1, i32 %conv393, !dbg !669
  %e.0 = select i1 %or.cond, i32 %sub399, i32 0, !dbg !669
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !430, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i32 %pre.0, metadata !429, metadata !DIExpression()), !dbg !442
  %add.ptr401 = getelementptr inbounds i8, i8* %c.26, i64 -1, !dbg !670
  call void @llvm.dbg.value(metadata i8* %add.ptr401, metadata !426, metadata !DIExpression()), !dbg !442
  %cmp402 = icmp sgt i32 %pre.0, 0, !dbg !671
  br i1 %cmp402, label %if.then404, label %if.end461, !dbg !672

if.then404:                                       ; preds = %if.end390
  %idx.ext405 = sext i32 %pre.0 to i64, !dbg !673
  %add.ptr406 = getelementptr inbounds i8, i8* %c.2, i64 %idx.ext405, !dbg !673
  call void @llvm.dbg.value(metadata i8* %add.ptr406, metadata !433, metadata !DIExpression()), !dbg !674
  %cmp407 = icmp ult i8* %add.ptr406, %c.26, !dbg !675
  br i1 %cmp407, label %for.cond.preheader, label %if.end415, !dbg !677

for.cond.preheader:                               ; preds = %if.then404
  br label %for.cond, !dbg !678

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %t.0 = phi i8* [ %incdec.ptr413, %for.body ], [ %c.26, %for.cond.preheader ], !dbg !681
  %s.0 = phi i8* [ %incdec.ptr412, %for.body ], [ %add.ptr401, %for.cond.preheader ], !dbg !442
  call void @llvm.dbg.value(metadata i8* %s.0, metadata !426, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i8* %t.0, metadata !427, metadata !DIExpression()), !dbg !442
  %cmp410 = icmp ult i8* %s.0, %add.ptr406, !dbg !682
  br i1 %cmp410, label %for.end, label %for.body, !dbg !678

for.body:                                         ; preds = %for.cond
  %37 = load i8, i8* %s.0, align 1, !dbg !684
  store i8 %37, i8* %t.0, align 1, !dbg !685
  %incdec.ptr412 = getelementptr inbounds i8, i8* %s.0, i64 -1, !dbg !686
  call void @llvm.dbg.value(metadata i8* %incdec.ptr412, metadata !426, metadata !DIExpression()), !dbg !442
  %incdec.ptr413 = getelementptr inbounds i8, i8* %t.0, i64 -1, !dbg !687
  call void @llvm.dbg.value(metadata i8* %incdec.ptr413, metadata !427, metadata !DIExpression()), !dbg !442
  br label %for.cond, !dbg !688, !llvm.loop !689

for.end:                                          ; preds = %for.cond
  %t.0.lcssa = phi i8* [ %t.0, %for.cond ], !dbg !681
  call void @llvm.dbg.value(metadata i8* %t.0.lcssa, metadata !427, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i8* %t.0.lcssa, metadata !427, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i8* %t.0.lcssa, metadata !427, metadata !DIExpression()), !dbg !442
  store i8 46, i8* %t.0.lcssa, align 1, !dbg !691
  %incdec.ptr414 = getelementptr inbounds i8, i8* %c.26, i64 1, !dbg !692
  call void @llvm.dbg.value(metadata i8* %incdec.ptr414, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end415, !dbg !693

if.end415:                                        ; preds = %for.end, %if.then404
  %c.27 = phi i8* [ %incdec.ptr414, %for.end ], [ %c.26, %if.then404 ], !dbg !442
  call void @llvm.dbg.value(metadata i8* %c.27, metadata !422, metadata !DIExpression()), !dbg !442
  %cmp416 = icmp eq i32 %e.0, 0, !dbg !694
  br i1 %cmp416, label %if.end460, label %if.then418, !dbg !695

if.then418:                                       ; preds = %if.end415
  %incdec.ptr419 = getelementptr inbounds i8, i8* %c.27, i64 1, !dbg !696
  call void @llvm.dbg.value(metadata i8* %incdec.ptr419, metadata !422, metadata !DIExpression()), !dbg !442
  store i8 69, i8* %c.27, align 1, !dbg !697
  %incdec.ptr420 = getelementptr inbounds i8, i8* %c.27, i64 2, !dbg !698
  call void @llvm.dbg.value(metadata i8* %incdec.ptr420, metadata !422, metadata !DIExpression()), !dbg !442
  store i8 43, i8* %incdec.ptr419, align 1, !dbg !699
  %cmp421 = icmp slt i32 %e.0, 0, !dbg !700
  br i1 %cmp421, label %if.then423, label %if.end426, !dbg !702

if.then423:                                       ; preds = %if.then418
  store i8 45, i8* %incdec.ptr419, align 1, !dbg !703
  %sub425 = sub nsw i32 0, %e.0, !dbg !705
  call void @llvm.dbg.value(metadata i32 %sub425, metadata !430, metadata !DIExpression()), !dbg !442
  br label %if.end426, !dbg !706

if.end426:                                        ; preds = %if.then423, %if.then418
  %e.1 = phi i32 [ %sub425, %if.then423 ], [ %e.0, %if.then418 ], !dbg !442
  call void @llvm.dbg.value(metadata i32 %e.1, metadata !430, metadata !DIExpression()), !dbg !442
  %cmp427 = icmp slt i32 %e.1, 1000, !dbg !707
  br i1 %cmp427, label %if.then429, label %if.else442, !dbg !708

if.then429:                                       ; preds = %if.end426
  %mul430 = shl nsw i32 %e.1, 2, !dbg !709
  %idxprom431 = sext i32 %mul430 to i64, !dbg !711
  %arrayidx432 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %idxprom431, !dbg !711
  call void @llvm.dbg.value(metadata i8* %arrayidx432, metadata !423, metadata !DIExpression()), !dbg !442
  %add.ptr433 = getelementptr inbounds i8, i8* %arrayidx432, i64 4, !dbg !712
  %38 = load i8, i8* %arrayidx432, align 4, !dbg !713
  %idx.ext435 = zext i8 %38 to i64, !dbg !714
  %idx.neg436 = sub nsw i64 0, %idx.ext435, !dbg !714
  %add.ptr437 = getelementptr inbounds i8, i8* %add.ptr433, i64 %idx.neg436, !dbg !714
  %call438 = call i8* @memcpy(i8* nonnull %incdec.ptr420, i8* nonnull %add.ptr437, i64 4) #7, !dbg !715
  %add.ptr441 = getelementptr inbounds i8, i8* %incdec.ptr420, i64 %idx.ext435, !dbg !716
  call void @llvm.dbg.value(metadata i8* %add.ptr441, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end460, !dbg !717

if.else442:                                       ; preds = %if.end426
  %shr443 = ashr i32 %e.1, 3, !dbg !718
  %mul444 = mul nsw i32 %shr443, 1049, !dbg !719
  %shr445 = ashr i32 %mul444, 17, !dbg !720
  call void @llvm.dbg.value(metadata i32 %shr445, metadata !436, metadata !DIExpression()), !dbg !721
  %39 = mul nsw i32 %shr445, -1000, !dbg !722
  %sub447 = add i32 %e.1, %39, !dbg !722
  call void @llvm.dbg.value(metadata i32 %sub447, metadata !441, metadata !DIExpression()), !dbg !721
  %40 = trunc i32 %shr445 to i8, !dbg !723
  %conv451 = add i8 %40, 48, !dbg !723
  %incdec.ptr452 = getelementptr inbounds i8, i8* %c.27, i64 3, !dbg !724
  call void @llvm.dbg.value(metadata i8* %incdec.ptr452, metadata !422, metadata !DIExpression()), !dbg !442
  store i8 %conv451, i8* %incdec.ptr420, align 1, !dbg !725
  %mul453 = shl nsw i32 %sub447, 2, !dbg !726
  %idxprom454 = sext i32 %mul453 to i64, !dbg !727
  %arrayidx455 = getelementptr inbounds [4001 x i8], [4001 x i8]* @BIN2CHAR, i64 0, i64 %idxprom454, !dbg !727
  call void @llvm.dbg.value(metadata i8* %arrayidx455, metadata !423, metadata !DIExpression()), !dbg !442
  %add.ptr456 = getelementptr inbounds i8, i8* %arrayidx455, i64 1, !dbg !728
  %call457 = call i8* @memcpy(i8* nonnull %incdec.ptr452, i8* nonnull %add.ptr456, i64 4) #7, !dbg !729
  %add.ptr458 = getelementptr inbounds i8, i8* %c.27, i64 6, !dbg !730
  call void @llvm.dbg.value(metadata i8* %add.ptr458, metadata !422, metadata !DIExpression()), !dbg !442
  br label %if.end460

if.end460:                                        ; preds = %if.end415, %if.then429, %if.else442
  %c.29 = phi i8* [ %c.27, %if.end415 ], [ %add.ptr441, %if.then429 ], [ %add.ptr458, %if.else442 ], !dbg !674
  call void @llvm.dbg.value(metadata i8* %c.29, metadata !422, metadata !DIExpression()), !dbg !442
  store i8 0, i8* %c.29, align 1, !dbg !731
  br label %cleanup

if.end461:                                        ; preds = %if.end390
  %add.ptr462 = getelementptr inbounds i8, i8* %c.26, i64 1, !dbg !732
  %idx.ext463 = sext i32 %pre.0 to i64, !dbg !733
  %idx.neg464 = sub nsw i64 0, %idx.ext463, !dbg !733
  %add.ptr465 = getelementptr inbounds i8, i8* %add.ptr462, i64 %idx.neg464, !dbg !733
  call void @llvm.dbg.value(metadata i8* %add.ptr465, metadata !427, metadata !DIExpression()), !dbg !442
  %add.ptr466 = getelementptr inbounds i8, i8* %add.ptr465, i64 1, !dbg !734
  store i8 0, i8* %add.ptr466, align 1, !dbg !735
  br label %for.cond467, !dbg !736

for.cond467:                                      ; preds = %for.body470, %if.end461
  %t.1 = phi i8* [ %add.ptr465, %if.end461 ], [ %incdec.ptr473, %for.body470 ], !dbg !442
  %s.1 = phi i8* [ %add.ptr401, %if.end461 ], [ %incdec.ptr472, %for.body470 ], !dbg !442
  call void @llvm.dbg.value(metadata i8* %s.1, metadata !426, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i8* %t.1, metadata !427, metadata !DIExpression()), !dbg !442
  %cmp468 = icmp ult i8* %s.1, %c.2, !dbg !737
  br i1 %cmp468, label %for.end474, label %for.body470, !dbg !740

for.body470:                                      ; preds = %for.cond467
  %41 = load i8, i8* %s.1, align 1, !dbg !741
  store i8 %41, i8* %t.1, align 1, !dbg !742
  %incdec.ptr472 = getelementptr inbounds i8, i8* %s.1, i64 -1, !dbg !743
  call void @llvm.dbg.value(metadata i8* %incdec.ptr472, metadata !426, metadata !DIExpression()), !dbg !442
  %incdec.ptr473 = getelementptr inbounds i8, i8* %t.1, i64 -1, !dbg !744
  call void @llvm.dbg.value(metadata i8* %incdec.ptr473, metadata !427, metadata !DIExpression()), !dbg !442
  br label %for.cond467, !dbg !745, !llvm.loop !746

for.end474:                                       ; preds = %for.cond467
  call void @llvm.dbg.value(metadata i8* %c.2, metadata !422, metadata !DIExpression()), !dbg !442
  %incdec.ptr475 = getelementptr inbounds i8, i8* %c.2, i64 1, !dbg !748
  call void @llvm.dbg.value(metadata i8* %incdec.ptr475, metadata !422, metadata !DIExpression()), !dbg !442
  store i8 48, i8* %c.2, align 1, !dbg !749
  %incdec.ptr476 = getelementptr inbounds i8, i8* %c.2, i64 2, !dbg !750
  call void @llvm.dbg.value(metadata i8* %incdec.ptr476, metadata !422, metadata !DIExpression()), !dbg !442
  store i8 46, i8* %incdec.ptr475, align 1, !dbg !751
  br label %for.cond477, !dbg !752

for.cond477:                                      ; preds = %for.body480, %for.end474
  %c.30 = phi i8* [ %incdec.ptr476, %for.end474 ], [ %incdec.ptr481, %for.body480 ], !dbg !442
  %pre.1 = phi i32 [ %pre.0, %for.end474 ], [ %inc, %for.body480 ], !dbg !442
  call void @llvm.dbg.value(metadata i32 %pre.1, metadata !429, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i8* %c.30, metadata !422, metadata !DIExpression()), !dbg !442
  %cmp478 = icmp slt i32 %pre.1, 0, !dbg !753
  br i1 %cmp478, label %for.body480, label %cleanup.loopexit, !dbg !756

for.body480:                                      ; preds = %for.cond477
  %incdec.ptr481 = getelementptr inbounds i8, i8* %c.30, i64 1, !dbg !757
  call void @llvm.dbg.value(metadata i8* %incdec.ptr481, metadata !422, metadata !DIExpression()), !dbg !442
  store i8 48, i8* %c.30, align 1, !dbg !758
  %inc = add nsw i32 %pre.1, 1, !dbg !759
  call void @llvm.dbg.value(metadata i32 %inc, metadata !429, metadata !DIExpression()), !dbg !442
  br label %for.cond477, !dbg !760, !llvm.loop !761

cleanup.loopexit:                                 ; preds = %for.cond477
  br label %cleanup, !dbg !763

cleanup:                                          ; preds = %cleanup.loopexit, %land.lhs.true42, %if.end460, %if.then389, %if.then23
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !763
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !763
  ret i8* %string, !dbg !763
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal128* @__dpd128FromString(%struct.decimal128* %result, i8* %string, %struct.decContext* %set) local_unnamed_addr #4 !dbg !764 {
entry:
  %dc = alloca %struct.decContext, align 4
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal128* %result, metadata !768, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i8* %string, metadata !769, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !770, metadata !DIExpression()), !dbg !773
  %0 = bitcast %struct.decContext* %dc to i8*, !dbg !774
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #8, !dbg !774
  %1 = bitcast %struct.decNumber* %dn to i8*, !dbg !775
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %1) #8, !dbg !775
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !771, metadata !DIExpression(DW_OP_deref)), !dbg !773
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 128) #7, !dbg !776
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 3, !dbg !777
  %2 = load i32, i32* %round, align 4, !dbg !777
  %round1 = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 3, !dbg !778
  store i32 %2, i32* %round1, align 4, !dbg !779
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !771, metadata !DIExpression(DW_OP_deref)), !dbg !773
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !772, metadata !DIExpression(DW_OP_deref)), !dbg !773
  %call2 = call %struct.decNumber* @decNumberFromString(%struct.decNumber* nonnull %dn, i8* %string, %struct.decContext* nonnull %dc) #7, !dbg !780
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !771, metadata !DIExpression(DW_OP_deref)), !dbg !773
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !772, metadata !DIExpression(DW_OP_deref)), !dbg !773
  %call3 = call %struct.decimal128* @__dpd128FromNumber(%struct.decimal128* %result, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %dc) #9, !dbg !781
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 5, !dbg !782
  %3 = load i32, i32* %status, align 4, !dbg !782
  %cmp = icmp eq i32 %3, 0, !dbg !784
  br i1 %cmp, label %if.end, label %if.then, !dbg !785

if.then:                                          ; preds = %entry
  %call5 = call %struct.decContext* @decContextSetStatus(%struct.decContext* %set, i32 %3) #7, !dbg !786
  br label %if.end, !dbg !788

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %1) #8, !dbg !789
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #8, !dbg !789
  ret %struct.decimal128* %result, !dbg !790
}

declare dso_local %struct.decNumber* @decNumberFromString(%struct.decNumber*, i8*, %struct.decContext*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @decimal128IsCanonical(%struct.decimal128* %d128) local_unnamed_addr #4 !dbg !791 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %canon = alloca %struct.decimal128, align 1
  %dc = alloca %struct.decContext, align 4
  call void @llvm.dbg.value(metadata %struct.decimal128* %d128, metadata !795, metadata !DIExpression()), !dbg !799
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !800
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #8, !dbg !800
  %1 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %canon, i64 0, i32 0, i64 0, !dbg !801
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !801
  %2 = bitcast %struct.decContext* %dc to i8*, !dbg !802
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %2) #8, !dbg !802
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !798, metadata !DIExpression(DW_OP_deref)), !dbg !799
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 128) #7, !dbg !803
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !796, metadata !DIExpression(DW_OP_deref)), !dbg !799
  %call1 = call %struct.decNumber* @__dpd128ToNumber(%struct.decimal128* %d128, %struct.decNumber* nonnull %dn) #9, !dbg !804
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !796, metadata !DIExpression(DW_OP_deref)), !dbg !799
  call void @llvm.dbg.value(metadata %struct.decimal128* %canon, metadata !797, metadata !DIExpression(DW_OP_deref)), !dbg !799
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !798, metadata !DIExpression(DW_OP_deref)), !dbg !799
  %call2 = call %struct.decimal128* @__dpd128FromNumber(%struct.decimal128* nonnull %canon, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %dc) #9, !dbg !805
  %3 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 0, !dbg !806
  %call3 = call i32 @memcmp(i8* %3, i8* nonnull %1, i64 16) #10, !dbg !807
  %cmp = icmp eq i32 %call3, 0, !dbg !808
  %conv = zext i1 %cmp to i32, !dbg !808
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %2) #8, !dbg !809
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !809
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #8, !dbg !809
  ret i32 %conv, !dbg !810
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal128* @decimal128Canonical(%struct.decimal128* %result, %struct.decimal128* %d128) local_unnamed_addr #4 !dbg !811 {
entry:
  %dn = alloca %struct.decNumber, align 4
  %dc = alloca %struct.decContext, align 4
  call void @llvm.dbg.value(metadata %struct.decimal128* %result, metadata !815, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata %struct.decimal128* %d128, metadata !816, metadata !DIExpression()), !dbg !819
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !820
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #8, !dbg !820
  %1 = bitcast %struct.decContext* %dc to i8*, !dbg !821
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %1) #8, !dbg !821
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !818, metadata !DIExpression(DW_OP_deref)), !dbg !819
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 128) #7, !dbg !822
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !817, metadata !DIExpression(DW_OP_deref)), !dbg !819
  %call1 = call %struct.decNumber* @__dpd128ToNumber(%struct.decimal128* %d128, %struct.decNumber* nonnull %dn) #9, !dbg !823
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !817, metadata !DIExpression(DW_OP_deref)), !dbg !819
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !818, metadata !DIExpression(DW_OP_deref)), !dbg !819
  %call2 = call %struct.decimal128* @__dpd128FromNumber(%struct.decimal128* %result, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %dc) #9, !dbg !824
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %1) #8, !dbg !825
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #8, !dbg !825
  ret %struct.decimal128* %result, !dbg !826
}

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal128* @decimal128FromNumber(%struct.decimal128* %d128, %struct.decNumber* %dn, %struct.decContext* %set) local_unnamed_addr #4 !dbg !827 {
entry:
  %u = alloca %union.anon, align 8
  call void @llvm.dbg.value(metadata %struct.decimal128* %d128, metadata !829, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !830, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !831, metadata !DIExpression()), !dbg !847
  %0 = bitcast %union.anon* %u to i8*, !dbg !848
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !848
  %call = tail call %struct.decimal128* @__dpd128FromNumber(%struct.decimal128* %d128, %struct.decNumber* %dn, %struct.decContext* %set) #9, !dbg !849
  %_Dec = getelementptr inbounds %union.anon, %union.anon* %u, i64 0, i32 0, !dbg !850
  %1 = bitcast %struct.decimal128* %d128 to i64*, !dbg !851
  %2 = load i64, i64* %1, align 1, !dbg !851
  %3 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 8, !dbg !851
  %4 = bitcast i8* %3 to i64*, !dbg !851
  %5 = load i64, i64* %4, align 1, !dbg !851
  call void @__ieee_to_host_128(i64 %2, i64 %5, %struct.UINT128* nonnull %_Dec) #7, !dbg !851
  call void @_dpd_to_bid128(%struct.UINT128* nonnull %_Dec, %struct.UINT128* nonnull %_Dec) #7, !dbg !852
  %dec = bitcast %union.anon* %u to %struct.decimal128*, !dbg !853
  %6 = getelementptr inbounds %union.anon, %union.anon* %u, i64 0, i32 0, i32 0, i64 0, !dbg !854
  %7 = load i64, i64* %6, align 8, !dbg !854
  %8 = getelementptr inbounds %union.anon, %union.anon* %u, i64 0, i32 0, i32 0, i64 1, !dbg !854
  %9 = load i64, i64* %8, align 8, !dbg !854
  call void @__host_to_ieee_128(i64 %7, i64 %9, %struct.decimal128* nonnull %dec) #7, !dbg !854
  %10 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %d128, i64 0, i32 0, i64 0, !dbg !855
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* nonnull align 8 %0, i64 16, i1 false), !dbg !855
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !856
  ret %struct.decimal128* %d128, !dbg !857
}

declare dso_local void @__ieee_to_host_128(i64, i64, %struct.UINT128*) local_unnamed_addr #2

declare dso_local void @_dpd_to_bid128(%struct.UINT128*, %struct.UINT128*) local_unnamed_addr #2

declare dso_local void @__host_to_ieee_128(i64, i64, %struct.decimal128*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local %struct.decNumber* @decimal128ToNumber(%struct.decimal128* %bid128, %struct.decNumber* %dn) local_unnamed_addr #4 !dbg !858 {
entry:
  %u = alloca %union.anon.0, align 8
  call void @llvm.dbg.value(metadata %struct.decimal128* %bid128, metadata !860, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !861, metadata !DIExpression()), !dbg !867
  %0 = bitcast %union.anon.0* %u to i8*, !dbg !868
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !868
  %_Dec = getelementptr inbounds %union.anon.0, %union.anon.0* %u, i64 0, i32 0, !dbg !869
  %1 = bitcast %struct.decimal128* %bid128 to i64*, !dbg !870
  %2 = load i64, i64* %1, align 1, !dbg !870
  %3 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %bid128, i64 0, i32 0, i64 8, !dbg !870
  %4 = bitcast i8* %3 to i64*, !dbg !870
  %5 = load i64, i64* %4, align 1, !dbg !870
  call void @__ieee_to_host_128(i64 %2, i64 %5, %struct.UINT128* nonnull %_Dec) #7, !dbg !870
  call void @_bid_to_dpd128(%struct.UINT128* nonnull %_Dec, %struct.UINT128* nonnull %_Dec) #7, !dbg !871
  %dec = bitcast %union.anon.0* %u to %struct.decimal128*, !dbg !872
  %6 = getelementptr inbounds %union.anon.0, %union.anon.0* %u, i64 0, i32 0, i32 0, i64 0, !dbg !873
  %7 = load i64, i64* %6, align 8, !dbg !873
  %8 = getelementptr inbounds %union.anon.0, %union.anon.0* %u, i64 0, i32 0, i32 0, i64 1, !dbg !873
  %9 = load i64, i64* %8, align 8, !dbg !873
  call void @__host_to_ieee_128(i64 %7, i64 %9, %struct.decimal128* nonnull %dec) #7, !dbg !873
  %call = call %struct.decNumber* @__dpd128ToNumber(%struct.decimal128* nonnull %dec, %struct.decNumber* %dn) #9, !dbg !874
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !875
  ret %struct.decNumber* %call, !dbg !876
}

declare dso_local void @_bid_to_dpd128(%struct.UINT128*, %struct.UINT128*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @decimal128ToString(%struct.decimal128* %d128, i8* %string) local_unnamed_addr #4 !dbg !877 {
entry:
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal128* %d128, metadata !879, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8* %string, metadata !880, metadata !DIExpression()), !dbg !882
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !883
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #8, !dbg !883
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !881, metadata !DIExpression(DW_OP_deref)), !dbg !882
  %call = call %struct.decNumber* @decimal128ToNumber(%struct.decimal128* %d128, %struct.decNumber* nonnull %dn) #9, !dbg !884
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !881, metadata !DIExpression(DW_OP_deref)), !dbg !882
  %call1 = call i8* @decNumberToString(%struct.decNumber* nonnull %dn, i8* %string) #7, !dbg !885
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #8, !dbg !886
  ret i8* %string, !dbg !887
}

declare dso_local i8* @decNumberToString(%struct.decNumber*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @decimal128ToEngString(%struct.decimal128* %d128, i8* %string) local_unnamed_addr #4 !dbg !888 {
entry:
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal128* %d128, metadata !890, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i8* %string, metadata !891, metadata !DIExpression()), !dbg !893
  %0 = bitcast %struct.decNumber* %dn to i8*, !dbg !894
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #8, !dbg !894
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !892, metadata !DIExpression(DW_OP_deref)), !dbg !893
  %call = call %struct.decNumber* @decimal128ToNumber(%struct.decimal128* %d128, %struct.decNumber* nonnull %dn) #9, !dbg !895
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !892, metadata !DIExpression(DW_OP_deref)), !dbg !893
  %call1 = call i8* @decNumberToEngString(%struct.decNumber* nonnull %dn, i8* %string) #7, !dbg !896
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %0) #8, !dbg !897
  ret i8* %string, !dbg !898
}

; Function Attrs: nounwind uwtable
define dso_local %struct.decimal128* @decimal128FromString(%struct.decimal128* %result, i8* %string, %struct.decContext* %set) local_unnamed_addr #4 !dbg !899 {
entry:
  %dc = alloca %struct.decContext, align 4
  %dn = alloca %struct.decNumber, align 4
  call void @llvm.dbg.value(metadata %struct.decimal128* %result, metadata !901, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i8* %string, metadata !902, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata %struct.decContext* %set, metadata !903, metadata !DIExpression()), !dbg !906
  %0 = bitcast %struct.decContext* %dc to i8*, !dbg !907
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #8, !dbg !907
  %1 = bitcast %struct.decNumber* %dn to i8*, !dbg !908
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %1) #8, !dbg !908
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !904, metadata !DIExpression(DW_OP_deref)), !dbg !906
  %call = call %struct.decContext* @decContextDefault(%struct.decContext* nonnull %dc, i32 128) #7, !dbg !909
  %round = getelementptr inbounds %struct.decContext, %struct.decContext* %set, i64 0, i32 3, !dbg !910
  %2 = load i32, i32* %round, align 4, !dbg !910
  %round1 = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 3, !dbg !911
  store i32 %2, i32* %round1, align 4, !dbg !912
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !904, metadata !DIExpression(DW_OP_deref)), !dbg !906
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !905, metadata !DIExpression(DW_OP_deref)), !dbg !906
  %call2 = call %struct.decNumber* @decNumberFromString(%struct.decNumber* nonnull %dn, i8* %string, %struct.decContext* nonnull %dc) #7, !dbg !913
  call void @llvm.dbg.value(metadata %struct.decContext* %dc, metadata !904, metadata !DIExpression(DW_OP_deref)), !dbg !906
  call void @llvm.dbg.value(metadata %struct.decNumber* %dn, metadata !905, metadata !DIExpression(DW_OP_deref)), !dbg !906
  %call3 = call %struct.decimal128* @decimal128FromNumber(%struct.decimal128* %result, %struct.decNumber* nonnull %dn, %struct.decContext* nonnull %dc) #9, !dbg !914
  %status = getelementptr inbounds %struct.decContext, %struct.decContext* %dc, i64 0, i32 5, !dbg !915
  %3 = load i32, i32* %status, align 4, !dbg !915
  %cmp = icmp eq i32 %3, 0, !dbg !917
  br i1 %cmp, label %if.end, label %if.then, !dbg !918

if.then:                                          ; preds = %entry
  %call5 = call %struct.decContext* @decContextSetStatus(%struct.decContext* %set, i32 %3) #7, !dbg !919
  br label %if.end, !dbg !921

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %1) #8, !dbg !922
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #8, !dbg !922
  ret %struct.decimal128* %result, !dbg !923
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !16, nameTableKind: None)
!1 = !DIFile(filename: "decimal128.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!117 = distinct !DISubprogram(name: "__dpd128FromNumber", scope: !1, file: !1, line: 115, type: !118, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !159)
!118 = !DISubroutineType(types: !119)
!119 = !{!120, !120, !132, !148}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "decimal128", file: !122, line: 64, baseType: !123)
!122 = !DIFile(filename: "./decimal128.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 62, size: 128, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !123, file: !122, line: 63, baseType: !126, size: 128)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !130)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !25, line: 24, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !27, line: 38, baseType: !129)
!129 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!130 = !{!131}
!131 = !DISubrange(count: 16)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "decNumber", file: !135, line: 84, baseType: !136)
!135 = !DIFile(filename: "./decNumber.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 77, size: 288, elements: !137)
!137 = !{!138, !139, !140, !141}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "digits", scope: !136, file: !135, line: 78, baseType: !28, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "exponent", scope: !136, file: !135, line: 79, baseType: !28, size: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !136, file: !135, line: 81, baseType: !127, size: 8, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "lsu", scope: !136, file: !135, line: 83, baseType: !142, size: 192, offset: 80)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 192, elements: !146)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !25, line: 25, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !27, line: 40, baseType: !145)
!145 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!146 = !{!147}
!147 = !DISubrange(count: 12)
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
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !174, !179}
!160 = !DILocalVariable(name: "d128", arg: 1, scope: !117, file: !1, line: 115, type: !120)
!161 = !DILocalVariable(name: "dn", arg: 2, scope: !117, file: !1, line: 115, type: !132)
!162 = !DILocalVariable(name: "set", arg: 3, scope: !117, file: !1, line: 116, type: !148)
!163 = !DILocalVariable(name: "status", scope: !117, file: !1, line: 117, type: !24)
!164 = !DILocalVariable(name: "ae", scope: !117, file: !1, line: 118, type: !28)
!165 = !DILocalVariable(name: "dw", scope: !117, file: !1, line: 119, type: !134)
!166 = !DILocalVariable(name: "dc", scope: !117, file: !1, line: 120, type: !149)
!167 = !DILocalVariable(name: "comb", scope: !117, file: !1, line: 121, type: !24)
!168 = !DILocalVariable(name: "exp", scope: !117, file: !1, line: 121, type: !24)
!169 = !DILocalVariable(name: "uiwork", scope: !117, file: !1, line: 122, type: !24)
!170 = !DILocalVariable(name: "targar", scope: !117, file: !1, line: 123, type: !171)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 4)
!174 = !DILocalVariable(name: "msd", scope: !175, file: !1, line: 176, type: !24)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 175, column: 11)
!176 = distinct !DILexicalBlock(scope: !177, file: !1, line: 160, column: 9)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 159, column: 9)
!178 = distinct !DILexicalBlock(scope: !117, file: !1, line: 147, column: 7)
!179 = !DILocalVariable(name: "pad", scope: !175, file: !1, line: 177, type: !28)
!180 = !DILocation(line: 0, scope: !117)
!181 = !DILocation(line: 119, column: 3, scope: !117)
!182 = !DILocation(line: 120, column: 3, scope: !117)
!183 = !DILocation(line: 122, column: 3, scope: !117)
!184 = !DILocation(line: 123, column: 3, scope: !117)
!185 = !DILocation(line: 123, column: 8, scope: !117)
!186 = !DILocation(line: 134, column: 10, scope: !117)
!187 = !DILocation(line: 134, column: 23, scope: !117)
!188 = !DILocation(line: 134, column: 18, scope: !117)
!189 = !DILocation(line: 135, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !117, file: !1, line: 135, column: 7)
!191 = !DILocation(line: 136, column: 4, scope: !190)
!192 = !DILocation(line: 0, scope: !178)
!193 = !DILocation(line: 147, column: 11, scope: !178)
!194 = !DILocation(line: 138, column: 5, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !1, line: 137, column: 27)
!196 = !DILocation(line: 139, column: 19, scope: !195)
!197 = !DILocation(line: 139, column: 8, scope: !195)
!198 = !DILocation(line: 139, column: 13, scope: !195)
!199 = !DILocation(line: 140, column: 5, scope: !195)
!200 = !DILocation(line: 142, column: 18, scope: !195)
!201 = !DILocation(line: 142, column: 22, scope: !195)
!202 = !DILocation(line: 142, column: 8, scope: !195)
!203 = !DILocation(line: 142, column: 12, scope: !195)
!204 = !DILocation(line: 143, column: 15, scope: !195)
!205 = !DILocation(line: 145, column: 5, scope: !195)
!206 = !DILocation(line: 147, column: 15, scope: !178)
!207 = !DILocation(line: 147, column: 7, scope: !117)
!208 = !DILocation(line: 148, column: 17, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !1, line: 148, column: 9)
!210 = distinct !DILexicalBlock(scope: !178, file: !1, line: 147, column: 28)
!211 = !DILocation(line: 148, column: 9, scope: !210)
!212 = !DILocation(line: 148, column: 26, scope: !209)
!213 = !DILocation(line: 148, column: 32, scope: !209)
!214 = !DILocation(line: 150, column: 12, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !1, line: 150, column: 11)
!216 = distinct !DILexicalBlock(scope: !209, file: !1, line: 149, column: 11)
!217 = !DILocation(line: 150, column: 20, scope: !215)
!218 = !DILocation(line: 150, column: 24, scope: !215)
!219 = !DILocation(line: 0, scope: !215)
!220 = !DILocation(line: 151, column: 16, scope: !215)
!221 = !DILocation(line: 150, column: 31, scope: !215)
!222 = !DILocation(line: 150, column: 37, scope: !215)
!223 = !DILocation(line: 151, column: 8, scope: !215)
!224 = !DILocation(line: 151, column: 22, scope: !215)
!225 = !DILocation(line: 150, column: 11, scope: !216)
!226 = !DILocation(line: 152, column: 21, scope: !227)
!227 = distinct !DILexicalBlock(scope: !215, file: !1, line: 151, column: 41)
!228 = !DILocation(line: 152, column: 2, scope: !227)
!229 = !DILocation(line: 154, column: 15, scope: !230)
!230 = distinct !DILexicalBlock(scope: !216, file: !1, line: 154, column: 11)
!231 = !DILocation(line: 153, column: 2, scope: !227)
!232 = !DILocation(line: 154, column: 19, scope: !230)
!233 = !DILocation(line: 0, scope: !230)
!234 = !DILocation(line: 154, column: 11, scope: !216)
!235 = !DILocation(line: 154, column: 34, scope: !230)
!236 = !DILocation(line: 154, column: 28, scope: !230)
!237 = !DILocation(line: 155, column: 19, scope: !230)
!238 = !DILocation(line: 160, column: 9, scope: !176)
!239 = !DILocation(line: 160, column: 9, scope: !177)
!240 = !DILocation(line: 162, column: 15, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 162, column: 11)
!242 = distinct !DILexicalBlock(scope: !176, file: !1, line: 160, column: 30)
!243 = !DILocation(line: 162, column: 23, scope: !241)
!244 = !DILocation(line: 162, column: 11, scope: !242)
!245 = !DILocation(line: 164, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !1, line: 162, column: 42)
!247 = !DILocation(line: 165, column: 2, scope: !246)
!248 = !DILocation(line: 167, column: 18, scope: !249)
!249 = distinct !DILexicalBlock(scope: !241, file: !1, line: 166, column: 13)
!250 = !DILocation(line: 168, column: 9, scope: !251)
!251 = distinct !DILexicalBlock(scope: !249, file: !1, line: 168, column: 6)
!252 = !DILocation(line: 170, column: 10, scope: !253)
!253 = distinct !DILexicalBlock(scope: !251, file: !1, line: 168, column: 28)
!254 = !DILocation(line: 168, column: 6, scope: !249)
!255 = !DILocation(line: 0, scope: !241)
!256 = !DILocation(line: 173, column: 16, scope: !242)
!257 = !DILocation(line: 173, column: 21, scope: !242)
!258 = !DILocation(line: 0, scope: !177)
!259 = !DILocation(line: 197, column: 11, scope: !177)
!260 = !DILocation(line: 174, column: 7, scope: !242)
!261 = !DILocation(line: 0, scope: !175)
!262 = !DILocation(line: 180, column: 22, scope: !175)
!263 = !DILocation(line: 180, column: 30, scope: !175)
!264 = !DILocation(line: 181, column: 14, scope: !265)
!265 = distinct !DILexicalBlock(scope: !175, file: !1, line: 181, column: 11)
!266 = !DILocation(line: 181, column: 11, scope: !175)
!267 = !DILocation(line: 188, column: 26, scope: !175)
!268 = !DILocation(line: 188, column: 7, scope: !175)
!269 = !DILocation(line: 190, column: 11, scope: !175)
!270 = !DILocation(line: 190, column: 17, scope: !175)
!271 = !DILocation(line: 191, column: 13, scope: !175)
!272 = !DILocation(line: 194, column: 14, scope: !273)
!273 = distinct !DILexicalBlock(scope: !175, file: !1, line: 194, column: 11)
!274 = !DILocation(line: 194, column: 11, scope: !175)
!275 = !DILocation(line: 194, column: 36, scope: !273)
!276 = !DILocation(line: 194, column: 42, scope: !273)
!277 = !DILocation(line: 194, column: 57, scope: !273)
!278 = !DILocation(line: 194, column: 50, scope: !273)
!279 = !DILocation(line: 194, column: 19, scope: !273)
!280 = !DILocation(line: 195, column: 22, scope: !273)
!281 = !DILocation(line: 195, column: 27, scope: !273)
!282 = !DILocation(line: 195, column: 35, scope: !273)
!283 = !DILocation(line: 0, scope: !176)
!284 = !DILocation(line: 197, column: 17, scope: !177)
!285 = !DILocation(line: 197, column: 5, scope: !177)
!286 = !DILocation(line: 198, column: 24, scope: !177)
!287 = !DILocation(line: 198, column: 11, scope: !177)
!288 = !DILocation(line: 201, column: 11, scope: !289)
!289 = distinct !DILexicalBlock(scope: !117, file: !1, line: 201, column: 7)
!290 = !DILocation(line: 201, column: 15, scope: !289)
!291 = !DILocation(line: 201, column: 7, scope: !117)
!292 = !DILocation(line: 201, column: 24, scope: !289)
!293 = !DILocation(line: 201, column: 30, scope: !289)
!294 = !DILocation(line: 207, column: 11, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 205, column: 18)
!296 = distinct !DILexicalBlock(scope: !117, file: !1, line: 205, column: 7)
!297 = !DILocation(line: 208, column: 11, scope: !295)
!298 = !DILocation(line: 209, column: 11, scope: !295)
!299 = !DILocation(line: 210, column: 11, scope: !295)
!300 = !DILocation(line: 237, column: 13, scope: !301)
!301 = distinct !DILexicalBlock(scope: !117, file: !1, line: 237, column: 7)
!302 = !DILocation(line: 237, column: 7, scope: !117)
!303 = !DILocation(line: 237, column: 18, scope: !301)
!304 = !DILocation(line: 240, column: 3, scope: !117)
!305 = !DILocation(line: 239, column: 3, scope: !117)
!306 = distinct !DISubprogram(name: "__dpd128ToNumber", scope: !1, file: !1, line: 248, type: !307, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !312)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !310, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320}
!313 = !DILocalVariable(name: "d128", arg: 1, scope: !306, file: !1, line: 248, type: !310)
!314 = !DILocalVariable(name: "dn", arg: 2, scope: !306, file: !1, line: 248, type: !309)
!315 = !DILocalVariable(name: "msd", scope: !306, file: !1, line: 249, type: !24)
!316 = !DILocalVariable(name: "exp", scope: !306, file: !1, line: 250, type: !24)
!317 = !DILocalVariable(name: "comb", scope: !306, file: !1, line: 251, type: !24)
!318 = !DILocalVariable(name: "need", scope: !306, file: !1, line: 252, type: !28)
!319 = !DILocalVariable(name: "uiwork", scope: !306, file: !1, line: 253, type: !24)
!320 = !DILocalVariable(name: "sourar", scope: !306, file: !1, line: 254, type: !171)
!321 = !DILocation(line: 0, scope: !306)
!322 = !DILocation(line: 253, column: 3, scope: !306)
!323 = !DILocation(line: 254, column: 3, scope: !306)
!324 = !DILocation(line: 254, column: 8, scope: !306)
!325 = !DILocation(line: 262, column: 12, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !1, line: 261, column: 18)
!327 = distinct !DILexicalBlock(scope: !306, file: !1, line: 261, column: 7)
!328 = !DILocation(line: 262, column: 5, scope: !326)
!329 = !DILocation(line: 262, column: 11, scope: !326)
!330 = !DILocation(line: 263, column: 12, scope: !326)
!331 = !DILocation(line: 263, column: 5, scope: !326)
!332 = !DILocation(line: 263, column: 11, scope: !326)
!333 = !DILocation(line: 264, column: 12, scope: !326)
!334 = !DILocation(line: 264, column: 5, scope: !326)
!335 = !DILocation(line: 264, column: 11, scope: !326)
!336 = !DILocation(line: 265, column: 12, scope: !326)
!337 = !DILocation(line: 265, column: 5, scope: !326)
!338 = !DILocation(line: 265, column: 11, scope: !326)
!339 = !DILocation(line: 274, column: 15, scope: !306)
!340 = !DILocation(line: 274, column: 20, scope: !306)
!341 = !DILocation(line: 276, column: 3, scope: !306)
!342 = !DILocation(line: 277, column: 13, scope: !343)
!343 = distinct !DILexicalBlock(scope: !306, file: !1, line: 277, column: 7)
!344 = !DILocation(line: 277, column: 7, scope: !306)
!345 = !DILocation(line: 277, column: 30, scope: !343)
!346 = !DILocation(line: 277, column: 34, scope: !343)
!347 = !DILocation(line: 277, column: 26, scope: !343)
!348 = !DILocation(line: 279, column: 7, scope: !306)
!349 = !DILocation(line: 280, column: 7, scope: !306)
!350 = !DILocation(line: 282, column: 10, scope: !351)
!351 = distinct !DILexicalBlock(scope: !306, file: !1, line: 282, column: 7)
!352 = !DILocation(line: 282, column: 7, scope: !306)
!353 = !DILocation(line: 283, column: 12, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !1, line: 283, column: 9)
!355 = distinct !DILexicalBlock(scope: !351, file: !1, line: 282, column: 15)
!356 = !DILocation(line: 283, column: 9, scope: !355)
!357 = !DILocation(line: 284, column: 11, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !1, line: 283, column: 17)
!359 = !DILocation(line: 284, column: 15, scope: !358)
!360 = !DILocation(line: 285, column: 7, scope: !358)
!361 = !DILocation(line: 287, column: 20, scope: !362)
!362 = distinct !DILexicalBlock(scope: !354, file: !1, line: 287, column: 14)
!363 = !DILocation(line: 0, scope: !362)
!364 = !DILocation(line: 287, column: 14, scope: !354)
!365 = !DILocation(line: 287, column: 41, scope: !362)
!366 = !DILocation(line: 287, column: 33, scope: !362)
!367 = !DILocation(line: 288, column: 18, scope: !362)
!368 = !DILocation(line: 292, column: 22, scope: !369)
!369 = distinct !DILexicalBlock(scope: !351, file: !1, line: 291, column: 9)
!370 = !DILocation(line: 292, column: 36, scope: !369)
!371 = !DILocation(line: 292, column: 41, scope: !369)
!372 = !DILocation(line: 292, column: 27, scope: !369)
!373 = !DILocation(line: 292, column: 48, scope: !369)
!374 = !DILocation(line: 292, column: 9, scope: !369)
!375 = !DILocation(line: 292, column: 17, scope: !369)
!376 = !DILocation(line: 296, column: 9, scope: !306)
!377 = !DILocation(line: 297, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !306, file: !1, line: 297, column: 7)
!379 = !DILocation(line: 297, column: 7, scope: !306)
!380 = !DILocation(line: 298, column: 16, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !1, line: 297, column: 12)
!382 = !DILocation(line: 298, column: 11, scope: !381)
!383 = !DILocation(line: 300, column: 5, scope: !381)
!384 = !DILocation(line: 302, column: 9, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !1, line: 302, column: 9)
!386 = distinct !DILexicalBlock(scope: !378, file: !1, line: 301, column: 9)
!387 = !DILocation(line: 302, column: 9, scope: !386)
!388 = !DILocation(line: 303, column: 15, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !1, line: 303, column: 15)
!390 = !DILocation(line: 303, column: 15, scope: !385)
!391 = !DILocation(line: 304, column: 15, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !1, line: 304, column: 15)
!393 = !DILocation(line: 304, column: 15, scope: !389)
!394 = !DILocation(line: 305, column: 15, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !1, line: 305, column: 15)
!396 = !DILocation(line: 305, column: 15, scope: !392)
!397 = !DILocation(line: 0, scope: !378)
!398 = !DILocation(line: 309, column: 3, scope: !306)
!399 = !DILocation(line: 311, column: 3, scope: !306)
!400 = !DILocation(line: 312, column: 3, scope: !306)
!401 = distinct !DISubprogram(name: "__dpd128ToEngString", scope: !1, file: !1, line: 328, type: !402, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !404)
!402 = !DISubroutineType(types: !403)
!403 = !{!19, !310, !19}
!404 = !{!405, !406, !407}
!405 = !DILocalVariable(name: "d128", arg: 1, scope: !401, file: !1, line: 328, type: !310)
!406 = !DILocalVariable(name: "string", arg: 2, scope: !401, file: !1, line: 328, type: !19)
!407 = !DILocalVariable(name: "dn", scope: !401, file: !1, line: 329, type: !134)
!408 = !DILocation(line: 0, scope: !401)
!409 = !DILocation(line: 329, column: 3, scope: !401)
!410 = !DILocation(line: 330, column: 3, scope: !401)
!411 = !DILocation(line: 331, column: 3, scope: !401)
!412 = !DILocation(line: 333, column: 3, scope: !401)
!413 = !DILocation(line: 332, column: 3, scope: !401)
!414 = distinct !DISubprogram(name: "__dpd128ToString", scope: !1, file: !1, line: 335, type: !402, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !426, !427, !428, !429, !430, !431, !432, !433, !436, !441}
!416 = !DILocalVariable(name: "d128", arg: 1, scope: !414, file: !1, line: 335, type: !310)
!417 = !DILocalVariable(name: "string", arg: 2, scope: !414, file: !1, line: 335, type: !19)
!418 = !DILocalVariable(name: "msd", scope: !414, file: !1, line: 336, type: !24)
!419 = !DILocalVariable(name: "exp", scope: !414, file: !1, line: 337, type: !28)
!420 = !DILocalVariable(name: "comb", scope: !414, file: !1, line: 338, type: !24)
!421 = !DILocalVariable(name: "cstart", scope: !414, file: !1, line: 339, type: !19)
!422 = !DILocalVariable(name: "c", scope: !414, file: !1, line: 340, type: !19)
!423 = !DILocalVariable(name: "u", scope: !414, file: !1, line: 341, type: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!426 = !DILocalVariable(name: "s", scope: !414, file: !1, line: 342, type: !19)
!427 = !DILocalVariable(name: "t", scope: !414, file: !1, line: 342, type: !19)
!428 = !DILocalVariable(name: "dpd", scope: !414, file: !1, line: 343, type: !28)
!429 = !DILocalVariable(name: "pre", scope: !414, file: !1, line: 344, type: !28)
!430 = !DILocalVariable(name: "e", scope: !414, file: !1, line: 344, type: !28)
!431 = !DILocalVariable(name: "uiwork", scope: !414, file: !1, line: 345, type: !24)
!432 = !DILocalVariable(name: "sourar", scope: !414, file: !1, line: 347, type: !171)
!433 = !DILocalVariable(name: "dotat", scope: !434, file: !1, line: 447, type: !19)
!434 = distinct !DILexicalBlock(scope: !435, file: !1, line: 446, column: 14)
!435 = distinct !DILexicalBlock(scope: !414, file: !1, line: 446, column: 7)
!436 = !DILocalVariable(name: "thou", scope: !437, file: !1, line: 470, type: !28)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 469, column: 13)
!438 = distinct !DILexicalBlock(scope: !439, file: !1, line: 464, column: 11)
!439 = distinct !DILexicalBlock(scope: !440, file: !1, line: 457, column: 15)
!440 = distinct !DILexicalBlock(scope: !434, file: !1, line: 457, column: 9)
!441 = !DILocalVariable(name: "rem", scope: !437, file: !1, line: 471, type: !28)
!442 = !DILocation(line: 0, scope: !414)
!443 = !DILocation(line: 345, column: 3, scope: !414)
!444 = !DILocation(line: 347, column: 3, scope: !414)
!445 = !DILocation(line: 347, column: 8, scope: !414)
!446 = !DILocation(line: 355, column: 12, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !1, line: 354, column: 18)
!448 = distinct !DILexicalBlock(scope: !414, file: !1, line: 354, column: 7)
!449 = !DILocation(line: 355, column: 5, scope: !447)
!450 = !DILocation(line: 355, column: 11, scope: !447)
!451 = !DILocation(line: 356, column: 12, scope: !447)
!452 = !DILocation(line: 356, column: 5, scope: !447)
!453 = !DILocation(line: 356, column: 11, scope: !447)
!454 = !DILocation(line: 357, column: 12, scope: !447)
!455 = !DILocation(line: 357, column: 5, scope: !447)
!456 = !DILocation(line: 357, column: 11, scope: !447)
!457 = !DILocation(line: 358, column: 12, scope: !447)
!458 = !DILocation(line: 358, column: 5, scope: !447)
!459 = !DILocation(line: 358, column: 11, scope: !447)
!460 = !DILocation(line: 368, column: 20, scope: !461)
!461 = distinct !DILexicalBlock(scope: !414, file: !1, line: 368, column: 7)
!462 = !DILocation(line: 368, column: 7, scope: !414)
!463 = !DILocation(line: 368, column: 26, scope: !461)
!464 = !DILocation(line: 368, column: 28, scope: !461)
!465 = !DILocation(line: 368, column: 24, scope: !461)
!466 = !DILocation(line: 370, column: 15, scope: !414)
!467 = !DILocation(line: 370, column: 20, scope: !414)
!468 = !DILocation(line: 371, column: 7, scope: !414)
!469 = !DILocation(line: 372, column: 7, scope: !414)
!470 = !DILocation(line: 374, column: 10, scope: !471)
!471 = distinct !DILexicalBlock(scope: !414, file: !1, line: 374, column: 7)
!472 = !DILocation(line: 374, column: 7, scope: !414)
!473 = !DILocation(line: 375, column: 12, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 375, column: 9)
!475 = distinct !DILexicalBlock(scope: !471, file: !1, line: 374, column: 15)
!476 = !DILocation(line: 375, column: 9, scope: !475)
!477 = !DILocation(line: 376, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !1, line: 375, column: 17)
!479 = !DILocation(line: 377, column: 15, scope: !478)
!480 = !DILocation(line: 377, column: 7, scope: !478)
!481 = !DILocation(line: 378, column: 7, scope: !478)
!482 = !DILocation(line: 380, column: 15, scope: !483)
!483 = distinct !DILexicalBlock(scope: !475, file: !1, line: 380, column: 9)
!484 = !DILocation(line: 380, column: 9, scope: !475)
!485 = !DILocation(line: 380, column: 30, scope: !483)
!486 = !DILocation(line: 380, column: 32, scope: !483)
!487 = !DILocation(line: 380, column: 28, scope: !483)
!488 = !DILocation(line: 381, column: 5, scope: !475)
!489 = !DILocation(line: 382, column: 6, scope: !475)
!490 = !DILocation(line: 383, column: 9, scope: !491)
!491 = distinct !DILexicalBlock(scope: !475, file: !1, line: 383, column: 9)
!492 = !DILocation(line: 383, column: 15, scope: !491)
!493 = !DILocation(line: 383, column: 19, scope: !491)
!494 = !DILocation(line: 383, column: 28, scope: !491)
!495 = !DILocation(line: 383, column: 32, scope: !491)
!496 = !DILocation(line: 383, column: 41, scope: !491)
!497 = !DILocation(line: 384, column: 6, scope: !491)
!498 = !DILocation(line: 384, column: 16, scope: !491)
!499 = !DILocation(line: 384, column: 28, scope: !491)
!500 = !DILocation(line: 383, column: 9, scope: !475)
!501 = !DILocation(line: 388, column: 17, scope: !471)
!502 = !DILocation(line: 388, column: 31, scope: !471)
!503 = !DILocation(line: 388, column: 36, scope: !471)
!504 = !DILocation(line: 388, column: 22, scope: !471)
!505 = !DILocation(line: 388, column: 43, scope: !471)
!506 = !DILocation(line: 0, scope: !471)
!507 = !DILocation(line: 392, column: 7, scope: !508)
!508 = distinct !DILexicalBlock(scope: !414, file: !1, line: 392, column: 7)
!509 = !DILocation(line: 392, column: 7, scope: !414)
!510 = !DILocation(line: 392, column: 17, scope: !508)
!511 = !DILocation(line: 392, column: 14, scope: !508)
!512 = !DILocation(line: 392, column: 16, scope: !508)
!513 = !DILocation(line: 405, column: 8, scope: !414)
!514 = !DILocation(line: 392, column: 12, scope: !508)
!515 = !DILocation(line: 405, column: 14, scope: !414)
!516 = !DILocation(line: 405, column: 18, scope: !414)
!517 = !DILocation(line: 406, column: 3, scope: !414)
!518 = !DILocation(line: 406, column: 3, scope: !519)
!519 = distinct !DILexicalBlock(scope: !414, file: !1, line: 406, column: 3)
!520 = !DILocation(line: 406, column: 3, scope: !521)
!521 = distinct !DILexicalBlock(scope: !519, file: !1, line: 406, column: 3)
!522 = !DILocation(line: 406, column: 3, scope: !523)
!523 = distinct !DILexicalBlock(scope: !519, file: !1, line: 406, column: 3)
!524 = !DILocation(line: 406, column: 3, scope: !525)
!525 = distinct !DILexicalBlock(scope: !523, file: !1, line: 406, column: 3)
!526 = !DILocation(line: 0, scope: !519)
!527 = !DILocation(line: 407, column: 20, scope: !414)
!528 = !DILocation(line: 407, column: 28, scope: !414)
!529 = !DILocation(line: 407, column: 34, scope: !414)
!530 = !DILocation(line: 407, column: 25, scope: !414)
!531 = !DILocation(line: 408, column: 3, scope: !414)
!532 = !DILocation(line: 408, column: 3, scope: !533)
!533 = distinct !DILexicalBlock(scope: !414, file: !1, line: 408, column: 3)
!534 = !DILocation(line: 408, column: 3, scope: !535)
!535 = distinct !DILexicalBlock(scope: !533, file: !1, line: 408, column: 3)
!536 = !DILocation(line: 408, column: 3, scope: !537)
!537 = distinct !DILexicalBlock(scope: !533, file: !1, line: 408, column: 3)
!538 = !DILocation(line: 408, column: 3, scope: !539)
!539 = distinct !DILexicalBlock(scope: !537, file: !1, line: 408, column: 3)
!540 = !DILocation(line: 0, scope: !533)
!541 = !DILocation(line: 409, column: 14, scope: !414)
!542 = !DILocation(line: 409, column: 19, scope: !414)
!543 = !DILocation(line: 410, column: 3, scope: !414)
!544 = !DILocation(line: 410, column: 3, scope: !545)
!545 = distinct !DILexicalBlock(scope: !414, file: !1, line: 410, column: 3)
!546 = !DILocation(line: 410, column: 3, scope: !547)
!547 = distinct !DILexicalBlock(scope: !545, file: !1, line: 410, column: 3)
!548 = !DILocation(line: 410, column: 3, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !1, line: 410, column: 3)
!550 = !DILocation(line: 410, column: 3, scope: !551)
!551 = distinct !DILexicalBlock(scope: !549, file: !1, line: 410, column: 3)
!552 = !DILocation(line: 0, scope: !545)
!553 = !DILocation(line: 411, column: 14, scope: !414)
!554 = !DILocation(line: 411, column: 18, scope: !414)
!555 = !DILocation(line: 412, column: 3, scope: !414)
!556 = !DILocation(line: 412, column: 3, scope: !557)
!557 = distinct !DILexicalBlock(scope: !414, file: !1, line: 412, column: 3)
!558 = !DILocation(line: 412, column: 3, scope: !559)
!559 = distinct !DILexicalBlock(scope: !557, file: !1, line: 412, column: 3)
!560 = !DILocation(line: 412, column: 3, scope: !561)
!561 = distinct !DILexicalBlock(scope: !557, file: !1, line: 412, column: 3)
!562 = !DILocation(line: 412, column: 3, scope: !563)
!563 = distinct !DILexicalBlock(scope: !561, file: !1, line: 412, column: 3)
!564 = !DILocation(line: 0, scope: !557)
!565 = !DILocation(line: 413, column: 21, scope: !414)
!566 = !DILocation(line: 413, column: 29, scope: !414)
!567 = !DILocation(line: 413, column: 35, scope: !414)
!568 = !DILocation(line: 413, column: 26, scope: !414)
!569 = !DILocation(line: 414, column: 3, scope: !414)
!570 = !DILocation(line: 414, column: 3, scope: !571)
!571 = distinct !DILexicalBlock(scope: !414, file: !1, line: 414, column: 3)
!572 = !DILocation(line: 414, column: 3, scope: !573)
!573 = distinct !DILexicalBlock(scope: !571, file: !1, line: 414, column: 3)
!574 = !DILocation(line: 414, column: 3, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !1, line: 414, column: 3)
!576 = !DILocation(line: 414, column: 3, scope: !577)
!577 = distinct !DILexicalBlock(scope: !575, file: !1, line: 414, column: 3)
!578 = !DILocation(line: 0, scope: !571)
!579 = !DILocation(line: 415, column: 14, scope: !414)
!580 = !DILocation(line: 415, column: 19, scope: !414)
!581 = !DILocation(line: 416, column: 3, scope: !414)
!582 = !DILocation(line: 416, column: 3, scope: !583)
!583 = distinct !DILexicalBlock(scope: !414, file: !1, line: 416, column: 3)
!584 = !DILocation(line: 416, column: 3, scope: !585)
!585 = distinct !DILexicalBlock(scope: !583, file: !1, line: 416, column: 3)
!586 = !DILocation(line: 416, column: 3, scope: !587)
!587 = distinct !DILexicalBlock(scope: !583, file: !1, line: 416, column: 3)
!588 = !DILocation(line: 416, column: 3, scope: !589)
!589 = distinct !DILexicalBlock(scope: !587, file: !1, line: 416, column: 3)
!590 = !DILocation(line: 0, scope: !583)
!591 = !DILocation(line: 417, column: 14, scope: !414)
!592 = !DILocation(line: 417, column: 18, scope: !414)
!593 = !DILocation(line: 418, column: 3, scope: !414)
!594 = !DILocation(line: 418, column: 3, scope: !595)
!595 = distinct !DILexicalBlock(scope: !414, file: !1, line: 418, column: 3)
!596 = !DILocation(line: 418, column: 3, scope: !597)
!597 = distinct !DILexicalBlock(scope: !595, file: !1, line: 418, column: 3)
!598 = !DILocation(line: 418, column: 3, scope: !599)
!599 = distinct !DILexicalBlock(scope: !595, file: !1, line: 418, column: 3)
!600 = !DILocation(line: 418, column: 3, scope: !601)
!601 = distinct !DILexicalBlock(scope: !599, file: !1, line: 418, column: 3)
!602 = !DILocation(line: 0, scope: !595)
!603 = !DILocation(line: 419, column: 21, scope: !414)
!604 = !DILocation(line: 419, column: 29, scope: !414)
!605 = !DILocation(line: 419, column: 35, scope: !414)
!606 = !DILocation(line: 419, column: 26, scope: !414)
!607 = !DILocation(line: 420, column: 3, scope: !414)
!608 = !DILocation(line: 420, column: 3, scope: !609)
!609 = distinct !DILexicalBlock(scope: !414, file: !1, line: 420, column: 3)
!610 = !DILocation(line: 420, column: 3, scope: !611)
!611 = distinct !DILexicalBlock(scope: !609, file: !1, line: 420, column: 3)
!612 = !DILocation(line: 420, column: 3, scope: !613)
!613 = distinct !DILexicalBlock(scope: !609, file: !1, line: 420, column: 3)
!614 = !DILocation(line: 420, column: 3, scope: !615)
!615 = distinct !DILexicalBlock(scope: !613, file: !1, line: 420, column: 3)
!616 = !DILocation(line: 0, scope: !609)
!617 = !DILocation(line: 421, column: 14, scope: !414)
!618 = !DILocation(line: 421, column: 19, scope: !414)
!619 = !DILocation(line: 422, column: 3, scope: !414)
!620 = !DILocation(line: 422, column: 3, scope: !621)
!621 = distinct !DILexicalBlock(scope: !414, file: !1, line: 422, column: 3)
!622 = !DILocation(line: 422, column: 3, scope: !623)
!623 = distinct !DILexicalBlock(scope: !621, file: !1, line: 422, column: 3)
!624 = !DILocation(line: 422, column: 3, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !1, line: 422, column: 3)
!626 = !DILocation(line: 422, column: 3, scope: !627)
!627 = distinct !DILexicalBlock(scope: !625, file: !1, line: 422, column: 3)
!628 = !DILocation(line: 0, scope: !621)
!629 = !DILocation(line: 423, column: 14, scope: !414)
!630 = !DILocation(line: 423, column: 19, scope: !414)
!631 = !DILocation(line: 424, column: 3, scope: !414)
!632 = !DILocation(line: 424, column: 3, scope: !633)
!633 = distinct !DILexicalBlock(scope: !414, file: !1, line: 424, column: 3)
!634 = !DILocation(line: 424, column: 3, scope: !635)
!635 = distinct !DILexicalBlock(scope: !633, file: !1, line: 424, column: 3)
!636 = !DILocation(line: 424, column: 3, scope: !637)
!637 = distinct !DILexicalBlock(scope: !633, file: !1, line: 424, column: 3)
!638 = !DILocation(line: 424, column: 3, scope: !639)
!639 = distinct !DILexicalBlock(scope: !637, file: !1, line: 424, column: 3)
!640 = !DILocation(line: 0, scope: !633)
!641 = !DILocation(line: 425, column: 15, scope: !414)
!642 = !DILocation(line: 426, column: 3, scope: !414)
!643 = !DILocation(line: 426, column: 3, scope: !644)
!644 = distinct !DILexicalBlock(scope: !414, file: !1, line: 426, column: 3)
!645 = !DILocation(line: 426, column: 3, scope: !646)
!646 = distinct !DILexicalBlock(scope: !644, file: !1, line: 426, column: 3)
!647 = !DILocation(line: 426, column: 3, scope: !648)
!648 = distinct !DILexicalBlock(scope: !644, file: !1, line: 426, column: 3)
!649 = !DILocation(line: 426, column: 3, scope: !650)
!650 = distinct !DILexicalBlock(scope: !648, file: !1, line: 426, column: 3)
!651 = !DILocation(line: 0, scope: !644)
!652 = !DILocation(line: 428, column: 8, scope: !653)
!653 = distinct !DILexicalBlock(scope: !414, file: !1, line: 428, column: 7)
!654 = !DILocation(line: 428, column: 7, scope: !414)
!655 = !DILocation(line: 428, column: 20, scope: !653)
!656 = !DILocation(line: 428, column: 22, scope: !653)
!657 = !DILocation(line: 428, column: 18, scope: !653)
!658 = !DILocation(line: 430, column: 10, scope: !659)
!659 = distinct !DILexicalBlock(scope: !414, file: !1, line: 430, column: 7)
!660 = !DILocation(line: 430, column: 7, scope: !414)
!661 = !DILocation(line: 431, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !659, file: !1, line: 430, column: 15)
!663 = !DILocation(line: 432, column: 5, scope: !662)
!664 = !DILocation(line: 437, column: 8, scope: !414)
!665 = !DILocation(line: 437, column: 7, scope: !414)
!666 = !DILocation(line: 439, column: 10, scope: !667)
!667 = distinct !DILexicalBlock(scope: !414, file: !1, line: 439, column: 7)
!668 = !DILocation(line: 439, column: 19, scope: !667)
!669 = !DILocation(line: 439, column: 13, scope: !667)
!670 = !DILocation(line: 445, column: 6, scope: !414)
!671 = !DILocation(line: 446, column: 10, scope: !435)
!672 = !DILocation(line: 446, column: 7, scope: !414)
!673 = !DILocation(line: 447, column: 23, scope: !434)
!674 = !DILocation(line: 0, scope: !434)
!675 = !DILocation(line: 448, column: 14, scope: !676)
!676 = distinct !DILexicalBlock(scope: !434, file: !1, line: 448, column: 9)
!677 = !DILocation(line: 448, column: 9, scope: !434)
!678 = !DILocation(line: 450, column: 7, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !1, line: 450, column: 7)
!680 = distinct !DILexicalBlock(scope: !676, file: !1, line: 448, column: 18)
!681 = !DILocation(line: 0, scope: !680)
!682 = !DILocation(line: 450, column: 15, scope: !683)
!683 = distinct !DILexicalBlock(scope: !679, file: !1, line: 450, column: 7)
!684 = !DILocation(line: 450, column: 37, scope: !683)
!685 = !DILocation(line: 450, column: 36, scope: !683)
!686 = !DILocation(line: 450, column: 25, scope: !683)
!687 = !DILocation(line: 450, column: 30, scope: !683)
!688 = !DILocation(line: 450, column: 7, scope: !683)
!689 = distinct !{!689, !678, !690}
!690 = !DILocation(line: 450, column: 38, scope: !679)
!691 = !DILocation(line: 451, column: 9, scope: !680)
!692 = !DILocation(line: 452, column: 8, scope: !680)
!693 = !DILocation(line: 453, column: 7, scope: !680)
!694 = !DILocation(line: 457, column: 10, scope: !440)
!695 = !DILocation(line: 457, column: 9, scope: !434)
!696 = !DILocation(line: 458, column: 9, scope: !439)
!697 = !DILocation(line: 458, column: 11, scope: !439)
!698 = !DILocation(line: 459, column: 9, scope: !439)
!699 = !DILocation(line: 459, column: 11, scope: !439)
!700 = !DILocation(line: 460, column: 12, scope: !701)
!701 = distinct !DILexicalBlock(scope: !439, file: !1, line: 460, column: 11)
!702 = !DILocation(line: 460, column: 11, scope: !439)
!703 = !DILocation(line: 461, column: 8, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !1, line: 460, column: 16)
!705 = !DILocation(line: 462, column: 4, scope: !704)
!706 = !DILocation(line: 463, column: 2, scope: !704)
!707 = !DILocation(line: 464, column: 12, scope: !438)
!708 = !DILocation(line: 464, column: 11, scope: !439)
!709 = !DILocation(line: 465, column: 15, scope: !710)
!710 = distinct !DILexicalBlock(scope: !438, file: !1, line: 464, column: 19)
!711 = !DILocation(line: 465, column: 5, scope: !710)
!712 = !DILocation(line: 466, column: 13, scope: !710)
!713 = !DILocation(line: 466, column: 16, scope: !710)
!714 = !DILocation(line: 466, column: 15, scope: !710)
!715 = !DILocation(line: 466, column: 2, scope: !710)
!716 = !DILocation(line: 467, column: 3, scope: !710)
!717 = !DILocation(line: 468, column: 2, scope: !710)
!718 = !DILocation(line: 470, column: 14, scope: !437)
!719 = !DILocation(line: 470, column: 18, scope: !437)
!720 = !DILocation(line: 470, column: 24, scope: !437)
!721 = !DILocation(line: 0, scope: !437)
!722 = !DILocation(line: 471, column: 11, scope: !437)
!723 = !DILocation(line: 472, column: 7, scope: !437)
!724 = !DILocation(line: 472, column: 4, scope: !437)
!725 = !DILocation(line: 472, column: 6, scope: !437)
!726 = !DILocation(line: 473, column: 17, scope: !437)
!727 = !DILocation(line: 473, column: 5, scope: !437)
!728 = !DILocation(line: 474, column: 13, scope: !437)
!729 = !DILocation(line: 474, column: 2, scope: !437)
!730 = !DILocation(line: 475, column: 3, scope: !437)
!731 = !DILocation(line: 478, column: 7, scope: !434)
!732 = !DILocation(line: 484, column: 6, scope: !414)
!733 = !DILocation(line: 484, column: 8, scope: !414)
!734 = !DILocation(line: 485, column: 6, scope: !414)
!735 = !DILocation(line: 485, column: 9, scope: !414)
!736 = !DILocation(line: 486, column: 3, scope: !414)
!737 = !DILocation(line: 486, column: 11, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !1, line: 486, column: 3)
!739 = distinct !DILexicalBlock(scope: !414, file: !1, line: 486, column: 3)
!740 = !DILocation(line: 486, column: 3, scope: !739)
!741 = !DILocation(line: 486, column: 34, scope: !738)
!742 = !DILocation(line: 486, column: 33, scope: !738)
!743 = !DILocation(line: 486, column: 22, scope: !738)
!744 = !DILocation(line: 486, column: 27, scope: !738)
!745 = !DILocation(line: 486, column: 3, scope: !738)
!746 = distinct !{!746, !740, !747}
!747 = !DILocation(line: 486, column: 35, scope: !739)
!748 = !DILocation(line: 488, column: 5, scope: !414)
!749 = !DILocation(line: 488, column: 7, scope: !414)
!750 = !DILocation(line: 489, column: 5, scope: !414)
!751 = !DILocation(line: 489, column: 7, scope: !414)
!752 = !DILocation(line: 490, column: 3, scope: !414)
!753 = !DILocation(line: 490, column: 13, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !1, line: 490, column: 3)
!755 = distinct !DILexicalBlock(scope: !414, file: !1, line: 490, column: 3)
!756 = !DILocation(line: 490, column: 3, scope: !755)
!757 = !DILocation(line: 490, column: 26, scope: !754)
!758 = !DILocation(line: 490, column: 28, scope: !754)
!759 = !DILocation(line: 490, column: 20, scope: !754)
!760 = !DILocation(line: 490, column: 3, scope: !754)
!761 = distinct !{!761, !756, !762}
!762 = !DILocation(line: 490, column: 29, scope: !755)
!763 = !DILocation(line: 493, column: 3, scope: !414)
!764 = distinct !DISubprogram(name: "__dpd128FromString", scope: !1, file: !1, line: 510, type: !765, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{!120, !120, !22, !148}
!767 = !{!768, !769, !770, !771, !772}
!768 = !DILocalVariable(name: "result", arg: 1, scope: !764, file: !1, line: 510, type: !120)
!769 = !DILocalVariable(name: "string", arg: 2, scope: !764, file: !1, line: 510, type: !22)
!770 = !DILocalVariable(name: "set", arg: 3, scope: !764, file: !1, line: 511, type: !148)
!771 = !DILocalVariable(name: "dc", scope: !764, file: !1, line: 512, type: !149)
!772 = !DILocalVariable(name: "dn", scope: !764, file: !1, line: 513, type: !134)
!773 = !DILocation(line: 0, scope: !764)
!774 = !DILocation(line: 512, column: 3, scope: !764)
!775 = !DILocation(line: 513, column: 3, scope: !764)
!776 = !DILocation(line: 515, column: 3, scope: !764)
!777 = !DILocation(line: 516, column: 17, scope: !764)
!778 = !DILocation(line: 516, column: 6, scope: !764)
!779 = !DILocation(line: 516, column: 11, scope: !764)
!780 = !DILocation(line: 518, column: 3, scope: !764)
!781 = !DILocation(line: 519, column: 3, scope: !764)
!782 = !DILocation(line: 520, column: 10, scope: !783)
!783 = distinct !DILexicalBlock(scope: !764, file: !1, line: 520, column: 7)
!784 = !DILocation(line: 520, column: 16, scope: !783)
!785 = !DILocation(line: 520, column: 7, scope: !764)
!786 = !DILocation(line: 521, column: 5, scope: !787)
!787 = distinct !DILexicalBlock(scope: !783, file: !1, line: 520, column: 21)
!788 = !DILocation(line: 522, column: 5, scope: !787)
!789 = !DILocation(line: 524, column: 3, scope: !764)
!790 = !DILocation(line: 523, column: 3, scope: !764)
!791 = distinct !DISubprogram(name: "decimal128IsCanonical", scope: !1, file: !1, line: 532, type: !792, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{!24, !310}
!794 = !{!795, !796, !797, !798}
!795 = !DILocalVariable(name: "d128", arg: 1, scope: !791, file: !1, line: 532, type: !310)
!796 = !DILocalVariable(name: "dn", scope: !791, file: !1, line: 533, type: !134)
!797 = !DILocalVariable(name: "canon", scope: !791, file: !1, line: 534, type: !121)
!798 = !DILocalVariable(name: "dc", scope: !791, file: !1, line: 535, type: !149)
!799 = !DILocation(line: 0, scope: !791)
!800 = !DILocation(line: 533, column: 3, scope: !791)
!801 = !DILocation(line: 534, column: 3, scope: !791)
!802 = !DILocation(line: 535, column: 3, scope: !791)
!803 = !DILocation(line: 536, column: 3, scope: !791)
!804 = !DILocation(line: 537, column: 3, scope: !791)
!805 = !DILocation(line: 538, column: 3, scope: !791)
!806 = !DILocation(line: 539, column: 17, scope: !791)
!807 = !DILocation(line: 539, column: 10, scope: !791)
!808 = !DILocation(line: 539, column: 48, scope: !791)
!809 = !DILocation(line: 540, column: 3, scope: !791)
!810 = !DILocation(line: 539, column: 3, scope: !791)
!811 = distinct !DISubprogram(name: "decimal128Canonical", scope: !1, file: !1, line: 549, type: !812, scopeLine: 549, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!120, !120, !310}
!814 = !{!815, !816, !817, !818}
!815 = !DILocalVariable(name: "result", arg: 1, scope: !811, file: !1, line: 549, type: !120)
!816 = !DILocalVariable(name: "d128", arg: 2, scope: !811, file: !1, line: 549, type: !310)
!817 = !DILocalVariable(name: "dn", scope: !811, file: !1, line: 550, type: !134)
!818 = !DILocalVariable(name: "dc", scope: !811, file: !1, line: 551, type: !149)
!819 = !DILocation(line: 0, scope: !811)
!820 = !DILocation(line: 550, column: 3, scope: !811)
!821 = !DILocation(line: 551, column: 3, scope: !811)
!822 = !DILocation(line: 552, column: 3, scope: !811)
!823 = !DILocation(line: 553, column: 3, scope: !811)
!824 = !DILocation(line: 554, column: 3, scope: !811)
!825 = !DILocation(line: 556, column: 3, scope: !811)
!826 = !DILocation(line: 555, column: 3, scope: !811)
!827 = distinct !DISubprogram(name: "decimal128FromNumber", scope: !1, file: !1, line: 641, type: !118, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !828)
!828 = !{!829, !830, !831, !832}
!829 = !DILocalVariable(name: "d128", arg: 1, scope: !827, file: !1, line: 641, type: !120)
!830 = !DILocalVariable(name: "dn", arg: 2, scope: !827, file: !1, line: 641, type: !132)
!831 = !DILocalVariable(name: "set", arg: 3, scope: !827, file: !1, line: 642, type: !148)
!832 = !DILocalVariable(name: "u", scope: !827, file: !1, line: 649, type: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !827, file: !1, line: 645, size: 128, elements: !834)
!834 = !{!835, !846}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "_Dec", scope: !833, file: !1, line: 647, baseType: !836, size: 128)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT128", file: !837, line: 27, baseType: !838)
!837 = !DIFile(filename: "./bid-dpd.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !837, line: 27, size: 128, elements: !839)
!839 = !{!840}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !838, file: !837, line: 27, baseType: !841, size: 128)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, size: 128, elements: !844)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT64", file: !837, line: 26, baseType: !843)
!843 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!844 = !{!845}
!845 = !DISubrange(count: 2)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "dec", scope: !833, file: !1, line: 648, baseType: !121, size: 128)
!847 = !DILocation(line: 0, scope: !827)
!848 = !DILocation(line: 645, column: 3, scope: !827)
!849 = !DILocation(line: 651, column: 3, scope: !827)
!850 = !DILocation(line: 655, column: 33, scope: !827)
!851 = !DILocation(line: 655, column: 3, scope: !827)
!852 = !DILocation(line: 658, column: 3, scope: !827)
!853 = !DILocation(line: 661, column: 34, scope: !827)
!854 = !DILocation(line: 661, column: 3, scope: !827)
!855 = !DILocation(line: 664, column: 13, scope: !827)
!856 = !DILocation(line: 667, column: 1, scope: !827)
!857 = !DILocation(line: 666, column: 3, scope: !827)
!858 = distinct !DISubprogram(name: "decimal128ToNumber", scope: !1, file: !1, line: 670, type: !307, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !859)
!859 = !{!860, !861, !862}
!860 = !DILocalVariable(name: "bid128", arg: 1, scope: !858, file: !1, line: 670, type: !310)
!861 = !DILocalVariable(name: "dn", arg: 2, scope: !858, file: !1, line: 670, type: !309)
!862 = !DILocalVariable(name: "u", scope: !858, file: !1, line: 677, type: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !1, line: 673, size: 128, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_Dec", scope: !863, file: !1, line: 675, baseType: !836, size: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "dec", scope: !863, file: !1, line: 676, baseType: !121, size: 128)
!867 = !DILocation(line: 0, scope: !858)
!868 = !DILocation(line: 673, column: 3, scope: !858)
!869 = !DILocation(line: 681, column: 35, scope: !858)
!870 = !DILocation(line: 681, column: 3, scope: !858)
!871 = !DILocation(line: 684, column: 3, scope: !858)
!872 = !DILocation(line: 687, column: 34, scope: !858)
!873 = !DILocation(line: 687, column: 3, scope: !858)
!874 = !DILocation(line: 689, column: 10, scope: !858)
!875 = !DILocation(line: 690, column: 1, scope: !858)
!876 = !DILocation(line: 689, column: 3, scope: !858)
!877 = distinct !DISubprogram(name: "decimal128ToString", scope: !1, file: !1, line: 693, type: !402, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !878)
!878 = !{!879, !880, !881}
!879 = !DILocalVariable(name: "d128", arg: 1, scope: !877, file: !1, line: 693, type: !310)
!880 = !DILocalVariable(name: "string", arg: 2, scope: !877, file: !1, line: 693, type: !19)
!881 = !DILocalVariable(name: "dn", scope: !877, file: !1, line: 695, type: !134)
!882 = !DILocation(line: 0, scope: !877)
!883 = !DILocation(line: 695, column: 3, scope: !877)
!884 = !DILocation(line: 696, column: 3, scope: !877)
!885 = !DILocation(line: 697, column: 3, scope: !877)
!886 = !DILocation(line: 699, column: 1, scope: !877)
!887 = !DILocation(line: 698, column: 3, scope: !877)
!888 = distinct !DISubprogram(name: "decimal128ToEngString", scope: !1, file: !1, line: 702, type: !402, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !889)
!889 = !{!890, !891, !892}
!890 = !DILocalVariable(name: "d128", arg: 1, scope: !888, file: !1, line: 702, type: !310)
!891 = !DILocalVariable(name: "string", arg: 2, scope: !888, file: !1, line: 702, type: !19)
!892 = !DILocalVariable(name: "dn", scope: !888, file: !1, line: 704, type: !134)
!893 = !DILocation(line: 0, scope: !888)
!894 = !DILocation(line: 704, column: 3, scope: !888)
!895 = !DILocation(line: 705, column: 3, scope: !888)
!896 = !DILocation(line: 706, column: 3, scope: !888)
!897 = !DILocation(line: 708, column: 1, scope: !888)
!898 = !DILocation(line: 707, column: 3, scope: !888)
!899 = distinct !DISubprogram(name: "decimal128FromString", scope: !1, file: !1, line: 711, type: !765, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !900)
!900 = !{!901, !902, !903, !904, !905}
!901 = !DILocalVariable(name: "result", arg: 1, scope: !899, file: !1, line: 711, type: !120)
!902 = !DILocalVariable(name: "string", arg: 2, scope: !899, file: !1, line: 711, type: !22)
!903 = !DILocalVariable(name: "set", arg: 3, scope: !899, file: !1, line: 712, type: !148)
!904 = !DILocalVariable(name: "dc", scope: !899, file: !1, line: 714, type: !149)
!905 = !DILocalVariable(name: "dn", scope: !899, file: !1, line: 715, type: !134)
!906 = !DILocation(line: 0, scope: !899)
!907 = !DILocation(line: 714, column: 3, scope: !899)
!908 = !DILocation(line: 715, column: 3, scope: !899)
!909 = !DILocation(line: 717, column: 3, scope: !899)
!910 = !DILocation(line: 718, column: 19, scope: !899)
!911 = !DILocation(line: 718, column: 6, scope: !899)
!912 = !DILocation(line: 718, column: 12, scope: !899)
!913 = !DILocation(line: 720, column: 3, scope: !899)
!914 = !DILocation(line: 721, column: 3, scope: !899)
!915 = !DILocation(line: 722, column: 10, scope: !916)
!916 = distinct !DILexicalBlock(scope: !899, file: !1, line: 722, column: 7)
!917 = !DILocation(line: 722, column: 17, scope: !916)
!918 = !DILocation(line: 722, column: 7, scope: !899)
!919 = !DILocation(line: 724, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !1, line: 723, column: 5)
!921 = !DILocation(line: 725, column: 5, scope: !920)
!922 = !DILocation(line: 727, column: 1, scope: !899)
!923 = !DILocation(line: 726, column: 3, scope: !899)
