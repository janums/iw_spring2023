; ModuleID = 'host-ieee128.bc'
source_filename = "host-ieee128.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.decimal128 = type { [16 x i8] }
%struct.UINT128 = type { [2 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !28, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !29, metadata !DIExpression()), !dbg !30
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !31
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !32
  ret i32 %call, !dbg !33
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !34 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !37
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !38
  ret i32 %call, !dbg !39
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !40 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !44, metadata !DIExpression()), !dbg !45
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !46
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !47
  ret i32 %call, !dbg !48
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @__host_to_ieee_128(i64 %in.coerce0, i64 %in.coerce1, %struct.decimal128* %out) local_unnamed_addr #2 !dbg !49 {
entry:
  %in = alloca %struct.UINT128, align 8
  %0 = getelementptr inbounds %struct.UINT128, %struct.UINT128* %in, i64 0, i32 0, i64 0
  store i64 %in.coerce0, i64* %0, align 8
  %1 = getelementptr inbounds %struct.UINT128, %struct.UINT128* %in, i64 0, i32 0, i64 1
  store i64 %in.coerce1, i64* %1, align 8
  call void @llvm.dbg.value(metadata %struct.decimal128* %out, metadata !78, metadata !DIExpression()), !dbg !79
  %2 = getelementptr inbounds %struct.decimal128, %struct.decimal128* %out, i64 0, i32 0, i64 0, !dbg !80
  %3 = bitcast %struct.UINT128* %in to i8*, !dbg !81
  %call = call i8* @memcpy(i8* %2, i8* nonnull %3, i64 16) #5, !dbg !82
  ret void, !dbg !83
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @__ieee_to_host_128(i64 %in.coerce0, i64 %in.coerce1, %struct.UINT128* %out) local_unnamed_addr #2 !dbg !84 {
entry:
  %in = alloca { i64, i64 }, align 8
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %in, i64 0, i32 0
  store i64 %in.coerce0, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %in, i64 0, i32 1
  store i64 %in.coerce1, i64* %1, align 8
  call void @llvm.dbg.value(metadata %struct.UINT128* %out, metadata !90, metadata !DIExpression()), !dbg !91
  %2 = bitcast %struct.UINT128* %out to i8*, !dbg !92
  %3 = bitcast { i64, i64 }* %in to i8*, !dbg !93
  %call = call i8* @memcpy(i8* %2, i8* nonnull %3, i64 16) #5, !dbg !94
  ret void, !dbg !95
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "host-ieee128.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!10 = distinct !DISubprogram(name: "vprintf", scope: !11, file: !11, line: 39, type: !12, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !18}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !20)
!20 = !{!21, !23, !24, !26}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !19, file: !1, baseType: !22, size: 32)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !19, file: !1, baseType: !22, size: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !19, file: !1, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !19, file: !1, baseType: !25, size: 64, offset: 128)
!27 = !{!28, !29}
!28 = !DILocalVariable(name: "__fmt", arg: 1, scope: !10, file: !11, line: 39, type: !15)
!29 = !DILocalVariable(name: "__arg", arg: 2, scope: !10, file: !11, line: 39, type: !18)
!30 = !DILocation(line: 0, scope: !10)
!31 = !DILocation(line: 41, column: 20, scope: !10)
!32 = !DILocation(line: 41, column: 10, scope: !10)
!33 = !DILocation(line: 41, column: 3, scope: !10)
!34 = distinct !DISubprogram(name: "getchar", scope: !11, file: !11, line: 47, type: !35, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!35 = !DISubroutineType(types: !36)
!36 = !{!14}
!37 = !DILocation(line: 49, column: 16, scope: !34)
!38 = !DILocation(line: 49, column: 10, scope: !34)
!39 = !DILocation(line: 49, column: 3, scope: !34)
!40 = distinct !DISubprogram(name: "putchar", scope: !11, file: !11, line: 82, type: !41, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{!14, !14}
!43 = !{!44}
!44 = !DILocalVariable(name: "__c", arg: 1, scope: !40, file: !11, line: 82, type: !14)
!45 = !DILocation(line: 0, scope: !40)
!46 = !DILocation(line: 84, column: 21, scope: !40)
!47 = !DILocation(line: 84, column: 10, scope: !40)
!48 = !DILocation(line: 84, column: 3, scope: !40)
!49 = distinct !DISubprogram(name: "__host_to_ieee_128", scope: !1, file: !1, line: 39, type: !50, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !62}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT128", file: !53, line: 27, baseType: !54)
!53 = !DIFile(filename: "./bid-dpd.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 27, size: 128, elements: !55)
!55 = !{!56}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !54, file: !53, line: 27, baseType: !57, size: 128)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 128, elements: !60)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT64", file: !53, line: 26, baseType: !59)
!59 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!60 = !{!61}
!61 = !DISubrange(count: 2)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "decimal128", file: !64, line: 64, baseType: !65)
!64 = !DIFile(filename: "./decimal128.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 62, size: 128, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !65, file: !64, line: 63, baseType: !68, size: 128)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, elements: !74)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !70, line: 24, baseType: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !72, line: 38, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!73 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !{!75}
!75 = !DISubrange(count: 16)
!76 = !{!77, !78}
!77 = !DILocalVariable(name: "in", arg: 1, scope: !49, file: !1, line: 39, type: !52)
!78 = !DILocalVariable(name: "out", arg: 2, scope: !49, file: !1, line: 39, type: !62)
!79 = !DILocation(line: 0, scope: !49)
!80 = !DILocation(line: 45, column: 11, scope: !49)
!81 = !DILocation(line: 45, column: 25, scope: !49)
!82 = !DILocation(line: 45, column: 3, scope: !49)
!83 = !DILocation(line: 47, column: 1, scope: !49)
!84 = distinct !DISubprogram(name: "__ieee_to_host_128", scope: !1, file: !1, line: 50, type: !85, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !63, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!88 = !{!89, !90}
!89 = !DILocalVariable(name: "in", arg: 1, scope: !84, file: !1, line: 50, type: !63)
!90 = !DILocalVariable(name: "out", arg: 2, scope: !84, file: !1, line: 50, type: !87)
!91 = !DILocation(line: 0, scope: !84)
!92 = !DILocation(line: 56, column: 11, scope: !84)
!93 = !DILocation(line: 56, column: 25, scope: !84)
!94 = !DILocation(line: 56, column: 3, scope: !84)
!95 = !DILocation(line: 58, column: 1, scope: !84)
