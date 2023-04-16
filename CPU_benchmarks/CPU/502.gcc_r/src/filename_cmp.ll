; ModuleID = 'filename_cmp.bc'
source_filename = "filename_cmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !13, metadata !DIExpression()), !dbg !14
  %__c.off = add i32 %__c, 128, !dbg !15
  %0 = icmp ult i32 %__c.off, 384, !dbg !15
  br i1 %0, label %cond.true, label %cond.end, !dbg !15

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #4, !dbg !16
  %1 = load i32*, i32** %call, align 8, !dbg !17
  %idxprom = sext i32 %__c to i64, !dbg !18
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !18
  %2 = load i32, i32* %arrayidx, align 4, !dbg !18
  br label %cond.end, !dbg !19

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !19
  ret i32 %cond, !dbg !20
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !21 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !23, metadata !DIExpression()), !dbg !24
  %__c.off = add i32 %__c, 128, !dbg !25
  %0 = icmp ult i32 %__c.off, 384, !dbg !25
  br i1 %0, label %cond.true, label %cond.end, !dbg !25

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #4, !dbg !26
  %1 = load i32*, i32** %call, align 8, !dbg !27
  %idxprom = sext i32 %__c to i64, !dbg !28
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !28
  %2 = load i32, i32* %arrayidx, align 4, !dbg !28
  br label %cond.end, !dbg !29

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !29
  ret i32 %cond, !dbg !30
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @filename_cmp(i8* %s1, i8* %s2) local_unnamed_addr #2 !dbg !31 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i8* %s2, metadata !39, metadata !DIExpression()), !dbg !40
  %call = tail call i32 @strcmp(i8* %s1, i8* %s2) #4, !dbg !41
  ret i32 %call, !dbg !42
}

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "filename_cmp.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!7 = distinct !DISubprogram(name: "tolower", scope: !8, file: !8, line: 207, type: !9, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "__c", arg: 1, scope: !7, file: !8, line: 207, type: !11)
!14 = !DILocation(line: 0, scope: !7)
!15 = !DILocation(line: 209, column: 22, scope: !7)
!16 = !DILocation(line: 209, column: 39, scope: !7)
!17 = !DILocation(line: 209, column: 38, scope: !7)
!18 = !DILocation(line: 209, column: 37, scope: !7)
!19 = !DILocation(line: 209, column: 10, scope: !7)
!20 = !DILocation(line: 209, column: 3, scope: !7)
!21 = distinct !DISubprogram(name: "toupper", scope: !8, file: !8, line: 213, type: !9, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!22 = !{!23}
!23 = !DILocalVariable(name: "__c", arg: 1, scope: !21, file: !8, line: 213, type: !11)
!24 = !DILocation(line: 0, scope: !21)
!25 = !DILocation(line: 215, column: 22, scope: !21)
!26 = !DILocation(line: 215, column: 39, scope: !21)
!27 = !DILocation(line: 215, column: 38, scope: !21)
!28 = !DILocation(line: 215, column: 37, scope: !21)
!29 = !DILocation(line: 215, column: 10, scope: !21)
!30 = !DILocation(line: 215, column: 3, scope: !21)
!31 = distinct !DISubprogram(name: "filename_cmp", scope: !1, file: !1, line: 51, type: !32, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!32 = !DISubroutineType(types: !33)
!33 = !{!11, !34, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !{!38, !39}
!38 = !DILocalVariable(name: "s1", arg: 1, scope: !31, file: !1, line: 51, type: !34)
!39 = !DILocalVariable(name: "s2", arg: 2, scope: !31, file: !1, line: 51, type: !34)
!40 = !DILocation(line: 0, scope: !31)
!41 = !DILocation(line: 54, column: 10, scope: !31)
!42 = !DILocation(line: 54, column: 3, scope: !31)
