; ModuleID = 'crc32.bc'
source_filename = "crc32.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@crc32_table = internal unnamed_addr constant [256 x i32] [i32 0, i32 79764919, i32 159529838, i32 222504665, i32 319059676, i32 398814059, i32 445009330, i32 507990021, i32 638119352, i32 583659535, i32 797628118, i32 726387553, i32 890018660, i32 835552979, i32 1015980042, i32 944750013, i32 1276238704, i32 1221641927, i32 1167319070, i32 1095957929, i32 1595256236, i32 1540665371, i32 1452775106, i32 1381403509, i32 1780037320, i32 1859660671, i32 1671105958, i32 1733955601, i32 2031960084, i32 2111593891, i32 1889500026, i32 1952343757, i32 -1742489888, i32 -1662866601, i32 -1851683442, i32 -1788833735, i32 -1960329156, i32 -1880695413, i32 -2103051438, i32 -2040207643, i32 -1104454824, i32 -1159051537, i32 -1213636554, i32 -1284997759, i32 -1389417084, i32 -1444007885, i32 -1532160278, i32 -1603531939, i32 -734892656, i32 -789352409, i32 -575645954, i32 -646886583, i32 -952755380, i32 -1007220997, i32 -827056094, i32 -898286187, i32 -231047128, i32 -151282273, i32 -71779514, i32 -8804623, i32 -515967244, i32 -436212925, i32 -390279782, i32 -327299027, i32 881225847, i32 809987520, i32 1023691545, i32 969234094, i32 662832811, i32 591600412, i32 771767749, i32 717299826, i32 311336399, i32 374308984, i32 453813921, i32 533576470, i32 25881363, i32 88864420, i32 134795389, i32 214552010, i32 2023205639, i32 2086057648, i32 1897238633, i32 1976864222, i32 1804852699, i32 1867694188, i32 1645340341, i32 1724971778, i32 1587496639, i32 1516133128, i32 1461550545, i32 1406951526, i32 1302016099, i32 1230646740, i32 1142491917, i32 1087903418, i32 -1398421865, i32 -1469785312, i32 -1524105735, i32 -1578704818, i32 -1079922613, i32 -1151291908, i32 -1239184603, i32 -1293773166, i32 -1968362705, i32 -1905510760, i32 -2094067647, i32 -2014441994, i32 -1716953613, i32 -1654112188, i32 -1876203875, i32 -1796572374, i32 -525066777, i32 -462094256, i32 -382327159, i32 -302564546, i32 -206542021, i32 -143559028, i32 -97365931, i32 -17609246, i32 -960696225, i32 -1031934488, i32 -817968335, i32 -872425850, i32 -709327229, i32 -780559564, i32 -600130067, i32 -654598054, i32 1762451694, i32 1842216281, i32 1619975040, i32 1682949687, i32 2047383090, i32 2127137669, i32 1938468188, i32 2001449195, i32 1325665622, i32 1271206113, i32 1183200824, i32 1111960463, i32 1543535498, i32 1489069629, i32 1434599652, i32 1363369299, i32 622672798, i32 568075817, i32 748617968, i32 677256519, i32 907627842, i32 853037301, i32 1067152940, i32 995781531, i32 51762726, i32 131386257, i32 177728840, i32 240578815, i32 269590778, i32 349224269, i32 429104020, i32 491947555, i32 -248556018, i32 -168932423, i32 -122852000, i32 -60002089, i32 -500490030, i32 -420856475, i32 -341238852, i32 -278395381, i32 -685261898, i32 -739858943, i32 -559578920, i32 -630940305, i32 -1004286614, i32 -1058877219, i32 -845023740, i32 -916395085, i32 -1119974018, i32 -1174433591, i32 -1262701040, i32 -1333941337, i32 -1371866206, i32 -1426332139, i32 -1481064244, i32 -1552294533, i32 -1690935098, i32 -1611170447, i32 -1833673816, i32 -1770699233, i32 -2009983462, i32 -1930228819, i32 -2119160460, i32 -2056179517, i32 1569362073, i32 1498123566, i32 1409854455, i32 1355396672, i32 1317987909, i32 1246755826, i32 1192025387, i32 1137557660, i32 2072149281, i32 2135122070, i32 1912620623, i32 1992383480, i32 1753615357, i32 1816598090, i32 1627664531, i32 1707420964, i32 295390185, i32 358241886, i32 404320391, i32 483945776, i32 43990325, i32 106832002, i32 186451547, i32 266083308, i32 932423249, i32 861060070, i32 1041341759, i32 986742920, i32 613929101, i32 542559546, i32 756411363, i32 701822548, i32 -978770311, i32 -1050133554, i32 -869589737, i32 -924188512, i32 -693284699, i32 -764654318, i32 -550540341, i32 -605129092, i32 -475935807, i32 -413084042, i32 -366743377, i32 -287118056, i32 -257573603, i32 -194731862, i32 -114850189, i32 -35218492, i32 -1984365303, i32 -1921392450, i32 -2143631769, i32 -2063868976, i32 -1698919467, i32 -1635936670, i32 -1824608069, i32 -1744851700, i32 -1347415887, i32 -1418654458, i32 -1506661409, i32 -1561119128, i32 -1129027987, i32 -1200260134, i32 -1254728445, i32 -1309196108], align 16, !dbg !0

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !18 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !36, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !37, metadata !DIExpression()), !dbg !38
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !39
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !40
  ret i32 %call, !dbg !41
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !42 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !45
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !46
  ret i32 %call, !dbg !47
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !48 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !112, metadata !DIExpression()), !dbg !113
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !114
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !114
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !114
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !114
  %cmp = icmp uge i8* %0, %1, !dbg !114
  %conv1 = zext i1 %cmp to i64, !dbg !114
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !114
  %tobool = icmp eq i64 %expval, 0, !dbg !114
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !114

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !114
  br label %cond.end, !dbg !114

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !114
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !114
  %2 = load i8, i8* %0, align 1, !dbg !114
  %conv3 = zext i8 %2 to i32, !dbg !114
  br label %cond.end, !dbg !114

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !114
  ret i32 %cond, !dbg !115
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !116 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !118, metadata !DIExpression()), !dbg !119
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !120
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !120
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !120
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !120
  %cmp = icmp uge i8* %0, %1, !dbg !120
  %conv1 = zext i1 %cmp to i64, !dbg !120
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !120
  %tobool = icmp eq i64 %expval, 0, !dbg !120
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !120

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !120
  br label %cond.end, !dbg !120

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !120
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !120
  %2 = load i8, i8* %0, align 1, !dbg !120
  %conv3 = zext i8 %2 to i32, !dbg !120
  br label %cond.end, !dbg !120

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !120
  ret i32 %cond, !dbg !121
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !122 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !123
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !123
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !123
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !123
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !123
  %cmp = icmp uge i8* %1, %2, !dbg !123
  %conv1 = zext i1 %cmp to i64, !dbg !123
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !123
  %tobool = icmp eq i64 %expval, 0, !dbg !123
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !123

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !123
  br label %cond.end, !dbg !123

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !123
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !123
  %3 = load i8, i8* %1, align 1, !dbg !123
  %conv3 = zext i8 %3 to i32, !dbg !123
  br label %cond.end, !dbg !123

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !123
  ret i32 %cond, !dbg !124
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !125 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !131
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !132
  ret i32 %call, !dbg !133
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !134 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !138, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !139, metadata !DIExpression()), !dbg !140
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !141
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !141
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !141
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !141
  %cmp = icmp uge i8* %0, %1, !dbg !141
  %conv1 = zext i1 %cmp to i64, !dbg !141
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !141
  %tobool = icmp eq i64 %expval, 0, !dbg !141
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !141

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !141
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !141
  br label %cond.end, !dbg !141

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !141
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !141
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !141
  store i8 %conv2, i8* %0, align 1, !dbg !141
  %conv6 = and i32 %__c, 255, !dbg !141
  br label %cond.end, !dbg !141

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !141
  ret i32 %cond, !dbg !142
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !145, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !146, metadata !DIExpression()), !dbg !147
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !148
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !148
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !148
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !148
  %cmp = icmp uge i8* %0, %1, !dbg !148
  %conv1 = zext i1 %cmp to i64, !dbg !148
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !148
  %tobool = icmp eq i64 %expval, 0, !dbg !148
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !148

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !148
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !148
  br label %cond.end, !dbg !148

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !148
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !148
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !148
  store i8 %conv2, i8* %0, align 1, !dbg !148
  %conv6 = and i32 %__c, 255, !dbg !148
  br label %cond.end, !dbg !148

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !148
  ret i32 %cond, !dbg !149
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !150 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !154
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !154
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !154
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !154
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !154
  %cmp = icmp uge i8* %1, %2, !dbg !154
  %conv1 = zext i1 %cmp to i64, !dbg !154
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !154
  %tobool = icmp eq i64 %expval, 0, !dbg !154
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !154

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !154
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !154
  br label %cond.end, !dbg !154

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !154
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !154
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !154
  store i8 %conv4, i8* %1, align 1, !dbg !154
  %conv6 = and i32 %__c, 255, !dbg !154
  br label %cond.end, !dbg !154

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !154
  ret i32 %cond, !dbg !155
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !156 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !163, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata i64* %__n, metadata !164, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !165, metadata !DIExpression()), !dbg !166
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !167
  ret i64 %call, !dbg !168
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !169 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !171, metadata !DIExpression()), !dbg !172
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !173
  %0 = load i32, i32* %_flags, align 8, !dbg !173
  %and = lshr i32 %0, 4, !dbg !173
  %and.lobit = and i32 %and, 1, !dbg !173
  ret i32 %and.lobit, !dbg !174
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !175 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !177, metadata !DIExpression()), !dbg !178
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !179
  %0 = load i32, i32* %_flags, align 8, !dbg !179
  %and = lshr i32 %0, 5, !dbg !179
  %and.lobit = and i32 %and, 1, !dbg !179
  ret i32 %and.lobit, !dbg !180
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xcrc32(i8* %buf, i32 %len, i32 %init) local_unnamed_addr #3 !dbg !181 {
entry:
  call void @llvm.dbg.value(metadata i8* %buf, metadata !187, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %len, metadata !188, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %init, metadata !189, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %init, metadata !190, metadata !DIExpression()), !dbg !191
  br label %while.cond, !dbg !192

while.cond:                                       ; preds = %while.body, %entry
  %crc.0 = phi i32 [ %init, %entry ], [ %xor1, %while.body ], !dbg !191
  %len.addr.0 = phi i32 [ %len, %entry ], [ %dec, %while.body ]
  %buf.addr.0 = phi i8* [ %buf, %entry ], [ %incdec.ptr, %while.body ]
  call void @llvm.dbg.value(metadata i8* %buf.addr.0, metadata !187, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %len.addr.0, metadata !188, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %crc.0, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %len.addr.0, metadata !188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !191
  %tobool = icmp eq i32 %len.addr.0, 0, !dbg !192
  br i1 %tobool, label %while.end, label %while.body, !dbg !192

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %len.addr.0, -1, !dbg !193
  call void @llvm.dbg.value(metadata i32 %dec, metadata !188, metadata !DIExpression()), !dbg !191
  %shl = shl i32 %crc.0, 8, !dbg !194
  %shr = lshr i32 %crc.0, 24, !dbg !196
  %0 = load i8, i8* %buf.addr.0, align 1, !dbg !197
  %conv = zext i8 %0 to i32, !dbg !197
  %xor = xor i32 %shr, %conv, !dbg !198
  %idxprom = zext i32 %xor to i64, !dbg !199
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_table, i64 0, i64 %idxprom, !dbg !199
  %1 = load i32, i32* %arrayidx, align 4, !dbg !199
  %xor1 = xor i32 %shl, %1, !dbg !200
  call void @llvm.dbg.value(metadata i32 %xor1, metadata !190, metadata !DIExpression()), !dbg !191
  %incdec.ptr = getelementptr inbounds i8, i8* %buf.addr.0, i64 1, !dbg !201
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !187, metadata !DIExpression()), !dbg !191
  br label %while.cond, !dbg !192, !llvm.loop !202

while.end:                                        ; preds = %while.cond
  %crc.0.lcssa = phi i32 [ %crc.0, %while.cond ], !dbg !191
  call void @llvm.dbg.value(metadata i32 %crc.0.lcssa, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %crc.0.lcssa, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %crc.0.lcssa, metadata !190, metadata !DIExpression()), !dbg !191
  ret i32 %crc.0.lcssa, !dbg !204
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "crc32_table", scope: !2, file: !3, line: 71, type: !9, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, nameTableKind: None)
!3 = !DIFile(filename: "crc32.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!0}
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, elements: !12)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13}
!13 = !DISubrange(count: 256)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!18 = distinct !DISubprogram(name: "vprintf", scope: !19, file: !19, line: 39, type: !20, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !35)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23, !27}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !29)
!29 = !{!30, !31, !32, !34}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !28, file: !3, baseType: !11, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !28, file: !3, baseType: !11, size: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !28, file: !3, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !28, file: !3, baseType: !33, size: 64, offset: 128)
!35 = !{!36, !37}
!36 = !DILocalVariable(name: "__fmt", arg: 1, scope: !18, file: !19, line: 39, type: !23)
!37 = !DILocalVariable(name: "__arg", arg: 2, scope: !18, file: !19, line: 39, type: !27)
!38 = !DILocation(line: 0, scope: !18)
!39 = !DILocation(line: 41, column: 20, scope: !18)
!40 = !DILocation(line: 41, column: 10, scope: !18)
!41 = !DILocation(line: 41, column: 3, scope: !18)
!42 = distinct !DISubprogram(name: "getchar", scope: !19, file: !19, line: 47, type: !43, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!43 = !DISubroutineType(types: !44)
!44 = !{!22}
!45 = !DILocation(line: 49, column: 16, scope: !42)
!46 = !DILocation(line: 49, column: 10, scope: !42)
!47 = !DILocation(line: 49, column: 3, scope: !42)
!48 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !19, file: !19, line: 56, type: !49, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!49 = !DISubroutineType(types: !50)
!50 = !{!22, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !53, line: 7, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !55, line: 49, size: 1728, elements: !56)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!56 = !{!57, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !73, !75, !76, !77, !81, !83, !85, !89, !92, !94, !97, !100, !101, !102, !106, !107}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !54, file: !55, line: 51, baseType: !22, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !54, file: !55, line: 54, baseType: !59, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !54, file: !55, line: 55, baseType: !59, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !54, file: !55, line: 56, baseType: !59, size: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !54, file: !55, line: 57, baseType: !59, size: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !54, file: !55, line: 58, baseType: !59, size: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !54, file: !55, line: 59, baseType: !59, size: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !54, file: !55, line: 60, baseType: !59, size: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !54, file: !55, line: 61, baseType: !59, size: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !54, file: !55, line: 64, baseType: !59, size: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !54, file: !55, line: 65, baseType: !59, size: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !54, file: !55, line: 66, baseType: !59, size: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !54, file: !55, line: 68, baseType: !71, size: 64, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !55, line: 36, flags: DIFlagFwdDecl)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !54, file: !55, line: 70, baseType: !74, size: 64, offset: 832)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !54, file: !55, line: 72, baseType: !22, size: 32, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !54, file: !55, line: 73, baseType: !22, size: 32, offset: 928)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !54, file: !55, line: 74, baseType: !78, size: 64, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !79, line: 152, baseType: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!80 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !54, file: !55, line: 77, baseType: !82, size: 16, offset: 1024)
!82 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !54, file: !55, line: 78, baseType: !84, size: 8, offset: 1040)
!84 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !54, file: !55, line: 79, baseType: !86, size: 8, offset: 1048)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 1)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !54, file: !55, line: 81, baseType: !90, size: 64, offset: 1088)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !55, line: 43, baseType: null)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !54, file: !55, line: 89, baseType: !93, size: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !79, line: 153, baseType: !80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !54, file: !55, line: 91, baseType: !95, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !55, line: 37, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !54, file: !55, line: 92, baseType: !98, size: 64, offset: 1280)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !55, line: 38, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !54, file: !55, line: 93, baseType: !74, size: 64, offset: 1344)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !54, file: !55, line: 94, baseType: !33, size: 64, offset: 1408)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !54, file: !55, line: 95, baseType: !103, size: 64, offset: 1472)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 46, baseType: !105)
!104 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!105 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !54, file: !55, line: 96, baseType: !22, size: 32, offset: 1536)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !54, file: !55, line: 98, baseType: !108, size: 160, offset: 1568)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 20)
!111 = !{!112}
!112 = !DILocalVariable(name: "__fp", arg: 1, scope: !48, file: !19, line: 56, type: !51)
!113 = !DILocation(line: 0, scope: !48)
!114 = !DILocation(line: 58, column: 10, scope: !48)
!115 = !DILocation(line: 58, column: 3, scope: !48)
!116 = distinct !DISubprogram(name: "getc_unlocked", scope: !19, file: !19, line: 66, type: !49, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !117)
!117 = !{!118}
!118 = !DILocalVariable(name: "__fp", arg: 1, scope: !116, file: !19, line: 66, type: !51)
!119 = !DILocation(line: 0, scope: !116)
!120 = !DILocation(line: 68, column: 10, scope: !116)
!121 = !DILocation(line: 68, column: 3, scope: !116)
!122 = distinct !DISubprogram(name: "getchar_unlocked", scope: !19, file: !19, line: 73, type: !43, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!123 = !DILocation(line: 75, column: 10, scope: !122)
!124 = !DILocation(line: 75, column: 3, scope: !122)
!125 = distinct !DISubprogram(name: "putchar", scope: !19, file: !19, line: 82, type: !126, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !128)
!126 = !DISubroutineType(types: !127)
!127 = !{!22, !22}
!128 = !{!129}
!129 = !DILocalVariable(name: "__c", arg: 1, scope: !125, file: !19, line: 82, type: !22)
!130 = !DILocation(line: 0, scope: !125)
!131 = !DILocation(line: 84, column: 21, scope: !125)
!132 = !DILocation(line: 84, column: 10, scope: !125)
!133 = !DILocation(line: 84, column: 3, scope: !125)
!134 = distinct !DISubprogram(name: "fputc_unlocked", scope: !19, file: !19, line: 91, type: !135, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!135 = !DISubroutineType(types: !136)
!136 = !{!22, !22, !51}
!137 = !{!138, !139}
!138 = !DILocalVariable(name: "__c", arg: 1, scope: !134, file: !19, line: 91, type: !22)
!139 = !DILocalVariable(name: "__stream", arg: 2, scope: !134, file: !19, line: 91, type: !51)
!140 = !DILocation(line: 0, scope: !134)
!141 = !DILocation(line: 93, column: 10, scope: !134)
!142 = !DILocation(line: 93, column: 3, scope: !134)
!143 = distinct !DISubprogram(name: "putc_unlocked", scope: !19, file: !19, line: 101, type: !135, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !144)
!144 = !{!145, !146}
!145 = !DILocalVariable(name: "__c", arg: 1, scope: !143, file: !19, line: 101, type: !22)
!146 = !DILocalVariable(name: "__stream", arg: 2, scope: !143, file: !19, line: 101, type: !51)
!147 = !DILocation(line: 0, scope: !143)
!148 = !DILocation(line: 103, column: 10, scope: !143)
!149 = !DILocation(line: 103, column: 3, scope: !143)
!150 = distinct !DISubprogram(name: "putchar_unlocked", scope: !19, file: !19, line: 108, type: !126, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !151)
!151 = !{!152}
!152 = !DILocalVariable(name: "__c", arg: 1, scope: !150, file: !19, line: 108, type: !22)
!153 = !DILocation(line: 0, scope: !150)
!154 = !DILocation(line: 110, column: 10, scope: !150)
!155 = !DILocation(line: 110, column: 3, scope: !150)
!156 = distinct !DISubprogram(name: "getline", scope: !19, file: !19, line: 118, type: !157, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !162)
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !160, !161, !51}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !79, line: 193, baseType: !80)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!162 = !{!163, !164, !165}
!163 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !156, file: !19, line: 118, type: !160)
!164 = !DILocalVariable(name: "__n", arg: 2, scope: !156, file: !19, line: 118, type: !161)
!165 = !DILocalVariable(name: "__stream", arg: 3, scope: !156, file: !19, line: 118, type: !51)
!166 = !DILocation(line: 0, scope: !156)
!167 = !DILocation(line: 120, column: 10, scope: !156)
!168 = !DILocation(line: 120, column: 3, scope: !156)
!169 = distinct !DISubprogram(name: "feof_unlocked", scope: !19, file: !19, line: 128, type: !49, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !170)
!170 = !{!171}
!171 = !DILocalVariable(name: "__stream", arg: 1, scope: !169, file: !19, line: 128, type: !51)
!172 = !DILocation(line: 0, scope: !169)
!173 = !DILocation(line: 130, column: 10, scope: !169)
!174 = !DILocation(line: 130, column: 3, scope: !169)
!175 = distinct !DISubprogram(name: "ferror_unlocked", scope: !19, file: !19, line: 135, type: !49, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!176 = !{!177}
!177 = !DILocalVariable(name: "__stream", arg: 1, scope: !175, file: !19, line: 135, type: !51)
!178 = !DILocation(line: 0, scope: !175)
!179 = !DILocation(line: 137, column: 10, scope: !175)
!180 = !DILocation(line: 137, column: 3, scope: !175)
!181 = distinct !DISubprogram(name: "xcrc32", scope: !3, file: !3, line: 171, type: !182, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!182 = !DISubroutineType(types: !183)
!183 = !{!11, !184, !22, !11}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!186 = !{!187, !188, !189, !190}
!187 = !DILocalVariable(name: "buf", arg: 1, scope: !181, file: !3, line: 171, type: !184)
!188 = !DILocalVariable(name: "len", arg: 2, scope: !181, file: !3, line: 171, type: !22)
!189 = !DILocalVariable(name: "init", arg: 3, scope: !181, file: !3, line: 171, type: !11)
!190 = !DILocalVariable(name: "crc", scope: !181, file: !3, line: 173, type: !11)
!191 = !DILocation(line: 0, scope: !181)
!192 = !DILocation(line: 174, column: 3, scope: !181)
!193 = !DILocation(line: 174, column: 13, scope: !181)
!194 = !DILocation(line: 176, column: 18, scope: !195)
!195 = distinct !DILexicalBlock(scope: !181, file: !3, line: 175, column: 5)
!196 = !DILocation(line: 176, column: 44, scope: !195)
!197 = !DILocation(line: 176, column: 53, scope: !195)
!198 = !DILocation(line: 176, column: 51, scope: !195)
!199 = !DILocation(line: 176, column: 26, scope: !195)
!200 = !DILocation(line: 176, column: 24, scope: !195)
!201 = !DILocation(line: 177, column: 10, scope: !195)
!202 = distinct !{!202, !192, !203}
!203 = !DILocation(line: 178, column: 5, scope: !181)
!204 = !DILocation(line: 179, column: 3, scope: !181)
