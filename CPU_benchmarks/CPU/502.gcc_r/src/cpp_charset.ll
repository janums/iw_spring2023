; ModuleID = 'cpp_charset.bc'
source_filename = "cpp_charset.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conversion = type { i8*, i8 (i8*, i8*, i64, %struct._cpp_strbuf*)*, i8* }
%struct._cpp_strbuf = type { i8*, i64, i64 }
%struct.anon.3 = type { i8, i8, i16 }
%struct.cpp_reader = type { %struct.cpp_buffer*, %struct.cpp_buffer*, %struct.lexer_state, %struct.line_maps*, i32, %struct._cpp_buff*, %struct._cpp_buff*, %struct._cpp_buff*, %struct.cpp_context, %struct.cpp_context*, %struct.directive*, %struct.cpp_token, i32, i8, %struct.cpp_dir*, %struct.cpp_dir*, %struct.cpp_dir, %struct._cpp_file*, %struct._cpp_file*, %struct.htab*, %struct.htab*, %struct.file_hash_entry_pool*, %struct.htab*, %struct.obstack, i8, i8, %struct.cpp_hashnode*, %struct.cpp_hashnode*, i8, %struct.cpp_token*, %struct.tokenrun, %struct.tokenrun*, i32, i32, i8*, i32, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, %struct.cset_converter, i8*, i8*, %struct.cpp_token, %struct.cpp_token, %struct.deps*, %struct.obstack, %struct.obstack, %struct.pragma_entry*, %struct.cpp_callbacks, %struct.ht*, %struct.op*, %struct.op*, %struct.cpp_options, %struct.spec_nodes, i8, %struct.anon.2, i8*, i8*, i8*, %struct.cpp_savedstate*, i32, %struct.cpp_comment_table, %struct.def_pragma_macro* }
%struct.cpp_buffer = type { i8*, i8*, i8*, i8*, i8*, %struct._cpp_line_note*, i32, i32, i32, %struct.cpp_buffer*, %struct._cpp_file*, i8*, %struct.if_stack*, i8, i8, i8, %struct.cpp_dir, %struct.cset_converter }
%struct._cpp_line_note = type { i8*, i32 }
%struct.if_stack = type opaque
%struct.lexer_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.line_maps = type { %struct.line_map*, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8* (i8*, i64)* }
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct._cpp_buff = type { %struct._cpp_buff*, i8*, i8*, i8* }
%struct.cpp_context = type { %struct.cpp_context*, %struct.cpp_context*, %union.anon, %struct._cpp_buff*, %struct.cpp_hashnode*, i8 }
%union.anon = type { %struct.anon }
%struct.anon = type { %union.utoken, %union.utoken }
%union.utoken = type { %struct.cpp_token* }
%struct.directive = type opaque
%struct.cpp_dir = type { %struct.cpp_dir*, i8*, i32, i8, i8, i8*, i8**, i8* (i8*, %struct.cpp_dir*)*, i64, i64 }
%struct._cpp_file = type opaque
%struct.file_hash_entry_pool = type opaque
%struct.htab = type opaque
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { i8*, i32, i32 }
%union._cpp_hashnode_value = type { %struct.cpp_macro* }
%struct.cpp_macro = type { %struct.cpp_hashnode**, %union.cpp_macro_u, i32, i32, i16, i8 }
%union.cpp_macro_u = type { %struct.cpp_token* }
%struct.tokenrun = type { %struct.tokenrun*, %struct.tokenrun*, %struct.cpp_token*, %struct.cpp_token* }
%struct.cset_converter = type { i8 (i8*, i8*, i64, %struct._cpp_strbuf*)*, i8*, i32 }
%struct.cpp_token = type { i32, i8, i16, %union.cpp_token_u }
%union.cpp_token_u = type { %struct.cpp_string }
%struct.cpp_string = type { i32, i8* }
%struct.deps = type opaque
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.pragma_entry = type opaque
%struct.cpp_callbacks = type { void (%struct.cpp_reader*, %struct.cpp_token*, i32)*, void (%struct.cpp_reader*, %struct.line_map*)*, void (%struct.cpp_reader*, i8*)*, void (%struct.cpp_reader*, i32, i8*, i8*, i32, %struct.cpp_token**)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_string*)*, void (%struct.cpp_reader*, i32)*, i32 (%struct.cpp_reader*, i8*, i32)*, void (%struct.cpp_reader*, i8*, i32, i8*)*, i8* (%struct.cpp_reader*, i8*, %struct.cpp_dir**)*, %struct.cpp_hashnode* (%struct.cpp_reader*, %struct.cpp_token*)*, i8 (%struct.cpp_reader*, i32, i32, i32, i8*, [1 x %struct.__va_list_tag]*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)*, {}*, void (%struct.cpp_reader*, i32, %struct.cpp_hashnode*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ht = type { %struct.obstack, %struct.ht_identifier**, %struct.ht_identifier* (%struct.ht*)*, i8* (i64)*, i32, i32, %struct.cpp_reader*, i32, i32, i8 }
%struct.op = type opaque
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i8*, i8*, i32, i8, i8, %struct.anon.1, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon.1 = type { i32, i8, i8, i8, i8 }
%struct.spec_nodes = type { %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode*, %struct.cpp_hashnode* }
%struct.anon.2 = type { i8*, i8*, i8*, i32 }
%struct.cpp_savedstate = type opaque
%struct.cpp_comment_table = type { %struct.cpp_comment*, i32, i32 }
%struct.cpp_comment = type { i8*, i32 }
%struct.def_pragma_macro = type { %struct.def_pragma_macro*, i8*, %struct.cpp_macro* }
%struct.normalize_state = type { i32, i8, i32 }

@.str = private unnamed_addr constant [9 x i8] c"UTF-32BE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-32LE\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"character 0x%lx is not in the basic source character set\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"converting to execution character set\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"character 0x%lx is not unibyte in execution character set\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"universal character names are only valid in C++ and C99\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"the meaning of '\5C%c' is different in traditional C\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"In _cpp_valid_ucn but not a UCN\00", align 1
@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@_hex_value = external dso_local local_unnamed_addr constant [256 x i8], align 16
@.str.11 = private unnamed_addr constant [41 x i8] c"incomplete universal character name %.*s\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"%.*s is not a valid universal character\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"'$' in identifier or number\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"universal character %.*s is not valid in an identifier\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"universal character %.*s is not valid at the start of an identifier\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"empty character constant\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"converting UCN to source character set\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"failure to convert %s to %s\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@conversion_tab = internal unnamed_addr constant [8 x %struct.conversion] [%struct.conversion { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8 (i8*, i8*, i64, %struct._cpp_strbuf*)* @convert_utf8_utf32, i8* null }, %struct.conversion { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8 (i8*, i8*, i64, %struct._cpp_strbuf*)* @convert_utf8_utf32, i8* inttoptr (i64 1 to i8*) }, %struct.conversion { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8 (i8*, i8*, i64, %struct._cpp_strbuf*)* @convert_utf8_utf16, i8* null }, %struct.conversion { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i8 (i8*, i8*, i64, %struct._cpp_strbuf*)* @convert_utf8_utf16, i8* inttoptr (i64 1 to i8*) }, %struct.conversion { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i8 (i8*, i8*, i64, %struct._cpp_strbuf*)* @convert_utf32_utf8, i8* null }, %struct.conversion { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i8 (i8*, i8*, i64, %struct._cpp_strbuf*)* @convert_utf32_utf8, i8* inttoptr (i64 1 to i8*) }, %struct.conversion { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8 (i8*, i8*, i64, %struct._cpp_strbuf*)* @convert_utf16_utf8, i8* null }, %struct.conversion { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8 (i8*, i8*, i64, %struct._cpp_strbuf*)* @convert_utf16_utf8, i8* inttoptr (i64 1 to i8*) }], align 16, !dbg !0
@.str.20 = private unnamed_addr constant [48 x i8] c"conversion from %s to %s not supported by iconv\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"iconv_open\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"UTF-8/UTF-32LE\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"UTF-8/UTF-32BE\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"UTF-8/UTF-16LE\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"UTF-8/UTF-16BE\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"UTF-32LE/UTF-8\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"UTF-32BE/UTF-8\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"UTF-16LE/UTF-8\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"UTF-16BE/UTF-8\00", align 1
@one_utf8_to_cppchar.masks = internal unnamed_addr constant [6 x i8] c"\7F\1F\0F\07\03\01", align 1, !dbg !221
@one_utf8_to_cppchar.patns = internal unnamed_addr constant [6 x i8] c"\00\C0\E0\F0\F8\FC", align 1, !dbg !247
@ucnranges = internal unnamed_addr constant [747 x %struct.anon.3] [%struct.anon.3 { i8 56, i8 0, i16 169 }, %struct.anon.3 { i8 25, i8 0, i16 170 }, %struct.anon.3 { i8 56, i8 0, i16 180 }, %struct.anon.3 { i8 25, i8 0, i16 181 }, %struct.anon.3 { i8 56, i8 0, i16 182 }, %struct.anon.3 { i8 57, i8 0, i16 183 }, %struct.anon.3 { i8 24, i8 0, i16 185 }, %struct.anon.3 { i8 25, i8 0, i16 186 }, %struct.anon.3 { i8 56, i8 0, i16 191 }, %struct.anon.3 { i8 61, i8 0, i16 214 }, %struct.anon.3 { i8 56, i8 0, i16 215 }, %struct.anon.3 { i8 61, i8 0, i16 246 }, %struct.anon.3 { i8 56, i8 0, i16 247 }, %struct.anon.3 { i8 61, i8 0, i16 305 }, %struct.anon.3 { i8 29, i8 0, i16 307 }, %struct.anon.3 { i8 61, i8 0, i16 318 }, %struct.anon.3 { i8 29, i8 0, i16 320 }, %struct.anon.3 { i8 61, i8 0, i16 328 }, %struct.anon.3 { i8 29, i8 0, i16 329 }, %struct.anon.3 { i8 61, i8 0, i16 382 }, %struct.anon.3 { i8 29, i8 0, i16 383 }, %struct.anon.3 { i8 61, i8 0, i16 451 }, %struct.anon.3 { i8 29, i8 0, i16 460 }, %struct.anon.3 { i8 61, i8 0, i16 496 }, %struct.anon.3 { i8 29, i8 0, i16 499 }, %struct.anon.3 { i8 61, i8 0, i16 501 }, %struct.anon.3 { i8 56, i8 0, i16 505 }, %struct.anon.3 { i8 61, i8 0, i16 535 }, %struct.anon.3 { i8 56, i8 0, i16 591 }, %struct.anon.3 { i8 61, i8 0, i16 680 }, %struct.anon.3 { i8 56, i8 0, i16 687 }, %struct.anon.3 { i8 25, i8 0, i16 696 }, %struct.anon.3 { i8 56, i8 0, i16 698 }, %struct.anon.3 { i8 57, i8 0, i16 699 }, %struct.anon.3 { i8 56, i8 0, i16 700 }, %struct.anon.3 { i8 57, i8 0, i16 705 }, %struct.anon.3 { i8 56, i8 0, i16 719 }, %struct.anon.3 { i8 57, i8 0, i16 721 }, %struct.anon.3 { i8 56, i8 0, i16 735 }, %struct.anon.3 { i8 25, i8 0, i16 740 }, %struct.anon.3 { i8 56, i8 0, i16 889 }, %struct.anon.3 { i8 25, i8 0, i16 890 }, %struct.anon.3 { i8 56, i8 0, i16 899 }, %struct.anon.3 { i8 28, i8 0, i16 900 }, %struct.anon.3 { i8 24, i8 0, i16 901 }, %struct.anon.3 { i8 57, i8 0, i16 902 }, %struct.anon.3 { i8 8, i8 0, i16 903 }, %struct.anon.3 { i8 61, i8 0, i16 906 }, %struct.anon.3 { i8 56, i8 0, i16 907 }, %struct.anon.3 { i8 61, i8 0, i16 908 }, %struct.anon.3 { i8 56, i8 0, i16 909 }, %struct.anon.3 { i8 61, i8 0, i16 929 }, %struct.anon.3 { i8 56, i8 0, i16 930 }, %struct.anon.3 { i8 61, i8 0, i16 974 }, %struct.anon.3 { i8 56, i8 0, i16 975 }, %struct.anon.3 { i8 29, i8 0, i16 982 }, %struct.anon.3 { i8 56, i8 0, i16 985 }, %struct.anon.3 { i8 61, i8 0, i16 986 }, %struct.anon.3 { i8 56, i8 0, i16 987 }, %struct.anon.3 { i8 61, i8 0, i16 988 }, %struct.anon.3 { i8 56, i8 0, i16 989 }, %struct.anon.3 { i8 61, i8 0, i16 990 }, %struct.anon.3 { i8 56, i8 0, i16 991 }, %struct.anon.3 { i8 61, i8 0, i16 992 }, %struct.anon.3 { i8 56, i8 0, i16 993 }, %struct.anon.3 { i8 61, i8 0, i16 1007 }, %struct.anon.3 { i8 29, i8 0, i16 1010 }, %struct.anon.3 { i8 61, i8 0, i16 1011 }, %struct.anon.3 { i8 24, i8 0, i16 1024 }, %struct.anon.3 { i8 61, i8 0, i16 1036 }, %struct.anon.3 { i8 60, i8 0, i16 1037 }, %struct.anon.3 { i8 57, i8 0, i16 1038 }, %struct.anon.3 { i8 61, i8 0, i16 1103 }, %struct.anon.3 { i8 56, i8 0, i16 1104 }, %struct.anon.3 { i8 61, i8 0, i16 1116 }, %struct.anon.3 { i8 56, i8 0, i16 1117 }, %struct.anon.3 { i8 61, i8 0, i16 1153 }, %struct.anon.3 { i8 56, i8 0, i16 1167 }, %struct.anon.3 { i8 61, i8 0, i16 1220 }, %struct.anon.3 { i8 56, i8 0, i16 1222 }, %struct.anon.3 { i8 61, i8 0, i16 1224 }, %struct.anon.3 { i8 56, i8 0, i16 1226 }, %struct.anon.3 { i8 61, i8 0, i16 1228 }, %struct.anon.3 { i8 56, i8 0, i16 1231 }, %struct.anon.3 { i8 61, i8 0, i16 1259 }, %struct.anon.3 { i8 56, i8 0, i16 1261 }, %struct.anon.3 { i8 61, i8 0, i16 1269 }, %struct.anon.3 { i8 56, i8 0, i16 1271 }, %struct.anon.3 { i8 61, i8 0, i16 1273 }, %struct.anon.3 { i8 56, i8 0, i16 1328 }, %struct.anon.3 { i8 61, i8 0, i16 1366 }, %struct.anon.3 { i8 56, i8 0, i16 1368 }, %struct.anon.3 { i8 57, i8 0, i16 1369 }, %struct.anon.3 { i8 56, i8 0, i16 1376 }, %struct.anon.3 { i8 61, i8 0, i16 1414 }, %struct.anon.3 { i8 29, i8 0, i16 1415 }, %struct.anon.3 { i8 56, i8 0, i16 1455 }, %struct.anon.3 { i8 57, i8 10, i16 1456 }, %struct.anon.3 { i8 57, i8 11, i16 1457 }, %struct.anon.3 { i8 57, i8 12, i16 1458 }, %struct.anon.3 { i8 57, i8 13, i16 1459 }, %struct.anon.3 { i8 57, i8 14, i16 1460 }, %struct.anon.3 { i8 57, i8 15, i16 1461 }, %struct.anon.3 { i8 57, i8 16, i16 1462 }, %struct.anon.3 { i8 57, i8 17, i16 1463 }, %struct.anon.3 { i8 57, i8 18, i16 1464 }, %struct.anon.3 { i8 57, i8 19, i16 1465 }, %struct.anon.3 { i8 56, i8 0, i16 1466 }, %struct.anon.3 { i8 57, i8 20, i16 1467 }, %struct.anon.3 { i8 57, i8 21, i16 1468 }, %struct.anon.3 { i8 57, i8 22, i16 1469 }, %struct.anon.3 { i8 56, i8 0, i16 1470 }, %struct.anon.3 { i8 57, i8 23, i16 1471 }, %struct.anon.3 { i8 56, i8 0, i16 1472 }, %struct.anon.3 { i8 57, i8 24, i16 1473 }, %struct.anon.3 { i8 57, i8 25, i16 1474 }, %struct.anon.3 { i8 56, i8 0, i16 1487 }, %struct.anon.3 { i8 61, i8 0, i16 1514 }, %struct.anon.3 { i8 56, i8 0, i16 1519 }, %struct.anon.3 { i8 61, i8 0, i16 1522 }, %struct.anon.3 { i8 60, i8 0, i16 1524 }, %struct.anon.3 { i8 56, i8 0, i16 1568 }, %struct.anon.3 { i8 61, i8 0, i16 1594 }, %struct.anon.3 { i8 56, i8 0, i16 1599 }, %struct.anon.3 { i8 61, i8 0, i16 1610 }, %struct.anon.3 { i8 61, i8 27, i16 1611 }, %struct.anon.3 { i8 61, i8 28, i16 1612 }, %struct.anon.3 { i8 61, i8 29, i16 1613 }, %struct.anon.3 { i8 61, i8 30, i16 1614 }, %struct.anon.3 { i8 61, i8 31, i16 1615 }, %struct.anon.3 { i8 61, i8 32, i16 1616 }, %struct.anon.3 { i8 61, i8 33, i16 1617 }, %struct.anon.3 { i8 61, i8 34, i16 1618 }, %struct.anon.3 { i8 120, i8 0, i16 1631 }, %struct.anon.3 { i8 59, i8 0, i16 1641 }, %struct.anon.3 { i8 56, i8 0, i16 1647 }, %struct.anon.3 { i8 61, i8 0, i16 1652 }, %struct.anon.3 { i8 29, i8 0, i16 1656 }, %struct.anon.3 { i8 61, i8 0, i16 1719 }, %struct.anon.3 { i8 56, i8 0, i16 1721 }, %struct.anon.3 { i8 61, i8 0, i16 1726 }, %struct.anon.3 { i8 56, i8 0, i16 1727 }, %struct.anon.3 { i8 61, i8 0, i16 1742 }, %struct.anon.3 { i8 56, i8 0, i16 1743 }, %struct.anon.3 { i8 57, i8 0, i16 1749 }, %struct.anon.3 { i8 57, i8 -26, i16 1750 }, %struct.anon.3 { i8 57, i8 -26, i16 1751 }, %struct.anon.3 { i8 57, i8 -26, i16 1752 }, %struct.anon.3 { i8 57, i8 -26, i16 1753 }, %struct.anon.3 { i8 57, i8 -26, i16 1754 }, %struct.anon.3 { i8 57, i8 -26, i16 1755 }, %struct.anon.3 { i8 57, i8 -26, i16 1756 }, %struct.anon.3 { i8 56, i8 0, i16 1764 }, %struct.anon.3 { i8 61, i8 0, i16 1766 }, %struct.anon.3 { i8 61, i8 -26, i16 1767 }, %struct.anon.3 { i8 57, i8 -26, i16 1768 }, %struct.anon.3 { i8 56, i8 0, i16 1769 }, %struct.anon.3 { i8 57, i8 -36, i16 1770 }, %struct.anon.3 { i8 57, i8 -26, i16 1771 }, %struct.anon.3 { i8 57, i8 -26, i16 1772 }, %struct.anon.3 { i8 57, i8 -36, i16 1773 }, %struct.anon.3 { i8 56, i8 0, i16 1775 }, %struct.anon.3 { i8 59, i8 0, i16 1785 }, %struct.anon.3 { i8 56, i8 0, i16 2304 }, %struct.anon.3 { i8 57, i8 0, i16 2307 }, %struct.anon.3 { i8 56, i8 0, i16 2308 }, %struct.anon.3 { i8 61, i8 0, i16 2361 }, %struct.anon.3 { i8 56, i8 0, i16 2364 }, %struct.anon.3 { i8 57, i8 0, i16 2380 }, %struct.anon.3 { i8 57, i8 9, i16 2381 }, %struct.anon.3 { i8 56, i8 0, i16 2383 }, %struct.anon.3 { i8 57, i8 0, i16 2384 }, %struct.anon.3 { i8 57, i8 -26, i16 2385 }, %struct.anon.3 { i8 57, i8 -36, i16 2386 }, %struct.anon.3 { i8 56, i8 0, i16 2391 }, %struct.anon.3 { i8 13, i8 0, i16 2399 }, %struct.anon.3 { i8 61, i8 0, i16 2402 }, %struct.anon.3 { i8 57, i8 0, i16 2403 }, %struct.anon.3 { i8 56, i8 0, i16 2405 }, %struct.anon.3 { i8 59, i8 0, i16 2415 }, %struct.anon.3 { i8 56, i8 0, i16 2432 }, %struct.anon.3 { i8 57, i8 0, i16 2435 }, %struct.anon.3 { i8 56, i8 0, i16 2436 }, %struct.anon.3 { i8 61, i8 0, i16 2444 }, %struct.anon.3 { i8 56, i8 0, i16 2446 }, %struct.anon.3 { i8 61, i8 0, i16 2448 }, %struct.anon.3 { i8 56, i8 0, i16 2450 }, %struct.anon.3 { i8 61, i8 0, i16 2472 }, %struct.anon.3 { i8 56, i8 0, i16 2473 }, %struct.anon.3 { i8 61, i8 0, i16 2480 }, %struct.anon.3 { i8 56, i8 0, i16 2481 }, %struct.anon.3 { i8 61, i8 0, i16 2482 }, %struct.anon.3 { i8 56, i8 0, i16 2485 }, %struct.anon.3 { i8 61, i8 0, i16 2489 }, %struct.anon.3 { i8 56, i8 0, i16 2493 }, %struct.anon.3 { i8 121, i8 0, i16 2494 }, %struct.anon.3 { i8 57, i8 0, i16 2500 }, %struct.anon.3 { i8 56, i8 0, i16 2502 }, %struct.anon.3 { i8 57, i8 0, i16 2504 }, %struct.anon.3 { i8 56, i8 0, i16 2506 }, %struct.anon.3 { i8 49, i8 0, i16 2507 }, %struct.anon.3 { i8 57, i8 0, i16 2508 }, %struct.anon.3 { i8 57, i8 9, i16 2509 }, %struct.anon.3 { i8 56, i8 0, i16 2523 }, %struct.anon.3 { i8 13, i8 0, i16 2525 }, %struct.anon.3 { i8 56, i8 0, i16 2526 }, %struct.anon.3 { i8 13, i8 0, i16 2527 }, %struct.anon.3 { i8 61, i8 0, i16 2529 }, %struct.anon.3 { i8 57, i8 0, i16 2531 }, %struct.anon.3 { i8 56, i8 0, i16 2533 }, %struct.anon.3 { i8 59, i8 0, i16 2543 }, %struct.anon.3 { i8 61, i8 0, i16 2545 }, %struct.anon.3 { i8 56, i8 0, i16 2561 }, %struct.anon.3 { i8 57, i8 0, i16 2562 }, %struct.anon.3 { i8 56, i8 0, i16 2564 }, %struct.anon.3 { i8 61, i8 0, i16 2570 }, %struct.anon.3 { i8 56, i8 0, i16 2574 }, %struct.anon.3 { i8 61, i8 0, i16 2576 }, %struct.anon.3 { i8 56, i8 0, i16 2578 }, %struct.anon.3 { i8 61, i8 0, i16 2600 }, %struct.anon.3 { i8 56, i8 0, i16 2601 }, %struct.anon.3 { i8 61, i8 0, i16 2608 }, %struct.anon.3 { i8 56, i8 0, i16 2609 }, %struct.anon.3 { i8 61, i8 0, i16 2610 }, %struct.anon.3 { i8 13, i8 0, i16 2611 }, %struct.anon.3 { i8 56, i8 0, i16 2612 }, %struct.anon.3 { i8 61, i8 0, i16 2613 }, %struct.anon.3 { i8 13, i8 0, i16 2614 }, %struct.anon.3 { i8 56, i8 0, i16 2615 }, %struct.anon.3 { i8 61, i8 0, i16 2617 }, %struct.anon.3 { i8 56, i8 0, i16 2621 }, %struct.anon.3 { i8 57, i8 0, i16 2626 }, %struct.anon.3 { i8 56, i8 0, i16 2630 }, %struct.anon.3 { i8 57, i8 0, i16 2632 }, %struct.anon.3 { i8 56, i8 0, i16 2634 }, %struct.anon.3 { i8 57, i8 0, i16 2636 }, %struct.anon.3 { i8 57, i8 9, i16 2637 }, %struct.anon.3 { i8 56, i8 0, i16 2648 }, %struct.anon.3 { i8 13, i8 0, i16 2651 }, %struct.anon.3 { i8 61, i8 0, i16 2652 }, %struct.anon.3 { i8 56, i8 0, i16 2653 }, %struct.anon.3 { i8 13, i8 0, i16 2654 }, %struct.anon.3 { i8 56, i8 0, i16 2661 }, %struct.anon.3 { i8 59, i8 0, i16 2671 }, %struct.anon.3 { i8 56, i8 0, i16 2675 }, %struct.anon.3 { i8 57, i8 0, i16 2676 }, %struct.anon.3 { i8 56, i8 0, i16 2688 }, %struct.anon.3 { i8 57, i8 0, i16 2691 }, %struct.anon.3 { i8 56, i8 0, i16 2692 }, %struct.anon.3 { i8 61, i8 0, i16 2699 }, %struct.anon.3 { i8 56, i8 0, i16 2700 }, %struct.anon.3 { i8 61, i8 0, i16 2701 }, %struct.anon.3 { i8 56, i8 0, i16 2702 }, %struct.anon.3 { i8 61, i8 0, i16 2705 }, %struct.anon.3 { i8 56, i8 0, i16 2706 }, %struct.anon.3 { i8 61, i8 0, i16 2728 }, %struct.anon.3 { i8 56, i8 0, i16 2729 }, %struct.anon.3 { i8 61, i8 0, i16 2736 }, %struct.anon.3 { i8 56, i8 0, i16 2737 }, %struct.anon.3 { i8 61, i8 0, i16 2739 }, %struct.anon.3 { i8 56, i8 0, i16 2740 }, %struct.anon.3 { i8 61, i8 0, i16 2745 }, %struct.anon.3 { i8 56, i8 0, i16 2748 }, %struct.anon.3 { i8 57, i8 0, i16 2757 }, %struct.anon.3 { i8 56, i8 0, i16 2758 }, %struct.anon.3 { i8 57, i8 0, i16 2761 }, %struct.anon.3 { i8 56, i8 0, i16 2762 }, %struct.anon.3 { i8 57, i8 0, i16 2764 }, %struct.anon.3 { i8 57, i8 9, i16 2765 }, %struct.anon.3 { i8 56, i8 0, i16 2767 }, %struct.anon.3 { i8 57, i8 0, i16 2768 }, %struct.anon.3 { i8 56, i8 0, i16 2783 }, %struct.anon.3 { i8 61, i8 0, i16 2784 }, %struct.anon.3 { i8 56, i8 0, i16 2789 }, %struct.anon.3 { i8 59, i8 0, i16 2799 }, %struct.anon.3 { i8 56, i8 0, i16 2816 }, %struct.anon.3 { i8 57, i8 0, i16 2819 }, %struct.anon.3 { i8 56, i8 0, i16 2820 }, %struct.anon.3 { i8 61, i8 0, i16 2828 }, %struct.anon.3 { i8 56, i8 0, i16 2830 }, %struct.anon.3 { i8 61, i8 0, i16 2832 }, %struct.anon.3 { i8 56, i8 0, i16 2834 }, %struct.anon.3 { i8 61, i8 0, i16 2856 }, %struct.anon.3 { i8 56, i8 0, i16 2857 }, %struct.anon.3 { i8 61, i8 0, i16 2864 }, %struct.anon.3 { i8 56, i8 0, i16 2865 }, %struct.anon.3 { i8 61, i8 0, i16 2867 }, %struct.anon.3 { i8 56, i8 0, i16 2869 }, %struct.anon.3 { i8 61, i8 0, i16 2873 }, %struct.anon.3 { i8 56, i8 0, i16 2876 }, %struct.anon.3 { i8 57, i8 0, i16 2877 }, %struct.anon.3 { i8 121, i8 0, i16 2878 }, %struct.anon.3 { i8 57, i8 0, i16 2883 }, %struct.anon.3 { i8 56, i8 0, i16 2886 }, %struct.anon.3 { i8 57, i8 0, i16 2888 }, %struct.anon.3 { i8 56, i8 0, i16 2890 }, %struct.anon.3 { i8 49, i8 0, i16 2891 }, %struct.anon.3 { i8 57, i8 0, i16 2892 }, %struct.anon.3 { i8 57, i8 9, i16 2893 }, %struct.anon.3 { i8 56, i8 0, i16 2907 }, %struct.anon.3 { i8 13, i8 0, i16 2909 }, %struct.anon.3 { i8 56, i8 0, i16 2910 }, %struct.anon.3 { i8 61, i8 0, i16 2913 }, %struct.anon.3 { i8 56, i8 0, i16 2917 }, %struct.anon.3 { i8 59, i8 0, i16 2927 }, %struct.anon.3 { i8 56, i8 0, i16 2945 }, %struct.anon.3 { i8 57, i8 0, i16 2947 }, %struct.anon.3 { i8 56, i8 0, i16 2948 }, %struct.anon.3 { i8 61, i8 0, i16 2954 }, %struct.anon.3 { i8 56, i8 0, i16 2957 }, %struct.anon.3 { i8 61, i8 0, i16 2960 }, %struct.anon.3 { i8 56, i8 0, i16 2961 }, %struct.anon.3 { i8 61, i8 0, i16 2965 }, %struct.anon.3 { i8 56, i8 0, i16 2968 }, %struct.anon.3 { i8 61, i8 0, i16 2970 }, %struct.anon.3 { i8 56, i8 0, i16 2971 }, %struct.anon.3 { i8 61, i8 0, i16 2972 }, %struct.anon.3 { i8 56, i8 0, i16 2973 }, %struct.anon.3 { i8 61, i8 0, i16 2975 }, %struct.anon.3 { i8 56, i8 0, i16 2978 }, %struct.anon.3 { i8 61, i8 0, i16 2980 }, %struct.anon.3 { i8 56, i8 0, i16 2983 }, %struct.anon.3 { i8 61, i8 0, i16 2986 }, %struct.anon.3 { i8 56, i8 0, i16 2989 }, %struct.anon.3 { i8 61, i8 0, i16 2997 }, %struct.anon.3 { i8 56, i8 0, i16 2998 }, %struct.anon.3 { i8 61, i8 0, i16 3001 }, %struct.anon.3 { i8 56, i8 0, i16 3005 }, %struct.anon.3 { i8 121, i8 0, i16 3006 }, %struct.anon.3 { i8 57, i8 0, i16 3010 }, %struct.anon.3 { i8 56, i8 0, i16 3013 }, %struct.anon.3 { i8 57, i8 0, i16 3016 }, %struct.anon.3 { i8 56, i8 0, i16 3017 }, %struct.anon.3 { i8 49, i8 0, i16 3019 }, %struct.anon.3 { i8 57, i8 0, i16 3020 }, %struct.anon.3 { i8 57, i8 9, i16 3021 }, %struct.anon.3 { i8 56, i8 0, i16 3046 }, %struct.anon.3 { i8 59, i8 0, i16 3055 }, %struct.anon.3 { i8 56, i8 0, i16 3072 }, %struct.anon.3 { i8 57, i8 0, i16 3075 }, %struct.anon.3 { i8 56, i8 0, i16 3076 }, %struct.anon.3 { i8 61, i8 0, i16 3084 }, %struct.anon.3 { i8 56, i8 0, i16 3085 }, %struct.anon.3 { i8 61, i8 0, i16 3088 }, %struct.anon.3 { i8 56, i8 0, i16 3089 }, %struct.anon.3 { i8 61, i8 0, i16 3112 }, %struct.anon.3 { i8 56, i8 0, i16 3113 }, %struct.anon.3 { i8 61, i8 0, i16 3123 }, %struct.anon.3 { i8 56, i8 0, i16 3124 }, %struct.anon.3 { i8 61, i8 0, i16 3129 }, %struct.anon.3 { i8 56, i8 0, i16 3133 }, %struct.anon.3 { i8 57, i8 0, i16 3140 }, %struct.anon.3 { i8 56, i8 0, i16 3141 }, %struct.anon.3 { i8 57, i8 0, i16 3144 }, %struct.anon.3 { i8 56, i8 0, i16 3145 }, %struct.anon.3 { i8 57, i8 0, i16 3148 }, %struct.anon.3 { i8 57, i8 9, i16 3149 }, %struct.anon.3 { i8 56, i8 0, i16 3167 }, %struct.anon.3 { i8 61, i8 0, i16 3169 }, %struct.anon.3 { i8 56, i8 0, i16 3173 }, %struct.anon.3 { i8 59, i8 0, i16 3183 }, %struct.anon.3 { i8 56, i8 0, i16 3201 }, %struct.anon.3 { i8 57, i8 0, i16 3203 }, %struct.anon.3 { i8 56, i8 0, i16 3204 }, %struct.anon.3 { i8 61, i8 0, i16 3212 }, %struct.anon.3 { i8 56, i8 0, i16 3213 }, %struct.anon.3 { i8 61, i8 0, i16 3216 }, %struct.anon.3 { i8 56, i8 0, i16 3217 }, %struct.anon.3 { i8 61, i8 0, i16 3240 }, %struct.anon.3 { i8 56, i8 0, i16 3241 }, %struct.anon.3 { i8 61, i8 0, i16 3251 }, %struct.anon.3 { i8 56, i8 0, i16 3252 }, %struct.anon.3 { i8 61, i8 0, i16 3257 }, %struct.anon.3 { i8 56, i8 0, i16 3261 }, %struct.anon.3 { i8 57, i8 0, i16 3265 }, %struct.anon.3 { i8 121, i8 0, i16 3266 }, %struct.anon.3 { i8 57, i8 0, i16 3268 }, %struct.anon.3 { i8 56, i8 0, i16 3269 }, %struct.anon.3 { i8 57, i8 0, i16 3272 }, %struct.anon.3 { i8 56, i8 0, i16 3273 }, %struct.anon.3 { i8 49, i8 0, i16 3274 }, %struct.anon.3 { i8 57, i8 0, i16 3276 }, %struct.anon.3 { i8 57, i8 9, i16 3277 }, %struct.anon.3 { i8 56, i8 0, i16 3293 }, %struct.anon.3 { i8 57, i8 0, i16 3294 }, %struct.anon.3 { i8 56, i8 0, i16 3295 }, %struct.anon.3 { i8 61, i8 0, i16 3297 }, %struct.anon.3 { i8 56, i8 0, i16 3301 }, %struct.anon.3 { i8 59, i8 0, i16 3311 }, %struct.anon.3 { i8 56, i8 0, i16 3329 }, %struct.anon.3 { i8 57, i8 0, i16 3331 }, %struct.anon.3 { i8 56, i8 0, i16 3332 }, %struct.anon.3 { i8 61, i8 0, i16 3340 }, %struct.anon.3 { i8 56, i8 0, i16 3341 }, %struct.anon.3 { i8 61, i8 0, i16 3344 }, %struct.anon.3 { i8 56, i8 0, i16 3345 }, %struct.anon.3 { i8 61, i8 0, i16 3368 }, %struct.anon.3 { i8 56, i8 0, i16 3369 }, %struct.anon.3 { i8 61, i8 0, i16 3385 }, %struct.anon.3 { i8 56, i8 0, i16 3389 }, %struct.anon.3 { i8 121, i8 0, i16 3390 }, %struct.anon.3 { i8 57, i8 0, i16 3395 }, %struct.anon.3 { i8 56, i8 0, i16 3397 }, %struct.anon.3 { i8 57, i8 0, i16 3400 }, %struct.anon.3 { i8 56, i8 0, i16 3401 }, %struct.anon.3 { i8 49, i8 0, i16 3403 }, %struct.anon.3 { i8 57, i8 0, i16 3404 }, %struct.anon.3 { i8 57, i8 9, i16 3405 }, %struct.anon.3 { i8 56, i8 0, i16 3423 }, %struct.anon.3 { i8 61, i8 0, i16 3425 }, %struct.anon.3 { i8 56, i8 0, i16 3429 }, %struct.anon.3 { i8 59, i8 0, i16 3439 }, %struct.anon.3 { i8 56, i8 0, i16 3584 }, %struct.anon.3 { i8 61, i8 0, i16 3632 }, %struct.anon.3 { i8 57, i8 0, i16 3633 }, %struct.anon.3 { i8 61, i8 0, i16 3634 }, %struct.anon.3 { i8 29, i8 0, i16 3635 }, %struct.anon.3 { i8 57, i8 0, i16 3639 }, %struct.anon.3 { i8 57, i8 103, i16 3640 }, %struct.anon.3 { i8 57, i8 103, i16 3641 }, %struct.anon.3 { i8 57, i8 9, i16 3642 }, %struct.anon.3 { i8 56, i8 0, i16 3647 }, %struct.anon.3 { i8 61, i8 0, i16 3654 }, %struct.anon.3 { i8 57, i8 0, i16 3655 }, %struct.anon.3 { i8 57, i8 107, i16 3656 }, %struct.anon.3 { i8 57, i8 107, i16 3657 }, %struct.anon.3 { i8 56, i8 0, i16 3662 }, %struct.anon.3 { i8 60, i8 0, i16 3663 }, %struct.anon.3 { i8 63, i8 0, i16 3673 }, %struct.anon.3 { i8 61, i8 0, i16 3675 }, %struct.anon.3 { i8 56, i8 0, i16 3712 }, %struct.anon.3 { i8 61, i8 0, i16 3714 }, %struct.anon.3 { i8 56, i8 0, i16 3715 }, %struct.anon.3 { i8 61, i8 0, i16 3716 }, %struct.anon.3 { i8 56, i8 0, i16 3718 }, %struct.anon.3 { i8 61, i8 0, i16 3720 }, %struct.anon.3 { i8 56, i8 0, i16 3721 }, %struct.anon.3 { i8 61, i8 0, i16 3722 }, %struct.anon.3 { i8 56, i8 0, i16 3724 }, %struct.anon.3 { i8 61, i8 0, i16 3725 }, %struct.anon.3 { i8 56, i8 0, i16 3731 }, %struct.anon.3 { i8 61, i8 0, i16 3735 }, %struct.anon.3 { i8 56, i8 0, i16 3736 }, %struct.anon.3 { i8 61, i8 0, i16 3743 }, %struct.anon.3 { i8 56, i8 0, i16 3744 }, %struct.anon.3 { i8 61, i8 0, i16 3747 }, %struct.anon.3 { i8 56, i8 0, i16 3748 }, %struct.anon.3 { i8 61, i8 0, i16 3749 }, %struct.anon.3 { i8 56, i8 0, i16 3750 }, %struct.anon.3 { i8 61, i8 0, i16 3751 }, %struct.anon.3 { i8 56, i8 0, i16 3753 }, %struct.anon.3 { i8 61, i8 0, i16 3755 }, %struct.anon.3 { i8 56, i8 0, i16 3756 }, %struct.anon.3 { i8 61, i8 0, i16 3758 }, %struct.anon.3 { i8 60, i8 0, i16 3759 }, %struct.anon.3 { i8 61, i8 0, i16 3760 }, %struct.anon.3 { i8 57, i8 0, i16 3761 }, %struct.anon.3 { i8 61, i8 0, i16 3762 }, %struct.anon.3 { i8 29, i8 0, i16 3763 }, %struct.anon.3 { i8 57, i8 0, i16 3767 }, %struct.anon.3 { i8 57, i8 118, i16 3768 }, %struct.anon.3 { i8 57, i8 118, i16 3769 }, %struct.anon.3 { i8 56, i8 0, i16 3770 }, %struct.anon.3 { i8 57, i8 0, i16 3772 }, %struct.anon.3 { i8 61, i8 0, i16 3773 }, %struct.anon.3 { i8 56, i8 0, i16 3775 }, %struct.anon.3 { i8 61, i8 0, i16 3780 }, %struct.anon.3 { i8 56, i8 0, i16 3781 }, %struct.anon.3 { i8 61, i8 0, i16 3782 }, %struct.anon.3 { i8 56, i8 0, i16 3783 }, %struct.anon.3 { i8 57, i8 122, i16 3784 }, %struct.anon.3 { i8 57, i8 122, i16 3785 }, %struct.anon.3 { i8 57, i8 122, i16 3786 }, %struct.anon.3 { i8 57, i8 0, i16 3789 }, %struct.anon.3 { i8 56, i8 0, i16 3791 }, %struct.anon.3 { i8 59, i8 0, i16 3801 }, %struct.anon.3 { i8 56, i8 0, i16 3803 }, %struct.anon.3 { i8 25, i8 0, i16 3805 }, %struct.anon.3 { i8 56, i8 0, i16 3839 }, %struct.anon.3 { i8 57, i8 0, i16 3840 }, %struct.anon.3 { i8 56, i8 0, i16 3863 }, %struct.anon.3 { i8 57, i8 -36, i16 3864 }, %struct.anon.3 { i8 57, i8 -36, i16 3865 }, %struct.anon.3 { i8 56, i8 0, i16 3871 }, %struct.anon.3 { i8 59, i8 0, i16 3891 }, %struct.anon.3 { i8 56, i8 0, i16 3892 }, %struct.anon.3 { i8 57, i8 -36, i16 3893 }, %struct.anon.3 { i8 56, i8 0, i16 3894 }, %struct.anon.3 { i8 57, i8 -36, i16 3895 }, %struct.anon.3 { i8 56, i8 0, i16 3896 }, %struct.anon.3 { i8 57, i8 -40, i16 3897 }, %struct.anon.3 { i8 56, i8 0, i16 3901 }, %struct.anon.3 { i8 57, i8 0, i16 3906 }, %struct.anon.3 { i8 1, i8 0, i16 3907 }, %struct.anon.3 { i8 57, i8 0, i16 3911 }, %struct.anon.3 { i8 56, i8 0, i16 3912 }, %struct.anon.3 { i8 57, i8 0, i16 3916 }, %struct.anon.3 { i8 1, i8 0, i16 3917 }, %struct.anon.3 { i8 57, i8 0, i16 3921 }, %struct.anon.3 { i8 1, i8 0, i16 3922 }, %struct.anon.3 { i8 57, i8 0, i16 3926 }, %struct.anon.3 { i8 1, i8 0, i16 3927 }, %struct.anon.3 { i8 57, i8 0, i16 3931 }, %struct.anon.3 { i8 1, i8 0, i16 3932 }, %struct.anon.3 { i8 57, i8 0, i16 3944 }, %struct.anon.3 { i8 1, i8 0, i16 3945 }, %struct.anon.3 { i8 56, i8 0, i16 3952 }, %struct.anon.3 { i8 57, i8 -127, i16 3953 }, %struct.anon.3 { i8 57, i8 -126, i16 3954 }, %struct.anon.3 { i8 1, i8 0, i16 3955 }, %struct.anon.3 { i8 57, i8 -124, i16 3956 }, %struct.anon.3 { i8 1, i8 0, i16 3958 }, %struct.anon.3 { i8 25, i8 0, i16 3959 }, %struct.anon.3 { i8 1, i8 0, i16 3960 }, %struct.anon.3 { i8 25, i8 0, i16 3961 }, %struct.anon.3 { i8 57, i8 -126, i16 3962 }, %struct.anon.3 { i8 57, i8 -126, i16 3963 }, %struct.anon.3 { i8 57, i8 -126, i16 3964 }, %struct.anon.3 { i8 57, i8 0, i16 3967 }, %struct.anon.3 { i8 57, i8 -126, i16 3968 }, %struct.anon.3 { i8 1, i8 0, i16 3969 }, %struct.anon.3 { i8 57, i8 -26, i16 3970 }, %struct.anon.3 { i8 57, i8 -26, i16 3971 }, %struct.anon.3 { i8 57, i8 9, i16 3972 }, %struct.anon.3 { i8 56, i8 0, i16 3973 }, %struct.anon.3 { i8 57, i8 -26, i16 3974 }, %struct.anon.3 { i8 57, i8 0, i16 3979 }, %struct.anon.3 { i8 56, i8 0, i16 3983 }, %struct.anon.3 { i8 57, i8 0, i16 3986 }, %struct.anon.3 { i8 1, i8 0, i16 3987 }, %struct.anon.3 { i8 57, i8 0, i16 3989 }, %struct.anon.3 { i8 56, i8 0, i16 3990 }, %struct.anon.3 { i8 57, i8 0, i16 3991 }, %struct.anon.3 { i8 56, i8 0, i16 3992 }, %struct.anon.3 { i8 57, i8 0, i16 3996 }, %struct.anon.3 { i8 1, i8 0, i16 3997 }, %struct.anon.3 { i8 57, i8 0, i16 4001 }, %struct.anon.3 { i8 1, i8 0, i16 4002 }, %struct.anon.3 { i8 57, i8 0, i16 4006 }, %struct.anon.3 { i8 1, i8 0, i16 4007 }, %struct.anon.3 { i8 57, i8 0, i16 4011 }, %struct.anon.3 { i8 1, i8 0, i16 4012 }, %struct.anon.3 { i8 57, i8 0, i16 4013 }, %struct.anon.3 { i8 56, i8 0, i16 4016 }, %struct.anon.3 { i8 57, i8 0, i16 4023 }, %struct.anon.3 { i8 56, i8 0, i16 4024 }, %struct.anon.3 { i8 1, i8 0, i16 4025 }, %struct.anon.3 { i8 56, i8 0, i16 4255 }, %struct.anon.3 { i8 61, i8 0, i16 4293 }, %struct.anon.3 { i8 56, i8 0, i16 4303 }, %struct.anon.3 { i8 61, i8 0, i16 4342 }, %struct.anon.3 { i8 56, i8 0, i16 4351 }, %struct.anon.3 { i8 60, i8 0, i16 4441 }, %struct.anon.3 { i8 56, i8 0, i16 4448 }, %struct.anon.3 { i8 124, i8 0, i16 4469 }, %struct.anon.3 { i8 60, i8 0, i16 4514 }, %struct.anon.3 { i8 56, i8 0, i16 4519 }, %struct.anon.3 { i8 124, i8 0, i16 4546 }, %struct.anon.3 { i8 60, i8 0, i16 4601 }, %struct.anon.3 { i8 56, i8 0, i16 7679 }, %struct.anon.3 { i8 61, i8 0, i16 7833 }, %struct.anon.3 { i8 29, i8 0, i16 7834 }, %struct.anon.3 { i8 25, i8 0, i16 7835 }, %struct.anon.3 { i8 56, i8 0, i16 7839 }, %struct.anon.3 { i8 61, i8 0, i16 7929 }, %struct.anon.3 { i8 56, i8 0, i16 7935 }, %struct.anon.3 { i8 61, i8 0, i16 7957 }, %struct.anon.3 { i8 56, i8 0, i16 7959 }, %struct.anon.3 { i8 61, i8 0, i16 7965 }, %struct.anon.3 { i8 56, i8 0, i16 7967 }, %struct.anon.3 { i8 61, i8 0, i16 8005 }, %struct.anon.3 { i8 56, i8 0, i16 8007 }, %struct.anon.3 { i8 61, i8 0, i16 8013 }, %struct.anon.3 { i8 56, i8 0, i16 8015 }, %struct.anon.3 { i8 61, i8 0, i16 8023 }, %struct.anon.3 { i8 56, i8 0, i16 8024 }, %struct.anon.3 { i8 61, i8 0, i16 8025 }, %struct.anon.3 { i8 56, i8 0, i16 8026 }, %struct.anon.3 { i8 61, i8 0, i16 8027 }, %struct.anon.3 { i8 56, i8 0, i16 8028 }, %struct.anon.3 { i8 61, i8 0, i16 8029 }, %struct.anon.3 { i8 56, i8 0, i16 8030 }, %struct.anon.3 { i8 61, i8 0, i16 8048 }, %struct.anon.3 { i8 5, i8 0, i16 8049 }, %struct.anon.3 { i8 61, i8 0, i16 8050 }, %struct.anon.3 { i8 5, i8 0, i16 8051 }, %struct.anon.3 { i8 61, i8 0, i16 8052 }, %struct.anon.3 { i8 5, i8 0, i16 8053 }, %struct.anon.3 { i8 61, i8 0, i16 8054 }, %struct.anon.3 { i8 5, i8 0, i16 8055 }, %struct.anon.3 { i8 61, i8 0, i16 8056 }, %struct.anon.3 { i8 5, i8 0, i16 8057 }, %struct.anon.3 { i8 61, i8 0, i16 8058 }, %struct.anon.3 { i8 5, i8 0, i16 8059 }, %struct.anon.3 { i8 61, i8 0, i16 8060 }, %struct.anon.3 { i8 5, i8 0, i16 8061 }, %struct.anon.3 { i8 56, i8 0, i16 8063 }, %struct.anon.3 { i8 61, i8 0, i16 8116 }, %struct.anon.3 { i8 56, i8 0, i16 8117 }, %struct.anon.3 { i8 61, i8 0, i16 8122 }, %struct.anon.3 { i8 5, i8 0, i16 8123 }, %struct.anon.3 { i8 61, i8 0, i16 8124 }, %struct.anon.3 { i8 24, i8 0, i16 8125 }, %struct.anon.3 { i8 1, i8 0, i16 8126 }, %struct.anon.3 { i8 24, i8 0, i16 8129 }, %struct.anon.3 { i8 61, i8 0, i16 8132 }, %struct.anon.3 { i8 56, i8 0, i16 8133 }, %struct.anon.3 { i8 61, i8 0, i16 8136 }, %struct.anon.3 { i8 5, i8 0, i16 8137 }, %struct.anon.3 { i8 61, i8 0, i16 8138 }, %struct.anon.3 { i8 5, i8 0, i16 8139 }, %struct.anon.3 { i8 61, i8 0, i16 8140 }, %struct.anon.3 { i8 24, i8 0, i16 8143 }, %struct.anon.3 { i8 61, i8 0, i16 8146 }, %struct.anon.3 { i8 5, i8 0, i16 8147 }, %struct.anon.3 { i8 56, i8 0, i16 8149 }, %struct.anon.3 { i8 61, i8 0, i16 8154 }, %struct.anon.3 { i8 5, i8 0, i16 8155 }, %struct.anon.3 { i8 56, i8 0, i16 8159 }, %struct.anon.3 { i8 61, i8 0, i16 8162 }, %struct.anon.3 { i8 5, i8 0, i16 8163 }, %struct.anon.3 { i8 61, i8 0, i16 8170 }, %struct.anon.3 { i8 5, i8 0, i16 8171 }, %struct.anon.3 { i8 61, i8 0, i16 8172 }, %struct.anon.3 { i8 24, i8 0, i16 8177 }, %struct.anon.3 { i8 61, i8 0, i16 8180 }, %struct.anon.3 { i8 56, i8 0, i16 8181 }, %struct.anon.3 { i8 61, i8 0, i16 8184 }, %struct.anon.3 { i8 5, i8 0, i16 8185 }, %struct.anon.3 { i8 61, i8 0, i16 8186 }, %struct.anon.3 { i8 5, i8 0, i16 8187 }, %struct.anon.3 { i8 61, i8 0, i16 8188 }, %struct.anon.3 { i8 8, i8 0, i16 8254 }, %struct.anon.3 { i8 57, i8 0, i16 8256 }, %struct.anon.3 { i8 56, i8 0, i16 8318 }, %struct.anon.3 { i8 25, i8 0, i16 8319 }, %struct.anon.3 { i8 24, i8 0, i16 8449 }, %struct.anon.3 { i8 25, i8 0, i16 8450 }, %struct.anon.3 { i8 24, i8 0, i16 8454 }, %struct.anon.3 { i8 25, i8 0, i16 8455 }, %struct.anon.3 { i8 56, i8 0, i16 8457 }, %struct.anon.3 { i8 25, i8 0, i16 8467 }, %struct.anon.3 { i8 56, i8 0, i16 8468 }, %struct.anon.3 { i8 25, i8 0, i16 8469 }, %struct.anon.3 { i8 24, i8 0, i16 8471 }, %struct.anon.3 { i8 57, i8 0, i16 8472 }, %struct.anon.3 { i8 25, i8 0, i16 8477 }, %struct.anon.3 { i8 56, i8 0, i16 8483 }, %struct.anon.3 { i8 25, i8 0, i16 8484 }, %struct.anon.3 { i8 56, i8 0, i16 8485 }, %struct.anon.3 { i8 1, i8 0, i16 8486 }, %struct.anon.3 { i8 56, i8 0, i16 8487 }, %struct.anon.3 { i8 25, i8 0, i16 8488 }, %struct.anon.3 { i8 56, i8 0, i16 8489 }, %struct.anon.3 { i8 9, i8 0, i16 8490 }, %struct.anon.3 { i8 1, i8 0, i16 8491 }, %struct.anon.3 { i8 25, i8 0, i16 8493 }, %struct.anon.3 { i8 57, i8 0, i16 8494 }, %struct.anon.3 { i8 25, i8 0, i16 8497 }, %struct.anon.3 { i8 56, i8 0, i16 8498 }, %struct.anon.3 { i8 25, i8 0, i16 8504 }, %struct.anon.3 { i8 24, i8 0, i16 8543 }, %struct.anon.3 { i8 27, i8 0, i16 8575 }, %struct.anon.3 { i8 59, i8 0, i16 8578 }, %struct.anon.3 { i8 56, i8 0, i16 12292 }, %struct.anon.3 { i8 57, i8 0, i16 12294 }, %struct.anon.3 { i8 59, i8 0, i16 12295 }, %struct.anon.3 { i8 56, i8 0, i16 12320 }, %struct.anon.3 { i8 59, i8 0, i16 12329 }, %struct.anon.3 { i8 56, i8 0, i16 12352 }, %struct.anon.3 { i8 61, i8 0, i16 12435 }, %struct.anon.3 { i8 60, i8 0, i16 12436 }, %struct.anon.3 { i8 56, i8 0, i16 12442 }, %struct.anon.3 { i8 29, i8 0, i16 12444 }, %struct.anon.3 { i8 60, i8 0, i16 12446 }, %struct.anon.3 { i8 24, i8 0, i16 12448 }, %struct.anon.3 { i8 61, i8 0, i16 12534 }, %struct.anon.3 { i8 60, i8 0, i16 12538 }, %struct.anon.3 { i8 61, i8 0, i16 12540 }, %struct.anon.3 { i8 60, i8 0, i16 12542 }, %struct.anon.3 { i8 24, i8 0, i16 12548 }, %struct.anon.3 { i8 61, i8 0, i16 12588 }, %struct.anon.3 { i8 56, i8 0, i16 19967 }, %struct.anon.3 { i8 61, i8 0, i16 -24667 }, %struct.anon.3 { i8 56, i8 0, i16 -21505 }, %struct.anon.3 { i8 57, i8 0, i16 -10333 }, %struct.anon.3 { i8 56, i8 0, i16 -1793 }, %struct.anon.3 { i8 4, i8 0, i16 -1523 }, %struct.anon.3 { i8 60, i8 0, i16 -1521 }, %struct.anon.3 { i8 4, i8 0, i16 -1520 }, %struct.anon.3 { i8 60, i8 0, i16 -1519 }, %struct.anon.3 { i8 4, i8 0, i16 -1518 }, %struct.anon.3 { i8 60, i8 0, i16 -1516 }, %struct.anon.3 { i8 4, i8 0, i16 -1506 }, %struct.anon.3 { i8 60, i8 0, i16 -1505 }, %struct.anon.3 { i8 4, i8 0, i16 -1504 }, %struct.anon.3 { i8 60, i8 0, i16 -1503 }, %struct.anon.3 { i8 4, i8 0, i16 -1502 }, %struct.anon.3 { i8 60, i8 0, i16 -1500 }, %struct.anon.3 { i8 4, i8 0, i16 -1498 }, %struct.anon.3 { i8 60, i8 0, i16 -1495 }, %struct.anon.3 { i8 4, i8 0, i16 -1491 }, %struct.anon.3 { i8 56, i8 0, i16 -1250 }, %struct.anon.3 { i8 12, i8 0, i16 -1249 }, %struct.anon.3 { i8 28, i8 0, i16 -1239 }, %struct.anon.3 { i8 12, i8 0, i16 -1226 }, %struct.anon.3 { i8 56, i8 0, i16 -1225 }, %struct.anon.3 { i8 12, i8 0, i16 -1220 }, %struct.anon.3 { i8 56, i8 0, i16 -1219 }, %struct.anon.3 { i8 12, i8 0, i16 -1218 }, %struct.anon.3 { i8 56, i8 0, i16 -1217 }, %struct.anon.3 { i8 12, i8 0, i16 -1215 }, %struct.anon.3 { i8 60, i8 0, i16 -1214 }, %struct.anon.3 { i8 12, i8 0, i16 -1212 }, %struct.anon.3 { i8 56, i8 0, i16 -1211 }, %struct.anon.3 { i8 12, i8 0, i16 -1202 }, %struct.anon.3 { i8 28, i8 0, i16 -1103 }, %struct.anon.3 { i8 56, i8 0, i16 -1070 }, %struct.anon.3 { i8 28, i8 0, i16 -707 }, %struct.anon.3 { i8 60, i8 0, i16 -705 }, %struct.anon.3 { i8 56, i8 0, i16 -689 }, %struct.anon.3 { i8 28, i8 0, i16 -625 }, %struct.anon.3 { i8 56, i8 0, i16 -623 }, %struct.anon.3 { i8 28, i8 0, i16 -569 }, %struct.anon.3 { i8 56, i8 0, i16 -529 }, %struct.anon.3 { i8 28, i8 0, i16 -517 }, %struct.anon.3 { i8 24, i8 0, i16 -401 }, %struct.anon.3 { i8 28, i8 0, i16 -398 }, %struct.anon.3 { i8 56, i8 0, i16 -397 }, %struct.anon.3 { i8 28, i8 0, i16 -396 }, %struct.anon.3 { i8 56, i8 0, i16 -395 }, %struct.anon.3 { i8 28, i8 0, i16 -260 }, %struct.anon.3 { i8 56, i8 0, i16 -224 }, %struct.anon.3 { i8 28, i8 0, i16 -198 }, %struct.anon.3 { i8 24, i8 0, i16 -192 }, %struct.anon.3 { i8 28, i8 0, i16 -166 }, %struct.anon.3 { i8 24, i8 0, i16 -155 }, %struct.anon.3 { i8 28, i8 0, i16 -66 }, %struct.anon.3 { i8 56, i8 0, i16 -63 }, %struct.anon.3 { i8 28, i8 0, i16 -57 }, %struct.anon.3 { i8 56, i8 0, i16 -55 }, %struct.anon.3 { i8 28, i8 0, i16 -49 }, %struct.anon.3 { i8 56, i8 0, i16 -47 }, %struct.anon.3 { i8 28, i8 0, i16 -41 }, %struct.anon.3 { i8 56, i8 0, i16 -39 }, %struct.anon.3 { i8 28, i8 0, i16 -36 }, %struct.anon.3 { i8 56, i8 0, i16 -1 }], align 16, !dbg !249
@.str.30 = private unnamed_addr constant [31 x i8] c"Character %x might not be NFKC\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"the meaning of '\5Ca' is different in traditional C\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"non-ISO-standard escape sequence, '\5C%c'\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"unknown escape sequence: '\5C%c'\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"%03o\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"unknown escape sequence: '\5C%s'\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"converting escape sequence to execution character set\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"converting UCN to execution character set\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"the meaning of '\5Cx' is different in traditional C\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"\5Cx used with no following hex digits\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"hex escape sequence out of range\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"octal escape sequence out of range\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"character constant too long for its type\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"multi-character character constant\00", align 1
@one_cppchar_to_utf8.masks = internal unnamed_addr constant [6 x i8] c"\00\C0\E0\F0\F8\FC", align 1, !dbg !767
@one_cppchar_to_utf8.limits = internal unnamed_addr constant [6 x i8] c"\80\E0\F0\F8\FC\FE", align 1, !dbg !782

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !795 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !800, metadata !DIExpression()), !dbg !801
  %__c.off = add i32 %__c, 128, !dbg !802
  %0 = icmp ult i32 %__c.off, 384, !dbg !802
  br i1 %0, label %cond.true, label %cond.end, !dbg !802

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #8, !dbg !803
  %1 = load i32*, i32** %call, align 8, !dbg !804
  %idxprom = sext i32 %__c to i64, !dbg !805
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !805
  %2 = load i32, i32* %arrayidx, align 4, !dbg !805
  br label %cond.end, !dbg !806

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !806
  ret i32 %cond, !dbg !807
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !808 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !810, metadata !DIExpression()), !dbg !811
  %__c.off = add i32 %__c, 128, !dbg !812
  %0 = icmp ult i32 %__c.off, 384, !dbg !812
  br i1 %0, label %cond.true, label %cond.end, !dbg !812

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #8, !dbg !813
  %1 = load i32*, i32** %call, align 8, !dbg !814
  %idxprom = sext i32 %__c to i64, !dbg !815
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !815
  %2 = load i32, i32* %arrayidx, align 4, !dbg !815
  br label %cond.end, !dbg !816

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !816
  ret i32 %cond, !dbg !817
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @cpp_init_iconv(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !818 {
entry:
  %tmp = alloca %struct.cset_converter, align 8
  %tmp23 = alloca %struct.cset_converter, align 8
  %tmp29 = alloca %struct.cset_converter, align 8
  %tmp35 = alloca %struct.cset_converter, align 8
  %tmp41 = alloca %struct.cset_converter, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !820, metadata !DIExpression()), !dbg !825
  %narrow_charset = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 37, !dbg !826
  %0 = load i8*, i8** %narrow_charset, align 8, !dbg !826
  call void @llvm.dbg.value(metadata i8* %0, metadata !821, metadata !DIExpression()), !dbg !825
  %wide_charset = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 38, !dbg !827
  %1 = load i8*, i8** %wide_charset, align 8, !dbg !827
  call void @llvm.dbg.value(metadata i8* %1, metadata !822, metadata !DIExpression()), !dbg !825
  %bytes_big_endian = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 50, !dbg !828
  %2 = load i8, i8* %bytes_big_endian, align 2, !dbg !828
  call void @llvm.dbg.value(metadata i8 %2, metadata !824, metadata !DIExpression()), !dbg !825
  %wchar_precision = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 47, !dbg !829
  %3 = load i64, i64* %wchar_precision, align 8, !dbg !829
  %cmp = icmp ugt i64 %3, 31, !dbg !831
  br i1 %cmp, label %if.then, label %if.else, !dbg !832

if.then:                                          ; preds = %entry
  %tobool = icmp eq i8 %2, 0, !dbg !833
  %cond = select i1 %tobool, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), !dbg !833
  call void @llvm.dbg.value(metadata i8* %cond, metadata !823, metadata !DIExpression()), !dbg !825
  br label %if.end13, !dbg !834

if.else:                                          ; preds = %entry
  %cmp6 = icmp ugt i64 %3, 15, !dbg !835
  br i1 %cmp6, label %if.then8, label %if.end13, !dbg !837

if.then8:                                         ; preds = %if.else
  %tobool10 = icmp eq i8 %2, 0, !dbg !838
  %cond11 = select i1 %tobool10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), !dbg !838
  call void @llvm.dbg.value(metadata i8* %cond11, metadata !823, metadata !DIExpression()), !dbg !825
  br label %if.end13, !dbg !839

if.end13:                                         ; preds = %if.then8, %if.else, %if.then
  %default_wcset.1 = phi i8* [ %cond, %if.then ], [ %cond11, %if.then8 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), %if.else ], !dbg !840
  call void @llvm.dbg.value(metadata i8* %default_wcset.1, metadata !823, metadata !DIExpression()), !dbg !825
  %tobool14 = icmp eq i8* %0, null, !dbg !841
  %spec.select = select i1 %tobool14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %0, !dbg !843
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !821, metadata !DIExpression()), !dbg !825
  %tobool17 = icmp eq i8* %1, null, !dbg !844
  %wcset.0 = select i1 %tobool17, i8* %default_wcset.1, i8* %1, !dbg !846
  call void @llvm.dbg.value(metadata i8* %wcset.0, metadata !822, metadata !DIExpression()), !dbg !825
  %narrow_cset_desc = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 36, !dbg !847
  %4 = bitcast %struct.cset_converter* %tmp to i8*, !dbg !848
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #9, !dbg !848
  call fastcc void @init_iconv_desc(%struct.cset_converter* nonnull sret %tmp, %struct.cpp_reader* %pfile, i8* %spec.select, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !848
  %5 = bitcast %struct.cset_converter* %narrow_cset_desc to i8*, !dbg !848
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !848
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #9, !dbg !848
  %char_precision = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 45, !dbg !849
  %6 = load i64, i64* %char_precision, align 8, !dbg !849
  %conv21 = trunc i64 %6 to i32, !dbg !849
  %width = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 36, i32 2, !dbg !850
  store i32 %conv21, i32* %width, align 8, !dbg !851
  %utf8_cset_desc = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 37, !dbg !852
  %7 = bitcast %struct.cset_converter* %tmp23 to i8*, !dbg !853
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #9, !dbg !853
  call fastcc void @init_iconv_desc(%struct.cset_converter* nonnull sret %tmp23, %struct.cpp_reader* %pfile, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !853
  %8 = bitcast %struct.cset_converter* %utf8_cset_desc to i8*, !dbg !853
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %7, i64 24, i1 false), !dbg !853
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #9, !dbg !853
  %9 = load i64, i64* %char_precision, align 8, !dbg !854
  %conv26 = trunc i64 %9 to i32, !dbg !854
  %width28 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 37, i32 2, !dbg !855
  store i32 %conv26, i32* %width28, align 8, !dbg !856
  %char16_cset_desc = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 38, !dbg !857
  %10 = bitcast %struct.cset_converter* %tmp29 to i8*, !dbg !858
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #9, !dbg !858
  %tobool31 = icmp eq i8 %2, 0, !dbg !859
  %cond32 = select i1 %tobool31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), !dbg !859
  call fastcc void @init_iconv_desc(%struct.cset_converter* nonnull sret %tmp29, %struct.cpp_reader* %pfile, i8* %cond32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !858
  %11 = bitcast %struct.cset_converter* %char16_cset_desc to i8*, !dbg !858
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 8 %10, i64 24, i1 false), !dbg !858
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #9, !dbg !858
  %width34 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 38, i32 2, !dbg !860
  store i32 16, i32* %width34, align 8, !dbg !861
  %char32_cset_desc = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 39, !dbg !862
  %12 = bitcast %struct.cset_converter* %tmp35 to i8*, !dbg !863
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #9, !dbg !863
  %cond38 = select i1 %tobool31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), !dbg !864
  call fastcc void @init_iconv_desc(%struct.cset_converter* nonnull sret %tmp35, %struct.cpp_reader* %pfile, i8* %cond38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !863
  %13 = bitcast %struct.cset_converter* %char32_cset_desc to i8*, !dbg !863
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %13, i8* nonnull align 8 %12, i64 24, i1 false), !dbg !863
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #9, !dbg !863
  %width40 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 39, i32 2, !dbg !865
  store i32 32, i32* %width40, align 8, !dbg !866
  %wide_cset_desc = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 40, !dbg !867
  %14 = bitcast %struct.cset_converter* %tmp41 to i8*, !dbg !868
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #9, !dbg !868
  call fastcc void @init_iconv_desc(%struct.cset_converter* nonnull sret %tmp41, %struct.cpp_reader* %pfile, i8* %wcset.0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !868
  %15 = bitcast %struct.cset_converter* %wide_cset_desc to i8*, !dbg !868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %15, i8* nonnull align 8 %14, i64 24, i1 false), !dbg !868
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #9, !dbg !868
  %16 = load i64, i64* %wchar_precision, align 8, !dbg !869
  %conv44 = trunc i64 %16 to i32, !dbg !869
  %width46 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 40, i32 2, !dbg !870
  store i32 %conv44, i32* %width46, align 8, !dbg !871
  ret void, !dbg !872
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @init_iconv_desc(%struct.cset_converter* noalias sret %agg.result, %struct.cpp_reader* %pfile, i8* %to, i8* %from) unnamed_addr #3 !dbg !873 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !877, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i8* %to, metadata !878, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i8* %from, metadata !879, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.declare(metadata %struct.cset_converter* %agg.result, metadata !880, metadata !DIExpression()), !dbg !884
  %call = tail call i32 @strcasecmp(i8* %to, i8* %from) #11, !dbg !885
  %tobool = icmp eq i32 %call, 0, !dbg !885
  br i1 %tobool, label %if.then, label %if.end, !dbg !887

if.then:                                          ; preds = %entry
  %func = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %agg.result, i64 0, i32 0, !dbg !888
  store i8 (i8*, i8*, i64, %struct._cpp_strbuf*)* @convert_no_conversion, i8 (i8*, i8*, i64, %struct._cpp_strbuf*)** %func, align 8, !dbg !890
  %cd = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %agg.result, i64 0, i32 1, !dbg !891
  store i8* inttoptr (i64 -1 to i8*), i8** %cd, align 8, !dbg !892
  %width = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %agg.result, i64 0, i32 2, !dbg !893
  store i32 -1, i32* %width, align 8, !dbg !894
  br label %cleanup, !dbg !895

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @strlen(i8* %to) #11, !dbg !896
  %call2 = tail call i64 @strlen(i8* %from) #11, !dbg !896
  %add = add i64 %call1, %call2, !dbg !896
  %add3 = add i64 %add, 2, !dbg !896
  %0 = alloca i8, i64 %add3, align 16, !dbg !896
  call void @llvm.dbg.value(metadata i8* %0, metadata !881, metadata !DIExpression()), !dbg !883
  %call4 = call i8* @strcpy(i8* nonnull %0, i8* %from) #8, !dbg !897
  %call5 = call i8* @strcat(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !898
  %call6 = call i8* @strcat(i8* nonnull %0, i8* %to) #8, !dbg !899
  call void @llvm.dbg.value(metadata i64 0, metadata !882, metadata !DIExpression()), !dbg !883
  br label %for.cond, !dbg !900

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i64 [ 0, %if.end ], [ %inc, %for.inc ], !dbg !902
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !882, metadata !DIExpression()), !dbg !883
  %exitcond = icmp eq i64 %i.0, 8, !dbg !903
  br i1 %exitcond, label %for.end, label %for.body, !dbg !905

for.body:                                         ; preds = %for.cond
  %pair7 = getelementptr inbounds [8 x %struct.conversion], [8 x %struct.conversion]* @conversion_tab, i64 0, i64 %i.0, i32 0, !dbg !906
  %1 = load i8*, i8** %pair7, align 8, !dbg !906
  %call8 = call i32 @strcasecmp(i8* nonnull %0, i8* %1) #11, !dbg !908
  %tobool9 = icmp eq i32 %call8, 0, !dbg !908
  br i1 %tobool9, label %if.then10, label %for.inc, !dbg !909

if.then10:                                        ; preds = %for.body
  %i.0.lcssa3 = phi i64 [ %i.0, %for.body ], !dbg !902
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa3, metadata !882, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa3, metadata !882, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %i.0.lcssa3, metadata !882, metadata !DIExpression()), !dbg !883
  %func12 = getelementptr inbounds [8 x %struct.conversion], [8 x %struct.conversion]* @conversion_tab, i64 0, i64 %i.0.lcssa3, i32 1, !dbg !910
  %2 = bitcast i8 (i8*, i8*, i64, %struct._cpp_strbuf*)** %func12 to i64*, !dbg !910
  %3 = load i64, i64* %2, align 8, !dbg !910
  %4 = bitcast %struct.cset_converter* %agg.result to i64*, !dbg !912
  store i64 %3, i64* %4, align 8, !dbg !912
  %fake_cd = getelementptr inbounds [8 x %struct.conversion], [8 x %struct.conversion]* @conversion_tab, i64 0, i64 %i.0.lcssa3, i32 2, !dbg !913
  %5 = bitcast i8** %fake_cd to i64*, !dbg !913
  %6 = load i64, i64* %5, align 8, !dbg !913
  %cd15 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %agg.result, i64 0, i32 1, !dbg !914
  %7 = bitcast i8** %cd15 to i64*, !dbg !915
  store i64 %6, i64* %7, align 8, !dbg !915
  %width16 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %agg.result, i64 0, i32 2, !dbg !916
  store i32 -1, i32* %width16, align 8, !dbg !917
  br label %cleanup, !dbg !918

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i64 %i.0, 1, !dbg !919
  call void @llvm.dbg.value(metadata i64 %inc, metadata !882, metadata !DIExpression()), !dbg !883
  br label %for.cond, !dbg !920, !llvm.loop !921

for.end:                                          ; preds = %for.cond
  %func18 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %agg.result, i64 0, i32 0, !dbg !923
  store i8 (i8*, i8*, i64, %struct._cpp_strbuf*)* @convert_using_iconv, i8 (i8*, i8*, i64, %struct._cpp_strbuf*)** %func18, align 8, !dbg !926
  %call19 = tail call i32* @__errno_location() #12, !dbg !927
  store i32 22, i32* %call19, align 4, !dbg !927
  %cd20 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %agg.result, i64 0, i32 1, !dbg !928
  store i8* inttoptr (i64 -1 to i8*), i8** %cd20, align 8, !dbg !929
  %width21 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %agg.result, i64 0, i32 2, !dbg !930
  store i32 -1, i32* %width21, align 8, !dbg !931
  br i1 true, label %if.then27, label %if.else, !dbg !932

if.then27:                                        ; preds = %for.end
  %call28 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i64 0, i64 0), i8* %from, i8* %to) #8, !dbg !935
  br label %if.end30, !dbg !935

if.else:                                          ; preds = %for.end
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then27
  store i8 (i8*, i8*, i64, %struct._cpp_strbuf*)* @convert_no_conversion, i8 (i8*, i8*, i64, %struct._cpp_strbuf*)** %func18, align 8, !dbg !937
  br label %cleanup, !dbg !938

cleanup:                                          ; preds = %if.end30, %if.then10, %if.then
  ret void, !dbg !939
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @_cpp_destroy_iconv(%struct.cpp_reader* %pfile) local_unnamed_addr #3 !dbg !940 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !942, metadata !DIExpression()), !dbg !943
  ret void, !dbg !944
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @convert_using_iconv(i8* %cd, i8* %from, i64 %flen, %struct._cpp_strbuf* %to) #3 !dbg !945 {
entry:
  call void @llvm.dbg.value(metadata i8* %cd, metadata !949, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i8* %from, metadata !950, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 %flen, metadata !951, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %to, metadata !952, metadata !DIExpression()), !dbg !957
  %call = tail call i32* @__errno_location() #12, !dbg !958
  store i32 22, i32* %call, align 4, !dbg !958
  ret i8 0, !dbg !960
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cpp_host_to_exec_charset(%struct.cpp_reader* %pfile, i32 %c) local_unnamed_addr #3 !dbg !961 {
entry:
  %sbuf = alloca [1 x i8], align 1
  %tbuf = alloca %struct._cpp_strbuf, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !965, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i32 %c, metadata !966, metadata !DIExpression()), !dbg !970
  %0 = getelementptr inbounds [1 x i8], [1 x i8]* %sbuf, i64 0, i64 0, !dbg !971
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %0) #9, !dbg !971
  call void @llvm.dbg.declare(metadata [1 x i8]* %sbuf, metadata !967, metadata !DIExpression()), !dbg !972
  %1 = bitcast %struct._cpp_strbuf* %tbuf to i8*, !dbg !973
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #9, !dbg !973
  %cmp = icmp ugt i32 %c, 126, !dbg !974
  br i1 %cmp, label %if.then, label %if.end, !dbg !976

if.then:                                          ; preds = %entry
  %conv = zext i32 %c to i64, !dbg !977
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i64 %conv) #8, !dbg !979
  br label %cleanup, !dbg !980

if.end:                                           ; preds = %entry
  %conv1 = trunc i32 %c to i8, !dbg !981
  store i8 %conv1, i8* %0, align 1, !dbg !982
  %asize = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %tbuf, i64 0, i32 1, !dbg !983
  store i64 1, i64* %asize, align 8, !dbg !984
  %call3 = tail call i8* @xmalloc(i64 1) #8, !dbg !985
  %text = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %tbuf, i64 0, i32 0, !dbg !986
  store i8* %call3, i8** %text, align 8, !dbg !987
  %len = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %tbuf, i64 0, i32 2, !dbg !988
  store i64 0, i64* %len, align 8, !dbg !989
  %func = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 36, i32 0, !dbg !990
  %2 = load i8 (i8*, i8*, i64, %struct._cpp_strbuf*)*, i8 (i8*, i8*, i64, %struct._cpp_strbuf*)** %func, align 8, !dbg !990
  %cd = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 36, i32 1, !dbg !990
  %3 = load i8*, i8** %cd, align 8, !dbg !990
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %tbuf, metadata !969, metadata !DIExpression(DW_OP_deref)), !dbg !970
  %call5 = call zeroext i8 %2(i8* %3, i8* nonnull %0, i64 1, %struct._cpp_strbuf* nonnull %tbuf) #8, !dbg !990
  %tobool = icmp eq i8 %call5, 0, !dbg !990
  br i1 %tobool, label %if.then6, label %if.end8, !dbg !992

if.then6:                                         ; preds = %if.end
  %call7 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !993
  br label %cleanup, !dbg !995

if.end8:                                          ; preds = %if.end
  %4 = load i64, i64* %len, align 8, !dbg !996
  %cmp10 = icmp eq i64 %4, 1, !dbg !998
  br i1 %cmp10, label %if.end15, label %if.then12, !dbg !999

if.then12:                                        ; preds = %if.end8
  %conv13 = zext i32 %c to i64, !dbg !1000
  %call14 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i64 %conv13) #8, !dbg !1002
  br label %cleanup, !dbg !1003

if.end15:                                         ; preds = %if.end8
  %5 = load i8*, i8** %text, align 8, !dbg !1004
  %6 = load i8, i8* %5, align 1, !dbg !1005
  %conv18 = zext i8 %6 to i32, !dbg !1005
  call void @llvm.dbg.value(metadata i32 %conv18, metadata !966, metadata !DIExpression()), !dbg !970
  call void @free(i8* %5) #8, !dbg !1006
  br label %cleanup, !dbg !1007

cleanup:                                          ; preds = %if.end15, %if.then12, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then12 ], [ %conv18, %if.end15 ], [ 0, %if.then6 ], !dbg !970
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #9, !dbg !1008
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %0) #9, !dbg !1008
  ret i32 %retval.0, !dbg !1008
}

declare dso_local zeroext i8 @cpp_error(%struct.cpp_reader*, i32, i8*, ...) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local zeroext i8 @cpp_errno(%struct.cpp_reader*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @_cpp_valid_ucn(%struct.cpp_reader* %pfile, i8** %pstr, i8* %limit, i32 %identifier_pos, %struct.normalize_state* %nst) local_unnamed_addr #3 !dbg !1009 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1019, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8** %pstr, metadata !1020, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i8* %limit, metadata !1021, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32 %identifier_pos, metadata !1022, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata %struct.normalize_state* %nst, metadata !1023, metadata !DIExpression()), !dbg !1035
  %0 = load i8*, i8** %pstr, align 8, !dbg !1036
  call void @llvm.dbg.value(metadata i8* %0, metadata !1027, metadata !DIExpression()), !dbg !1035
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !1037
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1028, metadata !DIExpression()), !dbg !1035
  %cplusplus = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 2, !dbg !1038
  %1 = load i8, i8* %cplusplus, align 8, !dbg !1038
  %tobool = icmp eq i8 %1, 0, !dbg !1038
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !1040

land.lhs.true:                                    ; preds = %entry
  %c99 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 29, !dbg !1041
  %2 = load i8, i8* %c99, align 1, !dbg !1041
  %tobool2 = icmp eq i8 %2, 0, !dbg !1041
  br i1 %tobool2, label %if.then, label %if.else, !dbg !1042

if.then:                                          ; preds = %land.lhs.true
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !1043
  br label %if.end10, !dbg !1043

if.else:                                          ; preds = %land.lhs.true, %entry
  %warn_traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 17, !dbg !1044
  %3 = load i8, i8* %warn_traditional, align 1, !dbg !1044
  %tobool4 = icmp ne i8 %3, 0, !dbg !1044
  %cmp = icmp eq i32 %identifier_pos, 0, !dbg !1046
  %or.cond = and i1 %tobool4, %cmp, !dbg !1047
  br i1 %or.cond, label %if.then7, label %if.end10, !dbg !1047

if.then7:                                         ; preds = %if.else
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1048
  %4 = load i8, i8* %arrayidx, align 1, !dbg !1048
  %conv8 = zext i8 %4 to i32, !dbg !1049
  %call9 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i32 %conv8) #8, !dbg !1050
  br label %if.end10, !dbg !1050

if.end10:                                         ; preds = %if.else, %if.then7, %if.then
  %arrayidx11 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1051
  %5 = load i8, i8* %arrayidx11, align 1, !dbg !1051
  %cmp13 = icmp eq i8 %5, 117, !dbg !1053
  br i1 %cmp13, label %if.end25, label %if.else16, !dbg !1054

if.else16:                                        ; preds = %if.end10
  %cmp19 = icmp eq i8 %5, 85, !dbg !1055
  br i1 %cmp19, label %if.end25, label %if.else22, !dbg !1057

if.else22:                                        ; preds = %if.else16
  %call23 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !1058
  call void @llvm.dbg.value(metadata i32 4, metadata !1026, metadata !DIExpression()), !dbg !1035
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.else16, %if.end10
  %length.1 = phi i32 [ 4, %if.end10 ], [ 4, %if.else22 ], [ 8, %if.else16 ], !dbg !1060
  call void @llvm.dbg.value(metadata i32 %length.1, metadata !1026, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32 0, metadata !1024, metadata !DIExpression()), !dbg !1035
  br label %do.body, !dbg !1061

do.body:                                          ; preds = %if.end32, %if.end25
  %result.0 = phi i32 [ 0, %if.end25 ], [ %add, %if.end32 ], !dbg !1035
  %length.2 = phi i32 [ %length.1, %if.end25 ], [ %dec, %if.end32 ], !dbg !1035
  %str.0 = phi i8* [ %0, %if.end25 ], [ %incdec.ptr, %if.end32 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8* %str.0, metadata !1027, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32 %length.2, metadata !1026, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32 %result.0, metadata !1024, metadata !DIExpression()), !dbg !1035
  %6 = load i8, i8* %str.0, align 1, !dbg !1062
  call void @llvm.dbg.value(metadata i8 %6, metadata !1025, metadata !DIExpression()), !dbg !1035
  %idxprom = zext i8 %6 to i64, !dbg !1064
  %arrayidx27 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !1064
  %7 = load i16, i16* %arrayidx27, align 2, !dbg !1064
  %8 = and i16 %7, 256, !dbg !1064
  %tobool30 = icmp eq i16 %8, 0, !dbg !1064
  br i1 %tobool30, label %do.end, label %if.end32, !dbg !1066

if.end32:                                         ; preds = %do.body
  call void @llvm.dbg.value(metadata i8 %6, metadata !1025, metadata !DIExpression()), !dbg !1035
  %incdec.ptr = getelementptr inbounds i8, i8* %str.0, i64 1, !dbg !1067
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1027, metadata !DIExpression()), !dbg !1035
  %shl = shl i32 %result.0, 4, !dbg !1068
  %arrayidx35 = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i64 0, i64 %idxprom, !dbg !1069
  %9 = load i8, i8* %arrayidx35, align 1, !dbg !1069
  %conv36 = zext i8 %9 to i32, !dbg !1069
  %add = add i32 %shl, %conv36, !dbg !1070
  call void @llvm.dbg.value(metadata i32 %add, metadata !1024, metadata !DIExpression()), !dbg !1035
  %dec = add i32 %length.2, -1, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1026, metadata !DIExpression()), !dbg !1035
  %tobool37 = icmp ne i32 %dec, 0, !dbg !1071
  %cmp38 = icmp ult i8* %incdec.ptr, %limit, !dbg !1072
  %10 = and i1 %cmp38, %tobool37, !dbg !1072
  br i1 %10, label %do.body, label %do.end, !dbg !1073, !llvm.loop !1074

do.end:                                           ; preds = %do.body, %if.end32
  %result.1 = phi i32 [ %add, %if.end32 ], [ %result.0, %do.body ], !dbg !1035
  %length.3 = phi i32 [ %dec, %if.end32 ], [ %length.2, %do.body ], !dbg !1035
  %str.1 = phi i8* [ %incdec.ptr, %if.end32 ], [ %str.0, %do.body ], !dbg !1035
  call void @llvm.dbg.value(metadata i8* %str.1, metadata !1027, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32 %length.3, metadata !1026, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i32 %result.1, metadata !1024, metadata !DIExpression()), !dbg !1035
  %tobool40 = icmp ne i32 %length.3, 0, !dbg !1076
  %tobool42 = icmp ne i32 %identifier_pos, 0, !dbg !1078
  %or.cond1 = and i1 %tobool40, %tobool42, !dbg !1079
  br i1 %or.cond1, label %cleanup, label %if.end44, !dbg !1079

if.end44:                                         ; preds = %do.end
  store i8* %str.1, i8** %pstr, align 8, !dbg !1080
  %tobool45 = icmp eq i32 %length.3, 0, !dbg !1081
  br i1 %tobool45, label %if.else49, label %if.then46, !dbg !1082

if.then46:                                        ; preds = %if.end44
  %sub.ptr.lhs.cast = ptrtoint i8* %str.1 to i64, !dbg !1083
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr to i64, !dbg !1083
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1083
  %conv47 = trunc i64 %sub.ptr.sub to i32, !dbg !1085
  %call48 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %conv47, i8* nonnull %add.ptr) #8, !dbg !1086
  call void @llvm.dbg.value(metadata i32 1, metadata !1024, metadata !DIExpression()), !dbg !1035
  br label %if.end128, !dbg !1087

if.else49:                                        ; preds = %if.end44
  %cmp50 = icmp ult i32 %result.1, 160, !dbg !1088
  br i1 %cmp50, label %land.lhs.true52, label %lor.lhs.false, !dbg !1089

land.lhs.true52:                                  ; preds = %if.else49
  %11 = load i8, i8* %cplusplus, align 8, !dbg !1090
  %tobool55 = icmp eq i8 %11, 0, !dbg !1090
  br i1 %tobool55, label %switch.early.test, label %lor.lhs.false, !dbg !1091

switch.early.test:                                ; preds = %land.lhs.true52
  switch i32 %result.1, label %if.then73 [
    i32 96, label %lor.lhs.false
    i32 64, label %lor.lhs.false
    i32 36, label %lor.lhs.false
  ], !dbg !1091

lor.lhs.false:                                    ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %land.lhs.true52, %if.else49
  %tobool66 = icmp slt i32 %result.1, 0, !dbg !1092
  br i1 %tobool66, label %if.then73, label %lor.lhs.false67, !dbg !1093

lor.lhs.false67:                                  ; preds = %lor.lhs.false
  %12 = and i32 %result.1, -2048, !dbg !1094
  %13 = icmp eq i32 %12, 55296, !dbg !1094
  br i1 %13, label %if.then73, label %if.else79, !dbg !1094

if.then73:                                        ; preds = %switch.early.test, %lor.lhs.false67, %lor.lhs.false
  %sub.ptr.lhs.cast74 = ptrtoint i8* %str.1 to i64, !dbg !1095
  %sub.ptr.rhs.cast75 = ptrtoint i8* %add.ptr to i64, !dbg !1095
  %sub.ptr.sub76 = sub i64 %sub.ptr.lhs.cast74, %sub.ptr.rhs.cast75, !dbg !1095
  %conv77 = trunc i64 %sub.ptr.sub76 to i32, !dbg !1097
  %call78 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %conv77, i8* nonnull %add.ptr) #8, !dbg !1098
  call void @llvm.dbg.value(metadata i32 1, metadata !1024, metadata !DIExpression()), !dbg !1035
  br label %if.end128, !dbg !1099

if.else79:                                        ; preds = %lor.lhs.false67
  %cmp82 = icmp eq i32 %result.1, 36, !dbg !1100
  %or.cond6 = and i1 %tobool42, %cmp82, !dbg !1101
  br i1 %or.cond6, label %land.lhs.true84, label %if.else99, !dbg !1101

land.lhs.true84:                                  ; preds = %if.else79
  %dollars_in_ident = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 24, !dbg !1102
  %14 = load i8, i8* %dollars_in_ident, align 2, !dbg !1102
  %tobool87 = icmp eq i8 %14, 0, !dbg !1102
  br i1 %tobool87, label %if.else99, label %if.then88, !dbg !1103

if.then88:                                        ; preds = %land.lhs.true84
  %warn_dollars = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 26, !dbg !1104
  %15 = load i8, i8* %warn_dollars, align 8, !dbg !1104
  %tobool91 = icmp eq i8 %15, 0, !dbg !1104
  br i1 %tobool91, label %if.end98, label %land.lhs.true92, !dbg !1107

land.lhs.true92:                                  ; preds = %if.then88
  %skipping = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 2, i32 2, !dbg !1108
  %16 = load i8, i8* %skipping, align 2, !dbg !1108
  %tobool93 = icmp eq i8 %16, 0, !dbg !1109
  br i1 %tobool93, label %if.then94, label %if.end98, !dbg !1110

if.then94:                                        ; preds = %land.lhs.true92
  store i8 0, i8* %warn_dollars, align 8, !dbg !1111
  %call97 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !1113
  br label %if.end98, !dbg !1114

if.end98:                                         ; preds = %land.lhs.true92, %if.then88, %if.then94
  %previous = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 0, !dbg !1115
  store i32 0, i32* %previous, align 4, !dbg !1115
  %prev_class = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 1, !dbg !1115
  store i8 0, i8* %prev_class, align 4, !dbg !1115
  br label %if.end128, !dbg !1116

if.else99:                                        ; preds = %land.lhs.true84, %if.else79
  %tobool100 = icmp eq i32 %identifier_pos, 0, !dbg !1117
  br i1 %tobool100, label %if.end128, label %if.then101, !dbg !1118

if.then101:                                       ; preds = %if.else99
  %call102 = tail call fastcc i32 @ucn_valid_in_identifier(%struct.cpp_reader* %pfile, i32 %result.1, %struct.normalize_state* %nst) #10, !dbg !1119
  call void @llvm.dbg.value(metadata i32 %call102, metadata !1029, metadata !DIExpression()), !dbg !1120
  switch i32 %call102, label %if.end128 [
    i32 0, label %if.then105
    i32 2, label %land.lhs.true114
  ], !dbg !1121

if.then105:                                       ; preds = %if.then101
  %sub.ptr.lhs.cast106 = ptrtoint i8* %str.1 to i64, !dbg !1122
  %sub.ptr.rhs.cast107 = ptrtoint i8* %add.ptr to i64, !dbg !1122
  %sub.ptr.sub108 = sub i64 %sub.ptr.lhs.cast106, %sub.ptr.rhs.cast107, !dbg !1122
  %conv109 = trunc i64 %sub.ptr.sub108 to i32, !dbg !1124
  %call110 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0), i32 %conv109, i8* nonnull %add.ptr) #8, !dbg !1125
  br label %if.end128, !dbg !1125

land.lhs.true114:                                 ; preds = %if.then101
  %cmp115 = icmp eq i32 %identifier_pos, 1, !dbg !1126
  br i1 %cmp115, label %if.then117, label %if.end128, !dbg !1128

if.then117:                                       ; preds = %land.lhs.true114
  %sub.ptr.lhs.cast118 = ptrtoint i8* %str.1 to i64, !dbg !1129
  %sub.ptr.rhs.cast119 = ptrtoint i8* %add.ptr to i64, !dbg !1129
  %sub.ptr.sub120 = sub i64 %sub.ptr.lhs.cast118, %sub.ptr.rhs.cast119, !dbg !1129
  %conv121 = trunc i64 %sub.ptr.sub120 to i32, !dbg !1130
  %call122 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0), i32 %conv121, i8* nonnull %add.ptr) #8, !dbg !1131
  br label %if.end128, !dbg !1131

if.end128:                                        ; preds = %if.else99, %if.then73, %land.lhs.true114, %if.then117, %if.then101, %if.then105, %if.end98, %if.then46
  %result.3 = phi i32 [ 1, %if.then46 ], [ 1, %if.then73 ], [ %result.1, %if.else99 ], [ %result.1, %land.lhs.true114 ], [ %result.1, %if.then117 ], [ %result.1, %if.then101 ], [ %result.1, %if.then105 ], [ 36, %if.end98 ], !dbg !1132
  call void @llvm.dbg.value(metadata i32 %result.3, metadata !1024, metadata !DIExpression()), !dbg !1035
  %cmp129 = icmp eq i32 %result.3, 0, !dbg !1133
  %spec.select = select i1 %cmp129, i32 1, i32 %result.3, !dbg !1135
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1024, metadata !DIExpression()), !dbg !1035
  br label %cleanup, !dbg !1136

cleanup:                                          ; preds = %do.end, %if.end128
  %retval.0 = phi i32 [ %spec.select, %if.end128 ], [ 0, %do.end ], !dbg !1035
  ret i32 %retval.0, !dbg !1137
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ucn_valid_in_identifier(%struct.cpp_reader* %pfile, i32 %c, %struct.normalize_state* %nst) unnamed_addr #3 !dbg !1138 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1142, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i32 %c, metadata !1143, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata %struct.normalize_state* %nst, metadata !1144, metadata !DIExpression()), !dbg !1153
  %cmp = icmp ugt i32 %c, 65535, !dbg !1154
  br i1 %cmp, label %cleanup, label %while.cond.preheader, !dbg !1156

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !1157

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %mn.0 = phi i32 [ %mn.1, %while.body ], [ 0, %while.cond.preheader ], !dbg !1158
  %mx.0 = phi i32 [ %mx.1, %while.body ], [ 746, %while.cond.preheader ], !dbg !1153
  call void @llvm.dbg.value(metadata i32 %mx.0, metadata !1146, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i32 %mn.0, metadata !1145, metadata !DIExpression()), !dbg !1153
  %cmp1 = icmp eq i32 %mx.0, %mn.0, !dbg !1159
  br i1 %cmp1, label %while.end, label %while.body, !dbg !1157

while.body:                                       ; preds = %while.cond
  %add = add nsw i32 %mn.0, %mx.0, !dbg !1160
  %div = sdiv i32 %add, 2, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %div, metadata !1147, metadata !DIExpression()), !dbg !1153
  %idxprom = sext i32 %div to i64, !dbg !1163
  %end = getelementptr inbounds [747 x %struct.anon.3], [747 x %struct.anon.3]* @ucnranges, i64 0, i64 %idxprom, i32 2, !dbg !1165
  %0 = load i16, i16* %end, align 2, !dbg !1165
  %conv = zext i16 %0 to i32, !dbg !1163
  %cmp2 = icmp uge i32 %conv, %c, !dbg !1166
  %add5 = add nsw i32 %div, 1, !dbg !1167
  %mn.1 = select i1 %cmp2, i32 %mn.0, i32 %add5, !dbg !1167
  %mx.1 = select i1 %cmp2, i32 %div, i32 %mx.0, !dbg !1167
  call void @llvm.dbg.value(metadata i32 %mx.1, metadata !1146, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i32 %mn.1, metadata !1145, metadata !DIExpression()), !dbg !1153
  br label %while.cond, !dbg !1157, !llvm.loop !1168

while.end:                                        ; preds = %while.cond
  %mn.0.lcssa = phi i32 [ %mn.0, %while.cond ], !dbg !1158
  call void @llvm.dbg.value(metadata i32 %mn.0.lcssa, metadata !1145, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i32 %mn.0.lcssa, metadata !1145, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i32 %mn.0.lcssa, metadata !1145, metadata !DIExpression()), !dbg !1153
  %idxprom7 = sext i32 %mn.0.lcssa to i64, !dbg !1170
  %flags = getelementptr inbounds [747 x %struct.anon.3], [747 x %struct.anon.3]* @ucnranges, i64 0, i64 %idxprom7, i32 0, !dbg !1172
  %1 = load i8, i8* %flags, align 4, !dbg !1172
  %2 = and i8 %1, 5, !dbg !1173
  %tobool = icmp eq i8 %2, 0, !dbg !1173
  br i1 %tobool, label %cleanup, label %if.end11, !dbg !1174

if.end11:                                         ; preds = %while.end
  %pedantic = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !1175
  %3 = load i8, i8* %pedantic, align 1, !dbg !1175
  %tobool13 = icmp eq i8 %3, 0, !dbg !1175
  br i1 %tobool13, label %if.end35, label %land.lhs.true, !dbg !1177

land.lhs.true:                                    ; preds = %if.end11
  %c99 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 29, !dbg !1178
  %4 = load i8, i8* %c99, align 1, !dbg !1178
  %tobool16 = icmp eq i8 %4, 0, !dbg !1178
  br i1 %tobool16, label %lor.lhs.false, label %land.lhs.true17, !dbg !1179

land.lhs.true17:                                  ; preds = %land.lhs.true
  %5 = and i8 %1, 1, !dbg !1180
  %tobool23 = icmp eq i8 %5, 0, !dbg !1180
  br i1 %tobool23, label %cleanup, label %lor.lhs.false, !dbg !1181

lor.lhs.false:                                    ; preds = %land.lhs.true17, %land.lhs.true
  %cplusplus = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 2, !dbg !1182
  %6 = load i8, i8* %cplusplus, align 8, !dbg !1182
  %tobool26 = icmp eq i8 %6, 0, !dbg !1182
  br i1 %tobool26, label %if.end35, label %land.lhs.true27, !dbg !1183

land.lhs.true27:                                  ; preds = %lor.lhs.false
  %7 = and i8 %1, 4, !dbg !1184
  %tobool33 = icmp eq i8 %7, 0, !dbg !1184
  br i1 %tobool33, label %cleanup, label %if.end35, !dbg !1185

if.end35:                                         ; preds = %land.lhs.true27, %lor.lhs.false, %if.end11
  %combine = getelementptr inbounds [747 x %struct.anon.3], [747 x %struct.anon.3]* @ucnranges, i64 0, i64 %idxprom7, i32 1, !dbg !1186
  %8 = load i8, i8* %combine, align 1, !dbg !1186
  %cmp39 = icmp eq i8 %8, 0, !dbg !1187
  br i1 %cmp39, label %if.else50, label %land.lhs.true41, !dbg !1188

land.lhs.true41:                                  ; preds = %if.end35
  %prev_class = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 1, !dbg !1189
  %9 = load i8, i8* %prev_class, align 4, !dbg !1189
  %cmp47 = icmp ult i8 %8, %9, !dbg !1190
  br i1 %cmp47, label %if.then49, label %if.else50, !dbg !1191

if.then49:                                        ; preds = %land.lhs.true41
  %level = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 2, !dbg !1192
  store i32 3, i32* %level, align 4, !dbg !1193
  br label %if.end201, !dbg !1194

if.else50:                                        ; preds = %if.end35, %land.lhs.true41
  %10 = and i8 %1, 64, !dbg !1195
  %tobool56 = icmp eq i8 %10, 0, !dbg !1195
  br i1 %tobool56, label %if.else153, label %if.then57, !dbg !1196

if.then57:                                        ; preds = %if.else50
  %previous = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 0, !dbg !1197
  %11 = load i32, i32* %previous, align 4, !dbg !1197
  call void @llvm.dbg.value(metadata i32 %11, metadata !1152, metadata !DIExpression()), !dbg !1198
  switch i32 %c, label %if.else99 [
    i32 2494, label %if.then60
    i32 2878, label %if.then67
    i32 3006, label %if.then74
    i32 3266, label %if.then83
    i32 3390, label %if.then90
  ], !dbg !1199

if.then60:                                        ; preds = %if.then57
  %cmp61 = icmp ne i32 %11, 2503, !dbg !1200
  %conv63 = zext i1 %cmp61 to i8, !dbg !1202
  call void @llvm.dbg.value(metadata i8 %conv63, metadata !1148, metadata !DIExpression()), !dbg !1198
  br label %if.end136, !dbg !1203

if.then67:                                        ; preds = %if.then57
  %cmp68 = icmp ne i32 %11, 2887, !dbg !1204
  %conv70 = zext i1 %cmp68 to i8, !dbg !1206
  call void @llvm.dbg.value(metadata i8 %conv70, metadata !1148, metadata !DIExpression()), !dbg !1198
  br label %if.end136, !dbg !1207

if.then74:                                        ; preds = %if.then57
  %12 = or i32 %11, 1, !dbg !1208
  %13 = icmp ne i32 %12, 3015, !dbg !1208
  %conv79 = zext i1 %13 to i8, !dbg !1210
  call void @llvm.dbg.value(metadata i8 %conv79, metadata !1148, metadata !DIExpression()), !dbg !1198
  br label %if.end136, !dbg !1211

if.then83:                                        ; preds = %if.then57
  %cmp84 = icmp ne i32 %11, 3270, !dbg !1212
  %conv86 = zext i1 %cmp84 to i8, !dbg !1214
  call void @llvm.dbg.value(metadata i8 %conv86, metadata !1148, metadata !DIExpression()), !dbg !1198
  br label %if.end136, !dbg !1215

if.then90:                                        ; preds = %if.then57
  %14 = or i32 %11, 1, !dbg !1216
  %15 = icmp ne i32 %14, 3399, !dbg !1216
  %conv98 = zext i1 %15 to i8, !dbg !1218
  call void @llvm.dbg.value(metadata i8 %conv98, metadata !1148, metadata !DIExpression()), !dbg !1198
  br label %if.end136, !dbg !1219

if.else99:                                        ; preds = %if.then57
  %c.off = add i32 %c, -4449, !dbg !1220
  %16 = icmp ult i32 %c.off, 21, !dbg !1220
  br i1 %16, label %if.then105, label %if.else111, !dbg !1220

if.then105:                                       ; preds = %if.else99
  %.off7 = add i32 %11, -4352, !dbg !1222
  %17 = icmp ugt i32 %.off7, 18, !dbg !1222
  %conv110 = zext i1 %17 to i8, !dbg !1223
  call void @llvm.dbg.value(metadata i8 %conv110, metadata !1148, metadata !DIExpression()), !dbg !1198
  br label %if.end136, !dbg !1224

if.else111:                                       ; preds = %if.else99
  %c.off6 = add i32 %c, -4520, !dbg !1225
  %18 = icmp ult i32 %c.off6, 27, !dbg !1225
  br i1 %18, label %if.then117, label %if.else129, !dbg !1225

if.then117:                                       ; preds = %if.else111
  %.off = add i32 %11, -44032, !dbg !1227
  %19 = icmp ugt i32 %.off, 11171, !dbg !1227
  br i1 %19, label %lor.end126, label %lor.rhs123, !dbg !1227

lor.rhs123:                                       ; preds = %if.then117
  %rem = urem i32 %.off, 28, !dbg !1228
  %cmp124 = icmp ne i32 %rem, 0, !dbg !1229
  %phitmp = zext i1 %cmp124 to i8, !dbg !1230
  br label %lor.end126, !dbg !1230

lor.end126:                                       ; preds = %lor.rhs123, %if.then117
  %20 = phi i8 [ 1, %if.then117 ], [ %phitmp, %lor.rhs123 ]
  call void @llvm.dbg.value(metadata i8 %20, metadata !1148, metadata !DIExpression()), !dbg !1198
  br label %if.end136, !dbg !1231

if.else129:                                       ; preds = %if.else111
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i32 %c) #8, !dbg !1232
  call void @llvm.dbg.value(metadata i8 1, metadata !1148, metadata !DIExpression()), !dbg !1198
  br label %if.end136

if.end136:                                        ; preds = %if.then67, %if.then83, %if.then105, %if.else129, %lor.end126, %if.then90, %if.then74, %if.then60
  %safe.6 = phi i8 [ %conv63, %if.then60 ], [ %conv70, %if.then67 ], [ %conv79, %if.then74 ], [ %conv86, %if.then83 ], [ %conv98, %if.then90 ], [ %conv110, %if.then105 ], [ %20, %lor.end126 ], [ 1, %if.else129 ], !dbg !1234
  call void @llvm.dbg.value(metadata i8 %safe.6, metadata !1148, metadata !DIExpression()), !dbg !1198
  %tobool137 = icmp eq i8 %safe.6, 0, !dbg !1235
  %cmp139 = icmp ult i32 %c, 4449, !dbg !1237
  %or.cond5 = and i1 %tobool137, %cmp139, !dbg !1238
  br i1 %or.cond5, label %if.then141, label %if.else143, !dbg !1238

if.then141:                                       ; preds = %if.end136
  %level142 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 2, !dbg !1239
  store i32 3, i32* %level142, align 4, !dbg !1240
  br label %if.end201, !dbg !1241

if.else143:                                       ; preds = %if.end136
  br i1 %tobool137, label %if.then145, label %if.end201, !dbg !1242

if.then145:                                       ; preds = %if.else143
  %level146 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 2, !dbg !1243
  %21 = load i32, i32* %level146, align 4, !dbg !1243
  %cmp147 = icmp ugt i32 %21, 2, !dbg !1243
  br i1 %cmp147, label %cond.true, label %cond.end, !dbg !1243

cond.true:                                        ; preds = %if.then145
  br label %cond.end, !dbg !1243

cond.end:                                         ; preds = %if.then145, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ 2, %if.then145 ], !dbg !1243
  store i32 %cond, i32* %level146, align 4, !dbg !1245
  br label %if.end201, !dbg !1246

if.else153:                                       ; preds = %if.else50
  %22 = and i8 %1, 32, !dbg !1247
  %tobool159 = icmp eq i8 %22, 0, !dbg !1247
  br i1 %tobool159, label %if.else161, label %if.end201, !dbg !1249

if.else161:                                       ; preds = %if.else153
  %23 = and i8 %1, 16, !dbg !1250
  %tobool167 = icmp eq i8 %23, 0, !dbg !1250
  br i1 %tobool167, label %if.else178, label %if.then168, !dbg !1252

if.then168:                                       ; preds = %if.else161
  %level169 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 2, !dbg !1253
  %24 = load i32, i32* %level169, align 4, !dbg !1253
  %cmp170 = icmp ugt i32 %24, 1, !dbg !1253
  br i1 %cmp170, label %cond.true172, label %cond.end175, !dbg !1253

cond.true172:                                     ; preds = %if.then168
  br label %cond.end175, !dbg !1253

cond.end175:                                      ; preds = %if.then168, %cond.true172
  %cond176 = phi i32 [ %24, %cond.true172 ], [ 1, %if.then168 ], !dbg !1253
  store i32 %cond176, i32* %level169, align 4, !dbg !1254
  br label %if.end201, !dbg !1255

if.else178:                                       ; preds = %if.else161
  %25 = and i8 %1, 8, !dbg !1256
  %tobool184 = icmp eq i8 %25, 0, !dbg !1256
  %level186 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 2, !dbg !1258
  br i1 %tobool184, label %if.else195, label %if.then185, !dbg !1259

if.then185:                                       ; preds = %if.else178
  %26 = load i32, i32* %level186, align 4, !dbg !1260
  %cmp187 = icmp ugt i32 %26, 2, !dbg !1260
  br i1 %cmp187, label %cond.true189, label %cond.end192, !dbg !1260

cond.true189:                                     ; preds = %if.then185
  br label %cond.end192, !dbg !1260

cond.end192:                                      ; preds = %if.then185, %cond.true189
  %cond193 = phi i32 [ %26, %cond.true189 ], [ 2, %if.then185 ], !dbg !1260
  store i32 %cond193, i32* %level186, align 4, !dbg !1261
  br label %if.end201, !dbg !1262

if.else195:                                       ; preds = %if.else178
  store i32 3, i32* %level186, align 4, !dbg !1263
  br label %if.end201

if.end201:                                        ; preds = %if.else143, %if.else153, %cond.end, %if.then141, %cond.end175, %if.else195, %cond.end192, %if.then49
  %previous202 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 0, !dbg !1264
  store i32 %c, i32* %previous202, align 4, !dbg !1265
  %prev_class206 = getelementptr inbounds %struct.normalize_state, %struct.normalize_state* %nst, i64 0, i32 1, !dbg !1266
  store i8 %8, i8* %prev_class206, align 4, !dbg !1267
  %c99208 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 29, !dbg !1268
  %27 = load i8, i8* %c99208, align 1, !dbg !1268
  %tobool210 = icmp eq i8 %27, 0, !dbg !1268
  br i1 %tobool210, label %if.end219, label %land.lhs.true211, !dbg !1270

land.lhs.true211:                                 ; preds = %if.end201
  %28 = and i8 %1, 2, !dbg !1271
  %tobool217 = icmp eq i8 %28, 0, !dbg !1271
  br i1 %tobool217, label %if.end219, label %cleanup, !dbg !1272

if.end219:                                        ; preds = %land.lhs.true211, %if.end201
  br label %cleanup, !dbg !1273

cleanup:                                          ; preds = %land.lhs.true17, %land.lhs.true27, %land.lhs.true211, %while.end, %entry, %if.end219
  %retval.0 = phi i32 [ 1, %if.end219 ], [ 0, %entry ], [ 0, %while.end ], [ 0, %land.lhs.true27 ], [ 0, %land.lhs.true17 ], [ 2, %land.lhs.true211 ], !dbg !1153
  ret i32 %retval.0, !dbg !1274
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cpp_interpret_string(%struct.cpp_reader* %pfile, %struct.cpp_string* %from, i64 %count, %struct.cpp_string* %to, i32 %type) local_unnamed_addr #3 !dbg !1275 {
entry:
  %tbuf = alloca %struct._cpp_strbuf, align 8
  %cvt = alloca %struct.cset_converter, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1280, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata %struct.cpp_string* %from, metadata !1281, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %count, metadata !1282, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata %struct.cpp_string* %to, metadata !1283, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 %type, metadata !1284, metadata !DIExpression()), !dbg !1298
  %0 = bitcast %struct._cpp_strbuf* %tbuf to i8*, !dbg !1299
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9, !dbg !1299
  %1 = bitcast %struct.cset_converter* %cvt to i8*, !dbg !1300
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #9, !dbg !1300
  call void @llvm.dbg.value(metadata %struct.cset_converter* %cvt, metadata !1290, metadata !DIExpression(DW_OP_deref)), !dbg !1298
  call fastcc void @converter_for_type(%struct.cset_converter* nonnull sret %cvt, %struct.cpp_reader* %pfile, i32 %type) #10, !dbg !1301
  %len = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %from, i64 0, i32 0, !dbg !1302
  %2 = load i32, i32* %len, align 8, !dbg !1302
  %cmp = icmp ult i32 %2, 256, !dbg !1302
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !1302

cond.false:                                       ; preds = %entry
  %phitmp = zext i32 %2 to i64, !dbg !1302
  br label %cond.end, !dbg !1302

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %phitmp, %cond.false ], [ 256, %entry ]
  %asize = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %tbuf, i64 0, i32 1, !dbg !1303
  store i64 %cond, i64* %asize, align 8, !dbg !1304
  %call = call i8* @xmalloc(i64 %cond) #8, !dbg !1305
  %text = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %tbuf, i64 0, i32 0, !dbg !1306
  store i8* %call, i8** %text, align 8, !dbg !1307
  %len3 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %tbuf, i64 0, i32 2, !dbg !1308
  store i64 0, i64* %len3, align 8, !dbg !1309
  call void @llvm.dbg.value(metadata i64 0, metadata !1289, metadata !DIExpression()), !dbg !1298
  %func77 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %cvt, i64 0, i32 0, !dbg !1310
  %cd78 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %cvt, i64 0, i32 1, !dbg !1310
  br label %for.cond, !dbg !1317

for.cond:                                         ; preds = %for.inc, %cond.end
  %i.0 = phi i64 [ 0, %cond.end ], [ %inc, %for.inc ], !dbg !1318
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1289, metadata !DIExpression()), !dbg !1298
  %exitcond = icmp eq i64 %i.0, %count, !dbg !1319
  br i1 %exitcond, label %for.end93, label %for.body, !dbg !1320

for.body:                                         ; preds = %for.cond
  %text6 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %from, i64 %i.0, i32 1, !dbg !1321
  %3 = load i8*, i8** %text6, align 8, !dbg !1321
  call void @llvm.dbg.value(metadata i8* %3, metadata !1286, metadata !DIExpression()), !dbg !1298
  %4 = load i8, i8* %3, align 1, !dbg !1322
  %cmp8 = icmp eq i8 %4, 117, !dbg !1324
  br i1 %cmp8, label %if.then, label %if.else, !dbg !1325

if.then:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1286, metadata !DIExpression()), !dbg !1298
  %5 = load i8, i8* %incdec.ptr, align 1, !dbg !1329
  %cmp11 = icmp eq i8 %5, 56, !dbg !1330
  %incdec.ptr14 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !1331
  %spec.select = select i1 %cmp11, i8* %incdec.ptr14, i8* %incdec.ptr, !dbg !1332
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !1286, metadata !DIExpression()), !dbg !1298
  br label %if.end24, !dbg !1333

if.else:                                          ; preds = %for.body
  %cmp16 = icmp eq i8 %4, 76, !dbg !1334
  br i1 %cmp16, label %if.then21, label %lor.lhs.false, !dbg !1336

lor.lhs.false:                                    ; preds = %if.else
  %cmp19 = icmp eq i8 %4, 85, !dbg !1337
  br i1 %cmp19, label %if.then21, label %if.end24, !dbg !1338

if.then21:                                        ; preds = %lor.lhs.false, %if.else
  %incdec.ptr22 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1339
  call void @llvm.dbg.value(metadata i8* %incdec.ptr22, metadata !1286, metadata !DIExpression()), !dbg !1298
  br label %if.end24, !dbg !1340

if.end24:                                         ; preds = %lor.lhs.false, %if.then21, %if.then
  %p.2 = phi i8* [ %spec.select, %if.then ], [ %incdec.ptr22, %if.then21 ], [ %3, %lor.lhs.false ], !dbg !1341
  call void @llvm.dbg.value(metadata i8* %p.2, metadata !1286, metadata !DIExpression()), !dbg !1298
  %6 = load i8, i8* %p.2, align 1, !dbg !1342
  %cmp26 = icmp eq i8 %6, 82, !dbg !1343
  br i1 %cmp26, label %if.then28, label %if.end55, !dbg !1344

if.then28:                                        ; preds = %if.end24
  %add.ptr = getelementptr inbounds i8, i8* %p.2, i64 2, !dbg !1345
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1286, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1291, metadata !DIExpression()), !dbg !1346
  br label %while.cond, !dbg !1347

while.cond:                                       ; preds = %while.cond, %if.then28
  %p.3 = phi i8* [ %add.ptr, %if.then28 ], [ %incdec.ptr32, %while.cond ], !dbg !1346
  call void @llvm.dbg.value(metadata i8* %p.3, metadata !1286, metadata !DIExpression()), !dbg !1298
  %7 = load i8, i8* %p.3, align 1, !dbg !1348
  %cmp30 = icmp eq i8 %7, 40, !dbg !1349
  %incdec.ptr32 = getelementptr inbounds i8, i8* %p.3, i64 1, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %incdec.ptr32, metadata !1286, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %incdec.ptr32, metadata !1286, metadata !DIExpression()), !dbg !1298
  br i1 %cmp30, label %while.end, label %while.cond, !dbg !1347, !llvm.loop !1350

while.end:                                        ; preds = %while.cond
  %p.3.lcssa = phi i8* [ %p.3, %while.cond ], !dbg !1346
  %incdec.ptr32.lcssa = phi i8* [ %incdec.ptr32, %while.cond ], !dbg !1346
  call void @llvm.dbg.value(metadata i8* %p.3.lcssa, metadata !1286, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %p.3.lcssa, metadata !1286, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %p.3.lcssa, metadata !1286, metadata !DIExpression()), !dbg !1298
  %len37 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %from, i64 %i.0, i32 0, !dbg !1352
  %8 = load i32, i32* %len37, align 8, !dbg !1352
  %idx.ext = zext i32 %8 to i64, !dbg !1353
  %add.ptr38 = getelementptr inbounds i8, i8* %3, i64 %idx.ext, !dbg !1353
  call void @llvm.dbg.value(metadata i8* %add.ptr38, metadata !1288, metadata !DIExpression()), !dbg !1298
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr32.lcssa to i64, !dbg !1354
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr to i64, !dbg !1354
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1354
  %add.ptr39 = getelementptr inbounds i8, i8* %p.3.lcssa, i64 2, !dbg !1356
  %add.ptr40 = getelementptr inbounds i8, i8* %add.ptr39, i64 %sub.ptr.sub, !dbg !1357
  %cmp41 = icmp ult i8* %add.ptr38, %add.ptr40, !dbg !1358
  br i1 %cmp41, label %if.end48, label %if.then43, !dbg !1359

if.then43:                                        ; preds = %while.end
  %9 = xor i64 %sub.ptr.lhs.cast, -1, !dbg !1360
  %10 = add i64 %9, %sub.ptr.rhs.cast, !dbg !1360
  %add.ptr47 = getelementptr inbounds i8, i8* %add.ptr38, i64 %10, !dbg !1360
  call void @llvm.dbg.value(metadata i8* %add.ptr47, metadata !1288, metadata !DIExpression()), !dbg !1298
  br label %if.end48, !dbg !1361

if.end48:                                         ; preds = %while.end, %if.then43
  %limit.0 = phi i8* [ %add.ptr47, %if.then43 ], [ %add.ptr38, %while.end ], !dbg !1346
  call void @llvm.dbg.value(metadata i8* %limit.0, metadata !1288, metadata !DIExpression()), !dbg !1298
  %11 = load i8 (i8*, i8*, i64, %struct._cpp_strbuf*)*, i8 (i8*, i8*, i64, %struct._cpp_strbuf*)** %func77, align 8, !dbg !1362
  %12 = load i8*, i8** %cd78, align 8, !dbg !1362
  %sub.ptr.lhs.cast49 = ptrtoint i8* %limit.0 to i64, !dbg !1362
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.lhs.cast, !dbg !1362
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %tbuf, metadata !1285, metadata !DIExpression(DW_OP_deref)), !dbg !1298
  %call52 = call zeroext i8 %11(i8* %12, i8* nonnull %incdec.ptr32.lcssa, i64 %sub.ptr.sub51, %struct._cpp_strbuf* nonnull %tbuf) #8, !dbg !1362
  %tobool = icmp eq i8 %call52, 0, !dbg !1362
  br i1 %tobool, label %fail.loopexit1, label %for.inc

if.end55:                                         ; preds = %if.end24
  %incdec.ptr56 = getelementptr inbounds i8, i8* %p.2, i64 1, !dbg !1364
  call void @llvm.dbg.value(metadata i8* %incdec.ptr56, metadata !1286, metadata !DIExpression()), !dbg !1298
  %len60 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %from, i64 %i.0, i32 0, !dbg !1365
  %13 = load i32, i32* %len60, align 8, !dbg !1365
  %idx.ext61 = zext i32 %13 to i64, !dbg !1366
  %add.ptr62 = getelementptr inbounds i8, i8* %3, i64 -1, !dbg !1366
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr62, i64 %idx.ext61, !dbg !1367
  call void @llvm.dbg.value(metadata i8* %add.ptr63, metadata !1288, metadata !DIExpression()), !dbg !1298
  br label %for.cond64, !dbg !1368

for.cond64:                                       ; preds = %if.end90, %if.end55
  %p.4 = phi i8* [ %incdec.ptr56, %if.end55 ], [ %call92, %if.end90 ], !dbg !1369
  call void @llvm.dbg.value(metadata i8* %p.4, metadata !1286, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %p.4, metadata !1287, metadata !DIExpression()), !dbg !1298
  br label %while.cond65, !dbg !1370

while.cond65:                                     ; preds = %while.body71, %for.cond64
  %p.5 = phi i8* [ %p.4, %for.cond64 ], [ %incdec.ptr72, %while.body71 ], !dbg !1369
  call void @llvm.dbg.value(metadata i8* %p.5, metadata !1286, metadata !DIExpression()), !dbg !1298
  %cmp66 = icmp ult i8* %p.5, %add.ptr63, !dbg !1371
  br i1 %cmp66, label %land.rhs, label %while.end73, !dbg !1372

land.rhs:                                         ; preds = %while.cond65
  %14 = load i8, i8* %p.5, align 1, !dbg !1373
  %cmp69 = icmp eq i8 %14, 92, !dbg !1374
  br i1 %cmp69, label %while.end73, label %while.body71, !dbg !1370

while.body71:                                     ; preds = %land.rhs
  %incdec.ptr72 = getelementptr inbounds i8, i8* %p.5, i64 1, !dbg !1375
  call void @llvm.dbg.value(metadata i8* %incdec.ptr72, metadata !1286, metadata !DIExpression()), !dbg !1298
  br label %while.cond65, !dbg !1370, !llvm.loop !1376

while.end73:                                      ; preds = %land.rhs, %while.cond65
  %p.5.lcssa = phi i8* [ %p.5, %land.rhs ], [ %p.5, %while.cond65 ], !dbg !1369
  call void @llvm.dbg.value(metadata i8* %p.5.lcssa, metadata !1286, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %p.5.lcssa, metadata !1286, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %p.5.lcssa, metadata !1286, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %p.5.lcssa, metadata !1286, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %p.5.lcssa, metadata !1286, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %p.5.lcssa, metadata !1286, metadata !DIExpression()), !dbg !1298
  %cmp74 = icmp ugt i8* %p.5.lcssa, %p.4, !dbg !1377
  br i1 %cmp74, label %if.then76, label %if.end86, !dbg !1378

if.then76:                                        ; preds = %while.end73
  %15 = load i8 (i8*, i8*, i64, %struct._cpp_strbuf*)*, i8 (i8*, i8*, i64, %struct._cpp_strbuf*)** %func77, align 8, !dbg !1379
  %16 = load i8*, i8** %cd78, align 8, !dbg !1379
  %sub.ptr.lhs.cast79 = ptrtoint i8* %p.5.lcssa to i64, !dbg !1379
  %sub.ptr.rhs.cast80 = ptrtoint i8* %p.4 to i64, !dbg !1379
  %sub.ptr.sub81 = sub i64 %sub.ptr.lhs.cast79, %sub.ptr.rhs.cast80, !dbg !1379
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %tbuf, metadata !1285, metadata !DIExpression(DW_OP_deref)), !dbg !1298
  %call82 = call zeroext i8 %15(i8* %16, i8* %p.4, i64 %sub.ptr.sub81, %struct._cpp_strbuf* nonnull %tbuf) #8, !dbg !1379
  %tobool83 = icmp eq i8 %call82, 0, !dbg !1379
  br i1 %tobool83, label %fail.loopexit, label %if.end86, !dbg !1380

if.end86:                                         ; preds = %if.then76, %while.end73
  %cmp87 = icmp eq i8* %p.5.lcssa, %add.ptr63, !dbg !1381
  br i1 %cmp87, label %for.inc.loopexit, label %if.end90, !dbg !1383

if.end90:                                         ; preds = %if.end86
  %add.ptr91 = getelementptr inbounds i8, i8* %p.5.lcssa, i64 1, !dbg !1384
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %tbuf, metadata !1285, metadata !DIExpression(DW_OP_deref)), !dbg !1298
  call void @llvm.dbg.value(metadata %struct.cset_converter* %cvt, metadata !1290, metadata !DIExpression(DW_OP_deref)), !dbg !1298
  %call92 = call fastcc i8* @convert_escape(%struct.cpp_reader* %pfile, i8* nonnull %add.ptr91, i8* nonnull %add.ptr63, %struct._cpp_strbuf* nonnull %tbuf, %struct.cset_converter* nonnull byval(%struct.cset_converter) align 8 %cvt) #10, !dbg !1385
  call void @llvm.dbg.value(metadata i8* %call92, metadata !1286, metadata !DIExpression()), !dbg !1298
  br label %for.cond64, !dbg !1386, !llvm.loop !1387

for.inc.loopexit:                                 ; preds = %if.end86
  br label %for.inc, !dbg !1390

for.inc:                                          ; preds = %for.inc.loopexit, %if.end48
  %inc = add i64 %i.0, 1, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1289, metadata !DIExpression()), !dbg !1298
  br label %for.cond, !dbg !1391, !llvm.loop !1392

for.end93:                                        ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %tbuf, metadata !1285, metadata !DIExpression(DW_OP_deref)), !dbg !1298
  call void @llvm.dbg.value(metadata %struct.cset_converter* %cvt, metadata !1290, metadata !DIExpression(DW_OP_deref)), !dbg !1298
  call fastcc void @emit_numeric_escape(%struct.cpp_reader* %pfile, i32 0, %struct._cpp_strbuf* nonnull %tbuf, %struct.cset_converter* nonnull byval(%struct.cset_converter) align 8 %cvt) #10, !dbg !1394
  %17 = load i8*, i8** %text, align 8, !dbg !1395
  %18 = load i64, i64* %len3, align 8, !dbg !1395
  %call97 = call i8* @xrealloc(i8* %17, i64 %18) #8, !dbg !1395
  store i8* %call97, i8** %text, align 8, !dbg !1396
  %.cast = ptrtoint i8* %call97 to i64, !dbg !1397
  %text100 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %to, i64 0, i32 1, !dbg !1398
  %19 = bitcast i8** %text100 to i64*, !dbg !1399
  store i64 %.cast, i64* %19, align 8, !dbg !1399
  %20 = load i64, i64* %len3, align 8, !dbg !1400
  %conv102 = trunc i64 %20 to i32, !dbg !1401
  %len103 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %to, i64 0, i32 0, !dbg !1402
  store i32 %conv102, i32* %len103, align 8, !dbg !1403
  br label %cleanup106, !dbg !1404

fail.loopexit:                                    ; preds = %if.then76
  br label %fail, !dbg !1405

fail.loopexit1:                                   ; preds = %if.end48
  br label %fail, !dbg !1405

fail:                                             ; preds = %fail.loopexit1, %fail.loopexit
  call void @llvm.dbg.label(metadata !1297), !dbg !1406
  %call104 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1405
  %21 = load i8*, i8** %text, align 8, !dbg !1407
  call void @free(i8* %21) #8, !dbg !1408
  br label %cleanup106, !dbg !1409

cleanup106:                                       ; preds = %fail, %for.end93
  %retval.0 = phi i8 [ 0, %fail ], [ 1, %for.end93 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #9, !dbg !1410
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9, !dbg !1410
  ret i8 %retval.0, !dbg !1410
}

; Function Attrs: nounwind uwtable
define internal fastcc void @converter_for_type(%struct.cset_converter* noalias sret %agg.result, %struct.cpp_reader* %pfile, i32 %type) unnamed_addr #3 !dbg !1411 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1415, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i32 %type, metadata !1416, metadata !DIExpression()), !dbg !1417
  switch i32 %type, label %sw.default [
    i32 65, label %sw.bb
    i32 58, label %sw.bb1
    i32 63, label %sw.bb1
    i32 59, label %sw.bb2
    i32 64, label %sw.bb2
    i32 57, label %sw.bb3
    i32 62, label %sw.bb3
  ], !dbg !1418

sw.default:                                       ; preds = %entry
  %narrow_cset_desc = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 36, !dbg !1419
  %0 = bitcast %struct.cset_converter* %agg.result to i8*, !dbg !1419
  %1 = bitcast %struct.cset_converter* %narrow_cset_desc to i8*, !dbg !1419
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !1419
  br label %return, !dbg !1421

sw.bb:                                            ; preds = %entry
  %utf8_cset_desc = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 37, !dbg !1422
  %2 = bitcast %struct.cset_converter* %agg.result to i8*, !dbg !1422
  %3 = bitcast %struct.cset_converter* %utf8_cset_desc to i8*, !dbg !1422
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* nonnull align 8 %3, i64 24, i1 false), !dbg !1422
  br label %return, !dbg !1423

sw.bb1:                                           ; preds = %entry, %entry
  %char16_cset_desc = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 38, !dbg !1424
  %4 = bitcast %struct.cset_converter* %agg.result to i8*, !dbg !1424
  %5 = bitcast %struct.cset_converter* %char16_cset_desc to i8*, !dbg !1424
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !1424
  br label %return, !dbg !1425

sw.bb2:                                           ; preds = %entry, %entry
  %char32_cset_desc = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 39, !dbg !1426
  %6 = bitcast %struct.cset_converter* %agg.result to i8*, !dbg !1426
  %7 = bitcast %struct.cset_converter* %char32_cset_desc to i8*, !dbg !1426
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* nonnull align 8 %7, i64 24, i1 false), !dbg !1426
  br label %return, !dbg !1427

sw.bb3:                                           ; preds = %entry, %entry
  %wide_cset_desc = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 40, !dbg !1428
  %8 = bitcast %struct.cset_converter* %agg.result to i8*, !dbg !1428
  %9 = bitcast %struct.cset_converter* %wide_cset_desc to i8*, !dbg !1428
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !1428
  br label %return, !dbg !1429

return:                                           ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %sw.default
  ret void, !dbg !1430
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @convert_escape(%struct.cpp_reader* %pfile, i8* %from, i8* %limit, %struct._cpp_strbuf* %tbuf, %struct.cset_converter* byval(%struct.cset_converter) align 8 %cvt) unnamed_addr #3 !dbg !262 {
entry:
  %c = alloca i8, align 1
  %buf = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !750, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i8* %from, metadata !751, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i8* %limit, metadata !752, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %tbuf, metadata !753, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.declare(metadata %struct.cset_converter* %cvt, metadata !754, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i8* %c, metadata !755, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #9, !dbg !1433
  %0 = load i8, i8* %from, align 1, !dbg !1434
  call void @llvm.dbg.value(metadata i8 %0, metadata !755, metadata !DIExpression()), !dbg !1431
  store i8 %0, i8* %c, align 1, !dbg !1435
  call void @llvm.dbg.value(metadata i8 %0, metadata !755, metadata !DIExpression()), !dbg !1431
  switch i8 %0, label %unknown [
    i8 117, label %sw.bb
    i8 85, label %sw.bb
    i8 120, label %sw.bb1
    i8 48, label %sw.bb3
    i8 49, label %sw.bb3
    i8 50, label %sw.bb3
    i8 51, label %sw.bb3
    i8 52, label %sw.bb3
    i8 53, label %sw.bb3
    i8 54, label %sw.bb3
    i8 55, label %sw.bb3
    i8 92, label %sw.epilog
    i8 39, label %sw.epilog
    i8 34, label %sw.epilog
    i8 63, label %sw.epilog
    i8 40, label %sw.bb6
    i8 123, label %sw.bb6
    i8 91, label %sw.bb6
    i8 37, label %sw.bb6
    i8 98, label %sw.bb7
    i8 102, label %sw.bb8
    i8 110, label %sw.bb9
    i8 114, label %sw.bb10
    i8 116, label %sw.bb11
    i8 118, label %sw.bb12
    i8 97, label %sw.bb13
    i8 101, label %sw.bb19
    i8 69, label %sw.bb19
  ], !dbg !1436

sw.bb:                                            ; preds = %entry, %entry
  %call = tail call fastcc i8* @convert_ucn(%struct.cpp_reader* %pfile, i8* %from, i8* %limit, %struct._cpp_strbuf* %tbuf, %struct.cset_converter* nonnull byval(%struct.cset_converter) align 8 %cvt) #10, !dbg !1437
  br label %cleanup, !dbg !1438

sw.bb1:                                           ; preds = %entry
  %call2 = tail call fastcc i8* @convert_hex(%struct.cpp_reader* %pfile, i8* %from, i8* %limit, %struct._cpp_strbuf* %tbuf, %struct.cset_converter* nonnull byval(%struct.cset_converter) align 8 %cvt) #10, !dbg !1439
  br label %cleanup, !dbg !1440

sw.bb3:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %call4 = tail call fastcc i8* @convert_oct(%struct.cpp_reader* %pfile, i8* %from, i8* %limit, %struct._cpp_strbuf* %tbuf, %struct.cset_converter* nonnull byval(%struct.cset_converter) align 8 %cvt) #10, !dbg !1441
  br label %cleanup, !dbg !1442

sw.bb6:                                           ; preds = %entry, %entry, %entry, %entry
  %pedantic = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !1443
  %1 = load i8, i8* %pedantic, align 1, !dbg !1443
  %tobool = icmp eq i8 %1, 0, !dbg !1443
  br i1 %tobool, label %sw.epilog, label %unknown, !dbg !1445

sw.bb7:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8 8, metadata !755, metadata !DIExpression()), !dbg !1431
  store i8 8, i8* %c, align 1, !dbg !1446
  br label %sw.epilog, !dbg !1447

sw.bb8:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8 12, metadata !755, metadata !DIExpression()), !dbg !1431
  store i8 12, i8* %c, align 1, !dbg !1448
  br label %sw.epilog, !dbg !1449

sw.bb9:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8 10, metadata !755, metadata !DIExpression()), !dbg !1431
  store i8 10, i8* %c, align 1, !dbg !1450
  br label %sw.epilog, !dbg !1451

sw.bb10:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8 13, metadata !755, metadata !DIExpression()), !dbg !1431
  store i8 13, i8* %c, align 1, !dbg !1452
  br label %sw.epilog, !dbg !1453

sw.bb11:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8 9, metadata !755, metadata !DIExpression()), !dbg !1431
  store i8 9, i8* %c, align 1, !dbg !1454
  br label %sw.epilog, !dbg !1455

sw.bb12:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i8 11, metadata !755, metadata !DIExpression()), !dbg !1431
  store i8 11, i8* %c, align 1, !dbg !1456
  br label %sw.epilog, !dbg !1457

sw.bb13:                                          ; preds = %entry
  %warn_traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 17, !dbg !1458
  %2 = load i8, i8* %warn_traditional, align 1, !dbg !1458
  %tobool15 = icmp eq i8 %2, 0, !dbg !1458
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !1460

if.then16:                                        ; preds = %sw.bb13
  %call17 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !1461
  br label %if.end18, !dbg !1461

if.end18:                                         ; preds = %sw.bb13, %if.then16
  call void @llvm.dbg.value(metadata i8 7, metadata !755, metadata !DIExpression()), !dbg !1431
  store i8 7, i8* %c, align 1, !dbg !1462
  br label %sw.epilog, !dbg !1463

sw.bb19:                                          ; preds = %entry, %entry
  %pedantic21 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 31, !dbg !1464
  %3 = load i8, i8* %pedantic21, align 1, !dbg !1464
  %tobool22 = icmp eq i8 %3, 0, !dbg !1464
  br i1 %tobool22, label %if.end26, label %if.then23, !dbg !1466

if.then23:                                        ; preds = %sw.bb19
  call void @llvm.dbg.value(metadata i8 %0, metadata !755, metadata !DIExpression()), !dbg !1431
  %conv24 = zext i8 %0 to i32, !dbg !1467
  %call25 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i32 %conv24) #8, !dbg !1468
  br label %if.end26, !dbg !1468

if.end26:                                         ; preds = %sw.bb19, %if.then23
  call void @llvm.dbg.value(metadata i8 27, metadata !755, metadata !DIExpression()), !dbg !1431
  store i8 27, i8* %c, align 1, !dbg !1469
  br label %sw.epilog, !dbg !1470

unknown:                                          ; preds = %sw.bb6, %entry
  call void @llvm.dbg.label(metadata !763), !dbg !1471
  call void @llvm.dbg.value(metadata i8 %0, metadata !755, metadata !DIExpression()), !dbg !1431
  %idxprom = zext i8 %0 to i64, !dbg !1472
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !1472
  %4 = load i16, i16* %arrayidx, align 2, !dbg !1472
  %5 = and i16 %4, 172, !dbg !1472
  %tobool30 = icmp eq i16 %5, 0, !dbg !1472
  br i1 %tobool30, label %if.else, label %if.then31, !dbg !1473

if.then31:                                        ; preds = %unknown
  call void @llvm.dbg.value(metadata i8 %0, metadata !755, metadata !DIExpression()), !dbg !1431
  %conv32 = zext i8 %0 to i32, !dbg !1474
  %call33 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 %conv32) #8, !dbg !1475
  br label %sw.epilog, !dbg !1475

if.else:                                          ; preds = %unknown
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !1476
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #9, !dbg !1476
  call void @llvm.dbg.declare(metadata [32 x i8]* %buf, metadata !756, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i8 %0, metadata !755, metadata !DIExpression()), !dbg !1431
  %conv34 = zext i8 %0 to i32, !dbg !1478
  %call35 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 %conv34) #8, !dbg !1479
  %call37 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i8* nonnull %6) #8, !dbg !1480
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #9, !dbg !1481
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.then31, %if.else, %entry, %entry, %entry, %entry, %if.end26, %if.end18, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7
  %func = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %cvt, i64 0, i32 0, !dbg !1482
  %7 = load i8 (i8*, i8*, i64, %struct._cpp_strbuf*)*, i8 (i8*, i8*, i64, %struct._cpp_strbuf*)** %func, align 8, !dbg !1482
  %cd = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %cvt, i64 0, i32 1, !dbg !1482
  %8 = load i8*, i8** %cd, align 8, !dbg !1482
  call void @llvm.dbg.value(metadata i8* %c, metadata !755, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  %call39 = call zeroext i8 %7(i8* %8, i8* nonnull %c, i64 1, %struct._cpp_strbuf* %tbuf) #8, !dbg !1482
  %tobool40 = icmp eq i8 %call39, 0, !dbg !1482
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !1484

if.then41:                                        ; preds = %sw.epilog
  %call42 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i64 0, i64 0)) #8, !dbg !1485
  br label %if.end43, !dbg !1485

if.end43:                                         ; preds = %sw.epilog, %if.then41
  %add.ptr = getelementptr inbounds i8, i8* %from, i64 1, !dbg !1486
  br label %cleanup, !dbg !1487

cleanup:                                          ; preds = %if.end43, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i8* [ %add.ptr, %if.end43 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], !dbg !1431
  call void @llvm.dbg.value(metadata i8* %c, metadata !755, metadata !DIExpression(DW_OP_deref)), !dbg !1431
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #9, !dbg !1488
  ret i8* %retval.0, !dbg !1488
}

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_numeric_escape(%struct.cpp_reader* %pfile, i32 %n, %struct._cpp_strbuf* %tbuf, %struct.cset_converter* byval(%struct.cset_converter) align 8 %cvt) unnamed_addr #3 !dbg !1489 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1493, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %n, metadata !1494, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %tbuf, metadata !1495, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.declare(metadata %struct.cset_converter* %cvt, metadata !1496, metadata !DIExpression()), !dbg !1508
  %width1 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %cvt, i64 0, i32 2, !dbg !1509
  %0 = load i32, i32* %width1, align 8, !dbg !1509
  %conv = sext i32 %0 to i64, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1497, metadata !DIExpression()), !dbg !1507
  %char_precision = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 45, !dbg !1511
  %1 = load i64, i64* %char_precision, align 8, !dbg !1511
  %cmp = icmp eq i64 %1, %conv, !dbg !1512
  br i1 %cmp, label %if.else, label %if.then, !dbg !1513

if.then:                                          ; preds = %entry
  %bytes_big_endian = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 50, !dbg !1514
  %2 = load i8, i8* %bytes_big_endian, align 2, !dbg !1514
  call void @llvm.dbg.value(metadata i8 %2, metadata !1498, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i64 %1, metadata !1501, metadata !DIExpression()), !dbg !1515
  %call = tail call fastcc i64 @width_to_mask(i64 %1) #10, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %call, metadata !1502, metadata !DIExpression()), !dbg !1515
  %div = udiv i64 %conv, %1, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %div, metadata !1503, metadata !DIExpression()), !dbg !1515
  %len = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %tbuf, i64 0, i32 2, !dbg !1518
  %3 = load i64, i64* %len, align 8, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %3, metadata !1505, metadata !DIExpression()), !dbg !1515
  %add = add i64 %3, %div, !dbg !1519
  %asize = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %tbuf, i64 0, i32 1, !dbg !1521
  %4 = load i64, i64* %asize, align 8, !dbg !1521
  %cmp7 = icmp ugt i64 %add, %4, !dbg !1522
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !1523

if.then9:                                         ; preds = %if.then
  %add11 = add i64 %4, 256, !dbg !1524
  store i64 %add11, i64* %asize, align 8, !dbg !1524
  %text = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %tbuf, i64 0, i32 0, !dbg !1526
  %5 = load i8*, i8** %text, align 8, !dbg !1526
  %call13 = tail call i8* @xrealloc(i8* %5, i64 %add11) #8, !dbg !1526
  store i8* %call13, i8** %text, align 8, !dbg !1527
  br label %if.end, !dbg !1528

if.end:                                           ; preds = %if.then9, %if.then
  call void @llvm.dbg.value(metadata i64 0, metadata !1504, metadata !DIExpression()), !dbg !1515
  %6 = trunc i64 %call to i32, !dbg !1529
  %sh_prom = trunc i64 %1 to i32, !dbg !1529
  %text20 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %tbuf, i64 0, i32 0, !dbg !1529
  %tobool = icmp eq i8 %2, 0, !dbg !1529
  br i1 %tobool, label %if.end.split.us, label %if.end.if.end.split_crit_edge, !dbg !1533

if.end.if.end.split_crit_edge:                    ; preds = %if.end
  br label %for.cond, !dbg !1533

if.end.split.us:                                  ; preds = %if.end
  br label %for.cond.us, !dbg !1533

for.cond.us:                                      ; preds = %for.body.us, %if.end.split.us
  %n.addr.0.us = phi i32 [ %n, %if.end.split.us ], [ %shr.us, %for.body.us ]
  %i.0.us = phi i64 [ 0, %if.end.split.us ], [ %inc.us, %for.body.us ], !dbg !1534
  call void @llvm.dbg.value(metadata i64 %i.0.us, metadata !1504, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 %n.addr.0.us, metadata !1494, metadata !DIExpression()), !dbg !1507
  %cmp15.us = icmp ugt i64 %div, %i.0.us, !dbg !1535
  br i1 %cmp15.us, label %for.body.us, label %for.end.us-lcssa.us, !dbg !1536

for.body.us:                                      ; preds = %for.cond.us
  %conv18.us = and i32 %n.addr.0.us, %6, !dbg !1537
  call void @llvm.dbg.value(metadata i32 %conv18.us, metadata !1506, metadata !DIExpression()), !dbg !1515
  %shr.us = lshr i32 %n.addr.0.us, %sh_prom, !dbg !1538
  call void @llvm.dbg.value(metadata i32 %shr.us, metadata !1494, metadata !DIExpression()), !dbg !1507
  %conv19.us = trunc i32 %conv18.us to i8, !dbg !1539
  %7 = load i8*, i8** %text20, align 8, !dbg !1540
  %add23.us = add i64 %3, %i.0.us, !dbg !1541
  %arrayidx.us = getelementptr inbounds i8, i8* %7, i64 %add23.us, !dbg !1542
  store i8 %conv19.us, i8* %arrayidx.us, align 1, !dbg !1543
  %inc.us = add i64 %i.0.us, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !1504, metadata !DIExpression()), !dbg !1515
  br label %for.cond.us, !dbg !1545, !llvm.loop !1546

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  br label %for.end, !dbg !1548

for.cond:                                         ; preds = %for.body, %if.end.if.end.split_crit_edge
  %n.addr.0 = phi i32 [ %n, %if.end.if.end.split_crit_edge ], [ %shr, %for.body ]
  %i.0 = phi i64 [ 0, %if.end.if.end.split_crit_edge ], [ %inc, %for.body ], !dbg !1534
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1504, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 %n.addr.0, metadata !1494, metadata !DIExpression()), !dbg !1507
  %cmp15 = icmp ugt i64 %div, %i.0, !dbg !1535
  br i1 %cmp15, label %for.body, label %for.end.us-lcssa, !dbg !1536

for.body:                                         ; preds = %for.cond
  %conv18 = and i32 %n.addr.0, %6, !dbg !1537
  call void @llvm.dbg.value(metadata i32 %conv18, metadata !1506, metadata !DIExpression()), !dbg !1515
  %shr = lshr i32 %n.addr.0, %sh_prom, !dbg !1538
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1494, metadata !DIExpression()), !dbg !1507
  %conv19 = trunc i32 %conv18 to i8, !dbg !1539
  %8 = load i8*, i8** %text20, align 8, !dbg !1540
  %9 = xor i64 %i.0, -1, !dbg !1549
  %sub22 = add i64 %div, %9, !dbg !1549
  %add23 = add i64 %3, %sub22, !dbg !1541
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %add23, !dbg !1542
  store i8 %conv19, i8* %arrayidx, align 1, !dbg !1543
  %inc = add i64 %i.0, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1504, metadata !DIExpression()), !dbg !1515
  br label %for.cond, !dbg !1545, !llvm.loop !1546

for.end.us-lcssa:                                 ; preds = %for.cond
  br label %for.end, !dbg !1548

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %10 = load i64, i64* %len, align 8, !dbg !1550
  %add25 = add i64 %10, %div, !dbg !1550
  store i64 %add25, i64* %len, align 8, !dbg !1550
  br label %if.end45, !dbg !1551

if.else:                                          ; preds = %entry
  %len26 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %tbuf, i64 0, i32 2, !dbg !1552
  %11 = load i64, i64* %len26, align 8, !dbg !1552
  %add27 = add i64 %11, 1, !dbg !1555
  %asize28 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %tbuf, i64 0, i32 1, !dbg !1556
  %12 = load i64, i64* %asize28, align 8, !dbg !1556
  %cmp29 = icmp ugt i64 %add27, %12, !dbg !1557
  br i1 %cmp29, label %if.then31, label %if.else.if.end39_crit_edge, !dbg !1558

if.else.if.end39_crit_edge:                       ; preds = %if.else
  %text41.phi.trans.insert = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %tbuf, i64 0, i32 0, !dbg !1559
  %.pre = load i8*, i8** %text41.phi.trans.insert, align 8, !dbg !1560
  br label %if.end39, !dbg !1558

if.then31:                                        ; preds = %if.else
  %add33 = add i64 %12, 256, !dbg !1561
  store i64 %add33, i64* %asize28, align 8, !dbg !1561
  %text34 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %tbuf, i64 0, i32 0, !dbg !1563
  %13 = load i8*, i8** %text34, align 8, !dbg !1563
  %call37 = tail call i8* @xrealloc(i8* %13, i64 %add33) #8, !dbg !1563
  store i8* %call37, i8** %text34, align 8, !dbg !1564
  %.pre1 = load i64, i64* %len26, align 8, !dbg !1565
  %.pre2 = add i64 %.pre1, 1, !dbg !1565
  br label %if.end39, !dbg !1566

if.end39:                                         ; preds = %if.else.if.end39_crit_edge, %if.then31
  %inc43.pre-phi = phi i64 [ %add27, %if.else.if.end39_crit_edge ], [ %.pre2, %if.then31 ], !dbg !1565
  %14 = phi i64 [ %11, %if.else.if.end39_crit_edge ], [ %.pre1, %if.then31 ], !dbg !1565
  %15 = phi i8* [ %.pre, %if.else.if.end39_crit_edge ], [ %call37, %if.then31 ], !dbg !1560
  %conv40 = trunc i32 %n to i8, !dbg !1567
  store i64 %inc43.pre-phi, i64* %len26, align 8, !dbg !1565
  %arrayidx44 = getelementptr inbounds i8, i8* %15, i64 %14, !dbg !1568
  store i8 %conv40, i8* %arrayidx44, align 1, !dbg !1569
  br label %if.end45

if.end45:                                         ; preds = %if.end39, %for.end
  ret void, !dbg !1570
}

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cpp_interpret_string_notranslate(%struct.cpp_reader* %pfile, %struct.cpp_string* %from, i64 %count, %struct.cpp_string* %to, i32 %type) local_unnamed_addr #3 !dbg !1571 {
entry:
  %save_narrow_cset_desc = alloca %struct.cset_converter, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1573, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata %struct.cpp_string* %from, metadata !1574, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata i64 %count, metadata !1575, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata %struct.cpp_string* %to, metadata !1576, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata i32 %type, metadata !1577, metadata !DIExpression()), !dbg !1580
  %0 = bitcast %struct.cset_converter* %save_narrow_cset_desc to i8*, !dbg !1581
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9, !dbg !1581
  %narrow_cset_desc = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 36, !dbg !1582
  %1 = bitcast %struct.cset_converter* %narrow_cset_desc to i8*, !dbg !1582
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !1582
  %func = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 36, i32 0, !dbg !1583
  store i8 (i8*, i8*, i64, %struct._cpp_strbuf*)* @convert_no_conversion, i8 (i8*, i8*, i64, %struct._cpp_strbuf*)** %func, align 8, !dbg !1584
  %cd = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 36, i32 1, !dbg !1585
  store i8* inttoptr (i64 -1 to i8*), i8** %cd, align 8, !dbg !1586
  %char_precision = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 45, !dbg !1587
  %2 = load i64, i64* %char_precision, align 8, !dbg !1587
  %conv = trunc i64 %2 to i32, !dbg !1587
  %width = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 36, i32 2, !dbg !1588
  store i32 %conv, i32* %width, align 8, !dbg !1589
  %call = tail call zeroext i8 @cpp_interpret_string(%struct.cpp_reader* %pfile, %struct.cpp_string* %from, i64 %count, %struct.cpp_string* %to, i32 61) #10, !dbg !1590
  call void @llvm.dbg.value(metadata i8 %call, metadata !1579, metadata !DIExpression()), !dbg !1580
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %0, i64 24, i1 false), !dbg !1591
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9, !dbg !1592
  ret i8 %call, !dbg !1593
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @convert_no_conversion(i8* %cd, i8* %from, i64 %flen, %struct._cpp_strbuf* %to) #3 !dbg !1594 {
entry:
  call void @llvm.dbg.value(metadata i8* %cd, metadata !1596, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i8* %from, metadata !1597, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i64 %flen, metadata !1598, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %to, metadata !1599, metadata !DIExpression()), !dbg !1600
  %len = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 2, !dbg !1601
  %0 = load i64, i64* %len, align 8, !dbg !1601
  %add = add i64 %0, %flen, !dbg !1603
  %asize = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 1, !dbg !1604
  %1 = load i64, i64* %asize, align 8, !dbg !1604
  %cmp = icmp ugt i64 %add, %1, !dbg !1605
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !1606

entry.if.end_crit_edge:                           ; preds = %entry
  %text6.phi.trans.insert = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 0, !dbg !1600
  %.pre = load i8*, i8** %text6.phi.trans.insert, align 8, !dbg !1607
  br label %if.end, !dbg !1606

if.then:                                          ; preds = %entry
  store i64 %add, i64* %asize, align 8, !dbg !1608
  %text = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 0, !dbg !1610
  %2 = load i8*, i8** %text, align 8, !dbg !1610
  %call = tail call i8* @xrealloc(i8* %2, i64 %add) #8, !dbg !1610
  store i8* %call, i8** %text, align 8, !dbg !1611
  %.pre1 = load i64, i64* %len, align 8, !dbg !1612
  br label %if.end, !dbg !1613

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %3 = phi i64 [ %0, %entry.if.end_crit_edge ], [ %.pre1, %if.then ], !dbg !1612
  %4 = phi i8* [ %.pre, %entry.if.end_crit_edge ], [ %call, %if.then ], !dbg !1607
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %3, !dbg !1614
  %call8 = tail call i8* @memcpy(i8* %add.ptr, i8* %from, i64 %flen) #8, !dbg !1615
  %5 = load i64, i64* %len, align 8, !dbg !1616
  %add10 = add i64 %5, %flen, !dbg !1616
  store i64 %add10, i64* %len, align 8, !dbg !1616
  ret i8 1, !dbg !1617
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cpp_interpret_charconst(%struct.cpp_reader* %pfile, %struct.cpp_token* %token, i32* %pchars_seen, i32* %unsignedp) local_unnamed_addr #3 !dbg !1618 {
entry:
  %str = alloca %struct.cpp_string, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1624, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata %struct.cpp_token* %token, metadata !1625, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i32* %pchars_seen, metadata !1626, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i32* %unsignedp, metadata !1627, metadata !DIExpression()), !dbg !1631
  %0 = bitcast %struct.cpp_string* %str to i8*, !dbg !1632
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9, !dbg !1632
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %0, i8 0, i64 16, i1 false), !dbg !1633
  %type = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 1, !dbg !1634
  %bf.load = load i8, i8* %type, align 4, !dbg !1634
  %cmp = icmp ne i8 %bf.load, 56, !dbg !1635
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !1629, metadata !DIExpression()), !dbg !1631
  %len = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 0, !dbg !1636
  %1 = load i32, i32* %len, align 8, !dbg !1636
  %conv3 = zext i32 %1 to i64, !dbg !1638
  %conv5 = select i1 %cmp, i64 3, i64 2, !dbg !1639
  %cmp6 = icmp eq i64 %conv5, %conv3, !dbg !1640
  br i1 %cmp6, label %if.then, label %if.else, !dbg !1641

if.then:                                          ; preds = %entry
  %call = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1642
  br label %cleanup, !dbg !1644

if.else:                                          ; preds = %entry
  %str9 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, !dbg !1645
  %bf.cast12 = zext i8 %bf.load to i32, !dbg !1647
  call void @llvm.dbg.value(metadata %struct.cpp_string* %str, metadata !1628, metadata !DIExpression(DW_OP_deref)), !dbg !1631
  %call13 = call zeroext i8 @cpp_interpret_string(%struct.cpp_reader* %pfile, %struct.cpp_string* nonnull %str9, i64 1, %struct.cpp_string* nonnull %str, i32 %bf.cast12) #10, !dbg !1648
  %tobool = icmp eq i8 %call13, 0, !dbg !1648
  br i1 %tobool, label %cleanup, label %if.end15, !dbg !1649

if.end15:                                         ; preds = %if.else
  br i1 %cmp, label %if.then17, label %if.else22, !dbg !1650

if.then17:                                        ; preds = %if.end15
  %bf.load19 = load i8, i8* %type, align 4, !dbg !1651
  %bf.cast20 = zext i8 %bf.load19 to i32, !dbg !1651
  %2 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i64 0, i32 0, !dbg !1653
  %3 = load i32, i32* %2, align 8, !dbg !1653
  %4 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i64 0, i32 1, !dbg !1653
  %5 = load i8*, i8** %4, align 8, !dbg !1653
  %call21 = call fastcc i32 @wide_str_to_charconst(%struct.cpp_reader* %pfile, i32 %3, i8* %5, i32* %pchars_seen, i32* %unsignedp, i32 %bf.cast20) #10, !dbg !1653
  call void @llvm.dbg.value(metadata i32 %call21, metadata !1630, metadata !DIExpression()), !dbg !1631
  br label %if.end24, !dbg !1654

if.else22:                                        ; preds = %if.end15
  %6 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i64 0, i32 0, !dbg !1655
  %7 = load i32, i32* %6, align 8, !dbg !1655
  %8 = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i64 0, i32 1, !dbg !1655
  %9 = load i8*, i8** %8, align 8, !dbg !1655
  %call23 = call fastcc i32 @narrow_str_to_charconst(%struct.cpp_reader* %pfile, i32 %7, i8* %9, i32* %pchars_seen, i32* %unsignedp) #10, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %call23, metadata !1630, metadata !DIExpression()), !dbg !1631
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then17
  %result.0 = phi i32 [ %call21, %if.then17 ], [ %call23, %if.else22 ], !dbg !1656
  call void @llvm.dbg.value(metadata i32 %result.0, metadata !1630, metadata !DIExpression()), !dbg !1631
  %text = getelementptr inbounds %struct.cpp_string, %struct.cpp_string* %str, i64 0, i32 1, !dbg !1657
  %10 = load i8*, i8** %text, align 8, !dbg !1657
  %text27 = getelementptr inbounds %struct.cpp_token, %struct.cpp_token* %token, i64 0, i32 3, i32 0, i32 1, !dbg !1659
  %11 = load i8*, i8** %text27, align 8, !dbg !1659
  %cmp28 = icmp eq i8* %10, %11, !dbg !1660
  br i1 %cmp28, label %cleanup, label %if.then30, !dbg !1661

if.then30:                                        ; preds = %if.end24
  call void @free(i8* %10) #8, !dbg !1662
  br label %cleanup, !dbg !1662

cleanup:                                          ; preds = %if.end24, %if.else, %if.then30, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.else ], [ %result.0, %if.then30 ], [ %result.0, %if.end24 ], !dbg !1631
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9, !dbg !1663
  ret i32 %retval.0, !dbg !1663
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @wide_str_to_charconst(%struct.cpp_reader* %pfile, i32 %str.coerce0, i8* %str.coerce1, i32* %pchars_seen, i32* %unsignedp, i32 %type) unnamed_addr #3 !dbg !1664 {
entry:
  %tmp = alloca %struct.cset_converter, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1668, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32* %pchars_seen, metadata !1670, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32* %unsignedp, metadata !1671, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32 %type, metadata !1672, metadata !DIExpression()), !dbg !1683
  %bytes_big_endian = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 50, !dbg !1684
  %0 = load i8, i8* %bytes_big_endian, align 2, !dbg !1684
  call void @llvm.dbg.value(metadata i8 %0, metadata !1673, metadata !DIExpression()), !dbg !1683
  call fastcc void @converter_for_type(%struct.cset_converter* nonnull sret %tmp, %struct.cpp_reader* %pfile, i32 %type) #10, !dbg !1685
  %width1 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %tmp, i64 0, i32 2, !dbg !1686
  %1 = load i32, i32* %width1, align 8, !dbg !1686
  %conv = sext i32 %1 to i64, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1674, metadata !DIExpression()), !dbg !1683
  %char_precision = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 45, !dbg !1687
  %2 = load i64, i64* %char_precision, align 8, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %2, metadata !1675, metadata !DIExpression()), !dbg !1683
  %call = call fastcc i64 @width_to_mask(i64 %conv) #10, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %call, metadata !1676, metadata !DIExpression()), !dbg !1683
  %call3 = call fastcc i64 @width_to_mask(i64 %2) #10, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %call3, metadata !1677, metadata !DIExpression()), !dbg !1683
  %div = udiv i64 %conv, %2, !dbg !1690
  call void @llvm.dbg.value(metadata i64 %div, metadata !1678, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32 0, metadata !1681, metadata !DIExpression()), !dbg !1683
  %conv4 = zext i32 %str.coerce0 to i64, !dbg !1691
  %mul = shl i64 %div, 1, !dbg !1692
  %sub = sub i64 %conv4, %mul, !dbg !1693
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1679, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32 0, metadata !1681, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 0, metadata !1680, metadata !DIExpression()), !dbg !1683
  %tobool = icmp eq i8 %0, 0, !dbg !1694
  %add9 = add i64 %sub, %div, !dbg !1694
  %sh_prom = trunc i64 %2 to i32, !dbg !1694
  br i1 %tobool, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !1698

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %for.cond, !dbg !1698

entry.split.us:                                   ; preds = %entry
  br label %for.cond.us, !dbg !1698

for.cond.us:                                      ; preds = %for.body.us, %entry.split.us
  %i.0.us = phi i64 [ 0, %entry.split.us ], [ %inc.us, %for.body.us ], !dbg !1699
  %result.0.us = phi i32 [ 0, %entry.split.us ], [ %conv16.us, %for.body.us ], !dbg !1683
  call void @llvm.dbg.value(metadata i32 %result.0.us, metadata !1681, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %i.0.us, metadata !1680, metadata !DIExpression()), !dbg !1683
  %cmp.us = icmp ult i64 %i.0.us, %div, !dbg !1700
  br i1 %cmp.us, label %for.body.us, label %for.end.us-lcssa.us, !dbg !1701

for.body.us:                                      ; preds = %for.cond.us
  %3 = xor i64 %i.0.us, -1, !dbg !1702
  %sub11.us = add i64 %add9, %3, !dbg !1702
  %cond.in.in.us = getelementptr inbounds i8, i8* %str.coerce1, i64 %sub11.us, !dbg !1694
  %cond.in.us = load i8, i8* %cond.in.in.us, align 1, !dbg !1694
  call void @llvm.dbg.value(metadata i8 %cond.in.us, metadata !1682, metadata !DIExpression()), !dbg !1683
  %shl.us = shl i32 %result.0.us, %sh_prom, !dbg !1703
  %conv15.us = zext i8 %cond.in.us to i64, !dbg !1704
  %and.us = and i64 %call3, %conv15.us, !dbg !1705
  %4 = trunc i64 %and.us to i32, !dbg !1706
  %conv16.us = or i32 %shl.us, %4, !dbg !1706
  call void @llvm.dbg.value(metadata i32 %conv16.us, metadata !1681, metadata !DIExpression()), !dbg !1683
  %inc.us = add i64 %i.0.us, 1, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !1680, metadata !DIExpression()), !dbg !1683
  br label %for.cond.us, !dbg !1708, !llvm.loop !1709

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  %result.0.us.lcssa = phi i32 [ %result.0.us, %for.cond.us ], !dbg !1683
  call void @llvm.dbg.value(metadata i32 %result.0.us.lcssa, metadata !1681, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32 %result.0.us.lcssa, metadata !1681, metadata !DIExpression()), !dbg !1683
  br label %for.end, !dbg !1711

for.cond:                                         ; preds = %for.body, %entry.entry.split_crit_edge
  %i.0 = phi i64 [ 0, %entry.entry.split_crit_edge ], [ %inc, %for.body ], !dbg !1699
  %result.0 = phi i32 [ 0, %entry.entry.split_crit_edge ], [ %conv16, %for.body ], !dbg !1683
  call void @llvm.dbg.value(metadata i32 %result.0, metadata !1681, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1680, metadata !DIExpression()), !dbg !1683
  %cmp = icmp ult i64 %i.0, %div, !dbg !1700
  br i1 %cmp, label %for.body, label %for.end.us-lcssa, !dbg !1701

for.body:                                         ; preds = %for.cond
  %add = add i64 %sub, %i.0, !dbg !1713
  %cond.in.in = getelementptr inbounds i8, i8* %str.coerce1, i64 %add, !dbg !1694
  %cond.in = load i8, i8* %cond.in.in, align 1, !dbg !1694
  call void @llvm.dbg.value(metadata i8 %cond.in, metadata !1682, metadata !DIExpression()), !dbg !1683
  %shl = shl i32 %result.0, %sh_prom, !dbg !1703
  %conv15 = zext i8 %cond.in to i64, !dbg !1704
  %and = and i64 %call3, %conv15, !dbg !1705
  %5 = trunc i64 %and to i32, !dbg !1706
  %conv16 = or i32 %shl, %5, !dbg !1706
  call void @llvm.dbg.value(metadata i32 %conv16, metadata !1681, metadata !DIExpression()), !dbg !1683
  %inc = add i64 %i.0, 1, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1680, metadata !DIExpression()), !dbg !1683
  br label %for.cond, !dbg !1708, !llvm.loop !1709

for.end.us-lcssa:                                 ; preds = %for.cond
  %result.0.lcssa4 = phi i32 [ %result.0, %for.cond ], !dbg !1683
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa4, metadata !1681, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa4, metadata !1681, metadata !DIExpression()), !dbg !1683
  br label %for.end, !dbg !1711

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %result.0.lcssa = phi i32 [ %result.0.lcssa4, %for.end.us-lcssa ], [ %result.0.us.lcssa, %for.end.us-lcssa.us ], !dbg !1683
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa, metadata !1681, metadata !DIExpression()), !dbg !1683
  %cmp20 = icmp ult i64 %mul, %conv4, !dbg !1714
  br i1 %cmp20, label %if.then, label %if.end, !dbg !1715

if.then:                                          ; preds = %for.end
  %call22 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !1716
  br label %if.end, !dbg !1716

if.end:                                           ; preds = %if.then, %for.end
  %cmp23 = icmp ult i32 %1, 32, !dbg !1717
  br i1 %cmp23, label %if.then25, label %if.end.if.end48_crit_edge, !dbg !1719

if.end.if.end48_crit_edge:                        ; preds = %if.end
  %.pre = and i32 %type, -2, !dbg !1720
  br label %if.end48, !dbg !1719

if.then25:                                        ; preds = %if.end
  %6 = and i32 %type, -2, !dbg !1722
  %switch = icmp eq i32 %6, 58, !dbg !1722
  br i1 %switch, label %if.then40, label %lor.lhs.false30, !dbg !1722

lor.lhs.false30:                                  ; preds = %if.then25
  %unsigned_wchar = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 49, !dbg !1725
  %7 = load i8, i8* %unsigned_wchar, align 1, !dbg !1725
  %tobool33 = icmp eq i8 %7, 0, !dbg !1725
  br i1 %tobool33, label %lor.lhs.false34, label %if.then40, !dbg !1726

lor.lhs.false34:                                  ; preds = %lor.lhs.false30
  %sub35 = add i32 %1, -1, !dbg !1727
  %shl37 = shl i32 1, %sub35, !dbg !1728
  %and38 = and i32 %result.0.lcssa, %shl37, !dbg !1729
  %tobool39 = icmp eq i32 %and38, 0, !dbg !1729
  br i1 %tobool39, label %if.then40, label %if.else, !dbg !1730

if.then40:                                        ; preds = %lor.lhs.false34, %lor.lhs.false30, %if.then25
  %8 = trunc i64 %call to i32, !dbg !1731
  %conv43 = and i32 %result.0.lcssa, %8, !dbg !1731
  call void @llvm.dbg.value(metadata i32 %conv43, metadata !1681, metadata !DIExpression()), !dbg !1683
  br label %if.end48, !dbg !1732

if.else:                                          ; preds = %lor.lhs.false34
  %9 = trunc i64 %call to i32, !dbg !1733
  %10 = xor i32 %9, -1, !dbg !1733
  %conv46 = or i32 %result.0.lcssa, %10, !dbg !1733
  call void @llvm.dbg.value(metadata i32 %conv46, metadata !1681, metadata !DIExpression()), !dbg !1683
  br label %if.end48

if.end48:                                         ; preds = %if.end.if.end48_crit_edge, %if.then40, %if.else
  %.pre-phi = phi i32 [ %.pre, %if.end.if.end48_crit_edge ], [ %6, %if.then40 ], [ %6, %if.else ], !dbg !1720
  %result.2 = phi i32 [ %result.0.lcssa, %if.end.if.end48_crit_edge ], [ %conv43, %if.then40 ], [ %conv46, %if.else ], !dbg !1683
  call void @llvm.dbg.value(metadata i32 %result.2, metadata !1681, metadata !DIExpression()), !dbg !1683
  %switch2 = icmp eq i32 %.pre-phi, 58, !dbg !1720
  br i1 %switch2, label %if.then59, label %lor.lhs.false54, !dbg !1720

lor.lhs.false54:                                  ; preds = %if.end48
  %unsigned_wchar56 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 49, !dbg !1734
  %11 = load i8, i8* %unsigned_wchar56, align 1, !dbg !1734
  %tobool58 = icmp eq i8 %11, 0, !dbg !1734
  br i1 %tobool58, label %if.else60, label %if.then59, !dbg !1735

if.then59:                                        ; preds = %lor.lhs.false54, %if.end48
  br label %if.end61, !dbg !1736

if.else60:                                        ; preds = %lor.lhs.false54
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %if.then59
  %storemerge = phi i32 [ 0, %if.else60 ], [ 1, %if.then59 ], !dbg !1737
  store i32 %storemerge, i32* %unsignedp, align 4, !dbg !1737
  store i32 1, i32* %pchars_seen, align 4, !dbg !1738
  ret i32 %result.2, !dbg !1739
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @narrow_str_to_charconst(%struct.cpp_reader* %pfile, i32 %str.coerce0, i8* %str.coerce1, i32* %pchars_seen, i32* %unsignedp) unnamed_addr #3 !dbg !1740 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1744, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32* %pchars_seen, metadata !1746, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32* %unsignedp, metadata !1747, metadata !DIExpression()), !dbg !1755
  %char_precision = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 45, !dbg !1756
  %0 = load i64, i64* %char_precision, align 8, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %0, metadata !1748, metadata !DIExpression()), !dbg !1755
  %int_precision = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 46, !dbg !1757
  %1 = load i64, i64* %int_precision, align 8, !dbg !1757
  %div = udiv i64 %1, %0, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %div, metadata !1749, metadata !DIExpression()), !dbg !1755
  %call = tail call fastcc i64 @width_to_mask(i64 %0) #10, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %call, metadata !1750, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 0, metadata !1752, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 0, metadata !1751, metadata !DIExpression()), !dbg !1755
  %sub = add i32 %str.coerce0, -1, !dbg !1760
  %conv = zext i32 %sub to i64, !dbg !1760
  %cmp5 = icmp ult i64 %0, 32, !dbg !1763
  %sh_prom = trunc i64 %0 to i32, !dbg !1766
  br i1 %cmp5, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !1767

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %for.cond, !dbg !1767

entry.split.us:                                   ; preds = %entry
  br label %for.cond.us, !dbg !1767

for.cond.us:                                      ; preds = %for.body.us, %entry.split.us
  %i.0.us = phi i64 [ 0, %entry.split.us ], [ %inc.us, %for.body.us ], !dbg !1768
  %result.0.us = phi i32 [ 0, %entry.split.us ], [ %result.1.us, %for.body.us ], !dbg !1755
  call void @llvm.dbg.value(metadata i32 %result.0.us, metadata !1752, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %i.0.us, metadata !1751, metadata !DIExpression()), !dbg !1755
  %exitcond = icmp eq i64 %i.0.us, %conv, !dbg !1769
  br i1 %exitcond, label %for.end.us-lcssa.us, label %for.body.us, !dbg !1770

for.body.us:                                      ; preds = %for.cond.us
  %arrayidx.us = getelementptr inbounds i8, i8* %str.coerce1, i64 %i.0.us, !dbg !1771
  %2 = load i8, i8* %arrayidx.us, align 1, !dbg !1771
  %conv3.us = zext i8 %2 to i64, !dbg !1771
  %and.us = and i64 %call, %conv3.us, !dbg !1772
  %conv4.us = trunc i64 %and.us to i32, !dbg !1771
  call void @llvm.dbg.value(metadata i32 %conv4.us, metadata !1753, metadata !DIExpression()), !dbg !1755
  %shl.us = shl i32 %result.0.us, %sh_prom, !dbg !1773
  %result.1.us = or i32 %shl.us, %conv4.us, !dbg !1773
  call void @llvm.dbg.value(metadata i32 %result.1.us, metadata !1752, metadata !DIExpression()), !dbg !1755
  %inc.us = add nuw nsw i64 %i.0.us, 1, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !1751, metadata !DIExpression()), !dbg !1755
  br label %for.cond.us, !dbg !1775, !llvm.loop !1776

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  %result.0.us.lcssa = phi i32 [ %result.0.us, %for.cond.us ], !dbg !1755
  call void @llvm.dbg.value(metadata i32 %result.0.us.lcssa, metadata !1752, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1751, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 %result.0.us.lcssa, metadata !1752, metadata !DIExpression()), !dbg !1755
  br label %for.end, !dbg !1778

for.cond:                                         ; preds = %for.body, %entry.entry.split_crit_edge
  %i.0 = phi i64 [ 0, %entry.entry.split_crit_edge ], [ %inc, %for.body ], !dbg !1768
  %result.0 = phi i32 [ 0, %entry.entry.split_crit_edge ], [ %conv4, %for.body ], !dbg !1755
  call void @llvm.dbg.value(metadata i32 %result.0, metadata !1752, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1751, metadata !DIExpression()), !dbg !1755
  %exitcond4 = icmp eq i64 %i.0, %conv, !dbg !1769
  br i1 %exitcond4, label %for.end.us-lcssa, label %for.body, !dbg !1770

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %str.coerce1, i64 %i.0, !dbg !1771
  %3 = load i8, i8* %arrayidx, align 1, !dbg !1771
  %conv3 = zext i8 %3 to i64, !dbg !1771
  %and = and i64 %call, %conv3, !dbg !1772
  %conv4 = trunc i64 %and to i32, !dbg !1771
  call void @llvm.dbg.value(metadata i32 %conv4, metadata !1753, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 %conv4, metadata !1752, metadata !DIExpression()), !dbg !1755
  %inc = add nuw nsw i64 %i.0, 1, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1751, metadata !DIExpression()), !dbg !1755
  br label %for.cond, !dbg !1775, !llvm.loop !1776

for.end.us-lcssa:                                 ; preds = %for.cond
  %result.0.lcssa5 = phi i32 [ %result.0, %for.cond ], !dbg !1755
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa5, metadata !1752, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1751, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa5, metadata !1752, metadata !DIExpression()), !dbg !1755
  br label %for.end, !dbg !1778

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %result.0.lcssa = phi i32 [ %result.0.lcssa5, %for.end.us-lcssa ], [ %result.0.us.lcssa, %for.end.us-lcssa.us ], !dbg !1755
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1751, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa, metadata !1752, metadata !DIExpression()), !dbg !1755
  %cmp7 = icmp ult i64 %div, %conv, !dbg !1778
  br i1 %cmp7, label %if.then9, label %if.else11, !dbg !1780

if.then9:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 %div, metadata !1751, metadata !DIExpression()), !dbg !1755
  %call10 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !1781
  br label %if.end19, !dbg !1783

if.else11:                                        ; preds = %for.end
  %cmp12 = icmp ugt i32 %sub, 1, !dbg !1784
  br i1 %cmp12, label %land.lhs.true, label %if.end19, !dbg !1786

land.lhs.true:                                    ; preds = %if.else11
  %warn_multichar = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 16, !dbg !1787
  %4 = load i8, i8* %warn_multichar, align 2, !dbg !1787
  %tobool = icmp eq i8 %4, 0, !dbg !1787
  br i1 %tobool, label %if.end19, label %if.then16, !dbg !1788

if.then16:                                        ; preds = %land.lhs.true
  %call17 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !1789
  br label %if.end19, !dbg !1789

if.end19:                                         ; preds = %land.lhs.true, %if.else11, %if.then16, %if.then9
  %i.1 = phi i64 [ %div, %if.then9 ], [ %conv, %if.then16 ], [ %conv, %land.lhs.true ], [ %conv, %if.else11 ], !dbg !1755
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1751, metadata !DIExpression()), !dbg !1755
  %cmp20 = icmp ugt i64 %i.1, 1, !dbg !1790
  br i1 %cmp20, label %if.end25, label %if.else23, !dbg !1792

if.else23:                                        ; preds = %if.end19
  %unsigned_char = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 48, !dbg !1793
  %5 = load i8, i8* %unsigned_char, align 8, !dbg !1793
  call void @llvm.dbg.value(metadata i8 %5, metadata !1754, metadata !DIExpression()), !dbg !1755
  %phitmp = zext i8 %5 to i32
  br label %if.end25

if.end25:                                         ; preds = %if.end19, %if.else23
  %unsigned_p.0 = phi i32 [ %phitmp, %if.else23 ], [ 0, %if.end19 ]
  br i1 %cmp20, label %if.then28, label %if.end31, !dbg !1794

if.then28:                                        ; preds = %if.end25
  %6 = load i64, i64* %int_precision, align 8, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %6, metadata !1748, metadata !DIExpression()), !dbg !1755
  br label %if.end31, !dbg !1797

if.end31:                                         ; preds = %if.then28, %if.end25
  %width.0 = phi i64 [ %6, %if.then28 ], [ %0, %if.end25 ], !dbg !1755
  call void @llvm.dbg.value(metadata i64 %width.0, metadata !1748, metadata !DIExpression()), !dbg !1755
  %cmp32 = icmp ult i64 %width.0, 32, !dbg !1798
  br i1 %cmp32, label %if.then34, label %if.end55, !dbg !1800

if.then34:                                        ; preds = %if.end31
  %sh_prom35 = trunc i64 %width.0 to i32, !dbg !1801
  %notmask = shl nsw i32 -1, %sh_prom35, !dbg !1803
  %sub37 = xor i32 %notmask, -1, !dbg !1803
  call void @llvm.dbg.value(metadata i32 %sub37, metadata !1750, metadata !DIExpression()), !dbg !1755
  %tobool40 = icmp eq i32 %unsigned_p.0, 0, !dbg !1804
  br i1 %tobool40, label %lor.lhs.false, label %if.then46, !dbg !1806

lor.lhs.false:                                    ; preds = %if.then34
  %sh_prom42 = add i32 %sh_prom35, -1, !dbg !1807
  %shl43 = shl i32 1, %sh_prom42, !dbg !1807
  %and44 = and i32 %result.0.lcssa, %shl43, !dbg !1808
  %tobool45 = icmp eq i32 %and44, 0, !dbg !1808
  br i1 %tobool45, label %if.then46, label %if.else50, !dbg !1809

if.then46:                                        ; preds = %lor.lhs.false, %if.then34
  %and481 = and i32 %result.0.lcssa, %sub37, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %and481, metadata !1752, metadata !DIExpression()), !dbg !1755
  br label %if.end55, !dbg !1811

if.else50:                                        ; preds = %lor.lhs.false
  %or52 = or i32 %result.0.lcssa, %notmask, !dbg !1812
  call void @llvm.dbg.value(metadata i32 %or52, metadata !1752, metadata !DIExpression()), !dbg !1755
  br label %if.end55

if.end55:                                         ; preds = %if.then46, %if.else50, %if.end31
  %result.3 = phi i32 [ %result.0.lcssa, %if.end31 ], [ %and481, %if.then46 ], [ %or52, %if.else50 ], !dbg !1755
  call void @llvm.dbg.value(metadata i32 %result.3, metadata !1752, metadata !DIExpression()), !dbg !1755
  %conv56 = trunc i64 %i.1 to i32, !dbg !1813
  store i32 %conv56, i32* %pchars_seen, align 4, !dbg !1814
  store i32 %unsigned_p.0, i32* %unsignedp, align 4, !dbg !1815
  ret i32 %result.3, !dbg !1816
}

; Function Attrs: nounwind uwtable
define dso_local %struct.cpp_hashnode* @_cpp_interpret_identifier(%struct.cpp_reader* %pfile, i8* %id, i64 %len) local_unnamed_addr #3 !dbg !1817 {
entry:
  %bufp = alloca i8*, align 8
  %bufleft = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1821, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8* %id, metadata !1822, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i64 %len, metadata !1823, metadata !DIExpression()), !dbg !1835
  %add = add i64 %len, 1, !dbg !1836
  %0 = alloca i8, i64 %add, align 16, !dbg !1836
  call void @llvm.dbg.value(metadata i8* %0, metadata !1824, metadata !DIExpression()), !dbg !1835
  %1 = bitcast i8** %bufp to i8*, !dbg !1837
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9, !dbg !1837
  call void @llvm.dbg.value(metadata i8* %0, metadata !1825, metadata !DIExpression()), !dbg !1835
  store i8* %0, i8** %bufp, align 8, !dbg !1838
  call void @llvm.dbg.value(metadata i64 0, metadata !1826, metadata !DIExpression()), !dbg !1835
  %2 = bitcast i64* %bufleft to i8*, !dbg !1839
  %3 = bitcast i8** %bufp to i64*, !dbg !1839
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i64, !dbg !1839
  br label %for.cond, !dbg !1840

for.cond:                                         ; preds = %for.inc, %entry
  %idp.0 = phi i64 [ 0, %entry ], [ %inc37, %for.inc ], !dbg !1841
  call void @llvm.dbg.value(metadata i64 %idp.0, metadata !1826, metadata !DIExpression()), !dbg !1835
  %cmp = icmp ult i64 %idp.0, %len, !dbg !1842
  br i1 %cmp, label %for.body, label %for.end, !dbg !1843

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %id, i64 %idp.0, !dbg !1844
  %4 = load i8, i8* %arrayidx, align 1, !dbg !1844
  %cmp1 = icmp eq i8 %4, 92, !dbg !1845
  br i1 %cmp1, label %if.else, label %if.then, !dbg !1846

if.then:                                          ; preds = %for.body
  %5 = load i8*, i8** %bufp, align 8, !dbg !1847
  call void @llvm.dbg.value(metadata i8* %5, metadata !1825, metadata !DIExpression()), !dbg !1835
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1847
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1825, metadata !DIExpression()), !dbg !1835
  store i8* %incdec.ptr, i8** %bufp, align 8, !dbg !1847
  store i8 %4, i8* %5, align 1, !dbg !1848
  br label %for.inc, !dbg !1849

if.else:                                          ; preds = %for.body
  %add4 = add i64 %idp.0, 1, !dbg !1850
  %arrayidx5 = getelementptr inbounds i8, i8* %id, i64 %add4, !dbg !1851
  %6 = load i8, i8* %arrayidx5, align 1, !dbg !1851
  %cmp7 = icmp eq i8 %6, 117, !dbg !1852
  %cond = select i1 %cmp7, i32 4, i32 8, !dbg !1851
  call void @llvm.dbg.value(metadata i32 %cond, metadata !1827, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 0, metadata !1832, metadata !DIExpression()), !dbg !1839
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1853
  %7 = load i64, i64* %3, align 8, !dbg !1854
  %sub.ptr.sub1 = sub i64 %sub.ptr.rhs.cast, %7, !dbg !1855
  %sub = add i64 %sub.ptr.sub1, %len, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1833, metadata !DIExpression()), !dbg !1839
  store i64 %sub, i64* %bufleft, align 8, !dbg !1856
  %add9 = add i64 %idp.0, 2, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %add9, metadata !1826, metadata !DIExpression()), !dbg !1835
  %8 = inttoptr i64 %7 to i8*, !dbg !1858
  br label %while.cond, !dbg !1858

while.cond:                                       ; preds = %while.body, %if.else
  %idp.1 = phi i64 [ %add9, %if.else ], [ %inc, %while.body ], !dbg !1839
  %length.0 = phi i32 [ %cond, %if.else ], [ %dec, %while.body ], !dbg !1839
  %value.0 = phi i32 [ 0, %if.else ], [ %add22, %while.body ], !dbg !1839
  call void @llvm.dbg.value(metadata i32 %value.0, metadata !1832, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %length.0, metadata !1827, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %idp.1, metadata !1826, metadata !DIExpression()), !dbg !1835
  %tobool = icmp ne i32 %length.0, 0, !dbg !1859
  %cmp10 = icmp ult i64 %idp.1, %len, !dbg !1860
  %or.cond = and i1 %tobool, %cmp10, !dbg !1861
  br i1 %or.cond, label %land.rhs, label %while.end, !dbg !1861

land.rhs:                                         ; preds = %while.cond
  %arrayidx12 = getelementptr inbounds i8, i8* %id, i64 %idp.1, !dbg !1862
  %9 = load i8, i8* %arrayidx12, align 1, !dbg !1862
  %idxprom = zext i8 %9 to i64, !dbg !1862
  %arrayidx14 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !1862
  %10 = load i16, i16* %arrayidx14, align 2, !dbg !1862
  %11 = and i16 %10, 256, !dbg !1862
  %tobool17 = icmp eq i16 %11, 0, !dbg !1863
  br i1 %tobool17, label %while.end, label %while.body, !dbg !1858

while.body:                                       ; preds = %land.rhs
  %shl = shl i32 %value.0, 4, !dbg !1864
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i64 0, i64 %idxprom, !dbg !1866
  %12 = load i8, i8* %arrayidx20, align 1, !dbg !1866
  %conv21 = zext i8 %12 to i32, !dbg !1866
  %add22 = add i32 %shl, %conv21, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %add22, metadata !1832, metadata !DIExpression()), !dbg !1839
  %inc = add i64 %idp.1, 1, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1826, metadata !DIExpression()), !dbg !1835
  %dec = add i32 %length.0, -1, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1827, metadata !DIExpression()), !dbg !1839
  br label %while.cond, !dbg !1858, !llvm.loop !1870

while.end:                                        ; preds = %land.rhs, %while.cond
  %idp.1.lcssa = phi i64 [ %idp.1, %land.rhs ], [ %idp.1, %while.cond ], !dbg !1839
  %value.0.lcssa = phi i32 [ %value.0, %land.rhs ], [ %value.0, %while.cond ], !dbg !1839
  call void @llvm.dbg.value(metadata i64 %idp.1.lcssa, metadata !1826, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i64 %idp.1.lcssa, metadata !1826, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i32 %value.0.lcssa, metadata !1832, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %value.0.lcssa, metadata !1832, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %idp.1.lcssa, metadata !1826, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i64 %idp.1.lcssa, metadata !1826, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i32 %value.0.lcssa, metadata !1832, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %value.0.lcssa, metadata !1832, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 %idp.1.lcssa, metadata !1826, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i64 %idp.1.lcssa, metadata !1826, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i32 %value.0.lcssa, metadata !1832, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %value.0.lcssa, metadata !1832, metadata !DIExpression()), !dbg !1839
  %dec23 = add i64 %idp.1.lcssa, -1, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %dec23, metadata !1826, metadata !DIExpression()), !dbg !1835
  %cmp24 = icmp eq i32 %value.0.lcssa, 36, !dbg !1873
  br i1 %cmp24, label %if.then26, label %if.end, !dbg !1875

if.then26:                                        ; preds = %while.end
  call void @llvm.dbg.value(metadata i8* %8, metadata !1825, metadata !DIExpression()), !dbg !1835
  %incdec.ptr27 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1876
  call void @llvm.dbg.value(metadata i8* %incdec.ptr27, metadata !1825, metadata !DIExpression()), !dbg !1835
  store i8* %incdec.ptr27, i8** %bufp, align 8, !dbg !1876
  store i8 36, i8* %8, align 1, !dbg !1878
  br label %cleanup, !dbg !1879

if.end:                                           ; preds = %while.end
  call void @llvm.dbg.value(metadata i8** %bufp, metadata !1825, metadata !DIExpression(DW_OP_deref)), !dbg !1835
  call void @llvm.dbg.value(metadata i64* %bufleft, metadata !1833, metadata !DIExpression(DW_OP_deref)), !dbg !1839
  %call = call fastcc i32 @one_cppchar_to_utf8(i32 %value.0.lcssa, i8** nonnull %bufp, i64* nonnull %bufleft) #10, !dbg !1880
  call void @llvm.dbg.value(metadata i32 %call, metadata !1834, metadata !DIExpression()), !dbg !1839
  %tobool28 = icmp eq i32 %call, 0, !dbg !1881
  br i1 %tobool28, label %cleanup, label %if.then29, !dbg !1883

if.then29:                                        ; preds = %if.end
  %call30 = tail call i32* @__errno_location() #12, !dbg !1884
  store i32 %call, i32* %call30, align 4, !dbg !1886
  %call31 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1887
  br label %cleanup, !dbg !1888

cleanup:                                          ; preds = %if.end, %if.then29, %if.then26
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then26 ], [ true, %if.then29 ], [ false, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !1889
  br i1 %cleanup.dest.slot.0, label %for.end, label %for.inc

for.inc:                                          ; preds = %cleanup, %if.then
  %idp.3 = phi i64 [ %idp.0, %if.then ], [ %dec23, %cleanup ], !dbg !1841
  call void @llvm.dbg.value(metadata i64 %idp.3, metadata !1826, metadata !DIExpression()), !dbg !1835
  %inc37 = add i64 %idp.3, 1, !dbg !1890
  call void @llvm.dbg.value(metadata i64 %inc37, metadata !1826, metadata !DIExpression()), !dbg !1835
  br label %for.cond, !dbg !1891, !llvm.loop !1892

for.end:                                          ; preds = %cleanup, %for.cond
  %hash_table = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 50, !dbg !1894
  %13 = load %struct.ht*, %struct.ht** %hash_table, align 8, !dbg !1894
  %14 = load i64, i64* %3, align 8, !dbg !1894
  %sub.ptr.sub40 = sub i64 %14, %sub.ptr.rhs.cast, !dbg !1894
  %call41 = call %struct.ht_identifier* @ht_lookup(%struct.ht* %13, i8* nonnull %0, i64 %sub.ptr.sub40, i32 1) #8, !dbg !1894
  %15 = bitcast %struct.ht_identifier* %call41 to %struct.cpp_hashnode*, !dbg !1894
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9, !dbg !1895
  ret %struct.cpp_hashnode* %15, !dbg !1896
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @one_cppchar_to_utf8(i32 %c, i8** %outbufp, i64* %outbytesleftp) unnamed_addr #0 !dbg !769 {
entry:
  %buf = alloca [6 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %c, metadata !774, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8** %outbufp, metadata !775, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64* %outbytesleftp, metadata !776, metadata !DIExpression()), !dbg !1897
  %0 = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i64 0, i64 0, !dbg !1898
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %0) #9, !dbg !1898
  call void @llvm.dbg.declare(metadata [6 x i8]* %buf, metadata !778, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata [6 x i8]* %buf, metadata !780, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !1897
  %1 = load i8*, i8** %outbufp, align 8, !dbg !1900
  call void @llvm.dbg.value(metadata i8* %1, metadata !781, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 1, metadata !777, metadata !DIExpression()), !dbg !1897
  %cmp = icmp ult i32 %c, 128, !dbg !1901
  br i1 %cmp, label %if.then, label %do.body.preheader, !dbg !1903

do.body.preheader:                                ; preds = %entry
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i64 0, i64 6, !dbg !1904
  call void @llvm.dbg.value(metadata i8* %arrayidx, metadata !780, metadata !DIExpression()), !dbg !1897
  br label %do.body, !dbg !1905

if.then:                                          ; preds = %entry
  %conv = trunc i32 %c to i8, !dbg !1907
  %incdec.ptr = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i64 0, i64 5, !dbg !1908
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !780, metadata !DIExpression()), !dbg !1897
  store i8 %conv, i8* %incdec.ptr, align 1, !dbg !1909
  br label %if.end, !dbg !1910

do.body:                                          ; preds = %do.body.backedge, %do.body.preheader
  %p.0 = phi i8* [ %arrayidx, %do.body.preheader ], [ %incdec.ptr2, %do.body.backedge ], !dbg !1897
  %nbytes.0 = phi i64 [ 1, %do.body.preheader ], [ %inc, %do.body.backedge ], !dbg !1897
  %c.addr.0 = phi i32 [ %c, %do.body.preheader ], [ %shr, %do.body.backedge ]
  call void @llvm.dbg.value(metadata i32 %c.addr.0, metadata !774, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %nbytes.0, metadata !777, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !780, metadata !DIExpression()), !dbg !1897
  %2 = trunc i32 %c.addr.0 to i8, !dbg !1911
  %3 = and i8 %2, 63, !dbg !1911
  %conv1 = or i8 %3, -128, !dbg !1911
  %incdec.ptr2 = getelementptr inbounds i8, i8* %p.0, i64 -1, !dbg !1913
  call void @llvm.dbg.value(metadata i8* %incdec.ptr2, metadata !780, metadata !DIExpression()), !dbg !1897
  store i8 %conv1, i8* %incdec.ptr2, align 1, !dbg !1914
  %shr = lshr i32 %c.addr.0, 6, !dbg !1915
  call void @llvm.dbg.value(metadata i32 %shr, metadata !774, metadata !DIExpression()), !dbg !1897
  %inc = add i64 %nbytes.0, 1, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %inc, metadata !777, metadata !DIExpression()), !dbg !1897
  %cmp3 = icmp ugt i32 %c.addr.0, 4031, !dbg !1917
  br i1 %cmp3, label %do.body.backedge, label %lor.rhs, !dbg !1905

do.body.backedge:                                 ; preds = %do.body, %lor.rhs
  br label %do.body, !dbg !1897, !llvm.loop !1918

lor.rhs:                                          ; preds = %do.body
  %arrayidx5 = getelementptr inbounds [6 x i8], [6 x i8]* @one_cppchar_to_utf8.limits, i64 0, i64 %nbytes.0, !dbg !1921
  %4 = load i8, i8* %arrayidx5, align 1, !dbg !1921
  %conv6 = zext i8 %4 to i32, !dbg !1921
  %and7 = and i32 %shr, %conv6, !dbg !1922
  %tobool = icmp eq i32 %and7, 0, !dbg !1905
  br i1 %tobool, label %do.end, label %do.body.backedge, !dbg !1923

do.end:                                           ; preds = %lor.rhs
  %p.0.lcssa = phi i8* [ %p.0, %lor.rhs ], !dbg !1897
  %nbytes.0.lcssa = phi i64 [ %nbytes.0, %lor.rhs ], !dbg !1897
  %shr.lcssa = phi i32 [ %shr, %lor.rhs ], !dbg !1915
  %inc.lcssa = phi i64 [ %inc, %lor.rhs ], !dbg !1916
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !780, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %nbytes.0.lcssa, metadata !777, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !780, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %nbytes.0.lcssa, metadata !777, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !780, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i64 %nbytes.0.lcssa, metadata !777, metadata !DIExpression()), !dbg !1897
  %arrayidx9 = getelementptr inbounds [6 x i8], [6 x i8]* @one_cppchar_to_utf8.masks, i64 0, i64 %nbytes.0.lcssa, !dbg !1924
  %5 = load i8, i8* %arrayidx9, align 1, !dbg !1924
  %6 = trunc i32 %shr.lcssa to i8, !dbg !1925
  %conv12 = or i8 %5, %6, !dbg !1925
  %incdec.ptr13 = getelementptr inbounds i8, i8* %p.0.lcssa, i64 -2, !dbg !1926
  call void @llvm.dbg.value(metadata i8* %incdec.ptr13, metadata !780, metadata !DIExpression()), !dbg !1897
  store i8 %conv12, i8* %incdec.ptr13, align 1, !dbg !1927
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %p.1 = phi i8* [ %incdec.ptr, %if.then ], [ %incdec.ptr13, %do.end ], !dbg !1928
  %nbytes.1 = phi i64 [ 1, %if.then ], [ %inc.lcssa, %do.end ], !dbg !1897
  call void @llvm.dbg.value(metadata i64 %nbytes.1, metadata !777, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !780, metadata !DIExpression()), !dbg !1897
  %7 = load i64, i64* %outbytesleftp, align 8, !dbg !1929
  %cmp14 = icmp ult i64 %7, %nbytes.1, !dbg !1931
  br i1 %cmp14, label %cleanup, label %while.cond.preheader, !dbg !1932

while.cond.preheader:                             ; preds = %if.end
  %arrayidx18 = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i64 0, i64 6, !dbg !1897
  br label %while.cond, !dbg !1933

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %p.2 = phi i8* [ %incdec.ptr21, %while.body ], [ %p.1, %while.cond.preheader ], !dbg !1897
  %outbuf.0 = phi i8* [ %incdec.ptr22, %while.body ], [ %1, %while.cond.preheader ], !dbg !1897
  call void @llvm.dbg.value(metadata i8* %outbuf.0, metadata !781, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %p.2, metadata !780, metadata !DIExpression()), !dbg !1897
  %cmp19 = icmp ult i8* %p.2, %arrayidx18, !dbg !1934
  br i1 %cmp19, label %while.body, label %while.end, !dbg !1933

while.body:                                       ; preds = %while.cond
  %incdec.ptr21 = getelementptr inbounds i8, i8* %p.2, i64 1, !dbg !1935
  call void @llvm.dbg.value(metadata i8* %incdec.ptr21, metadata !780, metadata !DIExpression()), !dbg !1897
  %8 = load i8, i8* %p.2, align 1, !dbg !1936
  %incdec.ptr22 = getelementptr inbounds i8, i8* %outbuf.0, i64 1, !dbg !1937
  call void @llvm.dbg.value(metadata i8* %incdec.ptr22, metadata !781, metadata !DIExpression()), !dbg !1897
  store i8 %8, i8* %outbuf.0, align 1, !dbg !1938
  br label %while.cond, !dbg !1933, !llvm.loop !1939

while.end:                                        ; preds = %while.cond
  %outbuf.0.lcssa = phi i8* [ %outbuf.0, %while.cond ], !dbg !1897
  call void @llvm.dbg.value(metadata i8* %outbuf.0.lcssa, metadata !781, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %outbuf.0.lcssa, metadata !781, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %outbuf.0.lcssa, metadata !781, metadata !DIExpression()), !dbg !1897
  %9 = load i64, i64* %outbytesleftp, align 8, !dbg !1940
  %sub23 = sub i64 %9, %nbytes.1, !dbg !1940
  store i64 %sub23, i64* %outbytesleftp, align 8, !dbg !1940
  store i8* %outbuf.0.lcssa, i8** %outbufp, align 8, !dbg !1941
  br label %cleanup, !dbg !1942

cleanup:                                          ; preds = %if.end, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ 7, %if.end ], !dbg !1897
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %0) #9, !dbg !1943
  ret i32 %retval.0, !dbg !1943
}

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() local_unnamed_addr #6

declare dso_local %struct.ht_identifier* @ht_lookup(%struct.ht*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @_cpp_convert_input(%struct.cpp_reader* %pfile, i8* %input_charset, i8* %input, i64 %size, i64 %len, i8** %buffer_start, i64* %st_size) local_unnamed_addr #3 !dbg !1944 {
entry:
  %input_cset = alloca %struct.cset_converter, align 8
  %to = alloca %struct._cpp_strbuf, align 8
  %tmp = alloca %struct.cset_converter, align 8
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !1952, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8* %input_charset, metadata !1953, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8* %input, metadata !1954, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %size, metadata !1955, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %len, metadata !1956, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i8** %buffer_start, metadata !1957, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64* %st_size, metadata !1958, metadata !DIExpression()), !dbg !1962
  %0 = bitcast %struct.cset_converter* %input_cset to i8*, !dbg !1963
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9, !dbg !1963
  %1 = bitcast %struct._cpp_strbuf* %to to i8*, !dbg !1964
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #9, !dbg !1964
  %2 = bitcast %struct.cset_converter* %tmp to i8*, !dbg !1965
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #9, !dbg !1965
  call fastcc void @init_iconv_desc(%struct.cset_converter* nonnull sret %tmp, %struct.cpp_reader* %pfile, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %input_charset) #10, !dbg !1965
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !1965
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #9, !dbg !1965
  %func = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %input_cset, i64 0, i32 0, !dbg !1966
  %3 = load i8 (i8*, i8*, i64, %struct._cpp_strbuf*)*, i8 (i8*, i8*, i64, %struct._cpp_strbuf*)** %func, align 8, !dbg !1966
  %cmp = icmp eq i8 (i8*, i8*, i64, %struct._cpp_strbuf*)* %3, @convert_no_conversion, !dbg !1968
  br i1 %cmp, label %if.then, label %if.else, !dbg !1969

if.then:                                          ; preds = %entry
  %text = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 0, !dbg !1970
  store i8* %input, i8** %text, align 8, !dbg !1972
  %asize = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 1, !dbg !1973
  store i64 %size, i64* %asize, align 8, !dbg !1974
  %len1 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 2, !dbg !1975
  store i64 %len, i64* %len1, align 8, !dbg !1976
  br label %if.end12, !dbg !1977

if.else:                                          ; preds = %entry
  %4 = icmp ugt i64 %len, 65536, !dbg !1978
  %.len = select i1 %4, i64 %len, i64 65536, !dbg !1978
  %asize3 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 1, !dbg !1980
  store i64 %.len, i64* %asize3, align 8, !dbg !1981
  %call = call i8* @xmalloc(i64 %.len) #8, !dbg !1982
  %text5 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 0, !dbg !1983
  store i8* %call, i8** %text5, align 8, !dbg !1984
  %len6 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 2, !dbg !1985
  store i64 0, i64* %len6, align 8, !dbg !1986
  %cd = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %input_cset, i64 0, i32 1, !dbg !1987
  %5 = load i8*, i8** %cd, align 8, !dbg !1987
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %to, metadata !1960, metadata !DIExpression(DW_OP_deref)), !dbg !1962
  %call8 = call zeroext i8 %3(i8* %5, i8* %input, i64 %len, %struct._cpp_strbuf* nonnull %to) #8, !dbg !1987
  %tobool = icmp eq i8 %call8, 0, !dbg !1987
  br i1 %tobool, label %if.then9, label %if.end, !dbg !1989

if.then9:                                         ; preds = %if.else
  %input_charset10 = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 39, !dbg !1990
  %6 = load i8*, i8** %input_charset10, align 8, !dbg !1990
  %call11 = call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1991
  br label %if.end, !dbg !1991

if.end:                                           ; preds = %if.else, %if.then9
  call void @free(i8* %input) #8, !dbg !1992
  %.pre = load i64, i64* %len6, align 8, !dbg !1993
  %.pre1 = load i64, i64* %asize3, align 8, !dbg !1995
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %7 = phi i64 [ %.pre1, %if.end ], [ %size, %if.then ], !dbg !1995
  %8 = phi i64 [ %.pre, %if.end ], [ %len, %if.then ], !dbg !1993
  %len17 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 2, !dbg !1993
  %add = add i64 %8, 4096, !dbg !1996
  %cmp19 = icmp ult i64 %add, %7, !dbg !1997
  br i1 %cmp19, label %if.then23, label %lor.lhs.false, !dbg !1998

lor.lhs.false:                                    ; preds = %if.end12
  %cmp22 = icmp ult i64 %8, %7, !dbg !1999
  br i1 %cmp22, label %if.end30, label %if.then23, !dbg !2000

if.then23:                                        ; preds = %lor.lhs.false, %if.end12
  %text24 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 0, !dbg !2001
  %9 = load i8*, i8** %text24, align 8, !dbg !2001
  %add26 = add i64 %8, 1, !dbg !2001
  %call28 = call i8* @xrealloc(i8* %9, i64 %add26) #8, !dbg !2001
  store i8* %call28, i8** %text24, align 8, !dbg !2002
  %.pre2 = load i64, i64* %len17, align 8, !dbg !2003
  br label %if.end30, !dbg !2005

if.end30:                                         ; preds = %lor.lhs.false, %if.then23
  %10 = phi i64 [ %8, %lor.lhs.false ], [ %.pre2, %if.then23 ], !dbg !2003
  %tobool32 = icmp eq i64 %10, 0, !dbg !2006
  br i1 %tobool32, label %if.end30.if.else41_crit_edge, label %land.lhs.true, !dbg !2007

if.end30.if.else41_crit_edge:                     ; preds = %if.end30
  %text42.phi.trans.insert = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 0, !dbg !2008
  %.pre3 = load i8*, i8** %text42.phi.trans.insert, align 8, !dbg !2009
  br label %if.else41, !dbg !2007

land.lhs.true:                                    ; preds = %if.end30
  %text33 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 0, !dbg !2010
  %11 = load i8*, i8** %text33, align 8, !dbg !2010
  %sub = add i64 %10, -1, !dbg !2011
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub, !dbg !2012
  %12 = load i8, i8* %arrayidx, align 1, !dbg !2012
  %cmp35 = icmp eq i8 %12, 13, !dbg !2013
  br i1 %cmp35, label %if.then37, label %if.else41, !dbg !2014

if.then37:                                        ; preds = %land.lhs.true
  %arrayidx40 = getelementptr inbounds i8, i8* %11, i64 %10, !dbg !2015
  store i8 13, i8* %arrayidx40, align 1, !dbg !2016
  br label %if.end45, !dbg !2015

if.else41:                                        ; preds = %if.end30.if.else41_crit_edge, %land.lhs.true
  %13 = phi i8* [ %.pre3, %if.end30.if.else41_crit_edge ], [ %11, %land.lhs.true ], !dbg !2009
  %arrayidx44 = getelementptr inbounds i8, i8* %13, i64 %10, !dbg !2017
  store i8 10, i8* %arrayidx44, align 1, !dbg !2018
  br label %if.end45

if.end45:                                         ; preds = %if.else41, %if.then37
  %text46 = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 0, !dbg !2019
  %14 = load i8*, i8** %text46, align 8, !dbg !2019
  call void @llvm.dbg.value(metadata i8* %14, metadata !1961, metadata !DIExpression()), !dbg !1962
  %15 = load i64, i64* %len17, align 8, !dbg !2020
  store i64 %15, i64* %st_size, align 8, !dbg !2021
  %cmp49 = icmp ugt i64 %15, 2, !dbg !2022
  %16 = ptrtoint i8* %14 to i64, !dbg !2024
  br i1 %cmp49, label %land.lhs.true51, label %if.end71, !dbg !2024

land.lhs.true51:                                  ; preds = %if.end45
  %17 = load i8, i8* %14, align 1, !dbg !2025
  %cmp55 = icmp eq i8 %17, -17, !dbg !2026
  br i1 %cmp55, label %land.lhs.true57, label %if.end71, !dbg !2027

land.lhs.true57:                                  ; preds = %land.lhs.true51
  %arrayidx59 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !2028
  %18 = load i8, i8* %arrayidx59, align 1, !dbg !2028
  %cmp61 = icmp eq i8 %18, -69, !dbg !2029
  br i1 %cmp61, label %land.lhs.true63, label %if.end71, !dbg !2030

land.lhs.true63:                                  ; preds = %land.lhs.true57
  %arrayidx65 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !2031
  %19 = load i8, i8* %arrayidx65, align 1, !dbg !2031
  %cmp67 = icmp eq i8 %19, -65, !dbg !2032
  br i1 %cmp67, label %if.then69, label %if.end71, !dbg !2033

if.then69:                                        ; preds = %land.lhs.true63
  %sub70 = add nsw i64 %15, -3, !dbg !2034
  store i64 %sub70, i64* %st_size, align 8, !dbg !2034
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 3, !dbg !2036
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1961, metadata !DIExpression()), !dbg !1962
  br label %if.end71, !dbg !2037

if.end71:                                         ; preds = %if.then69, %land.lhs.true63, %land.lhs.true57, %land.lhs.true51, %if.end45
  %buffer.0 = phi i8* [ %add.ptr, %if.then69 ], [ %14, %land.lhs.true63 ], [ %14, %land.lhs.true57 ], [ %14, %land.lhs.true51 ], [ %14, %if.end45 ], !dbg !1962
  call void @llvm.dbg.value(metadata i8* %buffer.0, metadata !1961, metadata !DIExpression()), !dbg !1962
  %20 = bitcast i8** %buffer_start to i64*, !dbg !2038
  store i64 %16, i64* %20, align 8, !dbg !2038
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #9, !dbg !2039
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9, !dbg !2039
  ret i8* %buffer.0, !dbg !2040
}

; Function Attrs: nounwind uwtable
define dso_local i8* @_cpp_default_encoding() local_unnamed_addr #3 !dbg !2041 {
entry:
  call void @llvm.dbg.value(metadata i8* null, metadata !2045, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), metadata !2045, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), metadata !2045, metadata !DIExpression()), !dbg !2046
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), !dbg !2047
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal zeroext i8 @convert_utf8_utf32(i8* %cd, i8* %from, i64 %flen, %struct._cpp_strbuf* %to) #3 !dbg !2048 {
entry:
  call void @llvm.dbg.value(metadata i8* %cd, metadata !2050, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i8* %from, metadata !2051, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %flen, metadata !2052, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %to, metadata !2053, metadata !DIExpression()), !dbg !2054
  %call = tail call fastcc zeroext i8 @conversion_loop(i32 (i8*, i8**, i64*, i8**, i64*)* nonnull @one_utf8_to_utf32, i8* %cd, i8* %from, i64 %flen, %struct._cpp_strbuf* %to) #10, !dbg !2055
  ret i8 %call, !dbg !2056
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @convert_utf8_utf16(i8* %cd, i8* %from, i64 %flen, %struct._cpp_strbuf* %to) #3 !dbg !2057 {
entry:
  call void @llvm.dbg.value(metadata i8* %cd, metadata !2059, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %from, metadata !2060, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %flen, metadata !2061, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %to, metadata !2062, metadata !DIExpression()), !dbg !2063
  %call = tail call fastcc zeroext i8 @conversion_loop(i32 (i8*, i8**, i64*, i8**, i64*)* nonnull @one_utf8_to_utf16, i8* %cd, i8* %from, i64 %flen, %struct._cpp_strbuf* %to) #10, !dbg !2064
  ret i8 %call, !dbg !2065
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @convert_utf32_utf8(i8* %cd, i8* %from, i64 %flen, %struct._cpp_strbuf* %to) #3 !dbg !2066 {
entry:
  call void @llvm.dbg.value(metadata i8* %cd, metadata !2068, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* %from, metadata !2069, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %flen, metadata !2070, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %to, metadata !2071, metadata !DIExpression()), !dbg !2072
  %call = tail call fastcc zeroext i8 @conversion_loop(i32 (i8*, i8**, i64*, i8**, i64*)* nonnull @one_utf32_to_utf8, i8* %cd, i8* %from, i64 %flen, %struct._cpp_strbuf* %to) #10, !dbg !2073
  ret i8 %call, !dbg !2074
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @convert_utf16_utf8(i8* %cd, i8* %from, i64 %flen, %struct._cpp_strbuf* %to) #3 !dbg !2075 {
entry:
  call void @llvm.dbg.value(metadata i8* %cd, metadata !2077, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8* %from, metadata !2078, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i64 %flen, metadata !2079, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %to, metadata !2080, metadata !DIExpression()), !dbg !2081
  %call = tail call fastcc zeroext i8 @conversion_loop(i32 (i8*, i8**, i64*, i8**, i64*)* nonnull @one_utf16_to_utf8, i8* %cd, i8* %from, i64 %flen, %struct._cpp_strbuf* %to) #10, !dbg !2082
  ret i8 %call, !dbg !2083
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @conversion_loop(i32 (i8*, i8**, i64*, i8**, i64*)* %one_conversion, i8* %cd, i8* %from, i64 %flen, %struct._cpp_strbuf* %to) unnamed_addr #0 !dbg !2084 {
entry:
  %inbuf = alloca i8*, align 8
  %outbuf = alloca i8*, align 8
  %inbytesleft = alloca i64, align 8
  %outbytesleft = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 (i8*, i8**, i64*, i8**, i64*)* %one_conversion, metadata !2092, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %cd, metadata !2093, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %from, metadata !2094, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %flen, metadata !2095, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %to, metadata !2096, metadata !DIExpression()), !dbg !2102
  %0 = bitcast i8** %inbuf to i8*, !dbg !2103
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9, !dbg !2103
  %1 = bitcast i8** %outbuf to i8*, !dbg !2104
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9, !dbg !2104
  %2 = bitcast i64* %inbytesleft to i8*, !dbg !2105
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !2105
  %3 = bitcast i64* %outbytesleft to i8*, !dbg !2105
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9, !dbg !2105
  call void @llvm.dbg.value(metadata i8* %from, metadata !2097, metadata !DIExpression()), !dbg !2102
  store i8* %from, i8** %inbuf, align 8, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %flen, metadata !2099, metadata !DIExpression()), !dbg !2102
  store i64 %flen, i64* %inbytesleft, align 8, !dbg !2107
  %text = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 0, !dbg !2108
  %4 = load i8*, i8** %text, align 8, !dbg !2108
  %len = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 2, !dbg !2109
  %5 = load i64, i64* %len, align 8, !dbg !2109
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !2110
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2098, metadata !DIExpression()), !dbg !2102
  store i8* %add.ptr, i8** %outbuf, align 8, !dbg !2111
  %asize = getelementptr inbounds %struct._cpp_strbuf, %struct._cpp_strbuf* %to, i64 0, i32 1, !dbg !2112
  %6 = load i64, i64* %asize, align 8, !dbg !2112
  %sub = sub i64 %6, %5, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %sub, metadata !2100, metadata !DIExpression()), !dbg !2102
  store i64 %sub, i64* %outbytesleft, align 8, !dbg !2114
  br label %for.cond, !dbg !2115

for.cond:                                         ; preds = %if.end9, %entry
  br label %do.body, !dbg !2116

do.body:                                          ; preds = %do.body, %for.cond
  call void @llvm.dbg.value(metadata i8** %inbuf, metadata !2097, metadata !DIExpression(DW_OP_deref)), !dbg !2102
  call void @llvm.dbg.value(metadata i8** %outbuf, metadata !2098, metadata !DIExpression(DW_OP_deref)), !dbg !2102
  call void @llvm.dbg.value(metadata i64* %inbytesleft, metadata !2099, metadata !DIExpression(DW_OP_deref)), !dbg !2102
  call void @llvm.dbg.value(metadata i64* %outbytesleft, metadata !2100, metadata !DIExpression(DW_OP_deref)), !dbg !2102
  %call = call i32 %one_conversion(i8* %cd, i8** nonnull %inbuf, i64* nonnull %inbytesleft, i8** nonnull %outbuf, i64* nonnull %outbytesleft) #8, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %call, metadata !2101, metadata !DIExpression()), !dbg !2102
  %7 = load i64, i64* %inbytesleft, align 8, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %7, metadata !2099, metadata !DIExpression()), !dbg !2102
  %tobool = icmp ne i64 %7, 0, !dbg !2121
  %tobool2 = icmp eq i32 %call, 0, !dbg !2122
  %or.cond = and i1 %tobool, %tobool2, !dbg !2123
  br i1 %or.cond, label %do.body, label %do.end, !dbg !2123, !llvm.loop !2124

do.end:                                           ; preds = %do.body
  %call.lcssa = phi i32 [ %call, %do.body ], !dbg !2120
  %.lcssa = phi i64 [ %7, %do.body ], !dbg !2121
  call void @llvm.dbg.value(metadata i64 %.lcssa, metadata !2099, metadata !DIExpression()), !dbg !2102
  %cmp = icmp eq i64 %.lcssa, 0, !dbg !2126
  br i1 %cmp, label %if.then, label %if.end, !dbg !2128

if.then:                                          ; preds = %do.end
  %8 = load i64, i64* %asize, align 8, !dbg !2129
  %9 = load i64, i64* %outbytesleft, align 8, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %9, metadata !2100, metadata !DIExpression()), !dbg !2102
  %sub4 = sub i64 %8, %9, !dbg !2132
  store i64 %sub4, i64* %len, align 8, !dbg !2133
  br label %cleanup, !dbg !2134

if.end:                                           ; preds = %do.end
  %cmp6 = icmp eq i32 %call.lcssa, 7, !dbg !2135
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !2137

if.then7:                                         ; preds = %if.end
  %call.lcssa.lcssa3 = phi i32 [ %call.lcssa, %if.end ], !dbg !2120
  %call8 = tail call i32* @__errno_location() #12, !dbg !2138
  store i32 %call.lcssa.lcssa3, i32* %call8, align 4, !dbg !2140
  br label %cleanup, !dbg !2141

if.end9:                                          ; preds = %if.end
  %10 = load i64, i64* %outbytesleft, align 8, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %10, metadata !2100, metadata !DIExpression()), !dbg !2102
  %add = add i64 %10, 256, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %add, metadata !2100, metadata !DIExpression()), !dbg !2102
  store i64 %add, i64* %outbytesleft, align 8, !dbg !2142
  %11 = load i64, i64* %asize, align 8, !dbg !2143
  %add11 = add i64 %11, 256, !dbg !2143
  store i64 %add11, i64* %asize, align 8, !dbg !2143
  %12 = load i8*, i8** %text, align 8, !dbg !2144
  %call14 = call i8* @xrealloc(i8* %12, i64 %add11) #8, !dbg !2144
  store i8* %call14, i8** %text, align 8, !dbg !2145
  %13 = load i64, i64* %asize, align 8, !dbg !2146
  %add.ptr18 = getelementptr inbounds i8, i8* %call14, i64 %13, !dbg !2147
  %14 = load i64, i64* %outbytesleft, align 8, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %14, metadata !2100, metadata !DIExpression()), !dbg !2102
  %idx.neg = sub i64 0, %14, !dbg !2149
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr18, i64 %idx.neg, !dbg !2149
  call void @llvm.dbg.value(metadata i8* %add.ptr19, metadata !2098, metadata !DIExpression()), !dbg !2102
  store i8* %add.ptr19, i8** %outbuf, align 8, !dbg !2150
  br label %for.cond, !dbg !2151, !llvm.loop !2152

cleanup:                                          ; preds = %if.then7, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.then7 ], !dbg !2155
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9, !dbg !2156
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !2156
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9, !dbg !2156
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9, !dbg !2156
  ret i8 %retval.0, !dbg !2156
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @one_utf8_to_utf32(i8* %bigend, i8** %inbufp, i64* %inbytesleftp, i8** %outbufp, i64* %outbytesleftp) #0 !dbg !2157 {
entry:
  %s = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %bigend, metadata !2159, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i8** %inbufp, metadata !2160, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i64* %inbytesleftp, metadata !2161, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i8** %outbufp, metadata !2162, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i64* %outbytesleftp, metadata !2163, metadata !DIExpression()), !dbg !2167
  %0 = bitcast i32* %s to i8*, !dbg !2168
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9, !dbg !2168
  call void @llvm.dbg.value(metadata i32 0, metadata !2165, metadata !DIExpression()), !dbg !2167
  store i32 0, i32* %s, align 4, !dbg !2169
  %1 = load i64, i64* %outbytesleftp, align 8, !dbg !2170
  %cmp = icmp ult i64 %1, 4, !dbg !2172
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2173

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %s, metadata !2165, metadata !DIExpression(DW_OP_deref)), !dbg !2167
  %call = call fastcc i32 @one_utf8_to_cppchar(i8** %inbufp, i64* %inbytesleftp, i32* nonnull %s) #10, !dbg !2174
  call void @llvm.dbg.value(metadata i32 %call, metadata !2166, metadata !DIExpression()), !dbg !2167
  %tobool = icmp eq i32 %call, 0, !dbg !2175
  br i1 %tobool, label %if.end2, label %cleanup, !dbg !2177

if.end2:                                          ; preds = %if.end
  %2 = load i8*, i8** %outbufp, align 8, !dbg !2178
  call void @llvm.dbg.value(metadata i8* %2, metadata !2164, metadata !DIExpression()), !dbg !2167
  %3 = load i32, i32* %s, align 4, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %3, metadata !2165, metadata !DIExpression()), !dbg !2167
  %conv = trunc i32 %3 to i8, !dbg !2180
  %tobool3 = icmp eq i8* %bigend, null, !dbg !2181
  %idxprom = select i1 %tobool3, i64 0, i64 3, !dbg !2182
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom, !dbg !2182
  store i8 %conv, i8* %arrayidx, align 1, !dbg !2183
  %4 = load i32, i32* %s, align 4, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %4, metadata !2165, metadata !DIExpression()), !dbg !2167
  %and4 = lshr i32 %4, 8, !dbg !2185
  %conv5 = trunc i32 %and4 to i8, !dbg !2186
  %idxprom8 = select i1 %tobool3, i64 1, i64 2, !dbg !2187
  %arrayidx9 = getelementptr inbounds i8, i8* %2, i64 %idxprom8, !dbg !2187
  store i8 %conv5, i8* %arrayidx9, align 1, !dbg !2188
  %5 = load i32, i32* %s, align 4, !dbg !2189
  call void @llvm.dbg.value(metadata i32 %5, metadata !2165, metadata !DIExpression()), !dbg !2167
  %and10 = lshr i32 %5, 16, !dbg !2190
  %conv12 = trunc i32 %and10 to i8, !dbg !2191
  %idxprom15 = select i1 %tobool3, i64 2, i64 1, !dbg !2192
  %arrayidx16 = getelementptr inbounds i8, i8* %2, i64 %idxprom15, !dbg !2192
  store i8 %conv12, i8* %arrayidx16, align 1, !dbg !2193
  %6 = load i32, i32* %s, align 4, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %6, metadata !2165, metadata !DIExpression()), !dbg !2167
  %shr18 = lshr i32 %6, 24, !dbg !2195
  %conv19 = trunc i32 %shr18 to i8, !dbg !2196
  %idxprom22 = select i1 %tobool3, i64 3, i64 0, !dbg !2197
  %arrayidx23 = getelementptr inbounds i8, i8* %2, i64 %idxprom22, !dbg !2197
  store i8 %conv19, i8* %arrayidx23, align 1, !dbg !2198
  %7 = load i8*, i8** %outbufp, align 8, !dbg !2199
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 4, !dbg !2199
  store i8* %add.ptr, i8** %outbufp, align 8, !dbg !2199
  %8 = load i64, i64* %outbytesleftp, align 8, !dbg !2200
  %sub = add i64 %8, -4, !dbg !2200
  store i64 %sub, i64* %outbytesleftp, align 8, !dbg !2200
  br label %cleanup, !dbg !2201

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i32 [ 0, %if.end2 ], [ 7, %entry ], [ %call, %if.end ], !dbg !2167
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9, !dbg !2202
  ret i32 %retval.0, !dbg !2202
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @one_utf8_to_cppchar(i8** %inbufp, i64* %inbytesleftp, i32* %cp) unnamed_addr #0 !dbg !223 {
entry:
  call void @llvm.dbg.value(metadata i8** %inbufp, metadata !232, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64* %inbytesleftp, metadata !233, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32* %cp, metadata !234, metadata !DIExpression()), !dbg !2203
  %0 = load i8*, i8** %inbufp, align 8, !dbg !2204
  call void @llvm.dbg.value(metadata i8* %0, metadata !236, metadata !DIExpression()), !dbg !2203
  %1 = load i64, i64* %inbytesleftp, align 8, !dbg !2205
  %cmp = icmp eq i64 %1, 0, !dbg !2207
  br i1 %cmp, label %cleanup83, label %if.end, !dbg !2208

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %0, align 1, !dbg !2209
  %conv = zext i8 %2 to i32, !dbg !2209
  call void @llvm.dbg.value(metadata i32 %conv, metadata !235, metadata !DIExpression()), !dbg !2203
  %cmp1 = icmp sgt i8 %2, -1, !dbg !2210
  br i1 %cmp1, label %if.then3, label %for.cond.preheader, !dbg !2212

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !2213

if.then3:                                         ; preds = %if.end
  store i32 %conv, i32* %cp, align 4, !dbg !2215
  %3 = load i64, i64* %inbytesleftp, align 8, !dbg !2217
  %sub = add i64 %3, -1, !dbg !2217
  store i64 %sub, i64* %inbytesleftp, align 8, !dbg !2217
  %4 = load i8*, i8** %inbufp, align 8, !dbg !2218
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1, !dbg !2218
  store i8* %add.ptr, i8** %inbufp, align 8, !dbg !2218
  br label %cleanup83, !dbg !2219

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %nbytes.0 = phi i64 [ %inc, %for.inc ], [ 2, %for.cond.preheader ], !dbg !2220
  call void @llvm.dbg.value(metadata i64 %nbytes.0, metadata !237, metadata !DIExpression()), !dbg !2203
  %exitcond15 = icmp eq i64 %nbytes.0, 7, !dbg !2221
  br i1 %exitcond15, label %cleanup83.loopexit8, label %for.body, !dbg !2213

for.body:                                         ; preds = %for.cond
  %sub7 = add nsw i64 %nbytes.0, -1, !dbg !2223
  %arrayidx = getelementptr inbounds [6 x i8], [6 x i8]* @one_utf8_to_cppchar.masks, i64 0, i64 %sub7, !dbg !2225
  %5 = load i8, i8* %arrayidx, align 1, !dbg !2225
  %conv8 = zext i8 %5 to i32, !dbg !2225
  %neg = xor i32 %conv8, -1, !dbg !2226
  %and = and i32 %conv, %neg, !dbg !2227
  %arrayidx10 = getelementptr inbounds [6 x i8], [6 x i8]* @one_utf8_to_cppchar.patns, i64 0, i64 %sub7, !dbg !2228
  %6 = load i8, i8* %arrayidx10, align 1, !dbg !2228
  %conv11 = zext i8 %6 to i32, !dbg !2228
  %cmp12 = icmp eq i32 %and, %conv11, !dbg !2229
  br i1 %cmp12, label %found, label %for.inc, !dbg !2230

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i64 %nbytes.0, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %inc, metadata !237, metadata !DIExpression()), !dbg !2203
  br label %for.cond, !dbg !2232, !llvm.loop !2233

found:                                            ; preds = %for.body
  %.lcssa = phi i8 [ %5, %for.body ], !dbg !2225
  %nbytes.0.lcssa18 = phi i64 [ %nbytes.0, %for.body ], !dbg !2220
  call void @llvm.dbg.value(metadata i64 %nbytes.0.lcssa18, metadata !237, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %nbytes.0.lcssa18, metadata !237, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %nbytes.0.lcssa18, metadata !237, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.label(metadata !243), !dbg !2235
  %cmp16 = icmp ult i64 %1, %nbytes.0.lcssa18, !dbg !2236
  br i1 %cmp16, label %cleanup83, label %if.end19, !dbg !2238

if.end19:                                         ; preds = %found
  %and237 = and i8 %2, %.lcssa, !dbg !2239
  %and23 = zext i8 %and237 to i32, !dbg !2239
  call void @llvm.dbg.value(metadata i32 %and23, metadata !235, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8* %0, metadata !236, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2203
  call void @llvm.dbg.value(metadata i64 1, metadata !238, metadata !DIExpression()), !dbg !2203
  br label %for.cond24, !dbg !2240

for.cond24:                                       ; preds = %for.inc36, %if.end19
  %.pn = phi i8* [ %0, %if.end19 ], [ %inbuf.0, %for.inc36 ]
  %c.0 = phi i32 [ %and23, %if.end19 ], [ %c.1, %for.inc36 ], !dbg !2241
  %i.0 = phi i64 [ 1, %if.end19 ], [ %inc37, %for.inc36 ], !dbg !2242
  %inbuf.0 = getelementptr inbounds i8, i8* %.pn, i64 1, !dbg !2203
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !238, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32 %c.0, metadata !235, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8* %inbuf.0, metadata !236, metadata !DIExpression()), !dbg !2203
  %exitcond = icmp eq i64 %i.0, %nbytes.0.lcssa18, !dbg !2243
  br i1 %exitcond, label %for.end38, label %for.body27, !dbg !2244

for.body27:                                       ; preds = %for.cond24
  call void @llvm.dbg.value(metadata i8* %inbuf.0, metadata !236, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2203
  %7 = load i8, i8* %inbuf.0, align 1, !dbg !2245
  %conv29 = zext i8 %7 to i32, !dbg !2245
  call void @llvm.dbg.value(metadata i32 %conv29, metadata !239, metadata !DIExpression()), !dbg !2246
  %and30 = and i32 %conv29, 192, !dbg !2247
  %cmp31 = icmp eq i32 %and30, 128, !dbg !2249
  br i1 %cmp31, label %if.end34, label %cleanup, !dbg !2250

if.end34:                                         ; preds = %for.body27
  %shl = shl i32 %c.0, 6, !dbg !2251
  %and35 = and i32 %conv29, 63, !dbg !2252
  %add = or i32 %shl, %and35, !dbg !2253
  call void @llvm.dbg.value(metadata i32 %add, metadata !235, metadata !DIExpression()), !dbg !2203
  br label %cleanup, !dbg !2254

cleanup:                                          ; preds = %for.body27, %if.end34
  %c.1 = phi i32 [ %add, %if.end34 ], [ %c.0, %for.body27 ], !dbg !2203
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end34 ], [ false, %for.body27 ]
  call void @llvm.dbg.value(metadata i32 %c.1, metadata !235, metadata !DIExpression()), !dbg !2203
  br i1 %cleanup.dest.slot.0, label %for.inc36, label %cleanup83.loopexit

for.inc36:                                        ; preds = %cleanup
  %inc37 = add nuw nsw i64 %i.0, 1, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %inc37, metadata !238, metadata !DIExpression()), !dbg !2203
  br label %for.cond24, !dbg !2256, !llvm.loop !2257

for.end38:                                        ; preds = %for.cond24
  %c.0.lcssa = phi i32 [ %c.0, %for.cond24 ], !dbg !2241
  %inbuf.0.lcssa = phi i8* [ %inbuf.0, %for.cond24 ], !dbg !2203
  call void @llvm.dbg.value(metadata i32 %c.0.lcssa, metadata !235, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32 %c.0.lcssa, metadata !235, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32 %c.0.lcssa, metadata !235, metadata !DIExpression()), !dbg !2203
  %cmp39 = icmp ult i32 %c.0.lcssa, 128, !dbg !2259
  br i1 %cmp39, label %cleanup83, label %if.end44, !dbg !2261

if.end44:                                         ; preds = %for.end38
  %cmp45 = icmp ult i32 %c.0.lcssa, 2048, !dbg !2262
  %cmp48 = icmp ugt i64 %nbytes.0.lcssa18, 2, !dbg !2264
  %or.cond1 = and i1 %cmp45, %cmp48, !dbg !2265
  br i1 %or.cond1, label %cleanup83, label %if.end51, !dbg !2265

if.end51:                                         ; preds = %if.end44
  %cmp52 = icmp ult i32 %c.0.lcssa, 65536, !dbg !2266
  %cmp55 = icmp ugt i64 %nbytes.0.lcssa18, 3, !dbg !2268
  %or.cond2 = and i1 %cmp52, %cmp55, !dbg !2269
  br i1 %or.cond2, label %cleanup83, label %if.end58, !dbg !2269

if.end58:                                         ; preds = %if.end51
  %cmp59 = icmp ult i32 %c.0.lcssa, 2097152, !dbg !2270
  %cmp62 = icmp ugt i64 %nbytes.0.lcssa18, 4, !dbg !2272
  %or.cond3 = and i1 %cmp59, %cmp62, !dbg !2273
  br i1 %or.cond3, label %cleanup83, label %if.end65, !dbg !2273

if.end65:                                         ; preds = %if.end58
  %cmp66 = icmp ult i32 %c.0.lcssa, 67108864, !dbg !2274
  %cmp69 = icmp ugt i64 %nbytes.0.lcssa18, 5, !dbg !2276
  %or.cond4 = and i1 %cmp66, %cmp69, !dbg !2277
  %cmp73 = icmp slt i32 %c.0.lcssa, 0, !dbg !2278
  %or.cond6 = or i1 %or.cond4, %cmp73, !dbg !2277
  br i1 %or.cond6, label %cleanup83, label %lor.lhs.false, !dbg !2277

lor.lhs.false:                                    ; preds = %if.end65
  %8 = and i32 %c.0.lcssa, -2048, !dbg !2280
  %9 = icmp eq i32 %8, 55296, !dbg !2280
  br i1 %9, label %cleanup83, label %if.end81, !dbg !2280

if.end81:                                         ; preds = %lor.lhs.false
  store i32 %c.0.lcssa, i32* %cp, align 4, !dbg !2281
  store i8* %inbuf.0.lcssa, i8** %inbufp, align 8, !dbg !2282
  %10 = load i64, i64* %inbytesleftp, align 8, !dbg !2283
  %sub82 = sub i64 %10, %nbytes.0.lcssa18, !dbg !2283
  store i64 %sub82, i64* %inbytesleftp, align 8, !dbg !2283
  br label %cleanup83, !dbg !2284

cleanup83.loopexit:                               ; preds = %cleanup
  br label %cleanup83, !dbg !2285

cleanup83.loopexit8:                              ; preds = %for.cond
  br label %cleanup83, !dbg !2285

cleanup83:                                        ; preds = %cleanup83.loopexit8, %cleanup83.loopexit, %lor.lhs.false, %if.end65, %if.end58, %if.end51, %if.end44, %for.end38, %found, %entry, %if.end81, %if.then3
  %retval.2 = phi i32 [ 0, %if.then3 ], [ 0, %if.end81 ], [ 22, %entry ], [ 22, %found ], [ 84, %for.end38 ], [ 84, %if.end44 ], [ 84, %if.end51 ], [ 84, %if.end58 ], [ 84, %if.end65 ], [ 84, %lor.lhs.false ], [ 84, %cleanup83.loopexit ], [ 84, %cleanup83.loopexit8 ], !dbg !2203
  ret i32 %retval.2, !dbg !2285
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @one_utf8_to_utf16(i8* %bigend, i8** %inbufp, i64* %inbytesleftp, i8** %outbufp, i64* %outbytesleftp) #0 !dbg !2286 {
entry:
  %s = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %bigend, metadata !2288, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8** %inbufp, metadata !2289, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i64* %inbytesleftp, metadata !2290, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8** %outbufp, metadata !2291, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i64* %outbytesleftp, metadata !2292, metadata !DIExpression()), !dbg !2302
  %0 = bitcast i32* %s to i8*, !dbg !2303
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9, !dbg !2303
  call void @llvm.dbg.value(metadata i32 0, metadata !2294, metadata !DIExpression()), !dbg !2302
  store i32 0, i32* %s, align 4, !dbg !2304
  %1 = bitcast i8** %inbufp to i64*, !dbg !2305
  %2 = load i64, i64* %1, align 8, !dbg !2305
  %3 = load i64, i64* %inbytesleftp, align 8, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %3, metadata !2296, metadata !DIExpression()), !dbg !2302
  %4 = load i8*, i8** %outbufp, align 8, !dbg !2307
  call void @llvm.dbg.value(metadata i8* %4, metadata !2297, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i32* %s, metadata !2294, metadata !DIExpression(DW_OP_deref)), !dbg !2302
  %call = call fastcc i32 @one_utf8_to_cppchar(i8** %inbufp, i64* %inbytesleftp, i32* nonnull %s) #10, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %call, metadata !2293, metadata !DIExpression()), !dbg !2302
  %tobool = icmp eq i32 %call, 0, !dbg !2309
  br i1 %tobool, label %if.end, label %cleanup51, !dbg !2311

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %s, align 4, !dbg !2312
  call void @llvm.dbg.value(metadata i32 %5, metadata !2294, metadata !DIExpression()), !dbg !2302
  %cmp = icmp ugt i32 %5, 1114111, !dbg !2314
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2315

if.then1:                                         ; preds = %if.end
  store i64 %2, i64* %1, align 8, !dbg !2316
  store i64 %3, i64* %inbytesleftp, align 8, !dbg !2318
  br label %cleanup51, !dbg !2319

if.end2:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 %5, metadata !2294, metadata !DIExpression()), !dbg !2302
  %cmp3 = icmp ult i32 %5, 65535, !dbg !2320
  %6 = load i64, i64* %outbytesleftp, align 8, !dbg !2321
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !2322

if.then4:                                         ; preds = %if.end2
  %cmp5 = icmp ult i64 %6, 2, !dbg !2323
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2326

if.then6:                                         ; preds = %if.then4
  store i64 %2, i64* %1, align 8, !dbg !2327
  store i64 %3, i64* %inbytesleftp, align 8, !dbg !2329
  br label %cleanup51, !dbg !2330

if.end7:                                          ; preds = %if.then4
  call void @llvm.dbg.value(metadata i32 %5, metadata !2294, metadata !DIExpression()), !dbg !2302
  %conv = trunc i32 %5 to i8, !dbg !2331
  %tobool8 = icmp ne i8* %bigend, null, !dbg !2332
  %idxprom = zext i1 %tobool8 to i64, !dbg !2333
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom, !dbg !2333
  store i8 %conv, i8* %arrayidx, align 1, !dbg !2334
  %7 = load i32, i32* %s, align 4, !dbg !2335
  call void @llvm.dbg.value(metadata i32 %7, metadata !2294, metadata !DIExpression()), !dbg !2302
  %and9 = lshr i32 %7, 8, !dbg !2336
  %conv10 = trunc i32 %and9 to i8, !dbg !2337
  %tobool11 = icmp eq i8* %bigend, null, !dbg !2338
  %idxprom13 = zext i1 %tobool11 to i64, !dbg !2339
  %arrayidx14 = getelementptr inbounds i8, i8* %4, i64 %idxprom13, !dbg !2339
  store i8 %conv10, i8* %arrayidx14, align 1, !dbg !2340
  %8 = load i8*, i8** %outbufp, align 8, !dbg !2341
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 2, !dbg !2341
  store i8* %add.ptr, i8** %outbufp, align 8, !dbg !2341
  %9 = load i64, i64* %outbytesleftp, align 8, !dbg !2342
  %sub = add i64 %9, -2, !dbg !2342
  store i64 %sub, i64* %outbytesleftp, align 8, !dbg !2342
  br label %cleanup51, !dbg !2343

if.else:                                          ; preds = %if.end2
  %cmp15 = icmp ult i64 %6, 4, !dbg !2344
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !2346

if.then17:                                        ; preds = %if.else
  store i64 %2, i64* %1, align 8, !dbg !2347
  store i64 %3, i64* %inbytesleftp, align 8, !dbg !2349
  br label %cleanup51, !dbg !2350

if.end18:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 %5, metadata !2294, metadata !DIExpression()), !dbg !2302
  %sub19 = add i32 %5, -65536, !dbg !2351
  %div = lshr i32 %sub19, 10, !dbg !2352
  %add = add nuw nsw i32 %div, 55296, !dbg !2353
  call void @llvm.dbg.value(metadata i32 %add, metadata !2298, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i32 %5, metadata !2294, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i32 %5, metadata !2301, metadata !DIExpression(DW_OP_constu, 768, DW_OP_and, DW_OP_constu, 56320, DW_OP_or, DW_OP_stack_value)), !dbg !2354
  %conv23 = trunc i32 %add to i8, !dbg !2355
  %tobool24 = icmp ne i8* %bigend, null, !dbg !2356
  %idxprom26 = zext i1 %tobool24 to i64, !dbg !2357
  %arrayidx27 = getelementptr inbounds i8, i8* %4, i64 %idxprom26, !dbg !2357
  store i8 %conv23, i8* %arrayidx27, align 1, !dbg !2358
  %and28 = lshr i32 %add, 8, !dbg !2359
  %conv30 = trunc i32 %and28 to i8, !dbg !2360
  %tobool31 = icmp eq i8* %bigend, null, !dbg !2361
  %idxprom33 = zext i1 %tobool31 to i64, !dbg !2362
  %arrayidx34 = getelementptr inbounds i8, i8* %4, i64 %idxprom33, !dbg !2362
  store i8 %conv30, i8* %arrayidx34, align 1, !dbg !2363
  %conv36 = trunc i32 %5 to i8, !dbg !2364
  %idxprom39 = select i1 %tobool31, i64 2, i64 3, !dbg !2365
  %arrayidx40 = getelementptr inbounds i8, i8* %4, i64 %idxprom39, !dbg !2365
  store i8 %conv36, i8* %arrayidx40, align 1, !dbg !2366
  %rem = lshr i32 %5, 8, !dbg !2367
  %10 = trunc i32 %rem to i8, !dbg !2368
  %11 = and i8 %10, 3, !dbg !2368
  %conv43 = or i8 %11, -36, !dbg !2368
  %idxprom46 = select i1 %tobool31, i64 3, i64 2, !dbg !2369
  %arrayidx47 = getelementptr inbounds i8, i8* %4, i64 %idxprom46, !dbg !2369
  store i8 %conv43, i8* %arrayidx47, align 1, !dbg !2370
  %12 = load i8*, i8** %outbufp, align 8, !dbg !2371
  %add.ptr48 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !2371
  store i8* %add.ptr48, i8** %outbufp, align 8, !dbg !2371
  %13 = load i64, i64* %outbytesleftp, align 8, !dbg !2372
  %sub49 = add i64 %13, -4, !dbg !2372
  store i64 %sub49, i64* %outbytesleftp, align 8, !dbg !2372
  br label %cleanup51, !dbg !2373

cleanup51:                                        ; preds = %entry, %if.then17, %if.end18, %if.end7, %if.then6, %if.then1
  %retval.1 = phi i32 [ 84, %if.then1 ], [ 7, %if.then6 ], [ 0, %if.end7 ], [ %call, %entry ], [ 7, %if.then17 ], [ 0, %if.end18 ], !dbg !2302
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9, !dbg !2374
  ret i32 %retval.1, !dbg !2374
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @one_utf32_to_utf8(i8* %bigend, i8** %inbufp, i64* %inbytesleftp, i8** %outbufp, i64* %outbytesleftp) #0 !dbg !2375 {
entry:
  call void @llvm.dbg.value(metadata i8* %bigend, metadata !2377, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8** %inbufp, metadata !2378, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64* %inbytesleftp, metadata !2379, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8** %outbufp, metadata !2380, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64* %outbytesleftp, metadata !2381, metadata !DIExpression()), !dbg !2385
  %0 = load i64, i64* %inbytesleftp, align 8, !dbg !2386
  %cmp = icmp ult i64 %0, 4, !dbg !2388
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2389

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %inbufp, align 8, !dbg !2390
  call void @llvm.dbg.value(metadata i8* %1, metadata !2384, metadata !DIExpression()), !dbg !2385
  %tobool = icmp eq i8* %bigend, null, !dbg !2391
  %idxprom = select i1 %tobool, i64 3, i64 0, !dbg !2392
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom, !dbg !2392
  %2 = load i8, i8* %arrayidx, align 1, !dbg !2392
  %conv = zext i8 %2 to i32, !dbg !2392
  %shl = shl nuw i32 %conv, 24, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %shl, metadata !2382, metadata !DIExpression()), !dbg !2385
  %idxprom3 = select i1 %tobool, i64 2, i64 1, !dbg !2394
  %arrayidx4 = getelementptr inbounds i8, i8* %1, i64 %idxprom3, !dbg !2394
  %3 = load i8, i8* %arrayidx4, align 1, !dbg !2394
  %conv5 = zext i8 %3 to i32, !dbg !2394
  %shl6 = shl nuw nsw i32 %conv5, 16, !dbg !2395
  %add = or i32 %shl, %shl6, !dbg !2396
  call void @llvm.dbg.value(metadata i32 %add, metadata !2382, metadata !DIExpression()), !dbg !2385
  %idxprom9 = select i1 %tobool, i64 1, i64 2, !dbg !2397
  %arrayidx10 = getelementptr inbounds i8, i8* %1, i64 %idxprom9, !dbg !2397
  %4 = load i8, i8* %arrayidx10, align 1, !dbg !2397
  %conv11 = zext i8 %4 to i32, !dbg !2397
  %shl12 = shl nuw nsw i32 %conv11, 8, !dbg !2398
  %add13 = or i32 %add, %shl12, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %add13, metadata !2382, metadata !DIExpression()), !dbg !2385
  %idxprom16 = select i1 %tobool, i64 0, i64 3, !dbg !2400
  %arrayidx17 = getelementptr inbounds i8, i8* %1, i64 %idxprom16, !dbg !2400
  %5 = load i8, i8* %arrayidx17, align 1, !dbg !2400
  %conv18 = zext i8 %5 to i32, !dbg !2400
  %add19 = or i32 %add13, %conv18, !dbg !2401
  call void @llvm.dbg.value(metadata i32 %add19, metadata !2382, metadata !DIExpression()), !dbg !2385
  %cmp20 = icmp ugt i32 %add19, 2147483646, !dbg !2402
  br i1 %cmp20, label %cleanup, label %lor.lhs.false, !dbg !2404

lor.lhs.false:                                    ; preds = %if.end
  %6 = and i32 %add13, -2048, !dbg !2405
  %7 = icmp eq i32 %6, 55296, !dbg !2405
  br i1 %7, label %cleanup, label %if.end27, !dbg !2405

if.end27:                                         ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @one_cppchar_to_utf8(i32 %add19, i8** %outbufp, i64* %outbytesleftp) #10, !dbg !2406
  call void @llvm.dbg.value(metadata i32 %call, metadata !2383, metadata !DIExpression()), !dbg !2385
  %tobool28 = icmp eq i32 %call, 0, !dbg !2407
  br i1 %tobool28, label %if.end30, label %cleanup, !dbg !2409

if.end30:                                         ; preds = %if.end27
  %8 = load i8*, i8** %inbufp, align 8, !dbg !2410
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 4, !dbg !2410
  store i8* %add.ptr, i8** %inbufp, align 8, !dbg !2410
  %9 = load i64, i64* %inbytesleftp, align 8, !dbg !2411
  %sub = add i64 %9, -4, !dbg !2411
  store i64 %sub, i64* %inbytesleftp, align 8, !dbg !2411
  br label %cleanup, !dbg !2412

cleanup:                                          ; preds = %if.end27, %if.end, %lor.lhs.false, %entry, %if.end30
  %retval.0 = phi i32 [ 0, %if.end30 ], [ 22, %entry ], [ 84, %lor.lhs.false ], [ 84, %if.end ], [ %call, %if.end27 ], !dbg !2385
  ret i32 %retval.0, !dbg !2413
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @one_utf16_to_utf8(i8* %bigend, i8** %inbufp, i64* %inbytesleftp, i8** %outbufp, i64* %outbytesleftp) #0 !dbg !2414 {
entry:
  call void @llvm.dbg.value(metadata i8* %bigend, metadata !2416, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8** %inbufp, metadata !2417, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i64* %inbytesleftp, metadata !2418, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8** %outbufp, metadata !2419, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i64* %outbytesleftp, metadata !2420, metadata !DIExpression()), !dbg !2429
  %0 = load i8*, i8** %inbufp, align 8, !dbg !2430
  call void @llvm.dbg.value(metadata i8* %0, metadata !2422, metadata !DIExpression()), !dbg !2429
  %1 = load i64, i64* %inbytesleftp, align 8, !dbg !2431
  %cmp = icmp ult i64 %1, 2, !dbg !2433
  br i1 %cmp, label %cleanup56, label %if.end, !dbg !2434

if.end:                                           ; preds = %entry
  %tobool = icmp eq i8* %bigend, null, !dbg !2435
  %idxprom = zext i1 %tobool to i64, !dbg !2436
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !2436
  %2 = load i8, i8* %arrayidx, align 1, !dbg !2436
  %conv = zext i8 %2 to i32, !dbg !2436
  %shl = shl nuw nsw i32 %conv, 8, !dbg !2437
  call void @llvm.dbg.value(metadata i32 %shl, metadata !2421, metadata !DIExpression()), !dbg !2429
  %tobool1 = icmp ne i8* %bigend, null, !dbg !2438
  %idxprom3 = zext i1 %tobool1 to i64, !dbg !2439
  %arrayidx4 = getelementptr inbounds i8, i8* %0, i64 %idxprom3, !dbg !2439
  %3 = load i8, i8* %arrayidx4, align 1, !dbg !2439
  %conv5 = zext i8 %3 to i32, !dbg !2439
  %add = or i32 %shl, %conv5, !dbg !2440
  call void @llvm.dbg.value(metadata i32 %add, metadata !2421, metadata !DIExpression()), !dbg !2429
  %4 = and i32 %conv, 252, !dbg !2441
  %5 = icmp eq i32 %4, 220, !dbg !2441
  br i1 %5, label %cleanup56, label %if.else, !dbg !2441

if.else:                                          ; preds = %if.end
  %6 = icmp eq i32 %4, 216, !dbg !2442
  br i1 %6, label %if.then16, label %if.end44, !dbg !2442

if.then16:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 %add, metadata !2424, metadata !DIExpression()), !dbg !2443
  %cmp17 = icmp ult i64 %1, 4, !dbg !2444
  br i1 %cmp17, label %cleanup, label %if.end20, !dbg !2446

if.end20:                                         ; preds = %if.then16
  %idxprom23 = select i1 %tobool, i64 3, i64 2, !dbg !2447
  %arrayidx24 = getelementptr inbounds i8, i8* %0, i64 %idxprom23, !dbg !2447
  %7 = load i8, i8* %arrayidx24, align 1, !dbg !2447
  %conv25 = zext i8 %7 to i32, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %conv25, metadata !2428, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shl, DW_OP_stack_value)), !dbg !2443
  call void @llvm.dbg.value(metadata i32 undef, metadata !2428, metadata !DIExpression()), !dbg !2443
  %8 = and i32 %conv25, 252, !dbg !2448
  %9 = icmp eq i32 %8, 220, !dbg !2448
  br i1 %9, label %if.end38, label %cleanup, !dbg !2448

if.end38:                                         ; preds = %if.end20
  %shl26 = shl nuw nsw i32 %conv25, 8, !dbg !2450
  call void @llvm.dbg.value(metadata i32 %shl26, metadata !2428, metadata !DIExpression()), !dbg !2443
  %idxprom29 = select i1 %tobool, i64 2, i64 3, !dbg !2451
  %arrayidx30 = getelementptr inbounds i8, i8* %0, i64 %idxprom29, !dbg !2451
  %10 = load i8, i8* %arrayidx30, align 1, !dbg !2451
  %conv31 = zext i8 %10 to i32, !dbg !2451
  %add32 = or i32 %shl26, %conv31, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %add32, metadata !2428, metadata !DIExpression()), !dbg !2443
  %sub = shl nuw nsw i32 %add, 10, !dbg !2453
  %sub39 = add nuw nsw i32 %sub, %add32, !dbg !2454
  %add41 = add nsw i32 %sub39, -56613888, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %add41, metadata !2421, metadata !DIExpression()), !dbg !2429
  br label %cleanup, !dbg !2456

cleanup:                                          ; preds = %if.end20, %if.then16, %if.end38
  %s.0 = phi i32 [ %add41, %if.end38 ], [ %add, %if.then16 ], [ %add, %if.end20 ], !dbg !2429
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end38 ], [ false, %if.then16 ], [ false, %if.end20 ]
  %retval.0 = phi i32 [ undef, %if.end38 ], [ 22, %if.then16 ], [ 84, %if.end20 ]
  call void @llvm.dbg.value(metadata i32 %s.0, metadata !2421, metadata !DIExpression()), !dbg !2429
  br i1 %cleanup.dest.slot.0, label %if.end44, label %cleanup56

if.end44:                                         ; preds = %if.else, %cleanup
  %s.1 = phi i32 [ %add, %if.else ], [ %s.0, %cleanup ], !dbg !2440
  call void @llvm.dbg.value(metadata i32 %s.1, metadata !2421, metadata !DIExpression()), !dbg !2429
  %call = tail call fastcc i32 @one_cppchar_to_utf8(i32 %s.1, i8** %outbufp, i64* %outbytesleftp) #10, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %call, metadata !2423, metadata !DIExpression()), !dbg !2429
  %tobool45 = icmp eq i32 %call, 0, !dbg !2458
  br i1 %tobool45, label %if.end47, label %cleanup56, !dbg !2460

if.end47:                                         ; preds = %if.end44
  %cmp48 = icmp ult i32 %s.1, 65536, !dbg !2461
  %11 = load i8*, i8** %inbufp, align 8, !dbg !2463
  br i1 %cmp48, label %if.then50, label %if.else52, !dbg !2464

if.then50:                                        ; preds = %if.end47
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 2, !dbg !2465
  store i8* %add.ptr, i8** %inbufp, align 8, !dbg !2465
  %12 = load i64, i64* %inbytesleftp, align 8, !dbg !2467
  %sub51 = add i64 %12, -2, !dbg !2467
  store i64 %sub51, i64* %inbytesleftp, align 8, !dbg !2467
  br label %cleanup56, !dbg !2468

if.else52:                                        ; preds = %if.end47
  %add.ptr53 = getelementptr inbounds i8, i8* %11, i64 4, !dbg !2469
  store i8* %add.ptr53, i8** %inbufp, align 8, !dbg !2469
  %13 = load i64, i64* %inbytesleftp, align 8, !dbg !2471
  %sub54 = add i64 %13, -4, !dbg !2471
  store i64 %sub54, i64* %inbytesleftp, align 8, !dbg !2471
  br label %cleanup56

cleanup56:                                        ; preds = %if.end44, %if.then50, %if.else52, %if.end, %entry, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ 22, %entry ], [ 84, %if.end ], [ %call, %if.end44 ], [ 0, %if.else52 ], [ 0, %if.then50 ], !dbg !2429
  ret i32 %retval.1, !dbg !2472
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @convert_ucn(%struct.cpp_reader* %pfile, i8* %from, i8* %limit, %struct._cpp_strbuf* %tbuf, %struct.cset_converter* byval(%struct.cset_converter) align 8 %cvt) unnamed_addr #3 !dbg !2473 {
entry:
  %from.addr = alloca i8*, align 8
  %buf = alloca [6 x i8], align 1
  %bufp = alloca i8*, align 8
  %bytesleft = alloca i64, align 8
  %nst = alloca %struct.normalize_state, align 4
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2475, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8* %from, metadata !2476, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8* %limit, metadata !2477, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %tbuf, metadata !2478, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.declare(metadata %struct.cset_converter* %cvt, metadata !2479, metadata !DIExpression()), !dbg !2487
  %0 = getelementptr inbounds [6 x i8], [6 x i8]* %buf, i64 0, i64 0, !dbg !2488
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %0) #9, !dbg !2488
  call void @llvm.dbg.declare(metadata [6 x i8]* %buf, metadata !2481, metadata !DIExpression()), !dbg !2489
  %1 = bitcast i8** %bufp to i8*, !dbg !2490
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9, !dbg !2490
  call void @llvm.dbg.value(metadata i8* %0, metadata !2482, metadata !DIExpression()), !dbg !2486
  store i8* %0, i8** %bufp, align 8, !dbg !2491
  %2 = bitcast i64* %bytesleft to i8*, !dbg !2492
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9, !dbg !2492
  call void @llvm.dbg.value(metadata i64 6, metadata !2483, metadata !DIExpression()), !dbg !2486
  store i64 6, i64* %bytesleft, align 8, !dbg !2493
  %3 = bitcast %struct.normalize_state* %nst to i8*, !dbg !2494
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %3) #9, !dbg !2494
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %3, i8 0, i64 12, i1 false), !dbg !2495
  call void @llvm.dbg.value(metadata i8* %from, metadata !2476, metadata !DIExpression()), !dbg !2486
  %incdec.ptr = getelementptr inbounds i8, i8* %from, i64 1, !dbg !2496
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2476, metadata !DIExpression()), !dbg !2486
  store i8* %incdec.ptr, i8** %from.addr, align 8, !dbg !2496
  call void @llvm.dbg.value(metadata i8** %from.addr, metadata !2476, metadata !DIExpression(DW_OP_deref)), !dbg !2486
  call void @llvm.dbg.value(metadata %struct.normalize_state* %nst, metadata !2485, metadata !DIExpression(DW_OP_deref)), !dbg !2486
  %call = call i32 @_cpp_valid_ucn(%struct.cpp_reader* %pfile, i8** nonnull %from.addr, i8* %limit, i32 0, %struct.normalize_state* nonnull %nst) #10, !dbg !2497
  call void @llvm.dbg.value(metadata i32 %call, metadata !2480, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8** %bufp, metadata !2482, metadata !DIExpression(DW_OP_deref)), !dbg !2486
  call void @llvm.dbg.value(metadata i64* %bytesleft, metadata !2483, metadata !DIExpression(DW_OP_deref)), !dbg !2486
  %call1 = call fastcc i32 @one_cppchar_to_utf8(i32 %call, i8** nonnull %bufp, i64* nonnull %bytesleft) #10, !dbg !2498
  call void @llvm.dbg.value(metadata i32 %call1, metadata !2484, metadata !DIExpression()), !dbg !2486
  %tobool = icmp eq i32 %call1, 0, !dbg !2499
  br i1 %tobool, label %if.else, label %if.then, !dbg !2501

if.then:                                          ; preds = %entry
  %call2 = tail call i32* @__errno_location() #12, !dbg !2502
  store i32 %call1, i32* %call2, align 4, !dbg !2504
  %call3 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !2505
  br label %if.end9, !dbg !2506

if.else:                                          ; preds = %entry
  %func = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %cvt, i64 0, i32 0, !dbg !2507
  %4 = load i8 (i8*, i8*, i64, %struct._cpp_strbuf*)*, i8 (i8*, i8*, i64, %struct._cpp_strbuf*)** %func, align 8, !dbg !2507
  %cd = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %cvt, i64 0, i32 1, !dbg !2507
  %5 = load i8*, i8** %cd, align 8, !dbg !2507
  %6 = load i64, i64* %bytesleft, align 8, !dbg !2507
  call void @llvm.dbg.value(metadata i64 %6, metadata !2483, metadata !DIExpression()), !dbg !2486
  %sub = sub i64 6, %6, !dbg !2507
  %call5 = call zeroext i8 %4(i8* %5, i8* nonnull %0, i64 %sub, %struct._cpp_strbuf* %tbuf) #8, !dbg !2507
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2507
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !2509

if.then7:                                         ; preds = %if.else
  %call8 = call zeroext i8 @cpp_errno(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !2510
  br label %if.end9, !dbg !2510

if.end9:                                          ; preds = %if.else, %if.then7, %if.then
  %7 = load i8*, i8** %from.addr, align 8, !dbg !2511
  call void @llvm.dbg.value(metadata i8* %7, metadata !2476, metadata !DIExpression()), !dbg !2486
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %3) #9, !dbg !2512
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9, !dbg !2512
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9, !dbg !2512
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %0) #9, !dbg !2512
  ret i8* %7, !dbg !2513
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @convert_hex(%struct.cpp_reader* %pfile, i8* %from, i8* %limit, %struct._cpp_strbuf* %tbuf, %struct.cset_converter* byval(%struct.cset_converter) align 8 %cvt) unnamed_addr #3 !dbg !2514 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2516, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8* %from, metadata !2517, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8* %limit, metadata !2518, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %tbuf, metadata !2519, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.declare(metadata %struct.cset_converter* %cvt, metadata !2520, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 0, metadata !2522, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 0, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 0, metadata !2524, metadata !DIExpression()), !dbg !2527
  %width1 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %cvt, i64 0, i32 2, !dbg !2529
  %0 = load i32, i32* %width1, align 8, !dbg !2529
  %conv = sext i32 %0 to i64, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2525, metadata !DIExpression()), !dbg !2527
  %call = tail call fastcc i64 @width_to_mask(i64 %conv) #10, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %call, metadata !2526, metadata !DIExpression()), !dbg !2527
  %warn_traditional = getelementptr inbounds %struct.cpp_reader, %struct.cpp_reader* %pfile, i64 0, i32 53, i32 17, !dbg !2532
  %1 = load i8, i8* %warn_traditional, align 1, !dbg !2532
  %tobool = icmp eq i8 %1, 0, !dbg !2532
  br i1 %tobool, label %if.end, label %if.then, !dbg !2534

if.then:                                          ; preds = %entry
  %call2 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !2535
  br label %if.end, !dbg !2535

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.dbg.value(metadata i8* %from, metadata !2517, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2527
  br label %while.cond, !dbg !2536

while.cond:                                       ; preds = %if.end10, %if.end
  %n.0 = phi i32 [ 0, %if.end ], [ %add, %if.end10 ], !dbg !2527
  %overflow.0 = phi i32 [ 0, %if.end ], [ %or, %if.end10 ], !dbg !2527
  %digits_found.0 = phi i32 [ 0, %if.end ], [ 1, %if.end10 ], !dbg !2527
  %from.pn = phi i8* [ %from, %if.end ], [ %from.addr.0, %if.end10 ]
  %from.addr.0 = getelementptr inbounds i8, i8* %from.pn, i64 1, !dbg !2527
  call void @llvm.dbg.value(metadata i8* %from.addr.0, metadata !2517, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %digits_found.0, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %overflow.0, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !2522, metadata !DIExpression()), !dbg !2527
  %cmp = icmp ult i8* %from.addr.0, %limit, !dbg !2537
  br i1 %cmp, label %while.body, label %while.end, !dbg !2536

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* %from.addr.0, align 1, !dbg !2538
  call void @llvm.dbg.value(metadata i8 %2, metadata !2521, metadata !DIExpression()), !dbg !2527
  %idxprom = zext i8 %2 to i64, !dbg !2540
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @_hex_value, i64 0, i64 %idxprom, !dbg !2540
  %3 = load i8, i8* %arrayidx, align 1, !dbg !2540
  %cmp7 = icmp eq i8 %3, 99, !dbg !2540
  br i1 %cmp7, label %while.end, label %if.end10, !dbg !2542

if.end10:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata i8 %2, metadata !2521, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8* %from.addr.0, metadata !2517, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2527
  %xor = and i32 %n.0, -268435456, !dbg !2543
  %or = or i32 %overflow.0, %xor, !dbg !2544
  call void @llvm.dbg.value(metadata i32 %or, metadata !2523, metadata !DIExpression()), !dbg !2527
  %shl12 = shl i32 %n.0, 4, !dbg !2545
  %conv16 = zext i8 %3 to i32, !dbg !2546
  %add = add i32 %shl12, %conv16, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %add, metadata !2522, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 1, metadata !2524, metadata !DIExpression()), !dbg !2527
  br label %while.cond, !dbg !2536, !llvm.loop !2548

while.end:                                        ; preds = %while.body, %while.cond
  %n.0.lcssa = phi i32 [ %n.0, %while.body ], [ %n.0, %while.cond ], !dbg !2527
  %overflow.0.lcssa = phi i32 [ %overflow.0, %while.body ], [ %overflow.0, %while.cond ], !dbg !2527
  %digits_found.0.lcssa = phi i32 [ %digits_found.0, %while.body ], [ %digits_found.0, %while.cond ], !dbg !2527
  %from.addr.0.lcssa = phi i8* [ %from.addr.0, %while.body ], [ %from.addr.0, %while.cond ], !dbg !2527
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2522, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2522, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %overflow.0.lcssa, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %overflow.0.lcssa, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %digits_found.0.lcssa, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %digits_found.0.lcssa, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2522, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2522, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %overflow.0.lcssa, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %overflow.0.lcssa, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %digits_found.0.lcssa, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %digits_found.0.lcssa, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2522, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2522, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %overflow.0.lcssa, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %overflow.0.lcssa, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %digits_found.0.lcssa, metadata !2524, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %digits_found.0.lcssa, metadata !2524, metadata !DIExpression()), !dbg !2527
  %tobool17 = icmp eq i32 %digits_found.0.lcssa, 0, !dbg !2550
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !2552

if.then18:                                        ; preds = %while.end
  %call19 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !2553
  br label %cleanup, !dbg !2555

if.end20:                                         ; preds = %while.end
  %conv21 = zext i32 %n.0.lcssa to i64, !dbg !2556
  %and = and i64 %call, %conv21, !dbg !2558
  %cmp23 = icmp ne i64 %and, %conv21, !dbg !2559
  %conv24 = zext i1 %cmp23 to i32, !dbg !2559
  %or25 = or i32 %overflow.0.lcssa, %conv24, !dbg !2560
  %tobool26 = icmp eq i32 %or25, 0, !dbg !2560
  br i1 %tobool26, label %if.end32, label %if.then27, !dbg !2561

if.then27:                                        ; preds = %if.end20
  %call28 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !2562
  %4 = trunc i64 %call to i32, !dbg !2564
  %conv31 = and i32 %n.0.lcssa, %4, !dbg !2564
  call void @llvm.dbg.value(metadata i32 %conv31, metadata !2522, metadata !DIExpression()), !dbg !2527
  br label %if.end32, !dbg !2565

if.end32:                                         ; preds = %if.end20, %if.then27
  %n.1 = phi i32 [ %conv31, %if.then27 ], [ %n.0.lcssa, %if.end20 ], !dbg !2527
  call void @llvm.dbg.value(metadata i32 %n.1, metadata !2522, metadata !DIExpression()), !dbg !2527
  tail call fastcc void @emit_numeric_escape(%struct.cpp_reader* %pfile, i32 %n.1, %struct._cpp_strbuf* %tbuf, %struct.cset_converter* nonnull byval(%struct.cset_converter) align 8 %cvt) #10, !dbg !2566
  br label %cleanup, !dbg !2567

cleanup:                                          ; preds = %if.end32, %if.then18
  ret i8* %from.addr.0.lcssa, !dbg !2568
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @convert_oct(%struct.cpp_reader* %pfile, i8* %from, i8* %limit, %struct._cpp_strbuf* %tbuf, %struct.cset_converter* byval(%struct.cset_converter) align 8 %cvt) unnamed_addr #3 !dbg !2569 {
entry:
  call void @llvm.dbg.value(metadata %struct.cpp_reader* %pfile, metadata !2571, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %from, metadata !2572, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %limit, metadata !2573, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata %struct._cpp_strbuf* %tbuf, metadata !2574, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.declare(metadata %struct.cset_converter* %cvt, metadata !2575, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i64 0, metadata !2576, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 0, metadata !2578, metadata !DIExpression()), !dbg !2582
  %width1 = getelementptr inbounds %struct.cset_converter, %struct.cset_converter* %cvt, i64 0, i32 2, !dbg !2584
  %0 = load i32, i32* %width1, align 8, !dbg !2584
  %conv = sext i32 %0 to i64, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2579, metadata !DIExpression()), !dbg !2582
  %call = tail call fastcc i64 @width_to_mask(i64 %conv) #10, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %call, metadata !2580, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 0, metadata !2581, metadata !DIExpression()), !dbg !2582
  br label %while.cond, !dbg !2587

while.cond:                                       ; preds = %if.end, %entry
  %count.0 = phi i64 [ 0, %entry ], [ %count.1, %if.end ], !dbg !2582
  %n.0 = phi i32 [ 0, %entry ], [ %sub, %if.end ], !dbg !2582
  %from.addr.0 = phi i8* [ %from, %entry ], [ %incdec.ptr, %if.end ]
  call void @llvm.dbg.value(metadata i8* %from.addr.0, metadata !2572, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !2578, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !2576, metadata !DIExpression()), !dbg !2582
  %cmp = icmp ult i8* %from.addr.0, %limit, !dbg !2588
  %cmp3 = icmp ult i64 %count.0, 3, !dbg !2589
  %inc = zext i1 %cmp to i64, !dbg !2589
  %count.1 = add i64 %count.0, %inc, !dbg !2589
  %1 = and i1 %cmp, %cmp3, !dbg !2589
  call void @llvm.dbg.value(metadata i64 %count.1, metadata !2576, metadata !DIExpression()), !dbg !2582
  br i1 %1, label %while.body, label %while.end, !dbg !2587

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* %from.addr.0, align 1, !dbg !2590
  call void @llvm.dbg.value(metadata i8 %2, metadata !2577, metadata !DIExpression()), !dbg !2582
  %3 = and i8 %2, -8, !dbg !2592
  %4 = icmp eq i8 %3, 48, !dbg !2592
  br i1 %4, label %if.end, label %while.end, !dbg !2592

if.end:                                           ; preds = %while.body
  %conv5 = zext i8 %2 to i32, !dbg !2590
  call void @llvm.dbg.value(metadata i32 %conv5, metadata !2577, metadata !DIExpression()), !dbg !2582
  %incdec.ptr = getelementptr inbounds i8, i8* %from.addr.0, i64 1, !dbg !2594
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2572, metadata !DIExpression()), !dbg !2582
  %shl12 = shl i32 %n.0, 3, !dbg !2595
  %add = add i32 %shl12, %conv5, !dbg !2596
  %sub = add i32 %add, -48, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2578, metadata !DIExpression()), !dbg !2582
  br label %while.cond, !dbg !2587, !llvm.loop !2598

while.end:                                        ; preds = %while.body, %while.cond
  %n.0.lcssa = phi i32 [ %n.0, %while.body ], [ %n.0, %while.cond ], !dbg !2582
  %from.addr.0.lcssa = phi i8* [ %from.addr.0, %while.body ], [ %from.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2578, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2578, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %from.addr.0.lcssa, metadata !2572, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %from.addr.0.lcssa, metadata !2572, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2578, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2578, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %from.addr.0.lcssa, metadata !2572, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %from.addr.0.lcssa, metadata !2572, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2578, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 %n.0.lcssa, metadata !2578, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %from.addr.0.lcssa, metadata !2572, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %from.addr.0.lcssa, metadata !2572, metadata !DIExpression()), !dbg !2582
  %conv13 = zext i32 %n.0.lcssa to i64, !dbg !2600
  %and = and i64 %call, %conv13, !dbg !2602
  %cmp15 = icmp eq i64 %and, %conv13, !dbg !2603
  br i1 %cmp15, label %if.end22, label %if.then17, !dbg !2604

if.then17:                                        ; preds = %while.end
  %call18 = tail call zeroext i8 (%struct.cpp_reader*, i32, i8*, ...) @cpp_error(%struct.cpp_reader* %pfile, i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i64 0, i64 0)) #8, !dbg !2605
  %5 = trunc i64 %call to i32, !dbg !2607
  %conv21 = and i32 %n.0.lcssa, %5, !dbg !2607
  call void @llvm.dbg.value(metadata i32 %conv21, metadata !2578, metadata !DIExpression()), !dbg !2582
  br label %if.end22, !dbg !2608

if.end22:                                         ; preds = %while.end, %if.then17
  %n.1 = phi i32 [ %conv21, %if.then17 ], [ %n.0.lcssa, %while.end ], !dbg !2582
  call void @llvm.dbg.value(metadata i32 %n.1, metadata !2578, metadata !DIExpression()), !dbg !2582
  tail call fastcc void @emit_numeric_escape(%struct.cpp_reader* %pfile, i32 %n.1, %struct._cpp_strbuf* %tbuf, %struct.cset_converter* nonnull byval(%struct.cset_converter) align 8 %cvt) #10, !dbg !2609
  ret i8* %from.addr.0.lcssa, !dbg !2610
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @width_to_mask(i64 %width) unnamed_addr #0 !dbg !2611 {
entry:
  call void @llvm.dbg.value(metadata i64 %width, metadata !2615, metadata !DIExpression()), !dbg !2616
  %cmp = icmp ult i64 %width, 32, !dbg !2617
  %width. = select i1 %cmp, i64 %width, i64 32, !dbg !2617
  call void @llvm.dbg.value(metadata i64 %width., metadata !2615, metadata !DIExpression()), !dbg !2616
  %notmask = shl nsw i64 -1, %width., !dbg !2618
  %sub = xor i64 %notmask, -1, !dbg !2618
  ret i64 %sub, !dbg !2619
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin }
attributes #11 = { nobuiltin nounwind readonly }
attributes #12 = { nobuiltin nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!791, !792, !793}
!llvm.ident = !{!794}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "conversion_tab", scope: !2, file: !3, line: 623, type: !784, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !122, globals: !220, nameTableKind: None)
!3 = !DIFile(filename: "cpp_charset.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !19, !31, !37, !42}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_builtin_type", file: !6, line: 593, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./cpplib.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "BT_SPECLINE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "BT_DATE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "BT_FILE", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "BT_BASE_FILE", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "BT_INCLUDE_LEVEL", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "BT_TIME", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "BT_STDC", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "BT_PRAGMA", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "BT_TIMESTAMP", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "BT_COUNTER", value: 9, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "c_lang", file: !6, line: 158, baseType: !7, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!21 = !DIEnumerator(name: "CLK_GNUC89", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "CLK_GNUC99", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "CLK_STDC89", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "CLK_STDC94", value: 3, isUnsigned: true)
!25 = !DIEnumerator(name: "CLK_STDC99", value: 4, isUnsigned: true)
!26 = !DIEnumerator(name: "CLK_GNUCXX", value: 5, isUnsigned: true)
!27 = !DIEnumerator(name: "CLK_CXX98", value: 6, isUnsigned: true)
!28 = !DIEnumerator(name: "CLK_GNUCXX0X", value: 7, isUnsigned: true)
!29 = !DIEnumerator(name: "CLK_CXX0X", value: 8, isUnsigned: true)
!30 = !DIEnumerator(name: "CLK_ASM", value: 9, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_normalize_level", file: !6, line: 265, baseType: !7, size: 32, elements: !32)
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "normalized_KC", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "normalized_C", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "normalized_identifier_C", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "normalized_none", value: 3, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_deps_style", file: !6, line: 262, baseType: !7, size: 32, elements: !38)
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "DEPS_NONE", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "DEPS_USER", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "DEPS_SYSTEM", value: 2, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpp_ttype", file: !6, line: 143, baseType: !7, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121}
!44 = !DIEnumerator(name: "CPP_EQ", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "CPP_NOT", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "CPP_GREATER", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "CPP_LESS", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "CPP_PLUS", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "CPP_MINUS", value: 5, isUnsigned: true)
!50 = !DIEnumerator(name: "CPP_MULT", value: 6, isUnsigned: true)
!51 = !DIEnumerator(name: "CPP_DIV", value: 7, isUnsigned: true)
!52 = !DIEnumerator(name: "CPP_MOD", value: 8, isUnsigned: true)
!53 = !DIEnumerator(name: "CPP_AND", value: 9, isUnsigned: true)
!54 = !DIEnumerator(name: "CPP_OR", value: 10, isUnsigned: true)
!55 = !DIEnumerator(name: "CPP_XOR", value: 11, isUnsigned: true)
!56 = !DIEnumerator(name: "CPP_RSHIFT", value: 12, isUnsigned: true)
!57 = !DIEnumerator(name: "CPP_LSHIFT", value: 13, isUnsigned: true)
!58 = !DIEnumerator(name: "CPP_COMPL", value: 14, isUnsigned: true)
!59 = !DIEnumerator(name: "CPP_AND_AND", value: 15, isUnsigned: true)
!60 = !DIEnumerator(name: "CPP_OR_OR", value: 16, isUnsigned: true)
!61 = !DIEnumerator(name: "CPP_QUERY", value: 17, isUnsigned: true)
!62 = !DIEnumerator(name: "CPP_COLON", value: 18, isUnsigned: true)
!63 = !DIEnumerator(name: "CPP_COMMA", value: 19, isUnsigned: true)
!64 = !DIEnumerator(name: "CPP_OPEN_PAREN", value: 20, isUnsigned: true)
!65 = !DIEnumerator(name: "CPP_CLOSE_PAREN", value: 21, isUnsigned: true)
!66 = !DIEnumerator(name: "CPP_EOF", value: 22, isUnsigned: true)
!67 = !DIEnumerator(name: "CPP_EQ_EQ", value: 23, isUnsigned: true)
!68 = !DIEnumerator(name: "CPP_NOT_EQ", value: 24, isUnsigned: true)
!69 = !DIEnumerator(name: "CPP_GREATER_EQ", value: 25, isUnsigned: true)
!70 = !DIEnumerator(name: "CPP_LESS_EQ", value: 26, isUnsigned: true)
!71 = !DIEnumerator(name: "CPP_PLUS_EQ", value: 27, isUnsigned: true)
!72 = !DIEnumerator(name: "CPP_MINUS_EQ", value: 28, isUnsigned: true)
!73 = !DIEnumerator(name: "CPP_MULT_EQ", value: 29, isUnsigned: true)
!74 = !DIEnumerator(name: "CPP_DIV_EQ", value: 30, isUnsigned: true)
!75 = !DIEnumerator(name: "CPP_MOD_EQ", value: 31, isUnsigned: true)
!76 = !DIEnumerator(name: "CPP_AND_EQ", value: 32, isUnsigned: true)
!77 = !DIEnumerator(name: "CPP_OR_EQ", value: 33, isUnsigned: true)
!78 = !DIEnumerator(name: "CPP_XOR_EQ", value: 34, isUnsigned: true)
!79 = !DIEnumerator(name: "CPP_RSHIFT_EQ", value: 35, isUnsigned: true)
!80 = !DIEnumerator(name: "CPP_LSHIFT_EQ", value: 36, isUnsigned: true)
!81 = !DIEnumerator(name: "CPP_HASH", value: 37, isUnsigned: true)
!82 = !DIEnumerator(name: "CPP_PASTE", value: 38, isUnsigned: true)
!83 = !DIEnumerator(name: "CPP_OPEN_SQUARE", value: 39, isUnsigned: true)
!84 = !DIEnumerator(name: "CPP_CLOSE_SQUARE", value: 40, isUnsigned: true)
!85 = !DIEnumerator(name: "CPP_OPEN_BRACE", value: 41, isUnsigned: true)
!86 = !DIEnumerator(name: "CPP_CLOSE_BRACE", value: 42, isUnsigned: true)
!87 = !DIEnumerator(name: "CPP_SEMICOLON", value: 43, isUnsigned: true)
!88 = !DIEnumerator(name: "CPP_ELLIPSIS", value: 44, isUnsigned: true)
!89 = !DIEnumerator(name: "CPP_PLUS_PLUS", value: 45, isUnsigned: true)
!90 = !DIEnumerator(name: "CPP_MINUS_MINUS", value: 46, isUnsigned: true)
!91 = !DIEnumerator(name: "CPP_DEREF", value: 47, isUnsigned: true)
!92 = !DIEnumerator(name: "CPP_DOT", value: 48, isUnsigned: true)
!93 = !DIEnumerator(name: "CPP_SCOPE", value: 49, isUnsigned: true)
!94 = !DIEnumerator(name: "CPP_DEREF_STAR", value: 50, isUnsigned: true)
!95 = !DIEnumerator(name: "CPP_DOT_STAR", value: 51, isUnsigned: true)
!96 = !DIEnumerator(name: "CPP_ATSIGN", value: 52, isUnsigned: true)
!97 = !DIEnumerator(name: "CPP_NAME", value: 53, isUnsigned: true)
!98 = !DIEnumerator(name: "CPP_AT_NAME", value: 54, isUnsigned: true)
!99 = !DIEnumerator(name: "CPP_NUMBER", value: 55, isUnsigned: true)
!100 = !DIEnumerator(name: "CPP_CHAR", value: 56, isUnsigned: true)
!101 = !DIEnumerator(name: "CPP_WCHAR", value: 57, isUnsigned: true)
!102 = !DIEnumerator(name: "CPP_CHAR16", value: 58, isUnsigned: true)
!103 = !DIEnumerator(name: "CPP_CHAR32", value: 59, isUnsigned: true)
!104 = !DIEnumerator(name: "CPP_OTHER", value: 60, isUnsigned: true)
!105 = !DIEnumerator(name: "CPP_STRING", value: 61, isUnsigned: true)
!106 = !DIEnumerator(name: "CPP_WSTRING", value: 62, isUnsigned: true)
!107 = !DIEnumerator(name: "CPP_STRING16", value: 63, isUnsigned: true)
!108 = !DIEnumerator(name: "CPP_STRING32", value: 64, isUnsigned: true)
!109 = !DIEnumerator(name: "CPP_UTF8STRING", value: 65, isUnsigned: true)
!110 = !DIEnumerator(name: "CPP_OBJC_STRING", value: 66, isUnsigned: true)
!111 = !DIEnumerator(name: "CPP_HEADER_NAME", value: 67, isUnsigned: true)
!112 = !DIEnumerator(name: "CPP_COMMENT", value: 68, isUnsigned: true)
!113 = !DIEnumerator(name: "CPP_MACRO_ARG", value: 69, isUnsigned: true)
!114 = !DIEnumerator(name: "CPP_PRAGMA", value: 70, isUnsigned: true)
!115 = !DIEnumerator(name: "CPP_PRAGMA_EOL", value: 71, isUnsigned: true)
!116 = !DIEnumerator(name: "CPP_PADDING", value: 72, isUnsigned: true)
!117 = !DIEnumerator(name: "N_TTYPES", value: 73, isUnsigned: true)
!118 = !DIEnumerator(name: "CPP_LAST_EQ", value: 13, isUnsigned: true)
!119 = !DIEnumerator(name: "CPP_FIRST_DIGRAPH", value: 37, isUnsigned: true)
!120 = !DIEnumerator(name: "CPP_LAST_PUNCTUATOR", value: 52, isUnsigned: true)
!121 = !DIEnumerator(name: "CPP_LAST_CPP_OP", value: 26, isUnsigned: true)
!122 = !{!123, !124, !128, !129, !7, !127, !130, !131, !133, !135, !217, !219}
!123 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !126, line: 22, baseType: !127)
!126 = !DIFile(filename: "./cpp-id-data.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!127 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!128 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!129 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !132, line: 29, baseType: !130)
!132 = !DIFile(filename: "/usr/include/iconv.h", directory: "")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 46, baseType: !123)
!134 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_hashnode", file: !6, line: 36, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_hashnode", file: !6, line: 644, size: 256, elements: !138)
!138 = !{!139, !148, !149, !150, !151, !152, !153}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !137, file: !6, line: 645, baseType: !140, size: 128)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !141, line: 31, size: 128, elements: !142)
!141 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!142 = !{!143, !146, !147}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !140, file: !141, line: 32, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !140, file: !141, line: 33, baseType: !7, size: 32, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !140, file: !141, line: 34, baseType: !7, size: 32, offset: 96)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "is_directive", scope: !137, file: !6, line: 646, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "directive_index", scope: !137, file: !6, line: 647, baseType: !7, size: 7, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "rid_code", scope: !137, file: !6, line: 650, baseType: !127, size: 8, offset: 136)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !6, line: 651, baseType: !7, size: 6, offset: 144, flags: DIFlagBitField, extraData: i64 144)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !6, line: 652, baseType: !7, size: 10, offset: 150, flags: DIFlagBitField, extraData: i64 144)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !137, file: !6, line: 654, baseType: !154, size: 64, offset: 192)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_cpp_hashnode_value", file: !6, line: 633, size: 64, elements: !155)
!155 = !{!156, !205, !215, !216}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !154, file: !6, line: 635, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_macro", file: !6, line: 37, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro", file: !126, line: 36, size: 256, elements: !160)
!160 = !{!161, !163, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !159, file: !126, line: 42, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !159, file: !126, line: 51, baseType: !164, size: 64, offset: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_macro_u", file: !126, line: 47, size: 64, elements: !165)
!165 = !{!166, !195}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "tokens", scope: !164, file: !126, line: 49, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_token", file: !6, line: 34, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_token", file: !6, line: 212, size: 192, elements: !170)
!170 = !{!171, !174, !175, !176}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "src_loc", scope: !169, file: !6, line: 213, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !173, line: 44, baseType: !7)
!173 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!174 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !169, file: !6, line: 214, baseType: !7, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !169, file: !6, line: 215, baseType: !129, size: 16, offset: 48)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !169, file: !6, line: 237, baseType: !177, size: 128, offset: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cpp_token_u", file: !6, line: 217, size: 128, elements: !178)
!178 = !{!179, !183, !184, !189, !193, !194}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !177, file: !6, line: 220, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_identifier", file: !6, line: 201, size: 64, elements: !181)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !180, file: !6, line: 207, baseType: !135, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !177, file: !6, line: 223, baseType: !167, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !177, file: !6, line: 226, baseType: !185, size: 128)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_string", file: !6, line: 162, size: 128, elements: !186)
!186 = !{!187, !188}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !185, file: !6, line: 163, baseType: !7, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !185, file: !6, line: 164, baseType: !144, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "macro_arg", scope: !177, file: !6, line: 229, baseType: !190, size: 32)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_macro_arg", file: !6, line: 195, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "arg_no", scope: !190, file: !6, line: 197, baseType: !7, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "token_no", scope: !177, file: !6, line: 233, baseType: !7, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pragma", scope: !177, file: !6, line: 236, baseType: !7, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !164, file: !126, line: 50, baseType: !144, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !159, file: !126, line: 54, baseType: !172, size: 32, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !159, file: !126, line: 57, baseType: !7, size: 32, offset: 160)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "paramc", scope: !159, file: !126, line: 60, baseType: !129, size: 16, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "fun_like", scope: !159, file: !126, line: 63, baseType: !7, size: 1, offset: 208, flags: DIFlagBitField, extraData: i64 208)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "variadic", scope: !159, file: !126, line: 66, baseType: !7, size: 1, offset: 209, flags: DIFlagBitField, extraData: i64 208)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "syshdr", scope: !159, file: !126, line: 69, baseType: !7, size: 1, offset: 210, flags: DIFlagBitField, extraData: i64 208)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !159, file: !126, line: 72, baseType: !7, size: 1, offset: 211, flags: DIFlagBitField, extraData: i64 208)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !159, file: !126, line: 75, baseType: !7, size: 1, offset: 212, flags: DIFlagBitField, extraData: i64 208)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "extra_tokens", scope: !159, file: !126, line: 80, baseType: !7, size: 1, offset: 213, flags: DIFlagBitField, extraData: i64 208)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "answers", scope: !154, file: !6, line: 637, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "answer", file: !126, line: 28, size: 320, elements: !208)
!208 = !{!209, !210, !211}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !126, line: 29, baseType: !206, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !207, file: !126, line: 30, baseType: !7, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !207, file: !126, line: 31, baseType: !212, size: 192, offset: 128)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 192, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 1)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "builtin", scope: !154, file: !6, line: 639, baseType: !5, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_index", scope: !154, file: !6, line: 641, baseType: !129, size: 16)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "cppchar_t", file: !6, line: 258, baseType: !7)
!220 = !{!0, !221, !247, !249, !260, !767, !782}
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "masks", scope: !223, file: !3, line: 173, type: !244, isLocal: true, isDefinition: true)
!223 = distinct !DISubprogram(name: "one_utf8_to_cppchar", scope: !3, file: !3, line: 170, type: !224, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !231)
!224 = !DISubroutineType(types: !225)
!225 = !{!128, !226, !229, !230}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !243}
!232 = !DILocalVariable(name: "inbufp", arg: 1, scope: !223, file: !3, line: 170, type: !226)
!233 = !DILocalVariable(name: "inbytesleftp", arg: 2, scope: !223, file: !3, line: 170, type: !229)
!234 = !DILocalVariable(name: "cp", arg: 3, scope: !223, file: !3, line: 171, type: !230)
!235 = !DILocalVariable(name: "c", scope: !223, file: !3, line: 176, type: !219)
!236 = !DILocalVariable(name: "inbuf", scope: !223, file: !3, line: 177, type: !227)
!237 = !DILocalVariable(name: "nbytes", scope: !223, file: !3, line: 178, type: !133)
!238 = !DILocalVariable(name: "i", scope: !223, file: !3, line: 178, type: !133)
!239 = !DILocalVariable(name: "n", scope: !240, file: !3, line: 207, type: !219)
!240 = distinct !DILexicalBlock(scope: !241, file: !3, line: 206, column: 5)
!241 = distinct !DILexicalBlock(scope: !242, file: !3, line: 205, column: 3)
!242 = distinct !DILexicalBlock(scope: !223, file: !3, line: 205, column: 3)
!243 = !DILabel(scope: !223, name: "found", file: !3, line: 198)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 48, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 6)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "patns", scope: !223, file: !3, line: 174, type: !244, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "ucnranges", scope: !2, file: !3, line: 857, type: !251, isLocal: true, isDefinition: true)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 23904, elements: !258)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 850, size: 32, elements: !254)
!254 = !{!255, !256, !257}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !253, file: !3, line: 852, baseType: !127, size: 8)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "combine", scope: !253, file: !3, line: 854, baseType: !127, size: 8, offset: 8)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !253, file: !3, line: 856, baseType: !129, size: 16, offset: 16)
!258 = !{!259}
!259 = !DISubrange(count: 747)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "charconsts", scope: !262, file: !3, line: 1264, type: !764, isLocal: true, isDefinition: true)
!262 = distinct !DISubprogram(name: "convert_escape", scope: !3, file: !3, line: 1259, type: !263, scopeLine: 1261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !749)
!263 = !DISubroutineType(types: !264)
!264 = !{!227, !265, !227, !227, !340, !333}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_reader", file: !6, line: 31, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_reader", file: !268, line: 322, size: 10432, elements: !269)
!268 = !DIFile(filename: "./internal.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!269 = !{!270, !348, !349, !366, !396, !397, !408, !409, !410, !440, !442, !446, !447, !448, !449, !450, !451, !452, !453, !454, !457, !458, !461, !462, !495, !496, !497, !500, !501, !502, !503, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !529, !530, !531, !534, !614, !640, !643, !644, !707, !714, !715, !722, !723, !724, !725, !728, !729, !742}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !267, file: !268, line: 325, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_buffer", file: !6, line: 32, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_buffer", file: !268, line: 249, size: 1536, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280, !287, !288, !289, !290, !292, !295, !296, !299, !300, !301, !302, !303, !304, !332}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !273, file: !268, line: 251, baseType: !144, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "line_base", scope: !273, file: !268, line: 252, baseType: !144, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !273, file: !268, line: 253, baseType: !144, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !273, file: !268, line: 255, baseType: !144, size: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !273, file: !268, line: 256, baseType: !144, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !273, file: !268, line: 258, baseType: !281, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_line_note", file: !268, line: 235, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_line_note", file: !268, line: 236, size: 128, elements: !284)
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !283, file: !268, line: 239, baseType: !144, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !283, file: !268, line: 245, baseType: !7, size: 32, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "cur_note", scope: !273, file: !268, line: 259, baseType: !7, size: 32, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "notes_used", scope: !273, file: !268, line: 260, baseType: !7, size: 32, offset: 416)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "notes_cap", scope: !273, file: !268, line: 261, baseType: !7, size: 32, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !273, file: !268, line: 263, baseType: !291, size: 64, offset: 512)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !273, file: !268, line: 267, baseType: !293, size: 64, offset: 576)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_file", file: !6, line: 42, flags: DIFlagFwdDecl)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !273, file: !268, line: 271, baseType: !144, size: 64, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "if_stack", scope: !273, file: !268, line: 275, baseType: !297, size: 64, offset: 704)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "if_stack", file: !268, line: 275, flags: DIFlagFwdDecl)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "need_line", scope: !273, file: !268, line: 278, baseType: !127, size: 8, offset: 768)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "warned_cplusplus_comments", scope: !273, file: !268, line: 284, baseType: !7, size: 1, offset: 776, flags: DIFlagBitField, extraData: i64 776)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "from_stage3", scope: !273, file: !268, line: 289, baseType: !7, size: 1, offset: 777, flags: DIFlagBitField, extraData: i64 776)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "return_at_eof", scope: !273, file: !268, line: 294, baseType: !7, size: 1, offset: 778, flags: DIFlagBitField, extraData: i64 776)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !273, file: !268, line: 298, baseType: !127, size: 8, offset: 784)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !273, file: !268, line: 302, baseType: !305, size: 512, offset: 832)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_dir", file: !6, line: 523, size: 512, elements: !306)
!306 = !{!307, !309, !310, !311, !312, !313, !314, !318, !324, !329}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !6, line: 526, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !6, line: 529, baseType: !217, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !305, file: !6, line: 530, baseType: !7, size: 32, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !305, file: !6, line: 534, baseType: !127, size: 8, offset: 160)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "user_supplied_p", scope: !305, file: !6, line: 537, baseType: !127, size: 8, offset: 168)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "canonical_name", scope: !305, file: !6, line: 541, baseType: !217, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name_map", scope: !305, file: !6, line: 545, baseType: !315, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "construct", scope: !305, file: !6, line: 551, baseType: !319, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!217, !316, !322}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_dir", file: !6, line: 39, baseType: !305)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !305, file: !6, line: 555, baseType: !325, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !326, line: 47, baseType: !327)
!326 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !328, line: 148, baseType: !123)
!328 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !305, file: !6, line: 556, baseType: !330, size: 64, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !326, line: 59, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !328, line: 145, baseType: !123)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "input_cset_desc", scope: !273, file: !268, line: 306, baseType: !333, size: 192, offset: 1344)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cset_converter", file: !268, line: 47, size: 192, elements: !334)
!334 = !{!335, !346, !347}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !333, file: !268, line: 49, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "convert_f", file: !268, line: 45, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!127, !131, !144, !133, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_strbuf", file: !3, line: 99, size: 192, elements: !342)
!342 = !{!343, !344, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !341, file: !3, line: 101, baseType: !124, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "asize", scope: !341, file: !3, line: 102, baseType: !133, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !341, file: !3, line: 103, baseType: !133, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "cd", scope: !333, file: !268, line: 50, baseType: !131, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !333, file: !268, line: 51, baseType: !128, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "overlaid_buffer", scope: !267, file: !268, line: 328, baseType: !271, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !267, file: !268, line: 331, baseType: !350, size: 160, offset: 128)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lexer_state", file: !268, line: 177, size: 160, elements: !351)
!351 = !{!352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "in_directive", scope: !350, file: !268, line: 180, baseType: !127, size: 8)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "directive_wants_padding", scope: !350, file: !268, line: 185, baseType: !127, size: 8, offset: 8)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "skipping", scope: !350, file: !268, line: 188, baseType: !127, size: 8, offset: 16)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "angled_headers", scope: !350, file: !268, line: 191, baseType: !127, size: 8, offset: 24)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "in_expression", scope: !350, file: !268, line: 194, baseType: !127, size: 8, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "save_comments", scope: !350, file: !268, line: 198, baseType: !127, size: 8, offset: 40)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "va_args_ok", scope: !350, file: !268, line: 201, baseType: !127, size: 8, offset: 48)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned_ok", scope: !350, file: !268, line: 204, baseType: !127, size: 8, offset: 56)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_expansion", scope: !350, file: !268, line: 207, baseType: !127, size: 8, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "parsing_args", scope: !350, file: !268, line: 210, baseType: !127, size: 8, offset: 72)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "discarding_output", scope: !350, file: !268, line: 214, baseType: !127, size: 8, offset: 80)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "skip_eval", scope: !350, file: !268, line: 217, baseType: !7, size: 32, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "in_deferred_pragma", scope: !350, file: !268, line: 220, baseType: !127, size: 8, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pragma_allow_expansion", scope: !350, file: !268, line: 223, baseType: !127, size: 8, offset: 136)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "line_table", scope: !267, file: !268, line: 334, baseType: !367, size: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_maps", file: !173, line: 74, size: 448, elements: !369)
!369 = !{!370, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !368, file: !173, line: 75, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "line_map", file: !173, line: 61, size: 192, elements: !373)
!373 = !{!374, !375, !377, !378, !379, !380, !381}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "to_file", scope: !372, file: !173, line: 62, baseType: !316, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "to_line", scope: !372, file: !173, line: 63, baseType: !376, size: 32, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenum_type", file: !173, line: 39, baseType: !7)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "start_location", scope: !372, file: !173, line: 64, baseType: !172, size: 32, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "included_from", scope: !372, file: !173, line: 65, baseType: !128, size: 32, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !372, file: !173, line: 66, baseType: !7, size: 8, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !372, file: !173, line: 68, baseType: !127, size: 8, offset: 168)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "column_bits", scope: !372, file: !173, line: 70, baseType: !7, size: 8, offset: 176, flags: DIFlagBitField, extraData: i64 176)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !368, file: !173, line: 76, baseType: !7, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !368, file: !173, line: 77, baseType: !7, size: 32, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !368, file: !173, line: 79, baseType: !7, size: 32, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "last_listed", scope: !368, file: !173, line: 84, baseType: !128, size: 32, offset: 160)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !368, file: !173, line: 87, baseType: !7, size: 32, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "trace_includes", scope: !368, file: !173, line: 90, baseType: !127, size: 8, offset: 224)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "highest_location", scope: !368, file: !173, line: 93, baseType: !172, size: 32, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "highest_line", scope: !368, file: !173, line: 96, baseType: !172, size: 32, offset: 288)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "max_column_hint", scope: !368, file: !173, line: 100, baseType: !7, size: 32, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "reallocator", scope: !368, file: !173, line: 104, baseType: !392, size: 64, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_map_realloc", file: !173, line: 47, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!130, !130, !133}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "directive_line", scope: !267, file: !268, line: 337, baseType: !172, size: 32, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "a_buff", scope: !267, file: !268, line: 340, baseType: !398, size: 64, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "_cpp_buff", file: !268, line: 99, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cpp_buff", file: !268, line: 100, size: 256, elements: !401)
!401 = !{!402, !404, !406, !407}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !268, line: 102, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !400, file: !268, line: 103, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !400, file: !268, line: 103, baseType: !405, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !400, file: !268, line: 103, baseType: !405, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "u_buff", scope: !267, file: !268, line: 341, baseType: !398, size: 64, offset: 512)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "free_buffs", scope: !267, file: !268, line: 342, baseType: !398, size: 64, offset: 576)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "base_context", scope: !267, file: !268, line: 345, baseType: !411, size: 448, offset: 640)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_context", file: !268, line: 142, size: 448, elements: !412)
!412 = !{!413, !416, !417, !437, !438, !439}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !411, file: !268, line: 145, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_context", file: !268, line: 141, baseType: !411)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !411, file: !268, line: 145, baseType: !414, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !411, file: !268, line: 164, baseType: !418, size: 128, offset: 128)
!418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !268, line: 147, size: 128, elements: !419)
!419 = !{!420, !432}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "iso", scope: !418, file: !268, line: 156, baseType: !421, size: 128)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !268, line: 152, size: 128, elements: !422)
!422 = !{!423, !431}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !421, file: !268, line: 154, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "utoken", file: !268, line: 121, size: 64, elements: !425)
!425 = !{!426, !429}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !424, file: !268, line: 123, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ptoken", scope: !424, file: !268, line: 124, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !421, file: !268, line: 155, baseType: !424, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "trad", scope: !418, file: !268, line: 163, baseType: !433, size: 128)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !268, line: 159, size: 128, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !433, file: !268, line: 161, baseType: !144, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !433, file: !268, line: 162, baseType: !144, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !411, file: !268, line: 168, baseType: !398, size: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "macro", scope: !411, file: !268, line: 171, baseType: !135, size: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "direct_p", scope: !411, file: !268, line: 174, baseType: !127, size: 8, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !267, file: !268, line: 346, baseType: !441, size: 64, offset: 1088)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "directive", scope: !267, file: !268, line: 349, baseType: !443, size: 64, offset: 1152)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "directive", file: !268, line: 40, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "directive_result", scope: !267, file: !268, line: 352, baseType: !168, size: 192, offset: 1216)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "invocation_location", scope: !267, file: !268, line: 356, baseType: !172, size: 32, offset: 1408)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "set_invocation_location", scope: !267, file: !268, line: 360, baseType: !127, size: 8, offset: 1440)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "quote_include", scope: !267, file: !268, line: 363, baseType: !308, size: 64, offset: 1472)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "bracket_include", scope: !267, file: !268, line: 364, baseType: !308, size: 64, offset: 1536)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "no_search_path", scope: !267, file: !268, line: 365, baseType: !305, size: 512, offset: 1600)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "all_files", scope: !267, file: !268, line: 368, baseType: !293, size: 64, offset: 2112)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "main_file", scope: !267, file: !268, line: 370, baseType: !293, size: 64, offset: 2176)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash", scope: !267, file: !268, line: 373, baseType: !455, size: 64, offset: 2240)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !268, line: 373, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash", scope: !267, file: !268, line: 374, baseType: !455, size: 64, offset: 2304)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "file_hash_entries", scope: !267, file: !268, line: 375, baseType: !459, size: 64, offset: 2368)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_hash_entry_pool", file: !268, line: 375, flags: DIFlagFwdDecl)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_hash", scope: !267, file: !268, line: 378, baseType: !455, size: 64, offset: 2432)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nonexistent_file_ob", scope: !267, file: !268, line: 379, baseType: !463, size: 704, offset: 2496)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !464, line: 164, size: 704, elements: !465)
!464 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!465 = !{!466, !468, !478, !479, !480, !481, !482, !483, !487, !491, !492, !493, !494}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !463, file: !464, line: 166, baseType: !467, size: 64)
!467 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !463, file: !464, line: 167, baseType: !469, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !464, line: 157, size: 192, elements: !471)
!471 = !{!472, !473, !474}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !470, file: !464, line: 159, baseType: !217, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !470, file: !464, line: 160, baseType: !469, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !470, file: !464, line: 161, baseType: !475, size: 32, offset: 128)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 32, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 4)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !463, file: !464, line: 168, baseType: !217, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !463, file: !464, line: 169, baseType: !217, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !463, file: !464, line: 170, baseType: !217, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !463, file: !464, line: 171, baseType: !467, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !463, file: !464, line: 172, baseType: !128, size: 32, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !463, file: !464, line: 176, baseType: !484, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!469, !130, !467}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !463, file: !464, line: 177, baseType: !488, size: 64, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !130, !469}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !463, file: !464, line: 178, baseType: !130, size: 64, offset: 576)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !463, file: !464, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !463, file: !464, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !463, file: !464, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "quote_ignores_source_dir", scope: !267, file: !268, line: 383, baseType: !127, size: 8, offset: 3200)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "seen_once_only", scope: !267, file: !268, line: 387, baseType: !127, size: 8, offset: 3208)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mi_cmacro", scope: !267, file: !268, line: 390, baseType: !498, size: 64, offset: 3264)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mi_ind_cmacro", scope: !267, file: !268, line: 391, baseType: !498, size: 64, offset: 3328)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mi_valid", scope: !267, file: !268, line: 392, baseType: !127, size: 8, offset: 3392)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "cur_token", scope: !267, file: !268, line: 395, baseType: !167, size: 64, offset: 3456)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "base_run", scope: !267, file: !268, line: 396, baseType: !504, size: 256, offset: 3520)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "tokenrun", file: !268, line: 128, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenrun", file: !268, line: 129, size: 256, elements: !506)
!506 = !{!507, !509, !510, !511}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !268, line: 131, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !505, file: !268, line: 131, baseType: !508, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !505, file: !268, line: 132, baseType: !167, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !505, file: !268, line: 132, baseType: !167, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "cur_run", scope: !267, file: !268, line: 396, baseType: !508, size: 64, offset: 3776)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "lookaheads", scope: !267, file: !268, line: 397, baseType: !7, size: 32, offset: 3840)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "keep_tokens", scope: !267, file: !268, line: 400, baseType: !7, size: 32, offset: 3872)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer", scope: !267, file: !268, line: 403, baseType: !405, size: 64, offset: 3904)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "macro_buffer_len", scope: !267, file: !268, line: 404, baseType: !7, size: 32, offset: 3968)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_cset_desc", scope: !267, file: !268, line: 408, baseType: !333, size: 192, offset: 4032)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_cset_desc", scope: !267, file: !268, line: 412, baseType: !333, size: 192, offset: 4224)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "char16_cset_desc", scope: !267, file: !268, line: 416, baseType: !333, size: 192, offset: 4416)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "char32_cset_desc", scope: !267, file: !268, line: 420, baseType: !333, size: 192, offset: 4608)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "wide_cset_desc", scope: !267, file: !268, line: 424, baseType: !333, size: 192, offset: 4800)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !267, file: !268, line: 427, baseType: !144, size: 64, offset: 4992)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !267, file: !268, line: 428, baseType: !144, size: 64, offset: 5056)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "avoid_paste", scope: !267, file: !268, line: 431, baseType: !168, size: 192, offset: 5120)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !267, file: !268, line: 432, baseType: !168, size: 192, offset: 5312)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !267, file: !268, line: 435, baseType: !527, size: 64, offset: 5504)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !6, line: 685, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "hash_ob", scope: !267, file: !268, line: 439, baseType: !463, size: 704, offset: 5568)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_ob", scope: !267, file: !268, line: 443, baseType: !463, size: 704, offset: 6272)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pragmas", scope: !267, file: !268, line: 447, baseType: !532, size: 64, offset: 6976)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "pragma_entry", file: !268, line: 447, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !267, file: !268, line: 450, baseType: !535, size: 1088, offset: 7040)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_callbacks", file: !6, line: 472, size: 1088, elements: !536)
!536 = !{!537, !541, !547, !551, !555, !559, !560, !567, !571, !575, !579, !585, !589, !604, !605, !606, !610}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "line_change", scope: !535, file: !6, line: 475, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !265, !427, !128}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "file_change", scope: !535, file: !6, line: 481, baseType: !542, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !265, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "dir_change", scope: !535, file: !6, line: 483, baseType: !548, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !265, !316}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "include", scope: !535, file: !6, line: 484, baseType: !552, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !265, !7, !144, !316, !128, !430}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "define", scope: !535, file: !6, line: 486, baseType: !556, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !265, !7, !135}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "undef", scope: !535, file: !6, line: 487, baseType: !556, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !535, file: !6, line: 488, baseType: !561, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !265, !7, !564}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_string", file: !6, line: 35, baseType: !185)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "def_pragma", scope: !535, file: !6, line: 489, baseType: !568, size: 64, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !265, !7}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "valid_pch", scope: !535, file: !6, line: 490, baseType: !572, size: 64, offset: 512)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!128, !265, !316, !128}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "read_pch", scope: !535, file: !6, line: 491, baseType: !576, size: 64, offset: 576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !265, !316, !128, !316}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "missing_header", scope: !535, file: !6, line: 492, baseType: !580, size: 64, offset: 640)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "missing_header_cb", file: !6, line: 469, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!316, !265, !316, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "macro_to_expand", scope: !535, file: !6, line: 496, baseType: !586, size: 64, offset: 704)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!135, !265, !427}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !535, file: !6, line: 500, baseType: !590, size: 64, offset: 768)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!127, !265, !128, !172, !7, !316, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !595, line: 14, baseType: !596)
!595 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 216, baseType: !597)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 192, elements: !213)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 216, size: 192, elements: !599)
!599 = !{!600, !601, !602, !603}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !598, file: !3, line: 216, baseType: !7, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !598, file: !3, line: 216, baseType: !7, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !598, file: !3, line: 216, baseType: !130, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !598, file: !3, line: 216, baseType: !130, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "used_define", scope: !535, file: !6, line: 506, baseType: !556, size: 64, offset: 832)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "used_undef", scope: !535, file: !6, line: 507, baseType: !556, size: 64, offset: 896)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "before_define", scope: !535, file: !6, line: 510, baseType: !607, size: 64, offset: 960)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !265}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !535, file: !6, line: 513, baseType: !611, size: 64, offset: 1024)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !265, !172, !135}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "hash_table", scope: !267, file: !268, line: 453, baseType: !615, size: 64, offset: 8128)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht", file: !141, line: 46, size: 1152, elements: !617)
!617 = !{!618, !619, !623, !629, !633, !634, !635, !637, !638, !639}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !616, file: !141, line: 49, baseType: !463, size: 704)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !616, file: !141, line: 51, baseType: !620, size: 64, offset: 704)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashnode", file: !141, line: 41, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_node", scope: !616, file: !141, line: 53, baseType: !624, size: 64, offset: 768)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!621, !627}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_table", file: !141, line: 40, baseType: !616)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_subobject", scope: !616, file: !141, line: 56, baseType: !630, size: 64, offset: 832)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!130, !133}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nslots", scope: !616, file: !141, line: 58, baseType: !7, size: 32, offset: 896)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nelements", scope: !616, file: !141, line: 59, baseType: !7, size: 32, offset: 928)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "pfile", scope: !616, file: !141, line: 62, baseType: !636, size: 64, offset: 960)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !616, file: !141, line: 65, baseType: !7, size: 32, offset: 1024)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !616, file: !141, line: 66, baseType: !7, size: 32, offset: 1056)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "entries_owned", scope: !616, file: !141, line: 69, baseType: !127, size: 8, offset: 1088)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "op_stack", scope: !267, file: !268, line: 456, baseType: !641, size: 64, offset: 8192)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !268, line: 42, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "op_limit", scope: !267, file: !268, line: 456, baseType: !641, size: 64, offset: 8256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !267, file: !268, line: 459, baseType: !645, size: 1024, offset: 8320)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_options", file: !6, line: 279, size: 1024, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tabstop", scope: !645, file: !6, line: 282, baseType: !7, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "lang", scope: !645, file: !6, line: 285, baseType: !19, size: 32, offset: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus", scope: !645, file: !6, line: 288, baseType: !127, size: 8, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "cplusplus_comments", scope: !645, file: !6, line: 291, baseType: !127, size: 8, offset: 72)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "objc", scope: !645, file: !6, line: 296, baseType: !127, size: 8, offset: 80)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments", scope: !645, file: !6, line: 299, baseType: !127, size: 8, offset: 88)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "discard_comments_in_macro_exp", scope: !645, file: !6, line: 303, baseType: !127, size: 8, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "trigraphs", scope: !645, file: !6, line: 306, baseType: !127, size: 8, offset: 104)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "digraphs", scope: !645, file: !6, line: 309, baseType: !127, size: 8, offset: 112)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "extended_numbers", scope: !645, file: !6, line: 312, baseType: !127, size: 8, offset: 120)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "uliterals", scope: !645, file: !6, line: 315, baseType: !127, size: 8, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "print_include_names", scope: !645, file: !6, line: 318, baseType: !127, size: 8, offset: 136)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "warn_deprecated", scope: !645, file: !6, line: 321, baseType: !127, size: 8, offset: 144)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "warn_comments", scope: !645, file: !6, line: 324, baseType: !127, size: 8, offset: 152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "warn_missing_include_dirs", scope: !645, file: !6, line: 328, baseType: !127, size: 8, offset: 160)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "warn_trigraphs", scope: !645, file: !6, line: 331, baseType: !127, size: 8, offset: 168)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "warn_multichar", scope: !645, file: !6, line: 334, baseType: !127, size: 8, offset: 176)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "warn_traditional", scope: !645, file: !6, line: 338, baseType: !127, size: 8, offset: 184)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "warn_long_long", scope: !645, file: !6, line: 341, baseType: !127, size: 8, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "warn_endif_labels", scope: !645, file: !6, line: 344, baseType: !127, size: 8, offset: 200)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "warn_num_sign_change", scope: !645, file: !6, line: 348, baseType: !127, size: 8, offset: 208)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "warn_variadic_macros", scope: !645, file: !6, line: 352, baseType: !127, size: 8, offset: 216)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "warn_builtin_macro_redefined", scope: !645, file: !6, line: 356, baseType: !127, size: 8, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "remap", scope: !645, file: !6, line: 360, baseType: !127, size: 8, offset: 232)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dollars_in_ident", scope: !645, file: !6, line: 363, baseType: !127, size: 8, offset: 240)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "extended_identifiers", scope: !645, file: !6, line: 366, baseType: !127, size: 8, offset: 248)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "warn_dollars", scope: !645, file: !6, line: 370, baseType: !127, size: 8, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "warn_undef", scope: !645, file: !6, line: 373, baseType: !127, size: 8, offset: 264)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "warn_unused_macros", scope: !645, file: !6, line: 376, baseType: !127, size: 8, offset: 272)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "c99", scope: !645, file: !6, line: 379, baseType: !127, size: 8, offset: 280)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !645, file: !6, line: 382, baseType: !127, size: 8, offset: 288)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pedantic", scope: !645, file: !6, line: 385, baseType: !127, size: 8, offset: 296)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "preprocessed", scope: !645, file: !6, line: 389, baseType: !127, size: 8, offset: 304)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "show_column", scope: !645, file: !6, line: 392, baseType: !127, size: 8, offset: 312)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "operator_names", scope: !645, file: !6, line: 395, baseType: !127, size: 8, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "warn_cxx_operator_names", scope: !645, file: !6, line: 398, baseType: !127, size: 8, offset: 328)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "traditional", scope: !645, file: !6, line: 401, baseType: !127, size: 8, offset: 336)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "narrow_charset", scope: !645, file: !6, line: 404, baseType: !316, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "wide_charset", scope: !645, file: !6, line: 407, baseType: !316, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "input_charset", scope: !645, file: !6, line: 410, baseType: !316, size: 64, offset: 512)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "warn_normalize", scope: !645, file: !6, line: 414, baseType: !31, size: 32, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "warn_invalid_pch", scope: !645, file: !6, line: 417, baseType: !127, size: 8, offset: 608)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "restore_pch_deps", scope: !645, file: !6, line: 420, baseType: !127, size: 8, offset: 616)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "deps", scope: !645, file: !6, line: 441, baseType: !691, size: 64, offset: 640)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !6, line: 423, size: 64, elements: !692)
!692 = !{!693, !694, !695, !696, !697}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !691, file: !6, line: 426, baseType: !37, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "missing_files", scope: !691, file: !6, line: 429, baseType: !127, size: 8, offset: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "phony_targets", scope: !691, file: !6, line: 433, baseType: !127, size: 8, offset: 40)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_main_file", scope: !691, file: !6, line: 436, baseType: !127, size: 8, offset: 48)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "need_preprocessor_output", scope: !691, file: !6, line: 440, baseType: !127, size: 8, offset: 56)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !645, file: !6, line: 447, baseType: !133, size: 64, offset: 704)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "char_precision", scope: !645, file: !6, line: 447, baseType: !133, size: 64, offset: 768)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "int_precision", scope: !645, file: !6, line: 447, baseType: !133, size: 64, offset: 832)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "wchar_precision", scope: !645, file: !6, line: 447, baseType: !133, size: 64, offset: 896)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_char", scope: !645, file: !6, line: 450, baseType: !127, size: 8, offset: 960)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_wchar", scope: !645, file: !6, line: 450, baseType: !127, size: 8, offset: 968)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_big_endian", scope: !645, file: !6, line: 454, baseType: !127, size: 8, offset: 976)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "stdc_0_in_system_headers", scope: !645, file: !6, line: 457, baseType: !127, size: 8, offset: 984)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "directives_only", scope: !645, file: !6, line: 460, baseType: !127, size: 8, offset: 992)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "spec_nodes", scope: !267, file: !268, line: 463, baseType: !708, size: 256, offset: 9344)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spec_nodes", file: !268, line: 227, size: 256, elements: !709)
!709 = !{!710, !711, !712, !713}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "n_defined", scope: !708, file: !268, line: 229, baseType: !135, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "n_true", scope: !708, file: !268, line: 230, baseType: !135, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "n_false", scope: !708, file: !268, line: 231, baseType: !135, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "n__VA_ARGS__", scope: !708, file: !268, line: 232, baseType: !135, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "our_hashtable", scope: !267, file: !268, line: 466, baseType: !127, size: 8, offset: 9600)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !267, file: !268, line: 475, baseType: !716, size: 256, offset: 9664)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !268, line: 469, size: 256, elements: !717)
!717 = !{!718, !719, !720, !721}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !716, file: !268, line: 471, baseType: !405, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !716, file: !268, line: 472, baseType: !405, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !716, file: !268, line: 473, baseType: !405, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "first_line", scope: !716, file: !268, line: 474, baseType: !172, size: 32, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cur", scope: !267, file: !268, line: 478, baseType: !144, size: 64, offset: 9920)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "saved_rlimit", scope: !267, file: !268, line: 478, baseType: !144, size: 64, offset: 9984)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "saved_line_base", scope: !267, file: !268, line: 478, baseType: !144, size: 64, offset: 10048)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "savedstate", scope: !267, file: !268, line: 482, baseType: !726, size: 64, offset: 10112)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpp_savedstate", file: !268, line: 482, flags: DIFlagFwdDecl)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !267, file: !268, line: 485, baseType: !7, size: 32, offset: 10176)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "comments", scope: !267, file: !268, line: 488, baseType: !730, size: 128, offset: 10240)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment_table", file: !6, line: 901, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 891, size: 128, elements: !732)
!732 = !{!733, !740, !741}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !731, file: !6, line: 894, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpp_comment", file: !6, line: 887, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 880, size: 128, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !736, file: !6, line: 883, baseType: !217, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "sloc", scope: !736, file: !6, line: 886, baseType: !172, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !731, file: !6, line: 897, baseType: !128, size: 32, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !731, file: !6, line: 900, baseType: !128, size: 32, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "pushed_macros", scope: !267, file: !268, line: 491, baseType: !743, size: 64, offset: 10368)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_pragma_macro", file: !268, line: 310, size: 192, elements: !745)
!745 = !{!746, !747, !748}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !744, file: !268, line: 312, baseType: !743, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !744, file: !268, line: 314, baseType: !217, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !744, file: !268, line: 316, baseType: !157, size: 64, offset: 128)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !763}
!750 = !DILocalVariable(name: "pfile", arg: 1, scope: !262, file: !3, line: 1259, type: !265)
!751 = !DILocalVariable(name: "from", arg: 2, scope: !262, file: !3, line: 1259, type: !227)
!752 = !DILocalVariable(name: "limit", arg: 3, scope: !262, file: !3, line: 1259, type: !227)
!753 = !DILocalVariable(name: "tbuf", arg: 4, scope: !262, file: !3, line: 1260, type: !340)
!754 = !DILocalVariable(name: "cvt", arg: 5, scope: !262, file: !3, line: 1260, type: !333)
!755 = !DILocalVariable(name: "c", scope: !262, file: !3, line: 1271, type: !125)
!756 = !DILocalVariable(name: "buf", scope: !757, file: !3, line: 1331, type: !760)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 1328, column: 2)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 1324, column: 11)
!759 = distinct !DILexicalBlock(scope: !262, file: !3, line: 1275, column: 5)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 256, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 32)
!763 = !DILabel(scope: !759, name: "unknown", file: !3, line: 1323)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 64, elements: !765)
!765 = !{!766}
!766 = !DISubrange(count: 8)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(name: "masks", scope: !769, file: !3, line: 232, type: !244, isLocal: true, isDefinition: true)
!769 = distinct !DISubprogram(name: "one_cppchar_to_utf8", scope: !3, file: !3, line: 230, type: !770, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!770 = !DISubroutineType(types: !771)
!771 = !{!128, !219, !772, !229}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!773 = !{!774, !775, !776, !777, !778, !780, !781}
!774 = !DILocalVariable(name: "c", arg: 1, scope: !769, file: !3, line: 230, type: !219)
!775 = !DILocalVariable(name: "outbufp", arg: 2, scope: !769, file: !3, line: 230, type: !772)
!776 = !DILocalVariable(name: "outbytesleftp", arg: 3, scope: !769, file: !3, line: 230, type: !229)
!777 = !DILocalVariable(name: "nbytes", scope: !769, file: !3, line: 234, type: !133)
!778 = !DILocalVariable(name: "buf", scope: !769, file: !3, line: 235, type: !779)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 48, elements: !245)
!780 = !DILocalVariable(name: "p", scope: !769, file: !3, line: 235, type: !124)
!781 = !DILocalVariable(name: "outbuf", scope: !769, file: !3, line: 236, type: !124)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "limits", scope: !769, file: !3, line: 233, type: !244, isLocal: true, isDefinition: true)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 1536, elements: !765)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conversion", file: !3, line: 617, size: 192, elements: !787)
!787 = !{!788, !789, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !786, file: !3, line: 619, baseType: !316, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !786, file: !3, line: 620, baseType: !336, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "fake_cd", scope: !786, file: !3, line: 621, baseType: !131, size: 64, offset: 128)
!791 = !{i32 2, !"Dwarf Version", i32 4}
!792 = !{i32 2, !"Debug Info Version", i32 3}
!793 = !{i32 1, !"wchar_size", i32 4}
!794 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!795 = distinct !DISubprogram(name: "tolower", scope: !796, file: !796, line: 207, type: !797, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !799)
!796 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!797 = !DISubroutineType(types: !798)
!798 = !{!128, !128}
!799 = !{!800}
!800 = !DILocalVariable(name: "__c", arg: 1, scope: !795, file: !796, line: 207, type: !128)
!801 = !DILocation(line: 0, scope: !795)
!802 = !DILocation(line: 209, column: 22, scope: !795)
!803 = !DILocation(line: 209, column: 39, scope: !795)
!804 = !DILocation(line: 209, column: 38, scope: !795)
!805 = !DILocation(line: 209, column: 37, scope: !795)
!806 = !DILocation(line: 209, column: 10, scope: !795)
!807 = !DILocation(line: 209, column: 3, scope: !795)
!808 = distinct !DISubprogram(name: "toupper", scope: !796, file: !796, line: 213, type: !797, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !809)
!809 = !{!810}
!810 = !DILocalVariable(name: "__c", arg: 1, scope: !808, file: !796, line: 213, type: !128)
!811 = !DILocation(line: 0, scope: !808)
!812 = !DILocation(line: 215, column: 22, scope: !808)
!813 = !DILocation(line: 215, column: 39, scope: !808)
!814 = !DILocation(line: 215, column: 38, scope: !808)
!815 = !DILocation(line: 215, column: 37, scope: !808)
!816 = !DILocation(line: 215, column: 10, scope: !808)
!817 = !DILocation(line: 215, column: 3, scope: !808)
!818 = distinct !DISubprogram(name: "cpp_init_iconv", scope: !3, file: !3, line: 705, type: !608, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !819)
!819 = !{!820, !821, !822, !823, !824}
!820 = !DILocalVariable(name: "pfile", arg: 1, scope: !818, file: !3, line: 705, type: !265)
!821 = !DILocalVariable(name: "ncset", scope: !818, file: !3, line: 707, type: !316)
!822 = !DILocalVariable(name: "wcset", scope: !818, file: !3, line: 708, type: !316)
!823 = !DILocalVariable(name: "default_wcset", scope: !818, file: !3, line: 709, type: !316)
!824 = !DILocalVariable(name: "be", scope: !818, file: !3, line: 711, type: !127)
!825 = !DILocation(line: 0, scope: !818)
!826 = !DILocation(line: 707, column: 23, scope: !818)
!827 = !DILocation(line: 708, column: 23, scope: !818)
!828 = !DILocation(line: 711, column: 13, scope: !818)
!829 = !DILocation(line: 713, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !818, file: !3, line: 713, column: 7)
!831 = !DILocation(line: 713, column: 43, scope: !830)
!832 = !DILocation(line: 713, column: 7, scope: !818)
!833 = !DILocation(line: 714, column: 21, scope: !830)
!834 = !DILocation(line: 714, column: 5, scope: !830)
!835 = !DILocation(line: 715, column: 48, scope: !836)
!836 = distinct !DILexicalBlock(scope: !830, file: !3, line: 715, column: 12)
!837 = !DILocation(line: 715, column: 12, scope: !830)
!838 = !DILocation(line: 716, column: 21, scope: !836)
!839 = !DILocation(line: 716, column: 5, scope: !836)
!840 = !DILocation(line: 0, scope: !830)
!841 = !DILocation(line: 722, column: 8, scope: !842)
!842 = distinct !DILexicalBlock(scope: !818, file: !3, line: 722, column: 7)
!843 = !DILocation(line: 722, column: 7, scope: !818)
!844 = !DILocation(line: 724, column: 8, scope: !845)
!845 = distinct !DILexicalBlock(scope: !818, file: !3, line: 724, column: 7)
!846 = !DILocation(line: 724, column: 7, scope: !818)
!847 = !DILocation(line: 727, column: 10, scope: !818)
!848 = !DILocation(line: 727, column: 29, scope: !818)
!849 = !DILocation(line: 728, column: 35, scope: !818)
!850 = !DILocation(line: 728, column: 27, scope: !818)
!851 = !DILocation(line: 728, column: 33, scope: !818)
!852 = !DILocation(line: 729, column: 10, scope: !818)
!853 = !DILocation(line: 729, column: 27, scope: !818)
!854 = !DILocation(line: 730, column: 33, scope: !818)
!855 = !DILocation(line: 730, column: 25, scope: !818)
!856 = !DILocation(line: 730, column: 31, scope: !818)
!857 = !DILocation(line: 731, column: 10, scope: !818)
!858 = !DILocation(line: 731, column: 29, scope: !818)
!859 = !DILocation(line: 732, column: 11, scope: !818)
!860 = !DILocation(line: 734, column: 27, scope: !818)
!861 = !DILocation(line: 734, column: 33, scope: !818)
!862 = !DILocation(line: 735, column: 10, scope: !818)
!863 = !DILocation(line: 735, column: 29, scope: !818)
!864 = !DILocation(line: 736, column: 11, scope: !818)
!865 = !DILocation(line: 738, column: 27, scope: !818)
!866 = !DILocation(line: 738, column: 33, scope: !818)
!867 = !DILocation(line: 739, column: 10, scope: !818)
!868 = !DILocation(line: 739, column: 27, scope: !818)
!869 = !DILocation(line: 740, column: 33, scope: !818)
!870 = !DILocation(line: 740, column: 25, scope: !818)
!871 = !DILocation(line: 740, column: 31, scope: !818)
!872 = !DILocation(line: 741, column: 1, scope: !818)
!873 = distinct !DISubprogram(name: "init_iconv_desc", scope: !3, file: !3, line: 640, type: !874, scopeLine: 641, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !876)
!874 = !DISubroutineType(types: !875)
!875 = !{!333, !265, !316, !316}
!876 = !{!877, !878, !879, !880, !881, !882}
!877 = !DILocalVariable(name: "pfile", arg: 1, scope: !873, file: !3, line: 640, type: !265)
!878 = !DILocalVariable(name: "to", arg: 2, scope: !873, file: !3, line: 640, type: !316)
!879 = !DILocalVariable(name: "from", arg: 3, scope: !873, file: !3, line: 640, type: !316)
!880 = !DILocalVariable(name: "ret", scope: !873, file: !3, line: 642, type: !333)
!881 = !DILocalVariable(name: "pair", scope: !873, file: !3, line: 643, type: !217)
!882 = !DILocalVariable(name: "i", scope: !873, file: !3, line: 644, type: !133)
!883 = !DILocation(line: 0, scope: !873)
!884 = !DILocation(line: 642, column: 25, scope: !873)
!885 = !DILocation(line: 646, column: 8, scope: !886)
!886 = distinct !DILexicalBlock(scope: !873, file: !3, line: 646, column: 7)
!887 = !DILocation(line: 646, column: 7, scope: !873)
!888 = !DILocation(line: 648, column: 11, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !3, line: 647, column: 5)
!890 = !DILocation(line: 648, column: 16, scope: !889)
!891 = !DILocation(line: 649, column: 11, scope: !889)
!892 = !DILocation(line: 649, column: 14, scope: !889)
!893 = !DILocation(line: 650, column: 11, scope: !889)
!894 = !DILocation(line: 650, column: 17, scope: !889)
!895 = !DILocation(line: 651, column: 7, scope: !889)
!896 = !DILocation(line: 654, column: 19, scope: !873)
!897 = !DILocation(line: 656, column: 3, scope: !873)
!898 = !DILocation(line: 657, column: 3, scope: !873)
!899 = !DILocation(line: 658, column: 3, scope: !873)
!900 = !DILocation(line: 659, column: 8, scope: !901)
!901 = distinct !DILexicalBlock(scope: !873, file: !3, line: 659, column: 3)
!902 = !DILocation(line: 0, scope: !901)
!903 = !DILocation(line: 659, column: 17, scope: !904)
!904 = distinct !DILexicalBlock(scope: !901, file: !3, line: 659, column: 3)
!905 = !DILocation(line: 659, column: 3, scope: !901)
!906 = !DILocation(line: 660, column: 46, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !3, line: 660, column: 9)
!908 = !DILocation(line: 660, column: 10, scope: !907)
!909 = !DILocation(line: 660, column: 9, scope: !904)
!910 = !DILocation(line: 662, column: 31, scope: !911)
!911 = distinct !DILexicalBlock(scope: !907, file: !3, line: 661, column: 7)
!912 = !DILocation(line: 662, column: 11, scope: !911)
!913 = !DILocation(line: 663, column: 29, scope: !911)
!914 = !DILocation(line: 663, column: 6, scope: !911)
!915 = !DILocation(line: 663, column: 9, scope: !911)
!916 = !DILocation(line: 664, column: 6, scope: !911)
!917 = !DILocation(line: 664, column: 12, scope: !911)
!918 = !DILocation(line: 665, column: 2, scope: !911)
!919 = !DILocation(line: 659, column: 49, scope: !904)
!920 = !DILocation(line: 659, column: 3, scope: !904)
!921 = distinct !{!921, !905, !922}
!922 = !DILocation(line: 666, column: 7, scope: !901)
!923 = !DILocation(line: 671, column: 11, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 670, column: 5)
!925 = distinct !DILexicalBlock(scope: !873, file: !3, line: 669, column: 7)
!926 = !DILocation(line: 671, column: 16, scope: !924)
!927 = !DILocation(line: 672, column: 16, scope: !924)
!928 = !DILocation(line: 672, column: 11, scope: !924)
!929 = !DILocation(line: 672, column: 14, scope: !924)
!930 = !DILocation(line: 673, column: 11, scope: !924)
!931 = !DILocation(line: 673, column: 17, scope: !924)
!932 = !DILocation(line: 677, column: 8, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !3, line: 676, column: 2)
!934 = distinct !DILexicalBlock(scope: !924, file: !3, line: 675, column: 11)
!935 = !DILocation(line: 678, column: 6, scope: !936)
!936 = distinct !DILexicalBlock(scope: !933, file: !3, line: 677, column: 8)
!937 = !DILocation(line: 684, column: 13, scope: !933)
!938 = !DILocation(line: 685, column: 2, scope: !933)
!939 = !DILocation(line: 697, column: 1, scope: !873)
!940 = distinct !DISubprogram(name: "_cpp_destroy_iconv", scope: !3, file: !3, line: 745, type: !608, scopeLine: 746, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !941)
!941 = !{!942}
!942 = !DILocalVariable(name: "pfile", arg: 1, scope: !940, file: !3, line: 745, type: !265)
!943 = !DILocation(line: 0, scope: !940)
!944 = !DILocation(line: 760, column: 1, scope: !940)
!945 = distinct !DISubprogram(name: "convert_using_iconv", scope: !3, file: !3, line: 562, type: !946, scopeLine: 564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !948)
!946 = !DISubroutineType(types: !947)
!947 = !{!127, !131, !227, !133, !340}
!948 = !{!949, !950, !951, !952, !953, !954, !955, !956}
!949 = !DILocalVariable(name: "cd", arg: 1, scope: !945, file: !3, line: 562, type: !131)
!950 = !DILocalVariable(name: "from", arg: 2, scope: !945, file: !3, line: 562, type: !227)
!951 = !DILocalVariable(name: "flen", arg: 3, scope: !945, file: !3, line: 562, type: !133)
!952 = !DILocalVariable(name: "to", arg: 4, scope: !945, file: !3, line: 563, type: !340)
!953 = !DILocalVariable(name: "inbuf", scope: !945, file: !3, line: 565, type: !217)
!954 = !DILocalVariable(name: "outbuf", scope: !945, file: !3, line: 566, type: !217)
!955 = !DILocalVariable(name: "inbytesleft", scope: !945, file: !3, line: 567, type: !133)
!956 = !DILocalVariable(name: "outbytesleft", scope: !945, file: !3, line: 567, type: !133)
!957 = !DILocation(line: 0, scope: !945)
!958 = !DILocation(line: 570, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !945, file: !3, line: 570, column: 7)
!960 = !DILocation(line: 606, column: 1, scope: !945)
!961 = distinct !DISubprogram(name: "cpp_host_to_exec_charset", scope: !3, file: !3, line: 775, type: !962, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !964)
!962 = !DISubroutineType(types: !963)
!963 = !{!219, !265, !219}
!964 = !{!965, !966, !967, !969}
!965 = !DILocalVariable(name: "pfile", arg: 1, scope: !961, file: !3, line: 775, type: !265)
!966 = !DILocalVariable(name: "c", arg: 2, scope: !961, file: !3, line: 775, type: !219)
!967 = !DILocalVariable(name: "sbuf", scope: !961, file: !3, line: 777, type: !968)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 8, elements: !213)
!969 = !DILocalVariable(name: "tbuf", scope: !961, file: !3, line: 778, type: !341)
!970 = !DILocation(line: 0, scope: !961)
!971 = !DILocation(line: 777, column: 3, scope: !961)
!972 = !DILocation(line: 777, column: 9, scope: !961)
!973 = !DILocation(line: 778, column: 3, scope: !961)
!974 = !DILocation(line: 783, column: 9, scope: !975)
!975 = distinct !DILexicalBlock(scope: !961, file: !3, line: 783, column: 7)
!976 = !DILocation(line: 783, column: 7, scope: !961)
!977 = !DILocation(line: 787, column: 4, scope: !978)
!978 = distinct !DILexicalBlock(scope: !975, file: !3, line: 784, column: 5)
!979 = !DILocation(line: 785, column: 7, scope: !978)
!980 = !DILocation(line: 788, column: 7, scope: !978)
!981 = !DILocation(line: 794, column: 13, scope: !961)
!982 = !DILocation(line: 794, column: 11, scope: !961)
!983 = !DILocation(line: 797, column: 8, scope: !961)
!984 = !DILocation(line: 797, column: 14, scope: !961)
!985 = !DILocation(line: 798, column: 15, scope: !961)
!986 = !DILocation(line: 798, column: 8, scope: !961)
!987 = !DILocation(line: 798, column: 13, scope: !961)
!988 = !DILocation(line: 799, column: 8, scope: !961)
!989 = !DILocation(line: 799, column: 12, scope: !961)
!990 = !DILocation(line: 801, column: 8, scope: !991)
!991 = distinct !DILexicalBlock(scope: !961, file: !3, line: 801, column: 7)
!992 = !DILocation(line: 801, column: 7, scope: !961)
!993 = !DILocation(line: 803, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !3, line: 802, column: 5)
!995 = !DILocation(line: 804, column: 7, scope: !994)
!996 = !DILocation(line: 806, column: 12, scope: !997)
!997 = distinct !DILexicalBlock(scope: !961, file: !3, line: 806, column: 7)
!998 = !DILocation(line: 806, column: 16, scope: !997)
!999 = !DILocation(line: 806, column: 7, scope: !961)
!1000 = !DILocation(line: 810, column: 4, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !997, file: !3, line: 807, column: 5)
!1002 = !DILocation(line: 808, column: 7, scope: !1001)
!1003 = !DILocation(line: 811, column: 7, scope: !1001)
!1004 = !DILocation(line: 813, column: 12, scope: !961)
!1005 = !DILocation(line: 813, column: 7, scope: !961)
!1006 = !DILocation(line: 814, column: 3, scope: !961)
!1007 = !DILocation(line: 815, column: 3, scope: !961)
!1008 = !DILocation(line: 816, column: 1, scope: !961)
!1009 = distinct !DISubprogram(name: "_cpp_valid_ucn", scope: !3, file: !3, line: 988, type: !1010, scopeLine: 991, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1018)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!219, !265, !226, !227, !128, !1012}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "normalize_state", file: !268, line: 641, size: 96, elements: !1014)
!1014 = !{!1015, !1016, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1013, file: !268, line: 644, baseType: !219, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "prev_class", scope: !1013, file: !268, line: 646, baseType: !127, size: 8, offset: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1013, file: !268, line: 648, baseType: !31, size: 32, offset: 64)
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029}
!1019 = !DILocalVariable(name: "pfile", arg: 1, scope: !1009, file: !3, line: 988, type: !265)
!1020 = !DILocalVariable(name: "pstr", arg: 2, scope: !1009, file: !3, line: 988, type: !226)
!1021 = !DILocalVariable(name: "limit", arg: 3, scope: !1009, file: !3, line: 989, type: !227)
!1022 = !DILocalVariable(name: "identifier_pos", arg: 4, scope: !1009, file: !3, line: 989, type: !128)
!1023 = !DILocalVariable(name: "nst", arg: 5, scope: !1009, file: !3, line: 990, type: !1012)
!1024 = !DILocalVariable(name: "result", scope: !1009, file: !3, line: 992, type: !219)
!1025 = !DILocalVariable(name: "c", scope: !1009, file: !3, line: 992, type: !219)
!1026 = !DILocalVariable(name: "length", scope: !1009, file: !3, line: 993, type: !7)
!1027 = !DILocalVariable(name: "str", scope: !1009, file: !3, line: 994, type: !227)
!1028 = !DILocalVariable(name: "base", scope: !1009, file: !3, line: 995, type: !227)
!1029 = !DILocalVariable(name: "validity", scope: !1030, file: !3, line: 1067, type: !128)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 1066, column: 5)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 1065, column: 12)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 1055, column: 12)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 1044, column: 12)
!1034 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 1033, column: 7)
!1035 = !DILocation(line: 0, scope: !1009)
!1036 = !DILocation(line: 994, column: 22, scope: !1009)
!1037 = !DILocation(line: 995, column: 27, scope: !1009)
!1038 = !DILocation(line: 997, column: 8, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 997, column: 7)
!1040 = !DILocation(line: 997, column: 38, scope: !1039)
!1041 = !DILocation(line: 997, column: 42, scope: !1039)
!1042 = !DILocation(line: 997, column: 7, scope: !1009)
!1043 = !DILocation(line: 998, column: 5, scope: !1039)
!1044 = !DILocation(line: 1000, column: 12, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 1000, column: 12)
!1046 = !DILocation(line: 1000, column: 55, scope: !1045)
!1047 = !DILocation(line: 1000, column: 37, scope: !1045)
!1048 = !DILocation(line: 1003, column: 15, scope: !1045)
!1049 = !DILocation(line: 1003, column: 9, scope: !1045)
!1050 = !DILocation(line: 1001, column: 5, scope: !1045)
!1051 = !DILocation(line: 1005, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 1005, column: 7)
!1053 = !DILocation(line: 1005, column: 15, scope: !1052)
!1054 = !DILocation(line: 1005, column: 7, scope: !1009)
!1055 = !DILocation(line: 1007, column: 20, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 1007, column: 12)
!1057 = !DILocation(line: 1007, column: 12, scope: !1052)
!1058 = !DILocation(line: 1011, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 1010, column: 5)
!1060 = !DILocation(line: 0, scope: !1052)
!1061 = !DILocation(line: 1016, column: 3, scope: !1009)
!1062 = !DILocation(line: 1018, column: 11, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 1017, column: 5)
!1064 = !DILocation(line: 1019, column: 12, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 1019, column: 11)
!1066 = !DILocation(line: 1019, column: 11, scope: !1063)
!1067 = !DILocation(line: 1021, column: 10, scope: !1063)
!1068 = !DILocation(line: 1022, column: 24, scope: !1063)
!1069 = !DILocation(line: 1022, column: 32, scope: !1063)
!1070 = !DILocation(line: 1022, column: 30, scope: !1063)
!1071 = !DILocation(line: 1024, column: 10, scope: !1009)
!1072 = !DILocation(line: 1024, column: 19, scope: !1009)
!1073 = !DILocation(line: 1023, column: 5, scope: !1063)
!1074 = distinct !{!1074, !1061, !1075}
!1075 = !DILocation(line: 1024, column: 33, scope: !1009)
!1076 = !DILocation(line: 1029, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 1029, column: 7)
!1078 = !DILocation(line: 1029, column: 17, scope: !1077)
!1079 = !DILocation(line: 1029, column: 14, scope: !1077)
!1080 = !DILocation(line: 1032, column: 9, scope: !1009)
!1081 = !DILocation(line: 1033, column: 7, scope: !1034)
!1082 = !DILocation(line: 1033, column: 7, scope: !1009)
!1083 = !DILocation(line: 1037, column: 15, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 1034, column: 5)
!1085 = !DILocation(line: 1037, column: 4, scope: !1084)
!1086 = !DILocation(line: 1035, column: 7, scope: !1084)
!1087 = !DILocation(line: 1039, column: 5, scope: !1084)
!1088 = !DILocation(line: 1044, column: 20, scope: !1033)
!1089 = !DILocation(line: 1045, column: 6, scope: !1033)
!1090 = !DILocation(line: 1045, column: 10, scope: !1033)
!1091 = !DILocation(line: 1046, column: 6, scope: !1033)
!1092 = !DILocation(line: 1047, column: 16, scope: !1033)
!1093 = !DILocation(line: 1048, column: 5, scope: !1033)
!1094 = !DILocation(line: 1048, column: 26, scope: !1033)
!1095 = !DILocation(line: 1052, column: 15, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 1049, column: 5)
!1097 = !DILocation(line: 1052, column: 4, scope: !1096)
!1098 = !DILocation(line: 1050, column: 7, scope: !1096)
!1099 = !DILocation(line: 1054, column: 5, scope: !1096)
!1100 = !DILocation(line: 1055, column: 37, scope: !1032)
!1101 = !DILocation(line: 1055, column: 27, scope: !1032)
!1102 = !DILocation(line: 1056, column: 8, scope: !1032)
!1103 = !DILocation(line: 1055, column: 12, scope: !1033)
!1104 = !DILocation(line: 1058, column: 11, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 1058, column: 11)
!1106 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 1057, column: 5)
!1107 = !DILocation(line: 1058, column: 44, scope: !1105)
!1108 = !DILocation(line: 1058, column: 61, scope: !1105)
!1109 = !DILocation(line: 1058, column: 48, scope: !1105)
!1110 = !DILocation(line: 1058, column: 11, scope: !1106)
!1111 = !DILocation(line: 1060, column: 37, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 1059, column: 2)
!1113 = !DILocation(line: 1061, column: 4, scope: !1112)
!1114 = !DILocation(line: 1062, column: 2, scope: !1112)
!1115 = !DILocation(line: 1063, column: 7, scope: !1106)
!1116 = !DILocation(line: 1064, column: 5, scope: !1106)
!1117 = !DILocation(line: 1065, column: 12, scope: !1031)
!1118 = !DILocation(line: 1065, column: 12, scope: !1032)
!1119 = !DILocation(line: 1067, column: 22, scope: !1030)
!1120 = !DILocation(line: 0, scope: !1030)
!1121 = !DILocation(line: 1069, column: 11, scope: !1030)
!1122 = !DILocation(line: 1072, column: 17, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 1069, column: 11)
!1124 = !DILocation(line: 1072, column: 6, scope: !1123)
!1125 = !DILocation(line: 1070, column: 2, scope: !1123)
!1126 = !DILocation(line: 1073, column: 48, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 1073, column: 16)
!1128 = !DILocation(line: 1073, column: 16, scope: !1123)
!1129 = !DILocation(line: 1076, column: 17, scope: !1127)
!1130 = !DILocation(line: 1076, column: 6, scope: !1127)
!1131 = !DILocation(line: 1074, column: 2, scope: !1127)
!1132 = !DILocation(line: 0, scope: !1034)
!1133 = !DILocation(line: 1079, column: 14, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 1079, column: 7)
!1135 = !DILocation(line: 1079, column: 7, scope: !1009)
!1136 = !DILocation(line: 1082, column: 3, scope: !1009)
!1137 = !DILocation(line: 1083, column: 1, scope: !1009)
!1138 = distinct !DISubprogram(name: "ucn_valid_in_identifier", scope: !3, file: !3, line: 869, type: !1139, scopeLine: 871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1141)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!128, !265, !219, !1012}
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148, !1152}
!1142 = !DILocalVariable(name: "pfile", arg: 1, scope: !1138, file: !3, line: 869, type: !265)
!1143 = !DILocalVariable(name: "c", arg: 2, scope: !1138, file: !3, line: 869, type: !219)
!1144 = !DILocalVariable(name: "nst", arg: 3, scope: !1138, file: !3, line: 870, type: !1012)
!1145 = !DILocalVariable(name: "mn", scope: !1138, file: !3, line: 872, type: !128)
!1146 = !DILocalVariable(name: "mx", scope: !1138, file: !3, line: 872, type: !128)
!1147 = !DILocalVariable(name: "md", scope: !1138, file: !3, line: 872, type: !128)
!1148 = !DILocalVariable(name: "safe", scope: !1149, file: !3, line: 905, type: !127)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 904, column: 5)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 903, column: 12)
!1151 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 901, column: 7)
!1152 = !DILocalVariable(name: "p", scope: !1149, file: !3, line: 906, type: !219)
!1153 = !DILocation(line: 0, scope: !1138)
!1154 = !DILocation(line: 874, column: 9, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 874, column: 7)
!1156 = !DILocation(line: 874, column: 7, scope: !1138)
!1157 = !DILocation(line: 879, column: 3, scope: !1138)
!1158 = !DILocation(line: 877, column: 6, scope: !1138)
!1159 = !DILocation(line: 879, column: 13, scope: !1138)
!1160 = !DILocation(line: 881, column: 16, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 880, column: 5)
!1162 = !DILocation(line: 881, column: 22, scope: !1161)
!1163 = !DILocation(line: 882, column: 16, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 882, column: 11)
!1165 = !DILocation(line: 882, column: 30, scope: !1164)
!1166 = !DILocation(line: 882, column: 13, scope: !1164)
!1167 = !DILocation(line: 882, column: 11, scope: !1161)
!1168 = distinct !{!1168, !1157, !1169}
!1169 = !DILocation(line: 886, column: 5, scope: !1138)
!1170 = !DILocation(line: 891, column: 10, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 891, column: 7)
!1172 = !DILocation(line: 891, column: 24, scope: !1171)
!1173 = !DILocation(line: 891, column: 30, scope: !1171)
!1174 = !DILocation(line: 891, column: 7, scope: !1138)
!1175 = !DILocation(line: 894, column: 7, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 894, column: 7)
!1177 = !DILocation(line: 895, column: 7, scope: !1176)
!1178 = !DILocation(line: 895, column: 12, scope: !1176)
!1179 = !DILocation(line: 895, column: 36, scope: !1176)
!1180 = !DILocation(line: 895, column: 61, scope: !1176)
!1181 = !DILocation(line: 896, column: 4, scope: !1176)
!1182 = !DILocation(line: 896, column: 8, scope: !1176)
!1183 = !DILocation(line: 897, column: 8, scope: !1176)
!1184 = !DILocation(line: 897, column: 33, scope: !1176)
!1185 = !DILocation(line: 894, column: 7, scope: !1138)
!1186 = !DILocation(line: 901, column: 21, scope: !1151)
!1187 = !DILocation(line: 901, column: 29, scope: !1151)
!1188 = !DILocation(line: 901, column: 34, scope: !1151)
!1189 = !DILocation(line: 901, column: 66, scope: !1151)
!1190 = !DILocation(line: 901, column: 59, scope: !1151)
!1191 = !DILocation(line: 901, column: 7, scope: !1138)
!1192 = !DILocation(line: 902, column: 10, scope: !1151)
!1193 = !DILocation(line: 902, column: 16, scope: !1151)
!1194 = !DILocation(line: 902, column: 5, scope: !1151)
!1195 = !DILocation(line: 903, column: 32, scope: !1150)
!1196 = !DILocation(line: 903, column: 12, scope: !1151)
!1197 = !DILocation(line: 906, column: 26, scope: !1149)
!1198 = !DILocation(line: 0, scope: !1149)
!1199 = !DILocation(line: 909, column: 11, scope: !1149)
!1200 = !DILocation(line: 910, column: 11, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 909, column: 11)
!1202 = !DILocation(line: 910, column: 9, scope: !1201)
!1203 = !DILocation(line: 910, column: 2, scope: !1201)
!1204 = !DILocation(line: 912, column: 11, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 911, column: 16)
!1206 = !DILocation(line: 912, column: 9, scope: !1205)
!1207 = !DILocation(line: 912, column: 2, scope: !1205)
!1208 = !DILocation(line: 914, column: 21, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 913, column: 16)
!1210 = !DILocation(line: 914, column: 9, scope: !1209)
!1211 = !DILocation(line: 914, column: 2, scope: !1209)
!1212 = !DILocation(line: 916, column: 11, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 915, column: 16)
!1214 = !DILocation(line: 916, column: 9, scope: !1213)
!1215 = !DILocation(line: 916, column: 2, scope: !1213)
!1216 = !DILocation(line: 918, column: 21, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 917, column: 16)
!1218 = !DILocation(line: 918, column: 9, scope: !1217)
!1219 = !DILocation(line: 918, column: 2, scope: !1217)
!1220 = !DILocation(line: 926, column: 28, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 926, column: 16)
!1222 = !DILocation(line: 927, column: 20, scope: !1221)
!1223 = !DILocation(line: 927, column: 9, scope: !1221)
!1224 = !DILocation(line: 927, column: 2, scope: !1221)
!1225 = !DILocation(line: 928, column: 28, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 928, column: 16)
!1227 = !DILocation(line: 929, column: 21, scope: !1226)
!1228 = !DILocation(line: 929, column: 51, scope: !1226)
!1229 = !DILocation(line: 929, column: 56, scope: !1226)
!1230 = !DILocation(line: 929, column: 35, scope: !1226)
!1231 = !DILocation(line: 929, column: 2, scope: !1226)
!1232 = !DILocation(line: 933, column: 4, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 931, column: 2)
!1234 = !DILocation(line: 0, scope: !1201)
!1235 = !DILocation(line: 936, column: 12, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 936, column: 11)
!1237 = !DILocation(line: 936, column: 22, scope: !1236)
!1238 = !DILocation(line: 936, column: 17, scope: !1236)
!1239 = !DILocation(line: 937, column: 7, scope: !1236)
!1240 = !DILocation(line: 937, column: 13, scope: !1236)
!1241 = !DILocation(line: 937, column: 2, scope: !1236)
!1242 = !DILocation(line: 938, column: 16, scope: !1236)
!1243 = !DILocation(line: 939, column: 15, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 938, column: 16)
!1245 = !DILocation(line: 939, column: 13, scope: !1244)
!1246 = !DILocation(line: 939, column: 2, scope: !1244)
!1247 = !DILocation(line: 941, column: 32, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 941, column: 12)
!1249 = !DILocation(line: 941, column: 12, scope: !1150)
!1250 = !DILocation(line: 943, column: 32, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 943, column: 12)
!1252 = !DILocation(line: 943, column: 12, scope: !1248)
!1253 = !DILocation(line: 944, column: 18, scope: !1251)
!1254 = !DILocation(line: 944, column: 16, scope: !1251)
!1255 = !DILocation(line: 944, column: 5, scope: !1251)
!1256 = !DILocation(line: 945, column: 32, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 945, column: 12)
!1258 = !DILocation(line: 0, scope: !1257)
!1259 = !DILocation(line: 945, column: 12, scope: !1251)
!1260 = !DILocation(line: 946, column: 18, scope: !1257)
!1261 = !DILocation(line: 946, column: 16, scope: !1257)
!1262 = !DILocation(line: 946, column: 5, scope: !1257)
!1263 = !DILocation(line: 948, column: 16, scope: !1257)
!1264 = !DILocation(line: 949, column: 8, scope: !1138)
!1265 = !DILocation(line: 949, column: 17, scope: !1138)
!1266 = !DILocation(line: 950, column: 8, scope: !1138)
!1267 = !DILocation(line: 950, column: 19, scope: !1138)
!1268 = !DILocation(line: 953, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 953, column: 7)
!1270 = !DILocation(line: 953, column: 31, scope: !1269)
!1271 = !DILocation(line: 953, column: 55, scope: !1269)
!1272 = !DILocation(line: 953, column: 7, scope: !1138)
!1273 = !DILocation(line: 956, column: 3, scope: !1138)
!1274 = !DILocation(line: 957, column: 1, scope: !1138)
!1275 = distinct !DISubprogram(name: "cpp_interpret_string", scope: !3, file: !3, line: 1376, type: !1276, scopeLine: 1378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1279)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!127, !265, !564, !133, !1278, !42}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1297}
!1280 = !DILocalVariable(name: "pfile", arg: 1, scope: !1275, file: !3, line: 1376, type: !265)
!1281 = !DILocalVariable(name: "from", arg: 2, scope: !1275, file: !3, line: 1376, type: !564)
!1282 = !DILocalVariable(name: "count", arg: 3, scope: !1275, file: !3, line: 1376, type: !133)
!1283 = !DILocalVariable(name: "to", arg: 4, scope: !1275, file: !3, line: 1377, type: !1278)
!1284 = !DILocalVariable(name: "type", arg: 5, scope: !1275, file: !3, line: 1377, type: !42)
!1285 = !DILocalVariable(name: "tbuf", scope: !1275, file: !3, line: 1379, type: !341)
!1286 = !DILocalVariable(name: "p", scope: !1275, file: !3, line: 1380, type: !227)
!1287 = !DILocalVariable(name: "base", scope: !1275, file: !3, line: 1380, type: !227)
!1288 = !DILocalVariable(name: "limit", scope: !1275, file: !3, line: 1380, type: !227)
!1289 = !DILocalVariable(name: "i", scope: !1275, file: !3, line: 1381, type: !133)
!1290 = !DILocalVariable(name: "cvt", scope: !1275, file: !3, line: 1382, type: !333)
!1291 = !DILocalVariable(name: "prefix", scope: !1292, file: !3, line: 1399, type: !227)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 1398, column: 2)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1397, column: 11)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 1389, column: 5)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 1388, column: 3)
!1296 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1388, column: 3)
!1297 = !DILabel(scope: !1275, name: "fail", file: !3, line: 1448)
!1298 = !DILocation(line: 0, scope: !1275)
!1299 = !DILocation(line: 1379, column: 3, scope: !1275)
!1300 = !DILocation(line: 1382, column: 3, scope: !1275)
!1301 = !DILocation(line: 1382, column: 31, scope: !1275)
!1302 = !DILocation(line: 1384, column: 16, scope: !1275)
!1303 = !DILocation(line: 1384, column: 8, scope: !1275)
!1304 = !DILocation(line: 1384, column: 14, scope: !1275)
!1305 = !DILocation(line: 1385, column: 15, scope: !1275)
!1306 = !DILocation(line: 1385, column: 8, scope: !1275)
!1307 = !DILocation(line: 1385, column: 13, scope: !1275)
!1308 = !DILocation(line: 1386, column: 8, scope: !1275)
!1309 = !DILocation(line: 1386, column: 12, scope: !1275)
!1310 = !DILocation(line: 0, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 1431, column: 12)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1428, column: 6)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 1427, column: 8)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 1423, column: 2)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1422, column: 7)
!1316 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1422, column: 7)
!1317 = !DILocation(line: 1388, column: 8, scope: !1296)
!1318 = !DILocation(line: 0, scope: !1296)
!1319 = !DILocation(line: 1388, column: 17, scope: !1295)
!1320 = !DILocation(line: 1388, column: 3, scope: !1296)
!1321 = !DILocation(line: 1390, column: 19, scope: !1294)
!1322 = !DILocation(line: 1391, column: 11, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1391, column: 11)
!1324 = !DILocation(line: 1391, column: 14, scope: !1323)
!1325 = !DILocation(line: 1391, column: 11, scope: !1294)
!1326 = !DILocation(line: 1393, column: 9, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 1393, column: 8)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 1392, column: 2)
!1329 = !DILocation(line: 1393, column: 8, scope: !1327)
!1330 = !DILocation(line: 1393, column: 13, scope: !1327)
!1331 = !DILocation(line: 1394, column: 7, scope: !1327)
!1332 = !DILocation(line: 1393, column: 8, scope: !1328)
!1333 = !DILocation(line: 1395, column: 2, scope: !1328)
!1334 = !DILocation(line: 1396, column: 19, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 1396, column: 16)
!1336 = !DILocation(line: 1396, column: 26, scope: !1335)
!1337 = !DILocation(line: 1396, column: 32, scope: !1335)
!1338 = !DILocation(line: 1396, column: 16, scope: !1323)
!1339 = !DILocation(line: 1396, column: 41, scope: !1335)
!1340 = !DILocation(line: 1396, column: 40, scope: !1335)
!1341 = !DILocation(line: 0, scope: !1323)
!1342 = !DILocation(line: 1397, column: 11, scope: !1293)
!1343 = !DILocation(line: 1397, column: 14, scope: !1293)
!1344 = !DILocation(line: 1397, column: 11, scope: !1294)
!1345 = !DILocation(line: 1402, column: 6, scope: !1292)
!1346 = !DILocation(line: 0, scope: !1292)
!1347 = !DILocation(line: 1404, column: 4, scope: !1292)
!1348 = !DILocation(line: 1404, column: 11, scope: !1292)
!1349 = !DILocation(line: 1404, column: 14, scope: !1292)
!1350 = distinct !{!1350, !1347, !1351}
!1351 = !DILocation(line: 1405, column: 7, scope: !1292)
!1352 = !DILocation(line: 1407, column: 35, scope: !1292)
!1353 = !DILocation(line: 1407, column: 25, scope: !1292)
!1354 = !DILocation(line: 1408, column: 24, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 1408, column: 8)
!1356 = !DILocation(line: 1408, column: 19, scope: !1355)
!1357 = !DILocation(line: 1408, column: 34, scope: !1355)
!1358 = !DILocation(line: 1408, column: 14, scope: !1355)
!1359 = !DILocation(line: 1408, column: 8, scope: !1292)
!1360 = !DILocation(line: 1409, column: 12, scope: !1355)
!1361 = !DILocation(line: 1409, column: 6, scope: !1355)
!1362 = !DILocation(line: 1413, column: 9, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 1413, column: 8)
!1364 = !DILocation(line: 1419, column: 8, scope: !1294)
!1365 = !DILocation(line: 1420, column: 38, scope: !1294)
!1366 = !DILocation(line: 1420, column: 28, scope: !1294)
!1367 = !DILocation(line: 1420, column: 42, scope: !1294)
!1368 = !DILocation(line: 1422, column: 7, scope: !1294)
!1369 = !DILocation(line: 0, scope: !1294)
!1370 = !DILocation(line: 1425, column: 4, scope: !1314)
!1371 = !DILocation(line: 1425, column: 13, scope: !1314)
!1372 = !DILocation(line: 1425, column: 21, scope: !1314)
!1373 = !DILocation(line: 1425, column: 24, scope: !1314)
!1374 = !DILocation(line: 1425, column: 27, scope: !1314)
!1375 = !DILocation(line: 1426, column: 7, scope: !1314)
!1376 = distinct !{!1376, !1370, !1375}
!1377 = !DILocation(line: 1427, column: 10, scope: !1313)
!1378 = !DILocation(line: 1427, column: 8, scope: !1314)
!1379 = !DILocation(line: 1431, column: 13, scope: !1311)
!1380 = !DILocation(line: 1431, column: 12, scope: !1312)
!1381 = !DILocation(line: 1434, column: 10, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 1434, column: 8)
!1383 = !DILocation(line: 1434, column: 8, scope: !1314)
!1384 = !DILocation(line: 1437, column: 33, scope: !1314)
!1385 = !DILocation(line: 1437, column: 8, scope: !1314)
!1386 = !DILocation(line: 1422, column: 7, scope: !1315)
!1387 = distinct !{!1387, !1388, !1389}
!1388 = !DILocation(line: 1422, column: 7, scope: !1316)
!1389 = !DILocation(line: 1438, column: 2, scope: !1316)
!1390 = !DILocation(line: 1388, column: 27, scope: !1295)
!1391 = !DILocation(line: 1388, column: 3, scope: !1295)
!1392 = distinct !{!1392, !1320, !1393}
!1393 = !DILocation(line: 1439, column: 5, scope: !1296)
!1394 = !DILocation(line: 1442, column: 3, scope: !1275)
!1395 = !DILocation(line: 1443, column: 15, scope: !1275)
!1396 = !DILocation(line: 1443, column: 13, scope: !1275)
!1397 = !DILocation(line: 1444, column: 19, scope: !1275)
!1398 = !DILocation(line: 1444, column: 7, scope: !1275)
!1399 = !DILocation(line: 1444, column: 12, scope: !1275)
!1400 = !DILocation(line: 1445, column: 18, scope: !1275)
!1401 = !DILocation(line: 1445, column: 13, scope: !1275)
!1402 = !DILocation(line: 1445, column: 7, scope: !1275)
!1403 = !DILocation(line: 1445, column: 11, scope: !1275)
!1404 = !DILocation(line: 1446, column: 3, scope: !1275)
!1405 = !DILocation(line: 1449, column: 3, scope: !1275)
!1406 = !DILocation(line: 1448, column: 2, scope: !1275)
!1407 = !DILocation(line: 1450, column: 14, scope: !1275)
!1408 = !DILocation(line: 1450, column: 3, scope: !1275)
!1409 = !DILocation(line: 1451, column: 3, scope: !1275)
!1410 = !DILocation(line: 1452, column: 1, scope: !1275)
!1411 = distinct !DISubprogram(name: "converter_for_type", scope: !3, file: !3, line: 1349, type: !1412, scopeLine: 1350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1414)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!333, !265, !42}
!1414 = !{!1415, !1416}
!1415 = !DILocalVariable(name: "pfile", arg: 1, scope: !1411, file: !3, line: 1349, type: !265)
!1416 = !DILocalVariable(name: "type", arg: 2, scope: !1411, file: !3, line: 1349, type: !42)
!1417 = !DILocation(line: 0, scope: !1411)
!1418 = !DILocation(line: 1351, column: 3, scope: !1411)
!1419 = !DILocation(line: 1354, column: 16, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1352, column: 5)
!1421 = !DILocation(line: 1354, column: 2, scope: !1420)
!1422 = !DILocation(line: 1356, column: 16, scope: !1420)
!1423 = !DILocation(line: 1356, column: 2, scope: !1420)
!1424 = !DILocation(line: 1359, column: 16, scope: !1420)
!1425 = !DILocation(line: 1359, column: 2, scope: !1420)
!1426 = !DILocation(line: 1362, column: 16, scope: !1420)
!1427 = !DILocation(line: 1362, column: 2, scope: !1420)
!1428 = !DILocation(line: 1365, column: 16, scope: !1420)
!1429 = !DILocation(line: 1365, column: 2, scope: !1420)
!1430 = !DILocation(line: 1367, column: 1, scope: !1411)
!1431 = !DILocation(line: 0, scope: !262)
!1432 = !DILocation(line: 1260, column: 51, scope: !262)
!1433 = !DILocation(line: 1271, column: 3, scope: !262)
!1434 = !DILocation(line: 1273, column: 7, scope: !262)
!1435 = !DILocation(line: 1273, column: 5, scope: !262)
!1436 = !DILocation(line: 1274, column: 3, scope: !262)
!1437 = !DILocation(line: 1278, column: 14, scope: !759)
!1438 = !DILocation(line: 1278, column: 7, scope: !759)
!1439 = !DILocation(line: 1281, column: 14, scope: !759)
!1440 = !DILocation(line: 1281, column: 7, scope: !759)
!1441 = !DILocation(line: 1286, column: 14, scope: !759)
!1442 = !DILocation(line: 1286, column: 7, scope: !759)
!1443 = !DILocation(line: 1297, column: 11, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !759, file: !3, line: 1297, column: 11)
!1445 = !DILocation(line: 1297, column: 11, scope: !759)
!1446 = !DILocation(line: 1301, column: 17, scope: !759)
!1447 = !DILocation(line: 1301, column: 35, scope: !759)
!1448 = !DILocation(line: 1302, column: 17, scope: !759)
!1449 = !DILocation(line: 1302, column: 35, scope: !759)
!1450 = !DILocation(line: 1303, column: 17, scope: !759)
!1451 = !DILocation(line: 1303, column: 35, scope: !759)
!1452 = !DILocation(line: 1304, column: 17, scope: !759)
!1453 = !DILocation(line: 1304, column: 35, scope: !759)
!1454 = !DILocation(line: 1305, column: 17, scope: !759)
!1455 = !DILocation(line: 1305, column: 35, scope: !759)
!1456 = !DILocation(line: 1306, column: 17, scope: !759)
!1457 = !DILocation(line: 1306, column: 35, scope: !759)
!1458 = !DILocation(line: 1309, column: 11, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !759, file: !3, line: 1309, column: 11)
!1460 = !DILocation(line: 1309, column: 11, scope: !759)
!1461 = !DILocation(line: 1310, column: 2, scope: !1459)
!1462 = !DILocation(line: 1312, column: 9, scope: !759)
!1463 = !DILocation(line: 1313, column: 7, scope: !759)
!1464 = !DILocation(line: 1316, column: 11, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !759, file: !3, line: 1316, column: 11)
!1466 = !DILocation(line: 1316, column: 11, scope: !759)
!1467 = !DILocation(line: 1318, column: 50, scope: !1465)
!1468 = !DILocation(line: 1317, column: 2, scope: !1465)
!1469 = !DILocation(line: 1319, column: 9, scope: !759)
!1470 = !DILocation(line: 1320, column: 7, scope: !759)
!1471 = !DILocation(line: 1323, column: 5, scope: !759)
!1472 = !DILocation(line: 1324, column: 11, scope: !758)
!1473 = !DILocation(line: 1324, column: 11, scope: !759)
!1474 = !DILocation(line: 1326, column: 41, scope: !758)
!1475 = !DILocation(line: 1325, column: 2, scope: !758)
!1476 = !DILocation(line: 1331, column: 4, scope: !757)
!1477 = !DILocation(line: 1331, column: 9, scope: !757)
!1478 = !DILocation(line: 1332, column: 25, scope: !757)
!1479 = !DILocation(line: 1332, column: 4, scope: !757)
!1480 = !DILocation(line: 1333, column: 4, scope: !757)
!1481 = !DILocation(line: 1335, column: 2, scope: !758)
!1482 = !DILocation(line: 1339, column: 8, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !262, file: !3, line: 1339, column: 7)
!1484 = !DILocation(line: 1339, column: 7, scope: !262)
!1485 = !DILocation(line: 1340, column: 5, scope: !1483)
!1486 = !DILocation(line: 1343, column: 15, scope: !262)
!1487 = !DILocation(line: 1343, column: 3, scope: !262)
!1488 = !DILocation(line: 1344, column: 1, scope: !262)
!1489 = distinct !DISubprogram(name: "emit_numeric_escape", scope: !3, file: !3, line: 1122, type: !1490, scopeLine: 1124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1492)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !265, !219, !340, !333}
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1501, !1502, !1503, !1504, !1505, !1506}
!1493 = !DILocalVariable(name: "pfile", arg: 1, scope: !1489, file: !3, line: 1122, type: !265)
!1494 = !DILocalVariable(name: "n", arg: 2, scope: !1489, file: !3, line: 1122, type: !219)
!1495 = !DILocalVariable(name: "tbuf", arg: 3, scope: !1489, file: !3, line: 1123, type: !340)
!1496 = !DILocalVariable(name: "cvt", arg: 4, scope: !1489, file: !3, line: 1123, type: !333)
!1497 = !DILocalVariable(name: "width", scope: !1489, file: !3, line: 1125, type: !133)
!1498 = !DILocalVariable(name: "bigend", scope: !1499, file: !3, line: 1131, type: !127)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 1128, column: 5)
!1500 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 1127, column: 7)
!1501 = !DILocalVariable(name: "cwidth", scope: !1499, file: !3, line: 1132, type: !133)
!1502 = !DILocalVariable(name: "cmask", scope: !1499, file: !3, line: 1133, type: !133)
!1503 = !DILocalVariable(name: "nbwc", scope: !1499, file: !3, line: 1134, type: !133)
!1504 = !DILocalVariable(name: "i", scope: !1499, file: !3, line: 1135, type: !133)
!1505 = !DILocalVariable(name: "off", scope: !1499, file: !3, line: 1136, type: !133)
!1506 = !DILocalVariable(name: "c", scope: !1499, file: !3, line: 1137, type: !219)
!1507 = !DILocation(line: 0, scope: !1489)
!1508 = !DILocation(line: 1123, column: 56, scope: !1489)
!1509 = !DILocation(line: 1125, column: 22, scope: !1489)
!1510 = !DILocation(line: 1125, column: 18, scope: !1489)
!1511 = !DILocation(line: 1127, column: 16, scope: !1500)
!1512 = !DILocation(line: 1127, column: 13, scope: !1500)
!1513 = !DILocation(line: 1127, column: 7, scope: !1489)
!1514 = !DILocation(line: 1131, column: 21, scope: !1499)
!1515 = !DILocation(line: 0, scope: !1499)
!1516 = !DILocation(line: 1133, column: 22, scope: !1499)
!1517 = !DILocation(line: 1134, column: 27, scope: !1499)
!1518 = !DILocation(line: 1136, column: 26, scope: !1499)
!1519 = !DILocation(line: 1139, column: 21, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 1139, column: 11)
!1521 = !DILocation(line: 1139, column: 36, scope: !1520)
!1522 = !DILocation(line: 1139, column: 28, scope: !1520)
!1523 = !DILocation(line: 1139, column: 11, scope: !1499)
!1524 = !DILocation(line: 1141, column: 16, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 1140, column: 2)
!1526 = !DILocation(line: 1142, column: 17, scope: !1525)
!1527 = !DILocation(line: 1142, column: 15, scope: !1525)
!1528 = !DILocation(line: 1143, column: 2, scope: !1525)
!1529 = !DILocation(line: 0, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 1146, column: 2)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 1145, column: 7)
!1532 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 1145, column: 7)
!1533 = !DILocation(line: 1145, column: 12, scope: !1532)
!1534 = !DILocation(line: 0, scope: !1532)
!1535 = !DILocation(line: 1145, column: 21, scope: !1531)
!1536 = !DILocation(line: 1145, column: 7, scope: !1532)
!1537 = !DILocation(line: 1147, column: 8, scope: !1530)
!1538 = !DILocation(line: 1148, column: 6, scope: !1530)
!1539 = !DILocation(line: 1149, column: 52, scope: !1530)
!1540 = !DILocation(line: 1149, column: 10, scope: !1530)
!1541 = !DILocation(line: 1149, column: 19, scope: !1530)
!1542 = !DILocation(line: 1149, column: 4, scope: !1530)
!1543 = !DILocation(line: 1149, column: 50, scope: !1530)
!1544 = !DILocation(line: 1145, column: 30, scope: !1531)
!1545 = !DILocation(line: 1145, column: 7, scope: !1531)
!1546 = distinct !{!1546, !1536, !1547}
!1547 = !DILocation(line: 1150, column: 2, scope: !1532)
!1548 = !DILocation(line: 1151, column: 13, scope: !1499)
!1549 = !DILocation(line: 1149, column: 22, scope: !1530)
!1550 = !DILocation(line: 1151, column: 17, scope: !1499)
!1551 = !DILocation(line: 1152, column: 5, scope: !1499)
!1552 = !DILocation(line: 1157, column: 17, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 1157, column: 11)
!1554 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 1154, column: 5)
!1555 = !DILocation(line: 1157, column: 21, scope: !1553)
!1556 = !DILocation(line: 1157, column: 33, scope: !1553)
!1557 = !DILocation(line: 1157, column: 25, scope: !1553)
!1558 = !DILocation(line: 1157, column: 11, scope: !1554)
!1559 = !DILocation(line: 0, scope: !1554)
!1560 = !DILocation(line: 1162, column: 13, scope: !1554)
!1561 = !DILocation(line: 1159, column: 16, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 1158, column: 2)
!1563 = !DILocation(line: 1160, column: 17, scope: !1562)
!1564 = !DILocation(line: 1160, column: 15, scope: !1562)
!1565 = !DILocation(line: 1162, column: 27, scope: !1554)
!1566 = !DILocation(line: 1161, column: 2, scope: !1562)
!1567 = !DILocation(line: 1162, column: 33, scope: !1554)
!1568 = !DILocation(line: 1162, column: 7, scope: !1554)
!1569 = !DILocation(line: 1162, column: 31, scope: !1554)
!1570 = !DILocation(line: 1164, column: 1, scope: !1489)
!1571 = distinct !DISubprogram(name: "cpp_interpret_string_notranslate", scope: !3, file: !3, line: 1457, type: !1276, scopeLine: 1460, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1572)
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578, !1579}
!1573 = !DILocalVariable(name: "pfile", arg: 1, scope: !1571, file: !3, line: 1457, type: !265)
!1574 = !DILocalVariable(name: "from", arg: 2, scope: !1571, file: !3, line: 1457, type: !564)
!1575 = !DILocalVariable(name: "count", arg: 3, scope: !1571, file: !3, line: 1458, type: !133)
!1576 = !DILocalVariable(name: "to", arg: 4, scope: !1571, file: !3, line: 1458, type: !1278)
!1577 = !DILocalVariable(name: "type", arg: 5, scope: !1571, file: !3, line: 1459, type: !42)
!1578 = !DILocalVariable(name: "save_narrow_cset_desc", scope: !1571, file: !3, line: 1461, type: !333)
!1579 = !DILocalVariable(name: "retval", scope: !1571, file: !3, line: 1462, type: !127)
!1580 = !DILocation(line: 0, scope: !1571)
!1581 = !DILocation(line: 1461, column: 3, scope: !1571)
!1582 = !DILocation(line: 1461, column: 56, scope: !1571)
!1583 = !DILocation(line: 1464, column: 27, scope: !1571)
!1584 = !DILocation(line: 1464, column: 32, scope: !1571)
!1585 = !DILocation(line: 1465, column: 27, scope: !1571)
!1586 = !DILocation(line: 1465, column: 30, scope: !1571)
!1587 = !DILocation(line: 1466, column: 35, scope: !1571)
!1588 = !DILocation(line: 1466, column: 27, scope: !1571)
!1589 = !DILocation(line: 1466, column: 33, scope: !1571)
!1590 = !DILocation(line: 1468, column: 12, scope: !1571)
!1591 = !DILocation(line: 1470, column: 29, scope: !1571)
!1592 = !DILocation(line: 1472, column: 1, scope: !1571)
!1593 = !DILocation(line: 1471, column: 3, scope: !1571)
!1594 = distinct !DISubprogram(name: "convert_no_conversion", scope: !3, file: !3, line: 536, type: !946, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1595)
!1595 = !{!1596, !1597, !1598, !1599}
!1596 = !DILocalVariable(name: "cd", arg: 1, scope: !1594, file: !3, line: 536, type: !131)
!1597 = !DILocalVariable(name: "from", arg: 2, scope: !1594, file: !3, line: 537, type: !227)
!1598 = !DILocalVariable(name: "flen", arg: 3, scope: !1594, file: !3, line: 537, type: !133)
!1599 = !DILocalVariable(name: "to", arg: 4, scope: !1594, file: !3, line: 537, type: !340)
!1600 = !DILocation(line: 0, scope: !1594)
!1601 = !DILocation(line: 539, column: 11, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 539, column: 7)
!1603 = !DILocation(line: 539, column: 15, scope: !1602)
!1604 = !DILocation(line: 539, column: 28, scope: !1602)
!1605 = !DILocation(line: 539, column: 22, scope: !1602)
!1606 = !DILocation(line: 539, column: 7, scope: !1594)
!1607 = !DILocation(line: 544, column: 15, scope: !1594)
!1608 = !DILocation(line: 541, column: 17, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 540, column: 5)
!1610 = !DILocation(line: 542, column: 18, scope: !1609)
!1611 = !DILocation(line: 542, column: 16, scope: !1609)
!1612 = !DILocation(line: 544, column: 26, scope: !1594)
!1613 = !DILocation(line: 543, column: 5, scope: !1609)
!1614 = !DILocation(line: 544, column: 20, scope: !1594)
!1615 = !DILocation(line: 544, column: 3, scope: !1594)
!1616 = !DILocation(line: 545, column: 11, scope: !1594)
!1617 = !DILocation(line: 546, column: 3, scope: !1594)
!1618 = distinct !DISubprogram(name: "cpp_interpret_charconst", scope: !3, file: !3, line: 1607, type: !1619, scopeLine: 1609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1623)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!219, !265, !427, !1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!1623 = !{!1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1624 = !DILocalVariable(name: "pfile", arg: 1, scope: !1618, file: !3, line: 1607, type: !265)
!1625 = !DILocalVariable(name: "token", arg: 2, scope: !1618, file: !3, line: 1607, type: !427)
!1626 = !DILocalVariable(name: "pchars_seen", arg: 3, scope: !1618, file: !3, line: 1608, type: !1621)
!1627 = !DILocalVariable(name: "unsignedp", arg: 4, scope: !1618, file: !3, line: 1608, type: !1622)
!1628 = !DILocalVariable(name: "str", scope: !1618, file: !3, line: 1610, type: !566)
!1629 = !DILocalVariable(name: "wide", scope: !1618, file: !3, line: 1611, type: !127)
!1630 = !DILocalVariable(name: "result", scope: !1618, file: !3, line: 1612, type: !219)
!1631 = !DILocation(line: 0, scope: !1618)
!1632 = !DILocation(line: 1610, column: 3, scope: !1618)
!1633 = !DILocation(line: 1610, column: 14, scope: !1618)
!1634 = !DILocation(line: 1611, column: 23, scope: !1618)
!1635 = !DILocation(line: 1611, column: 28, scope: !1618)
!1636 = !DILocation(line: 1615, column: 22, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 1615, column: 7)
!1638 = !DILocation(line: 1615, column: 7, scope: !1637)
!1639 = !DILocation(line: 1615, column: 29, scope: !1637)
!1640 = !DILocation(line: 1615, column: 26, scope: !1637)
!1641 = !DILocation(line: 1615, column: 7, scope: !1618)
!1642 = !DILocation(line: 1617, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 1616, column: 5)
!1644 = !DILocation(line: 1618, column: 7, scope: !1643)
!1645 = !DILocation(line: 1620, column: 54, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 1620, column: 12)
!1647 = !DILocation(line: 1620, column: 75, scope: !1646)
!1648 = !DILocation(line: 1620, column: 13, scope: !1646)
!1649 = !DILocation(line: 1620, column: 12, scope: !1637)
!1650 = !DILocation(line: 1623, column: 7, scope: !1618)
!1651 = !DILocation(line: 1625, column: 16, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 1623, column: 7)
!1653 = !DILocation(line: 1624, column: 14, scope: !1652)
!1654 = !DILocation(line: 1624, column: 5, scope: !1652)
!1655 = !DILocation(line: 1627, column: 14, scope: !1652)
!1656 = !DILocation(line: 0, scope: !1652)
!1657 = !DILocation(line: 1629, column: 11, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 1629, column: 7)
!1659 = !DILocation(line: 1629, column: 34, scope: !1658)
!1660 = !DILocation(line: 1629, column: 16, scope: !1658)
!1661 = !DILocation(line: 1629, column: 7, scope: !1618)
!1662 = !DILocation(line: 1630, column: 5, scope: !1658)
!1663 = !DILocation(line: 1633, column: 1, scope: !1618)
!1664 = distinct !DISubprogram(name: "wide_str_to_charconst", scope: !3, file: !3, line: 1549, type: !1665, scopeLine: 1552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!219, !265, !566, !1621, !1622, !42}
!1667 = !{!1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682}
!1668 = !DILocalVariable(name: "pfile", arg: 1, scope: !1664, file: !3, line: 1549, type: !265)
!1669 = !DILocalVariable(name: "str", arg: 2, scope: !1664, file: !3, line: 1549, type: !566)
!1670 = !DILocalVariable(name: "pchars_seen", arg: 3, scope: !1664, file: !3, line: 1550, type: !1621)
!1671 = !DILocalVariable(name: "unsignedp", arg: 4, scope: !1664, file: !3, line: 1550, type: !1622)
!1672 = !DILocalVariable(name: "type", arg: 5, scope: !1664, file: !3, line: 1551, type: !42)
!1673 = !DILocalVariable(name: "bigend", scope: !1664, file: !3, line: 1553, type: !127)
!1674 = !DILocalVariable(name: "width", scope: !1664, file: !3, line: 1554, type: !133)
!1675 = !DILocalVariable(name: "cwidth", scope: !1664, file: !3, line: 1555, type: !133)
!1676 = !DILocalVariable(name: "mask", scope: !1664, file: !3, line: 1556, type: !133)
!1677 = !DILocalVariable(name: "cmask", scope: !1664, file: !3, line: 1557, type: !133)
!1678 = !DILocalVariable(name: "nbwc", scope: !1664, file: !3, line: 1558, type: !133)
!1679 = !DILocalVariable(name: "off", scope: !1664, file: !3, line: 1559, type: !133)
!1680 = !DILocalVariable(name: "i", scope: !1664, file: !3, line: 1559, type: !133)
!1681 = !DILocalVariable(name: "result", scope: !1664, file: !3, line: 1560, type: !219)
!1682 = !DILocalVariable(name: "c", scope: !1664, file: !3, line: 1560, type: !219)
!1683 = !DILocation(line: 0, scope: !1664)
!1684 = !DILocation(line: 1553, column: 17, scope: !1664)
!1685 = !DILocation(line: 1554, column: 18, scope: !1664)
!1686 = !DILocation(line: 1554, column: 51, scope: !1664)
!1687 = !DILocation(line: 1555, column: 19, scope: !1664)
!1688 = !DILocation(line: 1556, column: 17, scope: !1664)
!1689 = !DILocation(line: 1557, column: 18, scope: !1664)
!1690 = !DILocation(line: 1558, column: 23, scope: !1664)
!1691 = !DILocation(line: 1565, column: 9, scope: !1664)
!1692 = !DILocation(line: 1565, column: 25, scope: !1664)
!1693 = !DILocation(line: 1565, column: 17, scope: !1664)
!1694 = !DILocation(line: 0, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 1568, column: 5)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 1567, column: 3)
!1697 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 1567, column: 3)
!1698 = !DILocation(line: 1567, column: 8, scope: !1697)
!1699 = !DILocation(line: 0, scope: !1697)
!1700 = !DILocation(line: 1567, column: 17, scope: !1696)
!1701 = !DILocation(line: 1567, column: 3, scope: !1697)
!1702 = !DILocation(line: 1569, column: 64, scope: !1695)
!1703 = !DILocation(line: 1570, column: 24, scope: !1695)
!1704 = !DILocation(line: 1570, column: 38, scope: !1695)
!1705 = !DILocation(line: 1570, column: 40, scope: !1695)
!1706 = !DILocation(line: 1570, column: 16, scope: !1695)
!1707 = !DILocation(line: 1567, column: 26, scope: !1696)
!1708 = !DILocation(line: 1567, column: 3, scope: !1696)
!1709 = distinct !{!1709, !1701, !1710}
!1710 = !DILocation(line: 1571, column: 5, scope: !1697)
!1711 = !DILocation(line: 1576, column: 11, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 1576, column: 7)
!1713 = !DILocation(line: 1569, column: 33, scope: !1695)
!1714 = !DILocation(line: 1576, column: 15, scope: !1712)
!1715 = !DILocation(line: 1576, column: 7, scope: !1664)
!1716 = !DILocation(line: 1577, column: 5, scope: !1712)
!1717 = !DILocation(line: 1582, column: 13, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 1582, column: 7)
!1719 = !DILocation(line: 1582, column: 7, scope: !1664)
!1720 = !DILocation(line: 1592, column: 26, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 1592, column: 7)
!1722 = !DILocation(line: 1584, column: 30, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 1584, column: 11)
!1724 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 1583, column: 5)
!1725 = !DILocation(line: 1585, column: 7, scope: !1723)
!1726 = !DILocation(line: 1586, column: 4, scope: !1723)
!1727 = !DILocation(line: 1586, column: 31, scope: !1723)
!1728 = !DILocation(line: 1586, column: 21, scope: !1723)
!1729 = !DILocation(line: 1586, column: 16, scope: !1723)
!1730 = !DILocation(line: 1584, column: 11, scope: !1724)
!1731 = !DILocation(line: 1587, column: 9, scope: !1723)
!1732 = !DILocation(line: 1587, column: 2, scope: !1723)
!1733 = !DILocation(line: 1589, column: 9, scope: !1723)
!1734 = !DILocation(line: 1593, column: 10, scope: !1721)
!1735 = !DILocation(line: 1592, column: 7, scope: !1664)
!1736 = !DILocation(line: 1594, column: 5, scope: !1721)
!1737 = !DILocation(line: 0, scope: !1721)
!1738 = !DILocation(line: 1598, column: 16, scope: !1664)
!1739 = !DILocation(line: 1599, column: 3, scope: !1664)
!1740 = distinct !DISubprogram(name: "narrow_str_to_charconst", scope: !3, file: !3, line: 1480, type: !1741, scopeLine: 1482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1743)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!219, !265, !566, !1621, !1622}
!1743 = !{!1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754}
!1744 = !DILocalVariable(name: "pfile", arg: 1, scope: !1740, file: !3, line: 1480, type: !265)
!1745 = !DILocalVariable(name: "str", arg: 2, scope: !1740, file: !3, line: 1480, type: !566)
!1746 = !DILocalVariable(name: "pchars_seen", arg: 3, scope: !1740, file: !3, line: 1481, type: !1621)
!1747 = !DILocalVariable(name: "unsignedp", arg: 4, scope: !1740, file: !3, line: 1481, type: !1622)
!1748 = !DILocalVariable(name: "width", scope: !1740, file: !3, line: 1483, type: !133)
!1749 = !DILocalVariable(name: "max_chars", scope: !1740, file: !3, line: 1484, type: !133)
!1750 = !DILocalVariable(name: "mask", scope: !1740, file: !3, line: 1485, type: !133)
!1751 = !DILocalVariable(name: "i", scope: !1740, file: !3, line: 1486, type: !133)
!1752 = !DILocalVariable(name: "result", scope: !1740, file: !3, line: 1487, type: !219)
!1753 = !DILocalVariable(name: "c", scope: !1740, file: !3, line: 1487, type: !219)
!1754 = !DILocalVariable(name: "unsigned_p", scope: !1740, file: !3, line: 1488, type: !127)
!1755 = !DILocation(line: 0, scope: !1740)
!1756 = !DILocation(line: 1483, column: 18, scope: !1740)
!1757 = !DILocation(line: 1484, column: 22, scope: !1740)
!1758 = !DILocation(line: 1484, column: 56, scope: !1740)
!1759 = !DILocation(line: 1485, column: 17, scope: !1740)
!1760 = !DILocation(line: 0, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 1501, column: 3)
!1762 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 1501, column: 3)
!1763 = !DILocation(line: 0, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1504, column: 11)
!1765 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 1502, column: 5)
!1766 = !DILocation(line: 0, scope: !1765)
!1767 = !DILocation(line: 1501, column: 8, scope: !1762)
!1768 = !DILocation(line: 0, scope: !1762)
!1769 = !DILocation(line: 1501, column: 17, scope: !1761)
!1770 = !DILocation(line: 1501, column: 3, scope: !1762)
!1771 = !DILocation(line: 1503, column: 11, scope: !1765)
!1772 = !DILocation(line: 1503, column: 23, scope: !1765)
!1773 = !DILocation(line: 1504, column: 11, scope: !1765)
!1774 = !DILocation(line: 1501, column: 33, scope: !1761)
!1775 = !DILocation(line: 1501, column: 3, scope: !1761)
!1776 = distinct !{!1776, !1770, !1777}
!1777 = !DILocation(line: 1508, column: 5, scope: !1762)
!1778 = !DILocation(line: 1510, column: 9, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 1510, column: 7)
!1780 = !DILocation(line: 1510, column: 7, scope: !1740)
!1781 = !DILocation(line: 1513, column: 7, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 1511, column: 5)
!1783 = !DILocation(line: 1515, column: 5, scope: !1782)
!1784 = !DILocation(line: 1516, column: 14, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 1516, column: 12)
!1786 = !DILocation(line: 1516, column: 18, scope: !1785)
!1787 = !DILocation(line: 1516, column: 21, scope: !1785)
!1788 = !DILocation(line: 1516, column: 12, scope: !1779)
!1789 = !DILocation(line: 1517, column: 5, scope: !1785)
!1790 = !DILocation(line: 1520, column: 9, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 1520, column: 7)
!1792 = !DILocation(line: 1520, column: 7, scope: !1740)
!1793 = !DILocation(line: 1523, column: 18, scope: !1791)
!1794 = !DILocation(line: 1529, column: 7, scope: !1740)
!1795 = !DILocation(line: 1530, column: 13, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 1529, column: 7)
!1797 = !DILocation(line: 1530, column: 5, scope: !1796)
!1798 = !DILocation(line: 1531, column: 13, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 1531, column: 7)
!1800 = !DILocation(line: 1531, column: 7, scope: !1740)
!1801 = !DILocation(line: 1533, column: 29, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 1532, column: 5)
!1803 = !DILocation(line: 1533, column: 39, scope: !1802)
!1804 = !DILocation(line: 1534, column: 11, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 1534, column: 11)
!1806 = !DILocation(line: 1534, column: 22, scope: !1805)
!1807 = !DILocation(line: 1534, column: 39, scope: !1805)
!1808 = !DILocation(line: 1534, column: 34, scope: !1805)
!1809 = !DILocation(line: 1534, column: 11, scope: !1802)
!1810 = !DILocation(line: 1535, column: 9, scope: !1805)
!1811 = !DILocation(line: 1535, column: 2, scope: !1805)
!1812 = !DILocation(line: 1537, column: 9, scope: !1805)
!1813 = !DILocation(line: 1539, column: 18, scope: !1740)
!1814 = !DILocation(line: 1539, column: 16, scope: !1740)
!1815 = !DILocation(line: 1540, column: 14, scope: !1740)
!1816 = !DILocation(line: 1541, column: 3, scope: !1740)
!1817 = distinct !DISubprogram(name: "_cpp_interpret_identifier", scope: !3, file: !3, line: 1639, type: !1818, scopeLine: 1640, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1820)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!135, !265, !227, !133}
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1826, !1827, !1832, !1833, !1834}
!1821 = !DILocalVariable(name: "pfile", arg: 1, scope: !1817, file: !3, line: 1639, type: !265)
!1822 = !DILocalVariable(name: "id", arg: 2, scope: !1817, file: !3, line: 1639, type: !227)
!1823 = !DILocalVariable(name: "len", arg: 3, scope: !1817, file: !3, line: 1639, type: !133)
!1824 = !DILocalVariable(name: "buf", scope: !1817, file: !3, line: 1643, type: !124)
!1825 = !DILocalVariable(name: "bufp", scope: !1817, file: !3, line: 1644, type: !124)
!1826 = !DILocalVariable(name: "idp", scope: !1817, file: !3, line: 1645, type: !133)
!1827 = !DILocalVariable(name: "length", scope: !1828, file: !3, line: 1652, type: !7)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 1651, column: 7)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 1648, column: 9)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 1647, column: 3)
!1831 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 1647, column: 3)
!1832 = !DILocalVariable(name: "value", scope: !1828, file: !3, line: 1653, type: !219)
!1833 = !DILocalVariable(name: "bufleft", scope: !1828, file: !3, line: 1654, type: !133)
!1834 = !DILocalVariable(name: "rval", scope: !1828, file: !3, line: 1655, type: !128)
!1835 = !DILocation(line: 0, scope: !1817)
!1836 = !DILocation(line: 1643, column: 27, scope: !1817)
!1837 = !DILocation(line: 1644, column: 3, scope: !1817)
!1838 = !DILocation(line: 1644, column: 11, scope: !1817)
!1839 = !DILocation(line: 0, scope: !1828)
!1840 = !DILocation(line: 1647, column: 8, scope: !1831)
!1841 = !DILocation(line: 0, scope: !1831)
!1842 = !DILocation(line: 1647, column: 21, scope: !1830)
!1843 = !DILocation(line: 1647, column: 3, scope: !1831)
!1844 = !DILocation(line: 1648, column: 9, scope: !1829)
!1845 = !DILocation(line: 1648, column: 17, scope: !1829)
!1846 = !DILocation(line: 1648, column: 9, scope: !1830)
!1847 = !DILocation(line: 1649, column: 12, scope: !1829)
!1848 = !DILocation(line: 1649, column: 15, scope: !1829)
!1849 = !DILocation(line: 1649, column: 7, scope: !1829)
!1850 = !DILocation(line: 1652, column: 26, scope: !1828)
!1851 = !DILocation(line: 1652, column: 20, scope: !1828)
!1852 = !DILocation(line: 1652, column: 30, scope: !1828)
!1853 = !DILocation(line: 1654, column: 2, scope: !1828)
!1854 = !DILocation(line: 1654, column: 26, scope: !1828)
!1855 = !DILocation(line: 1654, column: 23, scope: !1828)
!1856 = !DILocation(line: 1654, column: 9, scope: !1828)
!1857 = !DILocation(line: 1657, column: 6, scope: !1828)
!1858 = !DILocation(line: 1658, column: 2, scope: !1828)
!1859 = !DILocation(line: 1658, column: 9, scope: !1828)
!1860 = !DILocation(line: 1658, column: 23, scope: !1828)
!1861 = !DILocation(line: 1658, column: 16, scope: !1828)
!1862 = !DILocation(line: 1658, column: 32, scope: !1828)
!1863 = !DILocation(line: 1658, column: 29, scope: !1828)
!1864 = !DILocation(line: 1660, column: 21, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 1659, column: 4)
!1866 = !DILocation(line: 1660, column: 29, scope: !1865)
!1867 = !DILocation(line: 1660, column: 27, scope: !1865)
!1868 = !DILocation(line: 1661, column: 9, scope: !1865)
!1869 = !DILocation(line: 1662, column: 12, scope: !1865)
!1870 = distinct !{!1870, !1858, !1871}
!1871 = !DILocation(line: 1663, column: 4, scope: !1828)
!1872 = !DILocation(line: 1664, column: 5, scope: !1828)
!1873 = !DILocation(line: 1668, column: 12, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 1668, column: 6)
!1875 = !DILocation(line: 1668, column: 6, scope: !1828)
!1876 = !DILocation(line: 1670, column: 11, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 1669, column: 4)
!1878 = !DILocation(line: 1670, column: 14, scope: !1877)
!1879 = !DILocation(line: 1671, column: 6, scope: !1877)
!1880 = !DILocation(line: 1674, column: 9, scope: !1828)
!1881 = !DILocation(line: 1675, column: 6, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 1675, column: 6)
!1883 = !DILocation(line: 1675, column: 6, scope: !1828)
!1884 = !DILocation(line: 1677, column: 6, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 1676, column: 4)
!1886 = !DILocation(line: 1677, column: 12, scope: !1885)
!1887 = !DILocation(line: 1678, column: 6, scope: !1885)
!1888 = !DILocation(line: 1680, column: 6, scope: !1885)
!1889 = !DILocation(line: 1682, column: 7, scope: !1829)
!1890 = !DILocation(line: 1647, column: 31, scope: !1830)
!1891 = !DILocation(line: 1647, column: 3, scope: !1830)
!1892 = distinct !{!1892, !1843, !1893}
!1893 = !DILocation(line: 1682, column: 7, scope: !1831)
!1894 = !DILocation(line: 1684, column: 10, scope: !1817)
!1895 = !DILocation(line: 1686, column: 1, scope: !1817)
!1896 = !DILocation(line: 1684, column: 3, scope: !1817)
!1897 = !DILocation(line: 0, scope: !769)
!1898 = !DILocation(line: 235, column: 3, scope: !769)
!1899 = !DILocation(line: 235, column: 9, scope: !769)
!1900 = !DILocation(line: 236, column: 19, scope: !769)
!1901 = !DILocation(line: 239, column: 9, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !769, file: !3, line: 239, column: 7)
!1903 = !DILocation(line: 239, column: 7, scope: !769)
!1904 = !DILocation(line: 235, column: 23, scope: !769)
!1905 = !DILocation(line: 249, column: 24, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 242, column: 5)
!1907 = !DILocation(line: 240, column: 12, scope: !1902)
!1908 = !DILocation(line: 240, column: 6, scope: !1902)
!1909 = !DILocation(line: 240, column: 10, scope: !1902)
!1910 = !DILocation(line: 240, column: 5, scope: !1902)
!1911 = !DILocation(line: 245, column: 11, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 244, column: 2)
!1913 = !DILocation(line: 245, column: 5, scope: !1912)
!1914 = !DILocation(line: 245, column: 9, scope: !1912)
!1915 = !DILocation(line: 246, column: 6, scope: !1912)
!1916 = !DILocation(line: 247, column: 10, scope: !1912)
!1917 = !DILocation(line: 249, column: 16, scope: !1906)
!1918 = distinct !{!1918, !1919, !1920}
!1919 = !DILocation(line: 243, column: 7, scope: !1906)
!1920 = !DILocation(line: 249, column: 49, scope: !1906)
!1921 = !DILocation(line: 249, column: 32, scope: !1906)
!1922 = !DILocation(line: 249, column: 30, scope: !1906)
!1923 = !DILocation(line: 248, column: 2, scope: !1912)
!1924 = !DILocation(line: 250, column: 19, scope: !1906)
!1925 = !DILocation(line: 250, column: 14, scope: !1906)
!1926 = !DILocation(line: 250, column: 8, scope: !1906)
!1927 = !DILocation(line: 250, column: 12, scope: !1906)
!1928 = !DILocation(line: 0, scope: !1902)
!1929 = !DILocation(line: 253, column: 7, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !769, file: !3, line: 253, column: 7)
!1931 = !DILocation(line: 253, column: 22, scope: !1930)
!1932 = !DILocation(line: 253, column: 7, scope: !769)
!1933 = !DILocation(line: 256, column: 3, scope: !769)
!1934 = !DILocation(line: 256, column: 12, scope: !769)
!1935 = !DILocation(line: 257, column: 19, scope: !769)
!1936 = !DILocation(line: 257, column: 17, scope: !769)
!1937 = !DILocation(line: 257, column: 12, scope: !769)
!1938 = !DILocation(line: 257, column: 15, scope: !769)
!1939 = distinct !{!1939, !1933, !1935}
!1940 = !DILocation(line: 258, column: 18, scope: !769)
!1941 = !DILocation(line: 259, column: 12, scope: !769)
!1942 = !DILocation(line: 260, column: 3, scope: !769)
!1943 = !DILocation(line: 261, column: 1, scope: !769)
!1944 = distinct !DISubprogram(name: "_cpp_convert_input", scope: !3, file: !3, line: 1703, type: !1945, scopeLine: 1706, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1951)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!405, !265, !316, !124, !133, !133, !1947, !1948}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !326, line: 85, baseType: !1950)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !328, line: 152, baseType: !467)
!1951 = !{!1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961}
!1952 = !DILocalVariable(name: "pfile", arg: 1, scope: !1944, file: !3, line: 1703, type: !265)
!1953 = !DILocalVariable(name: "input_charset", arg: 2, scope: !1944, file: !3, line: 1703, type: !316)
!1954 = !DILocalVariable(name: "input", arg: 3, scope: !1944, file: !3, line: 1704, type: !124)
!1955 = !DILocalVariable(name: "size", arg: 4, scope: !1944, file: !3, line: 1704, type: !133)
!1956 = !DILocalVariable(name: "len", arg: 5, scope: !1944, file: !3, line: 1704, type: !133)
!1957 = !DILocalVariable(name: "buffer_start", arg: 6, scope: !1944, file: !3, line: 1705, type: !1947)
!1958 = !DILocalVariable(name: "st_size", arg: 7, scope: !1944, file: !3, line: 1705, type: !1948)
!1959 = !DILocalVariable(name: "input_cset", scope: !1944, file: !3, line: 1707, type: !333)
!1960 = !DILocalVariable(name: "to", scope: !1944, file: !3, line: 1708, type: !341)
!1961 = !DILocalVariable(name: "buffer", scope: !1944, file: !3, line: 1709, type: !405)
!1962 = !DILocation(line: 0, scope: !1944)
!1963 = !DILocation(line: 1707, column: 3, scope: !1944)
!1964 = !DILocation(line: 1708, column: 3, scope: !1944)
!1965 = !DILocation(line: 1711, column: 16, scope: !1944)
!1966 = !DILocation(line: 1712, column: 18, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 1712, column: 7)
!1968 = !DILocation(line: 1712, column: 23, scope: !1967)
!1969 = !DILocation(line: 1712, column: 7, scope: !1944)
!1970 = !DILocation(line: 1714, column: 10, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 1713, column: 5)
!1972 = !DILocation(line: 1714, column: 15, scope: !1971)
!1973 = !DILocation(line: 1715, column: 10, scope: !1971)
!1974 = !DILocation(line: 1715, column: 16, scope: !1971)
!1975 = !DILocation(line: 1716, column: 10, scope: !1971)
!1976 = !DILocation(line: 1716, column: 14, scope: !1971)
!1977 = !DILocation(line: 1717, column: 5, scope: !1971)
!1978 = !DILocation(line: 1720, column: 18, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 1719, column: 5)
!1980 = !DILocation(line: 1720, column: 10, scope: !1979)
!1981 = !DILocation(line: 1720, column: 16, scope: !1979)
!1982 = !DILocation(line: 1721, column: 17, scope: !1979)
!1983 = !DILocation(line: 1721, column: 10, scope: !1979)
!1984 = !DILocation(line: 1721, column: 15, scope: !1979)
!1985 = !DILocation(line: 1722, column: 10, scope: !1979)
!1986 = !DILocation(line: 1722, column: 14, scope: !1979)
!1987 = !DILocation(line: 1724, column: 12, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1979, file: !3, line: 1724, column: 11)
!1989 = !DILocation(line: 1724, column: 11, scope: !1979)
!1990 = !DILocation(line: 1727, column: 6, scope: !1988)
!1991 = !DILocation(line: 1725, column: 2, scope: !1988)
!1992 = !DILocation(line: 1729, column: 7, scope: !1979)
!1993 = !DILocation(line: 1738, column: 10, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 1738, column: 7)
!1995 = !DILocation(line: 1738, column: 26, scope: !1994)
!1996 = !DILocation(line: 1738, column: 14, scope: !1994)
!1997 = !DILocation(line: 1738, column: 21, scope: !1994)
!1998 = !DILocation(line: 1738, column: 32, scope: !1994)
!1999 = !DILocation(line: 1738, column: 42, scope: !1994)
!2000 = !DILocation(line: 1738, column: 7, scope: !1944)
!2001 = !DILocation(line: 1739, column: 15, scope: !1994)
!2002 = !DILocation(line: 1739, column: 13, scope: !1994)
!2003 = !DILocation(line: 1745, column: 10, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 1745, column: 7)
!2005 = !DILocation(line: 1739, column: 5, scope: !1994)
!2006 = !DILocation(line: 1745, column: 7, scope: !2004)
!2007 = !DILocation(line: 1745, column: 14, scope: !2004)
!2008 = !DILocation(line: 0, scope: !2004)
!2009 = !DILocation(line: 1748, column: 8, scope: !2004)
!2010 = !DILocation(line: 1745, column: 20, scope: !2004)
!2011 = !DILocation(line: 1745, column: 32, scope: !2004)
!2012 = !DILocation(line: 1745, column: 17, scope: !2004)
!2013 = !DILocation(line: 1745, column: 37, scope: !2004)
!2014 = !DILocation(line: 1745, column: 7, scope: !1944)
!2015 = !DILocation(line: 1746, column: 5, scope: !2004)
!2016 = !DILocation(line: 1746, column: 21, scope: !2004)
!2017 = !DILocation(line: 1748, column: 5, scope: !2004)
!2018 = !DILocation(line: 1748, column: 21, scope: !2004)
!2019 = !DILocation(line: 1750, column: 15, scope: !1944)
!2020 = !DILocation(line: 1751, column: 17, scope: !1944)
!2021 = !DILocation(line: 1751, column: 12, scope: !1944)
!2022 = !DILocation(line: 1758, column: 14, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 1758, column: 7)
!2024 = !DILocation(line: 1758, column: 19, scope: !2023)
!2025 = !DILocation(line: 1758, column: 22, scope: !2023)
!2026 = !DILocation(line: 1758, column: 33, scope: !2023)
!2027 = !DILocation(line: 1758, column: 41, scope: !2023)
!2028 = !DILocation(line: 1758, column: 44, scope: !2023)
!2029 = !DILocation(line: 1758, column: 55, scope: !2023)
!2030 = !DILocation(line: 1759, column: 7, scope: !2023)
!2031 = !DILocation(line: 1759, column: 10, scope: !2023)
!2032 = !DILocation(line: 1759, column: 21, scope: !2023)
!2033 = !DILocation(line: 1758, column: 7, scope: !1944)
!2034 = !DILocation(line: 1761, column: 16, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 1760, column: 5)
!2036 = !DILocation(line: 1762, column: 14, scope: !2035)
!2037 = !DILocation(line: 1763, column: 5, scope: !2035)
!2038 = !DILocation(line: 1766, column: 17, scope: !1944)
!2039 = !DILocation(line: 1768, column: 1, scope: !1944)
!2040 = !DILocation(line: 1767, column: 3, scope: !1944)
!2041 = distinct !DISubprogram(name: "_cpp_default_encoding", scope: !3, file: !3, line: 1772, type: !2042, scopeLine: 1773, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!316}
!2044 = !{!2045}
!2045 = !DILocalVariable(name: "current_encoding", scope: !2041, file: !3, line: 1774, type: !316)
!2046 = !DILocation(line: 0, scope: !2041)
!2047 = !DILocation(line: 1801, column: 3, scope: !2041)
!2048 = distinct !DISubprogram(name: "convert_utf8_utf32", scope: !3, file: !3, line: 514, type: !946, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2049)
!2049 = !{!2050, !2051, !2052, !2053}
!2050 = !DILocalVariable(name: "cd", arg: 1, scope: !2048, file: !3, line: 514, type: !131)
!2051 = !DILocalVariable(name: "from", arg: 2, scope: !2048, file: !3, line: 514, type: !227)
!2052 = !DILocalVariable(name: "flen", arg: 3, scope: !2048, file: !3, line: 514, type: !133)
!2053 = !DILocalVariable(name: "to", arg: 4, scope: !2048, file: !3, line: 515, type: !340)
!2054 = !DILocation(line: 0, scope: !2048)
!2055 = !DILocation(line: 517, column: 10, scope: !2048)
!2056 = !DILocation(line: 517, column: 3, scope: !2048)
!2057 = distinct !DISubprogram(name: "convert_utf8_utf16", scope: !3, file: !3, line: 507, type: !946, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2058)
!2058 = !{!2059, !2060, !2061, !2062}
!2059 = !DILocalVariable(name: "cd", arg: 1, scope: !2057, file: !3, line: 507, type: !131)
!2060 = !DILocalVariable(name: "from", arg: 2, scope: !2057, file: !3, line: 507, type: !227)
!2061 = !DILocalVariable(name: "flen", arg: 3, scope: !2057, file: !3, line: 507, type: !133)
!2062 = !DILocalVariable(name: "to", arg: 4, scope: !2057, file: !3, line: 508, type: !340)
!2063 = !DILocation(line: 0, scope: !2057)
!2064 = !DILocation(line: 510, column: 10, scope: !2057)
!2065 = !DILocation(line: 510, column: 3, scope: !2057)
!2066 = distinct !DISubprogram(name: "convert_utf32_utf8", scope: !3, file: !3, line: 528, type: !946, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2067)
!2067 = !{!2068, !2069, !2070, !2071}
!2068 = !DILocalVariable(name: "cd", arg: 1, scope: !2066, file: !3, line: 528, type: !131)
!2069 = !DILocalVariable(name: "from", arg: 2, scope: !2066, file: !3, line: 528, type: !227)
!2070 = !DILocalVariable(name: "flen", arg: 3, scope: !2066, file: !3, line: 528, type: !133)
!2071 = !DILocalVariable(name: "to", arg: 4, scope: !2066, file: !3, line: 529, type: !340)
!2072 = !DILocation(line: 0, scope: !2066)
!2073 = !DILocation(line: 531, column: 10, scope: !2066)
!2074 = !DILocation(line: 531, column: 3, scope: !2066)
!2075 = distinct !DISubprogram(name: "convert_utf16_utf8", scope: !3, file: !3, line: 521, type: !946, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2076)
!2076 = !{!2077, !2078, !2079, !2080}
!2077 = !DILocalVariable(name: "cd", arg: 1, scope: !2075, file: !3, line: 521, type: !131)
!2078 = !DILocalVariable(name: "from", arg: 2, scope: !2075, file: !3, line: 521, type: !227)
!2079 = !DILocalVariable(name: "flen", arg: 3, scope: !2075, file: !3, line: 521, type: !133)
!2080 = !DILocalVariable(name: "to", arg: 4, scope: !2075, file: !3, line: 522, type: !340)
!2081 = !DILocation(line: 0, scope: !2075)
!2082 = !DILocation(line: 524, column: 10, scope: !2075)
!2083 = !DILocation(line: 524, column: 3, scope: !2075)
!2084 = distinct !DISubprogram(name: "conversion_loop", scope: !3, file: !3, line: 456, type: !2085, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2091)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!127, !2087, !131, !227, !133, !340}
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2088)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!128, !131, !226, !229, !772, !229}
!2091 = !{!2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101}
!2092 = !DILocalVariable(name: "one_conversion", arg: 1, scope: !2084, file: !3, line: 456, type: !2087)
!2093 = !DILocalVariable(name: "cd", arg: 2, scope: !2084, file: !3, line: 458, type: !131)
!2094 = !DILocalVariable(name: "from", arg: 3, scope: !2084, file: !3, line: 458, type: !227)
!2095 = !DILocalVariable(name: "flen", arg: 4, scope: !2084, file: !3, line: 458, type: !133)
!2096 = !DILocalVariable(name: "to", arg: 5, scope: !2084, file: !3, line: 458, type: !340)
!2097 = !DILocalVariable(name: "inbuf", scope: !2084, file: !3, line: 460, type: !227)
!2098 = !DILocalVariable(name: "outbuf", scope: !2084, file: !3, line: 461, type: !124)
!2099 = !DILocalVariable(name: "inbytesleft", scope: !2084, file: !3, line: 462, type: !133)
!2100 = !DILocalVariable(name: "outbytesleft", scope: !2084, file: !3, line: 462, type: !133)
!2101 = !DILocalVariable(name: "rval", scope: !2084, file: !3, line: 463, type: !128)
!2102 = !DILocation(line: 0, scope: !2084)
!2103 = !DILocation(line: 460, column: 3, scope: !2084)
!2104 = !DILocation(line: 461, column: 3, scope: !2084)
!2105 = !DILocation(line: 462, column: 3, scope: !2084)
!2106 = !DILocation(line: 465, column: 9, scope: !2084)
!2107 = !DILocation(line: 466, column: 15, scope: !2084)
!2108 = !DILocation(line: 467, column: 16, scope: !2084)
!2109 = !DILocation(line: 467, column: 27, scope: !2084)
!2110 = !DILocation(line: 467, column: 21, scope: !2084)
!2111 = !DILocation(line: 467, column: 10, scope: !2084)
!2112 = !DILocation(line: 468, column: 22, scope: !2084)
!2113 = !DILocation(line: 468, column: 28, scope: !2084)
!2114 = !DILocation(line: 468, column: 16, scope: !2084)
!2115 = !DILocation(line: 470, column: 3, scope: !2084)
!2116 = !DILocation(line: 472, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 471, column: 5)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 470, column: 3)
!2119 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 470, column: 3)
!2120 = !DILocation(line: 473, column: 9, scope: !2117)
!2121 = !DILocation(line: 475, column: 14, scope: !2117)
!2122 = !DILocation(line: 475, column: 29, scope: !2117)
!2123 = !DILocation(line: 475, column: 26, scope: !2117)
!2124 = distinct !{!2124, !2116, !2125}
!2125 = !DILocation(line: 475, column: 34, scope: !2117)
!2126 = !DILocation(line: 477, column: 11, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 477, column: 11)
!2128 = !DILocation(line: 477, column: 11, scope: !2117)
!2129 = !DILocation(line: 479, column: 18, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 478, column: 2)
!2131 = !DILocation(line: 479, column: 26, scope: !2130)
!2132 = !DILocation(line: 479, column: 24, scope: !2130)
!2133 = !DILocation(line: 479, column: 12, scope: !2130)
!2134 = !DILocation(line: 480, column: 4, scope: !2130)
!2135 = !DILocation(line: 482, column: 16, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 482, column: 11)
!2137 = !DILocation(line: 482, column: 11, scope: !2117)
!2138 = !DILocation(line: 484, column: 4, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 483, column: 2)
!2140 = !DILocation(line: 484, column: 10, scope: !2139)
!2141 = !DILocation(line: 485, column: 4, scope: !2139)
!2142 = !DILocation(line: 488, column: 20, scope: !2117)
!2143 = !DILocation(line: 489, column: 17, scope: !2117)
!2144 = !DILocation(line: 490, column: 18, scope: !2117)
!2145 = !DILocation(line: 490, column: 16, scope: !2117)
!2146 = !DILocation(line: 491, column: 31, scope: !2117)
!2147 = !DILocation(line: 491, column: 25, scope: !2117)
!2148 = !DILocation(line: 491, column: 39, scope: !2117)
!2149 = !DILocation(line: 491, column: 37, scope: !2117)
!2150 = !DILocation(line: 491, column: 14, scope: !2117)
!2151 = !DILocation(line: 470, column: 3, scope: !2118)
!2152 = distinct !{!2152, !2153, !2154}
!2153 = !DILocation(line: 470, column: 3, scope: !2119)
!2154 = !DILocation(line: 492, column: 5, scope: !2119)
!2155 = !DILocation(line: 0, scope: !2117)
!2156 = !DILocation(line: 493, column: 1, scope: !2084)
!2157 = distinct !DISubprogram(name: "one_utf8_to_utf32", scope: !3, file: !3, line: 281, type: !2089, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2158)
!2158 = !{!2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166}
!2159 = !DILocalVariable(name: "bigend", arg: 1, scope: !2157, file: !3, line: 281, type: !131)
!2160 = !DILocalVariable(name: "inbufp", arg: 2, scope: !2157, file: !3, line: 281, type: !226)
!2161 = !DILocalVariable(name: "inbytesleftp", arg: 3, scope: !2157, file: !3, line: 281, type: !229)
!2162 = !DILocalVariable(name: "outbufp", arg: 4, scope: !2157, file: !3, line: 282, type: !772)
!2163 = !DILocalVariable(name: "outbytesleftp", arg: 5, scope: !2157, file: !3, line: 282, type: !229)
!2164 = !DILocalVariable(name: "outbuf", scope: !2157, file: !3, line: 284, type: !124)
!2165 = !DILocalVariable(name: "s", scope: !2157, file: !3, line: 285, type: !219)
!2166 = !DILocalVariable(name: "rval", scope: !2157, file: !3, line: 286, type: !128)
!2167 = !DILocation(line: 0, scope: !2157)
!2168 = !DILocation(line: 285, column: 3, scope: !2157)
!2169 = !DILocation(line: 285, column: 13, scope: !2157)
!2170 = !DILocation(line: 289, column: 7, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 289, column: 7)
!2172 = !DILocation(line: 289, column: 22, scope: !2171)
!2173 = !DILocation(line: 289, column: 7, scope: !2157)
!2174 = !DILocation(line: 292, column: 10, scope: !2157)
!2175 = !DILocation(line: 293, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 293, column: 7)
!2177 = !DILocation(line: 293, column: 7, scope: !2157)
!2178 = !DILocation(line: 296, column: 12, scope: !2157)
!2179 = !DILocation(line: 297, column: 29, scope: !2157)
!2180 = !DILocation(line: 297, column: 28, scope: !2157)
!2181 = !DILocation(line: 297, column: 10, scope: !2157)
!2182 = !DILocation(line: 297, column: 3, scope: !2157)
!2183 = !DILocation(line: 297, column: 26, scope: !2157)
!2184 = !DILocation(line: 298, column: 29, scope: !2157)
!2185 = !DILocation(line: 298, column: 45, scope: !2157)
!2186 = !DILocation(line: 298, column: 28, scope: !2157)
!2187 = !DILocation(line: 298, column: 3, scope: !2157)
!2188 = !DILocation(line: 298, column: 26, scope: !2157)
!2189 = !DILocation(line: 299, column: 29, scope: !2157)
!2190 = !DILocation(line: 299, column: 45, scope: !2157)
!2191 = !DILocation(line: 299, column: 28, scope: !2157)
!2192 = !DILocation(line: 299, column: 3, scope: !2157)
!2193 = !DILocation(line: 299, column: 26, scope: !2157)
!2194 = !DILocation(line: 300, column: 29, scope: !2157)
!2195 = !DILocation(line: 300, column: 45, scope: !2157)
!2196 = !DILocation(line: 300, column: 28, scope: !2157)
!2197 = !DILocation(line: 300, column: 3, scope: !2157)
!2198 = !DILocation(line: 300, column: 26, scope: !2157)
!2199 = !DILocation(line: 302, column: 12, scope: !2157)
!2200 = !DILocation(line: 303, column: 18, scope: !2157)
!2201 = !DILocation(line: 304, column: 3, scope: !2157)
!2202 = !DILocation(line: 305, column: 1, scope: !2157)
!2203 = !DILocation(line: 0, scope: !223)
!2204 = !DILocation(line: 177, column: 24, scope: !223)
!2205 = !DILocation(line: 180, column: 7, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !223, file: !3, line: 180, column: 7)
!2207 = !DILocation(line: 180, column: 21, scope: !2206)
!2208 = !DILocation(line: 180, column: 7, scope: !223)
!2209 = !DILocation(line: 183, column: 7, scope: !223)
!2210 = !DILocation(line: 184, column: 9, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !223, file: !3, line: 184, column: 7)
!2212 = !DILocation(line: 184, column: 7, scope: !223)
!2213 = !DILocation(line: 194, column: 3, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !223, file: !3, line: 194, column: 3)
!2215 = !DILocation(line: 186, column: 11, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 185, column: 5)
!2217 = !DILocation(line: 187, column: 21, scope: !2216)
!2218 = !DILocation(line: 188, column: 15, scope: !2216)
!2219 = !DILocation(line: 189, column: 7, scope: !2216)
!2220 = !DILocation(line: 0, scope: !2214)
!2221 = !DILocation(line: 194, column: 27, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 194, column: 3)
!2223 = !DILocation(line: 195, column: 27, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 195, column: 9)
!2225 = !DILocation(line: 195, column: 15, scope: !2224)
!2226 = !DILocation(line: 195, column: 14, scope: !2224)
!2227 = !DILocation(line: 195, column: 12, scope: !2224)
!2228 = !DILocation(line: 195, column: 35, scope: !2224)
!2229 = !DILocation(line: 195, column: 32, scope: !2224)
!2230 = !DILocation(line: 195, column: 9, scope: !2222)
!2231 = !DILocation(line: 194, column: 38, scope: !2222)
!2232 = !DILocation(line: 194, column: 3, scope: !2222)
!2233 = distinct !{!2233, !2213, !2234}
!2234 = !DILocation(line: 196, column: 12, scope: !2214)
!2235 = !DILocation(line: 198, column: 2, scope: !223)
!2236 = !DILocation(line: 200, column: 21, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !223, file: !3, line: 200, column: 7)
!2238 = !DILocation(line: 200, column: 7, scope: !223)
!2239 = !DILocation(line: 203, column: 10, scope: !223)
!2240 = !DILocation(line: 205, column: 8, scope: !242)
!2241 = !DILocation(line: 203, column: 5, scope: !223)
!2242 = !DILocation(line: 0, scope: !242)
!2243 = !DILocation(line: 205, column: 17, scope: !241)
!2244 = !DILocation(line: 205, column: 3, scope: !242)
!2245 = !DILocation(line: 207, column: 21, scope: !240)
!2246 = !DILocation(line: 0, scope: !240)
!2247 = !DILocation(line: 208, column: 14, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !240, file: !3, line: 208, column: 11)
!2249 = !DILocation(line: 208, column: 22, scope: !2248)
!2250 = !DILocation(line: 208, column: 11, scope: !240)
!2251 = !DILocation(line: 210, column: 15, scope: !240)
!2252 = !DILocation(line: 210, column: 26, scope: !240)
!2253 = !DILocation(line: 210, column: 21, scope: !240)
!2254 = !DILocation(line: 211, column: 5, scope: !241)
!2255 = !DILocation(line: 205, column: 28, scope: !241)
!2256 = !DILocation(line: 205, column: 3, scope: !241)
!2257 = distinct !{!2257, !2244, !2258}
!2258 = !DILocation(line: 211, column: 5, scope: !242)
!2259 = !DILocation(line: 214, column: 9, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !223, file: !3, line: 214, column: 7)
!2261 = !DILocation(line: 214, column: 22, scope: !2260)
!2262 = !DILocation(line: 215, column: 9, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !223, file: !3, line: 215, column: 7)
!2264 = !DILocation(line: 215, column: 32, scope: !2263)
!2265 = !DILocation(line: 215, column: 22, scope: !2263)
!2266 = !DILocation(line: 216, column: 9, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !223, file: !3, line: 216, column: 7)
!2268 = !DILocation(line: 216, column: 32, scope: !2267)
!2269 = !DILocation(line: 216, column: 22, scope: !2267)
!2270 = !DILocation(line: 217, column: 9, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !223, file: !3, line: 217, column: 7)
!2272 = !DILocation(line: 217, column: 32, scope: !2271)
!2273 = !DILocation(line: 217, column: 22, scope: !2271)
!2274 = !DILocation(line: 218, column: 9, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !223, file: !3, line: 218, column: 7)
!2276 = !DILocation(line: 218, column: 32, scope: !2275)
!2277 = !DILocation(line: 218, column: 22, scope: !2275)
!2278 = !DILocation(line: 221, column: 9, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !223, file: !3, line: 221, column: 7)
!2280 = !DILocation(line: 221, column: 38, scope: !2279)
!2281 = !DILocation(line: 223, column: 7, scope: !223)
!2282 = !DILocation(line: 224, column: 11, scope: !223)
!2283 = !DILocation(line: 225, column: 17, scope: !223)
!2284 = !DILocation(line: 226, column: 3, scope: !223)
!2285 = !DILocation(line: 227, column: 1, scope: !223)
!2286 = distinct !DISubprogram(name: "one_utf8_to_utf16", scope: !3, file: !3, line: 338, type: !2089, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2287)
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2301}
!2288 = !DILocalVariable(name: "bigend", arg: 1, scope: !2286, file: !3, line: 338, type: !131)
!2289 = !DILocalVariable(name: "inbufp", arg: 2, scope: !2286, file: !3, line: 338, type: !226)
!2290 = !DILocalVariable(name: "inbytesleftp", arg: 3, scope: !2286, file: !3, line: 338, type: !229)
!2291 = !DILocalVariable(name: "outbufp", arg: 4, scope: !2286, file: !3, line: 339, type: !772)
!2292 = !DILocalVariable(name: "outbytesleftp", arg: 5, scope: !2286, file: !3, line: 339, type: !229)
!2293 = !DILocalVariable(name: "rval", scope: !2286, file: !3, line: 341, type: !128)
!2294 = !DILocalVariable(name: "s", scope: !2286, file: !3, line: 342, type: !219)
!2295 = !DILocalVariable(name: "save_inbuf", scope: !2286, file: !3, line: 343, type: !227)
!2296 = !DILocalVariable(name: "save_inbytesleft", scope: !2286, file: !3, line: 344, type: !133)
!2297 = !DILocalVariable(name: "outbuf", scope: !2286, file: !3, line: 345, type: !124)
!2298 = !DILocalVariable(name: "hi", scope: !2299, file: !3, line: 375, type: !219)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 374, column: 5)
!2300 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 358, column: 7)
!2301 = !DILocalVariable(name: "lo", scope: !2299, file: !3, line: 375, type: !219)
!2302 = !DILocation(line: 0, scope: !2286)
!2303 = !DILocation(line: 342, column: 3, scope: !2286)
!2304 = !DILocation(line: 342, column: 13, scope: !2286)
!2305 = !DILocation(line: 343, column: 29, scope: !2286)
!2306 = !DILocation(line: 344, column: 29, scope: !2286)
!2307 = !DILocation(line: 345, column: 19, scope: !2286)
!2308 = !DILocation(line: 347, column: 10, scope: !2286)
!2309 = !DILocation(line: 348, column: 7, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 348, column: 7)
!2311 = !DILocation(line: 348, column: 7, scope: !2286)
!2312 = !DILocation(line: 351, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 351, column: 7)
!2314 = !DILocation(line: 351, column: 9, scope: !2313)
!2315 = !DILocation(line: 351, column: 7, scope: !2286)
!2316 = !DILocation(line: 353, column: 15, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 352, column: 5)
!2318 = !DILocation(line: 354, column: 21, scope: !2317)
!2319 = !DILocation(line: 355, column: 7, scope: !2317)
!2320 = !DILocation(line: 358, column: 9, scope: !2300)
!2321 = !DILocation(line: 0, scope: !2300)
!2322 = !DILocation(line: 358, column: 7, scope: !2286)
!2323 = !DILocation(line: 360, column: 26, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 360, column: 11)
!2325 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 359, column: 5)
!2326 = !DILocation(line: 360, column: 11, scope: !2325)
!2327 = !DILocation(line: 362, column: 12, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 361, column: 2)
!2329 = !DILocation(line: 363, column: 18, scope: !2328)
!2330 = !DILocation(line: 364, column: 4, scope: !2328)
!2331 = !DILocation(line: 366, column: 32, scope: !2325)
!2332 = !DILocation(line: 366, column: 14, scope: !2325)
!2333 = !DILocation(line: 366, column: 7, scope: !2325)
!2334 = !DILocation(line: 366, column: 30, scope: !2325)
!2335 = !DILocation(line: 367, column: 33, scope: !2325)
!2336 = !DILocation(line: 367, column: 45, scope: !2325)
!2337 = !DILocation(line: 367, column: 32, scope: !2325)
!2338 = !DILocation(line: 367, column: 14, scope: !2325)
!2339 = !DILocation(line: 367, column: 7, scope: !2325)
!2340 = !DILocation(line: 367, column: 30, scope: !2325)
!2341 = !DILocation(line: 369, column: 16, scope: !2325)
!2342 = !DILocation(line: 370, column: 22, scope: !2325)
!2343 = !DILocation(line: 371, column: 7, scope: !2325)
!2344 = !DILocation(line: 377, column: 26, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 377, column: 11)
!2346 = !DILocation(line: 377, column: 11, scope: !2299)
!2347 = !DILocation(line: 379, column: 12, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 378, column: 2)
!2349 = !DILocation(line: 380, column: 18, scope: !2348)
!2350 = !DILocation(line: 381, column: 4, scope: !2348)
!2351 = !DILocation(line: 384, column: 15, scope: !2299)
!2352 = !DILocation(line: 384, column: 26, scope: !2299)
!2353 = !DILocation(line: 384, column: 34, scope: !2299)
!2354 = !DILocation(line: 0, scope: !2299)
!2355 = !DILocation(line: 389, column: 32, scope: !2299)
!2356 = !DILocation(line: 389, column: 14, scope: !2299)
!2357 = !DILocation(line: 389, column: 7, scope: !2299)
!2358 = !DILocation(line: 389, column: 30, scope: !2299)
!2359 = !DILocation(line: 390, column: 46, scope: !2299)
!2360 = !DILocation(line: 390, column: 32, scope: !2299)
!2361 = !DILocation(line: 390, column: 14, scope: !2299)
!2362 = !DILocation(line: 390, column: 7, scope: !2299)
!2363 = !DILocation(line: 390, column: 30, scope: !2299)
!2364 = !DILocation(line: 391, column: 32, scope: !2299)
!2365 = !DILocation(line: 391, column: 7, scope: !2299)
!2366 = !DILocation(line: 391, column: 30, scope: !2299)
!2367 = !DILocation(line: 392, column: 46, scope: !2299)
!2368 = !DILocation(line: 392, column: 32, scope: !2299)
!2369 = !DILocation(line: 392, column: 7, scope: !2299)
!2370 = !DILocation(line: 392, column: 30, scope: !2299)
!2371 = !DILocation(line: 394, column: 16, scope: !2299)
!2372 = !DILocation(line: 395, column: 22, scope: !2299)
!2373 = !DILocation(line: 396, column: 7, scope: !2299)
!2374 = !DILocation(line: 398, column: 1, scope: !2286)
!2375 = distinct !DISubprogram(name: "one_utf32_to_utf8", scope: !3, file: !3, line: 308, type: !2089, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2376)
!2376 = !{!2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2377 = !DILocalVariable(name: "bigend", arg: 1, scope: !2375, file: !3, line: 308, type: !131)
!2378 = !DILocalVariable(name: "inbufp", arg: 2, scope: !2375, file: !3, line: 308, type: !226)
!2379 = !DILocalVariable(name: "inbytesleftp", arg: 3, scope: !2375, file: !3, line: 308, type: !229)
!2380 = !DILocalVariable(name: "outbufp", arg: 4, scope: !2375, file: !3, line: 309, type: !772)
!2381 = !DILocalVariable(name: "outbytesleftp", arg: 5, scope: !2375, file: !3, line: 309, type: !229)
!2382 = !DILocalVariable(name: "s", scope: !2375, file: !3, line: 311, type: !219)
!2383 = !DILocalVariable(name: "rval", scope: !2375, file: !3, line: 312, type: !128)
!2384 = !DILocalVariable(name: "inbuf", scope: !2375, file: !3, line: 313, type: !227)
!2385 = !DILocation(line: 0, scope: !2375)
!2386 = !DILocation(line: 315, column: 7, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 315, column: 7)
!2388 = !DILocation(line: 315, column: 21, scope: !2387)
!2389 = !DILocation(line: 315, column: 7, scope: !2375)
!2390 = !DILocation(line: 318, column: 11, scope: !2375)
!2391 = !DILocation(line: 320, column: 14, scope: !2375)
!2392 = !DILocation(line: 320, column: 8, scope: !2375)
!2393 = !DILocation(line: 320, column: 30, scope: !2375)
!2394 = !DILocation(line: 321, column: 8, scope: !2375)
!2395 = !DILocation(line: 321, column: 30, scope: !2375)
!2396 = !DILocation(line: 321, column: 5, scope: !2375)
!2397 = !DILocation(line: 322, column: 8, scope: !2375)
!2398 = !DILocation(line: 322, column: 30, scope: !2375)
!2399 = !DILocation(line: 322, column: 5, scope: !2375)
!2400 = !DILocation(line: 323, column: 8, scope: !2375)
!2401 = !DILocation(line: 323, column: 5, scope: !2375)
!2402 = !DILocation(line: 325, column: 9, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 325, column: 7)
!2404 = !DILocation(line: 325, column: 23, scope: !2403)
!2405 = !DILocation(line: 325, column: 39, scope: !2403)
!2406 = !DILocation(line: 328, column: 10, scope: !2375)
!2407 = !DILocation(line: 329, column: 7, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 329, column: 7)
!2409 = !DILocation(line: 329, column: 7, scope: !2375)
!2410 = !DILocation(line: 332, column: 11, scope: !2375)
!2411 = !DILocation(line: 333, column: 17, scope: !2375)
!2412 = !DILocation(line: 334, column: 3, scope: !2375)
!2413 = !DILocation(line: 335, column: 1, scope: !2375)
!2414 = distinct !DISubprogram(name: "one_utf16_to_utf8", scope: !3, file: !3, line: 401, type: !2089, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2415)
!2415 = !{!2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2428}
!2416 = !DILocalVariable(name: "bigend", arg: 1, scope: !2414, file: !3, line: 401, type: !131)
!2417 = !DILocalVariable(name: "inbufp", arg: 2, scope: !2414, file: !3, line: 401, type: !226)
!2418 = !DILocalVariable(name: "inbytesleftp", arg: 3, scope: !2414, file: !3, line: 401, type: !229)
!2419 = !DILocalVariable(name: "outbufp", arg: 4, scope: !2414, file: !3, line: 402, type: !772)
!2420 = !DILocalVariable(name: "outbytesleftp", arg: 5, scope: !2414, file: !3, line: 402, type: !229)
!2421 = !DILocalVariable(name: "s", scope: !2414, file: !3, line: 404, type: !219)
!2422 = !DILocalVariable(name: "inbuf", scope: !2414, file: !3, line: 405, type: !227)
!2423 = !DILocalVariable(name: "rval", scope: !2414, file: !3, line: 406, type: !128)
!2424 = !DILocalVariable(name: "hi", scope: !2425, file: !3, line: 419, type: !219)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 418, column: 5)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 417, column: 12)
!2427 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 414, column: 7)
!2428 = !DILocalVariable(name: "lo", scope: !2425, file: !3, line: 419, type: !219)
!2429 = !DILocation(line: 0, scope: !2414)
!2430 = !DILocation(line: 405, column: 24, scope: !2414)
!2431 = !DILocation(line: 408, column: 7, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 408, column: 7)
!2433 = !DILocation(line: 408, column: 21, scope: !2432)
!2434 = !DILocation(line: 408, column: 7, scope: !2414)
!2435 = !DILocation(line: 410, column: 14, scope: !2414)
!2436 = !DILocation(line: 410, column: 8, scope: !2414)
!2437 = !DILocation(line: 410, column: 30, scope: !2414)
!2438 = !DILocation(line: 411, column: 14, scope: !2414)
!2439 = !DILocation(line: 411, column: 8, scope: !2414)
!2440 = !DILocation(line: 411, column: 5, scope: !2414)
!2441 = !DILocation(line: 414, column: 19, scope: !2427)
!2442 = !DILocation(line: 417, column: 24, scope: !2426)
!2443 = !DILocation(line: 0, scope: !2425)
!2444 = !DILocation(line: 420, column: 25, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 420, column: 11)
!2446 = !DILocation(line: 420, column: 11, scope: !2425)
!2447 = !DILocation(line: 423, column: 13, scope: !2425)
!2448 = !DILocation(line: 426, column: 23, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 426, column: 11)
!2450 = !DILocation(line: 423, column: 35, scope: !2425)
!2451 = !DILocation(line: 424, column: 13, scope: !2425)
!2452 = !DILocation(line: 424, column: 10, scope: !2425)
!2453 = !DILocation(line: 429, column: 25, scope: !2425)
!2454 = !DILocation(line: 429, column: 33, scope: !2425)
!2455 = !DILocation(line: 429, column: 49, scope: !2425)
!2456 = !DILocation(line: 430, column: 5, scope: !2426)
!2457 = !DILocation(line: 432, column: 10, scope: !2414)
!2458 = !DILocation(line: 433, column: 7, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 433, column: 7)
!2460 = !DILocation(line: 433, column: 7, scope: !2414)
!2461 = !DILocation(line: 438, column: 9, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 438, column: 7)
!2463 = !DILocation(line: 0, scope: !2462)
!2464 = !DILocation(line: 438, column: 7, scope: !2414)
!2465 = !DILocation(line: 440, column: 15, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 439, column: 5)
!2467 = !DILocation(line: 441, column: 21, scope: !2466)
!2468 = !DILocation(line: 442, column: 5, scope: !2466)
!2469 = !DILocation(line: 445, column: 15, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 444, column: 5)
!2471 = !DILocation(line: 446, column: 21, scope: !2470)
!2472 = !DILocation(line: 449, column: 1, scope: !2414)
!2473 = distinct !DISubprogram(name: "convert_ucn", scope: !3, file: !3, line: 1089, type: !263, scopeLine: 1091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2474)
!2474 = !{!2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485}
!2475 = !DILocalVariable(name: "pfile", arg: 1, scope: !2473, file: !3, line: 1089, type: !265)
!2476 = !DILocalVariable(name: "from", arg: 2, scope: !2473, file: !3, line: 1089, type: !227)
!2477 = !DILocalVariable(name: "limit", arg: 3, scope: !2473, file: !3, line: 1089, type: !227)
!2478 = !DILocalVariable(name: "tbuf", arg: 4, scope: !2473, file: !3, line: 1090, type: !340)
!2479 = !DILocalVariable(name: "cvt", arg: 5, scope: !2473, file: !3, line: 1090, type: !333)
!2480 = !DILocalVariable(name: "ucn", scope: !2473, file: !3, line: 1092, type: !219)
!2481 = !DILocalVariable(name: "buf", scope: !2473, file: !3, line: 1093, type: !779)
!2482 = !DILocalVariable(name: "bufp", scope: !2473, file: !3, line: 1094, type: !124)
!2483 = !DILocalVariable(name: "bytesleft", scope: !2473, file: !3, line: 1095, type: !133)
!2484 = !DILocalVariable(name: "rval", scope: !2473, file: !3, line: 1096, type: !128)
!2485 = !DILocalVariable(name: "nst", scope: !2473, file: !3, line: 1097, type: !1013)
!2486 = !DILocation(line: 0, scope: !2473)
!2487 = !DILocation(line: 1090, column: 55, scope: !2473)
!2488 = !DILocation(line: 1093, column: 3, scope: !2473)
!2489 = !DILocation(line: 1093, column: 9, scope: !2473)
!2490 = !DILocation(line: 1094, column: 3, scope: !2473)
!2491 = !DILocation(line: 1094, column: 10, scope: !2473)
!2492 = !DILocation(line: 1095, column: 3, scope: !2473)
!2493 = !DILocation(line: 1095, column: 10, scope: !2473)
!2494 = !DILocation(line: 1097, column: 3, scope: !2473)
!2495 = !DILocation(line: 1097, column: 26, scope: !2473)
!2496 = !DILocation(line: 1099, column: 7, scope: !2473)
!2497 = !DILocation(line: 1100, column: 9, scope: !2473)
!2498 = !DILocation(line: 1102, column: 10, scope: !2473)
!2499 = !DILocation(line: 1103, column: 7, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1103, column: 7)
!2501 = !DILocation(line: 1103, column: 7, scope: !2473)
!2502 = !DILocation(line: 1105, column: 7, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 1104, column: 5)
!2504 = !DILocation(line: 1105, column: 13, scope: !2503)
!2505 = !DILocation(line: 1106, column: 7, scope: !2503)
!2506 = !DILocation(line: 1108, column: 5, scope: !2503)
!2507 = !DILocation(line: 1109, column: 13, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 1109, column: 12)
!2509 = !DILocation(line: 1109, column: 12, scope: !2500)
!2510 = !DILocation(line: 1110, column: 5, scope: !2508)
!2511 = !DILocation(line: 1113, column: 10, scope: !2473)
!2512 = !DILocation(line: 1114, column: 1, scope: !2473)
!2513 = !DILocation(line: 1113, column: 3, scope: !2473)
!2514 = distinct !DISubprogram(name: "convert_hex", scope: !3, file: !3, line: 1173, type: !263, scopeLine: 1175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2515)
!2515 = !{!2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526}
!2516 = !DILocalVariable(name: "pfile", arg: 1, scope: !2514, file: !3, line: 1173, type: !265)
!2517 = !DILocalVariable(name: "from", arg: 2, scope: !2514, file: !3, line: 1173, type: !227)
!2518 = !DILocalVariable(name: "limit", arg: 3, scope: !2514, file: !3, line: 1173, type: !227)
!2519 = !DILocalVariable(name: "tbuf", arg: 4, scope: !2514, file: !3, line: 1174, type: !340)
!2520 = !DILocalVariable(name: "cvt", arg: 5, scope: !2514, file: !3, line: 1174, type: !333)
!2521 = !DILocalVariable(name: "c", scope: !2514, file: !3, line: 1176, type: !219)
!2522 = !DILocalVariable(name: "n", scope: !2514, file: !3, line: 1176, type: !219)
!2523 = !DILocalVariable(name: "overflow", scope: !2514, file: !3, line: 1176, type: !219)
!2524 = !DILocalVariable(name: "digits_found", scope: !2514, file: !3, line: 1177, type: !128)
!2525 = !DILocalVariable(name: "width", scope: !2514, file: !3, line: 1178, type: !133)
!2526 = !DILocalVariable(name: "mask", scope: !2514, file: !3, line: 1179, type: !133)
!2527 = !DILocation(line: 0, scope: !2514)
!2528 = !DILocation(line: 1174, column: 55, scope: !2514)
!2529 = !DILocation(line: 1178, column: 22, scope: !2514)
!2530 = !DILocation(line: 1178, column: 18, scope: !2514)
!2531 = !DILocation(line: 1179, column: 17, scope: !2514)
!2532 = !DILocation(line: 1181, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1181, column: 7)
!2534 = !DILocation(line: 1181, column: 7, scope: !2514)
!2535 = !DILocation(line: 1182, column: 5, scope: !2533)
!2536 = !DILocation(line: 1186, column: 3, scope: !2514)
!2537 = !DILocation(line: 1186, column: 15, scope: !2514)
!2538 = !DILocation(line: 1188, column: 11, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1187, column: 5)
!2540 = !DILocation(line: 1189, column: 13, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 1189, column: 11)
!2542 = !DILocation(line: 1189, column: 11, scope: !2539)
!2543 = !DILocation(line: 1192, column: 21, scope: !2539)
!2544 = !DILocation(line: 1192, column: 16, scope: !2539)
!2545 = !DILocation(line: 1193, column: 14, scope: !2539)
!2546 = !DILocation(line: 1193, column: 22, scope: !2539)
!2547 = !DILocation(line: 1193, column: 20, scope: !2539)
!2548 = distinct !{!2548, !2536, !2549}
!2549 = !DILocation(line: 1195, column: 5, scope: !2514)
!2550 = !DILocation(line: 1197, column: 8, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1197, column: 7)
!2552 = !DILocation(line: 1197, column: 7, scope: !2514)
!2553 = !DILocation(line: 1199, column: 7, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 1198, column: 5)
!2555 = !DILocation(line: 1201, column: 7, scope: !2554)
!2556 = !DILocation(line: 1204, column: 19, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1204, column: 7)
!2558 = !DILocation(line: 1204, column: 27, scope: !2557)
!2559 = !DILocation(line: 1204, column: 21, scope: !2557)
!2560 = !DILocation(line: 1204, column: 16, scope: !2557)
!2561 = !DILocation(line: 1204, column: 7, scope: !2514)
!2562 = !DILocation(line: 1206, column: 7, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1205, column: 5)
!2564 = !DILocation(line: 1208, column: 9, scope: !2563)
!2565 = !DILocation(line: 1209, column: 5, scope: !2563)
!2566 = !DILocation(line: 1211, column: 3, scope: !2514)
!2567 = !DILocation(line: 1213, column: 3, scope: !2514)
!2568 = !DILocation(line: 1214, column: 1, scope: !2514)
!2569 = distinct !DISubprogram(name: "convert_oct", scope: !3, file: !3, line: 1223, type: !263, scopeLine: 1225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581}
!2571 = !DILocalVariable(name: "pfile", arg: 1, scope: !2569, file: !3, line: 1223, type: !265)
!2572 = !DILocalVariable(name: "from", arg: 2, scope: !2569, file: !3, line: 1223, type: !227)
!2573 = !DILocalVariable(name: "limit", arg: 3, scope: !2569, file: !3, line: 1223, type: !227)
!2574 = !DILocalVariable(name: "tbuf", arg: 4, scope: !2569, file: !3, line: 1224, type: !340)
!2575 = !DILocalVariable(name: "cvt", arg: 5, scope: !2569, file: !3, line: 1224, type: !333)
!2576 = !DILocalVariable(name: "count", scope: !2569, file: !3, line: 1226, type: !133)
!2577 = !DILocalVariable(name: "c", scope: !2569, file: !3, line: 1227, type: !219)
!2578 = !DILocalVariable(name: "n", scope: !2569, file: !3, line: 1227, type: !219)
!2579 = !DILocalVariable(name: "width", scope: !2569, file: !3, line: 1228, type: !133)
!2580 = !DILocalVariable(name: "mask", scope: !2569, file: !3, line: 1229, type: !133)
!2581 = !DILocalVariable(name: "overflow", scope: !2569, file: !3, line: 1230, type: !127)
!2582 = !DILocation(line: 0, scope: !2569)
!2583 = !DILocation(line: 1224, column: 55, scope: !2569)
!2584 = !DILocation(line: 1228, column: 22, scope: !2569)
!2585 = !DILocation(line: 1228, column: 18, scope: !2569)
!2586 = !DILocation(line: 1229, column: 17, scope: !2569)
!2587 = !DILocation(line: 1232, column: 3, scope: !2569)
!2588 = !DILocation(line: 1232, column: 15, scope: !2569)
!2589 = !DILocation(line: 1232, column: 23, scope: !2569)
!2590 = !DILocation(line: 1234, column: 11, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 1233, column: 5)
!2592 = !DILocation(line: 1235, column: 19, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 1235, column: 11)
!2594 = !DILocation(line: 1237, column: 11, scope: !2591)
!2595 = !DILocation(line: 1239, column: 14, scope: !2591)
!2596 = !DILocation(line: 1239, column: 20, scope: !2591)
!2597 = !DILocation(line: 1239, column: 24, scope: !2591)
!2598 = distinct !{!2598, !2587, !2599}
!2599 = !DILocation(line: 1240, column: 5, scope: !2569)
!2600 = !DILocation(line: 1242, column: 7, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 1242, column: 7)
!2602 = !DILocation(line: 1242, column: 15, scope: !2601)
!2603 = !DILocation(line: 1242, column: 9, scope: !2601)
!2604 = !DILocation(line: 1242, column: 7, scope: !2569)
!2605 = !DILocation(line: 1244, column: 7, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 1243, column: 5)
!2607 = !DILocation(line: 1246, column: 9, scope: !2606)
!2608 = !DILocation(line: 1247, column: 5, scope: !2606)
!2609 = !DILocation(line: 1249, column: 3, scope: !2569)
!2610 = !DILocation(line: 1251, column: 3, scope: !2569)
!2611 = distinct !DISubprogram(name: "width_to_mask", scope: !3, file: !3, line: 823, type: !2612, scopeLine: 824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2614)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!133, !133}
!2614 = !{!2615}
!2615 = !DILocalVariable(name: "width", arg: 1, scope: !2611, file: !3, line: 823, type: !133)
!2616 = !DILocation(line: 0, scope: !2611)
!2617 = !DILocation(line: 825, column: 11, scope: !2611)
!2618 = !DILocation(line: 826, column: 7, scope: !2611)
!2619 = !DILocation(line: 830, column: 1, scope: !2611)
