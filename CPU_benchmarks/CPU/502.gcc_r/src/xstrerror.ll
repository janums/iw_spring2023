; ModuleID = 'xstrerror.bc'
source_filename = "xstrerror.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xstrerror_buf = internal global [43 x i8] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c"undocumented error #%d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i8* @xstrerror(i32 %errnum) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata i32 %errnum, metadata !20, metadata !DIExpression()), !dbg !22
  %call = tail call i8* @strerror(i32 %errnum) #4, !dbg !23
  call void @llvm.dbg.value(metadata i8* %call, metadata !21, metadata !DIExpression()), !dbg !22
  %tobool = icmp eq i8* %call, null, !dbg !24
  br i1 %tobool, label %if.then, label %if.end, !dbg !26

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @xstrerror_buf, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %errnum) #4, !dbg !27
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @xstrerror_buf, i64 0, i64 0), metadata !21, metadata !DIExpression()), !dbg !22
  br label %if.end, !dbg !29

if.end:                                           ; preds = %entry, %if.then
  %errstr.0 = phi i8* [ %call, %entry ], [ getelementptr inbounds ([43 x i8], [43 x i8]* @xstrerror_buf, i64 0, i64 0), %if.then ], !dbg !22
  call void @llvm.dbg.value(metadata i8* %errstr.0, metadata !21, metadata !DIExpression()), !dbg !22
  ret i8* %errstr.0, !dbg !30
}

declare dso_local i8* @strerror(i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xstrerror_buf", scope: !2, file: !3, line: 49, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "xstrerror.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 344, elements: !8)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{!9}
!9 = !DISubrange(count: 43)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!14 = distinct !DISubprogram(name: "xstrerror", scope: !3, file: !3, line: 54, type: !15, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !19)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21}
!20 = !DILocalVariable(name: "errnum", arg: 1, scope: !14, file: !3, line: 54, type: !18)
!21 = !DILocalVariable(name: "errstr", scope: !14, file: !3, line: 56, type: !17)
!22 = !DILocation(line: 0, scope: !14)
!23 = !DILocation(line: 69, column: 12, scope: !14)
!24 = !DILocation(line: 73, column: 8, scope: !25)
!25 = distinct !DILexicalBlock(scope: !14, file: !3, line: 73, column: 7)
!26 = !DILocation(line: 73, column: 7, scope: !14)
!27 = !DILocation(line: 75, column: 7, scope: !28)
!28 = distinct !DILexicalBlock(scope: !25, file: !3, line: 74, column: 5)
!29 = !DILocation(line: 77, column: 5, scope: !28)
!30 = !DILocation(line: 78, column: 3, scope: !14)
