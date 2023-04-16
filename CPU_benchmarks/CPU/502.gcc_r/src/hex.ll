; ModuleID = 'hex.bc'
source_filename = "hex.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_hex_value = dso_local local_unnamed_addr constant [256 x i8] c"cccccccccccccccccccccccccccccccccccccccccccccccc\00\01\02\03\04\05\06\07\08\09ccccccc\0A\0B\0C\0D\0E\0Fcccccccccccccccccccccccccc\0A\0B\0C\0D\0E\0Fccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc", align 16, !dbg !0

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !15 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !21, metadata !DIExpression()), !dbg !22
  %__c.off = add i32 %__c, 128, !dbg !23
  %0 = icmp ult i32 %__c.off, 384, !dbg !23
  br i1 %0, label %cond.true, label %cond.end, !dbg !23

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #4, !dbg !24
  %1 = load i32*, i32** %call, align 8, !dbg !25
  %idxprom = sext i32 %__c to i64, !dbg !26
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !26
  %2 = load i32, i32* %arrayidx, align 4, !dbg !26
  br label %cond.end, !dbg !27

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !27
  ret i32 %cond, !dbg !28
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !29 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !31, metadata !DIExpression()), !dbg !32
  %__c.off = add i32 %__c, 128, !dbg !33
  %0 = icmp ult i32 %__c.off, 384, !dbg !33
  br i1 %0, label %cond.true, label %cond.end, !dbg !33

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #4, !dbg !34
  %1 = load i32*, i32** %call, align 8, !dbg !35
  %idxprom = sext i32 %__c to i64, !dbg !36
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !36
  %2 = load i32, i32* %arrayidx, align 4, !dbg !36
  br label %cond.end, !dbg !37

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !37
  ret i32 %cond, !dbg !38
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @hex_init() local_unnamed_addr #2 !dbg !39 {
entry:
  ret void, !dbg !42
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_hex_value", scope: !2, file: !3, line: 75, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "hex.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !9)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !{!10}
!10 = !DISubrange(count: 256)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!15 = distinct !DISubprogram(name: "tolower", scope: !16, file: !16, line: 207, type: !17, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !20)
!16 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21}
!21 = !DILocalVariable(name: "__c", arg: 1, scope: !15, file: !16, line: 207, type: !19)
!22 = !DILocation(line: 0, scope: !15)
!23 = !DILocation(line: 209, column: 22, scope: !15)
!24 = !DILocation(line: 209, column: 39, scope: !15)
!25 = !DILocation(line: 209, column: 38, scope: !15)
!26 = !DILocation(line: 209, column: 37, scope: !15)
!27 = !DILocation(line: 209, column: 10, scope: !15)
!28 = !DILocation(line: 209, column: 3, scope: !15)
!29 = distinct !DISubprogram(name: "toupper", scope: !16, file: !16, line: 213, type: !17, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !30)
!30 = !{!31}
!31 = !DILocalVariable(name: "__c", arg: 1, scope: !29, file: !16, line: 213, type: !19)
!32 = !DILocation(line: 0, scope: !29)
!33 = !DILocation(line: 215, column: 22, scope: !29)
!34 = !DILocation(line: 215, column: 39, scope: !29)
!35 = !DILocation(line: 215, column: 38, scope: !29)
!36 = !DILocation(line: 215, column: 37, scope: !29)
!37 = !DILocation(line: 215, column: 10, scope: !29)
!38 = !DILocation(line: 215, column: 3, scope: !29)
!39 = distinct !DISubprogram(name: "hex_init", scope: !3, file: !3, line: 159, type: !40, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!40 = !DISubroutineType(types: !41)
!41 = !{null}
!42 = !DILocation(line: 192, column: 1, scope: !39)
