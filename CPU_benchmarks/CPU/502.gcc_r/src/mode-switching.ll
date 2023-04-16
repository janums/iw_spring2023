; ModuleID = 'mode-switching.bc'
source_filename = "mode-switching.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type opaque
%struct.control_flow_graph = type { %struct.basic_block_def*, %struct.basic_block_def*, %struct.VEC_basic_block_gc*, i32, i32, i32, %struct.VEC_basic_block_gc*, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { %struct.VEC_edge_gc*, %struct.VEC_edge_gc*, i8*, %struct.loop*, [2 x %struct.et_node*], %struct.basic_block_def*, %struct.basic_block_def*, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%struct.VEC_edge_gc = type { %struct.VEC_edge_base }
%struct.VEC_edge_base = type { i32, i32, [1 x %struct.edge_def*] }
%struct.edge_def = type { %struct.basic_block_def*, %struct.basic_block_def*, %union.edge_def_insns, i8*, %union.tree_node*, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { %struct.gimple_seq_d* }
%struct.loop = type opaque
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
%struct.loops = type opaque
%union.tree_node = type { %struct.tree_function_decl }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, %struct.function*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, %union.tree_node*, %union.tree_node*, %union.tree_node*, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, %struct.rtx_def* }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, %union.tree_node*, i40, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_decl* }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, %union.tree_node*, %union.tree_node* }
%struct.tree_common = type { %struct.tree_base, %union.tree_node*, %union.tree_node* }
%struct.tree_base = type { i64 }
%struct.lang_decl = type opaque
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type { %struct.unnamed_section }
%struct.unnamed_section = type { %struct.section_common, void (i8*)*, i8*, %union.section* }
%struct.section_common = type { i32 }
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.bb_info = type { %struct.seginfo*, i32 }
%struct.seginfo = type { i32, %struct.rtx_def*, i32, %struct.seginfo*, i64 }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.edge_list = type { i32, i32, %struct.edge_def** }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"mode_sw\00", align 1
@pass_mode_switching = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_mode_switching, i32 ()* @rest_of_handle_mode_switching, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 143, i32 0, i32 0, i32 0, i32 0, i32 132097 } }, align 8, !dbg !0
@optimize_mode_switching.num_modes = internal unnamed_addr constant [4 x i32] [i32 5, i32 5, i32 5, i32 5], align 16, !dbg !1834
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@antic = internal unnamed_addr global %struct.simple_bitmap_def** null, align 8, !dbg !1947
@transp = internal unnamed_addr global %struct.simple_bitmap_def** null, align 8, !dbg !1949
@comp = internal unnamed_addr global %struct.simple_bitmap_def** null, align 8, !dbg !1951
@.str.1 = private unnamed_addr constant [17 x i8] c"mode-switching.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@hard_regno_nregs = external dso_local local_unnamed_addr global [53 x [87 x i8]], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1983 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1996, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1997, metadata !DIExpression()), !dbg !1998
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1999
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2000
  ret i32 %call, !dbg !2001
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2002 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2004
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2005
  ret i32 %call, !dbg !2006
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2007 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2062, metadata !DIExpression()), !dbg !2063
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2064
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2064
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2064
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2064
  %cmp = icmp uge i8* %0, %1, !dbg !2064
  %conv1 = zext i1 %cmp to i64, !dbg !2064
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2064
  %tobool = icmp eq i64 %expval, 0, !dbg !2064
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2064

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2064
  br label %cond.end, !dbg !2064

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2064
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2064
  %2 = load i8, i8* %0, align 1, !dbg !2064
  %conv3 = zext i8 %2 to i32, !dbg !2064
  br label %cond.end, !dbg !2064

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2064
  ret i32 %cond, !dbg !2065
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2066 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2068, metadata !DIExpression()), !dbg !2069
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2070
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2070
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2070
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2070
  %cmp = icmp uge i8* %0, %1, !dbg !2070
  %conv1 = zext i1 %cmp to i64, !dbg !2070
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2070
  %tobool = icmp eq i64 %expval, 0, !dbg !2070
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2070

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2070
  br label %cond.end, !dbg !2070

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2070
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2070
  %2 = load i8, i8* %0, align 1, !dbg !2070
  %conv3 = zext i8 %2 to i32, !dbg !2070
  br label %cond.end, !dbg !2070

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2070
  ret i32 %cond, !dbg !2071
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2072 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2073
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2073
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2073
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2073
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2073
  %cmp = icmp uge i8* %1, %2, !dbg !2073
  %conv1 = zext i1 %cmp to i64, !dbg !2073
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2073
  %tobool = icmp eq i64 %expval, 0, !dbg !2073
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2073

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2073
  br label %cond.end, !dbg !2073

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2073
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2073
  %3 = load i8, i8* %1, align 1, !dbg !2073
  %conv3 = zext i8 %3 to i32, !dbg !2073
  br label %cond.end, !dbg !2073

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2073
  ret i32 %cond, !dbg !2074
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2075 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2079, metadata !DIExpression()), !dbg !2080
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2081
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2082
  ret i32 %call, !dbg !2083
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2084 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2088, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2089, metadata !DIExpression()), !dbg !2090
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2091
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2091
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2091
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2091
  %cmp = icmp uge i8* %0, %1, !dbg !2091
  %conv1 = zext i1 %cmp to i64, !dbg !2091
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2091
  %tobool = icmp eq i64 %expval, 0, !dbg !2091
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2091

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2091
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2091
  br label %cond.end, !dbg !2091

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2091
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2091
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2091
  store i8 %conv2, i8* %0, align 1, !dbg !2091
  %conv6 = and i32 %__c, 255, !dbg !2091
  br label %cond.end, !dbg !2091

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2091
  ret i32 %cond, !dbg !2092
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2093 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2095, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2096, metadata !DIExpression()), !dbg !2097
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2098
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2098
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2098
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2098
  %cmp = icmp uge i8* %0, %1, !dbg !2098
  %conv1 = zext i1 %cmp to i64, !dbg !2098
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2098
  %tobool = icmp eq i64 %expval, 0, !dbg !2098
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2098

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2098
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2098
  br label %cond.end, !dbg !2098

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2098
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2098
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2098
  store i8 %conv2, i8* %0, align 1, !dbg !2098
  %conv6 = and i32 %__c, 255, !dbg !2098
  br label %cond.end, !dbg !2098

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2098
  ret i32 %cond, !dbg !2099
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2100 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2102, metadata !DIExpression()), !dbg !2103
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2104
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2104
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2104
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2104
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2104
  %cmp = icmp uge i8* %1, %2, !dbg !2104
  %conv1 = zext i1 %cmp to i64, !dbg !2104
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2104
  %tobool = icmp eq i64 %expval, 0, !dbg !2104
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2104

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2104
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2104
  br label %cond.end, !dbg !2104

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2104
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2104
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2104
  store i8 %conv4, i8* %1, align 1, !dbg !2104
  %conv6 = and i32 %__c, 255, !dbg !2104
  br label %cond.end, !dbg !2104

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2104
  ret i32 %cond, !dbg !2105
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2106 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2112, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2113, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2114, metadata !DIExpression()), !dbg !2115
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2116
  ret i64 %call, !dbg !2117
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2118 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2120, metadata !DIExpression()), !dbg !2121
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2122
  %0 = load i32, i32* %_flags, align 8, !dbg !2122
  %and = lshr i32 %0, 4, !dbg !2122
  %and.lobit = and i32 %and, 1, !dbg !2122
  ret i32 %and.lobit, !dbg !2123
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2124 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2126, metadata !DIExpression()), !dbg !2127
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2128
  %0 = load i32, i32* %_flags, align 8, !dbg !2128
  %and = lshr i32 %0, 5, !dbg !2128
  %and.lobit = and i32 %and, 1, !dbg !2128
  ret i32 %and.lobit, !dbg !2129
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2130 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2133, metadata !DIExpression()), !dbg !2134
  %__c.off = add i32 %__c, 128, !dbg !2135
  %0 = icmp ult i32 %__c.off, 384, !dbg !2135
  br i1 %0, label %cond.true, label %cond.end, !dbg !2135

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2136
  %1 = load i32*, i32** %call, align 8, !dbg !2137
  %idxprom = sext i32 %__c to i64, !dbg !2138
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2138
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2138
  br label %cond.end, !dbg !2139

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2139
  ret i32 %cond, !dbg !2140
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2141 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2143, metadata !DIExpression()), !dbg !2144
  %__c.off = add i32 %__c, 128, !dbg !2145
  %0 = icmp ult i32 %__c.off, 384, !dbg !2145
  br i1 %0, label %cond.true, label %cond.end, !dbg !2145

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2146
  %1 = load i32*, i32** %call, align 8, !dbg !2147
  %idxprom = sext i32 %__c to i64, !dbg !2148
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2148
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2148
  br label %cond.end, !dbg !2149

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2149
  ret i32 %cond, !dbg !2150
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2151 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2156, metadata !DIExpression()), !dbg !2157
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2158
  %conv = trunc i64 %call to i32, !dbg !2159
  ret i32 %conv, !dbg !2160
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2161 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2165, metadata !DIExpression()), !dbg !2166
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2167
  ret i64 %call, !dbg !2168
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2169 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2174, metadata !DIExpression()), !dbg !2175
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2176
  ret i64 %call, !dbg !2177
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2178 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2184, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2185, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2186, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2187, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2188, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 0, metadata !2189, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2190, metadata !DIExpression()), !dbg !2194
  br label %while.cond, !dbg !2195

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2196
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2194
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2190, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2189, metadata !DIExpression()), !dbg !2194
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2197
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2195

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2198
  %div = lshr i64 %add, 1, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %div, metadata !2191, metadata !DIExpression()), !dbg !2194
  %mul = mul i64 %div, %__size, !dbg !2201
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2202
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2192, metadata !DIExpression()), !dbg !2194
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2203
  call void @llvm.dbg.value(metadata i32 %call, metadata !2193, metadata !DIExpression()), !dbg !2194
  %cmp1 = icmp slt i32 %call, 0, !dbg !2204
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2206

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2207
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2209

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2189, metadata !DIExpression()), !dbg !2194
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2194
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2194
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2190, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2189, metadata !DIExpression()), !dbg !2194
  br label %while.cond, !dbg !2195, !llvm.loop !2211

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2194
  ret i8* %retval.0, !dbg !2213
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2214 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2220, metadata !DIExpression()), !dbg !2221
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2222
  ret double %call, !dbg !2223
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2224 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2233, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2234, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i32 %base, metadata !2235, metadata !DIExpression()), !dbg !2236
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2237
  ret i64 %call, !dbg !2238
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2239 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2245, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2246, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 %base, metadata !2247, metadata !DIExpression()), !dbg !2248
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2249
  ret i64 %call, !dbg !2250
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2251 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2262, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2263, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %base, metadata !2264, metadata !DIExpression()), !dbg !2265
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2266
  ret i64 %call, !dbg !2267
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2268 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2272, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2273, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i32 %base, metadata !2274, metadata !DIExpression()), !dbg !2275
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2276
  ret i64 %call, !dbg !2277
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2278 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2318, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2319, metadata !DIExpression()), !dbg !2320
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2321
  ret i32 %call, !dbg !2322
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2323 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2325, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2326, metadata !DIExpression()), !dbg !2327
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2328
  ret i32 %call, !dbg !2329
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2330 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2335, metadata !DIExpression()), !dbg !2336
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2337
  ret i32 %call, !dbg !2338
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2339 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2343, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2344, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2345, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2346, metadata !DIExpression()), !dbg !2347
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2348
  ret i32 %call, !dbg !2349
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2350 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2354, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2355, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2356, metadata !DIExpression()), !dbg !2357
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2356, metadata !DIExpression(DW_OP_deref)), !dbg !2357
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2358
  ret i32 %call, !dbg !2359
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2360 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2364, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2365, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2366, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2367, metadata !DIExpression()), !dbg !2368
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2367, metadata !DIExpression(DW_OP_deref)), !dbg !2368
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2369
  ret i32 %call, !dbg !2370
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2371 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2395, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2396, metadata !DIExpression()), !dbg !2397
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2398
  ret i32 %call, !dbg !2399
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2400 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2402, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2403, metadata !DIExpression()), !dbg !2404
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2405
  ret i32 %call, !dbg !2406
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2407 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2411, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2412, metadata !DIExpression()), !dbg !2413
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2414
  ret i32 %call, !dbg !2415
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2416 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2420, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2422, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2423, metadata !DIExpression()), !dbg !2424
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2425
  ret i32 %call, !dbg !2426
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_mode_switching() #5 !dbg !2427 {
entry:
  ret i8 1, !dbg !2428
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_mode_switching() #5 !dbg !2429 {
entry:
  %call = tail call fastcc i32 @optimize_mode_switching() #7, !dbg !2430
  ret i32 0, !dbg !2431
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @optimize_mode_switching() unnamed_addr #5 !dbg !1836 {
entry:
  %entity_map = alloca [4 x i32], align 16
  %bb_info = alloca [4 x %struct.bb_info*], align 16
  %live_now = alloca i64, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %e52 = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %current_mode = alloca [4 x i32], align 16
  %del = alloca %struct.simple_bitmap_def**, align 8
  %insert = alloca %struct.simple_bitmap_def**, align 8
  %live_at_edge = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !1843, metadata !DIExpression()), !dbg !2432
  %0 = bitcast [4 x i32]* %entity_map to i8*, !dbg !2433
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2433
  call void @llvm.dbg.declare(metadata [4 x i32]* %entity_map, metadata !1864, metadata !DIExpression()), !dbg !2434
  %1 = bitcast [4 x %struct.bb_info*]* %bb_info to i8*, !dbg !2435
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2435
  call void @llvm.dbg.declare(metadata [4 x %struct.bb_info*]* %bb_info, metadata !1865, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 0, metadata !1870, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 0, metadata !1871, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 3, metadata !1841, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 0, metadata !1869, metadata !DIExpression()), !dbg !2432
  br label %for.cond, !dbg !2437

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc ], [ 3, %entry ], !dbg !2432
  %max_num_modes.0 = phi i32 [ %max_num_modes.2, %for.inc ], [ 0, %entry ], !dbg !2432
  %n_entities.0 = phi i32 [ %n_entities.1, %for.inc ], [ 0, %entry ], !dbg !2438
  call void @llvm.dbg.value(metadata i64 %indvars.iv29, metadata !1841, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %n_entities.0, metadata !1869, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %max_num_modes.0, metadata !1870, metadata !DIExpression()), !dbg !2432
  %cmp = icmp sgt i64 %indvars.iv29, -1, !dbg !2439
  br i1 %cmp, label %for.body, label %for.end, !dbg !2440

for.body:                                         ; preds = %for.cond
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2441
  %machine = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 10, !dbg !2441
  %3 = load %struct.machine_function*, %struct.machine_function** %machine, align 8, !dbg !2441
  %arrayidx = getelementptr inbounds %struct.machine_function, %struct.machine_function* %3, i64 0, i32 4, i64 %indvars.iv29, !dbg !2441
  %4 = load i32, i32* %arrayidx, align 4, !dbg !2441
  %tobool = icmp eq i32 %4, 0, !dbg !2441
  br i1 %tobool, label %for.inc, label %if.then, !dbg !2442

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !1874, metadata !DIExpression()), !dbg !2443
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2444
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2444
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !2444
  %6 = load i32, i32* %x_last_basic_block, align 8, !dbg !2444
  %conv = sext i32 %6 to i64, !dbg !2444
  %call = tail call i8* @xcalloc(i64 %conv, i64 16) #6, !dbg !2444
  %idxprom2 = sext i32 %n_entities.0 to i64, !dbg !2445
  %arrayidx3 = getelementptr inbounds [4 x %struct.bb_info*], [4 x %struct.bb_info*]* %bb_info, i64 0, i64 %idxprom2, !dbg !2445
  %7 = bitcast %struct.bb_info** %arrayidx3 to i8**, !dbg !2446
  store i8* %call, i8** %7, align 8, !dbg !2446
  %inc = add nsw i32 %n_entities.0, 1, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1869, metadata !DIExpression()), !dbg !2432
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %entity_map, i64 0, i64 %idxprom2, !dbg !2448
  %8 = trunc i64 %indvars.iv29 to i32, !dbg !2449
  store i32 %8, i32* %arrayidx5, align 4, !dbg !2449
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* @optimize_mode_switching.num_modes, i64 0, i64 %indvars.iv29, !dbg !2450
  %9 = load i32, i32* %arrayidx7, align 4, !dbg !2450
  %cmp8 = icmp sgt i32 %9, %max_num_modes.0, !dbg !2452
  br i1 %cmp8, label %if.then10, label %for.inc, !dbg !2453

if.then10:                                        ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 %9, metadata !1870, metadata !DIExpression()), !dbg !2432
  br label %for.inc, !dbg !2454

for.inc:                                          ; preds = %for.body, %if.then10, %if.then
  %max_num_modes.2 = phi i32 [ %max_num_modes.0, %for.body ], [ %9, %if.then10 ], [ %max_num_modes.0, %if.then ], !dbg !2432
  %n_entities.1 = phi i32 [ %n_entities.0, %for.body ], [ %inc, %if.then10 ], [ %inc, %if.then ], !dbg !2438
  call void @llvm.dbg.value(metadata i32 %n_entities.1, metadata !1869, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %max_num_modes.2, metadata !1870, metadata !DIExpression()), !dbg !2432
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, -1, !dbg !2455
  call void @llvm.dbg.value(metadata i32 undef, metadata !1841, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  br label %for.cond, !dbg !2456, !llvm.loop !2457

for.end:                                          ; preds = %for.cond
  %max_num_modes.0.lcssa = phi i32 [ %max_num_modes.0, %for.cond ], !dbg !2432
  %n_entities.0.lcssa = phi i32 [ %n_entities.0, %for.cond ], !dbg !2438
  call void @llvm.dbg.value(metadata i32 %max_num_modes.0.lcssa, metadata !1870, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %n_entities.0.lcssa, metadata !1869, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %max_num_modes.0.lcssa, metadata !1870, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %n_entities.0.lcssa, metadata !1869, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %max_num_modes.0.lcssa, metadata !1870, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %n_entities.0.lcssa, metadata !1869, metadata !DIExpression()), !dbg !2432
  %tobool14 = icmp eq i32 %n_entities.0.lcssa, 0, !dbg !2459
  br i1 %tobool14, label %cleanup466, label %if.end16, !dbg !2461

if.end16:                                         ; preds = %for.end
  tail call void @df_analyze() #6, !dbg !2462
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2463
  %cfg18 = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 1, !dbg !2463
  %11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg18, align 8, !dbg !2463
  %x_last_basic_block19 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 5, !dbg !2463
  %12 = load i32, i32* %x_last_basic_block19, align 8, !dbg !2463
  %call20 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %12, i32 %n_entities.0.lcssa) #6, !dbg !2464
  store %struct.simple_bitmap_def** %call20, %struct.simple_bitmap_def*** @antic, align 8, !dbg !2465
  %13 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2466
  %cfg22 = getelementptr inbounds %struct.function, %struct.function* %13, i64 0, i32 1, !dbg !2466
  %14 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg22, align 8, !dbg !2466
  %x_last_basic_block23 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %14, i64 0, i32 5, !dbg !2466
  %15 = load i32, i32* %x_last_basic_block23, align 8, !dbg !2466
  %call24 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %15, i32 %n_entities.0.lcssa) #6, !dbg !2467
  store %struct.simple_bitmap_def** %call24, %struct.simple_bitmap_def*** @transp, align 8, !dbg !2468
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2469
  %cfg26 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !2469
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg26, align 8, !dbg !2469
  %x_last_basic_block27 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 5, !dbg !2469
  %18 = load i32, i32* %x_last_basic_block27, align 8, !dbg !2469
  %call28 = tail call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %18, i32 %n_entities.0.lcssa) #6, !dbg !2470
  store %struct.simple_bitmap_def** %call28, %struct.simple_bitmap_def*** @comp, align 8, !dbg !2471
  %19 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8, !dbg !2472
  %20 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2473
  %cfg30 = getelementptr inbounds %struct.function, %struct.function* %20, i64 0, i32 1, !dbg !2473
  %21 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg30, align 8, !dbg !2473
  %x_last_basic_block31 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %21, i64 0, i32 5, !dbg !2473
  %22 = load i32, i32* %x_last_basic_block31, align 8, !dbg !2473
  tail call void @sbitmap_vector_ones(%struct.simple_bitmap_def** %19, i32 %22) #6, !dbg !2474
  call void @llvm.dbg.value(metadata i32 %n_entities.0.lcssa, metadata !1868, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  %23 = bitcast i64* %live_now to i8*, !dbg !2475
  %24 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2476
  %25 = bitcast %struct.edge_def** %e52 to i8*, !dbg !2476
  %26 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2477
  %27 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2477
  %28 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2477
  %29 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2479
  %30 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2479
  %31 = sext i32 %n_entities.0.lcssa to i64, !dbg !2481
  br label %for.cond32, !dbg !2481

for.cond32:                                       ; preds = %for.inc192, %if.end16
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc192 ], [ %31, %if.end16 ]
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, -1, !dbg !2482
  call void @llvm.dbg.value(metadata i32 undef, metadata !1868, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  %cmp33 = icmp sgt i64 %indvars.iv27, 0, !dbg !2483
  br i1 %cmp33, label %for.body35, label %for.end194, !dbg !2484

for.body35:                                       ; preds = %for.cond32
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %entity_map, i64 0, i64 %indvars.iv.next28, !dbg !2485
  %32 = load i32, i32* %arrayidx38, align 4, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %32, metadata !1879, metadata !DIExpression()), !dbg !2486
  %idxprom39 = sext i32 %32 to i64, !dbg !2487
  %arrayidx40 = getelementptr inbounds [4 x i32], [4 x i32]* @optimize_mode_switching.num_modes, i64 0, i64 %idxprom39, !dbg !2487
  %33 = load i32, i32* %arrayidx40, align 4, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %33, metadata !1883, metadata !DIExpression()), !dbg !2486
  %arrayidx42 = getelementptr inbounds [4 x %struct.bb_info*], [4 x %struct.bb_info*]* %bb_info, i64 0, i64 %indvars.iv.next28, !dbg !2488
  %34 = load %struct.bb_info*, %struct.bb_info** %arrayidx42, align 8, !dbg !2488
  call void @llvm.dbg.value(metadata %struct.bb_info* %34, metadata !1884, metadata !DIExpression()), !dbg !2486
  %35 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2489
  %cfg44 = getelementptr inbounds %struct.function, %struct.function* %35, i64 0, i32 1, !dbg !2489
  %36 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg44, align 8, !dbg !2489
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %36, i64 0, i32 0, !dbg !2489
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2489
  br label %for.cond45, !dbg !2489

for.cond45:                                       ; preds = %if.end188, %for.body35
  %38 = phi %struct.control_flow_graph* [ %36, %for.body35 ], [ %.pre18, %if.end188 ], !dbg !2490
  %.pn6 = phi %struct.basic_block_def* [ %37, %for.body35 ], [ %bb.0, %if.end188 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn6, i64 0, i32 6, !dbg !2491
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2491
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !1842, metadata !DIExpression()), !dbg !2432
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %38, i64 0, i32 1, !dbg !2490
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2490
  %cmp48 = icmp eq %struct.basic_block_def* %bb.0, %39, !dbg !2490
  br i1 %cmp48, label %for.inc192, label %for.body50, !dbg !2489

for.body50:                                       ; preds = %for.cond45
  call void @llvm.dbg.value(metadata i32 %33, metadata !1889, metadata !DIExpression()), !dbg !2475
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #8, !dbg !2492
  call void @llvm.dbg.value(metadata i64 0, metadata !1890, metadata !DIExpression()), !dbg !2475
  store i64 0, i64* %live_now, align 8, !dbg !2493
  %call51 = call %struct.bitmap_head_def* @df_get_live_in(%struct.basic_block_def* %bb.0) #6, !dbg !2493
  call void @llvm.dbg.value(metadata i64* %live_now, metadata !1890, metadata !DIExpression(DW_OP_deref)), !dbg !2475
  call void @reg_set_to_hard_reg_set(i64* nonnull %live_now, %struct.bitmap_head_def* %call51) #6, !dbg !2493
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #8, !dbg !2495
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #8, !dbg !2496
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #8, !dbg !2497
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 0, !dbg !2497
  %call53 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2497
  %40 = extractvalue { i32, %struct.VEC_edge_gc** } %call53, 0, !dbg !2497
  store i32 %40, i32* %27, align 8, !dbg !2497
  %41 = extractvalue { i32, %struct.VEC_edge_gc** } %call53, 1, !dbg !2497
  store %struct.VEC_edge_gc** %41, %struct.VEC_edge_gc*** %28, align 8, !dbg !2497
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %24, i8* nonnull align 8 %26, i64 16, i1 false), !dbg !2497
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #8, !dbg !2497
  br label %for.cond54, !dbg !2497

for.cond54:                                       ; preds = %for.inc61, %for.body50
  %42 = load i32, i32* %29, align 8, !dbg !2498
  %43 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %30, align 8, !dbg !2498
  call void @llvm.dbg.value(metadata %struct.edge_def** %e52, metadata !1899, metadata !DIExpression(DW_OP_deref)), !dbg !2476
  %call55 = call fastcc zeroext i8 @ei_cond(i32 %42, %struct.VEC_edge_gc** %43, %struct.edge_def** nonnull %e52) #7, !dbg !2498
  %tobool56 = icmp eq i8 %call55, 0, !dbg !2497
  br i1 %tobool56, label %for.cond54.for.end62_crit_edge, label %for.body57, !dbg !2497

for.cond54.for.end62_crit_edge:                   ; preds = %for.cond54
  %.pre19 = load %struct.edge_def*, %struct.edge_def** %e52, align 8, !dbg !2499
  br label %for.end62, !dbg !2497

for.body57:                                       ; preds = %for.cond54
  %44 = load %struct.edge_def*, %struct.edge_def** %e52, align 8, !dbg !2501
  call void @llvm.dbg.value(metadata %struct.edge_def* %44, metadata !1899, metadata !DIExpression()), !dbg !2476
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %44, i64 0, i32 7, !dbg !2503
  %45 = load i32, i32* %flags, align 8, !dbg !2503
  %and = and i32 %45, 14, !dbg !2504
  %tobool58 = icmp eq i32 %and, 0, !dbg !2504
  br i1 %tobool58, label %for.inc61, label %for.end62.loopexit, !dbg !2505

for.inc61:                                        ; preds = %for.body57
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !1891, metadata !DIExpression(DW_OP_deref)), !dbg !2476
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2498
  br label %for.cond54, !dbg !2498, !llvm.loop !2506

for.end62.loopexit:                               ; preds = %for.body57
  %.lcssa = phi %struct.edge_def* [ %44, %for.body57 ], !dbg !2501
  br label %for.end62, !dbg !2499

for.end62:                                        ; preds = %for.end62.loopexit, %for.cond54.for.end62_crit_edge
  %46 = phi %struct.edge_def* [ %.pre19, %for.cond54.for.end62_crit_edge ], [ %.lcssa, %for.end62.loopexit ], !dbg !2499
  call void @llvm.dbg.value(metadata %struct.edge_def* %46, metadata !1899, metadata !DIExpression()), !dbg !2476
  %tobool63 = icmp eq %struct.edge_def* %46, null, !dbg !2499
  br i1 %tobool63, label %for.end62.if.end71_crit_edge, label %if.then64, !dbg !2508

for.end62.if.end71_crit_edge:                     ; preds = %for.end62
  br label %if.end71, !dbg !2508

if.then64:                                        ; preds = %for.end62
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2509
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2509
  %47 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2509
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %47, i64 0, i32 0, !dbg !2509
  %48 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !2509
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2511
  %49 = load i32, i32* %index, align 8, !dbg !2511
  %50 = load i64, i64* %live_now, align 8, !dbg !2512
  call void @llvm.dbg.value(metadata i64 %50, metadata !1890, metadata !DIExpression()), !dbg !2475
  %call65 = call fastcc %struct.seginfo* @new_seginfo(i32 %33, %struct.rtx_def* %48, i32 %49, i64 %50) #7, !dbg !2513
  call void @llvm.dbg.value(metadata %struct.seginfo* %call65, metadata !1885, metadata !DIExpression()), !dbg !2475
  %51 = load i32, i32* %index, align 8, !dbg !2514
  %idx.ext = sext i32 %51 to i64, !dbg !2515
  %add.ptr67 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %34, i64 %idx.ext, !dbg !2515
  call fastcc void @add_seginfo(%struct.bb_info* %add.ptr67, %struct.seginfo* %call65) #7, !dbg !2516
  %52 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8, !dbg !2517
  %53 = load i32, i32* %index, align 8, !dbg !2518
  %idxprom69 = sext i32 %53 to i64, !dbg !2517
  %arrayidx70 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %52, i64 %idxprom69, !dbg !2517
  %54 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx70, align 8, !dbg !2517
  %55 = trunc i64 %indvars.iv.next28 to i32, !dbg !2519
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %54, i32 %55) #7, !dbg !2519
  br label %if.end71, !dbg !2520

if.end71:                                         ; preds = %for.end62.if.end71_crit_edge, %if.then64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #8, !dbg !2521
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #8, !dbg !2521
  %il72 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 7, !dbg !2522
  %rtl73 = bitcast %union.basic_block_il_dependent* %il72 to %struct.rtl_bb_info**, !dbg !2522
  %56 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl73, align 8, !dbg !2522
  %head_74 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %56, i64 0, i32 0, !dbg !2522
  %index107 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2523
  br label %for.cond75, !dbg !2526

for.cond75:                                       ; preds = %for.inc168, %if.end71
  %last_mode.0 = phi i32 [ %33, %if.end71 ], [ %last_mode.2, %for.inc168 ], !dbg !2475
  %insn.0.in = phi %struct.rtx_def** [ %head_74, %if.end71 ], [ %rt_rtx172, %for.inc168 ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2527
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !1840, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %last_mode.0, metadata !1889, metadata !DIExpression()), !dbg !2475
  %cmp76 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !2528
  br i1 %cmp76, label %for.end173, label %land.rhs, !dbg !2529

land.rhs:                                         ; preds = %for.cond75
  %57 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl73, align 8, !dbg !2530
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %57, i64 0, i32 1, !dbg !2530
  %58 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2530
  %59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2530
  %rt_rtx = bitcast %union.rtunion_def* %59 to %struct.rtx_def**, !dbg !2530
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2530
  %cmp81 = icmp eq %struct.rtx_def* %insn.0, %60, !dbg !2531
  br i1 %cmp81, label %for.end173, label %for.body83, !dbg !2532

for.body83:                                       ; preds = %land.rhs
  %61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2533
  %bf.load = load i32, i32* %61, align 8, !dbg !2533
  %bf.clear = and i32 %bf.load, 65535, !dbg !2533
  %cmp84 = icmp eq i32 %bf.clear, 8, !dbg !2533
  br i1 %cmp84, label %if.then100, label %lor.lhs.false, !dbg !2533

lor.lhs.false:                                    ; preds = %for.body83
  %cmp88 = icmp eq i32 %bf.clear, 7, !dbg !2533
  br i1 %cmp88, label %if.then100, label %lor.lhs.false90, !dbg !2533

lor.lhs.false90:                                  ; preds = %lor.lhs.false
  %cmp93 = icmp eq i32 %bf.clear, 9, !dbg !2533
  br i1 %cmp93, label %if.then100, label %lor.lhs.false95, !dbg !2533

lor.lhs.false95:                                  ; preds = %lor.lhs.false90
  %cmp98 = icmp eq i32 %bf.clear, 10, !dbg !2533
  br i1 %cmp98, label %if.then100, label %for.inc168, !dbg !2534

if.then100:                                       ; preds = %lor.lhs.false95, %lor.lhs.false90, %lor.lhs.false, %for.body83
  %call101 = call i32 @ix86_mode_needed(i32 %32, %struct.rtx_def* nonnull %insn.0) #6, !dbg !2535
  call void @llvm.dbg.value(metadata i32 %call101, metadata !1900, metadata !DIExpression()), !dbg !2536
  %cmp102 = icmp ne i32 %call101, %33, !dbg !2537
  %cmp104 = icmp ne i32 %call101, %last_mode.0, !dbg !2538
  %or.cond = and i1 %cmp102, %cmp104, !dbg !2539
  br i1 %or.cond, label %if.then106, label %if.end115, !dbg !2539

if.then106:                                       ; preds = %if.then100
  call void @llvm.dbg.value(metadata i32 %call101, metadata !1889, metadata !DIExpression()), !dbg !2475
  %62 = load i32, i32* %index107, align 8, !dbg !2540
  %63 = load i64, i64* %live_now, align 8, !dbg !2541
  call void @llvm.dbg.value(metadata i64 %63, metadata !1890, metadata !DIExpression()), !dbg !2475
  %call108 = call fastcc %struct.seginfo* @new_seginfo(i32 %call101, %struct.rtx_def* nonnull %insn.0, i32 %62, i64 %63) #7, !dbg !2542
  call void @llvm.dbg.value(metadata %struct.seginfo* %call108, metadata !1885, metadata !DIExpression()), !dbg !2475
  %64 = load i32, i32* %index107, align 8, !dbg !2543
  %idx.ext110 = sext i32 %64 to i64, !dbg !2544
  %add.ptr111 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %34, i64 %idx.ext110, !dbg !2544
  call fastcc void @add_seginfo(%struct.bb_info* %add.ptr111, %struct.seginfo* %call108) #7, !dbg !2545
  %65 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8, !dbg !2546
  %66 = load i32, i32* %index107, align 8, !dbg !2547
  %idxprom113 = sext i32 %66 to i64, !dbg !2546
  %arrayidx114 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %65, i64 %idxprom113, !dbg !2546
  %67 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx114, align 8, !dbg !2546
  %68 = trunc i64 %indvars.iv.next28 to i32, !dbg !2548
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %67, i32 %68) #7, !dbg !2548
  br label %if.end115, !dbg !2549

if.end115:                                        ; preds = %if.then106, %if.then100
  %last_mode.1 = phi i32 [ %call101, %if.then106 ], [ %last_mode.0, %if.then100 ], !dbg !2475
  call void @llvm.dbg.value(metadata i32 %last_mode.1, metadata !1889, metadata !DIExpression()), !dbg !2475
  %u116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2550
  %69 = getelementptr inbounds %union.u, %union.u* %u116, i64 1, i32 0, i32 0, i64 2, !dbg !2550
  br label %for.cond120, !dbg !2552

for.cond120:                                      ; preds = %for.inc133, %if.end115
  %link.0.in.in = phi %union.rtunion_def* [ %69, %if.end115 ], [ %72, %for.inc133 ]
  %link.0.in = bitcast %union.rtunion_def* %link.0.in.in to %struct.rtx_def**, !dbg !2553
  %link.0 = load %struct.rtx_def*, %struct.rtx_def** %link.0.in, align 8, !dbg !2553
  call void @llvm.dbg.value(metadata %struct.rtx_def* %link.0, metadata !1906, metadata !DIExpression()), !dbg !2536
  %tobool121 = icmp eq %struct.rtx_def* %link.0, null, !dbg !2554
  br i1 %tobool121, label %for.end138, label %for.body122, !dbg !2554

for.body122:                                      ; preds = %for.cond120
  %70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 0, !dbg !2555
  %bf.load123 = load i32, i32* %70, align 8, !dbg !2555
  %bf.clear124 = and i32 %bf.load123, 16711680, !dbg !2555
  %cmp125 = icmp eq i32 %bf.clear124, 65536, !dbg !2558
  br i1 %cmp125, label %if.then127, label %for.inc133, !dbg !2559

if.then127:                                       ; preds = %for.body122
  %arrayidx130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2560
  %rt_rtx131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.rtx_def**, !dbg !2560
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx131, align 8, !dbg !2560
  call void @llvm.dbg.value(metadata i64* %live_now, metadata !1890, metadata !DIExpression(DW_OP_deref)), !dbg !2475
  call fastcc void @reg_dies(%struct.rtx_def* %71, i64* nonnull %live_now) #7, !dbg !2561
  br label %for.inc133, !dbg !2561

for.inc133:                                       ; preds = %for.body122, %if.then127
  %72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.0, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2562
  br label %for.cond120, !dbg !2563, !llvm.loop !2564

for.end138:                                       ; preds = %for.cond120
  %73 = getelementptr inbounds %union.u, %union.u* %u116, i64 1, i32 0, i32 0, i64 0, !dbg !2566
  %rt_rtx142 = bitcast %union.rtunion_def* %73 to %struct.rtx_def**, !dbg !2566
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx142, align 8, !dbg !2566
  call void @note_stores(%struct.rtx_def* %74, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @reg_becomes_live, i8* nonnull %23) #6, !dbg !2567
  br label %for.cond147, !dbg !2568

for.cond147:                                      ; preds = %for.inc161, %for.end138
  %link.1.in.in = phi %union.rtunion_def* [ %69, %for.end138 ], [ %77, %for.inc161 ]
  %link.1.in = bitcast %union.rtunion_def* %link.1.in.in to %struct.rtx_def**, !dbg !2570
  %link.1 = load %struct.rtx_def*, %struct.rtx_def** %link.1.in, align 8, !dbg !2570
  call void @llvm.dbg.value(metadata %struct.rtx_def* %link.1, metadata !1906, metadata !DIExpression()), !dbg !2536
  %tobool148 = icmp eq %struct.rtx_def* %link.1, null, !dbg !2571
  br i1 %tobool148, label %for.inc168.loopexit, label %for.body149, !dbg !2571

for.body149:                                      ; preds = %for.cond147
  %75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.1, i64 0, i32 0, !dbg !2572
  %bf.load150 = load i32, i32* %75, align 8, !dbg !2572
  %bf.clear152 = and i32 %bf.load150, 16711680, !dbg !2572
  %cmp153 = icmp eq i32 %bf.clear152, 393216, !dbg !2575
  br i1 %cmp153, label %if.then155, label %for.inc161, !dbg !2576

if.then155:                                       ; preds = %for.body149
  %arrayidx158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2577
  %rt_rtx159 = bitcast %union.rtunion_def* %arrayidx158 to %struct.rtx_def**, !dbg !2577
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx159, align 8, !dbg !2577
  call void @llvm.dbg.value(metadata i64* %live_now, metadata !1890, metadata !DIExpression(DW_OP_deref)), !dbg !2475
  call fastcc void @reg_dies(%struct.rtx_def* %76, i64* nonnull %live_now) #7, !dbg !2578
  br label %for.inc161, !dbg !2578

for.inc161:                                       ; preds = %for.body149, %if.then155
  %77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %link.1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2579
  br label %for.cond147, !dbg !2580, !llvm.loop !2581

for.inc168.loopexit:                              ; preds = %for.cond147
  br label %for.inc168, !dbg !2583

for.inc168:                                       ; preds = %for.inc168.loopexit, %lor.lhs.false95
  %last_mode.2 = phi i32 [ %last_mode.0, %lor.lhs.false95 ], [ %last_mode.1, %for.inc168.loopexit ], !dbg !2475
  call void @llvm.dbg.value(metadata i32 %last_mode.2, metadata !1889, metadata !DIExpression()), !dbg !2475
  %78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2583
  %rt_rtx172 = bitcast %union.rtunion_def* %78 to %struct.rtx_def**, !dbg !2583
  br label %for.cond75, !dbg !2584, !llvm.loop !2585

for.end173:                                       ; preds = %land.rhs, %for.cond75
  %last_mode.0.lcssa = phi i32 [ %last_mode.0, %land.rhs ], [ %last_mode.0, %for.cond75 ], !dbg !2475
  call void @llvm.dbg.value(metadata i32 %last_mode.0.lcssa, metadata !1889, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 %last_mode.0.lcssa, metadata !1889, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 %last_mode.0.lcssa, metadata !1889, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 %last_mode.0.lcssa, metadata !1889, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 %last_mode.0.lcssa, metadata !1889, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 %last_mode.0.lcssa, metadata !1889, metadata !DIExpression()), !dbg !2475
  %79 = load i32, i32* %index107, align 8, !dbg !2587
  %idxprom175 = sext i32 %79 to i64, !dbg !2588
  %computing = getelementptr inbounds %struct.bb_info, %struct.bb_info* %34, i64 %idxprom175, i32 1, !dbg !2589
  store i32 %last_mode.0.lcssa, i32* %computing, align 8, !dbg !2590
  %cmp177 = icmp eq i32 %last_mode.0.lcssa, %33, !dbg !2591
  br i1 %cmp177, label %if.then179, label %if.end188, !dbg !2593

if.then179:                                       ; preds = %for.end173
  %80 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl73, align 8, !dbg !2594
  %end_182 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %80, i64 0, i32 1, !dbg !2594
  %81 = load %struct.rtx_def*, %struct.rtx_def** %end_182, align 8, !dbg !2594
  %82 = load i32, i32* %index107, align 8, !dbg !2596
  %83 = load i64, i64* %live_now, align 8, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %83, metadata !1890, metadata !DIExpression()), !dbg !2475
  %call184 = call fastcc %struct.seginfo* @new_seginfo(i32 %33, %struct.rtx_def* %81, i32 %82, i64 %83) #7, !dbg !2598
  call void @llvm.dbg.value(metadata %struct.seginfo* %call184, metadata !1885, metadata !DIExpression()), !dbg !2475
  %84 = load i32, i32* %index107, align 8, !dbg !2599
  %idx.ext186 = sext i32 %84 to i64, !dbg !2600
  %add.ptr187 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %34, i64 %idx.ext186, !dbg !2600
  call fastcc void @add_seginfo(%struct.bb_info* %add.ptr187, %struct.seginfo* %call184) #7, !dbg !2601
  br label %if.end188, !dbg !2602

if.end188:                                        ; preds = %if.then179, %for.end173
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #8, !dbg !2603
  %.pre17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2490
  %cfg47.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre17, i64 0, i32 1, !dbg !2604
  %.pre18 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg47.phi.trans.insert, align 8, !dbg !2490
  br label %for.cond45, !dbg !2490, !llvm.loop !2605

for.inc192:                                       ; preds = %for.cond45
  call void @llvm.dbg.value(metadata i32 undef, metadata !1868, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  br label %for.cond32, !dbg !2607, !llvm.loop !2608

for.end194:                                       ; preds = %for.cond32
  %85 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2610
  %cfg196 = getelementptr inbounds %struct.function, %struct.function* %85, i64 0, i32 1, !dbg !2610
  %86 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg196, align 8, !dbg !2610
  %x_last_basic_block197 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %86, i64 0, i32 5, !dbg !2610
  %87 = load i32, i32* %x_last_basic_block197, align 8, !dbg !2610
  %call198 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %87, i32 %n_entities.0.lcssa) #6, !dbg !2611
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %call198, metadata !1844, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 0, metadata !1867, metadata !DIExpression()), !dbg !2432
  %88 = bitcast [4 x i32]* %current_mode to i8*, !dbg !2612
  %89 = bitcast %struct.simple_bitmap_def*** %del to i8*, !dbg !2612
  %90 = bitcast %struct.simple_bitmap_def*** %insert to i8*, !dbg !2612
  %91 = bitcast i64* %live_at_edge to i8*, !dbg !2613
  %92 = bitcast %struct.simple_bitmap_def*** %del to i8**, !dbg !2612
  %93 = bitcast %struct.simple_bitmap_def*** %insert to i8**, !dbg !2612
  %94 = sext i32 %n_entities.0.lcssa to i64, !dbg !2614
  br label %for.cond199, !dbg !2614

for.cond199:                                      ; preds = %for.end372, %for.end194
  %i.0 = phi i32 [ 0, %for.end194 ], [ %inc374, %for.end372 ], !dbg !2615
  %need_commit.0 = phi i32 [ 0, %for.end194 ], [ %need_commit.1.lcssa, %for.end372 ], !dbg !2616
  call void @llvm.dbg.value(metadata i32 %need_commit.0, metadata !1843, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1867, metadata !DIExpression()), !dbg !2432
  %cmp200 = icmp slt i32 %i.0, %max_num_modes.0.lcssa, !dbg !2617
  br i1 %cmp200, label %for.body202, label %for.end375, !dbg !2618

for.body202:                                      ; preds = %for.cond199
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %88) #8, !dbg !2619
  call void @llvm.dbg.declare(metadata [4 x i32]* %current_mode, metadata !1907, metadata !DIExpression()), !dbg !2620
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %89) #8, !dbg !2621
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %90) #8, !dbg !2622
  %95 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antic, align 8, !dbg !2623
  %96 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2624
  %cfg204 = getelementptr inbounds %struct.function, %struct.function* %96, i64 0, i32 1, !dbg !2624
  %97 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg204, align 8, !dbg !2624
  %x_last_basic_block205 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %97, i64 0, i32 5, !dbg !2624
  %98 = load i32, i32* %x_last_basic_block205, align 8, !dbg !2624
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %95, i32 %98) #6, !dbg !2625
  %99 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8, !dbg !2626
  %100 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2627
  %cfg207 = getelementptr inbounds %struct.function, %struct.function* %100, i64 0, i32 1, !dbg !2627
  %101 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg207, align 8, !dbg !2627
  %x_last_basic_block208 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %101, i64 0, i32 5, !dbg !2627
  %102 = load i32, i32* %x_last_basic_block208, align 8, !dbg !2627
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %99, i32 %102) #6, !dbg !2628
  call void @llvm.dbg.value(metadata i32 %n_entities.0.lcssa, metadata !1868, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  br label %for.cond210, !dbg !2629

for.cond210:                                      ; preds = %for.inc255, %for.body202
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc255 ], [ %94, %for.body202 ]
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, -1, !dbg !2630
  call void @llvm.dbg.value(metadata i32 undef, metadata !1868, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  %cmp211 = icmp sgt i64 %indvars.iv21, 0, !dbg !2631
  br i1 %cmp211, label %for.body213, label %for.end257, !dbg !2632

for.body213:                                      ; preds = %for.cond210
  %arrayidx215 = getelementptr inbounds [4 x i32], [4 x i32]* %current_mode, i64 0, i64 %indvars.iv.next22, !dbg !2633
  store i32 %i.0, i32* %arrayidx215, align 4, !dbg !2634
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1913, metadata !DIExpression()), !dbg !2635
  %arrayidx218 = getelementptr inbounds [4 x %struct.bb_info*], [4 x %struct.bb_info*]* %bb_info, i64 0, i64 %indvars.iv.next22, !dbg !2636
  %103 = load %struct.bb_info*, %struct.bb_info** %arrayidx218, align 8, !dbg !2636
  call void @llvm.dbg.value(metadata %struct.bb_info* %103, metadata !1917, metadata !DIExpression()), !dbg !2635
  %104 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2637
  %cfg220 = getelementptr inbounds %struct.function, %struct.function* %104, i64 0, i32 1, !dbg !2637
  %105 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg220, align 8, !dbg !2637
  %x_entry_block_ptr221 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %105, i64 0, i32 0, !dbg !2637
  %106 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr221, align 8, !dbg !2637
  br label %for.cond223, !dbg !2637

for.cond223:                                      ; preds = %for.inc252, %for.body213
  %107 = phi %struct.control_flow_graph* [ %105, %for.body213 ], [ %.pre15, %for.inc252 ], !dbg !2639
  %.pn5 = phi %struct.basic_block_def* [ %106, %for.body213 ], [ %bb.1, %for.inc252 ]
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn5, i64 0, i32 6, !dbg !2641
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !2641
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !1842, metadata !DIExpression()), !dbg !2432
  %x_exit_block_ptr226 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %107, i64 0, i32 1, !dbg !2639
  %108 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr226, align 8, !dbg !2639
  %cmp227 = icmp eq %struct.basic_block_def* %bb.1, %108, !dbg !2639
  br i1 %cmp227, label %for.inc255, label %for.body229, !dbg !2637

for.body229:                                      ; preds = %for.cond223
  %index230 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !2642
  %109 = load i32, i32* %index230, align 8, !dbg !2642
  %idxprom231 = sext i32 %109 to i64, !dbg !2645
  %seginfo = getelementptr inbounds %struct.bb_info, %struct.bb_info* %103, i64 %idxprom231, i32 0, !dbg !2646
  %110 = load %struct.seginfo*, %struct.seginfo** %seginfo, align 8, !dbg !2646
  %mode233 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %110, i64 0, i32 0, !dbg !2647
  %111 = load i32, i32* %mode233, align 8, !dbg !2647
  %cmp234 = icmp eq i32 %111, %i.0, !dbg !2648
  br i1 %cmp234, label %if.then236, label %if.end240, !dbg !2649

if.then236:                                       ; preds = %for.body229
  %112 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antic, align 8, !dbg !2650
  %arrayidx239 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %112, i64 %idxprom231, !dbg !2650
  %113 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx239, align 8, !dbg !2650
  %114 = trunc i64 %indvars.iv.next22 to i32, !dbg !2651
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %113, i32 %114) #7, !dbg !2651
  %.pre16 = load i32, i32* %index230, align 8, !dbg !2652
  %.pre20 = sext i32 %.pre16 to i64, !dbg !2654
  br label %if.end240, !dbg !2651

if.end240:                                        ; preds = %if.then236, %for.body229
  %idxprom242.pre-phi = phi i64 [ %.pre20, %if.then236 ], [ %idxprom231, %for.body229 ], !dbg !2654
  %computing244 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %103, i64 %idxprom242.pre-phi, i32 1, !dbg !2655
  %115 = load i32, i32* %computing244, align 8, !dbg !2655
  %cmp245 = icmp eq i32 %115, %i.0, !dbg !2656
  br i1 %cmp245, label %if.then247, label %for.inc252, !dbg !2657

if.then247:                                       ; preds = %if.end240
  %116 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8, !dbg !2658
  %arrayidx250 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %116, i64 %idxprom242.pre-phi, !dbg !2658
  %117 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx250, align 8, !dbg !2658
  %118 = trunc i64 %indvars.iv.next22 to i32, !dbg !2659
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %117, i32 %118) #7, !dbg !2659
  br label %for.inc252, !dbg !2659

for.inc252:                                       ; preds = %if.end240, %if.then247
  %.pre14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2639
  %cfg225.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre14, i64 0, i32 1, !dbg !2660
  %.pre15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg225.phi.trans.insert, align 8, !dbg !2639
  br label %for.cond223, !dbg !2639, !llvm.loop !2661

for.inc255:                                       ; preds = %for.cond223
  call void @llvm.dbg.value(metadata i32 undef, metadata !1868, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  br label %for.cond210, !dbg !2663, !llvm.loop !2664

for.end257:                                       ; preds = %for.cond210
  %119 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2666
  %cfg259 = getelementptr inbounds %struct.function, %struct.function* %119, i64 0, i32 1, !dbg !2666
  %120 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg259, align 8, !dbg !2666
  %x_entry_block_ptr260 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %120, i64 0, i32 0, !dbg !2666
  %121 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr260, align 8, !dbg !2666
  br label %for.cond262, !dbg !2666

for.cond262:                                      ; preds = %for.body268, %for.end257
  %122 = phi %struct.control_flow_graph* [ %120, %for.end257 ], [ %.pre9, %for.body268 ], !dbg !2668
  %.pn3 = phi %struct.basic_block_def* [ %121, %for.end257 ], [ %bb.2, %for.body268 ]
  %bb.2.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn3, i64 0, i32 6, !dbg !2670
  %bb.2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.2.in, align 8, !dbg !2670
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2, metadata !1842, metadata !DIExpression()), !dbg !2432
  %x_exit_block_ptr265 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %122, i64 0, i32 1, !dbg !2668
  %123 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr265, align 8, !dbg !2668
  %cmp266 = icmp eq %struct.basic_block_def* %bb.2, %123, !dbg !2668
  br i1 %cmp266, label %for.end277, label %for.body268, !dbg !2666

for.body268:                                      ; preds = %for.cond262
  %index269 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 9, !dbg !2671
  %124 = load i32, i32* %index269, align 8, !dbg !2671
  %idxprom270 = sext i32 %124 to i64, !dbg !2672
  %arrayidx271 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %call198, i64 %idxprom270, !dbg !2672
  %125 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx271, align 8, !dbg !2672
  %126 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8, !dbg !2673
  %arrayidx274 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %126, i64 %idxprom270, !dbg !2673
  %127 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx274, align 8, !dbg !2673
  call void @sbitmap_not(%struct.simple_bitmap_def* %125, %struct.simple_bitmap_def* %127) #6, !dbg !2674
  %.pre8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2668
  %cfg264.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre8, i64 0, i32 1, !dbg !2675
  %.pre9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg264.phi.trans.insert, align 8, !dbg !2668
  br label %for.cond262, !dbg !2668, !llvm.loop !2676

for.end277:                                       ; preds = %for.cond262
  %128 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8, !dbg !2678
  %129 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8, !dbg !2679
  %130 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antic, align 8, !dbg !2680
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def*** %del, metadata !1911, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def*** %insert, metadata !1912, metadata !DIExpression(DW_OP_deref)), !dbg !2612
  %call278 = call %struct.edge_list* @pre_edge_lcm(i32 %n_entities.0.lcssa, %struct.simple_bitmap_def** %128, %struct.simple_bitmap_def** %129, %struct.simple_bitmap_def** %130, %struct.simple_bitmap_def** %call198, %struct.simple_bitmap_def*** nonnull %insert, %struct.simple_bitmap_def*** nonnull %del) #6, !dbg !2681
  call void @llvm.dbg.value(metadata %struct.edge_list* %call278, metadata !1856, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %n_entities.0.lcssa, metadata !1868, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %call278, i64 0, i32 1, !dbg !2682
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %call278, i64 0, i32 2, !dbg !2613
  br label %for.cond280, !dbg !2683

for.cond280:                                      ; preds = %for.inc370, %for.end277
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.inc370 ], [ %94, %for.end277 ]
  %need_commit.1 = phi i32 [ %need_commit.2.lcssa, %for.inc370 ], [ %need_commit.0, %for.end277 ], !dbg !2616
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, -1, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %need_commit.1, metadata !1843, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 undef, metadata !1868, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  %cmp281 = icmp sgt i64 %indvars.iv25, 0, !dbg !2685
  br i1 %cmp281, label %for.body283, label %for.end372, !dbg !2686

for.body283:                                      ; preds = %for.cond280
  %arrayidx286 = getelementptr inbounds [4 x i32], [4 x i32]* %entity_map, i64 0, i64 %indvars.iv.next26, !dbg !2687
  %131 = load i32, i32* %arrayidx286, align 4, !dbg !2687
  %idxprom287 = sext i32 %131 to i64, !dbg !2688
  %arrayidx288 = getelementptr inbounds [4 x i32], [4 x i32]* @optimize_mode_switching.num_modes, i64 0, i64 %idxprom287, !dbg !2688
  %132 = load i32, i32* %arrayidx288, align 4, !dbg !2688
  call void @llvm.dbg.value(metadata i32 %132, metadata !1918, metadata !DIExpression()), !dbg !2689
  %133 = load i32, i32* %num_edges, align 4, !dbg !2690
  call void @llvm.dbg.value(metadata i32 %133, metadata !1841, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  %div = lshr i64 %indvars.iv.next26, 6, !dbg !2691
  %idxprom299 = and i64 %div, 67108863, !dbg !2691
  %rem = and i64 %indvars.iv.next26, 63, !dbg !2691
  %134 = shl i64 1, %rem, !dbg !2691
  %arrayidx307 = getelementptr inbounds [4 x i32], [4 x i32]* %current_mode, i64 0, i64 %indvars.iv.next26, !dbg !2613
  %135 = sext i32 %133 to i64, !dbg !2693
  br label %for.cond290, !dbg !2693

for.cond290:                                      ; preds = %cleanup, %for.body283
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %cleanup ], [ %135, %for.body283 ], !dbg !2616
  %need_commit.2 = phi i32 [ %need_commit.3, %cleanup ], [ %need_commit.1, %for.body283 ], !dbg !2616
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, -1, !dbg !2682
  call void @llvm.dbg.value(metadata i32 undef, metadata !1841, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %need_commit.2, metadata !1843, metadata !DIExpression()), !dbg !2432
  %cmp291 = icmp sgt i64 %indvars.iv23, 0, !dbg !2694
  br i1 %cmp291, label %for.body293, label %for.end335, !dbg !2695

for.body293:                                      ; preds = %for.cond290
  %136 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8, !dbg !2696
  %arrayidx295 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %136, i64 %indvars.iv.next24, !dbg !2696
  %137 = load %struct.edge_def*, %struct.edge_def** %arrayidx295, align 8, !dbg !2696
  call void @llvm.dbg.value(metadata %struct.edge_def* %137, metadata !1922, metadata !DIExpression()), !dbg !2613
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %91) #8, !dbg !2697
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %137, i64 0, i32 3, !dbg !2698
  store i8* null, i8** %aux, align 8, !dbg !2699
  %138 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %insert, align 8, !dbg !2700
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %138, metadata !1912, metadata !DIExpression()), !dbg !2612
  %arrayidx298 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %138, i64 %indvars.iv.next24, !dbg !2700
  %139 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx298, align 8, !dbg !2700
  %arrayidx300 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %139, i64 0, i32 3, i64 %idxprom299, !dbg !2700
  %140 = load i64, i64* %arrayidx300, align 8, !dbg !2700
  %141 = and i64 %140, %134, !dbg !2700
  %tobool302 = icmp eq i64 %141, 0, !dbg !2700
  br i1 %tobool302, label %cleanup, label %if.end304, !dbg !2701

if.end304:                                        ; preds = %for.body293
  store i8* inttoptr (i64 1 to i8*), i8** %aux, align 8, !dbg !2702
  %142 = load i32, i32* %arrayidx307, align 4, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %142, metadata !1926, metadata !DIExpression()), !dbg !2613
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %137, i64 0, i32 0, !dbg !2704
  %143 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2704
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %143, metadata !1927, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i64 0, metadata !1928, metadata !DIExpression()), !dbg !2613
  store i64 0, i64* %live_at_edge, align 8, !dbg !2705
  %call309 = call %struct.bitmap_head_def* @df_get_live_out(%struct.basic_block_def* %143) #6, !dbg !2705
  call void @llvm.dbg.value(metadata i64* %live_at_edge, metadata !1928, metadata !DIExpression(DW_OP_deref)), !dbg !2613
  call void @reg_set_to_hard_reg_set(i64* nonnull %live_at_edge, %struct.bitmap_head_def* %call309) #6, !dbg !2705
  call void @start_sequence() #6, !dbg !2707
  %144 = and i32 %142, -2, !dbg !2708
  %switch2 = icmp eq i32 %144, 4, !dbg !2708
  br i1 %switch2, label %cond.end, label %cond.true, !dbg !2708

cond.true:                                        ; preds = %if.end304
  call void @emit_i387_cw_initialization(i32 %142) #6, !dbg !2708
  br label %cond.end, !dbg !2708

cond.end:                                         ; preds = %if.end304, %cond.true
  %call317 = call %struct.rtx_def* @get_insns() #6, !dbg !2709
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call317, metadata !1929, metadata !DIExpression()), !dbg !2613
  call void @end_sequence() #6, !dbg !2710
  %cmp318 = icmp eq %struct.rtx_def* %call317, null, !dbg !2711
  br i1 %cmp318, label %cleanup, label %if.end321, !dbg !2713

if.end321:                                        ; preds = %cond.end
  %flags322 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %137, i64 0, i32 7, !dbg !2714
  %145 = load i32, i32* %flags322, align 8, !dbg !2714
  %and323 = and i32 %145, 2, !dbg !2714
  %tobool324 = icmp eq i32 %and323, 0, !dbg !2714
  br i1 %tobool324, label %cond.end327, label %cond.true325, !dbg !2714

cond.true325:                                     ; preds = %if.end321
  call void @fancy_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 659, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2714
  br label %cond.end327, !dbg !2714

cond.end327:                                      ; preds = %if.end321, %cond.true325
  call void @llvm.dbg.value(metadata i32 1, metadata !1843, metadata !DIExpression()), !dbg !2432
  call void @insert_insn_on_edge(%struct.rtx_def* nonnull %call317, %struct.edge_def* %137) #6, !dbg !2715
  br label %cleanup, !dbg !2716

cleanup:                                          ; preds = %for.body293, %cond.end, %cond.end327
  %need_commit.3 = phi i32 [ 1, %cond.end327 ], [ %need_commit.2, %for.body293 ], [ %need_commit.2, %cond.end ], !dbg !2432
  call void @llvm.dbg.value(metadata i32 %need_commit.3, metadata !1843, metadata !DIExpression()), !dbg !2432
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %91) #8, !dbg !2716
  call void @llvm.dbg.value(metadata i32 undef, metadata !1841, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  br label %for.cond290, !dbg !2717, !llvm.loop !2718

for.end335:                                       ; preds = %for.cond290
  %need_commit.2.lcssa = phi i32 [ %need_commit.2, %for.cond290 ], !dbg !2616
  call void @llvm.dbg.value(metadata i32 %need_commit.2.lcssa, metadata !1843, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %need_commit.2.lcssa, metadata !1843, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %need_commit.2.lcssa, metadata !1843, metadata !DIExpression()), !dbg !2432
  %146 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2720
  %cfg337 = getelementptr inbounds %struct.function, %struct.function* %146, i64 0, i32 1, !dbg !2720
  %147 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg337, align 8, !dbg !2720
  %x_exit_block_ptr338 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %147, i64 0, i32 1, !dbg !2720
  %148 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr338, align 8, !dbg !2720
  %arrayidx360 = getelementptr inbounds [4 x %struct.bb_info*], [4 x %struct.bb_info*]* %bb_info, i64 0, i64 %indvars.iv.next26, !dbg !2722
  br label %for.cond339, !dbg !2720

for.cond339:                                      ; preds = %for.inc367, %for.end335
  %.pre1012 = phi %struct.function* [ %146, %for.end335 ], [ %.pre10, %for.inc367 ]
  %149 = phi %struct.control_flow_graph* [ %147, %for.end335 ], [ %.pre11, %for.inc367 ], !dbg !2726
  %.pn4 = phi %struct.basic_block_def* [ %148, %for.end335 ], [ %bb.3, %for.inc367 ]
  %bb.3.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn4, i64 0, i32 5, !dbg !2727
  %bb.3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.3.in, align 8, !dbg !2727
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.3, metadata !1842, metadata !DIExpression()), !dbg !2432
  %x_entry_block_ptr342 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %149, i64 0, i32 0, !dbg !2726
  %150 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr342, align 8, !dbg !2726
  %cmp343 = icmp eq %struct.basic_block_def* %bb.3, %150, !dbg !2726
  br i1 %cmp343, label %for.inc370, label %for.body345, !dbg !2720

for.body345:                                      ; preds = %for.cond339
  %151 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %del, align 8, !dbg !2728
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %151, metadata !1911, metadata !DIExpression()), !dbg !2612
  %index346 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.3, i64 0, i32 9, !dbg !2728
  %152 = load i32, i32* %index346, align 8, !dbg !2728
  %idxprom347 = sext i32 %152 to i64, !dbg !2728
  %arrayidx348 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %151, i64 %idxprom347, !dbg !2728
  %153 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx348, align 8, !dbg !2728
  %arrayidx352 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %153, i64 0, i32 3, i64 %idxprom299, !dbg !2728
  %154 = load i64, i64* %arrayidx352, align 8, !dbg !2728
  %155 = and i64 %154, %134, !dbg !2728
  %tobool357 = icmp eq i64 %155, 0, !dbg !2728
  br i1 %tobool357, label %for.inc367, label %if.then358, !dbg !2729

if.then358:                                       ; preds = %for.body345
  %156 = trunc i64 %indvars.iv.next26 to i32, !dbg !2730
  call fastcc void @make_preds_opaque(%struct.basic_block_def* %bb.3, i32 %156) #7, !dbg !2730
  %157 = load %struct.bb_info*, %struct.bb_info** %arrayidx360, align 8, !dbg !2731
  %158 = load i32, i32* %index346, align 8, !dbg !2732
  %idxprom362 = sext i32 %158 to i64, !dbg !2731
  %seginfo364 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %157, i64 %idxprom362, i32 0, !dbg !2733
  %159 = load %struct.seginfo*, %struct.seginfo** %seginfo364, align 8, !dbg !2733
  %mode365 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %159, i64 0, i32 0, !dbg !2734
  store i32 %132, i32* %mode365, align 8, !dbg !2735
  %.pre10.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2726
  br label %for.inc367, !dbg !2736

for.inc367:                                       ; preds = %for.body345, %if.then358
  %.pre10 = phi %struct.function* [ %.pre1012, %for.body345 ], [ %.pre10.pre, %if.then358 ], !dbg !2726
  %cfg341.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre10, i64 0, i32 1, !dbg !2737
  %.pre11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg341.phi.trans.insert, align 8, !dbg !2726
  br label %for.cond339, !dbg !2726, !llvm.loop !2738

for.inc370:                                       ; preds = %for.cond339
  call void @llvm.dbg.value(metadata i32 undef, metadata !1868, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  br label %for.cond280, !dbg !2740, !llvm.loop !2741

for.end372:                                       ; preds = %for.cond280
  %need_commit.1.lcssa = phi i32 [ %need_commit.1, %for.cond280 ], !dbg !2616
  call void @llvm.dbg.value(metadata i32 %need_commit.1.lcssa, metadata !1843, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %need_commit.1.lcssa, metadata !1843, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %need_commit.1.lcssa, metadata !1843, metadata !DIExpression()), !dbg !2432
  %160 = load i8*, i8** %92, align 8, !dbg !2743
  call void @free(i8* %160) #6, !dbg !2743
  %161 = load i8*, i8** %93, align 8, !dbg !2744
  call void @free(i8* %161) #6, !dbg !2744
  call void @clear_aux_for_edges() #6, !dbg !2745
  call void @free_edge_list(%struct.edge_list* %call278) #6, !dbg !2746
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %90) #8, !dbg !2747
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %89) #8, !dbg !2747
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %88) #8, !dbg !2747
  %inc374 = add nuw nsw i32 %i.0, 1, !dbg !2748
  call void @llvm.dbg.value(metadata i32 %inc374, metadata !1867, metadata !DIExpression()), !dbg !2432
  br label %for.cond199, !dbg !2749, !llvm.loop !2750

for.end375:                                       ; preds = %for.cond199
  %need_commit.0.lcssa = phi i32 [ %need_commit.0, %for.cond199 ], !dbg !2616
  call void @llvm.dbg.value(metadata i32 %need_commit.0.lcssa, metadata !1843, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %need_commit.0.lcssa, metadata !1843, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %need_commit.0.lcssa, metadata !1843, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %n_entities.0.lcssa, metadata !1868, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  %162 = sext i32 %n_entities.0.lcssa to i64, !dbg !2752
  br label %for.cond377, !dbg !2752

for.cond377:                                      ; preds = %for.end452, %for.end375
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end452 ], [ %162, %for.end375 ], !dbg !2753
  %emited.0 = phi i8 [ %emited.1.lcssa, %for.end452 ], [ 0, %for.end375 ], !dbg !2753
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2754
  call void @llvm.dbg.value(metadata i32 undef, metadata !1868, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  call void @llvm.dbg.value(metadata i8 %emited.0, metadata !1871, metadata !DIExpression()), !dbg !2432
  %cmp378 = icmp sgt i64 %indvars.iv, 0, !dbg !2755
  br i1 %cmp378, label %for.body380, label %for.end457, !dbg !2756

for.body380:                                      ; preds = %for.cond377
  %arrayidx383 = getelementptr inbounds [4 x i32], [4 x i32]* %entity_map, i64 0, i64 %indvars.iv.next, !dbg !2757
  %163 = load i32, i32* %arrayidx383, align 4, !dbg !2757
  %idxprom384 = sext i32 %163 to i64, !dbg !2758
  %arrayidx385 = getelementptr inbounds [4 x i32], [4 x i32]* @optimize_mode_switching.num_modes, i64 0, i64 %idxprom384, !dbg !2758
  %164 = load i32, i32* %arrayidx385, align 4, !dbg !2758
  call void @llvm.dbg.value(metadata i32 %164, metadata !1930, metadata !DIExpression()), !dbg !2759
  %165 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2760
  %cfg387 = getelementptr inbounds %struct.function, %struct.function* %165, i64 0, i32 1, !dbg !2760
  %166 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg387, align 8, !dbg !2760
  %x_exit_block_ptr388 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %166, i64 0, i32 1, !dbg !2760
  %167 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr388, align 8, !dbg !2760
  %arrayidx399 = getelementptr inbounds [4 x %struct.bb_info*], [4 x %struct.bb_info*]* %bb_info, i64 0, i64 %indvars.iv.next, !dbg !2759
  %168 = load %struct.bb_info*, %struct.bb_info** %arrayidx399, align 8, !dbg !2759
  br label %for.cond390, !dbg !2760

for.cond390:                                      ; preds = %for.inc450, %for.body380
  %169 = phi %struct.control_flow_graph* [ %166, %for.body380 ], [ %.pre7, %for.inc450 ], !dbg !2761
  %emited.1 = phi i8 [ %emited.0, %for.body380 ], [ %emited.2.lcssa, %for.inc450 ], !dbg !2753
  %.pn = phi %struct.basic_block_def* [ %167, %for.body380 ], [ %bb.4, %for.inc450 ]
  %bb.4.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 5, !dbg !2762
  %bb.4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.4.in, align 8, !dbg !2762
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.4, metadata !1842, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 %emited.1, metadata !1871, metadata !DIExpression()), !dbg !2432
  %x_entry_block_ptr393 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %169, i64 0, i32 0, !dbg !2761
  %170 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr393, align 8, !dbg !2761
  %cmp394 = icmp eq %struct.basic_block_def* %bb.4, %170, !dbg !2761
  br i1 %cmp394, label %for.end452, label %for.body396, !dbg !2760

for.body396:                                      ; preds = %for.cond390
  %index400 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.4, i64 0, i32 9, !dbg !2763
  %171 = load i32, i32* %index400, align 8, !dbg !2763
  %idxprom401 = sext i32 %171 to i64, !dbg !2764
  %seginfo403 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %168, i64 %idxprom401, i32 0, !dbg !2765
  %172 = load %struct.seginfo*, %struct.seginfo** %seginfo403, align 8, !dbg !2765
  call void @llvm.dbg.value(metadata %struct.seginfo* %172, metadata !1934, metadata !DIExpression()), !dbg !2766
  br label %for.cond404, !dbg !2767

for.cond404:                                      ; preds = %if.end447, %for.body396
  %emited.2 = phi i8 [ %emited.1, %for.body396 ], [ %emited.4, %if.end447 ], !dbg !2432
  %.in = phi %struct.seginfo* [ %172, %for.body396 ], [ %174, %if.end447 ]
  %ptr397.0 = phi %struct.seginfo* [ %172, %for.body396 ], [ %174, %if.end447 ], !dbg !2768
  %173 = bitcast %struct.seginfo* %.in to i8*, !dbg !2768
  call void @llvm.dbg.value(metadata %struct.seginfo* %ptr397.0, metadata !1934, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8 %emited.2, metadata !1871, metadata !DIExpression()), !dbg !2432
  %tobool405 = icmp eq %struct.seginfo* %ptr397.0, null, !dbg !2769
  br i1 %tobool405, label %for.inc450, label %for.body406, !dbg !2769

for.body406:                                      ; preds = %for.cond404
  %next407 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %ptr397.0, i64 0, i32 3, !dbg !2770
  %174 = load %struct.seginfo*, %struct.seginfo** %next407, align 8, !dbg !2770
  call void @llvm.dbg.value(metadata %struct.seginfo* %174, metadata !1938, metadata !DIExpression()), !dbg !2766
  %mode408 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %ptr397.0, i64 0, i32 0, !dbg !2771
  %175 = load i32, i32* %mode408, align 8, !dbg !2771
  %cmp409 = icmp eq i32 %175, %164, !dbg !2772
  br i1 %cmp409, label %if.end447, label %if.then411, !dbg !2773

if.then411:                                       ; preds = %for.body406
  call void @start_sequence() #6, !dbg !2774
  %176 = load i32, i32* %mode408, align 8, !dbg !2775
  %cmp414 = icmp eq i32 %176, 5, !dbg !2775
  br i1 %cmp414, label %cond.end423, label %land.lhs.true416, !dbg !2775

land.lhs.true416:                                 ; preds = %if.then411
  %cmp418 = icmp eq i32 %176, 4, !dbg !2775
  br i1 %cmp418, label %cond.end423, label %cond.true420, !dbg !2775

cond.true420:                                     ; preds = %land.lhs.true416
  call void @emit_i387_cw_initialization(i32 %176) #6, !dbg !2775
  br label %cond.end423, !dbg !2775

cond.end423:                                      ; preds = %land.lhs.true416, %if.then411, %cond.true420
  %call425 = call %struct.rtx_def* @get_insns() #6, !dbg !2776
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call425, metadata !1939, metadata !DIExpression()), !dbg !2777
  call void @end_sequence() #6, !dbg !2778
  %cmp426 = icmp eq %struct.rtx_def* %call425, null, !dbg !2779
  br i1 %cmp426, label %if.end447, label %if.then428, !dbg !2781

if.then428:                                       ; preds = %cond.end423
  call void @llvm.dbg.value(metadata i8 1, metadata !1871, metadata !DIExpression()), !dbg !2432
  %insn_ptr = getelementptr inbounds %struct.seginfo, %struct.seginfo* %ptr397.0, i64 0, i32 1, !dbg !2782
  %177 = bitcast %struct.rtx_def** %insn_ptr to i32**, !dbg !2782
  %178 = load i32*, i32** %177, align 8, !dbg !2782
  %bf.load429 = load i32, i32* %178, align 8, !dbg !2782
  %bf.clear430 = and i32 %bf.load429, 65535, !dbg !2782
  %cmp431 = icmp eq i32 %bf.clear430, 13, !dbg !2782
  %179 = bitcast i32* %178 to %struct.rtx_def*, !dbg !2782
  br i1 %cmp431, label %land.lhs.true433, label %if.else, !dbg !2782

land.lhs.true433:                                 ; preds = %if.then428
  %180 = getelementptr inbounds i32, i32* %178, i64 12, !dbg !2782
  %181 = load i32, i32* %180, align 8, !dbg !2782
  %cmp438 = icmp eq i32 %181, 10, !dbg !2782
  br i1 %cmp438, label %if.then440, label %if.else, !dbg !2785

if.then440:                                       ; preds = %land.lhs.true433
  %call442 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* nonnull %call425, %struct.rtx_def* %179) #6, !dbg !2786
  br label %if.end447, !dbg !2786

if.else:                                          ; preds = %land.lhs.true433, %if.then428
  %call444 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* nonnull %call425, %struct.rtx_def* %179) #6, !dbg !2787
  br label %if.end447

if.end447:                                        ; preds = %cond.end423, %for.body406, %if.else, %if.then440
  %emited.4 = phi i8 [ %emited.2, %for.body406 ], [ %emited.2, %cond.end423 ], [ 1, %if.else ], [ 1, %if.then440 ], !dbg !2432
  call void @llvm.dbg.value(metadata i8 %emited.4, metadata !1871, metadata !DIExpression()), !dbg !2432
  call void @free(i8* %173) #6, !dbg !2788
  call void @llvm.dbg.value(metadata %struct.seginfo* %174, metadata !1934, metadata !DIExpression()), !dbg !2766
  br label %for.cond404, !dbg !2789, !llvm.loop !2790

for.inc450:                                       ; preds = %for.cond404
  %emited.2.lcssa = phi i8 [ %emited.2, %for.cond404 ], !dbg !2432
  call void @llvm.dbg.value(metadata i8 %emited.2.lcssa, metadata !1871, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 %emited.2.lcssa, metadata !1871, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 %emited.2.lcssa, metadata !1871, metadata !DIExpression()), !dbg !2432
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2761
  %cfg392.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2792
  %.pre7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg392.phi.trans.insert, align 8, !dbg !2761
  br label %for.cond390, !dbg !2761, !llvm.loop !2793

for.end452:                                       ; preds = %for.cond390
  %emited.1.lcssa = phi i8 [ %emited.1, %for.cond390 ], !dbg !2753
  call void @llvm.dbg.value(metadata i8 %emited.1.lcssa, metadata !1871, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 %emited.1.lcssa, metadata !1871, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 %emited.1.lcssa, metadata !1871, metadata !DIExpression()), !dbg !2432
  %182 = bitcast %struct.bb_info* %168 to i8*, !dbg !2795
  call void @free(i8* %182) #6, !dbg !2796
  call void @llvm.dbg.value(metadata i32 undef, metadata !1868, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2432
  br label %for.cond377, !dbg !2797, !llvm.loop !2798

for.end457:                                       ; preds = %for.cond377
  %emited.0.lcssa = phi i8 [ %emited.0, %for.cond377 ], !dbg !2753
  call void @llvm.dbg.value(metadata i8 %emited.0.lcssa, metadata !1871, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 %emited.0.lcssa, metadata !1871, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 %emited.0.lcssa, metadata !1871, metadata !DIExpression()), !dbg !2432
  %183 = bitcast %struct.simple_bitmap_def** %call198 to i8*, !dbg !2800
  call void @free(i8* %183) #6, !dbg !2800
  %184 = load i8*, i8** bitcast (%struct.simple_bitmap_def*** @antic to i8**), align 8, !dbg !2801
  call void @free(i8* %184) #6, !dbg !2801
  %185 = load i8*, i8** bitcast (%struct.simple_bitmap_def*** @transp to i8**), align 8, !dbg !2802
  call void @free(i8* %185) #6, !dbg !2802
  %186 = load i8*, i8** bitcast (%struct.simple_bitmap_def*** @comp to i8**), align 8, !dbg !2803
  call void @free(i8* %186) #6, !dbg !2803
  %cond = icmp eq i32 %need_commit.0.lcssa, 0, !dbg !2804
  br i1 %cond, label %land.lhs.true462, label %if.then459, !dbg !2804

if.then459:                                       ; preds = %for.end457
  call void @commit_edge_insertions() #6, !dbg !2805
  br label %if.end465, !dbg !2807

land.lhs.true462:                                 ; preds = %for.end457
  %tobool463.old = icmp eq i8 %emited.0.lcssa, 0, !dbg !2809
  br i1 %tobool463.old, label %cleanup466, label %if.end465, !dbg !2810

if.end465:                                        ; preds = %if.then459, %land.lhs.true462
  br label %cleanup466, !dbg !2811

cleanup466:                                       ; preds = %land.lhs.true462, %for.end, %if.end465
  %retval.0 = phi i32 [ 1, %if.end465 ], [ 0, %for.end ], [ 0, %land.lhs.true462 ], !dbg !2432
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2812
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2812
  ret i32 %retval.0, !dbg !2812
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local void @df_analyze() local_unnamed_addr #2

declare dso_local %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32, i32) local_unnamed_addr #2

declare dso_local void @sbitmap_vector_ones(%struct.simple_bitmap_def**, i32) local_unnamed_addr #2

declare dso_local void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @df_get_live_in(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2813 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2817, metadata !DIExpression()), !dbg !2819
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2820
  store i32 0, i32* %index, align 8, !dbg !2821
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2822
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2823
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2824
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2824
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2824
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2825 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2830, metadata !DIExpression()), !dbg !2831
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2832
  %tobool = icmp eq i8 %call, 0, !dbg !2832
  br i1 %tobool, label %if.then, label %if.else, !dbg !2834

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2835
  br label %return, !dbg !2837

if.else:                                          ; preds = %entry
  br label %return, !dbg !2838

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2840
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2840
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2840
  ret i8 %retval.0, !dbg !2841
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2842 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2847, metadata !DIExpression()), !dbg !2848
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2849
  %0 = load i32, i32* %index, align 8, !dbg !2849
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2849
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2849
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !2849
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2849
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2849

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2849
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2849
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !2849
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2849
  br label %cond.end, !dbg !2849

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2849
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2849
  %cmp = icmp ult i32 %0, %call2, !dbg !2849
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2849

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2849
  br label %cond.end5, !dbg !2849

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2850
  %inc = add i32 %5, 1, !dbg !2850
  store i32 %inc, i32* %index, align 8, !dbg !2850
  ret void, !dbg !2851
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.seginfo* @new_seginfo(i32 %mode, %struct.rtx_def* %insn, i32 %bb, i64 %regs_live) unnamed_addr #5 !dbg !2852 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2856, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2857, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 %bb, metadata !2858, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i64 %regs_live, metadata !2859, metadata !DIExpression()), !dbg !2861
  %call = tail call i8* @xmalloc(i64 40) #6, !dbg !2862
  %0 = bitcast i8* %call to %struct.seginfo*, !dbg !2862
  call void @llvm.dbg.value(metadata %struct.seginfo* %0, metadata !2860, metadata !DIExpression()), !dbg !2861
  %mode1 = bitcast i8* %call to i32*, !dbg !2863
  store i32 %mode, i32* %mode1, align 8, !dbg !2864
  %insn_ptr = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2865
  %1 = bitcast i8* %insn_ptr to %struct.rtx_def**, !dbg !2865
  store %struct.rtx_def* %insn, %struct.rtx_def** %1, align 8, !dbg !2866
  %bbnum = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2867
  %2 = bitcast i8* %bbnum to i32*, !dbg !2867
  store i32 %bb, i32* %2, align 8, !dbg !2868
  %next = getelementptr inbounds i8, i8* %call, i64 24, !dbg !2869
  %3 = bitcast i8* %next to %struct.seginfo**, !dbg !2869
  store %struct.seginfo* null, %struct.seginfo** %3, align 8, !dbg !2870
  %regs_live2 = getelementptr inbounds i8, i8* %call, i64 32, !dbg !2871
  %4 = bitcast i8* %regs_live2 to i64*, !dbg !2871
  store i64 %regs_live, i64* %4, align 8, !dbg !2871
  ret %struct.seginfo* %0, !dbg !2872
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_seginfo(%struct.bb_info* %head, %struct.seginfo* %info) unnamed_addr #5 !dbg !2873 {
entry:
  call void @llvm.dbg.value(metadata %struct.bb_info* %head, metadata !2877, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %struct.seginfo* %info, metadata !2878, metadata !DIExpression()), !dbg !2880
  %seginfo = getelementptr inbounds %struct.bb_info, %struct.bb_info* %head, i64 0, i32 0, !dbg !2881
  %0 = load %struct.seginfo*, %struct.seginfo** %seginfo, align 8, !dbg !2881
  %cmp = icmp eq %struct.seginfo* %0, null, !dbg !2883
  br i1 %cmp, label %if.then, label %if.else, !dbg !2884

if.then:                                          ; preds = %entry
  store %struct.seginfo* %info, %struct.seginfo** %seginfo, align 8, !dbg !2885
  br label %if.end, !dbg !2886

if.else:                                          ; preds = %entry
  br label %while.cond, !dbg !2887

while.cond:                                       ; preds = %while.body, %if.else
  %ptr.0 = phi %struct.seginfo* [ %0, %if.else ], [ %1, %while.body ], !dbg !2889
  call void @llvm.dbg.value(metadata %struct.seginfo* %ptr.0, metadata !2879, metadata !DIExpression()), !dbg !2880
  %next = getelementptr inbounds %struct.seginfo, %struct.seginfo* %ptr.0, i64 0, i32 3, !dbg !2890
  %1 = load %struct.seginfo*, %struct.seginfo** %next, align 8, !dbg !2890
  %cmp3 = icmp eq %struct.seginfo* %1, null, !dbg !2891
  br i1 %cmp3, label %while.end, label %while.body, !dbg !2887

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !2887, !llvm.loop !2892

while.end:                                        ; preds = %while.cond
  %next.lcssa = phi %struct.seginfo** [ %next, %while.cond ], !dbg !2890
  store %struct.seginfo* %info, %struct.seginfo** %next.lcssa, align 8, !dbg !2894
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void, !dbg !2895
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @RESET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !2896 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !2900, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !2901, metadata !DIExpression()), !dbg !2905
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !2906
  %0 = load i8*, i8** %popcount, align 8, !dbg !2906
  %tobool = icmp eq i8* %0, null, !dbg !2907
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !2908

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !2909
  %.pre2 = zext i32 %.pre to i64, !dbg !2910
  %.pre3 = shl i64 1, %.pre2, !dbg !2910
  %.pre4 = lshr i32 %bitno, 6, !dbg !2911
  %.pre5 = zext i32 %.pre4 to i64, !dbg !2912
  br label %if.end7, !dbg !2908

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !2913
  %idxprom = zext i32 %div to i64, !dbg !2913
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !2913
  %1 = load i64, i64* %arrayidx, align 8, !dbg !2913
  %rem = and i32 %bitno, 63, !dbg !2913
  %sh_prom = zext i32 %rem to i64, !dbg !2913
  %2 = shl i64 1, %sh_prom, !dbg !2914
  %3 = and i64 %1, %2, !dbg !2914
  %tobool1 = icmp eq i64 %3, 0, !dbg !2914
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !2916

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !2917
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !2918
  %dec = add i8 %4, -1, !dbg !2918
  store i8 %dec, i8* %arrayidx6, align 1, !dbg !2918
  br label %if.end7, !dbg !2917

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !2912
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !2910
  %neg = xor i64 %shl.pre-phi, -1, !dbg !2919
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !2912
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !2920
  %and14 = and i64 %5, %neg, !dbg !2920
  store i64 %and14, i64* %arrayidx13, align 8, !dbg !2920
  ret void, !dbg !2921
}

declare dso_local i32 @ix86_mode_needed(i32, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @reg_dies(%struct.rtx_def* %reg, i64* %live) unnamed_addr #5 !dbg !2922 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !2926, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i64* %live, metadata !2927, metadata !DIExpression()), !dbg !2929
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 0, !dbg !2930
  %bf.load = load i32, i32* %0, align 8, !dbg !2930
  %bf.clear = and i32 %bf.load, 65535, !dbg !2930
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2930
  br i1 %cmp, label %if.end, label %cleanup.cont, !dbg !2932

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg) #7, !dbg !2933
  call void @llvm.dbg.value(metadata i32 %call, metadata !2928, metadata !DIExpression()), !dbg !2929
  %cmp1 = icmp slt i32 %call, 53, !dbg !2934
  br i1 %cmp1, label %if.then2, label %cleanup.cont, !dbg !2936

if.then2:                                         ; preds = %if.end
  %bf.load3 = load i32, i32* %0, align 8, !dbg !2937
  %bf.lshr = lshr i32 %bf.load3, 16, !dbg !2937
  %bf.clear4 = and i32 %bf.lshr, 255, !dbg !2937
  tail call fastcc void @remove_from_hard_reg_set(i64* %live, i32 %bf.clear4, i32 %call) #7, !dbg !2938
  br label %cleanup.cont, !dbg !2938

cleanup.cont:                                     ; preds = %entry, %if.then2, %if.end
  ret void, !dbg !2939
}

declare dso_local void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @reg_becomes_live(%struct.rtx_def* %reg, %struct.rtx_def* %setter, i8* %live) #5 !dbg !2940 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !2947, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata %struct.rtx_def* %setter, metadata !2948, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i8* %live, metadata !2949, metadata !DIExpression()), !dbg !2951
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 0, !dbg !2952
  %bf.load = load i32, i32* %0, align 8, !dbg !2952
  %bf.clear = and i32 %bf.load, 65535, !dbg !2952
  %cmp = icmp eq i32 %bf.clear, 39, !dbg !2954
  br i1 %cmp, label %if.then, label %if.end, !dbg !2955

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2956
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2956
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2956
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2947, metadata !DIExpression()), !dbg !2951
  %.phi.trans.insert = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !2957
  %bf.load1.pre = load i32, i32* %.phi.trans.insert, align 8, !dbg !2959
  br label %if.end, !dbg !2960

if.end:                                           ; preds = %if.then, %entry
  %bf.load1 = phi i32 [ %bf.load1.pre, %if.then ], [ %bf.load, %entry ], !dbg !2959
  %reg.addr.0 = phi %struct.rtx_def* [ %1, %if.then ], [ %reg, %entry ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg.addr.0, metadata !2947, metadata !DIExpression()), !dbg !2951
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %reg.addr.0, i64 0, i32 0, !dbg !2959
  %bf.clear2 = and i32 %bf.load1, 65535, !dbg !2959
  %cmp3 = icmp eq i32 %bf.clear2, 37, !dbg !2959
  br i1 %cmp3, label %if.end5, label %cleanup.cont, !dbg !2961

if.end5:                                          ; preds = %if.end
  %call = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %reg.addr.0) #7, !dbg !2962
  call void @llvm.dbg.value(metadata i32 %call, metadata !2950, metadata !DIExpression()), !dbg !2951
  %cmp6 = icmp slt i32 %call, 53, !dbg !2963
  br i1 %cmp6, label %if.then7, label %cleanup.cont, !dbg !2965

if.then7:                                         ; preds = %if.end5
  %3 = bitcast i8* %live to i64*, !dbg !2966
  %bf.load8 = load i32, i32* %2, align 8, !dbg !2967
  %bf.lshr = lshr i32 %bf.load8, 16, !dbg !2967
  %bf.clear9 = and i32 %bf.lshr, 255, !dbg !2967
  tail call fastcc void @add_to_hard_reg_set(i64* %3, i32 %bf.clear9, i32 %call) #7, !dbg !2968
  br label %cleanup.cont, !dbg !2968

cleanup.cont:                                     ; preds = %if.end, %if.then7, %if.end5
  ret void, !dbg !2969
}

declare dso_local void @sbitmap_vector_zero(%struct.simple_bitmap_def**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !2970 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !2972, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !2973, metadata !DIExpression()), !dbg !2977
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !2978
  %0 = load i8*, i8** %popcount, align 8, !dbg !2978
  %tobool = icmp eq i8* %0, null, !dbg !2979
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !2980

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !2981
  %.pre2 = zext i32 %.pre to i64, !dbg !2982
  %.pre3 = shl i64 1, %.pre2, !dbg !2982
  %.pre4 = lshr i32 %bitno, 6, !dbg !2983
  %.pre5 = zext i32 %.pre4 to i64, !dbg !2984
  br label %if.end7, !dbg !2980

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !2985
  %idxprom = zext i32 %div to i64, !dbg !2985
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !2985
  %1 = load i64, i64* %arrayidx, align 8, !dbg !2985
  %rem = and i32 %bitno, 63, !dbg !2985
  %sh_prom = zext i32 %rem to i64, !dbg !2985
  %2 = shl i64 1, %sh_prom, !dbg !2986
  %3 = and i64 %1, %2, !dbg !2986
  %tobool1 = icmp eq i64 %3, 0, !dbg !2986
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !2988

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !2989
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !2990
  %inc = add i8 %4, 1, !dbg !2990
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !2990
  br label %if.end7, !dbg !2989

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !2984
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !2982
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !2984
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !2991
  %or = or i64 %5, %shl.pre-phi, !dbg !2991
  store i64 %or, i64* %arrayidx13, align 8, !dbg !2991
  ret void, !dbg !2992
}

declare dso_local void @sbitmap_not(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #2

declare dso_local %struct.edge_list* @pre_edge_lcm(i32, %struct.simple_bitmap_def**, %struct.simple_bitmap_def**, %struct.simple_bitmap_def**, %struct.simple_bitmap_def**, %struct.simple_bitmap_def***, %struct.simple_bitmap_def***) local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @df_get_live_out(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @start_sequence() local_unnamed_addr #2

declare dso_local void @emit_i387_cw_initialization(i32) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #2

declare dso_local void @end_sequence() local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local void @insert_insn_on_edge(%struct.rtx_def*, %struct.edge_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @make_preds_opaque(%struct.basic_block_def* %b, i32 %j) unnamed_addr #5 !dbg !2993 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b, metadata !2997, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i32 %j, metadata !2998, metadata !DIExpression()), !dbg !3005
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3006
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3006
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3007
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3007
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3008
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3008
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b, i64 0, i32 0, !dbg !3008
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3008
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3008
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3008
  store i32 %4, i32* %3, align 8, !dbg !3008
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3008
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3008
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !3008
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3008
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3008
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3009
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3009
  %div = lshr i32 %j, 6, !dbg !3010
  %idxprom3 = zext i32 %div to i64, !dbg !3010
  %rem = and i32 %j, 63, !dbg !3010
  %sh_prom = zext i32 %rem to i64, !dbg !3010
  %9 = shl i64 1, %sh_prom, !dbg !3010
  br label %for.cond, !dbg !3008

for.cond:                                         ; preds = %cleanup, %entry
  %10 = load i32, i32* %7, align 8, !dbg !3012
  %11 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3012
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2999, metadata !DIExpression(DW_OP_deref)), !dbg !3005
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %10, %struct.VEC_edge_gc** %11, %struct.edge_def** nonnull %e) #7, !dbg !3012
  %tobool = icmp eq i8 %call1, 0, !dbg !3008
  br i1 %tobool, label %for.end, label %for.body, !dbg !3008

for.body:                                         ; preds = %for.cond
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3013
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !2999, metadata !DIExpression()), !dbg !3005
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 0, !dbg !3014
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3014
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %13, metadata !3001, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !2999, metadata !DIExpression()), !dbg !3005
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 3, !dbg !3016
  %14 = load i8*, i8** %aux, align 8, !dbg !3016
  %tobool2 = icmp eq i8* %14, null, !dbg !3017
  br i1 %tobool2, label %lor.lhs.false, label %cleanup, !dbg !3018

lor.lhs.false:                                    ; preds = %for.body
  %15 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8, !dbg !3019
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 9, !dbg !3019
  %16 = load i32, i32* %index, align 8, !dbg !3019
  %idxprom = sext i32 %16 to i64, !dbg !3019
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %15, i64 %idxprom, !dbg !3019
  %17 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !3019
  %arrayidx4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %17, i64 0, i32 3, i64 %idxprom3, !dbg !3019
  %18 = load i64, i64* %arrayidx4, align 8, !dbg !3019
  %19 = and i64 %18, %9, !dbg !3019
  %tobool5 = icmp eq i64 %19, 0, !dbg !3019
  br i1 %tobool5, label %cleanup, label %if.end, !dbg !3020

if.end:                                           ; preds = %lor.lhs.false
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %17, i32 %j) #7, !dbg !3021
  call fastcc void @make_preds_opaque(%struct.basic_block_def* %13, i32 %j) #7, !dbg !3022
  br label %cleanup, !dbg !3023

cleanup:                                          ; preds = %lor.lhs.false, %for.body, %if.end
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3000, metadata !DIExpression(DW_OP_deref)), !dbg !3005
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3012
  br label %for.cond, !dbg !3012, !llvm.loop !3024

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3026
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3026
  ret void, !dbg !3026
}

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local void @clear_aux_for_edges() local_unnamed_addr #2

declare dso_local void @free_edge_list(%struct.edge_list*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @commit_edge_insertions() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3027 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3032
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3032
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3032

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3032
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3032
  br label %cond.end, !dbg !3032

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3032
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3032
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3033
  %conv3 = zext i1 %cmp to i8, !dbg !3034
  ret i8 %conv3, !dbg !3035
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3036 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3041
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3041
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3041

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3041
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3041
  br label %cond.end, !dbg !3041

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3041
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3041
  ret %struct.edge_def* %call2, !dbg !3042
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3043 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3049, metadata !DIExpression()), !dbg !3050
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3051
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3051

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3051
  %0 = load i32, i32* %num, align 8, !dbg !3051
  br label %cond.end, !dbg !3051

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3051
  ret i32 %cond, !dbg !3051
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3052 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3057
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3057

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3057
  br label %cond.end, !dbg !3057

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3058
  ret %struct.VEC_edge_gc* %0, !dbg !3059
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3060 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3064, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3065, metadata !DIExpression()), !dbg !3066
  br label %land.end, !dbg !3067

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3067
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3067
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3067
  ret %struct.edge_def* %0, !dbg !3067
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3068 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3072, metadata !DIExpression()), !dbg !3073
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3074
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3074
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3074
  ret i32 %0, !dbg !3075
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @remove_from_hard_reg_set(i64* %regs, i32 %mode, i32 %regno) unnamed_addr #0 !dbg !3076 {
entry:
  call void @llvm.dbg.value(metadata i64* %regs, metadata !3081, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3082, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3083, metadata !DIExpression()), !dbg !3085
  %call = tail call fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) #7, !dbg !3086
  call void @llvm.dbg.value(metadata i32 %call, metadata !3084, metadata !DIExpression()), !dbg !3085
  %regs.promoted = load i64, i64* %regs, align 8, !dbg !3087
  br label %do.body, !dbg !3088

do.body:                                          ; preds = %do.body, %entry
  %0 = phi i64 [ %regs.promoted, %entry ], [ %and, %do.body ], !dbg !3085
  %regno.addr.0 = phi i32 [ %regno, %entry ], [ %inc, %do.body ]
  call void @llvm.dbg.value(metadata i32 %regno.addr.0, metadata !3083, metadata !DIExpression()), !dbg !3085
  %sh_prom = zext i32 %regno.addr.0 to i64, !dbg !3087
  %shl = shl i64 1, %sh_prom, !dbg !3087
  %neg = xor i64 %shl, -1, !dbg !3087
  %and = and i64 %0, %neg, !dbg !3087
  %inc = add i32 %regno.addr.0, 1, !dbg !3089
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3083, metadata !DIExpression()), !dbg !3085
  %cmp = icmp ult i32 %inc, %call, !dbg !3090
  br i1 %cmp, label %do.body, label %do.end, !dbg !3087, !llvm.loop !3091

do.end:                                           ; preds = %do.body
  %and.lcssa = phi i64 [ %and, %do.body ], !dbg !3087
  store i64 %and.lcssa, i64* %regs, align 8, !dbg !3087
  ret void, !dbg !3093
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) unnamed_addr #0 !dbg !3094 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3098, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3099, metadata !DIExpression()), !dbg !3100
  %idxprom = zext i32 %regno to i64, !dbg !3101
  %idxprom1 = sext i32 %mode to i64, !dbg !3101
  %arrayidx2 = getelementptr inbounds [53 x [87 x i8]], [53 x [87 x i8]]* @hard_regno_nregs, i64 0, i64 %idxprom, i64 %idxprom1, !dbg !3101
  %0 = load i8, i8* %arrayidx2, align 1, !dbg !3101
  %conv = zext i8 %0 to i32, !dbg !3101
  %add = add i32 %conv, %regno, !dbg !3102
  ret i32 %add, !dbg !3103
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_to_hard_reg_set(i64* %regs, i32 %mode, i32 %regno) unnamed_addr #0 !dbg !3104 {
entry:
  call void @llvm.dbg.value(metadata i64* %regs, metadata !3106, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3107, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i32 %regno, metadata !3108, metadata !DIExpression()), !dbg !3110
  %call = tail call fastcc i32 @end_hard_regno(i32 %mode, i32 %regno) #7, !dbg !3111
  call void @llvm.dbg.value(metadata i32 %call, metadata !3109, metadata !DIExpression()), !dbg !3110
  %regs.promoted = load i64, i64* %regs, align 8, !dbg !3112
  br label %do.body, !dbg !3113

do.body:                                          ; preds = %do.body, %entry
  %0 = phi i64 [ %regs.promoted, %entry ], [ %or, %do.body ], !dbg !3110
  %regno.addr.0 = phi i32 [ %regno, %entry ], [ %inc, %do.body ]
  call void @llvm.dbg.value(metadata i32 %regno.addr.0, metadata !3108, metadata !DIExpression()), !dbg !3110
  %sh_prom = zext i32 %regno.addr.0 to i64, !dbg !3112
  %shl = shl i64 1, %sh_prom, !dbg !3112
  %or = or i64 %0, %shl, !dbg !3112
  %inc = add i32 %regno.addr.0, 1, !dbg !3114
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3108, metadata !DIExpression()), !dbg !3110
  %cmp = icmp ult i32 %inc, %call, !dbg !3115
  br i1 %cmp, label %do.body, label %do.end, !dbg !3112, !llvm.loop !3116

do.end:                                           ; preds = %do.body
  %or.lcssa = phi i64 [ %or, %do.body ], !dbg !3112
  store i64 %or.lcssa, i64* %regs, align 8, !dbg !3112
  ret void, !dbg !3118
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1979, !1980, !1981}
!llvm.ident = !{!1982}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_mode_switching", scope: !2, file: !3, line: 759, type: !1953, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !737, globals: !1833, nameTableKind: None)
!3 = !DIFile(filename: "mode-switching.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560, !703}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opt_pass_type", file: !6, line: 104, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./tree-pass.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "GIMPLE_PASS", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "RTL_PASS", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "SIMPLE_IPA_PASS", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "IPA_PASS", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 74, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./timevar.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!16 = !DIEnumerator(name: "TV_NONE", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "TV_TOTAL", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "TV_GC", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "TV_DUMP", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "TV_CGRAPH", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "TV_CGRAPHOPT", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "TV_IPA_CONSTANT_PROP", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "TV_IPA_LTO_GIMPLE_IO", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "TV_IPA_LTO_DECL_IO", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "TV_IPA_LTO_CGRAPH_IO", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "TV_LTO", value: 10, isUnsigned: true)
!27 = !DIEnumerator(name: "TV_WHOPR_WPA", value: 11, isUnsigned: true)
!28 = !DIEnumerator(name: "TV_WHOPR_WPA_IO", value: 12, isUnsigned: true)
!29 = !DIEnumerator(name: "TV_WHOPR_LTRANS", value: 13, isUnsigned: true)
!30 = !DIEnumerator(name: "TV_WHOPR_WPA_FIXUP", value: 14, isUnsigned: true)
!31 = !DIEnumerator(name: "TV_WHOPR_WPA_LTRANS_EXEC", value: 15, isUnsigned: true)
!32 = !DIEnumerator(name: "TV_IPA_REFERENCE", value: 16, isUnsigned: true)
!33 = !DIEnumerator(name: "TV_IPA_PURE_CONST", value: 17, isUnsigned: true)
!34 = !DIEnumerator(name: "TV_IPA_TYPE_ESCAPE", value: 18, isUnsigned: true)
!35 = !DIEnumerator(name: "TV_IPA_PTA", value: 19, isUnsigned: true)
!36 = !DIEnumerator(name: "TV_IPA_SRA", value: 20, isUnsigned: true)
!37 = !DIEnumerator(name: "TV_IPA_FREE_LANG_DATA", value: 21, isUnsigned: true)
!38 = !DIEnumerator(name: "TV_CFG", value: 22, isUnsigned: true)
!39 = !DIEnumerator(name: "TV_CLEANUP_CFG", value: 23, isUnsigned: true)
!40 = !DIEnumerator(name: "TV_CFG_VERIFY", value: 24, isUnsigned: true)
!41 = !DIEnumerator(name: "TV_DELETE_TRIVIALLY_DEAD", value: 25, isUnsigned: true)
!42 = !DIEnumerator(name: "TV_LIFE", value: 26, isUnsigned: true)
!43 = !DIEnumerator(name: "TV_LIFE_UPDATE", value: 27, isUnsigned: true)
!44 = !DIEnumerator(name: "TV_DF_SCAN", value: 28, isUnsigned: true)
!45 = !DIEnumerator(name: "TV_DF_MD", value: 29, isUnsigned: true)
!46 = !DIEnumerator(name: "TV_DF_RD", value: 30, isUnsigned: true)
!47 = !DIEnumerator(name: "TV_DF_LR", value: 31, isUnsigned: true)
!48 = !DIEnumerator(name: "TV_DF_LIVE", value: 32, isUnsigned: true)
!49 = !DIEnumerator(name: "TV_DF_UREC", value: 33, isUnsigned: true)
!50 = !DIEnumerator(name: "TV_DF_CHAIN", value: 34, isUnsigned: true)
!51 = !DIEnumerator(name: "TV_DF_BYTE_LR", value: 35, isUnsigned: true)
!52 = !DIEnumerator(name: "TV_DF_NOTE", value: 36, isUnsigned: true)
!53 = !DIEnumerator(name: "TV_REG_STATS", value: 37, isUnsigned: true)
!54 = !DIEnumerator(name: "TV_ALIAS_ANALYSIS", value: 38, isUnsigned: true)
!55 = !DIEnumerator(name: "TV_ALIAS_STMT_WALK", value: 39, isUnsigned: true)
!56 = !DIEnumerator(name: "TV_REG_SCAN", value: 40, isUnsigned: true)
!57 = !DIEnumerator(name: "TV_REBUILD_JUMP", value: 41, isUnsigned: true)
!58 = !DIEnumerator(name: "TV_CPP", value: 42, isUnsigned: true)
!59 = !DIEnumerator(name: "TV_LEX", value: 43, isUnsigned: true)
!60 = !DIEnumerator(name: "TV_PARSE", value: 44, isUnsigned: true)
!61 = !DIEnumerator(name: "TV_NAME_LOOKUP", value: 45, isUnsigned: true)
!62 = !DIEnumerator(name: "TV_INLINE_HEURISTICS", value: 46, isUnsigned: true)
!63 = !DIEnumerator(name: "TV_INTEGRATION", value: 47, isUnsigned: true)
!64 = !DIEnumerator(name: "TV_TREE_GIMPLIFY", value: 48, isUnsigned: true)
!65 = !DIEnumerator(name: "TV_TREE_EH", value: 49, isUnsigned: true)
!66 = !DIEnumerator(name: "TV_TREE_CFG", value: 50, isUnsigned: true)
!67 = !DIEnumerator(name: "TV_TREE_CLEANUP_CFG", value: 51, isUnsigned: true)
!68 = !DIEnumerator(name: "TV_TREE_VRP", value: 52, isUnsigned: true)
!69 = !DIEnumerator(name: "TV_TREE_COPY_PROP", value: 53, isUnsigned: true)
!70 = !DIEnumerator(name: "TV_TREE_STORE_COPY_PROP", value: 54, isUnsigned: true)
!71 = !DIEnumerator(name: "TV_FIND_REFERENCED_VARS", value: 55, isUnsigned: true)
!72 = !DIEnumerator(name: "TV_TREE_PTA", value: 56, isUnsigned: true)
!73 = !DIEnumerator(name: "TV_TREE_INSERT_PHI_NODES", value: 57, isUnsigned: true)
!74 = !DIEnumerator(name: "TV_TREE_SSA_REWRITE_BLOCKS", value: 58, isUnsigned: true)
!75 = !DIEnumerator(name: "TV_TREE_SSA_OTHER", value: 59, isUnsigned: true)
!76 = !DIEnumerator(name: "TV_TREE_SSA_INCREMENTAL", value: 60, isUnsigned: true)
!77 = !DIEnumerator(name: "TV_TREE_OPS", value: 61, isUnsigned: true)
!78 = !DIEnumerator(name: "TV_TREE_SSA_DOMINATOR_OPTS", value: 62, isUnsigned: true)
!79 = !DIEnumerator(name: "TV_TREE_SRA", value: 63, isUnsigned: true)
!80 = !DIEnumerator(name: "TV_TREE_STORE_CCP", value: 64, isUnsigned: true)
!81 = !DIEnumerator(name: "TV_TREE_CCP", value: 65, isUnsigned: true)
!82 = !DIEnumerator(name: "TV_TREE_PHI_CPROP", value: 66, isUnsigned: true)
!83 = !DIEnumerator(name: "TV_TREE_SPLIT_EDGES", value: 67, isUnsigned: true)
!84 = !DIEnumerator(name: "TV_TREE_REASSOC", value: 68, isUnsigned: true)
!85 = !DIEnumerator(name: "TV_TREE_PRE", value: 69, isUnsigned: true)
!86 = !DIEnumerator(name: "TV_TREE_REDPHI", value: 70, isUnsigned: true)
!87 = !DIEnumerator(name: "TV_TREE_FRE", value: 71, isUnsigned: true)
!88 = !DIEnumerator(name: "TV_TREE_SINK", value: 72, isUnsigned: true)
!89 = !DIEnumerator(name: "TV_TREE_PHIOPT", value: 73, isUnsigned: true)
!90 = !DIEnumerator(name: "TV_TREE_FORWPROP", value: 74, isUnsigned: true)
!91 = !DIEnumerator(name: "TV_TREE_PHIPROP", value: 75, isUnsigned: true)
!92 = !DIEnumerator(name: "TV_TREE_DCE", value: 76, isUnsigned: true)
!93 = !DIEnumerator(name: "TV_TREE_CD_DCE", value: 77, isUnsigned: true)
!94 = !DIEnumerator(name: "TV_TREE_CALL_CDCE", value: 78, isUnsigned: true)
!95 = !DIEnumerator(name: "TV_TREE_DSE", value: 79, isUnsigned: true)
!96 = !DIEnumerator(name: "TV_TREE_MERGE_PHI", value: 80, isUnsigned: true)
!97 = !DIEnumerator(name: "TV_TREE_LOOP", value: 81, isUnsigned: true)
!98 = !DIEnumerator(name: "TV_TREE_LOOP_BOUNDS", value: 82, isUnsigned: true)
!99 = !DIEnumerator(name: "TV_LIM", value: 83, isUnsigned: true)
!100 = !DIEnumerator(name: "TV_TREE_LOOP_IVCANON", value: 84, isUnsigned: true)
!101 = !DIEnumerator(name: "TV_SCEV_CONST", value: 85, isUnsigned: true)
!102 = !DIEnumerator(name: "TV_TREE_LOOP_UNSWITCH", value: 86, isUnsigned: true)
!103 = !DIEnumerator(name: "TV_COMPLETE_UNROLL", value: 87, isUnsigned: true)
!104 = !DIEnumerator(name: "TV_TREE_PARALLELIZE_LOOPS", value: 88, isUnsigned: true)
!105 = !DIEnumerator(name: "TV_TREE_VECTORIZATION", value: 89, isUnsigned: true)
!106 = !DIEnumerator(name: "TV_TREE_SLP_VECTORIZATION", value: 90, isUnsigned: true)
!107 = !DIEnumerator(name: "TV_GRAPHITE_TRANSFORMS", value: 91, isUnsigned: true)
!108 = !DIEnumerator(name: "TV_GRAPHITE_DATA_DEPS", value: 92, isUnsigned: true)
!109 = !DIEnumerator(name: "TV_GRAPHITE_CODE_GEN", value: 93, isUnsigned: true)
!110 = !DIEnumerator(name: "TV_TREE_LINEAR_TRANSFORM", value: 94, isUnsigned: true)
!111 = !DIEnumerator(name: "TV_TREE_LOOP_DISTRIBUTION", value: 95, isUnsigned: true)
!112 = !DIEnumerator(name: "TV_CHECK_DATA_DEPS", value: 96, isUnsigned: true)
!113 = !DIEnumerator(name: "TV_TREE_PREFETCH", value: 97, isUnsigned: true)
!114 = !DIEnumerator(name: "TV_TREE_LOOP_IVOPTS", value: 98, isUnsigned: true)
!115 = !DIEnumerator(name: "TV_PREDCOM", value: 99, isUnsigned: true)
!116 = !DIEnumerator(name: "TV_TREE_LOOP_INIT", value: 100, isUnsigned: true)
!117 = !DIEnumerator(name: "TV_TREE_LOOP_FINI", value: 101, isUnsigned: true)
!118 = !DIEnumerator(name: "TV_TREE_CH", value: 102, isUnsigned: true)
!119 = !DIEnumerator(name: "TV_TREE_SSA_UNCPROP", value: 103, isUnsigned: true)
!120 = !DIEnumerator(name: "TV_TREE_SSA_TO_NORMAL", value: 104, isUnsigned: true)
!121 = !DIEnumerator(name: "TV_TREE_NRV", value: 105, isUnsigned: true)
!122 = !DIEnumerator(name: "TV_TREE_COPY_RENAME", value: 106, isUnsigned: true)
!123 = !DIEnumerator(name: "TV_TREE_SSA_VERIFY", value: 107, isUnsigned: true)
!124 = !DIEnumerator(name: "TV_TREE_STMT_VERIFY", value: 108, isUnsigned: true)
!125 = !DIEnumerator(name: "TV_TREE_SWITCH_CONVERSION", value: 109, isUnsigned: true)
!126 = !DIEnumerator(name: "TV_CGRAPH_VERIFY", value: 110, isUnsigned: true)
!127 = !DIEnumerator(name: "TV_DOM_FRONTIERS", value: 111, isUnsigned: true)
!128 = !DIEnumerator(name: "TV_DOMINANCE", value: 112, isUnsigned: true)
!129 = !DIEnumerator(name: "TV_CONTROL_DEPENDENCES", value: 113, isUnsigned: true)
!130 = !DIEnumerator(name: "TV_OVERLOAD", value: 114, isUnsigned: true)
!131 = !DIEnumerator(name: "TV_TEMPLATE_INSTANTIATION", value: 115, isUnsigned: true)
!132 = !DIEnumerator(name: "TV_EXPAND", value: 116, isUnsigned: true)
!133 = !DIEnumerator(name: "TV_VARCONST", value: 117, isUnsigned: true)
!134 = !DIEnumerator(name: "TV_LOWER_SUBREG", value: 118, isUnsigned: true)
!135 = !DIEnumerator(name: "TV_JUMP", value: 119, isUnsigned: true)
!136 = !DIEnumerator(name: "TV_FWPROP", value: 120, isUnsigned: true)
!137 = !DIEnumerator(name: "TV_CSE", value: 121, isUnsigned: true)
!138 = !DIEnumerator(name: "TV_DCE", value: 122, isUnsigned: true)
!139 = !DIEnumerator(name: "TV_DSE1", value: 123, isUnsigned: true)
!140 = !DIEnumerator(name: "TV_DSE2", value: 124, isUnsigned: true)
!141 = !DIEnumerator(name: "TV_LOOP", value: 125, isUnsigned: true)
!142 = !DIEnumerator(name: "TV_LOOP_MOVE_INVARIANTS", value: 126, isUnsigned: true)
!143 = !DIEnumerator(name: "TV_LOOP_UNSWITCH", value: 127, isUnsigned: true)
!144 = !DIEnumerator(name: "TV_LOOP_UNROLL", value: 128, isUnsigned: true)
!145 = !DIEnumerator(name: "TV_LOOP_DOLOOP", value: 129, isUnsigned: true)
!146 = !DIEnumerator(name: "TV_CPROP", value: 130, isUnsigned: true)
!147 = !DIEnumerator(name: "TV_PRE", value: 131, isUnsigned: true)
!148 = !DIEnumerator(name: "TV_HOIST", value: 132, isUnsigned: true)
!149 = !DIEnumerator(name: "TV_LSM", value: 133, isUnsigned: true)
!150 = !DIEnumerator(name: "TV_TRACER", value: 134, isUnsigned: true)
!151 = !DIEnumerator(name: "TV_WEB", value: 135, isUnsigned: true)
!152 = !DIEnumerator(name: "TV_AUTO_INC_DEC", value: 136, isUnsigned: true)
!153 = !DIEnumerator(name: "TV_CSE2", value: 137, isUnsigned: true)
!154 = !DIEnumerator(name: "TV_BRANCH_PROB", value: 138, isUnsigned: true)
!155 = !DIEnumerator(name: "TV_VPT", value: 139, isUnsigned: true)
!156 = !DIEnumerator(name: "TV_COMBINE", value: 140, isUnsigned: true)
!157 = !DIEnumerator(name: "TV_IFCVT", value: 141, isUnsigned: true)
!158 = !DIEnumerator(name: "TV_REGMOVE", value: 142, isUnsigned: true)
!159 = !DIEnumerator(name: "TV_MODE_SWITCH", value: 143, isUnsigned: true)
!160 = !DIEnumerator(name: "TV_SMS", value: 144, isUnsigned: true)
!161 = !DIEnumerator(name: "TV_SCHED", value: 145, isUnsigned: true)
!162 = !DIEnumerator(name: "TV_LOCAL_ALLOC", value: 146, isUnsigned: true)
!163 = !DIEnumerator(name: "TV_GLOBAL_ALLOC", value: 147, isUnsigned: true)
!164 = !DIEnumerator(name: "TV_IRA", value: 148, isUnsigned: true)
!165 = !DIEnumerator(name: "TV_RELOAD", value: 149, isUnsigned: true)
!166 = !DIEnumerator(name: "TV_RELOAD_CSE_REGS", value: 150, isUnsigned: true)
!167 = !DIEnumerator(name: "TV_SEQABSTR", value: 151, isUnsigned: true)
!168 = !DIEnumerator(name: "TV_GCSE_AFTER_RELOAD", value: 152, isUnsigned: true)
!169 = !DIEnumerator(name: "TV_THREAD_PROLOGUE_AND_EPILOGUE", value: 153, isUnsigned: true)
!170 = !DIEnumerator(name: "TV_IFCVT2", value: 154, isUnsigned: true)
!171 = !DIEnumerator(name: "TV_COMBINE_STACK_ADJUST", value: 155, isUnsigned: true)
!172 = !DIEnumerator(name: "TV_PEEPHOLE2", value: 156, isUnsigned: true)
!173 = !DIEnumerator(name: "TV_RENAME_REGISTERS", value: 157, isUnsigned: true)
!174 = !DIEnumerator(name: "TV_CPROP_REGISTERS", value: 158, isUnsigned: true)
!175 = !DIEnumerator(name: "TV_SCHED2", value: 159, isUnsigned: true)
!176 = !DIEnumerator(name: "TV_MACH_DEP", value: 160, isUnsigned: true)
!177 = !DIEnumerator(name: "TV_DBR_SCHED", value: 161, isUnsigned: true)
!178 = !DIEnumerator(name: "TV_REORDER_BLOCKS", value: 162, isUnsigned: true)
!179 = !DIEnumerator(name: "TV_SHORTEN_BRANCH", value: 163, isUnsigned: true)
!180 = !DIEnumerator(name: "TV_REG_STACK", value: 164, isUnsigned: true)
!181 = !DIEnumerator(name: "TV_FINAL", value: 165, isUnsigned: true)
!182 = !DIEnumerator(name: "TV_SYMOUT", value: 166, isUnsigned: true)
!183 = !DIEnumerator(name: "TV_VAR_TRACKING", value: 167, isUnsigned: true)
!184 = !DIEnumerator(name: "TV_TREE_IFCOMBINE", value: 168, isUnsigned: true)
!185 = !DIEnumerator(name: "TV_PLUGIN_INIT", value: 169, isUnsigned: true)
!186 = !DIEnumerator(name: "TV_PLUGIN_RUN", value: 170, isUnsigned: true)
!187 = !DIEnumerator(name: "TV_REST_OF_COMPILATION", value: 171, isUnsigned: true)
!188 = !DIEnumerator(name: "TIMEVAR_LAST", value: 172, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !190, line: 7, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!192 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!195 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!196 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!197 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!198 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!199 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!200 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!201 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!202 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!203 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!204 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!205 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!206 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!207 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!208 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!209 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!210 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!211 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!212 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!213 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!214 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!215 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!216 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!217 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!218 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!219 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!220 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!221 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!222 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!223 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!224 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!225 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!226 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!227 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!228 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!229 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!230 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!231 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!232 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!233 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!234 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!235 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!236 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!237 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!238 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!239 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!240 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!241 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!242 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!243 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!244 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!245 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!246 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!247 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!248 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!249 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!250 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!251 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!252 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!253 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!254 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!255 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!256 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!257 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!258 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!259 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!260 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!261 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!262 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!263 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!264 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!265 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!266 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!267 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!268 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!269 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!270 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!271 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!272 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!273 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!274 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!275 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!276 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!277 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!278 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!279 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!280 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!281 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!282 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!283 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!284 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!285 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!286 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!288 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!289 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!290 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!291 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!292 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!293 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!294 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!295 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!296 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!297 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!298 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!299 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!300 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!301 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!302 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!303 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!304 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!305 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!306 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!307 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!308 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!309 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!310 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!311 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!312 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!313 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!314 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!315 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!316 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !318, line: 363, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322}
!320 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!323 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !318, line: 355, baseType: !7, size: 32, elements: !324)
!324 = !{!325, !326, !327}
!325 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!326 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!327 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !329, line: 474, baseType: !7, size: 32, elements: !330)
!329 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!330 = !{!331, !332}
!331 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!332 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!333 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !334, line: 280, baseType: !7, size: 32, elements: !335)
!334 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351}
!336 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!337 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!338 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!339 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!340 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!341 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!342 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !334, line: 1817, baseType: !7, size: 32, elements: !353)
!353 = !{!354, !355, !356, !357, !358}
!354 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !334, line: 1805, baseType: !7, size: 32, elements: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !334, line: 39, baseType: !7, size: 32, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!368 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!369 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!372 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!373 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!374 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!375 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!376 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!377 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!378 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!379 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!380 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!381 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!382 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!383 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!384 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!385 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!386 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!387 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!388 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!389 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!390 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!391 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!392 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!393 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!394 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!395 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!396 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!397 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!398 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!399 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!400 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!401 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!402 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!403 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!404 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!405 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!406 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!407 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!408 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!409 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!410 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!411 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!412 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!413 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!414 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!415 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!416 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!417 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!418 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!419 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!420 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!421 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!422 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!423 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!424 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!425 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!426 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!427 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!428 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!429 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!430 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!431 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!432 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!433 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!434 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!435 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!436 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!437 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!438 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!439 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!440 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!441 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!442 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!443 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!444 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!445 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!446 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!447 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!448 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!449 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!450 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!451 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!452 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!453 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!454 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!455 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!456 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!457 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!458 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!459 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!460 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!461 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!462 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!463 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!464 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!465 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!466 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!467 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!468 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!469 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!470 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!471 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!472 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!473 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!474 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!475 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!476 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!477 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!478 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!479 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!480 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!481 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!482 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!483 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!484 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!485 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!486 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!487 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!488 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!489 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!490 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!491 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!492 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!493 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!494 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!495 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!496 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!497 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!498 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!499 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!500 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!501 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!502 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!503 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!504 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!505 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!506 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!507 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!508 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!509 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!510 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!511 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!512 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!513 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!514 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!515 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!516 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!517 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!518 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!519 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!520 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!521 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!522 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!523 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!524 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!525 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!526 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!527 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!528 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!529 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!530 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!531 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!532 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!533 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!534 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!535 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!536 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!537 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!538 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!539 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!540 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!541 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!542 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!543 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!544 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!545 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!546 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!547 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!548 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!549 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!550 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!551 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!552 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!553 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!554 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!555 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!556 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!557 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!558 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!559 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!560 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !561, line: 45, baseType: !7, size: 32, elements: !562)
!561 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702}
!563 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!564 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!565 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!566 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!567 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!568 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!569 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!570 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!571 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!572 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!573 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!574 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!575 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!576 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!577 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!578 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!579 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!580 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!581 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!582 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!583 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!584 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!585 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!586 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!587 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!588 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!589 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!590 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!591 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!592 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!593 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!594 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!595 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!596 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!597 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!598 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!599 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!600 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!601 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!602 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!603 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!604 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!605 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!606 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!607 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!608 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!609 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!610 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!611 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!612 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!613 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!614 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!615 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!616 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!617 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!618 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!619 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!620 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!621 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!622 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!623 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!624 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!625 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!626 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!627 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!628 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!629 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!630 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!631 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!632 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!633 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!634 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!635 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!636 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!637 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!638 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!639 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!640 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!641 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!642 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!643 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!644 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!645 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!646 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!647 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!648 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!649 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!650 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!651 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!652 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!653 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!654 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!655 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!656 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!657 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!658 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!659 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!660 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!661 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!662 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!663 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!664 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!665 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!666 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!667 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!668 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!669 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!670 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!671 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!672 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!673 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!674 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!675 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!676 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!677 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!678 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!679 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!680 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!681 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!682 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!683 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!684 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!685 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!686 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!687 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!688 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!689 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!690 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!691 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!692 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!693 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!694 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!695 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!696 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!697 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!698 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!699 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!700 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!701 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!702 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!703 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_note", file: !561, line: 836, baseType: !7, size: 32, elements: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736}
!705 = !DIEnumerator(name: "REG_DEP_TRUE", value: 0, isUnsigned: true)
!706 = !DIEnumerator(name: "REG_DEAD", value: 1, isUnsigned: true)
!707 = !DIEnumerator(name: "REG_INC", value: 2, isUnsigned: true)
!708 = !DIEnumerator(name: "REG_EQUIV", value: 3, isUnsigned: true)
!709 = !DIEnumerator(name: "REG_EQUAL", value: 4, isUnsigned: true)
!710 = !DIEnumerator(name: "REG_NONNEG", value: 5, isUnsigned: true)
!711 = !DIEnumerator(name: "REG_UNUSED", value: 6, isUnsigned: true)
!712 = !DIEnumerator(name: "REG_CC_SETTER", value: 7, isUnsigned: true)
!713 = !DIEnumerator(name: "REG_CC_USER", value: 8, isUnsigned: true)
!714 = !DIEnumerator(name: "REG_LABEL_TARGET", value: 9, isUnsigned: true)
!715 = !DIEnumerator(name: "REG_LABEL_OPERAND", value: 10, isUnsigned: true)
!716 = !DIEnumerator(name: "REG_DEP_OUTPUT", value: 11, isUnsigned: true)
!717 = !DIEnumerator(name: "REG_DEP_ANTI", value: 12, isUnsigned: true)
!718 = !DIEnumerator(name: "REG_BR_PROB", value: 13, isUnsigned: true)
!719 = !DIEnumerator(name: "REG_VALUE_PROFILE", value: 14, isUnsigned: true)
!720 = !DIEnumerator(name: "REG_NOALIAS", value: 15, isUnsigned: true)
!721 = !DIEnumerator(name: "REG_BR_PRED", value: 16, isUnsigned: true)
!722 = !DIEnumerator(name: "REG_FRAME_RELATED_EXPR", value: 17, isUnsigned: true)
!723 = !DIEnumerator(name: "REG_CFA_DEF_CFA", value: 18, isUnsigned: true)
!724 = !DIEnumerator(name: "REG_CFA_ADJUST_CFA", value: 19, isUnsigned: true)
!725 = !DIEnumerator(name: "REG_CFA_OFFSET", value: 20, isUnsigned: true)
!726 = !DIEnumerator(name: "REG_CFA_REGISTER", value: 21, isUnsigned: true)
!727 = !DIEnumerator(name: "REG_CFA_RESTORE", value: 22, isUnsigned: true)
!728 = !DIEnumerator(name: "REG_CFA_SET_VDRAP", value: 23, isUnsigned: true)
!729 = !DIEnumerator(name: "REG_EH_CONTEXT", value: 24, isUnsigned: true)
!730 = !DIEnumerator(name: "REG_EH_REGION", value: 25, isUnsigned: true)
!731 = !DIEnumerator(name: "REG_SAVE_NOTE", value: 26, isUnsigned: true)
!732 = !DIEnumerator(name: "REG_NORETURN", value: 27, isUnsigned: true)
!733 = !DIEnumerator(name: "REG_NON_LOCAL_GOTO", value: 28, isUnsigned: true)
!734 = !DIEnumerator(name: "REG_CROSSING_JUMP", value: 29, isUnsigned: true)
!735 = !DIEnumerator(name: "REG_SETJMP", value: 30, isUnsigned: true)
!736 = !DIEnumerator(name: "REG_NOTE_MAX", value: 31, isUnsigned: true)
!737 = !{!738, !739, !740, !741, !744, !745, !747, !1829, !560, !703, !189, !7, !756, !751, !826, !1832}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!740 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bb_info", file: !3, line: 81, size: 128, elements: !749)
!749 = !{!750, !1831}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "seginfo", scope: !748, file: !3, line: 83, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seginfo", file: !3, line: 72, size: 320, elements: !753)
!753 = !{!754, !755, !1826, !1827, !1828}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !752, file: !3, line: 74, baseType: !740, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "insn_ptr", scope: !752, file: !3, line: 75, baseType: !756, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !757, line: 50, baseType: !758)
!757 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !561, line: 240, size: 384, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !759, file: !561, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !759, file: !561, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !759, file: !561, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !759, file: !561, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !759, file: !561, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !759, file: !561, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !759, file: !561, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !759, file: !561, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !759, file: !561, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !759, file: !561, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !759, file: !561, line: 321, baseType: !772, size: 320, offset: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !561, line: 315, size: 320, elements: !773)
!773 = !{!774, !1761, !1763, !1824, !1825}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !772, file: !561, line: 316, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 64, elements: !791)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !561, line: 183, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !561, line: 166, size: 64, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !793, !794, !806, !809, !871, !1739, !1740, !1751, !1758}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !777, file: !561, line: 168, baseType: !740, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !777, file: !561, line: 169, baseType: !7, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !777, file: !561, line: 170, baseType: !745, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !777, file: !561, line: 171, baseType: !756, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !777, file: !561, line: 172, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !757, line: 53, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !561, line: 359, size: 128, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !786, file: !561, line: 360, baseType: !740, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !786, file: !561, line: 361, baseType: !790, size: 64, offset: 64)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 64, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 1)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !777, file: !561, line: 173, baseType: !189, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !777, file: !561, line: 174, baseType: !795, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !561, line: 133, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 115, size: 32, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803, !804, !805}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !796, file: !561, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !796, file: !561, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !796, file: !561, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !796, file: !561, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !796, file: !561, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !796, file: !561, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !796, file: !561, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !796, file: !561, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !777, file: !561, line: 175, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !561, line: 175, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !777, file: !561, line: 176, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !812, line: 75, size: 256, elements: !813)
!812 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!813 = !{!814, !829, !830, !831}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !811, file: !812, line: 76, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !812, line: 68, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !812, line: 63, size: 320, elements: !818)
!818 = !{!819, !821, !822, !823}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !817, file: !812, line: 64, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !817, file: !812, line: 65, baseType: !820, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !817, file: !812, line: 66, baseType: !7, size: 32, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !817, file: !812, line: 67, baseType: !824, size: 128, offset: 192)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !825, size: 128, elements: !827)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !812, line: 29, baseType: !826)
!826 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!827 = !{!828}
!828 = !DISubrange(count: 2)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !811, file: !812, line: 77, baseType: !815, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !811, file: !812, line: 78, baseType: !7, size: 32, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !811, file: !812, line: 79, baseType: !832, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !812, line: 49, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !812, line: 45, size: 832, elements: !835)
!835 = !{!836, !837, !838}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !834, file: !812, line: 46, baseType: !820, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !834, file: !812, line: 47, baseType: !810, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !834, file: !812, line: 48, baseType: !839, size: 704, offset: 128)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !840, line: 164, size: 704, elements: !841)
!840 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!841 = !{!842, !844, !854, !855, !856, !857, !858, !859, !863, !867, !868, !869, !870}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !839, file: !840, line: 166, baseType: !843, size: 64)
!843 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !839, file: !840, line: 167, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !840, line: 157, size: 192, elements: !847)
!847 = !{!848, !849, !850}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !846, file: !840, line: 159, baseType: !742, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !846, file: !840, line: 160, baseType: !845, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !846, file: !840, line: 161, baseType: !851, size: 32, offset: 128)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 32, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 4)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !839, file: !840, line: 168, baseType: !742, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !839, file: !840, line: 169, baseType: !742, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !839, file: !840, line: 170, baseType: !742, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !839, file: !840, line: 171, baseType: !843, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !839, file: !840, line: 172, baseType: !740, size: 32, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !839, file: !840, line: 176, baseType: !860, size: 64, offset: 448)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!845, !744, !843}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !839, file: !840, line: 177, baseType: !864, size: 64, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !744, !845}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !839, file: !840, line: 178, baseType: !744, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !839, file: !840, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !839, file: !840, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !839, file: !840, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !777, file: !561, line: 177, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !757, line: 56, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !875)
!875 = !{!876, !909, !915, !926, !945, !956, !961, !968, !974, !987, !999, !1037, !1042, !1070, !1078, !1079, !1084, !1093, !1099, !1104, !1108, !1112, !1363, !1412, !1418, !1425, !1432, !1458, !1483, !1500, !1512, !1534, !1549, !1721}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !874, file: !334, line: 3372, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !877, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !877, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !877, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !877, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !877, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !877, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !877, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !877, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !877, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !877, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !877, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !877, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !877, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !877, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !877, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !877, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !877, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !877, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !877, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !877, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !877, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !877, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !877, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !877, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !877, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !877, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !877, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !877, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !877, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !877, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !874, file: !334, line: 3373, baseType: !910, size: 192)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !911)
!911 = !{!912, !913, !914}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !910, file: !334, line: 403, baseType: !877, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !910, file: !334, line: 404, baseType: !872, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !910, file: !334, line: 405, baseType: !872, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !874, file: !334, line: 3374, baseType: !916, size: 320)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !916, file: !334, line: 1385, baseType: !910, size: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !916, file: !334, line: 1386, baseType: !920, size: 128, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !921, line: 58, baseType: !922)
!921 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !921, line: 54, size: 128, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !922, file: !921, line: 56, baseType: !826, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !922, file: !921, line: 57, baseType: !843, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !874, file: !334, line: 3375, baseType: !927, size: 256)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !927, file: !334, line: 1398, baseType: !910, size: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !927, file: !334, line: 1399, baseType: !931, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !933, line: 52, size: 256, elements: !934)
!933 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!934 = !{!935, !936, !937, !938, !939, !940, !941}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !932, file: !933, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !932, file: !933, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !932, file: !933, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !932, file: !933, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !932, file: !933, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !932, file: !933, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !932, file: !933, line: 62, baseType: !942, size: 192, offset: 64)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 192, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 3)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !874, file: !334, line: 3376, baseType: !946, size: 256)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !946, file: !334, line: 1409, baseType: !910, size: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !946, file: !334, line: 1410, baseType: !950, size: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !952, line: 27, size: 192, elements: !953)
!952 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !951, file: !952, line: 29, baseType: !920, size: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !951, file: !952, line: 30, baseType: !189, size: 32, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !874, file: !334, line: 3377, baseType: !957, size: 256)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !957, file: !334, line: 1438, baseType: !910, size: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !957, file: !334, line: 1439, baseType: !872, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !874, file: !334, line: 3378, baseType: !962, size: 256)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !963)
!963 = !{!964, !965, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !962, file: !334, line: 1419, baseType: !910, size: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !962, file: !334, line: 1420, baseType: !740, size: 32, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !962, file: !334, line: 1421, baseType: !967, size: 8, offset: 224)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 8, elements: !791)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !874, file: !334, line: 3379, baseType: !969, size: 320)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !969, file: !334, line: 1429, baseType: !910, size: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !969, file: !334, line: 1430, baseType: !872, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !969, file: !334, line: 1431, baseType: !872, size: 64, offset: 256)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !874, file: !334, line: 3380, baseType: !975, size: 320)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !975, file: !334, line: 1461, baseType: !910, size: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !975, file: !334, line: 1462, baseType: !979, size: 128, offset: 192)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !980, line: 31, size: 128, elements: !981)
!980 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!981 = !{!982, !985, !986}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !979, file: !980, line: 32, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !979, file: !980, line: 33, baseType: !7, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !979, file: !980, line: 34, baseType: !7, size: 32, offset: 96)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !874, file: !334, line: 3381, baseType: !988, size: 384)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !989)
!989 = !{!990, !991, !996, !997, !998}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !988, file: !334, line: 2508, baseType: !910, size: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !988, file: !334, line: 2509, baseType: !992, size: 32, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !993, line: 58, baseType: !994)
!993 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !995, line: 44, baseType: !7)
!995 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!996 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !988, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !988, file: !334, line: 2511, baseType: !872, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !988, file: !334, line: 2512, baseType: !872, size: 64, offset: 320)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !874, file: !334, line: 3382, baseType: !1000, size: 896)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1000, file: !334, line: 2653, baseType: !988, size: 384)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1000, file: !334, line: 2654, baseType: !872, size: 64, offset: 384)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1000, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !1000, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !1000, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !1000, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1000, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !1000, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !1000, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !1000, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1000, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1000, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1000, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1000, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1000, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1000, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1000, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !1000, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !1000, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !1000, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !1000, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !1000, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !1000, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !1000, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !1000, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !1000, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !1000, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1000, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1000, file: !334, line: 2705, baseType: !872, size: 64, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1000, file: !334, line: 2706, baseType: !872, size: 64, offset: 640)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1000, file: !334, line: 2707, baseType: !872, size: 64, offset: 704)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1000, file: !334, line: 2708, baseType: !872, size: 64, offset: 768)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1000, file: !334, line: 2711, baseType: !1035, size: 64, offset: 832)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !874, file: !334, line: 3383, baseType: !1038, size: 960)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1038, file: !334, line: 2757, baseType: !1000, size: 896)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1038, file: !334, line: 2758, baseType: !756, size: 64, offset: 896)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !874, file: !334, line: 3384, baseType: !1043, size: 1472)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1044)
!1044 = !{!1045, !1066, !1067, !1068, !1069}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1043, file: !334, line: 3115, baseType: !1046, size: 1216)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1046, file: !334, line: 2985, baseType: !1038, size: 960)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1046, file: !334, line: 2986, baseType: !872, size: 64, offset: 960)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1046, file: !334, line: 2987, baseType: !872, size: 64, offset: 1024)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1046, file: !334, line: 2988, baseType: !872, size: 64, offset: 1088)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1046, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1046, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1046, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1046, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1046, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1046, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1046, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1046, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1046, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1046, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1046, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1046, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1046, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1046, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1043, file: !334, line: 3117, baseType: !872, size: 64, offset: 1216)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1043, file: !334, line: 3119, baseType: !872, size: 64, offset: 1280)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1043, file: !334, line: 3121, baseType: !872, size: 64, offset: 1344)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1043, file: !334, line: 3123, baseType: !872, size: 64, offset: 1408)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !874, file: !334, line: 3385, baseType: !1071, size: 1088)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1072)
!1072 = !{!1073, !1074, !1075}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1071, file: !334, line: 2875, baseType: !1038, size: 960)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1071, file: !334, line: 2876, baseType: !756, size: 64, offset: 960)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1071, file: !334, line: 2877, baseType: !1076, size: 64, offset: 1024)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !334, line: 2856, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !874, file: !334, line: 3386, baseType: !1046, size: 1216)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !874, file: !334, line: 3387, baseType: !1080, size: 1280)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1080, file: !334, line: 3094, baseType: !1046, size: 1216)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1080, file: !334, line: 3095, baseType: !1076, size: 64, offset: 1216)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !874, file: !334, line: 3388, baseType: !1085, size: 1216)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1092}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1085, file: !334, line: 2825, baseType: !1000, size: 896)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1085, file: !334, line: 2827, baseType: !872, size: 64, offset: 896)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1085, file: !334, line: 2828, baseType: !872, size: 64, offset: 960)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1085, file: !334, line: 2829, baseType: !872, size: 64, offset: 1024)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1085, file: !334, line: 2830, baseType: !872, size: 64, offset: 1088)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1085, file: !334, line: 2831, baseType: !872, size: 64, offset: 1152)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !874, file: !334, line: 3389, baseType: !1094, size: 1024)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1094, file: !334, line: 2851, baseType: !1038, size: 960)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1094, file: !334, line: 2852, baseType: !740, size: 32, offset: 960)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1094, file: !334, line: 2853, baseType: !740, size: 32, offset: 992)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !874, file: !334, line: 3390, baseType: !1100, size: 1024)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1100, file: !334, line: 2858, baseType: !1038, size: 960)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1100, file: !334, line: 2859, baseType: !1076, size: 64, offset: 960)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !874, file: !334, line: 3391, baseType: !1105, size: 960)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1105, file: !334, line: 2863, baseType: !1038, size: 960)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !874, file: !334, line: 3392, baseType: !1109, size: 1472)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1109, file: !334, line: 3305, baseType: !1043, size: 1472)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !874, file: !334, line: 3393, baseType: !1113, size: 1792)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1114)
!1114 = !{!1115, !1116, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1113, file: !334, line: 3249, baseType: !1043, size: 1472)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1113, file: !334, line: 3251, baseType: !1117, size: 64, offset: 1472)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1119, line: 463, size: 1152, elements: !1120)
!1119 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1120 = !{!1121, !1124, !1228, !1229, !1232, !1235, !1287, !1288, !1289, !1290, !1291, !1315, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1118, file: !1119, line: 464, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1119, line: 464, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1118, file: !1119, line: 467, baseType: !1125, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1127)
!1127 = !{!1128, !1203, !1204, !1217, !1218, !1219, !1220, !1221, !1222, !1224, !1226, !1227}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1126, file: !318, line: 377, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !757, line: 111, baseType: !1130)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !1132)
!1132 = !{!1133, !1168, !1169, !1170, !1173, !1177, !1178, !1179, !1197, !1198, !1199, !1200, !1201, !1202}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1131, file: !318, line: 219, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !1136)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !1137)
!1137 = !{!1138}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1136, file: !318, line: 151, baseType: !1139, size: 128)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !1141)
!1141 = !{!1142, !1143, !1144}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1140, file: !318, line: 150, baseType: !7, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1140, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1140, file: !318, line: 150, baseType: !1145, size: 64, offset: 64)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1146, size: 64, elements: !791)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !757, line: 108, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !1149)
!1149 = !{!1150, !1151, !1152, !1160, !1161, !1162, !1163, !1164, !1165, !1166}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1148, file: !318, line: 124, baseType: !1130, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1148, file: !318, line: 125, baseType: !1130, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1148, file: !318, line: 131, baseType: !1153, size: 64, offset: 128)
!1153 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !1154)
!1154 = !{!1155, !1159}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1153, file: !318, line: 129, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !757, line: 66, baseType: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !757, line: 65, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1153, file: !318, line: 130, baseType: !756, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1148, file: !318, line: 134, baseType: !744, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1148, file: !318, line: 137, baseType: !872, size: 64, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1148, file: !318, line: 138, baseType: !992, size: 32, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1148, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1148, file: !318, line: 144, baseType: !740, size: 32, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1148, file: !318, line: 145, baseType: !740, size: 32, offset: 416)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1148, file: !318, line: 146, baseType: !1167, size: 64, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !843)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1131, file: !318, line: 220, baseType: !1134, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1131, file: !318, line: 223, baseType: !744, size: 64, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1131, file: !318, line: 226, baseType: !1171, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !318, line: 185, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1131, file: !318, line: 229, baseType: !1174, size: 128, offset: 256)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1175, size: 128, elements: !827)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1131, file: !318, line: 232, baseType: !1130, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1131, file: !318, line: 233, baseType: !1130, size: 64, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1131, file: !318, line: 238, baseType: !1180, size: 64, offset: 512)
!1180 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !1181)
!1181 = !{!1182, !1188}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1180, file: !318, line: 236, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !1185)
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1184, file: !318, line: 275, baseType: !1156, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1184, file: !318, line: 278, baseType: !1156, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1180, file: !318, line: 237, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1190, file: !318, line: 261, baseType: !756, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1190, file: !318, line: 262, baseType: !756, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1190, file: !318, line: 266, baseType: !756, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1190, file: !318, line: 267, baseType: !756, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1190, file: !318, line: 270, baseType: !740, size: 32, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1131, file: !318, line: 241, baseType: !1167, size: 64, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1131, file: !318, line: 244, baseType: !740, size: 32, offset: 640)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1131, file: !318, line: 247, baseType: !740, size: 32, offset: 672)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1131, file: !318, line: 250, baseType: !740, size: 32, offset: 704)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1131, file: !318, line: 253, baseType: !740, size: 32, offset: 736)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1131, file: !318, line: 256, baseType: !740, size: 32, offset: 768)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1126, file: !318, line: 378, baseType: !1129, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1126, file: !318, line: 381, baseType: !1205, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !1208)
!1208 = !{!1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1207, file: !318, line: 282, baseType: !1210, size: 128)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !1211)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !1212)
!1212 = !{!1213, !1214, !1215}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1211, file: !318, line: 281, baseType: !7, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1211, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1211, file: !318, line: 281, baseType: !1216, size: 64, offset: 64)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1129, size: 64, elements: !791)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1126, file: !318, line: 384, baseType: !740, size: 32, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1126, file: !318, line: 387, baseType: !740, size: 32, offset: 224)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1126, file: !318, line: 390, baseType: !740, size: 32, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1126, file: !318, line: 394, baseType: !1205, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1126, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1126, file: !318, line: 399, baseType: !1223, size: 64, offset: 416)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !827)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1126, file: !318, line: 402, baseType: !1225, size: 64, offset: 480)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !827)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1126, file: !318, line: 406, baseType: !740, size: 32, offset: 544)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1126, file: !318, line: 409, baseType: !740, size: 32, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1118, file: !1119, line: 470, baseType: !1157, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1118, file: !1119, line: 473, baseType: !1230, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1119, line: 166, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1118, file: !1119, line: 476, baseType: !1233, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1119, line: 476, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1118, file: !1119, line: 479, baseType: !1236, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1237, line: 144, baseType: !1238)
!1237 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1237, line: 100, size: 896, elements: !1240)
!1240 = !{!1241, !1249, !1254, !1259, !1261, !1264, !1265, !1266, !1267, !1268, !1273, !1275, !1276, !1281, !1286}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1239, file: !1237, line: 102, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1237, line: 52, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1237, line: 47, baseType: !7)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1239, file: !1237, line: 105, baseType: !1250, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1237, line: 59, baseType: !1251)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!740, !1247, !1247}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1239, file: !1237, line: 108, baseType: !1255, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1237, line: 63, baseType: !1256)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !744}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1239, file: !1237, line: 111, baseType: !1260, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1239, file: !1237, line: 114, baseType: !1262, size: 64, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1263, line: 46, baseType: !826)
!1263 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1239, file: !1237, line: 117, baseType: !1262, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1239, file: !1237, line: 120, baseType: !1262, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1239, file: !1237, line: 124, baseType: !7, size: 32, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1239, file: !1237, line: 128, baseType: !7, size: 32, offset: 480)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1239, file: !1237, line: 131, baseType: !1269, size: 64, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1237, line: 75, baseType: !1270)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!744, !1262, !1262}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1239, file: !1237, line: 132, baseType: !1274, size: 64, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1237, line: 78, baseType: !1256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1239, file: !1237, line: 135, baseType: !744, size: 64, offset: 640)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1239, file: !1237, line: 136, baseType: !1277, size: 64, offset: 704)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1237, line: 82, baseType: !1278)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!744, !744, !1262, !1262}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1239, file: !1237, line: 137, baseType: !1282, size: 64, offset: 768)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1237, line: 83, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !744, !744}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1239, file: !1237, line: 141, baseType: !7, size: 32, offset: 832)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1118, file: !1119, line: 484, baseType: !872, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1118, file: !1119, line: 488, baseType: !872, size: 64, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1118, file: !1119, line: 493, baseType: !872, size: 64, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1118, file: !1119, line: 496, baseType: !872, size: 64, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1118, file: !1119, line: 501, baseType: !1292, size: 64, offset: 640)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !1294)
!1294 = !{!1295, !1298, !1299, !1300, !1301, !1303, !1304, !1309, !1310, !1311, !1312, !1313, !1314}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1293, file: !329, line: 2356, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1293, file: !329, line: 2357, baseType: !745, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1293, file: !329, line: 2358, baseType: !740, size: 32, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1293, file: !329, line: 2359, baseType: !740, size: 32, offset: 160)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1293, file: !329, line: 2360, baseType: !1302, size: 128, offset: 192)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 128, elements: !852)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1293, file: !329, line: 2364, baseType: !740, size: 32, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1293, file: !329, line: 2367, baseType: !1305, size: 128, offset: 384)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1305, file: !329, line: 2351, baseType: !756, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1305, file: !329, line: 2352, baseType: !843, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1293, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1293, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1293, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1293, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1293, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1293, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1118, file: !1119, line: 504, baseType: !1316, size: 64, offset: 704)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1119, line: 504, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1118, file: !1119, line: 507, baseType: !1236, size: 64, offset: 768)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1118, file: !1119, line: 510, baseType: !740, size: 32, offset: 832)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1118, file: !1119, line: 513, baseType: !740, size: 32, offset: 864)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1118, file: !1119, line: 516, baseType: !992, size: 32, offset: 896)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1118, file: !1119, line: 519, baseType: !992, size: 32, offset: 928)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1118, file: !1119, line: 522, baseType: !7, size: 32, offset: 960)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1118, file: !1119, line: 523, baseType: !7, size: 32, offset: 992)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1118, file: !1119, line: 528, baseType: !745, size: 64, offset: 1024)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1118, file: !1119, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1118, file: !1119, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1118, file: !1119, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1118, file: !1119, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1118, file: !1119, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1118, file: !1119, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1118, file: !1119, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1118, file: !1119, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1118, file: !1119, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1118, file: !1119, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1118, file: !1119, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1118, file: !1119, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1118, file: !1119, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1118, file: !1119, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1118, file: !1119, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1118, file: !1119, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1113, file: !334, line: 3254, baseType: !872, size: 64, offset: 1536)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1113, file: !334, line: 3257, baseType: !872, size: 64, offset: 1600)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1113, file: !334, line: 3258, baseType: !872, size: 64, offset: 1664)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1113, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1113, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1113, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1113, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1113, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1113, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1113, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1113, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1113, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1113, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1113, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1113, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1113, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1113, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1113, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1113, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1113, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1113, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !874, file: !334, line: 3394, baseType: !1364, size: 1344)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !1365)
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1391, !1392, !1393, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1364, file: !334, line: 2280, baseType: !910, size: 192)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1364, file: !334, line: 2281, baseType: !872, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1364, file: !334, line: 2282, baseType: !872, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1364, file: !334, line: 2283, baseType: !872, size: 64, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1364, file: !334, line: 2284, baseType: !872, size: 64, offset: 384)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1364, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1364, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1364, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1364, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1364, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1364, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1364, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1364, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1364, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1364, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1364, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1364, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1364, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1364, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1364, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1364, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1364, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1364, file: !334, line: 2306, baseType: !1389, size: 32, offset: 544)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1390, line: 31, baseType: !740)
!1390 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1364, file: !334, line: 2307, baseType: !872, size: 64, offset: 576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1364, file: !334, line: 2308, baseType: !872, size: 64, offset: 640)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1364, file: !334, line: 2314, baseType: !1394, size: 64, offset: 704)
!1394 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !1395)
!1395 = !{!1396, !1397, !1398}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1394, file: !334, line: 2310, baseType: !740, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1394, file: !334, line: 2311, baseType: !745, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1394, file: !334, line: 2312, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1364, file: !334, line: 2315, baseType: !872, size: 64, offset: 768)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1364, file: !334, line: 2316, baseType: !872, size: 64, offset: 832)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1364, file: !334, line: 2317, baseType: !872, size: 64, offset: 896)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1364, file: !334, line: 2318, baseType: !872, size: 64, offset: 960)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1364, file: !334, line: 2319, baseType: !872, size: 64, offset: 1024)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1364, file: !334, line: 2320, baseType: !872, size: 64, offset: 1088)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1364, file: !334, line: 2321, baseType: !872, size: 64, offset: 1152)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1364, file: !334, line: 2322, baseType: !872, size: 64, offset: 1216)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1364, file: !334, line: 2324, baseType: !1410, size: 64, offset: 1280)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !874, file: !334, line: 3395, baseType: !1413, size: 320)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !1414)
!1414 = !{!1415, !1416, !1417}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1413, file: !334, line: 1470, baseType: !910, size: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1413, file: !334, line: 1471, baseType: !872, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1413, file: !334, line: 1472, baseType: !872, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !874, file: !334, line: 3396, baseType: !1419, size: 320)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !1420)
!1420 = !{!1421, !1422, !1423}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1419, file: !334, line: 1483, baseType: !910, size: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1419, file: !334, line: 1484, baseType: !740, size: 32, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1419, file: !334, line: 1485, baseType: !1424, size: 64, offset: 256)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, size: 64, elements: !791)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !874, file: !334, line: 3397, baseType: !1426, size: 384)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1431}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1426, file: !334, line: 1830, baseType: !910, size: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1426, file: !334, line: 1831, baseType: !992, size: 32, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1426, file: !334, line: 1832, baseType: !872, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1426, file: !334, line: 1835, baseType: !1424, size: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !874, file: !334, line: 3398, baseType: !1433, size: 704)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1441, !1442, !1445}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1433, file: !334, line: 1899, baseType: !910, size: 192)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1433, file: !334, line: 1902, baseType: !872, size: 64, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1433, file: !334, line: 1905, baseType: !1438, size: 64, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !757, line: 58, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !757, line: 57, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1433, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1433, file: !334, line: 1911, baseType: !1443, size: 64, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !334, line: 1876, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1433, file: !334, line: 1914, baseType: !1446, size: 256, offset: 448)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !1447)
!1447 = !{!1448, !1450, !1451, !1456}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1446, file: !334, line: 1884, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1446, file: !334, line: 1885, baseType: !1449, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1446, file: !334, line: 1891, baseType: !1452, size: 64, offset: 128)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1446, file: !334, line: 1891, size: 64, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1452, file: !334, line: 1891, baseType: !1438, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1452, file: !334, line: 1891, baseType: !872, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1446, file: !334, line: 1892, baseType: !1457, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !874, file: !334, line: 3399, baseType: !1459, size: 704)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !1460)
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466, !1478, !1479, !1480, !1481, !1482}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1459, file: !334, line: 2009, baseType: !910, size: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1459, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1459, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1459, file: !334, line: 2014, baseType: !992, size: 32, offset: 224)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1459, file: !334, line: 2016, baseType: !872, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1459, file: !334, line: 2017, baseType: !1467, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1470)
!1470 = !{!1471}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1469, file: !334, line: 183, baseType: !1472, size: 128)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1473)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1473, file: !334, line: 182, baseType: !7, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1473, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1473, file: !334, line: 182, baseType: !1424, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1459, file: !334, line: 2019, baseType: !872, size: 64, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1459, file: !334, line: 2020, baseType: !872, size: 64, offset: 448)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1459, file: !334, line: 2021, baseType: !872, size: 64, offset: 512)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1459, file: !334, line: 2022, baseType: !872, size: 64, offset: 576)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1459, file: !334, line: 2023, baseType: !872, size: 64, offset: 640)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !874, file: !334, line: 3400, baseType: !1484, size: 832)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !1485)
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1484, file: !334, line: 2431, baseType: !910, size: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1484, file: !334, line: 2433, baseType: !872, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1484, file: !334, line: 2434, baseType: !872, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1484, file: !334, line: 2435, baseType: !872, size: 64, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1484, file: !334, line: 2436, baseType: !872, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1484, file: !334, line: 2437, baseType: !1467, size: 64, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1484, file: !334, line: 2438, baseType: !872, size: 64, offset: 512)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1484, file: !334, line: 2440, baseType: !872, size: 64, offset: 576)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1484, file: !334, line: 2441, baseType: !872, size: 64, offset: 640)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1484, file: !334, line: 2443, baseType: !1496, size: 128, offset: 704)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1497, file: !334, line: 182, baseType: !1472, size: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !874, file: !334, line: 3401, baseType: !1501, size: 320)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !1502)
!1502 = !{!1503, !1504, !1511}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1501, file: !334, line: 3329, baseType: !910, size: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1501, file: !334, line: 3330, baseType: !1505, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !1507)
!1507 = !{!1508, !1509, !1510}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1506, file: !334, line: 3322, baseType: !1505, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1506, file: !334, line: 3323, baseType: !1505, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1506, file: !334, line: 3324, baseType: !872, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1501, file: !334, line: 3331, baseType: !1505, size: 64, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !874, file: !334, line: 3402, baseType: !1513, size: 256)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1513, file: !334, line: 1541, baseType: !910, size: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1513, file: !334, line: 1542, baseType: !1517, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !1520)
!1520 = !{!1521}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1519, file: !334, line: 1538, baseType: !1522, size: 192)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !1523)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !1524)
!1524 = !{!1525, !1526, !1527}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1523, file: !334, line: 1537, baseType: !7, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1523, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1523, file: !334, line: 1537, baseType: !1528, size: 128, offset: 64)
!1528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1529, size: 128, elements: !791)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !1530)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1530, file: !334, line: 1533, baseType: !872, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1530, file: !334, line: 1534, baseType: !872, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !874, file: !334, line: 3403, baseType: !1535, size: 512)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !1536)
!1536 = !{!1537, !1538, !1539, !1540, !1546, !1547, !1548}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1535, file: !334, line: 1939, baseType: !910, size: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1535, file: !334, line: 1940, baseType: !992, size: 32, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1535, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1535, file: !334, line: 1946, baseType: !1541, size: 32, offset: 256)
!1541 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !1542)
!1542 = !{!1543, !1544, !1545}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1541, file: !334, line: 1943, baseType: !352, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1541, file: !334, line: 1944, baseType: !359, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1541, file: !334, line: 1945, baseType: !366, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1535, file: !334, line: 1950, baseType: !1156, size: 64, offset: 320)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1535, file: !334, line: 1951, baseType: !1156, size: 64, offset: 384)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1535, file: !334, line: 1953, baseType: !1424, size: 64, offset: 448)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !874, file: !334, line: 3404, baseType: !1550, size: 1664)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1550, file: !334, line: 3338, baseType: !910, size: 192)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1550, file: !334, line: 3341, baseType: !1554, size: 1472, offset: 192)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1555, line: 410, size: 1472, elements: !1556)
!1555 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1556 = !{!1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1554, file: !1555, line: 412, baseType: !740, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1554, file: !1555, line: 413, baseType: !740, size: 32, offset: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1554, file: !1555, line: 414, baseType: !740, size: 32, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1554, file: !1555, line: 415, baseType: !740, size: 32, offset: 96)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1554, file: !1555, line: 416, baseType: !740, size: 32, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1554, file: !1555, line: 417, baseType: !740, size: 32, offset: 160)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1554, file: !1555, line: 418, baseType: !739, size: 8, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1554, file: !1555, line: 419, baseType: !739, size: 8, offset: 200)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1554, file: !1555, line: 420, baseType: !1566, size: 8, offset: 208)
!1566 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1554, file: !1555, line: 421, baseType: !1566, size: 8, offset: 216)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1554, file: !1555, line: 422, baseType: !1566, size: 8, offset: 224)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1554, file: !1555, line: 423, baseType: !1566, size: 8, offset: 232)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1554, file: !1555, line: 424, baseType: !1566, size: 8, offset: 240)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1554, file: !1555, line: 425, baseType: !1566, size: 8, offset: 248)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1554, file: !1555, line: 426, baseType: !1566, size: 8, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1554, file: !1555, line: 427, baseType: !1566, size: 8, offset: 264)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1554, file: !1555, line: 428, baseType: !1566, size: 8, offset: 272)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1554, file: !1555, line: 429, baseType: !1566, size: 8, offset: 280)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1554, file: !1555, line: 430, baseType: !1566, size: 8, offset: 288)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1554, file: !1555, line: 431, baseType: !1566, size: 8, offset: 296)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1554, file: !1555, line: 432, baseType: !1566, size: 8, offset: 304)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1554, file: !1555, line: 433, baseType: !1566, size: 8, offset: 312)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1554, file: !1555, line: 434, baseType: !1566, size: 8, offset: 320)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1554, file: !1555, line: 435, baseType: !1566, size: 8, offset: 328)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1554, file: !1555, line: 436, baseType: !1566, size: 8, offset: 336)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1554, file: !1555, line: 437, baseType: !1566, size: 8, offset: 344)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1554, file: !1555, line: 438, baseType: !1566, size: 8, offset: 352)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1554, file: !1555, line: 439, baseType: !1566, size: 8, offset: 360)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1554, file: !1555, line: 440, baseType: !1566, size: 8, offset: 368)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1554, file: !1555, line: 441, baseType: !1566, size: 8, offset: 376)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1554, file: !1555, line: 442, baseType: !1566, size: 8, offset: 384)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1554, file: !1555, line: 443, baseType: !1566, size: 8, offset: 392)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1554, file: !1555, line: 444, baseType: !1566, size: 8, offset: 400)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1554, file: !1555, line: 445, baseType: !1566, size: 8, offset: 408)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1554, file: !1555, line: 446, baseType: !1566, size: 8, offset: 416)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1554, file: !1555, line: 447, baseType: !1566, size: 8, offset: 424)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1554, file: !1555, line: 448, baseType: !1566, size: 8, offset: 432)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1554, file: !1555, line: 449, baseType: !1566, size: 8, offset: 440)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1554, file: !1555, line: 450, baseType: !1566, size: 8, offset: 448)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1554, file: !1555, line: 451, baseType: !1566, size: 8, offset: 456)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1554, file: !1555, line: 452, baseType: !1566, size: 8, offset: 464)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1554, file: !1555, line: 453, baseType: !1566, size: 8, offset: 472)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1554, file: !1555, line: 454, baseType: !1566, size: 8, offset: 480)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1554, file: !1555, line: 455, baseType: !1566, size: 8, offset: 488)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1554, file: !1555, line: 456, baseType: !1566, size: 8, offset: 496)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1554, file: !1555, line: 457, baseType: !1566, size: 8, offset: 504)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1554, file: !1555, line: 458, baseType: !1566, size: 8, offset: 512)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1554, file: !1555, line: 459, baseType: !1566, size: 8, offset: 520)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1554, file: !1555, line: 460, baseType: !1566, size: 8, offset: 528)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1554, file: !1555, line: 461, baseType: !1566, size: 8, offset: 536)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1554, file: !1555, line: 462, baseType: !1566, size: 8, offset: 544)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1554, file: !1555, line: 463, baseType: !1566, size: 8, offset: 552)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1554, file: !1555, line: 464, baseType: !1566, size: 8, offset: 560)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1554, file: !1555, line: 465, baseType: !1566, size: 8, offset: 568)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1554, file: !1555, line: 466, baseType: !1566, size: 8, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1554, file: !1555, line: 467, baseType: !1566, size: 8, offset: 584)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1554, file: !1555, line: 468, baseType: !1566, size: 8, offset: 592)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1554, file: !1555, line: 469, baseType: !1566, size: 8, offset: 600)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1554, file: !1555, line: 470, baseType: !1566, size: 8, offset: 608)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1554, file: !1555, line: 471, baseType: !1566, size: 8, offset: 616)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1554, file: !1555, line: 472, baseType: !1566, size: 8, offset: 624)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1554, file: !1555, line: 473, baseType: !1566, size: 8, offset: 632)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1554, file: !1555, line: 474, baseType: !1566, size: 8, offset: 640)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1554, file: !1555, line: 475, baseType: !1566, size: 8, offset: 648)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1554, file: !1555, line: 476, baseType: !1566, size: 8, offset: 656)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1554, file: !1555, line: 477, baseType: !1566, size: 8, offset: 664)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1554, file: !1555, line: 478, baseType: !1566, size: 8, offset: 672)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1554, file: !1555, line: 479, baseType: !1566, size: 8, offset: 680)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1554, file: !1555, line: 480, baseType: !1566, size: 8, offset: 688)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1554, file: !1555, line: 481, baseType: !1566, size: 8, offset: 696)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1554, file: !1555, line: 482, baseType: !1566, size: 8, offset: 704)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1554, file: !1555, line: 483, baseType: !1566, size: 8, offset: 712)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1554, file: !1555, line: 484, baseType: !1566, size: 8, offset: 720)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1554, file: !1555, line: 485, baseType: !1566, size: 8, offset: 728)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1554, file: !1555, line: 486, baseType: !1566, size: 8, offset: 736)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1554, file: !1555, line: 487, baseType: !1566, size: 8, offset: 744)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1554, file: !1555, line: 488, baseType: !1566, size: 8, offset: 752)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1554, file: !1555, line: 489, baseType: !1566, size: 8, offset: 760)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1554, file: !1555, line: 490, baseType: !1566, size: 8, offset: 768)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1554, file: !1555, line: 491, baseType: !1566, size: 8, offset: 776)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1554, file: !1555, line: 492, baseType: !1566, size: 8, offset: 784)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1554, file: !1555, line: 493, baseType: !1566, size: 8, offset: 792)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1554, file: !1555, line: 494, baseType: !1566, size: 8, offset: 800)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1554, file: !1555, line: 495, baseType: !1566, size: 8, offset: 808)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1554, file: !1555, line: 496, baseType: !1566, size: 8, offset: 816)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1554, file: !1555, line: 497, baseType: !1566, size: 8, offset: 824)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1554, file: !1555, line: 498, baseType: !1566, size: 8, offset: 832)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1554, file: !1555, line: 499, baseType: !1566, size: 8, offset: 840)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1554, file: !1555, line: 500, baseType: !1566, size: 8, offset: 848)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1554, file: !1555, line: 501, baseType: !1566, size: 8, offset: 856)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1554, file: !1555, line: 502, baseType: !1566, size: 8, offset: 864)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1554, file: !1555, line: 503, baseType: !1566, size: 8, offset: 872)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1554, file: !1555, line: 504, baseType: !1566, size: 8, offset: 880)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1554, file: !1555, line: 505, baseType: !1566, size: 8, offset: 888)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1554, file: !1555, line: 506, baseType: !1566, size: 8, offset: 896)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1554, file: !1555, line: 507, baseType: !1566, size: 8, offset: 904)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1554, file: !1555, line: 508, baseType: !1566, size: 8, offset: 912)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1554, file: !1555, line: 509, baseType: !1566, size: 8, offset: 920)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1554, file: !1555, line: 510, baseType: !1566, size: 8, offset: 928)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1554, file: !1555, line: 511, baseType: !1566, size: 8, offset: 936)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1554, file: !1555, line: 512, baseType: !1566, size: 8, offset: 944)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1554, file: !1555, line: 513, baseType: !1566, size: 8, offset: 952)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1554, file: !1555, line: 514, baseType: !1566, size: 8, offset: 960)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1554, file: !1555, line: 515, baseType: !1566, size: 8, offset: 968)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1554, file: !1555, line: 516, baseType: !1566, size: 8, offset: 976)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1554, file: !1555, line: 517, baseType: !1566, size: 8, offset: 984)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1554, file: !1555, line: 518, baseType: !1566, size: 8, offset: 992)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1554, file: !1555, line: 519, baseType: !1566, size: 8, offset: 1000)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1554, file: !1555, line: 520, baseType: !1566, size: 8, offset: 1008)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1554, file: !1555, line: 521, baseType: !1566, size: 8, offset: 1016)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1554, file: !1555, line: 522, baseType: !1566, size: 8, offset: 1024)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1554, file: !1555, line: 523, baseType: !1566, size: 8, offset: 1032)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1554, file: !1555, line: 524, baseType: !1566, size: 8, offset: 1040)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1554, file: !1555, line: 525, baseType: !1566, size: 8, offset: 1048)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1554, file: !1555, line: 526, baseType: !1566, size: 8, offset: 1056)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1554, file: !1555, line: 527, baseType: !1566, size: 8, offset: 1064)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1554, file: !1555, line: 528, baseType: !1566, size: 8, offset: 1072)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1554, file: !1555, line: 529, baseType: !1566, size: 8, offset: 1080)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1554, file: !1555, line: 530, baseType: !1566, size: 8, offset: 1088)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1554, file: !1555, line: 531, baseType: !1566, size: 8, offset: 1096)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1554, file: !1555, line: 532, baseType: !1566, size: 8, offset: 1104)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1554, file: !1555, line: 533, baseType: !1566, size: 8, offset: 1112)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1554, file: !1555, line: 534, baseType: !1566, size: 8, offset: 1120)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1554, file: !1555, line: 535, baseType: !1566, size: 8, offset: 1128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1554, file: !1555, line: 536, baseType: !1566, size: 8, offset: 1136)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1554, file: !1555, line: 537, baseType: !1566, size: 8, offset: 1144)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1554, file: !1555, line: 538, baseType: !1566, size: 8, offset: 1152)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1554, file: !1555, line: 539, baseType: !1566, size: 8, offset: 1160)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1554, file: !1555, line: 540, baseType: !1566, size: 8, offset: 1168)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1554, file: !1555, line: 541, baseType: !1566, size: 8, offset: 1176)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1554, file: !1555, line: 542, baseType: !1566, size: 8, offset: 1184)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1554, file: !1555, line: 543, baseType: !1566, size: 8, offset: 1192)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1554, file: !1555, line: 544, baseType: !1566, size: 8, offset: 1200)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1554, file: !1555, line: 545, baseType: !1566, size: 8, offset: 1208)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1554, file: !1555, line: 546, baseType: !1566, size: 8, offset: 1216)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1554, file: !1555, line: 547, baseType: !1566, size: 8, offset: 1224)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1554, file: !1555, line: 548, baseType: !1566, size: 8, offset: 1232)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1554, file: !1555, line: 549, baseType: !1566, size: 8, offset: 1240)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1554, file: !1555, line: 550, baseType: !1566, size: 8, offset: 1248)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1554, file: !1555, line: 551, baseType: !1566, size: 8, offset: 1256)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1554, file: !1555, line: 552, baseType: !1566, size: 8, offset: 1264)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1554, file: !1555, line: 553, baseType: !1566, size: 8, offset: 1272)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1554, file: !1555, line: 554, baseType: !1566, size: 8, offset: 1280)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1554, file: !1555, line: 555, baseType: !1566, size: 8, offset: 1288)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1554, file: !1555, line: 556, baseType: !1566, size: 8, offset: 1296)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1554, file: !1555, line: 557, baseType: !1566, size: 8, offset: 1304)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1554, file: !1555, line: 558, baseType: !1566, size: 8, offset: 1312)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1554, file: !1555, line: 559, baseType: !1566, size: 8, offset: 1320)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1554, file: !1555, line: 560, baseType: !1566, size: 8, offset: 1328)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1554, file: !1555, line: 561, baseType: !1566, size: 8, offset: 1336)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1554, file: !1555, line: 562, baseType: !1566, size: 8, offset: 1344)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1554, file: !1555, line: 563, baseType: !1566, size: 8, offset: 1352)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1554, file: !1555, line: 564, baseType: !1566, size: 8, offset: 1360)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1554, file: !1555, line: 565, baseType: !1566, size: 8, offset: 1368)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1554, file: !1555, line: 566, baseType: !1566, size: 8, offset: 1376)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1554, file: !1555, line: 567, baseType: !1566, size: 8, offset: 1384)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1554, file: !1555, line: 568, baseType: !1566, size: 8, offset: 1392)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1554, file: !1555, line: 569, baseType: !1566, size: 8, offset: 1400)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1554, file: !1555, line: 570, baseType: !1566, size: 8, offset: 1408)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1554, file: !1555, line: 571, baseType: !1566, size: 8, offset: 1416)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1554, file: !1555, line: 572, baseType: !1566, size: 8, offset: 1424)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1554, file: !1555, line: 573, baseType: !1566, size: 8, offset: 1432)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1554, file: !1555, line: 574, baseType: !1566, size: 8, offset: 1440)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !874, file: !334, line: 3405, baseType: !1722, size: 384)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !1723)
!1723 = !{!1724, !1725}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1722, file: !334, line: 3353, baseType: !910, size: 192)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1722, file: !334, line: 3356, baseType: !1726, size: 192, offset: 192)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1555, line: 578, size: 192, elements: !1727)
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1726, file: !1555, line: 580, baseType: !740, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1726, file: !1555, line: 581, baseType: !740, size: 32, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1726, file: !1555, line: 582, baseType: !740, size: 32, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1726, file: !1555, line: 583, baseType: !740, size: 32, offset: 96)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1726, file: !1555, line: 584, baseType: !739, size: 8, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1726, file: !1555, line: 585, baseType: !739, size: 8, offset: 136)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1726, file: !1555, line: 586, baseType: !739, size: 8, offset: 144)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1726, file: !1555, line: 587, baseType: !739, size: 8, offset: 152)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1726, file: !1555, line: 588, baseType: !739, size: 8, offset: 160)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1726, file: !1555, line: 589, baseType: !739, size: 8, offset: 168)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1726, file: !1555, line: 590, baseType: !739, size: 8, offset: 176)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !777, file: !561, line: 178, baseType: !1130, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !777, file: !561, line: 179, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !561, line: 150, baseType: !1743)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !561, line: 142, size: 320, elements: !1744)
!1744 = !{!1745, !1746, !1747, !1748, !1749, !1750}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1743, file: !561, line: 144, baseType: !872, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1743, file: !561, line: 145, baseType: !756, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1743, file: !561, line: 146, baseType: !756, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1743, file: !561, line: 147, baseType: !1389, size: 32, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1743, file: !561, line: 148, baseType: !7, size: 32, offset: 224)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1743, file: !561, line: 149, baseType: !739, size: 8, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !777, file: !561, line: 180, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !561, line: 162, baseType: !1754)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !561, line: 159, size: 128, elements: !1755)
!1755 = !{!1756, !1757}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1754, file: !561, line: 160, baseType: !872, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1754, file: !561, line: 161, baseType: !843, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !777, file: !561, line: 181, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !561, line: 181, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !772, file: !561, line: 317, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !843, size: 64, elements: !791)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !772, file: !561, line: 318, baseType: !1764, size: 320)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !561, line: 188, size: 320, elements: !1765)
!1765 = !{!1766, !1768, !1823}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1764, file: !561, line: 190, baseType: !1767, size: 192)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 192, elements: !943)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1764, file: !561, line: 193, baseType: !1769, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !561, line: 206, size: 320, elements: !1771)
!1771 = !{!1772, !1808, !1809, !1810, !1822}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1770, file: !561, line: 208, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !757, line: 62, baseType: !1775)
!1775 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1776, line: 538, size: 256, elements: !1777)
!1776 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1777 = !{!1778, !1782, !1788, !1799}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1775, file: !1776, line: 539, baseType: !1779, size: 32)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1776, line: 482, size: 32, elements: !1780)
!1780 = !{!1781}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1779, file: !1776, line: 484, baseType: !7, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1775, file: !1776, line: 540, baseType: !1783, size: 192)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1776, line: 488, size: 192, elements: !1784)
!1784 = !{!1785, !1786, !1787}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1783, file: !1776, line: 489, baseType: !1779, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1783, file: !1776, line: 492, baseType: !745, size: 64, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1783, file: !1776, line: 496, baseType: !872, size: 64, offset: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1775, file: !1776, line: 541, baseType: !1789, size: 256)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1776, line: 504, size: 256, elements: !1790)
!1790 = !{!1791, !1792, !1797, !1798}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1789, file: !1776, line: 505, baseType: !1779, size: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1789, file: !1776, line: 509, baseType: !1793, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1776, line: 501, baseType: !1794)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{null, !1247}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1789, file: !1776, line: 510, baseType: !1247, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1789, file: !1776, line: 513, baseType: !1773, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1775, file: !1776, line: 542, baseType: !1800, size: 128)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1776, line: 530, size: 128, elements: !1801)
!1801 = !{!1802, !1803}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1800, file: !1776, line: 531, baseType: !1779, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1800, file: !1776, line: 534, baseType: !1804, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1776, line: 525, baseType: !1805)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!739, !872, !745, !826, !826}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1770, file: !561, line: 211, baseType: !7, size: 32, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1770, file: !561, line: 214, baseType: !843, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1770, file: !561, line: 224, baseType: !1811, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !561, line: 202, baseType: !1813)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !561, line: 202, size: 128, elements: !1814)
!1814 = !{!1815}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1813, file: !561, line: 202, baseType: !1816, size: 128)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !561, line: 200, baseType: !1817)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !561, line: 200, size: 128, elements: !1818)
!1818 = !{!1819, !1820, !1821}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1817, file: !561, line: 200, baseType: !7, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1817, file: !561, line: 200, baseType: !7, size: 32, offset: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1817, file: !561, line: 200, baseType: !790, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1770, file: !561, line: 234, baseType: !1811, size: 64, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1764, file: !561, line: 197, baseType: !843, size: 64, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !772, file: !561, line: 319, baseType: !932, size: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !772, file: !561, line: 320, baseType: !951, size: 192)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "bbnum", scope: !752, file: !3, line: 76, baseType: !740, size: 32, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !752, file: !3, line: 77, baseType: !751, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "regs_live", scope: !752, file: !3, line: 78, baseType: !1829, size: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "HARD_REG_ELT_TYPE", file: !1830, line: 42, baseType: !826)
!1830 = !DIFile(filename: "./hard-reg-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "computing", scope: !748, file: !3, line: 84, baseType: !740, size: 32, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1833 = !{!0, !1834, !1947, !1949, !1951}
!1834 = !DIGlobalVariableExpression(var: !1835, expr: !DIExpression())
!1835 = distinct !DIGlobalVariable(name: "num_modes", scope: !1836, file: !3, line: 439, type: !1945, isLocal: true, isDefinition: true)
!1836 = distinct !DISubprogram(name: "optimize_mode_switching", scope: !3, file: !3, line: 431, type: !1837, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!740}
!1839 = !{!1840, !1841, !1842, !1843, !1844, !1856, !1864, !1865, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1879, !1883, !1884, !1885, !1889, !1890, !1891, !1899, !1900, !1906, !1907, !1911, !1912, !1913, !1917, !1918, !1922, !1926, !1927, !1928, !1929, !1930, !1934, !1938, !1939}
!1840 = !DILocalVariable(name: "insn", scope: !1836, file: !3, line: 433, type: !756)
!1841 = !DILocalVariable(name: "e", scope: !1836, file: !3, line: 434, type: !740)
!1842 = !DILocalVariable(name: "bb", scope: !1836, file: !3, line: 435, type: !1129)
!1843 = !DILocalVariable(name: "need_commit", scope: !1836, file: !3, line: 436, type: !740)
!1844 = !DILocalVariable(name: "kill", scope: !1836, file: !3, line: 437, type: !1845)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !1847, line: 45, baseType: !1848)
!1847 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !1847, line: 39, size: 192, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1854}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !1849, file: !1847, line: 41, baseType: !738, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !1849, file: !1847, line: 42, baseType: !7, size: 32, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1849, file: !1847, line: 43, baseType: !7, size: 32, offset: 96)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !1849, file: !1847, line: 44, baseType: !1855, size: 64, offset: 128)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 64, elements: !791)
!1856 = !DILocalVariable(name: "edge_list", scope: !1836, file: !3, line: 438, type: !1857)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_list", file: !318, line: 572, size: 128, elements: !1859)
!1859 = !{!1860, !1861, !1862}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !1858, file: !318, line: 574, baseType: !740, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "num_edges", scope: !1858, file: !318, line: 575, baseType: !740, size: 32, offset: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "index_to_edge", scope: !1858, file: !318, line: 576, baseType: !1863, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1864 = !DILocalVariable(name: "entity_map", scope: !1836, file: !3, line: 441, type: !1302)
!1865 = !DILocalVariable(name: "bb_info", scope: !1836, file: !3, line: 442, type: !1866)
!1866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 256, elements: !852)
!1867 = !DILocalVariable(name: "i", scope: !1836, file: !3, line: 443, type: !740)
!1868 = !DILocalVariable(name: "j", scope: !1836, file: !3, line: 443, type: !740)
!1869 = !DILocalVariable(name: "n_entities", scope: !1836, file: !3, line: 444, type: !740)
!1870 = !DILocalVariable(name: "max_num_modes", scope: !1836, file: !3, line: 445, type: !740)
!1871 = !DILocalVariable(name: "emited", scope: !1836, file: !3, line: 446, type: !739)
!1872 = !DILocalVariable(name: "post_entry", scope: !1836, file: !3, line: 447, type: !1129)
!1873 = !DILocalVariable(name: "pre_exit", scope: !1836, file: !3, line: 447, type: !1129)
!1874 = !DILocalVariable(name: "entry_exit_extra", scope: !1875, file: !3, line: 452, type: !740)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 451, column: 7)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 450, column: 9)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 449, column: 3)
!1878 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 449, column: 3)
!1879 = !DILocalVariable(name: "e", scope: !1880, file: !3, line: 489, type: !740)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 488, column: 5)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 487, column: 3)
!1882 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 487, column: 3)
!1883 = !DILocalVariable(name: "no_mode", scope: !1880, file: !3, line: 490, type: !740)
!1884 = !DILocalVariable(name: "info", scope: !1880, file: !3, line: 491, type: !747)
!1885 = !DILocalVariable(name: "ptr", scope: !1886, file: !3, line: 498, type: !751)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 497, column: 2)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 496, column: 7)
!1888 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 496, column: 7)
!1889 = !DILocalVariable(name: "last_mode", scope: !1886, file: !3, line: 499, type: !740)
!1890 = !DILocalVariable(name: "live_now", scope: !1886, file: !3, line: 500, type: !1829)
!1891 = !DILocalVariable(name: "ei", scope: !1892, file: !3, line: 506, type: !1893)
!1892 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 505, column: 4)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !318, line: 682, baseType: !1894)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !318, line: 679, size: 128, elements: !1895)
!1895 = !{!1896, !1897}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1894, file: !318, line: 680, baseType: !7, size: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !1894, file: !318, line: 681, baseType: !1898, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1899 = !DILocalVariable(name: "e", scope: !1892, file: !3, line: 507, type: !1146)
!1900 = !DILocalVariable(name: "mode", scope: !1901, file: !3, line: 525, type: !740)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 524, column: 3)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 523, column: 12)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !3, line: 522, column: 6)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 519, column: 4)
!1905 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 519, column: 4)
!1906 = !DILocalVariable(name: "link", scope: !1901, file: !3, line: 526, type: !756)
!1907 = !DILocalVariable(name: "current_mode", scope: !1908, file: !3, line: 587, type: !1302)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 586, column: 5)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 585, column: 3)
!1910 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 585, column: 3)
!1911 = !DILocalVariable(name: "del", scope: !1908, file: !3, line: 588, type: !1845)
!1912 = !DILocalVariable(name: "insert", scope: !1908, file: !3, line: 589, type: !1845)
!1913 = !DILocalVariable(name: "m", scope: !1914, file: !3, line: 596, type: !740)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 595, column: 2)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 594, column: 7)
!1916 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 594, column: 7)
!1917 = !DILocalVariable(name: "info", scope: !1914, file: !3, line: 597, type: !747)
!1918 = !DILocalVariable(name: "no_mode", scope: !1919, file: !3, line: 620, type: !740)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 618, column: 2)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 617, column: 7)
!1921 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 617, column: 7)
!1922 = !DILocalVariable(name: "eg", scope: !1923, file: !3, line: 631, type: !1146)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 630, column: 6)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 629, column: 4)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 629, column: 4)
!1926 = !DILocalVariable(name: "mode", scope: !1923, file: !3, line: 632, type: !740)
!1927 = !DILocalVariable(name: "src_bb", scope: !1923, file: !3, line: 633, type: !1129)
!1928 = !DILocalVariable(name: "live_at_edge", scope: !1923, file: !3, line: 634, type: !1829)
!1929 = !DILocalVariable(name: "mode_set", scope: !1923, file: !3, line: 635, type: !756)
!1930 = !DILocalVariable(name: "no_mode", scope: !1931, file: !3, line: 683, type: !740)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 682, column: 5)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 681, column: 3)
!1933 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 681, column: 3)
!1934 = !DILocalVariable(name: "ptr", scope: !1935, file: !3, line: 687, type: !751)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 686, column: 2)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 685, column: 7)
!1937 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 685, column: 7)
!1938 = !DILocalVariable(name: "next", scope: !1935, file: !3, line: 687, type: !751)
!1939 = !DILocalVariable(name: "mode_set", scope: !1940, file: !3, line: 693, type: !756)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 692, column: 3)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 691, column: 12)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 689, column: 6)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 688, column: 4)
!1944 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 688, column: 4)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1946, size: 128, elements: !852)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!1947 = !DIGlobalVariableExpression(var: !1948, expr: !DIExpression())
!1948 = distinct !DIGlobalVariable(name: "antic", scope: !2, file: !3, line: 89, type: !1845, isLocal: true, isDefinition: true)
!1949 = !DIGlobalVariableExpression(var: !1950, expr: !DIExpression())
!1950 = distinct !DIGlobalVariable(name: "transp", scope: !2, file: !3, line: 90, type: !1845, isLocal: true, isDefinition: true)
!1951 = !DIGlobalVariableExpression(var: !1952, expr: !DIExpression())
!1952 = distinct !DIGlobalVariable(name: "comp", scope: !2, file: !3, line: 91, type: !1845, isLocal: true, isDefinition: true)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !6, line: 162, size: 640, elements: !1954)
!1954 = !{!1955}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1953, file: !6, line: 164, baseType: !1956, size: 640)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1957)
!1957 = !{!1958, !1959, !1960, !1964, !1968, !1970, !1971, !1972, !1974, !1975, !1976, !1977, !1978}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1956, file: !6, line: 117, baseType: !5, size: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1956, file: !6, line: 121, baseType: !745, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1956, file: !6, line: 125, baseType: !1961, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!739}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1956, file: !6, line: 130, baseType: !1965, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!7}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1956, file: !6, line: 133, baseType: !1969, size: 64, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1956, file: !6, line: 136, baseType: !1969, size: 64, offset: 320)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1956, file: !6, line: 139, baseType: !740, size: 32, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1956, file: !6, line: 143, baseType: !1973, size: 32, offset: 416)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1956, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1956, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1956, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1956, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1956, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1979 = !{i32 2, !"Dwarf Version", i32 4}
!1980 = !{i32 2, !"Debug Info Version", i32 3}
!1981 = !{i32 1, !"wchar_size", i32 4}
!1982 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1983 = distinct !DISubprogram(name: "vprintf", scope: !1984, file: !1984, line: 39, type: !1985, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1995)
!1984 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!740, !1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !745)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1990)
!1990 = !{!1991, !1992, !1993, !1994}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1989, file: !3, baseType: !7, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1989, file: !3, baseType: !7, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1989, file: !3, baseType: !744, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1989, file: !3, baseType: !744, size: 64, offset: 128)
!1995 = !{!1996, !1997}
!1996 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1983, file: !1984, line: 39, type: !1987)
!1997 = !DILocalVariable(name: "__arg", arg: 2, scope: !1983, file: !1984, line: 39, type: !1988)
!1998 = !DILocation(line: 0, scope: !1983)
!1999 = !DILocation(line: 41, column: 20, scope: !1983)
!2000 = !DILocation(line: 41, column: 10, scope: !1983)
!2001 = !DILocation(line: 41, column: 3, scope: !1983)
!2002 = distinct !DISubprogram(name: "getchar", scope: !1984, file: !1984, line: 47, type: !1837, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2003)
!2003 = !{}
!2004 = !DILocation(line: 49, column: 16, scope: !2002)
!2005 = !DILocation(line: 49, column: 10, scope: !2002)
!2006 = !DILocation(line: 49, column: 3, scope: !2002)
!2007 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1984, file: !1984, line: 56, type: !2008, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2061)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!740, !2010}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2012, line: 7, baseType: !2013)
!2012 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2014, line: 49, size: 1728, elements: !2015)
!2014 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2015 = !{!2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2031, !2033, !2034, !2035, !2038, !2040, !2041, !2042, !2045, !2047, !2050, !2053, !2054, !2055, !2056, !2057}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2013, file: !2014, line: 51, baseType: !740, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2013, file: !2014, line: 54, baseType: !742, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2013, file: !2014, line: 55, baseType: !742, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2013, file: !2014, line: 56, baseType: !742, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2013, file: !2014, line: 57, baseType: !742, size: 64, offset: 256)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2013, file: !2014, line: 58, baseType: !742, size: 64, offset: 320)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2013, file: !2014, line: 59, baseType: !742, size: 64, offset: 384)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2013, file: !2014, line: 60, baseType: !742, size: 64, offset: 448)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2013, file: !2014, line: 61, baseType: !742, size: 64, offset: 512)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2013, file: !2014, line: 64, baseType: !742, size: 64, offset: 576)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2013, file: !2014, line: 65, baseType: !742, size: 64, offset: 640)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2013, file: !2014, line: 66, baseType: !742, size: 64, offset: 704)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2013, file: !2014, line: 68, baseType: !2029, size: 64, offset: 768)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2014, line: 36, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2013, file: !2014, line: 70, baseType: !2032, size: 64, offset: 832)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2013, file: !2014, line: 72, baseType: !740, size: 32, offset: 896)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2013, file: !2014, line: 73, baseType: !740, size: 32, offset: 928)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2013, file: !2014, line: 74, baseType: !2036, size: 64, offset: 960)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2037, line: 152, baseType: !843)
!2037 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2013, file: !2014, line: 77, baseType: !2039, size: 16, offset: 1024)
!2039 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2013, file: !2014, line: 78, baseType: !1566, size: 8, offset: 1040)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2013, file: !2014, line: 79, baseType: !967, size: 8, offset: 1048)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2013, file: !2014, line: 81, baseType: !2043, size: 64, offset: 1088)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2014, line: 43, baseType: null)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2013, file: !2014, line: 89, baseType: !2046, size: 64, offset: 1152)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2037, line: 153, baseType: !843)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2013, file: !2014, line: 91, baseType: !2048, size: 64, offset: 1216)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2014, line: 37, flags: DIFlagFwdDecl)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2013, file: !2014, line: 92, baseType: !2051, size: 64, offset: 1280)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2014, line: 38, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2013, file: !2014, line: 93, baseType: !2032, size: 64, offset: 1344)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2013, file: !2014, line: 94, baseType: !744, size: 64, offset: 1408)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2013, file: !2014, line: 95, baseType: !1262, size: 64, offset: 1472)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2013, file: !2014, line: 96, baseType: !740, size: 32, offset: 1536)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2013, file: !2014, line: 98, baseType: !2058, size: 160, offset: 1568)
!2058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 160, elements: !2059)
!2059 = !{!2060}
!2060 = !DISubrange(count: 20)
!2061 = !{!2062}
!2062 = !DILocalVariable(name: "__fp", arg: 1, scope: !2007, file: !1984, line: 56, type: !2010)
!2063 = !DILocation(line: 0, scope: !2007)
!2064 = !DILocation(line: 58, column: 10, scope: !2007)
!2065 = !DILocation(line: 58, column: 3, scope: !2007)
!2066 = distinct !DISubprogram(name: "getc_unlocked", scope: !1984, file: !1984, line: 66, type: !2008, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2067)
!2067 = !{!2068}
!2068 = !DILocalVariable(name: "__fp", arg: 1, scope: !2066, file: !1984, line: 66, type: !2010)
!2069 = !DILocation(line: 0, scope: !2066)
!2070 = !DILocation(line: 68, column: 10, scope: !2066)
!2071 = !DILocation(line: 68, column: 3, scope: !2066)
!2072 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1984, file: !1984, line: 73, type: !1837, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2003)
!2073 = !DILocation(line: 75, column: 10, scope: !2072)
!2074 = !DILocation(line: 75, column: 3, scope: !2072)
!2075 = distinct !DISubprogram(name: "putchar", scope: !1984, file: !1984, line: 82, type: !2076, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2078)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!740, !740}
!2078 = !{!2079}
!2079 = !DILocalVariable(name: "__c", arg: 1, scope: !2075, file: !1984, line: 82, type: !740)
!2080 = !DILocation(line: 0, scope: !2075)
!2081 = !DILocation(line: 84, column: 21, scope: !2075)
!2082 = !DILocation(line: 84, column: 10, scope: !2075)
!2083 = !DILocation(line: 84, column: 3, scope: !2075)
!2084 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1984, file: !1984, line: 91, type: !2085, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!740, !740, !2010}
!2087 = !{!2088, !2089}
!2088 = !DILocalVariable(name: "__c", arg: 1, scope: !2084, file: !1984, line: 91, type: !740)
!2089 = !DILocalVariable(name: "__stream", arg: 2, scope: !2084, file: !1984, line: 91, type: !2010)
!2090 = !DILocation(line: 0, scope: !2084)
!2091 = !DILocation(line: 93, column: 10, scope: !2084)
!2092 = !DILocation(line: 93, column: 3, scope: !2084)
!2093 = distinct !DISubprogram(name: "putc_unlocked", scope: !1984, file: !1984, line: 101, type: !2085, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2094)
!2094 = !{!2095, !2096}
!2095 = !DILocalVariable(name: "__c", arg: 1, scope: !2093, file: !1984, line: 101, type: !740)
!2096 = !DILocalVariable(name: "__stream", arg: 2, scope: !2093, file: !1984, line: 101, type: !2010)
!2097 = !DILocation(line: 0, scope: !2093)
!2098 = !DILocation(line: 103, column: 10, scope: !2093)
!2099 = !DILocation(line: 103, column: 3, scope: !2093)
!2100 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1984, file: !1984, line: 108, type: !2076, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2101)
!2101 = !{!2102}
!2102 = !DILocalVariable(name: "__c", arg: 1, scope: !2100, file: !1984, line: 108, type: !740)
!2103 = !DILocation(line: 0, scope: !2100)
!2104 = !DILocation(line: 110, column: 10, scope: !2100)
!2105 = !DILocation(line: 110, column: 3, scope: !2100)
!2106 = distinct !DISubprogram(name: "getline", scope: !1984, file: !1984, line: 118, type: !2107, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2111)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!2109, !741, !2110, !2010}
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2037, line: 193, baseType: !843)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!2111 = !{!2112, !2113, !2114}
!2112 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2106, file: !1984, line: 118, type: !741)
!2113 = !DILocalVariable(name: "__n", arg: 2, scope: !2106, file: !1984, line: 118, type: !2110)
!2114 = !DILocalVariable(name: "__stream", arg: 3, scope: !2106, file: !1984, line: 118, type: !2010)
!2115 = !DILocation(line: 0, scope: !2106)
!2116 = !DILocation(line: 120, column: 10, scope: !2106)
!2117 = !DILocation(line: 120, column: 3, scope: !2106)
!2118 = distinct !DISubprogram(name: "feof_unlocked", scope: !1984, file: !1984, line: 128, type: !2008, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2119)
!2119 = !{!2120}
!2120 = !DILocalVariable(name: "__stream", arg: 1, scope: !2118, file: !1984, line: 128, type: !2010)
!2121 = !DILocation(line: 0, scope: !2118)
!2122 = !DILocation(line: 130, column: 10, scope: !2118)
!2123 = !DILocation(line: 130, column: 3, scope: !2118)
!2124 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1984, file: !1984, line: 135, type: !2008, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2125)
!2125 = !{!2126}
!2126 = !DILocalVariable(name: "__stream", arg: 1, scope: !2124, file: !1984, line: 135, type: !2010)
!2127 = !DILocation(line: 0, scope: !2124)
!2128 = !DILocation(line: 137, column: 10, scope: !2124)
!2129 = !DILocation(line: 137, column: 3, scope: !2124)
!2130 = distinct !DISubprogram(name: "tolower", scope: !2131, file: !2131, line: 207, type: !2076, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2132)
!2131 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2132 = !{!2133}
!2133 = !DILocalVariable(name: "__c", arg: 1, scope: !2130, file: !2131, line: 207, type: !740)
!2134 = !DILocation(line: 0, scope: !2130)
!2135 = !DILocation(line: 209, column: 22, scope: !2130)
!2136 = !DILocation(line: 209, column: 39, scope: !2130)
!2137 = !DILocation(line: 209, column: 38, scope: !2130)
!2138 = !DILocation(line: 209, column: 37, scope: !2130)
!2139 = !DILocation(line: 209, column: 10, scope: !2130)
!2140 = !DILocation(line: 209, column: 3, scope: !2130)
!2141 = distinct !DISubprogram(name: "toupper", scope: !2131, file: !2131, line: 213, type: !2076, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2142)
!2142 = !{!2143}
!2143 = !DILocalVariable(name: "__c", arg: 1, scope: !2141, file: !2131, line: 213, type: !740)
!2144 = !DILocation(line: 0, scope: !2141)
!2145 = !DILocation(line: 215, column: 22, scope: !2141)
!2146 = !DILocation(line: 215, column: 39, scope: !2141)
!2147 = !DILocation(line: 215, column: 38, scope: !2141)
!2148 = !DILocation(line: 215, column: 37, scope: !2141)
!2149 = !DILocation(line: 215, column: 10, scope: !2141)
!2150 = !DILocation(line: 215, column: 3, scope: !2141)
!2151 = distinct !DISubprogram(name: "atoi", scope: !2152, file: !2152, line: 361, type: !2153, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2155)
!2152 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!740, !745}
!2155 = !{!2156}
!2156 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2151, file: !2152, line: 361, type: !745)
!2157 = !DILocation(line: 0, scope: !2151)
!2158 = !DILocation(line: 363, column: 16, scope: !2151)
!2159 = !DILocation(line: 363, column: 10, scope: !2151)
!2160 = !DILocation(line: 363, column: 3, scope: !2151)
!2161 = distinct !DISubprogram(name: "atol", scope: !2152, file: !2152, line: 366, type: !2162, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!843, !745}
!2164 = !{!2165}
!2165 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2161, file: !2152, line: 366, type: !745)
!2166 = !DILocation(line: 0, scope: !2161)
!2167 = !DILocation(line: 368, column: 10, scope: !2161)
!2168 = !DILocation(line: 368, column: 3, scope: !2161)
!2169 = distinct !DISubprogram(name: "atoll", scope: !2152, file: !2152, line: 373, type: !2170, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2173)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!2172, !745}
!2172 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2173 = !{!2174}
!2174 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2169, file: !2152, line: 373, type: !745)
!2175 = !DILocation(line: 0, scope: !2169)
!2176 = !DILocation(line: 375, column: 10, scope: !2169)
!2177 = !DILocation(line: 375, column: 3, scope: !2169)
!2178 = distinct !DISubprogram(name: "bsearch", scope: !2179, file: !2179, line: 20, type: !2180, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2183)
!2179 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!744, !1247, !1247, !1262, !1262, !2182}
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2152, line: 808, baseType: !1251)
!2183 = !{!2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193}
!2184 = !DILocalVariable(name: "__key", arg: 1, scope: !2178, file: !2179, line: 20, type: !1247)
!2185 = !DILocalVariable(name: "__base", arg: 2, scope: !2178, file: !2179, line: 20, type: !1247)
!2186 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2178, file: !2179, line: 20, type: !1262)
!2187 = !DILocalVariable(name: "__size", arg: 4, scope: !2178, file: !2179, line: 20, type: !1262)
!2188 = !DILocalVariable(name: "__compar", arg: 5, scope: !2178, file: !2179, line: 21, type: !2182)
!2189 = !DILocalVariable(name: "__l", scope: !2178, file: !2179, line: 23, type: !1262)
!2190 = !DILocalVariable(name: "__u", scope: !2178, file: !2179, line: 23, type: !1262)
!2191 = !DILocalVariable(name: "__idx", scope: !2178, file: !2179, line: 23, type: !1262)
!2192 = !DILocalVariable(name: "__p", scope: !2178, file: !2179, line: 24, type: !1247)
!2193 = !DILocalVariable(name: "__comparison", scope: !2178, file: !2179, line: 25, type: !740)
!2194 = !DILocation(line: 0, scope: !2178)
!2195 = !DILocation(line: 29, column: 3, scope: !2178)
!2196 = !DILocation(line: 27, column: 7, scope: !2178)
!2197 = !DILocation(line: 29, column: 14, scope: !2178)
!2198 = !DILocation(line: 31, column: 20, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2178, file: !2179, line: 30, column: 5)
!2200 = !DILocation(line: 31, column: 27, scope: !2199)
!2201 = !DILocation(line: 32, column: 56, scope: !2199)
!2202 = !DILocation(line: 32, column: 47, scope: !2199)
!2203 = !DILocation(line: 33, column: 22, scope: !2199)
!2204 = !DILocation(line: 34, column: 24, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2199, file: !2179, line: 34, column: 11)
!2206 = !DILocation(line: 34, column: 11, scope: !2199)
!2207 = !DILocation(line: 36, column: 29, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2205, file: !2179, line: 36, column: 16)
!2209 = !DILocation(line: 36, column: 16, scope: !2205)
!2210 = !DILocation(line: 37, column: 14, scope: !2208)
!2211 = distinct !{!2211, !2195, !2212}
!2212 = !DILocation(line: 40, column: 5, scope: !2178)
!2213 = !DILocation(line: 43, column: 1, scope: !2178)
!2214 = distinct !DISubprogram(name: "atof", scope: !2215, file: !2215, line: 25, type: !2216, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2219)
!2215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!2218, !745}
!2218 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2219 = !{!2220}
!2220 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2214, file: !2215, line: 25, type: !745)
!2221 = !DILocation(line: 0, scope: !2214)
!2222 = !DILocation(line: 27, column: 10, scope: !2214)
!2223 = !DILocation(line: 27, column: 3, scope: !2214)
!2224 = distinct !DISubprogram(name: "strtoimax", scope: !2225, file: !2225, line: 324, type: !2226, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2225 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!2228, !1987, !2231, !740}
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2229, line: 101, baseType: !2230)
!2229 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2037, line: 72, baseType: !843)
!2231 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !741)
!2232 = !{!2233, !2234, !2235}
!2233 = !DILocalVariable(name: "nptr", arg: 1, scope: !2224, file: !2225, line: 324, type: !1987)
!2234 = !DILocalVariable(name: "endptr", arg: 2, scope: !2224, file: !2225, line: 324, type: !2231)
!2235 = !DILocalVariable(name: "base", arg: 3, scope: !2224, file: !2225, line: 324, type: !740)
!2236 = !DILocation(line: 0, scope: !2224)
!2237 = !DILocation(line: 327, column: 10, scope: !2224)
!2238 = !DILocation(line: 327, column: 3, scope: !2224)
!2239 = distinct !DISubprogram(name: "strtoumax", scope: !2225, file: !2225, line: 336, type: !2240, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2244)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!2242, !1987, !2231, !740}
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2229, line: 102, baseType: !2243)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2037, line: 73, baseType: !826)
!2244 = !{!2245, !2246, !2247}
!2245 = !DILocalVariable(name: "nptr", arg: 1, scope: !2239, file: !2225, line: 336, type: !1987)
!2246 = !DILocalVariable(name: "endptr", arg: 2, scope: !2239, file: !2225, line: 336, type: !2231)
!2247 = !DILocalVariable(name: "base", arg: 3, scope: !2239, file: !2225, line: 336, type: !740)
!2248 = !DILocation(line: 0, scope: !2239)
!2249 = !DILocation(line: 339, column: 10, scope: !2239)
!2250 = !DILocation(line: 339, column: 3, scope: !2239)
!2251 = distinct !DISubprogram(name: "wcstoimax", scope: !2225, file: !2225, line: 348, type: !2252, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2261)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!2228, !2254, !2258, !740}
!2254 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2255)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2257)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2225, line: 34, baseType: !740)
!2258 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2259)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2261 = !{!2262, !2263, !2264}
!2262 = !DILocalVariable(name: "nptr", arg: 1, scope: !2251, file: !2225, line: 348, type: !2254)
!2263 = !DILocalVariable(name: "endptr", arg: 2, scope: !2251, file: !2225, line: 348, type: !2258)
!2264 = !DILocalVariable(name: "base", arg: 3, scope: !2251, file: !2225, line: 348, type: !740)
!2265 = !DILocation(line: 0, scope: !2251)
!2266 = !DILocation(line: 351, column: 10, scope: !2251)
!2267 = !DILocation(line: 351, column: 3, scope: !2251)
!2268 = distinct !DISubprogram(name: "wcstoumax", scope: !2225, file: !2225, line: 362, type: !2269, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!2242, !2254, !2258, !740}
!2271 = !{!2272, !2273, !2274}
!2272 = !DILocalVariable(name: "nptr", arg: 1, scope: !2268, file: !2225, line: 362, type: !2254)
!2273 = !DILocalVariable(name: "endptr", arg: 2, scope: !2268, file: !2225, line: 362, type: !2258)
!2274 = !DILocalVariable(name: "base", arg: 3, scope: !2268, file: !2225, line: 362, type: !740)
!2275 = !DILocation(line: 0, scope: !2268)
!2276 = !DILocation(line: 365, column: 10, scope: !2268)
!2277 = !DILocation(line: 365, column: 3, scope: !2268)
!2278 = distinct !DISubprogram(name: "stat", scope: !2279, file: !2279, line: 453, type: !2280, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2317)
!2279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!740, !745, !2282}
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2284, line: 46, size: 1152, elements: !2285)
!2284 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2285 = !{!2286, !2288, !2290, !2292, !2294, !2296, !2298, !2299, !2300, !2301, !2303, !2305, !2313, !2314, !2315}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2283, file: !2284, line: 48, baseType: !2287, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2037, line: 145, baseType: !826)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2283, file: !2284, line: 53, baseType: !2289, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2037, line: 148, baseType: !826)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2283, file: !2284, line: 61, baseType: !2291, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2037, line: 151, baseType: !826)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2283, file: !2284, line: 62, baseType: !2293, size: 32, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2037, line: 150, baseType: !7)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2283, file: !2284, line: 64, baseType: !2295, size: 32, offset: 224)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2037, line: 146, baseType: !7)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2283, file: !2284, line: 65, baseType: !2297, size: 32, offset: 256)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2037, line: 147, baseType: !7)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2283, file: !2284, line: 67, baseType: !740, size: 32, offset: 288)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2283, file: !2284, line: 69, baseType: !2287, size: 64, offset: 320)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2283, file: !2284, line: 74, baseType: !2036, size: 64, offset: 384)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2283, file: !2284, line: 78, baseType: !2302, size: 64, offset: 448)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2037, line: 174, baseType: !843)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2283, file: !2284, line: 80, baseType: !2304, size: 64, offset: 512)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2037, line: 179, baseType: !843)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2283, file: !2284, line: 91, baseType: !2306, size: 128, offset: 576)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2307, line: 10, size: 128, elements: !2308)
!2307 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2308 = !{!2309, !2311}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2306, file: !2307, line: 12, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2037, line: 160, baseType: !843)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2306, file: !2307, line: 16, baseType: !2312, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2037, line: 196, baseType: !843)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2283, file: !2284, line: 92, baseType: !2306, size: 128, offset: 704)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2283, file: !2284, line: 93, baseType: !2306, size: 128, offset: 832)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2283, file: !2284, line: 106, baseType: !2316, size: 192, offset: 960)
!2316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2312, size: 192, elements: !943)
!2317 = !{!2318, !2319}
!2318 = !DILocalVariable(name: "__path", arg: 1, scope: !2278, file: !2279, line: 453, type: !745)
!2319 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2278, file: !2279, line: 453, type: !2282)
!2320 = !DILocation(line: 0, scope: !2278)
!2321 = !DILocation(line: 455, column: 10, scope: !2278)
!2322 = !DILocation(line: 455, column: 3, scope: !2278)
!2323 = distinct !DISubprogram(name: "lstat", scope: !2279, file: !2279, line: 460, type: !2280, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2324)
!2324 = !{!2325, !2326}
!2325 = !DILocalVariable(name: "__path", arg: 1, scope: !2323, file: !2279, line: 460, type: !745)
!2326 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2323, file: !2279, line: 460, type: !2282)
!2327 = !DILocation(line: 0, scope: !2323)
!2328 = !DILocation(line: 462, column: 10, scope: !2323)
!2329 = !DILocation(line: 462, column: 3, scope: !2323)
!2330 = distinct !DISubprogram(name: "fstat", scope: !2279, file: !2279, line: 467, type: !2331, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2333)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!740, !740, !2282}
!2333 = !{!2334, !2335}
!2334 = !DILocalVariable(name: "__fd", arg: 1, scope: !2330, file: !2279, line: 467, type: !740)
!2335 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2330, file: !2279, line: 467, type: !2282)
!2336 = !DILocation(line: 0, scope: !2330)
!2337 = !DILocation(line: 469, column: 10, scope: !2330)
!2338 = !DILocation(line: 469, column: 3, scope: !2330)
!2339 = distinct !DISubprogram(name: "fstatat", scope: !2279, file: !2279, line: 474, type: !2340, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2342)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!740, !740, !745, !2282, !740}
!2342 = !{!2343, !2344, !2345, !2346}
!2343 = !DILocalVariable(name: "__fd", arg: 1, scope: !2339, file: !2279, line: 474, type: !740)
!2344 = !DILocalVariable(name: "__filename", arg: 2, scope: !2339, file: !2279, line: 474, type: !745)
!2345 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2339, file: !2279, line: 474, type: !2282)
!2346 = !DILocalVariable(name: "__flag", arg: 4, scope: !2339, file: !2279, line: 474, type: !740)
!2347 = !DILocation(line: 0, scope: !2339)
!2348 = !DILocation(line: 477, column: 10, scope: !2339)
!2349 = !DILocation(line: 477, column: 3, scope: !2339)
!2350 = distinct !DISubprogram(name: "mknod", scope: !2279, file: !2279, line: 483, type: !2351, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!740, !745, !2293, !2287}
!2353 = !{!2354, !2355, !2356}
!2354 = !DILocalVariable(name: "__path", arg: 1, scope: !2350, file: !2279, line: 483, type: !745)
!2355 = !DILocalVariable(name: "__mode", arg: 2, scope: !2350, file: !2279, line: 483, type: !2293)
!2356 = !DILocalVariable(name: "__dev", arg: 3, scope: !2350, file: !2279, line: 483, type: !2287)
!2357 = !DILocation(line: 0, scope: !2350)
!2358 = !DILocation(line: 485, column: 10, scope: !2350)
!2359 = !DILocation(line: 485, column: 3, scope: !2350)
!2360 = distinct !DISubprogram(name: "mknodat", scope: !2279, file: !2279, line: 491, type: !2361, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!740, !740, !745, !2293, !2287}
!2363 = !{!2364, !2365, !2366, !2367}
!2364 = !DILocalVariable(name: "__fd", arg: 1, scope: !2360, file: !2279, line: 491, type: !740)
!2365 = !DILocalVariable(name: "__path", arg: 2, scope: !2360, file: !2279, line: 491, type: !745)
!2366 = !DILocalVariable(name: "__mode", arg: 3, scope: !2360, file: !2279, line: 491, type: !2293)
!2367 = !DILocalVariable(name: "__dev", arg: 4, scope: !2360, file: !2279, line: 491, type: !2287)
!2368 = !DILocation(line: 0, scope: !2360)
!2369 = !DILocation(line: 494, column: 10, scope: !2360)
!2370 = !DILocation(line: 494, column: 3, scope: !2360)
!2371 = distinct !DISubprogram(name: "stat64", scope: !2279, file: !2279, line: 502, type: !2372, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2394)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!740, !745, !2374}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2284, line: 119, size: 1152, elements: !2376)
!2376 = !{!2377, !2378, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2390, !2391, !2392, !2393}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2375, file: !2284, line: 121, baseType: !2287, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2375, file: !2284, line: 123, baseType: !2379, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2037, line: 149, baseType: !826)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2375, file: !2284, line: 124, baseType: !2291, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2375, file: !2284, line: 125, baseType: !2293, size: 32, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2375, file: !2284, line: 132, baseType: !2295, size: 32, offset: 224)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2375, file: !2284, line: 133, baseType: !2297, size: 32, offset: 256)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2375, file: !2284, line: 135, baseType: !740, size: 32, offset: 288)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2375, file: !2284, line: 136, baseType: !2287, size: 64, offset: 320)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2375, file: !2284, line: 137, baseType: !2036, size: 64, offset: 384)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2375, file: !2284, line: 143, baseType: !2302, size: 64, offset: 448)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2375, file: !2284, line: 144, baseType: !2389, size: 64, offset: 512)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2037, line: 180, baseType: !843)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2375, file: !2284, line: 152, baseType: !2306, size: 128, offset: 576)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2375, file: !2284, line: 153, baseType: !2306, size: 128, offset: 704)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2375, file: !2284, line: 154, baseType: !2306, size: 128, offset: 832)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2375, file: !2284, line: 164, baseType: !2316, size: 192, offset: 960)
!2394 = !{!2395, !2396}
!2395 = !DILocalVariable(name: "__path", arg: 1, scope: !2371, file: !2279, line: 502, type: !745)
!2396 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2371, file: !2279, line: 502, type: !2374)
!2397 = !DILocation(line: 0, scope: !2371)
!2398 = !DILocation(line: 504, column: 10, scope: !2371)
!2399 = !DILocation(line: 504, column: 3, scope: !2371)
!2400 = distinct !DISubprogram(name: "lstat64", scope: !2279, file: !2279, line: 509, type: !2372, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2401)
!2401 = !{!2402, !2403}
!2402 = !DILocalVariable(name: "__path", arg: 1, scope: !2400, file: !2279, line: 509, type: !745)
!2403 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2400, file: !2279, line: 509, type: !2374)
!2404 = !DILocation(line: 0, scope: !2400)
!2405 = !DILocation(line: 511, column: 10, scope: !2400)
!2406 = !DILocation(line: 511, column: 3, scope: !2400)
!2407 = distinct !DISubprogram(name: "fstat64", scope: !2279, file: !2279, line: 516, type: !2408, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!740, !740, !2374}
!2410 = !{!2411, !2412}
!2411 = !DILocalVariable(name: "__fd", arg: 1, scope: !2407, file: !2279, line: 516, type: !740)
!2412 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2407, file: !2279, line: 516, type: !2374)
!2413 = !DILocation(line: 0, scope: !2407)
!2414 = !DILocation(line: 518, column: 10, scope: !2407)
!2415 = !DILocation(line: 518, column: 3, scope: !2407)
!2416 = distinct !DISubprogram(name: "fstatat64", scope: !2279, file: !2279, line: 523, type: !2417, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!740, !740, !745, !2374, !740}
!2419 = !{!2420, !2421, !2422, !2423}
!2420 = !DILocalVariable(name: "__fd", arg: 1, scope: !2416, file: !2279, line: 523, type: !740)
!2421 = !DILocalVariable(name: "__filename", arg: 2, scope: !2416, file: !2279, line: 523, type: !745)
!2422 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2416, file: !2279, line: 523, type: !2374)
!2423 = !DILocalVariable(name: "__flag", arg: 4, scope: !2416, file: !2279, line: 523, type: !740)
!2424 = !DILocation(line: 0, scope: !2416)
!2425 = !DILocation(line: 526, column: 10, scope: !2416)
!2426 = !DILocation(line: 526, column: 3, scope: !2416)
!2427 = distinct !DISubprogram(name: "gate_mode_switching", scope: !3, file: !3, line: 740, type: !1962, scopeLine: 741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2003)
!2428 = !DILocation(line: 743, column: 3, scope: !2427)
!2429 = distinct !DISubprogram(name: "rest_of_handle_mode_switching", scope: !3, file: !3, line: 750, type: !1966, scopeLine: 751, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2003)
!2430 = !DILocation(line: 753, column: 3, scope: !2429)
!2431 = !DILocation(line: 755, column: 3, scope: !2429)
!2432 = !DILocation(line: 0, scope: !1836)
!2433 = !DILocation(line: 441, column: 3, scope: !1836)
!2434 = !DILocation(line: 441, column: 7, scope: !1836)
!2435 = !DILocation(line: 442, column: 3, scope: !1836)
!2436 = !DILocation(line: 442, column: 19, scope: !1836)
!2437 = !DILocation(line: 449, column: 8, scope: !1878)
!2438 = !DILocation(line: 0, scope: !1878)
!2439 = !DILocation(line: 449, column: 46, scope: !1877)
!2440 = !DILocation(line: 449, column: 3, scope: !1878)
!2441 = !DILocation(line: 450, column: 9, scope: !1876)
!2442 = !DILocation(line: 450, column: 9, scope: !1877)
!2443 = !DILocation(line: 0, scope: !1875)
!2444 = !DILocation(line: 461, column: 6, scope: !1875)
!2445 = !DILocation(line: 460, column: 2, scope: !1875)
!2446 = !DILocation(line: 461, column: 4, scope: !1875)
!2447 = !DILocation(line: 462, column: 23, scope: !1875)
!2448 = !DILocation(line: 462, column: 2, scope: !1875)
!2449 = !DILocation(line: 462, column: 27, scope: !1875)
!2450 = !DILocation(line: 463, column: 6, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 463, column: 6)
!2452 = !DILocation(line: 463, column: 19, scope: !2451)
!2453 = !DILocation(line: 463, column: 6, scope: !1875)
!2454 = !DILocation(line: 464, column: 4, scope: !2451)
!2455 = !DILocation(line: 449, column: 53, scope: !1877)
!2456 = !DILocation(line: 449, column: 3, scope: !1877)
!2457 = distinct !{!2457, !2440, !2458}
!2458 = !DILocation(line: 465, column: 7, scope: !1878)
!2459 = !DILocation(line: 467, column: 9, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 467, column: 7)
!2461 = !DILocation(line: 467, column: 7, scope: !1836)
!2462 = !DILocation(line: 477, column: 3, scope: !1836)
!2463 = !DILocation(line: 481, column: 33, scope: !1836)
!2464 = !DILocation(line: 481, column: 11, scope: !1836)
!2465 = !DILocation(line: 481, column: 9, scope: !1836)
!2466 = !DILocation(line: 482, column: 34, scope: !1836)
!2467 = !DILocation(line: 482, column: 12, scope: !1836)
!2468 = !DILocation(line: 482, column: 10, scope: !1836)
!2469 = !DILocation(line: 483, column: 32, scope: !1836)
!2470 = !DILocation(line: 483, column: 10, scope: !1836)
!2471 = !DILocation(line: 483, column: 8, scope: !1836)
!2472 = !DILocation(line: 485, column: 24, scope: !1836)
!2473 = !DILocation(line: 485, column: 32, scope: !1836)
!2474 = !DILocation(line: 485, column: 3, scope: !1836)
!2475 = !DILocation(line: 0, scope: !1886)
!2476 = !DILocation(line: 0, scope: !1892)
!2477 = !DILocation(line: 0, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 508, column: 6)
!2479 = !DILocation(line: 0, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 508, column: 6)
!2481 = !DILocation(line: 487, column: 8, scope: !1882)
!2482 = !DILocation(line: 0, scope: !1882)
!2483 = !DILocation(line: 487, column: 30, scope: !1881)
!2484 = !DILocation(line: 487, column: 3, scope: !1882)
!2485 = !DILocation(line: 489, column: 15, scope: !1880)
!2486 = !DILocation(line: 0, scope: !1880)
!2487 = !DILocation(line: 490, column: 21, scope: !1880)
!2488 = !DILocation(line: 491, column: 30, scope: !1880)
!2489 = !DILocation(line: 496, column: 7, scope: !1888)
!2490 = !DILocation(line: 496, column: 7, scope: !1887)
!2491 = !DILocation(line: 0, scope: !1888)
!2492 = !DILocation(line: 500, column: 4, scope: !1886)
!2493 = !DILocation(line: 502, column: 4, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 502, column: 4)
!2495 = !DILocation(line: 506, column: 6, scope: !1892)
!2496 = !DILocation(line: 507, column: 6, scope: !1892)
!2497 = !DILocation(line: 508, column: 6, scope: !2478)
!2498 = !DILocation(line: 508, column: 6, scope: !2480)
!2499 = !DILocation(line: 511, column: 10, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 511, column: 10)
!2501 = !DILocation(line: 509, column: 12, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 509, column: 12)
!2503 = !DILocation(line: 509, column: 15, scope: !2502)
!2504 = !DILocation(line: 509, column: 21, scope: !2502)
!2505 = !DILocation(line: 509, column: 12, scope: !2480)
!2506 = distinct !{!2506, !2497, !2507}
!2507 = !DILocation(line: 510, column: 3, scope: !2478)
!2508 = !DILocation(line: 511, column: 10, scope: !1892)
!2509 = !DILocation(line: 513, column: 31, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 512, column: 8)
!2511 = !DILocation(line: 513, column: 49, scope: !2510)
!2512 = !DILocation(line: 513, column: 56, scope: !2510)
!2513 = !DILocation(line: 513, column: 9, scope: !2510)
!2514 = !DILocation(line: 514, column: 27, scope: !2510)
!2515 = !DILocation(line: 514, column: 21, scope: !2510)
!2516 = !DILocation(line: 514, column: 3, scope: !2510)
!2517 = !DILocation(line: 515, column: 14, scope: !2510)
!2518 = !DILocation(line: 515, column: 25, scope: !2510)
!2519 = !DILocation(line: 515, column: 3, scope: !2510)
!2520 = !DILocation(line: 516, column: 8, scope: !2510)
!2521 = !DILocation(line: 517, column: 4, scope: !1886)
!2522 = !DILocation(line: 519, column: 16, scope: !1905)
!2523 = !DILocation(line: 0, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 529, column: 7)
!2525 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 528, column: 9)
!2526 = !DILocation(line: 519, column: 9, scope: !1905)
!2527 = !DILocation(line: 0, scope: !1905)
!2528 = !DILocation(line: 520, column: 14, scope: !1904)
!2529 = !DILocation(line: 520, column: 22, scope: !1904)
!2530 = !DILocation(line: 520, column: 33, scope: !1904)
!2531 = !DILocation(line: 520, column: 30, scope: !1904)
!2532 = !DILocation(line: 519, column: 4, scope: !1905)
!2533 = !DILocation(line: 523, column: 12, scope: !1902)
!2534 = !DILocation(line: 523, column: 12, scope: !1903)
!2535 = !DILocation(line: 525, column: 16, scope: !1901)
!2536 = !DILocation(line: 0, scope: !1901)
!2537 = !DILocation(line: 528, column: 14, scope: !2525)
!2538 = !DILocation(line: 528, column: 33, scope: !2525)
!2539 = !DILocation(line: 528, column: 25, scope: !2525)
!2540 = !DILocation(line: 531, column: 44, scope: !2524)
!2541 = !DILocation(line: 531, column: 51, scope: !2524)
!2542 = !DILocation(line: 531, column: 15, scope: !2524)
!2543 = !DILocation(line: 532, column: 33, scope: !2524)
!2544 = !DILocation(line: 532, column: 27, scope: !2524)
!2545 = !DILocation(line: 532, column: 9, scope: !2524)
!2546 = !DILocation(line: 533, column: 20, scope: !2524)
!2547 = !DILocation(line: 533, column: 31, scope: !2524)
!2548 = !DILocation(line: 533, column: 9, scope: !2524)
!2549 = !DILocation(line: 534, column: 7, scope: !2524)
!2550 = !DILocation(line: 539, column: 17, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 539, column: 5)
!2552 = !DILocation(line: 539, column: 10, scope: !2551)
!2553 = !DILocation(line: 0, scope: !2551)
!2554 = !DILocation(line: 539, column: 5, scope: !2551)
!2555 = !DILocation(line: 540, column: 11, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 540, column: 11)
!2557 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 539, column: 5)
!2558 = !DILocation(line: 540, column: 32, scope: !2556)
!2559 = !DILocation(line: 540, column: 11, scope: !2557)
!2560 = !DILocation(line: 541, column: 19, scope: !2556)
!2561 = !DILocation(line: 541, column: 9, scope: !2556)
!2562 = !DILocation(line: 539, column: 48, scope: !2557)
!2563 = !DILocation(line: 539, column: 5, scope: !2557)
!2564 = distinct !{!2564, !2554, !2565}
!2565 = !DILocation(line: 541, column: 44, scope: !2551)
!2566 = !DILocation(line: 543, column: 18, scope: !1901)
!2567 = !DILocation(line: 543, column: 5, scope: !1901)
!2568 = !DILocation(line: 544, column: 10, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 544, column: 5)
!2570 = !DILocation(line: 0, scope: !2569)
!2571 = !DILocation(line: 544, column: 5, scope: !2569)
!2572 = !DILocation(line: 545, column: 11, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 545, column: 11)
!2574 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 544, column: 5)
!2575 = !DILocation(line: 545, column: 32, scope: !2573)
!2576 = !DILocation(line: 545, column: 11, scope: !2574)
!2577 = !DILocation(line: 546, column: 19, scope: !2573)
!2578 = !DILocation(line: 546, column: 9, scope: !2573)
!2579 = !DILocation(line: 544, column: 48, scope: !2574)
!2580 = !DILocation(line: 544, column: 5, scope: !2574)
!2581 = distinct !{!2581, !2571, !2582}
!2582 = !DILocation(line: 546, column: 44, scope: !2569)
!2583 = !DILocation(line: 521, column: 16, scope: !1904)
!2584 = !DILocation(line: 519, column: 4, scope: !1904)
!2585 = distinct !{!2585, !2532, !2586}
!2586 = !DILocation(line: 548, column: 6, scope: !1905)
!2587 = !DILocation(line: 550, column: 13, scope: !1886)
!2588 = !DILocation(line: 550, column: 4, scope: !1886)
!2589 = !DILocation(line: 550, column: 20, scope: !1886)
!2590 = !DILocation(line: 550, column: 30, scope: !1886)
!2591 = !DILocation(line: 552, column: 18, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 552, column: 8)
!2593 = !DILocation(line: 552, column: 8, scope: !1886)
!2594 = !DILocation(line: 554, column: 36, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 553, column: 6)
!2596 = !DILocation(line: 554, column: 53, scope: !2595)
!2597 = !DILocation(line: 554, column: 60, scope: !2595)
!2598 = !DILocation(line: 554, column: 14, scope: !2595)
!2599 = !DILocation(line: 555, column: 32, scope: !2595)
!2600 = !DILocation(line: 555, column: 26, scope: !2595)
!2601 = !DILocation(line: 555, column: 8, scope: !2595)
!2602 = !DILocation(line: 556, column: 6, scope: !2595)
!2603 = !DILocation(line: 557, column: 2, scope: !1887)
!2604 = !DILocation(line: 0, scope: !1887)
!2605 = distinct !{!2605, !2489, !2606}
!2606 = !DILocation(line: 557, column: 2, scope: !1888)
!2607 = !DILocation(line: 487, column: 3, scope: !1881)
!2608 = distinct !{!2608, !2484, !2609}
!2609 = !DILocation(line: 582, column: 5, scope: !1882)
!2610 = !DILocation(line: 584, column: 32, scope: !1836)
!2611 = !DILocation(line: 584, column: 10, scope: !1836)
!2612 = !DILocation(line: 0, scope: !1908)
!2613 = !DILocation(line: 0, scope: !1923)
!2614 = !DILocation(line: 585, column: 8, scope: !1910)
!2615 = !DILocation(line: 0, scope: !1910)
!2616 = !DILocation(line: 436, column: 7, scope: !1836)
!2617 = !DILocation(line: 585, column: 17, scope: !1909)
!2618 = !DILocation(line: 585, column: 3, scope: !1910)
!2619 = !DILocation(line: 587, column: 7, scope: !1908)
!2620 = !DILocation(line: 587, column: 11, scope: !1908)
!2621 = !DILocation(line: 588, column: 7, scope: !1908)
!2622 = !DILocation(line: 589, column: 7, scope: !1908)
!2623 = !DILocation(line: 592, column: 28, scope: !1908)
!2624 = !DILocation(line: 592, column: 35, scope: !1908)
!2625 = !DILocation(line: 592, column: 7, scope: !1908)
!2626 = !DILocation(line: 593, column: 28, scope: !1908)
!2627 = !DILocation(line: 593, column: 34, scope: !1908)
!2628 = !DILocation(line: 593, column: 7, scope: !1908)
!2629 = !DILocation(line: 594, column: 12, scope: !1916)
!2630 = !DILocation(line: 0, scope: !1916)
!2631 = !DILocation(line: 594, column: 34, scope: !1915)
!2632 = !DILocation(line: 594, column: 7, scope: !1916)
!2633 = !DILocation(line: 596, column: 12, scope: !1914)
!2634 = !DILocation(line: 596, column: 28, scope: !1914)
!2635 = !DILocation(line: 0, scope: !1914)
!2636 = !DILocation(line: 597, column: 27, scope: !1914)
!2637 = !DILocation(line: 599, column: 4, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 599, column: 4)
!2639 = !DILocation(line: 599, column: 4, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 599, column: 4)
!2641 = !DILocation(line: 0, scope: !2638)
!2642 = !DILocation(line: 601, column: 21, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 601, column: 12)
!2644 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 600, column: 6)
!2645 = !DILocation(line: 601, column: 12, scope: !2643)
!2646 = !DILocation(line: 601, column: 28, scope: !2643)
!2647 = !DILocation(line: 601, column: 37, scope: !2643)
!2648 = !DILocation(line: 601, column: 42, scope: !2643)
!2649 = !DILocation(line: 601, column: 12, scope: !2644)
!2650 = !DILocation(line: 602, column: 12, scope: !2643)
!2651 = !DILocation(line: 602, column: 3, scope: !2643)
!2652 = !DILocation(line: 604, column: 21, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 604, column: 12)
!2654 = !DILocation(line: 604, column: 12, scope: !2653)
!2655 = !DILocation(line: 604, column: 28, scope: !2653)
!2656 = !DILocation(line: 604, column: 38, scope: !2653)
!2657 = !DILocation(line: 604, column: 12, scope: !2644)
!2658 = !DILocation(line: 605, column: 12, scope: !2653)
!2659 = !DILocation(line: 605, column: 3, scope: !2653)
!2660 = !DILocation(line: 0, scope: !2640)
!2661 = distinct !{!2661, !2637, !2662}
!2662 = !DILocation(line: 606, column: 6, scope: !2638)
!2663 = !DILocation(line: 594, column: 7, scope: !1915)
!2664 = distinct !{!2664, !2632, !2665}
!2665 = !DILocation(line: 607, column: 2, scope: !1916)
!2666 = !DILocation(line: 612, column: 7, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 612, column: 7)
!2668 = !DILocation(line: 612, column: 7, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 612, column: 7)
!2670 = !DILocation(line: 0, scope: !2667)
!2671 = !DILocation(line: 613, column: 24, scope: !2669)
!2672 = !DILocation(line: 613, column: 15, scope: !2669)
!2673 = !DILocation(line: 613, column: 32, scope: !2669)
!2674 = !DILocation(line: 613, column: 2, scope: !2669)
!2675 = !DILocation(line: 0, scope: !2669)
!2676 = distinct !{!2676, !2666, !2677}
!2677 = !DILocation(line: 613, column: 49, scope: !2667)
!2678 = !DILocation(line: 614, column: 45, scope: !1908)
!2679 = !DILocation(line: 614, column: 53, scope: !1908)
!2680 = !DILocation(line: 614, column: 59, scope: !1908)
!2681 = !DILocation(line: 614, column: 19, scope: !1908)
!2682 = !DILocation(line: 0, scope: !1925)
!2683 = !DILocation(line: 617, column: 12, scope: !1921)
!2684 = !DILocation(line: 0, scope: !1921)
!2685 = !DILocation(line: 617, column: 34, scope: !1920)
!2686 = !DILocation(line: 617, column: 7, scope: !1921)
!2687 = !DILocation(line: 620, column: 28, scope: !1919)
!2688 = !DILocation(line: 620, column: 18, scope: !1919)
!2689 = !DILocation(line: 0, scope: !1919)
!2690 = !DILocation(line: 629, column: 13, scope: !1925)
!2691 = !DILocation(line: 0, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 639, column: 12)
!2693 = !DILocation(line: 629, column: 9, scope: !1925)
!2694 = !DILocation(line: 629, column: 42, scope: !1924)
!2695 = !DILocation(line: 629, column: 4, scope: !1925)
!2696 = !DILocation(line: 631, column: 18, scope: !1923)
!2697 = !DILocation(line: 634, column: 8, scope: !1923)
!2698 = !DILocation(line: 637, column: 12, scope: !1923)
!2699 = !DILocation(line: 637, column: 16, scope: !1923)
!2700 = !DILocation(line: 639, column: 14, scope: !2692)
!2701 = !DILocation(line: 639, column: 12, scope: !1923)
!2702 = !DILocation(line: 642, column: 16, scope: !1923)
!2703 = !DILocation(line: 644, column: 15, scope: !1923)
!2704 = !DILocation(line: 645, column: 21, scope: !1923)
!2705 = !DILocation(line: 647, column: 8, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 647, column: 8)
!2707 = !DILocation(line: 649, column: 8, scope: !1923)
!2708 = !DILocation(line: 650, column: 8, scope: !1923)
!2709 = !DILocation(line: 651, column: 19, scope: !1923)
!2710 = !DILocation(line: 652, column: 8, scope: !1923)
!2711 = !DILocation(line: 655, column: 21, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 655, column: 12)
!2713 = !DILocation(line: 655, column: 12, scope: !1923)
!2714 = !DILocation(line: 659, column: 8, scope: !1923)
!2715 = !DILocation(line: 662, column: 8, scope: !1923)
!2716 = !DILocation(line: 663, column: 6, scope: !1924)
!2717 = !DILocation(line: 629, column: 4, scope: !1924)
!2718 = distinct !{!2718, !2695, !2719}
!2719 = !DILocation(line: 663, column: 6, scope: !1925)
!2720 = !DILocation(line: 665, column: 4, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 665, column: 4)
!2722 = !DILocation(line: 0, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 667, column: 8)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 666, column: 10)
!2725 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 665, column: 4)
!2726 = !DILocation(line: 665, column: 4, scope: !2725)
!2727 = !DILocation(line: 0, scope: !2721)
!2728 = !DILocation(line: 666, column: 10, scope: !2724)
!2729 = !DILocation(line: 666, column: 10, scope: !2725)
!2730 = !DILocation(line: 668, column: 3, scope: !2723)
!2731 = !DILocation(line: 670, column: 3, scope: !2723)
!2732 = !DILocation(line: 670, column: 18, scope: !2723)
!2733 = !DILocation(line: 670, column: 25, scope: !2723)
!2734 = !DILocation(line: 670, column: 34, scope: !2723)
!2735 = !DILocation(line: 670, column: 39, scope: !2723)
!2736 = !DILocation(line: 671, column: 8, scope: !2723)
!2737 = !DILocation(line: 0, scope: !2725)
!2738 = distinct !{!2738, !2720, !2739}
!2739 = !DILocation(line: 671, column: 8, scope: !2721)
!2740 = !DILocation(line: 617, column: 7, scope: !1920)
!2741 = distinct !{!2741, !2686, !2742}
!2742 = !DILocation(line: 672, column: 2, scope: !1921)
!2743 = !DILocation(line: 674, column: 7, scope: !1908)
!2744 = !DILocation(line: 675, column: 7, scope: !1908)
!2745 = !DILocation(line: 676, column: 7, scope: !1908)
!2746 = !DILocation(line: 677, column: 7, scope: !1908)
!2747 = !DILocation(line: 678, column: 5, scope: !1909)
!2748 = !DILocation(line: 585, column: 35, scope: !1909)
!2749 = !DILocation(line: 585, column: 3, scope: !1909)
!2750 = distinct !{!2750, !2618, !2751}
!2751 = !DILocation(line: 678, column: 5, scope: !1910)
!2752 = !DILocation(line: 681, column: 8, scope: !1933)
!2753 = !DILocation(line: 446, column: 8, scope: !1836)
!2754 = !DILocation(line: 0, scope: !1933)
!2755 = !DILocation(line: 681, column: 30, scope: !1932)
!2756 = !DILocation(line: 681, column: 3, scope: !1933)
!2757 = !DILocation(line: 683, column: 31, scope: !1931)
!2758 = !DILocation(line: 683, column: 21, scope: !1931)
!2759 = !DILocation(line: 0, scope: !1931)
!2760 = !DILocation(line: 685, column: 7, scope: !1937)
!2761 = !DILocation(line: 685, column: 7, scope: !1936)
!2762 = !DILocation(line: 0, scope: !1937)
!2763 = !DILocation(line: 688, column: 30, scope: !1944)
!2764 = !DILocation(line: 688, column: 15, scope: !1944)
!2765 = !DILocation(line: 688, column: 37, scope: !1944)
!2766 = !DILocation(line: 0, scope: !1935)
!2767 = !DILocation(line: 688, column: 9, scope: !1944)
!2768 = !DILocation(line: 0, scope: !1944)
!2769 = !DILocation(line: 688, column: 4, scope: !1944)
!2770 = !DILocation(line: 690, column: 20, scope: !1942)
!2771 = !DILocation(line: 691, column: 17, scope: !1941)
!2772 = !DILocation(line: 691, column: 22, scope: !1941)
!2773 = !DILocation(line: 691, column: 12, scope: !1942)
!2774 = !DILocation(line: 695, column: 5, scope: !1940)
!2775 = !DILocation(line: 696, column: 5, scope: !1940)
!2776 = !DILocation(line: 697, column: 16, scope: !1940)
!2777 = !DILocation(line: 0, scope: !1940)
!2778 = !DILocation(line: 698, column: 5, scope: !1940)
!2779 = !DILocation(line: 701, column: 18, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 701, column: 9)
!2781 = !DILocation(line: 701, column: 9, scope: !1940)
!2782 = !DILocation(line: 704, column: 13, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 704, column: 13)
!2784 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 702, column: 7)
!2785 = !DILocation(line: 704, column: 13, scope: !2784)
!2786 = !DILocation(line: 705, column: 4, scope: !2783)
!2787 = !DILocation(line: 707, column: 4, scope: !2783)
!2788 = !DILocation(line: 711, column: 8, scope: !1942)
!2789 = !DILocation(line: 688, column: 4, scope: !1943)
!2790 = distinct !{!2790, !2769, !2791}
!2791 = !DILocation(line: 712, column: 6, scope: !1944)
!2792 = !DILocation(line: 0, scope: !1936)
!2793 = distinct !{!2793, !2760, !2794}
!2794 = !DILocation(line: 713, column: 2, scope: !1937)
!2795 = !DILocation(line: 715, column: 13, scope: !1931)
!2796 = !DILocation(line: 715, column: 7, scope: !1931)
!2797 = !DILocation(line: 681, column: 3, scope: !1932)
!2798 = distinct !{!2798, !2756, !2799}
!2799 = !DILocation(line: 716, column: 5, scope: !1933)
!2800 = !DILocation(line: 719, column: 3, scope: !1836)
!2801 = !DILocation(line: 720, column: 3, scope: !1836)
!2802 = !DILocation(line: 721, column: 3, scope: !1836)
!2803 = !DILocation(line: 722, column: 3, scope: !1836)
!2804 = !DILocation(line: 724, column: 7, scope: !1836)
!2805 = !DILocation(line: 725, column: 5, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 724, column: 7)
!2807 = !DILocation(line: 730, column: 20, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 730, column: 7)
!2809 = !DILocation(line: 730, column: 24, scope: !2808)
!2810 = !DILocation(line: 730, column: 7, scope: !1836)
!2811 = !DILocation(line: 734, column: 3, scope: !1836)
!2812 = !DILocation(line: 735, column: 1, scope: !1836)
!2813 = distinct !DISubprogram(name: "ei_start_1", scope: !318, file: !318, line: 696, type: !2814, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2816)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!1893, !1898}
!2816 = !{!2817, !2818}
!2817 = !DILocalVariable(name: "ev", arg: 1, scope: !2813, file: !318, line: 696, type: !1898)
!2818 = !DILocalVariable(name: "i", scope: !2813, file: !318, line: 698, type: !1893)
!2819 = !DILocation(line: 0, scope: !2813)
!2820 = !DILocation(line: 700, column: 5, scope: !2813)
!2821 = !DILocation(line: 700, column: 11, scope: !2813)
!2822 = !DILocation(line: 701, column: 5, scope: !2813)
!2823 = !DILocation(line: 701, column: 15, scope: !2813)
!2824 = !DILocation(line: 703, column: 3, scope: !2813)
!2825 = distinct !DISubprogram(name: "ei_cond", scope: !318, file: !318, line: 771, type: !2826, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2828)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!739, !1893, !1863}
!2828 = !{!2829, !2830}
!2829 = !DILocalVariable(name: "ei", arg: 1, scope: !2825, file: !318, line: 771, type: !1893)
!2830 = !DILocalVariable(name: "p", arg: 2, scope: !2825, file: !318, line: 771, type: !1863)
!2831 = !DILocation(line: 0, scope: !2825)
!2832 = !DILocation(line: 773, column: 8, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2825, file: !318, line: 773, column: 7)
!2834 = !DILocation(line: 773, column: 7, scope: !2825)
!2835 = !DILocation(line: 775, column: 12, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2833, file: !318, line: 774, column: 5)
!2837 = !DILocation(line: 776, column: 7, scope: !2836)
!2838 = !DILocation(line: 781, column: 7, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2833, file: !318, line: 779, column: 5)
!2840 = !DILocation(line: 0, scope: !2833)
!2841 = !DILocation(line: 783, column: 1, scope: !2825)
!2842 = distinct !DISubprogram(name: "ei_next", scope: !318, file: !318, line: 736, type: !2843, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2846)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{null, !2845}
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!2846 = !{!2847}
!2847 = !DILocalVariable(name: "i", arg: 1, scope: !2842, file: !318, line: 736, type: !2845)
!2848 = !DILocation(line: 0, scope: !2842)
!2849 = !DILocation(line: 738, column: 3, scope: !2842)
!2850 = !DILocation(line: 739, column: 11, scope: !2842)
!2851 = !DILocation(line: 740, column: 1, scope: !2842)
!2852 = distinct !DISubprogram(name: "new_seginfo", scope: !3, file: !3, line: 104, type: !2853, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!751, !740, !756, !740, !1829}
!2855 = !{!2856, !2857, !2858, !2859, !2860}
!2856 = !DILocalVariable(name: "mode", arg: 1, scope: !2852, file: !3, line: 104, type: !740)
!2857 = !DILocalVariable(name: "insn", arg: 2, scope: !2852, file: !3, line: 104, type: !756)
!2858 = !DILocalVariable(name: "bb", arg: 3, scope: !2852, file: !3, line: 104, type: !740)
!2859 = !DILocalVariable(name: "regs_live", arg: 4, scope: !2852, file: !3, line: 104, type: !1829)
!2860 = !DILocalVariable(name: "ptr", scope: !2852, file: !3, line: 106, type: !751)
!2861 = !DILocation(line: 0, scope: !2852)
!2862 = !DILocation(line: 107, column: 9, scope: !2852)
!2863 = !DILocation(line: 108, column: 8, scope: !2852)
!2864 = !DILocation(line: 108, column: 13, scope: !2852)
!2865 = !DILocation(line: 109, column: 8, scope: !2852)
!2866 = !DILocation(line: 109, column: 17, scope: !2852)
!2867 = !DILocation(line: 110, column: 8, scope: !2852)
!2868 = !DILocation(line: 110, column: 14, scope: !2852)
!2869 = !DILocation(line: 111, column: 8, scope: !2852)
!2870 = !DILocation(line: 111, column: 13, scope: !2852)
!2871 = !DILocation(line: 112, column: 3, scope: !2852)
!2872 = !DILocation(line: 113, column: 3, scope: !2852)
!2873 = distinct !DISubprogram(name: "add_seginfo", scope: !3, file: !3, line: 121, type: !2874, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !747, !751}
!2876 = !{!2877, !2878, !2879}
!2877 = !DILocalVariable(name: "head", arg: 1, scope: !2873, file: !3, line: 121, type: !747)
!2878 = !DILocalVariable(name: "info", arg: 2, scope: !2873, file: !3, line: 121, type: !751)
!2879 = !DILocalVariable(name: "ptr", scope: !2873, file: !3, line: 123, type: !751)
!2880 = !DILocation(line: 0, scope: !2873)
!2881 = !DILocation(line: 125, column: 13, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 125, column: 7)
!2883 = !DILocation(line: 125, column: 21, scope: !2882)
!2884 = !DILocation(line: 125, column: 7, scope: !2873)
!2885 = !DILocation(line: 126, column: 19, scope: !2882)
!2886 = !DILocation(line: 126, column: 5, scope: !2882)
!2887 = !DILocation(line: 130, column: 7, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 128, column: 5)
!2889 = !DILocation(line: 0, scope: !2888)
!2890 = !DILocation(line: 130, column: 19, scope: !2888)
!2891 = !DILocation(line: 130, column: 24, scope: !2888)
!2892 = distinct !{!2892, !2887, !2893}
!2893 = !DILocation(line: 131, column: 13, scope: !2888)
!2894 = !DILocation(line: 132, column: 17, scope: !2888)
!2895 = !DILocation(line: 134, column: 1, scope: !2873)
!2896 = distinct !DISubprogram(name: "RESET_BIT", scope: !1847, file: !1847, line: 82, type: !2897, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !1846, !7}
!2899 = !{!2900, !2901, !2902}
!2900 = !DILocalVariable(name: "map", arg: 1, scope: !2896, file: !1847, line: 82, type: !1846)
!2901 = !DILocalVariable(name: "bitno", arg: 2, scope: !2896, file: !1847, line: 82, type: !7)
!2902 = !DILocalVariable(name: "oldbit", scope: !2903, file: !1847, line: 86, type: !739)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !1847, line: 85, column: 5)
!2904 = distinct !DILexicalBlock(scope: !2896, file: !1847, line: 84, column: 7)
!2905 = !DILocation(line: 0, scope: !2896)
!2906 = !DILocation(line: 84, column: 12, scope: !2904)
!2907 = !DILocation(line: 84, column: 7, scope: !2904)
!2908 = !DILocation(line: 84, column: 7, scope: !2896)
!2909 = !DILocation(line: 92, column: 42, scope: !2896)
!2910 = !DILocation(line: 92, column: 31, scope: !2896)
!2911 = !DILocation(line: 91, column: 19, scope: !2896)
!2912 = !DILocation(line: 91, column: 3, scope: !2896)
!2913 = !DILocation(line: 87, column: 16, scope: !2903)
!2914 = !DILocation(line: 88, column: 11, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2903, file: !1847, line: 88, column: 11)
!2916 = !DILocation(line: 88, column: 11, scope: !2903)
!2917 = !DILocation(line: 89, column: 2, scope: !2915)
!2918 = !DILocation(line: 89, column: 41, scope: !2915)
!2919 = !DILocation(line: 92, column: 8, scope: !2896)
!2920 = !DILocation(line: 92, column: 5, scope: !2896)
!2921 = !DILocation(line: 93, column: 1, scope: !2896)
!2922 = distinct !DISubprogram(name: "reg_dies", scope: !3, file: !3, line: 163, type: !2923, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !756, !1832}
!2925 = !{!2926, !2927, !2928}
!2926 = !DILocalVariable(name: "reg", arg: 1, scope: !2922, file: !3, line: 163, type: !756)
!2927 = !DILocalVariable(name: "live", arg: 2, scope: !2922, file: !3, line: 163, type: !1832)
!2928 = !DILocalVariable(name: "regno", scope: !2922, file: !3, line: 165, type: !740)
!2929 = !DILocation(line: 0, scope: !2922)
!2930 = !DILocation(line: 167, column: 8, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 167, column: 7)
!2932 = !DILocation(line: 167, column: 7, scope: !2922)
!2933 = !DILocation(line: 170, column: 11, scope: !2922)
!2934 = !DILocation(line: 171, column: 13, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 171, column: 7)
!2936 = !DILocation(line: 171, column: 7, scope: !2922)
!2937 = !DILocation(line: 172, column: 37, scope: !2935)
!2938 = !DILocation(line: 172, column: 5, scope: !2935)
!2939 = !DILocation(line: 173, column: 1, scope: !2922)
!2940 = distinct !DISubprogram(name: "reg_becomes_live", scope: !3, file: !3, line: 179, type: !2941, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2946)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !756, !2943, !744}
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !757, line: 51, baseType: !2944)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!2946 = !{!2947, !2948, !2949, !2950}
!2947 = !DILocalVariable(name: "reg", arg: 1, scope: !2940, file: !3, line: 179, type: !756)
!2948 = !DILocalVariable(name: "setter", arg: 2, scope: !2940, file: !3, line: 179, type: !2943)
!2949 = !DILocalVariable(name: "live", arg: 3, scope: !2940, file: !3, line: 179, type: !744)
!2950 = !DILocalVariable(name: "regno", scope: !2940, file: !3, line: 181, type: !740)
!2951 = !DILocation(line: 0, scope: !2940)
!2952 = !DILocation(line: 183, column: 7, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 183, column: 7)
!2954 = !DILocation(line: 183, column: 22, scope: !2953)
!2955 = !DILocation(line: 183, column: 7, scope: !2940)
!2956 = !DILocation(line: 184, column: 11, scope: !2953)
!2957 = !DILocation(line: 0, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 186, column: 7)
!2959 = !DILocation(line: 186, column: 8, scope: !2958)
!2960 = !DILocation(line: 184, column: 5, scope: !2953)
!2961 = !DILocation(line: 186, column: 7, scope: !2940)
!2962 = !DILocation(line: 189, column: 11, scope: !2940)
!2963 = !DILocation(line: 190, column: 13, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 190, column: 7)
!2965 = !DILocation(line: 190, column: 7, scope: !2940)
!2966 = !DILocation(line: 191, column: 26, scope: !2964)
!2967 = !DILocation(line: 191, column: 49, scope: !2964)
!2968 = !DILocation(line: 191, column: 5, scope: !2964)
!2969 = !DILocation(line: 192, column: 1, scope: !2940)
!2970 = distinct !DISubprogram(name: "SET_BIT", scope: !1847, file: !1847, line: 63, type: !2897, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2971)
!2971 = !{!2972, !2973, !2974}
!2972 = !DILocalVariable(name: "map", arg: 1, scope: !2970, file: !1847, line: 63, type: !1846)
!2973 = !DILocalVariable(name: "bitno", arg: 2, scope: !2970, file: !1847, line: 63, type: !7)
!2974 = !DILocalVariable(name: "oldbit", scope: !2975, file: !1847, line: 67, type: !739)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !1847, line: 66, column: 5)
!2976 = distinct !DILexicalBlock(scope: !2970, file: !1847, line: 65, column: 7)
!2977 = !DILocation(line: 0, scope: !2970)
!2978 = !DILocation(line: 65, column: 12, scope: !2976)
!2979 = !DILocation(line: 65, column: 7, scope: !2976)
!2980 = !DILocation(line: 65, column: 7, scope: !2970)
!2981 = !DILocation(line: 73, column: 40, scope: !2970)
!2982 = !DILocation(line: 73, column: 29, scope: !2970)
!2983 = !DILocation(line: 72, column: 19, scope: !2970)
!2984 = !DILocation(line: 72, column: 3, scope: !2970)
!2985 = !DILocation(line: 68, column: 16, scope: !2975)
!2986 = !DILocation(line: 69, column: 12, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2975, file: !1847, line: 69, column: 11)
!2988 = !DILocation(line: 69, column: 11, scope: !2975)
!2989 = !DILocation(line: 70, column: 2, scope: !2987)
!2990 = !DILocation(line: 70, column: 41, scope: !2987)
!2991 = !DILocation(line: 73, column: 5, scope: !2970)
!2992 = !DILocation(line: 74, column: 1, scope: !2970)
!2993 = distinct !DISubprogram(name: "make_preds_opaque", scope: !3, file: !3, line: 143, type: !2994, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !1129, !740}
!2996 = !{!2997, !2998, !2999, !3000, !3001}
!2997 = !DILocalVariable(name: "b", arg: 1, scope: !2993, file: !3, line: 143, type: !1129)
!2998 = !DILocalVariable(name: "j", arg: 2, scope: !2993, file: !3, line: 143, type: !740)
!2999 = !DILocalVariable(name: "e", scope: !2993, file: !3, line: 145, type: !1146)
!3000 = !DILocalVariable(name: "ei", scope: !2993, file: !3, line: 146, type: !1893)
!3001 = !DILocalVariable(name: "pb", scope: !3002, file: !3, line: 150, type: !1129)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 149, column: 5)
!3003 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 148, column: 3)
!3004 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 148, column: 3)
!3005 = !DILocation(line: 0, scope: !2993)
!3006 = !DILocation(line: 145, column: 3, scope: !2993)
!3007 = !DILocation(line: 146, column: 3, scope: !2993)
!3008 = !DILocation(line: 148, column: 3, scope: !3004)
!3009 = !DILocation(line: 0, scope: !3003)
!3010 = !DILocation(line: 0, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 152, column: 11)
!3012 = !DILocation(line: 148, column: 3, scope: !3003)
!3013 = !DILocation(line: 150, column: 24, scope: !3002)
!3014 = !DILocation(line: 150, column: 27, scope: !3002)
!3015 = !DILocation(line: 0, scope: !3002)
!3016 = !DILocation(line: 152, column: 14, scope: !3011)
!3017 = !DILocation(line: 152, column: 11, scope: !3011)
!3018 = !DILocation(line: 152, column: 18, scope: !3011)
!3019 = !DILocation(line: 152, column: 23, scope: !3011)
!3020 = !DILocation(line: 152, column: 11, scope: !3002)
!3021 = !DILocation(line: 155, column: 7, scope: !3002)
!3022 = !DILocation(line: 156, column: 7, scope: !3002)
!3023 = !DILocation(line: 157, column: 5, scope: !3003)
!3024 = distinct !{!3024, !3008, !3025}
!3025 = !DILocation(line: 157, column: 5, scope: !3004)
!3026 = !DILocation(line: 158, column: 1, scope: !2993)
!3027 = distinct !DISubprogram(name: "ei_end_p", scope: !318, file: !318, line: 721, type: !3028, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!739, !1893}
!3030 = !{!3031}
!3031 = !DILocalVariable(name: "i", arg: 1, scope: !3027, file: !318, line: 721, type: !1893)
!3032 = !DILocation(line: 723, column: 22, scope: !3027)
!3033 = !DILocation(line: 723, column: 19, scope: !3027)
!3034 = !DILocation(line: 723, column: 10, scope: !3027)
!3035 = !DILocation(line: 723, column: 3, scope: !3027)
!3036 = distinct !DISubprogram(name: "ei_edge", scope: !318, file: !318, line: 752, type: !3037, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!1146, !1893}
!3039 = !{!3040}
!3040 = !DILocalVariable(name: "i", arg: 1, scope: !3036, file: !318, line: 752, type: !1893)
!3041 = !DILocation(line: 754, column: 10, scope: !3036)
!3042 = !DILocation(line: 754, column: 3, scope: !3036)
!3043 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !318, file: !318, line: 150, type: !3044, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3048)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!7, !3046}
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!3048 = !{!3049}
!3049 = !DILocalVariable(name: "vec_", arg: 1, scope: !3043, file: !318, line: 150, type: !3046)
!3050 = !DILocation(line: 0, scope: !3043)
!3051 = !DILocation(line: 150, column: 1, scope: !3043)
!3052 = distinct !DISubprogram(name: "ei_container", scope: !318, file: !318, line: 685, type: !3053, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!1134, !1893}
!3055 = !{!3056}
!3056 = !DILocalVariable(name: "i", arg: 1, scope: !3052, file: !318, line: 685, type: !1893)
!3057 = !DILocation(line: 687, column: 3, scope: !3052)
!3058 = !DILocation(line: 688, column: 10, scope: !3052)
!3059 = !DILocation(line: 688, column: 3, scope: !3052)
!3060 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !318, file: !318, line: 150, type: !3061, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3063)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!1146, !3046, !7}
!3063 = !{!3064, !3065}
!3064 = !DILocalVariable(name: "vec_", arg: 1, scope: !3060, file: !318, line: 150, type: !3046)
!3065 = !DILocalVariable(name: "ix_", arg: 2, scope: !3060, file: !318, line: 150, type: !7)
!3066 = !DILocation(line: 0, scope: !3060)
!3067 = !DILocation(line: 150, column: 1, scope: !3060)
!3068 = distinct !DISubprogram(name: "rhs_regno", scope: !561, file: !561, line: 1051, type: !3069, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!7, !2943}
!3071 = !{!3072}
!3072 = !DILocalVariable(name: "x", arg: 1, scope: !3068, file: !561, line: 1051, type: !2943)
!3073 = !DILocation(line: 0, scope: !3068)
!3074 = !DILocation(line: 1053, column: 10, scope: !3068)
!3075 = !DILocation(line: 1053, column: 3, scope: !3068)
!3076 = distinct !DISubprogram(name: "remove_from_hard_reg_set", scope: !3077, file: !3077, line: 321, type: !3078, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3080)
!3077 = !DIFile(filename: "./regs.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3078 = !DISubroutineType(types: !3079)
!3079 = !{null, !1832, !189, !7}
!3080 = !{!3081, !3082, !3083, !3084}
!3081 = !DILocalVariable(name: "regs", arg: 1, scope: !3076, file: !3077, line: 321, type: !1832)
!3082 = !DILocalVariable(name: "mode", arg: 2, scope: !3076, file: !3077, line: 321, type: !189)
!3083 = !DILocalVariable(name: "regno", arg: 3, scope: !3076, file: !3077, line: 322, type: !7)
!3084 = !DILocalVariable(name: "end_regno", scope: !3076, file: !3077, line: 324, type: !7)
!3085 = !DILocation(line: 0, scope: !3076)
!3086 = !DILocation(line: 326, column: 15, scope: !3076)
!3087 = !DILocation(line: 328, column: 5, scope: !3076)
!3088 = !DILocation(line: 327, column: 3, scope: !3076)
!3089 = !DILocation(line: 329, column: 10, scope: !3076)
!3090 = !DILocation(line: 329, column: 18, scope: !3076)
!3091 = distinct !{!3091, !3088, !3092}
!3092 = !DILocation(line: 329, column: 29, scope: !3076)
!3093 = !DILocation(line: 330, column: 1, scope: !3076)
!3094 = distinct !DISubprogram(name: "end_hard_regno", scope: !3077, file: !3077, line: 290, type: !3095, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3097)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!7, !189, !7}
!3097 = !{!3098, !3099}
!3098 = !DILocalVariable(name: "mode", arg: 1, scope: !3094, file: !3077, line: 290, type: !189)
!3099 = !DILocalVariable(name: "regno", arg: 2, scope: !3094, file: !3077, line: 290, type: !7)
!3100 = !DILocation(line: 0, scope: !3094)
!3101 = !DILocation(line: 292, column: 18, scope: !3094)
!3102 = !DILocation(line: 292, column: 16, scope: !3094)
!3103 = !DILocation(line: 292, column: 3, scope: !3094)
!3104 = distinct !DISubprogram(name: "add_to_hard_reg_set", scope: !3077, file: !3077, line: 307, type: !3078, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3105)
!3105 = !{!3106, !3107, !3108, !3109}
!3106 = !DILocalVariable(name: "regs", arg: 1, scope: !3104, file: !3077, line: 307, type: !1832)
!3107 = !DILocalVariable(name: "mode", arg: 2, scope: !3104, file: !3077, line: 307, type: !189)
!3108 = !DILocalVariable(name: "regno", arg: 3, scope: !3104, file: !3077, line: 308, type: !7)
!3109 = !DILocalVariable(name: "end_regno", scope: !3104, file: !3077, line: 310, type: !7)
!3110 = !DILocation(line: 0, scope: !3104)
!3111 = !DILocation(line: 312, column: 15, scope: !3104)
!3112 = !DILocation(line: 314, column: 5, scope: !3104)
!3113 = !DILocation(line: 313, column: 3, scope: !3104)
!3114 = !DILocation(line: 315, column: 10, scope: !3104)
!3115 = !DILocation(line: 315, column: 18, scope: !3104)
!3116 = distinct !{!3116, !3113, !3117}
!3117 = !DILocation(line: 315, column: 29, scope: !3104)
!3118 = !DILocation(line: 316, column: 1, scope: !3104)
