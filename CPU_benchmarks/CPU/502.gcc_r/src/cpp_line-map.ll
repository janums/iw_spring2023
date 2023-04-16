; ModuleID = 'cpp_line-map.bc'
source_filename = "cpp_line-map.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.line_maps = type { %struct.line_map*, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8* (i8*, i64)* }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [44 x i8] c"line-map.c: file \22%s\22 entered but not left\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"line-map.c: file \22%s\22 left but not entered\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !34 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !39, metadata !DIExpression()), !dbg !40
  %__c.off = add i32 %__c, 128, !dbg !41
  %0 = icmp ult i32 %__c.off, 384, !dbg !41
  br i1 %0, label %cond.true, label %cond.end, !dbg !41

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #7, !dbg !42
  %1 = load i32*, i32** %call, align 8, !dbg !43
  %idxprom = sext i32 %__c to i64, !dbg !44
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !44
  %2 = load i32, i32* %arrayidx, align 4, !dbg !44
  br label %cond.end, !dbg !45

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !45
  ret i32 %cond, !dbg !46
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !49, metadata !DIExpression()), !dbg !50
  %__c.off = add i32 %__c, 128, !dbg !51
  %0 = icmp ult i32 %__c.off, 384, !dbg !51
  br i1 %0, label %cond.true, label %cond.end, !dbg !51

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #7, !dbg !52
  %1 = load i32*, i32** %call, align 8, !dbg !53
  %idxprom = sext i32 %__c to i64, !dbg !54
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !54
  %2 = load i32, i32* %arrayidx, align 4, !dbg !54
  br label %cond.end, !dbg !55

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !55
  ret i32 %cond, !dbg !56
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @linemap_init(%struct.line_maps* %set) local_unnamed_addr #2 !dbg !57 {
entry:
  call void @llvm.dbg.value(metadata %struct.line_maps* %set, metadata !82, metadata !DIExpression()), !dbg !83
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 0, !dbg !84
  store %struct.line_map* null, %struct.line_map** %maps, align 8, !dbg !85
  %allocated = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 1, !dbg !86
  store i32 0, i32* %allocated, align 8, !dbg !87
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 2, !dbg !88
  store i32 0, i32* %used, align 4, !dbg !89
  %last_listed = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 4, !dbg !90
  store i32 -1, i32* %last_listed, align 4, !dbg !91
  %trace_includes = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 6, !dbg !92
  store i8 0, i8* %trace_includes, align 4, !dbg !93
  %depth = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 5, !dbg !94
  store i32 0, i32* %depth, align 8, !dbg !95
  %cache = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 3, !dbg !96
  store i32 0, i32* %cache, align 8, !dbg !97
  %highest_location = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 7, !dbg !98
  store i32 1, i32* %highest_location, align 8, !dbg !99
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 8, !dbg !100
  store i32 1, i32* %highest_line, align 4, !dbg !101
  %max_column_hint = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 9, !dbg !102
  store i32 0, i32* %max_column_hint, align 8, !dbg !103
  %reallocator = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 10, !dbg !104
  store i8* (i8*, i64)* null, i8* (i8*, i64)** %reallocator, align 8, !dbg !105
  ret void, !dbg !106
}

; Function Attrs: nounwind uwtable
define dso_local void @linemap_check_files_exited(%struct.line_maps* %set) local_unnamed_addr #2 !dbg !107 {
entry:
  call void @llvm.dbg.value(metadata %struct.line_maps* %set, metadata !109, metadata !DIExpression()), !dbg !111
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 0, !dbg !112
  %0 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !112
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 2, !dbg !114
  %1 = load i32, i32* %used, align 4, !dbg !114
  %sub = add i32 %1, -1, !dbg !115
  %idxprom = zext i32 %sub to i64, !dbg !116
  %arrayidx = getelementptr inbounds %struct.line_map, %struct.line_map* %0, i64 %idxprom, !dbg !116
  call void @llvm.dbg.value(metadata %struct.line_map* %arrayidx, metadata !110, metadata !DIExpression()), !dbg !111
  br label %for.cond, !dbg !117

for.cond:                                         ; preds = %for.body, %entry
  %map.0 = phi %struct.line_map* [ %arrayidx, %entry ], [ %arrayidx4, %for.body ], !dbg !118
  call void @llvm.dbg.value(metadata %struct.line_map* %map.0, metadata !110, metadata !DIExpression()), !dbg !111
  %included_from = getelementptr inbounds %struct.line_map, %struct.line_map* %map.0, i64 0, i32 3, !dbg !119
  %2 = load i32, i32* %included_from, align 8, !dbg !119
  %cmp = icmp sgt i32 %2, -1, !dbg !119
  br i1 %cmp, label %for.body, label %for.end, !dbg !121

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !122
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %map.0, i64 0, i32 0, !dbg !123
  %4 = load i8*, i8** %to_file, align 8, !dbg !123
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %4) #7, !dbg !124
  %5 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !125
  %6 = load i32, i32* %included_from, align 8, !dbg !125
  %idxprom3 = sext i32 %6 to i64, !dbg !125
  %arrayidx4 = getelementptr inbounds %struct.line_map, %struct.line_map* %5, i64 %idxprom3, !dbg !125
  call void @llvm.dbg.value(metadata %struct.line_map* %arrayidx4, metadata !110, metadata !DIExpression()), !dbg !111
  br label %for.cond, !dbg !126, !llvm.loop !127

for.end:                                          ; preds = %for.cond
  ret void, !dbg !129
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @linemap_free(%struct.line_maps* %set) local_unnamed_addr #2 !dbg !130 {
entry:
  call void @llvm.dbg.value(metadata %struct.line_maps* %set, metadata !132, metadata !DIExpression()), !dbg !133
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 0, !dbg !134
  %0 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !134
  %tobool = icmp eq %struct.line_map* %0, null, !dbg !136
  br i1 %tobool, label %if.end, label %if.then, !dbg !137

if.then:                                          ; preds = %entry
  tail call void @linemap_check_files_exited(%struct.line_maps* %set) #8, !dbg !138
  %1 = bitcast %struct.line_maps* %set to i8**, !dbg !140
  %2 = load i8*, i8** %1, align 8, !dbg !140
  tail call void @free(i8* %2) #7, !dbg !141
  br label %if.end, !dbg !142

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !143
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local %struct.line_map* @linemap_add(%struct.line_maps* %set, i32 %reason, i32 %sysp, i8* %to_file, i32 %to_line) local_unnamed_addr #2 !dbg !144 {
entry:
  call void @llvm.dbg.value(metadata %struct.line_maps* %set, metadata !150, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 %reason, metadata !151, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 %sysp, metadata !152, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i8* %to_file, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 %to_line, metadata !154, metadata !DIExpression()), !dbg !165
  %highest_location = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 7, !dbg !166
  %0 = load i32, i32* %highest_location, align 8, !dbg !166
  %add = add i32 %0, 1, !dbg !167
  call void @llvm.dbg.value(metadata i32 %add, metadata !156, metadata !DIExpression()), !dbg !165
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 2, !dbg !168
  %1 = load i32, i32* %used, align 4, !dbg !168
  %tobool = icmp eq i32 %1, 0, !dbg !170
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !171

land.lhs.true:                                    ; preds = %entry
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 0, !dbg !172
  %2 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !172
  %sub = add i32 %1, -1, !dbg !173
  %idxprom = zext i32 %sub to i64, !dbg !174
  %start_location2 = getelementptr inbounds %struct.line_map, %struct.line_map* %2, i64 %idxprom, i32 2, !dbg !175
  %3 = load i32, i32* %start_location2, align 4, !dbg !175
  %cmp = icmp ult i32 %add, %3, !dbg !176
  br i1 %cmp, label %if.then, label %if.end, !dbg !177

if.then:                                          ; preds = %land.lhs.true
  tail call void @abort() #9, !dbg !178
  unreachable, !dbg !178

if.end:                                           ; preds = %entry, %land.lhs.true
  %allocated = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 1, !dbg !179
  %4 = load i32, i32* %allocated, align 8, !dbg !179
  %cmp4 = icmp eq i32 %1, %4, !dbg !180
  br i1 %cmp4, label %if.then5, label %if.end26, !dbg !181

if.then5:                                         ; preds = %if.end
  %reallocator6 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 10, !dbg !182
  %5 = load i8* (i8*, i64)*, i8* (i8*, i64)** %reallocator6, align 8, !dbg !182
  %tobool7 = icmp eq i8* (i8*, i64)* %5, null, !dbg !183
  br i1 %tobool7, label %cond.end, label %cond.true, !dbg !183

cond.true:                                        ; preds = %if.then5
  br label %cond.end, !dbg !183

cond.end:                                         ; preds = %if.then5, %cond.true
  %cond = phi i8* (i8*, i64)* [ %5, %cond.true ], [ @xrealloc, %if.then5 ], !dbg !183
  call void @llvm.dbg.value(metadata i8* (i8*, i64)* %cond, metadata !157, metadata !DIExpression()), !dbg !184
  %mul = shl i32 %1, 1, !dbg !185
  %add10 = add i32 %mul, 256, !dbg !186
  store i32 %add10, i32* %allocated, align 8, !dbg !187
  %6 = bitcast %struct.line_maps* %set to i8**, !dbg !188
  %7 = load i8*, i8** %6, align 8, !dbg !188
  %conv = zext i32 %add10 to i64, !dbg !189
  %mul14 = mul nuw nsw i64 %conv, 24, !dbg !190
  %call = tail call i8* %cond(i8* %7, i64 %mul14) #7, !dbg !191
  store i8* %call, i8** %6, align 8, !dbg !192
  %.cast = bitcast i8* %call to %struct.line_map*, !dbg !193
  %8 = load i32, i32* %used, align 4, !dbg !194
  %idxprom18 = zext i32 %8 to i64, !dbg !195
  %arrayidx19 = getelementptr inbounds %struct.line_map, %struct.line_map* %.cast, i64 %idxprom18, !dbg !195
  %9 = bitcast %struct.line_map* %arrayidx19 to i8*, !dbg !196
  %10 = load i32, i32* %allocated, align 8, !dbg !197
  %sub22 = sub i32 %10, %8, !dbg !198
  %conv23 = zext i32 %sub22 to i64, !dbg !199
  %mul24 = mul nuw nsw i64 %conv23, 24, !dbg !200
  %call25 = tail call i8* @memset(i8* %9, i32 0, i64 %mul24) #7, !dbg !201
  %.pre = load i32, i32* %used, align 4, !dbg !202
  br label %if.end26, !dbg !203

if.end26:                                         ; preds = %cond.end, %if.end
  %11 = phi i32 [ %.pre, %cond.end ], [ %1, %if.end ], !dbg !202
  %maps27 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 0, !dbg !204
  %12 = load %struct.line_map*, %struct.line_map** %maps27, align 8, !dbg !204
  %idxprom29 = zext i32 %11 to i64, !dbg !205
  %arrayidx30 = getelementptr inbounds %struct.line_map, %struct.line_map* %12, i64 %idxprom29, !dbg !205
  call void @llvm.dbg.value(metadata %struct.line_map* %arrayidx30, metadata !155, metadata !DIExpression()), !dbg !165
  %tobool31 = icmp eq i8* %to_file, null, !dbg !206
  br i1 %tobool31, label %if.end40, label %land.lhs.true32, !dbg !208

land.lhs.true32:                                  ; preds = %if.end26
  %13 = load i8, i8* %to_file, align 1, !dbg !209
  %cmp34 = icmp eq i8 %13, 0, !dbg !210
  %cmp37 = icmp ne i32 %reason, 3, !dbg !211
  %or.cond = and i1 %cmp34, %cmp37, !dbg !212
  %spec.select3 = select i1 %or.cond, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %to_file, !dbg !212
  br label %if.end40, !dbg !212

if.end40:                                         ; preds = %if.end26, %land.lhs.true32
  %to_file.addr.0 = phi i8* [ null, %if.end26 ], [ %spec.select3, %land.lhs.true32 ]
  call void @llvm.dbg.value(metadata i8* %to_file.addr.0, metadata !153, metadata !DIExpression()), !dbg !165
  %cmp41 = icmp eq i32 %reason, 3, !dbg !213
  %spec.select = select i1 %cmp41, i32 2, i32 %reason, !dbg !215
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !151, metadata !DIExpression()), !dbg !165
  %depth = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 5, !dbg !216
  %14 = load i32, i32* %depth, align 8, !dbg !216
  %cmp45 = icmp eq i32 %14, 0, !dbg !217
  br i1 %cmp45, label %if.end93, label %if.else, !dbg !218

if.else:                                          ; preds = %if.end40
  %cmp48 = icmp eq i32 %spec.select, 1, !dbg !219
  br i1 %cmp48, label %if.then50, label %if.end93, !dbg !220

if.then50:                                        ; preds = %if.else
  %add.ptr = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx30, i64 -1, !dbg !221
  %included_from = getelementptr inbounds %struct.line_map, %struct.line_map* %add.ptr, i64 0, i32 3, !dbg !221
  %15 = load i32, i32* %included_from, align 8, !dbg !221
  %cmp51 = icmp slt i32 %15, 0, !dbg !221
  br i1 %cmp51, label %if.then53, label %if.else60, !dbg !223

if.then53:                                        ; preds = %if.then50
  %cmp54 = icmp eq i8* %to_file.addr.0, null, !dbg !224
  br i1 %cmp54, label %if.then56, label %if.end58, !dbg !227

if.then56:                                        ; preds = %if.then53
  %dec = add i32 %14, -1, !dbg !228
  store i32 %dec, i32* %depth, align 8, !dbg !228
  br label %cleanup, !dbg !230

if.end58:                                         ; preds = %if.then53
  call void @llvm.dbg.value(metadata i8 1, metadata !164, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i32 2, metadata !151, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata %struct.line_map* %add.ptr, metadata !160, metadata !DIExpression()), !dbg !231
  br label %if.end71, !dbg !232

if.else60:                                        ; preds = %if.then50
  %idxprom64 = sext i32 %15 to i64, !dbg !233
  %arrayidx65 = getelementptr inbounds %struct.line_map, %struct.line_map* %12, i64 %idxprom64, !dbg !233
  call void @llvm.dbg.value(metadata %struct.line_map* %arrayidx65, metadata !160, metadata !DIExpression()), !dbg !231
  %tobool66 = icmp eq i8* %to_file.addr.0, null, !dbg !235
  br i1 %tobool66, label %land.end, label %land.rhs, !dbg !236

land.rhs:                                         ; preds = %if.else60
  %to_file67 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx65, i64 0, i32 0, !dbg !237
  %16 = load i8*, i8** %to_file67, align 8, !dbg !237
  %call68 = tail call i32 @strcmp(i8* %16, i8* nonnull %to_file.addr.0) #10, !dbg !238
  %tobool69 = icmp ne i32 %call68, 0, !dbg !236
  %phitmp = zext i1 %tobool69 to i8
  br label %land.end

land.end:                                         ; preds = %if.else60, %land.rhs
  %17 = phi i8 [ 0, %if.else60 ], [ %phitmp, %land.rhs ]
  call void @llvm.dbg.value(metadata i8 %17, metadata !164, metadata !DIExpression()), !dbg !231
  br label %if.end71

if.end71:                                         ; preds = %land.end, %if.end58
  %from.0 = phi %struct.line_map* [ %add.ptr, %if.end58 ], [ %arrayidx65, %land.end ], !dbg !239
  %error.0 = phi i8 [ 1, %if.end58 ], [ %17, %land.end ], !dbg !239
  %reason.addr.1 = phi i32 [ 2, %if.end58 ], [ 1, %land.end ], !dbg !165
  call void @llvm.dbg.value(metadata i32 %reason.addr.1, metadata !151, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i8 %error.0, metadata !164, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata %struct.line_map* %from.0, metadata !160, metadata !DIExpression()), !dbg !231
  %tobool72 = icmp eq i8 %error.0, 0, !dbg !240
  br i1 %tobool72, label %if.end75, label %if.then73, !dbg !242

if.then73:                                        ; preds = %if.end71
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !243
  %call74 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %to_file.addr.0) #7, !dbg !244
  br label %if.end75, !dbg !244

if.end75:                                         ; preds = %if.end71, %if.then73
  %tobool77 = icmp ne i8 %error.0, 0, !dbg !245
  %cmp78 = icmp eq i8* %to_file.addr.0, null, !dbg !247
  %or.cond2 = or i1 %tobool77, %cmp78, !dbg !248
  br i1 %or.cond2, label %if.then80, label %cleanup, !dbg !248

if.then80:                                        ; preds = %if.end75
  %to_file81 = getelementptr inbounds %struct.line_map, %struct.line_map* %from.0, i64 0, i32 0, !dbg !249
  %19 = load i8*, i8** %to_file81, align 8, !dbg !249
  call void @llvm.dbg.value(metadata i8* %19, metadata !153, metadata !DIExpression()), !dbg !165
  %start_location83 = getelementptr inbounds %struct.line_map, %struct.line_map* %from.0, i64 1, i32 2, !dbg !251
  %20 = load i32, i32* %start_location83, align 4, !dbg !251
  %start_location84 = getelementptr inbounds %struct.line_map, %struct.line_map* %from.0, i64 0, i32 2, !dbg !251
  %21 = load i32, i32* %start_location84, align 4, !dbg !251
  %sub85 = sub i32 %20, %21, !dbg !251
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %from.0, i64 0, i32 6, !dbg !251
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !251
  %bf.cast = zext i8 %bf.load to i32, !dbg !251
  %shr = lshr i32 %sub85, %bf.cast, !dbg !251
  %to_line86 = getelementptr inbounds %struct.line_map, %struct.line_map* %from.0, i64 0, i32 1, !dbg !251
  %22 = load i32, i32* %to_line86, align 8, !dbg !251
  %add87 = add i32 %shr, %22, !dbg !251
  call void @llvm.dbg.value(metadata i32 %add87, metadata !154, metadata !DIExpression()), !dbg !165
  %sysp88 = getelementptr inbounds %struct.line_map, %struct.line_map* %from.0, i64 0, i32 5, !dbg !252
  %23 = load i8, i8* %sysp88, align 1, !dbg !252
  %conv89 = zext i8 %23 to i32, !dbg !253
  call void @llvm.dbg.value(metadata i32 %conv89, metadata !152, metadata !DIExpression()), !dbg !165
  br label %cleanup, !dbg !254

cleanup:                                          ; preds = %if.then80, %if.end75, %if.then56
  %to_line.addr.1 = phi i32 [ %to_line, %if.then56 ], [ %add87, %if.then80 ], [ %to_line, %if.end75 ]
  %to_file.addr.2 = phi i8* [ null, %if.then56 ], [ %19, %if.then80 ], [ %to_file.addr.0, %if.end75 ], !dbg !165
  %sysp.addr.1 = phi i32 [ %sysp, %if.then56 ], [ %conv89, %if.then80 ], [ %sysp, %if.end75 ]
  %reason.addr.2 = phi i32 [ 1, %if.then56 ], [ %reason.addr.1, %if.then80 ], [ %reason.addr.1, %if.end75 ], !dbg !165
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then56 ], [ true, %if.then80 ], [ true, %if.end75 ]
  call void @llvm.dbg.value(metadata i32 %reason.addr.2, metadata !151, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 %sysp.addr.1, metadata !152, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i8* %to_file.addr.2, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 %to_line.addr.1, metadata !154, metadata !DIExpression()), !dbg !165
  br i1 %cleanup.dest.slot.0, label %if.end93, label %cleanup144

if.end93:                                         ; preds = %if.else, %cleanup, %if.end40
  %to_line.addr.3 = phi i32 [ %to_line, %if.end40 ], [ %to_line, %if.else ], [ %to_line.addr.1, %cleanup ]
  %to_file.addr.4 = phi i8* [ %to_file.addr.0, %if.end40 ], [ %to_file.addr.0, %if.else ], [ %to_file.addr.2, %cleanup ], !dbg !255
  %sysp.addr.3 = phi i32 [ %sysp, %if.end40 ], [ %sysp, %if.else ], [ %sysp.addr.1, %cleanup ]
  %reason.addr.4 = phi i32 [ 0, %if.end40 ], [ %spec.select, %if.else ], [ %reason.addr.2, %cleanup ], !dbg !165
  call void @llvm.dbg.value(metadata i32 %reason.addr.4, metadata !151, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 %sysp.addr.3, metadata !152, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i8* %to_file.addr.4, metadata !153, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 %to_line.addr.3, metadata !154, metadata !DIExpression()), !dbg !165
  %reason94 = getelementptr inbounds %struct.line_map, %struct.line_map* %12, i64 %idxprom29, i32 4, !dbg !256
  %24 = trunc i32 %reason.addr.4 to i8, !dbg !257
  store i8 %24, i8* %reason94, align 4, !dbg !257
  %conv95 = trunc i32 %sysp.addr.3 to i8, !dbg !258
  %sysp96 = getelementptr inbounds %struct.line_map, %struct.line_map* %12, i64 %idxprom29, i32 5, !dbg !259
  store i8 %conv95, i8* %sysp96, align 1, !dbg !260
  %start_location97 = getelementptr inbounds %struct.line_map, %struct.line_map* %12, i64 %idxprom29, i32 2, !dbg !261
  store i32 %add, i32* %start_location97, align 4, !dbg !262
  %to_file98 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx30, i64 0, i32 0, !dbg !263
  store i8* %to_file.addr.4, i8** %to_file98, align 8, !dbg !264
  %to_line99 = getelementptr inbounds %struct.line_map, %struct.line_map* %12, i64 %idxprom29, i32 1, !dbg !265
  store i32 %to_line.addr.3, i32* %to_line99, align 8, !dbg !266
  %25 = load i32, i32* %used, align 4, !dbg !267
  %inc = add i32 %25, 1, !dbg !267
  store i32 %inc, i32* %used, align 4, !dbg !267
  %cache = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 3, !dbg !268
  store i32 %25, i32* %cache, align 8, !dbg !269
  %column_bits101 = getelementptr inbounds %struct.line_map, %struct.line_map* %12, i64 %idxprom29, i32 6, !dbg !270
  store i8 0, i8* %column_bits101, align 2, !dbg !271
  store i32 %add, i32* %highest_location, align 8, !dbg !272
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 8, !dbg !273
  store i32 %add, i32* %highest_line, align 4, !dbg !274
  %max_column_hint = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 9, !dbg !275
  store i32 0, i32* %max_column_hint, align 8, !dbg !276
  switch i32 %reason.addr.4, label %cleanup144 [
    i32 0, label %if.then105
    i32 2, label %if.then124
    i32 1, label %if.then131
  ], !dbg !277

if.then105:                                       ; preds = %if.end93
  %26 = load i32, i32* %depth, align 8, !dbg !278
  %cmp107 = icmp eq i32 %26, 0, !dbg !281
  br i1 %cmp107, label %cond.end113, label %cond.false110, !dbg !282

cond.false110:                                    ; preds = %if.then105
  %27 = load i32, i32* %used, align 4, !dbg !283
  %sub112 = add i32 %27, -2, !dbg !284
  br label %cond.end113, !dbg !282

cond.end113:                                      ; preds = %if.then105, %cond.false110
  %cond114 = phi i32 [ %sub112, %cond.false110 ], [ -1, %if.then105 ], !dbg !282
  %included_from115 = getelementptr inbounds %struct.line_map, %struct.line_map* %12, i64 %idxprom29, i32 3, !dbg !285
  store i32 %cond114, i32* %included_from115, align 8, !dbg !286
  %28 = load i32, i32* %depth, align 8, !dbg !287
  %inc117 = add i32 %28, 1, !dbg !287
  store i32 %inc117, i32* %depth, align 8, !dbg !287
  %trace_includes = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 6, !dbg !288
  %29 = load i8, i8* %trace_includes, align 4, !dbg !288
  %tobool118 = icmp eq i8 %29, 0, !dbg !290
  br i1 %tobool118, label %cleanup144, label %if.then119, !dbg !291

if.then119:                                       ; preds = %cond.end113
  tail call fastcc void @trace_include(%struct.line_maps* %set, %struct.line_map* %arrayidx30) #8, !dbg !292
  br label %cleanup144, !dbg !292

if.then124:                                       ; preds = %if.end93
  %arrayidx125 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx30, i64 -1, !dbg !293
  %included_from126 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx125, i64 0, i32 3, !dbg !295
  %30 = load i32, i32* %included_from126, align 8, !dbg !295
  %included_from127 = getelementptr inbounds %struct.line_map, %struct.line_map* %12, i64 %idxprom29, i32 3, !dbg !296
  store i32 %30, i32* %included_from127, align 8, !dbg !297
  br label %cleanup144, !dbg !298

if.then131:                                       ; preds = %if.end93
  %31 = load i32, i32* %depth, align 8, !dbg !299
  %dec133 = add i32 %31, -1, !dbg !299
  store i32 %dec133, i32* %depth, align 8, !dbg !299
  %32 = load %struct.line_map*, %struct.line_map** %maps27, align 8, !dbg !302
  %add.ptr135 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx30, i64 -1, !dbg !302
  %included_from136 = getelementptr inbounds %struct.line_map, %struct.line_map* %add.ptr135, i64 0, i32 3, !dbg !302
  %33 = load i32, i32* %included_from136, align 8, !dbg !302
  %idxprom137 = sext i32 %33 to i64, !dbg !302
  %included_from139 = getelementptr inbounds %struct.line_map, %struct.line_map* %32, i64 %idxprom137, i32 3, !dbg !303
  %34 = load i32, i32* %included_from139, align 8, !dbg !303
  %included_from140 = getelementptr inbounds %struct.line_map, %struct.line_map* %12, i64 %idxprom29, i32 3, !dbg !304
  store i32 %34, i32* %included_from140, align 8, !dbg !305
  br label %cleanup144, !dbg !306

cleanup144:                                       ; preds = %cond.end113, %if.then119, %if.then131, %if.end93, %if.then124, %cleanup
  %retval.1 = phi %struct.line_map* [ null, %cleanup ], [ %arrayidx30, %if.then124 ], [ %arrayidx30, %if.end93 ], [ %arrayidx30, %if.then131 ], [ %arrayidx30, %cond.end113 ], [ %arrayidx30, %if.then119 ], !dbg !165
  ret %struct.line_map* %retval.1, !dbg !307
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #4

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @trace_include(%struct.line_maps* %set, %struct.line_map* %map) unnamed_addr #2 !dbg !308 {
entry:
  call void @llvm.dbg.value(metadata %struct.line_maps* %set, metadata !314, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata %struct.line_map* %map, metadata !315, metadata !DIExpression()), !dbg !317
  %depth = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 5, !dbg !318
  %0 = load i32, i32* %depth, align 8, !dbg !318
  call void @llvm.dbg.value(metadata i32 %0, metadata !316, metadata !DIExpression()), !dbg !317
  br label %while.cond, !dbg !319

while.cond:                                       ; preds = %while.body, %entry
  %i.0 = phi i32 [ %0, %entry ], [ %dec, %while.body ], !dbg !317
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !316, metadata !DIExpression()), !dbg !317
  %dec = add i32 %i.0, -1, !dbg !320
  call void @llvm.dbg.value(metadata i32 %dec, metadata !316, metadata !DIExpression()), !dbg !317
  %tobool = icmp eq i32 %dec, 0, !dbg !319
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !317
  br i1 %tobool, label %while.end, label %while.body, !dbg !319

while.body:                                       ; preds = %while.cond
  %call = tail call i32 @putc(i32 46, %struct._IO_FILE* %1) #7, !dbg !321
  br label %while.cond, !dbg !319, !llvm.loop !322

while.end:                                        ; preds = %while.cond
  %.lcssa = phi %struct._IO_FILE* [ %1, %while.cond ], !dbg !317
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %map, i64 0, i32 0, !dbg !324
  %2 = load i8*, i8** %to_file, align 8, !dbg !324
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.lcssa, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %2) #7, !dbg !325
  ret void, !dbg !326
}

; Function Attrs: nounwind uwtable
define dso_local i32 @linemap_line_start(%struct.line_maps* %set, i32 %to_line, i32 %max_column_hint) local_unnamed_addr #2 !dbg !327 {
entry:
  call void @llvm.dbg.value(metadata %struct.line_maps* %set, metadata !331, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 %to_line, metadata !332, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 %max_column_hint, metadata !333, metadata !DIExpression()), !dbg !343
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 0, !dbg !344
  %0 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !344
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 2, !dbg !345
  %1 = load i32, i32* %used, align 4, !dbg !345
  %sub = add i32 %1, -1, !dbg !346
  %idxprom = zext i32 %sub to i64, !dbg !347
  %arrayidx = getelementptr inbounds %struct.line_map, %struct.line_map* %0, i64 %idxprom, !dbg !347
  call void @llvm.dbg.value(metadata %struct.line_map* %arrayidx, metadata !334, metadata !DIExpression()), !dbg !343
  %highest_location = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 7, !dbg !348
  %2 = load i32, i32* %highest_location, align 8, !dbg !348
  call void @llvm.dbg.value(metadata i32 %2, metadata !335, metadata !DIExpression()), !dbg !343
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 8, !dbg !349
  %3 = load i32, i32* %highest_line, align 4, !dbg !349
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %0, i64 %idxprom, i32 2, !dbg !349
  %4 = load i32, i32* %start_location, align 4, !dbg !349
  %sub1 = sub i32 %3, %4, !dbg !349
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %0, i64 %idxprom, i32 6, !dbg !349
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !349
  %bf.cast = zext i8 %bf.load to i32, !dbg !349
  %shr = lshr i32 %sub1, %bf.cast, !dbg !349
  %to_line2 = getelementptr inbounds %struct.line_map, %struct.line_map* %0, i64 %idxprom, i32 1, !dbg !349
  %5 = load i32, i32* %to_line2, align 8, !dbg !349
  %add = add i32 %shr, %5, !dbg !349
  call void @llvm.dbg.value(metadata i32 %add, metadata !337, metadata !DIExpression()), !dbg !343
  %sub3 = sub i32 %to_line, %add, !dbg !350
  call void @llvm.dbg.value(metadata i32 %sub3, metadata !338, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i8 0, metadata !339, metadata !DIExpression()), !dbg !343
  %cmp = icmp slt i32 %sub3, 0, !dbg !351
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !353

lor.lhs.false:                                    ; preds = %entry
  %cmp4 = icmp sgt i32 %sub3, 10, !dbg !354
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false9, !dbg !355

land.lhs.true:                                    ; preds = %lor.lhs.false
  %mul = mul nsw i32 %sub3, %bf.cast, !dbg !356
  %cmp8 = icmp sgt i32 %mul, 1000, !dbg !357
  br i1 %cmp8, label %if.end, label %lor.lhs.false9, !dbg !358

lor.lhs.false9:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %max_column_hint.highbits = lshr i32 %max_column_hint, %bf.cast, !dbg !359
  %cmp13 = icmp eq i32 %max_column_hint.highbits, 0, !dbg !359
  br i1 %cmp13, label %lor.lhs.false14, label %if.end, !dbg !360

lor.lhs.false14:                                  ; preds = %lor.lhs.false9
  %cmp15 = icmp ult i32 %max_column_hint, 81, !dbg !361
  br i1 %cmp15, label %land.lhs.true16, label %if.else, !dbg !362

land.lhs.true16:                                  ; preds = %lor.lhs.false14
  %cmp20 = icmp ugt i8 %bf.load, 9, !dbg !363
  br i1 %cmp20, label %if.end, label %if.else, !dbg !364

if.else:                                          ; preds = %land.lhs.true16, %lor.lhs.false14
  %max_column_hint21 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 9, !dbg !365
  %6 = load i32, i32* %max_column_hint21, align 8, !dbg !365
  call void @llvm.dbg.value(metadata i32 %6, metadata !333, metadata !DIExpression()), !dbg !343
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false9, %entry, %land.lhs.true, %land.lhs.true16, %if.else
  %add_map.0 = phi i1 [ false, %if.else ], [ true, %land.lhs.true16 ], [ true, %lor.lhs.false9 ], [ true, %land.lhs.true ], [ true, %entry ]
  %max_column_hint.addr.0 = phi i32 [ %6, %if.else ], [ %max_column_hint, %land.lhs.true16 ], [ %max_column_hint, %lor.lhs.false9 ], [ %max_column_hint, %land.lhs.true ], [ %max_column_hint, %entry ]
  call void @llvm.dbg.value(metadata i32 %max_column_hint.addr.0, metadata !333, metadata !DIExpression()), !dbg !343
  br i1 %add_map.0, label %if.then22, label %if.else58, !dbg !366

if.then22:                                        ; preds = %if.end
  %cmp24 = icmp ugt i32 %max_column_hint.addr.0, 100000, !dbg !367
  %cmp26 = icmp ugt i32 %2, -1073741824, !dbg !369
  %or.cond = or i1 %cmp24, %cmp26, !dbg !370
  br i1 %or.cond, label %if.then27, label %while.cond.preheader, !dbg !370

while.cond.preheader:                             ; preds = %if.then22
  br label %while.cond, !dbg !371

if.then27:                                        ; preds = %if.then22
  call void @llvm.dbg.value(metadata i32 0, metadata !333, metadata !DIExpression()), !dbg !343
  %cmp28 = icmp ugt i32 %2, -268435456, !dbg !373
  br i1 %cmp28, label %cleanup, label %if.end35, !dbg !376

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %column_bits23.0 = phi i32 [ %inc, %while.body ], [ 7, %while.cond.preheader ], !dbg !377
  call void @llvm.dbg.value(metadata i32 %column_bits23.0, metadata !340, metadata !DIExpression()), !dbg !378
  %max_column_hint.addr.0.highbits = lshr i32 %max_column_hint.addr.0, %column_bits23.0, !dbg !379
  %cmp33 = icmp eq i32 %max_column_hint.addr.0.highbits, 0, !dbg !379
  br i1 %cmp33, label %while.end, label %while.body, !dbg !371

while.body:                                       ; preds = %while.cond
  %inc = add nuw nsw i32 %column_bits23.0, 1, !dbg !380
  call void @llvm.dbg.value(metadata i32 %inc, metadata !340, metadata !DIExpression()), !dbg !378
  br label %while.cond, !dbg !371, !llvm.loop !381

while.end:                                        ; preds = %while.cond
  %column_bits23.0.lcssa = phi i32 [ %column_bits23.0, %while.cond ], !dbg !377
  call void @llvm.dbg.value(metadata i32 %column_bits23.0.lcssa, metadata !340, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i32 %column_bits23.0.lcssa, metadata !340, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i32 %column_bits23.0.lcssa, metadata !340, metadata !DIExpression()), !dbg !378
  %shl34 = shl i32 1, %column_bits23.0.lcssa, !dbg !382
  call void @llvm.dbg.value(metadata i32 %shl34, metadata !333, metadata !DIExpression()), !dbg !343
  br label %if.end35

if.end35:                                         ; preds = %if.then27, %while.end
  %max_column_hint.addr.1 = phi i32 [ %shl34, %while.end ], [ 0, %if.then27 ], !dbg !383
  %column_bits23.1 = phi i32 [ %column_bits23.0.lcssa, %while.end ], [ 0, %if.then27 ], !dbg !383
  call void @llvm.dbg.value(metadata i32 %column_bits23.1, metadata !340, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i32 %max_column_hint.addr.1, metadata !333, metadata !DIExpression()), !dbg !343
  br i1 %cmp, label %if.then50, label %lor.lhs.false37, !dbg !384

lor.lhs.false37:                                  ; preds = %if.end35
  %cmp39 = icmp eq i32 %shr, 0, !dbg !386
  br i1 %cmp39, label %lor.lhs.false40, label %if.then50, !dbg !387

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %sub42 = sub i32 %2, %4, !dbg !388
  %notmask1 = shl nsw i32 -1, %bf.cast, !dbg !388
  %sub47 = xor i32 %notmask1, -1, !dbg !388
  %and = and i32 %sub42, %sub47, !dbg !388
  %and.highbits = lshr i32 %and, %column_bits23.1, !dbg !389
  %cmp49 = icmp eq i32 %and.highbits, 0, !dbg !389
  br i1 %cmp49, label %if.end51, label %if.then50, !dbg !390

if.then50:                                        ; preds = %lor.lhs.false40, %lor.lhs.false37, %if.end35
  %sysp = getelementptr inbounds %struct.line_map, %struct.line_map* %0, i64 %idxprom, i32 5, !dbg !391
  %7 = load i8, i8* %sysp, align 1, !dbg !391
  %conv = zext i8 %7 to i32, !dbg !392
  %to_file = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx, i64 0, i32 0, !dbg !393
  %8 = load i8*, i8** %to_file, align 8, !dbg !393
  %call = tail call %struct.line_map* @linemap_add(%struct.line_maps* %set, i32 2, i32 %conv, i8* %8, i32 %to_line) #8, !dbg !394
  call void @llvm.dbg.value(metadata %struct.line_map* %call, metadata !334, metadata !DIExpression()), !dbg !343
  br label %if.end51, !dbg !395

if.end51:                                         ; preds = %lor.lhs.false40, %if.then50
  %map.0 = phi %struct.line_map* [ %call, %if.then50 ], [ %arrayidx, %lor.lhs.false40 ], !dbg !343
  call void @llvm.dbg.value(metadata %struct.line_map* %map.0, metadata !334, metadata !DIExpression()), !dbg !343
  %column_bits52 = getelementptr inbounds %struct.line_map, %struct.line_map* %map.0, i64 0, i32 6, !dbg !396
  %9 = trunc i32 %column_bits23.1 to i8, !dbg !397
  store i8 %9, i8* %column_bits52, align 2, !dbg !397
  %start_location53 = getelementptr inbounds %struct.line_map, %struct.line_map* %map.0, i64 0, i32 2, !dbg !398
  %10 = load i32, i32* %start_location53, align 4, !dbg !398
  %to_line54 = getelementptr inbounds %struct.line_map, %struct.line_map* %map.0, i64 0, i32 1, !dbg !399
  %11 = load i32, i32* %to_line54, align 8, !dbg !399
  %sub55 = sub i32 %to_line, %11, !dbg !400
  %shl56 = shl i32 %sub55, %column_bits23.1, !dbg !401
  %add57 = add i32 %10, %shl56, !dbg !402
  call void @llvm.dbg.value(metadata i32 %add57, metadata !336, metadata !DIExpression()), !dbg !343
  br label %cleanup, !dbg !403

cleanup:                                          ; preds = %if.then27, %if.end51
  %r.0 = phi i32 [ %add57, %if.end51 ], [ undef, %if.then27 ]
  %max_column_hint.addr.2 = phi i32 [ %max_column_hint.addr.1, %if.end51 ], [ 0, %if.then27 ], !dbg !404
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end51 ], [ false, %if.then27 ]
  call void @llvm.dbg.value(metadata i32 %max_column_hint.addr.2, metadata !333, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !336, metadata !DIExpression()), !dbg !343
  br i1 %cleanup.dest.slot.0, label %cleanup.if.end73_crit_edge, label %cleanup82

cleanup.if.end73_crit_edge:                       ; preds = %cleanup
  %.pre = load i32, i32* %highest_location, align 8, !dbg !405
  br label %if.end73

if.else58:                                        ; preds = %if.end
  %sub60 = sub i32 %2, %4, !dbg !407
  %notmask = shl nsw i32 -1, %bf.cast, !dbg !407
  %sub65 = xor i32 %notmask, -1, !dbg !407
  %and66 = and i32 %sub60, %sub65, !dbg !407
  %sub67 = sub i32 %2, %and66, !dbg !408
  %shl71 = shl i32 %sub3, %bf.cast, !dbg !409
  %add72 = add i32 %sub67, %shl71, !dbg !410
  call void @llvm.dbg.value(metadata i32 %add72, metadata !336, metadata !DIExpression()), !dbg !343
  br label %if.end73

if.end73:                                         ; preds = %cleanup.if.end73_crit_edge, %if.else58
  %12 = phi i32 [ %2, %if.else58 ], [ %.pre, %cleanup.if.end73_crit_edge ], !dbg !405
  %r.1 = phi i32 [ %add72, %if.else58 ], [ %r.0, %cleanup.if.end73_crit_edge ]
  %max_column_hint.addr.3 = phi i32 [ %max_column_hint.addr.0, %if.else58 ], [ %max_column_hint.addr.2, %cleanup.if.end73_crit_edge ]
  call void @llvm.dbg.value(metadata i32 %max_column_hint.addr.3, metadata !333, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata i32 %r.1, metadata !336, metadata !DIExpression()), !dbg !343
  store i32 %r.1, i32* %highest_line, align 4, !dbg !411
  %cmp76 = icmp ugt i32 %r.1, %12, !dbg !412
  br i1 %cmp76, label %if.then78, label %if.end80, !dbg !413

if.then78:                                        ; preds = %if.end73
  store i32 %r.1, i32* %highest_location, align 8, !dbg !414
  br label %if.end80, !dbg !415

if.end80:                                         ; preds = %if.then78, %if.end73
  %max_column_hint81 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 9, !dbg !416
  store i32 %max_column_hint.addr.3, i32* %max_column_hint81, align 8, !dbg !417
  br label %cleanup82, !dbg !418

cleanup82:                                        ; preds = %cleanup, %if.end80
  %retval.1 = phi i32 [ 0, %cleanup ], [ %r.1, %if.end80 ], !dbg !343
  ret i32 %retval.1, !dbg !419
}

; Function Attrs: nounwind uwtable
define dso_local i32 @linemap_position_for_column(%struct.line_maps* %set, i32 %to_column) local_unnamed_addr #2 !dbg !420 {
entry:
  call void @llvm.dbg.value(metadata %struct.line_maps* %set, metadata !424, metadata !DIExpression()), !dbg !432
  call void @llvm.dbg.value(metadata i32 %to_column, metadata !425, metadata !DIExpression()), !dbg !432
  %highest_line = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 8, !dbg !433
  %0 = load i32, i32* %highest_line, align 4, !dbg !433
  call void @llvm.dbg.value(metadata i32 %0, metadata !426, metadata !DIExpression()), !dbg !432
  %max_column_hint = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 9, !dbg !434
  %1 = load i32, i32* %max_column_hint, align 8, !dbg !434
  %cmp = icmp ugt i32 %1, %to_column, !dbg !435
  br i1 %cmp, label %if.end6, label %if.then, !dbg !436

if.then:                                          ; preds = %entry
  %cmp1 = icmp ugt i32 %0, 201326591, !dbg !437
  %cmp2 = icmp ugt i32 %to_column, 100000, !dbg !438
  %or.cond = or i1 %cmp1, %cmp2, !dbg !439
  br i1 %or.cond, label %cleanup, label %if.else, !dbg !439

if.else:                                          ; preds = %if.then
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 0, !dbg !440
  %2 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !440
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 2, !dbg !441
  %3 = load i32, i32* %used, align 4, !dbg !441
  %sub = add i32 %3, -1, !dbg !442
  %idxprom = zext i32 %sub to i64, !dbg !443
  call void @llvm.dbg.value(metadata %struct.line_map* undef, metadata !427, metadata !DIExpression()), !dbg !444
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %2, i64 %idxprom, i32 2, !dbg !445
  %4 = load i32, i32* %start_location, align 4, !dbg !445
  %sub4 = sub i32 %0, %4, !dbg !445
  %column_bits = getelementptr inbounds %struct.line_map, %struct.line_map* %2, i64 %idxprom, i32 6, !dbg !445
  %bf.load = load i8, i8* %column_bits, align 2, !dbg !445
  %bf.cast = zext i8 %bf.load to i32, !dbg !445
  %shr = lshr i32 %sub4, %bf.cast, !dbg !445
  %to_line = getelementptr inbounds %struct.line_map, %struct.line_map* %2, i64 %idxprom, i32 1, !dbg !445
  %5 = load i32, i32* %to_line, align 8, !dbg !445
  %add = add i32 %shr, %5, !dbg !445
  %add5 = add i32 %to_column, 50, !dbg !446
  %call = tail call i32 @linemap_line_start(%struct.line_maps* %set, i32 %add, i32 %add5) #8, !dbg !447
  call void @llvm.dbg.value(metadata i32 %call, metadata !426, metadata !DIExpression()), !dbg !432
  br label %if.end6, !dbg !448

if.end6:                                          ; preds = %entry, %if.else
  %r.0 = phi i32 [ %call, %if.else ], [ %0, %entry ], !dbg !432
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !426, metadata !DIExpression()), !dbg !432
  %add7 = add i32 %r.0, %to_column, !dbg !449
  call void @llvm.dbg.value(metadata i32 %add7, metadata !426, metadata !DIExpression()), !dbg !432
  %highest_location = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 7, !dbg !450
  %6 = load i32, i32* %highest_location, align 8, !dbg !450
  %cmp8 = icmp ult i32 %add7, %6, !dbg !452
  br i1 %cmp8, label %cleanup, label %if.then9, !dbg !453

if.then9:                                         ; preds = %if.end6
  store i32 %add7, i32* %highest_location, align 8, !dbg !454
  br label %cleanup, !dbg !455

cleanup:                                          ; preds = %if.end6, %if.then9, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %add7, %if.then9 ], [ %add7, %if.end6 ], !dbg !432
  ret i32 %retval.0, !dbg !456
}

; Function Attrs: nounwind uwtable
define dso_local %struct.line_map* @linemap_lookup(%struct.line_maps* %set, i32 %line) local_unnamed_addr #2 !dbg !457 {
entry:
  call void @llvm.dbg.value(metadata %struct.line_maps* %set, metadata !461, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %line, metadata !462, metadata !DIExpression()), !dbg !467
  %cache = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 3, !dbg !468
  %0 = load i32, i32* %cache, align 8, !dbg !468
  call void @llvm.dbg.value(metadata i32 %0, metadata !464, metadata !DIExpression()), !dbg !467
  %used = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 2, !dbg !469
  %1 = load i32, i32* %used, align 4, !dbg !469
  call void @llvm.dbg.value(metadata i32 %1, metadata !465, metadata !DIExpression()), !dbg !467
  %maps = getelementptr inbounds %struct.line_maps, %struct.line_maps* %set, i64 0, i32 0, !dbg !470
  %2 = load %struct.line_map*, %struct.line_map** %maps, align 8, !dbg !470
  %idxprom = zext i32 %0 to i64, !dbg !471
  %arrayidx = getelementptr inbounds %struct.line_map, %struct.line_map* %2, i64 %idxprom, !dbg !471
  call void @llvm.dbg.value(metadata %struct.line_map* %arrayidx, metadata !466, metadata !DIExpression()), !dbg !467
  %start_location = getelementptr inbounds %struct.line_map, %struct.line_map* %2, i64 %idxprom, i32 2, !dbg !472
  %3 = load i32, i32* %start_location, align 4, !dbg !472
  %cmp = icmp ugt i32 %3, %line, !dbg !474
  br i1 %cmp, label %if.end6, label %if.then, !dbg !475

if.then:                                          ; preds = %entry
  %add = add i32 %0, 1, !dbg !476
  %cmp1 = icmp eq i32 %add, %1, !dbg !479
  br i1 %cmp1, label %cleanup, label %lor.lhs.false, !dbg !480

lor.lhs.false:                                    ; preds = %if.then
  %arrayidx2 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx, i64 1, !dbg !481
  %start_location3 = getelementptr inbounds %struct.line_map, %struct.line_map* %arrayidx2, i64 0, i32 2, !dbg !482
  %4 = load i32, i32* %start_location3, align 4, !dbg !482
  %cmp4 = icmp ugt i32 %4, %line, !dbg !483
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !484

if.end6:                                          ; preds = %entry, %lor.lhs.false
  %mn.0 = phi i32 [ %0, %lor.lhs.false ], [ 0, %entry ], !dbg !467
  %mx.0 = phi i32 [ %1, %lor.lhs.false ], [ %0, %entry ], !dbg !467
  call void @llvm.dbg.value(metadata i32 %mx.0, metadata !465, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %mn.0, metadata !464, metadata !DIExpression()), !dbg !467
  br label %while.cond, !dbg !485

while.cond:                                       ; preds = %while.body, %if.end6
  %mn.1 = phi i32 [ %mn.0, %if.end6 ], [ %mn.1.div, %while.body ], !dbg !486
  %mx.1 = phi i32 [ %mx.0, %if.end6 ], [ %div.mx.1, %while.body ], !dbg !467
  call void @llvm.dbg.value(metadata i32 %mx.1, metadata !465, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %mn.1, metadata !464, metadata !DIExpression()), !dbg !467
  %sub = sub i32 %mx.1, %mn.1, !dbg !487
  %cmp7 = icmp ugt i32 %sub, 1, !dbg !488
  br i1 %cmp7, label %while.body, label %while.end, !dbg !485

while.body:                                       ; preds = %while.cond
  %add8 = add i32 %mn.1, %mx.1, !dbg !489
  %div = lshr i32 %add8, 1, !dbg !491
  call void @llvm.dbg.value(metadata i32 %div, metadata !463, metadata !DIExpression()), !dbg !467
  %idxprom10 = zext i32 %div to i64, !dbg !492
  %start_location12 = getelementptr inbounds %struct.line_map, %struct.line_map* %2, i64 %idxprom10, i32 2, !dbg !494
  %5 = load i32, i32* %start_location12, align 4, !dbg !494
  %cmp13 = icmp ugt i32 %5, %line, !dbg !495
  %mn.1.div = select i1 %cmp13, i32 %mn.1, i32 %div
  %div.mx.1 = select i1 %cmp13, i32 %div, i32 %mx.1
  call void @llvm.dbg.value(metadata i32 %div.mx.1, metadata !465, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %mn.1.div, metadata !464, metadata !DIExpression()), !dbg !467
  br label %while.cond, !dbg !485, !llvm.loop !496

while.end:                                        ; preds = %while.cond
  %mn.1.lcssa = phi i32 [ %mn.1, %while.cond ], !dbg !486
  call void @llvm.dbg.value(metadata i32 %mn.1.lcssa, metadata !464, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %mn.1.lcssa, metadata !464, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %mn.1.lcssa, metadata !464, metadata !DIExpression()), !dbg !467
  store i32 %mn.1.lcssa, i32* %cache, align 8, !dbg !498
  %idxprom19 = zext i32 %mn.1.lcssa to i64, !dbg !499
  %arrayidx20 = getelementptr inbounds %struct.line_map, %struct.line_map* %2, i64 %idxprom19, !dbg !499
  br label %cleanup, !dbg !500

cleanup:                                          ; preds = %if.then, %lor.lhs.false, %while.end
  %retval.0 = phi %struct.line_map* [ %arrayidx20, %while.end ], [ %arrayidx, %lor.lhs.false ], [ %arrayidx, %if.then ], !dbg !467
  ret %struct.line_map* %retval.0, !dbg !501
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }
attributes #9 = { nobuiltin noreturn nounwind }
attributes #10 = { nobuiltin nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, nameTableKind: None)
!1 = !DIFile(filename: "cpp_line-map.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lc_reason", file: !4, line: 36, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "LC_ENTER", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "LC_LEAVE", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "LC_RENAME", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "LC_RENAME_VERBATIM", value: 3, isUnsigned: true)
!11 = !{!12, !29, !24}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !4, line: 61, size: 192, elements: !14)
!14 = !{!15, !19, !21, !23, !25, !26, !28}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !13, file: !4, line: 62, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !13, file: !4, line: 63, baseType: !20, size: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !4, line: 39, baseType: !5)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !13, file: !4, line: 64, baseType: !22, size: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !4, line: 44, baseType: !5)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !13, file: !4, line: 65, baseType: !24, size: 32, offset: 128)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !13, file: !4, line: 66, baseType: !5, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !13, file: !4, line: 68, baseType: !27, size: 8, offset: 168)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !13, file: !4, line: 70, baseType: !5, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !{i32 2, !"Dwarf Version", i32 4}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!34 = distinct !DISubprogram(name: "tolower", scope: !35, file: !35, line: 207, type: !36, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !38)
!35 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!36 = !DISubroutineType(types: !37)
!37 = !{!24, !24}
!38 = !{!39}
!39 = !DILocalVariable(name: "__c", arg: 1, scope: !34, file: !35, line: 207, type: !24)
!40 = !DILocation(line: 0, scope: !34)
!41 = !DILocation(line: 209, column: 22, scope: !34)
!42 = !DILocation(line: 209, column: 39, scope: !34)
!43 = !DILocation(line: 209, column: 38, scope: !34)
!44 = !DILocation(line: 209, column: 37, scope: !34)
!45 = !DILocation(line: 209, column: 10, scope: !34)
!46 = !DILocation(line: 209, column: 3, scope: !34)
!47 = distinct !DISubprogram(name: "toupper", scope: !35, file: !35, line: 213, type: !36, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !48)
!48 = !{!49}
!49 = !DILocalVariable(name: "__c", arg: 1, scope: !47, file: !35, line: 213, type: !24)
!50 = !DILocation(line: 0, scope: !47)
!51 = !DILocation(line: 215, column: 22, scope: !47)
!52 = !DILocation(line: 215, column: 39, scope: !47)
!53 = !DILocation(line: 215, column: 38, scope: !47)
!54 = !DILocation(line: 215, column: 37, scope: !47)
!55 = !DILocation(line: 215, column: 10, scope: !47)
!56 = !DILocation(line: 215, column: 3, scope: !47)
!57 = distinct !DISubprogram(name: "linemap_init", scope: !1, file: !1, line: 33, type: !58, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !4, line: 74, size: 448, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !61, file: !4, line: 75, baseType: !12, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !61, file: !4, line: 76, baseType: !5, size: 32, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !61, file: !4, line: 77, baseType: !5, size: 32, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !61, file: !4, line: 79, baseType: !5, size: 32, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !61, file: !4, line: 84, baseType: !24, size: 32, offset: 160)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !61, file: !4, line: 87, baseType: !5, size: 32, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !61, file: !4, line: 90, baseType: !27, size: 8, offset: 224)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !61, file: !4, line: 93, baseType: !22, size: 32, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !61, file: !4, line: 96, baseType: !22, size: 32, offset: 288)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !61, file: !4, line: 100, baseType: !5, size: 32, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !61, file: !4, line: 104, baseType: !74, size: 64, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !4, line: 47, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!29, !29, !78}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !79, line: 46, baseType: !80)
!79 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!80 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!81 = !{!82}
!82 = !DILocalVariable(name: "set", arg: 1, scope: !57, file: !1, line: 33, type: !60)
!83 = !DILocation(line: 0, scope: !57)
!84 = !DILocation(line: 35, column: 8, scope: !57)
!85 = !DILocation(line: 35, column: 13, scope: !57)
!86 = !DILocation(line: 36, column: 8, scope: !57)
!87 = !DILocation(line: 36, column: 18, scope: !57)
!88 = !DILocation(line: 37, column: 8, scope: !57)
!89 = !DILocation(line: 37, column: 13, scope: !57)
!90 = !DILocation(line: 38, column: 8, scope: !57)
!91 = !DILocation(line: 38, column: 20, scope: !57)
!92 = !DILocation(line: 39, column: 8, scope: !57)
!93 = !DILocation(line: 39, column: 23, scope: !57)
!94 = !DILocation(line: 40, column: 8, scope: !57)
!95 = !DILocation(line: 40, column: 14, scope: !57)
!96 = !DILocation(line: 41, column: 8, scope: !57)
!97 = !DILocation(line: 41, column: 14, scope: !57)
!98 = !DILocation(line: 42, column: 8, scope: !57)
!99 = !DILocation(line: 42, column: 25, scope: !57)
!100 = !DILocation(line: 43, column: 8, scope: !57)
!101 = !DILocation(line: 43, column: 21, scope: !57)
!102 = !DILocation(line: 44, column: 8, scope: !57)
!103 = !DILocation(line: 44, column: 24, scope: !57)
!104 = !DILocation(line: 45, column: 8, scope: !57)
!105 = !DILocation(line: 45, column: 20, scope: !57)
!106 = !DILocation(line: 46, column: 1, scope: !57)
!107 = distinct !DISubprogram(name: "linemap_check_files_exited", scope: !1, file: !1, line: 51, type: !58, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !108)
!108 = !{!109, !110}
!109 = !DILocalVariable(name: "set", arg: 1, scope: !107, file: !1, line: 51, type: !60)
!110 = !DILocalVariable(name: "map", scope: !107, file: !1, line: 53, type: !12)
!111 = !DILocation(line: 0, scope: !107)
!112 = !DILocation(line: 56, column: 20, scope: !113)
!113 = distinct !DILexicalBlock(scope: !107, file: !1, line: 56, column: 3)
!114 = !DILocation(line: 56, column: 30, scope: !113)
!115 = !DILocation(line: 56, column: 35, scope: !113)
!116 = !DILocation(line: 56, column: 15, scope: !113)
!117 = !DILocation(line: 56, column: 8, scope: !113)
!118 = !DILocation(line: 0, scope: !113)
!119 = !DILocation(line: 56, column: 43, scope: !120)
!120 = distinct !DILexicalBlock(scope: !113, file: !1, line: 56, column: 3)
!121 = !DILocation(line: 56, column: 3, scope: !113)
!122 = !DILocation(line: 58, column: 14, scope: !120)
!123 = !DILocation(line: 59, column: 12, scope: !120)
!124 = !DILocation(line: 58, column: 5, scope: !120)
!125 = !DILocation(line: 57, column: 14, scope: !120)
!126 = !DILocation(line: 56, column: 3, scope: !120)
!127 = distinct !{!127, !121, !128}
!128 = !DILocation(line: 59, column: 19, scope: !113)
!129 = !DILocation(line: 60, column: 1, scope: !107)
!130 = distinct !DISubprogram(name: "linemap_free", scope: !1, file: !1, line: 65, type: !58, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!131 = !{!132}
!132 = !DILocalVariable(name: "set", arg: 1, scope: !130, file: !1, line: 65, type: !60)
!133 = !DILocation(line: 0, scope: !130)
!134 = !DILocation(line: 67, column: 12, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !1, line: 67, column: 7)
!136 = !DILocation(line: 67, column: 7, scope: !135)
!137 = !DILocation(line: 67, column: 7, scope: !130)
!138 = !DILocation(line: 69, column: 7, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !1, line: 68, column: 5)
!140 = !DILocation(line: 71, column: 18, scope: !139)
!141 = !DILocation(line: 71, column: 7, scope: !139)
!142 = !DILocation(line: 72, column: 5, scope: !139)
!143 = !DILocation(line: 73, column: 1, scope: !130)
!144 = distinct !DISubprogram(name: "linemap_add", scope: !1, file: !1, line: 89, type: !145, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !149)
!145 = !DISubroutineType(types: !146)
!146 = !{!147, !60, !3, !5, !16, !20}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !160, !164}
!150 = !DILocalVariable(name: "set", arg: 1, scope: !144, file: !1, line: 89, type: !60)
!151 = !DILocalVariable(name: "reason", arg: 2, scope: !144, file: !1, line: 89, type: !3)
!152 = !DILocalVariable(name: "sysp", arg: 3, scope: !144, file: !1, line: 90, type: !5)
!153 = !DILocalVariable(name: "to_file", arg: 4, scope: !144, file: !1, line: 90, type: !16)
!154 = !DILocalVariable(name: "to_line", arg: 5, scope: !144, file: !1, line: 90, type: !20)
!155 = !DILocalVariable(name: "map", scope: !144, file: !1, line: 92, type: !12)
!156 = !DILocalVariable(name: "start_location", scope: !144, file: !1, line: 93, type: !22)
!157 = !DILocalVariable(name: "reallocator", scope: !158, file: !1, line: 100, type: !74)
!158 = distinct !DILexicalBlock(scope: !159, file: !1, line: 99, column: 5)
!159 = distinct !DILexicalBlock(scope: !144, file: !1, line: 98, column: 7)
!160 = !DILocalVariable(name: "from", scope: !161, file: !1, line: 125, type: !12)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 124, column: 5)
!162 = distinct !DILexicalBlock(scope: !163, file: !1, line: 123, column: 12)
!163 = distinct !DILexicalBlock(scope: !144, file: !1, line: 121, column: 7)
!164 = !DILocalVariable(name: "error", scope: !161, file: !1, line: 126, type: !27)
!165 = !DILocation(line: 0, scope: !144)
!166 = !DILocation(line: 93, column: 41, scope: !144)
!167 = !DILocation(line: 93, column: 58, scope: !144)
!168 = !DILocation(line: 95, column: 12, scope: !169)
!169 = distinct !DILexicalBlock(scope: !144, file: !1, line: 95, column: 7)
!170 = !DILocation(line: 95, column: 7, scope: !169)
!171 = !DILocation(line: 95, column: 17, scope: !169)
!172 = !DILocation(line: 95, column: 42, scope: !169)
!173 = !DILocation(line: 95, column: 57, scope: !169)
!174 = !DILocation(line: 95, column: 37, scope: !169)
!175 = !DILocation(line: 95, column: 62, scope: !169)
!176 = !DILocation(line: 95, column: 35, scope: !169)
!177 = !DILocation(line: 95, column: 7, scope: !144)
!178 = !DILocation(line: 96, column: 5, scope: !169)
!179 = !DILocation(line: 98, column: 25, scope: !159)
!180 = !DILocation(line: 98, column: 17, scope: !159)
!181 = !DILocation(line: 98, column: 7, scope: !144)
!182 = !DILocation(line: 101, column: 9, scope: !158)
!183 = !DILocation(line: 101, column: 4, scope: !158)
!184 = !DILocation(line: 0, scope: !158)
!185 = !DILocation(line: 102, column: 26, scope: !158)
!186 = !DILocation(line: 102, column: 43, scope: !158)
!187 = !DILocation(line: 102, column: 22, scope: !158)
!188 = !DILocation(line: 104, column: 45, scope: !158)
!189 = !DILocation(line: 105, column: 12, scope: !158)
!190 = !DILocation(line: 106, column: 12, scope: !158)
!191 = !DILocation(line: 104, column: 24, scope: !158)
!192 = !DILocation(line: 104, column: 2, scope: !158)
!193 = !DILocation(line: 107, column: 21, scope: !158)
!194 = !DILocation(line: 107, column: 31, scope: !158)
!195 = !DILocation(line: 107, column: 16, scope: !158)
!196 = !DILocation(line: 107, column: 15, scope: !158)
!197 = !DILocation(line: 107, column: 48, scope: !158)
!198 = !DILocation(line: 107, column: 58, scope: !158)
!199 = !DILocation(line: 107, column: 42, scope: !158)
!200 = !DILocation(line: 108, column: 7, scope: !158)
!201 = !DILocation(line: 107, column: 7, scope: !158)
!202 = !DILocation(line: 111, column: 25, scope: !144)
!203 = !DILocation(line: 109, column: 5, scope: !158)
!204 = !DILocation(line: 111, column: 15, scope: !144)
!205 = !DILocation(line: 111, column: 10, scope: !144)
!206 = !DILocation(line: 113, column: 7, scope: !207)
!207 = distinct !DILexicalBlock(scope: !144, file: !1, line: 113, column: 7)
!208 = !DILocation(line: 113, column: 15, scope: !207)
!209 = !DILocation(line: 113, column: 18, scope: !207)
!210 = !DILocation(line: 113, column: 27, scope: !207)
!211 = !DILocation(line: 113, column: 45, scope: !207)
!212 = !DILocation(line: 113, column: 35, scope: !207)
!213 = !DILocation(line: 116, column: 14, scope: !214)
!214 = distinct !DILexicalBlock(scope: !144, file: !1, line: 116, column: 7)
!215 = !DILocation(line: 116, column: 7, scope: !144)
!216 = !DILocation(line: 121, column: 12, scope: !163)
!217 = !DILocation(line: 121, column: 18, scope: !163)
!218 = !DILocation(line: 121, column: 7, scope: !144)
!219 = !DILocation(line: 123, column: 19, scope: !162)
!220 = !DILocation(line: 123, column: 12, scope: !163)
!221 = !DILocation(line: 128, column: 11, scope: !222)
!222 = distinct !DILexicalBlock(scope: !161, file: !1, line: 128, column: 11)
!223 = !DILocation(line: 128, column: 11, scope: !161)
!224 = !DILocation(line: 130, column: 16, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 130, column: 8)
!226 = distinct !DILexicalBlock(scope: !222, file: !1, line: 129, column: 2)
!227 = !DILocation(line: 130, column: 8, scope: !226)
!228 = !DILocation(line: 132, column: 18, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !1, line: 131, column: 6)
!230 = !DILocation(line: 133, column: 8, scope: !229)
!231 = !DILocation(line: 0, scope: !161)
!232 = !DILocation(line: 138, column: 2, scope: !226)
!233 = !DILocation(line: 141, column: 11, scope: !234)
!234 = distinct !DILexicalBlock(scope: !222, file: !1, line: 140, column: 2)
!235 = !DILocation(line: 142, column: 12, scope: !234)
!236 = !DILocation(line: 142, column: 20, scope: !234)
!237 = !DILocation(line: 142, column: 37, scope: !234)
!238 = !DILocation(line: 142, column: 23, scope: !234)
!239 = !DILocation(line: 0, scope: !222)
!240 = !DILocation(line: 147, column: 11, scope: !241)
!241 = distinct !DILexicalBlock(scope: !161, file: !1, line: 147, column: 11)
!242 = !DILocation(line: 147, column: 11, scope: !161)
!243 = !DILocation(line: 148, column: 11, scope: !241)
!244 = !DILocation(line: 148, column: 2, scope: !241)
!245 = !DILocation(line: 152, column: 11, scope: !246)
!246 = distinct !DILexicalBlock(scope: !161, file: !1, line: 152, column: 11)
!247 = !DILocation(line: 152, column: 28, scope: !246)
!248 = !DILocation(line: 152, column: 17, scope: !246)
!249 = !DILocation(line: 154, column: 20, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !1, line: 153, column: 2)
!251 = !DILocation(line: 155, column: 14, scope: !250)
!252 = !DILocation(line: 156, column: 17, scope: !250)
!253 = !DILocation(line: 156, column: 11, scope: !250)
!254 = !DILocation(line: 157, column: 2, scope: !250)
!255 = !DILocation(line: 114, column: 13, scope: !207)
!256 = !DILocation(line: 160, column: 8, scope: !144)
!257 = !DILocation(line: 160, column: 15, scope: !144)
!258 = !DILocation(line: 161, column: 15, scope: !144)
!259 = !DILocation(line: 161, column: 8, scope: !144)
!260 = !DILocation(line: 161, column: 13, scope: !144)
!261 = !DILocation(line: 162, column: 8, scope: !144)
!262 = !DILocation(line: 162, column: 23, scope: !144)
!263 = !DILocation(line: 163, column: 8, scope: !144)
!264 = !DILocation(line: 163, column: 16, scope: !144)
!265 = !DILocation(line: 164, column: 8, scope: !144)
!266 = !DILocation(line: 164, column: 16, scope: !144)
!267 = !DILocation(line: 165, column: 25, scope: !144)
!268 = !DILocation(line: 165, column: 8, scope: !144)
!269 = !DILocation(line: 165, column: 14, scope: !144)
!270 = !DILocation(line: 166, column: 8, scope: !144)
!271 = !DILocation(line: 166, column: 20, scope: !144)
!272 = !DILocation(line: 167, column: 25, scope: !144)
!273 = !DILocation(line: 168, column: 8, scope: !144)
!274 = !DILocation(line: 168, column: 21, scope: !144)
!275 = !DILocation(line: 169, column: 8, scope: !144)
!276 = !DILocation(line: 169, column: 24, scope: !144)
!277 = !DILocation(line: 171, column: 7, scope: !144)
!278 = !DILocation(line: 173, column: 33, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 172, column: 5)
!280 = distinct !DILexicalBlock(scope: !144, file: !1, line: 171, column: 7)
!281 = !DILocation(line: 173, column: 39, scope: !279)
!282 = !DILocation(line: 173, column: 28, scope: !279)
!283 = !DILocation(line: 173, column: 63, scope: !279)
!284 = !DILocation(line: 173, column: 68, scope: !279)
!285 = !DILocation(line: 173, column: 12, scope: !279)
!286 = !DILocation(line: 173, column: 26, scope: !279)
!287 = !DILocation(line: 174, column: 17, scope: !279)
!288 = !DILocation(line: 175, column: 16, scope: !289)
!289 = distinct !DILexicalBlock(scope: !279, file: !1, line: 175, column: 11)
!290 = !DILocation(line: 175, column: 11, scope: !289)
!291 = !DILocation(line: 175, column: 11, scope: !279)
!292 = !DILocation(line: 176, column: 2, scope: !289)
!293 = !DILocation(line: 179, column: 26, scope: !294)
!294 = distinct !DILexicalBlock(scope: !280, file: !1, line: 178, column: 12)
!295 = !DILocation(line: 179, column: 34, scope: !294)
!296 = !DILocation(line: 179, column: 10, scope: !294)
!297 = !DILocation(line: 179, column: 24, scope: !294)
!298 = !DILocation(line: 179, column: 5, scope: !294)
!299 = !DILocation(line: 182, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 181, column: 5)
!301 = distinct !DILexicalBlock(scope: !294, file: !1, line: 180, column: 12)
!302 = !DILocation(line: 183, column: 28, scope: !300)
!303 = !DILocation(line: 183, column: 58, scope: !300)
!304 = !DILocation(line: 183, column: 12, scope: !300)
!305 = !DILocation(line: 183, column: 26, scope: !300)
!306 = !DILocation(line: 184, column: 5, scope: !300)
!307 = !DILocation(line: 187, column: 1, scope: !144)
!308 = distinct !DISubprogram(name: "trace_include", scope: !1, file: !1, line: 313, type: !309, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !313)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !311, !147}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!313 = !{!314, !315, !316}
!314 = !DILocalVariable(name: "set", arg: 1, scope: !308, file: !1, line: 313, type: !311)
!315 = !DILocalVariable(name: "map", arg: 2, scope: !308, file: !1, line: 313, type: !147)
!316 = !DILocalVariable(name: "i", scope: !308, file: !1, line: 315, type: !5)
!317 = !DILocation(line: 0, scope: !308)
!318 = !DILocation(line: 315, column: 25, scope: !308)
!319 = !DILocation(line: 317, column: 3, scope: !308)
!320 = !DILocation(line: 317, column: 10, scope: !308)
!321 = !DILocation(line: 318, column: 5, scope: !308)
!322 = distinct !{!322, !319, !323}
!323 = !DILocation(line: 318, column: 22, scope: !308)
!324 = !DILocation(line: 319, column: 34, scope: !308)
!325 = !DILocation(line: 319, column: 3, scope: !308)
!326 = !DILocation(line: 320, column: 1, scope: !308)
!327 = distinct !DISubprogram(name: "linemap_line_start", scope: !1, file: !1, line: 190, type: !328, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !330)
!328 = !DISubroutineType(types: !329)
!329 = !{!22, !60, !20, !5}
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !340}
!331 = !DILocalVariable(name: "set", arg: 1, scope: !327, file: !1, line: 190, type: !60)
!332 = !DILocalVariable(name: "to_line", arg: 2, scope: !327, file: !1, line: 190, type: !20)
!333 = !DILocalVariable(name: "max_column_hint", arg: 3, scope: !327, file: !1, line: 191, type: !5)
!334 = !DILocalVariable(name: "map", scope: !327, file: !1, line: 193, type: !12)
!335 = !DILocalVariable(name: "highest", scope: !327, file: !1, line: 194, type: !22)
!336 = !DILocalVariable(name: "r", scope: !327, file: !1, line: 195, type: !22)
!337 = !DILocalVariable(name: "last_line", scope: !327, file: !1, line: 196, type: !20)
!338 = !DILocalVariable(name: "line_delta", scope: !327, file: !1, line: 197, type: !24)
!339 = !DILocalVariable(name: "add_map", scope: !327, file: !1, line: 198, type: !27)
!340 = !DILocalVariable(name: "column_bits", scope: !341, file: !1, line: 210, type: !24)
!341 = distinct !DILexicalBlock(scope: !342, file: !1, line: 209, column: 5)
!342 = distinct !DILexicalBlock(scope: !327, file: !1, line: 208, column: 7)
!343 = !DILocation(line: 0, scope: !327)
!344 = !DILocation(line: 193, column: 32, scope: !327)
!345 = !DILocation(line: 193, column: 42, scope: !327)
!346 = !DILocation(line: 193, column: 47, scope: !327)
!347 = !DILocation(line: 193, column: 27, scope: !327)
!348 = !DILocation(line: 194, column: 34, scope: !327)
!349 = !DILocation(line: 196, column: 28, scope: !327)
!350 = !DILocation(line: 197, column: 28, scope: !327)
!351 = !DILocation(line: 199, column: 18, scope: !352)
!352 = distinct !DILexicalBlock(scope: !327, file: !1, line: 199, column: 7)
!353 = !DILocation(line: 200, column: 7, scope: !352)
!354 = !DILocation(line: 200, column: 22, scope: !352)
!355 = !DILocation(line: 200, column: 27, scope: !352)
!356 = !DILocation(line: 200, column: 41, scope: !352)
!357 = !DILocation(line: 200, column: 60, scope: !352)
!358 = !DILocation(line: 201, column: 7, scope: !352)
!359 = !DILocation(line: 201, column: 27, scope: !352)
!360 = !DILocation(line: 202, column: 7, scope: !352)
!361 = !DILocation(line: 202, column: 27, scope: !352)
!362 = !DILocation(line: 202, column: 33, scope: !352)
!363 = !DILocation(line: 202, column: 53, scope: !352)
!364 = !DILocation(line: 199, column: 7, scope: !327)
!365 = !DILocation(line: 207, column: 28, scope: !352)
!366 = !DILocation(line: 208, column: 7, scope: !327)
!367 = !DILocation(line: 211, column: 27, scope: !368)
!368 = distinct !DILexicalBlock(scope: !341, file: !1, line: 211, column: 11)
!369 = !DILocation(line: 211, column: 47, scope: !368)
!370 = !DILocation(line: 211, column: 36, scope: !368)
!371 = !DILocation(line: 223, column: 4, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !1, line: 221, column: 2)
!373 = !DILocation(line: 216, column: 16, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !1, line: 216, column: 8)
!375 = distinct !DILexicalBlock(scope: !368, file: !1, line: 212, column: 2)
!376 = !DILocation(line: 216, column: 8, scope: !375)
!377 = !DILocation(line: 0, scope: !372)
!378 = !DILocation(line: 0, scope: !341)
!379 = !DILocation(line: 223, column: 27, scope: !372)
!380 = !DILocation(line: 224, column: 17, scope: !372)
!381 = distinct !{!381, !371, !380}
!382 = !DILocation(line: 225, column: 25, scope: !372)
!383 = !DILocation(line: 0, scope: !368)
!384 = !DILocation(line: 230, column: 4, scope: !385)
!385 = distinct !DILexicalBlock(scope: !341, file: !1, line: 229, column: 11)
!386 = !DILocation(line: 230, column: 17, scope: !385)
!387 = !DILocation(line: 231, column: 4, scope: !385)
!388 = !DILocation(line: 231, column: 7, scope: !385)
!389 = !DILocation(line: 231, column: 36, scope: !385)
!390 = !DILocation(line: 229, column: 11, scope: !341)
!391 = !DILocation(line: 232, column: 62, scope: !385)
!392 = !DILocation(line: 232, column: 57, scope: !385)
!393 = !DILocation(line: 233, column: 18, scope: !385)
!394 = !DILocation(line: 232, column: 28, scope: !385)
!395 = !DILocation(line: 232, column: 2, scope: !385)
!396 = !DILocation(line: 234, column: 12, scope: !341)
!397 = !DILocation(line: 234, column: 24, scope: !341)
!398 = !DILocation(line: 235, column: 16, scope: !341)
!399 = !DILocation(line: 235, column: 50, scope: !341)
!400 = !DILocation(line: 235, column: 43, scope: !341)
!401 = !DILocation(line: 235, column: 59, scope: !341)
!402 = !DILocation(line: 235, column: 31, scope: !341)
!403 = !DILocation(line: 236, column: 5, scope: !342)
!404 = !DILocation(line: 215, column: 20, scope: !375)
!405 = !DILocation(line: 241, column: 16, scope: !406)
!406 = distinct !DILexicalBlock(scope: !327, file: !1, line: 241, column: 7)
!407 = !DILocation(line: 238, column: 19, scope: !342)
!408 = !DILocation(line: 238, column: 17, scope: !342)
!409 = !DILocation(line: 239, column: 21, scope: !342)
!410 = !DILocation(line: 239, column: 7, scope: !342)
!411 = !DILocation(line: 240, column: 21, scope: !327)
!412 = !DILocation(line: 241, column: 9, scope: !406)
!413 = !DILocation(line: 241, column: 7, scope: !327)
!414 = !DILocation(line: 242, column: 27, scope: !406)
!415 = !DILocation(line: 242, column: 5, scope: !406)
!416 = !DILocation(line: 243, column: 8, scope: !327)
!417 = !DILocation(line: 243, column: 24, scope: !327)
!418 = !DILocation(line: 244, column: 3, scope: !327)
!419 = !DILocation(line: 245, column: 1, scope: !327)
!420 = distinct !DISubprogram(name: "linemap_position_for_column", scope: !1, file: !1, line: 248, type: !421, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !423)
!421 = !DISubroutineType(types: !422)
!422 = !{!22, !60, !5}
!423 = !{!424, !425, !426, !427}
!424 = !DILocalVariable(name: "set", arg: 1, scope: !420, file: !1, line: 248, type: !60)
!425 = !DILocalVariable(name: "to_column", arg: 2, scope: !420, file: !1, line: 248, type: !5)
!426 = !DILocalVariable(name: "r", scope: !420, file: !1, line: 250, type: !22)
!427 = !DILocalVariable(name: "map", scope: !428, file: !1, line: 260, type: !12)
!428 = distinct !DILexicalBlock(scope: !429, file: !1, line: 259, column: 2)
!429 = distinct !DILexicalBlock(scope: !430, file: !1, line: 253, column: 11)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 252, column: 5)
!431 = distinct !DILexicalBlock(scope: !420, file: !1, line: 251, column: 7)
!432 = !DILocation(line: 0, scope: !420)
!433 = !DILocation(line: 250, column: 28, scope: !420)
!434 = !DILocation(line: 251, column: 25, scope: !431)
!435 = !DILocation(line: 251, column: 17, scope: !431)
!436 = !DILocation(line: 251, column: 7, scope: !420)
!437 = !DILocation(line: 253, column: 13, scope: !429)
!438 = !DILocation(line: 253, column: 39, scope: !429)
!439 = !DILocation(line: 253, column: 26, scope: !429)
!440 = !DILocation(line: 260, column: 33, scope: !428)
!441 = !DILocation(line: 260, column: 43, scope: !428)
!442 = !DILocation(line: 260, column: 48, scope: !428)
!443 = !DILocation(line: 260, column: 28, scope: !428)
!444 = !DILocation(line: 0, scope: !428)
!445 = !DILocation(line: 261, column: 33, scope: !428)
!446 = !DILocation(line: 261, column: 65, scope: !428)
!447 = !DILocation(line: 261, column: 8, scope: !428)
!448 = !DILocation(line: 263, column: 5, scope: !430)
!449 = !DILocation(line: 264, column: 9, scope: !420)
!450 = !DILocation(line: 265, column: 17, scope: !451)
!451 = distinct !DILexicalBlock(scope: !420, file: !1, line: 265, column: 7)
!452 = !DILocation(line: 265, column: 9, scope: !451)
!453 = !DILocation(line: 265, column: 7, scope: !420)
!454 = !DILocation(line: 266, column: 27, scope: !451)
!455 = !DILocation(line: 266, column: 5, scope: !451)
!456 = !DILocation(line: 268, column: 1, scope: !420)
!457 = distinct !DISubprogram(name: "linemap_lookup", scope: !1, file: !1, line: 276, type: !458, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !460)
!458 = !DISubroutineType(types: !459)
!459 = !{!147, !60, !22}
!460 = !{!461, !462, !463, !464, !465, !466}
!461 = !DILocalVariable(name: "set", arg: 1, scope: !457, file: !1, line: 276, type: !60)
!462 = !DILocalVariable(name: "line", arg: 2, scope: !457, file: !1, line: 276, type: !22)
!463 = !DILocalVariable(name: "md", scope: !457, file: !1, line: 278, type: !5)
!464 = !DILocalVariable(name: "mn", scope: !457, file: !1, line: 278, type: !5)
!465 = !DILocalVariable(name: "mx", scope: !457, file: !1, line: 278, type: !5)
!466 = !DILocalVariable(name: "cached", scope: !457, file: !1, line: 279, type: !147)
!467 = !DILocation(line: 0, scope: !457)
!468 = !DILocation(line: 281, column: 13, scope: !457)
!469 = !DILocation(line: 282, column: 13, scope: !457)
!470 = !DILocation(line: 284, column: 18, scope: !457)
!471 = !DILocation(line: 284, column: 13, scope: !457)
!472 = !DILocation(line: 286, column: 23, scope: !473)
!473 = distinct !DILexicalBlock(scope: !457, file: !1, line: 286, column: 7)
!474 = !DILocation(line: 286, column: 12, scope: !473)
!475 = !DILocation(line: 286, column: 7, scope: !457)
!476 = !DILocation(line: 288, column: 14, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !1, line: 288, column: 11)
!478 = distinct !DILexicalBlock(scope: !473, file: !1, line: 287, column: 5)
!479 = !DILocation(line: 288, column: 18, scope: !477)
!480 = !DILocation(line: 288, column: 24, scope: !477)
!481 = !DILocation(line: 288, column: 34, scope: !477)
!482 = !DILocation(line: 288, column: 44, scope: !477)
!483 = !DILocation(line: 288, column: 32, scope: !477)
!484 = !DILocation(line: 288, column: 11, scope: !478)
!485 = !DILocation(line: 297, column: 3, scope: !457)
!486 = !DILocation(line: 281, column: 6, scope: !457)
!487 = !DILocation(line: 297, column: 13, scope: !457)
!488 = !DILocation(line: 297, column: 18, scope: !457)
!489 = !DILocation(line: 299, column: 16, scope: !490)
!490 = distinct !DILexicalBlock(scope: !457, file: !1, line: 298, column: 5)
!491 = !DILocation(line: 299, column: 22, scope: !490)
!492 = !DILocation(line: 300, column: 11, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !1, line: 300, column: 11)
!494 = !DILocation(line: 300, column: 25, scope: !493)
!495 = !DILocation(line: 300, column: 40, scope: !493)
!496 = distinct !{!496, !485, !497}
!497 = !DILocation(line: 304, column: 5, scope: !457)
!498 = !DILocation(line: 306, column: 14, scope: !457)
!499 = !DILocation(line: 307, column: 11, scope: !457)
!500 = !DILocation(line: 307, column: 3, scope: !457)
!501 = !DILocation(line: 308, column: 1, scope: !457)
