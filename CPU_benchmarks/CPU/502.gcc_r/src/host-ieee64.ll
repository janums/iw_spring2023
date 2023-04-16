; ModuleID = 'host-ieee64.bc'
source_filename = "host-ieee64.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decimal64 = type { [8 x i8] }

; Function Attrs: nounwind uwtable
define dso_local void @__host_to_ieee_64(i64 %in, %struct.decimal64* %out) local_unnamed_addr #0 !dbg !10 {
entry:
  %in.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %in, metadata !31, metadata !DIExpression()), !dbg !33
  store i64 %in, i64* %in.addr, align 8
  call void @llvm.dbg.value(metadata %struct.decimal64* %out, metadata !32, metadata !DIExpression()), !dbg !33
  %0 = getelementptr inbounds %struct.decimal64, %struct.decimal64* %out, i64 0, i32 0, i64 0, !dbg !34
  %1 = bitcast i64* %in.addr to i8*, !dbg !35
  %call = call i8* @memcpy(i8* %0, i8* nonnull %1, i64 8) #3, !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @__ieee_to_host_64(i64 %in.coerce, i64* %out) local_unnamed_addr #0 !dbg !38 {
entry:
  %in = alloca i64, align 8
  store i64 %in.coerce, i64* %in, align 8
  call void @llvm.dbg.value(metadata i64* %out, metadata !44, metadata !DIExpression()), !dbg !45
  %0 = bitcast i64* %out to i8*, !dbg !46
  %1 = bitcast i64* %in to i8*, !dbg !47
  %call = call i8* @memcpy(i8* %0, i8* nonnull %1, i64 8) #3, !dbg !48
  ret void, !dbg !49
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "host-ieee64.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!10 = distinct !DISubprogram(name: "__host_to_ieee_64", scope: !1, file: !1, line: 43, type: !11, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !16}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT64", file: !14, line: 26, baseType: !15)
!14 = !DIFile(filename: "./bid-dpd.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!15 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "decimal64", file: !18, line: 66, baseType: !19)
!18 = !DIFile(filename: "./decimal64.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 64, size: 64, elements: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !19, file: !18, line: 65, baseType: !22, size: 64)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !28)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !24, line: 24, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !26, line: 38, baseType: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !{!29}
!29 = !DISubrange(count: 8)
!30 = !{!31, !32}
!31 = !DILocalVariable(name: "in", arg: 1, scope: !10, file: !1, line: 43, type: !13)
!32 = !DILocalVariable(name: "out", arg: 2, scope: !10, file: !1, line: 43, type: !16)
!33 = !DILocation(line: 0, scope: !10)
!34 = !DILocation(line: 45, column: 11, scope: !10)
!35 = !DILocation(line: 45, column: 25, scope: !10)
!36 = !DILocation(line: 45, column: 3, scope: !10)
!37 = !DILocation(line: 46, column: 1, scope: !10)
!38 = distinct !DISubprogram(name: "__ieee_to_host_64", scope: !1, file: !1, line: 49, type: !39, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !42)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !17, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!42 = !{!43, !44}
!43 = !DILocalVariable(name: "in", arg: 1, scope: !38, file: !1, line: 49, type: !17)
!44 = !DILocalVariable(name: "out", arg: 2, scope: !38, file: !1, line: 49, type: !41)
!45 = !DILocation(line: 0, scope: !38)
!46 = !DILocation(line: 51, column: 11, scope: !38)
!47 = !DILocation(line: 51, column: 25, scope: !38)
!48 = !DILocation(line: 51, column: 3, scope: !38)
!49 = !DILocation(line: 52, column: 1, scope: !38)
