; ModuleID = 'safe-ctype.bc'
source_filename = "safe-ctype.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@_sch_istable = dso_local local_unnamed_addr constant <{ [128 x i16], [128 x i16] }> <{ [128 x i16] [i16 2050, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2115, i16 1090, i16 2114, i16 2114, i16 1090, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2129, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 276, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 48, i16 912, i16 912, i16 912, i16 912, i16 912, i16 912, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 656, i16 48, i16 48, i16 48, i16 48, i16 560, i16 48, i16 792, i16 792, i16 792, i16 792, i16 792, i16 792, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 536, i16 48, i16 48, i16 48, i16 48, i16 2], [128 x i16] zeroinitializer }>, align 16, !dbg !0
@_sch_tolower = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\5C]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16, !dbg !6
@_sch_toupper = dso_local local_unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\5C]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16, !dbg !13

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !22 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !28, metadata !DIExpression()), !dbg !29
  %__c.off = add i32 %__c, 128, !dbg !30
  %0 = icmp ult i32 %__c.off, 384, !dbg !30
  br i1 %0, label %cond.true, label %cond.end, !dbg !30

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #3, !dbg !31
  %1 = load i32*, i32** %call, align 8, !dbg !32
  %idxprom = sext i32 %__c to i64, !dbg !33
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !33
  %2 = load i32, i32* %arrayidx, align 4, !dbg !33
  br label %cond.end, !dbg !34

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !34
  ret i32 %cond, !dbg !35
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !36 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !38, metadata !DIExpression()), !dbg !39
  %__c.off = add i32 %__c, 128, !dbg !40
  %0 = icmp ult i32 %__c.off, 384, !dbg !40
  br i1 %0, label %cond.true, label %cond.end, !dbg !40

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #3, !dbg !41
  %1 = load i32*, i32** %call, align 8, !dbg !42
  %idxprom = sext i32 %__c to i64, !dbg !43
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !43
  %2 = load i32, i32* %arrayidx, align 4, !dbg !43
  br label %cond.end, !dbg !44

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !44
  ret i32 %cond, !dbg !45
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !46 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !64, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !65, metadata !DIExpression()), !dbg !66
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !67
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #3, !dbg !68
  ret i32 %call, !dbg !69
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !70 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !73
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #3, !dbg !74
  ret i32 %call, !dbg !75
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !76 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !78, metadata !DIExpression()), !dbg !79
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !80
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #3, !dbg !81
  ret i32 %call, !dbg !82
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_sch_istable", scope: !2, file: !3, line: 159, type: !15, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "safe-ctype.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!0, !6, !13}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "_sch_tolower", scope: !2, file: !3, line: 191, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !11)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!12}
!12 = !DISubrange(count: 256)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "_sch_toupper", scope: !2, file: !3, line: 220, type: !8, isLocal: false, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 4096, elements: !11)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !{i32 2, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!22 = distinct !DISubprogram(name: "tolower", scope: !23, file: !23, line: 207, type: !24, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !27)
!23 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !26}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!28}
!28 = !DILocalVariable(name: "__c", arg: 1, scope: !22, file: !23, line: 207, type: !26)
!29 = !DILocation(line: 0, scope: !22)
!30 = !DILocation(line: 209, column: 22, scope: !22)
!31 = !DILocation(line: 209, column: 39, scope: !22)
!32 = !DILocation(line: 209, column: 38, scope: !22)
!33 = !DILocation(line: 209, column: 37, scope: !22)
!34 = !DILocation(line: 209, column: 10, scope: !22)
!35 = !DILocation(line: 209, column: 3, scope: !22)
!36 = distinct !DISubprogram(name: "toupper", scope: !23, file: !23, line: 213, type: !24, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !37)
!37 = !{!38}
!38 = !DILocalVariable(name: "__c", arg: 1, scope: !36, file: !23, line: 213, type: !26)
!39 = !DILocation(line: 0, scope: !36)
!40 = !DILocation(line: 215, column: 22, scope: !36)
!41 = !DILocation(line: 215, column: 39, scope: !36)
!42 = !DILocation(line: 215, column: 38, scope: !36)
!43 = !DILocation(line: 215, column: 37, scope: !36)
!44 = !DILocation(line: 215, column: 10, scope: !36)
!45 = !DILocation(line: 215, column: 3, scope: !36)
!46 = distinct !DISubprogram(name: "vprintf", scope: !47, file: !47, line: 39, type: !48, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!48 = !DISubroutineType(types: !49)
!49 = !{!26, !50, !54}
!50 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 216, size: 192, elements: !56)
!56 = !{!57, !59, !60, !62}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !55, file: !3, line: 216, baseType: !58, size: 32)
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !55, file: !3, line: 216, baseType: !58, size: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !55, file: !3, line: 216, baseType: !61, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !55, file: !3, line: 216, baseType: !61, size: 64, offset: 128)
!63 = !{!64, !65}
!64 = !DILocalVariable(name: "__fmt", arg: 1, scope: !46, file: !47, line: 39, type: !50)
!65 = !DILocalVariable(name: "__arg", arg: 2, scope: !46, file: !47, line: 39, type: !54)
!66 = !DILocation(line: 0, scope: !46)
!67 = !DILocation(line: 41, column: 20, scope: !46)
!68 = !DILocation(line: 41, column: 10, scope: !46)
!69 = !DILocation(line: 41, column: 3, scope: !46)
!70 = distinct !DISubprogram(name: "getchar", scope: !47, file: !47, line: 47, type: !71, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!71 = !DISubroutineType(types: !72)
!72 = !{!26}
!73 = !DILocation(line: 49, column: 16, scope: !70)
!74 = !DILocation(line: 49, column: 10, scope: !70)
!75 = !DILocation(line: 49, column: 3, scope: !70)
!76 = distinct !DISubprogram(name: "putchar", scope: !47, file: !47, line: 82, type: !24, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !77)
!77 = !{!78}
!78 = !DILocalVariable(name: "__c", arg: 1, scope: !76, file: !47, line: 82, type: !26)
!79 = !DILocation(line: 0, scope: !76)
!80 = !DILocation(line: 84, column: 21, scope: !76)
!81 = !DILocation(line: 84, column: 10, scope: !76)
!82 = !DILocation(line: 84, column: 3, scope: !76)
