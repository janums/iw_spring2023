; ModuleID = 'combine-stack-adj.bc'
source_filename = "combine-stack-adj.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type { %struct.eh_region_d*, %struct.VEC_eh_region_gc*, %struct.VEC_eh_landing_pad_gc*, %struct.htab*, %struct.VEC_tree_gc*, %union.eh_status_u }
%struct.eh_region_d = type { %struct.eh_region_d*, %struct.eh_region_d*, %struct.eh_region_d*, i32, i32, %union.eh_region_u, %struct.eh_landing_pad_d*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { %union.tree_node*, %union.tree_node*, i32 }
%struct.eh_landing_pad_d = type { %struct.eh_landing_pad_d*, %struct.eh_region_d*, %union.tree_node*, %struct.rtx_def*, i32 }
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
%struct.VEC_eh_region_gc = type { %struct.VEC_eh_region_base }
%struct.VEC_eh_region_base = type { i32, i32, [1 x %struct.eh_region_d*] }
%struct.VEC_eh_landing_pad_gc = type { %struct.VEC_eh_landing_pad_base }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x %struct.eh_landing_pad_d*] }
%struct.VEC_tree_gc = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x %union.tree_node*] }
%union.eh_status_u = type { %struct.VEC_tree_gc* }
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.record_stack_refs_data = type { %struct.rtx_def*, %struct.csa_reflist* }
%struct.csa_reflist = type { i64, %struct.rtx_def*, %struct.rtx_def**, %struct.csa_reflist* }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"csa\00", align 1
@pass_stack_adjustments = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_handle_stack_adjustments, i32 ()* @rest_of_handle_stack_adjustments, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 155, i32 0, i32 0, i32 0, i32 0, i32 132099 } }, align 8, !dbg !0
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_crossjumping = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@global_rtl = external dso_local local_unnamed_addr global [11 x %struct.rtx_def*], align 16
@mode_size = external dso_local local_unnamed_addr global [87 x i8], align 16

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1933 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1946, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1947, metadata !DIExpression()), !dbg !1948
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1949
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1950
  ret i32 %call, !dbg !1951
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1952 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1956
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1957
  ret i32 %call, !dbg !1958
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1959 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2013, metadata !DIExpression()), !dbg !2014
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2015
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2015
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2015
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2015
  %cmp = icmp uge i8* %0, %1, !dbg !2015
  %conv1 = zext i1 %cmp to i64, !dbg !2015
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2015
  %tobool = icmp eq i64 %expval, 0, !dbg !2015
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2015

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2015
  br label %cond.end, !dbg !2015

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2015
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2015
  %2 = load i8, i8* %0, align 1, !dbg !2015
  %conv3 = zext i8 %2 to i32, !dbg !2015
  br label %cond.end, !dbg !2015

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2015
  ret i32 %cond, !dbg !2016
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2017 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2019, metadata !DIExpression()), !dbg !2020
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2021
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2021
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2021
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2021
  %cmp = icmp uge i8* %0, %1, !dbg !2021
  %conv1 = zext i1 %cmp to i64, !dbg !2021
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2021
  %tobool = icmp eq i64 %expval, 0, !dbg !2021
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2021

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2021
  br label %cond.end, !dbg !2021

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2021
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2021
  %2 = load i8, i8* %0, align 1, !dbg !2021
  %conv3 = zext i8 %2 to i32, !dbg !2021
  br label %cond.end, !dbg !2021

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2021
  ret i32 %cond, !dbg !2022
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2023 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2024
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2024
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2024
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2024
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2024
  %cmp = icmp uge i8* %1, %2, !dbg !2024
  %conv1 = zext i1 %cmp to i64, !dbg !2024
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2024
  %tobool = icmp eq i64 %expval, 0, !dbg !2024
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2024

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2024
  br label %cond.end, !dbg !2024

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2024
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2024
  %3 = load i8, i8* %1, align 1, !dbg !2024
  %conv3 = zext i8 %3 to i32, !dbg !2024
  br label %cond.end, !dbg !2024

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2024
  ret i32 %cond, !dbg !2025
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2026 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2030, metadata !DIExpression()), !dbg !2031
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2032
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2033
  ret i32 %call, !dbg !2034
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2035 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2039, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2040, metadata !DIExpression()), !dbg !2041
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2042
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2042
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2042
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2042
  %cmp = icmp uge i8* %0, %1, !dbg !2042
  %conv1 = zext i1 %cmp to i64, !dbg !2042
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2042
  %tobool = icmp eq i64 %expval, 0, !dbg !2042
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2042

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2042
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2042
  br label %cond.end, !dbg !2042

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2042
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2042
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2042
  store i8 %conv2, i8* %0, align 1, !dbg !2042
  %conv6 = and i32 %__c, 255, !dbg !2042
  br label %cond.end, !dbg !2042

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2042
  ret i32 %cond, !dbg !2043
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2044 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2046, metadata !DIExpression()), !dbg !2048
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2047, metadata !DIExpression()), !dbg !2048
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2049
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2049
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2049
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2049
  %cmp = icmp uge i8* %0, %1, !dbg !2049
  %conv1 = zext i1 %cmp to i64, !dbg !2049
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2049
  %tobool = icmp eq i64 %expval, 0, !dbg !2049
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2049

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2049
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2049
  br label %cond.end, !dbg !2049

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2049
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2049
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2049
  store i8 %conv2, i8* %0, align 1, !dbg !2049
  %conv6 = and i32 %__c, 255, !dbg !2049
  br label %cond.end, !dbg !2049

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2049
  ret i32 %cond, !dbg !2050
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2051 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2053, metadata !DIExpression()), !dbg !2054
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2055
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2055
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2055
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2055
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2055
  %cmp = icmp uge i8* %1, %2, !dbg !2055
  %conv1 = zext i1 %cmp to i64, !dbg !2055
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2055
  %tobool = icmp eq i64 %expval, 0, !dbg !2055
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2055

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2055
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2055
  br label %cond.end, !dbg !2055

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2055
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2055
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2055
  store i8 %conv4, i8* %1, align 1, !dbg !2055
  %conv6 = and i32 %__c, 255, !dbg !2055
  br label %cond.end, !dbg !2055

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2055
  ret i32 %cond, !dbg !2056
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2057 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2063, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2064, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2065, metadata !DIExpression()), !dbg !2066
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2067
  ret i64 %call, !dbg !2068
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2069 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2071, metadata !DIExpression()), !dbg !2072
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2073
  %0 = load i32, i32* %_flags, align 8, !dbg !2073
  %and = lshr i32 %0, 4, !dbg !2073
  %and.lobit = and i32 %and, 1, !dbg !2073
  ret i32 %and.lobit, !dbg !2074
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2075 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2077, metadata !DIExpression()), !dbg !2078
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2079
  %0 = load i32, i32* %_flags, align 8, !dbg !2079
  %and = lshr i32 %0, 5, !dbg !2079
  %and.lobit = and i32 %and, 1, !dbg !2079
  ret i32 %and.lobit, !dbg !2080
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2081 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2084, metadata !DIExpression()), !dbg !2085
  %__c.off = add i32 %__c, 128, !dbg !2086
  %0 = icmp ult i32 %__c.off, 384, !dbg !2086
  br i1 %0, label %cond.true, label %cond.end, !dbg !2086

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2087
  %1 = load i32*, i32** %call, align 8, !dbg !2088
  %idxprom = sext i32 %__c to i64, !dbg !2089
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2089
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2089
  br label %cond.end, !dbg !2090

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2090
  ret i32 %cond, !dbg !2091
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2092 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2094, metadata !DIExpression()), !dbg !2095
  %__c.off = add i32 %__c, 128, !dbg !2096
  %0 = icmp ult i32 %__c.off, 384, !dbg !2096
  br i1 %0, label %cond.true, label %cond.end, !dbg !2096

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2097
  %1 = load i32*, i32** %call, align 8, !dbg !2098
  %idxprom = sext i32 %__c to i64, !dbg !2099
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2099
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2099
  br label %cond.end, !dbg !2100

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2100
  ret i32 %cond, !dbg !2101
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2102 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2107, metadata !DIExpression()), !dbg !2108
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2109
  %conv = trunc i64 %call to i32, !dbg !2110
  ret i32 %conv, !dbg !2111
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2112 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2116, metadata !DIExpression()), !dbg !2117
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2118
  ret i64 %call, !dbg !2119
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2120 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2125, metadata !DIExpression()), !dbg !2126
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2127
  ret i64 %call, !dbg !2128
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2129 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2135, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2136, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2137, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2138, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2139, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i64 0, metadata !2140, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2141, metadata !DIExpression()), !dbg !2145
  br label %while.cond, !dbg !2146

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2147
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2145
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2141, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2140, metadata !DIExpression()), !dbg !2145
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2148
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2146

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2149
  %div = lshr i64 %add, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %div, metadata !2142, metadata !DIExpression()), !dbg !2145
  %mul = mul i64 %div, %__size, !dbg !2152
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2153
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2143, metadata !DIExpression()), !dbg !2145
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2154
  call void @llvm.dbg.value(metadata i32 %call, metadata !2144, metadata !DIExpression()), !dbg !2145
  %cmp1 = icmp slt i32 %call, 0, !dbg !2155
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2157

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2158
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2160

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2140, metadata !DIExpression()), !dbg !2145
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2145
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2145
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2141, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2140, metadata !DIExpression()), !dbg !2145
  br label %while.cond, !dbg !2146, !llvm.loop !2162

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2145
  ret i8* %retval.0, !dbg !2164
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2165 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2171, metadata !DIExpression()), !dbg !2172
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2173
  ret double %call, !dbg !2174
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2175 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2184, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2185, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 %base, metadata !2186, metadata !DIExpression()), !dbg !2187
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2188
  ret i64 %call, !dbg !2189
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2190 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2196, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2197, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 %base, metadata !2198, metadata !DIExpression()), !dbg !2199
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2200
  ret i64 %call, !dbg !2201
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2202 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2213, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2214, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i32 %base, metadata !2215, metadata !DIExpression()), !dbg !2216
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2217
  ret i64 %call, !dbg !2218
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2219 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2223, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2224, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i32 %base, metadata !2225, metadata !DIExpression()), !dbg !2226
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2227
  ret i64 %call, !dbg !2228
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2229 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2269, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2270, metadata !DIExpression()), !dbg !2271
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2272
  ret i32 %call, !dbg !2273
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2274 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2276, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2277, metadata !DIExpression()), !dbg !2278
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2279
  ret i32 %call, !dbg !2280
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2281 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2285, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2286, metadata !DIExpression()), !dbg !2287
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2288
  ret i32 %call, !dbg !2289
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2290 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2294, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2295, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2296, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2297, metadata !DIExpression()), !dbg !2298
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2299
  ret i32 %call, !dbg !2300
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2301 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2305, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2306, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2307, metadata !DIExpression()), !dbg !2308
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2307, metadata !DIExpression(DW_OP_deref)), !dbg !2308
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2309
  ret i32 %call, !dbg !2310
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2311 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2315, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2316, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2317, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2318, metadata !DIExpression()), !dbg !2319
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2318, metadata !DIExpression(DW_OP_deref)), !dbg !2319
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2320
  ret i32 %call, !dbg !2321
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2322 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2346, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2347, metadata !DIExpression()), !dbg !2348
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2349
  ret i32 %call, !dbg !2350
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2351 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2353, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2354, metadata !DIExpression()), !dbg !2355
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2356
  ret i32 %call, !dbg !2357
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2358 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2362, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2363, metadata !DIExpression()), !dbg !2364
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2365
  ret i32 %call, !dbg !2366
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2367 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2371, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2372, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2373, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2374, metadata !DIExpression()), !dbg !2375
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2376
  ret i32 %call, !dbg !2377
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_handle_stack_adjustments() #4 !dbg !2378 {
entry:
  %0 = load i32, i32* @optimize, align 4, !dbg !2379
  %cmp = icmp sgt i32 %0, 0, !dbg !2380
  %conv1 = zext i1 %cmp to i8, !dbg !2381
  ret i8 %conv1, !dbg !2382
}

; Function Attrs: nounwind uwtable
define internal i32 @rest_of_handle_stack_adjustments() #4 !dbg !2383 {
entry:
  %0 = load i32, i32* @flag_crossjumping, align 4, !dbg !2384
  %tobool = icmp eq i32 %0, 0, !dbg !2384
  %cond = select i1 %tobool, i32 0, i32 2, !dbg !2384
  %call = tail call zeroext i8 @cleanup_cfg(i32 %cond) #6, !dbg !2385
  tail call void @df_note_add_problem() #6, !dbg !2386
  tail call void @df_analyze() #6, !dbg !2388
  tail call fastcc void @combine_stack_adjustments() #7, !dbg !2389
  ret i32 0, !dbg !2390
}

declare dso_local zeroext i8 @cleanup_cfg(i32) local_unnamed_addr #1

declare dso_local void @df_note_add_problem() local_unnamed_addr #1

declare dso_local void @df_analyze() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @combine_stack_adjustments() unnamed_addr #4 !dbg !2391 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2396
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2396
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2396
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2396
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2396
  br label %for.cond, !dbg !2396

for.cond:                                         ; preds = %for.body, %entry
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %for.body ], !dbg !2398
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.body ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2400
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2400
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2395, metadata !DIExpression()), !dbg !2401
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !2398
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2398
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !2398
  br i1 %cmp, label %for.end, label %for.body, !dbg !2396

for.body:                                         ; preds = %for.cond
  tail call fastcc void @combine_stack_adjustments_for_block(%struct.basic_block_def* %bb.0) #7, !dbg !2402
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2398
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2403
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2398
  br label %for.cond, !dbg !2398, !llvm.loop !2404

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2406
}

; Function Attrs: nounwind uwtable
define internal fastcc void @combine_stack_adjustments_for_block(%struct.basic_block_def* %bb) unnamed_addr #4 !dbg !2407 {
entry:
  %data = alloca %struct.record_stack_refs_data, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2411, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i64 0, metadata !2412, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2413, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.csa_reflist* null, metadata !2414, metadata !DIExpression()), !dbg !2430
  %0 = bitcast %struct.record_stack_refs_data* %data to i8*, !dbg !2431
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2431
  call void @llvm.dbg.value(metadata i8 0, metadata !2419, metadata !DIExpression()), !dbg !2430
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !2432
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2432
  %1 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2432
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %1, i64 0, i32 0, !dbg !2432
  %2 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !2432
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !2415, metadata !DIExpression()), !dbg !2430
  %insn255 = getelementptr inbounds %struct.record_stack_refs_data, %struct.record_stack_refs_data* %data, i64 0, i32 0, !dbg !2433
  %reflist256 = getelementptr inbounds %struct.record_stack_refs_data, %struct.record_stack_refs_data* %data, i64 0, i32 1, !dbg !2433
  br label %for.cond, !dbg !2434

for.cond:                                         ; preds = %for.inc, %entry
  %end_of_block.0 = phi i8 [ 0, %entry ], [ %conv3, %for.inc ], !dbg !2430
  %insn.0 = phi %struct.rtx_def* [ %2, %entry ], [ %6, %for.inc ], !dbg !2435
  %reflist.0 = phi %struct.csa_reflist* [ null, %entry ], [ %reflist.5, %for.inc ], !dbg !2436
  %last_sp_set.0 = phi %struct.rtx_def* [ null, %entry ], [ %last_sp_set.5, %for.inc ], !dbg !2437
  %last_sp_adjust.0 = phi i64 [ 0, %entry ], [ %last_sp_adjust.5, %for.inc ], !dbg !2430
  call void @llvm.dbg.value(metadata i64 %last_sp_adjust.0, metadata !2412, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_sp_set.0, metadata !2413, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %reflist.0, metadata !2414, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2415, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8 %end_of_block.0, metadata !2419, metadata !DIExpression()), !dbg !2430
  %tobool = icmp eq i8 %end_of_block.0, 0, !dbg !2438
  br i1 %tobool, label %for.body, label %for.end, !dbg !2439

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2440
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %3, i64 0, i32 1, !dbg !2440
  %4 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2440
  %cmp = icmp eq %struct.rtx_def* %insn.0, %4, !dbg !2441
  %conv3 = zext i1 %cmp to i8, !dbg !2442
  call void @llvm.dbg.value(metadata i8 %conv3, metadata !2419, metadata !DIExpression()), !dbg !2430
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2443
  %rt_rtx = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !2443
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2443
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !2416, metadata !DIExpression()), !dbg !2430
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2444
  %bf.load = load i32, i32* %7, align 8, !dbg !2444
  %bf.clear = and i32 %bf.load, 65535, !dbg !2444
  %cmp4 = icmp eq i32 %bf.clear, 8, !dbg !2444
  br i1 %cmp4, label %if.end, label %lor.lhs.false, !dbg !2444

lor.lhs.false:                                    ; preds = %for.body
  %cmp8 = icmp eq i32 %bf.clear, 7, !dbg !2444
  br i1 %cmp8, label %if.end, label %lor.lhs.false10, !dbg !2444

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %cmp13 = icmp eq i32 %bf.clear, 9, !dbg !2444
  br i1 %cmp13, label %if.end, label %lor.lhs.false15, !dbg !2444

lor.lhs.false15:                                  ; preds = %lor.lhs.false10
  %cmp18 = icmp eq i32 %bf.clear, 10, !dbg !2444
  br i1 %cmp18, label %if.end, label %for.inc, !dbg !2446

if.end:                                           ; preds = %lor.lhs.false15, %lor.lhs.false10, %lor.lhs.false, %for.body
  %call = call fastcc %struct.rtx_def* @single_set_for_csa(%struct.rtx_def* %insn.0) #7, !dbg !2447
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2417, metadata !DIExpression()), !dbg !2430
  %tobool20 = icmp eq %struct.rtx_def* %call, null, !dbg !2448
  br i1 %tobool20, label %if.end254, label %if.then21, !dbg !2449

if.then21:                                        ; preds = %if.end
  %arrayidx24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2450
  %rt_rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**, !dbg !2450
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx25, align 8, !dbg !2450
  call void @llvm.dbg.value(metadata %struct.rtx_def* %8, metadata !2420, metadata !DIExpression()), !dbg !2451
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2452
  %rt_rtx29 = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !2452
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx29, align 8, !dbg !2452
  call void @llvm.dbg.value(metadata %struct.rtx_def* %10, metadata !2426, metadata !DIExpression()), !dbg !2451
  %11 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2453
  %cmp30 = icmp eq %struct.rtx_def* %8, %11, !dbg !2454
  br i1 %cmp30, label %land.lhs.true, label %if.end101, !dbg !2455

land.lhs.true:                                    ; preds = %if.then21
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 0, !dbg !2456
  %bf.load32 = load i32, i32* %12, align 8, !dbg !2456
  %bf.clear33 = and i32 %bf.load32, 65535, !dbg !2456
  %cmp34 = icmp eq i32 %bf.clear33, 49, !dbg !2457
  br i1 %cmp34, label %land.lhs.true36, label %if.end101, !dbg !2458

land.lhs.true36:                                  ; preds = %land.lhs.true
  %arrayidx39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2459
  %rt_rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**, !dbg !2459
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx40, align 8, !dbg !2459
  %cmp41 = icmp eq %struct.rtx_def* %13, %8, !dbg !2460
  br i1 %cmp41, label %land.lhs.true43, label %if.end101, !dbg !2461

land.lhs.true43:                                  ; preds = %land.lhs.true36
  %14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2462
  %15 = bitcast %union.rtunion_def* %14 to i32**, !dbg !2462
  %16 = load i32*, i32** %15, align 8, !dbg !2462
  %bf.load48 = load i32, i32* %16, align 8, !dbg !2462
  %bf.clear49 = and i32 %bf.load48, 65535, !dbg !2462
  %cmp50 = icmp eq i32 %bf.clear49, 30, !dbg !2462
  br i1 %cmp50, label %if.then52, label %if.end101, !dbg !2463

if.then52:                                        ; preds = %land.lhs.true43
  %u57 = getelementptr inbounds i32, i32* %16, i64 2, !dbg !2464
  %arrayidx58 = bitcast i32* %u57 to i64*, !dbg !2464
  %17 = load i64, i64* %arrayidx58, align 8, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %17, metadata !2427, metadata !DIExpression()), !dbg !2465
  %tobool59 = icmp eq %struct.rtx_def* %last_sp_set.0, null, !dbg !2466
  br i1 %tobool59, label %cleanup252, label %cond.true, !dbg !2468

cond.true:                                        ; preds = %if.then52
  %cmp62 = icmp slt i64 %17, 1, !dbg !2469
  br i1 %cmp62, label %if.then66, label %cond.true78, !dbg !2471

if.then66:                                        ; preds = %cond.true
  %add = add nsw i64 %last_sp_adjust.0, %17, !dbg !2472
  %call67 = call fastcc i32 @try_apply_stack_adjustment(%struct.rtx_def* %last_sp_set.0, %struct.csa_reflist* %reflist.0, i64 %add, i64 %17) #7, !dbg !2475
  %tobool68 = icmp eq i32 %call67, 0, !dbg !2475
  br i1 %tobool68, label %if.end93, label %if.then69, !dbg !2476

if.then69:                                        ; preds = %if.then66
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %last_sp_set.0, i64 0, i32 0, !dbg !2477
  %bf.load70 = load i32, i32* %18, align 8, !dbg !2477
  %bf.clear71 = and i32 %bf.load70, 1073741824, !dbg !2477
  %tobool72 = icmp eq i32 %bf.clear71, 0, !dbg !2477
  br i1 %tobool72, label %if.end74, label %if.then73, !dbg !2480

if.then73:                                        ; preds = %if.then69
  call fastcc void @adjust_frame_related_expr(%struct.rtx_def* %last_sp_set.0, %struct.rtx_def* %insn.0, i64 %17) #7, !dbg !2481
  br label %if.end74, !dbg !2481

if.end74:                                         ; preds = %if.then69, %if.then73
  %call75 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %insn.0) #6, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %add, metadata !2412, metadata !DIExpression()), !dbg !2430
  br label %cleanup252, !dbg !2483

cond.true78:                                      ; preds = %cond.true
  %cmp79 = icmp sgt i64 %last_sp_adjust.0, -1, !dbg !2484
  br i1 %cmp79, label %if.then84, label %if.end93, !dbg !2486

if.then84:                                        ; preds = %cond.true78
  %add85 = add nsw i64 %last_sp_adjust.0, %17, !dbg !2487
  %sub = sub nsw i64 0, %last_sp_adjust.0, !dbg !2490
  %call86 = call fastcc i32 @try_apply_stack_adjustment(%struct.rtx_def* %insn.0, %struct.csa_reflist* %reflist.0, i64 %add85, i64 %sub) #7, !dbg !2491
  %tobool87 = icmp eq i32 %call86, 0, !dbg !2491
  br i1 %tobool87, label %if.end93, label %if.then88, !dbg !2492

if.then88:                                        ; preds = %if.then84
  %call89 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %last_sp_set.0) #6, !dbg !2493
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2413, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i64 %add85, metadata !2412, metadata !DIExpression()), !dbg !2430
  call fastcc void @free_csa_reflist(%struct.csa_reflist* %reflist.0) #7, !dbg !2495
  call void @llvm.dbg.value(metadata %struct.csa_reflist* null, metadata !2414, metadata !DIExpression()), !dbg !2430
  br label %cleanup252, !dbg !2496

if.end93:                                         ; preds = %if.then66, %if.then84, %cond.true78
  %cmp96 = icmp eq i64 %last_sp_adjust.0, 0, !dbg !2497
  br i1 %cmp96, label %if.then98, label %if.end100, !dbg !2499

if.then98:                                        ; preds = %if.end93
  %call99 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* nonnull %last_sp_set.0) #6, !dbg !2500
  br label %if.end100, !dbg !2500

if.end100:                                        ; preds = %if.then98, %if.end93
  call fastcc void @free_csa_reflist(%struct.csa_reflist* %reflist.0) #7, !dbg !2501
  call void @llvm.dbg.value(metadata %struct.csa_reflist* null, metadata !2414, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2413, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i64 %17, metadata !2412, metadata !DIExpression()), !dbg !2430
  br label %cleanup252, !dbg !2502

if.end101:                                        ; preds = %land.lhs.true43, %land.lhs.true36, %land.lhs.true, %if.then21
  %19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 0, !dbg !2503
  %bf.load102 = load i32, i32* %19, align 8, !dbg !2503
  %bf.clear103 = and i32 %bf.load102, 65535, !dbg !2503
  %cmp104 = icmp eq i32 %bf.clear103, 43, !dbg !2503
  br i1 %cmp104, label %cond.true107, label %cleanup252, !dbg !2505

cond.true107:                                     ; preds = %if.end101
  %arrayidx110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2506
  %20 = bitcast %union.rtunion_def* %arrayidx110 to i32**, !dbg !2506
  %21 = load i32*, i32** %20, align 8, !dbg !2506
  %bf.load112 = load i32, i32* %21, align 8, !dbg !2506
  %bf.clear113 = and i32 %bf.load112, 65535, !dbg !2506
  %cmp114 = icmp eq i32 %bf.clear113, 74, !dbg !2507
  br i1 %cmp114, label %land.lhs.true116, label %cond.true146, !dbg !2508

land.lhs.true116:                                 ; preds = %cond.true107
  %bf.lshr118 = lshr i32 %bf.load102, 16, !dbg !2509
  %bf.clear119 = and i32 %bf.lshr118, 255, !dbg !2509
  %idxprom = zext i32 %bf.clear119 to i64, !dbg !2509
  %arrayidx120 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_size, i64 0, i64 %idxprom, !dbg !2509
  %22 = load i8, i8* %arrayidx120, align 1, !dbg !2509
  %conv122 = zext i8 %22 to i64, !dbg !2510
  %cmp123 = icmp eq i64 %last_sp_adjust.0, %conv122, !dbg !2511
  br i1 %cmp123, label %land.lhs.true116.land.lhs.true225_crit_edge, label %cond.true146, !dbg !2512

land.lhs.true116.land.lhs.true225_crit_edge:      ; preds = %land.lhs.true116
  br label %land.lhs.true225, !dbg !2512

cond.true146:                                     ; preds = %cond.true107, %land.lhs.true116
  %cmp147 = icmp sgt i64 %last_sp_adjust.0, -1, !dbg !2513
  br i1 %cmp147, label %land.lhs.true152, label %cleanup252, !dbg !2514

land.lhs.true152:                                 ; preds = %cond.true146
  %cmp159 = icmp eq i32 %bf.clear113, 78, !dbg !2515
  br i1 %cmp159, label %land.lhs.true161, label %cleanup252, !dbg !2516

land.lhs.true161:                                 ; preds = %land.lhs.true152
  %23 = getelementptr inbounds i32, i32* %21, i64 4, !dbg !2517
  %24 = bitcast i32* %23 to i32**, !dbg !2517
  %25 = load i32*, i32** %24, align 8, !dbg !2517
  %bf.load170 = load i32, i32* %25, align 8, !dbg !2517
  %bf.clear171 = and i32 %bf.load170, 65535, !dbg !2517
  %cmp172 = icmp eq i32 %bf.clear171, 49, !dbg !2518
  br i1 %cmp172, label %land.lhs.true174, label %cleanup252, !dbg !2519

land.lhs.true174:                                 ; preds = %land.lhs.true161
  %arrayidx185 = getelementptr inbounds i32, i32* %25, i64 2, !dbg !2520
  %rt_rtx186 = bitcast i32* %arrayidx185 to %struct.rtx_def**, !dbg !2520
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx186, align 8, !dbg !2520
  %cmp187 = icmp eq %struct.rtx_def* %26, %11, !dbg !2521
  br i1 %cmp187, label %land.lhs.true189, label %cleanup252, !dbg !2522

land.lhs.true189:                                 ; preds = %land.lhs.true174
  %27 = getelementptr inbounds i32, i32* %25, i64 4, !dbg !2523
  %28 = bitcast i32* %27 to i32**, !dbg !2523
  %29 = load i32*, i32** %28, align 8, !dbg !2523
  %bf.load202 = load i32, i32* %29, align 8, !dbg !2523
  %bf.clear203 = and i32 %bf.load202, 65535, !dbg !2523
  %cmp204 = icmp eq i32 %bf.clear203, 30, !dbg !2524
  br i1 %cmp204, label %land.lhs.true206, label %cleanup252, !dbg !2525

land.lhs.true206:                                 ; preds = %land.lhs.true189
  %u219 = getelementptr inbounds i32, i32* %29, i64 2, !dbg !2526
  %arrayidx221 = bitcast i32* %u219 to i64*, !dbg !2526
  %30 = load i64, i64* %arrayidx221, align 8, !dbg !2526
  %sub222 = sub nsw i64 0, %last_sp_adjust.0, !dbg !2527
  %cmp223 = icmp eq i64 %30, %sub222, !dbg !2528
  br i1 %cmp223, label %land.lhs.true225, label %cleanup252, !dbg !2529

land.lhs.true225:                                 ; preds = %land.lhs.true116.land.lhs.true225_crit_edge, %land.lhs.true206
  %arrayidx232 = getelementptr inbounds i32, i32* %21, i64 2, !dbg !2530
  %rt_rtx233 = bitcast i32* %arrayidx232 to %struct.rtx_def**, !dbg !2530
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx233, align 8, !dbg !2530
  %cmp234 = icmp eq %struct.rtx_def* %31, %11, !dbg !2531
  br i1 %cmp234, label %land.lhs.true236, label %cleanup252, !dbg !2532

land.lhs.true236:                                 ; preds = %land.lhs.true225
  %call237 = call i32 @reg_mentioned_p(%struct.rtx_def* %11, %struct.rtx_def* %10) #6, !dbg !2533
  %tobool238 = icmp eq i32 %call237, 0, !dbg !2533
  br i1 %tobool238, label %land.lhs.true239, label %cleanup252, !dbg !2534

land.lhs.true239:                                 ; preds = %land.lhs.true236
  %bf.load240 = load i32, i32* %19, align 8, !dbg !2535
  %bf.lshr241 = lshr i32 %bf.load240, 16, !dbg !2535
  %bf.clear242 = and i32 %bf.lshr241, 255, !dbg !2535
  %32 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2535
  %call243 = call i32 @memory_address_addr_space_p(i32 %bf.clear242, %struct.rtx_def* %32, i8 zeroext 0) #6, !dbg !2535
  %tobool244 = icmp eq i32 %call243, 0, !dbg !2535
  br i1 %tobool244, label %cleanup252, label %land.lhs.true245, !dbg !2536

land.lhs.true245:                                 ; preds = %land.lhs.true239
  %sub246 = sub nsw i64 0, %last_sp_adjust.0, !dbg !2537
  %call247 = call fastcc i32 @try_apply_stack_adjustment(%struct.rtx_def* %insn.0, %struct.csa_reflist* %reflist.0, i64 0, i64 %sub246) #7, !dbg !2538
  %tobool248 = icmp eq i32 %call247, 0, !dbg !2538
  br i1 %tobool248, label %cleanup252, label %if.then249, !dbg !2539

if.then249:                                       ; preds = %land.lhs.true245
  %call250 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %last_sp_set.0) #6, !dbg !2540
  call fastcc void @free_csa_reflist(%struct.csa_reflist* %reflist.0) #7, !dbg !2542
  call void @llvm.dbg.value(metadata %struct.csa_reflist* null, metadata !2414, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2413, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i64 0, metadata !2412, metadata !DIExpression()), !dbg !2430
  br label %cleanup252, !dbg !2543

cleanup252:                                       ; preds = %if.then52, %land.lhs.true245, %land.lhs.true239, %land.lhs.true236, %if.end101, %cond.true146, %land.lhs.true152, %land.lhs.true161, %land.lhs.true174, %land.lhs.true189, %land.lhs.true206, %land.lhs.true225, %if.end74, %if.then88, %if.end100, %if.then249
  %reflist.2 = phi %struct.csa_reflist* [ null, %if.then249 ], [ %reflist.0, %if.end74 ], [ null, %if.end100 ], [ null, %if.then88 ], [ %reflist.0, %if.then52 ], [ %reflist.0, %land.lhs.true245 ], [ %reflist.0, %land.lhs.true239 ], [ %reflist.0, %land.lhs.true236 ], [ %reflist.0, %land.lhs.true225 ], [ %reflist.0, %land.lhs.true206 ], [ %reflist.0, %land.lhs.true189 ], [ %reflist.0, %land.lhs.true174 ], [ %reflist.0, %land.lhs.true161 ], [ %reflist.0, %land.lhs.true152 ], [ %reflist.0, %cond.true146 ], [ %reflist.0, %if.end101 ], !dbg !2430
  %last_sp_set.2 = phi %struct.rtx_def* [ null, %if.then249 ], [ %last_sp_set.0, %if.end74 ], [ %insn.0, %if.end100 ], [ %insn.0, %if.then88 ], [ %insn.0, %if.then52 ], [ %last_sp_set.0, %land.lhs.true245 ], [ %last_sp_set.0, %land.lhs.true239 ], [ %last_sp_set.0, %land.lhs.true236 ], [ %last_sp_set.0, %land.lhs.true225 ], [ %last_sp_set.0, %land.lhs.true206 ], [ %last_sp_set.0, %land.lhs.true189 ], [ %last_sp_set.0, %land.lhs.true174 ], [ %last_sp_set.0, %land.lhs.true161 ], [ %last_sp_set.0, %land.lhs.true152 ], [ %last_sp_set.0, %cond.true146 ], [ %last_sp_set.0, %if.end101 ], !dbg !2430
  %last_sp_adjust.2 = phi i64 [ 0, %if.then249 ], [ %add, %if.end74 ], [ %17, %if.end100 ], [ %add85, %if.then88 ], [ %17, %if.then52 ], [ %last_sp_adjust.0, %land.lhs.true245 ], [ %last_sp_adjust.0, %land.lhs.true239 ], [ %last_sp_adjust.0, %land.lhs.true236 ], [ %last_sp_adjust.0, %land.lhs.true225 ], [ %last_sp_adjust.0, %land.lhs.true206 ], [ %last_sp_adjust.0, %land.lhs.true189 ], [ %last_sp_adjust.0, %land.lhs.true174 ], [ %last_sp_adjust.0, %land.lhs.true161 ], [ %last_sp_adjust.0, %land.lhs.true152 ], [ %last_sp_adjust.0, %cond.true146 ], [ %last_sp_adjust.0, %if.end101 ], !dbg !2430
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then249 ], [ false, %if.end74 ], [ false, %if.end100 ], [ false, %if.then88 ], [ false, %if.then52 ], [ true, %land.lhs.true245 ], [ true, %land.lhs.true239 ], [ true, %land.lhs.true236 ], [ true, %land.lhs.true225 ], [ true, %land.lhs.true206 ], [ true, %land.lhs.true189 ], [ true, %land.lhs.true174 ], [ true, %land.lhs.true161 ], [ true, %land.lhs.true152 ], [ true, %cond.true146 ], [ true, %if.end101 ]
  call void @llvm.dbg.value(metadata i64 %last_sp_adjust.2, metadata !2412, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_sp_set.2, metadata !2413, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %reflist.2, metadata !2414, metadata !DIExpression()), !dbg !2430
  br i1 %cleanup.dest.slot.1, label %if.end254, label %for.inc

if.end254:                                        ; preds = %if.end, %cleanup252
  %reflist.3 = phi %struct.csa_reflist* [ %reflist.0, %if.end ], [ %reflist.2, %cleanup252 ], !dbg !2436
  %last_sp_set.3 = phi %struct.rtx_def* [ %last_sp_set.0, %if.end ], [ %last_sp_set.2, %cleanup252 ], !dbg !2437
  %last_sp_adjust.3 = phi i64 [ %last_sp_adjust.0, %if.end ], [ %last_sp_adjust.2, %cleanup252 ], !dbg !2430
  call void @llvm.dbg.value(metadata i64 %last_sp_adjust.3, metadata !2412, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_sp_set.3, metadata !2413, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %reflist.3, metadata !2414, metadata !DIExpression()), !dbg !2430
  store %struct.rtx_def* %insn.0, %struct.rtx_def** %insn255, align 8, !dbg !2544
  store %struct.csa_reflist* %reflist.3, %struct.csa_reflist** %reflist256, align 8, !dbg !2545
  %bf.load257 = load i32, i32* %7, align 8, !dbg !2546
  %bf.clear258 = and i32 %bf.load257, 65535, !dbg !2546
  %cmp259 = icmp ne i32 %bf.clear258, 10, !dbg !2546
  %tobool262 = icmp ne %struct.rtx_def* %last_sp_set.3, null, !dbg !2548
  %or.cond1 = and i1 %cmp259, %tobool262, !dbg !2549
  br i1 %or.cond1, label %land.lhs.true263, label %if.end272, !dbg !2549

land.lhs.true263:                                 ; preds = %if.end254
  %u264 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2550
  %33 = getelementptr inbounds %union.u, %union.u* %u264, i64 1, i32 0, i32 0, i64 0, !dbg !2550
  %rt_rtx267 = bitcast %union.rtunion_def* %33 to %struct.rtx_def**, !dbg !2550
  %call268 = call i32 @for_each_rtx(%struct.rtx_def** nonnull %rt_rtx267, i32 (%struct.rtx_def**, i8*)* nonnull @record_stack_refs, i8* nonnull %0) #6, !dbg !2551
  %tobool269 = icmp eq i32 %call268, 0, !dbg !2551
  br i1 %tobool269, label %if.then270, label %land.lhs.true263.if.end272_crit_edge, !dbg !2552

land.lhs.true263.if.end272_crit_edge:             ; preds = %land.lhs.true263
  %.pre = load %struct.csa_reflist*, %struct.csa_reflist** %reflist256, align 8, !dbg !2553
  br label %if.end272, !dbg !2552

if.then270:                                       ; preds = %land.lhs.true263
  %34 = load %struct.csa_reflist*, %struct.csa_reflist** %reflist256, align 8, !dbg !2554
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %34, metadata !2414, metadata !DIExpression()), !dbg !2430
  br label %for.inc, !dbg !2556

if.end272:                                        ; preds = %land.lhs.true263.if.end272_crit_edge, %if.end254
  %35 = phi %struct.csa_reflist* [ %.pre, %land.lhs.true263.if.end272_crit_edge ], [ %reflist.3, %if.end254 ], !dbg !2553
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %35, metadata !2414, metadata !DIExpression()), !dbg !2430
  %tobool274 = icmp eq %struct.rtx_def* %last_sp_set.3, null, !dbg !2557
  br i1 %tobool274, label %for.inc, label %land.lhs.true275, !dbg !2559

land.lhs.true275:                                 ; preds = %if.end272
  %bf.load276 = load i32, i32* %7, align 8, !dbg !2560
  %bf.clear277 = and i32 %bf.load276, 65535, !dbg !2560
  %cmp278 = icmp eq i32 %bf.clear277, 10, !dbg !2560
  br i1 %cmp278, label %if.then287, label %lor.lhs.false280, !dbg !2561

lor.lhs.false280:                                 ; preds = %land.lhs.true275
  %36 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2562
  %u281 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2563
  %37 = getelementptr inbounds %union.u, %union.u* %u281, i64 1, i32 0, i32 0, i64 0, !dbg !2563
  %rt_rtx284 = bitcast %union.rtunion_def* %37 to %struct.rtx_def**, !dbg !2563
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx284, align 8, !dbg !2563
  %call285 = call i32 @reg_mentioned_p(%struct.rtx_def* %36, %struct.rtx_def* %38) #6, !dbg !2564
  %tobool286 = icmp eq i32 %call285, 0, !dbg !2564
  br i1 %tobool286, label %for.inc, label %if.then287, !dbg !2565

if.then287:                                       ; preds = %lor.lhs.false280, %land.lhs.true275
  %cmp290 = icmp eq i64 %last_sp_adjust.3, 0, !dbg !2566
  br i1 %cmp290, label %if.then292, label %if.end294, !dbg !2569

if.then292:                                       ; preds = %if.then287
  %call293 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* nonnull %last_sp_set.3) #6, !dbg !2570
  br label %if.end294, !dbg !2570

if.end294:                                        ; preds = %if.then292, %if.then287
  call fastcc void @free_csa_reflist(%struct.csa_reflist* %35) #7, !dbg !2571
  call void @llvm.dbg.value(metadata %struct.csa_reflist* null, metadata !2414, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2413, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i64 0, metadata !2412, metadata !DIExpression()), !dbg !2430
  br label %for.inc, !dbg !2572

for.inc:                                          ; preds = %lor.lhs.false280, %if.end272, %if.end294, %cleanup252, %lor.lhs.false15, %if.then270
  %reflist.5 = phi %struct.csa_reflist* [ %reflist.2, %cleanup252 ], [ %34, %if.then270 ], [ %reflist.0, %lor.lhs.false15 ], [ null, %if.end294 ], [ %35, %lor.lhs.false280 ], [ %35, %if.end272 ], !dbg !2430
  %last_sp_set.5 = phi %struct.rtx_def* [ %last_sp_set.2, %cleanup252 ], [ %last_sp_set.3, %if.then270 ], [ %last_sp_set.0, %lor.lhs.false15 ], [ null, %if.end294 ], [ %last_sp_set.3, %lor.lhs.false280 ], [ null, %if.end272 ], !dbg !2430
  %last_sp_adjust.5 = phi i64 [ %last_sp_adjust.2, %cleanup252 ], [ %last_sp_adjust.3, %if.then270 ], [ %last_sp_adjust.0, %lor.lhs.false15 ], [ 0, %if.end294 ], [ %last_sp_adjust.3, %lor.lhs.false280 ], [ %last_sp_adjust.3, %if.end272 ], !dbg !2430
  call void @llvm.dbg.value(metadata i64 %last_sp_adjust.5, metadata !2412, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_sp_set.5, metadata !2413, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %reflist.5, metadata !2414, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !2415, metadata !DIExpression()), !dbg !2430
  br label %for.cond, !dbg !2573, !llvm.loop !2574

for.end:                                          ; preds = %for.cond
  %reflist.0.lcssa = phi %struct.csa_reflist* [ %reflist.0, %for.cond ], !dbg !2436
  %last_sp_set.0.lcssa = phi %struct.rtx_def* [ %last_sp_set.0, %for.cond ], !dbg !2437
  %last_sp_adjust.0.lcssa = phi i64 [ %last_sp_adjust.0, %for.cond ], !dbg !2430
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %reflist.0.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_sp_set.0.lcssa, metadata !2413, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i64 %last_sp_adjust.0.lcssa, metadata !2412, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %reflist.0.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_sp_set.0.lcssa, metadata !2413, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i64 %last_sp_adjust.0.lcssa, metadata !2412, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %reflist.0.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_sp_set.0.lcssa, metadata !2413, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i64 %last_sp_adjust.0.lcssa, metadata !2412, metadata !DIExpression()), !dbg !2430
  %tobool296 = icmp ne %struct.rtx_def* %last_sp_set.0.lcssa, null, !dbg !2576
  %cmp298 = icmp eq i64 %last_sp_adjust.0.lcssa, 0, !dbg !2578
  %or.cond3 = and i1 %tobool296, %cmp298, !dbg !2579
  br i1 %or.cond3, label %if.then300, label %if.end302, !dbg !2579

if.then300:                                       ; preds = %for.end
  %call301 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* nonnull %last_sp_set.0.lcssa) #6, !dbg !2580
  br label %if.end302, !dbg !2580

if.end302:                                        ; preds = %if.then300, %for.end
  %tobool303 = icmp eq %struct.csa_reflist* %reflist.0.lcssa, null, !dbg !2581
  br i1 %tobool303, label %if.end305, label %if.then304, !dbg !2583

if.then304:                                       ; preds = %if.end302
  call fastcc void @free_csa_reflist(%struct.csa_reflist* nonnull %reflist.0.lcssa) #7, !dbg !2584
  br label %if.end305, !dbg !2584

if.end305:                                        ; preds = %if.end302, %if.then304
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8, !dbg !2585
  ret void, !dbg !2585
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @single_set_for_csa(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !2586 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2590, metadata !DIExpression()), !dbg !2597
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2598
  %bf.load = load i32, i32* %0, align 8, !dbg !2598
  %bf.clear = and i32 %bf.load, 65535, !dbg !2598
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !2598
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !2598

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !2598
  br i1 %cmp3, label %cond.true, label %lor.lhs.false4, !dbg !2598

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !2598
  br i1 %cmp7, label %cond.true, label %lor.lhs.false8, !dbg !2598

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !2598
  br i1 %cmp11, label %cond.true, label %cond.end25, !dbg !2598

cond.true:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2598
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2598
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !2598
  %3 = load i32*, i32** %2, align 8, !dbg !2598
  %bf.load12 = load i32, i32* %3, align 8, !dbg !2598
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !2598
  %cmp14 = icmp eq i32 %bf.clear13, 23, !dbg !2598
  %4 = bitcast i32* %3 to %struct.rtx_def*, !dbg !2598
  br i1 %cmp14, label %cond.end25, label %cond.false, !dbg !2598

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %4) #6, !dbg !2598
  br label %cond.end25, !dbg !2598

cond.end25:                                       ; preds = %lor.lhs.false8, %cond.false, %cond.true
  %cond26 = phi %struct.rtx_def* [ %call, %cond.false ], [ %4, %cond.true ], [ null, %lor.lhs.false8 ], !dbg !2598
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond26, metadata !2592, metadata !DIExpression()), !dbg !2597
  %tobool = icmp eq %struct.rtx_def* %cond26, null, !dbg !2599
  br i1 %tobool, label %if.end, label %cleanup93, !dbg !2601

if.end:                                           ; preds = %cond.end25
  %bf.load27 = load i32, i32* %0, align 8, !dbg !2602
  %bf.clear28 = and i32 %bf.load27, 65535, !dbg !2602
  %cmp29 = icmp eq i32 %bf.clear28, 8, !dbg !2602
  br i1 %cmp29, label %lor.lhs.false30, label %cleanup93, !dbg !2604

lor.lhs.false30:                                  ; preds = %if.end
  %u31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2605
  %5 = getelementptr inbounds %union.u, %union.u* %u31, i64 1, i32 0, i32 0, i64 0, !dbg !2605
  %6 = bitcast %union.rtunion_def* %5 to i32**, !dbg !2605
  %7 = load i32*, i32** %6, align 8, !dbg !2605
  %bf.load35 = load i32, i32* %7, align 8, !dbg !2605
  %bf.clear36 = and i32 %bf.load35, 65535, !dbg !2605
  %cmp37 = icmp eq i32 %bf.clear36, 15, !dbg !2606
  br i1 %cmp37, label %if.end39, label %cleanup93, !dbg !2607

if.end39:                                         ; preds = %lor.lhs.false30
  call void @llvm.dbg.value(metadata i32* %7, metadata !2592, metadata !DIExpression()), !dbg !2597
  %arrayidx46 = getelementptr inbounds i32, i32* %7, i64 2, !dbg !2608
  %rt_rtvec = bitcast i32* %arrayidx46 to %struct.rtvec_def**, !dbg !2608
  %8 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !2608
  %arrayidx47 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %8, i64 0, i32 1, i64 0, !dbg !2608
  %9 = bitcast %struct.rtx_def** %arrayidx47 to i32**, !dbg !2608
  %10 = load i32*, i32** %9, align 8, !dbg !2608
  %bf.load48 = load i32, i32* %10, align 8, !dbg !2608
  %bf.clear49 = and i32 %bf.load48, 65535, !dbg !2608
  %cmp50 = icmp eq i32 %bf.clear49, 23, !dbg !2610
  %11 = bitcast i32* %10 to %struct.rtx_def*, !dbg !2611
  br i1 %cmp50, label %for.cond.preheader, label %cleanup93, !dbg !2611

for.cond.preheader:                               ; preds = %if.end39
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %8, i64 0, i32 0, !dbg !2612
  %12 = load i32, i32* %num_elem, align 8, !dbg !2612
  %13 = sext i32 %12 to i64, !dbg !2613
  br label %for.cond, !dbg !2613

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !2614
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2591, metadata !DIExpression()), !dbg !2597
  %cmp57 = icmp slt i64 %indvars.iv, %13, !dbg !2615
  br i1 %cmp57, label %for.body, label %for.end, !dbg !2613

for.body:                                         ; preds = %for.cond
  %arrayidx63 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %8, i64 0, i32 1, i64 %indvars.iv, !dbg !2616
  %14 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx63, align 8, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.rtx_def* %14, metadata !2593, metadata !DIExpression()), !dbg !2617
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 0, !dbg !2618
  %bf.load64 = load i32, i32* %15, align 8, !dbg !2618
  %bf.clear65 = and i32 %bf.load64, 65535, !dbg !2618
  %cmp66 = icmp eq i32 %bf.clear65, 23, !dbg !2620
  br i1 %cmp66, label %land.lhs.true, label %if.else, !dbg !2621

land.lhs.true:                                    ; preds = %for.body
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2622
  %rt_rtx70 = bitcast %union.rtunion_def* %16 to %struct.rtx_def**, !dbg !2622
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx70, align 8, !dbg !2622
  %arrayidx73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2623
  %rt_rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**, !dbg !2623
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx74, align 8, !dbg !2623
  %cmp75 = icmp eq %struct.rtx_def* %17, %18, !dbg !2624
  br i1 %cmp75, label %if.end86, label %if.else, !dbg !2625

if.else:                                          ; preds = %land.lhs.true, %for.body
  %cmp79 = icmp eq i32 %bf.clear65, 25, !dbg !2626
  br i1 %cmp79, label %if.end86, label %land.lhs.true80, !dbg !2628

land.lhs.true80:                                  ; preds = %if.else
  %cmp83 = icmp eq i32 %bf.clear65, 24, !dbg !2629
  br i1 %cmp83, label %if.end86, label %cleanup, !dbg !2630

if.end86:                                         ; preds = %land.lhs.true80, %if.else, %land.lhs.true
  br label %cleanup, !dbg !2631

cleanup:                                          ; preds = %land.lhs.true80, %if.end86
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end86 ], [ false, %land.lhs.true80 ]
  br i1 %cleanup.dest.slot.0, label %for.inc, label %cleanup93.loopexit

for.inc:                                          ; preds = %cleanup
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2632
  call void @llvm.dbg.value(metadata i32 undef, metadata !2591, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2597
  br label %for.cond, !dbg !2633, !llvm.loop !2634

for.end:                                          ; preds = %for.cond
  br label %cleanup93, !dbg !2636

cleanup93.loopexit:                               ; preds = %cleanup
  br label %cleanup93, !dbg !2637

cleanup93:                                        ; preds = %cleanup93.loopexit, %if.end39, %lor.lhs.false30, %cond.end25, %if.end, %for.end
  %retval.2 = phi %struct.rtx_def* [ %11, %for.end ], [ %cond26, %cond.end25 ], [ null, %lor.lhs.false30 ], [ null, %if.end ], [ null, %if.end39 ], [ null, %cleanup93.loopexit ]
  ret %struct.rtx_def* %retval.2, !dbg !2637
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @try_apply_stack_adjustment(%struct.rtx_def* %insn, %struct.csa_reflist* %reflist, i64 %new_adjust, i64 %delta) unnamed_addr #4 !dbg !2638 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2642, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %reflist, metadata !2643, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i64 %new_adjust, metadata !2644, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i64 %delta, metadata !2645, metadata !DIExpression()), !dbg !2653
  %call = tail call fastcc %struct.rtx_def* @single_set_for_csa(%struct.rtx_def* %insn) #7, !dbg !2654
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2647, metadata !DIExpression()), !dbg !2653
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2655
  %0 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !2655
  %1 = load i32*, i32** %0, align 8, !dbg !2655
  %bf.load = load i32, i32* %1, align 8, !dbg !2655
  %bf.clear = and i32 %bf.load, 65535, !dbg !2655
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !2655
  br i1 %cmp, label %if.then, label %if.else, !dbg !2657

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %1 to %struct.rtx_def*, !dbg !2657
  %rt_rtx4 = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2658
  %3 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2659
  %call9 = tail call %struct.rtx_def* @replace_equiv_address(%struct.rtx_def* %2, %struct.rtx_def* %3) #6, !dbg !2660
  %call10 = tail call zeroext i8 @validate_change(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %rt_rtx4, %struct.rtx_def* %call9, i8 zeroext 1) #6, !dbg !2661
  br label %if.end, !dbg !2661

if.else:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2662
  %rt_rtx14 = bitcast %union.rtunion_def* %4 to %struct.rtx_def**, !dbg !2662
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx14, align 8, !dbg !2662
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2662
  %rt_rtx18 = bitcast %union.rtunion_def* %6 to %struct.rtx_def**, !dbg !2662
  %call19 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %new_adjust) #6, !dbg !2663
  %call20 = tail call zeroext i8 @validate_change(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %rt_rtx18, %struct.rtx_def* %call19, i8 zeroext 1) #6, !dbg !2664
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %reflist, metadata !2646, metadata !DIExpression()), !dbg !2653
  br label %for.cond, !dbg !2665

for.cond:                                         ; preds = %if.end47, %if.end
  %ml.0 = phi %struct.csa_reflist* [ %reflist, %if.end ], [ %17, %if.end47 ], !dbg !2666
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %ml.0, metadata !2646, metadata !DIExpression()), !dbg !2653
  %tobool = icmp eq %struct.csa_reflist* %ml.0, null, !dbg !2667
  br i1 %tobool, label %for.end, label %for.body, !dbg !2667

for.body:                                         ; preds = %for.cond
  %7 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2668
  %sp_offset = getelementptr inbounds %struct.csa_reflist, %struct.csa_reflist* %ml.0, i64 0, i32 0, !dbg !2669
  %8 = load i64, i64* %sp_offset, align 8, !dbg !2669
  %sub = sub nsw i64 %8, %delta, !dbg !2670
  %call21 = tail call %struct.rtx_def* @plus_constant(%struct.rtx_def* %7, i64 %sub) #6, !dbg !2671
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call21, metadata !2648, metadata !DIExpression()), !dbg !2672
  %ref = getelementptr inbounds %struct.csa_reflist, %struct.csa_reflist* %ml.0, i64 0, i32 2, !dbg !2673
  %9 = bitcast %struct.rtx_def*** %ref to i32***, !dbg !2673
  %10 = load i32**, i32*** %9, align 8, !dbg !2673
  %11 = load i32*, i32** %10, align 8, !dbg !2673
  %bf.load22 = load i32, i32* %11, align 8, !dbg !2673
  %bf.clear23 = and i32 %bf.load22, 65535, !dbg !2673
  %cmp24 = icmp eq i32 %bf.clear23, 43, !dbg !2673
  br i1 %cmp24, label %if.then25, label %if.else28, !dbg !2675

if.then25:                                        ; preds = %for.body
  %.cast1 = bitcast i32* %11 to %struct.rtx_def*, !dbg !2676
  %call27 = tail call %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def* %.cast1, %struct.rtx_def* %call21) #6, !dbg !2677
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call27, metadata !2652, metadata !DIExpression()), !dbg !2672
  br label %if.end47, !dbg !2678

if.else28:                                        ; preds = %for.body
  %12 = load i32*, i32** bitcast (%struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2) to i32**), align 16, !dbg !2679
  %bf.load32 = load i32, i32* %12, align 8, !dbg !2679
  %bf.lshr2 = xor i32 %bf.load22, %bf.load32, !dbg !2681
  %13 = and i32 %bf.lshr2, 16711680, !dbg !2681
  %cmp35 = icmp eq i32 %13, 0, !dbg !2681
  br i1 %cmp35, label %if.end47, label %if.else37, !dbg !2682

if.else37:                                        ; preds = %if.else28
  %bf.lshr40 = lshr i32 %bf.load22, 16, !dbg !2683
  %bf.clear41 = and i32 %bf.lshr40, 255, !dbg !2683
  %14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call21, i64 0, i32 0, !dbg !2684
  %bf.load42 = load i32, i32* %14, align 8, !dbg !2684
  %bf.lshr43 = lshr i32 %bf.load42, 16, !dbg !2684
  %bf.clear44 = and i32 %bf.lshr43, 255, !dbg !2684
  %call45 = tail call %struct.rtx_def* @lowpart_subreg(i32 %bf.clear41, %struct.rtx_def* %call21, i32 %bf.clear44) #6, !dbg !2685
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call45, metadata !2652, metadata !DIExpression()), !dbg !2672
  br label %if.end47

if.end47:                                         ; preds = %if.else37, %if.else28, %if.then25
  %new_val.1 = phi %struct.rtx_def* [ %call27, %if.then25 ], [ %call45, %if.else37 ], [ %call21, %if.else28 ], !dbg !2676
  call void @llvm.dbg.value(metadata %struct.rtx_def* %new_val.1, metadata !2652, metadata !DIExpression()), !dbg !2672
  %insn48 = getelementptr inbounds %struct.csa_reflist, %struct.csa_reflist* %ml.0, i64 0, i32 1, !dbg !2686
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn48, align 8, !dbg !2686
  %16 = load %struct.rtx_def**, %struct.rtx_def*** %ref, align 8, !dbg !2687
  %call50 = tail call zeroext i8 @validate_change(%struct.rtx_def* %15, %struct.rtx_def** %16, %struct.rtx_def* %new_val.1, i8 zeroext 1) #6, !dbg !2688
  %next = getelementptr inbounds %struct.csa_reflist, %struct.csa_reflist* %ml.0, i64 0, i32 3, !dbg !2689
  %17 = load %struct.csa_reflist*, %struct.csa_reflist** %next, align 8, !dbg !2689
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %17, metadata !2646, metadata !DIExpression()), !dbg !2653
  br label %for.cond, !dbg !2690, !llvm.loop !2691

for.end:                                          ; preds = %for.cond
  %call51 = tail call i32 @apply_change_group() #6, !dbg !2693
  %tobool52 = icmp eq i32 %call51, 0, !dbg !2693
  br i1 %tobool52, label %cleanup, label %for.cond54.preheader, !dbg !2695

for.cond54.preheader:                             ; preds = %for.end
  br label %for.cond54, !dbg !2696

for.cond54:                                       ; preds = %for.cond54.preheader, %for.body56
  %ml.1 = phi %struct.csa_reflist* [ %19, %for.body56 ], [ %reflist, %for.cond54.preheader ], !dbg !2699
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %ml.1, metadata !2646, metadata !DIExpression()), !dbg !2653
  %tobool55 = icmp eq %struct.csa_reflist* %ml.1, null, !dbg !2696
  br i1 %tobool55, label %cleanup.loopexit, label %for.body56, !dbg !2696

for.body56:                                       ; preds = %for.cond54
  %sp_offset57 = getelementptr inbounds %struct.csa_reflist, %struct.csa_reflist* %ml.1, i64 0, i32 0, !dbg !2700
  %18 = load i64, i64* %sp_offset57, align 8, !dbg !2702
  %sub58 = sub nsw i64 %18, %delta, !dbg !2702
  store i64 %sub58, i64* %sp_offset57, align 8, !dbg !2702
  %next60 = getelementptr inbounds %struct.csa_reflist, %struct.csa_reflist* %ml.1, i64 0, i32 3, !dbg !2703
  %19 = load %struct.csa_reflist*, %struct.csa_reflist** %next60, align 8, !dbg !2703
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %19, metadata !2646, metadata !DIExpression()), !dbg !2653
  br label %for.cond54, !dbg !2704, !llvm.loop !2705

cleanup.loopexit:                                 ; preds = %for.cond54
  br label %cleanup, !dbg !2707

cleanup:                                          ; preds = %cleanup.loopexit, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ 1, %cleanup.loopexit ], !dbg !2708
  ret i32 %retval.0, !dbg !2707
}

; Function Attrs: nounwind uwtable
define internal fastcc void @adjust_frame_related_expr(%struct.rtx_def* %last_sp_set, %struct.rtx_def* %insn, i64 %this_adjust) unnamed_addr #4 !dbg !2709 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %last_sp_set, metadata !2713, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2714, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %this_adjust, metadata !2715, metadata !DIExpression()), !dbg !2727
  %call = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %last_sp_set, i32 17, %struct.rtx_def* null) #6, !dbg !2728
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !2716, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2717, metadata !DIExpression()), !dbg !2727
  %cond1 = icmp eq %struct.rtx_def* %call, null, !dbg !2729
  br i1 %cond1, label %land.lhs.true, label %land.lhs.true2, !dbg !2729

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2731
  %bf.load = load i32, i32* %0, align 8, !dbg !2731
  %bf.clear = and i32 %bf.load, 1073741824, !dbg !2731
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !2731
  br i1 %tobool, label %if.end, label %cleanup.cont222, !dbg !2732

if.end:                                           ; preds = %land.lhs.true
  br i1 true, label %if.else, label %if.end.land.lhs.true2_crit_edge, !dbg !2733

if.end.land.lhs.true2_crit_edge:                  ; preds = %if.end
  br label %land.lhs.true2, !dbg !2733

land.lhs.true2:                                   ; preds = %if.end.land.lhs.true2_crit_edge, %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2734
  %1 = bitcast %union.rtunion_def* %arrayidx to i32**, !dbg !2734
  %2 = load i32*, i32** %1, align 8, !dbg !2734
  %bf.load3 = load i32, i32* %2, align 8, !dbg !2734
  %bf.clear4 = and i32 %bf.load3, 65535, !dbg !2734
  %cmp5 = icmp eq i32 %bf.clear4, 5, !dbg !2735
  br i1 %cmp5, label %land.lhs.true6, label %if.else, !dbg !2736

land.lhs.true6:                                   ; preds = %land.lhs.true2
  %arrayidx13 = getelementptr inbounds i32, i32* %2, i64 2, !dbg !2737
  %rt_rtvec = bitcast i32* %arrayidx13 to %struct.rtvec_def**, !dbg !2737
  %3 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !2737
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %3, i64 0, i32 0, !dbg !2737
  %4 = load i32, i32* %num_elem, align 8, !dbg !2737
  %cmp14 = icmp sgt i32 %4, 1, !dbg !2738
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !2739

if.then15:                                        ; preds = %land.lhs.true6
  call void @llvm.dbg.value(metadata i32* %2, metadata !2718, metadata !DIExpression()), !dbg !2740
  %sub = add nsw i32 %4, -1, !dbg !2741
  %idxprom = sext i32 %sub to i64, !dbg !2741
  %arrayidx29 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %3, i64 0, i32 1, i64 %idxprom, !dbg !2741
  %5 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx29, align 8, !dbg !2741
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !2721, metadata !DIExpression()), !dbg !2740
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 0, !dbg !2742
  %bf.load30 = load i32, i32* %6, align 8, !dbg !2742
  %bf.clear31 = and i32 %bf.load30, 65535, !dbg !2742
  %cmp32 = icmp eq i32 %bf.clear31, 23, !dbg !2744
  br i1 %cmp32, label %land.lhs.true33, label %if.end97, !dbg !2745

land.lhs.true33:                                  ; preds = %if.then15
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2746
  %bf.load37 = load i32, i32* %7, align 8, !dbg !2746
  %bf.lshr352 = xor i32 %bf.load30, %bf.load37, !dbg !2747
  %8 = and i32 %bf.lshr352, 1073741824, !dbg !2747
  %cmp40 = icmp eq i32 %8, 0, !dbg !2747
  br i1 %cmp40, label %land.lhs.true41, label %if.end97, !dbg !2748

land.lhs.true41:                                  ; preds = %land.lhs.true33
  %arrayidx44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2749
  %rt_rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**, !dbg !2749
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx45, align 8, !dbg !2749
  %10 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2750
  %cmp46 = icmp eq %struct.rtx_def* %9, %10, !dbg !2751
  br i1 %cmp46, label %land.lhs.true47, label %if.end97, !dbg !2752

land.lhs.true47:                                  ; preds = %land.lhs.true41
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2753
  %12 = bitcast %union.rtunion_def* %11 to i32**, !dbg !2753
  %13 = load i32*, i32** %12, align 8, !dbg !2753
  %bf.load52 = load i32, i32* %13, align 8, !dbg !2753
  %bf.clear53 = and i32 %bf.load52, 65535, !dbg !2753
  %cmp54 = icmp eq i32 %bf.clear53, 49, !dbg !2754
  br i1 %cmp54, label %land.lhs.true55, label %if.end97, !dbg !2755

land.lhs.true55:                                  ; preds = %land.lhs.true47
  %rt_rtx59 = bitcast %union.rtunion_def* %11 to %struct.rtx_def**, !dbg !2756
  %arrayidx62 = getelementptr inbounds i32, i32* %13, i64 2, !dbg !2756
  %rt_rtx63 = bitcast i32* %arrayidx62 to %struct.rtx_def**, !dbg !2756
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx63, align 8, !dbg !2756
  %cmp64 = icmp eq %struct.rtx_def* %14, %9, !dbg !2757
  br i1 %cmp64, label %land.lhs.true65, label %if.end97, !dbg !2758

land.lhs.true65:                                  ; preds = %land.lhs.true55
  %15 = getelementptr inbounds i32, i32* %13, i64 4, !dbg !2759
  %16 = bitcast i32* %15 to i32**, !dbg !2759
  %17 = load i32*, i32** %16, align 8, !dbg !2759
  %bf.load74 = load i32, i32* %17, align 8, !dbg !2759
  %bf.clear75 = and i32 %bf.load74, 65535, !dbg !2759
  %cmp76 = icmp eq i32 %bf.clear75, 30, !dbg !2759
  br i1 %cmp76, label %if.then77, label %if.end97, !dbg !2760

if.then77:                                        ; preds = %land.lhs.true65
  %u86 = getelementptr inbounds i32, i32* %17, i64 2, !dbg !2761
  %arrayidx87 = bitcast i32* %u86 to i64*, !dbg !2761
  %18 = load i64, i64* %arrayidx87, align 8, !dbg !2761
  %add = add nsw i64 %18, %this_adjust, !dbg !2761
  %call88 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %add) #6, !dbg !2761
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx59, align 8, !dbg !2763
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2763
  %rt_rtx96 = bitcast %union.rtunion_def* %20 to %struct.rtx_def**, !dbg !2763
  store %struct.rtx_def* %call88, %struct.rtx_def** %rt_rtx96, align 8, !dbg !2764
  br label %cleanup, !dbg !2765

if.end97:                                         ; preds = %land.lhs.true65, %land.lhs.true55, %land.lhs.true47, %land.lhs.true41, %land.lhs.true33, %if.then15
  %add103 = add nsw i32 %4, 1, !dbg !2766
  %call104 = tail call %struct.rtvec_def* @rtvec_alloc(i32 %add103) #6, !dbg !2766
  %call105 = tail call %struct.rtx_def* @gen_rtx_fmt_E_stat(i32 5, i32 0, %struct.rtvec_def* %call104) #6, !dbg !2766
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call105, metadata !2717, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 0, metadata !2722, metadata !DIExpression()), !dbg !2740
  %arrayidx121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call105, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2767
  %rt_rtvec122 = bitcast %union.rtunion_def* %arrayidx121 to %struct.rtvec_def**, !dbg !2767
  br label %for.cond, !dbg !2770

for.cond:                                         ; preds = %for.body, %if.end97
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end97 ], !dbg !2771
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2722, metadata !DIExpression()), !dbg !2740
  %21 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !2772
  %num_elem110 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i64 0, i32 0, !dbg !2772
  %22 = load i32, i32* %num_elem110, align 8, !dbg !2772
  %23 = sext i32 %22 to i64, !dbg !2773
  %cmp111 = icmp slt i64 %indvars.iv, %23, !dbg !2773
  br i1 %cmp111, label %for.body, label %cleanup.loopexit, !dbg !2774

for.body:                                         ; preds = %for.cond
  %arrayidx118 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i64 0, i32 1, i64 %indvars.iv, !dbg !2775
  %24 = bitcast %struct.rtx_def** %arrayidx118 to i64*, !dbg !2775
  %25 = load i64, i64* %24, align 8, !dbg !2775
  %26 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec122, align 8, !dbg !2776
  %arrayidx125 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %26, i64 0, i32 1, i64 %indvars.iv, !dbg !2776
  %27 = bitcast %struct.rtx_def** %arrayidx125 to i64*, !dbg !2777
  store i64 %25, i64* %27, align 8, !dbg !2777
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2778
  call void @llvm.dbg.value(metadata i32 undef, metadata !2722, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2740
  br label %for.cond, !dbg !2779, !llvm.loop !2780

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then77
  %new_expr.0 = phi %struct.rtx_def* [ null, %if.then77 ], [ %call105, %cleanup.loopexit ], !dbg !2727
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then77 ], [ true, %cleanup.loopexit ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %new_expr.0, metadata !2717, metadata !DIExpression()), !dbg !2727
  br i1 %cleanup.dest.slot.0, label %cleanup.if.end176_crit_edge, label %cleanup.cont222

cleanup.if.end176_crit_edge:                      ; preds = %cleanup
  br label %if.end176

if.else:                                          ; preds = %if.end, %land.lhs.true6, %land.lhs.true2
  %call128 = tail call %struct.rtvec_def* @rtvec_alloc(i32 2) #6, !dbg !2782
  %call129 = tail call %struct.rtx_def* @gen_rtx_fmt_E_stat(i32 5, i32 0, %struct.rtvec_def* %call128) #6, !dbg !2782
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call129, metadata !2717, metadata !DIExpression()), !dbg !2727
  br i1 %cond1, label %if.else142, label %if.then131, !dbg !2783

if.then131:                                       ; preds = %if.else
  %arrayidx134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2784
  %28 = bitcast %union.rtunion_def* %arrayidx134 to i64*, !dbg !2784
  %29 = load i64, i64* %28, align 8, !dbg !2784
  %arrayidx138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call129, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2785
  %rt_rtvec139 = bitcast %union.rtunion_def* %arrayidx138 to %struct.rtvec_def**, !dbg !2785
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec139, align 8, !dbg !2785
  %elem140 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i64 0, i32 1, !dbg !2785
  %31 = bitcast [1 x %struct.rtx_def*]* %elem140 to i64*, !dbg !2786
  store i64 %29, i64* %31, align 8, !dbg !2786
  br label %if.end176, !dbg !2785

if.else142:                                       ; preds = %if.else
  %call144 = tail call fastcc %struct.rtx_def* @single_set_for_csa(%struct.rtx_def* %last_sp_set) #7, !dbg !2787
  %call145 = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %call144) #6, !dbg !2788
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call145, metadata !2723, metadata !DIExpression()), !dbg !2789
  %32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call145, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2790
  %rt_rtx149 = bitcast %union.rtunion_def* %32 to %struct.rtx_def**, !dbg !2790
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx149, align 8, !dbg !2790
  %34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2790
  %rt_rtx153 = bitcast %union.rtunion_def* %34 to %struct.rtx_def**, !dbg !2790
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx153, align 8, !dbg !2790
  %u154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i64 0, i32 1, !dbg !2790
  %arrayidx156 = bitcast %union.u* %u154 to i64*, !dbg !2790
  %36 = load i64, i64* %arrayidx156, align 8, !dbg !2790
  %sub157 = sub nsw i64 %36, %this_adjust, !dbg !2790
  %call158 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub157) #6, !dbg !2790
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx149, align 8, !dbg !2791
  %38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2791
  %rt_rtx166 = bitcast %union.rtunion_def* %38 to %struct.rtx_def**, !dbg !2791
  store %struct.rtx_def* %call158, %struct.rtx_def** %rt_rtx166, align 8, !dbg !2792
  %39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call145, i64 0, i32 0, !dbg !2793
  %bf.load167 = load i32, i32* %39, align 8, !dbg !2794
  %bf.set = or i32 %bf.load167, 1073741824, !dbg !2794
  store i32 %bf.set, i32* %39, align 8, !dbg !2794
  %arrayidx171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call129, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2795
  %rt_rtvec172 = bitcast %union.rtunion_def* %arrayidx171 to %struct.rtvec_def**, !dbg !2795
  %40 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec172, align 8, !dbg !2795
  %arrayidx174 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %40, i64 0, i32 1, i64 0, !dbg !2795
  store %struct.rtx_def* %call145, %struct.rtx_def** %arrayidx174, align 8, !dbg !2796
  br label %if.end176

if.end176:                                        ; preds = %cleanup.if.end176_crit_edge, %if.then131, %if.else142
  %new_expr.1 = phi %struct.rtx_def* [ %new_expr.0, %cleanup.if.end176_crit_edge ], [ %call129, %if.else142 ], [ %call129, %if.then131 ], !dbg !2727
  call void @llvm.dbg.value(metadata %struct.rtx_def* %new_expr.1, metadata !2717, metadata !DIExpression()), !dbg !2727
  %call177 = tail call fastcc %struct.rtx_def* @single_set_for_csa(%struct.rtx_def* %insn) #7, !dbg !2797
  %call178 = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %call177) #6, !dbg !2798
  %arrayidx181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %new_expr.1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2799
  %rt_rtvec182 = bitcast %union.rtunion_def* %arrayidx181 to %struct.rtvec_def**, !dbg !2799
  %41 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec182, align 8, !dbg !2799
  %num_elem188 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %41, i64 0, i32 0, !dbg !2799
  %42 = load i32, i32* %num_elem188, align 8, !dbg !2799
  %sub189 = add nsw i32 %42, -1, !dbg !2799
  %idxprom190 = sext i32 %sub189 to i64, !dbg !2799
  %arrayidx191 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %41, i64 0, i32 1, i64 %idxprom190, !dbg !2799
  store %struct.rtx_def* %call178, %struct.rtx_def** %arrayidx191, align 8, !dbg !2800
  %43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !2801
  %bf.load192 = load i32, i32* %43, align 8, !dbg !2801
  %bf.clear194 = and i32 %bf.load192, 1073741824, !dbg !2801
  %44 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec182, align 8, !dbg !2802
  %num_elem204 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %44, i64 0, i32 0, !dbg !2802
  %45 = load i32, i32* %num_elem204, align 8, !dbg !2802
  %sub205 = add nsw i32 %45, -1, !dbg !2802
  %idxprom206 = sext i32 %sub205 to i64, !dbg !2802
  %arrayidx207 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %44, i64 0, i32 1, i64 %idxprom206, !dbg !2802
  %46 = bitcast %struct.rtx_def** %arrayidx207 to i32**, !dbg !2802
  %47 = load i32*, i32** %46, align 8, !dbg !2802
  %bf.load208 = load i32, i32* %47, align 8, !dbg !2803
  %bf.clear209 = and i32 %bf.load208, -1073741825, !dbg !2803
  %bf.set210 = or i32 %bf.clear209, %bf.clear194, !dbg !2803
  store i32 %bf.set210, i32* %47, align 8, !dbg !2803
  br i1 %cond1, label %if.else217, label %if.then212, !dbg !2804

if.then212:                                       ; preds = %if.end176
  %arrayidx215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2805
  %rt_rtx216 = bitcast %union.rtunion_def* %arrayidx215 to %struct.rtx_def**, !dbg !2805
  store %struct.rtx_def* %new_expr.1, %struct.rtx_def** %rt_rtx216, align 8, !dbg !2807
  br label %cleanup.cont222, !dbg !2805

if.else217:                                       ; preds = %if.end176
  tail call void @add_reg_note(%struct.rtx_def* %last_sp_set, i32 17, %struct.rtx_def* %new_expr.1) #6, !dbg !2808
  br label %cleanup.cont222

cleanup.cont222:                                  ; preds = %land.lhs.true, %cleanup, %if.else217, %if.then212
  ret void, !dbg !2809
}

declare dso_local %struct.rtx_def* @delete_insn(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @free_csa_reflist(%struct.csa_reflist* %reflist) unnamed_addr #4 !dbg !2810 {
entry:
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %reflist, metadata !2814, metadata !DIExpression()), !dbg !2816
  br label %for.cond, !dbg !2817

for.cond:                                         ; preds = %for.body, %entry
  %reflist.addr.0 = phi %struct.csa_reflist* [ %reflist, %entry ], [ %0, %for.body ]
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %reflist.addr.0, metadata !2814, metadata !DIExpression()), !dbg !2816
  %tobool = icmp eq %struct.csa_reflist* %reflist.addr.0, null, !dbg !2818
  br i1 %tobool, label %for.end, label %for.body, !dbg !2818

for.body:                                         ; preds = %for.cond
  %next1 = getelementptr inbounds %struct.csa_reflist, %struct.csa_reflist* %reflist.addr.0, i64 0, i32 3, !dbg !2820
  %0 = load %struct.csa_reflist*, %struct.csa_reflist** %next1, align 8, !dbg !2820
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %0, metadata !2815, metadata !DIExpression()), !dbg !2816
  %1 = bitcast %struct.csa_reflist* %reflist.addr.0 to i8*, !dbg !2823
  tail call void @free(i8* nonnull %1) #6, !dbg !2824
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %0, metadata !2814, metadata !DIExpression()), !dbg !2816
  br label %for.cond, !dbg !2825, !llvm.loop !2826

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2828
}

declare dso_local i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @memory_address_addr_space_p(i32, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #1

declare dso_local i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @record_stack_refs(%struct.rtx_def** %xp, i8* %data) #4 !dbg !2829 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %xp, metadata !2833, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8* %data, metadata !2834, metadata !DIExpression()), !dbg !2837
  %0 = load %struct.rtx_def*, %struct.rtx_def** %xp, align 8, !dbg !2838
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !2835, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8* %data, metadata !2836, metadata !DIExpression()), !dbg !2837
  %tobool = icmp eq %struct.rtx_def* %0, null, !dbg !2839
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2841

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 0, !dbg !2842
  %bf.load = load i32, i32* %1, align 8, !dbg !2842
  %trunc = trunc i32 %bf.load to i16, !dbg !2843
  switch i16 %trunc, label %cleanup [
    i16 43, label %sw.bb
    i16 37, label %sw.bb13
  ], !dbg !2843

sw.bb:                                            ; preds = %if.end
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2844
  %call = tail call i32 @reg_mentioned_p(%struct.rtx_def* %2, %struct.rtx_def* nonnull %0) #6, !dbg !2847
  %tobool1 = icmp eq i32 %call, 0, !dbg !2847
  br i1 %tobool1, label %cleanup, label %if.end3, !dbg !2848

if.end3:                                          ; preds = %sw.bb
  %call4 = tail call fastcc i32 @stack_memref_p(%struct.rtx_def* nonnull %0) #7, !dbg !2849
  %tobool5 = icmp eq i32 %call4, 0, !dbg !2849
  %insn = bitcast i8* %data to %struct.rtx_def**, !dbg !2851
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !2851
  br i1 %tobool5, label %if.end9, label %if.then6, !dbg !2852

if.then6:                                         ; preds = %if.end3
  %reflist = getelementptr inbounds i8, i8* %data, i64 8, !dbg !2853
  %4 = bitcast i8* %reflist to %struct.csa_reflist**, !dbg !2853
  %5 = load %struct.csa_reflist*, %struct.csa_reflist** %4, align 8, !dbg !2853
  %call7 = tail call fastcc %struct.csa_reflist* @record_one_stack_ref(%struct.rtx_def* %3, %struct.rtx_def** %xp, %struct.csa_reflist* %5) #7, !dbg !2855
  store %struct.csa_reflist* %call7, %struct.csa_reflist** %4, align 8, !dbg !2856
  br label %cleanup, !dbg !2857

if.end9:                                          ; preds = %if.end3
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 0, !dbg !2858
  %bf.load11 = load i32, i32* %6, align 8, !dbg !2858
  %bf.clear12 = and i32 %bf.load11, 65535, !dbg !2858
  %cmp = icmp ne i32 %bf.clear12, 7, !dbg !2858
  %lnot.ext = zext i1 %cmp to i32, !dbg !2859
  br label %cleanup, !dbg !2860

sw.bb13:                                          ; preds = %if.end
  %call14 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* nonnull %0) #7, !dbg !2861
  %cmp15 = icmp eq i32 %call14, 7, !dbg !2863
  br i1 %cmp15, label %if.then16, label %cleanup, !dbg !2864

if.then16:                                        ; preds = %sw.bb13
  %7 = bitcast i8* %data to i32**, !dbg !2865
  %8 = load i32*, i32** %7, align 8, !dbg !2865
  %bf.load18 = load i32, i32* %8, align 8, !dbg !2865
  %bf.clear19 = and i32 %bf.load18, 65535, !dbg !2865
  %cmp20 = icmp eq i32 %bf.clear19, 7, !dbg !2865
  br i1 %cmp20, label %if.end22, label %cleanup, !dbg !2868

if.end22:                                         ; preds = %if.then16
  %9 = bitcast i32* %8 to %struct.rtx_def*, !dbg !2868
  %reflist24 = getelementptr inbounds i8, i8* %data, i64 8, !dbg !2869
  %10 = bitcast i8* %reflist24 to %struct.csa_reflist**, !dbg !2869
  %11 = load %struct.csa_reflist*, %struct.csa_reflist** %10, align 8, !dbg !2869
  %call25 = tail call fastcc %struct.csa_reflist* @record_one_stack_ref(%struct.rtx_def* %9, %struct.rtx_def** %xp, %struct.csa_reflist* %11) #7, !dbg !2870
  store %struct.csa_reflist* %call25, %struct.csa_reflist** %10, align 8, !dbg !2871
  br label %cleanup, !dbg !2872

cleanup:                                          ; preds = %sw.bb, %entry, %sw.bb13, %if.end, %if.then16, %if.end22, %if.end9, %if.then6
  %retval.0 = phi i32 [ -1, %if.end22 ], [ -1, %if.then6 ], [ %lnot.ext, %if.end9 ], [ 0, %entry ], [ -1, %sw.bb ], [ 1, %if.then16 ], [ 0, %if.end ], [ 0, %sw.bb13 ], !dbg !2837
  ret i32 %retval.0, !dbg !2873
}

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @replace_equiv_address(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @plus_constant(%struct.rtx_def*, i64) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @lowpart_subreg(i32, %struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local i32 @apply_change_group() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_fmt_E_stat(i32, i32, %struct.rtvec_def*) local_unnamed_addr #1

declare dso_local %struct.rtvec_def* @rtvec_alloc(i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @copy_rtx(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @add_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @stack_memref_p(%struct.rtx_def* %x) unnamed_addr #4 !dbg !2874 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2878, metadata !DIExpression()), !dbg !2879
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !2880
  %bf.load = load i32, i32* %0, align 8, !dbg !2880
  %bf.clear = and i32 %bf.load, 65535, !dbg !2880
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !2880
  br i1 %cmp, label %if.end, label %return, !dbg !2882

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2883
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**, !dbg !2883
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2883
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !2878, metadata !DIExpression()), !dbg !2879
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2884
  %cmp1 = icmp eq %struct.rtx_def* %1, %2, !dbg !2886
  br i1 %cmp1, label %return, label %if.end3, !dbg !2887

if.end3:                                          ; preds = %if.end
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !2888
  %bf.load4 = load i32, i32* %3, align 8, !dbg !2888
  %bf.clear5 = and i32 %bf.load4, 65535, !dbg !2888
  %cmp6 = icmp eq i32 %bf.clear5, 49, !dbg !2890
  br i1 %cmp6, label %land.lhs.true, label %if.end21, !dbg !2891

land.lhs.true:                                    ; preds = %if.end3
  %arrayidx9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2892
  %rt_rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**, !dbg !2892
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx10, align 8, !dbg !2892
  %cmp11 = icmp eq %struct.rtx_def* %4, %2, !dbg !2893
  br i1 %cmp11, label %land.lhs.true12, label %if.end21, !dbg !2894

land.lhs.true12:                                  ; preds = %land.lhs.true
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2895
  %6 = bitcast %union.rtunion_def* %5 to i32**, !dbg !2895
  %7 = load i32*, i32** %6, align 8, !dbg !2895
  %bf.load17 = load i32, i32* %7, align 8, !dbg !2895
  %bf.clear18 = and i32 %bf.load17, 65535, !dbg !2895
  %cmp19 = icmp eq i32 %bf.clear18, 30, !dbg !2895
  br i1 %cmp19, label %return, label %if.end21, !dbg !2896

if.end21:                                         ; preds = %land.lhs.true12, %land.lhs.true, %if.end3
  br label %return, !dbg !2897

return:                                           ; preds = %land.lhs.true12, %if.end, %entry, %if.end21
  %retval.0 = phi i32 [ 0, %if.end21 ], [ 0, %entry ], [ 1, %if.end ], [ 1, %land.lhs.true12 ], !dbg !2879
  ret i32 %retval.0, !dbg !2898
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.csa_reflist* @record_one_stack_ref(%struct.rtx_def* %insn, %struct.rtx_def** %ref, %struct.csa_reflist* %next_reflist) unnamed_addr #4 !dbg !2899 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2903, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata %struct.rtx_def** %ref, metadata !2904, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %next_reflist, metadata !2905, metadata !DIExpression()), !dbg !2907
  %call = tail call i8* @xmalloc(i64 32) #6, !dbg !2908
  %0 = bitcast i8* %call to %struct.csa_reflist*, !dbg !2908
  call void @llvm.dbg.value(metadata %struct.csa_reflist* %0, metadata !2906, metadata !DIExpression()), !dbg !2907
  %1 = bitcast %struct.rtx_def** %ref to i32**, !dbg !2909
  %2 = load i32*, i32** %1, align 8, !dbg !2909
  %bf.load = load i32, i32* %2, align 8, !dbg !2909
  %bf.clear = and i32 %bf.load, 65535, !dbg !2909
  %cmp = icmp eq i32 %bf.clear, 37, !dbg !2909
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2911

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 2, !dbg !2912
  %rt_rtx = bitcast i32* %arrayidx to %struct.rtx_def**, !dbg !2912
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2912
  %4 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i64 0, i64 2), align 16, !dbg !2913
  %cmp1 = icmp eq %struct.rtx_def* %3, %4, !dbg !2914
  br i1 %cmp1, label %if.then, label %if.else, !dbg !2915

if.then:                                          ; preds = %lor.lhs.false, %entry
  %sp_offset = bitcast i8* %call to i64*, !dbg !2916
  store i64 0, i64* %sp_offset, align 8, !dbg !2917
  br label %if.end, !dbg !2918

if.else:                                          ; preds = %lor.lhs.false
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !2919
  %rt_rtx9 = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !2919
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx9, align 8, !dbg !2919
  %u10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, !dbg !2919
  %arrayidx11 = bitcast %union.u* %u10 to i64*, !dbg !2919
  %7 = load i64, i64* %arrayidx11, align 8, !dbg !2919
  %sp_offset12 = bitcast i8* %call to i64*, !dbg !2920
  store i64 %7, i64* %sp_offset12, align 8, !dbg !2921
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %insn13 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2922
  %8 = bitcast i8* %insn13 to %struct.rtx_def**, !dbg !2922
  store %struct.rtx_def* %insn, %struct.rtx_def** %8, align 8, !dbg !2923
  %ref14 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2924
  %9 = bitcast i8* %ref14 to %struct.rtx_def***, !dbg !2924
  store %struct.rtx_def** %ref, %struct.rtx_def*** %9, align 8, !dbg !2925
  %next = getelementptr inbounds i8, i8* %call, i64 24, !dbg !2926
  %10 = bitcast i8* %next to %struct.csa_reflist**, !dbg !2926
  store %struct.csa_reflist* %next_reflist, %struct.csa_reflist** %10, align 8, !dbg !2927
  ret %struct.csa_reflist* %0, !dbg !2928
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !2929 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !2936, metadata !DIExpression()), !dbg !2937
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2938
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2938
  %0 = load i32, i32* %rt_uint, align 8, !dbg !2938
  ret i32 %0, !dbg !2939
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1929, !1930, !1931}
!llvm.ident = !{!1932}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_stack_adjustments", scope: !2, file: !3, line: 572, type: !1903, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !710, globals: !1902, nameTableKind: None)
!3 = !DIFile(filename: "combine-stack-adj.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !324, !330, !335, !340, !359, !366, !373, !567}
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
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !318, line: 30, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322, !323}
!320 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!323 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!324 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !325, line: 363, baseType: !7, size: 32, elements: !326)
!325 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!326 = !{!327, !328, !329}
!327 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!328 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!329 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !325, line: 355, baseType: !7, size: 32, elements: !331)
!331 = !{!332, !333, !334}
!332 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !336, line: 474, baseType: !7, size: 32, elements: !337)
!336 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!337 = !{!338, !339}
!338 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!339 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !341, line: 280, baseType: !7, size: 32, elements: !342)
!341 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!343 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !341, line: 1817, baseType: !7, size: 32, elements: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !341, line: 1805, baseType: !7, size: 32, elements: !367)
!367 = !{!368, !369, !370, !371, !372}
!368 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!372 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!373 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !341, line: 39, baseType: !7, size: 32, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!375 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!376 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!377 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!378 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!379 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!380 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!381 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!382 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!383 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!384 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!385 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!386 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!387 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!388 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!389 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!390 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!391 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!392 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!393 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!394 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!395 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!396 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!397 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!398 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!399 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!400 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!401 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!402 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!403 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!404 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!405 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!406 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!407 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!408 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!409 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!410 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!411 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!412 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!413 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!414 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!415 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!416 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!417 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!418 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!419 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!420 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!421 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!422 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!423 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!424 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!425 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!426 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!427 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!428 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!429 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!430 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!431 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!432 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!433 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!434 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!435 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!436 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!437 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!438 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!439 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!440 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!441 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!442 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!443 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!444 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!445 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!446 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!447 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!448 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!449 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!450 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!451 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!452 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!453 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!454 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!455 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!456 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!457 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!458 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!459 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!460 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!461 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!462 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!463 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!464 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!465 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!466 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!467 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!468 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!469 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!470 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!471 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!472 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!473 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!474 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!475 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!476 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!477 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!478 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!479 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!480 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!481 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!482 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!483 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!484 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!485 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!486 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!487 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!488 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!489 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!490 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!491 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!492 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!493 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!494 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!495 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!496 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!497 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!498 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!499 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!500 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!501 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!502 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!503 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!504 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!505 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!506 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!507 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!508 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!509 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!510 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!511 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!512 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!513 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!514 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!515 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!516 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!517 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!518 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!519 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!520 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!521 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!522 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!523 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!524 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!525 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!526 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!527 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!528 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!529 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!530 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!531 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!532 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!533 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!534 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!535 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!536 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!537 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!538 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!539 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!540 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!541 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!542 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!543 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!544 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!545 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!546 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!547 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!548 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!549 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!550 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!551 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!552 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!553 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!554 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!555 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!556 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!557 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!558 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!559 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!560 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!561 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!562 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!563 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!564 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!565 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!566 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !568, line: 45, baseType: !7, size: 32, elements: !569)
!568 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!570 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!571 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!572 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!573 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!574 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!575 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!576 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!577 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!578 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!579 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!580 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!581 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!582 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!583 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!584 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!585 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!586 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!587 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!588 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!589 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!590 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!591 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!592 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!593 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!594 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!595 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!596 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!597 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!598 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!599 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!600 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!601 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!602 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!603 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!604 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!605 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!606 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!607 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!608 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!609 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!610 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!611 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!612 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!613 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!614 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!615 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!616 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!617 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!618 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!619 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!620 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!621 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!622 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!623 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!624 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!625 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!626 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!627 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!628 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!629 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!630 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!631 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!632 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!633 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!634 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!635 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!636 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!637 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!638 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!639 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!640 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!641 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!642 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!643 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!644 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!645 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!646 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!647 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!648 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!649 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!650 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!651 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!652 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!653 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!654 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!655 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!656 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!657 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!658 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!659 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!660 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!661 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!662 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!663 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!664 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!665 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!666 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!667 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!668 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!669 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!670 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!671 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!672 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!673 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!674 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!675 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!676 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!677 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!678 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!679 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!680 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!681 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!682 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!683 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!684 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!685 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!686 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!687 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!688 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!689 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!690 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!691 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!692 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!693 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!694 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!695 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!696 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!697 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!698 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!699 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!700 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!701 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!702 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!703 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!704 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!705 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!706 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!707 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!708 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!709 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!710 = !{!711, !712, !713, !714, !717, !718, !720, !567, !807, !1888, !189, !1889, !1894}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!713 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !721, line: 50, baseType: !722)
!721 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !568, line: 240, size: 384, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !723, file: !568, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !723, file: !568, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !723, file: !568, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !723, file: !568, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !723, file: !568, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !723, file: !568, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !723, file: !568, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !723, file: !568, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !723, file: !568, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !723, file: !568, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !723, file: !568, line: 321, baseType: !736, size: 320, offset: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !568, line: 315, size: 320, elements: !737)
!737 = !{!738, !1823, !1825, !1886, !1887}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !736, file: !568, line: 316, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 64, elements: !755)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !568, line: 183, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !568, line: 166, size: 64, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !757, !758, !770, !773, !835, !1801, !1802, !1813, !1820}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !741, file: !568, line: 168, baseType: !713, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !741, file: !568, line: 169, baseType: !7, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !741, file: !568, line: 170, baseType: !718, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !741, file: !568, line: 171, baseType: !720, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !741, file: !568, line: 172, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !721, line: 53, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !568, line: 359, size: 128, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !750, file: !568, line: 360, baseType: !713, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !750, file: !568, line: 361, baseType: !754, size: 64, offset: 64)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 64, elements: !755)
!755 = !{!756}
!756 = !DISubrange(count: 1)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !741, file: !568, line: 173, baseType: !189, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !741, file: !568, line: 174, baseType: !759, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !568, line: 133, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 115, size: 32, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !760, file: !568, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !760, file: !568, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !760, file: !568, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !760, file: !568, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !760, file: !568, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !760, file: !568, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !760, file: !568, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !760, file: !568, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !741, file: !568, line: 175, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !568, line: 175, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !741, file: !568, line: 176, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !776, line: 75, size: 256, elements: !777)
!776 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!777 = !{!778, !793, !794, !795}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !775, file: !776, line: 76, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !776, line: 68, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !776, line: 63, size: 320, elements: !782)
!782 = !{!783, !785, !786, !787}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !776, line: 64, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !781, file: !776, line: 65, baseType: !784, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !781, file: !776, line: 66, baseType: !7, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !781, file: !776, line: 67, baseType: !788, size: 128, offset: 192)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 128, elements: !791)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !776, line: 29, baseType: !790)
!790 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!791 = !{!792}
!792 = !DISubrange(count: 2)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !775, file: !776, line: 77, baseType: !779, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !775, file: !776, line: 78, baseType: !7, size: 32, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !775, file: !776, line: 79, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !776, line: 49, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !776, line: 45, size: 832, elements: !799)
!799 = !{!800, !801, !802}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !798, file: !776, line: 46, baseType: !784, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !798, file: !776, line: 47, baseType: !774, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !798, file: !776, line: 48, baseType: !803, size: 704, offset: 128)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !804, line: 164, size: 704, elements: !805)
!804 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!805 = !{!806, !808, !818, !819, !820, !821, !822, !823, !827, !831, !832, !833, !834}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !803, file: !804, line: 166, baseType: !807, size: 64)
!807 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !803, file: !804, line: 167, baseType: !809, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !804, line: 157, size: 192, elements: !811)
!811 = !{!812, !813, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !810, file: !804, line: 159, baseType: !715, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !810, file: !804, line: 160, baseType: !809, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !810, file: !804, line: 161, baseType: !815, size: 32, offset: 128)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 32, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 4)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !803, file: !804, line: 168, baseType: !715, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !803, file: !804, line: 169, baseType: !715, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !803, file: !804, line: 170, baseType: !715, size: 64, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !803, file: !804, line: 171, baseType: !807, size: 64, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !803, file: !804, line: 172, baseType: !713, size: 32, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !803, file: !804, line: 176, baseType: !824, size: 64, offset: 448)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!809, !717, !807}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !803, file: !804, line: 177, baseType: !828, size: 64, offset: 512)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !717, !809}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !803, file: !804, line: 178, baseType: !717, size: 64, offset: 576)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !803, file: !804, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !803, file: !804, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !803, file: !804, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !741, file: !568, line: 177, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !721, line: 56, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !341, line: 3371, size: 1792, elements: !839)
!839 = !{!840, !873, !879, !890, !909, !920, !925, !932, !938, !951, !963, !1001, !1006, !1034, !1042, !1043, !1048, !1057, !1063, !1068, !1072, !1076, !1437, !1486, !1492, !1498, !1505, !1531, !1545, !1562, !1574, !1596, !1611, !1783}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !838, file: !341, line: 3372, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !341, line: 360, size: 64, elements: !842)
!842 = !{!843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !841, file: !341, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !841, file: !341, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !841, file: !341, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !841, file: !341, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !841, file: !341, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !841, file: !341, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !841, file: !341, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !841, file: !341, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !841, file: !341, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !841, file: !341, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !841, file: !341, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !841, file: !341, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !841, file: !341, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !841, file: !341, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !841, file: !341, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !841, file: !341, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !841, file: !341, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !841, file: !341, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !841, file: !341, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !841, file: !341, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !841, file: !341, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !841, file: !341, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !841, file: !341, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !841, file: !341, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !841, file: !341, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !841, file: !341, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !841, file: !341, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !841, file: !341, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !841, file: !341, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !841, file: !341, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !838, file: !341, line: 3373, baseType: !874, size: 192)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !341, line: 402, size: 192, elements: !875)
!875 = !{!876, !877, !878}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !874, file: !341, line: 403, baseType: !841, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !874, file: !341, line: 404, baseType: !836, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !874, file: !341, line: 405, baseType: !836, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !838, file: !341, line: 3374, baseType: !880, size: 320)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !341, line: 1384, size: 320, elements: !881)
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !880, file: !341, line: 1385, baseType: !874, size: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !880, file: !341, line: 1386, baseType: !884, size: 128, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !885, line: 58, baseType: !886)
!885 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !885, line: 54, size: 128, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !886, file: !885, line: 56, baseType: !790, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !886, file: !885, line: 57, baseType: !807, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !838, file: !341, line: 3375, baseType: !891, size: 256)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !341, line: 1397, size: 256, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !891, file: !341, line: 1398, baseType: !874, size: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !891, file: !341, line: 1399, baseType: !895, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !897, line: 52, size: 256, elements: !898)
!897 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!898 = !{!899, !900, !901, !902, !903, !904, !905}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !896, file: !897, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !896, file: !897, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !896, file: !897, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !896, file: !897, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !896, file: !897, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !896, file: !897, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !896, file: !897, line: 62, baseType: !906, size: 192, offset: 64)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !790, size: 192, elements: !907)
!907 = !{!908}
!908 = !DISubrange(count: 3)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !838, file: !341, line: 3376, baseType: !910, size: 256)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !341, line: 1408, size: 256, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !910, file: !341, line: 1409, baseType: !874, size: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !910, file: !341, line: 1410, baseType: !914, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !916, line: 27, size: 192, elements: !917)
!916 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !915, file: !916, line: 29, baseType: !884, size: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !915, file: !916, line: 30, baseType: !189, size: 32, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !838, file: !341, line: 3377, baseType: !921, size: 256)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !341, line: 1437, size: 256, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !921, file: !341, line: 1438, baseType: !874, size: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !921, file: !341, line: 1439, baseType: !836, size: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !838, file: !341, line: 3378, baseType: !926, size: 256)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !341, line: 1418, size: 256, elements: !927)
!927 = !{!928, !929, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !926, file: !341, line: 1419, baseType: !874, size: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !926, file: !341, line: 1420, baseType: !713, size: 32, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !926, file: !341, line: 1421, baseType: !931, size: 8, offset: 224)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 8, elements: !755)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !838, file: !341, line: 3379, baseType: !933, size: 320)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !341, line: 1428, size: 320, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !933, file: !341, line: 1429, baseType: !874, size: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !933, file: !341, line: 1430, baseType: !836, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !933, file: !341, line: 1431, baseType: !836, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !838, file: !341, line: 3380, baseType: !939, size: 320)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !341, line: 1460, size: 320, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !939, file: !341, line: 1461, baseType: !874, size: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !939, file: !341, line: 1462, baseType: !943, size: 128, offset: 192)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !944, line: 31, size: 128, elements: !945)
!944 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!945 = !{!946, !949, !950}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !943, file: !944, line: 32, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !943, file: !944, line: 33, baseType: !7, size: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !943, file: !944, line: 34, baseType: !7, size: 32, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !838, file: !341, line: 3381, baseType: !952, size: 384)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !341, line: 2507, size: 384, elements: !953)
!953 = !{!954, !955, !960, !961, !962}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !952, file: !341, line: 2508, baseType: !874, size: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !952, file: !341, line: 2509, baseType: !956, size: 32, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !957, line: 58, baseType: !958)
!957 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !959, line: 44, baseType: !7)
!959 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!960 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !952, file: !341, line: 2510, baseType: !7, size: 32, offset: 224)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !952, file: !341, line: 2511, baseType: !836, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !952, file: !341, line: 2512, baseType: !836, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !838, file: !341, line: 3382, baseType: !964, size: 896)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !341, line: 2652, size: 896, elements: !965)
!965 = !{!966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !964, file: !341, line: 2653, baseType: !952, size: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !964, file: !341, line: 2654, baseType: !836, size: 64, offset: 384)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !964, file: !341, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !964, file: !341, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !964, file: !341, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !964, file: !341, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !964, file: !341, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !964, file: !341, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !964, file: !341, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !964, file: !341, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !964, file: !341, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !964, file: !341, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !964, file: !341, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !964, file: !341, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !964, file: !341, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !964, file: !341, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !964, file: !341, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !964, file: !341, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !964, file: !341, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !964, file: !341, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !964, file: !341, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !964, file: !341, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !964, file: !341, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !964, file: !341, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !964, file: !341, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !964, file: !341, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !964, file: !341, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !964, file: !341, line: 2703, baseType: !7, size: 32, offset: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !964, file: !341, line: 2705, baseType: !836, size: 64, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !964, file: !341, line: 2706, baseType: !836, size: 64, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !964, file: !341, line: 2707, baseType: !836, size: 64, offset: 704)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !964, file: !341, line: 2708, baseType: !836, size: 64, offset: 768)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !964, file: !341, line: 2711, baseType: !999, size: 64, offset: 832)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !341, line: 2711, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !838, file: !341, line: 3383, baseType: !1002, size: 960)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !341, line: 2756, size: 960, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1002, file: !341, line: 2757, baseType: !964, size: 896)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1002, file: !341, line: 2758, baseType: !720, size: 64, offset: 896)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !838, file: !341, line: 3384, baseType: !1007, size: 1472)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !341, line: 3114, size: 1472, elements: !1008)
!1008 = !{!1009, !1030, !1031, !1032, !1033}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1007, file: !341, line: 3115, baseType: !1010, size: 1216)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !341, line: 2984, size: 1216, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1010, file: !341, line: 2985, baseType: !1002, size: 960)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1010, file: !341, line: 2986, baseType: !836, size: 64, offset: 960)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1010, file: !341, line: 2987, baseType: !836, size: 64, offset: 1024)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1010, file: !341, line: 2988, baseType: !836, size: 64, offset: 1088)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1010, file: !341, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1010, file: !341, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1010, file: !341, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1010, file: !341, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1010, file: !341, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1010, file: !341, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1010, file: !341, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1010, file: !341, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1010, file: !341, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1010, file: !341, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1010, file: !341, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1010, file: !341, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1010, file: !341, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1010, file: !341, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1007, file: !341, line: 3117, baseType: !836, size: 64, offset: 1216)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1007, file: !341, line: 3119, baseType: !836, size: 64, offset: 1280)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1007, file: !341, line: 3121, baseType: !836, size: 64, offset: 1344)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1007, file: !341, line: 3123, baseType: !836, size: 64, offset: 1408)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !838, file: !341, line: 3385, baseType: !1035, size: 1088)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !341, line: 2874, size: 1088, elements: !1036)
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1035, file: !341, line: 2875, baseType: !1002, size: 960)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1035, file: !341, line: 2876, baseType: !720, size: 64, offset: 960)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1035, file: !341, line: 2877, baseType: !1040, size: 64, offset: 1024)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !341, line: 2856, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !838, file: !341, line: 3386, baseType: !1010, size: 1216)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !838, file: !341, line: 3387, baseType: !1044, size: 1280)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !341, line: 3093, size: 1280, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1044, file: !341, line: 3094, baseType: !1010, size: 1216)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1044, file: !341, line: 3095, baseType: !1040, size: 64, offset: 1216)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !838, file: !341, line: 3388, baseType: !1049, size: 1216)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !341, line: 2824, size: 1216, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1049, file: !341, line: 2825, baseType: !964, size: 896)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1049, file: !341, line: 2827, baseType: !836, size: 64, offset: 896)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1049, file: !341, line: 2828, baseType: !836, size: 64, offset: 960)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1049, file: !341, line: 2829, baseType: !836, size: 64, offset: 1024)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1049, file: !341, line: 2830, baseType: !836, size: 64, offset: 1088)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1049, file: !341, line: 2831, baseType: !836, size: 64, offset: 1152)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !838, file: !341, line: 3389, baseType: !1058, size: 1024)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !341, line: 2850, size: 1024, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1058, file: !341, line: 2851, baseType: !1002, size: 960)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1058, file: !341, line: 2852, baseType: !713, size: 32, offset: 960)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1058, file: !341, line: 2853, baseType: !713, size: 32, offset: 992)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !838, file: !341, line: 3390, baseType: !1064, size: 1024)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !341, line: 2857, size: 1024, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1064, file: !341, line: 2858, baseType: !1002, size: 960)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1064, file: !341, line: 2859, baseType: !1040, size: 64, offset: 960)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !838, file: !341, line: 3391, baseType: !1069, size: 960)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !341, line: 2862, size: 960, elements: !1070)
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1069, file: !341, line: 2863, baseType: !1002, size: 960)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !838, file: !341, line: 3392, baseType: !1073, size: 1472)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !341, line: 3304, size: 1472, elements: !1074)
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1073, file: !341, line: 3305, baseType: !1007, size: 1472)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !838, file: !341, line: 3393, baseType: !1077, size: 1792)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !341, line: 3248, size: 1792, elements: !1078)
!1078 = !{!1079, !1080, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1077, file: !341, line: 3249, baseType: !1007, size: 1472)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1077, file: !341, line: 3251, baseType: !1081, size: 64, offset: 1472)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1083, line: 463, size: 1152, elements: !1084)
!1083 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1084 = !{!1085, !1249, !1353, !1354, !1357, !1360, !1361, !1362, !1363, !1364, !1365, !1389, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1082, file: !1083, line: 464, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !318, line: 194, size: 384, elements: !1088)
!1088 = !{!1089, !1138, !1151, !1165, !1217, !1230}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1087, file: !318, line: 197, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !318, line: 182, baseType: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !318, line: 116, size: 704, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1126, !1135, !1136, !1137}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1092, file: !318, line: 119, baseType: !1091, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1092, file: !318, line: 122, baseType: !1091, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1092, file: !318, line: 123, baseType: !1091, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1092, file: !318, line: 126, baseType: !713, size: 32, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1092, file: !318, line: 129, baseType: !317, size: 32, offset: 224)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1092, file: !318, line: 165, baseType: !1100, size: 192, offset: 256)
!1100 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !318, line: 132, size: 192, elements: !1101)
!1101 = !{!1102, !1115, !1121}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1100, file: !318, line: 137, baseType: !1103, size: 128)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !318, line: 133, size: 128, elements: !1104)
!1104 = !{!1105, !1114}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1103, file: !318, line: 135, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !318, line: 93, size: 320, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1112, !1113}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1107, file: !318, line: 96, baseType: !1106, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1107, file: !318, line: 97, baseType: !1106, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1107, file: !318, line: 101, baseType: !836, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1107, file: !318, line: 106, baseType: !836, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1107, file: !318, line: 111, baseType: !836, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1103, file: !318, line: 136, baseType: !1106, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1100, file: !318, line: 151, baseType: !1116, size: 192)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !318, line: 139, size: 192, elements: !1117)
!1117 = !{!1118, !1119, !1120}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1116, file: !318, line: 141, baseType: !836, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1116, file: !318, line: 145, baseType: !836, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1116, file: !318, line: 150, baseType: !713, size: 32, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1100, file: !318, line: 164, baseType: !1122, size: 128)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !318, line: 153, size: 128, elements: !1123)
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1122, file: !318, line: 161, baseType: !836, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1122, file: !318, line: 163, baseType: !956, size: 32, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1092, file: !318, line: 168, baseType: !1127, size: 64, offset: 448)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !318, line: 67, size: 320, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133, !1134}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1128, file: !318, line: 70, baseType: !1127, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1128, file: !318, line: 73, baseType: !1091, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1128, file: !318, line: 78, baseType: !836, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1128, file: !318, line: 85, baseType: !720, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1128, file: !318, line: 88, baseType: !713, size: 32, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1092, file: !318, line: 173, baseType: !720, size: 64, offset: 512)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1092, file: !318, line: 173, baseType: !720, size: 64, offset: 576)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1092, file: !318, line: 177, baseType: !712, size: 8, offset: 640)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1087, file: !318, line: 200, baseType: !1139, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !318, line: 185, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !318, line: 185, size: 128, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1141, file: !318, line: 185, baseType: !1144, size: 128)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !318, line: 184, baseType: !1145)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !318, line: 184, size: 128, elements: !1146)
!1146 = !{!1147, !1148, !1149}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1145, file: !318, line: 184, baseType: !7, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1145, file: !318, line: 184, baseType: !7, size: 32, offset: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1145, file: !318, line: 184, baseType: !1150, size: 64, offset: 64)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1090, size: 64, elements: !755)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1087, file: !318, line: 203, baseType: !1152, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, baseType: !1154)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, size: 128, elements: !1155)
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1154, file: !318, line: 189, baseType: !1157, size: 128)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !318, line: 188, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !318, line: 188, size: 128, elements: !1159)
!1159 = !{!1160, !1161, !1162}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1158, file: !318, line: 188, baseType: !7, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1158, file: !318, line: 188, baseType: !7, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1158, file: !318, line: 188, baseType: !1163, size: 64, offset: 64)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1164, size: 64, elements: !755)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !318, line: 180, baseType: !1127)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1087, file: !318, line: 207, baseType: !1166, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1167, line: 144, baseType: !1168)
!1167 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1167, line: 100, size: 896, elements: !1170)
!1170 = !{!1171, !1179, !1184, !1189, !1191, !1194, !1195, !1196, !1197, !1198, !1203, !1205, !1206, !1211, !1216}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1169, file: !1167, line: 102, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1167, line: 52, baseType: !1173)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1167, line: 47, baseType: !7)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1169, file: !1167, line: 105, baseType: !1180, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1167, line: 59, baseType: !1181)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!713, !1177, !1177}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1169, file: !1167, line: 108, baseType: !1185, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1167, line: 63, baseType: !1186)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !717}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1169, file: !1167, line: 111, baseType: !1190, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1169, file: !1167, line: 114, baseType: !1192, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1193, line: 46, baseType: !790)
!1193 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1169, file: !1167, line: 117, baseType: !1192, size: 64, offset: 320)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1169, file: !1167, line: 120, baseType: !1192, size: 64, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1169, file: !1167, line: 124, baseType: !7, size: 32, offset: 448)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1169, file: !1167, line: 128, baseType: !7, size: 32, offset: 480)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1169, file: !1167, line: 131, baseType: !1199, size: 64, offset: 512)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1167, line: 75, baseType: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!717, !1192, !1192}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1169, file: !1167, line: 132, baseType: !1204, size: 64, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1167, line: 78, baseType: !1186)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1169, file: !1167, line: 135, baseType: !717, size: 64, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1169, file: !1167, line: 136, baseType: !1207, size: 64, offset: 704)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1167, line: 82, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!717, !717, !1192, !1192}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1169, file: !1167, line: 137, baseType: !1212, size: 64, offset: 768)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1167, line: 83, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !717, !717}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1169, file: !1167, line: 141, baseType: !7, size: 32, offset: 832)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1087, file: !318, line: 211, baseType: !1218, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !341, line: 183, baseType: !1220)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !341, line: 183, size: 128, elements: !1221)
!1221 = !{!1222}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1220, file: !341, line: 183, baseType: !1223, size: 128)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !341, line: 182, baseType: !1224)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !341, line: 182, size: 128, elements: !1225)
!1225 = !{!1226, !1227, !1228}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1224, file: !341, line: 182, baseType: !7, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1224, file: !341, line: 182, baseType: !7, size: 32, offset: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1224, file: !341, line: 182, baseType: !1229, size: 64, offset: 64)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 64, elements: !755)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1087, file: !318, line: 220, baseType: !1231, size: 64, offset: 320)
!1231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !318, line: 217, size: 64, elements: !1232)
!1232 = !{!1233, !1234}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1231, file: !318, line: 218, baseType: !1218, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1231, file: !318, line: 219, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1237, line: 29, baseType: !1238)
!1237 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1237, line: 29, size: 96, elements: !1239)
!1239 = !{!1240}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1238, file: !1237, line: 29, baseType: !1241, size: 96)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1237, line: 27, baseType: !1242)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1237, line: 27, size: 96, elements: !1243)
!1243 = !{!1244, !1245, !1246}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1242, file: !1237, line: 27, baseType: !7, size: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1242, file: !1237, line: 27, baseType: !7, size: 32, offset: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1242, file: !1237, line: 27, baseType: !1247, size: 8, offset: 64)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1248, size: 8, elements: !755)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1237, line: 26, baseType: !712)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1082, file: !1083, line: 467, baseType: !1250, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !325, line: 374, size: 640, elements: !1252)
!1252 = !{!1253, !1328, !1329, !1342, !1343, !1344, !1345, !1346, !1347, !1349, !1351, !1352}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1251, file: !325, line: 377, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !721, line: 111, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !325, line: 217, size: 832, elements: !1257)
!1257 = !{!1258, !1293, !1294, !1295, !1298, !1302, !1303, !1304, !1322, !1323, !1324, !1325, !1326, !1327}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !1256, file: !325, line: 219, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !325, line: 151, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !325, line: 151, size: 128, elements: !1262)
!1262 = !{!1263}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1261, file: !325, line: 151, baseType: !1264, size: 128)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !325, line: 150, baseType: !1265)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !325, line: 150, size: 128, elements: !1266)
!1266 = !{!1267, !1268, !1269}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1265, file: !325, line: 150, baseType: !7, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1265, file: !325, line: 150, baseType: !7, size: 32, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1265, file: !325, line: 150, baseType: !1270, size: 64, offset: 64)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 64, elements: !755)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !721, line: 108, baseType: !1272)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !325, line: 122, size: 512, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1285, !1286, !1287, !1288, !1289, !1290, !1291}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1273, file: !325, line: 124, baseType: !1255, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1273, file: !325, line: 125, baseType: !1255, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !1273, file: !325, line: 131, baseType: !1278, size: 64, offset: 128)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !325, line: 128, size: 64, elements: !1279)
!1279 = !{!1280, !1284}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1278, file: !325, line: 129, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !721, line: 66, baseType: !1282)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !721, line: 65, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1278, file: !325, line: 130, baseType: !720, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1273, file: !325, line: 134, baseType: !717, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !1273, file: !325, line: 137, baseType: !836, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !1273, file: !325, line: 138, baseType: !956, size: 32, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !1273, file: !325, line: 142, baseType: !7, size: 32, offset: 352)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1273, file: !325, line: 144, baseType: !713, size: 32, offset: 384)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !1273, file: !325, line: 145, baseType: !713, size: 32, offset: 416)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1273, file: !325, line: 146, baseType: !1292, size: 64, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !325, line: 119, baseType: !807)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !1256, file: !325, line: 220, baseType: !1259, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1256, file: !325, line: 223, baseType: !717, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !1256, file: !325, line: 226, baseType: !1296, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !325, line: 185, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !1256, file: !325, line: 229, baseType: !1299, size: 128, offset: 256)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1300, size: 128, elements: !791)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !325, line: 229, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !1256, file: !325, line: 232, baseType: !1255, size: 64, offset: 384)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !1256, file: !325, line: 233, baseType: !1255, size: 64, offset: 448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !1256, file: !325, line: 238, baseType: !1305, size: 64, offset: 512)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !325, line: 235, size: 64, elements: !1306)
!1306 = !{!1307, !1313}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1305, file: !325, line: 236, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !325, line: 273, size: 128, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1309, file: !325, line: 275, baseType: !1281, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1309, file: !325, line: 278, baseType: !1281, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1305, file: !325, line: 237, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !325, line: 259, size: 320, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1321}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1315, file: !325, line: 261, baseType: !720, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1315, file: !325, line: 262, baseType: !720, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1315, file: !325, line: 266, baseType: !720, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1315, file: !325, line: 267, baseType: !720, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1315, file: !325, line: 270, baseType: !713, size: 32, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1256, file: !325, line: 241, baseType: !1292, size: 64, offset: 576)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1256, file: !325, line: 244, baseType: !713, size: 32, offset: 640)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !1256, file: !325, line: 247, baseType: !713, size: 32, offset: 672)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !1256, file: !325, line: 250, baseType: !713, size: 32, offset: 704)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !1256, file: !325, line: 253, baseType: !713, size: 32, offset: 736)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1256, file: !325, line: 256, baseType: !713, size: 32, offset: 768)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1251, file: !325, line: 378, baseType: !1254, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1251, file: !325, line: 381, baseType: !1330, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !325, line: 282, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !325, line: 282, size: 128, elements: !1333)
!1333 = !{!1334}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1332, file: !325, line: 282, baseType: !1335, size: 128)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !325, line: 281, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !325, line: 281, size: 128, elements: !1337)
!1337 = !{!1338, !1339, !1340}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1336, file: !325, line: 281, baseType: !7, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1336, file: !325, line: 281, baseType: !7, size: 32, offset: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1336, file: !325, line: 281, baseType: !1341, size: 64, offset: 64)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1254, size: 64, elements: !755)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1251, file: !325, line: 384, baseType: !713, size: 32, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1251, file: !325, line: 387, baseType: !713, size: 32, offset: 224)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1251, file: !325, line: 390, baseType: !713, size: 32, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1251, file: !325, line: 394, baseType: !1330, size: 64, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1251, file: !325, line: 396, baseType: !324, size: 32, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1251, file: !325, line: 399, baseType: !1348, size: 64, offset: 416)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !791)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1251, file: !325, line: 402, baseType: !1350, size: 64, offset: 480)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !791)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1251, file: !325, line: 406, baseType: !713, size: 32, offset: 544)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1251, file: !325, line: 409, baseType: !713, size: 32, offset: 576)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1082, file: !1083, line: 470, baseType: !1282, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1082, file: !1083, line: 473, baseType: !1355, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1083, line: 166, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1082, file: !1083, line: 476, baseType: !1358, size: 64, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1083, line: 476, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1082, file: !1083, line: 479, baseType: !1166, size: 64, offset: 320)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1082, file: !1083, line: 484, baseType: !836, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1082, file: !1083, line: 488, baseType: !836, size: 64, offset: 448)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1082, file: !1083, line: 493, baseType: !836, size: 64, offset: 512)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1082, file: !1083, line: 496, baseType: !836, size: 64, offset: 576)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1082, file: !1083, line: 501, baseType: !1366, size: 64, offset: 640)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !336, line: 2355, size: 576, elements: !1368)
!1368 = !{!1369, !1372, !1373, !1374, !1375, !1377, !1378, !1383, !1384, !1385, !1386, !1387, !1388}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1367, file: !336, line: 2356, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !336, line: 2356, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1367, file: !336, line: 2357, baseType: !718, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1367, file: !336, line: 2358, baseType: !713, size: 32, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1367, file: !336, line: 2359, baseType: !713, size: 32, offset: 160)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1367, file: !336, line: 2360, baseType: !1376, size: 128, offset: 192)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 128, elements: !816)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1367, file: !336, line: 2364, baseType: !713, size: 32, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1367, file: !336, line: 2367, baseType: !1379, size: 128, offset: 384)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !336, line: 2349, size: 128, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1379, file: !336, line: 2351, baseType: !720, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1379, file: !336, line: 2352, baseType: !807, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1367, file: !336, line: 2371, baseType: !335, size: 32, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1367, file: !336, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1367, file: !336, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1367, file: !336, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1367, file: !336, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1367, file: !336, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1082, file: !1083, line: 504, baseType: !1390, size: 64, offset: 704)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1083, line: 504, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1082, file: !1083, line: 507, baseType: !1166, size: 64, offset: 768)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1082, file: !1083, line: 510, baseType: !713, size: 32, offset: 832)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1082, file: !1083, line: 513, baseType: !713, size: 32, offset: 864)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1082, file: !1083, line: 516, baseType: !956, size: 32, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1082, file: !1083, line: 519, baseType: !956, size: 32, offset: 928)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1082, file: !1083, line: 522, baseType: !7, size: 32, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1082, file: !1083, line: 523, baseType: !7, size: 32, offset: 992)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1082, file: !1083, line: 528, baseType: !718, size: 64, offset: 1024)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1082, file: !1083, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1082, file: !1083, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1082, file: !1083, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1082, file: !1083, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1082, file: !1083, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1082, file: !1083, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1082, file: !1083, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1082, file: !1083, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1082, file: !1083, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1082, file: !1083, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1082, file: !1083, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1082, file: !1083, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1082, file: !1083, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1082, file: !1083, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1082, file: !1083, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1082, file: !1083, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1077, file: !341, line: 3254, baseType: !836, size: 64, offset: 1536)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1077, file: !341, line: 3257, baseType: !836, size: 64, offset: 1600)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1077, file: !341, line: 3258, baseType: !836, size: 64, offset: 1664)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1077, file: !341, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1077, file: !341, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1077, file: !341, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1077, file: !341, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1077, file: !341, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1077, file: !341, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1077, file: !341, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1077, file: !341, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1077, file: !341, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1077, file: !341, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1077, file: !341, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1077, file: !341, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1077, file: !341, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1077, file: !341, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1077, file: !341, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1077, file: !341, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1077, file: !341, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1077, file: !341, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !838, file: !341, line: 3394, baseType: !1438, size: 1344)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !341, line: 2279, size: 1344, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1465, !1466, !1467, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1438, file: !341, line: 2280, baseType: !874, size: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1438, file: !341, line: 2281, baseType: !836, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1438, file: !341, line: 2282, baseType: !836, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1438, file: !341, line: 2283, baseType: !836, size: 64, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1438, file: !341, line: 2284, baseType: !836, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1438, file: !341, line: 2285, baseType: !7, size: 32, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1438, file: !341, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1438, file: !341, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1438, file: !341, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1438, file: !341, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1438, file: !341, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1438, file: !341, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1438, file: !341, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1438, file: !341, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1438, file: !341, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1438, file: !341, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1438, file: !341, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1438, file: !341, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1438, file: !341, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1438, file: !341, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1438, file: !341, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1438, file: !341, line: 2305, baseType: !7, size: 32, offset: 512)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1438, file: !341, line: 2306, baseType: !1463, size: 32, offset: 544)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1464, line: 31, baseType: !713)
!1464 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1438, file: !341, line: 2307, baseType: !836, size: 64, offset: 576)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1438, file: !341, line: 2308, baseType: !836, size: 64, offset: 640)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1438, file: !341, line: 2314, baseType: !1468, size: 64, offset: 704)
!1468 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !341, line: 2309, size: 64, elements: !1469)
!1469 = !{!1470, !1471, !1472}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1468, file: !341, line: 2310, baseType: !713, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1468, file: !341, line: 2311, baseType: !718, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1468, file: !341, line: 2312, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !341, line: 2277, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1438, file: !341, line: 2315, baseType: !836, size: 64, offset: 768)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1438, file: !341, line: 2316, baseType: !836, size: 64, offset: 832)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1438, file: !341, line: 2317, baseType: !836, size: 64, offset: 896)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1438, file: !341, line: 2318, baseType: !836, size: 64, offset: 960)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1438, file: !341, line: 2319, baseType: !836, size: 64, offset: 1024)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1438, file: !341, line: 2320, baseType: !836, size: 64, offset: 1088)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1438, file: !341, line: 2321, baseType: !836, size: 64, offset: 1152)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1438, file: !341, line: 2322, baseType: !836, size: 64, offset: 1216)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1438, file: !341, line: 2324, baseType: !1484, size: 64, offset: 1280)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !341, line: 2324, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !838, file: !341, line: 3395, baseType: !1487, size: 320)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !341, line: 1469, size: 320, elements: !1488)
!1488 = !{!1489, !1490, !1491}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1487, file: !341, line: 1470, baseType: !874, size: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1487, file: !341, line: 1471, baseType: !836, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1487, file: !341, line: 1472, baseType: !836, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !838, file: !341, line: 3396, baseType: !1493, size: 320)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !341, line: 1482, size: 320, elements: !1494)
!1494 = !{!1495, !1496, !1497}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1493, file: !341, line: 1483, baseType: !874, size: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1493, file: !341, line: 1484, baseType: !713, size: 32, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1493, file: !341, line: 1485, baseType: !1229, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !838, file: !341, line: 3397, baseType: !1499, size: 384)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !341, line: 1829, size: 384, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1499, file: !341, line: 1830, baseType: !874, size: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1499, file: !341, line: 1831, baseType: !956, size: 32, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1499, file: !341, line: 1832, baseType: !836, size: 64, offset: 256)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1499, file: !341, line: 1835, baseType: !1229, size: 64, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !838, file: !341, line: 3398, baseType: !1506, size: 704)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !341, line: 1898, size: 704, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1514, !1515, !1518}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1506, file: !341, line: 1899, baseType: !874, size: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1506, file: !341, line: 1902, baseType: !836, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1506, file: !341, line: 1905, baseType: !1511, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !721, line: 58, baseType: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !721, line: 57, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1506, file: !341, line: 1908, baseType: !7, size: 32, offset: 320)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1506, file: !341, line: 1911, baseType: !1516, size: 64, offset: 384)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !341, line: 1876, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1506, file: !341, line: 1914, baseType: !1519, size: 256, offset: 448)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !341, line: 1883, size: 256, elements: !1520)
!1520 = !{!1521, !1523, !1524, !1529}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1519, file: !341, line: 1884, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1519, file: !341, line: 1885, baseType: !1522, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1519, file: !341, line: 1891, baseType: !1525, size: 64, offset: 128)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1519, file: !341, line: 1891, size: 64, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1525, file: !341, line: 1891, baseType: !1511, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1525, file: !341, line: 1891, baseType: !836, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1519, file: !341, line: 1892, baseType: !1530, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !838, file: !341, line: 3399, baseType: !1532, size: 704)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !341, line: 2008, size: 704, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1532, file: !341, line: 2009, baseType: !874, size: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1532, file: !341, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1532, file: !341, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1532, file: !341, line: 2014, baseType: !956, size: 32, offset: 224)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1532, file: !341, line: 2016, baseType: !836, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1532, file: !341, line: 2017, baseType: !1218, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1532, file: !341, line: 2019, baseType: !836, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1532, file: !341, line: 2020, baseType: !836, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1532, file: !341, line: 2021, baseType: !836, size: 64, offset: 512)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1532, file: !341, line: 2022, baseType: !836, size: 64, offset: 576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1532, file: !341, line: 2023, baseType: !836, size: 64, offset: 640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !838, file: !341, line: 3400, baseType: !1546, size: 832)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !341, line: 2430, size: 832, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1546, file: !341, line: 2431, baseType: !874, size: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1546, file: !341, line: 2433, baseType: !836, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1546, file: !341, line: 2434, baseType: !836, size: 64, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1546, file: !341, line: 2435, baseType: !836, size: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1546, file: !341, line: 2436, baseType: !836, size: 64, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1546, file: !341, line: 2437, baseType: !1218, size: 64, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1546, file: !341, line: 2438, baseType: !836, size: 64, offset: 512)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1546, file: !341, line: 2440, baseType: !836, size: 64, offset: 576)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1546, file: !341, line: 2441, baseType: !836, size: 64, offset: 640)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1546, file: !341, line: 2443, baseType: !1558, size: 128, offset: 704)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !341, line: 182, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !341, line: 182, size: 128, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1559, file: !341, line: 182, baseType: !1223, size: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !838, file: !341, line: 3401, baseType: !1563, size: 320)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !341, line: 3327, size: 320, elements: !1564)
!1564 = !{!1565, !1566, !1573}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1563, file: !341, line: 3329, baseType: !874, size: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1563, file: !341, line: 3330, baseType: !1567, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !341, line: 3320, size: 192, elements: !1569)
!1569 = !{!1570, !1571, !1572}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1568, file: !341, line: 3322, baseType: !1567, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1568, file: !341, line: 3323, baseType: !1567, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1568, file: !341, line: 3324, baseType: !836, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1563, file: !341, line: 3331, baseType: !1567, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !838, file: !341, line: 3402, baseType: !1575, size: 256)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !341, line: 1540, size: 256, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1575, file: !341, line: 1541, baseType: !874, size: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1575, file: !341, line: 1542, baseType: !1579, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !341, line: 1538, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !341, line: 1538, size: 192, elements: !1582)
!1582 = !{!1583}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1581, file: !341, line: 1538, baseType: !1584, size: 192)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !341, line: 1537, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !341, line: 1537, size: 192, elements: !1586)
!1586 = !{!1587, !1588, !1589}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1585, file: !341, line: 1537, baseType: !7, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1585, file: !341, line: 1537, baseType: !7, size: 32, offset: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1585, file: !341, line: 1537, baseType: !1590, size: 128, offset: 64)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1591, size: 128, elements: !755)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !341, line: 1535, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !341, line: 1532, size: 128, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1592, file: !341, line: 1533, baseType: !836, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1592, file: !341, line: 1534, baseType: !836, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !838, file: !341, line: 3403, baseType: !1597, size: 512)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !341, line: 1938, size: 512, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1608, !1609, !1610}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1597, file: !341, line: 1939, baseType: !874, size: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1597, file: !341, line: 1940, baseType: !956, size: 32, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1597, file: !341, line: 1941, baseType: !340, size: 32, offset: 224)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1597, file: !341, line: 1946, baseType: !1603, size: 32, offset: 256)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !341, line: 1942, size: 32, elements: !1604)
!1604 = !{!1605, !1606, !1607}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1603, file: !341, line: 1943, baseType: !359, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1603, file: !341, line: 1944, baseType: !366, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1603, file: !341, line: 1945, baseType: !373, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1597, file: !341, line: 1950, baseType: !1281, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1597, file: !341, line: 1951, baseType: !1281, size: 64, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1597, file: !341, line: 1953, baseType: !1229, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !838, file: !341, line: 3404, baseType: !1612, size: 1664)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !341, line: 3337, size: 1664, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1612, file: !341, line: 3338, baseType: !874, size: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1612, file: !341, line: 3341, baseType: !1616, size: 1472, offset: 192)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1617, line: 410, size: 1472, elements: !1618)
!1617 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1618 = !{!1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1616, file: !1617, line: 412, baseType: !713, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1616, file: !1617, line: 413, baseType: !713, size: 32, offset: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1616, file: !1617, line: 414, baseType: !713, size: 32, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1616, file: !1617, line: 415, baseType: !713, size: 32, offset: 96)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1616, file: !1617, line: 416, baseType: !713, size: 32, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1616, file: !1617, line: 417, baseType: !713, size: 32, offset: 160)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1616, file: !1617, line: 418, baseType: !712, size: 8, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1616, file: !1617, line: 419, baseType: !712, size: 8, offset: 200)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1616, file: !1617, line: 420, baseType: !1628, size: 8, offset: 208)
!1628 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1616, file: !1617, line: 421, baseType: !1628, size: 8, offset: 216)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1616, file: !1617, line: 422, baseType: !1628, size: 8, offset: 224)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1616, file: !1617, line: 423, baseType: !1628, size: 8, offset: 232)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1616, file: !1617, line: 424, baseType: !1628, size: 8, offset: 240)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1616, file: !1617, line: 425, baseType: !1628, size: 8, offset: 248)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1616, file: !1617, line: 426, baseType: !1628, size: 8, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1616, file: !1617, line: 427, baseType: !1628, size: 8, offset: 264)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1616, file: !1617, line: 428, baseType: !1628, size: 8, offset: 272)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1616, file: !1617, line: 429, baseType: !1628, size: 8, offset: 280)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1616, file: !1617, line: 430, baseType: !1628, size: 8, offset: 288)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1616, file: !1617, line: 431, baseType: !1628, size: 8, offset: 296)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1616, file: !1617, line: 432, baseType: !1628, size: 8, offset: 304)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1616, file: !1617, line: 433, baseType: !1628, size: 8, offset: 312)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1616, file: !1617, line: 434, baseType: !1628, size: 8, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1616, file: !1617, line: 435, baseType: !1628, size: 8, offset: 328)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1616, file: !1617, line: 436, baseType: !1628, size: 8, offset: 336)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1616, file: !1617, line: 437, baseType: !1628, size: 8, offset: 344)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1616, file: !1617, line: 438, baseType: !1628, size: 8, offset: 352)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1616, file: !1617, line: 439, baseType: !1628, size: 8, offset: 360)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1616, file: !1617, line: 440, baseType: !1628, size: 8, offset: 368)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1616, file: !1617, line: 441, baseType: !1628, size: 8, offset: 376)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1616, file: !1617, line: 442, baseType: !1628, size: 8, offset: 384)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1616, file: !1617, line: 443, baseType: !1628, size: 8, offset: 392)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1616, file: !1617, line: 444, baseType: !1628, size: 8, offset: 400)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1616, file: !1617, line: 445, baseType: !1628, size: 8, offset: 408)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1616, file: !1617, line: 446, baseType: !1628, size: 8, offset: 416)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1616, file: !1617, line: 447, baseType: !1628, size: 8, offset: 424)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1616, file: !1617, line: 448, baseType: !1628, size: 8, offset: 432)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1616, file: !1617, line: 449, baseType: !1628, size: 8, offset: 440)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1616, file: !1617, line: 450, baseType: !1628, size: 8, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1616, file: !1617, line: 451, baseType: !1628, size: 8, offset: 456)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1616, file: !1617, line: 452, baseType: !1628, size: 8, offset: 464)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1616, file: !1617, line: 453, baseType: !1628, size: 8, offset: 472)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1616, file: !1617, line: 454, baseType: !1628, size: 8, offset: 480)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1616, file: !1617, line: 455, baseType: !1628, size: 8, offset: 488)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1616, file: !1617, line: 456, baseType: !1628, size: 8, offset: 496)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1616, file: !1617, line: 457, baseType: !1628, size: 8, offset: 504)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1616, file: !1617, line: 458, baseType: !1628, size: 8, offset: 512)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1616, file: !1617, line: 459, baseType: !1628, size: 8, offset: 520)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1616, file: !1617, line: 460, baseType: !1628, size: 8, offset: 528)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1616, file: !1617, line: 461, baseType: !1628, size: 8, offset: 536)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1616, file: !1617, line: 462, baseType: !1628, size: 8, offset: 544)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1616, file: !1617, line: 463, baseType: !1628, size: 8, offset: 552)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1616, file: !1617, line: 464, baseType: !1628, size: 8, offset: 560)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1616, file: !1617, line: 465, baseType: !1628, size: 8, offset: 568)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1616, file: !1617, line: 466, baseType: !1628, size: 8, offset: 576)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1616, file: !1617, line: 467, baseType: !1628, size: 8, offset: 584)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1616, file: !1617, line: 468, baseType: !1628, size: 8, offset: 592)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1616, file: !1617, line: 469, baseType: !1628, size: 8, offset: 600)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1616, file: !1617, line: 470, baseType: !1628, size: 8, offset: 608)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1616, file: !1617, line: 471, baseType: !1628, size: 8, offset: 616)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1616, file: !1617, line: 472, baseType: !1628, size: 8, offset: 624)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1616, file: !1617, line: 473, baseType: !1628, size: 8, offset: 632)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1616, file: !1617, line: 474, baseType: !1628, size: 8, offset: 640)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1616, file: !1617, line: 475, baseType: !1628, size: 8, offset: 648)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1616, file: !1617, line: 476, baseType: !1628, size: 8, offset: 656)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1616, file: !1617, line: 477, baseType: !1628, size: 8, offset: 664)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1616, file: !1617, line: 478, baseType: !1628, size: 8, offset: 672)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1616, file: !1617, line: 479, baseType: !1628, size: 8, offset: 680)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1616, file: !1617, line: 480, baseType: !1628, size: 8, offset: 688)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1616, file: !1617, line: 481, baseType: !1628, size: 8, offset: 696)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1616, file: !1617, line: 482, baseType: !1628, size: 8, offset: 704)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1616, file: !1617, line: 483, baseType: !1628, size: 8, offset: 712)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1616, file: !1617, line: 484, baseType: !1628, size: 8, offset: 720)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1616, file: !1617, line: 485, baseType: !1628, size: 8, offset: 728)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1616, file: !1617, line: 486, baseType: !1628, size: 8, offset: 736)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1616, file: !1617, line: 487, baseType: !1628, size: 8, offset: 744)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1616, file: !1617, line: 488, baseType: !1628, size: 8, offset: 752)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1616, file: !1617, line: 489, baseType: !1628, size: 8, offset: 760)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1616, file: !1617, line: 490, baseType: !1628, size: 8, offset: 768)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1616, file: !1617, line: 491, baseType: !1628, size: 8, offset: 776)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1616, file: !1617, line: 492, baseType: !1628, size: 8, offset: 784)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1616, file: !1617, line: 493, baseType: !1628, size: 8, offset: 792)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1616, file: !1617, line: 494, baseType: !1628, size: 8, offset: 800)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1616, file: !1617, line: 495, baseType: !1628, size: 8, offset: 808)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1616, file: !1617, line: 496, baseType: !1628, size: 8, offset: 816)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1616, file: !1617, line: 497, baseType: !1628, size: 8, offset: 824)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1616, file: !1617, line: 498, baseType: !1628, size: 8, offset: 832)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1616, file: !1617, line: 499, baseType: !1628, size: 8, offset: 840)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1616, file: !1617, line: 500, baseType: !1628, size: 8, offset: 848)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1616, file: !1617, line: 501, baseType: !1628, size: 8, offset: 856)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1616, file: !1617, line: 502, baseType: !1628, size: 8, offset: 864)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1616, file: !1617, line: 503, baseType: !1628, size: 8, offset: 872)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1616, file: !1617, line: 504, baseType: !1628, size: 8, offset: 880)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1616, file: !1617, line: 505, baseType: !1628, size: 8, offset: 888)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1616, file: !1617, line: 506, baseType: !1628, size: 8, offset: 896)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1616, file: !1617, line: 507, baseType: !1628, size: 8, offset: 904)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1616, file: !1617, line: 508, baseType: !1628, size: 8, offset: 912)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1616, file: !1617, line: 509, baseType: !1628, size: 8, offset: 920)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1616, file: !1617, line: 510, baseType: !1628, size: 8, offset: 928)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1616, file: !1617, line: 511, baseType: !1628, size: 8, offset: 936)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1616, file: !1617, line: 512, baseType: !1628, size: 8, offset: 944)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1616, file: !1617, line: 513, baseType: !1628, size: 8, offset: 952)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1616, file: !1617, line: 514, baseType: !1628, size: 8, offset: 960)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1616, file: !1617, line: 515, baseType: !1628, size: 8, offset: 968)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1616, file: !1617, line: 516, baseType: !1628, size: 8, offset: 976)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1616, file: !1617, line: 517, baseType: !1628, size: 8, offset: 984)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1616, file: !1617, line: 518, baseType: !1628, size: 8, offset: 992)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1616, file: !1617, line: 519, baseType: !1628, size: 8, offset: 1000)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1616, file: !1617, line: 520, baseType: !1628, size: 8, offset: 1008)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1616, file: !1617, line: 521, baseType: !1628, size: 8, offset: 1016)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1616, file: !1617, line: 522, baseType: !1628, size: 8, offset: 1024)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1616, file: !1617, line: 523, baseType: !1628, size: 8, offset: 1032)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1616, file: !1617, line: 524, baseType: !1628, size: 8, offset: 1040)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1616, file: !1617, line: 525, baseType: !1628, size: 8, offset: 1048)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1616, file: !1617, line: 526, baseType: !1628, size: 8, offset: 1056)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1616, file: !1617, line: 527, baseType: !1628, size: 8, offset: 1064)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1616, file: !1617, line: 528, baseType: !1628, size: 8, offset: 1072)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1616, file: !1617, line: 529, baseType: !1628, size: 8, offset: 1080)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1616, file: !1617, line: 530, baseType: !1628, size: 8, offset: 1088)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1616, file: !1617, line: 531, baseType: !1628, size: 8, offset: 1096)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1616, file: !1617, line: 532, baseType: !1628, size: 8, offset: 1104)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1616, file: !1617, line: 533, baseType: !1628, size: 8, offset: 1112)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1616, file: !1617, line: 534, baseType: !1628, size: 8, offset: 1120)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1616, file: !1617, line: 535, baseType: !1628, size: 8, offset: 1128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1616, file: !1617, line: 536, baseType: !1628, size: 8, offset: 1136)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1616, file: !1617, line: 537, baseType: !1628, size: 8, offset: 1144)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1616, file: !1617, line: 538, baseType: !1628, size: 8, offset: 1152)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1616, file: !1617, line: 539, baseType: !1628, size: 8, offset: 1160)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1616, file: !1617, line: 540, baseType: !1628, size: 8, offset: 1168)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1616, file: !1617, line: 541, baseType: !1628, size: 8, offset: 1176)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1616, file: !1617, line: 542, baseType: !1628, size: 8, offset: 1184)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1616, file: !1617, line: 543, baseType: !1628, size: 8, offset: 1192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1616, file: !1617, line: 544, baseType: !1628, size: 8, offset: 1200)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1616, file: !1617, line: 545, baseType: !1628, size: 8, offset: 1208)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1616, file: !1617, line: 546, baseType: !1628, size: 8, offset: 1216)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1616, file: !1617, line: 547, baseType: !1628, size: 8, offset: 1224)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1616, file: !1617, line: 548, baseType: !1628, size: 8, offset: 1232)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1616, file: !1617, line: 549, baseType: !1628, size: 8, offset: 1240)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1616, file: !1617, line: 550, baseType: !1628, size: 8, offset: 1248)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1616, file: !1617, line: 551, baseType: !1628, size: 8, offset: 1256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1616, file: !1617, line: 552, baseType: !1628, size: 8, offset: 1264)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1616, file: !1617, line: 553, baseType: !1628, size: 8, offset: 1272)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1616, file: !1617, line: 554, baseType: !1628, size: 8, offset: 1280)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1616, file: !1617, line: 555, baseType: !1628, size: 8, offset: 1288)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1616, file: !1617, line: 556, baseType: !1628, size: 8, offset: 1296)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1616, file: !1617, line: 557, baseType: !1628, size: 8, offset: 1304)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1616, file: !1617, line: 558, baseType: !1628, size: 8, offset: 1312)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1616, file: !1617, line: 559, baseType: !1628, size: 8, offset: 1320)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1616, file: !1617, line: 560, baseType: !1628, size: 8, offset: 1328)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1616, file: !1617, line: 561, baseType: !1628, size: 8, offset: 1336)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1616, file: !1617, line: 562, baseType: !1628, size: 8, offset: 1344)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1616, file: !1617, line: 563, baseType: !1628, size: 8, offset: 1352)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1616, file: !1617, line: 564, baseType: !1628, size: 8, offset: 1360)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1616, file: !1617, line: 565, baseType: !1628, size: 8, offset: 1368)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1616, file: !1617, line: 566, baseType: !1628, size: 8, offset: 1376)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1616, file: !1617, line: 567, baseType: !1628, size: 8, offset: 1384)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1616, file: !1617, line: 568, baseType: !1628, size: 8, offset: 1392)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1616, file: !1617, line: 569, baseType: !1628, size: 8, offset: 1400)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1616, file: !1617, line: 570, baseType: !1628, size: 8, offset: 1408)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1616, file: !1617, line: 571, baseType: !1628, size: 8, offset: 1416)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1616, file: !1617, line: 572, baseType: !1628, size: 8, offset: 1424)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1616, file: !1617, line: 573, baseType: !1628, size: 8, offset: 1432)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1616, file: !1617, line: 574, baseType: !1628, size: 8, offset: 1440)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !838, file: !341, line: 3405, baseType: !1784, size: 384)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !341, line: 3352, size: 384, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1784, file: !341, line: 3353, baseType: !874, size: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1784, file: !341, line: 3356, baseType: !1788, size: 192, offset: 192)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1617, line: 578, size: 192, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1788, file: !1617, line: 580, baseType: !713, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1788, file: !1617, line: 581, baseType: !713, size: 32, offset: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1788, file: !1617, line: 582, baseType: !713, size: 32, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1788, file: !1617, line: 583, baseType: !713, size: 32, offset: 96)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1788, file: !1617, line: 584, baseType: !712, size: 8, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1788, file: !1617, line: 585, baseType: !712, size: 8, offset: 136)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1788, file: !1617, line: 586, baseType: !712, size: 8, offset: 144)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1788, file: !1617, line: 587, baseType: !712, size: 8, offset: 152)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1788, file: !1617, line: 588, baseType: !712, size: 8, offset: 160)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1788, file: !1617, line: 589, baseType: !712, size: 8, offset: 168)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1788, file: !1617, line: 590, baseType: !712, size: 8, offset: 176)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !741, file: !568, line: 178, baseType: !1255, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !741, file: !568, line: 179, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !568, line: 150, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !568, line: 142, size: 320, elements: !1806)
!1806 = !{!1807, !1808, !1809, !1810, !1811, !1812}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1805, file: !568, line: 144, baseType: !836, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1805, file: !568, line: 145, baseType: !720, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1805, file: !568, line: 146, baseType: !720, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1805, file: !568, line: 147, baseType: !1463, size: 32, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1805, file: !568, line: 148, baseType: !7, size: 32, offset: 224)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1805, file: !568, line: 149, baseType: !712, size: 8, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !741, file: !568, line: 180, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !568, line: 162, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !568, line: 159, size: 128, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1816, file: !568, line: 160, baseType: !836, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1816, file: !568, line: 161, baseType: !807, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !741, file: !568, line: 181, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !568, line: 181, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !736, file: !568, line: 317, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 64, elements: !755)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !736, file: !568, line: 318, baseType: !1826, size: 320)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !568, line: 188, size: 320, elements: !1827)
!1827 = !{!1828, !1830, !1885}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1826, file: !568, line: 190, baseType: !1829, size: 192)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 192, elements: !907)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1826, file: !568, line: 193, baseType: !1831, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !568, line: 206, size: 320, elements: !1833)
!1833 = !{!1834, !1870, !1871, !1872, !1884}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1832, file: !568, line: 208, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !721, line: 62, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1838, line: 538, size: 256, elements: !1839)
!1838 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1839 = !{!1840, !1844, !1850, !1861}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1837, file: !1838, line: 539, baseType: !1841, size: 32)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1838, line: 482, size: 32, elements: !1842)
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1841, file: !1838, line: 484, baseType: !7, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1837, file: !1838, line: 540, baseType: !1845, size: 192)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1838, line: 488, size: 192, elements: !1846)
!1846 = !{!1847, !1848, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1845, file: !1838, line: 489, baseType: !1841, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1845, file: !1838, line: 492, baseType: !718, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1845, file: !1838, line: 496, baseType: !836, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1837, file: !1838, line: 541, baseType: !1851, size: 256)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1838, line: 504, size: 256, elements: !1852)
!1852 = !{!1853, !1854, !1859, !1860}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1851, file: !1838, line: 505, baseType: !1841, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1851, file: !1838, line: 509, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1838, line: 501, baseType: !1856)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{null, !1177}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1851, file: !1838, line: 510, baseType: !1177, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1851, file: !1838, line: 513, baseType: !1835, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1837, file: !1838, line: 542, baseType: !1862, size: 128)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1838, line: 530, size: 128, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1862, file: !1838, line: 531, baseType: !1841, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1862, file: !1838, line: 534, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1838, line: 525, baseType: !1867)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!712, !836, !718, !790, !790}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1832, file: !568, line: 211, baseType: !7, size: 32, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1832, file: !568, line: 214, baseType: !807, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1832, file: !568, line: 224, baseType: !1873, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !568, line: 202, baseType: !1875)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !568, line: 202, size: 128, elements: !1876)
!1876 = !{!1877}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1875, file: !568, line: 202, baseType: !1878, size: 128)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !568, line: 200, baseType: !1879)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !568, line: 200, size: 128, elements: !1880)
!1880 = !{!1881, !1882, !1883}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1879, file: !568, line: 200, baseType: !7, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1879, file: !568, line: 200, baseType: !7, size: 32, offset: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1879, file: !568, line: 200, baseType: !754, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1832, file: !568, line: 234, baseType: !1873, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1826, file: !568, line: 197, baseType: !807, size: 64, offset: 256)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !736, file: !568, line: 319, baseType: !896, size: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !736, file: !568, line: 320, baseType: !915, size: 192)
!1888 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "record_stack_refs_data", file: !3, line: 245, size: 128, elements: !1891)
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1890, file: !3, line: 247, baseType: !720, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "reflist", scope: !1890, file: !3, line: 248, baseType: !1894, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "csa_reflist", file: !3, line: 78, size: 256, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1901}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1895, file: !3, line: 80, baseType: !807, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1895, file: !3, line: 81, baseType: !720, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1895, file: !3, line: 81, baseType: !1900, size: 64, offset: 128)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1895, file: !3, line: 82, baseType: !1894, size: 64, offset: 192)
!1902 = !{!0}
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_opt_pass", file: !6, line: 162, size: 640, elements: !1904)
!1904 = !{!1905}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !1903, file: !6, line: 164, baseType: !1906, size: 640)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !1907)
!1907 = !{!1908, !1909, !1910, !1914, !1918, !1920, !1921, !1922, !1924, !1925, !1926, !1927, !1928}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1906, file: !6, line: 117, baseType: !5, size: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1906, file: !6, line: 121, baseType: !718, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !1906, file: !6, line: 125, baseType: !1911, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!712}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !1906, file: !6, line: 130, baseType: !1915, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!7}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !1906, file: !6, line: 133, baseType: !1919, size: 64, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1906, file: !6, line: 136, baseType: !1919, size: 64, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !1906, file: !6, line: 139, baseType: !713, size: 32, offset: 384)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !1906, file: !6, line: 143, baseType: !1923, size: 32, offset: 416)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !1906, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !1906, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !1906, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !1906, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !1906, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!1929 = !{i32 2, !"Dwarf Version", i32 4}
!1930 = !{i32 2, !"Debug Info Version", i32 3}
!1931 = !{i32 1, !"wchar_size", i32 4}
!1932 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1933 = distinct !DISubprogram(name: "vprintf", scope: !1934, file: !1934, line: 39, type: !1935, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1945)
!1934 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!713, !1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !718)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1940)
!1940 = !{!1941, !1942, !1943, !1944}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1939, file: !3, baseType: !7, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1939, file: !3, baseType: !7, size: 32, offset: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1939, file: !3, baseType: !717, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1939, file: !3, baseType: !717, size: 64, offset: 128)
!1945 = !{!1946, !1947}
!1946 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1933, file: !1934, line: 39, type: !1937)
!1947 = !DILocalVariable(name: "__arg", arg: 2, scope: !1933, file: !1934, line: 39, type: !1938)
!1948 = !DILocation(line: 0, scope: !1933)
!1949 = !DILocation(line: 41, column: 20, scope: !1933)
!1950 = !DILocation(line: 41, column: 10, scope: !1933)
!1951 = !DILocation(line: 41, column: 3, scope: !1933)
!1952 = distinct !DISubprogram(name: "getchar", scope: !1934, file: !1934, line: 47, type: !1953, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!713}
!1955 = !{}
!1956 = !DILocation(line: 49, column: 16, scope: !1952)
!1957 = !DILocation(line: 49, column: 10, scope: !1952)
!1958 = !DILocation(line: 49, column: 3, scope: !1952)
!1959 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1934, file: !1934, line: 56, type: !1960, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2012)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!713, !1962}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1964, line: 7, baseType: !1965)
!1964 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1966, line: 49, size: 1728, elements: !1967)
!1966 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1983, !1985, !1986, !1987, !1990, !1991, !1992, !1993, !1996, !1998, !2001, !2004, !2005, !2006, !2007, !2008}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1965, file: !1966, line: 51, baseType: !713, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1965, file: !1966, line: 54, baseType: !715, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1965, file: !1966, line: 55, baseType: !715, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1965, file: !1966, line: 56, baseType: !715, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1965, file: !1966, line: 57, baseType: !715, size: 64, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1965, file: !1966, line: 58, baseType: !715, size: 64, offset: 320)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1965, file: !1966, line: 59, baseType: !715, size: 64, offset: 384)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1965, file: !1966, line: 60, baseType: !715, size: 64, offset: 448)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1965, file: !1966, line: 61, baseType: !715, size: 64, offset: 512)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1965, file: !1966, line: 64, baseType: !715, size: 64, offset: 576)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1965, file: !1966, line: 65, baseType: !715, size: 64, offset: 640)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1965, file: !1966, line: 66, baseType: !715, size: 64, offset: 704)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1965, file: !1966, line: 68, baseType: !1981, size: 64, offset: 768)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1966, line: 36, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1965, file: !1966, line: 70, baseType: !1984, size: 64, offset: 832)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1965, file: !1966, line: 72, baseType: !713, size: 32, offset: 896)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1965, file: !1966, line: 73, baseType: !713, size: 32, offset: 928)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1965, file: !1966, line: 74, baseType: !1988, size: 64, offset: 960)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1989, line: 152, baseType: !807)
!1989 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1965, file: !1966, line: 77, baseType: !1888, size: 16, offset: 1024)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1965, file: !1966, line: 78, baseType: !1628, size: 8, offset: 1040)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1965, file: !1966, line: 79, baseType: !931, size: 8, offset: 1048)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1965, file: !1966, line: 81, baseType: !1994, size: 64, offset: 1088)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1966, line: 43, baseType: null)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1965, file: !1966, line: 89, baseType: !1997, size: 64, offset: 1152)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1989, line: 153, baseType: !807)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1965, file: !1966, line: 91, baseType: !1999, size: 64, offset: 1216)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1966, line: 37, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1965, file: !1966, line: 92, baseType: !2002, size: 64, offset: 1280)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1966, line: 38, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1965, file: !1966, line: 93, baseType: !1984, size: 64, offset: 1344)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1965, file: !1966, line: 94, baseType: !717, size: 64, offset: 1408)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1965, file: !1966, line: 95, baseType: !1192, size: 64, offset: 1472)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1965, file: !1966, line: 96, baseType: !713, size: 32, offset: 1536)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1965, file: !1966, line: 98, baseType: !2009, size: 160, offset: 1568)
!2009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 160, elements: !2010)
!2010 = !{!2011}
!2011 = !DISubrange(count: 20)
!2012 = !{!2013}
!2013 = !DILocalVariable(name: "__fp", arg: 1, scope: !1959, file: !1934, line: 56, type: !1962)
!2014 = !DILocation(line: 0, scope: !1959)
!2015 = !DILocation(line: 58, column: 10, scope: !1959)
!2016 = !DILocation(line: 58, column: 3, scope: !1959)
!2017 = distinct !DISubprogram(name: "getc_unlocked", scope: !1934, file: !1934, line: 66, type: !1960, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2018)
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "__fp", arg: 1, scope: !2017, file: !1934, line: 66, type: !1962)
!2020 = !DILocation(line: 0, scope: !2017)
!2021 = !DILocation(line: 68, column: 10, scope: !2017)
!2022 = !DILocation(line: 68, column: 3, scope: !2017)
!2023 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1934, file: !1934, line: 73, type: !1953, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!2024 = !DILocation(line: 75, column: 10, scope: !2023)
!2025 = !DILocation(line: 75, column: 3, scope: !2023)
!2026 = distinct !DISubprogram(name: "putchar", scope: !1934, file: !1934, line: 82, type: !2027, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!713, !713}
!2029 = !{!2030}
!2030 = !DILocalVariable(name: "__c", arg: 1, scope: !2026, file: !1934, line: 82, type: !713)
!2031 = !DILocation(line: 0, scope: !2026)
!2032 = !DILocation(line: 84, column: 21, scope: !2026)
!2033 = !DILocation(line: 84, column: 10, scope: !2026)
!2034 = !DILocation(line: 84, column: 3, scope: !2026)
!2035 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1934, file: !1934, line: 91, type: !2036, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2038)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!713, !713, !1962}
!2038 = !{!2039, !2040}
!2039 = !DILocalVariable(name: "__c", arg: 1, scope: !2035, file: !1934, line: 91, type: !713)
!2040 = !DILocalVariable(name: "__stream", arg: 2, scope: !2035, file: !1934, line: 91, type: !1962)
!2041 = !DILocation(line: 0, scope: !2035)
!2042 = !DILocation(line: 93, column: 10, scope: !2035)
!2043 = !DILocation(line: 93, column: 3, scope: !2035)
!2044 = distinct !DISubprogram(name: "putc_unlocked", scope: !1934, file: !1934, line: 101, type: !2036, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2045)
!2045 = !{!2046, !2047}
!2046 = !DILocalVariable(name: "__c", arg: 1, scope: !2044, file: !1934, line: 101, type: !713)
!2047 = !DILocalVariable(name: "__stream", arg: 2, scope: !2044, file: !1934, line: 101, type: !1962)
!2048 = !DILocation(line: 0, scope: !2044)
!2049 = !DILocation(line: 103, column: 10, scope: !2044)
!2050 = !DILocation(line: 103, column: 3, scope: !2044)
!2051 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1934, file: !1934, line: 108, type: !2027, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2052)
!2052 = !{!2053}
!2053 = !DILocalVariable(name: "__c", arg: 1, scope: !2051, file: !1934, line: 108, type: !713)
!2054 = !DILocation(line: 0, scope: !2051)
!2055 = !DILocation(line: 110, column: 10, scope: !2051)
!2056 = !DILocation(line: 110, column: 3, scope: !2051)
!2057 = distinct !DISubprogram(name: "getline", scope: !1934, file: !1934, line: 118, type: !2058, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2062)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!2060, !714, !2061, !1962}
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1989, line: 193, baseType: !807)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!2062 = !{!2063, !2064, !2065}
!2063 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2057, file: !1934, line: 118, type: !714)
!2064 = !DILocalVariable(name: "__n", arg: 2, scope: !2057, file: !1934, line: 118, type: !2061)
!2065 = !DILocalVariable(name: "__stream", arg: 3, scope: !2057, file: !1934, line: 118, type: !1962)
!2066 = !DILocation(line: 0, scope: !2057)
!2067 = !DILocation(line: 120, column: 10, scope: !2057)
!2068 = !DILocation(line: 120, column: 3, scope: !2057)
!2069 = distinct !DISubprogram(name: "feof_unlocked", scope: !1934, file: !1934, line: 128, type: !1960, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2070)
!2070 = !{!2071}
!2071 = !DILocalVariable(name: "__stream", arg: 1, scope: !2069, file: !1934, line: 128, type: !1962)
!2072 = !DILocation(line: 0, scope: !2069)
!2073 = !DILocation(line: 130, column: 10, scope: !2069)
!2074 = !DILocation(line: 130, column: 3, scope: !2069)
!2075 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1934, file: !1934, line: 135, type: !1960, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2076)
!2076 = !{!2077}
!2077 = !DILocalVariable(name: "__stream", arg: 1, scope: !2075, file: !1934, line: 135, type: !1962)
!2078 = !DILocation(line: 0, scope: !2075)
!2079 = !DILocation(line: 137, column: 10, scope: !2075)
!2080 = !DILocation(line: 137, column: 3, scope: !2075)
!2081 = distinct !DISubprogram(name: "tolower", scope: !2082, file: !2082, line: 207, type: !2027, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2083)
!2082 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2083 = !{!2084}
!2084 = !DILocalVariable(name: "__c", arg: 1, scope: !2081, file: !2082, line: 207, type: !713)
!2085 = !DILocation(line: 0, scope: !2081)
!2086 = !DILocation(line: 209, column: 22, scope: !2081)
!2087 = !DILocation(line: 209, column: 39, scope: !2081)
!2088 = !DILocation(line: 209, column: 38, scope: !2081)
!2089 = !DILocation(line: 209, column: 37, scope: !2081)
!2090 = !DILocation(line: 209, column: 10, scope: !2081)
!2091 = !DILocation(line: 209, column: 3, scope: !2081)
!2092 = distinct !DISubprogram(name: "toupper", scope: !2082, file: !2082, line: 213, type: !2027, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2093)
!2093 = !{!2094}
!2094 = !DILocalVariable(name: "__c", arg: 1, scope: !2092, file: !2082, line: 213, type: !713)
!2095 = !DILocation(line: 0, scope: !2092)
!2096 = !DILocation(line: 215, column: 22, scope: !2092)
!2097 = !DILocation(line: 215, column: 39, scope: !2092)
!2098 = !DILocation(line: 215, column: 38, scope: !2092)
!2099 = !DILocation(line: 215, column: 37, scope: !2092)
!2100 = !DILocation(line: 215, column: 10, scope: !2092)
!2101 = !DILocation(line: 215, column: 3, scope: !2092)
!2102 = distinct !DISubprogram(name: "atoi", scope: !2103, file: !2103, line: 361, type: !2104, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2106)
!2103 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!713, !718}
!2106 = !{!2107}
!2107 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2102, file: !2103, line: 361, type: !718)
!2108 = !DILocation(line: 0, scope: !2102)
!2109 = !DILocation(line: 363, column: 16, scope: !2102)
!2110 = !DILocation(line: 363, column: 10, scope: !2102)
!2111 = !DILocation(line: 363, column: 3, scope: !2102)
!2112 = distinct !DISubprogram(name: "atol", scope: !2103, file: !2103, line: 366, type: !2113, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!807, !718}
!2115 = !{!2116}
!2116 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2112, file: !2103, line: 366, type: !718)
!2117 = !DILocation(line: 0, scope: !2112)
!2118 = !DILocation(line: 368, column: 10, scope: !2112)
!2119 = !DILocation(line: 368, column: 3, scope: !2112)
!2120 = distinct !DISubprogram(name: "atoll", scope: !2103, file: !2103, line: 373, type: !2121, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2124)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!2123, !718}
!2123 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2124 = !{!2125}
!2125 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2120, file: !2103, line: 373, type: !718)
!2126 = !DILocation(line: 0, scope: !2120)
!2127 = !DILocation(line: 375, column: 10, scope: !2120)
!2128 = !DILocation(line: 375, column: 3, scope: !2120)
!2129 = distinct !DISubprogram(name: "bsearch", scope: !2130, file: !2130, line: 20, type: !2131, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2134)
!2130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!717, !1177, !1177, !1192, !1192, !2133}
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2103, line: 808, baseType: !1181)
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144}
!2135 = !DILocalVariable(name: "__key", arg: 1, scope: !2129, file: !2130, line: 20, type: !1177)
!2136 = !DILocalVariable(name: "__base", arg: 2, scope: !2129, file: !2130, line: 20, type: !1177)
!2137 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2129, file: !2130, line: 20, type: !1192)
!2138 = !DILocalVariable(name: "__size", arg: 4, scope: !2129, file: !2130, line: 20, type: !1192)
!2139 = !DILocalVariable(name: "__compar", arg: 5, scope: !2129, file: !2130, line: 21, type: !2133)
!2140 = !DILocalVariable(name: "__l", scope: !2129, file: !2130, line: 23, type: !1192)
!2141 = !DILocalVariable(name: "__u", scope: !2129, file: !2130, line: 23, type: !1192)
!2142 = !DILocalVariable(name: "__idx", scope: !2129, file: !2130, line: 23, type: !1192)
!2143 = !DILocalVariable(name: "__p", scope: !2129, file: !2130, line: 24, type: !1177)
!2144 = !DILocalVariable(name: "__comparison", scope: !2129, file: !2130, line: 25, type: !713)
!2145 = !DILocation(line: 0, scope: !2129)
!2146 = !DILocation(line: 29, column: 3, scope: !2129)
!2147 = !DILocation(line: 27, column: 7, scope: !2129)
!2148 = !DILocation(line: 29, column: 14, scope: !2129)
!2149 = !DILocation(line: 31, column: 20, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2129, file: !2130, line: 30, column: 5)
!2151 = !DILocation(line: 31, column: 27, scope: !2150)
!2152 = !DILocation(line: 32, column: 56, scope: !2150)
!2153 = !DILocation(line: 32, column: 47, scope: !2150)
!2154 = !DILocation(line: 33, column: 22, scope: !2150)
!2155 = !DILocation(line: 34, column: 24, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2150, file: !2130, line: 34, column: 11)
!2157 = !DILocation(line: 34, column: 11, scope: !2150)
!2158 = !DILocation(line: 36, column: 29, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2156, file: !2130, line: 36, column: 16)
!2160 = !DILocation(line: 36, column: 16, scope: !2156)
!2161 = !DILocation(line: 37, column: 14, scope: !2159)
!2162 = distinct !{!2162, !2146, !2163}
!2163 = !DILocation(line: 40, column: 5, scope: !2129)
!2164 = !DILocation(line: 43, column: 1, scope: !2129)
!2165 = distinct !DISubprogram(name: "atof", scope: !2166, file: !2166, line: 25, type: !2167, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2170)
!2166 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!2169, !718}
!2169 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2170 = !{!2171}
!2171 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2165, file: !2166, line: 25, type: !718)
!2172 = !DILocation(line: 0, scope: !2165)
!2173 = !DILocation(line: 27, column: 10, scope: !2165)
!2174 = !DILocation(line: 27, column: 3, scope: !2165)
!2175 = distinct !DISubprogram(name: "strtoimax", scope: !2176, file: !2176, line: 324, type: !2177, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2183)
!2176 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!2179, !1937, !2182, !713}
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2180, line: 101, baseType: !2181)
!2180 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1989, line: 72, baseType: !807)
!2182 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !714)
!2183 = !{!2184, !2185, !2186}
!2184 = !DILocalVariable(name: "nptr", arg: 1, scope: !2175, file: !2176, line: 324, type: !1937)
!2185 = !DILocalVariable(name: "endptr", arg: 2, scope: !2175, file: !2176, line: 324, type: !2182)
!2186 = !DILocalVariable(name: "base", arg: 3, scope: !2175, file: !2176, line: 324, type: !713)
!2187 = !DILocation(line: 0, scope: !2175)
!2188 = !DILocation(line: 327, column: 10, scope: !2175)
!2189 = !DILocation(line: 327, column: 3, scope: !2175)
!2190 = distinct !DISubprogram(name: "strtoumax", scope: !2176, file: !2176, line: 336, type: !2191, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2195)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!2193, !1937, !2182, !713}
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2180, line: 102, baseType: !2194)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1989, line: 73, baseType: !790)
!2195 = !{!2196, !2197, !2198}
!2196 = !DILocalVariable(name: "nptr", arg: 1, scope: !2190, file: !2176, line: 336, type: !1937)
!2197 = !DILocalVariable(name: "endptr", arg: 2, scope: !2190, file: !2176, line: 336, type: !2182)
!2198 = !DILocalVariable(name: "base", arg: 3, scope: !2190, file: !2176, line: 336, type: !713)
!2199 = !DILocation(line: 0, scope: !2190)
!2200 = !DILocation(line: 339, column: 10, scope: !2190)
!2201 = !DILocation(line: 339, column: 3, scope: !2190)
!2202 = distinct !DISubprogram(name: "wcstoimax", scope: !2176, file: !2176, line: 348, type: !2203, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2212)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!2179, !2205, !2209, !713}
!2205 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2206)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2208)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2176, line: 34, baseType: !713)
!2209 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2210)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2212 = !{!2213, !2214, !2215}
!2213 = !DILocalVariable(name: "nptr", arg: 1, scope: !2202, file: !2176, line: 348, type: !2205)
!2214 = !DILocalVariable(name: "endptr", arg: 2, scope: !2202, file: !2176, line: 348, type: !2209)
!2215 = !DILocalVariable(name: "base", arg: 3, scope: !2202, file: !2176, line: 348, type: !713)
!2216 = !DILocation(line: 0, scope: !2202)
!2217 = !DILocation(line: 351, column: 10, scope: !2202)
!2218 = !DILocation(line: 351, column: 3, scope: !2202)
!2219 = distinct !DISubprogram(name: "wcstoumax", scope: !2176, file: !2176, line: 362, type: !2220, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2222)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!2193, !2205, !2209, !713}
!2222 = !{!2223, !2224, !2225}
!2223 = !DILocalVariable(name: "nptr", arg: 1, scope: !2219, file: !2176, line: 362, type: !2205)
!2224 = !DILocalVariable(name: "endptr", arg: 2, scope: !2219, file: !2176, line: 362, type: !2209)
!2225 = !DILocalVariable(name: "base", arg: 3, scope: !2219, file: !2176, line: 362, type: !713)
!2226 = !DILocation(line: 0, scope: !2219)
!2227 = !DILocation(line: 365, column: 10, scope: !2219)
!2228 = !DILocation(line: 365, column: 3, scope: !2219)
!2229 = distinct !DISubprogram(name: "stat", scope: !2230, file: !2230, line: 453, type: !2231, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2268)
!2230 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!713, !718, !2233}
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2235, line: 46, size: 1152, elements: !2236)
!2235 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2236 = !{!2237, !2239, !2241, !2243, !2245, !2247, !2249, !2250, !2251, !2252, !2254, !2256, !2264, !2265, !2266}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2234, file: !2235, line: 48, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1989, line: 145, baseType: !790)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2234, file: !2235, line: 53, baseType: !2240, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1989, line: 148, baseType: !790)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2234, file: !2235, line: 61, baseType: !2242, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1989, line: 151, baseType: !790)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2234, file: !2235, line: 62, baseType: !2244, size: 32, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1989, line: 150, baseType: !7)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2234, file: !2235, line: 64, baseType: !2246, size: 32, offset: 224)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1989, line: 146, baseType: !7)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2234, file: !2235, line: 65, baseType: !2248, size: 32, offset: 256)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1989, line: 147, baseType: !7)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2234, file: !2235, line: 67, baseType: !713, size: 32, offset: 288)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2234, file: !2235, line: 69, baseType: !2238, size: 64, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2234, file: !2235, line: 74, baseType: !1988, size: 64, offset: 384)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2234, file: !2235, line: 78, baseType: !2253, size: 64, offset: 448)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1989, line: 174, baseType: !807)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2234, file: !2235, line: 80, baseType: !2255, size: 64, offset: 512)
!2255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1989, line: 179, baseType: !807)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2234, file: !2235, line: 91, baseType: !2257, size: 128, offset: 576)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2258, line: 10, size: 128, elements: !2259)
!2258 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2259 = !{!2260, !2262}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2257, file: !2258, line: 12, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1989, line: 160, baseType: !807)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2257, file: !2258, line: 16, baseType: !2263, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1989, line: 196, baseType: !807)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2234, file: !2235, line: 92, baseType: !2257, size: 128, offset: 704)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2234, file: !2235, line: 93, baseType: !2257, size: 128, offset: 832)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2234, file: !2235, line: 106, baseType: !2267, size: 192, offset: 960)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2263, size: 192, elements: !907)
!2268 = !{!2269, !2270}
!2269 = !DILocalVariable(name: "__path", arg: 1, scope: !2229, file: !2230, line: 453, type: !718)
!2270 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2229, file: !2230, line: 453, type: !2233)
!2271 = !DILocation(line: 0, scope: !2229)
!2272 = !DILocation(line: 455, column: 10, scope: !2229)
!2273 = !DILocation(line: 455, column: 3, scope: !2229)
!2274 = distinct !DISubprogram(name: "lstat", scope: !2230, file: !2230, line: 460, type: !2231, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2275)
!2275 = !{!2276, !2277}
!2276 = !DILocalVariable(name: "__path", arg: 1, scope: !2274, file: !2230, line: 460, type: !718)
!2277 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2274, file: !2230, line: 460, type: !2233)
!2278 = !DILocation(line: 0, scope: !2274)
!2279 = !DILocation(line: 462, column: 10, scope: !2274)
!2280 = !DILocation(line: 462, column: 3, scope: !2274)
!2281 = distinct !DISubprogram(name: "fstat", scope: !2230, file: !2230, line: 467, type: !2282, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2284)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!713, !713, !2233}
!2284 = !{!2285, !2286}
!2285 = !DILocalVariable(name: "__fd", arg: 1, scope: !2281, file: !2230, line: 467, type: !713)
!2286 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2281, file: !2230, line: 467, type: !2233)
!2287 = !DILocation(line: 0, scope: !2281)
!2288 = !DILocation(line: 469, column: 10, scope: !2281)
!2289 = !DILocation(line: 469, column: 3, scope: !2281)
!2290 = distinct !DISubprogram(name: "fstatat", scope: !2230, file: !2230, line: 474, type: !2291, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2293)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!713, !713, !718, !2233, !713}
!2293 = !{!2294, !2295, !2296, !2297}
!2294 = !DILocalVariable(name: "__fd", arg: 1, scope: !2290, file: !2230, line: 474, type: !713)
!2295 = !DILocalVariable(name: "__filename", arg: 2, scope: !2290, file: !2230, line: 474, type: !718)
!2296 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2290, file: !2230, line: 474, type: !2233)
!2297 = !DILocalVariable(name: "__flag", arg: 4, scope: !2290, file: !2230, line: 474, type: !713)
!2298 = !DILocation(line: 0, scope: !2290)
!2299 = !DILocation(line: 477, column: 10, scope: !2290)
!2300 = !DILocation(line: 477, column: 3, scope: !2290)
!2301 = distinct !DISubprogram(name: "mknod", scope: !2230, file: !2230, line: 483, type: !2302, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!713, !718, !2244, !2238}
!2304 = !{!2305, !2306, !2307}
!2305 = !DILocalVariable(name: "__path", arg: 1, scope: !2301, file: !2230, line: 483, type: !718)
!2306 = !DILocalVariable(name: "__mode", arg: 2, scope: !2301, file: !2230, line: 483, type: !2244)
!2307 = !DILocalVariable(name: "__dev", arg: 3, scope: !2301, file: !2230, line: 483, type: !2238)
!2308 = !DILocation(line: 0, scope: !2301)
!2309 = !DILocation(line: 485, column: 10, scope: !2301)
!2310 = !DILocation(line: 485, column: 3, scope: !2301)
!2311 = distinct !DISubprogram(name: "mknodat", scope: !2230, file: !2230, line: 491, type: !2312, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2314)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!713, !713, !718, !2244, !2238}
!2314 = !{!2315, !2316, !2317, !2318}
!2315 = !DILocalVariable(name: "__fd", arg: 1, scope: !2311, file: !2230, line: 491, type: !713)
!2316 = !DILocalVariable(name: "__path", arg: 2, scope: !2311, file: !2230, line: 491, type: !718)
!2317 = !DILocalVariable(name: "__mode", arg: 3, scope: !2311, file: !2230, line: 491, type: !2244)
!2318 = !DILocalVariable(name: "__dev", arg: 4, scope: !2311, file: !2230, line: 491, type: !2238)
!2319 = !DILocation(line: 0, scope: !2311)
!2320 = !DILocation(line: 494, column: 10, scope: !2311)
!2321 = !DILocation(line: 494, column: 3, scope: !2311)
!2322 = distinct !DISubprogram(name: "stat64", scope: !2230, file: !2230, line: 502, type: !2323, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2345)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!713, !718, !2325}
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2235, line: 119, size: 1152, elements: !2327)
!2327 = !{!2328, !2329, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2341, !2342, !2343, !2344}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2326, file: !2235, line: 121, baseType: !2238, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2326, file: !2235, line: 123, baseType: !2330, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1989, line: 149, baseType: !790)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2326, file: !2235, line: 124, baseType: !2242, size: 64, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2326, file: !2235, line: 125, baseType: !2244, size: 32, offset: 192)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2326, file: !2235, line: 132, baseType: !2246, size: 32, offset: 224)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2326, file: !2235, line: 133, baseType: !2248, size: 32, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2326, file: !2235, line: 135, baseType: !713, size: 32, offset: 288)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2326, file: !2235, line: 136, baseType: !2238, size: 64, offset: 320)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2326, file: !2235, line: 137, baseType: !1988, size: 64, offset: 384)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2326, file: !2235, line: 143, baseType: !2253, size: 64, offset: 448)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2326, file: !2235, line: 144, baseType: !2340, size: 64, offset: 512)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1989, line: 180, baseType: !807)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2326, file: !2235, line: 152, baseType: !2257, size: 128, offset: 576)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2326, file: !2235, line: 153, baseType: !2257, size: 128, offset: 704)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2326, file: !2235, line: 154, baseType: !2257, size: 128, offset: 832)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2326, file: !2235, line: 164, baseType: !2267, size: 192, offset: 960)
!2345 = !{!2346, !2347}
!2346 = !DILocalVariable(name: "__path", arg: 1, scope: !2322, file: !2230, line: 502, type: !718)
!2347 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2322, file: !2230, line: 502, type: !2325)
!2348 = !DILocation(line: 0, scope: !2322)
!2349 = !DILocation(line: 504, column: 10, scope: !2322)
!2350 = !DILocation(line: 504, column: 3, scope: !2322)
!2351 = distinct !DISubprogram(name: "lstat64", scope: !2230, file: !2230, line: 509, type: !2323, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2352)
!2352 = !{!2353, !2354}
!2353 = !DILocalVariable(name: "__path", arg: 1, scope: !2351, file: !2230, line: 509, type: !718)
!2354 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2351, file: !2230, line: 509, type: !2325)
!2355 = !DILocation(line: 0, scope: !2351)
!2356 = !DILocation(line: 511, column: 10, scope: !2351)
!2357 = !DILocation(line: 511, column: 3, scope: !2351)
!2358 = distinct !DISubprogram(name: "fstat64", scope: !2230, file: !2230, line: 516, type: !2359, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!713, !713, !2325}
!2361 = !{!2362, !2363}
!2362 = !DILocalVariable(name: "__fd", arg: 1, scope: !2358, file: !2230, line: 516, type: !713)
!2363 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2358, file: !2230, line: 516, type: !2325)
!2364 = !DILocation(line: 0, scope: !2358)
!2365 = !DILocation(line: 518, column: 10, scope: !2358)
!2366 = !DILocation(line: 518, column: 3, scope: !2358)
!2367 = distinct !DISubprogram(name: "fstatat64", scope: !2230, file: !2230, line: 523, type: !2368, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!713, !713, !718, !2325, !713}
!2370 = !{!2371, !2372, !2373, !2374}
!2371 = !DILocalVariable(name: "__fd", arg: 1, scope: !2367, file: !2230, line: 523, type: !713)
!2372 = !DILocalVariable(name: "__filename", arg: 2, scope: !2367, file: !2230, line: 523, type: !718)
!2373 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2367, file: !2230, line: 523, type: !2325)
!2374 = !DILocalVariable(name: "__flag", arg: 4, scope: !2367, file: !2230, line: 523, type: !713)
!2375 = !DILocation(line: 0, scope: !2367)
!2376 = !DILocation(line: 526, column: 10, scope: !2367)
!2377 = !DILocation(line: 526, column: 3, scope: !2367)
!2378 = distinct !DISubprogram(name: "gate_handle_stack_adjustments", scope: !3, file: !3, line: 547, type: !1912, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!2379 = !DILocation(line: 549, column: 11, scope: !2378)
!2380 = !DILocation(line: 549, column: 20, scope: !2378)
!2381 = !DILocation(line: 549, column: 10, scope: !2378)
!2382 = !DILocation(line: 549, column: 3, scope: !2378)
!2383 = distinct !DISubprogram(name: "rest_of_handle_stack_adjustments", scope: !3, file: !3, line: 553, type: !1916, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!2384 = !DILocation(line: 555, column: 16, scope: !2383)
!2385 = !DILocation(line: 555, column: 3, scope: !2383)
!2386 = !DILocation(line: 565, column: 7, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !3, line: 564, column: 5)
!2388 = !DILocation(line: 566, column: 7, scope: !2387)
!2389 = !DILocation(line: 567, column: 7, scope: !2387)
!2390 = !DILocation(line: 569, column: 3, scope: !2383)
!2391 = distinct !DISubprogram(name: "combine_stack_adjustments", scope: !3, file: !3, line: 99, type: !2392, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null}
!2394 = !{!2395}
!2395 = !DILocalVariable(name: "bb", scope: !2391, file: !3, line: 101, type: !1254)
!2396 = !DILocation(line: 103, column: 3, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 103, column: 3)
!2398 = !DILocation(line: 103, column: 3, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 103, column: 3)
!2400 = !DILocation(line: 0, scope: !2397)
!2401 = !DILocation(line: 0, scope: !2391)
!2402 = !DILocation(line: 104, column: 5, scope: !2399)
!2403 = !DILocation(line: 0, scope: !2399)
!2404 = distinct !{!2404, !2396, !2405}
!2405 = !DILocation(line: 104, column: 44, scope: !2397)
!2406 = !DILocation(line: 105, column: 1, scope: !2391)
!2407 = distinct !DISubprogram(name: "combine_stack_adjustments_for_block", scope: !3, file: !3, line: 367, type: !2408, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !1254}
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2426, !2427}
!2411 = !DILocalVariable(name: "bb", arg: 1, scope: !2407, file: !3, line: 367, type: !1254)
!2412 = !DILocalVariable(name: "last_sp_adjust", scope: !2407, file: !3, line: 369, type: !807)
!2413 = !DILocalVariable(name: "last_sp_set", scope: !2407, file: !3, line: 370, type: !720)
!2414 = !DILocalVariable(name: "reflist", scope: !2407, file: !3, line: 371, type: !1894)
!2415 = !DILocalVariable(name: "insn", scope: !2407, file: !3, line: 372, type: !720)
!2416 = !DILocalVariable(name: "next", scope: !2407, file: !3, line: 372, type: !720)
!2417 = !DILocalVariable(name: "set", scope: !2407, file: !3, line: 372, type: !720)
!2418 = !DILocalVariable(name: "data", scope: !2407, file: !3, line: 373, type: !1890)
!2419 = !DILocalVariable(name: "end_of_block", scope: !2407, file: !3, line: 374, type: !712)
!2420 = !DILocalVariable(name: "dest", scope: !2421, file: !3, line: 387, type: !720)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 386, column: 2)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 385, column: 11)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 377, column: 5)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 376, column: 3)
!2425 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 376, column: 3)
!2426 = !DILocalVariable(name: "src", scope: !2421, file: !3, line: 388, type: !720)
!2427 = !DILocalVariable(name: "this_adjust", scope: !2428, file: !3, line: 396, type: !807)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 395, column: 6)
!2429 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 391, column: 8)
!2430 = !DILocation(line: 0, scope: !2407)
!2431 = !DILocation(line: 373, column: 3, scope: !2407)
!2432 = !DILocation(line: 376, column: 15, scope: !2425)
!2433 = !DILocation(line: 0, scope: !2423)
!2434 = !DILocation(line: 376, column: 8, scope: !2425)
!2435 = !DILocation(line: 0, scope: !2425)
!2436 = !DILocation(line: 371, column: 23, scope: !2407)
!2437 = !DILocation(line: 370, column: 7, scope: !2407)
!2438 = !DILocation(line: 376, column: 29, scope: !2424)
!2439 = !DILocation(line: 376, column: 3, scope: !2425)
!2440 = !DILocation(line: 378, column: 30, scope: !2423)
!2441 = !DILocation(line: 378, column: 27, scope: !2423)
!2442 = !DILocation(line: 378, column: 22, scope: !2423)
!2443 = !DILocation(line: 379, column: 14, scope: !2423)
!2444 = !DILocation(line: 381, column: 13, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 381, column: 11)
!2446 = !DILocation(line: 381, column: 11, scope: !2423)
!2447 = !DILocation(line: 384, column: 13, scope: !2423)
!2448 = !DILocation(line: 385, column: 11, scope: !2422)
!2449 = !DILocation(line: 385, column: 11, scope: !2423)
!2450 = !DILocation(line: 387, column: 15, scope: !2421)
!2451 = !DILocation(line: 0, scope: !2421)
!2452 = !DILocation(line: 388, column: 14, scope: !2421)
!2453 = !DILocation(line: 391, column: 16, scope: !2429)
!2454 = !DILocation(line: 391, column: 13, scope: !2429)
!2455 = !DILocation(line: 392, column: 8, scope: !2429)
!2456 = !DILocation(line: 392, column: 11, scope: !2429)
!2457 = !DILocation(line: 392, column: 26, scope: !2429)
!2458 = !DILocation(line: 393, column: 8, scope: !2429)
!2459 = !DILocation(line: 393, column: 11, scope: !2429)
!2460 = !DILocation(line: 393, column: 25, scope: !2429)
!2461 = !DILocation(line: 394, column: 8, scope: !2429)
!2462 = !DILocation(line: 394, column: 11, scope: !2429)
!2463 = !DILocation(line: 391, column: 8, scope: !2421)
!2464 = !DILocation(line: 396, column: 36, scope: !2428)
!2465 = !DILocation(line: 0, scope: !2428)
!2466 = !DILocation(line: 400, column: 14, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 400, column: 12)
!2468 = !DILocation(line: 400, column: 12, scope: !2428)
!2469 = !DILocation(line: 429, column: 47, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 429, column: 12)
!2471 = !DILocation(line: 429, column: 12, scope: !2470)
!2472 = !DILocation(line: 432, column: 24, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 431, column: 9)
!2474 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 430, column: 3)
!2475 = !DILocation(line: 431, column: 9, scope: !2473)
!2476 = !DILocation(line: 431, column: 9, scope: !2474)
!2477 = !DILocation(line: 435, column: 13, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 435, column: 13)
!2479 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 434, column: 7)
!2480 = !DILocation(line: 435, column: 13, scope: !2479)
!2481 = !DILocation(line: 436, column: 4, scope: !2478)
!2482 = !DILocation(line: 439, column: 9, scope: !2479)
!2483 = !DILocation(line: 441, column: 9, scope: !2479)
!2484 = !DILocation(line: 448, column: 27, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 447, column: 17)
!2486 = !DILocation(line: 447, column: 17, scope: !2485)
!2487 = !DILocation(line: 451, column: 24, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 450, column: 9)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 449, column: 3)
!2490 = !DILocation(line: 452, column: 9, scope: !2488)
!2491 = !DILocation(line: 450, column: 9, scope: !2488)
!2492 = !DILocation(line: 450, column: 9, scope: !2489)
!2493 = !DILocation(line: 455, column: 9, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 453, column: 7)
!2495 = !DILocation(line: 458, column: 9, scope: !2494)
!2496 = !DILocation(line: 460, column: 9, scope: !2494)
!2497 = !DILocation(line: 467, column: 42, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 467, column: 12)
!2499 = !DILocation(line: 467, column: 24, scope: !2498)
!2500 = !DILocation(line: 468, column: 3, scope: !2498)
!2501 = !DILocation(line: 469, column: 8, scope: !2428)
!2502 = !DILocation(line: 473, column: 8, scope: !2428)
!2503 = !DILocation(line: 480, column: 8, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 480, column: 8)
!2505 = !DILocation(line: 481, column: 8, scope: !2504)
!2506 = !DILocation(line: 482, column: 9, scope: !2504)
!2507 = !DILocation(line: 482, column: 35, scope: !2504)
!2508 = !DILocation(line: 483, column: 9, scope: !2504)
!2509 = !DILocation(line: 484, column: 24, scope: !2504)
!2510 = !DILocation(line: 484, column: 8, scope: !2504)
!2511 = !DILocation(line: 484, column: 5, scope: !2504)
!2512 = !DILocation(line: 481, column: 13, scope: !2504)
!2513 = !DILocation(line: 489, column: 27, scope: !2504)
!2514 = !DILocation(line: 488, column: 10, scope: !2504)
!2515 = !DILocation(line: 490, column: 38, scope: !2504)
!2516 = !DILocation(line: 491, column: 9, scope: !2504)
!2517 = !DILocation(line: 491, column: 12, scope: !2504)
!2518 = !DILocation(line: 491, column: 48, scope: !2504)
!2519 = !DILocation(line: 492, column: 9, scope: !2504)
!2520 = !DILocation(line: 492, column: 12, scope: !2504)
!2521 = !DILocation(line: 493, column: 5, scope: !2504)
!2522 = !DILocation(line: 494, column: 9, scope: !2504)
!2523 = !DILocation(line: 494, column: 12, scope: !2504)
!2524 = !DILocation(line: 495, column: 12, scope: !2504)
!2525 = !DILocation(line: 496, column: 9, scope: !2504)
!2526 = !DILocation(line: 496, column: 12, scope: !2504)
!2527 = !DILocation(line: 497, column: 15, scope: !2504)
!2528 = !DILocation(line: 497, column: 12, scope: !2504)
!2529 = !DILocation(line: 498, column: 8, scope: !2504)
!2530 = !DILocation(line: 498, column: 11, scope: !2504)
!2531 = !DILocation(line: 498, column: 36, scope: !2504)
!2532 = !DILocation(line: 499, column: 8, scope: !2504)
!2533 = !DILocation(line: 499, column: 12, scope: !2504)
!2534 = !DILocation(line: 500, column: 8, scope: !2504)
!2535 = !DILocation(line: 500, column: 11, scope: !2504)
!2536 = !DILocation(line: 501, column: 8, scope: !2504)
!2537 = !DILocation(line: 502, column: 11, scope: !2504)
!2538 = !DILocation(line: 501, column: 11, scope: !2504)
!2539 = !DILocation(line: 480, column: 8, scope: !2421)
!2540 = !DILocation(line: 504, column: 8, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 503, column: 6)
!2542 = !DILocation(line: 505, column: 8, scope: !2541)
!2543 = !DILocation(line: 509, column: 8, scope: !2541)
!2544 = !DILocation(line: 513, column: 17, scope: !2423)
!2545 = !DILocation(line: 514, column: 20, scope: !2423)
!2546 = !DILocation(line: 515, column: 12, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 515, column: 11)
!2548 = !DILocation(line: 515, column: 29, scope: !2547)
!2549 = !DILocation(line: 515, column: 26, scope: !2547)
!2550 = !DILocation(line: 516, column: 23, scope: !2547)
!2551 = !DILocation(line: 516, column: 8, scope: !2547)
!2552 = !DILocation(line: 515, column: 11, scope: !2423)
!2553 = !DILocation(line: 521, column: 22, scope: !2423)
!2554 = !DILocation(line: 518, column: 20, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 517, column: 2)
!2556 = !DILocation(line: 519, column: 5, scope: !2555)
!2557 = !DILocation(line: 525, column: 11, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 525, column: 11)
!2559 = !DILocation(line: 526, column: 4, scope: !2558)
!2560 = !DILocation(line: 526, column: 8, scope: !2558)
!2561 = !DILocation(line: 527, column: 8, scope: !2558)
!2562 = !DILocation(line: 527, column: 28, scope: !2558)
!2563 = !DILocation(line: 527, column: 47, scope: !2558)
!2564 = !DILocation(line: 527, column: 11, scope: !2558)
!2565 = !DILocation(line: 525, column: 11, scope: !2423)
!2566 = !DILocation(line: 529, column: 38, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 529, column: 8)
!2568 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 528, column: 2)
!2569 = !DILocation(line: 529, column: 20, scope: !2567)
!2570 = !DILocation(line: 530, column: 6, scope: !2567)
!2571 = !DILocation(line: 531, column: 4, scope: !2568)
!2572 = !DILocation(line: 535, column: 2, scope: !2568)
!2573 = !DILocation(line: 376, column: 3, scope: !2424)
!2574 = distinct !{!2574, !2439, !2575}
!2575 = !DILocation(line: 536, column: 5, scope: !2425)
!2576 = !DILocation(line: 538, column: 7, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 538, column: 7)
!2578 = !DILocation(line: 538, column: 37, scope: !2577)
!2579 = !DILocation(line: 538, column: 19, scope: !2577)
!2580 = !DILocation(line: 539, column: 5, scope: !2577)
!2581 = !DILocation(line: 541, column: 7, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 541, column: 7)
!2583 = !DILocation(line: 541, column: 7, scope: !2407)
!2584 = !DILocation(line: 542, column: 5, scope: !2582)
!2585 = !DILocation(line: 543, column: 1, scope: !2407)
!2586 = distinct !DISubprogram(name: "single_set_for_csa", scope: !3, file: !3, line: 130, type: !2587, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!720, !720}
!2589 = !{!2590, !2591, !2592, !2593}
!2590 = !DILocalVariable(name: "insn", arg: 1, scope: !2586, file: !3, line: 130, type: !720)
!2591 = !DILocalVariable(name: "i", scope: !2586, file: !3, line: 132, type: !713)
!2592 = !DILocalVariable(name: "tmp", scope: !2586, file: !3, line: 133, type: !720)
!2593 = !DILocalVariable(name: "this_rtx", scope: !2594, file: !3, line: 147, type: !720)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 146, column: 5)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 145, column: 3)
!2596 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 145, column: 3)
!2597 = !DILocation(line: 0, scope: !2586)
!2598 = !DILocation(line: 133, column: 13, scope: !2586)
!2599 = !DILocation(line: 134, column: 7, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 134, column: 7)
!2601 = !DILocation(line: 134, column: 7, scope: !2586)
!2602 = !DILocation(line: 137, column: 8, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 137, column: 7)
!2604 = !DILocation(line: 138, column: 7, scope: !2603)
!2605 = !DILocation(line: 138, column: 10, scope: !2603)
!2606 = !DILocation(line: 138, column: 36, scope: !2603)
!2607 = !DILocation(line: 137, column: 7, scope: !2586)
!2608 = !DILocation(line: 142, column: 7, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 142, column: 7)
!2610 = !DILocation(line: 142, column: 38, scope: !2609)
!2611 = !DILocation(line: 142, column: 7, scope: !2586)
!2612 = !DILocation(line: 0, scope: !2595)
!2613 = !DILocation(line: 145, column: 3, scope: !2596)
!2614 = !DILocation(line: 0, scope: !2596)
!2615 = !DILocation(line: 145, column: 17, scope: !2595)
!2616 = !DILocation(line: 147, column: 22, scope: !2594)
!2617 = !DILocation(line: 0, scope: !2594)
!2618 = !DILocation(line: 150, column: 11, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 150, column: 11)
!2620 = !DILocation(line: 150, column: 31, scope: !2619)
!2621 = !DILocation(line: 151, column: 4, scope: !2619)
!2622 = !DILocation(line: 151, column: 7, scope: !2619)
!2623 = !DILocation(line: 151, column: 29, scope: !2619)
!2624 = !DILocation(line: 151, column: 26, scope: !2619)
!2625 = !DILocation(line: 150, column: 11, scope: !2594)
!2626 = !DILocation(line: 153, column: 36, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 153, column: 16)
!2628 = !DILocation(line: 154, column: 9, scope: !2627)
!2629 = !DILocation(line: 154, column: 32, scope: !2627)
!2630 = !DILocation(line: 153, column: 16, scope: !2619)
!2631 = !DILocation(line: 156, column: 5, scope: !2595)
!2632 = !DILocation(line: 145, column: 37, scope: !2595)
!2633 = !DILocation(line: 145, column: 3, scope: !2595)
!2634 = distinct !{!2634, !2613, !2635}
!2635 = !DILocation(line: 156, column: 5, scope: !2596)
!2636 = !DILocation(line: 158, column: 3, scope: !2586)
!2637 = !DILocation(line: 159, column: 1, scope: !2586)
!2638 = distinct !DISubprogram(name: "try_apply_stack_adjustment", scope: !3, file: !3, line: 202, type: !2639, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!713, !720, !1894, !807, !807}
!2641 = !{!2642, !2643, !2644, !2645, !2646, !2647, !2648, !2652}
!2642 = !DILocalVariable(name: "insn", arg: 1, scope: !2638, file: !3, line: 202, type: !720)
!2643 = !DILocalVariable(name: "reflist", arg: 2, scope: !2638, file: !3, line: 202, type: !1894)
!2644 = !DILocalVariable(name: "new_adjust", arg: 3, scope: !2638, file: !3, line: 203, type: !807)
!2645 = !DILocalVariable(name: "delta", arg: 4, scope: !2638, file: !3, line: 203, type: !807)
!2646 = !DILocalVariable(name: "ml", scope: !2638, file: !3, line: 205, type: !1894)
!2647 = !DILocalVariable(name: "set", scope: !2638, file: !3, line: 206, type: !720)
!2648 = !DILocalVariable(name: "new_addr", scope: !2649, file: !3, line: 218, type: !720)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 217, column: 5)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 216, column: 3)
!2651 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 216, column: 3)
!2652 = !DILocalVariable(name: "new_val", scope: !2649, file: !3, line: 219, type: !720)
!2653 = !DILocation(line: 0, scope: !2638)
!2654 = !DILocation(line: 208, column: 9, scope: !2638)
!2655 = !DILocation(line: 209, column: 7, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 209, column: 7)
!2657 = !DILocation(line: 209, column: 7, scope: !2638)
!2658 = !DILocation(line: 210, column: 29, scope: !2656)
!2659 = !DILocation(line: 211, column: 47, scope: !2656)
!2660 = !DILocation(line: 211, column: 8, scope: !2656)
!2661 = !DILocation(line: 210, column: 5, scope: !2656)
!2662 = !DILocation(line: 214, column: 29, scope: !2656)
!2663 = !DILocation(line: 214, column: 54, scope: !2656)
!2664 = !DILocation(line: 214, column: 5, scope: !2656)
!2665 = !DILocation(line: 216, column: 8, scope: !2651)
!2666 = !DILocation(line: 0, scope: !2651)
!2667 = !DILocation(line: 216, column: 3, scope: !2651)
!2668 = !DILocation(line: 218, column: 37, scope: !2649)
!2669 = !DILocation(line: 218, column: 60, scope: !2649)
!2670 = !DILocation(line: 218, column: 70, scope: !2649)
!2671 = !DILocation(line: 218, column: 22, scope: !2649)
!2672 = !DILocation(line: 0, scope: !2649)
!2673 = !DILocation(line: 221, column: 11, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 221, column: 11)
!2675 = !DILocation(line: 221, column: 11, scope: !2649)
!2676 = !DILocation(line: 0, scope: !2674)
!2677 = !DILocation(line: 222, column: 12, scope: !2674)
!2678 = !DILocation(line: 222, column: 2, scope: !2674)
!2679 = !DILocation(line: 223, column: 39, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 223, column: 16)
!2681 = !DILocation(line: 223, column: 36, scope: !2680)
!2682 = !DILocation(line: 223, column: 16, scope: !2674)
!2683 = !DILocation(line: 226, column: 28, scope: !2680)
!2684 = !DILocation(line: 227, column: 7, scope: !2680)
!2685 = !DILocation(line: 226, column: 12, scope: !2680)
!2686 = !DILocation(line: 228, column: 28, scope: !2649)
!2687 = !DILocation(line: 228, column: 38, scope: !2649)
!2688 = !DILocation(line: 228, column: 7, scope: !2649)
!2689 = !DILocation(line: 216, column: 36, scope: !2650)
!2690 = !DILocation(line: 216, column: 3, scope: !2650)
!2691 = distinct !{!2691, !2667, !2692}
!2692 = !DILocation(line: 229, column: 5, scope: !2651)
!2693 = !DILocation(line: 231, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 231, column: 7)
!2695 = !DILocation(line: 231, column: 7, scope: !2638)
!2696 = !DILocation(line: 234, column: 7, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 234, column: 7)
!2698 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 232, column: 5)
!2699 = !DILocation(line: 0, scope: !2697)
!2700 = !DILocation(line: 235, column: 6, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 234, column: 7)
!2702 = !DILocation(line: 235, column: 16, scope: !2701)
!2703 = !DILocation(line: 234, column: 40, scope: !2701)
!2704 = !DILocation(line: 234, column: 7, scope: !2701)
!2705 = distinct !{!2705, !2696, !2706}
!2706 = !DILocation(line: 235, column: 19, scope: !2697)
!2707 = !DILocation(line: 241, column: 1, scope: !2638)
!2708 = !DILocation(line: 0, scope: !2694)
!2709 = distinct !DISubprogram(name: "adjust_frame_related_expr", scope: !3, file: !3, line: 304, type: !2710, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{null, !720, !720, !807}
!2712 = !{!2713, !2714, !2715, !2716, !2717, !2718, !2721, !2722, !2723}
!2713 = !DILocalVariable(name: "last_sp_set", arg: 1, scope: !2709, file: !3, line: 304, type: !720)
!2714 = !DILocalVariable(name: "insn", arg: 2, scope: !2709, file: !3, line: 304, type: !720)
!2715 = !DILocalVariable(name: "this_adjust", arg: 3, scope: !2709, file: !3, line: 305, type: !807)
!2716 = !DILocalVariable(name: "note", scope: !2709, file: !3, line: 307, type: !720)
!2717 = !DILocalVariable(name: "new_expr", scope: !2709, file: !3, line: 308, type: !720)
!2718 = !DILocalVariable(name: "expr", scope: !2719, file: !3, line: 317, type: !720)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 316, column: 5)
!2720 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 313, column: 7)
!2721 = !DILocalVariable(name: "last", scope: !2719, file: !3, line: 318, type: !720)
!2722 = !DILocalVariable(name: "i", scope: !2719, file: !3, line: 319, type: !713)
!2723 = !DILocalVariable(name: "expr", scope: !2724, file: !3, line: 345, type: !720)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 344, column: 2)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 341, column: 11)
!2726 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 339, column: 5)
!2727 = !DILocation(line: 0, scope: !2709)
!2728 = !DILocation(line: 307, column: 14, scope: !2709)
!2729 = !DILocation(line: 310, column: 24, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 310, column: 7)
!2731 = !DILocation(line: 310, column: 27, scope: !2730)
!2732 = !DILocation(line: 310, column: 7, scope: !2709)
!2733 = !DILocation(line: 314, column: 7, scope: !2720)
!2734 = !DILocation(line: 314, column: 10, scope: !2720)
!2735 = !DILocation(line: 314, column: 36, scope: !2720)
!2736 = !DILocation(line: 315, column: 7, scope: !2720)
!2737 = !DILocation(line: 315, column: 10, scope: !2720)
!2738 = !DILocation(line: 315, column: 38, scope: !2720)
!2739 = !DILocation(line: 313, column: 7, scope: !2709)
!2740 = !DILocation(line: 0, scope: !2719)
!2741 = !DILocation(line: 318, column: 18, scope: !2719)
!2742 = !DILocation(line: 321, column: 11, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 321, column: 11)
!2744 = !DILocation(line: 321, column: 27, scope: !2743)
!2745 = !DILocation(line: 322, column: 4, scope: !2743)
!2746 = !DILocation(line: 322, column: 37, scope: !2743)
!2747 = !DILocation(line: 322, column: 34, scope: !2743)
!2748 = !DILocation(line: 323, column: 4, scope: !2743)
!2749 = !DILocation(line: 323, column: 7, scope: !2743)
!2750 = !DILocation(line: 323, column: 26, scope: !2743)
!2751 = !DILocation(line: 323, column: 23, scope: !2743)
!2752 = !DILocation(line: 324, column: 4, scope: !2743)
!2753 = !DILocation(line: 324, column: 7, scope: !2743)
!2754 = !DILocation(line: 324, column: 33, scope: !2743)
!2755 = !DILocation(line: 325, column: 4, scope: !2743)
!2756 = !DILocation(line: 325, column: 7, scope: !2743)
!2757 = !DILocation(line: 325, column: 32, scope: !2743)
!2758 = !DILocation(line: 326, column: 4, scope: !2743)
!2759 = !DILocation(line: 326, column: 7, scope: !2743)
!2760 = !DILocation(line: 321, column: 11, scope: !2719)
!2761 = !DILocation(line: 329, column: 8, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 327, column: 2)
!2763 = !DILocation(line: 328, column: 4, scope: !2762)
!2764 = !DILocation(line: 329, column: 6, scope: !2762)
!2765 = !DILocation(line: 330, column: 4, scope: !2762)
!2766 = !DILocation(line: 333, column: 18, scope: !2719)
!2767 = !DILocation(line: 0, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 335, column: 7)
!2769 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 335, column: 7)
!2770 = !DILocation(line: 335, column: 12, scope: !2769)
!2771 = !DILocation(line: 0, scope: !2769)
!2772 = !DILocation(line: 335, column: 23, scope: !2768)
!2773 = !DILocation(line: 335, column: 21, scope: !2768)
!2774 = !DILocation(line: 335, column: 7, scope: !2769)
!2775 = !DILocation(line: 336, column: 29, scope: !2768)
!2776 = !DILocation(line: 336, column: 2, scope: !2768)
!2777 = !DILocation(line: 336, column: 27, scope: !2768)
!2778 = !DILocation(line: 335, column: 43, scope: !2768)
!2779 = !DILocation(line: 335, column: 7, scope: !2768)
!2780 = distinct !{!2780, !2774, !2781}
!2781 = !DILocation(line: 336, column: 29, scope: !2769)
!2782 = !DILocation(line: 340, column: 18, scope: !2726)
!2783 = !DILocation(line: 341, column: 11, scope: !2726)
!2784 = !DILocation(line: 342, column: 29, scope: !2725)
!2785 = !DILocation(line: 342, column: 2, scope: !2725)
!2786 = !DILocation(line: 342, column: 27, scope: !2725)
!2787 = !DILocation(line: 345, column: 25, scope: !2724)
!2788 = !DILocation(line: 345, column: 15, scope: !2724)
!2789 = !DILocation(line: 0, scope: !2724)
!2790 = !DILocation(line: 348, column: 8, scope: !2724)
!2791 = !DILocation(line: 347, column: 4, scope: !2724)
!2792 = !DILocation(line: 348, column: 6, scope: !2724)
!2793 = !DILocation(line: 349, column: 4, scope: !2724)
!2794 = !DILocation(line: 349, column: 31, scope: !2724)
!2795 = !DILocation(line: 350, column: 4, scope: !2724)
!2796 = !DILocation(line: 350, column: 29, scope: !2724)
!2797 = !DILocation(line: 355, column: 17, scope: !2709)
!2798 = !DILocation(line: 355, column: 7, scope: !2709)
!2799 = !DILocation(line: 354, column: 3, scope: !2709)
!2800 = !DILocation(line: 355, column: 5, scope: !2709)
!2801 = !DILocation(line: 357, column: 7, scope: !2709)
!2802 = !DILocation(line: 356, column: 3, scope: !2709)
!2803 = !DILocation(line: 357, column: 5, scope: !2709)
!2804 = !DILocation(line: 358, column: 7, scope: !2709)
!2805 = !DILocation(line: 359, column: 5, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 358, column: 7)
!2807 = !DILocation(line: 359, column: 20, scope: !2806)
!2808 = !DILocation(line: 361, column: 5, scope: !2806)
!2809 = !DILocation(line: 362, column: 1, scope: !2709)
!2810 = distinct !DISubprogram(name: "free_csa_reflist", scope: !3, file: !3, line: 164, type: !2811, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{null, !1894}
!2813 = !{!2814, !2815}
!2814 = !DILocalVariable(name: "reflist", arg: 1, scope: !2810, file: !3, line: 164, type: !1894)
!2815 = !DILocalVariable(name: "next", scope: !2810, file: !3, line: 166, type: !1894)
!2816 = !DILocation(line: 0, scope: !2810)
!2817 = !DILocation(line: 167, column: 3, scope: !2810)
!2818 = !DILocation(line: 167, column: 3, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 167, column: 3)
!2820 = !DILocation(line: 169, column: 23, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !3, line: 168, column: 5)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 167, column: 3)
!2823 = !DILocation(line: 170, column: 13, scope: !2821)
!2824 = !DILocation(line: 170, column: 7, scope: !2821)
!2825 = !DILocation(line: 167, column: 3, scope: !2822)
!2826 = distinct !{!2826, !2818, !2827}
!2827 = !DILocation(line: 171, column: 5, scope: !2819)
!2828 = !DILocation(line: 172, column: 1, scope: !2810)
!2829 = distinct !DISubprogram(name: "record_stack_refs", scope: !3, file: !3, line: 252, type: !2830, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!713, !1900, !717}
!2832 = !{!2833, !2834, !2835, !2836}
!2833 = !DILocalVariable(name: "xp", arg: 1, scope: !2829, file: !3, line: 252, type: !1900)
!2834 = !DILocalVariable(name: "data", arg: 2, scope: !2829, file: !3, line: 252, type: !717)
!2835 = !DILocalVariable(name: "x", scope: !2829, file: !3, line: 254, type: !720)
!2836 = !DILocalVariable(name: "d", scope: !2829, file: !3, line: 255, type: !1889)
!2837 = !DILocation(line: 0, scope: !2829)
!2838 = !DILocation(line: 254, column: 11, scope: !2829)
!2839 = !DILocation(line: 257, column: 8, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 257, column: 7)
!2841 = !DILocation(line: 257, column: 7, scope: !2829)
!2842 = !DILocation(line: 259, column: 11, scope: !2829)
!2843 = !DILocation(line: 259, column: 3, scope: !2829)
!2844 = !DILocation(line: 262, column: 29, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 262, column: 11)
!2846 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 260, column: 5)
!2847 = !DILocation(line: 262, column: 12, scope: !2845)
!2848 = !DILocation(line: 262, column: 11, scope: !2846)
!2849 = !DILocation(line: 266, column: 11, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 266, column: 11)
!2851 = !DILocation(line: 0, scope: !2846)
!2852 = !DILocation(line: 266, column: 11, scope: !2846)
!2853 = !DILocation(line: 268, column: 55, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 267, column: 2)
!2855 = !DILocation(line: 268, column: 17, scope: !2854)
!2856 = !DILocation(line: 268, column: 15, scope: !2854)
!2857 = !DILocation(line: 269, column: 4, scope: !2854)
!2858 = !DILocation(line: 272, column: 15, scope: !2846)
!2859 = !DILocation(line: 272, column: 14, scope: !2846)
!2860 = !DILocation(line: 272, column: 7, scope: !2846)
!2861 = !DILocation(line: 286, column: 11, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 286, column: 11)
!2863 = !DILocation(line: 286, column: 21, scope: !2862)
!2864 = !DILocation(line: 286, column: 11, scope: !2846)
!2865 = !DILocation(line: 288, column: 9, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 288, column: 8)
!2867 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 287, column: 2)
!2868 = !DILocation(line: 288, column: 8, scope: !2867)
!2869 = !DILocation(line: 290, column: 55, scope: !2867)
!2870 = !DILocation(line: 290, column: 17, scope: !2867)
!2871 = !DILocation(line: 290, column: 15, scope: !2867)
!2872 = !DILocation(line: 291, column: 4, scope: !2867)
!2873 = !DILocation(line: 298, column: 1, scope: !2829)
!2874 = distinct !DISubprogram(name: "stack_memref_p", scope: !3, file: !3, line: 110, type: !2875, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!713, !720}
!2877 = !{!2878}
!2878 = !DILocalVariable(name: "x", arg: 1, scope: !2874, file: !3, line: 110, type: !720)
!2879 = !DILocation(line: 0, scope: !2874)
!2880 = !DILocation(line: 112, column: 8, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 112, column: 7)
!2882 = !DILocation(line: 112, column: 7, scope: !2874)
!2883 = !DILocation(line: 114, column: 7, scope: !2874)
!2884 = !DILocation(line: 116, column: 12, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 116, column: 7)
!2886 = !DILocation(line: 116, column: 9, scope: !2885)
!2887 = !DILocation(line: 116, column: 7, scope: !2874)
!2888 = !DILocation(line: 118, column: 7, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 118, column: 7)
!2890 = !DILocation(line: 118, column: 20, scope: !2889)
!2891 = !DILocation(line: 119, column: 7, scope: !2889)
!2892 = !DILocation(line: 119, column: 10, scope: !2889)
!2893 = !DILocation(line: 119, column: 22, scope: !2889)
!2894 = !DILocation(line: 120, column: 7, scope: !2889)
!2895 = !DILocation(line: 120, column: 10, scope: !2889)
!2896 = !DILocation(line: 118, column: 7, scope: !2874)
!2897 = !DILocation(line: 123, column: 3, scope: !2874)
!2898 = !DILocation(line: 124, column: 1, scope: !2874)
!2899 = distinct !DISubprogram(name: "record_one_stack_ref", scope: !3, file: !3, line: 179, type: !2900, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!1894, !720, !1900, !1894}
!2902 = !{!2903, !2904, !2905, !2906}
!2903 = !DILocalVariable(name: "insn", arg: 1, scope: !2899, file: !3, line: 179, type: !720)
!2904 = !DILocalVariable(name: "ref", arg: 2, scope: !2899, file: !3, line: 179, type: !1900)
!2905 = !DILocalVariable(name: "next_reflist", arg: 3, scope: !2899, file: !3, line: 179, type: !1894)
!2906 = !DILocalVariable(name: "ml", scope: !2899, file: !3, line: 181, type: !1894)
!2907 = !DILocation(line: 0, scope: !2899)
!2908 = !DILocation(line: 183, column: 8, scope: !2899)
!2909 = !DILocation(line: 185, column: 7, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 185, column: 7)
!2911 = !DILocation(line: 185, column: 20, scope: !2910)
!2912 = !DILocation(line: 185, column: 23, scope: !2910)
!2913 = !DILocation(line: 185, column: 41, scope: !2910)
!2914 = !DILocation(line: 185, column: 38, scope: !2910)
!2915 = !DILocation(line: 185, column: 7, scope: !2899)
!2916 = !DILocation(line: 186, column: 9, scope: !2910)
!2917 = !DILocation(line: 186, column: 19, scope: !2910)
!2918 = !DILocation(line: 186, column: 5, scope: !2910)
!2919 = !DILocation(line: 188, column: 21, scope: !2910)
!2920 = !DILocation(line: 188, column: 9, scope: !2910)
!2921 = !DILocation(line: 188, column: 19, scope: !2910)
!2922 = !DILocation(line: 190, column: 7, scope: !2899)
!2923 = !DILocation(line: 190, column: 12, scope: !2899)
!2924 = !DILocation(line: 191, column: 7, scope: !2899)
!2925 = !DILocation(line: 191, column: 11, scope: !2899)
!2926 = !DILocation(line: 192, column: 7, scope: !2899)
!2927 = !DILocation(line: 192, column: 12, scope: !2899)
!2928 = !DILocation(line: 194, column: 3, scope: !2899)
!2929 = distinct !DISubprogram(name: "rhs_regno", scope: !568, file: !568, line: 1051, type: !2930, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2935)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!7, !2932}
!2932 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !721, line: 51, baseType: !2933)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!2935 = !{!2936}
!2936 = !DILocalVariable(name: "x", arg: 1, scope: !2929, file: !568, line: 1051, type: !2932)
!2937 = !DILocation(line: 0, scope: !2929)
!2938 = !DILocation(line: 1053, column: 10, scope: !2929)
!2939 = !DILocation(line: 1053, column: 3, scope: !2929)
